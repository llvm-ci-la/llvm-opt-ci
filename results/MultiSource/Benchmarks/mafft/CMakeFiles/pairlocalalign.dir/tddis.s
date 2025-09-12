	.file	"tddis.c"
	.text
	.globl	mdfymtx                         # -- Begin function mdfymtx
	.p2align	5
	.type	mdfymtx,@function
mdfymtx:                                # @mdfymtx
# %bb.0:
	pcalau12i	$a4, %got_pc_hi20(njob)
	ld.d	$a4, $a4, %got_pc_lo12(njob)
	ld.w	$a4, $a4, 0
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB0_9
# %bb.1:                                # %.lr.ph29
	move	$a5, $zero
	move	$t2, $zero
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	addi.w	$a1, $a4, -1
	ori	$a6, $zero, 1
	ori	$a7, $zero, 8
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t2, $t0
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 8
	beq	$a5, $a1, .LBB0_9
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	ldx.bu	$t0, $a0, $a5
	beqz	$t0, .LBB0_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$t0, $t2, 1
	alsl.d	$t1, $a5, $a3, 3
	alsl.d	$t2, $t2, $a2, 3
	move	$t3, $a4
	move	$t4, $a0
	move	$t5, $a7
	move	$t6, $t0
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=2
	addi.d	$t5, $t5, 8
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 1
	beq	$a6, $t3, .LBB0_2
.LBB0_7:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t7, $t4, $a6
	beqz	$t7, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	ld.d	$t7, $t1, 0
	fldx.d	$fa0, $t7, $t5
	ld.d	$t7, $t2, 0
	slli.d	$t8, $t6, 3
	fstx.d	$fa0, $t7, $t8
	addi.w	$t6, $t6, 1
	b	.LBB0_6
.LBB0_9:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	mdfymtx, .Lfunc_end0-mdfymtx
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function score_calc
.LCPI1_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.globl	score_calc
	.p2align	5
	.type	score_calc,@function
score_calc:                             # @score_calc
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	move	$fp, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	blt	$fp, $a1, .LBB1_17
# %bb.1:                                # %.lr.ph
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB1_18
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.w	$a2, $fp, -1
	addi.w	$a0, $a0, -2
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	ld.w	$a3, $a3, 0
	movgr2fr.w	$fa0, $zero
	ori	$a4, $zero, 1
	ori	$a5, $zero, 45
	pcalau12i	$a6, %got_pc_hi20(amino_dis)
	ld.d	$a6, $a6, %got_pc_lo12(amino_dis)
	move	$t0, $zero
	lu12i.w	$a7, 5
	ori	$a7, $a7, 2560
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit.us
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a4, $a4, 1
	beq	$t0, $a2, .LBB1_19
.LBB1_4:                                # %.lr.ph72.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_8 Depth 3
                                        #         Child Loop BB1_15 Depth 4
                                        #         Child Loop BB1_11 Depth 4
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $s0, $t1
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t1, 1
	move	$t3, $a4
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB1_6 Depth=2
	movgr2fr.w	$fa1, $t6
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $t5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fcvt.d.s	$fa0, $fa0
	fadd.d	$fa0, $fa1, $fa0
	addi.d	$t3, $t3, 1
	fcvt.s.d	$fa0, $fa0
	beq	$t3, $fp, .LBB1_3
.LBB1_6:                                # %.lr.ph.us.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
                                        #         Child Loop BB1_15 Depth 4
                                        #         Child Loop BB1_11 Depth 4
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $s0, $t4
	move	$t6, $zero
	move	$t8, $zero
	move	$t5, $zero
	addi.d	$t7, $t4, 1
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	addi.w	$t8, $t8, 1
	bge	$t8, $a1, .LBB1_5
.LBB1_8:                                #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_15 Depth 4
                                        #         Child Loop BB1_11 Depth 4
	ldx.b	$s1, $t1, $t8
	bne	$s1, $a5, .LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	ldx.b	$s1, $t4, $t8
	beq	$s1, $a5, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	alsl.d	$s1, $s1, $a6, 2
	ldx.w	$s1, $s1, $a7
	addi.d	$s3, $t8, -1
	add.d	$s2, $t2, $t8
	move	$t8, $s3
	.p2align	4, , 16
.LBB1_11:                               #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s3, $s2, 0
	addi.w	$t8, $t8, 1
	addi.d	$s2, $s2, 1
	beq	$s3, $a5, .LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=3
	addi.w	$t5, $t5, 1
	add.d	$t6, $s1, $t6
	add.w	$t6, $t6, $a3
	bge	$a0, $t8, .LBB1_7
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_8 Depth=3
	ldx.b	$s2, $t4, $t8
	slli.d	$s1, $s1, 9
	add.d	$s1, $a6, $s1
	slli.d	$s3, $s2, 2
	ldx.w	$s1, $s1, $s3
	addi.w	$t5, $t5, 1
	add.w	$t6, $s1, $t6
	bne	$s2, $a5, .LBB1_7
# %bb.14:                               # %.preheader.preheader
                                        #   in Loop: Header=BB1_8 Depth=3
	addi.d	$s2, $t8, -1
	add.d	$s1, $t7, $t8
	move	$t8, $s2
	.p2align	4, , 16
.LBB1_15:                               # %.preheader
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s2, $s1, 0
	addi.w	$t8, $t8, 1
	addi.d	$s1, $s1, 1
	beq	$s2, $a5, .LBB1_15
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=3
	add.w	$t6, $a3, $t6
	bge	$a0, $t8, .LBB1_7
	b	.LBB1_5
.LBB1_17:
	movgr2fr.d	$fa0, $zero
	b	.LBB1_20
.LBB1_18:
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	b	.LBB1_20
.LBB1_19:                               # %._crit_edge.loopexit
	fcvt.d.s	$fa0, $fa0
.LBB1_20:                               # %._crit_edge
	movgr2fr.w	$fa1, $fp
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -784
	fadd.d	$fa2, $fa1, $fa2
	fmul.d	$fa1, $fa2, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	score_calc, .Lfunc_end1-score_calc
                                        # -- End function
	.globl	cpmx_calc                       # -- Begin function cpmx_calc
	.p2align	5
	.type	cpmx_calc,@function
cpmx_calc:                              # @cpmx_calc
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	movgr2fr.d	$fs0, $zero
	blez	$a4, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $fp
	move	$a1, $s1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB2_2
.LBB2_3:                                # %.preheader34
	blez	$s0, .LBB2_9
# %bb.4:                                # %.preheader.lr.ph
	ld.d	$a0, $s2, 0
	slli.d	$s4, $s0, 2
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 48
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 56
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 64
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 72
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 80
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 88
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 96
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 104
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 112
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 120
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 128
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 136
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 144
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 152
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 160
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 168
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 176
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 184
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 192
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 200
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB2_9
# %bb.5:                                # %.preheader.us.preheader
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$a0, $a0, %got_pc_lo12(amino_n)
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_6:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	slli.d	$a2, $a1, 2
	move	$a3, $fp
	move	$a4, $s3
	move	$a5, $s1
	.p2align	4, , 16
.LBB2_7:                                #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	ldx.b	$a6, $a6, $a1
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s2, $a6
	fld.d	$fa0, $a5, 0
	fldx.s	$fa1, $a6, $a2
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fstx.s	$fa0, $a6, $a2
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB2_7
# %bb.8:                                # %._crit_edge.us44
                                        #   in Loop: Header=BB2_6 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s0, .LBB2_6
.LBB2_9:                                # %._crit_edge43
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
	.size	cpmx_calc, .Lfunc_end2-cpmx_calc
                                        # -- End function
	.globl	cpmx_calc_new_bk                # -- Begin function cpmx_calc_new_bk
	.p2align	5
	.type	cpmx_calc_new_bk,@function
cpmx_calc_new_bk:                       # @cpmx_calc_new_bk
# %bb.0:
	blez	$a3, .LBB3_7
# %bb.1:                                # %.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ld.d	$a0, $a1, 0
	slli.d	$s3, $a3, 2
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 48
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 56
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 64
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 88
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 96
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 104
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 112
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 120
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 128
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 136
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 144
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 152
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 160
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 168
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 176
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 184
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 192
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 200
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB3_6
# %bb.2:                                # %.lr.ph.us.preheader
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$a0, $a0, %got_pc_lo12(amino_n)
	move	$a1, $zero
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	slli.d	$a2, $a1, 3
	fldx.d	$fa0, $s0, $a2
	ldx.d	$a2, $s2, $a2
	move	$a3, $zero
	fcvt.s.d	$fa0, $fa0
	.p2align	4, , 16
.LBB3_4:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	fldx.s	$fa1, $a4, $a3
	fadd.s	$fa1, $fa1, $fa0
	fstx.s	$fa1, $a4, $a3
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 1
	bne	$s3, $a3, .LBB3_4
# %bb.5:                                # %._crit_edge.us30
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $fp, .LBB3_3
.LBB3_6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB3_7:                                # %._crit_edge29
	ret
.Lfunc_end3:
	.size	cpmx_calc_new_bk, .Lfunc_end3-cpmx_calc_new_bk
                                        # -- End function
	.globl	cpmx_calc_new                   # -- Begin function cpmx_calc_new
	.p2align	5
	.type	cpmx_calc_new,@function
cpmx_calc_new:                          # @cpmx_calc_new
# %bb.0:
	beqz	$a3, .LBB4_8
# %bb.1:                                # %.preheader
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s3, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ld.d	$a0, $a1, 0
	bstrpick.d	$a1, $a3, 31, 0
	slli.d	$s4, $a1, 2
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 48
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 56
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 64
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 88
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 96
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 104
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 112
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 120
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 128
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 136
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 144
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 152
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 160
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 168
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 176
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 184
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 192
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 200
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB4_7
# %bb.2:                                # %.preheader
	blez	$s3, .LBB4_7
# %bb.3:                                # %.lr.ph31.us.preheader
	slli.d	$a0, $s3, 2
	pcalau12i	$a1, %got_pc_hi20(amino_n)
	ld.d	$a1, $a1, %got_pc_lo12(amino_n)
	move	$a2, $zero
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph31.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	slli.d	$a3, $a2, 3
	fldx.d	$fa0, $s0, $a3
	ldx.d	$a4, $s2, $a3
	move	$a3, $zero
	fcvt.s.d	$fa0, $fa0
	.p2align	4, , 16
.LBB4_5:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a4, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	fldx.s	$fa1, $a5, $a3
	addi.d	$a4, $a4, 1
	fadd.s	$fa1, $fa1, $fa0
	fstx.s	$fa1, $a5, $a3
	addi.d	$a3, $a3, 4
	bne	$a0, $a3, .LBB4_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a2, $a2, 1
	bne	$a2, $fp, .LBB4_4
.LBB4_7:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB4_8:                                # %._crit_edge34
	ret
.Lfunc_end4:
	.size	cpmx_calc_new, .Lfunc_end4-cpmx_calc_new
                                        # -- End function
	.globl	MScpmx_calc_new                 # -- Begin function MScpmx_calc_new
	.p2align	5
	.type	MScpmx_calc_new,@function
MScpmx_calc_new:                        # @MScpmx_calc_new
# %bb.0:
	beqz	$a3, .LBB5_9
# %bb.1:
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
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	move	$s4, $a3
	move	$s5, $a1
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ori	$a2, $zero, 104
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB5_2
# %bb.3:                                # %.preheader.thread
	blez	$fp, .LBB5_8
# %bb.4:                                # %.lr.ph34.preheader
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$a0, $a0, %got_pc_lo12(amino_n)
	move	$a1, $zero
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	slli.d	$a2, $a1, 3
	fldx.d	$fa0, $s1, $a2
	ldx.d	$a2, $s3, $a2
	fcvt.s.d	$fa0, $fa0
	move	$a4, $s2
	move	$a3, $s0
	.p2align	4, , 16
.LBB5_6:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a2, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	ld.d	$a6, $a4, 0
	slli.d	$a5, $a5, 2
	fldx.s	$fa1, $a6, $a5
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 1
	fadd.s	$fa1, $fa1, $fa0
	fstx.s	$fa1, $a6, $a5
	bnez	$a3, .LBB5_6
# %bb.7:                                # %._crit_edge
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $fp, .LBB5_5
.LBB5_8:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB5_9:                                # %._crit_edge37
	ret
.Lfunc_end5:
	.size	MScpmx_calc_new, .Lfunc_end5-MScpmx_calc_new
                                        # -- End function
	.globl	cpmx_ribosum                    # -- Begin function cpmx_ribosum
	.p2align	5
	.type	cpmx_ribosum,@function
cpmx_ribosum:                           # @cpmx_ribosum
# %bb.0:
	beqz	$a5, .LBB6_16
# %bb.1:
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
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	move	$s6, $a5
	move	$s7, $a3
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ori	$a2, $zero, 148
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	bnez	$s6, .LBB6_2
# %bb.3:                                # %.preheader.thread
	blez	$fp, .LBB6_15
# %bb.4:                                # %.lr.ph59.preheader
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$a0, $a0, %got_pc_lo12(amino_n)
	move	$a1, $zero
	ori	$a2, $zero, 3
	ori	$a3, $zero, 51
	ori	$a4, $zero, 53
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_5:                                # %._crit_edge
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $fp, .LBB6_15
.LBB6_6:                                # %.lr.ph59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
	slli.d	$a6, $a1, 3
	fldx.d	$fa0, $s1, $a6
	ldx.d	$a5, $s5, $a6
	ldx.d	$a6, $s4, $a6
	fcvt.s.d	$fa0, $fa0
	move	$a7, $s0
	move	$t0, $s3
	move	$t1, $s2
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_7:                                #   in Loop: Header=BB6_9 Depth=2
	move	$t2, $t3
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=2
	ld.d	$t3, $t1, 0
	addi.w	$a7, $a7, -1
	addi.d	$a5, $a5, 1
	slli.d	$t2, $t2, 2
	fldx.s	$fa1, $t3, $t2
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 8
	fadd.s	$fa1, $fa1, $fa0
	fstx.s	$fa1, $t3, $t2
	beqz	$a7, .LBB6_5
.LBB6_9:                                #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t2, $a5, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $a0, $t2
	ori	$t2, $zero, 36
	blt	$a2, $t3, .LBB6_8
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=2
	ld.b	$t2, $a6, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	blt	$a2, $t2, .LBB6_7
# %bb.11:                               #   in Loop: Header=BB6_9 Depth=2
	ld.bu	$t4, $t0, 0
	beq	$t4, $a3, .LBB6_14
# %bb.12:                               #   in Loop: Header=BB6_9 Depth=2
	bne	$t4, $a4, .LBB6_7
# %bb.13:                               #   in Loop: Header=BB6_9 Depth=2
	alsl.d	$t2, $t2, $t3, 2
	addi.w	$t2, $t2, 4
	b	.LBB6_8
.LBB6_14:                               #   in Loop: Header=BB6_9 Depth=2
	alsl.d	$t2, $t2, $t3, 2
	addi.w	$t2, $t2, 20
	b	.LBB6_8
.LBB6_15:
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
.LBB6_16:                               # %._crit_edge62
	ret
.Lfunc_end6:
	.size	cpmx_ribosum, .Lfunc_end6-cpmx_ribosum
                                        # -- End function
	.globl	mseqcat                         # -- Begin function mseqcat
	.p2align	5
	.type	mseqcat,@function
mseqcat:                                # @mseqcat
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
	ld.d	$s5, $sp, 80
	move	$fp, $a7
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	blez	$s5, .LBB7_8
# %bb.1:                                # %.lr.ph.preheader
	move	$s3, $a6
	ori	$a2, $zero, 8
	bltu	$s5, $a2, .LBB7_3
# %bb.2:                                # %vector.memcheck
	alsl.d	$a2, $fp, $a0, 3
	sub.d	$a2, $a2, $a1
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB7_55
.LBB7_3:
	move	$a2, $zero
.LBB7_4:                                # %.lr.ph.preheader261
	slli.d	$a3, $a2, 3
	alsl.d	$a3, $fp, $a3, 3
	add.d	$a0, $a0, $a3
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $s5, $a2
	.p2align	4, , 16
.LBB7_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.d	$a3, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB7_5
.LBB7_6:                                # %.lr.ph97.preheader
	slli.d	$a0, $fp, 8
	add.d	$s4, $a5, $a0
	move	$s6, $s5
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 256
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 256
	bnez	$s6, .LBB7_7
.LBB7_8:                                # %.preheader93
	slli.d	$a0, $fp, 3
	blez	$fp, .LBB7_42
# %bb.9:                                # %.preheader92.us.preheader
	move	$a1, $zero
	alsl.d	$a2, $fp, $s2, 3
	bstrpick.d	$a3, $fp, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s2, 16
	ori	$a5, $zero, 4
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $fp, .LBB7_20
.LBB7_11:                               # %.preheader92.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
                                        #     Child Loop BB7_16 Depth 2
	slli.d	$a6, $a1, 3
	ldx.d	$a7, $s1, $a6
	alsl.d	$a6, $a1, $s2, 3
	bltu	$fp, $a5, .LBB7_14
# %bb.12:                               # %vector.memcheck162
                                        #   in Loop: Header=BB7_11 Depth=1
	bgeu	$a7, $a2, .LBB7_17
# %bb.13:                               # %vector.memcheck162
                                        #   in Loop: Header=BB7_11 Depth=1
	add.d	$t0, $a7, $a0
	bgeu	$s2, $t0, .LBB7_17
.LBB7_14:                               #   in Loop: Header=BB7_11 Depth=1
	move	$t1, $zero
.LBB7_15:                               # %scalar.ph167.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	alsl.d	$t0, $t1, $s2, 3
	alsl.d	$a7, $t1, $a7, 3
	sub.d	$t1, $fp, $t1
	.p2align	4, , 16
.LBB7_16:                               # %scalar.ph167
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, 0
	fld.d	$fa1, $t0, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a7, 0
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB7_16
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_17:                               # %vector.ph169
                                        #   in Loop: Header=BB7_11 Depth=1
	vldrepl.d	$vr0, $a6, 0
	addi.d	$t0, $a7, 16
	move	$t1, $a4
	move	$t2, $a3
	.p2align	4, , 16
.LBB7_18:                               # %vector.body172
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t1, -16
	vld	$vr2, $t1, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vst	$vr1, $t0, -16
	vst	$vr2, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB7_18
# %bb.19:                               # %middle.block177
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$t1, $a3
	beq	$a3, $fp, .LBB7_10
	b	.LBB7_15
.LBB7_20:                               # %.preheader90.lr.ph
	blez	$s5, .LBB7_54
# %bb.21:                               # %.preheader90.us.preheader
	move	$a4, $zero
	add.w	$a1, $s5, $fp
	slli.d	$a2, $fp, 3
	addi.d	$a3, $fp, 1
	sltu	$a5, $a1, $a3
	masknez	$a6, $a1, $a5
	maskeqz	$a3, $a3, $a5
	or	$a5, $a3, $a6
	slli.d	$a6, $a5, 3
	alsl.d	$a3, $fp, $s2, 3
	sub.d	$a7, $a6, $a2
	sub.d	$a5, $a5, $fp
	add.d	$a7, $s0, $a7
	move	$t0, $a5
	bstrins.d	$t0, $zero, 1, 0
	add.d	$t1, $t0, $fp
	addi.d	$t2, $a2, 16
	addi.d	$t3, $s0, 16
	sub.d	$t4, $s0, $a2
	ori	$t5, $zero, 4
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               # %._crit_edge.us104
                                        #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $fp, .LBB7_31
.LBB7_23:                               # %.preheader90.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
                                        #     Child Loop BB7_25 Depth 2
	slli.d	$t6, $a4, 3
	ldx.d	$t7, $s1, $t6
	alsl.d	$t6, $a4, $s2, 3
	move	$t8, $fp
	bgeu	$a5, $t5, .LBB7_26
.LBB7_24:                               # %scalar.ph192.preheader
                                        #   in Loop: Header=BB7_23 Depth=1
	alsl.d	$t7, $t8, $t7, 3
	alsl.d	$s3, $t8, $t4, 3
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph192
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t6, 0
	fld.d	$fa1, $s3, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t7, 0
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 8
	addi.d	$s3, $s3, 8
	bltu	$t8, $a1, .LBB7_25
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_26:                               # %vector.memcheck180
                                        #   in Loop: Header=BB7_23 Depth=1
	add.d	$s3, $t7, $a2
	add.d	$s4, $t7, $a6
	sltu	$t8, $s3, $a3
	sltu	$s5, $s2, $s4
	and	$s5, $t8, $s5
	move	$t8, $fp
	bnez	$s5, .LBB7_24
# %bb.27:                               # %vector.memcheck180
                                        #   in Loop: Header=BB7_23 Depth=1
	sltu	$t8, $s3, $a7
	sltu	$s3, $s0, $s4
	and	$s3, $t8, $s3
	move	$t8, $fp
	bnez	$s3, .LBB7_24
# %bb.28:                               # %vector.ph194
                                        #   in Loop: Header=BB7_23 Depth=1
	vldrepl.d	$vr0, $t6, 0
	add.d	$t8, $t7, $t2
	move	$s3, $t0
	move	$s4, $t3
	.p2align	4, , 16
.LBB7_29:                               # %vector.body197
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $s4, -16
	vld	$vr2, $s4, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vst	$vr1, $t8, -16
	vst	$vr2, $t8, 0
	addi.d	$t8, $t8, 32
	addi.d	$s3, $s3, -4
	addi.d	$s4, $s4, 32
	bnez	$s3, .LBB7_29
# %bb.30:                               # %middle.block204
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$t8, $t1
	beq	$a5, $t0, .LBB7_22
	b	.LBB7_24
.LBB7_31:                               # %.preheader88.us.preheader
	alsl.d	$a4, $a5, $s0, 3
	bstrpick.d	$a5, $fp, 30, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $s2, 16
	ori	$a7, $zero, 4
	move	$t0, $fp
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %._crit_edge.us108
                                        #   in Loop: Header=BB7_33 Depth=1
	addi.d	$t0, $t0, 1
	bgeu	$t0, $a1, .LBB7_44
.LBB7_33:                               # %.preheader88.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_36 Depth 2
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $s1, $t1
	sub.d	$t1, $t0, $fp
	alsl.d	$t1, $t1, $s0, 3
	bgeu	$fp, $a7, .LBB7_37
# %bb.34:                               #   in Loop: Header=BB7_33 Depth=1
	move	$t4, $zero
.LBB7_35:                               # %scalar.ph219.preheader
                                        #   in Loop: Header=BB7_33 Depth=1
	alsl.d	$t3, $t4, $s2, 3
	alsl.d	$t2, $t4, $t2, 3
	sub.d	$t4, $fp, $t4
	.p2align	4, , 16
.LBB7_36:                               # %scalar.ph219
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t1, 0
	fld.d	$fa1, $t3, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t2, 0
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, -1
	addi.d	$t2, $t2, 8
	bnez	$t4, .LBB7_36
	b	.LBB7_32
	.p2align	4, , 16
.LBB7_37:                               # %vector.memcheck207
                                        #   in Loop: Header=BB7_33 Depth=1
	add.d	$t3, $t2, $a2
	sltu	$t4, $t2, $a4
	sltu	$t5, $s0, $t3
	and	$t5, $t4, $t5
	move	$t4, $zero
	bnez	$t5, .LBB7_35
# %bb.38:                               # %vector.memcheck207
                                        #   in Loop: Header=BB7_33 Depth=1
	sltu	$t5, $t2, $a3
	sltu	$t3, $s2, $t3
	and	$t3, $t5, $t3
	bnez	$t3, .LBB7_35
# %bb.39:                               # %vector.ph221
                                        #   in Loop: Header=BB7_33 Depth=1
	vldrepl.d	$vr0, $t1, 0
	addi.d	$t3, $t2, 16
	move	$t4, $a6
	move	$t5, $a5
	.p2align	4, , 16
.LBB7_40:                               # %vector.body224
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t4, -16
	vld	$vr2, $t4, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vst	$vr1, $t3, -16
	vst	$vr2, $t3, 0
	addi.d	$t5, $t5, -4
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB7_40
# %bb.41:                               # %middle.block231
                                        #   in Loop: Header=BB7_33 Depth=1
	move	$t4, $a5
	beq	$a5, $fp, .LBB7_32
	b	.LBB7_35
.LBB7_42:                               # %.preheader89.thread149
	blez	$s5, .LBB7_54
# %bb.43:
	add.w	$a1, $s5, $fp
.LBB7_44:                               # %.preheader.us.preheader
	addi.d	$a2, $s0, 16
	addi.d	$a3, $fp, 1
	slt	$a4, $a1, $a3
	masknez	$a5, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a4, $a3, $a5
	slli.d	$a3, $a4, 3
	sub.d	$a5, $a3, $a0
	sub.d	$a4, $a4, $fp
	add.d	$a5, $s0, $a5
	move	$a6, $a4
	bstrins.d	$a6, $zero, 1, 0
	add.d	$a7, $a6, $fp
	addi.d	$t0, $a0, 16
	sub.d	$t1, $s0, $a0
	ori	$t2, $zero, 4
	move	$t3, $fp
	b	.LBB7_46
	.p2align	4, , 16
.LBB7_45:                               # %._crit_edge.us113
                                        #   in Loop: Header=BB7_46 Depth=1
	addi.d	$t3, $t3, 1
	bge	$t3, $a1, .LBB7_54
.LBB7_46:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
                                        #     Child Loop BB7_53 Depth 2
	slli.d	$t4, $t3, 3
	ldx.d	$t5, $s1, $t4
	sub.d	$t4, $t3, $fp
	alsl.d	$t4, $t4, $s0, 3
	move	$t6, $fp
	bltu	$a4, $t2, .LBB7_52
# %bb.47:                               # %vector.memcheck234
                                        #   in Loop: Header=BB7_46 Depth=1
	add.d	$t6, $t5, $a0
	bgeu	$t6, $a5, .LBB7_49
# %bb.48:                               # %vector.memcheck234
                                        #   in Loop: Header=BB7_46 Depth=1
	add.d	$t7, $t5, $a3
	move	$t6, $fp
	bltu	$s0, $t7, .LBB7_52
.LBB7_49:                               # %vector.ph247
                                        #   in Loop: Header=BB7_46 Depth=1
	vldrepl.d	$vr0, $t4, 0
	add.d	$t6, $t5, $t0
	move	$t7, $a6
	move	$t8, $a2
	.p2align	4, , 16
.LBB7_50:                               # %vector.body250
                                        #   Parent Loop BB7_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t8, -16
	vld	$vr2, $t8, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vst	$vr1, $t6, -16
	vst	$vr2, $t6, 0
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, -4
	addi.d	$t8, $t8, 32
	bnez	$t7, .LBB7_50
# %bb.51:                               # %middle.block258
                                        #   in Loop: Header=BB7_46 Depth=1
	move	$t6, $a7
	beq	$a4, $a6, .LBB7_45
	.p2align	4, , 16
.LBB7_52:                               # %scalar.ph245.preheader
                                        #   in Loop: Header=BB7_46 Depth=1
	alsl.d	$t5, $t6, $t5, 3
	alsl.d	$t7, $t6, $t1, 3
	.p2align	4, , 16
.LBB7_53:                               # %scalar.ph245
                                        #   Parent Loop BB7_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t4, 0
	fld.d	$fa1, $t7, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t5, 0
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 8
	addi.d	$t7, $t7, 8
	blt	$t6, $a1, .LBB7_53
	b	.LBB7_45
.LBB7_54:                               # %._crit_edge112
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
.LBB7_55:                               # %vector.ph
	slli.d	$a3, $fp, 3
	bstrpick.d	$a2, $s5, 30, 2
	slli.d	$a2, $a2, 2
	add.d	$a3, $a3, $a0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a1, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB7_56:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB7_56
# %bb.57:                               # %middle.block
	beq	$a2, $s5, .LBB7_6
	b	.LBB7_4
.Lfunc_end7:
	.size	mseqcat, .Lfunc_end7-mseqcat
                                        # -- End function
	.globl	strnbcat                        # -- Begin function strnbcat
	.p2align	5
	.type	strnbcat,@function
strnbcat:                               # @strnbcat
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(strnbcat.b)
	addi.d	$s1, $a0, %pc_lo12(strnbcat.b)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s1, $fp
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcpy)
	jr	$t8
.Lfunc_end8:
	.size	strnbcat, .Lfunc_end8-strnbcat
                                        # -- End function
	.globl	conjuctionforgaln               # -- Begin function conjuctionforgaln
	.p2align	5
	.type	conjuctionforgaln,@function
conjuctionforgaln:                      # @conjuctionforgaln
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 400
	st.b	$zero, $s1, 0
	bge	$a0, $a1, .LBB9_8
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $a3
	sub.w	$fp, $a1, $a0
	bstrpick.d	$s5, $fp, 31, 0
	alsl.d	$s6, $a0, $a2, 3
	alsl.d	$s7, $a0, $a5, 3
	addi.w	$s3, $a0, 1
	movgr2fr.d	$fa3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	ori	$s8, $zero, 99
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a4
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $s6, 0
	fld.d	$fa0, $s7, 0
	st.d	$a0, $s2, 0
	fst.d	$fa0, $s0, 0
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa0
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	addi.w	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 8
	beqz	$s5, .LBB9_5
.LBB9_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr3, $sp, 32                   # 16-byte Folded Spill
	addi.d	$a0, $sp, 56
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltu	$s8, $a0, .LBB9_2
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a1, $sp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_5:                                # %.preheader
	beqz	$fp, .LBB9_8
# %bb.6:                                # %.lr.ph33.preheader
	ori	$a0, $zero, 4
	bgeu	$fp, $a0, .LBB9_9
# %bb.7:
	move	$a0, $zero
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	b	.LBB9_12
.LBB9_8:
	move	$fp, $zero
	b	.LBB9_14
.LBB9_9:                                # %vector.ph
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a4, 31, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 16
	move	$a2, $a0
	.p2align	4, , 16
.LBB9_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vfdiv.d	$vr1, $vr1, $vr0
	vfdiv.d	$vr2, $vr2, $vr0
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB9_10
# %bb.11:                               # %middle.block
	beq	$a0, $a4, .LBB9_14
.LBB9_12:                               # %.lr.ph33.preheader47
	alsl.d	$a1, $a0, $a3, 3
	sub.d	$a0, $a4, $a0
	.p2align	4, , 16
.LBB9_13:                               # %.lr.ph33
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB9_13
.LBB9_14:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end9:
	.size	conjuctionforgaln, .Lfunc_end9-conjuctionforgaln
                                        # -- End function
	.globl	makegrouprna                    # -- Begin function makegrouprna
	.p2align	5
	.type	makegrouprna,@function
makegrouprna:                           # @makegrouprna
# %bb.0:
	ld.w	$a4, $a2, 0
	addi.w	$a3, $zero, -1
	beq	$a4, $a3, .LBB10_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a4, 3
	ldx.d	$a5, $a1, $a4
	ld.w	$a4, $a2, 0
	st.d	$a5, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, 4
	bne	$a4, $a3, .LBB10_2
.LBB10_3:                               # %._crit_edge
	ret
.Lfunc_end10:
	.size	makegrouprna, .Lfunc_end10-makegrouprna
                                        # -- End function
	.globl	makegrouprnait                  # -- Begin function makegrouprnait
	.p2align	5
	.type	makegrouprnait,@function
makegrouprnait:                         # @makegrouprnait
# %bb.0:
	pcalau12i	$a4, %got_pc_hi20(njob)
	ld.d	$a4, $a4, %got_pc_lo12(njob)
	ld.w	$a5, $a4, 0
	bge	$a3, $a5, .LBB11_5
# %bb.1:                                # %.lr.ph
	slli.d	$a4, $a3, 3
	ldx.d	$a2, $a2, $a4
	move	$a4, $zero
	add.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 3
	sub.d	$a3, $a5, $a3
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	beqz	$a3, .LBB11_5
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a2, 0
	beqz	$a5, .LBB11_2
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a5, $a1, 0
	slli.d	$a6, $a4, 3
	addi.w	$a4, $a4, 1
	stx.d	$a5, $a0, $a6
	b	.LBB11_2
.LBB11_5:                               # %._crit_edge
	ret
.Lfunc_end11:
	.size	makegrouprnait, .Lfunc_end11-makegrouprnait
                                        # -- End function
	.globl	fastconjuction_noweight         # -- Begin function fastconjuction_noweight
	.p2align	5
	.type	fastconjuction_noweight,@function
fastconjuction_noweight:                # @fastconjuction_noweight
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.b	$zero, $a4, 0
	ld.w	$s6, $a0, 0
	addi.w	$s5, $zero, -1
	beq	$s6, $s5, .LBB12_7
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $a2
	move	$s3, $a1
	addi.d	$s7, $a0, 4
	movgr2fr.d	$fa3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	move	$fp, $zero
	move	$s8, $zero
	move	$s0, $zero
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a3
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               #   in Loop: Header=BB12_3 Depth=1
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $s3, $a0
	st.d	$a0, $s2, 0
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $s1, 0
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	vldi	$vr0, -912
	fadd.d	$fa3, $fa3, $fa0
	addi.d	$s8, $s8, 1
	ld.w	$s6, $s7, 0
	addi.w	$fp, $fp, 1
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	addi.d	$s7, $s7, 4
	beq	$s6, $s5, .LBB12_5
.LBB12_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr3, $sp, 32                   # 16-byte Folded Spill
	addi.w	$a2, $s6, 1
	addi.d	$a0, $sp, 56
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	add.w	$s0, $a0, $s0
	ori	$a0, $zero, 99
	blt	$a0, $s0, .LBB12_2
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a1, $sp, 56
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB12_2
.LBB12_5:                               # %.preheader
	bstrpick.d	$a1, $s8, 31, 0
	ori	$a0, $zero, 4
	bgeu	$a1, $a0, .LBB12_8
# %bb.6:
	move	$a0, $zero
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	b	.LBB12_11
.LBB12_7:
	move	$fp, $zero
	b	.LBB12_13
.LBB12_8:                               # %vector.ph
	bstrpick.d	$a0, $s8, 31, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr3, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a2, $a4, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB12_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vfdiv.d	$vr1, $vr1, $vr0
	vfdiv.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB12_9
# %bb.10:                               # %middle.block
	beq	$a1, $a0, .LBB12_13
.LBB12_11:                              # %.lr.ph36.preheader
	alsl.d	$a1, $a0, $a4, 3
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB12_12:                              # %.lr.ph36
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB12_12
.LBB12_13:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end12:
	.size	fastconjuction_noweight, .Lfunc_end12-fastconjuction_noweight
                                        # -- End function
	.globl	fastconjuction_noname           # -- Begin function fastconjuction_noname
	.p2align	5
	.type	fastconjuction_noname,@function
fastconjuction_noname:                  # @fastconjuction_noname
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.b	$zero, $a5, 0
	ld.w	$s8, $a0, 0
	addi.w	$s6, $zero, -1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	beq	$s8, $s6, .LBB13_7
# %bb.1:                                # %.lr.ph.preheader
	move	$s3, $a2
	move	$s4, $a1
	addi.d	$s7, $a0, 4
	movgr2fr.d	$fa3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	move	$fp, $zero
	move	$s0, $zero
	move	$s1, $zero
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a3
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a1, $s4, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fldx.d	$fa0, $a2, $a0
	st.d	$a1, $s3, 0
	fst.d	$fa0, $s2, 0
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa0
	addi.d	$s0, $s0, 1
	ld.w	$s8, $s7, 0
	addi.w	$fp, $fp, 1
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, 8
	addi.d	$s7, $s7, 4
	beq	$s8, $s6, .LBB13_5
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr3, $sp, 32                   # 16-byte Folded Spill
	addi.w	$a2, $s8, 1
	addi.d	$a0, $sp, 56
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	add.w	$s1, $a0, $s1
	ori	$a0, $zero, 99
	blt	$a0, $s1, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a1, $sp, 56
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB13_2
.LBB13_5:                               # %.preheader
	bstrpick.d	$a1, $s0, 31, 0
	ori	$a0, $zero, 4
	bgeu	$a1, $a0, .LBB13_8
# %bb.6:
	move	$a0, $zero
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	b	.LBB13_11
.LBB13_7:
	move	$fp, $zero
	b	.LBB13_13
.LBB13_8:                               # %vector.ph
	bstrpick.d	$a0, $s0, 31, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr3, 0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a2, $a4, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB13_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vfdiv.d	$vr1, $vr1, $vr0
	vfdiv.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB13_9
# %bb.10:                               # %middle.block
	beq	$a1, $a0, .LBB13_13
.LBB13_11:                              # %.lr.ph38.preheader
	alsl.d	$a1, $a0, $a4, 3
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB13_12:                              # %.lr.ph38
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB13_12
.LBB13_13:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end13:
	.size	fastconjuction_noname, .Lfunc_end13-fastconjuction_noname
                                        # -- End function
	.globl	fastconjuction                  # -- Begin function fastconjuction
	.p2align	5
	.type	fastconjuction,@function
fastconjuction:                         # @fastconjuction
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	st.b	$zero, $a7, 0
	ld.w	$s8, $a0, 0
	addi.w	$s6, $zero, -1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	beq	$s8, $s6, .LBB14_7
# %bb.1:                                # %.lr.ph.preheader
	move	$s3, $a2
	move	$s4, $a1
	addi.d	$s7, $a0, 4
	movgr2fr.d	$fa3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	move	$fp, $zero
	move	$s0, $zero
	move	$s1, $zero
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a3
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               #   in Loop: Header=BB14_3 Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a1, $s4, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fldx.d	$fa0, $a2, $a0
	st.d	$a1, $s3, 0
	fst.d	$fa0, $s2, 0
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa0
	addi.d	$s0, $s0, 1
	ld.w	$s8, $s7, 0
	addi.w	$fp, $fp, 1
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, 8
	addi.d	$s7, $s7, 4
	beq	$s8, $s6, .LBB14_5
.LBB14_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr3, $sp, 32                   # 16-byte Folded Spill
	addi.w	$a2, $s8, 1
	addi.d	$a0, $sp, 56
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	add.w	$s1, $a0, $s1
	ori	$a0, $zero, 99
	blt	$a0, $s1, .LBB14_2
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	addi.d	$a1, $sp, 56
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB14_2
.LBB14_5:                               # %.preheader
	bstrpick.d	$a1, $s0, 31, 0
	ori	$a0, $zero, 4
	bgeu	$a1, $a0, .LBB14_8
# %bb.6:
	move	$a0, $zero
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	b	.LBB14_11
.LBB14_7:
	move	$fp, $zero
	b	.LBB14_13
.LBB14_8:                               # %vector.ph
	bstrpick.d	$a0, $s0, 31, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr3, 0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a2, $a4, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB14_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vfdiv.d	$vr1, $vr1, $vr0
	vfdiv.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB14_9
# %bb.10:                               # %middle.block
	beq	$a1, $a0, .LBB14_13
.LBB14_11:                              # %.lr.ph38.preheader
	alsl.d	$a1, $a0, $a4, 3
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB14_12:                              # %.lr.ph38
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB14_12
.LBB14_13:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end14:
	.size	fastconjuction, .Lfunc_end14-fastconjuction
                                        # -- End function
	.globl	conjuctionfortbfast             # -- Begin function conjuctionfortbfast
	.p2align	5
	.type	conjuctionfortbfast,@function
conjuctionfortbfast:                    # @conjuctionfortbfast
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a1
	st.b	$zero, $a6, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$s6, $a1, %got_pc_lo12(njob)
	ld.w	$a1, $s6, 0
	move	$s0, $zero
	bge	$s3, $a1, .LBB15_15
# %bb.1:                                # %.lr.ph
	move	$s1, $a6
	move	$s2, $a3
	alsl.d	$s7, $s3, $a0, 3
	addi.w	$s4, $s3, 1
	alsl.d	$s8, $s3, $a2, 3
	alsl.d	$fp, $s3, $a5, 3
	movgr2fr.d	$fa3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	move	$s0, $zero
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $s8, 0
	fld.d	$fa0, $fp, 0
	slli.d	$a2, $s0, 3
	stx.d	$a0, $s2, $a2
	ld.w	$a1, $s6, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	fadd.d	$fa3, $fa3, $fa0
	addi.w	$s0, $s0, 1
.LBB15_3:                               # %._crit_edge40
                                        #   in Loop: Header=BB15_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.w	$s4, $s4, 1
	addi.d	$s8, $s8, 8
	addi.d	$fp, $fp, 8
	bge	$s3, $a1, .LBB15_7
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $s3
	beqz	$a0, .LBB15_3
# %bb.5:                                #   in Loop: Header=BB15_4 Depth=1
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	addi.d	$a0, $sp, 40
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 99
	bltu	$a1, $a0, .LBB15_2
# %bb.6:                                #   in Loop: Header=BB15_4 Depth=1
	addi.d	$a1, $sp, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB15_2
.LBB15_7:                               # %.preheader
	blez	$s0, .LBB15_15
# %bb.8:                                # %.lr.ph37.preheader
	ori	$a0, $zero, 4
	bgeu	$s0, $a0, .LBB15_10
# %bb.9:
	move	$a0, $zero
	b	.LBB15_13
.LBB15_10:                              # %vector.ph
	bstrpick.d	$a0, $s0, 30, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr3, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	move	$a2, $a0
	.p2align	4, , 16
.LBB15_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vfdiv.d	$vr1, $vr1, $vr0
	vfdiv.d	$vr2, $vr2, $vr0
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB15_11
# %bb.12:                               # %middle.block
	beq	$a0, $s0, .LBB15_15
.LBB15_13:                              # %.lr.ph37.preheader47
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB15_14:                              # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fdiv.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB15_14
.LBB15_15:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end15:
	.size	conjuctionfortbfast, .Lfunc_end15-conjuctionfortbfast
                                        # -- End function
	.globl	conjuction                      # -- Begin function conjuction
	.p2align	5
	.type	conjuction,@function
conjuction:                             # @conjuction
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 368
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a1
	st.b	$zero, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$s6, $a1, %got_pc_lo12(njob)
	ld.w	$a1, $s6, 0
	move	$s5, $zero
	bge	$s2, $a1, .LBB16_7
# %bb.1:                                # %.lr.ph
	move	$s1, $a3
	alsl.d	$s7, $s2, $a0, 3
	addi.w	$s3, $s2, 1
	alsl.d	$s8, $s2, $a2, 3
	alsl.d	$s0, $s2, $a5, 3
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	move	$s5, $zero
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a0, $s8, 0
	fld.d	$fa0, $s0, 0
	slli.d	$a2, $s5, 3
	ld.w	$a1, $s6, 0
	stx.d	$a0, $s1, $a2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a2
	addi.w	$s5, $s5, 1
.LBB16_3:                               # %._crit_edge28
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	addi.d	$s0, $s0, 8
	bge	$s2, $a1, .LBB16_7
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $s2
	beqz	$a0, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	addi.d	$a0, $sp, 24
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 99
	bltu	$a1, $a0, .LBB16_2
# %bb.6:                                #   in Loop: Header=BB16_4 Depth=1
	addi.d	$a1, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB16_2
.LBB16_7:                               # %._crit_edge
	move	$a0, $s5
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end16:
	.size	conjuction, .Lfunc_end16-conjuction
                                        # -- End function
	.globl	floatdelete                     # -- Begin function floatdelete
	.p2align	5
	.type	floatdelete,@function
floatdelete:                            # @floatdelete
# %bb.0:
	addi.w	$a3, $a2, -1
	bge	$a1, $a3, .LBB17_4
# %bb.1:                                # %.preheader.preheader
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
	ld.d	$s6, $a0, 80
	ld.d	$s7, $a0, 88
	ld.d	$s8, $a0, 96
	ld.d	$ra, $a0, 104
	ld.d	$a3, $a0, 112
	ld.d	$a4, $a0, 120
	ld.d	$a5, $a0, 128
	ld.d	$a6, $a0, 136
	ld.d	$t6, $a0, 0
	ld.d	$t7, $a0, 8
	ld.d	$t8, $a0, 16
	ld.d	$fp, $a0, 24
	ld.d	$s0, $a0, 32
	ld.d	$s1, $a0, 40
	ld.d	$s2, $a0, 48
	ld.d	$s3, $a0, 56
	ld.d	$s4, $a0, 64
	ld.d	$s5, $a0, 72
	ld.d	$a7, $a0, 144
	ld.d	$t0, $a0, 152
	ld.d	$t1, $a0, 160
	ld.d	$t2, $a0, 168
	ld.d	$t3, $a0, 176
	ld.d	$t4, $a0, 184
	nor	$t5, $a1, $zero
	add.d	$a2, $t5, $a2
	ld.d	$t5, $a0, 192
	ld.d	$a0, $a0, 200
	slli.d	$a1, $a1, 2
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 4
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	addi.d	$s7, $s7, 4
	addi.d	$s8, $s8, 4
	addi.d	$ra, $ra, 4
	.p2align	4, , 16
.LBB17_2:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	fldx.s	$fa0, $t6, $a1
	add.d	$a2, $t6, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $t7, $a1
	add.d	$a2, $t7, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $t8, $a1
	add.d	$a2, $t8, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $fp, $a1
	add.d	$a2, $fp, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s0, $a1
	add.d	$a2, $s0, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s1, $a1
	add.d	$a2, $s1, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s2, $a1
	add.d	$a2, $s2, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s3, $a1
	add.d	$a2, $s3, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s4, $a1
	add.d	$a2, $s4, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s5, $a1
	add.d	$a2, $s5, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s6, $a1
	add.d	$a2, $s6, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s7, $a1
	add.d	$a2, $s7, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $s8, $a1
	add.d	$a2, $s8, $a1
	fst.s	$fa0, $a2, -4
	fldx.s	$fa0, $ra, $a1
	add.d	$a2, $ra, $a1
	fst.s	$fa0, $a2, -4
	add.d	$a2, $a3, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $a3, $a1
	add.d	$a2, $a4, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $a4, $a1
	add.d	$a2, $a5, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $a5, $a1
	add.d	$a2, $a6, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $a6, $a1
	add.d	$a2, $a7, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $a7, $a1
	add.d	$a2, $t0, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $t0, $a1
	add.d	$a2, $t1, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $t1, $a1
	add.d	$a2, $t2, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $t2, $a1
	add.d	$a2, $t3, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $t3, $a1
	add.d	$a2, $t4, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $t4, $a1
	add.d	$a2, $t5, $a1
	fld.s	$fa0, $a2, 4
	fstx.s	$fa0, $t5, $a1
	add.d	$a2, $a0, $a1
	fld.s	$fa0, $a2, 4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	fstx.s	$fa0, $a0, $a1
	addi.d	$a2, $a2, -1
	addi.d	$t6, $t6, 4
	addi.d	$a0, $a0, 4
	addi.d	$t7, $t7, 4
	addi.d	$t5, $t5, 4
	addi.d	$t8, $t8, 4
	addi.d	$t4, $t4, 4
	addi.d	$fp, $fp, 4
	addi.d	$t3, $t3, 4
	addi.d	$s0, $s0, 4
	addi.d	$t2, $t2, 4
	addi.d	$s1, $s1, 4
	addi.d	$t1, $t1, 4
	addi.d	$s2, $s2, 4
	addi.d	$t0, $t0, 4
	addi.d	$s3, $s3, 4
	addi.d	$a7, $a7, 4
	addi.d	$s4, $s4, 4
	addi.d	$a6, $a6, 4
	addi.d	$s5, $s5, 4
	addi.d	$a5, $a5, 4
	addi.d	$s6, $s6, 4
	addi.d	$a4, $a4, 4
	addi.d	$s7, $s7, 4
	addi.d	$a3, $a3, 4
	addi.d	$s8, $s8, 4
	addi.d	$ra, $ra, 4
	bnez	$a2, .LBB17_2
# %bb.3:
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
.LBB17_4:                               # %._crit_edge
	ret
.Lfunc_end17:
	.size	floatdelete, .Lfunc_end17-floatdelete
                                        # -- End function
	.globl	chardelete                      # -- Begin function chardelete
	.p2align	5
	.type	chardelete,@function
chardelete:                             # @chardelete
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a2, 1220
	ori	$a2, $a2, 880
	sub.d	$sp, $sp, $a2
	add.d	$fp, $a0, $a1
	addi.d	$a1, $fp, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1220
	ori	$a0, $a0, 880
	add.d	$sp, $sp, $a0
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end18:
	.size	chardelete, .Lfunc_end18-chardelete
                                        # -- End function
	.globl	RootBranchNode                  # -- Begin function RootBranchNode
	.p2align	5
	.type	RootBranchNode,@function
RootBranchNode:                         # @RootBranchNode
# %bb.0:
	addi.w	$a4, $a0, -2
	addi.d	$a5, $a2, 1
	addi.w	$a6, $a5, 0
	ori	$a0, $zero, 1
	bge	$a6, $a4, .LBB19_9
# %bb.1:                                # %.preheader28.lr.ph
	alsl.d	$a2, $a2, $a1, 3
	ori	$a0, $zero, 1
	slli.d	$a3, $a3, 3
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %.loopexit
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a6, $a5, 0
	beq	$a4, $a6, .LBB19_9
.LBB19_3:                               # %.preheader28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_5 Depth 2
                                        #     Child Loop BB19_8 Depth 2
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a1, $a6
	ld.d	$t1, $a6, 0
	ld.w	$a7, $t1, 0
	bltz	$a7, .LBB19_6
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$t0, $a2, 0
	ldx.d	$t0, $t0, $a3
	ld.w	$t0, $t0, 0
	addi.d	$t1, $t1, 4
	.p2align	4, , 16
.LBB19_5:                               #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xor	$t2, $a7, $t0
	ld.w	$a7, $t1, 0
	sltui	$t2, $t2, 1
	add.w	$a0, $a0, $t2
	addi.d	$t1, $t1, 4
	bgez	$a7, .LBB19_5
.LBB19_6:                               # %.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$t0, $a6, 8
	ld.w	$a6, $t0, 0
	bltz	$a6, .LBB19_2
# %bb.7:                                # %.lr.ph34
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a7, $a2, 0
	ldx.d	$a7, $a7, $a3
	ld.w	$a7, $a7, 0
	addi.d	$t0, $t0, 4
	.p2align	4, , 16
.LBB19_8:                               #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xor	$t1, $a6, $a7
	ld.w	$a6, $t0, 0
	sltui	$t1, $t1, 1
	add.w	$a0, $a0, $t1
	addi.d	$t0, $t0, 4
	bgez	$a6, .LBB19_8
	b	.LBB19_2
.LBB19_9:                               # %._crit_edge
	ret
.Lfunc_end19:
	.size	RootBranchNode, .Lfunc_end19-RootBranchNode
                                        # -- End function
	.globl	BranchLeafNode                  # -- Begin function BranchLeafNode
	.p2align	5
	.type	BranchLeafNode,@function
BranchLeafNode:                         # @BranchLeafNode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s2, $a1
	blez	$a0, .LBB20_2
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a2, $a0, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB20_2:                               # %.preheader35
	ori	$a0, $zero, 2
	blt	$s1, $a0, .LBB20_11
# %bb.3:                                # %.preheader34.preheader
	move	$a0, $zero
	addi.w	$a1, $s1, -1
	b	.LBB20_5
	.p2align	4, , 16
.LBB20_4:                               # %._crit_edge.1
                                        #   in Loop: Header=BB20_5 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB20_11
.LBB20_5:                               # %.preheader34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_7 Depth 2
                                        #     Child Loop BB20_10 Depth 2
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $s2, $a2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	bltz	$a4, .LBB20_8
# %bb.6:                                # %.lr.ph38.preheader
                                        #   in Loop: Header=BB20_5 Depth=1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB20_7:                               # %.lr.ph38
                                        #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $fp, $a4
	addi.d	$a5, $a5, 1
	stx.w	$a5, $fp, $a4
	ld.w	$a5, $a3, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB20_7
.LBB20_8:                               # %._crit_edge
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a2, $a2, 8
	ld.w	$a3, $a2, 0
	bltz	$a3, .LBB20_4
# %bb.9:                                # %.lr.ph38.1.preheader
                                        #   in Loop: Header=BB20_5 Depth=1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB20_10:                              # %.lr.ph38.1
                                        #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $fp, $a3
	addi.d	$a4, $a4, 1
	stx.w	$a4, $fp, $a3
	ld.w	$a4, $a2, 0
	bstrpick.d	$a3, $a4, 31, 0
	addi.d	$a2, $a2, 4
	bgez	$a4, .LBB20_10
	b	.LBB20_4
.LBB20_11:                              # %.preheader32
	bltz	$s0, .LBB20_17
# %bb.12:                               # %.preheader.lr.ph
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s2, $a0
	move	$a1, $zero
	addi.d	$a2, $s0, 1
	bstrpick.d	$a2, $a2, 31, 0
	b	.LBB20_14
	.p2align	4, , 16
.LBB20_13:                              # %._crit_edge43
                                        #   in Loop: Header=BB20_14 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB20_17
.LBB20_14:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_16 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $a0, $a3
	ld.w	$a4, $a3, 0
	bltz	$a4, .LBB20_13
# %bb.15:                               # %.lr.ph42.preheader
                                        #   in Loop: Header=BB20_14 Depth=1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB20_16:                              # %.lr.ph42
                                        #   Parent Loop BB20_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $fp, $a4
	addi.d	$a5, $a5, 1
	stx.w	$a5, $fp, $a4
	ld.w	$a5, $a3, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB20_16
	b	.LBB20_13
.LBB20_17:                              # %._crit_edge46
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	BranchLeafNode, .Lfunc_end20-BranchLeafNode
                                        # -- End function
	.globl	RootLeafNode                    # -- Begin function RootLeafNode
	.p2align	5
	.type	RootLeafNode,@function
RootLeafNode:                           # @RootLeafNode
# %bb.0:
	blez	$a0, .LBB21_11
# %bb.1:                                # %.preheader21
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	slli.d	$a2, $a0, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bltu	$s1, $a0, .LBB21_10
# %bb.2:                                # %.preheader20.preheader
	move	$a0, $zero
	addi.w	$a1, $s1, -2
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_3:                               # %._crit_edge.1
                                        #   in Loop: Header=BB21_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB21_10
.LBB21_4:                               # %.preheader20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #     Child Loop BB21_9 Depth 2
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $s0, $a2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	bltz	$a4, .LBB21_7
# %bb.5:                                # %.lr.ph24.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB21_6:                               # %.lr.ph24
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $fp, $a4
	addi.d	$a5, $a5, 1
	stx.w	$a5, $fp, $a4
	ld.w	$a5, $a3, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB21_6
.LBB21_7:                               # %._crit_edge
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a2, $a2, 8
	ld.w	$a3, $a2, 0
	bltz	$a3, .LBB21_3
# %bb.8:                                # %.lr.ph24.1.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB21_9:                               # %.lr.ph24.1
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $fp, $a3
	addi.d	$a4, $a4, 1
	stx.w	$a4, $fp, $a3
	ld.w	$a4, $a2, 0
	bstrpick.d	$a3, $a4, 31, 0
	addi.d	$a2, $a2, 4
	bgez	$a4, .LBB21_9
	b	.LBB21_3
.LBB21_10:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB21_11:                              # %._crit_edge27
	ret
.Lfunc_end21:
	.size	RootLeafNode, .Lfunc_end21-RootLeafNode
                                        # -- End function
	.globl	nodeFromABranch                 # -- Begin function nodeFromABranch
	.p2align	5
	.type	nodeFromABranch,@function
nodeFromABranch:                        # @nodeFromABranch
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
	pcalau12i	$s5, %pc_hi20(nodeFromABranch.outergroup2)
	ld.d	$a4, $s5, %pc_lo12(nodeFromABranch.outergroup2)
	move	$s2, $a6
	move	$s4, $a5
	move	$s3, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$s6, %pc_hi20(nodeFromABranch.table)
	bnez	$a4, .LBB22_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(nodeFromABranch.outergroup2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(nodeFromABranch.table)
.LBB22_2:
	slli.d	$a0, $s4, 3
	ldx.d	$a1, $s3, $a0
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $a1, $a0
	sltui	$a2, $s2, 1
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	blez	$s1, .LBB22_10
# %bb.3:                                # %.lr.ph
	ld.d	$a2, $s6, %pc_lo12(nodeFromABranch.table)
	ori	$a3, $zero, 8
	bgeu	$s1, $a3, .LBB22_5
# %bb.4:
	move	$a3, $zero
	b	.LBB22_8
.LBB22_5:                               # %vector.ph
	bstrpick.d	$a3, $s1, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a2, 16
	vrepli.w	$vr0, 1
	move	$a5, $a3
	.p2align	4, , 16
.LBB22_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB22_6
# %bb.7:                                # %middle.block
	beq	$a3, $s1, .LBB22_10
.LBB22_8:                               # %scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a3, $s1, $a3
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB22_9:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB22_9
.LBB22_10:                              # %.preheader83
	ld.w	$a3, $a0, 0
	bltz	$a3, .LBB22_13
# %bb.11:                               # %.lr.ph86
	ld.d	$a2, $s6, %pc_lo12(nodeFromABranch.table)
	bstrpick.d	$a4, $a3, 31, 0
	addi.d	$a3, $a0, 4
	.p2align	4, , 16
.LBB22_12:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a4, 2
	stx.w	$zero, $a2, $a4
	ld.w	$a5, $a3, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB22_12
.LBB22_13:                              # %.preheader82
	ld.w	$a3, $a1, 0
	bltz	$a3, .LBB22_16
# %bb.14:                               # %.lr.ph88
	ld.d	$a2, $s6, %pc_lo12(nodeFromABranch.table)
	bstrpick.d	$a4, $a3, 31, 0
	addi.d	$a3, $a1, 4
	.p2align	4, , 16
.LBB22_15:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a4, 2
	stx.w	$zero, $a2, $a4
	ld.w	$a5, $a3, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB22_15
.LBB22_16:                              # %.preheader81
	ld.d	$a2, $s5, %pc_lo12(nodeFromABranch.outergroup2)
	blez	$s1, .LBB22_21
# %bb.17:                               # %.lr.ph91
	ld.d	$a3, $s6, %pc_lo12(nodeFromABranch.table)
	move	$a5, $zero
	move	$a4, $zero
	b	.LBB22_19
	.p2align	4, , 16
.LBB22_18:                              #   in Loop: Header=BB22_19 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$s1, $s1, -1
	addi.d	$a3, $a3, 4
	beqz	$s1, .LBB22_22
.LBB22_19:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	beqz	$a6, .LBB22_18
# %bb.20:                               #   in Loop: Header=BB22_19 Depth=1
	slli.d	$a6, $a4, 2
	stx.w	$a5, $a2, $a6
	addi.w	$a4, $a4, 1
	b	.LBB22_18
.LBB22_21:
	move	$a4, $zero
.LBB22_22:                              # %._crit_edge
	slli.d	$a3, $a4, 2
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	stx.w	$a4, $a2, $a3
	ld.w	$a4, $a0, 0
	bltz	$a4, .LBB22_25
# %bb.23:                               # %.lr.ph94.preheader
	addi.d	$a3, $a0, 4
	bstrpick.d	$a4, $a4, 31, 0
	.p2align	4, , 16
.LBB22_24:                              # %.lr.ph94
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $fp, $a6
	slli.d	$a7, $a5, 2
	ld.w	$t0, $a2, 0
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $fp, $a5
	ldx.w	$a7, $a6, $a7
	slli.d	$t0, $t0, 2
	ldx.w	$a6, $a6, $t0
	ldx.w	$a5, $a5, $t0
	add.d	$a6, $a6, $a7
	nor	$a7, $a5, $zero
	add.d	$a7, $a6, $a7
	sub.d	$a5, $a5, $a6
	nor	$a5, $a5, $zero
	slli.d	$a4, $a4, 2
	bstrpick.d	$a5, $a5, 31, 31
	add.w	$a5, $a7, $a5
	srli.d	$a5, $a5, 1
	stx.w	$a5, $s0, $a4
	ld.wu	$a4, $a3, 0
	addi.w	$a5, $a4, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB22_24
.LBB22_25:                              # %.preheader80
	ld.w	$a4, $a1, 0
	bltz	$a4, .LBB22_28
# %bb.26:                               # %.lr.ph96.preheader
	addi.d	$a3, $a1, 4
	bstrpick.d	$a4, $a4, 31, 0
	.p2align	4, , 16
.LBB22_27:                              # %.lr.ph96
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a0, 0
	slli.d	$a7, $a4, 3
	ldx.d	$a7, $fp, $a7
	slli.d	$a5, $a5, 2
	slli.d	$t0, $a6, 3
	ldx.d	$t0, $fp, $t0
	ldx.w	$t1, $a7, $a5
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a7, $a6
	ldx.w	$a5, $t0, $a5
	add.w	$a6, $t1, $a6
	sub.d	$a5, $a6, $a5
	addi.d	$a5, $a5, 1
	slli.d	$a4, $a4, 2
	bstrpick.d	$a6, $a5, 31, 31
	add.w	$a5, $a5, $a6
	srli.d	$a5, $a5, 1
	stx.w	$a5, $s0, $a4
	ld.wu	$a4, $a3, 0
	addi.w	$a5, $a4, 0
	addi.d	$a3, $a3, 4
	bgez	$a5, .LBB22_27
.LBB22_28:                              # %.preheader
	ld.w	$a3, $a2, 0
	bltz	$a3, .LBB22_31
# %bb.29:                               # %.lr.ph98.preheader
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB22_30:                              # %.lr.ph98
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a0, 0
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $fp, $a6
	slli.d	$a4, $a4, 2
	slli.d	$a7, $a5, 3
	ldx.d	$a7, $fp, $a7
	ldx.w	$t0, $a6, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a6, $a5
	ldx.w	$a4, $a7, $a4
	add.w	$a5, $t0, $a5
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 1
	slli.d	$a3, $a3, 2
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 1
	stx.w	$a4, $s0, $a3
	ld.wu	$a3, $a2, 0
	addi.w	$a4, $a3, 0
	addi.d	$a2, $a2, 4
	bgez	$a4, .LBB22_30
.LBB22_31:                              # %._crit_edge99
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
.Lfunc_end22:
	.size	nodeFromABranch, .Lfunc_end22-nodeFromABranch
                                        # -- End function
	.globl	OneClusterAndTheOther           # -- Begin function OneClusterAndTheOther
	.p2align	5
	.type	OneClusterAndTheOther,@function
OneClusterAndTheOther:                  # @OneClusterAndTheOther
# %bb.0:
	slli.d	$a7, $a5, 3
	ldx.d	$a7, $a4, $a7
	slli.d	$a6, $a6, 3
	ldx.d	$a7, $a7, $a6
	ld.w	$a7, $a7, 0
	st.w	$a7, $a2, 0
	bltz	$a7, .LBB23_3
# %bb.1:                                # %.lr.ph.preheader
	alsl.d	$a4, $a5, $a4, 3
	bstrpick.d	$t0, $a7, 31, 0
	ori	$a5, $zero, 4
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB23_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a2, 0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	stx.b	$a7, $t1, $t0
	ld.d	$t0, $a4, 0
	ldx.d	$t0, $t0, $a6
	ldx.w	$t1, $t0, $a5
	bstrpick.d	$t0, $t1, 31, 0
	addi.d	$a5, $a5, 4
	bgez	$t1, .LBB23_2
.LBB23_3:                               # %.preheader
	blez	$a0, .LBB23_7
# %bb.4:                                # %.lr.ph34
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	move	$a5, $zero
	move	$a6, $a0
	.p2align	4, , 16
.LBB23_5:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a4, 0
	beqz	$a7, .LBB23_8
# %bb.6:                                #   in Loop: Header=BB23_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 1
	bnez	$a6, .LBB23_5
.LBB23_7:                               # %.loopexit
	ld.w	$a4, $a3, 0
	blt	$a4, $a0, .LBB23_9
	b	.LBB23_13
.LBB23_8:
	st.w	$a5, $a3, 0
	ld.w	$a4, $a3, 0
	bge	$a4, $a0, .LBB23_13
.LBB23_9:                               # %.lr.ph36.preheader
	ori	$a5, $zero, 1
	b	.LBB23_11
	.p2align	4, , 16
.LBB23_10:                              #   in Loop: Header=BB23_11 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a0, $a4, .LBB23_13
.LBB23_11:                              # %.lr.ph36
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	ldx.bu	$a6, $a6, $a4
	bnez	$a6, .LBB23_10
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=1
	ld.w	$a6, $a3, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	stx.b	$a5, $a6, $a4
	b	.LBB23_10
.LBB23_13:                              # %._crit_edge
	ret
.Lfunc_end23:
	.size	OneClusterAndTheOther, .Lfunc_end23-OneClusterAndTheOther
                                        # -- End function
	.globl	makeEffMtx                      # -- Begin function makeEffMtx
	.p2align	5
	.type	makeEffMtx,@function
makeEffMtx:                             # @makeEffMtx
# %bb.0:
	blez	$a0, .LBB24_12
# %bb.1:                                # %.preheader.us.preheader
	move	$a3, $zero
	slli.d	$a4, $a0, 3
	alsl.d	$a5, $a0, $a2, 3
	bstrpick.d	$a6, $a0, 30, 2
	slli.d	$a6, $a6, 2
	addi.d	$a7, $a2, 16
	ori	$t0, $zero, 4
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_2:                               # %._crit_edge.us
                                        #   in Loop: Header=BB24_3 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a0, .LBB24_12
.LBB24_3:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_10 Depth 2
                                        #     Child Loop BB24_8 Depth 2
	slli.d	$t1, $a3, 3
	ldx.d	$t2, $a1, $t1
	alsl.d	$t1, $a3, $a2, 3
	bltu	$a0, $t0, .LBB24_6
# %bb.4:                                # %vector.memcheck
                                        #   in Loop: Header=BB24_3 Depth=1
	bgeu	$t2, $a5, .LBB24_9
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB24_3 Depth=1
	add.d	$t3, $t2, $a4
	bgeu	$a2, $t3, .LBB24_9
.LBB24_6:                               #   in Loop: Header=BB24_3 Depth=1
	move	$t4, $zero
.LBB24_7:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB24_3 Depth=1
	alsl.d	$t3, $t4, $a2, 3
	alsl.d	$t2, $t4, $t2, 3
	sub.d	$t4, $a0, $t4
	.p2align	4, , 16
.LBB24_8:                               # %scalar.ph
                                        #   Parent Loop BB24_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t1, 0
	fld.d	$fa1, $t3, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t2, 0
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, -1
	addi.d	$t2, $t2, 8
	bnez	$t4, .LBB24_8
	b	.LBB24_2
	.p2align	4, , 16
.LBB24_9:                               # %vector.ph
                                        #   in Loop: Header=BB24_3 Depth=1
	vldrepl.d	$vr0, $t1, 0
	addi.d	$t3, $t2, 16
	move	$t4, $a7
	move	$t5, $a6
	.p2align	4, , 16
.LBB24_10:                              # %vector.body
                                        #   Parent Loop BB24_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t4, -16
	vld	$vr2, $t4, 0
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vst	$vr1, $t3, -16
	vst	$vr2, $t3, 0
	addi.d	$t5, $t5, -4
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB24_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB24_3 Depth=1
	move	$t4, $a6
	beq	$a6, $a0, .LBB24_2
	b	.LBB24_7
.LBB24_12:                              # %._crit_edge16
	ret
.Lfunc_end24:
	.size	makeEffMtx, .Lfunc_end24-makeEffMtx
                                        # -- End function
	.globl	node_eff                        # -- Begin function node_eff
	.p2align	5
	.type	node_eff,@function
node_eff:                               # @node_eff
# %bb.0:
	blez	$a0, .LBB25_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(geta2)
	ld.d	$s2, $a0, %got_pc_lo12(geta2)
	.p2align	4, , 16
.LBB25_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	vldi	$vr0, -928
	pcaddu18i	$ra, %call36(ipower)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s2, 0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 4
	bnez	$s1, .LBB25_2
# %bb.3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB25_4:                               # %._crit_edge
	ret
.Lfunc_end25:
	.size	node_eff, .Lfunc_end25-node_eff
                                        # -- End function
	.globl	shrinklocalhom                  # -- Begin function shrinklocalhom
	.p2align	5
	.type	shrinklocalhom,@function
shrinklocalhom:                         # @shrinklocalhom
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(njob)
	ld.d	$a5, $a5, %got_pc_lo12(njob)
	ld.w	$a5, $a5, 0
	bge	$a1, $a5, .LBB26_10
# %bb.1:                                # %.lr.ph35
	bge	$a2, $a5, .LBB26_10
# %bb.2:                                # %.lr.ph35.split.us.preheader
	move	$a6, $zero
	slli.d	$a7, $a1, 3
	ldx.d	$a7, $a0, $a7
	alsl.d	$a0, $a2, $a0, 3
	slli.d	$t0, $a2, 6
	alsl.d	$t0, $a2, $t0, 4
	sub.d	$t1, $a5, $a2
	vldi	$vr0, -784
	b	.LBB26_5
	.p2align	4, , 16
.LBB26_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB26_5 Depth=1
	addi.w	$a6, $a6, 1
.LBB26_4:                               #   in Loop: Header=BB26_5 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a5, .LBB26_10
.LBB26_5:                               # %.lr.ph35.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_8 Depth 2
	ldx.bu	$t2, $a7, $a1
	beqz	$t2, .LBB26_4
# %bb.6:                                # %.preheader.us
                                        #   in Loop: Header=BB26_5 Depth=1
	ld.d	$t5, $a0, 0
	move	$t2, $zero
	alsl.d	$t3, $a1, $a3, 3
	alsl.d	$t4, $a6, $a4, 3
	add.d	$t5, $t5, $a2
	move	$t6, $t1
	move	$t7, $t0
	b	.LBB26_8
	.p2align	4, , 16
.LBB26_7:                               #   in Loop: Header=BB26_8 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 80
	beqz	$t6, .LBB26_3
.LBB26_8:                               #   Parent Loop BB26_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t8, $t5, 0
	beqz	$t8, .LBB26_7
# %bb.9:                                #   in Loop: Header=BB26_8 Depth=2
	ld.d	$t8, $t3, 0
	add.d	$t8, $t8, $t7
	fld.d	$fa1, $t8, 40
	ld.d	$fp, $t4, 0
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	slli.d	$s0, $t2, 3
	movcf2gr	$s1, $fcc0
	masknez	$t8, $t8, $s1
	stx.d	$t8, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB26_7
.LBB26_10:                              # %._crit_edge36
	move	$a0, $zero
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end26:
	.size	shrinklocalhom, .Lfunc_end26-shrinklocalhom
                                        # -- End function
	.globl	msshrinklocalhom                # -- Begin function msshrinklocalhom
	.p2align	5
	.type	msshrinklocalhom,@function
msshrinklocalhom:                       # @msshrinklocalhom
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(njob)
	ld.d	$a5, $a5, %got_pc_lo12(njob)
	ld.w	$a5, $a5, 0
	bge	$a1, $a5, .LBB27_13
# %bb.1:                                # %.lr.ph45
	bge	$a2, $a5, .LBB27_13
# %bb.2:                                # %.lr.ph45.split.us.preheader
	move	$a6, $zero
	slli.d	$a7, $a1, 3
	ldx.d	$a7, $a0, $a7
	alsl.d	$a0, $a2, $a0, 3
	slli.d	$t0, $a2, 6
	alsl.d	$t0, $a2, $t0, 4
	addi.d	$t0, $t0, 40
	sub.d	$t1, $a5, $a2
	vldi	$vr0, -784
	b	.LBB27_5
	.p2align	4, , 16
.LBB27_3:                               # %._crit_edge.us
                                        #   in Loop: Header=BB27_5 Depth=1
	addi.w	$a6, $a6, 1
.LBB27_4:                               #   in Loop: Header=BB27_5 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a5, .LBB27_13
.LBB27_5:                               # %.lr.ph45.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_10 Depth 2
	ldx.bu	$t2, $a7, $a1
	beqz	$t2, .LBB27_4
# %bb.6:                                # %.preheader.us
                                        #   in Loop: Header=BB27_5 Depth=1
	ld.d	$t5, $a0, 0
	move	$t2, $zero
	alsl.d	$t3, $a1, $a3, 3
	alsl.d	$t4, $a6, $a4, 3
	add.d	$t5, $t5, $a2
	addi.w	$t6, $a1, 0
	move	$t7, $t1
	move	$t8, $t0
	move	$fp, $a2
	b	.LBB27_10
	.p2align	4, , 16
.LBB27_7:                               #   in Loop: Header=BB27_10 Depth=2
	slt	$s0, $fp, $t6
	masknez	$s1, $fp, $s0
	maskeqz	$s0, $t6, $s0
	slt	$s2, $t6, $fp
	masknez	$s3, $fp, $s2
	maskeqz	$s2, $t6, $s2
	or	$s2, $s2, $s3
	slli.d	$s2, $s2, 3
	ldx.d	$s2, $a3, $s2
	or	$s0, $s0, $s1
	slli.d	$s1, $s0, 6
	alsl.d	$s0, $s0, $s1, 4
	add.d	$s0, $s2, $s0
.LBB27_8:                               #   in Loop: Header=BB27_10 Depth=2
	ld.d	$s1, $t4, 0
	slli.d	$s2, $t2, 3
	stx.d	$s0, $s1, $s2
	addi.w	$t2, $t2, 1
.LBB27_9:                               #   in Loop: Header=BB27_10 Depth=2
	addi.w	$fp, $fp, 1
	addi.d	$t5, $t5, 1
	addi.d	$t7, $t7, -1
	addi.d	$t8, $t8, 80
	beqz	$t7, .LBB27_3
.LBB27_10:                              #   Parent Loop BB27_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s0, $t5, 0
	beqz	$s0, .LBB27_9
# %bb.11:                               #   in Loop: Header=BB27_10 Depth=2
	ld.d	$s0, $t3, 0
	fldx.d	$fa1, $s0, $t8
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB27_7
# %bb.12:                               #   in Loop: Header=BB27_10 Depth=2
	move	$s0, $zero
	b	.LBB27_8
.LBB27_13:                              # %._crit_edge46
	move	$a0, $zero
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end27:
	.size	msshrinklocalhom, .Lfunc_end27-msshrinklocalhom
                                        # -- End function
	.globl	fastshrinklocalhom              # -- Begin function fastshrinklocalhom
	.p2align	5
	.type	fastshrinklocalhom,@function
fastshrinklocalhom:                     # @fastshrinklocalhom
# %bb.0:
	ld.w	$a7, $a0, 0
	addi.w	$a4, $zero, -1
	beq	$a7, $a4, .LBB28_6
# %bb.1:                                # %.preheader.lr.ph
	ld.w	$a5, $a1, 0
	beq	$a5, $a4, .LBB28_6
# %bb.2:                                # %.preheader.preheader
	move	$a6, $zero
	addi.d	$a1, $a1, 4
	vldi	$vr0, -784
	.p2align	4, , 16
.LBB28_3:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_4 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$t0, $a3, $t0
	alsl.d	$a7, $a7, $a2, 3
	move	$t1, $a1
	move	$t2, $a5
	.p2align	4, , 16
.LBB28_4:                               #   Parent Loop BB28_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a7, 0
	slli.d	$t4, $t2, 6
	alsl.d	$t2, $t2, $t4, 4
	add.d	$t3, $t3, $t2
	fld.d	$fa1, $t3, 40
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	movcf2gr	$t4, $fcc0
	ld.w	$t2, $t1, 0
	masknez	$t3, $t3, $t4
	st.d	$t3, $t0, 0
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 4
	bne	$t2, $a4, .LBB28_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.w	$a7, $a0, 4
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 1
	bne	$a7, $a4, .LBB28_3
.LBB28_6:                               # %._crit_edge30
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	fastshrinklocalhom, .Lfunc_end28-fastshrinklocalhom
                                        # -- End function
	.globl	msfastshrinklocalhom            # -- Begin function msfastshrinklocalhom
	.p2align	5
	.type	msfastshrinklocalhom,@function
msfastshrinklocalhom:                   # @msfastshrinklocalhom
# %bb.0:
	ld.w	$a5, $a0, 0
	addi.w	$a4, $zero, -1
	beq	$a5, $a4, .LBB29_6
# %bb.1:                                # %.preheader.lr.ph
	ld.w	$a6, $a1, 0
	beq	$a6, $a4, .LBB29_6
# %bb.2:                                # %.preheader.preheader
	move	$a7, $zero
	addi.d	$a1, $a1, 4
	vldi	$vr0, -784
	.p2align	4, , 16
.LBB29_3:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_4 Depth 2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a3, $t0
	move	$t1, $a1
	move	$t2, $a6
	.p2align	4, , 16
.LBB29_4:                               #   Parent Loop BB29_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$t3, $a5, $t2
	masknez	$t4, $t2, $t3
	maskeqz	$t3, $a5, $t3
	or	$t3, $t3, $t4
	slt	$t4, $t2, $a5
	masknez	$t2, $t2, $t4
	maskeqz	$t4, $a5, $t4
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a2, $t3
	or	$t2, $t4, $t2
	slli.d	$t4, $t2, 6
	alsl.d	$t2, $t2, $t4, 4
	add.d	$t3, $t3, $t2
	fld.d	$fa1, $t3, 40
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	movcf2gr	$t4, $fcc0
	ld.w	$t2, $t1, 0
	masknez	$t3, $t3, $t4
	st.d	$t3, $t0, 0
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 4
	bne	$t2, $a4, .LBB29_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB29_3 Depth=1
	ld.w	$a5, $a0, 4
	addi.d	$a0, $a0, 4
	addi.d	$a7, $a7, 1
	bne	$a5, $a4, .LBB29_3
.LBB29_6:                               # %._crit_edge41
	move	$a0, $zero
	ret
.Lfunc_end29:
	.size	msfastshrinklocalhom, .Lfunc_end29-msfastshrinklocalhom
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"score in score_calc = %f\n"
	.size	.L.str, 26

	.type	strnbcat.b,@object              # @strnbcat.b
	.local	strnbcat.b
	.comm	strnbcat.b,5000000,1
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" %d"
	.size	.L.str.1, 4

	.type	nodeFromABranch.outergroup2,@object # @nodeFromABranch.outergroup2
	.local	nodeFromABranch.outergroup2
	.comm	nodeFromABranch.outergroup2,8,8
	.type	nodeFromABranch.table,@object   # @nodeFromABranch.table
	.local	nodeFromABranch.table
	.comm	nodeFromABranch.table,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strnbcat.b
