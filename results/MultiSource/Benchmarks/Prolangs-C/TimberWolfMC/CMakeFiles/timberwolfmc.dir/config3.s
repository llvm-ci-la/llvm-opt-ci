	.file	"config3.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function config3
.LCPI0_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
	.text
	.globl	config3
	.p2align	5
	.type	config3,@function
config3:                                # @config3
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $a0, 0
	lu12i.w	$a2, 244
	blez	$a0, .LBB0_4
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$a1, $a1, %got_pc_lo12(cellarray)
	ld.d	$a1, $a1, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a1, $a1, 8
	ori	$a2, $a2, 576
	vreplgr2vr.w	$vr2, $a2
	addi.d	$a2, $a3, -1
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 56
	alsl.d	$a4, $a4, $a3, 3
	ld.d	$a4, $a4, 152
	ld.d	$a3, $a3, 12
	vld	$vr1, $a4, 56
	vld	$vr3, $a4, 40
	vinsgr2vr.d	$vr4, $a3, 0
	vshuf4i.w	$vr4, $vr4, 80
	vadd.w	$vr1, $vr1, $vr4
	vslli.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr1, $vr4
	vsub.w	$vr4, $vr1, $vr4
	vshuf4i.w	$vr1, $vr4, 2
	vmin.w	$vr2, $vr1, $vr2
	vshuf4i.w	$vr1, $vr3, 7
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_2
# %bb.3:                                # %.preheader138.loopexit
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_0)
	vpickve2gr.w	$a5, $vr2, 1
	vpickve2gr.w	$a4, $vr2, 0
	vshuf.w	$vr1, $vr3, $vr4
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	ld.w	$a1, $a1, 0
	bgtz	$a1, .LBB0_5
	b	.LBB0_31
.LBB0_4:
	ori	$a5, $a2, 576
	vrepli.b	$vr0, 0
	move	$a4, $a5
                                        # implicit-def: $vr1
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	ld.w	$a1, $a1, 0
	blez	$a1, .LBB0_31
.LBB0_5:                                # %.lr.ph158
	add.w	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a3, $a2, %got_pc_lo12(cellarray)
	ld.d	$a6, $a3, 0
	vpickve2gr.w	$a2, $vr1, 2
	alsl.d	$a6, $a0, $a6, 3
	addi.d	$a6, $a6, 8
	ori	$a7, $zero, 4
	move	$t0, $a0
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	bge	$t0, $a1, .LBB0_9
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	ld.w	$t2, $t1, 80
	bne	$t2, $a7, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a2, $t1, 56
	alsl.d	$a2, $a2, $t1, 3
	ld.d	$a2, $a2, 152
	ld.w	$t1, $t1, 16
	ld.w	$a2, $a2, 68
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a4, $a2
	b	.LBB0_6
.LBB0_9:                                # %.lr.ph165
	ld.d	$a7, $a3, 0
	vpickve2gr.w	$a4, $vr1, 3
	vpickve2gr.w	$a6, $vr0, 0
	alsl.d	$a7, $a0, $a7, 3
	addi.d	$a7, $a7, 8
	ori	$t0, $zero, 2
	move	$t1, $a0
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 8
	bge	$t1, $a1, .LBB0_13
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a7, 0
	ld.w	$t3, $t2, 80
	bne	$t3, $t0, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	ld.w	$a4, $t2, 56
	alsl.d	$a4, $a4, $t2, 3
	ld.d	$a4, $a4, 152
	ld.w	$t2, $t2, 16
	ld.w	$a4, $a4, 64
	sub.d	$t2, $t2, $a6
	add.d	$a4, $t2, $a4
	b	.LBB0_10
.LBB0_13:                               # %.lr.ph171
	ld.d	$a7, $a3, 0
	vpickve2gr.w	$a6, $vr1, 0
	alsl.d	$a7, $a0, $a7, 3
	addi.d	$a7, $a7, 8
	ori	$t0, $zero, 1
	move	$t1, $a0
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=1
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 8
	bge	$t1, $a1, .LBB0_17
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a7, 0
	ld.w	$t3, $t2, 80
	bne	$t3, $t0, .LBB0_14
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	ld.w	$a6, $t2, 56
	alsl.d	$a6, $a6, $t2, 3
	ld.d	$a6, $a6, 152
	ld.w	$t2, $t2, 12
	ld.w	$a6, $a6, 60
	add.d	$a6, $t2, $a6
	sub.d	$a6, $a5, $a6
	b	.LBB0_14
.LBB0_17:                               # %.lr.ph177
	ld.d	$t0, $a3, 0
	vpickve2gr.w	$a5, $vr1, 1
	vpickve2gr.w	$a7, $vr0, 1
	alsl.d	$t0, $a0, $t0, 3
	addi.d	$t0, $t0, 8
	ori	$t1, $zero, 3
	move	$t2, $a0
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$t0, $t0, 8
	bge	$t2, $a1, .LBB0_21
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $t0, 0
	ld.w	$t4, $t3, 80
	bne	$t4, $t1, .LBB0_18
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	ld.w	$a5, $t3, 56
	alsl.d	$a5, $a5, $t3, 3
	ld.d	$a5, $a5, 152
	ld.w	$t3, $t3, 12
	ld.w	$a5, $a5, 56
	sub.d	$t3, $t3, $a7
	add.d	$a5, $t3, $a5
	b	.LBB0_18
.LBB0_21:                               # %.lr.ph182
	ld.d	$a3, $a3, 0
	alsl.d	$a3, $a0, $a3, 3
	addi.d	$a3, $a3, 8
	ori	$a7, $zero, 3
	pcalau12i	$t0, %pc_hi20(.LJTI0_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI0_0)
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 16
	add.d	$t2, $t2, $a2
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=1
	st.w	$t2, $t1, 16
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bge	$a0, $a1, .LBB0_31
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a3, 0
	ld.w	$t2, $t1, 80
	addi.d	$t2, $t2, -1
	bltu	$a7, $t2, .LBB0_24
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t0, $t2
	add.d	$t2, $t0, $t2
	jr	$t2
.LBB0_27:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 12
	add.d	$t2, $t2, $a6
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 12
	sub.d	$t2, $t2, $a5
.LBB0_29:                               #   in Loop: Header=BB0_25 Depth=1
	st.w	$t2, $t1, 12
	b	.LBB0_24
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t2, $t1, 16
	sub.d	$t2, $t2, $a4
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
