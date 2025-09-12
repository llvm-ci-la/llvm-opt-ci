	.file	"health.c"
	.text
	.globl	alloc_tree                      # -- Begin function alloc_tree
	.p2align	5
	.type	alloc_tree,@function
alloc_tree:                             # @alloc_tree
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB0_2
# %bb.1:
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$s3, $s0, -1
	slli.d	$s6, $s1, 2
	addi.w	$s4, $s6, 1
	ori	$a0, $zero, 4
	alsl.w	$a1, $s1, $a0, 2
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(alloc_tree)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a1, $s6, 3
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(alloc_tree)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.w	$a1, $s6, 2
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(alloc_tree)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(alloc_tree)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $fp, 32
	pcalau12i	$a0, %pc_hi20(seed)
	ld.d	$a0, $a0, %pc_lo12(seed)
	st.w	$s1, $fp, 176
	lu12i.w	$a1, 31
	ori	$a1, $a1, 797
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $s1
	st.d	$a0, $fp, 184
	vldi	$vr0, -912
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 64
	st.w	$a0, $fp, 68
	st.w	$zero, $fp, 72
	addi.d	$a0, $fp, 80
	st.d	$zero, $fp, 56
	st.d	$zero, $fp, 40
	ori	$a2, $zero, 96
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s4, $fp, 0
	st.d	$s6, $fp, 8
	st.d	$s5, $fp, 16
	st.d	$s0, $fp, 24
	b	.LBB0_3
.LBB0_2:
	move	$fp, $zero
.LBB0_3:                                # %common.ret
	move	$a0, $fp
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
.Lfunc_end0:
	.size	alloc_tree, .Lfunc_end0-alloc_tree
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_results
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	32                              # 0x20
	.text
	.globl	get_results
	.p2align	5
	.type	get_results,@function
get_results:                            # @get_results
# %bb.0:
	beqz	$a0, .LBB1_5
# %bb.1:                                # %.preheader.preheader
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 24
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(get_results)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 16
	move	$fp, $a0
	move	$s0, $a1
	movgr2fr.w	$fs0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(get_results)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 8
	move	$s1, $a0
	move	$s2, $a1
	movgr2fr.w	$fs1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(get_results)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
	move	$s3, $a0
	move	$s4, $a1
	movgr2fr.w	$fs2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(get_results)
	jirl	$ra, $ra, 0
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_0)
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $zero
	fadd.s	$fa2, $fs0, $fa2
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa2, $fa2, $fs2
	vinsgr2vr.d	$vr3, $s0, 0
	vinsgr2vr.d	$vr3, $fp, 1
	vsrl.d	$vr3, $vr3, $vr0
	vshuf4i.w	$vr3, $vr3, 8
	vinsgr2vr.d	$vr4, $s2, 0
	vinsgr2vr.d	$vr4, $s1, 1
	vsrl.d	$vr4, $vr4, $vr0
	vshuf4i.w	$vr4, $vr4, 8
	vinsgr2vr.d	$vr5, $s4, 0
	vinsgr2vr.d	$vr5, $s3, 1
	vsrl.d	$vr5, $vr5, $vr0
	vshuf4i.w	$vr5, $vr5, 8
	vinsgr2vr.d	$vr6, $a1, 0
	vinsgr2vr.d	$vr6, $a0, 1
	vsrl.d	$vr0, $vr6, $vr0
	vshuf4i.w	$vr0, $vr0, 8
	vrepli.b	$vr6, 0
	vfadd.s	$vr3, $vr3, $vr6
	ld.d	$a0, $s5, 40
	vfadd.s	$vr3, $vr3, $vr4
	vfadd.s	$vr3, $vr3, $vr5
	fadd.s	$fa1, $fa2, $fa1
	vfadd.s	$vr0, $vr3, $vr0
	beqz	$a0, .LBB1_4
# %bb.2:                                # %.lr.ph.preheader
	vldi	$vr2, -1168
	.p2align	4, , 16
.LBB1_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	vffint.s.w	$vr3, $vr3
	vfadd.s	$vr0, $vr0, $vr3
	fadd.s	$fa1, $fa1, $fa2
	bnez	$a0, .LBB1_3
.LBB1_4:                                # %._crit_edge
	movfr2gr.s	$a0, $fa1
	vpickve2gr.w	$a2, $vr0, 1
	vpickve2gr.w	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 31, 0
	bstrins.d	$a0, $a2, 63, 32
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.LBB1_5:
	move	$a1, $zero
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	get_results, .Lfunc_end1-get_results
                                        # -- End function
	.globl	check_patients_inside           # -- Begin function check_patients_inside
	.p2align	5
	.type	check_patients_inside,@function
check_patients_inside:                  # @check_patients_inside
# %bb.0:
	beqz	$a1, .LBB2_6
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s1, $a0, 128
	addi.d	$s2, $a0, 40
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB2_5
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $fp, 8
	ld.w	$a0, $s3, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 8
	bnez	$a0, .LBB2_2
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	ld.w	$a0, $s0, 68
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 68
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB2_6:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	check_patients_inside, .Lfunc_end2-check_patients_inside
                                        # -- End function
	.globl	check_patients_assess           # -- Begin function check_patients_assess
	.p2align	5
	.type	check_patients_assess,@function
check_patients_assess:                  # @check_patients_assess
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	beqz	$a1, .LBB3_8
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	move	$s0, $a0
	move	$s4, $zero
	addi.d	$s1, $a0, 104
	addi.d	$s2, $a0, 152
	addi.d	$s3, $a0, 128
	lu12i.w	$a0, 323584
	movgr2fr.w	$fs0, $a0
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a0, $a0, 1019
	movgr2fr.d	$fs1, $a0
	ori	$s6, $zero, 10
	b	.LBB3_4
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 4
	st.w	$s6, $s5, 8
	addi.d	$a0, $a0, 10
	st.w	$a0, $s5, 4
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB3_9
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $fp, 8
	ld.w	$a0, $s5, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 8
	bnez	$a0, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s0, 184
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fa0, $fs0
	ftintrz.l.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fst.d	$fa1, $s0, 184
	bcnez	$fcc0, .LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s0, 176
	beqz	$a0, .LBB3_2
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s0, 68
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 68
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	move	$s4, $s2
	b	.LBB3_3
.LBB3_8:
	move	$s4, $zero
.LBB3_9:                                # %._crit_edge
	move	$a0, $s4
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	check_patients_assess, .Lfunc_end3-check_patients_assess
                                        # -- End function
	.globl	check_patients_waiting          # -- Begin function check_patients_waiting
	.p2align	5
	.type	check_patients_waiting,@function
check_patients_waiting:                 # @check_patients_waiting
# %bb.0:
	beqz	$a1, .LBB4_8
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ld.w	$a0, $a0, 68
	blez	$a0, .LBB4_6
# %bb.2:
	addi.d	$s1, $s0, 80
	addi.d	$s2, $s0, 104
	ori	$s4, $zero, 3
	ld.d	$s3, $fp, 8
	blez	$a0, .LBB4_4
	.p2align	4, , 16
.LBB4_3:
	ld.w	$a1, $s3, 4
	addi.d	$a0, $a0, -1
	st.w	$a0, $s0, 68
	st.w	$s4, $s3, 8
	addi.d	$a0, $a1, 3
	st.w	$a0, $s3, 4
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB4_5
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_4:
	ld.w	$a0, $s3, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 4
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB4_7
.LBB4_5:                                # %.lr.ph.splitthread-pre-split
	ld.w	$a0, $s0, 68
	ld.d	$s3, $fp, 8
	bgtz	$a0, .LBB4_3
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_6:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 4
	ld.d	$fp, $fp, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 4
	bnez	$fp, .LBB4_6
.LBB4_7:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB4_8:                                # %._crit_edge
	ret
.Lfunc_end4:
	.size	check_patients_waiting, .Lfunc_end4-check_patients_waiting
                                        # -- End function
	.globl	put_in_hosp                     # -- Begin function put_in_hosp
	.p2align	5
	.type	put_in_hosp,@function
put_in_hosp:                            # @put_in_hosp
# %bb.0:
	ld.w	$a3, $a1, 0
	ld.w	$a2, $a0, 4
	addi.d	$a3, $a3, 1
	st.w	$a3, $a1, 0
	blez	$a2, .LBB5_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a2, $a2, -1
	st.w	$a2, $a0, 4
	addi.d	$a0, $a0, 40
	move	$fp, $a1
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 8
	addi.d	$a0, $a0, 3
	st.w	$a0, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_2:
	addi.d	$a0, $a0, 16
	pcaddu18i	$t8, %call36(addList)
	jr	$t8
.Lfunc_end5:
	.size	put_in_hosp, .Lfunc_end5-put_in_hosp
                                        # -- End function
	.globl	generate_patient                # -- Begin function generate_patient
	.p2align	5
	.type	generate_patient,@function
generate_patient:                       # @generate_patient
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 184
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 323584
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa1, $fa0, $fa1
	ftintrz.l.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	lu12i.w	$a0, 243269
	ori	$a0, $a0, 2589
	lu32i.d	$a0, 348127
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	fst.d	$fa1, $fp, 184
	bcnez	$fcc0, .LBB6_2
# %bb.1:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	st.d	$fp, $a0, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_2:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	generate_patient, .Lfunc_end6-generate_patient
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(dealwithargs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(max_level)
	ld.w	$a0, $a0, %pc_lo12(max_level)
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(alloc_tree)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(max_time)
	ld.d	$a0, $s2, %pc_lo12(max_time)
	blez	$a0, .LBB7_5
# %bb.1:                                # %.lr.ph.preheader
	lu12i.w	$a0, 335544
	ori	$s3, $a0, 1311
	ori	$s4, $zero, 50
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	move	$s1, $zero
	move	$s5, $zero
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sim)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(max_time)
	addi.d	$s5, $s5, 1
	addi.w	$s1, $s1, 1
	bge	$s5, $a0, .LBB7_5
.LBB7_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s1, 31, 0
	mul.d	$a0, $a0, $s3
	srli.d	$a0, $a0, 36
	mul.w	$a0, $a0, $s4
	bne	$a0, $s1, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB7_2
.LBB7_5:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_results)
	jirl	$ra, $ra, 0
	srli.d	$a2, $a0, 32
	movgr2fr.w	$fs0, $a0
	movgr2fr.w	$fs1, $a2
	movgr2fr.w	$fs2, $a1
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fs1, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fs2, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
	.size	main, .Lfunc_end7-main
                                        # -- End function
	.globl	sim                             # -- Begin function sim
	.p2align	5
	.type	sim,@function
sim:                                    # @sim
# %bb.0:
	addi.d	$sp, $sp, -96
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
	beqz	$a0, .LBB8_44
# %bb.1:                                # %.preheader46.preheader
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(sim)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sim)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sim)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sim)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s1, $fp, 80
	addi.d	$s0, $fp, 104
	beqz	$s5, .LBB8_8
# %bb.2:                                # %.preheader
	ld.d	$s7, $s5, 0
	beqz	$s7, .LBB8_8
# %bb.3:                                # %.lr.ph.preheader
	ori	$s8, $zero, 3
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_4:                                #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
.LBB8_5:                                # %put_in_hosp.exit
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a1, $s7, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB8_8
.LBB8_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s7, 8
	ld.w	$a1, $s6, 0
	ld.w	$a0, $fp, 68
	addi.d	$a1, $a1, 1
	st.w	$a1, $s6, 0
	blez	$a0, .LBB8_4
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 68
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	st.w	$s8, $s6, 8
	addi.d	$a0, $a0, 3
	st.w	$a0, $s6, 4
	b	.LBB8_5
.LBB8_8:                                # %.loopexit
	beqz	$s4, .LBB8_15
# %bb.9:                                # %.preheader.1
	ld.d	$s6, $s4, 0
	beqz	$s6, .LBB8_15
# %bb.10:                               # %.lr.ph.1.preheader
	ori	$s7, $zero, 3
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_11:                               #   in Loop: Header=BB8_13 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 68
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 4
	st.w	$s7, $s5, 8
	addi.d	$a0, $a0, 3
	st.w	$a0, $s5, 4
.LBB8_12:                               # %put_in_hosp.exit.1
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.d	$a1, $s6, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB8_15
.LBB8_13:                               # %.lr.ph.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s6, 8
	ld.w	$a1, $s5, 0
	ld.w	$a0, $fp, 68
	addi.d	$a1, $a1, 1
	st.w	$a1, $s5, 0
	bgtz	$a0, .LBB8_11
# %bb.14:                               #   in Loop: Header=BB8_13 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	b	.LBB8_12
.LBB8_15:                               # %.loopexit.1
	beqz	$s3, .LBB8_22
# %bb.16:                               # %.preheader.2
	ld.d	$s5, $s3, 0
	beqz	$s5, .LBB8_22
# %bb.17:                               # %.lr.ph.2.preheader
	ori	$s6, $zero, 3
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_18:                               #   in Loop: Header=BB8_20 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 68
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	st.w	$s6, $s4, 8
	addi.d	$a0, $a0, 3
	st.w	$a0, $s4, 4
.LBB8_19:                               # %put_in_hosp.exit.2
                                        #   in Loop: Header=BB8_20 Depth=1
	ld.d	$a1, $s5, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB8_22
.LBB8_20:                               # %.lr.ph.2
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s5, 8
	ld.w	$a1, $s4, 0
	ld.w	$a0, $fp, 68
	addi.d	$a1, $a1, 1
	st.w	$a1, $s4, 0
	bgtz	$a0, .LBB8_18
# %bb.21:                               #   in Loop: Header=BB8_20 Depth=1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	b	.LBB8_19
.LBB8_22:                               # %.loopexit.2
	beqz	$s2, .LBB8_29
# %bb.23:                               # %.preheader.3
	ld.d	$s4, $s2, 0
	beqz	$s4, .LBB8_29
# %bb.24:                               # %.lr.ph.3.preheader
	ori	$s5, $zero, 3
	b	.LBB8_27
	.p2align	4, , 16
.LBB8_25:                               #   in Loop: Header=BB8_27 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 68
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	st.w	$s5, $s3, 8
	addi.d	$a0, $a0, 3
	st.w	$a0, $s3, 4
.LBB8_26:                               # %put_in_hosp.exit.3
                                        #   in Loop: Header=BB8_27 Depth=1
	ld.d	$a1, $s4, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB8_29
.LBB8_27:                               # %.lr.ph.3
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s4, 8
	ld.w	$a1, $s3, 0
	ld.w	$a0, $fp, 68
	addi.d	$a1, $a1, 1
	st.w	$a1, $s3, 0
	bgtz	$a0, .LBB8_25
# %bb.28:                               #   in Loop: Header=BB8_27 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	b	.LBB8_26
.LBB8_29:                               # %.loopexit.3
	ld.d	$s5, $fp, 128
	beqz	$s5, .LBB8_34
# %bb.30:                               # %.lr.ph.i
	addi.d	$s2, $fp, 128
	addi.d	$s3, $fp, 40
	b	.LBB8_32
	.p2align	4, , 16
.LBB8_31:                               #   in Loop: Header=BB8_32 Depth=1
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB8_34
.LBB8_32:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s5, 8
	ld.w	$a0, $s4, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s4, 8
	bnez	$a0, .LBB8_31
# %bb.33:                               #   in Loop: Header=BB8_32 Depth=1
	ld.w	$a0, $fp, 68
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 68
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	b	.LBB8_31
.LBB8_34:                               # %check_patients_inside.exit
	ld.d	$a1, $fp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(check_patients_assess)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 80
	move	$s2, $a0
	beqz	$s4, .LBB8_41
# %bb.35:                               # %.lr.ph.i40
	ld.w	$a0, $fp, 68
	blez	$a0, .LBB8_40
# %bb.36:
	ori	$s5, $zero, 3
	ld.d	$s3, $s4, 8
	blez	$a0, .LBB8_38
	.p2align	4, , 16
.LBB8_37:
	ld.w	$a1, $s3, 4
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 68
	st.w	$s5, $s3, 8
	addi.d	$a0, $a1, 3
	st.w	$a0, $s3, 4
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(removeList)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB8_39
	b	.LBB8_41
	.p2align	4, , 16
.LBB8_38:
	ld.w	$a0, $s3, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 4
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB8_41
.LBB8_39:                               # %.lr.ph.splitthread-pre-split.i
	ld.w	$a0, $fp, 68
	ld.d	$s3, $s4, 8
	bgtz	$a0, .LBB8_37
	b	.LBB8_38
	.p2align	4, , 16
.LBB8_40:                               # %.lr.ph.split.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 8
	ld.w	$a1, $a0, 4
	ld.d	$s4, $s4, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 4
	bnez	$s4, .LBB8_40
.LBB8_41:                               # %check_patients_waiting.exit
	ld.d	$a0, $fp, 184
	pcaddu18i	$ra, %call36(my_rand)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 323584
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa1, $fa0, $fa1
	ftintrz.l.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	lu12i.w	$a0, 243269
	ori	$a0, $a0, 2589
	lu32i.d	$a0, 348127
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	fst.d	$fa1, $fp, 184
	bcnez	$fcc0, .LBB8_46
# %bb.42:                               # %generate_patient.exit
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.w	$a0, $fp, 68
	st.w	$zero, $s3, 8
	st.d	$fp, $s3, 16
	ori	$a1, $zero, 1
	st.d	$a1, $s3, 0
	blez	$a0, .LBB8_45
# %bb.43:
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 68
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	ori	$a1, $zero, 3
	st.w	$a1, $s3, 8
	addi.d	$a0, $a0, 3
	st.w	$a0, $s3, 4
	b	.LBB8_46
.LBB8_44:
	move	$s2, $zero
	b	.LBB8_46
.LBB8_45:
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(addList)
	jirl	$ra, $ra, 0
.LBB8_46:                               # %put_in_hosp.exit42
	move	$a0, $s2
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
.Lfunc_end8:
	.size	sim, .Lfunc_end8-sim
                                        # -- End function
	.type	seed,@object                    # @seed
	.bss
	.globl	seed
	.p2align	3, 0x0
seed:
	.dword	0                               # 0x0
	.size	seed, 8

	.type	max_level,@object               # @max_level
	.globl	max_level
	.p2align	2, 0x0
max_level:
	.word	0                               # 0x0
	.size	max_level, 4

	.type	max_time,@object                # @max_time
	.globl	max_time
	.p2align	3, 0x0
max_time:
	.dword	0                               # 0x0
	.size	max_time, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%d\n"
	.size	.L.str.2, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"# of people treated:              %f people\n"
	.size	.L.str.5, 45

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Average length of stay:           %0.2f time units\n"
	.size	.L.str.6, 52

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Average # of hospitals visited:   %f hospitals\n\n"
	.size	.L.str.7, 49

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\n\n    Columbian Health Care Simulator\n"
	.size	.Lstr, 39

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Working..."
	.size	.Lstr.1, 11

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Getting Results"
	.size	.Lstr.2, 16

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Done.\n"
	.size	.Lstr.3, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
