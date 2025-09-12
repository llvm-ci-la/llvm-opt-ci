	.file	"placepads.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function placepads
.LCPI0_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	placepads
	.p2align	5
	.type	placepads,@function
placepads:                              # @placepads
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a2, $a0, %got_pc_lo12(blockt)
	ld.w	$t1, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a3, $a0, %got_pc_lo12(blockr)
	ld.w	$a6, $a3, 0
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a4, $a0, %got_pc_lo12(blockb)
	st.w	$zero, $a4, 0
	pcalau12i	$a0, %got_pc_hi20(blockl)
	ld.d	$a5, $a0, %got_pc_lo12(blockl)
	st.w	$zero, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(numpads)
	ld.d	$a0, $a0, %got_pc_lo12(numpads)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_120
# %bb.1:                                # %.lr.ph456
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $a0, 0
	add.w	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(fixLRBT)
	ld.d	$a2, $a2, %got_pc_lo12(fixLRBT)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s2, $a2, 0
	addi.w	$a2, $a0, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(padspace)
	ld.d	$a2, $a2, %got_pc_lo12(padspace)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s3, $a2, 0
	move	$t5, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s7, $zero
	addi.d	$a2, $a1, 1
	slli.d	$a3, $a0, 3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	sub.d	$s4, $s3, $a3
	ori	$s5, $zero, 4
	move	$a3, $t1
                                        # implicit-def: $r16
	move	$s0, $a6
	move	$a4, $a0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s7, $t5
	move	$s0, $s8
.LBB0_3:                                # %.loopexit423
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a4, $t3
	bge	$t3, $a1, .LBB0_28
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_25 Depth 3
	addi.w	$t3, $a4, 1
	slli.d	$a5, $t3, 3
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $a5, 80
	bne	$a7, $s5, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $a5, 152
	ld.w	$a7, $a5, 68
	ld.w	$t2, $a5, 64
	ld.w	$t3, $a5, 60
	ld.w	$a5, $a5, 56
	sub.w	$s6, $a7, $t2
	sub.w	$t3, $t3, $a5
	addi.w	$a7, $a4, 2
	ori	$a5, $zero, 2
	blt	$a1, $a7, .LBB0_11
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.w	$t6, $a1, $a4
	alsl.d	$t7, $a7, $s1, 3
	ori	$t5, $zero, 1
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $t7, 0
	ld.w	$a5, $a4, 80
	bne	$a5, $s5, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a4, $a4, 152
	ld.w	$a5, $a4, 68
	ld.w	$a7, $a4, 64
	addi.w	$t5, $t5, 1
	sub.w	$a5, $a5, $a7
	slt	$a7, $s6, $a5
	maskeqz	$a5, $a5, $a7
	ld.w	$t2, $a4, 60
	ld.w	$a4, $a4, 56
	masknez	$a7, $s6, $a7
	or	$s6, $a5, $a7
	add.d	$a5, $t2, $t3
	sub.w	$t3, $a5, $a4
	addi.d	$t7, $t7, 8
	bne	$t6, $t5, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t5, $t6
.LBB0_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a5, $t5, 1
.LBB0_11:                               # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a4, $s2, 8
	beqz	$a4, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	slt	$a4, $t3, $s0
	masknez	$a5, $t3, $a4
	maskeqz	$a4, $s0, $a4
	or	$s8, $a4, $a5
	move	$t6, $s8
	b	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	sub.w	$t6, $s0, $t3
	div.w	$a4, $t6, $a5
	srai.d	$a5, $a4, 63
	andn	$t4, $a4, $a5
	slt	$a4, $s0, $t3
	masknez	$a5, $s0, $a4
	maskeqz	$a4, $t3, $a4
	or	$s8, $a4, $a5
.LBB0_14:                               # %.lr.ph448
                                        #   in Loop: Header=BB0_4 Depth=1
	slt	$a4, $s0, $t3
	sub.d	$a5, $t3, $s0
	bstrpick.d	$a5, $a5, 31, 1
	maskeqz	$a5, $a5, $a4
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	masknez	$a4, $a7, $a4
	or	$a4, $a5, $a4
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI0_0)
	sub.d	$a4, $a3, $s7
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	add.d	$a4, $s6, $a4
	add.w	$t5, $a4, $s7
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.w	$t5, $a5, 0
	add.w	$a3, $a4, $a3
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	st.w	$a3, $a4, 0
	movgr2fr.w	$fa0, $t6
	ffint.d.w	$fa0, $fa0
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	move	$t6, $a0
	b	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	move	$t3, $a2
	.p2align	4, , 16
.LBB0_16:                               # %.loopexit422
                                        #   in Loop: Header=BB0_17 Depth=2
	move	$t6, $t3
	addi.w	$a4, $t3, 0
	addi.w	$t3, $t3, 1
	bge	$a4, $a1, .LBB0_2
.LBB0_17:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	slli.d	$a4, $t3, 3
	ldx.d	$t7, $s1, $a4
	ld.w	$a4, $t7, 80
	bne	$a4, $s5, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a5, $t7, 152
	ld.w	$a4, $a5, 60
	ld.w	$a7, $a5, 56
	ld.w	$t2, $s2, 8
	sub.w	$a4, $a4, $a7
	beqz	$t2, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	sub.w	$a7, $t3, $a0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $s3, $a7
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	b	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	bstrpick.d	$a7, $a4, 31, 31
	add.w	$a7, $a4, $a7
	srli.d	$a7, $a7, 1
	add.d	$a7, $a7, $t4
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=2
	ld.w	$t2, $a5, 68
	ld.w	$a5, $a5, 64
	sub.w	$a5, $t2, $a5
	st.w	$a7, $t7, 12
	bstrpick.d	$a7, $a5, 31, 31
	add.w	$a7, $a5, $a7
	srli.d	$a7, $a7, 1
	sub.d	$a5, $s6, $a5
	add.d	$a5, $a5, $a7
	addi.w	$t3, $t6, 2
	st.w	$a5, $t7, 16
	blt	$a1, $t3, .LBB0_16
# %bb.22:                               # %.lr.ph439.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	add.d	$fp, $a4, $t4
	sub.d	$t6, $a2, $t3
	alsl.d	$s0, $t3, $s4, 3
	alsl.d	$t7, $t3, $s1, 3
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=3
	fld.d	$fa1, $s0, 0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=3
	ld.w	$t2, $s7, 68
	ld.w	$fp, $s7, 64
	sub.w	$t2, $t2, $fp
	st.w	$a7, $t8, 12
	bstrpick.d	$a7, $t2, 31, 31
	add.w	$a7, $t2, $a7
	srli.d	$a7, $a7, 1
	sub.d	$t2, $s6, $t2
	add.d	$a7, $t2, $a7
	st.w	$a7, $t8, 16
	add.d	$fp, $a5, $a4
	addi.d	$t3, $t3, 1
	addi.d	$t6, $t6, -1
	addi.d	$s0, $s0, 8
	addi.d	$t7, $t7, 8
	beqz	$t6, .LBB0_15
.LBB0_25:                               # %.lr.ph439
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t8, $t7, 0
	ld.w	$a4, $t8, 80
	bne	$a4, $s5, .LBB0_16
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=3
	ld.d	$s7, $t8, 152
	ld.w	$a4, $s7, 60
	ld.w	$a5, $s7, 56
	ld.w	$a7, $s2, 8
	sub.w	$a4, $a4, $a5
	add.d	$a5, $fp, $t4
	bnez	$a7, .LBB0_23
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=3
	bstrpick.d	$a7, $a4, 31, 31
	add.w	$a7, $a4, $a7
	srli.d	$a7, $a7, 1
	add.d	$a7, $a5, $a7
	b	.LBB0_24
.LBB0_28:                               # %.lr.ph492
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $a4, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $a4, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $a4, 0
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa1, $fa0
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI0_0)
	sub.d	$a4, $a3, $t5
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s4, $s3, $a4
	ori	$s5, $zero, 2
	move	$a4, $a0
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %.loopexit420
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$a4, $t3
	bge	$t3, $a1, .LBB0_54
.LBB0_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_51 Depth 3
	addi.w	$t3, $a4, 1
	slli.d	$a5, $t3, 3
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $a5, 80
	bne	$a7, $s5, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a5, $a5, 152
	ld.w	$a7, $a5, 60
	ld.w	$a5, $a5, 56
	sub.w	$t3, $a7, $a5
	addi.w	$a7, $a4, 2
	ori	$a5, $zero, 2
	blt	$a1, $a7, .LBB0_37
# %bb.32:                               # %.lr.ph466.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	sub.w	$a5, $a1, $a4
	alsl.d	$a7, $a7, $s1, 3
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_33:                               # %.lr.ph466
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a7, 0
	ld.w	$t6, $t2, 80
	bne	$t6, $s5, .LBB0_36
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=2
	ld.d	$t2, $t2, 152
	ld.w	$t6, $t2, 60
	ld.w	$t2, $t2, 56
	addi.w	$a4, $a4, 1
	add.d	$t3, $t6, $t3
	sub.w	$t3, $t3, $t2
	addi.d	$a7, $a7, 8
	bne	$a5, $a4, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_30 Depth=1
	move	$a4, $a5
.LBB0_36:                               # %._crit_edge467.loopexit
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.w	$a5, $a4, 1
.LBB0_37:                               # %._crit_edge467
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a4, $s2, 12
	beqz	$a4, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_30 Depth=1
	slt	$a4, $t3, $s0
	masknez	$a5, $t3, $a4
	maskeqz	$a4, $s0, $a4
	or	$a4, $a4, $a5
	b	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_30 Depth=1
	sub.w	$a4, $s0, $t3
	div.w	$a5, $a4, $a5
	srai.d	$a7, $a5, 63
	andn	$t4, $a5, $a7
.LBB0_40:                               # %.lr.ph486
                                        #   in Loop: Header=BB0_30 Depth=1
	slt	$a5, $s0, $t3
	sub.d	$a7, $t3, $s0
	bstrpick.d	$a7, $a7, 31, 1
	maskeqz	$a5, $a7, $a5
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	add.d	$a7, $a5, $a7
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	move	$t6, $a0
	b	.LBB0_43
.LBB0_41:                               #   in Loop: Header=BB0_43 Depth=2
	move	$t3, $a2
	.p2align	4, , 16
.LBB0_42:                               # %.loopexit419
                                        #   in Loop: Header=BB0_43 Depth=2
	move	$t6, $t3
	addi.w	$a4, $t3, 0
	addi.w	$t3, $t3, 1
	bge	$a4, $a1, .LBB0_29
.LBB0_43:                               #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
	slli.d	$a4, $t3, 3
	ldx.d	$t7, $s1, $a4
	ld.w	$a4, $t7, 80
	bne	$a4, $s5, .LBB0_42
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a4, $t7, 152
	ld.w	$a5, $a4, 60
	ld.w	$a7, $a4, 56
	ld.w	$t2, $s2, 12
	sub.w	$t8, $a5, $a7
	beqz	$t2, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=2
	sub.w	$a5, $t3, $a0
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $s3, $a5
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	b	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_43 Depth=2
	bstrpick.d	$a5, $t8, 31, 31
	add.w	$a5, $t8, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a5, $t4
.LBB0_47:                               #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a7, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$a4, $a7, $a4
	st.w	$a5, $t7, 12
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	addi.w	$t3, $t6, 2
	st.w	$a4, $t7, 16
	blt	$a1, $t3, .LBB0_42
# %bb.48:                               # %.lr.ph477.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	add.d	$t8, $t8, $t4
	sub.d	$t6, $a2, $t3
	alsl.d	$s6, $t3, $s4, 3
	alsl.d	$s7, $t3, $s1, 3
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_51 Depth=3
	fld.d	$fa3, $s6, 0
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=3
	ld.w	$t2, $a5, 68
	ld.w	$a5, $a5, 64
	sub.w	$a5, $t2, $a5
	st.w	$a7, $t7, 12
	bstrpick.d	$a7, $a5, 31, 31
	add.w	$a5, $a5, $a7
	srai.d	$a5, $a5, 1
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	st.w	$a5, $t7, 16
	add.d	$t8, $t8, $a4
	addi.d	$t3, $t3, 1
	addi.d	$t6, $t6, -1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	beqz	$t6, .LBB0_41
.LBB0_51:                               # %.lr.ph477
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $s7, 0
	ld.w	$a4, $t7, 80
	bne	$a4, $s5, .LBB0_42
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=3
	ld.d	$a5, $t7, 152
	ld.w	$a4, $a5, 60
	ld.w	$a7, $a5, 56
	ld.w	$t2, $s2, 12
	sub.w	$a4, $a4, $a7
	add.d	$t8, $t8, $t4
	bnez	$t2, .LBB0_49
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=3
	bstrpick.d	$a7, $a4, 31, 31
	add.w	$a7, $a4, $a7
	srli.d	$a7, $a7, 1
	add.d	$a7, $t8, $a7
	b	.LBB0_50
.LBB0_54:                               # %.lr.ph533
	move	$s1, $zero
	move	$s2, $zero
	move	$s0, $zero
	move	$ra, $zero
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a4, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $a4, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $a4, 0
	movgr2fr.w	$fa1, $t5
	ffint.d.w	$fa1, $fa1
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s6, $s4, $a4
	ori	$s7, $zero, 1
	move	$t6, $a0
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_57 Depth=1
	move	$ra, $s1
	move	$t1, $t6
.LBB0_56:                               # %.loopexit417
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$t6, $t3
	bge	$t3, $a1, .LBB0_81
.LBB0_57:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_78 Depth 3
	addi.w	$t3, $t6, 1
	slli.d	$a4, $t3, 3
	ldx.d	$a4, $s3, $a4
	ld.w	$a5, $a4, 80
	bne	$a5, $s7, .LBB0_56
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a5, $a4, 68
	ld.w	$a7, $a4, 64
	ld.w	$t2, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$t3, $a5, $a7
	sub.w	$s8, $t2, $a4
	addi.w	$a4, $t6, 2
	ori	$a5, $zero, 2
	blt	$a1, $a4, .LBB0_64
# %bb.59:                               # %.lr.ph501.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	sub.w	$t7, $a1, $t6
	alsl.d	$t8, $a4, $s3, 3
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB0_60:                               # %.lr.ph501
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $t8, 0
	ld.w	$a5, $a4, 80
	bne	$a5, $s7, .LBB0_63
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=2
	ld.d	$a4, $a4, 152
	ld.w	$a5, $a4, 60
	ld.w	$a7, $a4, 56
	addi.w	$t6, $t6, 1
	sub.w	$a5, $a5, $a7
	slt	$a7, $s8, $a5
	maskeqz	$a5, $a5, $a7
	ld.w	$t2, $a4, 68
	ld.w	$a4, $a4, 64
	masknez	$a7, $s8, $a7
	or	$s8, $a5, $a7
	add.d	$a5, $t2, $t3
	sub.w	$t3, $a5, $a4
	addi.d	$t8, $t8, 8
	bne	$t7, $t6, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_57 Depth=1
	move	$t6, $t7
.LBB0_63:                               # %._crit_edge502.loopexit
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a5, $t6, 1
.LBB0_64:                               # %._crit_edge502
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.w	$a4, $s5, 0
	beqz	$a4, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_57 Depth=1
	slt	$a4, $t3, $t1
	masknez	$a5, $t3, $a4
	maskeqz	$a4, $t1, $a4
	or	$t6, $a4, $a5
	move	$a4, $t6
	b	.LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_57 Depth=1
	sub.w	$a4, $t1, $t3
	div.w	$a5, $a4, $a5
	srai.d	$a7, $a5, 63
	andn	$t4, $a5, $a7
	slt	$a5, $t1, $t3
	masknez	$a7, $t1, $a5
	maskeqz	$a5, $t3, $a5
	or	$t6, $a5, $a7
.LBB0_67:                               # %.lr.ph523
                                        #   in Loop: Header=BB0_57 Depth=1
	slt	$a5, $t1, $t3
	sub.d	$a7, $t3, $t1
	bstrpick.d	$a7, $a7, 31, 1
	maskeqz	$a7, $a7, $a5
	masknez	$a5, $s0, $a5
	or	$s0, $a7, $a5
	sub.d	$a5, $a6, $ra
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a5, $fa2
	add.d	$s2, $s8, $a5
	add.w	$a6, $s2, $a6
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	st.w	$a6, $a5, 0
	add.w	$s1, $s2, $ra
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	st.w	$s1, $a5, 0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	add.d	$t1, $t4, $t5
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	move	$t7, $a0
	b	.LBB0_70
.LBB0_68:                               #   in Loop: Header=BB0_70 Depth=2
	move	$t3, $a2
	.p2align	4, , 16
.LBB0_69:                               # %.loopexit416
                                        #   in Loop: Header=BB0_70 Depth=2
	move	$t7, $t3
	addi.w	$a4, $t3, 0
	addi.w	$t3, $t3, 1
	bge	$a4, $a1, .LBB0_55
.LBB0_70:                               #   Parent Loop BB0_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
	slli.d	$a4, $t3, 3
	ldx.d	$t8, $s3, $a4
	ld.w	$a4, $t8, 80
	bne	$a4, $s7, .LBB0_69
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	ld.d	$a5, $t8, 152
	ld.w	$a4, $a5, 68
	ld.w	$a7, $a5, 64
	ld.w	$t2, $s5, 0
	sub.w	$a4, $a4, $a7
	beqz	$t2, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=2
	sub.w	$a7, $t3, $a0
	slli.d	$a7, $a7, 3
	fldx.d	$fa3, $s4, $a7
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
	b	.LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=2
	bstrpick.d	$a7, $a4, 31, 31
	add.w	$a7, $a4, $a7
	srli.d	$a7, $a7, 1
	add.d	$a7, $a7, $t1
.LBB0_74:                               #   in Loop: Header=BB0_70 Depth=2
	ld.w	$t2, $a5, 60
	ld.w	$a5, $a5, 56
	sub.w	$a5, $t2, $a5
	st.w	$a7, $t8, 16
	bstrpick.d	$a7, $a5, 31, 31
	add.w	$a7, $a5, $a7
	srli.d	$a7, $a7, 1
	sub.d	$a5, $s8, $a5
	add.d	$a5, $a5, $a7
	addi.w	$t3, $t7, 2
	st.w	$a5, $t8, 12
	blt	$a1, $t3, .LBB0_69
# %bb.75:                               # %.lr.ph514.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	add.d	$a4, $a4, $t1
	sub.d	$ra, $a2, $t3
	alsl.d	$t7, $t3, $s6, 3
	alsl.d	$t8, $t3, $s3, 3
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_78 Depth=3
	fld.d	$fa3, $t7, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t2, $fa3
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=3
	ld.w	$t0, $a7, 60
	ld.w	$a7, $a7, 56
	sub.w	$a7, $t0, $a7
	st.w	$t2, $fp, 16
	bstrpick.d	$t0, $a7, 31, 31
	add.w	$t0, $a7, $t0
	srli.d	$t0, $t0, 1
	sub.d	$a7, $s8, $a7
	add.d	$a7, $a7, $t0
	st.w	$a7, $fp, 12
	add.d	$a4, $a4, $a5
	addi.d	$t3, $t3, 1
	addi.d	$ra, $ra, -1
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	beqz	$ra, .LBB0_68
.LBB0_78:                               # %.lr.ph514
                                        #   Parent Loop BB0_57 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t8, 0
	ld.w	$a5, $fp, 80
	bne	$a5, $s7, .LBB0_69
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=3
	ld.d	$a7, $fp, 152
	ld.w	$a5, $a7, 68
	ld.w	$t2, $a7, 64
	ld.w	$t0, $s5, 0
	sub.w	$a5, $a5, $t2
	add.d	$a4, $a4, $t4
	bnez	$t0, .LBB0_76
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=3
	bstrpick.d	$t0, $a5, 31, 31
	add.w	$t0, $a5, $t0
	srli.d	$t0, $t0, 1
	add.d	$t2, $a4, $t0
	b	.LBB0_77
.LBB0_81:                               # %.lr.ph573
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a4, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $a4, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t8, $a4, 0
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	sub.d	$a4, $a6, $s1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	sub.d	$fp, $t8, $a4
	ori	$s4, $zero, 3
	move	$a4, $a0
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_82:                               # %.loopexit414
                                        #   in Loop: Header=BB0_83 Depth=1
	move	$a4, $t6
	bge	$t6, $a1, .LBB0_107
.LBB0_83:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_96 Depth 2
                                        #       Child Loop BB0_104 Depth 3
	addi.w	$t6, $a4, 1
	slli.d	$a5, $t6, 3
	ldx.d	$a5, $s3, $a5
	ld.w	$a7, $a5, 80
	bne	$a7, $s4, .LBB0_82
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a5, $a5, 152
	ld.w	$a7, $a5, 68
	ld.w	$a5, $a5, 64
	sub.w	$t3, $a7, $a5
	addi.w	$a7, $a4, 2
	ori	$a5, $zero, 2
	blt	$a1, $a7, .LBB0_90
# %bb.85:                               # %.lr.ph543.preheader
                                        #   in Loop: Header=BB0_83 Depth=1
	sub.w	$a5, $a1, $a4
	alsl.d	$a7, $a7, $s3, 3
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_86:                               # %.lr.ph543
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a7, 0
	ld.w	$t0, $t2, 80
	bne	$t0, $s4, .LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	ld.d	$t0, $t2, 152
	ld.w	$t2, $t0, 68
	ld.w	$t0, $t0, 64
	addi.w	$a4, $a4, 1
	add.d	$t2, $t2, $t3
	sub.w	$t3, $t2, $t0
	addi.d	$a7, $a7, 8
	bne	$a5, $a4, .LBB0_86
# %bb.88:                               #   in Loop: Header=BB0_83 Depth=1
	move	$a4, $a5
.LBB0_89:                               # %._crit_edge544.loopexit
                                        #   in Loop: Header=BB0_83 Depth=1
	addi.w	$a5, $a4, 1
.LBB0_90:                               # %._crit_edge544
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.w	$a4, $t7, 4
	beqz	$a4, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_83 Depth=1
	slt	$a4, $t3, $t1
	masknez	$a5, $t3, $a4
	maskeqz	$a4, $t1, $a4
	or	$a4, $a4, $a5
	b	.LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_83 Depth=1
	sub.w	$a4, $t1, $t3
	div.w	$a5, $a4, $a5
	srai.d	$a7, $a5, 63
	andn	$t4, $a5, $a7
.LBB0_93:                               # %.lr.ph563
                                        #   in Loop: Header=BB0_83 Depth=1
	slt	$a5, $t1, $t3
	sub.d	$a7, $t3, $t1
	bstrpick.d	$a7, $a7, 31, 1
	maskeqz	$a5, $a7, $a5
	add.d	$s0, $a5, $s0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	add.d	$t3, $t4, $t5
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	move	$s5, $a0
	b	.LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_96 Depth=2
	move	$t6, $a2
	.p2align	4, , 16
.LBB0_95:                               # %.loopexit
                                        #   in Loop: Header=BB0_96 Depth=2
	move	$s5, $t6
	addi.w	$a4, $t6, 0
	addi.w	$t6, $t6, 1
	bge	$a4, $a1, .LBB0_82
.LBB0_96:                               #   Parent Loop BB0_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_104 Depth 3
	slli.d	$a4, $t6, 3
	ldx.d	$s6, $s3, $a4
	ld.w	$a4, $s6, 80
	bne	$a4, $s4, .LBB0_95
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=2
	ld.d	$a4, $s6, 152
	ld.w	$a5, $a4, 68
	ld.w	$a7, $a4, 64
	ld.w	$t0, $t7, 4
	sub.w	$s7, $a5, $a7
	beqz	$t0, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_96 Depth=2
	sub.w	$a5, $t6, $a0
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $t8, $a5
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	b	.LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_96 Depth=2
	bstrpick.d	$a5, $s7, 31, 31
	add.w	$a5, $s7, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a5, $t3
.LBB0_100:                              #   in Loop: Header=BB0_96 Depth=2
	ld.w	$a7, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a4, $a7, $a4
	st.w	$a5, $s6, 16
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	addi.w	$t6, $s5, 2
	st.w	$a4, $s6, 12
	blt	$a1, $t6, .LBB0_95
# %bb.101:                              # %.lr.ph554.preheader
                                        #   in Loop: Header=BB0_96 Depth=2
	add.d	$a4, $s7, $t3
	sub.d	$s5, $a2, $t6
	alsl.d	$s6, $t6, $fp, 3
	alsl.d	$s7, $t6, $s3, 3
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_102:                              #   in Loop: Header=BB0_104 Depth=3
	fld.d	$fa3, $s6, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=3
	ld.w	$t0, $a5, 60
	ld.w	$a5, $a5, 56
	sub.w	$a5, $t0, $a5
	st.w	$a7, $s8, 16
	bstrpick.d	$a7, $a5, 31, 31
	add.w	$a5, $a5, $a7
	srai.d	$a5, $a5, 1
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	st.w	$a5, $s8, 12
	add.d	$a4, $a4, $ra
	addi.d	$t6, $t6, 1
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	beqz	$s5, .LBB0_94
.LBB0_104:                              # %.lr.ph554
                                        #   Parent Loop BB0_83 Depth=1
                                        #     Parent Loop BB0_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s7, 0
	ld.w	$a5, $s8, 80
	bne	$a5, $s4, .LBB0_95
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=3
	ld.d	$a5, $s8, 152
	ld.w	$a7, $a5, 68
	ld.w	$t0, $a5, 64
	ld.w	$t2, $t7, 4
	sub.w	$ra, $a7, $t0
	add.d	$a4, $a4, $t4
	bnez	$t2, .LBB0_102
# %bb.106:                              #   in Loop: Header=BB0_104 Depth=3
	bstrpick.d	$a7, $ra, 31, 31
	add.w	$a7, $ra, $a7
	srli.d	$a7, $a7, 1
	add.d	$a7, $a4, $a7
	b	.LBB0_103
.LBB0_107:                              # %.lr.ph578
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	ori	$a4, $zero, 4
	ori	$a5, $zero, 2
	move	$a7, $a0
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_108:                              #   in Loop: Header=BB0_110 Depth=1
	ld.w	$t0, $t1, 12
	add.d	$t0, $t0, $s2
	st.w	$t0, $t1, 12
.LBB0_109:                              #   in Loop: Header=BB0_110 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 8
	bge	$a7, $a1, .LBB0_112
.LBB0_110:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a2, 0
	ld.w	$t2, $t1, 80
	beq	$t2, $a4, .LBB0_108
# %bb.111:                              #   in Loop: Header=BB0_110 Depth=1
	beq	$t2, $a5, .LBB0_108
	b	.LBB0_109
.LBB0_112:                              # %._crit_edge579
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $s1, $a5
	st.w	$a2, $t3, 0
	add.d	$a2, $a6, $a5
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	add.d	$a2, $t5, $s0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $a2, 0
	add.d	$a2, $a3, $s0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a2, $a5, 1
	alsl.d	$a3, $a0, $a4, 3
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 3
	move	$a5, $a0
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_113:                              #   in Loop: Header=BB0_114 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 8
	bge	$a5, $a1, .LBB0_116
.LBB0_114:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a7, $a6, 80
	bne	$a7, $a4, .LBB0_113
# %bb.115:                              #   in Loop: Header=BB0_114 Depth=1
	ld.w	$a7, $a6, 12
	add.d	$a7, $a7, $a2
	st.w	$a7, $a6, 12
	b	.LBB0_113
.LBB0_116:                              # %.lr.ph588
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a2, 0
	slli.d	$a2, $s0, 1
	alsl.d	$a3, $a0, $a3, 3
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 2
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_117:                              #   in Loop: Header=BB0_118 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bge	$a0, $a1, .LBB0_121
.LBB0_118:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.w	$a6, $a5, 80
	bne	$a6, $a4, .LBB0_117
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=1
	ld.w	$a6, $a5, 16
	add.d	$a6, $a6, $a2
	st.w	$a6, $a5, 16
	b	.LBB0_117
.LBB0_120:                              # %._crit_edge589.critedge
	st.w	$zero, $a5, 0
	st.w	$a6, $a3, 0
	st.w	$zero, $a4, 0
	st.w	$t1, $a2, 0
.LBB0_121:                              # %._crit_edge589
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	placepads, .Lfunc_end0-placepads
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
