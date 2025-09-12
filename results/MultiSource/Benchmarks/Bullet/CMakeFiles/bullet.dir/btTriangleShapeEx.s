	.file	"btTriangleShapeEx.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i
.LCPI0_0:
	.word	0xc47a0000                      # float -1000
.LCPI0_1:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i
	.p2align	5
	.type	_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i,@function
_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i: # @_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i
# %bb.0:
	lu12i.w	$a4, -243808
	lu32i.d	$a4, 0
	st.d	$a4, $a0, 0
	blez	$a3, .LBB0_13
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -80
	move	$a5, $zero
	move	$a4, $zero
	pcalau12i	$a6, %pc_hi20(.LCPI0_0)
	fld.s	$fa3, $a6, %pc_lo12(.LCPI0_0)
	pcalau12i	$a6, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a6, %pc_lo12(.LCPI0_1)
	addi.d	$a6, $a2, 8
	movgr2fr.w	$fa2, $zero
	addi.d	$a7, $sp, 16
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	fst.s	$fa4, $a0, 0
	st.w	$a5, $sp, 16
	ori	$a4, $zero, 1
	fmov.s	$fa3, $fa4
.LBB0_3:                                # %.sink.split
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$a4, $a0, 4
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 16
	beqz	$a3, .LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a6, -8
	fld.s	$fa5, $a1, 0
	fld.s	$fa6, $a6, -4
	fld.s	$fa7, $a1, 4
	fld.s	$ft0, $a6, 0
	fld.s	$ft1, $a1, 8
	fld.s	$ft2, $a1, 12
	fmul.s	$fa6, $fa6, $fa7
	fmadd.s	$fa4, $fa4, $fa5, $fa6
	fmadd.s	$fa4, $ft0, $ft1, $fa4
	fsub.s	$fa4, $fa4, $ft2
	fsub.s	$fa4, $fa0, $fa4
	fcmp.cult.s	$fcc0, $fa4, $fa2
	bcnez	$fcc0, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bceqz	$fcc0, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	fadd.s	$fa4, $fa4, $fa1
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	slli.d	$t0, $a4, 2
	stx.w	$a5, $t0, $a7
	addi.w	$a4, $a4, 1
	b	.LBB0_3
.LBB0_9:                                # %.preheader
	blez	$a4, .LBB0_12
# %bb.10:                               # %.lr.ph22
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 16
	.p2align	4, , 16
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	slli.d	$a3, $a3, 4
	vldx	$vr0, $a2, $a3
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 16
	bnez	$a4, .LBB0_11
.LBB0_12:
	addi.d	$sp, $sp, 80
.LBB0_13:                               # %._crit_edge
	ret
.Lfunc_end0:
	.size	_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i, .Lfunc_end0-_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i
                                        # -- End function
	.globl	_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_ # -- Begin function _ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_
	.p2align	5
	.type	_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_,@function
_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_: # @_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_
# %bb.0:
	fld.s	$fa0, $a0, 64
	fld.s	$fa1, $a1, 64
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa5, $a1, 0
	fld.s	$fa1, $a0, 48
	fld.s	$fa6, $a1, 4
	fld.s	$fa2, $a0, 52
	fld.s	$fa7, $a1, 8
	fld.s	$fa3, $a0, 56
	fld.s	$fa4, $a0, 60
	fmul.s	$fa6, $fa6, $fa2
	fmadd.s	$fa5, $fa5, $fa1, $fa6
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fsub.s	$fa5, $fa5, $fa4
	fcmp.cule.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB1_4
# %bb.1:
	fld.s	$fa5, $a1, 20
	fld.s	$fa6, $a1, 16
	fld.s	$fa7, $a1, 24
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fsub.s	$fa5, $fa5, $fa4
	fcmp.cule.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB1_4
# %bb.2:
	fld.s	$fa5, $a1, 36
	fld.s	$fa6, $a1, 32
	fld.s	$fa7, $a1, 40
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa1, $fa6, $fa1, $fa2
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fsub.s	$fa1, $fa1, $fa4
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB1_4:
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a1, 52
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a1, 48
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa5, $a0, 8
	fld.s	$fa6, $a1, 56
	fld.s	$fa7, $a0, 20
	fmadd.s	$fa1, $fa3, $fa4, $fa1
	fld.s	$fa3, $a0, 16
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fmul.s	$fa5, $fa2, $fa7
	fld.s	$fa7, $a0, 24
	fmadd.s	$fa3, $fa3, $fa4, $fa5
	fld.s	$fa5, $a0, 36
	fld.s	$ft0, $a1, 60
	fmadd.s	$fa3, $fa7, $fa6, $fa3
	fld.s	$fa7, $a0, 32
	fmul.s	$fa2, $fa2, $fa5
	fld.s	$fa5, $a0, 40
	fsub.s	$fa1, $fa1, $ft0
	fsub.s	$fa3, $fa3, $ft0
	fmadd.s	$fa2, $fa7, $fa4, $fa2
	fmadd.s	$fa2, $fa5, $fa6, $fa2
	fcmp.cule.s	$fcc0, $fa1, $fa0
	fcmp.cule.s	$fcc1, $fa3, $fa0
	fsub.s	$fa1, $fa2, $ft0
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	fcmp.cule.s	$fcc0, $fa1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc0
	or	$a0, $a0, $a1
	ret
.Lfunc_end1:
	.size	_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_, .Lfunc_end1-_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_
                                        # -- End function
	.globl	_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3 # -- Begin function _ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3
	.p2align	5
	.type	_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3,@function
_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3: # @_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a2
	move	$s0, $a0
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $a0, 4
	fld.s	$fa4, $a0, 24
	fld.s	$fa5, $a0, 8
	fsub.s	$fa1, $fa0, $fa1
	fld.s	$fa6, $a0, 52
	fsub.s	$fa3, $fa2, $fa3
	fsub.s	$fa5, $fa4, $fa5
	fld.s	$fa7, $a0, 56
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa5, $ft0
	fld.s	$ft1, $a0, 48
	fmadd.s	$ft0, $fa3, $fa7, $ft0
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $fa1, $fa7
	fmadd.s	$fa5, $fa5, $ft1, $fa7
	fneg.s	$fa7, $ft1
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmul.s	$fa3, $fa5, $fa5
	fmadd.s	$fa3, $ft0, $ft0, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa6, $ft0, $fa3
	fmul.s	$fa5, $fa5, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa0, $fa0, $fa6, $fa2
	fmadd.s	$fa0, $fa4, $fa1, $fa0
	fst.s	$fa6, $sp, 264
	fst.s	$fa5, $sp, 268
	fst.s	$fa1, $sp, 272
	fst.s	$fa0, $sp, 276
	addi.d	$a2, $a1, 16
	addi.d	$a3, $a1, 32
	addi.d	$a0, $sp, 264
	addi.d	$a4, $sp, 280
	pcaddu18i	$ra, %call36(_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
# %bb.1:
	move	$a2, $a0
	fld.s	$fa0, $s0, 32
	fld.s	$fa1, $s0, 16
	fld.s	$fa2, $s0, 36
	fld.s	$fa3, $s0, 20
	fld.s	$fa4, $s0, 40
	fld.s	$fa5, $s0, 24
	fsub.s	$fa1, $fa0, $fa1
	fld.s	$fa6, $s0, 52
	fsub.s	$fa3, $fa2, $fa3
	fsub.s	$fa5, $fa4, $fa5
	fld.s	$fa7, $s0, 56
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa5, $ft0
	fld.s	$ft1, $s0, 48
	fmadd.s	$ft0, $fa3, $fa7, $ft0
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $fa1, $fa7
	fmadd.s	$fa5, $fa5, $ft1, $fa7
	fneg.s	$fa7, $ft1
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmul.s	$fa3, $fa5, $fa5
	fmadd.s	$fa3, $ft0, $ft0, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa6, $ft0, $fa3
	fmul.s	$fa5, $fa5, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa0, $fa0, $fa6, $fa2
	fmadd.s	$fa0, $fa4, $fa1, $fa0
	fst.s	$fa6, $sp, 264
	fst.s	$fa5, $sp, 268
	fst.s	$fa1, $sp, 272
	fst.s	$fa0, $sp, 276
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
# %bb.2:
	move	$a2, $a0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 32
	fld.s	$fa2, $s0, 4
	fld.s	$fa3, $s0, 36
	fld.s	$fa4, $s0, 8
	fld.s	$fa5, $s0, 40
	fsub.s	$fa1, $fa0, $fa1
	fld.s	$fa6, $s0, 52
	fsub.s	$fa3, $fa2, $fa3
	fsub.s	$fa5, $fa4, $fa5
	fld.s	$fa7, $s0, 56
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fa5, $ft0
	fld.s	$ft1, $s0, 48
	fmadd.s	$ft0, $fa3, $fa7, $ft0
	fneg.s	$fa7, $fa7
	fmul.s	$fa7, $fa1, $fa7
	fmadd.s	$fa5, $fa5, $ft1, $fa7
	fneg.s	$fa7, $ft1
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmul.s	$fa3, $fa5, $fa5
	fmadd.s	$fa3, $ft0, $ft0, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa6, $ft0, $fa3
	fmul.s	$fa5, $fa5, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa0, $fa0, $fa6, $fa2
	fmadd.s	$fa0, $fa4, $fa1, $fa0
	fst.s	$fa6, $sp, 264
	fst.s	$fa5, $sp, 268
	fst.s	$fa1, $sp, 272
	fst.s	$fa0, $sp, 276
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_3:
	move	$a0, $zero
.LBB2_4:
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end2:
	.size	_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3, .Lfunc_end2-_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_
.LCPI3_0:
	.word	0x34000000                      # float 1.1920929E-7
	.section	.text._Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_,"axG",@progbits,_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_,comdat
	.weak	_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_
	.p2align	5
	.type	_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_,@function
_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_: # @_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_
	.cfi_startproc
# %bb.0:
	move	$a5, $a0
	fld.s	$fa0, $a1, 4
	fld.s	$fa2, $a0, 4
	fld.s	$fa6, $a1, 0
	fld.s	$fa3, $a0, 0
	fmul.s	$fa0, $fa0, $fa2
	fld.s	$fa7, $a1, 8
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $a0, 12
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI3_0)
	fmadd.s	$fa0, $fa6, $fa3, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fsub.s	$fa0, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	move	$a0, $zero
	b	.LBB3_3
.LBB3_2:
	vld	$vr2, $a1, 0
	vst	$vr2, $a4, 0
	fld.s	$fa3, $a5, 0
	fld.s	$fa2, $a5, 4
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a5, 12
	ori	$a0, $zero, 1
.LBB3_3:
	fld.s	$fa6, $a2, 4
	fld.s	$fa7, $a2, 0
	fld.s	$ft0, $a2, 8
	fmul.s	$fa2, $fa6, $fa2
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fmadd.s	$fa2, $ft0, $fa4, $fa2
	fsub.s	$fa2, $fa2, $fa5
	fcmp.clt.s	$fcc1, $fa1, $fa2
	fcmp.cule.s	$fcc2, $fa0, $fa1
	movcf2gr	$a6, $fcc2
	movcf2gr	$a7, $fcc1
	xor	$a6, $a6, $a7
	bnez	$a6, .LBB3_5
# %bb.4:
	fneg.s	$fa3, $fa0
	fsub.s	$fa4, $fa2, $fa0
	fdiv.s	$fa3, $fa3, $fa4
	alsl.d	$a6, $a0, $a4, 4
	slli.d	$a7, $a0, 4
	vldi	$vr4, -1168
	fld.s	$fa5, $a1, 0
	fld.s	$ft1, $a1, 4
	fld.s	$ft2, $a1, 8
	fsub.s	$fa4, $fa4, $fa3
	fmul.s	$fa5, $fa4, $fa5
	fmul.s	$ft1, $fa4, $ft1
	fmul.s	$fa4, $fa4, $ft2
	fmul.s	$fa7, $fa7, $fa3
	fmul.s	$fa6, $fa6, $fa3
	fmul.s	$fa3, $ft0, $fa3
	fadd.s	$fa5, $fa7, $fa5
	fadd.s	$fa6, $fa6, $ft1
	fadd.s	$fa3, $fa3, $fa4
	movfr2gr.s	$t0, $fa5
	movfr2gr.s	$t1, $fa6
	bstrins.d	$t0, $t1, 63, 32
	movfr2gr.s	$t1, $fa3
	bstrpick.d	$t1, $t1, 31, 0
	stx.d	$t0, $a4, $a7
	st.d	$t1, $a6, 8
	addi.d	$a0, $a0, 1
.LBB3_5:
	bcnez	$fcc1, .LBB3_7
# %bb.6:
	vld	$vr3, $a2, 0
	slli.d	$a6, $a0, 4
	vstx	$vr3, $a4, $a6
	addi.d	$a0, $a0, 1
.LBB3_7:                                # %_Z29bt_plane_clip_polygon_collectRK9btVector3S1_ffPS_Ri.exit
	fld.s	$fa4, $a3, 0
	fld.s	$fa3, $a5, 0
	fld.s	$fa5, $a3, 4
	fld.s	$fa7, $a5, 4
	fld.s	$fa6, $a3, 8
	fld.s	$ft0, $a5, 8
	fld.s	$ft1, $a5, 12
	fmul.s	$fa7, $fa5, $fa7
	fmadd.s	$fa3, $fa4, $fa3, $fa7
	fmadd.s	$fa3, $fa6, $ft0, $fa3
	fsub.s	$fa3, $fa3, $ft1
	fcmp.clt.s	$fcc1, $fa1, $fa3
	fcmp.cule.s	$fcc2, $fa2, $fa1
	movcf2gr	$a5, $fcc2
	movcf2gr	$a6, $fcc1
	xor	$a5, $a5, $a6
	bnez	$a5, .LBB3_9
# %bb.8:
	fneg.s	$fa7, $fa2
	fsub.s	$fa2, $fa3, $fa2
	fdiv.s	$fa2, $fa7, $fa2
	alsl.d	$a5, $a0, $a4, 4
	slli.d	$a6, $a0, 4
	vldi	$vr7, -1168
	fld.s	$ft0, $a2, 0
	fld.s	$ft1, $a2, 4
	fld.s	$ft2, $a2, 8
	fsub.s	$fa7, $fa7, $fa2
	fmul.s	$ft0, $fa7, $ft0
	fmul.s	$ft1, $fa7, $ft1
	fmul.s	$fa7, $fa7, $ft2
	fmul.s	$fa4, $fa4, $fa2
	fmul.s	$fa5, $fa5, $fa2
	fmul.s	$fa2, $fa6, $fa2
	fadd.s	$fa4, $fa4, $ft0
	fadd.s	$fa5, $fa5, $ft1
	fadd.s	$fa2, $fa2, $fa7
	movfr2gr.s	$a2, $fa4
	movfr2gr.s	$a7, $fa5
	bstrins.d	$a2, $a7, 63, 32
	movfr2gr.s	$a7, $fa2
	bstrpick.d	$a7, $a7, 31, 0
	stx.d	$a2, $a4, $a6
	st.d	$a7, $a5, 8
	addi.d	$a0, $a0, 1
.LBB3_9:
	bcnez	$fcc1, .LBB3_11
# %bb.10:
	vld	$vr2, $a3, 0
	slli.d	$a2, $a0, 4
	vstx	$vr2, $a4, $a2
	addi.d	$a0, $a0, 1
.LBB3_11:                               # %_Z29bt_plane_clip_polygon_collectRK9btVector3S1_ffPS_Ri.exit34
	fcmp.cule.s	$fcc1, $fa3, $fa1
	movcf2gr	$a2, $fcc0
	movcf2gr	$a5, $fcc1
	xor	$a2, $a2, $a5
	beqz	$a2, .LBB3_14
# %bb.12:
	bceqz	$fcc0, .LBB3_15
.LBB3_13:                               # %_Z29bt_plane_clip_polygon_collectRK9btVector3S1_ffPS_Ri.exit42
	ret
.LBB3_14:
	fneg.s	$fa1, $fa3
	fsub.s	$fa0, $fa0, $fa3
	fdiv.s	$fa0, $fa1, $fa0
	alsl.d	$a2, $a0, $a4, 4
	vldi	$vr1, -1168
	fld.s	$fa2, $a3, 0
	fld.s	$fa3, $a3, 4
	fld.s	$fa4, $a3, 8
	fsub.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a1, 4
	fld.s	$fa6, $a1, 8
	slli.d	$a3, $a0, 4
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa5, $fa0, $fa5
	fmul.s	$fa0, $fa0, $fa6
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa3, $fa3, $fa5
	fadd.s	$fa0, $fa1, $fa0
	movfr2gr.s	$a5, $fa2
	movfr2gr.s	$a6, $fa3
	bstrins.d	$a5, $a6, 63, 32
	movfr2gr.s	$a6, $fa0
	bstrpick.d	$a6, $a6, 31, 0
	stx.d	$a5, $a4, $a3
	st.d	$a6, $a2, 8
	addi.d	$a0, $a0, 1
	bcnez	$fcc0, .LBB3_13
.LBB3_15:
	vld	$vr0, $a1, 0
	slli.d	$a1, $a0, 4
	vstx	$vr0, $a4, $a1
	addi.d	$a0, $a0, 1
	ret
.Lfunc_end3:
	.size	_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_, .Lfunc_end3-_Z22bt_plane_clip_triangleRK9btVector4RK9btVector3S4_S4_PS2_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_
.LCPI4_0:
	.word	0x34000000                      # float 1.1920929E-7
	.section	.text._Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_,"axG",@progbits,_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_,comdat
	.weak	_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_
	.p2align	5
	.type	_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_,@function
_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_: # @_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_
	.cfi_startproc
# %bb.0:
	move	$a4, $a0
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a0, 8
	fld.s	$fa6, $a0, 12
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_0)
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fsub.s	$fa0, $fa0, $fa6
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB4_6
# %bb.1:
	move	$a0, $zero
	ori	$a5, $zero, 2
	bge	$a2, $a5, .LBB4_7
.LBB4_2:
	fmov.s	$fa3, $fa0
.LBB4_3:                                # %._crit_edge
	fcmp.cule.s	$fcc1, $fa3, $fa1
	movcf2gr	$a4, $fcc0
	movcf2gr	$a5, $fcc1
	xor	$a4, $a4, $a5
	beqz	$a4, .LBB4_13
# %bb.4:
	bceqz	$fcc0, .LBB4_14
.LBB4_5:                                # %_Z29bt_plane_clip_polygon_collectRK9btVector3S1_ffPS_Ri.exit
	ret
.LBB4_6:
	vld	$vr2, $a1, 0
	vst	$vr2, $a3, 0
	ori	$a0, $zero, 1
	ori	$a5, $zero, 2
	blt	$a2, $a5, .LBB4_2
.LBB4_7:                                # %.lr.ph.preheader
	addi.d	$a5, $a2, -1
	addi.d	$a6, $a1, 16
	vldi	$vr2, -1168
	fmov.s	$fa6, $fa0
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %_Z29bt_plane_clip_polygon_collectRK9btVector3S1_ffPS_Ri.exit34
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	fmov.s	$fa6, $fa3
	beqz	$a5, .LBB4_3
.LBB4_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a6, 0
	fld.s	$fa3, $a4, 0
	fld.s	$fa5, $a6, 4
	fld.s	$ft0, $a4, 4
	fld.s	$fa7, $a6, 8
	fld.s	$ft1, $a4, 8
	fld.s	$ft2, $a4, 12
	fmul.s	$ft0, $fa5, $ft0
	fmadd.s	$fa3, $fa4, $fa3, $ft0
	fmadd.s	$fa3, $fa7, $ft1, $fa3
	fsub.s	$fa3, $fa3, $ft2
	fcmp.clt.s	$fcc1, $fa1, $fa3
	fcmp.cule.s	$fcc2, $fa6, $fa1
	movcf2gr	$a7, $fcc2
	movcf2gr	$t0, $fcc1
	xor	$a7, $a7, $t0
	bnez	$a7, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	fneg.s	$ft0, $fa6
	fsub.s	$fa6, $fa3, $fa6
	fdiv.s	$fa6, $ft0, $fa6
	alsl.d	$a7, $a0, $a3, 4
	slli.d	$t0, $a0, 4
	fld.s	$ft0, $a6, -16
	fld.s	$ft1, $a6, -12
	fld.s	$ft2, $a6, -8
	fsub.s	$ft3, $fa2, $fa6
	fmul.s	$ft0, $ft3, $ft0
	fmul.s	$ft1, $ft3, $ft1
	fmul.s	$ft2, $ft3, $ft2
	fmul.s	$fa4, $fa4, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fmul.s	$fa6, $fa7, $fa6
	fadd.s	$fa4, $fa4, $ft0
	fadd.s	$fa5, $fa5, $ft1
	fadd.s	$fa6, $fa6, $ft2
	movfr2gr.s	$t1, $fa4
	movfr2gr.s	$t2, $fa5
	bstrins.d	$t1, $t2, 63, 32
	movfr2gr.s	$t2, $fa6
	bstrpick.d	$t2, $t2, 31, 0
	stx.d	$t1, $a3, $t0
	st.d	$t2, $a7, 8
	addi.w	$a0, $a0, 1
.LBB4_11:                               #   in Loop: Header=BB4_9 Depth=1
	bcnez	$fcc1, .LBB4_8
# %bb.12:                               #   in Loop: Header=BB4_9 Depth=1
	vld	$vr4, $a6, 0
	slli.d	$a7, $a0, 4
	vstx	$vr4, $a3, $a7
	addi.w	$a0, $a0, 1
	b	.LBB4_8
.LBB4_13:
	alsl.d	$a2, $a2, $a1, 4
	fneg.s	$fa1, $fa3
	fsub.s	$fa0, $fa0, $fa3
	fdiv.s	$fa0, $fa1, $fa0
	alsl.d	$a4, $a0, $a3, 4
	vldi	$vr1, -1168
	fld.s	$fa2, $a2, -16
	fld.s	$fa3, $a2, -12
	fld.s	$fa4, $a2, -8
	fsub.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a1, 4
	fld.s	$fa6, $a1, 8
	slli.d	$a2, $a0, 4
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa5, $fa0, $fa5
	fmul.s	$fa0, $fa0, $fa6
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa3, $fa3, $fa5
	fadd.s	$fa0, $fa1, $fa0
	movfr2gr.s	$a5, $fa2
	movfr2gr.s	$a6, $fa3
	bstrins.d	$a5, $a6, 63, 32
	movfr2gr.s	$a6, $fa0
	bstrpick.d	$a6, $a6, 31, 0
	stx.d	$a5, $a3, $a2
	st.d	$a6, $a4, 8
	addi.w	$a0, $a0, 1
	bcnez	$fcc0, .LBB4_5
.LBB4_14:
	vld	$vr0, $a1, 0
	slli.d	$a1, $a0, 4
	vstx	$vr0, $a3, $a1
	addi.w	$a0, $a0, 1
	ret
.Lfunc_end4:
	.size	_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_, .Lfunc_end4-_Z21bt_plane_clip_polygonRK9btVector4PK9btVector3iPS2_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT
.LCPI5_0:
	.word	0xc47a0000                      # float -1000
.LCPI5_1:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT
	.p2align	5
	.type	_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT,@function
_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT: # @_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -992
	.cfi_def_cfa_offset 992
	st.d	$ra, $sp, 984                   # 8-byte Folded Spill
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	st.d	$s0, $sp, 968                   # 8-byte Folded Spill
	st.d	$s1, $sp, 960                   # 8-byte Folded Spill
	st.d	$s2, $sp, 952                   # 8-byte Folded Spill
	st.d	$s3, $sp, 944                   # 8-byte Folded Spill
	st.d	$s4, $sp, 936                   # 8-byte Folded Spill
	st.d	$s5, $sp, 928                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 920                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 904                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 896                  # 8-byte Folded Spill
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
	move	$s1, $a1
	move	$s0, $a0
	fld.s	$fs0, $a0, 64
	vld	$vr0, $a0, 48
	fld.s	$fs1, $a1, 64
	move	$fp, $a2
	vst	$vr0, $sp, 304
	addi.d	$a2, $sp, 576
	pcaddu18i	$ra, %call36(_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_32
# %bb.1:
	blez	$a0, .LBB5_32
# %bb.2:                                # %.lr.ph.i
	move	$s2, $zero
	move	$a1, $zero
	fadd.s	$fs1, $fs0, $fs1
	addi.d	$s3, $sp, 304
	fld.s	$fa2, $sp, 304
	fld.s	$fa1, $sp, 308
	fld.s	$fa0, $sp, 312
	fld.s	$fa3, $sp, 316
	addi.d	$a2, $a0, -1
	pcalau12i	$s5, %pc_hi20(.LCPI5_0)
	fld.s	$fs0, $s5, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	fld.s	$fs2, $a3, %pc_lo12(.LCPI5_1)
	addi.d	$s4, $sp, 580
	movgr2fr.w	$fs3, $zero
	addi.d	$a3, $sp, 16
.LBB5_3:                                # %.outer84
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	alsl.d	$a5, $a1, $s4, 4
	move	$a4, $a1
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %.sink.split.i
                                        #   in Loop: Header=BB5_5 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 16
	beq	$a0, $a4, .LBB5_10
.LBB5_5:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $a5, 0
	fld.s	$fa5, $a5, -4
	fld.s	$fa6, $a5, 4
	fmul.s	$fa4, $fa4, $fa1
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fsub.s	$fa4, $fa4, $fa3
	fsub.s	$fa4, $fs1, $fa4
	fcmp.cult.s	$fcc0, $fa4, $fs3
	bcnez	$fcc0, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=2
	fcmp.clt.s	$fcc0, $fs0, $fa4
	bcnez	$fcc0, .LBB5_9
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=2
	fadd.s	$fa4, $fa4, $fs2
	fcmp.cult.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB5_4
# %bb.8:                                #   in Loop: Header=BB5_5 Depth=2
	slli.d	$a6, $s2, 2
	stx.w	$a1, $a6, $a3
	addi.w	$s2, $s2, 1
	b	.LBB5_4
.LBB5_9:                                # %.sink.split.i.thread
                                        #   in Loop: Header=BB5_3 Depth=1
	st.w	$a1, $sp, 16
	addi.d	$a1, $a4, 1
	ori	$s2, $zero, 1
	fmov.s	$fs0, $fa4
	bne	$a2, $a4, .LBB5_3
	b	.LBB5_11
.LBB5_10:                               # %.preheader.i
	fmov.s	$fa4, $fs0
	blez	$s2, .LBB5_14
.LBB5_11:                               # %.lr.ph22.i
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 576
	move	$a3, $s2
	.p2align	4, , 16
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slli.d	$a4, $a4, 4
	vldx	$vr3, $a4, $a2
	vst	$vr3, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB5_12
# %bb.13:
	fmov.s	$fs0, $fa4
.LBB5_14:                               # %_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i.exit
	beqz	$s2, .LBB5_32
# %bb.15:
	fneg.s	$fa2, $fa2
	fst.s	$fa2, $sp, 304
	fneg.s	$fa1, $fa1
	vld	$vr2, $s1, 48
	fst.s	$fa1, $sp, 308
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $sp, 312
	vst	$vr2, $sp, 24
	addi.d	$a2, $sp, 576
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN19btPrimitiveTriangle13clip_triangleERS_P9btVector3)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_32
# %bb.16:
	blez	$a0, .LBB5_32
# %bb.17:                               # %.lr.ph.i16
	move	$a2, $zero
	move	$a3, $zero
	fld.s	$fa1, $sp, 24
	fld.s	$fa2, $sp, 28
	fld.s	$fa3, $sp, 32
	fld.s	$fa4, $sp, 36
	fld.s	$fa0, $s5, %pc_lo12(.LCPI5_0)
	addi.d	$a1, $sp, 24
	addi.d	$a4, $a0, -1
	addi.d	$a5, $sp, 832
.LBB5_18:                               # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_20 Depth 2
	alsl.d	$a7, $a3, $s4, 4
	move	$a6, $a3
	b	.LBB5_20
	.p2align	4, , 16
.LBB5_19:                               # %.sink.split.i19
                                        #   in Loop: Header=BB5_20 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 16
	beq	$a0, $a6, .LBB5_25
.LBB5_20:                               #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa5, $a7, 0
	fld.s	$fa6, $a7, -4
	fld.s	$fa7, $a7, 4
	fmul.s	$fa5, $fa5, $fa2
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fsub.s	$fa5, $fa5, $fa4
	fsub.s	$fa5, $fs1, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fs3
	bcnez	$fcc0, .LBB5_19
# %bb.21:                               #   in Loop: Header=BB5_20 Depth=2
	fcmp.clt.s	$fcc0, $fa0, $fa5
	bcnez	$fcc0, .LBB5_24
# %bb.22:                               #   in Loop: Header=BB5_20 Depth=2
	fadd.s	$fa5, $fa5, $fs2
	fcmp.cult.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB5_19
# %bb.23:                               #   in Loop: Header=BB5_20 Depth=2
	slli.d	$t0, $a2, 2
	stx.w	$a3, $t0, $a5
	addi.w	$a2, $a2, 1
	b	.LBB5_19
.LBB5_24:                               # %.sink.split.i19.thread
                                        #   in Loop: Header=BB5_18 Depth=1
	st.w	$a3, $sp, 832
	addi.d	$a3, $a6, 1
	ori	$a2, $zero, 1
	fmov.s	$fa0, $fa5
	bne	$a4, $a6, .LBB5_18
	b	.LBB5_26
.LBB5_25:                               # %.preheader.i24
	fmov.s	$fa5, $fa0
	blez	$a2, .LBB5_29
.LBB5_26:                               # %.lr.ph22.i25
	addi.d	$a0, $sp, 40
	addi.d	$a3, $sp, 832
	addi.d	$a4, $sp, 576
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_27:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	slli.d	$a6, $a6, 4
	vldx	$vr0, $a6, $a4
	vst	$vr0, $a0, 0
	addi.d	$a5, $a5, -1
	addi.d	$a0, $a0, 16
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB5_27
# %bb.28:
	fmov.s	$fa0, $fa5
.LBB5_29:                               # %_ZN20GIM_TRIANGLE_CONTACT12merge_pointsERK9btVector4fPK9btVector3i.exit30
	beqz	$a2, .LBB5_32
# %bb.30:
	addi.d	$a3, $fp, 8
	fcmp.cule.s	$fcc0, $fs0, $fa0
	addi.d	$a0, $fp, 24
	bcnez	$fcc0, .LBB5_34
# %bb.31:                               # %.lr.ph.i31
	vld	$vr1, $a1, 0
	fst.s	$fa0, $fp, 0
	vst	$vr1, $a3, 0
	st.w	$a2, $fp, 4
	addi.d	$a1, $sp, 40
	slli.d	$a2, $a2, 4
	b	.LBB5_35
.LBB5_32:
	move	$a0, $zero
.LBB5_33:
	fld.d	$fs3, $sp, 896                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 912                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 920                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 968                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 984                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 992
	ret
.LBB5_34:                               # %.lr.ph.i35
	vld	$vr0, $s3, 0
	fst.s	$fs0, $fp, 0
	vst	$vr0, $a3, 0
	st.w	$s2, $fp, 4
	addi.d	$a1, $sp, 320
	slli.d	$a2, $s2, 4
.LBB5_35:                               # %_ZN20GIM_TRIANGLE_CONTACT9copy_fromERKS_.exit
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB5_33
.Lfunc_end5:
	.size	_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT, .Lfunc_end5-_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_ # -- Begin function _ZN17btTriangleShapeEx25overlap_test_conservativeERKS_
	.p2align	5
	.type	_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_,@function
_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_: # @_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 88
	move	$fp, $a1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fld.s	$fa1, $s0, 80
	fld.s	$fa3, $s0, 64
	fld.s	$fa2, $s0, 84
	fld.s	$fa6, $s0, 68
	fadd.s	$fa0, $fs0, $fa0
	fsub.s	$ft2, $fa1, $fa3
	fsub.s	$ft3, $fa2, $fa6
	fld.s	$fa4, $s0, 88
	fld.s	$ft1, $s0, 72
	fld.s	$fa5, $s0, 96
	fld.s	$fa7, $s0, 100
	fld.s	$ft0, $s0, 104
	fsub.s	$ft4, $fa4, $ft1
	fsub.s	$ft5, $fa5, $fa3
	fsub.s	$ft6, $fa7, $fa6
	fsub.s	$ft7, $ft0, $ft1
	fneg.s	$ft8, $ft6
	fmul.s	$ft8, $ft4, $ft8
	fmadd.s	$ft8, $ft3, $ft7, $ft8
	fneg.s	$ft7, $ft7
	fmul.s	$ft7, $ft2, $ft7
	fmadd.s	$ft4, $ft4, $ft5, $ft7
	fneg.s	$ft5, $ft5
	fmul.s	$ft3, $ft3, $ft5
	fmadd.s	$ft2, $ft2, $ft6, $ft3
	fmul.s	$ft3, $ft4, $ft4
	fmadd.s	$ft3, $ft8, $ft8, $ft3
	fmadd.s	$ft3, $ft2, $ft2, $ft3
	frsqrt.s	$ft3, $ft3
	fmul.s	$ft7, $ft8, $ft3
	fmul.s	$ft9, $ft4, $ft3
	fmul.s	$ft8, $ft2, $ft3
	fmul.s	$ft2, $fa6, $ft9
	fmadd.s	$ft2, $fa3, $ft7, $ft2
	fmadd.s	$ft10, $ft1, $ft8, $ft2
	fld.s	$ft6, $fp, 80
	fld.s	$ft2, $fp, 64
	fld.s	$ft5, $fp, 96
	fld.s	$ft4, $fp, 68
	fld.s	$ft3, $fp, 72
	fld.s	$ft14, $fp, 100
	fld.s	$ft13, $fp, 84
	fld.s	$ft12, $fp, 104
	fld.s	$ft11, $fp, 88
	fmul.s	$ft15, $ft14, $ft9
	fmadd.s	$ft15, $ft5, $ft7, $ft15
	fmadd.s	$ft15, $ft12, $ft8, $ft15
	fsub.s	$ft15, $ft15, $ft10
	fcmp.cule.s	$fcc0, $ft15, $fa0
	bcnez	$fcc0, .LBB6_4
# %bb.1:
	fmul.s	$ft15, $ft4, $ft9
	fmadd.s	$ft15, $ft2, $ft7, $ft15
	fmadd.s	$ft15, $ft3, $ft8, $ft15
	fsub.s	$ft15, $ft15, $ft10
	fcmp.cule.s	$fcc0, $ft15, $fa0
	bcnez	$fcc0, .LBB6_4
# %bb.2:
	fmul.s	$ft9, $ft13, $ft9
	fmadd.s	$ft7, $ft6, $ft7, $ft9
	fmadd.s	$ft7, $ft11, $ft8, $ft7
	fsub.s	$ft7, $ft7, $ft10
	fcmp.clt.s	$fcc0, $fa0, $ft7
	bceqz	$fcc0, .LBB6_4
# %bb.3:
	move	$a0, $zero
	b	.LBB6_5
.LBB6_4:
	fsub.s	$ft6, $ft6, $ft2
	fsub.s	$ft7, $ft14, $ft4
	fsub.s	$ft8, $ft13, $ft4
	fsub.s	$ft5, $ft5, $ft2
	fneg.s	$ft9, $ft5
	fmul.s	$ft9, $ft8, $ft9
	fmadd.s	$ft9, $ft6, $ft7, $ft9
	fsub.s	$ft10, $ft12, $ft3
	fsub.s	$ft11, $ft11, $ft3
	fneg.s	$ft7, $ft7
	fmul.s	$ft7, $ft11, $ft7
	fmadd.s	$ft7, $ft8, $ft10, $ft7
	fneg.s	$ft8, $ft10
	fmul.s	$ft6, $ft6, $ft8
	fmadd.s	$ft5, $ft11, $ft5, $ft6
	fmul.s	$ft6, $ft5, $ft5
	fmadd.s	$ft6, $ft7, $ft7, $ft6
	fmadd.s	$ft6, $ft9, $ft9, $ft6
	frsqrt.s	$ft6, $ft6
	fmul.s	$ft8, $ft9, $ft6
	fmul.s	$ft7, $ft7, $ft6
	fmul.s	$ft5, $ft5, $ft6
	fmul.s	$ft4, $ft4, $ft5
	fmadd.s	$ft2, $ft2, $ft7, $ft4
	fmadd.s	$ft2, $ft3, $ft8, $ft2
	fmul.s	$fa6, $fa6, $ft5
	fmadd.s	$fa3, $fa3, $ft7, $fa6
	fmadd.s	$fa3, $ft1, $ft8, $fa3
	fsub.s	$fa3, $fa3, $ft2
	fmul.s	$fa2, $fa2, $ft5
	fmadd.s	$fa1, $fa1, $ft7, $fa2
	fmadd.s	$fa1, $fa4, $ft8, $fa1
	fsub.s	$fa1, $fa1, $ft2
	fmul.s	$fa2, $fa7, $ft5
	fmadd.s	$fa2, $fa5, $ft7, $fa2
	fmadd.s	$fa2, $ft0, $ft8, $fa2
	fcmp.cule.s	$fcc0, $fa3, $fa0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	fsub.s	$fa1, $fa2, $ft2
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	fcmp.cule.s	$fcc0, $fa1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc0
	or	$a0, $a1, $a0
.LBB6_5:
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_, .Lfunc_end6-_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
