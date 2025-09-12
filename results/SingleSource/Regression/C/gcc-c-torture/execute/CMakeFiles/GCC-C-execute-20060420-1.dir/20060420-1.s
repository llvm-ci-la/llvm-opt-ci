	.file	"20060420-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	blez	$a3, .LBB0_7
# %bb.1:                                # %.lr.ph101
	sub.d	$a4, $zero, $a0
	ori	$a6, $zero, 1
	andi	$a5, $a4, 15
	bge	$a6, $a2, .LBB0_8
# %bb.2:                                # %.lr.ph101.split.us.preheader
	move	$a6, $zero
	move	$a4, $zero
	addi.d	$a7, $a1, 8
	addi.d	$t0, $a2, -1
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph101.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	beq	$a6, $a5, .LBB0_20
# %bb.4:                                # %.lr.ph.us
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$t2, $a1, 0
	slli.d	$t1, $a6, 2
	fldx.s	$fa0, $t2, $t1
	move	$t2, $t0
	move	$t3, $a7
	.p2align	4, , 16
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t3, 0
	fldx.s	$fa1, $t4, $t1
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 8
	bnez	$t2, .LBB0_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_3 Depth=1
	fstx.s	$fa0, $a0, $t1
	addi.d	$a6, $a6, 1
	addi.w	$a4, $a4, 1
	bne	$a6, $a3, .LBB0_3
	b	.LBB0_11
.LBB0_7:
	move	$a4, $zero
	addi.w	$a5, $a3, -15
	addi.w	$a6, $a4, 0
	blt	$a6, $a5, .LBB0_12
	b	.LBB0_21
.LBB0_8:                                # %.lr.ph101.split.preheader
	move	$a6, $zero
	move	$a4, $zero
	slli.d	$a7, $a3, 2
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB0_9:                                # %.lr.ph101.split
                                        # =>This Inner Loop Header: Depth=1
	beq	$a5, $a6, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	ld.d	$t0, $a1, 0
	fldx.s	$fa0, $t0, $a6
	fstx.s	$fa0, $a0, $a6
	addi.d	$a6, $a6, 4
	addi.w	$a4, $a4, 1
	bne	$a7, $a6, .LBB0_9
.LBB0_11:                               # %.critedge
	addi.w	$a5, $a3, -15
	addi.w	$a6, $a4, 0
	bge	$a6, $a5, .LBB0_21
.LBB0_12:                               # %.lr.ph115
	ori	$a7, $zero, 1
	bstrpick.d	$a6, $a4, 31, 0
	bge	$a7, $a2, .LBB0_18
# %bb.13:                               # %.lr.ph.us117.preheader
	addi.d	$a4, $a1, 8
	addi.d	$a7, $a2, -1
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph.us117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	ld.d	$t1, $a1, 0
	alsl.d	$t2, $a6, $t1, 2
	slli.d	$t0, $a6, 2
	vldx	$vr3, $t1, $t0
	vld	$vr2, $t2, 16
	vld	$vr1, $t2, 32
	vld	$vr0, $t2, 48
	move	$t1, $a7
	move	$t2, $a4
	.p2align	4, , 16
.LBB0_15:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, 0
	alsl.d	$t4, $a6, $t3, 2
	vldx	$vr4, $t3, $t0
	vld	$vr5, $t4, 16
	vld	$vr6, $t4, 32
	vld	$vr7, $t4, 48
	vfadd.s	$vr3, $vr3, $vr4
	vfadd.s	$vr2, $vr2, $vr5
	vfadd.s	$vr1, $vr1, $vr6
	vfadd.s	$vr0, $vr0, $vr7
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 8
	bnez	$t1, .LBB0_15
# %bb.16:                               # %._crit_edge.us118
                                        #   in Loop: Header=BB0_14 Depth=1
	alsl.d	$t1, $a6, $a0, 2
	vstx	$vr3, $a0, $t0
	vst	$vr2, $t1, 16
	vst	$vr1, $t1, 32
	addi.d	$a6, $a6, 16
	vst	$vr0, $t1, 48
	blt	$a6, $a5, .LBB0_14
# %bb.17:                               # %.preheader.loopexit
	move	$a4, $a6
	b	.LBB0_21
.LBB0_18:                               # %.lr.ph115.split.preheader
	slli.d	$a7, $a6, 2
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph115.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a1, 0
	add.d	$t1, $t0, $a7
	vldx	$vr0, $t0, $a7
	vld	$vr1, $t1, 16
	vld	$vr2, $t1, 32
	vld	$vr3, $t1, 48
	add.d	$t0, $a0, $a7
	vstx	$vr0, $a0, $a7
	vst	$vr1, $t0, 16
	vst	$vr2, $t0, 32
	vst	$vr3, $t0, 48
	addi.d	$a6, $a6, 16
	addi.w	$a4, $a4, 16
	addi.d	$a7, $a7, 64
	blt	$a6, $a5, .LBB0_19
	b	.LBB0_21
.LBB0_20:                               # %.critedge.loopexit.split.loop.exit186
	move	$a4, $a6
	addi.w	$a5, $a3, -15
	addi.w	$a6, $a4, 0
	blt	$a6, $a5, .LBB0_12
.LBB0_21:                               # %.preheader
	addi.w	$a5, $a4, 0
	bge	$a5, $a3, .LBB0_35
# %bb.22:                               # %.lr.ph124
	ld.d	$a5, $a1, 0
	bstrpick.d	$a4, $a4, 31, 0
	ori	$a6, $zero, 1
	bstrpick.d	$a3, $a3, 31, 0
	bge	$a6, $a2, .LBB0_27
# %bb.23:                               # %.lr.ph.us126.preheader
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB0_24:                               # %.lr.ph.us126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	slli.d	$a6, $a4, 2
	fldx.s	$fa0, $a5, $a6
	move	$a7, $a2
	move	$t0, $a1
	.p2align	4, , 16
.LBB0_25:                               #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	fldx.s	$fa1, $t1, $a6
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB0_25
# %bb.26:                               # %._crit_edge.us127
                                        #   in Loop: Header=BB0_24 Depth=1
	addi.d	$a4, $a4, 1
	fstx.s	$fa0, $a0, $a6
	bne	$a4, $a3, .LBB0_24
	b	.LBB0_35
.LBB0_27:                               # %.lr.ph124.split.preheader
	sub.d	$a1, $a3, $a4
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB0_32
# %bb.28:                               # %.lr.ph124.split.preheader
	sub.d	$a2, $a0, $a5
	ori	$a6, $zero, 32
	bltu	$a2, $a6, .LBB0_32
# %bb.29:                               # %vector.ph
	move	$a6, $a1
	bstrins.d	$a6, $zero, 2, 0
	add.d	$a2, $a6, $a4
	slli.d	$a4, $a4, 2
	addi.d	$a7, $a4, 16
	add.d	$a4, $a0, $a7
	add.d	$a7, $a5, $a7
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$t0, $t0, -8
	addi.d	$a4, $a4, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_30
# %bb.31:                               # %middle.block
	bne	$a1, $a6, .LBB0_33
	b	.LBB0_35
.LBB0_32:
	move	$a2, $a4
.LBB0_33:                               # %.lr.ph124.split.preheader200
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a1, $a2, $a5, 2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_34:                               # %.lr.ph124.split
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fst.s	$fa0, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_34
.LBB0_35:                               # %._crit_edge125
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0x00000000                      # float 0
	.word	0x41400000                      # float 12
	.word	0x41c00000                      # float 24
	.word	0x42100000                      # float 36
.LCPI1_1:
	.word	0x00000000                      # float 0
	.word	0x41500000                      # float 13
	.word	0x41d00000                      # float 26
	.word	0x421c0000                      # float 39
.LCPI1_2:
	.word	0x42400000                      # float 48
	.word	0x42700000                      # float 60
	.word	0x42900000                      # float 72
	.word	0x42a80000                      # float 84
.LCPI1_3:
	.word	0x42500000                      # float 52
	.word	0x42820000                      # float 65
	.word	0x429c0000                      # float 78
	.word	0x42b60000                      # float 91
.LCPI1_4:
	.word	0x42c00000                      # float 96
	.word	0x42d80000                      # float 108
	.word	0x42f00000                      # float 120
	.word	0x43040000                      # float 132
.LCPI1_5:
	.word	0x42d00000                      # float 104
	.word	0x42ea0000                      # float 117
	.word	0x43020000                      # float 130
	.word	0x430f0000                      # float 143
.LCPI1_6:
	.word	0x43100000                      # float 144
	.word	0x431c0000                      # float 156
	.word	0x43280000                      # float 168
	.word	0x43340000                      # float 180
.LCPI1_7:
	.word	0x431c0000                      # float 156
	.word	0x43290000                      # float 169
	.word	0x43360000                      # float 182
	.word	0x43430000                      # float 195
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$s0, $a0, %pc_lo12(buffer)
	sub.d	$a0, $zero, $s0
	andi	$s1, $a0, 60
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_2)
	add.d	$fp, $s0, $s1
	vst	$vr0, $fp, 64
	vst	$vr1, $fp, 128
	vst	$vr2, $fp, 80
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_6)
	vst	$vr0, $fp, 144
	vst	$vr1, $fp, 96
	vst	$vr2, $fp, 160
	vst	$vr3, $fp, 112
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_7)
	addi.d	$a0, $fp, 64
	st.d	$a0, $sp, 0
	addi.d	$a0, $fp, 128
	st.d	$a0, $sp, 8
	vst	$vr0, $fp, 176
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 2
	ori	$a3, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	fldx.s	$fa0, $s0, $s1
	movgr2fr.w	$fa1, $zero
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.1:
	fld.s	$fa0, $fp, 4
	vldi	$vr1, -1223
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.2:
	fld.s	$fa0, $fp, 8
	lu12i.w	$a0, 271488
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.3:
	fld.s	$fa0, $fp, 12
	lu12i.w	$a0, 272736
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.4:
	fld.s	$fa0, $fp, 16
	lu12i.w	$a0, 273536
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.5:
	fld.s	$fa0, $fp, 20
	lu12i.w	$a0, 274336
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.6:
	fld.s	$fa0, $fp, 24
	lu12i.w	$a0, 274784
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.7:
	fld.s	$fa0, $fp, 28
	lu12i.w	$a0, 275184
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.8:
	fld.s	$fa0, $fp, 32
	lu12i.w	$a0, 275584
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.9:
	fld.s	$fa0, $fp, 36
	lu12i.w	$a0, 275984
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.10:
	fld.s	$fa0, $fp, 40
	lu12i.w	$a0, 276384
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.11:
	fld.s	$fa0, $fp, 44
	lu12i.w	$a0, 276632
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.12:
	fld.s	$fa0, $fp, 48
	lu12i.w	$a0, 276832
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.13:
	fld.s	$fa0, $fp, 52
	lu12i.w	$a0, 277032
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.14:
	fld.s	$fa0, $fp, 56
	lu12i.w	$a0, 277232
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.15:
	fld.s	$fa0, $fp, 60
	lu12i.w	$a0, 277432
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.16:
	move	$a0, $zero
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_17:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	buffer,@object                  # @buffer
	.bss
	.globl	buffer
	.p2align	2, 0x0
buffer:
	.space	256
	.size	buffer, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buffer
