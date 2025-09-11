	.file	"goverlap.c"
	.text
	.globl	goverlap                        # -- Begin function goverlap
	.p2align	5
	.type	goverlap,@function
goverlap:                               # @goverlap
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	move	$t4, $a5
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$a7, $a5, 0
	slli.d	$a5, $a0, 3
	ldx.d	$s7, $a7, $a5
	alsl.d	$a3, $a3, $s7, 3
	ld.d	$s0, $a3, 152
	ld.w	$a3, $s0, 56
	ld.w	$a5, $s0, 60
	ld.w	$a6, $s0, 64
	ld.w	$t0, $s0, 68
	add.w	$t2, $a3, $a1
	add.w	$t3, $a5, $a1
	add.w	$s1, $a6, $a2
	add.w	$t5, $t0, $a2
	pcalau12i	$a3, %got_pc_hi20(numcells)
	ld.d	$a3, $a3, %got_pc_lo12(numcells)
	ld.w	$t6, $a3, 0
	blt	$t6, $a0, .LBB0_2
# %bb.1:
	ld.w	$a3, $s0, 40
	ld.w	$a5, $s0, 44
	ld.w	$a6, $s0, 48
	ld.w	$t0, $s0, 52
	sub.w	$t2, $t2, $a3
	add.w	$t3, $a5, $t3
	sub.w	$s1, $s1, $a6
	add.w	$t5, $t0, $t5
.LBB0_2:
	pcalau12i	$a3, %got_pc_hi20(binOffsetX)
	ld.d	$a3, $a3, %got_pc_lo12(binOffsetX)
	ld.w	$a3, $a3, 0
	sub.w	$a5, $t2, $a3
	pcalau12i	$a6, %got_pc_hi20(binWidthX)
	ld.d	$a6, $a6, %got_pc_lo12(binWidthX)
	ld.w	$a6, $a6, 0
	div.w	$a5, $a5, $a6
	slti	$t0, $a5, 1
	pcalau12i	$t1, %got_pc_hi20(numBinsX)
	ld.d	$t1, $t1, %got_pc_lo12(numBinsX)
	ld.w	$t1, $t1, 0
	slt	$t7, $a5, $t1
	maskeqz	$a5, $a5, $t7
	masknez	$t7, $t1, $t7
	or	$a5, $a5, $t7
	masknez	$a5, $a5, $t0
	ori	$t7, $zero, 1
	maskeqz	$t0, $t7, $t0
	or	$s2, $t0, $a5
	sub.w	$a3, $t3, $a3
	div.w	$a3, $a3, $a6
	slt	$a5, $t1, $a3
	slt	$a6, $t7, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t7, $a6
	or	$a3, $a3, $a6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $t1, $a5
	or	$a6, $a5, $a3
	pcalau12i	$a3, %got_pc_hi20(binOffsetY)
	ld.d	$a3, $a3, %got_pc_lo12(binOffsetY)
	ld.w	$a3, $a3, 0
	sub.w	$a5, $s1, $a3
	pcalau12i	$t0, %got_pc_hi20(binWidthY)
	ld.d	$t0, $t0, %got_pc_lo12(binWidthY)
	ld.w	$t0, $t0, 0
	div.w	$a5, $a5, $t0
	slti	$t1, $a5, 1
	pcalau12i	$t8, %got_pc_hi20(numBinsY)
	ld.d	$t8, $t8, %got_pc_lo12(numBinsY)
	ld.w	$t8, $t8, 0
	slt	$fp, $a5, $t8
	maskeqz	$a5, $a5, $fp
	masknez	$fp, $t8, $fp
	or	$a5, $a5, $fp
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $t7, $t1
	or	$fp, $t1, $a5
	sub.w	$a3, $t5, $a3
	div.w	$a3, $a3, $t0
	slt	$a5, $t8, $a3
	slt	$t0, $t7, $a3
	maskeqz	$a3, $a3, $t0
	masknez	$t0, $t7, $t0
	or	$a3, $a3, $t0
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $t8, $a5
	or	$t1, $a5, $a3
	xor	$a3, $s2, $a6
	sltui	$a3, $a3, 1
	xor	$a5, $fp, $t1
	sltui	$a5, $a5, 1
	and	$a3, $a3, $a5
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	maskeqz	$a5, $s2, $a3
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	maskeqz	$a3, $fp, $a3
	pcalau12i	$t0, %got_pc_hi20(binX)
	ld.d	$t0, $t0, %got_pc_lo12(binX)
	st.w	$a5, $t0, 0
	pcalau12i	$a5, %got_pc_hi20(binY)
	ld.d	$a5, $a5, %got_pc_lo12(binY)
	st.w	$a3, $a5, 0
	bltz	$a6, .LBB0_55
# %bb.3:                                # %.lr.ph316
	bltz	$t1, .LBB0_55
# %bb.4:                                # %.lr.ph316.split.preheader
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(blockarray)
	ld.d	$a3, $a3, %got_pc_lo12(blockarray)
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(lapFactor)
	ld.d	$a3, $a3, %got_pc_lo12(lapFactor)
	fld.d	$fa0, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(offset)
	ld.d	$a3, $a3, %got_pc_lo12(offset)
	move	$t0, $zero
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a3, $t1, 1
	addi.d	$a5, $a6, 1
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %..loopexit278_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$t0, $t0, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	beq	$t0, $a3, .LBB0_56
.LBB0_6:                                # %.lr.ph316.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	beqz	$t0, .LBB0_8
# %bb.7:                                # %.lr.ph316.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	blt	$t0, $a3, .LBB0_5
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a3, $t0, $a3, 3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	sltui	$a3, $t0, 1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit277
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$s5, $s5, 1
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	beq	$s5, $a3, .LBB0_5
.LBB0_10:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	or	$a3, $s5, $t0
	slli.d	$a3, $a3, 32
	beqz	$a3, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	slt	$a3, $s5, $a3
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	or	$a3, $a5, $a3
	bnez	$a3, .LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $s5, 3
	ldx.d	$s8, $a3, $a5
	ld.w	$a3, $s8, 0
	blez	$a3, .LBB0_9
# %bb.13:                               # %.lr.ph304.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$a3, $a3, 1
	bstrpick.d	$ra, $a3, 31, 0
	ori	$fp, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=3
	beqz	$t4, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	addi.d	$fp, $fp, 1
	beq	$fp, $ra, .LBB0_9
.LBB0_16:                               # %.lr.ph304
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	slli.d	$a3, $fp, 2
	ldx.w	$a6, $s8, $a3
	beq	$a6, $a0, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	slli.d	$a3, $a6, 3
	ldx.d	$t1, $a7, $a3
	beq	$a6, $a4, .LBB0_14
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a3, $t1, 56
	alsl.d	$a3, $a3, $t1, 3
	addi.d	$a3, $a3, 152
	move	$a5, $t1
	b	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t1, 3
	addi.d	$a3, $a3, 152
	move	$a5, $s7
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t8, $a3, 0
	ld.w	$t7, $a5, 16
	ld.w	$s2, $a5, 12
	ld.w	$a3, $t8, 56
	ld.w	$a5, $t8, 60
	ld.w	$t0, $t8, 64
	ld.w	$s0, $t8, 68
	add.w	$s6, $a3, $s2
	add.w	$s4, $a5, $s2
	add.w	$s3, $t0, $t7
	add.w	$s1, $s0, $t7
	blt	$t6, $a6, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a3, $t8, 40
	ld.w	$a5, $t8, 44
	ld.w	$t0, $t8, 48
	ld.w	$s0, $t8, 52
	sub.w	$s6, $s6, $a3
	add.w	$s4, $a5, $s4
	sub.w	$s3, $s3, $t0
	add.w	$s1, $s0, $s1
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$s6, $t3, .LBB0_15
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$t2, $s4, .LBB0_15
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$s3, $t5, .LBB0_15
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bge	$a3, $s1, .LBB0_15
# %bb.26:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a3, $s7, 60
	ori	$a5, $zero, 1
	bne	$a3, $a5, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a3, $t1, 60
	ori	$a5, $zero, 1
	bne	$a3, $a5, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_16 Depth=3
	slt	$a3, $s6, $t2
	masknez	$a5, $s6, $a3
	maskeqz	$a3, $t2, $a3
	or	$a3, $a3, $a5
	slt	$a5, $t3, $s4
	masknez	$a6, $s4, $a5
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $a6
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	slt	$a6, $s3, $t1
	masknez	$t0, $s3, $a6
	maskeqz	$a6, $t1, $a6
	or	$a6, $a6, $t0
	slt	$t0, $t5, $s1
	masknez	$t1, $s1, $t0
	maskeqz	$t0, $t5, $t0
	or	$t0, $t0, $t1
	sub.d	$a6, $t0, $a6
	sub.d	$a3, $a5, $a3
	mul.d	$a3, $a6, $a3
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_15
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $a3, 0
	beqz	$s6, .LBB0_15
# %bb.30:                               # %.lr.ph287
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$s4, $t8, 0
	beqz	$s4, .LBB0_15
# %bb.31:                               # %.lr.ph287.split
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$s1, $zero
	bge	$t6, $a6, .LBB0_43
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %..loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_33 Depth=4
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB0_52
.LBB0_33:                               # %.lr.ph287.split.split.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_37 Depth 5
	ld.w	$a3, $s6, 56
	ld.w	$a5, $s6, 60
	ld.w	$t0, $s6, 64
	ld.w	$t8, $s6, 68
	add.w	$a6, $a3, $a1
	add.w	$t1, $a5, $a1
	add.w	$s3, $t0, $a2
	add.w	$s7, $t8, $a2
	blt	$t6, $a0, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=4
	ld.w	$a3, $s6, 40
	ld.w	$a5, $s6, 44
	ld.w	$t0, $s6, 48
	ld.w	$t8, $s6, 52
	sub.w	$a6, $a6, $a3
	add.w	$t1, $a5, $t1
	sub.w	$s3, $s3, $t0
	add.w	$s7, $t8, $s7
.LBB0_35:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_33 Depth=4
	move	$t8, $s4
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               #   in Loop: Header=BB0_37 Depth=5
	ld.d	$t8, $t8, 0
	beqz	$t8, .LBB0_32
.LBB0_37:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a3, $t8, 56
	add.w	$a3, $a3, $s2
	bge	$a3, $t1, .LBB0_36
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=5
	ld.w	$a5, $t8, 60
	add.w	$a5, $a5, $s2
	bge	$a6, $a5, .LBB0_36
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t0, $t8, 64
	add.w	$t0, $t0, $t7
	bge	$t0, $s7, .LBB0_36
# %bb.40:                               #   in Loop: Header=BB0_37 Depth=5
	ld.w	$s0, $t8, 68
	add.w	$s0, $s0, $t7
	bge	$s3, $s0, .LBB0_36
# %bb.41:                               #   in Loop: Header=BB0_37 Depth=5
	slt	$t4, $a3, $a6
	masknez	$a3, $a3, $t4
	maskeqz	$t4, $a6, $t4
	or	$a3, $t4, $a3
	slt	$t4, $t1, $a5
	masknez	$a5, $a5, $t4
	maskeqz	$t4, $t1, $t4
	or	$a5, $t4, $a5
	slt	$t4, $t0, $s3
	masknez	$t0, $t0, $t4
	maskeqz	$t4, $s3, $t4
	or	$t0, $t4, $t0
	slt	$t4, $s7, $s0
	masknez	$s0, $s0, $t4
	maskeqz	$t4, $s7, $t4
	or	$t4, $t4, $s0
	sub.d	$t0, $t4, $t0
	sub.d	$a3, $a5, $a3
	mul.d	$a3, $t0, $a3
	add.w	$s1, $a3, $s1
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_42:                               # %..loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_43 Depth=4
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB0_52
.LBB0_43:                               # %.lr.ph287.split.split
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_47 Depth 5
	ld.w	$a3, $s6, 56
	ld.w	$a5, $s6, 60
	ld.w	$t0, $s6, 64
	ld.w	$t1, $s6, 68
	add.w	$a6, $a3, $a1
	add.w	$s7, $a5, $a1
	add.w	$s3, $t0, $a2
	add.w	$t1, $t1, $a2
	blt	$t6, $a0, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=4
	ld.w	$a3, $s6, 40
	ld.w	$a5, $s6, 44
	ld.w	$t0, $s6, 48
	ld.w	$t4, $s6, 52
	sub.w	$a6, $a6, $a3
	add.w	$s7, $a5, $s7
	sub.w	$s3, $s3, $t0
	add.w	$t1, $t4, $t1
.LBB0_45:                               # %.lr.ph
                                        #   in Loop: Header=BB0_43 Depth=4
	move	$t8, $s4
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=5
	ld.d	$t8, $t8, 0
	beqz	$t8, .LBB0_42
.LBB0_47:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_43 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a3, $t8, 56
	ld.w	$a5, $t8, 40
	add.d	$a3, $a3, $s2
	sub.w	$a3, $a3, $a5
	bge	$a3, $s7, .LBB0_46
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=5
	ld.w	$a5, $t8, 60
	ld.w	$t0, $t8, 44
	add.d	$a5, $a5, $s2
	add.w	$s0, $t0, $a5
	bge	$a6, $s0, .LBB0_46
# %bb.49:                               #   in Loop: Header=BB0_47 Depth=5
	ld.w	$a5, $t8, 64
	ld.w	$t0, $t8, 48
	add.d	$a5, $a5, $t7
	sub.w	$t0, $a5, $t0
	bge	$t0, $t1, .LBB0_46
# %bb.50:                               #   in Loop: Header=BB0_47 Depth=5
	ld.w	$a5, $t8, 68
	ld.w	$t4, $t8, 52
	add.d	$a5, $a5, $t7
	add.w	$a5, $t4, $a5
	bge	$s3, $a5, .LBB0_46
# %bb.51:                               #   in Loop: Header=BB0_47 Depth=5
	slt	$t4, $a3, $a6
	masknez	$a3, $a3, $t4
	maskeqz	$t4, $a6, $t4
	or	$a3, $t4, $a3
	slt	$t4, $s7, $s0
	masknez	$s0, $s0, $t4
	maskeqz	$t4, $s7, $t4
	or	$t4, $t4, $s0
	slt	$s0, $t0, $s3
	masknez	$t0, $t0, $s0
	maskeqz	$s0, $s3, $s0
	or	$t0, $s0, $t0
	slt	$s0, $t1, $a5
	masknez	$a5, $a5, $s0
	maskeqz	$s0, $t1, $s0
	or	$a5, $s0, $a5
	sub.d	$a5, $a5, $t0
	sub.d	$a3, $t4, $a3
	mul.d	$a3, $a5, $a3
	add.w	$s1, $a3, $s1
	b	.LBB0_46
.LBB0_52:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$s1, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
.LBB0_54:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_15
.LBB0_55:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB0_56:                               # %._crit_edge317
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end0:
	.size	goverlap, .Lfunc_end0-goverlap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
