	.file	"btGImpactBvh.cpp"
	.text
	.globl	_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii # -- Begin function _ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii
	.p2align	5
	.type	_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii,@function
_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii: # @_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii
# %bb.0:
	sub.d	$a5, $a3, $a2
	addi.w	$a4, $a5, 0
	bge	$a2, $a3, .LBB0_5
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
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$a5, .LBB0_2
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
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$a1, .LBB0_4
	b	.LBB0_6
.LBB0_5:                                # %._crit_edge
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa1, $fa0
	vrepli.b	$vr2, 0
	movgr2fr.w	$fa3, $zero
.LBB0_6:                                # %._crit_edge135
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
.Lfunc_end0:
	.size	_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii, .Lfunc_end0-_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii
                                        # -- End function
	.globl	_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii # -- Begin function _ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii
	.p2align	5
	.type	_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii,@function
_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii: # @_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii
# %bb.0:
	addi.d	$sp, $sp, -80
	sub.d	$a5, $a3, $a2
	addi.w	$a0, $a5, 0
	st.w	$zero, $sp, 44
	slli.d	$t0, $a2, 5
	bge	$a2, $a3, .LBB1_3
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
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
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
	bnez	$a7, .LBB1_2
	b	.LBB1_4
.LBB1_3:
	vrepli.b	$vr0, 0
	movgr2fr.w	$fa1, $zero
.LBB1_4:                                # %._crit_edge
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
	bge	$a2, $a3, .LBB1_9
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
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$t0, $t0, 36
	beqz	$a5, .LBB1_10
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
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
	bcnez	$fcc0, .LBB1_6
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	slli.d	$t3, $a4, 5
	alsl.d	$t3, $a4, $t3, 2
	xvldx	$xr2, $t2, $t3
	addi.d	$t4, $t1, 16
	vld	$vr3, $t1, 0
	vld	$vr4, $t4, 0
	xvst	$xr2, $t1, 0
	add.d	$t2, $t2, $t3
	ld.w	$t2, $t2, 32
	vst	$vr3, $sp, 48
	vst	$vr4, $a7, 0
	ld.w	$t4, $t1, 32
	st.w	$t2, $t1, 32
	ld.d	$t1, $a1, 16
	xvld	$xr2, $sp, 48
	add.d	$t2, $t1, $t3
	xvstx	$xr2, $t1, $t3
	st.w	$t4, $t2, 32
	addi.w	$a4, $a4, 1
	b	.LBB1_6
.LBB1_9:
	move	$a4, $a2
.LBB1_10:                               # %._crit_edge102
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
.Lfunc_end1:
	.size	_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii, .Lfunc_end1-_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
.LCPI2_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI2_1:
	.word	0xff7fffff                      # float -3.40282347E+38
	.text
	.globl	_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
	.p2align	5
	.type	_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii,@function
_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii: # @_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
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
	move	$s1, $a3
	move	$s0, $a1
	addi.d	$a0, $s3, 1
	sub.d	$s4, $a3, $a2
	addi.w	$a1, $s4, 0
	ori	$a3, $zero, 1
	st.w	$a0, $fp, 0
	bne	$a1, $a3, .LBB2_2
# %bb.1:
	ld.d	$a0, $s0, 16
	ori	$a1, $zero, 36
	mul.d	$a2, $a2, $a1
	ld.d	$a3, $fp, 24
	xvldx	$xr0, $a0, $a2
	mul.d	$a0, $s3, $a1
	xvstx	$xr0, $a3, $a0
	ld.d	$a1, $s0, 16
	ld.d	$a3, $fp, 24
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 32
	add.d	$a0, $a3, $a0
	b	.LBB2_7
.LBB2_2:
	move	$a1, $s0
	move	$s2, $a2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $a0
	pcaddu18i	$ra, %call36(_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	bge	$a2, $s1, .LBB2_5
# %bb.3:                                # %.lr.ph
	ld.d	$a3, $s0, 16
	fld.s	$fa0, $a1, %pc_lo12(.LCPI2_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI2_0)
	slli.d	$a0, $a2, 5
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a0, $a0, $a3
	addi.d	$a0, $a0, 16
	fmov.s	$fa5, $fa1
	fmov.s	$fa2, $fa1
	fmov.s	$fa3, $fa0
	fmov.s	$fa4, $fa0
	.p2align	4, , 16
.LBB2_4:                                # %.cont39
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $a0, -16
	fld.s	$fa7, $a0, -12
	fcmp.clt.s	$fcc0, $fa6, $fa1
	fsel	$fa1, $fa1, $fa6, $fcc0
	fld.s	$fa6, $a0, -8
	fcmp.clt.s	$fcc0, $fa7, $fa5
	fsel	$fa5, $fa5, $fa7, $fcc0
	fld.s	$fa7, $a0, 0
	fcmp.clt.s	$fcc0, $fa6, $fa2
	fsel	$fa2, $fa2, $fa6, $fcc0
	fld.s	$fa6, $a0, 4
	fcmp.clt.s	$fcc0, $fa0, $fa7
	fld.s	$ft0, $a0, 8
	fsel	$fa0, $fa0, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa6
	fsel	$fa4, $fa4, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $ft0
	fsel	$fa3, $fa3, $ft0, $fcc0
	addi.d	$s4, $s4, -1
	addi.d	$a0, $a0, 36
	bnez	$s4, .LBB2_4
	b	.LBB2_6
.LBB2_5:
	fld.s	$fa2, $a0, %pc_lo12(.LCPI2_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI2_1)
	fmov.s	$fa3, $fa4
	fmov.s	$fa0, $fa4
	fmov.s	$fa5, $fa2
	fmov.s	$fa1, $fa2
.LBB2_6:                                # %._crit_edge
	ld.d	$a0, $fp, 24
	slli.d	$a1, $s3, 5
	alsl.d	$s4, $s3, $a1, 2
	add.d	$a1, $a0, $s4
	fstx.s	$fa1, $a0, $s4
	fst.s	$fa5, $a1, 4
	fst.s	$fa2, $a1, 8
	fst.s	$fa0, $a1, 16
	fst.s	$fa4, $a1, 20
	fst.s	$fa3, $a1, 24
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.w	$a1, $fp, 0
	add.d	$a0, $a0, $s4
	sub.d	$a1, $s3, $a1
.LBB2_7:                                # %common.ret
	st.w	$a1, $a0, 32
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii, .Lfunc_end2-_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii
                                        # -- End function
	.globl	_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY # -- Begin function _ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY
	.p2align	5
	.type	_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY,@function
_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY: # @_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY
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
	ld.w	$a3, $a1, 4
	ld.w	$s1, $a0, 12
	slli.w	$s0, $a3, 1
	st.w	$zero, $a0, 0
	bge	$s1, $s0, .LBB3_19
# %bb.1:
	ld.w	$a2, $a0, 16
	bge	$a2, $s0, .LBB3_4
# %bb.2:
	move	$s2, $a1
	beqz	$a3, .LBB3_8
# %bb.3:
	slli.d	$a1, $s0, 5
	alsl.d	$a2, $s0, $a1, 2
	ori	$a1, $zero, 16
	move	$s3, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 12
	move	$fp, $a0
	move	$a0, $s3
	bgtz	$a2, .LBB3_9
	b	.LBB3_11
.LBB3_4:                                # %..lr.ph.i_crit_edge
	ld.d	$fp, $a0, 24
	sub.d	$a3, $s0, $s1
	ori	$a2, $zero, 2
	bltu	$a3, $a2, .LBB3_15
.LBB3_5:                                # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 0, 0
	add.d	$a2, $a4, $s1
	slli.d	$a5, $s1, 5
	alsl.d	$a5, $s1, $a5, 2
	add.d	$a5, $a5, $fp
	addi.d	$a5, $a5, 68
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a5, -36
	st.w	$zero, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 72
	bnez	$a6, .LBB3_6
# %bb.7:                                # %middle.block
	bne	$a3, $a4, .LBB3_16
	b	.LBB3_18
.LBB3_8:
	move	$fp, $zero
	move	$a2, $s1
	blez	$a2, .LBB3_11
.LBB3_9:                                # %.lr.ph.i.i.i
	move	$a1, $zero
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 24
	vldx	$vr0, $a3, $a1
	add.d	$a3, $a3, $a1
	vstx	$vr0, $fp, $a1
	vld	$vr0, $a3, 16
	add.d	$a4, $fp, $a1
	vst	$vr0, $a4, 16
	ld.w	$a3, $a3, 32
	addi.d	$a1, $a1, 36
	st.w	$a3, $a4, 32
	bne	$a2, $a1, .LBB3_10
.LBB3_11:                               # %_ZNK20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE4copyEiiPS0_.exit.i.i
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB3_14
# %bb.12:                               # %_ZNK20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE4copyEiiPS0_.exit.i.i
	ld.b	$a2, $a0, 32
	andi	$a2, $a2, 1
	beqz	$a2, .LBB3_14
# %bb.13:
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB3_14:                               # %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE10deallocateEv.exit.i.i
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 32
	st.d	$fp, $a0, 24
	st.w	$s0, $a0, 16
	move	$a1, $s2
	sub.d	$a3, $s0, $s1
	ori	$a2, $zero, 2
	bgeu	$a3, $a2, .LBB3_5
.LBB3_15:
	move	$a2, $s1
.LBB3_16:                               # %scalar.ph.preheader
	sub.d	$a3, $s0, $a2
	slli.d	$a4, $a2, 5
	alsl.d	$a2, $a2, $a4, 2
	add.d	$a2, $a2, $fp
	addi.d	$a2, $a2, 32
	.p2align	4, , 16
.LBB3_17:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 36
	bnez	$a3, .LBB3_17
.LBB3_18:                               # %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit.loopexit
	ld.w	$a3, $a1, 4
.LBB3_19:                               # %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit
	st.w	$s0, $a0, 12
	move	$a2, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii)
	jr	$t8
.Lfunc_end3:
	.size	_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY, .Lfunc_end3-_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN12btGImpactBvh5refitEv
.LCPI4_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI4_1:
	.word	0xff7fffff                      # float -3.40282347E+38
	.text
	.globl	_ZN12btGImpactBvh5refitEv
	.p2align	5
	.type	_ZN12btGImpactBvh5refitEv,@function
_ZN12btGImpactBvh5refitEv:              # @_ZN12btGImpactBvh5refitEv
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
	beqz	$s0, .LBB4_7
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	slli.d	$a0, $s0, 5
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI4_0)
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	fld.s	$fs1, $a1, %pc_lo12(.LCPI4_1)
	alsl.d	$a0, $s0, $a0, 2
	addi.d	$s1, $a0, 32
	ori	$s2, $zero, 1
	move	$s3, $s0
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a2, 32
	addi.d	$a2, $sp, 16
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 24
	xvld	$xr0, $sp, 16
	add.d	$a0, $a0, $s1
	xvst	$xr0, $a0, -68
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, -36
	addi.d	$s0, $s0, -1
	beqz	$s3, .LBB4_7
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 24
	add.d	$a0, $a2, $s1
	ld.w	$a1, $a0, -36
	bgez	$a1, .LBB4_2
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	fld.s	$fa0, $a0, -32
	fld.s	$fa2, $a0, -28
	fld.s	$fa3, $a0, -24
	fld.s	$fa5, $a0, -16
	fld.s	$fa6, $a0, -12
	fld.s	$fa7, $a0, -8
	fmin.s	$fa1, $fa0, $fs0
	fmin.s	$fa0, $fa2, $fs0
	ldx.w	$a1, $a2, $s1
	fmin.s	$fa4, $fa3, $fs0
	fmax.s	$fa3, $fa5, $fs1
	fmax.s	$fa2, $fa6, $fs1
	slti	$a3, $a1, 0
	sub.d	$a1, $zero, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s2, $a3
	or	$a1, $a1, $a3
	add.w	$a1, $a1, $s0
	fmax.s	$fa5, $fa7, $fs1
	beqz	$a1, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a3, $a2, $a1
	fldx.s	$fa6, $a2, $a1
	fld.s	$fa7, $a3, 4
	fld.s	$ft0, $a3, 8
	fld.s	$ft1, $a3, 16
	fld.s	$ft2, $a3, 20
	fld.s	$ft3, $a3, 24
	fcmp.clt.s	$fcc0, $fa6, $fa1
	fsel	$fa1, $fa1, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa0
	fsel	$fa0, $fa0, $fa7, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa4
	fsel	$fa4, $fa4, $ft0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $ft1
	fsel	$fa3, $fa3, $ft1, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $ft2
	fsel	$fa2, $fa2, $ft2, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $ft3
	fsel	$fa5, $fa5, $ft3, $fcc0
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	fst.s	$fa1, $a0, -68
	fst.s	$fa0, $a0, -64
	fst.s	$fa4, $a0, -60
	fst.s	$fa3, $a0, -52
	fst.s	$fa2, $a0, -48
	fst.s	$fa5, $a0, -44
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, -36
	addi.d	$s0, $s0, -1
	bnez	$s3, .LBB4_3
.LBB4_7:                                # %._crit_edge
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
.Lfunc_end4:
	.size	_ZN12btGImpactBvh5refitEv, .Lfunc_end4-_ZN12btGImpactBvh5refitEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12btGImpactBvh8buildSetEv    # -- Begin function _ZN12btGImpactBvh8buildSetEv
	.p2align	5
	.type	_ZN12btGImpactBvh8buildSetEv,@function
_ZN12btGImpactBvh8buildSetEv:           # @_ZN12btGImpactBvh8buildSetEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	st.d	$zero, $sp, 12
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 32
	ld.d	$a1, $a1, 24
	st.d	$zero, $sp, 24
.Ltmp0:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$s0, $a0
	blez	$a0, .LBB5_8
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
	st.b	$a2, $sp, 32
	st.d	$a0, $sp, 24
	st.w	$s0, $sp, 16
	xvrepli.b	$xr0, 0
	.p2align	4, , 16
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a1
	xvstx	$xr0, $a0, $a1
	addi.d	$a1, $a1, 36
	st.w	$zero, $a2, 32
	bne	$s1, $a1, .LBB5_4
# %bb.5:                                # %.lr.ph.preheader
	move	$s1, $zero
	move	$s2, $zero
	st.w	$s0, $sp, 12
	ori	$s0, $zero, 32
	.p2align	4, , 16
.LBB5_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a2, $a1, 0
	ld.d	$a3, $a2, 32
	add.d	$a0, $a0, $s0
	addi.d	$a2, $a0, -32
.Ltmp5:                                 # EH_LABEL
	move	$a0, $a1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp6:                                 # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 24
	ld.w	$a1, $sp, 12
	stx.w	$s1, $a0, $s0
	addi.d	$s2, $s2, 1
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, 36
	blt	$s2, $a1, .LBB5_6
	b	.LBB5_9
.LBB5_8:                                # %.loopexit
	st.w	$s0, $sp, 12
.LBB5_9:                                # %._crit_edge
.Ltmp8:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.10:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB5_13
# %bb.11:
	ld.b	$a1, $sp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_13
# %bb.12:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB5_14:
.Ltmp4:                                 # EH_LABEL
	b	.LBB5_17
.LBB5_15:
.Ltmp10:                                # EH_LABEL
	b	.LBB5_17
.LBB5_16:
.Ltmp7:                                 # EH_LABEL
.LBB5_17:
	move	$fp, $a0
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB5_20
# %bb.18:
	ld.b	$a1, $sp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_20
# %bb.19:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
.LBB5_20:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_21:
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN12btGImpactBvh8buildSetEv, .Lfunc_end5-_ZN12btGImpactBvh8buildSetEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Lfunc_end5-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end5
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
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE # -- Begin function _ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE
	.p2align	5
	.type	_ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE,@function
_ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE: # @_ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
	ld.w	$s3, $a0, 0
	move	$s0, $a2
	blez	$s3, .LBB7_36
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	move	$s1, $a1
	move	$s4, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 4
	b	.LBB7_6
.LBB7_2:                                #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a1, $s0, 4
.LBB7_3:                                # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB7_6 Depth=1
	st.b	$s5, $s0, 24
	st.d	$s2, $s0, 16
	st.w	$s7, $s0, 8
.LBB7_4:                                # %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a0, $s0, 16
	slli.d	$a1, $a1, 2
	stx.w	$s8, $a0, $a1
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
.LBB7_5:                                # %.thread
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $s3, .LBB7_36
.LBB7_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_30 Depth 2
                                        #     Child Loop BB7_33 Depth 2
	ld.d	$a0, $fp, 24
	slli.d	$a1, $s4, 5
	alsl.d	$a1, $s4, $a1, 2
	fldx.s	$fa0, $a0, $a1
	fld.s	$fa1, $s1, 16
	add.d	$a0, $a0, $a1
	ld.w	$s8, $a0, 32
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_21
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $s1, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_21
# %bb.8:                                #   in Loop: Header=BB7_6 Depth=1
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $s1, 20
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_21
# %bb.9:                                #   in Loop: Header=BB7_6 Depth=1
	fld.s	$fa0, $a0, 20
	fld.s	$fa1, $s1, 4
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_21
# %bb.10:                               #   in Loop: Header=BB7_6 Depth=1
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $s1, 24
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_21
# %bb.11:                               #   in Loop: Header=BB7_6 Depth=1
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $s1, 8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_21
# %bb.12:                               # %_ZNK6btAABB13has_collisionERKS_.exit
                                        #   in Loop: Header=BB7_6 Depth=1
	bltz	$s8, .LBB7_5
# %bb.13:                               #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a1, $s0, 4
	ld.w	$a0, $s0, 8
	bne	$a1, $a0, .LBB7_4
# %bb.14:                               #   in Loop: Header=BB7_6 Depth=1
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s5, $a0
	or	$s7, $a0, $a2
	bge	$a1, $s7, .LBB7_4
# %bb.15:                               #   in Loop: Header=BB7_6 Depth=1
	beqz	$s7, .LBB7_23
# %bb.16:                               #   in Loop: Header=BB7_6 Depth=1
	slli.d	$a0, $s7, 2
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 4
	move	$s2, $a0
	ld.d	$a0, $s0, 16
	blez	$a1, .LBB7_24
.LBB7_17:                               # %iter.check
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a2, $zero
	bltu	$a1, $s6, .LBB7_32
# %bb.18:                               # %iter.check
                                        #   in Loop: Header=BB7_6 Depth=1
	sub.d	$a3, $s2, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB7_32
# %bb.19:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB7_25
# %bb.20:                               #   in Loop: Header=BB7_6 Depth=1
	move	$a2, $zero
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_21:                               #   in Loop: Header=BB7_6 Depth=1
	bgez	$s8, .LBB7_5
# %bb.22:                               #   in Loop: Header=BB7_6 Depth=1
	sub.w	$s4, $s4, $s8
	blt	$s4, $s3, .LBB7_6
	b	.LBB7_36
.LBB7_23:                               #   in Loop: Header=BB7_6 Depth=1
	move	$s2, $zero
	ld.d	$a0, $s0, 16
	bgtz	$a1, .LBB7_17
.LBB7_24:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
                                        #   in Loop: Header=BB7_6 Depth=1
	bnez	$a0, .LBB7_34
	b	.LBB7_3
.LBB7_25:                               # %vector.ph
                                        #   in Loop: Header=BB7_6 Depth=1
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s2, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB7_26:                               # %vector.body
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB7_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB7_6 Depth=1
	beq	$a2, $a1, .LBB7_34
# %bb.28:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB7_6 Depth=1
	andi	$a3, $a1, 12
	beqz	$a3, .LBB7_32
.LBB7_29:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s2, 2
	.p2align	4, , 16
.LBB7_30:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB7_30
# %bb.31:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB7_6 Depth=1
	beq	$a2, $a1, .LBB7_34
.LBB7_32:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s2, 2
	.p2align	4, , 16
.LBB7_33:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB7_33
.LBB7_34:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a1, $s0, 24
	beqz	$a1, .LBB7_2
# %bb.35:                               #   in Loop: Header=BB7_6 Depth=1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	b	.LBB7_2
.LBB7_36:                               # %._crit_edge
	ld.w	$a0, $s0, 4
	slt	$a0, $zero, $a0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
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
	ret
.Lfunc_end7:
	.size	_ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE, .Lfunc_end7-_ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE # -- Begin function _ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE
	.p2align	5
	.type	_ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE,@function
_ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE: # @_ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE
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
	blez	$s0, .LBB8_41
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	vldi	$vr12, -1184
	movgr2fr.w	$fs0, $zero
	addi.w	$s2, $zero, -1
	ori	$s3, $zero, 1
	ori	$t2, $zero, 4
	ori	$t3, $zero, 64
	ori	$t4, $zero, 16
	b	.LBB8_6
.LBB8_2:                                #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a5, $a3, 4
.LBB8_3:                                # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	st.b	$s3, $a3, 24
	st.d	$fp, $a3, 16
	st.w	$s8, $a3, 8
.LBB8_4:                                # %.thread
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a4, $a3, 16
	slli.d	$a5, $a5, 2
	stx.w	$s7, $a4, $a5
	ld.w	$a4, $a3, 4
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 4
	.p2align	4, , 16
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s0, .LBB8_41
.LBB8_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_31 Depth 2
                                        #     Child Loop BB8_35 Depth 2
                                        #     Child Loop BB8_38 Depth 2
	ld.d	$a6, $a0, 24
	slli.d	$a4, $s1, 5
	alsl.d	$a4, $s1, $a4, 2
	add.d	$a5, $a6, $a4
	fldx.s	$fa0, $a6, $a4
	fld.s	$fa2, $a5, 4
	fld.s	$fa4, $a5, 8
	fld.s	$fa1, $a5, 16
	fld.s	$fa3, $a5, 20
	fld.s	$fa5, $a5, 24
	fld.s	$fa6, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa7, $fa0, $ft4
	fsub.s	$fa0, $fa1, $fa7
	fsub.s	$fa1, $fa6, $fa7
	fabs.s	$fa6, $fa1
	fcmp.cule.s	$fcc0, $fa6, $fa0
	bcnez	$fcc0, .LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	fld.s	$fa6, $a1, 0
	fmul.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fs0, $fa6
	bcnez	$fcc0, .LBB8_14
.LBB8_8:                                #   in Loop: Header=BB8_6 Depth=1
	fld.s	$fa6, $a2, 4
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa7, $fa2, $ft4
	fsub.s	$fa2, $fa3, $fa7
	fsub.s	$fa3, $fa6, $fa7
	fabs.s	$fa6, $fa3
	fcmp.cule.s	$fcc0, $fa6, $fa2
	bcnez	$fcc0, .LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_6 Depth=1
	fld.s	$fa6, $a1, 4
	fmul.s	$fa6, $fa3, $fa6
	fcmp.cle.s	$fcc0, $fs0, $fa6
	bcnez	$fcc0, .LBB8_14
.LBB8_10:                               #   in Loop: Header=BB8_6 Depth=1
	fld.s	$fa6, $a2, 8
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa7, $fa4, $ft4
	fsub.s	$fa4, $fa5, $fa7
	fsub.s	$fa5, $fa6, $fa7
	fld.s	$fa6, $a1, 8
	fabs.s	$fa7, $fa5
	fcmp.cule.s	$fcc0, $fa7, $fa4
	bcnez	$fcc0, .LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_6 Depth=1
	fmul.s	$fa7, $fa5, $fa6
	fcmp.cle.s	$fcc0, $fs0, $fa7
	bcnez	$fcc0, .LBB8_14
.LBB8_12:                               # %._crit_edge.i
                                        #   in Loop: Header=BB8_6 Depth=1
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
	bcnez	$fcc0, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_6 Depth=1
	fld.s	$ft2, $a1, 0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $ft2, $fa5
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fabs.s	$fa6, $fa5
	fabs.s	$fa5, $ft2
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa4, $fa0, $ft1, $fa4
	fcmp.cule.s	$fcc0, $fa6, $fa4
	bcnez	$fcc0, .LBB8_18
	.p2align	4, , 16
.LBB8_14:                               # %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a6, $a5, 32
	move	$a5, $zero
	slt	$a6, $s2, $a6
.LBB8_15:                               #   in Loop: Header=BB8_6 Depth=1
	bnez	$a6, .LBB8_5
# %bb.16:                               #   in Loop: Header=BB8_6 Depth=1
	bnez	$a5, .LBB8_5
# %bb.17:                               #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a5, $a0, 24
	add.d	$a4, $a5, $a4
	ld.w	$a4, $a4, 32
	sub.w	$s1, $s1, $a4
	blt	$s1, $s0, .LBB8_6
	b	.LBB8_41
.LBB8_18:                               # %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fmadd.s	$fa1, $ft2, $fa3, $fa1
	fabs.s	$fa1, $fa1
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa0, $fa0, $ft0, $fa2
	ld.w	$s7, $a5, 32
	fcmp.cule.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	slt	$a6, $s2, $s7
	bcnez	$fcc0, .LBB8_15
# %bb.19:                               # %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	bltz	$s7, .LBB8_15
# %bb.20:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a5, $a3, 4
	ld.w	$a4, $a3, 8
	bne	$a5, $a4, .LBB8_4
# %bb.21:                               #   in Loop: Header=BB8_6 Depth=1
	sltui	$a4, $a5, 1
	slli.w	$a6, $a5, 1
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $s3, $a4
	or	$s8, $a4, $a6
	bge	$a5, $s8, .LBB8_4
# %bb.22:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s6, $a1
	move	$s5, $a2
	beqz	$s8, .LBB8_28
# %bb.23:                               #   in Loop: Header=BB8_6 Depth=1
	slli.d	$a2, $s8, 2
	ori	$a1, $zero, 16
	move	$s4, $a0
	move	$a0, $a2
	move	$fp, $a3
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 16
	ori	$t3, $zero, 64
	ori	$t2, $zero, 4
	move	$a3, $fp
	ld.w	$a5, $fp, 4
	move	$fp, $a0
	move	$a0, $s4
	ld.d	$a4, $a3, 16
	blez	$a5, .LBB8_29
.LBB8_24:                               # %iter.check
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a6, $zero
	move	$a2, $s5
	move	$a1, $s6
	vldi	$vr12, -1184
	bltu	$a5, $t2, .LBB8_37
# %bb.25:                               # %iter.check
                                        #   in Loop: Header=BB8_6 Depth=1
	sub.d	$a7, $fp, $a4
	bltu	$a7, $t3, .LBB8_37
# %bb.26:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB8_6 Depth=1
	bgeu	$a5, $t4, .LBB8_30
# %bb.27:                               #   in Loop: Header=BB8_6 Depth=1
	move	$a6, $zero
	b	.LBB8_34
.LBB8_28:                               #   in Loop: Header=BB8_6 Depth=1
	move	$fp, $zero
	ld.d	$a4, $a3, 16
	bgtz	$a5, .LBB8_24
.LBB8_29:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a2, $s5
	move	$a1, $s6
	vldi	$vr12, -1184
	bnez	$a4, .LBB8_39
	b	.LBB8_3
.LBB8_30:                               # %vector.ph
                                        #   in Loop: Header=BB8_6 Depth=1
	bstrpick.d	$a6, $a5, 30, 4
	slli.d	$a6, $a6, 4
	addi.d	$a7, $a4, 32
	addi.d	$t0, $fp, 32
	move	$t1, $a6
	.p2align	4, , 16
.LBB8_31:                               # %vector.body
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t1, $t1, -16
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB8_31
# %bb.32:                               # %middle.block
                                        #   in Loop: Header=BB8_6 Depth=1
	beq	$a6, $a5, .LBB8_39
# %bb.33:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB8_6 Depth=1
	andi	$a7, $a5, 12
	beqz	$a7, .LBB8_37
.LBB8_34:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$t1, $a6
	bstrpick.d	$a6, $a5, 30, 2
	slli.d	$a6, $a6, 2
	sub.d	$a7, $t1, $a6
	alsl.d	$t0, $t1, $a4, 2
	alsl.d	$t1, $t1, $fp, 2
	.p2align	4, , 16
.LBB8_35:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vst	$vr0, $t1, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	bnez	$a7, .LBB8_35
# %bb.36:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB8_6 Depth=1
	beq	$a6, $a5, .LBB8_39
.LBB8_37:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	sub.d	$a5, $a5, $a6
	alsl.d	$a7, $a6, $a4, 2
	alsl.d	$a6, $a6, $fp, 2
	.p2align	4, , 16
.LBB8_38:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	st.w	$t0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB8_38
.LBB8_39:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.bu	$a5, $a3, 24
	beqz	$a5, .LBB8_2
# %bb.40:                               #   in Loop: Header=BB8_6 Depth=1
	move	$s4, $a0
	move	$a0, $a4
	move	$s3, $a3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 16
	ori	$t3, $zero, 64
	ori	$t2, $zero, 4
	vldi	$vr12, -1184
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s3
	ori	$s3, $zero, 1
	move	$a0, $s4
	b	.LBB8_2
.LBB8_41:                               # %._crit_edge
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
.Lfunc_end8:
	.size	_ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE, .Lfunc_end8-_ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
.LCPI9_0:
	.word	0x358637bd                      # float 9.99999997E-7
	.text
	.globl	_ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
	.p2align	5
	.type	_ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet,@function
_ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet: # @_ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
	.cfi_startproc
# %bb.0:
	ld.w	$a5, $a0, 0
	beqz	$a5, .LBB9_3
# %bb.1:
	ld.w	$a5, $a2, 0
	beqz	$a5, .LBB9_3
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
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI9_0)
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
	pcaddu18i	$ra, %call36(_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
.LBB9_3:
	ret
.Lfunc_end9:
	.size	_ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet, .Lfunc_end9-_ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib
	.type	_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib,@function
_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib: # @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$a0, $a0, 24
	move	$s3, $a4
	ori	$a4, $zero, 36
	mul.d	$s5, $s3, $a4
	xvldx	$xr0, $a0, $s5
	move	$s1, $a1
	ld.d	$a0, $a1, 24
	move	$s4, $a5
	xvst	$xr0, $sp, 40
	mul.d	$s6, $a5, $a4
	xvldx	$xr0, $a0, $s6
	move	$s2, $a3
	move	$fp, $a2
	xvst	$xr0, $sp, 8
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $a3
	move	$a3, $a6
	pcaddu18i	$ra, %call36(_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_21
# %bb.1:
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s1, 24
	add.d	$a0, $a0, $s5
	ld.w	$s5, $a0, 32
	add.d	$a0, $a1, $s6
	ld.w	$s6, $a0, 32
	bltz	$s5, .LBB10_10
# %bb.2:
	bltz	$s6, .LBB10_12
# %bb.3:
	ld.w	$a1, $fp, 4
	ld.w	$a0, $fp, 8
	bne	$a1, $a0, .LBB10_20
# %bb.4:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s1, $a0, $a2
	bge	$a1, $s1, .LBB10_20
# %bb.5:
	beqz	$s1, .LBB10_15
# %bb.6:
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s0, $a0
	ld.d	$a0, $fp, 16
	blez	$a1, .LBB10_16
.LBB10_7:                               # %.lr.ph.i.i.i.i
	addi.d	$a2, $a0, 4
	addi.d	$a3, $s0, 4
	move	$a4, $a1
	.p2align	4, , 16
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, -4
	st.d	$a5, $a3, -4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB10_8
# %bb.9:                                # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i
	ld.bu	$a2, $fp, 24
	bnez	$a2, .LBB10_18
	b	.LBB10_19
.LBB10_10:
	addi.w	$s5, $s3, 1
	bltz	$s6, .LBB10_13
# %bb.11:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s4
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	slli.d	$a1, $s5, 5
	alsl.d	$a1, $s5, $a1, 2
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 32
	addi.w	$a1, $s3, 2
	sub.w	$a2, $s5, $a0
	slti	$a0, $a0, 0
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a4, $a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a5, $s4
	b	.LBB10_14
.LBB10_12:
	addi.w	$s5, $s4, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s5
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	slli.d	$a1, $s5, 5
	alsl.d	$a1, $s5, $a1, 2
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 32
	addi.w	$a1, $s4, 2
	sub.w	$a2, $s5, $a0
	slti	$a0, $a0, 0
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a5, $a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s3
	b	.LBB10_14
.LBB10_13:
	addi.w	$s6, $s4, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s6
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ori	$s7, $zero, 36
	mul.d	$s8, $s6, $s7
	add.d	$a0, $a0, $s8
	ld.w	$a0, $a0, 32
	addi.w	$s4, $s4, 2
	sub.w	$a1, $s6, $a0
	slti	$a0, $a0, 0
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a5, $a1, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s5
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	mul.d	$s7, $s5, $s7
	add.d	$a0, $a0, $s7
	ld.w	$a0, $a0, 32
	addi.w	$s3, $s3, 2
	sub.w	$a1, $s5, $a0
	slti	$a0, $a0, 0
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$a4, $a1, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a5, $s6
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	add.d	$a0, $a0, $s7
	ld.w	$a0, $a0, 32
	ld.d	$a1, $s1, 24
	sub.w	$a2, $s5, $a0
	slti	$a0, $a0, 0
	add.d	$a1, $a1, $s8
	ld.w	$a1, $a1, 32
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s3, $a0
	or	$a4, $a2, $a0
	sub.w	$a0, $s6, $a1
	slti	$a1, $a1, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a5, $a0, $a1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
.LBB10_14:
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib)
	jirl	$ra, $ra, 0
	b	.LBB10_21
.LBB10_15:
	move	$s0, $zero
	ld.d	$a0, $fp, 16
	bgtz	$a1, .LBB10_7
.LBB10_16:                              # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
	beqz	$a0, .LBB10_19
# %bb.17:                               # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
	ld.b	$a2, $fp, 24
	andi	$a2, $a2, 1
	beqz	$a2, .LBB10_19
.LBB10_18:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
.LBB10_19:                              # %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s0, $fp, 16
	st.w	$s1, $fp, 8
.LBB10_20:                              # %_ZN9btPairSet9push_pairEii.exit
	ld.d	$a0, $fp, 16
	alsl.d	$a2, $a1, $a0, 3
	slli.d	$a3, $a1, 3
	stx.w	$s5, $a0, $a3
	st.w	$s6, $a2, 4
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 4
.LBB10_21:
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end10:
	.size	_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib, .Lfunc_end10-_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bceqz	$fcc0, .LBB11_7
.LBB11_5:                               # %.critedge.loopexit
	move	$a0, $zero
.LBB11_6:                               # %.critedge
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_7:
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
	bcnez	$fcc1, .LBB11_6
# %bb.8:
	beqz	$a3, .LBB11_6
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bcnez	$fcc0, .LBB11_5
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
	bceqz	$fcc0, .LBB11_5
	b	.LBB11_6
.Lfunc_end11:
	.size	_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb, .Lfunc_end11-_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb
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
