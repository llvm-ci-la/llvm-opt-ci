	.file	"gim_box_set.cpp"
	.text
	.globl	_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj # -- Begin function _ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj
	.p2align	5
	.type	_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj,@function
_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj: # @_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj
# %bb.0:
	sub.w	$a4, $a3, $a2
	bgeu	$a2, $a3, .LBB0_5
# %bb.1:                                # %.lr.ph
	ld.d	$a5, $a1, 0
	bstrpick.d	$a0, $a2, 31, 0
	bstrpick.d	$a2, $a3, 31, 0
	slli.d	$a3, $a0, 5
	alsl.d	$a3, $a0, $a3, 2
	add.d	$a5, $a3, $a5
	addi.d	$a5, $a5, 20
	sub.d	$a6, $a2, $a0
	vrepli.b	$vr2, 0
	movgr2fr.w	$fa3, $zero
	vldi	$vr1, -1184
	lu12i.w	$a7, 258048
	vreplgr2vr.w	$vr0, $a7
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a5, -4
	fld.s	$fa5, $a5, -20
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a5, -16
	fadd.s	$fa4, $fa4, $fa5
	fmul.s	$fa4, $fa4, $fa1
	vinsgr2vr.d	$vr5, $a7, 0
	vinsgr2vr.d	$vr6, $t0, 0
	vfadd.s	$vr5, $vr5, $vr6
	vfmul.s	$vr5, $vr5, $vr0
	fadd.s	$fa3, $fa3, $fa4
	vfadd.s	$vr2, $vr2, $vr5
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 36
	bnez	$a6, .LBB0_2
# %bb.3:                                # %.lr.ph134
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa1, $a4
	ffint.s.l	$fa1, $fa1
	frecip.s	$fa5, $fa1
	ld.d	$a1, $a1, 0
	fmul.s	$fa4, $fa5, $fa3
	vextrins.w	$vr5, $vr5, 16
	vfmul.s	$vr5, $vr5, $vr2
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 20
	sub.d	$a0, $a2, $a0
	vrepli.b	$vr2, 0
	movgr2fr.w	$fa3, $zero
	vldi	$vr6, -1184
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a1, -4
	fld.s	$ft0, $a1, -20
	ld.d	$a2, $a1, 0
	fadd.s	$fa7, $fa7, $ft0
	vinsgr2vr.d	$vr8, $a2, 0
	ld.d	$a2, $a1, -16
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
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	bnez	$a0, .LBB0_4
	b	.LBB0_6
.LBB0_5:                                # %._crit_edge
	bstrpick.d	$a0, $a4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa1, $fa0
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
	.size	_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj, .Lfunc_end0-_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj
                                        # -- End function
	.globl	_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj # -- Begin function _ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj
	.p2align	5
	.type	_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj,@function
_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj: # @_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj
# %bb.0:
	sub.w	$a0, $a3, $a2
	bstrpick.d	$a5, $a0, 31, 0
	bgeu	$a2, $a3, .LBB1_7
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a7, $a1, 0
	bstrpick.d	$a6, $a4, 31, 0
	bstrpick.d	$t1, $a2, 31, 0
	bstrpick.d	$t2, $a3, 31, 0
	slli.d	$a4, $t1, 5
	alsl.d	$a4, $t1, $a4, 2
	alsl.d	$t0, $a6, $a4, 2
	add.d	$a7, $t0, $a7
	addi.d	$a7, $a7, 16
	sub.d	$t0, $t2, $t1
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1184
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a7, 0
	fld.s	$fa3, $a7, -16
	fadd.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 36
	bnez	$t0, .LBB1_2
# %bb.3:                                # %.lr.ph52
	movgr2fr.d	$fa1, $a5
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	addi.d	$a7, $sp, 24
	slli.d	$t0, $a6, 2
	sub.d	$t1, $t2, $t1
	vldi	$vr1, -1184
	move	$a6, $a2
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	addi.d	$t1, $t1, -1
	addi.d	$a4, $a4, 36
	beqz	$t1, .LBB1_8
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a1, 0
	add.d	$t3, $t2, $a4
	add.d	$t4, $t3, $t0
	fld.s	$fa2, $t4, 16
	fldx.s	$fa3, $t3, $t0
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa2, $fa1
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$t4, $a6, 31, 0
	slli.d	$t5, $t4, 5
	alsl.d	$t4, $t4, $t5, 2
	vldx	$vr2, $t2, $t4
	ld.d	$t5, $t3, 8
	ld.d	$t6, $t3, 0
	add.d	$t7, $t2, $t4
	vst	$vr2, $t3, 0
	ld.w	$t8, $t7, 32
	addi.d	$fp, $t3, 16
	vld	$vr2, $fp, 0
	ld.w	$fp, $t3, 32
	st.w	$t8, $t3, 32
	vld	$vr3, $t7, 16
	vst	$vr2, $a7, 0
	vst	$vr3, $t3, 16
	ld.d	$t3, $sp, 24
	ld.d	$t8, $sp, 32
	stx.d	$t6, $t2, $t4
	st.d	$t5, $t7, 8
	st.d	$t3, $t7, 16
	st.d	$t8, $t7, 24
	st.w	$fp, $t7, 32
	addi.w	$a6, $a6, 1
	b	.LBB1_4
.LBB1_7:
	move	$a6, $a2
	b	.LBB1_9
.LBB1_8:
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_9:                                # %._crit_edge53
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	mul.d	$a1, $a5, $a1
	srli.d	$a1, $a1, 33
	add.w	$a4, $a1, $a2
	sltu	$a4, $a4, $a6
	xori	$a4, $a4, 1
	nor	$a1, $a1, $zero
	add.w	$a1, $a3, $a1
	sltu	$a1, $a6, $a1
	xori	$a1, $a1, 1
	bstrpick.d	$a0, $a0, 31, 1
	add.w	$a0, $a0, $a2
	maskeqz	$a2, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a6, $a1
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a4
	or	$a0, $a2, $a0
	ret
.Lfunc_end1:
	.size	_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj, .Lfunc_end1-_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj
.LCPI2_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
.LCPI2_1:
	.word	0xff7fffff                      # float -3.40282347E+38
	.text
	.globl	_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj
	.p2align	5
	.type	_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj,@function
_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj: # @_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$s4, $a0, 0
	move	$s0, $a1
	addi.d	$s7, $s4, 1
	st.w	$s7, $a0, 0
	sub.w	$s5, $a3, $a2
	ld.d	$s8, $a0, 8
	slli.d	$a0, $s4, 5
	alsl.d	$s3, $s4, $a0, 4
	ori	$a1, $zero, 1
	add.d	$a0, $s8, $s3
	bne	$s5, $a1, .LBB2_2
# %bb.1:                                # %common.ret
	st.d	$zero, $a0, 32
	st.w	$zero, $a0, 40
	ld.d	$a1, $s0, 0
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 2
	vldx	$vr0, $a1, $a2
	add.d	$a1, $a1, $a2
	vst	$vr0, $a0, 0
	vld	$vr0, $a1, 16
	vst	$vr0, $a0, 16
	ld.d	$a0, $s0, 0
	add.d	$a0, $a0, $a2
	ld.d	$a1, $fp, 8
	ld.w	$a0, $a0, 32
	add.d	$a1, $a1, $s3
	st.w	$a0, $a1, 44
	b	.LBB2_14
.LBB2_2:
	move	$s1, $a3
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	st.w	$a1, $a0, 8
	bstrins.d	$a1, $a1, 62, 32
	st.d	$a1, $a0, 0
	lu12i.w	$a1, -2049
	ori	$a1, $a1, 4095
	lu52i.d	$a3, $a1, -9
	st.d	$a3, $a0, 16
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 24
	bstrpick.d	$a4, $s5, 31, 0
	bgeu	$a2, $s1, .LBB2_11
# %bb.3:                                # %.lr.ph
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 16
	ld.d	$a3, $s0, 0
	bstrpick.d	$s7, $a2, 31, 0
	bstrpick.d	$s8, $s1, 31, 0
	slli.d	$a4, $s7, 5
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	fld.s	$fa0, $a5, %pc_lo12(.LCPI2_0)
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	fld.s	$fa1, $a5, %pc_lo12(.LCPI2_1)
	alsl.d	$s2, $s7, $a4, 2
	add.d	$a3, $s2, $a3
	addi.d	$a3, $a3, 16
	sub.d	$a4, $s8, $s7
	fmov.s	$fa4, $fa1
	fmov.s	$fa2, $fa1
	fmov.s	$fa5, $fa0
	fmov.s	$fa3, $fa0
	.p2align	4, , 16
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $a3, -16
	fcmp.clt.s	$fcc0, $fa6, $fa3
	fsel	$fa3, $fa3, $fa6, $fcc0
	fst.s	$fa3, $a0, 0
	fld.s	$fa6, $a3, -12
	fcmp.clt.s	$fcc0, $fa6, $fa5
	addi.d	$a5, $a3, -16
	movcf2gr	$a6, $fcc0
	masknez	$a7, $a0, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a7
	fld.s	$fa5, $a6, 4
	fst.s	$fa5, $a0, 4
	fld.s	$fa6, $a3, -8
	fcmp.clt.s	$fcc0, $fa6, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a7, $a0, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	fld.s	$fa0, $a5, 8
	fst.s	$fa0, $a0, 8
	fld.s	$fa6, $a3, 0
	fcmp.clt.s	$fcc0, $fa2, $fa6
	fsel	$fa2, $fa2, $fa6, $fcc0
	fst.s	$fa2, $a0, 16
	fld.s	$fa6, $a3, 4
	fcmp.clt.s	$fcc0, $fa4, $fa6
	movcf2gr	$a5, $fcc0
	masknez	$a6, $a1, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $a6
	fld.s	$fa4, $a5, 4
	fst.s	$fa4, $a0, 20
	fld.s	$fa6, $a3, 8
	fcmp.clt.s	$fcc0, $fa1, $fa6
	movcf2gr	$a5, $fcc0
	masknez	$a6, $a1, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $a6
	fld.s	$fa1, $a5, 8
	fst.s	$fa1, $a0, 24
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 36
	bnez	$a4, .LBB2_4
# %bb.5:                                # %.lr.ph.i
	move	$a1, $s0
	move	$s6, $a2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	sub.d	$a2, $s8, $s7
	alsl.d	$a3, $a0, $s2, 2
	add.d	$a3, $a3, $a1
	addi.d	$a3, $a3, 16
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1184
	.p2align	4, , 16
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a3, 0
	fld.s	$fa3, $a3, -16
	fadd.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 36
	bnez	$a2, .LBB2_6
# %bb.7:                                # %.lr.ph52.i
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $t4
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	addi.d	$a3, $sp, 40
	sub.d	$a4, $s8, $s7
	slli.d	$a5, $a0, 2
	vldi	$vr1, -1184
	move	$a2, $s6
	move	$a0, $s6
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$s2, $s2, 36
	beqz	$a4, .LBB2_12
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a1, $s2
	add.d	$a7, $a6, $a5
	fld.s	$fa2, $a7, 16
	fldx.s	$fa3, $a6, $a5
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa2, $fa1
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB2_8
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	vld	$vr2, $a6, 0
	addi.d	$a7, $a6, 16
	vst	$vr2, $sp, 24
	vld	$vr2, $a7, 0
	bstrpick.d	$a7, $a0, 31, 0
	vst	$vr2, $a3, 0
	slli.d	$t0, $a7, 5
	alsl.d	$a7, $a7, $t0, 2
	add.d	$t0, $a1, $a7
	vld	$vr2, $t0, 16
	vst	$vr2, $a6, 16
	vldx	$vr2, $a1, $a7
	vst	$vr2, $a6, 0
	ld.w	$t1, $t0, 32
	ld.d	$t2, $sp, 24
	ld.w	$t3, $a6, 32
	st.w	$t1, $a6, 32
	stx.d	$t2, $a1, $a7
	ld.d	$a1, $sp, 32
	st.d	$a1, $t0, 8
	vld	$vr2, $sp, 40
	vst	$vr2, $t0, 16
	ld.d	$a1, $s0, 0
	st.w	$t3, $t0, 32
	addi.w	$a0, $a0, 1
	b	.LBB2_8
.LBB2_11:                               # %._crit_edge
	move	$a1, $s0
	move	$s2, $a2
	move	$a3, $s1
	move	$s6, $a4
	pcaddu18i	$ra, %call36(_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj)
	jirl	$ra, $ra, 0
	move	$t4, $s6
	move	$a2, $s2
	move	$a0, $s2
	b	.LBB2_13
.LBB2_12:                               # %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit.loopexit
	ld.w	$s7, $fp, 0
	ld.d	$s8, $fp, 8
.LBB2_13:                               # %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	mul.d	$a1, $t4, $a1
	srli.d	$a1, $a1, 33
	add.w	$a3, $a1, $a2
	sltu	$a3, $a3, $a0
	xori	$a3, $a3, 1
	nor	$a1, $a1, $zero
	add.w	$a1, $s1, $a1
	sltu	$a1, $a0, $a1
	xori	$a1, $a1, 1
	bstrpick.d	$a4, $s5, 31, 1
	add.w	$a4, $a4, $a2
	maskeqz	$a5, $a4, $a3
	maskeqz	$a4, $a4, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a4, $a0
	masknez	$a0, $a0, $a3
	or	$s2, $a5, $a0
	add.d	$a0, $s8, $s3
	st.w	$s7, $a0, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.w	$a1, $fp, 0
	add.d	$a0, $a0, $s3
	st.w	$a1, $a0, 36
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	sub.d	$a0, $a0, $s4
	add.d	$a1, $a1, $s3
	st.w	$a0, $a1, 40
.LBB2_14:                               # %common.ret49
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj, .Lfunc_end2-_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj
                                        # -- End function
	.globl	_ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE # -- Begin function _ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE
	.p2align	5
	.type	_ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE,@function
_ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE: # @_ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ld.w	$a3, $a1, 8
	ld.w	$a2, $a0, 16
	slli.d	$s0, $a3, 1
	addi.w	$fp, $s0, 0
	st.w	$zero, $a0, 0
	bgeu	$a2, $fp, .LBB3_4
# %bb.1:
	ld.w	$a3, $a0, 20
	bgeu	$a3, $fp, .LBB3_8
# %bb.2:
	move	$s1, $a1
	beqz	$a2, .LBB3_6
# %bb.3:
	bstrpick.d	$a1, $a2, 31, 0
	move	$s2, $a0
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 48
	mul.d	$a1, $a1, $a2
	bstrpick.d	$a3, $s0, 31, 0
	mul.d	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(_Z11gim_reallocPvmm)
	jirl	$ra, $ra, 0
	b	.LBB3_7
.LBB3_4:
	bgeu	$fp, $a2, .LBB3_11
# %bb.5:                                # %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE11clear_rangeEj.exit.i
	st.w	$s0, $a0, 16
	b	.LBB3_11
.LBB3_6:
	move	$s2, $a0
	bstrpick.d	$a0, $s0, 31, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
	pcaddu18i	$ra, %call36(_Z9gim_allocm)
	jirl	$ra, $ra, 0
.LBB3_7:                                # %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE10resizeDataEj.exit.i.i
	move	$a1, $a0
	move	$a0, $s2
	ld.w	$a2, $s2, 16
	st.d	$a1, $s2, 8
	st.w	$s0, $s2, 20
	move	$a1, $s1
.LBB3_8:                                # %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE7reserveEj.exit.i
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
	bgeu	$a2, $fp, .LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 8
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a4, $a2, 5
	alsl.d	$a2, $a2, $a4, 4
	vld	$vr0, $sp, 8
	vld	$vr1, $sp, 40
	vld	$vr2, $sp, 24
	add.d	$a4, $a3, $a2
	vstx	$vr0, $a3, $a2
	vst	$vr1, $a4, 32
	vst	$vr2, $a4, 16
	ld.w	$a2, $a0, 16
	addi.w	$a2, $a2, 1
	st.w	$a2, $a0, 16
	bltu	$a2, $fp, .LBB3_9
.LBB3_10:                               # %._crit_edge.i
	ld.w	$a3, $a1, 8
.LBB3_11:                               # %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE6resizeEjb.exit
	move	$a2, $zero
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj)
	jr	$t8
.Lfunc_end3:
	.size	_ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE, .Lfunc_end3-_ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
