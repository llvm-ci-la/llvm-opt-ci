	.file	"sharp.c"
	.text
	.globl	cv_sharp                        # -- Begin function cv_sharp
	.p2align	5
	.type	cv_sharp,@function
cv_sharp:                               # @cv_sharp
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s3, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s3, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	mul.w	$a1, $a2, $a1
	move	$s1, $a0
	blez	$a1, .LBB0_6
# %bb.1:                                # %.lr.ph
	ld.d	$s2, $s0, 24
	alsl.d	$s4, $a1, $s2, 2
	pcalau12i	$s5, %pc_hi20(start_time)
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	st.d	$a0, $s5, %pc_lo12(start_time)
	addi.w	$a3, $a1, -1
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cb_recur_sharp)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %cb_sharp.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	alsl.d	$s2, $a1, $s2, 2
	move	$s1, $a0
	bgeu	$s2, $s4, .LBB0_6
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 12
	bnez	$a0, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $s3, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_6:                                # %._crit_edge
	move	$a0, $s1
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
	.size	cv_sharp, .Lfunc_end0-cv_sharp
                                        # -- End function
	.globl	cb_sharp                        # -- Begin function cb_sharp
	.p2align	5
	.type	cb_sharp,@function
cb_sharp:                               # @cb_sharp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 12
	move	$fp, $a0
	beqz	$a1, .LBB1_2
# %bb.1:
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	pcalau12i	$a2, %pc_hi20(start_time)
	addi.w	$a3, $a1, -1
	st.d	$a0, $a2, %pc_lo12(start_time)
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a4, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cb_recur_sharp)
	jr	$t8
.LBB1_2:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(sf_addset)
	jr	$t8
.Lfunc_end1:
	.size	cb_sharp, .Lfunc_end1-cb_sharp
                                        # -- End function
	.globl	cb_recur_sharp                  # -- Begin function cb_recur_sharp
	.p2align	5
	.type	cb_recur_sharp,@function
cb_recur_sharp:                         # @cb_recur_sharp
# %bb.0:
	bne	$a2, $a3, .LBB2_2
# %bb.1:
	ld.w	$a3, $a1, 0
	ld.d	$a1, $a1, 24
	mul.w	$a2, $a3, $a2
	alsl.d	$a1, $a2, $a1, 2
	pcaddu18i	$t8, %call36(sharp)
	jr	$t8
.LBB2_2:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a4
	add.d	$a4, $a3, $a2
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srai.d	$s1, $a4, 1
	addi.w	$s2, $fp, 1
	move	$s3, $a0
	move	$s4, $a1
	move	$s5, $a3
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cb_recur_sharp)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a2, $s1, 1
	move	$a0, $s3
	move	$a1, $s4
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cb_recur_sharp)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cv_intersect)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$s2, $a0
	blt	$a1, $fp, .LBB2_5
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.wu	$a0, $a0, 0
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	beqz	$a0, .LBB2_5
# %bb.4:
	ld.w	$s3, $s2, 12
	ld.w	$s4, $s0, 12
	ld.w	$s5, $s1, 12
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(start_time)
	ld.d	$a1, $a1, %pc_lo12(start_time)
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB2_5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
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
.Lfunc_end2:
	.size	cb_recur_sharp, .Lfunc_end2-cb_recur_sharp
                                        # -- End function
	.globl	sharp                           # -- Begin function sharp
	.p2align	5
	.type	sharp,@function
sharp:                                  # @sharp
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
	move	$s4, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	ld.d	$s2, $a0, 16
	ld.w	$a0, $s5, 4
	ld.w	$a1, $s5, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cdist0)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_7
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 4
	blez	$a0, .LBB3_6
# %bb.2:                                # %.lr.ph
	move	$s4, $zero
	move	$s6, $zero
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 4
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 8
	bge	$s6, $a0, .LBB3_6
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 72
	ldx.d	$a2, $a0, $s4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(setp_empty)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 72
	ldx.d	$a2, $a0, $s4
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 12
	ld.w	$a1, $s3, 0
	ld.d	$a2, $s3, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s3, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a2, 2
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	b	.LBB3_3
.LBB3_6:                                # %.loopexit
	move	$a0, $s3
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
.LBB3_7:
	move	$a0, $s3
	move	$a1, $fp
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
	pcaddu18i	$t8, %call36(sf_addset)
	jr	$t8
.Lfunc_end3:
	.size	sharp, .Lfunc_end3-sharp
                                        # -- End function
	.globl	make_disjoint                   # -- Begin function make_disjoint
	.p2align	5
	.type	make_disjoint,@function
make_disjoint:                          # @make_disjoint
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	move	$s0, $a0
	blez	$a1, .LBB4_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s2, $a1, $s1, 2
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cb_dsharp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	alsl.d	$s1, $a1, $s1, 2
	move	$s0, $a0
	bltu	$s1, $s2, .LBB4_2
.LBB4_3:                                # %._crit_edge
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	make_disjoint, .Lfunc_end4-make_disjoint
                                        # -- End function
	.globl	cv_dsharp                       # -- Begin function cv_dsharp
	.p2align	5
	.type	cv_dsharp,@function
cv_dsharp:                              # @cv_dsharp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	mul.w	$a1, $a2, $a1
	move	$s1, $a0
	blez	$a1, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$s2, $s0, 24
	alsl.d	$s3, $a1, $s2, 2
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cb_dsharp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	alsl.d	$s2, $a1, $s2, 2
	move	$s1, $a0
	bltu	$s2, $s3, .LBB5_2
.LBB5_3:                                # %._crit_edge
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	cv_dsharp, .Lfunc_end5-cv_dsharp
                                        # -- End function
	.globl	cb1_dsharp                      # -- Begin function cb1_dsharp
	.p2align	5
	.type	cb1_dsharp,@function
cb1_dsharp:                             # @cb1_dsharp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	move	$s1, $a0
	blez	$a1, .LBB6_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$s2, $fp, 24
	alsl.d	$s3, $a1, $s2, 2
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dsharp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	alsl.d	$s2, $a1, $s2, 2
	move	$s1, $a0
	bltu	$s2, $s3, .LBB6_2
.LBB6_3:                                # %._crit_edge
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	cb1_dsharp, .Lfunc_end6-cb1_dsharp
                                        # -- End function
	.globl	cb_dsharp                       # -- Begin function cb_dsharp
	.p2align	5
	.type	cb_dsharp,@function
cb_dsharp:                              # @cb_dsharp
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
	move	$fp, $a1
	ld.w	$a2, $a1, 12
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s4, 0
	beqz	$a2, .LBB7_7
# %bb.1:
	move	$a0, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s0, 0
	ld.d	$a2, $s0, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a2, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 0
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB7_8
# %bb.2:                                # %.lr.ph.preheader
	ld.d	$s1, $fp, 24
	alsl.d	$s5, $a0, $s1, 2
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %cb1_dsharp.exit
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	alsl.d	$s1, $a0, $s1, 2
	move	$s0, $s2
	bgeu	$s1, $s5, .LBB7_9
.LBB7_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s4, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	mul.w	$a1, $a2, $a1
	move	$s2, $a0
	blez	$a1, .LBB7_3
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$s3, $s0, 24
	alsl.d	$s6, $a1, $s3, 2
	.p2align	4, , 16
.LBB7_6:                                # %.lr.ph.i
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dsharp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	alsl.d	$s3, $a1, $s3, 2
	move	$s2, $a0
	bltu	$s3, $s6, .LBB7_6
	b	.LBB7_3
.LBB7_7:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$a1, $s1
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
	pcaddu18i	$t8, %call36(sf_addset)
	jr	$t8
.LBB7_8:
	move	$s2, $s0
.LBB7_9:                                # %.loopexit
	move	$a0, $s2
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
.Lfunc_end7:
	.size	cb_dsharp, .Lfunc_end7-cb_dsharp
                                        # -- End function
	.globl	dsharp                          # -- Begin function dsharp
	.p2align	5
	.type	dsharp,@function
dsharp:                                 # @dsharp
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$s6, $a0, 0
	ld.w	$a0, $s5, 4
	ld.w	$a1, $s5, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cdist0)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_49
# %bb.1:
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	ld.w	$s1, $s5, 0
	ori	$s3, $zero, 8
	ori	$fp, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $fp, .LBB8_3
# %bb.2:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB8_3:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, 0
	move	$s1, $a0
	blt	$s4, $fp, .LBB8_5
# %bb.4:
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s3, $a0, 8
.LBB8_5:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s5, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s3, $a1, .LBB8_7
# %bb.6:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB8_7:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 4
	move	$s3, $a0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	blez	$a1, .LBB8_42
# %bb.8:                                # %.lr.ph
	move	$s7, $zero
	addi.d	$a0, $s6, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a0, $a3, $s6
	sub.d	$a1, $s3, $s6
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a2, $a4, $s6
	sltui	$a2, $a2, 32
	sltui	$a1, $a1, 32
	or	$a2, $a2, $a1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	sltui	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a4, -12
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s6, -12
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s3, -12
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a3, -12
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_9:                                # %.loopexit
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.w	$a0, $s5, 4
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB8_42
.LBB8_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_22 Depth 2
                                        #     Child Loop BB8_25 Depth 2
                                        #     Child Loop BB8_29 Depth 2
                                        #     Child Loop BB8_32 Depth 2
                                        #     Child Loop BB8_38 Depth 2
                                        #     Child Loop BB8_41 Depth 2
	ld.d	$a0, $s5, 72
	slli.d	$fp, $s7, 3
	ldx.d	$a1, $a0, $fp
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_9
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=1
	ld.w	$a0, $s4, 12
	ld.d	$a1, $s5, 72
	ld.d	$s2, $s4, 24
	ld.w	$a3, $s4, 0
	addi.d	$a4, $a0, 1
	ldx.d	$a2, $a1, $fp
	st.w	$a4, $s4, 12
	mul.w	$s0, $a0, $a3
	alsl.d	$s4, $s0, $s2, 2
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 0
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a1, $a7, 0
	srli.d	$a0, $a0, 10
	andi	$a5, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	sltu	$a0, $zero, $a5
	sub.d	$a0, $a5, $a0
	addi.d	$a0, $a0, 1
	sltui	$a2, $a0, 8
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	andi	$a2, $a2, 1
	st.w	$a1, $s6, 0
	beqz	$a2, .LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_10 Depth=1
	move	$a1, $a5
	b	.LBB8_16
.LBB8_13:                               # %vector.ph180
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a5, $a2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 2
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a6, 2
	move	$a6, $a2
	.p2align	4, , 16
.LBB8_14:                               # %vector.body183
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB8_14
# %bb.15:                               # %middle.block197
                                        #   in Loop: Header=BB8_10 Depth=1
	beq	$a0, $a2, .LBB8_18
.LBB8_16:                               # %scalar.ph178.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s6, 2
	alsl.d	$a3, $a1, $s3, 2
	alsl.d	$a1, $a1, $a7, 2
	.p2align	4, , 16
.LBB8_17:                               # %scalar.ph178
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a3, 0
	and	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB8_17
.LBB8_18:                               # %.loopexit202
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB8_24
# %bb.19:                               # %vector.memcheck139
                                        #   in Loop: Header=BB8_10 Depth=1
	add.d	$a3, $a2, $s0
	alsl.d	$a3, $a3, $s2, 2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	bgeu	$a3, $a4, .LBB8_21
# %bb.20:                               # %vector.memcheck139
                                        #   in Loop: Header=BB8_10 Depth=1
	add.d	$a3, $s0, $a1
	alsl.d	$a3, $a3, $s2, 2
	addi.d	$a3, $a3, 4
	alsl.d	$a2, $a2, $s6, 2
	bltu	$a2, $a3, .LBB8_24
.LBB8_21:                               # %vector.ph153
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	slli.d	$a4, $s0, 2
	alsl.d	$a4, $a1, $a4, 2
	add.d	$a4, $s2, $a4
	addi.d	$a4, $a4, -12
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB8_22:                               # %vector.body156
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	addi.d	$a1, $a1, -32
	bnez	$a5, .LBB8_22
# %bb.23:                               # %middle.block170
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB8_26
	.p2align	4, , 16
.LBB8_24:                               # %scalar.ph151.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	addi.d	$a0, $a1, 1
	slli.d	$a2, $a1, 2
	alsl.d	$a1, $a1, $s6, 2
	alsl.d	$a2, $s0, $a2, 2
	add.d	$a2, $s2, $a2
	.p2align	4, , 16
.LBB8_25:                               # %scalar.ph151
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bltu	$s8, $a0, .LBB8_25
.LBB8_26:                               # %.loopexit201
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.d	$a0, $s5, 72
	ldx.d	$a2, $a0, $fp
	move	$a0, $s3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 0
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.wu	$a1, $a7, 0
	srli.d	$a0, $a0, 10
	andi	$a5, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	sltu	$a0, $zero, $a5
	sub.d	$a0, $a5, $a0
	addi.d	$a0, $a0, 1
	sltui	$a2, $a0, 8
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	andi	$a2, $a2, 1
	st.w	$a1, $s6, 0
	beqz	$a2, .LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_10 Depth=1
	move	$a1, $a5
	b	.LBB8_31
.LBB8_28:                               # %vector.ph119
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a5, $a2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 2
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a6, 2
	move	$a6, $a2
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB8_29:                               # %vector.body122
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vld	$vr1, $a5, -16
	vld	$vr2, $a3, 0
	vld	$vr3, $a3, -16
	vxor.v	$vr0, $vr0, $vr4
	vxor.v	$vr1, $vr1, $vr4
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB8_29
# %bb.30:                               # %middle.block136
                                        #   in Loop: Header=BB8_10 Depth=1
	beq	$a0, $a2, .LBB8_33
.LBB8_31:                               # %scalar.ph117.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s6, 2
	alsl.d	$a3, $a1, $s3, 2
	alsl.d	$a1, $a1, $a7, 2
	.p2align	4, , 16
.LBB8_32:                               # %scalar.ph117
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a3, 0
	andn	$a4, $a4, $a5
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB8_32
.LBB8_33:                               # %.loopexit200
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB8_35
# %bb.34:                               #   in Loop: Header=BB8_10 Depth=1
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB8_40
.LBB8_35:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_10 Depth=1
	add.d	$a3, $a2, $s0
	alsl.d	$a3, $a3, $s2, 2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	bgeu	$a3, $a4, .LBB8_37
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_10 Depth=1
	add.d	$a3, $s0, $a1
	alsl.d	$a3, $a3, $s2, 2
	addi.d	$a3, $a3, 4
	alsl.d	$a2, $a2, $s6, 2
	bltu	$a2, $a3, .LBB8_40
.LBB8_37:                               # %vector.ph
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	slli.d	$a4, $s0, 2
	alsl.d	$a4, $a1, $a4, 2
	add.d	$a4, $s2, $a4
	addi.d	$a4, $a4, -12
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB8_38:                               # %vector.body
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	addi.d	$a1, $a1, -32
	bnez	$a5, .LBB8_38
# %bb.39:                               # %middle.block
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB8_9
	.p2align	4, , 16
.LBB8_40:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	addi.d	$a0, $a1, 1
	slli.d	$a2, $a1, 2
	alsl.d	$a1, $a1, $s6, 2
	alsl.d	$a2, $s0, $a2, 2
	add.d	$a2, $s2, $a2
	.p2align	4, , 16
.LBB8_41:                               # %scalar.ph
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bltu	$s8, $a0, .LBB8_41
	b	.LBB8_9
.LBB8_42:                               # %._crit_edge
	beqz	$s1, .LBB8_44
# %bb.43:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_44:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB8_46
# %bb.45:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_46:
	beqz	$s3, .LBB8_48
# %bb.47:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_48:
	move	$a0, $s4
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB8_49:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	pcaddu18i	$t8, %call36(sf_addset)
	jr	$t8
.Lfunc_end8:
	.size	dsharp, .Lfunc_end8-dsharp
                                        # -- End function
	.globl	cv_intersect                    # -- Begin function cv_intersect
	.p2align	5
	.type	cv_intersect,@function
cv_intersect:                           # @cv_intersect
# %bb.0:
	addi.d	$sp, $sp, -112
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
	move	$fp, $a1
	move	$s8, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s7, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s7, 0
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 12
	ld.w	$a1, $s8, 0
	mul.w	$a2, $a1, $a2
	move	$s2, $a0
	blez	$a2, .LBB9_15
# %bb.1:                                # %.lr.ph56
	ld.d	$s1, $s8, 24
	ld.d	$s4, $s2, 24
	ld.w	$a0, $fp, 0
	move	$s3, $zero
	alsl.d	$a2, $a2, $s1, 2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a1, $s8, 0
.LBB9_3:                                # %._crit_edge
                                        #   in Loop: Header=BB9_4 Depth=1
	alsl.d	$s1, $a1, $s1, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s1, $a2, .LBB9_13
.LBB9_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
	ld.w	$a2, $fp, 12
	mul.w	$a2, $a0, $a2
	blez	$a2, .LBB9_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$s5, $fp, 24
	alsl.d	$s0, $a2, $s5, 2
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_6:                                #   in Loop: Header=BB9_8 Depth=2
	ld.w	$a0, $s2, 0
	alsl.d	$s4, $a0, $s4, 2
.LBB9_7:                                #   in Loop: Header=BB9_8 Depth=2
	ld.w	$a0, $fp, 0
	alsl.d	$s5, $a0, $s5, 2
	bgeu	$s5, $s0, .LBB9_2
.LBB9_8:                                # %.lr.ph
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cdist0)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_7
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 12
	ld.w	$a1, $s2, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s2, 12
	blt	$a0, $a1, .LBB9_6
# %bb.10:                               #   in Loop: Header=BB9_8 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$s3, .LBB9_12
# %bb.11:                               #   in Loop: Header=BB9_8 Depth=2
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB9_12:                               #   in Loop: Header=BB9_8 Depth=2
	ld.w	$a1, $s7, 0
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s4, $a0, 24
	move	$s3, $s6
	b	.LBB9_7
.LBB9_13:                               # %._crit_edge57
	beqz	$s3, .LBB9_15
# %bb.14:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
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
	pcaddu18i	$t8, %call36(sf_union)
	jr	$t8
.LBB9_15:                               # %._crit_edge57.thread
	move	$a0, $s2
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
	pcaddu18i	$t8, %call36(sf_contain)
	jr	$t8
.Lfunc_end9:
	.size	cv_intersect, .Lfunc_end9-cv_intersect
                                        # -- End function
	.type	start_time,@object              # @start_time
	.bss
	.globl	start_time
	.p2align	3, 0x0
start_time:
	.dword	0                               # 0x0
	.size	start_time, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"# SHARP[%d]: %4d = %4d x %4d, time = %s\n"
	.size	.L.str, 41

	.section	".note.GNU-stack","",@progbits
	.addrsig
