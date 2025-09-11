	.file	"goverlapf.c"
	.text
	.globl	goverlapf                       # -- Begin function goverlapf
	.p2align	5
	.type	goverlapf,@function
goverlapf:                              # @goverlapf
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $a4
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s5, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $s5, 0
	slli.d	$a1, $s4, 3
	ldx.d	$t7, $a0, $a1
	alsl.d	$a0, $a3, $t7, 3
	ld.d	$s6, $a0, 152
	ld.w	$a0, $s6, 56
	ld.w	$a1, $s6, 60
	ld.w	$a2, $s6, 64
	ld.w	$a3, $s6, 68
	add.w	$fp, $a0, $s3
	add.w	$s8, $a1, $s3
	add.w	$ra, $a2, $s2
	add.w	$t8, $a3, $s2
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blt	$a0, $s4, .LBB0_2
# %bb.1:
	ld.w	$a0, $s6, 40
	ld.w	$a1, $s6, 44
	ld.w	$a2, $s6, 48
	ld.w	$a3, $s6, 52
	sub.w	$fp, $fp, $a0
	add.w	$s8, $a1, $s8
	sub.w	$ra, $ra, $a2
	add.w	$t8, $a3, $t8
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(binOffsetX)
	ld.d	$a0, $a0, %got_pc_lo12(binOffsetX)
	ld.w	$a0, $a0, 0
	sub.w	$a1, $fp, $a0
	pcalau12i	$a2, %got_pc_hi20(binWidthX)
	ld.d	$a2, $a2, %got_pc_lo12(binWidthX)
	ld.w	$a2, $a2, 0
	div.w	$a1, $a1, $a2
	slti	$a3, $a1, 1
	pcalau12i	$a4, %got_pc_hi20(numBinsX)
	ld.d	$a4, $a4, %got_pc_lo12(numBinsX)
	ld.w	$a4, $a4, 0
	slt	$a6, $a1, $a4
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $a4, $a6
	or	$a1, $a1, $a6
	masknez	$a1, $a1, $a3
	ori	$t0, $zero, 1
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a1
	sub.w	$a0, $s8, $a0
	div.w	$a0, $a0, $a2
	slt	$a1, $a4, $a0
	slt	$a2, $t0, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t0, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(binOffsetY)
	ld.d	$a1, $a1, %got_pc_lo12(binOffsetY)
	ld.w	$a1, $a1, 0
	sub.w	$a2, $ra, $a1
	pcalau12i	$a3, %got_pc_hi20(binWidthY)
	ld.d	$a3, $a3, %got_pc_lo12(binWidthY)
	ld.w	$a3, $a3, 0
	div.w	$a2, $a2, $a3
	slti	$a4, $a2, 1
	pcalau12i	$a6, %got_pc_hi20(numBinsY)
	ld.d	$a6, $a6, %got_pc_lo12(numBinsY)
	ld.w	$a6, $a6, 0
	slt	$a7, $a2, $a6
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $a6, $a7
	or	$a2, $a2, $a7
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $t0, $a4
	or	$a4, $a4, $a2
	sub.w	$a1, $t8, $a1
	div.w	$a1, $a1, $a3
	slt	$a2, $a6, $a1
	slt	$a3, $t0, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $t0, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a6, $a2
	or	$a1, $a2, $a1
	xor	$a2, $t1, $a0
	sltui	$a2, $a2, 1
	xor	$a3, $a4, $a1
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	st.d	$t1, $sp, 8                     # 8-byte Folded Spill
	maskeqz	$a3, $t1, $a2
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	maskeqz	$a2, $a4, $a2
	pcalau12i	$a4, %got_pc_hi20(binX)
	ld.d	$a4, $a4, %got_pc_lo12(binX)
	st.w	$a3, $a4, 0
	pcalau12i	$a3, %got_pc_hi20(binY)
	ld.d	$a3, $a3, %got_pc_lo12(binY)
	st.w	$a2, $a3, 0
	bltz	$a0, .LBB0_56
# %bb.3:                                # %.lr.ph330
	bltz	$a1, .LBB0_56
# %bb.4:                                # %.lr.ph330.split.preheader
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$a0, $a0, %got_pc_lo12(blockarray)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$t8, $sp, 136                   # 8-byte Folded Spill
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %..loopexit292_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_57
.LBB0_6:                                # %.lr.ph330.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	beqz	$a1, .LBB0_8
# %bb.7:                                # %.lr.ph330.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_5
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $zero
	sltui	$a0, $a1, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit291
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_5
.LBB0_10:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	or	$a0, $a2, $a1
	slli.d	$a0, $a0, 32
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$s7, $a0, $a1
	ld.w	$a0, $s7, 0
	blez	$a0, .LBB0_9
# %bb.13:                               # %.lr.ph318.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=3
	beqz	$a5, .LBB0_19
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a1, $s7, 0
	addi.d	$a0, $s0, 1
	bge	$s0, $a1, .LBB0_9
.LBB0_16:                               # %.lr.ph318
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_43 Depth 4
                                        #           Child Loop BB0_47 Depth 5
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_37 Depth 5
	move	$s0, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a3, $s7, $a0
	beq	$a3, $s4, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $s5, 0
	slli.d	$a1, $a3, 3
	ldx.d	$a4, $a0, $a1
	beq	$a3, $s1, .LBB0_14
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a0, $a4, 56
	alsl.d	$a0, $a0, $a4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $a4
	b	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 3
	addi.d	$a0, $a0, 152
	move	$a1, $t7
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t6, $a0, 0
	ld.w	$a0, $a1, 16
	ld.w	$a1, $a1, 12
	ld.w	$a6, $t6, 56
	ld.w	$a7, $t6, 60
	ld.w	$t2, $t6, 64
	ld.w	$t3, $t6, 68
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	add.w	$t1, $a6, $a1
	add.w	$t0, $a7, $a1
	add.w	$a7, $t2, $a0
	add.w	$a6, $t3, $a0
	blt	$a2, $a3, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t2, $t6, 40
	ld.w	$t3, $t6, 44
	ld.w	$t4, $t6, 48
	ld.w	$t5, $t6, 52
	sub.w	$t1, $t1, $t2
	add.w	$t0, $t3, $t0
	sub.w	$a7, $a7, $t4
	add.w	$a6, $t5, $a6
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$t1, $s8, .LBB0_15
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$fp, $t0, .LBB0_15
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$a7, $t8, .LBB0_15
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=3
	bge	$ra, $a6, .LBB0_15
# %bb.26:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$t2, $t7, 60
	ori	$t3, $zero, 1
	bne	$t2, $t3, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_16 Depth=3
	ld.w	$a4, $a4, 60
	ori	$t2, $zero, 1
	bne	$a4, $t2, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_16 Depth=3
	slt	$a0, $t1, $fp
	masknez	$a1, $t1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	slt	$a1, $s8, $t0
	masknez	$a2, $t0, $a1
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a7, $ra
	masknez	$a4, $a7, $a2
	maskeqz	$a2, $ra, $a2
	or	$a2, $a2, $a4
	slt	$a4, $t8, $a6
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $t8, $a4
	or	$a4, $a4, $a6
	sub.d	$a2, $a4, $a2
	sub.d	$a0, $a1, $a0
	mulw.d.w	$fp, $a2, $a0
	b	.LBB0_53
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=3
	ld.d	$a4, $s6, 0
	beqz	$a4, .LBB0_15
# %bb.30:                               # %.lr.ph301
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t8, $t6, 0
	beqz	$t8, .LBB0_55
# %bb.31:                               # %.lr.ph301.split
                                        #   in Loop: Header=BB0_16 Depth=3
	move	$fp, $zero
	bge	$a2, $a3, .LBB0_43
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %..loopexit_crit_edge.split.us.us
                                        #   in Loop: Header=BB0_33 Depth=4
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_52
.LBB0_33:                               # %.lr.ph301.split.split.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_37 Depth 5
	ld.w	$a6, $a4, 56
	ld.w	$a7, $a4, 60
	ld.w	$t0, $a4, 64
	ld.w	$t1, $a4, 68
	add.w	$a6, $a6, $s3
	add.w	$a7, $a7, $s3
	add.w	$t0, $t0, $s2
	add.w	$t1, $t1, $s2
	blt	$a2, $s4, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=4
	ld.w	$t2, $a4, 40
	ld.w	$t3, $a4, 44
	ld.w	$t4, $a4, 48
	ld.w	$t5, $a4, 52
	sub.w	$a6, $a6, $t2
	add.w	$a7, $t3, $a7
	sub.w	$t0, $t0, $t4
	add.w	$t1, $t5, $t1
.LBB0_35:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_33 Depth=4
	move	$t2, $t8
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               #   in Loop: Header=BB0_37 Depth=5
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB0_32
.LBB0_37:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $t2, 56
	add.w	$t3, $t3, $a1
	bge	$t3, $a7, .LBB0_36
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t4, $t2, 60
	add.w	$t4, $t4, $a1
	bge	$a6, $t4, .LBB0_36
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t5, $t2, 64
	add.w	$t5, $t5, $a0
	bge	$t5, $t1, .LBB0_36
# %bb.40:                               #   in Loop: Header=BB0_37 Depth=5
	ld.w	$t6, $t2, 68
	add.w	$t6, $t6, $a0
	bge	$t0, $t6, .LBB0_36
# %bb.41:                               #   in Loop: Header=BB0_37 Depth=5
	slt	$t7, $t3, $a6
	masknez	$t3, $t3, $t7
	maskeqz	$t7, $a6, $t7
	or	$t3, $t7, $t3
	slt	$t7, $a7, $t4
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $a7, $t7
	or	$t4, $t7, $t4
	slt	$t7, $t5, $t0
	masknez	$t5, $t5, $t7
	maskeqz	$t7, $t0, $t7
	or	$t5, $t7, $t5
	slt	$t7, $t1, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $t1, $t7
	or	$t6, $t7, $t6
	sub.d	$t5, $t6, $t5
	sub.d	$t3, $t4, $t3
	mul.d	$t3, $t5, $t3
	add.w	$fp, $t3, $fp
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_42:                               # %..loopexit_crit_edge.split
                                        #   in Loop: Header=BB0_43 Depth=4
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_52
.LBB0_43:                               # %.lr.ph301.split.split
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_47 Depth 5
	ld.w	$a6, $a4, 56
	ld.w	$a7, $a4, 60
	ld.w	$t0, $a4, 64
	ld.w	$t1, $a4, 68
	add.w	$a6, $a6, $s3
	add.w	$a7, $a7, $s3
	add.w	$t0, $t0, $s2
	add.w	$t1, $t1, $s2
	blt	$a2, $s4, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=4
	ld.w	$t2, $a4, 40
	ld.w	$t3, $a4, 44
	ld.w	$t4, $a4, 48
	ld.w	$t5, $a4, 52
	sub.w	$a6, $a6, $t2
	add.w	$a7, $t3, $a7
	sub.w	$t0, $t0, $t4
	add.w	$t1, $t5, $t1
.LBB0_45:                               # %.lr.ph
                                        #   in Loop: Header=BB0_43 Depth=4
	move	$t2, $t8
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=5
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB0_42
.LBB0_47:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_43 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t3, $t2, 56
	ld.w	$t4, $t2, 40
	add.d	$t3, $t3, $a1
	sub.w	$t3, $t3, $t4
	bge	$t3, $a7, .LBB0_46
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=5
	ld.w	$t4, $t2, 60
	ld.w	$t5, $t2, 44
	add.d	$t4, $t4, $a1
	add.w	$t4, $t5, $t4
	bge	$a6, $t4, .LBB0_46
# %bb.49:                               #   in Loop: Header=BB0_47 Depth=5
	ld.w	$t5, $t2, 64
	ld.w	$t6, $t2, 48
	add.d	$t5, $t5, $a0
	sub.w	$t5, $t5, $t6
	bge	$t5, $t1, .LBB0_46
# %bb.50:                               #   in Loop: Header=BB0_47 Depth=5
	ld.w	$t6, $t2, 68
	ld.w	$t7, $t2, 52
	add.d	$t6, $t6, $a0
	add.w	$t6, $t7, $t6
	bge	$t0, $t6, .LBB0_46
# %bb.51:                               #   in Loop: Header=BB0_47 Depth=5
	slt	$t7, $t3, $a6
	masknez	$t3, $t3, $t7
	maskeqz	$t7, $a6, $t7
	or	$t3, $t7, $t3
	slt	$t7, $a7, $t4
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $a7, $t7
	or	$t4, $t7, $t4
	slt	$t7, $t5, $t0
	masknez	$t5, $t5, $t7
	maskeqz	$t7, $t0, $t7
	or	$t5, $t7, $t5
	slt	$t7, $t1, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $t1, $t7
	or	$t6, $t7, $t6
	sub.d	$t5, $t6, $t5
	sub.d	$t3, $t4, $t3
	mul.d	$t3, $t5, $t3
	add.w	$fp, $t3, $fp
	b	.LBB0_46
.LBB0_52:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=3
	beqz	$fp, .LBB0_54
.LBB0_53:                               # %._crit_edge.thread.sink.split
                                        #   in Loop: Header=BB0_16 Depth=3
	pcalau12i	$a0, %got_pc_hi20(lapFactor)
	ld.d	$s8, $a0, %got_pc_lo12(lapFactor)
	fld.d	$fa0, $s8, 0
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$s6, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $s6, 0
	add.d	$a0, $a0, $fp
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fpo)
	move	$s5, $s1
	ld.d	$s1, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	move	$s1, $s5
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa0, $s8, 0
	add.d	$a1, $a1, $fp
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	addi.w	$a3, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
.LBB0_54:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
.LBB0_55:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_15
.LBB0_56:
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
.LBB0_57:                               # %._crit_edge331
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end0:
	.size	goverlapf, .Lfunc_end0-goverlapf
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Overlap condition: cell1:%d cell2:%d"
	.size	.L.str, 37

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"   value:%d   amount:%d\n"
	.size	.L.str.1, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
