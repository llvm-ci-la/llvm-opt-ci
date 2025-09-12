	.file	"btConvexInternalShape.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN21btConvexInternalShapeC2Ev
.LCPI0_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN21btConvexInternalShapeC2Ev
	.p2align	5
	.type	_ZN21btConvexInternalShapeC2Ev,@function
_ZN21btConvexInternalShapeC2Ev:         # @_ZN21btConvexInternalShapeC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV21btConvexInternalShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV21btConvexInternalShape+16)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.d	$a0, $fp, 0
	vst	$vr0, $fp, 24
	lu12i.w	$a0, 250429
	ori	$a0, $a0, 1802
	st.w	$a0, $fp, 56
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN21btConvexInternalShapeC2Ev, .Lfunc_end0-_ZN21btConvexInternalShapeC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3 # -- Begin function _ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3,@function
_ZN21btConvexInternalShape15setLocalScalingERK9btVector3: # @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
# %bb.0:
	ld.wu	$a2, $a1, 0
	ld.wu	$a3, $a1, 4
	ld.wu	$a1, $a1, 8
	bstrpick.d	$a2, $a2, 30, 0
	bstrins.d	$a2, $a3, 62, 32
	bstrpick.d	$a1, $a1, 30, 0
	st.d	$a2, $a0, 24
	st.d	$a1, $a0, 32
	ret
.Lfunc_end1:
	.size	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3, .Lfunc_end1-_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
                                        # -- End function
	.globl	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_ # -- Begin function _ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_,@function
_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_: # @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
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
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 88
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fmov.s	$fs0, $fa0
	move	$s3, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.d	$s4, $sp, 64
	lu12i.w	$s5, 260096
	addi.d	$s6, $sp, 48
	lu12i.w	$s7, -264192
	lu32i.d	$s7, 0
	ori	$s8, $zero, 12
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	stx.w	$s5, $s3, $s4
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s2, 16
	fld.s	$fa2, $sp, 68
	fld.s	$fa3, $sp, 64
	fld.s	$fa4, $s2, 32
	fld.s	$fa5, $sp, 72
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fld.s	$fa1, $s2, 20
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $s2, 4
	fld.s	$fa6, $s2, 36
	fmul.s	$fa1, $fa2, $fa1
	fld.s	$fa7, $s2, 24
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fmadd.s	$fa1, $fa6, $fa5, $fa1
	fld.s	$fa4, $s2, 8
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$fa6, $s2, 40
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fmadd.s	$fa0, $fa4, $fa3, $fa2
	fmadd.s	$fa0, $fa6, $fa5, $fa0
	st.d	$a0, $sp, 48
	ld.d	$a2, $a1, 96
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 56
	addi.d	$a1, $sp, 48
	move	$a0, $fp
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s2, 48
	fmul.s	$fa3, $fa3, $fa1
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fld.s	$fa4, $s2, 20
	fld.s	$fa5, $s2, 16
	fld.s	$fa6, $s2, 24
	fld.s	$fa7, $s2, 52
	fmul.s	$fa4, $fa4, $fa1
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fadd.s	$fa4, $fa7, $fa4
	fld.s	$fa5, $s2, 36
	fld.s	$fa6, $s2, 32
	fld.s	$fa7, $s2, 40
	fld.s	$ft0, $s2, 56
	fmul.s	$fa1, $fa5, $fa1
	fmadd.s	$fa0, $fa6, $fa0, $fa1
	fmadd.s	$fa0, $fa7, $fa2, $fa0
	fadd.s	$fa0, $ft0, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	fldx.s	$fa0, $s3, $s6
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s0, $s3
	stx.w	$s7, $s3, $s4
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s2, 16
	fld.s	$fa2, $sp, 68
	fld.s	$fa3, $sp, 64
	fld.s	$fa4, $s2, 32
	fld.s	$fa5, $sp, 72
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fld.s	$fa1, $s2, 20
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $s2, 4
	fld.s	$fa6, $s2, 36
	fmul.s	$fa1, $fa2, $fa1
	fld.s	$fa7, $s2, 24
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fmadd.s	$fa1, $fa6, $fa5, $fa1
	fld.s	$fa4, $s2, 8
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$fa6, $s2, 40
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fmadd.s	$fa0, $fa4, $fa3, $fa2
	fmadd.s	$fa0, $fa6, $fa5, $fa0
	st.d	$a0, $sp, 32
	ld.d	$a2, $a1, 96
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40
	addi.d	$a1, $sp, 32
	move	$a0, $fp
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
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	fldx.s	$fa0, $s3, $s6
	fsub.s	$fa0, $fa0, $fs0
	fstx.s	$fa0, $s1, $s3
	addi.d	$s3, $s3, 4
	bne	$s3, $s8, .LBB2_1
# %bb.2:
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, .Lfunc_end2-_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3 # -- Begin function _ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3,@function
_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3: # @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
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
	fld.s	$fa0, $s2, 4
	fld.s	$fa1, $s2, 0
	fld.s	$fa2, $s2, 8
	movgr2fr.w	$fs2, $s1
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	lu12i.w	$a0, 165888
	movgr2fr.w	$fa4, $a0
	fcmp.clt.s	$fcc0, $fa3, $fa4
	vldi	$vr3, -1040
	fsel	$fa1, $fa1, $fa3, $fcc0
	fsel	$fa0, $fa0, $fa3, $fcc0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa0, $fa0
	ld.d	$a0, $s0, 0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	ld.d	$a1, $a0, 88
	fmul.s	$fs3, $fa1, $fa3
	fmul.s	$fs4, $fa0, $fa3
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
	.size	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3, .Lfunc_end3-_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN32btConvexInternalAabbCachingShapeC2Ev
.LCPI4_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI4_1:
	.word	0xbf800000                      # float -1
	.word	0xbf800000                      # float -1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN32btConvexInternalAabbCachingShapeC2Ev
	.p2align	5
	.type	_ZN32btConvexInternalAabbCachingShapeC2Ev,@function
_ZN32btConvexInternalAabbCachingShapeC2Ev: # @_ZN32btConvexInternalAabbCachingShapeC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI4_0)
	vst	$vr0, $fp, 24
	lu12i.w	$a0, 250429
	ori	$a0, $a0, 1802
	st.w	$a0, $fp, 56
	pcalau12i	$a0, %pc_hi20(_ZTV32btConvexInternalAabbCachingShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV32btConvexInternalAabbCachingShape+16)
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_1)
	st.d	$a0, $fp, 0
	vst	$vr0, $fp, 64
	vst	$vr1, $fp, 80
	st.b	$zero, $fp, 96
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN32btConvexInternalAabbCachingShapeC2Ev, .Lfunc_end4-_ZN32btConvexInternalAabbCachingShapeC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
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
.Lfunc_end5:
	.size	_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end5-_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3 # -- Begin function _ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3,@function
_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3: # @_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	ld.wu	$a2, $a1, 0
	ld.wu	$a3, $a1, 4
	ld.wu	$a1, $a1, 8
	bstrpick.d	$a2, $a2, 30, 0
	bstrins.d	$a2, $a3, 62, 32
	bstrpick.d	$a1, $a1, 30, 0
	st.d	$a2, $a0, 24
	st.d	$a1, $a0, 32
	pcaddu18i	$t8, %call36(_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv)
	jr	$t8
.Lfunc_end6:
	.size	_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3, .Lfunc_end6-_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv # -- Begin function _ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv
	.p2align	5
	.type	_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv,@function
_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv: # @_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv
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
	pcalau12i	$a0, %pc_hi20(_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	dbar	20
	beqz	$a0, .LBB7_2
.LBB7_1:
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 96
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 112
	pcalau12i	$a0, %pc_hi20(_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a1, $a0, %pc_lo12(_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
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
.LBB7_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB7_1
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a0, $a0, %pc_lo12(_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
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
	pcalau12i	$a0, %pc_hi20(_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB7_1
.Lfunc_end7:
	.size	_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv, .Lfunc_end7-_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN21btConvexInternalShapeD0Ev,"axG",@progbits,_ZN21btConvexInternalShapeD0Ev,comdat
	.weak	_ZN21btConvexInternalShapeD0Ev  # -- Begin function _ZN21btConvexInternalShapeD0Ev
	.p2align	5
	.type	_ZN21btConvexInternalShapeD0Ev,@function
_ZN21btConvexInternalShapeD0Ev:         # @_ZN21btConvexInternalShapeD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end8:
	.size	_ZN21btConvexInternalShapeD0Ev, .Lfunc_end8-_ZN21btConvexInternalShapeD0Ev
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
	.section	.text._ZN32btConvexInternalAabbCachingShapeD0Ev,"axG",@progbits,_ZN32btConvexInternalAabbCachingShapeD0Ev,comdat
	.weak	_ZN32btConvexInternalAabbCachingShapeD0Ev # -- Begin function _ZN32btConvexInternalAabbCachingShapeD0Ev
	.p2align	5
	.type	_ZN32btConvexInternalAabbCachingShapeD0Ev,@function
_ZN32btConvexInternalAabbCachingShapeD0Ev: # @_ZN32btConvexInternalAabbCachingShapeD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end15:
	.size	_ZN32btConvexInternalAabbCachingShapeD0Ev, .Lfunc_end15-_ZN32btConvexInternalAabbCachingShapeD0Ev
                                        # -- End function
	.type	_ZTV21btConvexInternalShape,@object # @_ZTV21btConvexInternalShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV21btConvexInternalShape
	.p2align	3, 0x0
_ZTV21btConvexInternalShape:
	.dword	0
	.dword	_ZTI21btConvexInternalShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN21btConvexInternalShapeD0Ev
	.dword	_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV21btConvexInternalShape, 160

	.type	_ZTV32btConvexInternalAabbCachingShape,@object # @_ZTV32btConvexInternalAabbCachingShape
	.globl	_ZTV32btConvexInternalAabbCachingShape
	.p2align	3, 0x0
_ZTV32btConvexInternalAabbCachingShape:
	.dword	0
	.dword	_ZTI32btConvexInternalAabbCachingShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN32btConvexInternalAabbCachingShapeD0Ev
	.dword	_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV32btConvexInternalAabbCachingShape, 160

	.type	_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions,@object # @_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions
	.local	_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions
	.comm	_ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions,96,8
	.type	_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions,@object # @_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions
	.local	_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions
	.comm	_ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions,8,8
	.type	_ZTI21btConvexInternalShape,@object # @_ZTI21btConvexInternalShape
	.globl	_ZTI21btConvexInternalShape
	.p2align	3, 0x0
_ZTI21btConvexInternalShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS21btConvexInternalShape
	.dword	_ZTI13btConvexShape
	.size	_ZTI21btConvexInternalShape, 24

	.type	_ZTS21btConvexInternalShape,@object # @_ZTS21btConvexInternalShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS21btConvexInternalShape
_ZTS21btConvexInternalShape:
	.asciz	"21btConvexInternalShape"
	.size	_ZTS21btConvexInternalShape, 24

	.type	_ZTI32btConvexInternalAabbCachingShape,@object # @_ZTI32btConvexInternalAabbCachingShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI32btConvexInternalAabbCachingShape
	.p2align	3, 0x0
_ZTI32btConvexInternalAabbCachingShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS32btConvexInternalAabbCachingShape
	.dword	_ZTI21btConvexInternalShape
	.size	_ZTI32btConvexInternalAabbCachingShape, 24

	.type	_ZTS32btConvexInternalAabbCachingShape,@object # @_ZTS32btConvexInternalAabbCachingShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS32btConvexInternalAabbCachingShape
_ZTS32btConvexInternalAabbCachingShape:
	.asciz	"32btConvexInternalAabbCachingShape"
	.size	_ZTS32btConvexInternalAabbCachingShape, 35

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions
	.addrsig_sym _ZGVZN32btConvexInternalAabbCachingShape15recalcLocalAabbEvE11_directions
	.addrsig_sym _ZTI21btConvexInternalShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS21btConvexInternalShape
	.addrsig_sym _ZTI13btConvexShape
	.addrsig_sym _ZTI32btConvexInternalAabbCachingShape
	.addrsig_sym _ZTS32btConvexInternalAabbCachingShape
