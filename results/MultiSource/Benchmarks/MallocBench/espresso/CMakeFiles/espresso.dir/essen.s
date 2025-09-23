	.file	"essen.c"
	.text
	.globl	essential                       # -- Begin function essential
	.p2align	5
	.type	essential,@function
essential:                              # @essential
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
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_active)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s2, 0
	mul.w	$a1, $a2, $a1
	move	$s3, $a0
	blez	$a1, .LBB0_10
# %bb.1:                                # %.lr.ph
	ld.d	$s4, $s2, 24
	alsl.d	$fp, $a1, $s4, 2
	lu12i.w	$a0, 4
	ori	$s1, $a0, 1024
	ori	$s5, $zero, 1024
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -3
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	st.w	$a1, $s4, 0
	ld.w	$a1, $s2, 16
	move	$s3, $a0
	addi.d	$a0, $a1, -1
	st.w	$a0, $s2, 16
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s2, 0
	alsl.d	$s4, $a0, $s4, 2
	bgeu	$s4, $fp, .LBB0_10
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $s4, 0
	and	$a0, $a0, $s1
	bne	$a0, $s5, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cb_consensus)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cube_is_covered)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s8, $a0
	beqz	$a1, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %essen_cube.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB0_3
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_2
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_10:                               # %._crit_edge
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_inactive)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
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
.Lfunc_end0:
	.size	essential, .Lfunc_end0-essential
                                        # -- End function
	.globl	essen_cube                      # -- Begin function essen_cube
	.p2align	5
	.type	essen_cube,@function
essen_cube:                             # @essen_cube
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cb_consensus)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cube_is_covered)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s1, $a0
	beqz	$a1, .LBB1_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	sltui	$s0, $s1, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	essen_cube, .Lfunc_end1-essen_cube
                                        # -- End function
	.globl	cb_consensus                    # -- Begin function cb_consensus
	.p2align	5
	.type	cb_consensus,@function
cb_consensus:                           # @cb_consensus
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	slli.w	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s1, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $s1, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s1, 0
	move	$s1, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB2_2
# %bb.1:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	move	$s2, $a0
	blez	$a1, .LBB2_11
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$s3, $fp, 24
	alsl.d	$s4, $a1, $s3, 2
	ori	$s5, $zero, 1
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(consensus)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
.LBB2_5:                                #   in Loop: Header=BB2_7 Depth=1
	move	$s1, $a0
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $fp, 0
	alsl.d	$s3, $a0, $s3, 2
	bgeu	$s3, $s4, .LBB2_11
.LBB2_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beq	$s3, $s0, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cdist01)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB2_4
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	bnez	$a0, .LBB2_6
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cb_consensus_dist0)
	jirl	$ra, $ra, 0
	b	.LBB2_5
.LBB2_11:                               # %._crit_edge
	beqz	$s2, .LBB2_13
# %bb.12:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_13:
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
.Lfunc_end2:
	.size	cb_consensus, .Lfunc_end2-cb_consensus
                                        # -- End function
	.globl	cb_consensus_dist0              # -- Begin function cb_consensus_dist0
	.p2align	5
	.type	cb_consensus_dist0,@function
cb_consensus_dist0:                     # @cb_consensus_dist0
# %bb.0:
	addi.d	$sp, $sp, -160
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
	move	$s0, $a2
	move	$s1, $a1
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$s3, $a0, 0
	ld.d	$s6, $a0, 8
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(setp_implies)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_35
# %bb.1:
	ld.w	$s2, $s5, 0
	ori	$fp, $zero, 8
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB3_3
# %bb.2:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB3_3:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s3, 0
	ld.wu	$a2, $s1, 0
	move	$s2, $a0
	srli.d	$a0, $a1, 10
	andi	$a3, $a2, 1023
	bstrins.d	$a2, $a0, 63, 10
	sltu	$a0, $zero, $a3
	sub.d	$a0, $a3, $a0
	addi.d	$a0, $a0, 1
	st.w	$a2, $s3, 0
	bgeu	$a0, $fp, .LBB3_22
.LBB3_4:
	move	$a1, $a3
.LBB3_5:                                # %scalar.ph.preheader
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s3, 2
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a1, $a1, $s1, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	andn	$a5, $a5, $a6
	st.w	$a5, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a0, .LBB3_6
.LBB3_7:                                # %.loopexit124
	ld.wu	$a0, $s6, 0
	ld.wu	$a1, $s1, 0
	srli.d	$a0, $a0, 10
	andi	$a2, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	st.w	$a1, $s6, 0
	addi.d	$a0, $a2, 1
	slli.d	$a1, $a2, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	ldx.w	$a4, $s0, $a1
	and	$a3, $a4, $a3
	stx.w	$a3, $s6, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a2, $a0, .LBB3_8
# %bb.9:
	ld.w	$s7, $s5, 8
	ld.w	$a0, $s5, 4
	bge	$s7, $a0, .LBB3_27
# %bb.10:                               # %.lr.ph.preheader
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s6, $s2
	sltui	$a0, $a0, 16
	sltui	$a1, $a1, 16
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s2, -12
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s6, -12
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s0, -12
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_11:                               # %.loopexit
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	ld.w	$a0, $s5, 4
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB3_28
.LBB3_13:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
                                        #     Child Loop BB3_18 Depth 2
	ld.d	$a0, $s5, 72
	slli.d	$a1, $s7, 3
	ldx.d	$s4, $a0, $a1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_12
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a2, $s0, 0
	srli.d	$a0, $a0, 10
	andi	$a6, $a2, 1023
	bstrins.d	$a2, $a0, 63, 10
	sltu	$a0, $zero, $a6
	sub.d	$a0, $a6, $a0
	addi.d	$a1, $a0, 1
	st.w	$a2, $s2, 0
	ori	$a0, $zero, 4
	bltu	$a1, $a0, .LBB3_16
# %bb.15:                               # %vector.memcheck98
                                        #   in Loop: Header=BB3_13 Depth=1
	sub.d	$a0, $s4, $s2
	sltui	$a0, $a0, 16
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a0, $a2
	beqz	$a0, .LBB3_19
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	move	$a0, $a6
.LBB3_17:                               # %scalar.ph105.preheader
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s2, 2
	alsl.d	$a3, $a0, $s6, 2
	alsl.d	$a4, $a0, $s4, 2
	alsl.d	$a0, $a0, $s0, 2
	.p2align	4, , 16
.LBB3_18:                               # %scalar.ph105
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a0, 0
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a3, 0
	and	$a5, $a6, $a5
	andn	$a6, $a7, $a6
	or	$a5, $a6, $a5
	st.w	$a5, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a4, $a4, -4
	addi.d	$a0, $a0, -4
	bltu	$s8, $a1, .LBB3_18
	b	.LBB3_11
.LBB3_19:                               # %vector.ph107
                                        #   in Loop: Header=BB3_13 Depth=1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 1, 0
	sub.d	$a0, $a6, $a2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a3, 2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 2
	alsl.d	$a5, $a6, $s4, 2
	addi.d	$a5, $a5, -12
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a6, $a6, $a7, 2
	move	$a7, $a2
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB3_20:                               # %vector.body110
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, 0
	vand.v	$vr0, $vr1, $vr0
	vxor.v	$vr1, $vr1, $vr3
	vand.v	$vr1, $vr2, $vr1
	vor.v	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a7, $a7, -4
	addi.d	$a3, $a3, -16
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, -16
	bnez	$a7, .LBB3_20
# %bb.21:                               # %middle.block121
                                        #   in Loop: Header=BB3_13 Depth=1
	beq	$a1, $a2, .LBB3_11
	b	.LBB3_17
.LBB3_22:                               # %vector.memcheck
	sub.d	$a2, $s1, $s3
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB3_4
# %bb.23:                               # %vector.memcheck
	sub.d	$a2, $s0, $s3
	bltu	$a2, $a1, .LBB3_4
# %bb.24:                               # %vector.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	sub.d	$a1, $a3, $a2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a3, -12
	add.d	$a3, $s3, $a5
	add.d	$a4, $s0, $a5
	add.d	$a5, $s1, $a5
	vrepli.b	$vr0, -1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a5, 0
	vxor.v	$vr1, $vr1, $vr0
	vand.v	$vr1, $vr2, $vr1
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, -16
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, -16
	bnez	$a6, .LBB3_25
# %bb.26:                               # %middle.block
	bne	$a0, $a2, .LBB3_5
	b	.LBB3_7
.LBB3_27:
	ori	$a0, $zero, 1
	bnez	$a0, .LBB3_29
	b	.LBB3_33
.LBB3_28:                               # %._crit_edge.loopexit
	ld.w	$s7, $s5, 8
	sltui	$a0, $fp, 1
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_33
.LBB3_29:                               # %._crit_edge
	blez	$s7, .LBB3_33
# %bb.30:
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s1, 0
	srli.d	$a0, $a0, 10
	andi	$a2, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	st.w	$a1, $s2, 0
	addi.d	$a0, $a2, 1
	slli.d	$a1, $a2, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_31:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	ldx.w	$a4, $s0, $a1
	and	$a3, $a4, $a3
	stx.w	$a3, $s2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a2, $a0, .LBB3_31
# %bb.32:                               # %.thread
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB3_34
.LBB3_33:
	beqz	$s2, .LBB3_35
.LBB3_34:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_35:
	move	$a0, $s4
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
.Lfunc_end3:
	.size	cb_consensus_dist0, .Lfunc_end3-cb_consensus_dist0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ESSENTIAL: %s\n"
	.size	.L.str, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
