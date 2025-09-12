	.file	"findcost.c"
	.text
	.globl	findcost                        # -- Begin function findcost
	.p2align	5
	.type	findcost,@function
findcost:                               # @findcost
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(Tsave)
	ld.d	$a3, $a0, %got_pc_lo12(Tsave)
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s1, $a0, %got_pc_lo12(numcells)
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(numpads)
	ld.d	$s2, $a0, %got_pc_lo12(numpads)
	ld.w	$a2, $s2, 0
	add.w	$a0, $a2, $a1
	blez	$a0, .LBB0_10
# %bb.1:                                # %.lr.ph146
	pcalau12i	$a4, %got_pc_hi20(cellarray)
	ld.d	$a4, $a4, %got_pc_lo12(cellarray)
	ld.d	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(termarray)
	ld.d	$a5, $a5, %got_pc_lo12(termarray)
	ld.d	$a5, $a5, 0
	addi.d	$a6, $a0, 1
	bstrpick.d	$a6, $a6, 31, 0
	ori	$a7, $zero, 1
	ori	$t0, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit134
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a6, .LBB0_10
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a4, $t1
	ld.w	$t2, $t1, 56
	alsl.d	$t2, $t2, $t1, 3
	ld.d	$t2, $t2, 152
	ld.d	$t3, $t2, 88
	beqz	$t3, .LBB0_6
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t4, $t1, 12
	ld.w	$t5, $t1, 16
	.p2align	4, , 16
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t3, 24
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a5, $t6
	ld.w	$t7, $t3, 8
	ld.d	$t6, $t6, 8
	ld.w	$t8, $t3, 12
	ld.d	$t3, $t3, 0
	add.d	$t7, $t4, $t7
	st.w	$t7, $t6, 8
	add.d	$t7, $t5, $t8
	st.w	$t7, $t6, 12
	bnez	$t3, .LBB0_5
.LBB0_6:                                # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t3, $t1, 76
	bne	$t3, $a7, .LBB0_2
# %bb.7:                                # %.preheader133
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t4, $t1, 132
	blez	$t4, .LBB0_2
# %bb.8:                                # %.lr.ph142
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$t5, $t1, 144
	ld.d	$t2, $t2, 96
	ld.w	$t3, $t1, 12
	ld.w	$t1, $t1, 16
	addi.d	$t4, $t4, 1
	bstrpick.d	$t6, $t4, 31, 0
	addi.d	$t4, $t5, 48
	addi.d	$t5, $t6, -1
	.p2align	4, , 16
.LBB0_9:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, -4
	ld.w	$t7, $t4, 0
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a5, $t6
	alsl.d	$t8, $t7, $t2, 4
	slli.d	$t7, $t7, 4
	ldx.w	$t7, $t2, $t7
	ld.d	$t6, $t6, 8
	ld.w	$t8, $t8, 4
	add.d	$t7, $t3, $t7
	st.w	$t7, $t6, 8
	add.d	$t7, $t1, $t8
	st.w	$t7, $t6, 12
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 44
	bnez	$t5, .LBB0_9
	b	.LBB0_2
.LBB0_10:                               # %._crit_edge147
	fld.d	$fs0, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(finalShot)
	ld.d	$a3, $a3, %got_pc_lo12(finalShot)
	ld.w	$a3, $a3, 0
	slt	$a3, $zero, $a3
	pcalau12i	$a4, %got_pc_hi20(numnets)
	ld.d	$a4, $a4, %got_pc_lo12(numnets)
	ld.w	$a4, $a4, 0
	maskeqz	$a3, $a1, $a3
	add.w	$a4, $a3, $a4
	blez	$a4, .LBB0_30
# %bb.11:                               # %.lr.ph157
	pcalau12i	$a3, %got_pc_hi20(netarray)
	ld.d	$a3, $a3, %got_pc_lo12(netarray)
	move	$fp, $zero
	ld.d	$a3, $a3, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               # %._crit_edge152
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t0, $a7, 20
	ld.w	$t1, $a7, 12
	fld.d	$fa0, $a7, 48
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.w	$t0, $a7, 40
	ld.w	$t1, $a7, 28
	ftintrz.w.d	$fa0, $fa0
	fld.d	$fa1, $a7, 56
	movfr2gr.s	$a7, $fa0
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa0, $t0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t0, $fa0
	add.d	$a7, $fp, $a7
	add.w	$fp, $a7, $t0
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a4, .LBB0_31
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a3, $a7
	beqz	$a7, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t0, $a7, 8
	beq	$t0, $a5, .LBB0_13
# %bb.16:                               # %.preheader131.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t0, $a7
	.p2align	4, , 16
.LBB0_17:                               # %.preheader131
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_12
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	ld.w	$t1, $t0, 40
	beq	$t1, $a5, .LBB0_17
# %bb.19:                               # %.loopexit132
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t1, $t0, 8
	ld.w	$t2, $t0, 12
	ld.d	$t0, $t0, 0
	st.w	$t1, $a7, 20
	st.w	$t1, $a7, 12
	st.w	$t2, $a7, 40
	st.w	$t2, $a7, 28
	bnez	$t0, .LBB0_22
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_22 Depth=2
	st.w	$t1, $a7, 28
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_12
.LBB0_22:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 40
	beq	$t1, $a5, .LBB0_21
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t2, $t0, 8
	ld.w	$t3, $a7, 12
	ld.w	$t1, $t0, 12
	bge	$t2, $t3, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=2
	st.w	$t2, $a7, 12
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t3, $a7, 20
	bge	$t3, $t2, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_22 Depth=2
	st.w	$t2, $a7, 20
.LBB0_27:                               #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t2, $a7, 28
	blt	$t1, $t2, .LBB0_20
# %bb.28:                               #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t2, $a7, 40
	bge	$t2, $t1, .LBB0_21
# %bb.29:                               #   in Loop: Header=BB0_22 Depth=2
	st.w	$t1, $a7, 40
	b	.LBB0_21
.LBB0_30:
	move	$fp, $zero
.LBB0_31:                               # %._crit_edge158
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$s3, $a3, %got_pc_lo12(penalty)
	addi.w	$a4, $zero, -3
	st.w	$zero, $s3, 0
	bge	$a0, $a4, .LBB0_33
# %bb.32:
	move	$a3, $zero
	b	.LBB0_39
.LBB0_33:                               # %.lr.ph163.preheader
	ori	$s0, $zero, 1
	ori	$s4, $zero, 8
	pcalau12i	$a3, %got_pc_hi20(overlap)
	ld.d	$s5, $a3, %got_pc_lo12(overlap)
	pcalau12i	$a3, %got_pc_hi20(cellarray)
	ld.d	$s6, $a3, %got_pc_lo12(cellarray)
	move	$s7, $zero
	move	$a3, $zero
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_36 Depth=1
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a7, $s5, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 56
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a3, $s3, 0
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s2, 0
	add.w	$a3, $a3, $a0
	st.w	$a3, $s3, 0
.LBB0_35:                               #   in Loop: Header=BB0_36 Depth=1
	add.w	$a0, $a2, $a1
	addi.w	$a4, $a0, 4
	addi.w	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	bge	$s7, $a4, .LBB0_38
.LBB0_36:                               # %.lr.ph163
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s7, $s7, 1
	bge	$a1, $s7, .LBB0_34
# %bb.37:                               # %.lr.ph163
                                        #   in Loop: Header=BB0_36 Depth=1
	bge	$a0, $s7, .LBB0_35
	b	.LBB0_34
.LBB0_38:                               # %._crit_edge164.loopexit
	bstrpick.d	$a0, $a3, 31, 31
	add.w	$a0, $a3, $a0
	srai.d	$a3, $a0, 1
.LBB0_39:                               # %._crit_edge164
	st.w	$a3, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(overfill)
	ld.d	$a0, $a0, %got_pc_lo12(overfill)
	st.w	$zero, $a0, 0
	blez	$a1, .LBB0_48
# %bb.40:                               # %.lr.ph179
	ori	$a2, $zero, 0
	lu32i.d	$a2, -497152
	lu52i.d	$a2, $a2, 1039
	movgr2fr.d	$fa0, $a2
	fdiv.d	$fa0, $fs0, $fa0
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a3, $a2, %got_pc_lo12(cellarray)
	move	$a2, $zero
	ld.d	$a3, $a3, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a4, $zero, 1
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_41:                               # %.loopexit
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB0_48
.LBB0_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	slli.d	$a5, $a4, 3
	ldx.d	$a6, $a3, $a5
	ld.w	$a5, $a6, 76
	beqz	$a5, .LBB0_41
# %bb.43:                               # %.preheader
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.w	$a5, $a6, 128
	blez	$a5, .LBB0_41
# %bb.44:                               # %.lr.ph168
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.d	$a7, $a6, 136
	move	$a6, $zero
	addi.d	$a7, $a7, 28
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               #   in Loop: Header=BB0_46 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 20
	bgeu	$a6, $a5, .LBB0_41
.LBB0_46:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, -8
	ld.w	$t1, $a7, 0
	bge	$t1, $t0, .LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=2
	sub.d	$t0, $t0, $t1
	mul.d	$t0, $t0, $t0
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa1, $t0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t0, $fa1
	add.d	$a2, $a2, $t0
	st.w	$a2, $a0, 0
	b	.LBB0_45
.LBB0_48:                               # %._crit_edge180
	move	$a0, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	findcost, .Lfunc_end0-findcost
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
