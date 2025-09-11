	.file	"config3.c"
	.text
	.globl	config3                         # -- Begin function config3
	.p2align	5
	.type	config3,@function
config3:                                # @config3
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 244
	blez	$a0, .LBB0_4
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a2, $a2, 0
	move	$t0, $zero
	move	$a3, $zero
	addi.d	$a4, $a0, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a7, $a2, 8
	ori	$t2, $a1, 576
	addi.d	$t1, $a4, -1
	move	$a6, $t2
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a7, 0
	ld.w	$a1, $a2, 56
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a4, $a1, 152
	ld.w	$a5, $a2, 12
	ld.w	$a1, $a4, 56
	ld.w	$t3, $a4, 40
	add.d	$a1, $a1, $a5
	slli.d	$t3, $t3, 1
	sub.w	$a1, $a1, $t3
	ld.w	$t3, $a4, 60
	ld.w	$t4, $a4, 44
	ld.w	$t5, $a2, 16
	ld.w	$t6, $a4, 64
	add.d	$a2, $t3, $a5
	alsl.w	$a2, $t4, $a2, 1
	ld.w	$a5, $a4, 48
	add.d	$t3, $t6, $t5
	ld.w	$t4, $a4, 68
	ld.w	$t6, $a4, 52
	slli.d	$a4, $a5, 1
	sub.w	$a4, $t3, $a4
	add.d	$a5, $t4, $t5
	alsl.w	$a5, $t6, $a5, 1
	slt	$t3, $a1, $a6
	maskeqz	$t4, $a1, $t3
	masknez	$a6, $a6, $t3
	or	$a6, $t4, $a6
	slt	$t3, $a3, $a2
	maskeqz	$t4, $a2, $t3
	masknez	$a3, $a3, $t3
	or	$a3, $t4, $a3
	slt	$t3, $a4, $t2
	maskeqz	$t4, $a4, $t3
	masknez	$t2, $t2, $t3
	or	$t2, $t4, $t2
	slt	$t3, $t0, $a5
	maskeqz	$t4, $a5, $t3
	masknez	$t0, $t0, $t3
	or	$t0, $t4, $t0
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB0_2
# %bb.3:                                # %.preheader138
	pcalau12i	$a7, %got_pc_hi20(numpads)
	ld.d	$a7, $a7, %got_pc_lo12(numpads)
	ld.w	$a7, $a7, 0
	bgtz	$a7, .LBB0_5
	b	.LBB0_31
.LBB0_4:
	ori	$a6, $a1, 576
	move	$a3, $zero
	move	$t0, $zero
	move	$t2, $a6
                                        # implicit-def: $r5
                                        # implicit-def: $r6
                                        # implicit-def: $r8
                                        # implicit-def: $r9
	pcalau12i	$a7, %got_pc_hi20(numpads)
	ld.d	$a7, $a7, %got_pc_lo12(numpads)
	ld.w	$a7, $a7, 0
	blez	$a7, .LBB0_31
.LBB0_5:                                # %.lr.ph158
	add.w	$a7, $a7, $a0
	pcalau12i	$t1, %got_pc_hi20(cellarray)
	ld.d	$t1, $t1, %got_pc_lo12(cellarray)
	ld.d	$t3, $t1, 0
	alsl.d	$t3, $a0, $t3, 3
	addi.d	$t3, $t3, 8
	ori	$t4, $zero, 4
	move	$t5, $a0
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$t5, $t5, 1
	addi.d	$t3, $t3, 8
	bge	$t5, $a7, .LBB0_9
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $t3, 0
	ld.w	$t7, $t6, 80
	bne	$t7, $t4, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a4, $t6, 56
	alsl.d	$a4, $a4, $t6, 3
	ld.d	$a4, $a4, 152
	ld.w	$t6, $t6, 16
	ld.w	$a4, $a4, 68
	add.d	$a4, $t6, $a4
	sub.d	$a4, $t2, $a4
	b	.LBB0_6
.LBB0_9:                                # %.lr.ph165
	ld.d	$t2, $t1, 0
	alsl.d	$t2, $a0, $t2, 3
	addi.d	$t2, $t2, 8
	ori	$t3, $zero, 2
	move	$t4, $a0
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	addi.d	$t4, $t4, 1
	addi.d	$t2, $t2, 8
	bge	$t4, $a7, .LBB0_13
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t5, $t2, 0
	ld.w	$t6, $t5, 80
	bne	$t6, $t3, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	ld.w	$a5, $t5, 56
	alsl.d	$a5, $a5, $t5, 3
	ld.d	$a5, $a5, 152
	ld.w	$t5, $t5, 16
	ld.w	$a5, $a5, 64
	sub.d	$t5, $t5, $t0
	add.d	$a5, $t5, $a5
	b	.LBB0_10
.LBB0_13:                               # %.lr.ph171
	ld.d	$t0, $t1, 0
	alsl.d	$t0, $a0, $t0, 3
	addi.d	$t0, $t0, 8
	ori	$t2, $zero, 1
	move	$t3, $a0
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=1
	addi.d	$t3, $t3, 1
	addi.d	$t0, $t0, 8
	bge	$t3, $a7, .LBB0_17
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $t0, 0
	ld.w	$t5, $t4, 80
	bne	$t5, $t2, .LBB0_14
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	ld.w	$a1, $t4, 56
	alsl.d	$a1, $a1, $t4, 3
	ld.d	$a1, $a1, 152
	ld.w	$t4, $t4, 12
	ld.w	$a1, $a1, 60
	add.d	$a1, $t4, $a1
	sub.d	$a1, $a6, $a1
	b	.LBB0_14
.LBB0_17:                               # %.lr.ph177
	ld.d	$a6, $t1, 0
	alsl.d	$a6, $a0, $a6, 3
	addi.d	$a6, $a6, 8
	ori	$t0, $zero, 3
	move	$t2, $a0
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$a6, $a6, 8
	bge	$t2, $a7, .LBB0_21
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a6, 0
	ld.w	$t4, $t3, 80
	bne	$t4, $t0, .LBB0_18
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	ld.w	$a2, $t3, 56
	alsl.d	$a2, $a2, $t3, 3
	ld.d	$a2, $a2, 152
	ld.w	$t3, $t3, 12
	ld.w	$a2, $a2, 56
	sub.d	$t3, $t3, $a3
	add.d	$a2, $t3, $a2
	b	.LBB0_18
.LBB0_21:                               # %.lr.ph182
	ld.d	$a3, $t1, 0
	alsl.d	$a3, $a0, $a3, 3
	addi.d	$a3, $a3, 8
	ori	$a6, $zero, 3
	pcalau12i	$t0, %pc_hi20(.LJTI0_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI0_0)
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 16
	add.d	$t2, $t2, $a4
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=1
	st.w	$t2, $t1, 16
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bge	$a0, $a7, .LBB0_31
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a3, 0
	ld.w	$t2, $t1, 80
	addi.d	$t2, $t2, -1
	bltu	$a6, $t2, .LBB0_24
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t0, $t2
	add.d	$t2, $t0, $t2
	jr	$t2
.LBB0_27:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 12
	add.d	$t2, $t2, $a1
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 12
	sub.d	$t2, $t2, $a2
.LBB0_29:                               #   in Loop: Header=BB0_25 Depth=1
	st.w	$t2, $t1, 12
	b	.LBB0_24
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 16
	sub.d	$t2, $t2, $a5
	b	.LBB0_23
.LBB0_31:                               # %._crit_edge
	ret
.Lfunc_end0:
	.size	config3, .Lfunc_end0-config3
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
                                        # -- End function
	.text
	.globl	reconfigSides                   # -- Begin function reconfigSides
	.p2align	5
	.type	reconfigSides,@function
reconfigSides:                          # @reconfigSides
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	pcalau12i	$a1, %got_pc_hi20(blockt)
	ld.d	$a1, $a1, %got_pc_lo12(blockt)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(blockb)
	ld.d	$a2, $a2, %got_pc_lo12(blockb)
	ld.w	$a2, $a2, 0
	sub.d	$a1, $a1, $a2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(numcells)
	ld.d	$a3, $a3, %got_pc_lo12(numcells)
	ld.w	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(numpads)
	ld.d	$a4, $a4, %got_pc_lo12(numpads)
	ld.w	$a4, $a4, 0
	add.w	$a3, $a4, $a3
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a3, $a2, 8
	ld.w	$a4, $a3, 12
	ld.d	$a5, $a2, 24
	sub.d	$a4, $a4, $a0
	ld.d	$a6, $a2, 16
	ld.w	$a7, $a5, 16
	st.w	$a4, $a3, 12
	ld.d	$a2, $a2, 32
	ld.w	$a3, $a6, 12
	sub.d	$a4, $a7, $a1
	st.w	$a4, $a5, 16
	ld.w	$a4, $a2, 16
	add.d	$a0, $a3, $a0
	st.w	$a0, $a6, 12
	add.d	$a0, $a4, $a1
	st.w	$a0, $a2, 16
	ret
.Lfunc_end1:
	.size	reconfigSides, .Lfunc_end1-reconfigSides
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
