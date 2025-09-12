	.file	"mincov.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function sm_minimum_cover
.LCPI0_0:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	sm_minimum_cover
	.p2align	5
	.type	sm_minimum_cover,@function
sm_minimum_cover:                       # @sm_minimum_cover
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 48
	blez	$a0, .LBB0_7
# %bb.1:
	move	$s2, $a3
	move	$s1, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48
	slt	$a0, $zero, $s2
	st.w	$a0, $sp, 16
	st.w	$s2, $sp, 20
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $sp, 24
	sltu	$a2, $zero, $s1
	vrepli.b	$vr0, 0
	ld.d	$a0, $fp, 32
	vst	$vr0, $sp, 28
	st.w	$zero, $sp, 44
	st.w	$a2, $sp, 56
	st.w	$a1, $sp, 60
	move	$s1, $zero
	beqz	$a0, .LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 4
	ld.d	$a0, $a0, 32
	add.w	$s1, $a1, $s1
	bnez	$a0, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB0_8
# %bb.4:                                # %.lr.ph58
	ori	$s2, $zero, 1
	beqz	$s0, .LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph58.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s0, $a1
	ld.d	$a0, $a0, 32
	add.w	$s2, $a1, $s2
	bnez	$a0, .LBB0_5
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %.lr.ph58.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 32
	addi.w	$s2, $s2, 1
	bnez	$a0, .LBB0_6
	b	.LBB0_9
.LBB0_7:
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(sm_row_alloc)
	jr	$t8
.LBB0_8:
	ori	$s2, $zero, 1
.LBB0_9:                                # %._crit_edge59
	ld.w	$s5, $fp, 48
	ld.w	$s6, $fp, 72
	pcaddu18i	$ra, %call36(solution_alloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sm_dup)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a6, $sp, 16
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $s2
	move	$a5, $zero
	pcaddu18i	$ra, %call36(sm_mincov)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sm_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(solution_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	beqz	$a0, .LBB0_13
# %bb.10:
	mul.d	$a0, $s6, $s5
	movgr2fr.w	$fa0, $s1
	ld.w	$a1, $sp, 56
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	beqz	$a1, .LBB0_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 60
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_12:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	ld.w	$a1, $fp, 48
	ld.w	$a2, $fp, 72
	fmul.d	$fa0, $fs0, $fa0
	movfr2gr.d	$a4, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 36
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 28
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_13:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(sm_row_dup)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	.p2align	4, , 16
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 32
	beqz	$fp, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sm_row_intersects)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_14
# %bb.16:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	pcalau12i	$a3, %pc_hi20(.L.str.12)
	addi.d	$a4, $a3, %pc_lo12(.L.str.12)
	ori	$a3, $zero, 91
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_17:                               # %verify_cover.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(solution_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	.size	sm_minimum_cover, .Lfunc_end0-sm_minimum_cover
                                        # -- End function
	.globl	sm_mincov                       # -- Begin function sm_mincov
	.p2align	5
	.type	sm_mincov,@function
sm_mincov:                              # @sm_mincov
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
	move	$fp, $a6
	ld.w	$a6, $a6, 12
	ld.w	$a7, $fp, 8
	move	$s5, $a5
	move	$s0, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s2, $a1
	move	$s4, $a0
	addi.d	$a0, $a6, 1
	st.w	$a0, $fp, 12
	bge	$a7, $a5, .LBB1_2
# %bb.1:
	st.w	$s5, $fp, 8
.LBB1_2:
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB1_4
# %bb.3:
	ld.w	$a0, $fp, 4
	slt	$a0, $a0, $s5
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_5
.LBB1_4:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB1_5:
	ori	$s3, $zero, 1
.LBB1_6:                                # %.critedge.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_8 Depth 2
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sm_col_dominance)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcaddu18i	$ra, %call36(sm_row_alloc)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s4, 32
	move	$s7, $a0
	bnez	$s8, .LBB1_14
.LBB1_7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$s8, $s7, 16
	beqz	$s8, .LBB1_10
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph38.i
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $s8, 4
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(solution_accept)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	bge	$a0, $s0, .LBB1_16
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	ld.d	$s8, $s8, 24
	bnez	$s8, .LBB1_8
.LBB1_10:                               # %._crit_edge39.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$s8, $s7, 4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sm_row_free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sm_row_dominance)
	jirl	$ra, $ra, 0
	bgtz	$s6, .LBB1_6
# %bb.11:                               # %._crit_edge39.i
                                        #   in Loop: Header=BB1_6 Depth=1
	bgtz	$a0, .LBB1_6
# %bb.12:                               # %._crit_edge39.i
                                        #   in Loop: Header=BB1_6 Depth=1
	bgtz	$s8, .LBB1_6
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_14 Depth=2
	ld.d	$s8, $s8, 32
	beqz	$s8, .LBB1_7
.LBB1_14:                               # %.lr.ph.i
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 4
	bne	$a0, $s3, .LBB1_13
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=2
	ld.d	$a0, $s8, 16
	ld.w	$a1, $a0, 4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sm_row_insert)
	jirl	$ra, $ra, 0
	b	.LBB1_13
.LBB1_16:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sm_row_free)
	jirl	$ra, $ra, 0
.LBB1_17:                               # %select_essential.exit
	ld.w	$a0, $s2, 8
	bge	$a0, $s0, .LBB1_75
# %bb.18:
	beqz	$s1, .LBB1_30
.LBB1_19:
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sm_maximal_independent_set)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.w	$a0, $s2, 8
	ld.w	$a1, $s5, 8
	add.w	$s3, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	slt	$s6, $a0, $s3
	pcaddu18i	$ra, %call36(sm_row_alloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $s5, 0
	ld.d	$s7, $a1, 16
	move	$s8, $a0
	bnez	$s7, .LBB1_24
.LBB1_20:                               # %.loopexit.i
	ld.d	$a2, $s8, 16
	maskeqz	$a0, $s3, $s6
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	masknez	$a1, $a1, $s6
	beqz	$a2, .LBB1_31
# %bb.21:                               # %.lr.ph92.i
	beqz	$s1, .LBB1_43
# %bb.22:                               # %.lr.ph92.split.preheader.i
	movgr2fr.d	$fa0, $zero
	ld.d	$a3, $s4, 16
	addi.w	$s5, $zero, -1
	vldi	$vr1, -784
	vldi	$vr2, -784
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_23:                               # %._crit_edge.i155
                                        #   in Loop: Header=BB1_24 Depth=1
	ld.d	$s7, $s7, 24
	beqz	$s7, .LBB1_20
.LBB1_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
	ld.w	$a0, $s7, 4
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$s5, $a0, 16
	beqz	$s5, .LBB1_23
	.p2align	4, , 16
.LBB1_25:                               # %.lr.ph.i154
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s5, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(sm_row_insert)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 24
	bnez	$s5, .LBB1_25
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_26:                               # %._crit_edge85.i
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.w	$a4, $a4, 0
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $s1, $a5
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa2, $fa3
	ld.d	$a2, $a2, 24
	fsel	$fa2, $fa2, $fa3, $fcc0
	movcf2gr	$a5, $fcc0
	masknez	$a6, $s5, $a5
	maskeqz	$a4, $a4, $a5
	or	$s5, $a4, $a6
	beqz	$a2, .LBB1_32
.LBB1_27:                               # %.lr.ph92.split.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	ld.w	$a4, $a2, 4
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a3, $a4
	ld.d	$a5, $a4, 16
	fmov.d	$fa3, $fa0
	beqz	$a5, .LBB1_26
# %bb.28:                               # %.lr.ph84.i
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$a6, $s4, 0
	fmov.d	$fa3, $fa0
	.p2align	4, , 16
.LBB1_29:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a6, $a7
	ld.w	$a7, $a7, 4
	movgr2fr.w	$fa4, $a7
	ld.d	$a5, $a5, 8
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa4, $fa4, $fa1
	frecip.d	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	bnez	$a5, .LBB1_29
	b	.LBB1_26
.LBB1_30:
	addi.d	$a7, $sp, 48
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $zero
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s5
	move	$a6, $fp
	pcaddu18i	$ra, %call36(gimpel_reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_73
	b	.LBB1_19
.LBB1_31:
	addi.w	$s5, $zero, -1
.LBB1_32:                               # %select_column.exit
	or	$s6, $a0, $a1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(sm_row_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(solution_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_36
# %bb.33:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_37
.LBB1_34:
	ld.w	$a0, $fp, 16
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.w	$a1, $fp, 28
	ld.w	$s7, $s4, 48
	ld.w	$s8, $s4, 72
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.w	$s3, $a1, $s0
	add.w	$a0, $a1, $s6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s7
	move	$a2, $s8
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s3
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blt	$s6, $s0, .LBB1_38
# %bb.35:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB1_42
.LBB1_36:
	ld.w	$a0, $fp, 28
	add.d	$a0, $a0, $s6
	st.w	$a0, $fp, 44
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_34
.LBB1_37:                               # %.thread
	bge	$s6, $s0, .LBB1_42
.LBB1_38:
	ld.w	$a0, $s4, 48
	beqz	$a0, .LBB1_53
# %bb.39:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sm_block_partition)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_58
# %bb.40:
	ld.d	$a1, $sp, 64
	ld.d	$a0, $sp, 56
	ld.w	$a2, $a1, 72
	ld.w	$a3, $a0, 72
	bge	$a3, $a2, .LBB1_64
# %bb.41:
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 56
	move	$a2, $a1
	b	.LBB1_65
.LBB1_42:                               # %.thread157
	st.d	$zero, $sp, 48
	b	.LBB1_73
.LBB1_43:                               # %.lr.ph92.split.us.i.preheader
	addi.w	$s5, $zero, -1
	vldi	$vr0, -784
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -784
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_44:                               #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a2, $a2, 24
	beqz	$a2, .LBB1_32
.LBB1_45:                               # %.lr.ph92.split.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	ld.w	$a3, $a2, 4
	bltz	$a3, .LBB1_48
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=1
	ld.w	$a4, $s4, 24
	bge	$a3, $a4, .LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a4, $s4, 16
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a4, $a3
	ld.d	$a4, $a3, 16
	fmov.d	$fa3, $fa1
	bnez	$a4, .LBB1_49
	b	.LBB1_51
	.p2align	4, , 16
.LBB1_48:                               #   in Loop: Header=BB1_45 Depth=1
	move	$a3, $zero
	ld.d	$a4, $a3, 16
	fmov.d	$fa3, $fa1
	beqz	$a4, .LBB1_51
.LBB1_49:                               # %.lr.ph84.us.i
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a5, $s4, 0
	fmov.d	$fa3, $fa1
	.p2align	4, , 16
.LBB1_50:                               #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a5, $a6
	ld.w	$a6, $a6, 4
	movgr2fr.w	$fa4, $a6
	ld.d	$a4, $a4, 8
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa4, $fa4, $fa0
	frecip.d	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	bnez	$a4, .LBB1_50
.LBB1_51:                               # %._crit_edge85.us.i
                                        #   in Loop: Header=BB1_45 Depth=1
	fcmp.cule.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB1_44
# %bb.52:                               #   in Loop: Header=BB1_45 Depth=1
	ld.w	$s5, $a3, 0
	fmov.d	$fa2, $fa3
	b	.LBB1_44
.LBB1_53:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(solution_dup)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_55
# %bb.54:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB1_55:
	ld.w	$a0, $fp, 0
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_73
# %bb.56:
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_73
# %bb.57:
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 8
	ld.w	$a1, $fp, 28
	add.w	$s0, $a1, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB1_73
.LBB1_58:
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_60
# %bb.59:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_60:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sm_dup)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(solution_dup)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s5
	pcaddu18i	$ra, %call36(solution_accept)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$s3, $a0, 1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $fp
	pcaddu18i	$ra, %call36(sm_mincov)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(solution_free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(sm_free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	ld.w	$a1, $fp, 40
	beqz	$s8, .LBB1_74
# %bb.61:                               # %.thread158
	bnez	$a1, .LBB1_76
# %bb.62:
	ld.w	$a1, $a0, 8
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_76
# %bb.63:
	slt	$a2, $s0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a1
	b	.LBB1_77
.LBB1_64:
	move	$a2, $a0
	move	$a0, $a1
.LBB1_65:
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB1_67
# %bb.66:
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a2, 48
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_67:
	ld.w	$a0, $fp, 20
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 20
	pcaddu18i	$ra, %call36(solution_alloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$s5, $a0
	ld.w	$a2, $s2, 8
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 64
	st.w	$a1, $fp, 16
	sub.w	$a4, $s0, $a2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$s3, $a1, 1
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $zero
	move	$a5, $s3
	move	$a6, $fp
	pcaddu18i	$ra, %call36(sm_mincov)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$s4, $a0
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 16
	move	$a0, $s5
	pcaddu18i	$ra, %call36(solution_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(sm_free)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB1_71
# %bb.68:
	ld.d	$a0, $s4, 0
	ld.d	$s5, $a0, 16
	beqz	$s5, .LBB1_70
	.p2align	4, , 16
.LBB1_69:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s5, 4
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(solution_add)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 24
	bnez	$s5, .LBB1_69
.LBB1_70:                               # %._crit_edge
	move	$a0, $s4
	pcaddu18i	$ra, %call36(solution_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s6
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $fp
	pcaddu18i	$ra, %call36(sm_mincov)
	jirl	$ra, $ra, 0
	b	.LBB1_72
.LBB1_71:
	move	$a0, $zero
.LBB1_72:
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 48
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sm_free)
	jirl	$ra, $ra, 0
.LBB1_73:
	ld.d	$a0, $sp, 48
	b	.LBB1_76
.LBB1_74:
	beqz	$a1, .LBB1_77
.LBB1_75:
	move	$a0, $zero
.LBB1_76:
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
.LBB1_77:
	move	$s6, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sm_dup)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(solution_dup)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s5
	pcaddu18i	$ra, %call36(solution_reject)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $fp
	pcaddu18i	$ra, %call36(sm_mincov)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(solution_free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sm_free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(solution_choose_best)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48
	b	.LBB1_73
.Lfunc_end1:
	.size	sm_mincov, .Lfunc_end1-sm_mincov
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"lower bound = %d\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"matrix     = %d by %d with %d elements (%4.3f%%)\n"
	.size	.L.str.2, 50

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"cover size = %d elements\n"
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"cover cost = %d\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"time       = %s\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"components = %d\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"gimpel     = %d\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"nodes      = %d\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"max_depth  = %d\n"
	.size	.L.str.9, 17

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Fatal error: file %s, line %d\n%s\n"
	.size	.L.str.10, 34

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/mincov.c"
	.size	.L.str.11, 136

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"mincov: internal error -- cover verification failed\n"
	.size	.L.str.12, 53

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"ABSMIN[%2d]%s"
	.size	.L.str.13, 14

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"*"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" "
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	" %3dx%3d sel=%3d bnd=%3d lb=%3d %12s "
	.size	.L.str.16, 38

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"new 'best' solution %d at level %d (time is %s)\n"
	.size	.L.str.19, 49

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"comp %d %d\n"
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"pick=%d\n"
	.size	.L.str.21, 9

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"**** heuristic covering ..."
	.size	.Lstr, 28

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"BEST"
	.size	.Lstr.1, 5

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"bounded"
	.size	.Lstr.2, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
