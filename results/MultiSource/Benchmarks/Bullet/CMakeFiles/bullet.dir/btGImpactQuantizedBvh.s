	.file	"btGImpactQuantizedBvh.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf
.LCPI0_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI0_1:
	.word	0xff7fffff                      # float -3.40282347E+38
.LCPI0_2:
	.word	0x477fff00                      # float 65535
	.text
	.globl	_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf
	.p2align	5
	.type	_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf,@function
_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf: # @_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf
# %bb.0:
	ld.w	$a2, $a1, 4
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	blez	$a2, .LBB0_3
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a1, 16
	fld.s	$fa1, $a4, %pc_lo12(.LCPI0_1)
	fld.s	$fa5, $a3, %pc_lo12(.LCPI0_0)
	addi.d	$a1, $a1, 16
	fmov.s	$fa6, $fa5
	fmov.s	$fa4, $fa5
	fmov.s	$fa2, $fa1
	fmov.s	$fa3, $fa1
	.p2align	4, , 16
.LBB0_2:                                # %.cont20
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a1, -16
	fld.s	$ft0, $a1, -12
	fcmp.clt.s	$fcc0, $fa7, $fa5
	fsel	$fa5, $fa5, $fa7, $fcc0
	fld.s	$fa7, $a1, -8
	fcmp.clt.s	$fcc0, $ft0, $fa6
	fsel	$fa6, $fa6, $ft0, $fcc0
	fld.s	$ft0, $a1, 0
	fcmp.clt.s	$fcc0, $fa7, $fa4
	fsel	$fa4, $fa4, $fa7, $fcc0
	fld.s	$fa7, $a1, 4
	fcmp.clt.s	$fcc0, $fa1, $ft0
	fld.s	$ft1, $a1, 8
	fsel	$fa1, $fa1, $ft0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa7
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $ft1
	fsel	$fa2, $fa2, $ft1, $fcc0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 36
	bnez	$a2, .LBB0_2
	b	.LBB0_4
.LBB0_3:
	fld.s	$fa4, $a3, %pc_lo12(.LCPI0_0)
	fld.s	$fa3, $a4, %pc_lo12(.LCPI0_1)
	fmov.s	$fa2, $fa3
	fmov.s	$fa1, $fa3
	fmov.s	$fa6, $fa4
	fmov.s	$fa5, $fa4
.LBB0_4:                                # %._crit_edge
	fsub.s	$fa5, $fa5, $fa0
	fsub.s	$fa6, $fa6, $fa0
	fsub.s	$fa4, $fa4, $fa0
	movfr2gr.s	$a1, $fa5
	movfr2gr.s	$a2, $fa6
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa4
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 40
	st.d	$a2, $a0, 48
	fadd.s	$fa1, $fa0, $fa1
	fadd.s	$fa3, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa2
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa3
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 56
	st.d	$a2, $a0, 64
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI0_2)
	fsub.s	$fa1, $fa1, $fa5
	fsub.s	$fa3, $fa3, $fa6
	fsub.s	$fa0, $fa0, $fa4
	fdiv.s	$fa1, $fa2, $fa1
	fdiv.s	$fa3, $fa2, $fa3
	fdiv.s	$fa0, $fa2, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa3
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 72
	st.d	$a2, $a0, 80
	ret
.Lfunc_end0:
	.size	_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf, .Lfunc_end0-_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf
                                        # -- End function
	.globl	_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii # -- Begin function _ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii
	.p2align	5
	.type	_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii,@function
_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii: # @_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii
# %bb.0:
	sub.d	$a5, $a3, $a2
	addi.w	$a4, $a5, 0
	bge	$a2, $a3, .LBB1_5
# %bb.1:                                # %.lr.ph
	ld.d	$a6, $a1, 16
	slli.d	$a0, $a2, 5
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a6, $a0, $a6
	addi.d	$a6, $a6, 20
	vrepli.b	$vr2, 0
	movgr2fr.w	$fa3, $zero
	vldi	$vr1, -1184
	lu12i.w	$a7, 258048
	vreplgr2vr.w	$vr0, $a7
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a6, -4
	fld.s	$fa5, $a6, -20
	ld.d	$a7, $a6, 0
	ld.d	$t0, $a6, -16
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $fa1
	vinsgr2vr.d	$vr5, $a7, 0
	vinsgr2vr.d	$vr6, $t0, 0
	vfadd.s	$vr5, $vr5, $vr6
	vfmul.s	$vr5, $vr5, $vr0
	fadd.s	$fa3, $fa3, $fa4
	vfadd.s	$vr2, $vr2, $vr5
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 36
	bnez	$a5, .LBB1_2
# %bb.3:                                # %.lr.ph134
	movgr2fr.w	$fa1, $a4
	ffint.s.w	$fa1, $fa1
	frecip.s	$fa5, $fa1
	ld.d	$a1, $a1, 16
	fmul.s	$fa4, $fa5, $fa3
	vextrins.w	$vr5, $vr5, 16
	vfmul.s	$vr5, $vr5, $vr2
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 20
	sub.d	$a1, $a3, $a2
	vrepli.b	$vr2, 0
	movgr2fr.w	$fa3, $zero
	vldi	$vr6, -1184
	.p2align	4, , 16
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a0, -4
	fld.s	$ft0, $a0, -20
	ld.d	$a2, $a0, 0
	fadd.s	$fa7, $fa7, $ft0
	vinsgr2vr.d	$vr8, $a2, 0
	ld.d	$a2, $a0, -16
	fmul.s	$fa7, $fa7, $fa6
	fsub.s	$fa7, $fa7, $fa4
	fmul.s	$fa7, $fa7, $fa7
	vinsgr2vr.d	$vr9, $a2, 0
	vfadd.s	$vr8, $vr8, $vr9
	vfmul.s	$vr8, $vr8, $vr0
	vfsub.s	$vr8, $vr8, $vr5
	vfmul.s	$vr8, $vr8, $vr8
	fadd.s	$fa3, $fa3, $fa7
	vfadd.s	$vr2, $vr2, $vr8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 36
	bnez	$a1, .LBB1_4
	b	.LBB1_6
.LBB1_5:                                # %._crit_edge
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa1, $fa0
	vrepli.b	$vr2, 0
	movgr2fr.w	$fa3, $zero
.LBB1_6:                                # %._crit_edge135
	vldi	$vr0, -1040
	fadd.s	$fa0, $fa1, $fa0
	frecip.s	$fa0, $fa0
	fmul.s	$fa1, $fa0, $fa3
	vreplvei.w	$vr3, $vr2, 0
	fmul.s	$fa3, $fa0, $fa3
	vreplvei.w	$vr2, $vr2, 1
	fmul.s	$fa0, $fa0, $fa2
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end1:
	.size	_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii, .Lfunc_end1-_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii
                                        # -- End function
	.globl	_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii # -- Begin function _ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii
	.p2align	5
	.type	_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii,@function
_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii: # @_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii
# %bb.0:
	addi.d	$sp, $sp, -80
	sub.d	$a5, $a3, $a2
	addi.w	$a0, $a5, 0
	st.w	$zero, $sp, 44
	slli.d	$t0, $a2, 5
	bge	$a2, $a3, .LBB2_3
# %bb.1:                                # %.lr.ph
	ld.d	$a6, $a1, 16
	alsl.d	$a7, $a2, $t0, 2
	add.d	$a6, $a7, $a6
	addi.d	$a6, $a6, 20
	sub.d	$a7, $a3, $a2
	vrepli.b	$vr0, 0
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -1184
	lu12i.w	$t1, 258048
	vreplgr2vr.w	$vr3, $t1
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a6, -4
	fld.s	$fa5, $a6, -20
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a6, -16
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $fa2
	vinsgr2vr.d	$vr5, $t1, 0
	vinsgr2vr.d	$vr6, $t2, 0
	vfadd.s	$vr5, $vr5, $vr6
	vfmul.s	$vr5, $vr5, $vr3
	fadd.s	$fa1, $fa1, $fa4
	vfadd.s	$vr0, $vr0, $vr5
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 36
	bnez	$a7, .LBB2_2
	b	.LBB2_4
.LBB2_3:
	vrepli.b	$vr0, 0
	movgr2fr.w	$fa1, $zero
.LBB2_4:                                # %._crit_edge
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa2, $fa2
	frecip.s	$fa2, $fa2
	fmul.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $sp, 32
	vreplvei.w	$vr1, $vr0, 0
	fmul.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $sp, 36
	vreplvei.w	$vr0, $vr0, 1
	fmul.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $sp, 40
	bge	$a2, $a3, .LBB2_9
# %bb.5:                                # %.lr.ph101
	slli.d	$a6, $a4, 2
	addi.d	$a7, $sp, 32
	fldx.s	$fa0, $a6, $a7
	addi.d	$a6, $sp, 16
	alsl.d	$a6, $a4, $a6, 2
	addi.d	$a7, $sp, 64
	alsl.d	$t0, $a2, $t0, 2
	vldi	$vr1, -1184
	move	$a4, $a2
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$t0, $t0, 36
	beqz	$a5, .LBB2_10
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a1, 16
	add.d	$t1, $t2, $t0
	fld.s	$fa2, $t1, 16
	fldx.s	$fa3, $t2, $t0
	fld.s	$fa4, $t1, 20
	fld.s	$fa5, $t1, 4
	fld.s	$fa6, $t1, 24
	fld.s	$fa7, $t1, 8
	fadd.s	$fa2, $fa2, $fa3
	fadd.s	$fa3, $fa4, $fa5
	fadd.s	$fa4, $fa6, $fa7
	fmul.s	$fa2, $fa2, $fa1
	fmul.s	$fa3, $fa3, $fa1
	fmul.s	$fa4, $fa4, $fa1
	movfr2gr.s	$t3, $fa2
	movfr2gr.s	$t4, $fa3
	bstrins.d	$t3, $t4, 63, 32
	movfr2gr.s	$t4, $fa4
	bstrpick.d	$t4, $t4, 31, 0
	st.d	$t3, $sp, 16
	st.d	$t4, $sp, 24
	fld.s	$fa2, $a6, 0
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	slli.d	$t3, $a4, 5
	alsl.d	$t3, $a4, $t3, 2
	vldx	$vr2, $t2, $t3
	vld	$vr3, $t1, 0
	add.d	$t2, $t2, $t3
	vst	$vr2, $t1, 0
	ld.w	$t4, $t2, 32
	addi.d	$t5, $t1, 16
	vld	$vr2, $t5, 0
	ld.w	$t5, $t1, 32
	st.w	$t4, $t1, 32
	vld	$vr4, $t2, 16
	vst	$vr4, $t1, 16
	ld.d	$t1, $a1, 16
	vst	$vr2, $a7, 0
	vld	$vr2, $sp, 64
	add.d	$t2, $t1, $t3
	vstx	$vr3, $t1, $t3
	vst	$vr2, $t2, 16
	st.w	$t5, $t2, 32
	addi.w	$a4, $a4, 1
	b	.LBB2_6
.LBB2_9:
	move	$a4, $a2
.LBB2_10:                               # %._crit_edge102
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	mul.d	$a1, $a0, $a1
	srli.d	$a5, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a5
	add.w	$a5, $a1, $a2
	slt	$a5, $a5, $a4
	xori	$a5, $a5, 1
	nor	$a1, $a1, $zero
	add.w	$a1, $a3, $a1
	slt	$a1, $a4, $a1
	xori	$a1, $a1, 1
	srli.d	$a0, $a0, 1
	add.w	$a0, $a0, $a2
	masknez	$a2, $a4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a1
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii, .Lfunc_end2-_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
.LCPI3_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI3_1:
	.word	0xff7fffff                      # float -3.40282347E+38
	.text
	.globl	_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
	.p2align	5
	.type	_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii,@function
_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii: # @_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s3, $a0, 0
	move	$s0, $a3
	move	$s1, $a1
	addi.d	$a0, $s3, 1
	sub.d	$s4, $a3, $a2
	addi.w	$a1, $s4, 0
	ori	$a3, $zero, 1
	st.w	$a0, $fp, 0
	bne	$a1, $a3, .LBB3_2
# %bb.1:                                # %common.ret
	ld.d	$a3, $s1, 16
	ld.d	$a4, $fp, 24
	slli.d	$a0, $a2, 5
	alsl.d	$a2, $a2, $a0, 2
	add.d	$a1, $a3, $a2
	alsl.d	$a0, $s3, $a4, 4
	slli.d	$a5, $s3, 4
	fldx.s	$fa2, $a3, $a2
	fld.s	$fa0, $fp, 40
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a1, 8
	fld.s	$fa1, $fp, 44
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa2, $fa0, $fcc0
	fld.s	$fa5, $fp, 48
	fcmp.clt.s	$fcc0, $fa3, $fa1
	fsel	$fa3, $fa3, $fa1, $fcc0
	fld.s	$fa6, $fp, 56
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fld.s	$fa7, $fp, 60
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fld.s	$ft0, $fp, 64
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa4
	fsel	$fa4, $fa4, $ft0, $fcc0
	fsub.s	$fa2, $fa2, $fa0
	fsub.s	$fa3, $fa3, $fa1
	fld.s	$ft1, $fp, 72
	fld.s	$ft2, $fp, 76
	fld.s	$ft3, $fp, 80
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa2, $fa2, $ft1
	fmul.s	$fa3, $fa3, $ft2
	fmul.s	$fa4, $fa4, $ft3
	vldi	$vr12, -1184
	fadd.s	$fa2, $fa2, $ft4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	stx.h	$a2, $a4, $a5
	fadd.s	$fa2, $fa3, $ft4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	st.h	$a2, $a0, 2
	fadd.s	$fa2, $fa4, $ft4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	st.h	$a2, $a0, 4
	fld.s	$fa2, $a1, 16
	fld.s	$fa3, $a1, 20
	fld.s	$fa4, $a1, 24
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa2, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa1
	fsel	$fa3, $fa3, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa4
	fsel	$fa4, $fa4, $ft0, $fcc0
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa1, $fa3, $fa1
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa0, $ft1, $fa0
	fmul.s	$fa1, $ft2, $fa1
	fmul.s	$fa2, $ft3, $fa2
	fadd.s	$fa0, $fa0, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	st.h	$a2, $a0, 6
	fadd.s	$fa0, $fa1, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	st.h	$a2, $a0, 8
	fadd.s	$fa0, $fa2, $ft4
	ld.w	$a1, $a1, 32
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	st.h	$a2, $a0, 10
	st.w	$a1, $a0, 12
	b	.LBB3_7
.LBB3_2:
	move	$a1, $s1
	move	$s2, $a2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $a0
	pcaddu18i	$ra, %call36(_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	bge	$a2, $s0, .LBB3_5
# %bb.3:                                # %.lr.ph
	ld.d	$a3, $s1, 16
	fld.s	$fa0, $a1, %pc_lo12(.LCPI3_1)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI3_0)
	slli.d	$a0, $a2, 5
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a0, $a0, $a3
	addi.d	$a0, $a0, 16
	fmov.s	$fa5, $fa4
	fmov.s	$fa3, $fa4
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB3_4:                                # %.cont61
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $a0, -16
	fld.s	$fa7, $a0, -12
	fcmp.clt.s	$fcc0, $fa6, $fa4
	fsel	$fa4, $fa4, $fa6, $fcc0
	fld.s	$fa6, $a0, -8
	fcmp.clt.s	$fcc0, $fa7, $fa5
	fsel	$fa5, $fa5, $fa7, $fcc0
	fld.s	$fa7, $a0, 0
	fcmp.clt.s	$fcc0, $fa6, $fa3
	fsel	$fa3, $fa3, $fa6, $fcc0
	fld.s	$fa6, $a0, 4
	fcmp.clt.s	$fcc0, $fa0, $fa7
	fld.s	$ft0, $a0, 8
	fsel	$fa0, $fa0, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fa6
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $ft0
	fsel	$fa1, $fa1, $ft0, $fcc0
	addi.d	$s4, $s4, -1
	addi.d	$a0, $a0, 36
	bnez	$s4, .LBB3_4
	b	.LBB3_6
.LBB3_5:
	fld.s	$fa3, $a0, %pc_lo12(.LCPI3_0)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI3_1)
	fmov.s	$fa1, $fa2
	fmov.s	$fa0, $fa2
	fmov.s	$fa5, $fa3
	fmov.s	$fa4, $fa3
.LBB3_6:                                # %._crit_edge
	ld.d	$a1, $fp, 24
	fld.s	$fa6, $fp, 40
	alsl.d	$a0, $s3, $a1, 4
	slli.d	$a3, $s3, 4
	fld.s	$fa7, $fp, 44
	fcmp.clt.s	$fcc0, $fa4, $fa6
	fsel	$fa4, $fa4, $fa6, $fcc0
	fld.s	$ft0, $fp, 48
	fcmp.clt.s	$fcc0, $fa5, $fa7
	fsel	$fa5, $fa5, $fa7, $fcc0
	fld.s	$ft1, $fp, 56
	fcmp.clt.s	$fcc0, $fa3, $ft0
	fsel	$fa3, $fa3, $ft0, $fcc0
	fld.s	$ft2, $fp, 60
	fcmp.clt.s	$fcc0, $ft1, $fa4
	fld.s	$ft3, $fp, 64
	fsel	$fa4, $fa4, $ft1, $fcc0
	fcmp.clt.s	$fcc0, $ft2, $fa5
	fsel	$fa5, $fa5, $ft2, $fcc0
	fcmp.clt.s	$fcc0, $ft3, $fa3
	fsel	$fa3, $fa3, $ft3, $fcc0
	fsub.s	$fa4, $fa4, $fa6
	fsub.s	$fa5, $fa5, $fa7
	fld.s	$ft4, $fp, 72
	fld.s	$ft5, $fp, 76
	fld.s	$ft6, $fp, 80
	fsub.s	$fa3, $fa3, $ft0
	fmul.s	$fa4, $fa4, $ft4
	fmul.s	$fa5, $fa5, $ft5
	fmul.s	$fa3, $fa3, $ft6
	vldi	$vr15, -1184
	fadd.s	$fa4, $fa4, $ft7
	ftintrz.l.s	$fa4, $fa4
	movfr2gr.d	$a4, $fa4
	stx.h	$a4, $a1, $a3
	fadd.s	$fa4, $fa5, $ft7
	ftintrz.l.s	$fa4, $fa4
	movfr2gr.d	$a1, $fa4
	st.h	$a1, $a0, 2
	fadd.s	$fa3, $fa3, $ft7
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a1, $fa3
	st.h	$a1, $a0, 4
	fcmp.clt.s	$fcc0, $fa0, $fa6
	fsel	$fa0, $fa0, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fa7
	fsel	$fa2, $fa2, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $ft0
	fsel	$fa1, $fa1, $ft0, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $fa0
	fsel	$fa0, $fa0, $ft1, $fcc0
	fcmp.clt.s	$fcc0, $ft2, $fa2
	fsel	$fa2, $fa2, $ft2, $fcc0
	fcmp.clt.s	$fcc0, $ft3, $fa1
	fsel	$fa1, $fa1, $ft3, $fcc0
	fsub.s	$fa0, $fa0, $fa6
	fsub.s	$fa2, $fa2, $fa7
	fsub.s	$fa1, $fa1, $ft0
	fmul.s	$fa0, $ft4, $fa0
	fmul.s	$fa2, $ft5, $fa2
	fmul.s	$fa1, $ft6, $fa1
	fadd.s	$fa0, $fa0, $ft7
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	st.h	$a1, $a0, 6
	fadd.s	$fa0, $fa2, $ft7
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	st.h	$a1, $a0, 8
	fadd.s	$fa0, $fa1, $ft7
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	st.h	$a1, $a0, 10
	move	$a0, $fp
	move	$a1, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.d	$a1, $fp, 24
	sub.d	$a0, $s3, $a0
	alsl.d	$a1, $s3, $a1, 4
	st.w	$a0, $a1, 12
.LBB3_7:                                # %common.ret98
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii, .Lfunc_end3-_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
                                        # -- End function
	.globl	_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY # -- Begin function _ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY
	.p2align	5
	.type	_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY,@function
_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY: # @_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a1
	move	$s0, $a0
	vldi	$vr0, -1168
	pcaddu18i	$ra, %call36(_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 4
	ld.w	$s3, $s0, 12
	slli.w	$s2, $a3, 1
	st.w	$zero, $s0, 0
	bge	$s3, $s2, .LBB4_19
# %bb.1:
	ld.w	$a0, $s0, 16
	bge	$a0, $s2, .LBB4_4
# %bb.2:
	beqz	$a3, .LBB4_8
# %bb.3:
	slli.d	$a0, $s2, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$s1, $a0
	bgtz	$a1, .LBB4_9
	b	.LBB4_11
.LBB4_4:                                # %..lr.ph.i_crit_edge
	ld.d	$s1, $s0, 24
	sub.d	$a1, $s2, $s3
	ori	$a0, $zero, 2
	bltu	$a1, $a0, .LBB4_15
.LBB4_5:                                # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a0, $a2, $s3
	alsl.d	$a3, $s3, $s1, 4
	addi.d	$a3, $a3, 28
	move	$a4, $a2
	.p2align	4, , 16
.LBB4_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a3, -16
	st.w	$zero, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_6
# %bb.7:                                # %middle.block
	bne	$a1, $a2, .LBB4_16
	b	.LBB4_18
.LBB4_8:
	move	$s1, $zero
	move	$a1, $s3
	blez	$a1, .LBB4_11
.LBB4_9:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 24
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB4_10
.LBB4_11:                               # %_ZNK20btAlignedObjectArrayI21BT_QUANTIZED_BVH_NODEE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB4_14
# %bb.12:                               # %_ZNK20btAlignedObjectArrayI21BT_QUANTIZED_BVH_NODEE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $s0, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_14
# %bb.13:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_14:                               # %_ZN20btAlignedObjectArrayI21BT_QUANTIZED_BVH_NODEE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 32
	st.d	$s1, $s0, 24
	st.w	$s2, $s0, 16
	sub.d	$a1, $s2, $s3
	ori	$a0, $zero, 2
	bgeu	$a1, $a0, .LBB4_5
.LBB4_15:
	move	$a0, $s3
.LBB4_16:                               # %scalar.ph.preheader
	alsl.d	$a1, $a0, $s1, 4
	addi.d	$a1, $a1, 12
	sub.d	$a0, $s2, $a0
	.p2align	4, , 16
.LBB4_17:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB4_17
.LBB4_18:                               # %_ZN20btAlignedObjectArrayI21BT_QUANTIZED_BVH_NODEE6resizeEiRKS0_.exit.loopexit
	ld.w	$a3, $fp, 4
.LBB4_19:                               # %_ZN20btAlignedObjectArrayI21BT_QUANTIZED_BVH_NODEE6resizeEiRKS0_.exit
	st.w	$s2, $s0, 12
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii)
	jr	$t8
.Lfunc_end4:
	.size	_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY, .Lfunc_end4-_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btGImpactQuantizedBvh5refitEv
.LCPI5_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI5_1:
	.word	0xff7fffff                      # float -3.40282347E+38
	.text
	.globl	_ZN21btGImpactQuantizedBvh5refitEv
	.p2align	5
	.type	_ZN21btGImpactQuantizedBvh5refitEv,@function
_ZN21btGImpactQuantizedBvh5refitEv:     # @_ZN21btGImpactQuantizedBvh5refitEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	ld.w	$s0, $a0, 0
	beqz	$s0, .LBB5_7
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	fld.s	$fs1, $a1, %pc_lo12(.LCPI5_1)
	slli.d	$s1, $s0, 4
	ori	$s2, $zero, 1
	move	$s3, $s0
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $fp, 88
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a2, 32
	addi.d	$a2, $sp, 16
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 24
	add.d	$a1, $a0, $s1
	fld.s	$fa2, $sp, 16
	fld.s	$fa0, $fp, 40
	fld.s	$fa3, $sp, 20
	fld.s	$fa4, $sp, 24
	fld.s	$fa1, $fp, 44
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa2, $fa0, $fcc0
	fld.s	$fa5, $fp, 48
	fcmp.clt.s	$fcc0, $fa3, $fa1
	fsel	$fa3, $fa3, $fa1, $fcc0
	fld.s	$fa6, $fp, 56
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fld.s	$fa7, $fp, 60
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fld.s	$ft0, $fp, 64
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa4
	fsel	$fa4, $fa4, $ft0, $fcc0
	fsub.s	$fa2, $fa2, $fa0
	fsub.s	$fa3, $fa3, $fa1
	fld.s	$ft1, $fp, 72
	fld.s	$ft2, $fp, 76
	fld.s	$ft3, $fp, 80
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa2, $fa2, $ft1
	fmul.s	$fa3, $fa3, $ft2
	fmul.s	$fa4, $fa4, $ft3
	vldi	$vr12, -1184
	fadd.s	$fa2, $fa2, $ft4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	st.h	$a2, $a1, -16
	fadd.s	$fa2, $fa3, $ft4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	st.h	$a2, $a1, -14
	fadd.s	$fa2, $fa4, $ft4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	st.h	$a2, $a1, -12
	fld.s	$fa2, $sp, 32
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 40
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa2, $fa2, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa1
	fsel	$fa3, $fa3, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa3, $fa3, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa4
	fsel	$fa4, $fa4, $ft0, $fcc0
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa1, $fa3, $fa1
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa0, $ft1, $fa0
	fmul.s	$fa1, $ft2, $fa1
	fmul.s	$fa2, $ft3, $fa2
	fadd.s	$fa0, $fa0, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	st.h	$a2, $a1, -10
	fadd.s	$fa0, $fa1, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	st.h	$a2, $a1, -8
	fadd.s	$fa0, $fa2, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	st.h	$a2, $a1, -6
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, -16
	addi.d	$s0, $s0, -1
	beqz	$s3, .LBB5_7
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $s1
	ld.w	$a1, $a2, -4
	bgez	$a1, .LBB5_2
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	ldx.hu	$a1, $a0, $s1
	fld.s	$fa0, $fp, 72
	ld.hu	$a3, $a2, 2
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa6, $fa1, $fa0
	movgr2fr.w	$fa2, $a3
	fld.s	$fa1, $fp, 76
	ld.hu	$a1, $a2, 4
	ffint.s.w	$fa3, $fa2
	fld.s	$fa2, $fp, 80
	fdiv.s	$fa7, $fa3, $fa1
	movgr2fr.w	$fa3, $a1
	ffint.s.w	$fa3, $fa3
	fdiv.s	$ft0, $fa3, $fa2
	fld.s	$fa3, $fp, 40
	fld.s	$fa4, $fp, 44
	fld.s	$fa5, $fp, 48
	ld.hu	$a1, $a2, 6
	fadd.s	$fa6, $fa6, $fa3
	fadd.s	$fa7, $fa7, $fa4
	fadd.s	$ft0, $ft0, $fa5
	movgr2fr.w	$ft1, $a1
	ld.hu	$a1, $a2, 8
	ffint.s.w	$ft1, $ft1
	fdiv.s	$ft1, $ft1, $fa0
	ld.hu	$a3, $a2, 10
	movgr2fr.w	$ft2, $a1
	ffint.s.w	$ft2, $ft2
	fdiv.s	$ft2, $ft2, $fa1
	movgr2fr.w	$ft3, $a3
	ffint.s.w	$ft3, $ft3
	fdiv.s	$ft3, $ft3, $fa2
	fadd.s	$ft4, $fa3, $ft1
	fadd.s	$ft5, $fa4, $ft2
	fadd.s	$ft6, $fa5, $ft3
	fmin.s	$ft3, $fa6, $fs0
	fmin.s	$ft1, $fa7, $fs0
	ld.w	$a1, $a2, 12
	fmin.s	$ft2, $ft0, $fs0
	fmax.s	$fa7, $ft4, $fs1
	fmax.s	$fa6, $ft5, $fs1
	slti	$a3, $a1, 0
	sub.d	$a1, $zero, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s2, $a3
	or	$a1, $a1, $a3
	add.w	$a1, $a1, $s0
	fmax.s	$ft0, $ft6, $fs1
	beqz	$a1, .LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	slli.d	$a3, $a1, 4
	ldx.hu	$a3, $a0, $a3
	alsl.d	$a1, $a1, $a0, 4
	ld.hu	$a4, $a1, 2
	movgr2fr.w	$ft4, $a3
	ffint.s.w	$ft4, $ft4
	movgr2fr.w	$ft5, $a4
	ld.hu	$a3, $a1, 4
	fdiv.s	$ft4, $ft4, $fa0
	ffint.s.w	$ft5, $ft5
	fdiv.s	$ft5, $ft5, $fa1
	movgr2fr.w	$ft6, $a3
	ffint.s.w	$ft6, $ft6
	fdiv.s	$ft6, $ft6, $fa2
	ld.hu	$a3, $a1, 6
	fadd.s	$ft4, $ft4, $fa3
	fadd.s	$ft5, $ft5, $fa4
	fadd.s	$ft6, $ft6, $fa5
	movgr2fr.w	$ft7, $a3
	ld.hu	$a3, $a1, 8
	ffint.s.w	$ft7, $ft7
	fdiv.s	$ft7, $ft7, $fa0
	ld.hu	$a1, $a1, 10
	movgr2fr.w	$ft8, $a3
	ffint.s.w	$ft8, $ft8
	fdiv.s	$ft8, $ft8, $fa1
	movgr2fr.w	$ft9, $a1
	ffint.s.w	$ft9, $ft9
	fdiv.s	$ft9, $ft9, $fa2
	fadd.s	$ft7, $fa3, $ft7
	fadd.s	$ft8, $fa4, $ft8
	fadd.s	$ft9, $fa5, $ft9
	fcmp.clt.s	$fcc0, $ft4, $ft3
	fsel	$ft3, $ft3, $ft4, $fcc0
	fcmp.clt.s	$fcc0, $ft5, $ft1
	fsel	$ft1, $ft1, $ft5, $fcc0
	fcmp.clt.s	$fcc0, $ft6, $ft2
	fsel	$ft2, $ft2, $ft6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $ft7
	fsel	$fa7, $fa7, $ft7, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $ft8
	fsel	$fa6, $fa6, $ft8, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $ft9
	fsel	$ft0, $ft0, $ft9, $fcc0
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
	fcmp.clt.s	$fcc0, $ft3, $fa3
	fsel	$ft3, $ft3, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $fa4
	fsel	$ft1, $ft1, $fa4, $fcc0
	fld.s	$ft4, $fp, 56
	fcmp.clt.s	$fcc0, $ft2, $fa5
	fsel	$ft2, $ft2, $fa5, $fcc0
	fld.s	$ft5, $fp, 60
	fcmp.clt.s	$fcc0, $ft4, $ft3
	fld.s	$ft6, $fp, 64
	fsel	$ft3, $ft3, $ft4, $fcc0
	fcmp.clt.s	$fcc0, $ft5, $ft1
	fsel	$ft1, $ft1, $ft5, $fcc0
	fcmp.clt.s	$fcc0, $ft6, $ft2
	fsel	$ft2, $ft2, $ft6, $fcc0
	fsub.s	$ft3, $ft3, $fa3
	fsub.s	$ft1, $ft1, $fa4
	fsub.s	$ft2, $ft2, $fa5
	fmul.s	$ft3, $ft3, $fa0
	fmul.s	$ft1, $ft1, $fa1
	fmul.s	$ft2, $ft2, $fa2
	vldi	$vr15, -1184
	fadd.s	$ft3, $ft3, $ft7
	ftintrz.l.s	$ft3, $ft3
	movfr2gr.d	$a1, $ft3
	st.h	$a1, $a2, -16
	fadd.s	$ft1, $ft1, $ft7
	ftintrz.l.s	$ft1, $ft1
	movfr2gr.d	$a1, $ft1
	st.h	$a1, $a2, -14
	fadd.s	$ft1, $ft2, $ft7
	ftintrz.l.s	$ft1, $ft1
	movfr2gr.d	$a1, $ft1
	st.h	$a1, $a2, -12
	fcmp.clt.s	$fcc0, $fa7, $fa3
	fsel	$fa7, $fa7, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa4
	fsel	$fa6, $fa6, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa5
	fsel	$ft0, $ft0, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $ft4, $fa7
	fsel	$fa7, $fa7, $ft4, $fcc0
	fcmp.clt.s	$fcc0, $ft5, $fa6
	fsel	$fa6, $fa6, $ft5, $fcc0
	fcmp.clt.s	$fcc0, $ft6, $ft0
	fsel	$ft0, $ft0, $ft6, $fcc0
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa4, $fa6, $fa4
	fsub.s	$fa5, $ft0, $fa5
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa0, $ft7
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	st.h	$a1, $a2, -10
	fadd.s	$fa0, $fa1, $ft7
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	st.h	$a1, $a2, -8
	fadd.s	$fa0, $fa2, $ft7
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	st.h	$a1, $a2, -6
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, -16
	addi.d	$s0, $s0, -1
	bnez	$s3, .LBB5_3
.LBB5_7:                                # %._crit_edge
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
.Lfunc_end5:
	.size	_ZN21btGImpactQuantizedBvh5refitEv, .Lfunc_end5-_ZN21btGImpactQuantizedBvh5refitEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN21btGImpactQuantizedBvh8buildSetEv # -- Begin function _ZN21btGImpactQuantizedBvh8buildSetEv
	.p2align	5
	.type	_ZN21btGImpactQuantizedBvh8buildSetEv,@function
_ZN21btGImpactQuantizedBvh8buildSetEv:  # @_ZN21btGImpactQuantizedBvh8buildSetEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.d	$a0, $a0, 88
	st.d	$zero, $sp, 20
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 40
	ld.d	$a1, $a1, 24
	st.d	$zero, $sp, 32
.Ltmp0:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$s0, $a0
	blez	$a0, .LBB6_8
# %bb.2:
	slli.d	$a0, $s0, 5
	alsl.d	$s1, $s0, $a0, 2
.Ltmp2:                                 # EH_LABEL
	ori	$a1, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.3:                                # %.lr.ph.i
	move	$a1, $zero
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 40
	st.d	$a0, $sp, 32
	st.w	$s0, $sp, 24
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a1
	vstx	$vr0, $a0, $a1
	st.w	$zero, $a2, 32
	addi.d	$a1, $a1, 36
	vst	$vr0, $a2, 16
	bne	$s1, $a1, .LBB6_4
# %bb.5:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s1, $zero
	move	$s3, $zero
	st.w	$s0, $sp, 20
	.p2align	4, , 16
.LBB6_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 88
	ld.d	$a2, $a1, 0
	ld.d	$a3, $a2, 32
	add.d	$a2, $a0, $s2
.Ltmp5:                                 # EH_LABEL
	move	$a0, $a1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp6:                                 # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 32
	add.d	$a1, $a0, $s2
	ld.w	$a2, $sp, 20
	st.w	$s1, $a1, 32
	addi.d	$s3, $s3, 1
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 36
	blt	$s3, $a2, .LBB6_6
	b	.LBB6_9
.LBB6_8:                                # %.loopexit
	st.w	$s0, $sp, 20
.LBB6_9:                                # %._crit_edge
.Ltmp8:                                 # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.10:
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB6_13
# %bb.11:
	ld.b	$a1, $sp, 40
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_13
# %bb.12:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB6_14:
.Ltmp4:                                 # EH_LABEL
	b	.LBB6_17
.LBB6_15:
.Ltmp10:                                # EH_LABEL
	b	.LBB6_17
.LBB6_16:
.Ltmp7:                                 # EH_LABEL
.LBB6_17:
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB6_20
# %bb.18:
	ld.b	$a1, $sp, 40
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_20
# %bb.19:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
.LBB6_20:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_21:
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN21btGImpactQuantizedBvh8buildSetEv, .Lfunc_end6-_ZN21btGImpactQuantizedBvh8buildSetEv
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end6-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end6
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
	.globl	_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE # -- Begin function _ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE
	.p2align	5
	.type	_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE,@function
_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE: # @_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE
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
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
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
	ld.w	$s0, $a0, 0
	blez	$s0, .LBB8_32
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 40
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $a0, 44
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fld.s	$fa5, $a0, 48
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa2, $fa4, $fcc0
	fld.s	$fa6, $a0, 56
	fcmp.clt.s	$fcc0, $fa3, $fa5
	fsel	$fa3, $fa3, $fa5, $fcc0
	fld.s	$fa7, $a0, 60
	fcmp.clt.s	$fcc0, $fa6, $fa0
	fld.s	$ft0, $a0, 64
	fsel	$fa0, $fa0, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa2
	fsel	$fa2, $fa2, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa3
	fsel	$fa3, $fa3, $ft0, $fcc0
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa4
	fld.s	$ft1, $a0, 72
	fld.s	$ft2, $a0, 76
	fld.s	$ft3, $a0, 80
	fsub.s	$fa3, $fa3, $fa5
	fmul.s	$fa0, $fa0, $ft1
	fmul.s	$fa2, $fa2, $ft2
	fmul.s	$fa3, $fa3, $ft3
	vldi	$vr12, -1184
	fadd.s	$fa0, $fa0, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	fadd.s	$fa0, $fa2, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$s3, $fa0
	fadd.s	$fa0, $fa3, $ft4
	ftintrz.l.s	$fa0, $fa0
	fld.s	$fa2, $a1, 16
	movfr2gr.d	$s4, $fa0
	fld.s	$fa0, $a1, 20
	fld.s	$fa3, $a1, 24
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa2, $fa2, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa4
	fsel	$fa0, $fa0, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa5
	fsel	$fa3, $fa3, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa2, $fa2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa0
	fsel	$fa0, $fa0, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa3
	fsel	$fa3, $fa3, $ft0, $fcc0
	fsub.s	$fa1, $fa2, $fa1
	fsub.s	$fa0, $fa0, $fa4
	fsub.s	$fa2, $fa3, $fa5
	fmul.s	$fa1, $ft1, $fa1
	fmul.s	$fa0, $ft2, $fa0
	fmul.s	$fa2, $ft3, $fa2
	fadd.s	$fa1, $fa1, $ft4
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$s5, $fa1
	fadd.s	$fa0, $fa0, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$s6, $fa0
	fadd.s	$fa0, $fa2, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$s7, $fa0
	addi.w	$s8, $zero, -1
	ori	$a5, $zero, 1
	ori	$t0, $zero, 8
	ori	$t1, $zero, 32
	b	.LBB8_6
.LBB8_2:                                #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a3, $a2, 4
.LBB8_3:                                # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a5, $zero, 1
	st.b	$a5, $a2, 24
	st.d	$t2, $a2, 16
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a2, 8
.LBB8_4:                                # %.thread
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a1, $a2, 16
	slli.d	$a3, $a3, 2
	stx.w	$fp, $a1, $a3
	ld.w	$a1, $a2, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $a2, 4
	.p2align	4, , 16
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s0, .LBB8_32
.LBB8_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
                                        #     Child Loop BB8_27 Depth 2
	ld.d	$a1, $a0, 24
	slli.d	$a3, $s1, 4
	ldx.hu	$a3, $a1, $a3
	alsl.d	$a1, $s1, $a1, 4
	bltu	$s5, $a3, .LBB8_11
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a3, $a1, 6
	bltu	$a3, $s2, .LBB8_11
# %bb.8:                                #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a3, $a1, 2
	bltu	$s6, $a3, .LBB8_11
# %bb.9:                                #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a3, $a1, 8
	bltu	$a3, $s3, .LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a3, $a1, 4
	bgeu	$s7, $a3, .LBB8_15
	.p2align	4, , 16
.LBB8_11:                               # %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit.thread
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a3, $a1, 12
	move	$a1, $zero
	slt	$a3, $s8, $a3
.LBB8_12:                               #   in Loop: Header=BB8_6 Depth=1
	bnez	$a3, .LBB8_5
# %bb.13:                               #   in Loop: Header=BB8_6 Depth=1
	bnez	$a1, .LBB8_5
# %bb.14:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a1, $a0, 24
	alsl.d	$a1, $s1, $a1, 4
	ld.w	$a1, $a1, 12
	sub.w	$s1, $s1, $a1
	blt	$s1, $s0, .LBB8_6
	b	.LBB8_32
.LBB8_15:                               # %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.hu	$a4, $a1, 10
	ld.w	$fp, $a1, 12
	sltu	$a1, $a4, $s4
	xori	$a1, $a1, 1
	slt	$a3, $s8, $fp
	bltu	$a4, $s4, .LBB8_12
# %bb.16:                               # %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	bltz	$fp, .LBB8_12
# %bb.17:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a3, $a2, 4
	ld.w	$a1, $a2, 8
	bne	$a3, $a1, .LBB8_4
# %bb.18:                               #   in Loop: Header=BB8_6 Depth=1
	sltui	$a1, $a3, 1
	slli.w	$a4, $a3, 1
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a4
	bge	$a3, $a1, .LBB8_4
# %bb.19:                               #   in Loop: Header=BB8_6 Depth=1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB8_28
# %bb.20:                               #   in Loop: Header=BB8_6 Depth=1
	slli.d	$a0, $a1, 2
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 32
	ori	$t0, $zero, 8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a2, 4
	move	$t2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	blez	$a3, .LBB8_29
.LBB8_21:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a4, $zero
	bltu	$a3, $t0, .LBB8_26
# %bb.22:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	sub.d	$a5, $t2, $a1
	bltu	$a5, $t1, .LBB8_26
# %bb.23:                               # %vector.ph
                                        #   in Loop: Header=BB8_6 Depth=1
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a1, 16
	addi.d	$a6, $t2, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB8_24:                               # %vector.body
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB8_24
# %bb.25:                               # %middle.block
                                        #   in Loop: Header=BB8_6 Depth=1
	beq	$a4, $a3, .LBB8_30
.LBB8_26:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	sub.d	$a3, $a3, $a4
	alsl.d	$a5, $a4, $a1, 2
	alsl.d	$a4, $a4, $t2, 2
	.p2align	4, , 16
.LBB8_27:                               # %scalar.ph
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	st.w	$a6, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB8_27
	b	.LBB8_30
.LBB8_28:                               #   in Loop: Header=BB8_6 Depth=1
	move	$t2, $zero
	ld.d	$a1, $a2, 16
	bgtz	$a3, .LBB8_21
.LBB8_29:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	beqz	$a1, .LBB8_3
.LBB8_30:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.bu	$a3, $a2, 24
	beqz	$a3, .LBB8_2
# %bb.31:                               #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $a1
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	ori	$t1, $zero, 32
	ori	$t0, $zero, 8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB8_2
.LBB8_32:                               # %._crit_edge
	ld.w	$a0, $a2, 4
	slt	$a0, $zero, $a0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end8:
	.size	_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE, .Lfunc_end8-_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE # -- Begin function _ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE
	.p2align	5
	.type	_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE,@function
_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE: # @_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE
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
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
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
	ld.w	$s0, $a0, 0
	blez	$s0, .LBB9_35
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	vldi	$vr12, -1184
	movgr2fr.w	$fs0, $zero
	addi.w	$s2, $zero, -1
	ori	$s3, $zero, 1
	ori	$t2, $zero, 8
	ori	$t3, $zero, 32
	b	.LBB9_6
.LBB9_2:                                #   in Loop: Header=BB9_6 Depth=1
	ld.w	$a5, $a3, 4
.LBB9_3:                                # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	st.b	$s3, $a3, 24
	st.d	$fp, $a3, 16
	st.w	$s7, $a3, 8
.LBB9_4:                                # %.thread
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a4, $a3, 16
	slli.d	$a5, $a5, 2
	stx.w	$s6, $a4, $a5
	ld.w	$a4, $a3, 4
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 4
	.p2align	4, , 16
.LBB9_5:                                #   in Loop: Header=BB9_6 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s0, .LBB9_35
.LBB9_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_30 Depth 2
	ld.d	$a4, $a0, 24
	slli.d	$a5, $s1, 4
	ldx.hu	$a5, $a4, $a5
	fld.s	$fa0, $a0, 72
	alsl.d	$a4, $s1, $a4, 4
	movgr2fr.w	$fa1, $a5
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	ld.hu	$a7, $a4, 2
	fld.s	$fa2, $a0, 76
	fld.s	$fa6, $a0, 40
	ld.hu	$a5, $a4, 4
	fld.s	$fa4, $a0, 80
	ld.hu	$a6, $a4, 6
	fadd.s	$fa1, $fa1, $fa6
	fld.s	$fa3, $a0, 44
	fld.s	$fa5, $a0, 48
	movgr2fr.w	$fa7, $a6
	ffint.s.w	$fa7, $fa7
	fdiv.s	$fa0, $fa7, $fa0
	ld.hu	$t0, $a4, 8
	ld.hu	$a6, $a4, 10
	fadd.s	$fa0, $fa6, $fa0
	fld.s	$fa6, $a2, 0
	fadd.s	$fa1, $fa1, $fa0
	fmul.s	$fa1, $fa1, $ft4
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa6, $fa1
	fabs.s	$fa6, $fa1
	fcmp.cule.s	$fcc0, $fa6, $fa0
	bcnez	$fcc0, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	fld.s	$fa6, $a1, 0
	fmul.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fs0, $fa6
	bcnez	$fcc0, .LBB9_14
.LBB9_8:                                #   in Loop: Header=BB9_6 Depth=1
	movgr2fr.w	$fa6, $a7
	ffint.s.w	$fa6, $fa6
	fdiv.s	$fa6, $fa6, $fa2
	fadd.s	$fa6, $fa6, $fa3
	movgr2fr.w	$fa7, $t0
	ffint.s.w	$fa7, $fa7
	fdiv.s	$fa2, $fa7, $fa2
	fadd.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $a2, 4
	fadd.s	$fa6, $fa6, $fa2
	fmul.s	$fa6, $fa6, $ft4
	fsub.s	$fa2, $fa2, $fa6
	fsub.s	$fa3, $fa3, $fa6
	fabs.s	$fa6, $fa3
	fcmp.cule.s	$fcc0, $fa6, $fa2
	bcnez	$fcc0, .LBB9_10
# %bb.9:                                #   in Loop: Header=BB9_6 Depth=1
	fld.s	$fa6, $a1, 4
	fmul.s	$fa6, $fa3, $fa6
	fcmp.cle.s	$fcc0, $fs0, $fa6
	bcnez	$fcc0, .LBB9_14
.LBB9_10:                               #   in Loop: Header=BB9_6 Depth=1
	movgr2fr.w	$fa6, $a5
	ffint.s.w	$fa6, $fa6
	fdiv.s	$fa6, $fa6, $fa4
	fadd.s	$fa6, $fa6, $fa5
	movgr2fr.w	$fa7, $a6
	ffint.s.w	$fa7, $fa7
	fdiv.s	$fa4, $fa7, $fa4
	fadd.s	$fa4, $fa5, $fa4
	fld.s	$fa5, $a2, 8
	fadd.s	$fa6, $fa6, $fa4
	fmul.s	$fa6, $fa6, $ft4
	fsub.s	$fa4, $fa4, $fa6
	fsub.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $a1, 8
	fabs.s	$fa7, $fa5
	fcmp.cule.s	$fcc0, $fa7, $fa4
	bcnez	$fcc0, .LBB9_12
# %bb.11:                               #   in Loop: Header=BB9_6 Depth=1
	fmul.s	$fa7, $fa5, $fa6
	fcmp.cle.s	$fcc0, $fs0, $fa7
	bcnez	$fcc0, .LBB9_14
.LBB9_12:                               # %._crit_edge.i
                                        #   in Loop: Header=BB9_6 Depth=1
	fld.s	$fa7, $a1, 4
	fneg.s	$ft0, $fa3
	fmul.s	$ft0, $fa6, $ft0
	fmadd.s	$ft0, $fa7, $fa5, $ft0
	fabs.s	$ft2, $ft0
	fabs.s	$ft1, $fa6
	fabs.s	$ft0, $fa7
	fmul.s	$ft3, $fa4, $ft0
	fmadd.s	$ft3, $fa2, $ft1, $ft3
	fcmp.clt.s	$fcc0, $ft3, $ft2
	bcnez	$fcc0, .LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_6 Depth=1
	fld.s	$ft2, $a1, 0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $ft2, $fa5
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fabs.s	$fa6, $fa5
	fabs.s	$fa5, $ft2
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa4, $fa0, $ft1, $fa4
	fcmp.cule.s	$fcc0, $fa6, $fa4
	bcnez	$fcc0, .LBB9_18
	.p2align	4, , 16
.LBB9_14:                               # %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.w	$a5, $a4, 12
	move	$a4, $zero
	slt	$a5, $s2, $a5
.LBB9_15:                               #   in Loop: Header=BB9_6 Depth=1
	bnez	$a5, .LBB9_5
# %bb.16:                               #   in Loop: Header=BB9_6 Depth=1
	bnez	$a4, .LBB9_5
# %bb.17:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a4, $a0, 24
	alsl.d	$a4, $s1, $a4, 4
	ld.w	$a4, $a4, 12
	sub.w	$s1, $s1, $a4
	blt	$s1, $s0, .LBB9_6
	b	.LBB9_35
.LBB9_18:                               # %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
                                        #   in Loop: Header=BB9_6 Depth=1
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fmadd.s	$fa1, $ft2, $fa3, $fa1
	fabs.s	$fa1, $fa1
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa0, $fa0, $ft0, $fa2
	ld.w	$s6, $a4, 12
	fcmp.cule.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	slt	$a5, $s2, $s6
	bcnez	$fcc0, .LBB9_15
# %bb.19:                               # %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
                                        #   in Loop: Header=BB9_6 Depth=1
	bltz	$s6, .LBB9_15
# %bb.20:                               #   in Loop: Header=BB9_6 Depth=1
	ld.w	$a5, $a3, 4
	ld.w	$a4, $a3, 8
	bne	$a5, $a4, .LBB9_4
# %bb.21:                               #   in Loop: Header=BB9_6 Depth=1
	sltui	$a4, $a5, 1
	slli.w	$a6, $a5, 1
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $s3, $a4
	or	$s7, $a4, $a6
	bge	$a5, $s7, .LBB9_4
# %bb.22:                               #   in Loop: Header=BB9_6 Depth=1
	move	$s8, $a1
	move	$s5, $a2
	beqz	$s7, .LBB9_31
# %bb.23:                               #   in Loop: Header=BB9_6 Depth=1
	slli.d	$a2, $s7, 2
	ori	$a1, $zero, 16
	move	$s4, $a0
	move	$a0, $a2
	move	$fp, $a3
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 32
	ori	$t2, $zero, 8
	move	$a3, $fp
	ld.w	$a5, $fp, 4
	move	$fp, $a0
	move	$a0, $s4
	ld.d	$a4, $a3, 16
	blez	$a5, .LBB9_32
.LBB9_24:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	move	$a6, $zero
	move	$a2, $s5
	move	$a1, $s8
	vldi	$vr12, -1184
	bltu	$a5, $t2, .LBB9_29
# %bb.25:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	sub.d	$a7, $fp, $a4
	bltu	$a7, $t3, .LBB9_29
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB9_6 Depth=1
	bstrpick.d	$a6, $a5, 30, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a4, 16
	addi.d	$t0, $fp, 16
	move	$t1, $a6
	.p2align	4, , 16
.LBB9_27:                               # %vector.body
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t1, $t1, -8
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB9_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB9_6 Depth=1
	beq	$a6, $a5, .LBB9_33
.LBB9_29:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB9_6 Depth=1
	sub.d	$a5, $a5, $a6
	alsl.d	$a7, $a6, $a4, 2
	alsl.d	$a6, $a6, $fp, 2
	.p2align	4, , 16
.LBB9_30:                               # %scalar.ph
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	st.w	$t0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB9_30
	b	.LBB9_33
.LBB9_31:                               #   in Loop: Header=BB9_6 Depth=1
	move	$fp, $zero
	ld.d	$a4, $a3, 16
	bgtz	$a5, .LBB9_24
.LBB9_32:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	move	$a2, $s5
	move	$a1, $s8
	vldi	$vr12, -1184
	beqz	$a4, .LBB9_3
.LBB9_33:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.bu	$a5, $a3, 24
	beqz	$a5, .LBB9_2
# %bb.34:                               #   in Loop: Header=BB9_6 Depth=1
	move	$s4, $a0
	move	$a0, $a4
	move	$s3, $a3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 32
	ori	$t2, $zero, 8
	vldi	$vr12, -1184
	move	$a1, $s8
	move	$a2, $s5
	move	$a3, $s3
	ori	$s3, $zero, 1
	move	$a0, $s4
	b	.LBB9_2
.LBB9_35:                               # %._crit_edge
	ld.w	$a0, $a3, 4
	slt	$a0, $zero, $a0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end9:
	.size	_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE, .Lfunc_end9-_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
.LCPI10_0:
	.word	0x358637bd                      # float 9.99999997E-7
	.text
	.globl	_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
	.p2align	5
	.type	_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet,@function
_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet: # @_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
	.cfi_startproc
# %bb.0:
	ld.w	$a5, $a0, 0
	beqz	$a5, .LBB10_3
# %bb.1:
	ld.w	$a5, $a2, 0
	beqz	$a5, .LBB10_3
# %bb.2:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 56, -16
	.cfi_offset 57, -24
	.cfi_offset 58, -32
	fld.s	$fa2, $a1, 0
	fld.s	$fa7, $a1, 16
	fld.s	$fa5, $a1, 32
	fld.s	$fa1, $a1, 4
	fld.s	$fa6, $a1, 20
	fld.s	$fa3, $a1, 36
	fld.s	$fa0, $a1, 8
	fld.s	$fa4, $a1, 24
	fld.s	$ft1, $a1, 48
	fld.s	$ft2, $a1, 52
	fld.s	$ft3, $a1, 56
	fld.s	$ft0, $a1, 40
	fneg.s	$ft1, $ft1
	fneg.s	$ft2, $ft2
	fneg.s	$ft3, $ft3
	fmul.s	$ft4, $fa7, $ft2
	fmadd.s	$ft4, $fa2, $ft1, $ft4
	fmadd.s	$ft9, $fa5, $ft3, $ft4
	fmul.s	$ft4, $fa6, $ft2
	fmadd.s	$ft4, $fa1, $ft1, $ft4
	fmadd.s	$ft10, $fa3, $ft3, $ft4
	fmul.s	$ft2, $fa4, $ft2
	fld.s	$ft7, $a3, 16
	fmadd.s	$ft1, $fa0, $ft1, $ft2
	fmadd.s	$ft11, $ft0, $ft3, $ft1
	fld.s	$ft8, $a3, 0
	fmul.s	$ft1, $fa7, $ft7
	fld.s	$ft12, $a3, 32
	fld.s	$ft13, $a3, 20
	fld.s	$ft14, $a3, 4
	fmadd.s	$ft1, $ft8, $fa2, $ft1
	fmadd.s	$ft1, $ft12, $fa5, $ft1
	fmul.s	$ft2, $fa7, $ft13
	fmadd.s	$ft2, $ft14, $fa2, $ft2
	fld.s	$ft15, $a3, 36
	fld.s	$fs0, $a3, 24
	fld.s	$fs1, $a3, 8
	fld.s	$fs2, $a3, 40
	fmadd.s	$ft2, $ft15, $fa5, $ft2
	fmul.s	$ft3, $fa7, $fs0
	fmadd.s	$ft3, $fs1, $fa2, $ft3
	fmadd.s	$ft3, $fs2, $fa5, $ft3
	fmul.s	$ft4, $fa6, $ft7
	fmadd.s	$ft4, $ft8, $fa1, $ft4
	fmadd.s	$ft4, $ft12, $fa3, $ft4
	fmul.s	$ft5, $fa6, $ft13
	fmadd.s	$ft5, $ft14, $fa1, $ft5
	fmadd.s	$ft5, $ft15, $fa3, $ft5
	fmul.s	$ft6, $fa6, $fs0
	fmadd.s	$ft6, $fs1, $fa1, $ft6
	fmadd.s	$ft6, $fs2, $fa3, $ft6
	fmul.s	$ft7, $fa4, $ft7
	fmadd.s	$ft7, $ft8, $fa0, $ft7
	fmadd.s	$ft7, $ft12, $ft0, $ft7
	fmul.s	$ft8, $fa4, $ft13
	fmadd.s	$ft8, $ft14, $fa0, $ft8
	fmadd.s	$ft8, $ft15, $ft0, $ft8
	fmul.s	$ft12, $fa4, $fs0
	fmadd.s	$ft12, $fs1, $fa0, $ft12
	fld.s	$ft13, $a3, 52
	fld.s	$ft14, $a3, 48
	fld.s	$ft15, $a3, 56
	fmadd.s	$ft12, $fs2, $ft0, $ft12
	fmul.s	$fa7, $fa7, $ft13
	fmadd.s	$fa2, $fa2, $ft14, $fa7
	fmadd.s	$fa2, $fa5, $ft15, $fa2
	fadd.s	$fa2, $ft9, $fa2
	fmul.s	$fa5, $fa6, $ft13
	fmadd.s	$fa1, $fa1, $ft14, $fa5
	fmadd.s	$fa1, $fa3, $ft15, $fa1
	fadd.s	$fa1, $ft10, $fa1
	fmul.s	$fa3, $fa4, $ft13
	fmadd.s	$fa0, $fa0, $ft14, $fa3
	fmadd.s	$fa0, $ft0, $ft15, $fa0
	fadd.s	$fa0, $ft11, $fa0
	fst.s	$fa2, $sp, 16
	fst.s	$fa1, $sp, 20
	fst.s	$fa0, $sp, 24
	st.w	$zero, $sp, 28
	fst.s	$ft1, $sp, 32
	fst.s	$ft2, $sp, 36
	fst.s	$ft3, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$ft4, $sp, 48
	fst.s	$ft5, $sp, 52
	fst.s	$ft6, $sp, 56
	st.w	$zero, $sp, 60
	fst.s	$ft7, $sp, 64
	fst.s	$ft8, $sp, 68
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI10_0)
	fst.s	$ft12, $sp, 72
	st.w	$zero, $sp, 76
	fabs.s	$fa1, $ft1
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 80
	fabs.s	$fa1, $ft2
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 84
	fabs.s	$fa1, $ft3
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 88
	fabs.s	$fa1, $ft4
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 96
	fabs.s	$fa1, $ft5
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 100
	fabs.s	$fa1, $ft6
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 104
	fabs.s	$fa1, $ft7
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 112
	fabs.s	$fa1, $ft8
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 116
	fabs.s	$fa1, $ft12
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $sp, 120
	addi.d	$a3, $sp, 16
	ori	$a6, $zero, 1
	move	$a1, $a2
	move	$a2, $a4
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
.LBB10_3:
	ret
.Lfunc_end10:
	.size	_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet, .Lfunc_end10-_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib
	.type	_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib,@function
_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib: # @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	move	$s2, $a4
	slli.d	$a4, $a4, 4
	ldx.hu	$a4, $a0, $a4
	alsl.d	$a0, $s2, $a0, 4
	fld.s	$fa0, $fp, 72
	movgr2fr.w	$fa1, $a4
	ffint.s.w	$fa1, $fa1
	ld.hu	$a4, $a0, 2
	fdiv.s	$fa1, $fa1, $fa0
	fld.s	$fa2, $fp, 76
	ld.hu	$a7, $a0, 4
	movgr2fr.w	$fa3, $a4
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa3, $fa3, $fa2
	movgr2fr.w	$fa4, $a7
	ffint.s.w	$fa4, $fa4
	fld.s	$fa5, $fp, 80
	fld.s	$fa6, $fp, 40
	fld.s	$fa7, $fp, 44
	fld.s	$ft0, $fp, 48
	fdiv.s	$fa4, $fa4, $fa5
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa4, $fa4, $ft0
	movfr2gr.s	$a4, $fa1
	movfr2gr.s	$a7, $fa3
	bstrins.d	$a4, $a7, 63, 32
	movfr2gr.s	$a7, $fa4
	bstrpick.d	$a7, $a7, 31, 0
	st.d	$a4, $sp, 40
	st.d	$a7, $sp, 48
	ld.hu	$a4, $a0, 6
	move	$s3, $a5
	move	$s1, $a1
	movgr2fr.w	$fa1, $a4
	ld.hu	$a1, $a0, 8
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	ld.hu	$a0, $a0, 10
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa6, $fa0
	fadd.s	$fa1, $fa7, $fa1
	fadd.s	$fa2, $ft0, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a4, $s1, 24
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 64
	slli.d	$a0, $a5, 4
	ldx.hu	$a0, $a4, $a0
	alsl.d	$a1, $a5, $a4, 4
	fld.s	$fa0, $s1, 72
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	ld.hu	$a0, $a1, 2
	fdiv.s	$fa1, $fa1, $fa0
	fld.s	$fa2, $s1, 76
	ld.hu	$a4, $a1, 4
	movgr2fr.w	$fa3, $a0
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa3, $fa3, $fa2
	movgr2fr.w	$fa4, $a4
	ffint.s.w	$fa4, $fa4
	fld.s	$fa5, $s1, 80
	fld.s	$fa6, $s1, 40
	fld.s	$fa7, $s1, 44
	fld.s	$ft0, $s1, 48
	fdiv.s	$fa4, $fa4, $fa5
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa4, $fa4, $ft0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a4, $fa3
	bstrins.d	$a0, $a4, 63, 32
	movfr2gr.s	$a4, $fa4
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a0, $sp, 8
	st.d	$a4, $sp, 16
	ld.hu	$a0, $a1, 6
	move	$s4, $a3
	move	$s0, $a2
	movgr2fr.w	$fa1, $a0
	ld.hu	$a0, $a1, 8
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	ld.hu	$a1, $a1, 10
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa6, $fa0
	fadd.s	$fa1, $fa7, $fa1
	fadd.s	$fa2, $ft0, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 32
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $a3
	move	$a3, $a6
	pcaddu18i	$ra, %call36(_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_21
# %bb.1:
	ld.d	$a0, $fp, 24
	ld.d	$a1, $s1, 24
	alsl.d	$a0, $s2, $a0, 4
	ld.w	$s5, $a0, 12
	alsl.d	$a0, $s3, $a1, 4
	ld.w	$s6, $a0, 12
	bltz	$s5, .LBB11_10
# %bb.2:
	bltz	$s6, .LBB11_12
# %bb.3:
	ld.w	$a1, $s0, 4
	ld.w	$a0, $s0, 8
	bne	$a1, $a0, .LBB11_20
# %bb.4:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s1, $a0, $a2
	bge	$a1, $s1, .LBB11_20
# %bb.5:
	beqz	$s1, .LBB11_15
# %bb.6:
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 4
	move	$fp, $a0
	ld.d	$a0, $s0, 16
	blez	$a1, .LBB11_16
.LBB11_7:                               # %.lr.ph.i.i.i.i
	addi.d	$a2, $a0, 4
	addi.d	$a3, $fp, 4
	move	$a4, $a1
	.p2align	4, , 16
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, -4
	st.d	$a5, $a3, -4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB11_8
# %bb.9:                                # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i
	ld.bu	$a2, $s0, 24
	bnez	$a2, .LBB11_18
	b	.LBB11_19
.LBB11_10:
	addi.w	$s5, $s2, 1
	bltz	$s6, .LBB11_13
# %bb.11:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s5
	move	$a5, $s3
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	alsl.d	$a0, $s5, $a0, 4
	ld.w	$a0, $a0, 12
	addi.w	$a1, $s2, 2
	sub.w	$a2, $s5, $a0
	slti	$a0, $a0, 0
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a4, $a2, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	move	$a5, $s3
	b	.LBB11_14
.LBB11_12:
	addi.w	$s5, $s3, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s2
	move	$a5, $s5
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	alsl.d	$a0, $s5, $a0, 4
	ld.w	$a0, $a0, 12
	addi.w	$a1, $s3, 2
	sub.w	$a2, $s5, $a0
	slti	$a0, $a0, 0
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a5, $a2, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s2
	b	.LBB11_14
.LBB11_13:
	addi.w	$s6, $s3, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s5
	move	$a5, $s6
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	alsl.d	$a0, $s6, $a0, 4
	ld.w	$a0, $a0, 12
	addi.w	$s3, $s3, 2
	sub.w	$a1, $s6, $a0
	slti	$a0, $a0, 0
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$a5, $a1, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	move	$a4, $s5
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	alsl.d	$a0, $s5, $a0, 4
	ld.w	$a0, $a0, 12
	addi.w	$s2, $s2, 2
	sub.w	$a1, $s5, $a0
	slti	$a0, $a0, 0
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s2, $a0
	or	$a4, $a1, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
	move	$a5, $s6
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	alsl.d	$a0, $s5, $a0, 4
	ld.w	$a0, $a0, 12
	ld.d	$a1, $s1, 24
	sub.w	$a2, $s5, $a0
	slti	$a0, $a0, 0
	alsl.d	$a1, $s6, $a1, 4
	ld.w	$a1, $a1, 12
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s2, $a0
	or	$a4, $a2, $a0
	sub.w	$a0, $s6, $a1
	slti	$a1, $a1, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a5, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s4
.LBB11_14:
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	b	.LBB11_21
.LBB11_15:
	move	$fp, $zero
	ld.d	$a0, $s0, 16
	bgtz	$a1, .LBB11_7
.LBB11_16:                              # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
	beqz	$a0, .LBB11_19
# %bb.17:                               # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
	ld.b	$a2, $s0, 24
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_19
.LBB11_18:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 4
.LBB11_19:                              # %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 24
	st.d	$fp, $s0, 16
	st.w	$s1, $s0, 8
.LBB11_20:                              # %_ZN9btPairSet9push_pairEii.exit
	ld.d	$a0, $s0, 16
	alsl.d	$a2, $a1, $a0, 3
	slli.d	$a3, $a1, 3
	stx.w	$s5, $a0, $a3
	st.w	$s6, $a2, 4
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 4
.LBB11_21:
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end11:
	.size	_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib, .Lfunc_end11-_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb,"axG",@progbits,_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb,comdat
	.weak	_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb # -- Begin function _ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb
	.p2align	5
	.type	_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb,@function
_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb: # @_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 56, -8
	.cfi_offset 57, -16
	.cfi_offset 58, -24
	.cfi_offset 59, -32
	.cfi_offset 60, -40
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a0, 0
	fadd.s	$fa1, $fa0, $fa1
	vldi	$vr19, -1184
	fmul.s	$fa7, $fa1, $ft11
	fld.s	$fa1, $a1, 16
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a1, 20
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, 24
	fld.s	$fa6, $a1, 8
	fsub.s	$fa0, $fa0, $fa7
	fadd.s	$fa2, $fa1, $fa2
	fadd.s	$fa4, $fa3, $fa4
	fadd.s	$fa6, $fa5, $fa6
	fmul.s	$ft12, $fa2, $ft11
	fmul.s	$fs1, $fa4, $ft11
	fmul.s	$ft13, $fa6, $ft11
	fsub.s	$fa1, $fa1, $ft12
	fsub.s	$fa2, $fa3, $fs1
	fsub.s	$fa4, $fa5, $ft13
	fld.s	$fa5, $a2, 20
	fld.s	$ft1, $a2, 16
	fld.s	$fa3, $a2, 24
	fld.s	$fa6, $a2, 0
	fmul.s	$ft0, $fs1, $fa5
	fmadd.s	$ft0, $ft1, $ft12, $ft0
	fmadd.s	$ft0, $fa3, $ft13, $ft0
	fadd.s	$ft2, $fa6, $ft0
	fld.s	$ft0, $a2, 68
	fld.s	$ft3, $a2, 64
	fld.s	$fa6, $a2, 72
	fsub.s	$fa7, $ft2, $fa7
	fmul.s	$ft2, $ft0, $fa2
	fmadd.s	$ft2, $ft3, $fa1, $ft2
	fmadd.s	$ft2, $fa6, $fa4, $ft2
	fadd.s	$ft2, $ft2, $fa0
	fabs.s	$ft4, $fa7
	fcmp.clt.s	$fcc0, $ft2, $ft4
	bcnez	$fcc0, .LBB12_5
# %bb.1:
	fld.s	$ft2, $a0, 20
	fld.s	$ft4, $a0, 4
	fadd.s	$ft4, $ft2, $ft4
	fmul.s	$ft7, $ft4, $ft11
	fsub.s	$ft2, $ft2, $ft7
	fld.s	$ft5, $a2, 36
	fld.s	$ft9, $a2, 32
	fld.s	$ft4, $a2, 40
	fld.s	$ft6, $a2, 4
	fmul.s	$ft8, $fs1, $ft5
	fmadd.s	$ft8, $ft9, $ft12, $ft8
	fmadd.s	$ft8, $ft4, $ft13, $ft8
	fadd.s	$ft14, $ft6, $ft8
	fld.s	$ft8, $a2, 84
	fld.s	$ft10, $a2, 80
	fld.s	$ft6, $a2, 88
	fsub.s	$ft7, $ft14, $ft7
	fmul.s	$ft14, $ft8, $fa2
	fmadd.s	$ft14, $ft10, $fa1, $ft14
	fmadd.s	$ft14, $ft6, $fa4, $ft14
	fadd.s	$ft14, $ft14, $ft2
	fabs.s	$ft15, $ft7
	fcmp.clt.s	$fcc0, $ft14, $ft15
	bcnez	$fcc0, .LBB12_5
# %bb.2:
	fld.s	$ft14, $a0, 24
	fld.s	$ft15, $a0, 8
	fadd.s	$ft15, $ft14, $ft15
	fmul.s	$fs3, $ft15, $ft11
	fsub.s	$ft14, $ft14, $fs3
	fld.s	$fs0, $a2, 52
	fld.s	$fs2, $a2, 48
	fld.s	$ft15, $a2, 56
	fld.s	$ft11, $a2, 8
	fmul.s	$fs1, $fs1, $fs0
	fmadd.s	$ft12, $fs2, $ft12, $fs1
	fmadd.s	$ft12, $ft15, $ft13, $ft12
	fadd.s	$fs1, $ft11, $ft12
	fld.s	$ft12, $a2, 100
	fld.s	$ft11, $a2, 96
	fld.s	$ft13, $a2, 104
	fsub.s	$fs1, $fs1, $fs3
	fmul.s	$fs3, $ft12, $fa2
	fmadd.s	$fs3, $ft11, $fa1, $fs3
	fmadd.s	$fs3, $ft13, $fa4, $fs3
	fadd.s	$fs3, $fs3, $ft14
	fabs.s	$fs4, $fs1
	fcmp.clt.s	$fcc0, $fs3, $fs4
	bcnez	$fcc0, .LBB12_5
# %bb.3:                                # %.preheader87
	fmul.s	$fs3, $ft7, $ft9
	fmadd.s	$fs3, $fa7, $ft1, $fs3
	fmadd.s	$fs3, $fs1, $fs2, $fs3
	fmul.s	$fs4, $ft2, $ft10
	fmadd.s	$fs4, $fa0, $ft3, $fs4
	fmadd.s	$fs4, $ft14, $ft11, $fs4
	fadd.s	$fs4, $fs4, $fa1
	fabs.s	$fs3, $fs3
	fcmp.clt.s	$fcc0, $fs4, $fs3
	bcnez	$fcc0, .LBB12_5
# %bb.4:
	fmul.s	$fs3, $ft7, $ft5
	fmadd.s	$fs3, $fa7, $fa5, $fs3
	fmadd.s	$fs3, $fs1, $fs0, $fs3
	fmul.s	$fs4, $ft2, $ft8
	fmadd.s	$fs4, $fa0, $ft0, $fs4
	fmadd.s	$fs4, $ft14, $ft12, $fs4
	fadd.s	$fs4, $fs4, $fa2
	fabs.s	$fs3, $fs3
	fcmp.clt.s	$fcc0, $fs4, $fs3
	bceqz	$fcc0, .LBB12_7
.LBB12_5:                               # %.critedge.loopexit
	move	$a0, $zero
.LBB12_6:                               # %.critedge
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB12_7:
	fmul.s	$fs3, $ft7, $ft4
	fmadd.s	$fs3, $fa7, $fa3, $fs3
	fmadd.s	$fs3, $fs1, $ft15, $fs3
	fmul.s	$fs4, $ft2, $ft6
	fmadd.s	$fs4, $fa0, $fa6, $fs4
	fmadd.s	$fs4, $ft14, $ft13, $fs4
	fadd.s	$fs4, $fs4, $fa4
	fabs.s	$fs3, $fs3
	fcmp.cule.s	$fcc0, $fs3, $fs4
	fcmp.clt.s	$fcc1, $fs4, $fs3
	movcf2gr	$a0, $fcc0
	bcnez	$fcc1, .LBB12_6
# %bb.8:
	beqz	$a3, .LBB12_6
# %bb.9:                                # %.preheader
	fneg.s	$fs3, $fs2
	fmul.s	$fs3, $ft7, $fs3
	fmadd.s	$fs3, $fs1, $ft9, $fs3
	fmul.s	$fs4, $ft14, $ft10
	fmadd.s	$fs4, $ft2, $ft11, $fs4
	fmadd.s	$fs4, $fa2, $fa6, $fs4
	fmadd.s	$fs4, $fa4, $ft0, $fs4
	fabs.s	$fs3, $fs3
	fcmp.clt.s	$fcc0, $fs4, $fs3
	bcnez	$fcc0, .LBB12_5
# %bb.10:
	fneg.s	$fs3, $fs0
	fmul.s	$fs3, $ft7, $fs3
	fmadd.s	$fs3, $fs1, $ft5, $fs3
	fmul.s	$fs4, $ft14, $ft8
	fmadd.s	$fs4, $ft2, $ft12, $fs4
	fmadd.s	$fs4, $fa1, $fa6, $fs4
	fmadd.s	$fs4, $fa4, $ft3, $fs4
	fabs.s	$fs3, $fs3
	fcmp.clt.s	$fcc0, $fs4, $fs3
	bcnez	$fcc0, .LBB12_5
# %bb.11:
	fneg.s	$fs3, $ft15
	fmul.s	$fs3, $ft7, $fs3
	fmadd.s	$fs3, $fs1, $ft4, $fs3
	fmul.s	$fs4, $ft14, $ft6
	fmadd.s	$fs4, $ft2, $ft13, $fs4
	fmadd.s	$fs4, $fa1, $ft0, $fs4
	fmadd.s	$fs4, $fa2, $ft3, $fs4
	fabs.s	$fs3, $fs3
	fcmp.clt.s	$fcc0, $fs4, $fs3
	bcnez	$fcc0, .LBB12_5
# %bb.12:                               # %.loopexit
	fneg.s	$fs3, $ft1
	fmul.s	$fs3, $fs1, $fs3
	fmadd.s	$fs2, $fa7, $fs2, $fs3
	fmul.s	$fs3, $ft14, $ft3
	fmadd.s	$fs3, $fa0, $ft11, $fs3
	fmadd.s	$fs3, $fa2, $ft6, $fs3
	fmadd.s	$fs3, $fa4, $ft8, $fs3
	fabs.s	$fs2, $fs2
	fcmp.clt.s	$fcc0, $fs3, $fs2
	bcnez	$fcc0, .LBB12_5
# %bb.13:
	fneg.s	$fs2, $fa5
	fmul.s	$fs2, $fs1, $fs2
	fmadd.s	$fs0, $fa7, $fs0, $fs2
	fmul.s	$fs2, $ft14, $ft0
	fmadd.s	$fs2, $fa0, $ft12, $fs2
	fmadd.s	$fs2, $fa1, $ft6, $fs2
	fmadd.s	$fs2, $fa4, $ft10, $fs2
	fabs.s	$fs0, $fs0
	fcmp.clt.s	$fcc0, $fs2, $fs0
	bcnez	$fcc0, .LBB12_5
# %bb.14:
	fneg.s	$fs0, $fa3
	fmul.s	$fs0, $fs1, $fs0
	fmadd.s	$ft15, $fa7, $ft15, $fs0
	fmul.s	$ft14, $ft14, $fa6
	fmadd.s	$ft14, $fa0, $ft13, $ft14
	fmadd.s	$ft14, $fa1, $ft8, $ft14
	fmadd.s	$ft14, $fa2, $ft10, $ft14
	fabs.s	$ft15, $ft15
	fcmp.clt.s	$fcc0, $ft14, $ft15
	bcnez	$fcc0, .LBB12_5
# %bb.15:                               # %.loopexit.1
	fneg.s	$ft9, $ft9
	fmul.s	$ft9, $fa7, $ft9
	fmadd.s	$ft1, $ft7, $ft1, $ft9
	fmul.s	$ft3, $ft2, $ft3
	fmadd.s	$ft3, $fa0, $ft10, $ft3
	fmadd.s	$ft3, $fa2, $ft13, $ft3
	fmadd.s	$ft3, $fa4, $ft12, $ft3
	fabs.s	$ft1, $ft1
	fcmp.clt.s	$fcc0, $ft3, $ft1
	bcnez	$fcc0, .LBB12_5
# %bb.16:
	fneg.s	$ft1, $ft5
	fmul.s	$ft1, $fa7, $ft1
	fmadd.s	$fa5, $ft7, $fa5, $ft1
	fmul.s	$ft0, $ft2, $ft0
	fmadd.s	$ft0, $fa0, $ft8, $ft0
	fmadd.s	$ft0, $fa1, $ft13, $ft0
	fmadd.s	$fa4, $fa4, $ft11, $ft0
	fabs.s	$fa5, $fa5
	fcmp.clt.s	$fcc0, $fa4, $fa5
	bcnez	$fcc0, .LBB12_5
# %bb.17:
	fneg.s	$fa4, $ft4
	fmul.s	$fa4, $fa7, $fa4
	fmadd.s	$fa3, $ft7, $fa3, $fa4
	fmul.s	$fa4, $ft2, $fa6
	fmadd.s	$fa0, $fa0, $ft6, $fa4
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	fmadd.s	$fa0, $fa2, $ft11, $fa0
	fabs.s	$fa1, $fa3
	fcmp.cule.s	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 1
	bceqz	$fcc0, .LBB12_5
	b	.LBB12_6
.Lfunc_end12:
	.size	_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb, .Lfunc_end12-_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb
	.cfi_endproc
                                        # -- End function
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
