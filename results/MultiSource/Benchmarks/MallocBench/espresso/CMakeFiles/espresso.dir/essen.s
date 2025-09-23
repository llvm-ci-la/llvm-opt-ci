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
	move	$s1, $a2
	move	$s4, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$s3, $a0, 0
	ld.d	$s6, $a0, 8
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(setp_implies)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_44
# %bb.1:
	ld.w	$s2, $s5, 0
	ori	$s0, $zero, 8
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
	ld.wu	$a2, $s4, 0
	move	$s2, $a0
	srli.d	$a0, $a1, 10
	andi	$a3, $a2, 1023
	bstrins.d	$a2, $a0, 63, 10
	sltu	$a0, $zero, $a3
	sub.d	$a0, $a3, $a0
	addi.d	$a0, $a0, 1
	st.w	$a2, $s3, 0
	bgeu	$a0, $s0, .LBB3_24
.LBB3_4:
	move	$a1, $a3
.LBB3_5:                                # %scalar.ph.preheader
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s3, 2
	alsl.d	$a3, $a1, $s1, 2
	alsl.d	$a1, $a1, $s4, 2
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
.LBB3_7:                                # %.loopexit191
	ld.wu	$a0, $s6, 0
	ld.wu	$a1, $s4, 0
	srli.d	$a0, $a0, 10
	andi	$a3, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	sltu	$a0, $zero, $a3
	sub.d	$a0, $a3, $a0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 8
	st.w	$a1, $s6, 0
	bgeu	$a0, $a2, .LBB3_29
.LBB3_8:
	move	$a1, $a3
.LBB3_9:                                # %scalar.ph108.preheader
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s6, 2
	alsl.d	$a3, $a1, $s1, 2
	alsl.d	$a1, $a1, $s4, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_10:                               # %scalar.ph108
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	and	$a5, $a6, $a5
	st.w	$a5, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a0, .LBB3_10
.LBB3_11:                               # %.loopexit190
	ld.w	$s7, $s5, 8
	ld.w	$a0, $s5, 4
	bge	$s7, $a0, .LBB3_34
# %bb.12:                               # %.lr.ph.preheader
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $zero
	sub.d	$a0, $s1, $s2
	sub.d	$a1, $s6, $s2
	sltui	$a0, $a0, 32
	sltui	$a1, $a1, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s1, -12
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s2, -12
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s6, -12
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_13:                               # %.loopexit
                                        #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$s0, $zero, 1
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=1
	ld.w	$a0, $s5, 4
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB3_35
.LBB3_15:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
                                        #     Child Loop BB3_20 Depth 2
	ld.d	$a0, $s5, 72
	slli.d	$a1, $s7, 3
	ldx.d	$s4, $a0, $a1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_14
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a2, $s1, 0
	srli.d	$a0, $a0, 10
	andi	$a6, $a2, 1023
	bstrins.d	$a2, $a0, 63, 10
	sltu	$a0, $zero, $a6
	sub.d	$a0, $a6, $a0
	addi.d	$a1, $a0, 1
	st.w	$a2, $s2, 0
	ori	$a0, $zero, 8
	bltu	$a1, $a0, .LBB3_18
# %bb.17:                               # %vector.memcheck130
                                        #   in Loop: Header=BB3_15 Depth=1
	sub.d	$a0, $s4, $s2
	sltui	$a0, $a0, 32
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	or	$a0, $a0, $a2
	beqz	$a0, .LBB3_21
.LBB3_18:                               #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $a6
.LBB3_19:                               # %scalar.ph137.preheader
                                        #   in Loop: Header=BB3_15 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s2, 2
	alsl.d	$a3, $a0, $s6, 2
	alsl.d	$a4, $a0, $s4, 2
	alsl.d	$a0, $a0, $s1, 2
	.p2align	4, , 16
.LBB3_20:                               # %scalar.ph137
                                        #   Parent Loop BB3_15 Depth=1
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
	bltu	$s8, $a1, .LBB3_20
	b	.LBB3_13
.LBB3_21:                               # %vector.ph139
                                        #   in Loop: Header=BB3_15 Depth=1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $a6, $a2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a3, 2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 2
	alsl.d	$a5, $a6, $s4, 2
	addi.d	$a5, $a5, -12
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a6, $a6, $a7, 2
	move	$a7, $a2
	vld	$vr6, $sp, 16                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB3_22:                               # %vector.body142
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vld	$vr4, $a6, 0
	vld	$vr5, $a6, -16
	vxor.v	$vr2, $vr2, $vr6
	vxor.v	$vr3, $vr3, $vr6
	vand.v	$vr2, $vr4, $vr2
	vand.v	$vr3, $vr5, $vr3
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a7, $a7, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB3_22
# %bb.23:                               # %middle.block160
                                        #   in Loop: Header=BB3_15 Depth=1
	beq	$a1, $a2, .LBB3_13
	b	.LBB3_19
.LBB3_24:                               # %vector.memcheck
	sub.d	$a2, $s4, $s3
	ori	$a1, $zero, 32
	bltu	$a2, $a1, .LBB3_4
# %bb.25:                               # %vector.memcheck
	sub.d	$a2, $s1, $s3
	bltu	$a2, $a1, .LBB3_4
# %bb.26:                               # %vector.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a3, $a2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a3, -12
	add.d	$a3, $s4, $a5
	add.d	$a4, $s3, $a5
	add.d	$a5, $s1, $a5
	vrepli.b	$vr0, -1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_27:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a5, -16
	vld	$vr3, $a3, 0
	vld	$vr4, $a3, -16
	vxor.v	$vr1, $vr1, $vr0
	vxor.v	$vr2, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vand.v	$vr2, $vr4, $vr2
	vst	$vr1, $a4, 0
	vst	$vr2, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB3_27
# %bb.28:                               # %middle.block
	bne	$a0, $a2, .LBB3_5
	b	.LBB3_7
.LBB3_29:                               # %vector.memcheck103
	sub.d	$a2, $s4, $s6
	ori	$a1, $zero, 32
	bltu	$a2, $a1, .LBB3_8
# %bb.30:                               # %vector.memcheck103
	sub.d	$a2, $s1, $s6
	bltu	$a2, $a1, .LBB3_8
# %bb.31:                               # %vector.ph110
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a3, $a2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a3, -12
	add.d	$a3, $s4, $a5
	add.d	$a4, $s6, $a5
	add.d	$a5, $s1, $a5
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_32:                               # %vector.body113
                                        # =>This Inner Loop Header: Depth=1
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
	bnez	$a6, .LBB3_32
# %bb.33:                               # %middle.block127
	bne	$a0, $a2, .LBB3_9
	b	.LBB3_11
.LBB3_34:
	ori	$a0, $zero, 1
	bnez	$a0, .LBB3_36
	b	.LBB3_42
.LBB3_35:                               # %._crit_edge.loopexit
	ld.w	$s7, $s5, 8
	sltui	$a0, $s0, 1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB3_42
.LBB3_36:                               # %._crit_edge
	blez	$s7, .LBB3_42
# %bb.37:
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s4, 0
	srli.d	$a0, $a0, 10
	andi	$a3, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	sltu	$a0, $zero, $a3
	sub.d	$a0, $a3, $a0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 8
	st.w	$a1, $s2, 0
	bgeu	$a0, $a2, .LBB3_45
.LBB3_38:
	move	$a1, $a3
.LBB3_39:                               # %scalar.ph168.preheader
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s2, 2
	alsl.d	$a3, $a1, $s1, 2
	alsl.d	$a1, $a1, $s4, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_40:                               # %scalar.ph168
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	and	$a5, $a6, $a5
	st.w	$a5, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a0, .LBB3_40
.LBB3_41:                               # %.thread
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB3_43
.LBB3_42:
	beqz	$s2, .LBB3_44
.LBB3_43:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_44:
	move	$a0, $fp
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
.LBB3_45:                               # %vector.memcheck163
	sub.d	$a2, $s4, $s2
	ori	$a1, $zero, 32
	bltu	$a2, $a1, .LBB3_38
# %bb.46:                               # %vector.memcheck163
	sub.d	$a2, $s1, $s2
	bltu	$a2, $a1, .LBB3_38
# %bb.47:                               # %vector.ph170
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a3, $a2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a3, -12
	add.d	$a3, $s4, $a5
	add.d	$a4, $s2, $a5
	add.d	$a5, $s1, $a5
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_48:                               # %vector.body173
                                        # =>This Inner Loop Header: Depth=1
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
	bnez	$a6, .LBB3_48
# %bb.49:                               # %middle.block187
	bne	$a0, $a2, .LBB3_39
	b	.LBB3_41
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
