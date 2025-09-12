	.file	"btConvexPointCloudShape.cpp"
	.text
	.globl	_ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3 # -- Begin function _ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3,@function
_ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3: # @_ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 24
	pcaddu18i	$t8, %call36(_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv)
	jr	$t8
.Lfunc_end0:
	.size	_ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3, .Lfunc_end0-_ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3
.LCPI1_0:
	.word	0x38d1b717                      # float 9.99999974E-5
.LCPI1_1:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.text
	.globl	_ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3
# %bb.0:
	fld.s	$fa0, $a1, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI1_0)
	fmul.s	$fa1, $fa2, $fa2
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fcmp.clt.s	$fcc0, $fa1, $fa4
	bceqz	$fcc0, .LBB1_3
# %bb.1:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	ld.w	$a1, $a0, 112
	bgtz	$a1, .LBB1_4
.LBB1_2:
	move	$a1, $zero
	move	$a0, $zero
	ret
.LBB1_3:
	frsqrt.s	$fa4, $fa1
	fmul.s	$fa1, $fa0, $fa4
	fmul.s	$fa0, $fa2, $fa4
	fmul.s	$fa2, $fa3, $fa4
	ld.w	$a1, $a0, 112
	blez	$a1, .LBB1_2
.LBB1_4:                                # %.lr.ph
	ld.d	$a2, $a0, 104
	fld.s	$fa3, $a0, 24
	fld.s	$fa4, $a0, 28
	fld.s	$fa5, $a0, 32
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI1_1)
	move	$a0, $zero
	movgr2fr.w	$fa7, $zero
	addi.d	$a2, $a2, 8
	fmov.s	$ft0, $fa7
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	beqz	$a1, .LBB1_8
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	fld.s	$ft1, $a2, -8
	fld.s	$ft2, $a2, -4
	fld.s	$ft4, $a2, 0
	fmul.s	$ft3, $ft1, $fa3
	fmul.s	$ft1, $ft2, $fa4
	fmul.s	$ft2, $ft4, $fa5
	fmul.s	$ft4, $fa0, $ft1
	fmadd.s	$ft4, $fa1, $ft3, $ft4
	fmadd.s	$ft4, $fa2, $ft2, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fa6
	bcnez	$fcc0, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	movfr2gr.s	$a0, $ft3
	fmov.s	$ft0, $ft1
	fmov.s	$fa7, $ft2
	fmov.s	$fa6, $ft4
	b	.LBB1_5
.LBB1_8:                                # %._crit_edge.loopexit
	movfr2gr.s	$a1, $ft0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa7
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end1:
	.size	_ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end1-_ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB2_15
# %bb.1:                                # %.lr.ph.preheader
	ori	$a5, $zero, 1
	lu12i.w	$a4, -141856
	bne	$a3, $a5, .LBB2_3
# %bb.2:
	move	$a5, $zero
	b	.LBB2_6
.LBB2_3:                                # %vector.ph
	bstrpick.d	$a5, $a3, 30, 1
	slli.d	$a5, $a5, 1
	addi.d	$a6, $a2, 28
	ori	$a7, $a4, 2923
	lu32i.d	$a7, 0
	move	$t0, $a5
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a7, $a6, -16
	st.w	$a7, $a6, 0
	addi.d	$t0, $t0, -2
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB2_4
# %bb.5:                                # %middle.block
	beq	$a5, $a3, .LBB2_8
.LBB2_6:                                # %.lr.ph.preheader44
	alsl.d	$a6, $a5, $a2, 4
	addi.d	$a6, $a6, 12
	sub.d	$a5, $a3, $a5
	ori	$a4, $a4, 2923
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB2_7
.LBB2_8:                                # %.preheader
	ld.w	$a4, $a0, 112
	blez	$a4, .LBB2_15
# %bb.9:                                # %.lr.ph34
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 12
	addi.d	$a1, $a1, 8
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a5, $a0, 112
	addi.d	$a4, $a4, 1
	bge	$a4, $a5, .LBB2_15
.LBB2_11:                               # %.lr.ph32.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	ld.d	$a5, $a0, 104
	alsl.d	$a6, $a4, $a5, 4
	slli.d	$a7, $a4, 4
	fldx.s	$fa0, $a5, $a7
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a6, 4
	fld.s	$fa3, $a0, 28
	fld.s	$fa4, $a6, 8
	fld.s	$fa5, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	move	$a5, $a1
	move	$a6, $a2
	move	$a7, $a3
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_13 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	beqz	$a7, .LBB2_10
.LBB2_13:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a5, -4
	fld.s	$fa4, $a5, -8
	fld.s	$fa5, $a5, 0
	fld.s	$fa6, $a6, 0
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fcmp.cule.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB2_12
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=2
	fst.s	$fa0, $a6, -12
	fst.s	$fa1, $a6, -8
	fst.s	$fa2, $a6, -4
	fst.s	$fa3, $a6, 0
	b	.LBB2_12
.LBB2_15:                               # %._crit_edge35
	ret
.Lfunc_end2:
	.size	_ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end2-_ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3
.LCPI3_0:
	.word	0x28800000                      # float 1.42108547E-14
	.text
	.globl	_ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3,@function
_ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3: # @_ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
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
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	.cfi_offset 61, -96
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 104
	move	$s2, $a1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a2, $a2, 88
	move	$s1, $a0
	move	$fp, $a1
	srli.d	$s3, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_2
# %bb.1:
	movgr2fr.w	$fs0, $fp
	movgr2fr.w	$fs1, $s3
	movgr2fr.w	$fs2, $s1
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s2, 4
	fld.s	$fa2, $s2, 8
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI3_0)
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
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa0, $fa0, $fs0
	movfr2gr.s	$s1, $fa1
	movfr2gr.s	$s3, $fa2
	movfr2gr.s	$a0, $fa0
	b	.LBB3_3
.LBB3_2:
	move	$a0, $fp
.LBB3_3:
	bstrins.d	$s1, $s3, 63, 32
	bstrpick.d	$a0, $a0, 31, 0
	bstrins.d	$fp, $a0, 31, 0
	move	$a0, $s1
	move	$a1, $fp
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end3:
	.size	_ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3, .Lfunc_end3-_ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape14getNumVerticesEv # -- Begin function _ZNK23btConvexPointCloudShape14getNumVerticesEv
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape14getNumVerticesEv,@function
_ZNK23btConvexPointCloudShape14getNumVerticesEv: # @_ZNK23btConvexPointCloudShape14getNumVerticesEv
# %bb.0:
	ld.w	$a0, $a0, 112
	ret
.Lfunc_end4:
	.size	_ZNK23btConvexPointCloudShape14getNumVerticesEv, .Lfunc_end4-_ZNK23btConvexPointCloudShape14getNumVerticesEv
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape11getNumEdgesEv # -- Begin function _ZNK23btConvexPointCloudShape11getNumEdgesEv
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape11getNumEdgesEv,@function
_ZNK23btConvexPointCloudShape11getNumEdgesEv: # @_ZNK23btConvexPointCloudShape11getNumEdgesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	_ZNK23btConvexPointCloudShape11getNumEdgesEv, .Lfunc_end5-_ZNK23btConvexPointCloudShape11getNumEdgesEv
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_ # -- Begin function _ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_,@function
_ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_: # @_ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_
# %bb.0:
	ret
.Lfunc_end6:
	.size	_ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_, .Lfunc_end6-_ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape9getVertexEiR9btVector3 # -- Begin function _ZNK23btConvexPointCloudShape9getVertexEiR9btVector3
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape9getVertexEiR9btVector3,@function
_ZNK23btConvexPointCloudShape9getVertexEiR9btVector3: # @_ZNK23btConvexPointCloudShape9getVertexEiR9btVector3
# %bb.0:
	ld.d	$a3, $a0, 104
	alsl.d	$a4, $a1, $a3, 4
	slli.d	$a1, $a1, 4
	fldx.s	$fa0, $a3, $a1
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a4, 4
	fld.s	$fa3, $a0, 28
	fld.s	$fa4, $a4, 8
	fld.s	$fa5, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a2, 0
	st.d	$a1, $a2, 8
	ret
.Lfunc_end7:
	.size	_ZNK23btConvexPointCloudShape9getVertexEiR9btVector3, .Lfunc_end7-_ZNK23btConvexPointCloudShape9getVertexEiR9btVector3
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape12getNumPlanesEv # -- Begin function _ZNK23btConvexPointCloudShape12getNumPlanesEv
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape12getNumPlanesEv,@function
_ZNK23btConvexPointCloudShape12getNumPlanesEv: # @_ZNK23btConvexPointCloudShape12getNumPlanesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	_ZNK23btConvexPointCloudShape12getNumPlanesEv, .Lfunc_end8-_ZNK23btConvexPointCloudShape12getNumPlanesEv
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i # -- Begin function _ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i,@function
_ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i: # @_ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i
# %bb.0:
	ret
.Lfunc_end9:
	.size	_ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i, .Lfunc_end9-_ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i
                                        # -- End function
	.globl	_ZNK23btConvexPointCloudShape8isInsideERK9btVector3f # -- Begin function _ZNK23btConvexPointCloudShape8isInsideERK9btVector3f
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape8isInsideERK9btVector3f,@function
_ZNK23btConvexPointCloudShape8isInsideERK9btVector3f: # @_ZNK23btConvexPointCloudShape8isInsideERK9btVector3f
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	_ZNK23btConvexPointCloudShape8isInsideERK9btVector3f, .Lfunc_end10-_ZNK23btConvexPointCloudShape8isInsideERK9btVector3f
                                        # -- End function
	.section	.text._ZN23btConvexPointCloudShapeD0Ev,"axG",@progbits,_ZN23btConvexPointCloudShapeD0Ev,comdat
	.weak	_ZN23btConvexPointCloudShapeD0Ev # -- Begin function _ZN23btConvexPointCloudShapeD0Ev
	.p2align	5
	.type	_ZN23btConvexPointCloudShapeD0Ev,@function
_ZN23btConvexPointCloudShapeD0Ev:       # @_ZN23btConvexPointCloudShapeD0Ev
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
.LBB11_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:                                # %_ZN23btConvexPointCloudShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN23btConvexPointCloudShapeD0Ev, .Lfunc_end11-_ZN23btConvexPointCloudShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN23btConvexPointCloudShapeD0Ev,"aG",@progbits,_ZN23btConvexPointCloudShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
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
	.uleb128 .Lfunc_end11-.Ltmp4            #   Call between .Ltmp4 and .Lfunc_end11
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
.Lfunc_end12:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end12-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK23btConvexPointCloudShape7getNameEv,"axG",@progbits,_ZNK23btConvexPointCloudShape7getNameEv,comdat
	.weak	_ZNK23btConvexPointCloudShape7getNameEv # -- Begin function _ZNK23btConvexPointCloudShape7getNameEv
	.p2align	5
	.type	_ZNK23btConvexPointCloudShape7getNameEv,@function
_ZNK23btConvexPointCloudShape7getNameEv: # @_ZNK23btConvexPointCloudShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end13:
	.size	_ZNK23btConvexPointCloudShape7getNameEv, .Lfunc_end13-_ZNK23btConvexPointCloudShape7getNameEv
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
.Lfunc_end18:
	.size	__clang_call_terminate, .Lfunc_end18-__clang_call_terminate
                                        # -- End function
	.type	_ZTV23btConvexPointCloudShape,@object # @_ZTV23btConvexPointCloudShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV23btConvexPointCloudShape
	.p2align	3, 0x0
_ZTV23btConvexPointCloudShape:
	.dword	0
	.dword	_ZTI23btConvexPointCloudShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN23btConvexPointCloudShapeD0Ev
	.dword	_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN23btConvexPointCloudShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK23btConvexPointCloudShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK23btConvexPointCloudShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK23btConvexPointCloudShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK23btConvexPointCloudShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK23btConvexPointCloudShape14getNumVerticesEv
	.dword	_ZNK23btConvexPointCloudShape11getNumEdgesEv
	.dword	_ZNK23btConvexPointCloudShape7getEdgeEiR9btVector3S1_
	.dword	_ZNK23btConvexPointCloudShape9getVertexEiR9btVector3
	.dword	_ZNK23btConvexPointCloudShape12getNumPlanesEv
	.dword	_ZNK23btConvexPointCloudShape8getPlaneER9btVector3S1_i
	.dword	_ZNK23btConvexPointCloudShape8isInsideERK9btVector3f
	.size	_ZTV23btConvexPointCloudShape, 216

	.type	_ZTI23btConvexPointCloudShape,@object # @_ZTI23btConvexPointCloudShape
	.globl	_ZTI23btConvexPointCloudShape
	.p2align	3, 0x0
_ZTI23btConvexPointCloudShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS23btConvexPointCloudShape
	.dword	_ZTI34btPolyhedralConvexAabbCachingShape
	.size	_ZTI23btConvexPointCloudShape, 24

	.type	_ZTS23btConvexPointCloudShape,@object # @_ZTS23btConvexPointCloudShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS23btConvexPointCloudShape
_ZTS23btConvexPointCloudShape:
	.asciz	"23btConvexPointCloudShape"
	.size	_ZTS23btConvexPointCloudShape, 26

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ConvexPointCloud"
	.size	.L.str, 17

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
	.addrsig_sym _ZTI23btConvexPointCloudShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS23btConvexPointCloudShape
	.addrsig_sym _ZTI34btPolyhedralConvexAabbCachingShape
