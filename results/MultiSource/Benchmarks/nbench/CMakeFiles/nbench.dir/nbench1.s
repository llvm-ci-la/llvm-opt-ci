	.file	"nbench1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoNumSort
.LCPI0_0:
	.dword	0x4077700000000000              # double 375
	.text
	.globl	DoNumSort
	.p2align	5
	.type	DoNumSort,@function
DoNumSort:                              # @DoNumSort
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_numsortstruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_numsortstruct)
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB0_8
# %bb.1:
	ld.hu	$a0, $s2, 24
	ld.d	$a1, $s2, 32
	mul.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$a1, .LBB0_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %.loopexit
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_0)
	move	$s0, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 32
	ld.hu	$a2, $s2, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoNumSortIteration)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	add.d	$s0, $a0, $s0
	bcnez	$fcc0, .LBB0_4
# %bb.5:
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 24
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs0, $fs0, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s2, 16
	bnez	$a0, .LBB0_7
# %bb.6:
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
.LBB0_7:
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB0_8:
	ori	$a0, $zero, 1
	st.h	$a0, $s2, 24
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s3, $a1, %got_pc_lo12(global_min_ticks)
	lu12i.w	$a1, 2
	ori	$s4, $a1, 1809
	pcalau12i	$a1, %pc_hi20(.Lstr)
	addi.d	$s0, $a1, %pc_lo12(.Lstr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$s1, $a1, %pc_lo12(.L.str.50)
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 32
	bstrpick.d	$a0, $a0, 15, 0
	mul.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$a1, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	ld.d	$a1, $s2, 32
	ld.hu	$a2, $s2, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoNumSortIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	bltu	$a1, $a0, .LBB0_3
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s2, 24
	addi.d	$a0, $a1, 1
	st.h	$a0, $s2, 24
	bltu	$a1, $s4, .LBB0_9
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 24
	b	.LBB0_9
.Lfunc_end0:
	.size	DoNumSort, .Lfunc_end0-DoNumSort
                                        # -- End function
	.p2align	5                               # -- Begin function DoNumSortIteration
	.type	DoNumSortIteration,@function
DoNumSortIteration:                     # @DoNumSortIteration
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_14
# %bb.1:
	move	$s2, $s0
	move	$s3, $fp
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB1_2
# %bb.3:                                # %.preheader.thread.i
	addi.w	$a0, $s1, -1
	beqz	$a0, .LBB1_16
# %bb.4:                                # %.lr.ph21.us.i.preheader
	move	$a1, $zero
	slli.d	$a2, $fp, 3
	move	$a3, $fp
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 4
	ori	$a5, $zero, 32
	move	$a6, $a2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %..loopexit_crit_edge.us.i
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	add.d	$a6, $a6, $a2
	beqz	$a0, .LBB1_14
.LBB1_6:                                # %.lr.ph21.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_10 Depth 2
	bltu	$fp, $a4, .LBB1_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_6 Depth=1
	mul.d	$a7, $a2, $a1
	add.d	$a7, $a2, $a7
	bgeu	$a7, $a5, .LBB1_11
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	move	$t0, $zero
.LBB1_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	sub.d	$a7, $fp, $t0
	alsl.d	$t0, $t0, $s0, 3
	.p2align	4, , 16
.LBB1_10:                               # %scalar.ph
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	stx.d	$t1, $t0, $a6
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB1_10
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_11:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a7, $s0
	move	$t0, $a3
	.p2align	4, , 16
.LBB1_12:                               # %vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a7, 0
	vld	$vr1, $a7, 16
	add.d	$t1, $a7, $a6
	vstx	$vr0, $a7, $a6
	vst	$vr1, $t1, 16
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB1_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$t0, $a3
	beq	$fp, $a3, .LBB1_5
	b	.LBB1_9
.LBB1_14:                               # %LoadNumArrayWithRand.exit
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB1_37
# %bb.15:                               # %.lr.ph
	addi.d	$a1, $fp, -1
	bnez	$a1, .LBB1_17
	b	.LBB1_37
.LBB1_16:                               # %LoadNumArrayWithRand.exit.thread
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, -1
	beqz	$a1, .LBB1_37
.LBB1_17:                               # %.lr.ph.split.preheader
	move	$a2, $zero
	srli.d	$a3, $a1, 1
	ori	$a4, $zero, 2
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               # %NumHeapSort.exit.loopexit
                                        #   in Loop: Header=BB1_19 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s1, .LBB1_37
.LBB1_19:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_33 Depth 3
                                        #     Child Loop BB1_22 Depth 2
                                        #       Child Loop BB1_24 Depth 3
	mul.d	$a5, $a2, $fp
	alsl.d	$a5, $a5, $s0, 3
	bgeu	$a1, $a4, .LBB1_28
.LBB1_20:                               # %.lr.ph31.i.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	move	$a6, $a1
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %NumSift.exit26.i
                                        #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a7, $a6, 3
	ldx.d	$t0, $a5, $a7
	ld.d	$t1, $a5, 0
	st.d	$t0, $a5, 0
	addi.d	$a6, $a6, -1
	stx.d	$t1, $a5, $a7
	beqz	$a6, .LBB1_18
.LBB1_22:                               # %.lr.ph31.i
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	move	$t0, $zero
	move	$t1, $zero
	addi.d	$a7, $a6, 1
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=3
	slli.d	$t0, $t4, 1
	move	$t1, $t4
	bltu	$a6, $t0, .LBB1_21
.LBB1_24:                               #   Parent Loop BB1_19 Depth=1
                                        #     Parent Loop BB1_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$t0, $a6, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=3
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a5, $t2
	addi.d	$t3, $t0, 1
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a5, $t4
	slt	$t2, $t2, $t4
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $t3, $t2
	or	$t0, $t2, $t0
.LBB1_26:                               #   in Loop: Header=BB1_24 Depth=3
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a5, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a5, $t3
	move	$t4, $a7
	bge	$t2, $t3, .LBB1_23
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=3
	alsl.d	$t1, $t1, $a5, 3
	alsl.d	$t4, $t0, $a5, 3
	st.d	$t2, $t4, 0
	st.d	$t3, $t1, 0
	move	$t4, $t0
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_28:                               # %.lr.ph.i11.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	move	$a6, $a3
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_29:                               # %NumSift.exit.i
                                        #   in Loop: Header=BB1_30 Depth=2
	addi.d	$a6, $a6, -1
	beqz	$a6, .LBB1_20
.LBB1_30:                               # %.lr.ph.i11
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_33 Depth 3
	slli.d	$a7, $a6, 1
	bltu	$a1, $a7, .LBB1_29
# %bb.31:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB1_30 Depth=2
	move	$t0, $a6
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=3
	slli.d	$a7, $t3, 1
	move	$t0, $t3
	bltu	$a1, $a7, .LBB1_29
.LBB1_33:                               # %.lr.ph.i.i
                                        #   Parent Loop BB1_19 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$a7, $a1, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=3
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a5, $t1
	addi.d	$t2, $a7, 1
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $a5, $t3
	slt	$t1, $t1, $t3
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $t2, $t1
	or	$a7, $t1, $a7
.LBB1_35:                               #   in Loop: Header=BB1_33 Depth=3
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a5, $t1
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a5, $t2
	move	$t3, $fp
	bge	$t1, $t2, .LBB1_32
# %bb.36:                               #   in Loop: Header=BB1_33 Depth=3
	alsl.d	$t0, $t0, $a5, 3
	alsl.d	$t3, $a7, $a5, 3
	st.d	$t1, $t3, 0
	st.d	$t2, $t0, 0
	move	$t3, $a7
	b	.LBB1_32
.LBB1_37:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end1:
	.size	DoNumSortIteration, .Lfunc_end1-DoNumSortIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoStringSort
.LCPI2_0:
	.dword	0x405f400000000000              # double 125
	.text
	.globl	DoStringSort
	.p2align	5
	.type	DoStringSort,@function
DoStringSort:                           # @DoStringSort
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_strsortstruct)
	ld.d	$s1, $a0, %got_pc_lo12(global_strsortstruct)
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB2_8
# %bb.1:
	ld.d	$a0, $s1, 32
	ld.hu	$a1, $s1, 24
	addi.d	$a0, $a0, 100
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$a1, .LBB2_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %.loopexit
	ld.hu	$a1, $s1, 24
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 32
	bstrpick.d	$a1, $a1, 15, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoStringSortIteration)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s1, 24
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	add.d	$s0, $a0, $s0
	bcnez	$fcc0, .LBB2_4
# %bb.5:
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s1, 16
	bnez	$a0, .LBB2_7
# %bb.6:
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 0
.LBB2_7:
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB2_8:                                # %.preheader.preheader
	ori	$a0, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s2, $a1, %got_pc_lo12(global_min_ticks)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$s0, $a1, %pc_lo12(.L.str.52)
	.p2align	4, , 16
.LBB2_9:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 32
	st.h	$a0, $s1, 24
	addi.d	$a1, $a1, 100
	bstrpick.d	$a0, $a0, 15, 0
	mul.d	$a0, $a1, $a0
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$a1, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=1
	ld.hu	$a1, $s1, 24
	ld.d	$a2, $s1, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoStringSortIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	bltu	$a1, $a0, .LBB2_3
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=1
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s1, 24
	addi.d	$a0, $a0, 1
	b	.LBB2_9
.Lfunc_end2:
	.size	DoStringSort, .Lfunc_end2-DoStringSort
                                        # -- End function
	.p2align	5                               # -- Begin function DoStringSortIteration
	.type	DoStringSortIteration,@function
DoStringSortIteration:                  # @DoStringSortIteration
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$s6, $a1
	move	$s1, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s2, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	ori	$a2, $zero, 24
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %._crit_edge.i
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s3, $a0, 1
	addi.d	$a0, $s7, 1
	addi.d	$a1, $s8, 8
	addi.d	$a2, $s5, 8
	move	$s2, $s0
	bgeu	$fp, $s4, .LBB3_5
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $a0
	move	$s8, $a1
	move	$s5, $a2
	ori	$a0, $zero, 76
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	andi	$a1, $a0, 255
	addi.d	$s0, $s2, 1
	add.d	$fp, $s0, $a1
	sltu	$a1, $fp, $s4
	nor	$a2, $s2, $zero
	add.d	$a2, $s4, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	andi	$a1, $a0, 255
	stx.b	$a0, $s1, $s2
	beqz	$a1, .LBB3_1
# %bb.3:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB3_2 Depth=1
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, 1
	andi	$s2, $a0, 255
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 254
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	stx.b	$a0, $s1, $s0
	addi.d	$s0, $s0, 1
	andi	$a0, $s0, 255
	bne	$s2, $a0, .LBB3_4
	b	.LBB3_1
.LBB3_5:                                # %.preheader73.i
	ori	$a0, $zero, 2
	bltu	$s6, $a0, .LBB3_24
# %bb.6:                                # %.preheader73.i
	beqz	$s4, .LBB3_24
# %bb.7:                                # %.lr.ph79.us.i.preheader
	move	$a0, $zero
	addi.d	$a2, $s4, -1
	addi.d	$a1, $s4, 100
	bstrpick.d	$a3, $a2, 31, 0
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	xor	$a3, $a3, $a4
	sltui	$a3, $a3, 1
	srli.d	$a2, $a2, 32
	sltu	$a2, $zero, $a2
	or	$a2, $a3, $a2
	bstrpick.d	$a3, $s4, 32, 5
	slli.d	$a3, $a3, 5
	andi	$a4, $s4, 24
	bstrpick.d	$a5, $s4, 32, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $s4, 116
	sub.d	$a7, $zero, $a5
	ori	$t0, $zero, 1
	ori	$t1, $zero, 8
	ori	$t2, $zero, 32
	move	$t3, $a1
	move	$t4, $s1
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                # %._crit_edge80.us.i
                                        #   in Loop: Header=BB3_9 Depth=1
	addi.w	$t0, $t0, 1
	add.d	$a6, $a6, $a1
	add.d	$t3, $t3, $a1
	beq	$t0, $s6, .LBB3_24
.LBB3_9:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
                                        #     Child Loop BB3_21 Depth 2
                                        #     Child Loop BB3_13 Depth 2
	add.d	$t4, $t4, $s4
	addi.d	$t4, $t4, 100
	addi.d	$a0, $a0, 1
	bltu	$s4, $t1, .LBB3_11
# %bb.10:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_9 Depth=1
	mul.d	$t5, $a1, $a0
	sltui	$t5, $t5, 32
	or	$t5, $a2, $t5
	beqz	$t5, .LBB3_14
.LBB3_11:                               #   in Loop: Header=BB3_9 Depth=1
	move	$t5, $zero
	move	$t6, $zero
.LBB3_12:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB3_9 Depth=1
	addi.w	$t6, $t6, 1
	.p2align	4, , 16
.LBB3_13:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$t7, $s1, $t5
	stx.b	$t7, $t4, $t5
	bstrpick.d	$t5, $t6, 31, 0
	addi.w	$t6, $t6, 1
	bltu	$t5, $s4, .LBB3_13
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_14:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_9 Depth=1
	bgeu	$s4, $t2, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_9 Depth=1
	move	$t6, $zero
	b	.LBB3_20
.LBB3_16:                               # %vector.body.preheader
                                        #   in Loop: Header=BB3_9 Depth=1
	move	$t5, $s1
	move	$t6, $a3
	.p2align	4, , 16
.LBB3_17:                               # %vector.body
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t5, 0
	vld	$vr1, $t5, 16
	add.d	$t7, $t5, $a6
	vst	$vr0, $t7, -16
	vstx	$vr1, $t5, $a6
	addi.d	$t6, $t6, -32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB3_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB3_9 Depth=1
	beq	$s4, $a3, .LBB3_8
# %bb.19:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_9 Depth=1
	move	$t6, $a3
	beqz	$a4, .LBB3_23
.LBB3_20:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_9 Depth=1
	add.d	$t5, $a7, $t6
	add.d	$t6, $s1, $t6
	.p2align	4, , 16
.LBB3_21:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t6, 0
	stx.d	$t7, $t6, $t3
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 8
	bnez	$t5, .LBB3_21
# %bb.22:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_9 Depth=1
	move	$t5, $a5
	move	$t6, $a5
	beq	$s4, $a5, .LBB3_8
	b	.LBB3_12
.LBB3_23:                               #   in Loop: Header=BB3_9 Depth=1
	move	$t5, $a3
	move	$t6, $a3
	b	.LBB3_12
.LBB3_24:                               # %._crit_edge84.i
	slli.w	$a0, $s6, 3
	mul.d	$a0, $s3, $a0
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 120
	move	$s0, $a0
	beqz	$a1, .LBB3_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB3_26:
	beqz	$s3, .LBB3_30
# %bb.27:                               # %.lr.ph88.i.preheader
	move	$a1, $zero
	move	$a0, $s0
	move	$a2, $s7
	.p2align	4, , 16
.LBB3_28:                               # %.lr.ph88.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a0, 0
	ldx.bu	$a3, $s1, $a1
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_28
# %bb.29:                               # %.preheader.i
	ori	$a0, $zero, 2
	bgeu	$s6, $a0, .LBB3_31
.LBB3_30:                               # %LoadStringArray.exit
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB3_42
	b	.LBB3_81
.LBB3_31:                               # %.lr.ph91.i.preheader.preheader
	move	$a0, $zero
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a4, 3
	addi.d	$a1, $a1, 8
	bstrpick.d	$a2, $a4, 31, 0
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	srli.d	$a3, $a4, 32
	sltu	$a3, $zero, $a3
	or	$a2, $a2, $a3
	move	$a3, $s7
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	ori	$a5, $zero, 8
	move	$a6, $s8
	move	$a7, $s0
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %._crit_edge92.i
                                        #   in Loop: Header=BB3_33 Depth=1
	addi.w	$a4, $a4, 1
	add.d	$a6, $a6, $s8
	beq	$a4, $s6, .LBB3_41
.LBB3_33:                               # %.lr.ph91.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_39 Depth 2
                                        #     Child Loop BB3_37 Depth 2
	alsl.d	$a7, $s3, $a7, 3
	addi.d	$a0, $a0, 1
	bltu	$s7, $a5, .LBB3_35
# %bb.34:                               # %vector.scevcheck61
                                        #   in Loop: Header=BB3_33 Depth=1
	mul.d	$t0, $a1, $a0
	sltui	$t0, $t0, 32
	or	$t0, $a2, $t0
	beqz	$t0, .LBB3_38
.LBB3_35:                               #   in Loop: Header=BB3_33 Depth=1
	move	$t0, $zero
	move	$t1, $zero
.LBB3_36:                               # %.lr.ph91.i.preheader150
                                        #   in Loop: Header=BB3_33 Depth=1
	addi.w	$t1, $t1, 1
	.p2align	4, , 16
.LBB3_37:                               # %.lr.ph91.i
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t0, 3
	ldx.d	$t2, $s0, $t0
	stx.d	$t2, $a7, $t0
	bstrpick.d	$t0, $t1, 31, 0
	addi.w	$t1, $t1, 1
	bltu	$t0, $s3, .LBB3_37
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_38:                               # %vector.body71.preheader
                                        #   in Loop: Header=BB3_33 Depth=1
	move	$t0, $s0
	move	$t1, $a3
	.p2align	4, , 16
.LBB3_39:                               # %vector.body71
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, 16
	add.d	$t2, $t0, $a6
	vstx	$vr0, $t0, $a6
	vst	$vr1, $t2, 16
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB3_39
# %bb.40:                               # %middle.block76
                                        #   in Loop: Header=BB3_33 Depth=1
	move	$t0, $a3
	move	$t1, $a3
	beq	$s7, $a3, .LBB3_32
	b	.LBB3_36
.LBB3_41:                               # %LoadStringArray.exit.thread
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
.LBB3_42:                               # %.lr.ph
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a2, $zero
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	srli.d	$a0, $a1, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a1
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	bstrins.d	$a1, $a0, 1, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 24
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $s0, $s5
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $s0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_43:                               # %StrHeapSort.exit
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	add.d	$s5, $s5, $s8
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $s1, $s4
	addi.d	$s1, $a0, 100
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s6, .LBB3_80
.LBB3_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_46 Depth 2
                                        #     Child Loop BB3_50 Depth 2
                                        #       Child Loop BB3_54 Depth 3
                                        #       Child Loop BB3_57 Depth 3
                                        #       Child Loop BB3_60 Depth 3
                                        #       Child Loop BB3_63 Depth 3
                                        #       Child Loop BB3_70 Depth 3
                                        #       Child Loop BB3_73 Depth 3
                                        #       Child Loop BB3_76 Depth 3
                                        #       Child Loop BB3_79 Depth 3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	bgeu	$s4, $a0, .LBB3_46
# %bb.45:                               # %.preheader.i22
                                        #   in Loop: Header=BB3_44 Depth=1
	bnez	$s4, .LBB3_47
	b	.LBB3_43
	.p2align	4, , 16
.LBB3_46:                               # %.lr.ph.i18
                                        #   Parent Loop BB3_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(strsift)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	bnez	$s6, .LBB3_46
.LBB3_47:                               # %.lr.ph57.i
                                        #   in Loop: Header=BB3_44 Depth=1
	move	$fp, $zero
	alsl.d	$a0, $s3, $s5, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	move	$s6, $s4
	b	.LBB3_50
	.p2align	4, , 16
.LBB3_48:                               # %._crit_edge.i39.i
                                        #   in Loop: Header=BB3_50 Depth=2
	ld.d	$a0, $s4, 0
	stx.b	$s2, $s1, $a0
.LBB3_49:                               # %stradjust.exit49.i
                                        #   in Loop: Header=BB3_50 Depth=2
	ld.d	$a0, $s4, 0
	add.d	$a0, $s1, $a0
	addi.d	$a2, $s2, 1
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, -8
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_43
.LBB3_50:                               #   Parent Loop BB3_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_54 Depth 3
                                        #       Child Loop BB3_57 Depth 3
                                        #       Child Loop BB3_60 Depth 3
                                        #       Child Loop BB3_63 Depth 3
                                        #       Child Loop BB3_70 Depth 3
                                        #       Child Loop BB3_73 Depth 3
                                        #       Child Loop BB3_76 Depth 3
                                        #       Child Loop BB3_79 Depth 3
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s6
	pcaddu18i	$ra, %call36(strsift)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	addi.d	$a2, $a0, 1
	addi.d	$a0, $sp, 120
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, -8
	ld.d	$a2, $s5, 0
	ldx.bu	$s2, $s1, $a0
	ldx.bu	$a0, $s1, $a1
	ld.d	$a3, $s5, 8
	add.d	$a4, $s1, $a2
	ldx.bu	$s0, $s1, $a2
	add.d	$a0, $a1, $a0
	sub.d	$a0, $a0, $a3
	addi.d	$a2, $a0, 1
	add.d	$a0, $a4, $s2
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a3
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bltu	$s3, $a0, .LBB3_64
# %bb.51:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB3_50 Depth=2
	sub.w	$a1, $s2, $s0
	srai.d	$a0, $a1, 31
	xor	$a2, $a1, $a0
	sub.w	$a0, $a2, $a0
	bltz	$a1, .LBB3_58
# %bb.52:                               # %.lr.ph.split.i.i.preheader
                                        #   in Loop: Header=BB3_50 Depth=2
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	bltu	$s4, $a2, .LBB3_56
# %bb.53:                               # %vector.ph129
                                        #   in Loop: Header=BB3_50 Depth=2
	vreplgr2vr.d	$vr0, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_54:                               # %vector.body134
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB3_54
# %bb.55:                               # %middle.block140
                                        #   in Loop: Header=BB3_50 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beq	$s4, $a2, .LBB3_64
.LBB3_56:                               # %.lr.ph.split.i.i.preheader148
                                        #   in Loop: Header=BB3_50 Depth=2
	alsl.d	$a2, $a1, $s5, 3
	.p2align	4, , 16
.LBB3_57:                               # %.lr.ph.split.i.i
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a1, .LBB3_57
	b	.LBB3_64
.LBB3_58:                               # %.lr.ph.split.us.i.i.preheader
                                        #   in Loop: Header=BB3_50 Depth=2
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	bltu	$s4, $a2, .LBB3_62
# %bb.59:                               # %vector.ph113
                                        #   in Loop: Header=BB3_50 Depth=2
	vreplgr2vr.d	$vr0, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_60:                               # %vector.body118
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vsub.d	$vr1, $vr1, $vr0
	vsub.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB3_60
# %bb.61:                               # %middle.block124
                                        #   in Loop: Header=BB3_50 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beq	$s4, $a2, .LBB3_64
.LBB3_62:                               # %.lr.ph.split.us.i.i.preheader147
                                        #   in Loop: Header=BB3_50 Depth=2
	alsl.d	$a2, $a1, $s5, 3
	.p2align	4, , 16
.LBB3_63:                               # %.lr.ph.split.us.i.i
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	sub.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a1, .LBB3_63
	.p2align	4, , 16
.LBB3_64:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB3_50 Depth=2
	ld.d	$a0, $s5, 0
	move	$s0, $s4
	alsl.d	$s4, $s6, $s5, 3
	stx.b	$s2, $s1, $a0
	ld.d	$a0, $s4, 0
	add.d	$a1, $s1, $a0
	addi.d	$a2, $s2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ld.bu	$s2, $sp, 120
	add.d	$a0, $s1, $a1
	bne	$s6, $s0, .LBB3_66
# %bb.65:                               #   in Loop: Header=BB3_50 Depth=2
	st.b	$s2, $a0, 0
	b	.LBB3_49
	.p2align	4, , 16
.LBB3_66:                               #   in Loop: Header=BB3_50 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, -8
	ldx.bu	$a3, $s1, $a2
	ld.d	$a4, $s4, 8
	ldx.bu	$s0, $s1, $a1
	add.d	$a1, $a2, $a3
	sub.d	$a1, $a1, $a4
	addi.d	$a2, $a1, 1
	add.d	$a0, $a0, $s2
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, 1
	bgeu	$a0, $s3, .LBB3_48
# %bb.67:                               # %.lr.ph.i40.i
                                        #   in Loop: Header=BB3_50 Depth=2
	move	$a2, $fp
	bstrins.d	$a2, $zero, 1, 0
	sub.d	$a1, $s2, $s0
	srai.d	$a3, $a1, 63
	xor	$a4, $a1, $a3
	addi.w	$a5, $a1, 0
	sub.w	$a1, $a4, $a3
	ori	$a3, $zero, 4
	bltz	$a5, .LBB3_74
# %bb.68:                               # %.lr.ph.split.i41.i.preheader
                                        #   in Loop: Header=BB3_50 Depth=2
	bltu	$fp, $a3, .LBB3_72
# %bb.69:                               # %vector.ph97
                                        #   in Loop: Header=BB3_50 Depth=2
	move	$a3, $fp
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a0, $a0, $a3
	vreplgr2vr.d	$vr0, $a1
	move	$a4, $s8
	.p2align	4, , 16
.LBB3_70:                               # %vector.body102
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, 32
	bnez	$a2, .LBB3_70
# %bb.71:                               # %middle.block108
                                        #   in Loop: Header=BB3_50 Depth=2
	beq	$fp, $a3, .LBB3_48
.LBB3_72:                               # %.lr.ph.split.i41.i.preheader145
                                        #   in Loop: Header=BB3_50 Depth=2
	alsl.d	$a2, $a0, $s5, 3
	.p2align	4, , 16
.LBB3_73:                               # %.lr.ph.split.i41.i
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a1
	st.d	$a3, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a0, .LBB3_73
	b	.LBB3_48
.LBB3_74:                               # %.lr.ph.split.us.i45.i.preheader
                                        #   in Loop: Header=BB3_50 Depth=2
	bltu	$fp, $a3, .LBB3_78
# %bb.75:                               # %vector.ph84
                                        #   in Loop: Header=BB3_50 Depth=2
	move	$a3, $fp
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a0, $a0, $a3
	vreplgr2vr.d	$vr0, $a1
	move	$a4, $s8
	.p2align	4, , 16
.LBB3_76:                               # %vector.body87
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vsub.d	$vr1, $vr1, $vr0
	vsub.d	$vr2, $vr2, $vr0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, 32
	bnez	$a2, .LBB3_76
# %bb.77:                               # %middle.block92
                                        #   in Loop: Header=BB3_50 Depth=2
	beq	$fp, $a3, .LBB3_48
.LBB3_78:                               # %.lr.ph.split.us.i45.i.preheader144
                                        #   in Loop: Header=BB3_50 Depth=2
	alsl.d	$a2, $a0, $s5, 3
	.p2align	4, , 16
.LBB3_79:                               # %.lr.ph.split.us.i45.i
                                        #   Parent Loop BB3_44 Depth=1
                                        #     Parent Loop BB3_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	sub.d	$a3, $a3, $a1
	st.d	$a3, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a0, .LBB3_79
	b	.LBB3_48
.LBB3_80:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
.LBB3_81:                               # %._crit_edge
	pcaddu18i	$ra, %call36(StopStopwatch)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end3:
	.size	DoStringSortIteration, .Lfunc_end3-DoStringSortIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoBitops
.LCPI4_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI4_1:
	.dword	0x413312d000000000              # double 1.25E+6
	.text
	.globl	DoBitops
	.p2align	5
	.type	DoBitops,@function
DoBitops:                               # @DoBitops
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_bitopstruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_bitopstruct)
	ld.d	$a0, $s2, 32
	ld.w	$s0, $s2, 0
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$s0, .LBB4_10
# %bb.1:
	beqz	$a1, .LBB4_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_3:
	ld.d	$a0, $s2, 24
	slli.d	$a0, $a0, 4
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s0, $a0
	beqz	$a1, .LBB4_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %.loopexit
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI4_1)
	movgr2fr.d	$fs0, $zero
	lu52i.d	$s3, $zero, 1107
	lu12i.w	$s4, 275200
	.p2align	4, , 16
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 24
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoBitfieldIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s3
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs1
	bstrins.d	$a1, $s4, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s1, $a0, $s1
	bcnez	$fcc0, .LBB4_6
# %bb.7:
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s2, 16
	bnez	$a0, .LBB4_9
# %bb.8:
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
.LBB4_9:
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB4_10:
	beqz	$a1, .LBB4_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %.preheader
	ori	$a0, $zero, 30
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s3, $a1, %got_pc_lo12(global_min_ticks)
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$s1, $a1, %pc_lo12(.L.str.53)
	.p2align	4, , 16
.LBB4_13:                               # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s2, 24
	slli.d	$a0, $a0, 4
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s0, $a0
	beqz	$a1, .LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_15:                               #   in Loop: Header=BB4_13 Depth=1
	ld.d	$a2, $s2, 24
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoBitfieldIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	addi.w	$a0, $a0, 0
	bltu	$a1, $a0, .LBB4_5
# %bb.16:                               #   in Loop: Header=BB4_13 Depth=1
	addi.d	$a1, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	addi.d	$a0, $a0, 100
	b	.LBB4_13
.Lfunc_end4:
	.size	DoBitops, .Lfunc_end4-DoBitops
                                        # -- End function
	.p2align	5                               # -- Begin function DoBitfieldIteration
	.type	DoBitfieldIteration,@function
DoBitfieldIteration:                    # @DoBitfieldIteration
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
	move	$s2, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.d	$zero, $a3, 0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(global_bitopstruct)
	ld.d	$a0, $a0, %got_pc_lo12(global_bitopstruct)
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1365
	bstrins.d	$a2, $a2, 62, 32
	move	$a3, $s1
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a3, 0
	ld.d	$a4, $a0, 32
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	bltu	$a1, $a4, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB5_19
# %bb.4:                                # %.lr.ph53.preheader
	addi.d	$s4, $s0, 8
	lu12i.w	$a0, 63
	ori	$s3, $a0, 4092
	move	$s5, $fp
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph53
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	st.d	$a1, $s4, -8
	sub.w	$a0, $s3, $a0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $s2, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 16
	bnez	$s5, .LBB5_5
# %bb.6:                                # %.lr.ph57.preheader
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	lu12i.w	$a2, -349526
	ori	$a2, $a2, 2731
	lu32i.d	$a2, -349526
	lu52i.d	$a2, $a2, -1366
	ori	$a3, $zero, 2
	ori	$a4, $zero, 1
	addi.w	$a5, $zero, -8
	lu52i.d	$a5, $a5, 511
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %ToggleBitRun.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $fp, .LBB5_20
.LBB5_8:                                # %.lr.ph57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_18 Depth 2
                                        #     Child Loop BB5_12 Depth 2
                                        #     Child Loop BB5_15 Depth 2
	mulh.du	$t0, $a1, $a2
	srli.d	$t1, $t0, 1
	bstrins.d	$t0, $zero, 0, 0
	alsl.d	$a6, $a1, $s0, 3
	alsl.d	$a7, $a1, $a6, 3
	ld.d	$a6, $a7, 8
	add.d	$t0, $t0, $t1
	sub.d	$t0, $a1, $t0
	beq	$t0, $a3, .LBB5_13
# %bb.9:                                # %.lr.ph57
                                        #   in Loop: Header=BB5_8 Depth=1
	bne	$t0, $a4, .LBB5_16
# %bb.10:                               #   in Loop: Header=BB5_8 Depth=1
	beqz	$a6, .LBB5_7
# %bb.11:                               # %.lr.ph.i43
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a7, $a7, 0
	.p2align	4, , 16
.LBB5_12:                               # %.lr.ph.split.us.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t0, $a7, 3
	and	$t0, $t0, $a5
	ldx.d	$t1, $s1, $t0
	addi.d	$a6, $a6, -1
	sll.d	$t2, $a4, $a7
	andn	$t1, $t1, $t2
	stx.d	$t1, $s1, $t0
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB5_12
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_13:                               #   in Loop: Header=BB5_8 Depth=1
	beqz	$a6, .LBB5_7
# %bb.14:                               # %.lr.ph.i45.preheader
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a7, $a7, 0
	.p2align	4, , 16
.LBB5_15:                               # %.lr.ph.i45
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t0, $a7, 3
	and	$t0, $t0, $a5
	ldx.d	$t1, $s1, $t0
	addi.d	$a6, $a6, -1
	sll.d	$t2, $a4, $a7
	xor	$t1, $t1, $t2
	stx.d	$t1, $s1, $t0
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB5_15
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_16:                               #   in Loop: Header=BB5_8 Depth=1
	beqz	$a6, .LBB5_7
# %bb.17:                               # %.lr.ph.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a7, $a7, 0
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph.split.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t0, $a7, 3
	and	$t0, $t0, $a5
	ldx.d	$t1, $s1, $t0
	addi.d	$a6, $a6, -1
	sll.d	$t2, $a4, $a7
	or	$t1, $t2, $t1
	stx.d	$t1, $s1, $t0
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB5_18
	b	.LBB5_7
.LBB5_19:                               # %._crit_edge54
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %._crit_edge58
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end5:
	.size	DoBitfieldIteration, .Lfunc_end5-DoBitfieldIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoEmFloat
.LCPI6_0:
	.dword	0x4052c00000000000              # double 75
.LCPI6_1:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	DoEmFloat
	.p2align	5
	.type	DoEmFloat,@function
DoEmFloat:                              # @DoEmFloat
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_emfloatstruct)
	ld.d	$s3, $a0, %got_pc_lo12(global_emfloatstruct)
	ld.d	$a0, $s3, 16
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$a1, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB6_2:
	ld.d	$a0, $s3, 16
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s0, $a0
	beqz	$a1, .LBB6_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB6_4:
	ld.d	$a0, $s3, 16
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s1, $a0
	beqz	$a1, .LBB6_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB6_6:
	ld.d	$a3, $s3, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(SetupCPUEmFloatArrays)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	beqz	$a0, .LBB6_9
.LBB6_7:                                # %.loopexit
	ld.d	$a0, $s3, 24
	bnez	$a0, .LBB6_29
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB6_29
.LBB6_9:
	ld.d	$a3, $s3, 16
	st.d	$zero, $s3, 24
	ori	$a4, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s4, $a1, %got_pc_lo12(global_min_ticks)
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.10:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.11:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 4
	ori	$s2, $zero, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.12:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 8
	ori	$s2, $zero, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.13:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 16
	ori	$s2, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.14:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 32
	ori	$s2, $zero, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.15:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 64
	ori	$s2, $zero, 64
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.16:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 128
	ori	$s2, $zero, 128
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.17:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 256
	ori	$s2, $zero, 256
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.18:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 512
	ori	$s2, $zero, 512
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.19:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 1024
	ori	$s2, $zero, 1024
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.20:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 2048
	ori	$s2, $zero, 2048
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.21:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.22:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 2
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.23:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.24:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.25:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.26:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.27:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 64
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bgeu	$a1, $a0, .LBB6_7
.LBB6_28:                               # %.thread
	st.d	$s2, $s3, 24
.LBB6_29:                               # %.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI6_0)
	move	$s2, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB6_30:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s3, 16
	ld.d	$a4, $s3, 24
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	add.d	$s2, $a0, $s2
	bcnez	$fcc0, .LBB6_30
# %bb.31:
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI6_1)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fs0, $fs0, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s3, 32
	bnez	$a0, .LBB6_33
# %bb.32:
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 0
.LBB6_33:
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end6:
	.size	DoEmFloat, .Lfunc_end6-DoEmFloat
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoFourier
.LCPI7_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI7_1:
	.dword	0x40c3880000000000              # double 1.0E+4
	.text
	.globl	DoFourier
	.p2align	5
	.type	DoFourier,@function
DoFourier:                              # @DoFourier
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_fourierstruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_fourierstruct)
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB7_10
# %bb.1:
	ld.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$fp, $a0
	beqz	$a1, .LBB7_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_3:
	ld.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	beqz	$a1, .LBB7_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %.loopexit
	move	$s1, $zero
	ld.d	$a2, $s2, 16
	movgr2fr.d	$fs0, $zero
	lu52i.d	$s3, $zero, 1107
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI7_1)
	lu12i.w	$s4, 275200
	.p2align	4, , 16
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoFPUTransIteration)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	srli.d	$a1, $a2, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a2
	bstrins.d	$a1, $s4, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -784
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s1, $a0, $s1
	bcnez	$fcc0, .LBB7_6
# %bb.7:
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s2, 24
	bnez	$a0, .LBB7_9
# %bb.8:
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
.LBB7_9:
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB7_10:                               # %.preheader.preheader
	ori	$a0, $zero, 100
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s3, $a1, %got_pc_lo12(global_min_ticks)
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$s1, $a1, %pc_lo12(.L.str.56)
	.p2align	4, , 16
.LBB7_11:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$fp, $a0
	beqz	$a1, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	beqz	$a1, .LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_15:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a2, $s2, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoFPUTransIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	bltu	$a1, $a0, .LBB7_5
# %bb.16:                               #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	addi.d	$a0, $a0, 50
	b	.LBB7_11
.Lfunc_end7:
	.size	DoFourier, .Lfunc_end7-DoFourier
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoFPUTransIteration
.LCPI8_0:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI8_1:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI8_2:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.p2align	5
	.type	DoFPUTransIteration,@function
DoFPUTransIteration:                    # @DoFPUTransIteration
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	movgr2fr.d	$fs0, $zero
	addi.w	$s3, $zero, -198
	vldi	$vr0, -928
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	fld.d	$fs3, $a1, %pc_lo12(.LCPI8_0)
	move	$s2, $a0
	.p2align	4, , 16
.LBB8_1:                                # %thefunction.exit27.us.i
                                        # =>This Inner Loop Header: Depth=1
	fadd.d	$fs0, $fs0, $fs3
	vldi	$vr0, -912
	fadd.d	$fa0, $fs0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	bgez	$a0, .LBB8_1
# %bb.2:                                # %TrapezoidIntegrate.exit
	vldi	$vr0, -1006
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs3
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 2
	fst.d	$fa0, $s1, 0
	bltu	$fp, $a0, .LBB8_9
# %bb.3:                                # %.lr.ph.preheader
	ori	$s3, $zero, 1
	lu52i.d	$s4, $zero, 1107
	pcalau12i	$a0, %pc_hi20(.LCPI8_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI8_1)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	lu12i.w	$s5, 275200
	pcalau12i	$a0, %pc_hi20(.LCPI8_2)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI8_2)
	movgr2fr.d	$fs6, $zero
	addi.w	$s6, $zero, -198
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #     Child Loop BB8_7 Depth 2
	srli.d	$a0, $s3, 32
	or	$a0, $a0, $s4
	movgr2fr.d	$fa0, $a0
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	move	$a0, $s3
	bstrins.d	$a0, $s5, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fs7, $fa0, $fs5
	fmul.d	$fs0, $fs7, $fs6
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fs4, $fa0, $fa1
	move	$s7, $s6
	fmov.d	$fs1, $fs6
	.p2align	4, , 16
.LBB8_5:                                # %thefunction.exit27.us37.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fs1, $fs1, $fs3
	vldi	$vr0, -912
	fadd.d	$fa0, $fs1, $fa0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmul.d	$fa0, $fs7, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	bstrpick.d	$a0, $s7, 31, 0
	addi.d	$s7, $a0, 1
	slli.d	$a0, $s7, 31
	fadd.d	$fs4, $fs4, $fa0
	bgez	$a0, .LBB8_5
# %bb.6:                                # %TrapezoidIntegrate.exit12
                                        #   in Loop: Header=BB8_4 Depth=1
	fadd.d	$fs1, $fs7, $fs7
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -990
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fa0, $fs3
	slli.d	$s7, $s3, 3
	fstx.d	$fa0, $s1, $s7
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fs4, $fa0, $fa1
	move	$s8, $s6
	fmov.d	$fs0, $fs6
	.p2align	4, , 16
.LBB8_7:                                # %thefunction.exit27.us45.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fs0, $fs0, $fs3
	vldi	$vr0, -912
	fadd.d	$fa0, $fs0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmul.d	$fa0, $fs7, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	bstrpick.d	$a0, $s8, 31, 0
	addi.d	$s8, $a0, 1
	slli.d	$a0, $s8, 31
	fadd.d	$fs4, $fs4, $fa0
	bgez	$a0, .LBB8_7
# %bb.8:                                # %TrapezoidIntegrate.exit13
                                        #   in Loop: Header=BB8_4 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -990
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fa0, $fs3
	addi.d	$s3, $s3, 1
	fstx.d	$fa0, $s0, $s7
	bne	$s3, $fp, .LBB8_4
.LBB8_9:                                # %._crit_edge
	move	$a0, $s2
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end8:
	.size	DoFPUTransIteration, .Lfunc_end8-DoFPUTransIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoAssign
.LCPI9_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	DoAssign
	.p2align	5
	.type	DoAssign,@function
DoAssign:                               # @DoAssign
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_assignstruct)
	ld.d	$s1, $a0, %got_pc_lo12(global_assignstruct)
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB9_6
# %bb.1:
	ld.d	$a0, $s1, 16
	lu12i.w	$a1, 19
	ori	$a1, $a1, 3784
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$a1, .LBB9_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %.loopexit
	ld.d	$a1, $s1, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI9_0)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -992
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s1, 24
	bnez	$a0, .LBB9_5
# %bb.4:
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 0
.LBB9_5:
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB9_6:                                # %.preheader.preheader
	ori	$a0, $zero, 1
	lu12i.w	$a1, 19
	ori	$s2, $a1, 3784
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s3, $a1, %got_pc_lo12(global_min_ticks)
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$s0, $a1, %pc_lo12(.L.str.57)
	.p2align	4, , 16
.LBB9_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s1, 16
	mul.d	$a0, $a0, $s2
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$fp, $a0
	beqz	$a1, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB9_9:                                #   in Loop: Header=BB9_7 Depth=1
	ld.d	$a1, $s1, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	bltu	$a1, $a0, .LBB9_3
# %bb.10:                               #   in Loop: Header=BB9_7 Depth=1
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, 1
	b	.LBB9_7
.Lfunc_end9:
	.size	DoAssign, .Lfunc_end9-DoAssign
                                        # -- End function
	.p2align	5                               # -- Begin function DoAssignIteration
	.type	DoAssignIteration,@function
DoAssignIteration:                      # @DoAssignIteration
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	lu12i.w	$a2, 4
	ori	$a2, $a2, 2672
	sub.d	$sp, $sp, $a2
	move	$s6, $a1
	move	$s0, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	lu12i.w	$a0, 1220
	ori	$s1, $a0, 2880
	ori	$s2, $zero, 808
	ori	$s3, $zero, 101
	move	$s4, $s0
	.p2align	4, , 16
.LBB10_1:                               # %.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_2 Depth 2
	move	$s5, $zero
	.p2align	4, , 16
.LBB10_2:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	stx.d	$a0, $s4, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s2, .LBB10_2
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s4, $s4, 808
	bne	$fp, $s3, .LBB10_1
# %bb.4:                                # %LoadAssign.exit.i
	ori	$a0, $zero, 2
	lu12i.w	$fp, 19
	bltu	$s6, $a0, .LBB10_15
# %bb.5:                                # %.preheader.i.preheader
	move	$a0, $zero
	ori	$a1, $fp, 3784
	add.d	$a2, $s0, $a1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 808
	ori	$a5, $zero, 32
	ori	$a6, $zero, 101
	move	$a7, $s0
	.p2align	4, , 16
.LBB10_6:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_11 Depth 3
	move	$t0, $zero
	mul.d	$t1, $a0, $a1
	add.d	$t1, $t1, $a1
	add.d	$a7, $a7, $a1
	move	$t2, $s0
	move	$t3, $a2
	.p2align	4, , 16
.LBB10_7:                               # %.preheader.i9.i
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_11 Depth 3
	bgeu	$t1, $a5, .LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=2
	move	$t4, $zero
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %vector.body
                                        #   in Loop: Header=BB10_7 Depth=2
	mul.d	$t5, $t0, $a4
	add.d	$t4, $s0, $t5
	vld	$vr0, $t4, 0
	vld	$vr1, $t4, 16
	add.d	$t5, $a7, $t5
	vst	$vr0, $t5, 0
	vst	$vr1, $t5, 16
	vld	$vr0, $t4, 32
	vld	$vr1, $t4, 48
	vst	$vr0, $t5, 32
	vst	$vr1, $t5, 48
	vld	$vr0, $t4, 64
	vld	$vr1, $t4, 80
	vst	$vr0, $t5, 64
	vst	$vr1, $t5, 80
	vld	$vr0, $t4, 96
	vld	$vr1, $t4, 112
	vst	$vr0, $t5, 96
	vst	$vr1, $t5, 112
	vld	$vr0, $t4, 128
	vld	$vr1, $t4, 144
	vst	$vr0, $t5, 128
	vst	$vr1, $t5, 144
	vld	$vr0, $t4, 160
	vld	$vr1, $t4, 176
	vst	$vr0, $t5, 160
	vst	$vr1, $t5, 176
	vld	$vr0, $t4, 192
	vld	$vr1, $t4, 208
	vst	$vr0, $t5, 192
	vst	$vr1, $t5, 208
	vld	$vr0, $t4, 224
	vld	$vr1, $t4, 240
	vst	$vr0, $t5, 224
	vst	$vr1, $t5, 240
	vld	$vr0, $t4, 256
	vld	$vr1, $t4, 272
	vst	$vr0, $t5, 256
	vst	$vr1, $t5, 272
	vld	$vr0, $t4, 288
	vld	$vr1, $t4, 304
	vst	$vr0, $t5, 288
	vst	$vr1, $t5, 304
	vld	$vr0, $t4, 320
	vld	$vr1, $t4, 336
	vst	$vr0, $t5, 320
	vst	$vr1, $t5, 336
	vld	$vr0, $t4, 352
	vld	$vr1, $t4, 368
	vst	$vr0, $t5, 352
	vst	$vr1, $t5, 368
	vld	$vr0, $t4, 384
	vld	$vr1, $t4, 400
	vst	$vr0, $t5, 384
	vst	$vr1, $t5, 400
	vld	$vr0, $t4, 416
	vld	$vr1, $t4, 432
	vst	$vr0, $t5, 416
	vst	$vr1, $t5, 432
	vld	$vr0, $t4, 448
	vld	$vr1, $t4, 464
	vst	$vr0, $t5, 448
	vst	$vr1, $t5, 464
	vld	$vr0, $t4, 480
	vld	$vr1, $t4, 496
	vst	$vr0, $t5, 480
	vst	$vr1, $t5, 496
	vld	$vr0, $t4, 512
	vld	$vr1, $t4, 528
	vst	$vr0, $t5, 512
	vst	$vr1, $t5, 528
	vld	$vr0, $t4, 544
	vld	$vr1, $t4, 560
	vst	$vr0, $t5, 544
	vst	$vr1, $t5, 560
	vld	$vr0, $t4, 576
	vld	$vr1, $t4, 592
	vst	$vr0, $t5, 576
	vst	$vr1, $t5, 592
	vld	$vr0, $t4, 608
	vld	$vr1, $t4, 624
	vst	$vr0, $t5, 608
	vst	$vr1, $t5, 624
	vld	$vr0, $t4, 640
	vld	$vr1, $t4, 656
	vst	$vr0, $t5, 640
	vst	$vr1, $t5, 656
	vld	$vr0, $t4, 672
	vld	$vr1, $t4, 688
	vst	$vr0, $t5, 672
	vst	$vr1, $t5, 688
	vld	$vr0, $t4, 704
	vld	$vr1, $t4, 720
	vst	$vr0, $t5, 704
	vst	$vr1, $t5, 720
	vld	$vr0, $t4, 736
	vld	$vr1, $t4, 752
	vst	$vr0, $t5, 736
	vst	$vr1, $t5, 752
	vld	$vr0, $t4, 768
	vld	$vr1, $t4, 784
	vst	$vr0, $t5, 768
	vst	$vr1, $t5, 784
	ori	$t4, $zero, 100
.LBB10_10:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_7 Depth=2
	slli.d	$t4, $t4, 3
	.p2align	4, , 16
.LBB10_11:                              # %scalar.ph
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t5, $t2, $t4
	stx.d	$t5, $t3, $t4
	addi.d	$t4, $t4, 8
	bne	$t4, $a4, .LBB10_11
# %bb.12:                               #   in Loop: Header=BB10_7 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$t3, $t3, 808
	addi.d	$t2, $t2, 808
	bne	$t0, $a6, .LBB10_7
# %bb.13:                               # %CopyToAssign.exit.i
                                        #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $a1
	bne	$a3, $s6, .LBB10_6
# %bb.14:                               # %LoadAssignArrayWithRand.exit.thread
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	b	.LBB10_16
.LBB10_15:                              # %LoadAssignArrayWithRand.exit
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB10_168
.LBB10_16:                              # %.lr.ph.preheader
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $zero
	addi.d	$a2, $s0, 400
	addi.d	$a5, $s0, 1616
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	ori	$t4, $fp, 2976
	ori	$fp, $zero, 101
	lu12i.w	$s4, 4
	ori	$a0, $s4, 4018
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s5, $sp, 152
	ori	$s6, $zero, 202
	ori	$s2, $zero, 1
	ori	$s3, $zero, 2
	lu12i.w	$a0, 5
	ori	$a0, $a0, 288
	add.d	$s7, $sp, $a0
	lu12i.w	$a0, 5
	ori	$a0, $a0, 80
	add.d	$s8, $sp, $a0
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	ori	$s1, $zero, 192
	vrepli.w	$vr2, 1
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	b	.LBB10_18
	.p2align	4, , 16
.LBB10_17:                              # %Assignment.exit
                                        #   in Loop: Header=BB10_18 Depth=1
	lu12i.w	$a0, 19
	ori	$a0, $a0, 3784
	add.d	$s0, $s0, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_167
.LBB10_18:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_19 Depth 2
                                        #     Child Loop BB10_22 Depth 2
                                        #       Child Loop BB10_23 Depth 3
                                        #       Child Loop BB10_26 Depth 3
                                        #     Child Loop BB10_119 Depth 2
                                        #       Child Loop BB10_121 Depth 3
                                        #         Child Loop BB10_123 Depth 4
                                        #         Child Loop BB10_129 Depth 4
                                        #         Child Loop BB10_137 Depth 4
                                        #           Child Loop BB10_139 Depth 5
                                        #           Child Loop BB10_145 Depth 5
                                        #       Child Loop BB10_152 Depth 3
                                        #         Child Loop BB10_154 Depth 4
                                        #         Child Loop BB10_158 Depth 4
                                        #         Child Loop BB10_163 Depth 4
                                        #       Child Loop BB10_31 Depth 3
                                        #         Child Loop BB10_32 Depth 4
                                        #       Child Loop BB10_36 Depth 3
                                        #         Child Loop BB10_39 Depth 4
                                        #         Child Loop BB10_51 Depth 4
                                        #           Child Loop BB10_54 Depth 5
                                        #       Child Loop BB10_100 Depth 3
                                        #         Child Loop BB10_103 Depth 4
                                        #       Child Loop BB10_107 Depth 3
                                        #         Child Loop BB10_110 Depth 4
                                        #       Child Loop BB10_114 Depth 3
                                        #         Child Loop BB10_117 Depth 4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a2
	ori	$a1, $zero, 101
	.p2align	4, , 16
.LBB10_19:                              # %.preheader52.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 368
	vld	$vr2, $a0, 336
	vld	$vr3, $a0, 304
	vld	$vr4, $a0, 272
	vld	$vr5, $a0, 240
	vld	$vr6, $a0, 208
	vld	$vr7, $a0, 176
	vld	$vr8, $a0, 144
	vld	$vr9, $a0, 112
	vld	$vr10, $a0, 80
	vld	$vr11, $a0, 48
	vld	$vr12, $a0, 16
	vld	$vr13, $a0, -16
	vld	$vr14, $a0, -48
	vld	$vr15, $a0, -80
	vld	$vr16, $a0, -112
	vld	$vr17, $a0, -144
	vld	$vr18, $a0, -176
	vld	$vr19, $a0, -208
	vld	$vr20, $a0, -240
	vld	$vr21, $a0, -368
	vld	$vr1, $a0, -400
	vld	$vr22, $a0, -336
	vld	$vr23, $a0, -304
	vld	$vr24, $a0, -272
	vmin.d	$vr21, $vr21, $vr1
	vmin.d	$vr21, $vr22, $vr21
	vmin.d	$vr21, $vr23, $vr21
	vmin.d	$vr21, $vr24, $vr21
	vmin.d	$vr20, $vr20, $vr21
	vmin.d	$vr19, $vr19, $vr20
	vmin.d	$vr18, $vr18, $vr19
	vmin.d	$vr17, $vr17, $vr18
	vmin.d	$vr16, $vr16, $vr17
	vmin.d	$vr15, $vr15, $vr16
	vmin.d	$vr14, $vr14, $vr15
	vmin.d	$vr13, $vr13, $vr14
	vmin.d	$vr12, $vr12, $vr13
	vmin.d	$vr11, $vr11, $vr12
	vmin.d	$vr10, $vr10, $vr11
	vmin.d	$vr9, $vr9, $vr10
	vmin.d	$vr8, $vr8, $vr9
	vmin.d	$vr7, $vr7, $vr8
	vmin.d	$vr6, $vr6, $vr7
	vmin.d	$vr5, $vr5, $vr6
	vmin.d	$vr4, $vr4, $vr5
	vmin.d	$vr3, $vr3, $vr4
	vmin.d	$vr2, $vr2, $vr3
	vmin.d	$vr0, $vr0, $vr2
	vld	$vr2, $a0, 384
	vld	$vr3, $a0, 352
	vld	$vr4, $a0, 320
	vld	$vr5, $a0, 288
	vld	$vr6, $a0, 256
	vld	$vr7, $a0, 224
	vld	$vr8, $a0, 192
	vld	$vr9, $a0, 160
	vld	$vr10, $a0, 128
	vld	$vr11, $a0, 96
	vld	$vr12, $a0, 64
	vld	$vr13, $a0, 32
	vld	$vr14, $a0, 0
	vld	$vr15, $a0, -32
	vld	$vr16, $a0, -64
	vld	$vr17, $a0, -96
	vld	$vr18, $a0, -128
	vld	$vr19, $a0, -160
	vld	$vr20, $a0, -192
	vld	$vr21, $a0, -224
	vld	$vr22, $a0, -352
	vld	$vr23, $a0, -384
	vld	$vr24, $a0, -320
	vld	$vr25, $a0, -288
	vld	$vr26, $a0, -256
	vmin.d	$vr22, $vr22, $vr23
	vmin.d	$vr22, $vr24, $vr22
	vmin.d	$vr22, $vr25, $vr22
	vmin.d	$vr22, $vr26, $vr22
	vmin.d	$vr21, $vr21, $vr22
	vmin.d	$vr20, $vr20, $vr21
	vmin.d	$vr19, $vr19, $vr20
	vmin.d	$vr18, $vr18, $vr19
	vmin.d	$vr17, $vr17, $vr18
	vmin.d	$vr16, $vr16, $vr17
	vmin.d	$vr15, $vr15, $vr16
	vmin.d	$vr14, $vr14, $vr15
	vmin.d	$vr13, $vr13, $vr14
	vmin.d	$vr12, $vr12, $vr13
	vmin.d	$vr11, $vr11, $vr12
	vmin.d	$vr10, $vr10, $vr11
	vmin.d	$vr9, $vr9, $vr10
	vmin.d	$vr8, $vr8, $vr9
	vmin.d	$vr7, $vr7, $vr8
	vmin.d	$vr6, $vr6, $vr7
	vmin.d	$vr5, $vr5, $vr6
	vmin.d	$vr4, $vr4, $vr5
	vmin.d	$vr3, $vr3, $vr4
	vmin.d	$vr2, $vr2, $vr3
	vmin.d	$vr0, $vr0, $vr2
	ld.d	$a2, $a0, 400
	vbsrl.v	$vr2, $vr0, 8
	vmin.d	$vr0, $vr2, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	slt	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	vreplgr2vr.d	$vr0, $a2
	vsub.d	$vr1, $vr1, $vr0
	vsub.d	$vr2, $vr23, $vr0
	vld	$vr3, $a0, -368
	vld	$vr4, $a0, -352
	vst	$vr1, $a0, -400
	vst	$vr2, $a0, -384
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -336
	vld	$vr4, $a0, -320
	vst	$vr1, $a0, -368
	vst	$vr2, $a0, -352
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -304
	vld	$vr4, $a0, -288
	vst	$vr1, $a0, -336
	vst	$vr2, $a0, -320
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -272
	vld	$vr4, $a0, -256
	vst	$vr1, $a0, -304
	vst	$vr2, $a0, -288
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -240
	vld	$vr4, $a0, -224
	vst	$vr1, $a0, -272
	vst	$vr2, $a0, -256
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -208
	vld	$vr4, $a0, -192
	vst	$vr1, $a0, -240
	vst	$vr2, $a0, -224
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -176
	vld	$vr4, $a0, -160
	vst	$vr1, $a0, -208
	vst	$vr2, $a0, -192
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -144
	vld	$vr4, $a0, -128
	vst	$vr1, $a0, -176
	vst	$vr2, $a0, -160
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -112
	vld	$vr4, $a0, -96
	vst	$vr1, $a0, -144
	vst	$vr2, $a0, -128
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -80
	vld	$vr4, $a0, -64
	vst	$vr1, $a0, -112
	vst	$vr2, $a0, -96
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -48
	vld	$vr4, $a0, -32
	vst	$vr1, $a0, -80
	vst	$vr2, $a0, -64
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, -16
	vld	$vr4, $a0, 0
	vst	$vr1, $a0, -48
	vst	$vr2, $a0, -32
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 16
	vld	$vr4, $a0, 32
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 48
	vld	$vr4, $a0, 64
	vst	$vr1, $a0, 16
	vst	$vr2, $a0, 32
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 80
	vld	$vr4, $a0, 96
	vst	$vr1, $a0, 48
	vst	$vr2, $a0, 64
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 112
	vld	$vr4, $a0, 128
	vst	$vr1, $a0, 80
	vst	$vr2, $a0, 96
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 144
	vld	$vr4, $a0, 160
	vst	$vr1, $a0, 112
	vst	$vr2, $a0, 128
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 176
	vld	$vr4, $a0, 192
	vst	$vr1, $a0, 144
	vst	$vr2, $a0, 160
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 208
	vld	$vr4, $a0, 224
	vst	$vr1, $a0, 176
	vst	$vr2, $a0, 192
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 240
	vld	$vr4, $a0, 256
	vst	$vr1, $a0, 208
	vst	$vr2, $a0, 224
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 272
	vld	$vr4, $a0, 288
	vst	$vr1, $a0, 240
	vst	$vr2, $a0, 256
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 304
	vld	$vr4, $a0, 320
	vst	$vr1, $a0, 272
	vst	$vr2, $a0, 288
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 336
	vld	$vr4, $a0, 352
	vst	$vr1, $a0, 304
	vst	$vr2, $a0, 320
	vsub.d	$vr1, $vr3, $vr0
	vsub.d	$vr2, $vr4, $vr0
	vld	$vr3, $a0, 368
	vst	$vr1, $a0, 336
	vld	$vr1, $a0, 384
	vst	$vr2, $a0, 352
	vsub.d	$vr2, $vr3, $vr0
	ld.d	$a3, $a0, 400
	vsub.d	$vr0, $vr1, $vr0
	vst	$vr2, $a0, 368
	vst	$vr0, $a0, 384
	sub.d	$a2, $a3, $a2
	st.d	$a2, $a0, 400
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 808
	bnez	$a1, .LBB10_19
# %bb.20:                               # %.preheader49.i.i.preheader
                                        #   in Loop: Header=BB10_18 Depth=1
	move	$a0, $zero
	move	$a1, $s0
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$a2, $a5
	b	.LBB10_22
	.p2align	4, , 16
.LBB10_21:                              # %.loopexit.i.i
                                        #   in Loop: Header=BB10_22 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beq	$a0, $fp, .LBB10_119
.LBB10_22:                              # %.preheader49.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_23 Depth 3
                                        #       Child Loop BB10_26 Depth 3
	alsl.d	$a3, $a0, $s0, 3
	ori	$a4, $zero, 100
	move	$a5, $a2
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB10_23:                              # %vector.body107
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a5, -1616
	ld.d	$a7, $a5, -808
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a5, 808
	vinsgr2vr.d	$vr2, $a6, 0
	vinsgr2vr.d	$vr2, $a7, 1
	vinsgr2vr.d	$vr3, $t0, 0
	vinsgr2vr.d	$vr3, $t1, 1
	vmin.d	$vr0, $vr2, $vr0
	vmin.d	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, 2047
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, 1185
	bnez	$a4, .LBB10_23
# %bb.24:                               # %middle.block112
                                        #   in Loop: Header=BB10_22 Depth=2
	vmin.d	$vr0, $vr0, $vr1
	ldx.d	$a4, $a3, $t4
	vbsrl.v	$vr1, $vr0, 8
	vmin.d	$vr0, $vr1, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	slt	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	beqz	$a4, .LBB10_21
# %bb.25:                               # %vector.body100.preheader
                                        #   in Loop: Header=BB10_22 Depth=2
	ori	$a5, $zero, 100
	move	$a6, $a1
	.p2align	4, , 16
.LBB10_26:                              # %vector.body100
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a6, 0
	ld.d	$t0, $a6, 808
	sub.d	$a7, $a7, $a4
	sub.d	$t0, $t0, $a4
	st.d	$a7, $a6, 0
	st.d	$t0, $a6, 808
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, 1616
	bnez	$a5, .LBB10_26
# %bb.27:                               # %.preheader.i.i10
                                        #   in Loop: Header=BB10_22 Depth=2
	ldx.d	$a5, $a3, $t4
	sub.d	$a4, $a5, $a4
	stx.d	$a4, $a3, $t4
	b	.LBB10_21
	.p2align	4, , 16
.LBB10_28:                              #   in Loop: Header=BB10_119 Depth=2
	lu12i.w	$a0, 5
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 202
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 5
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 202
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$t7, $sp, 1768
	move	$a0, $zero
	addi.d	$a1, $sp, 152
	b	.LBB10_31
	.p2align	4, , 16
.LBB10_29:                              # %.critedge.i.i
                                        #   in Loop: Header=BB10_31 Depth=3
	slli.d	$a2, $a0, 1
	stx.h	$s2, $a2, $s7
.LBB10_30:                              # %.loopexit118.i.i
                                        #   in Loop: Header=BB10_31 Depth=3
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 202
	beq	$a0, $fp, .LBB10_34
.LBB10_31:                              # %.preheader117.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_32 Depth 4
	move	$a2, $zero
	.p2align	4, , 16
.LBB10_32:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a3, $a1, $a2
	beq	$a3, $s2, .LBB10_30
# %bb.33:                               #   in Loop: Header=BB10_32 Depth=4
	addi.d	$a2, $a2, 2
	bne	$a2, $s6, .LBB10_32
	b	.LBB10_29
	.p2align	4, , 16
.LBB10_34:                              # %.preheader116.i.i.preheader
                                        #   in Loop: Header=BB10_119 Depth=2
	move	$a0, $zero
	lu12i.w	$a1, 5
	ori	$a1, $a1, 84
	add.d	$t6, $sp, $a1
	ori	$t8, $zero, 808
	ori	$ra, $zero, 816
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	vld	$vr8, $sp, 64                   # 16-byte Folded Reload
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
	b	.LBB10_36
	.p2align	4, , 16
.LBB10_35:                              #   in Loop: Header=BB10_36 Depth=3
	slli.d	$a1, $a4, 48
	move	$a0, $zero
	beqz	$a1, .LBB10_98
.LBB10_36:                              # %.preheader116.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_39 Depth 4
                                        #         Child Loop BB10_51 Depth 4
                                        #           Child Loop BB10_54 Depth 5
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $a1, $s7
	bne	$a1, $s2, .LBB10_48
# %bb.37:                               # %.preheader113.i.i
                                        #   in Loop: Header=BB10_36 Depth=3
	mul.d	$a1, $a0, $t8
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 16
	move	$a3, $t6
	b	.LBB10_39
	.p2align	4, , 16
.LBB10_38:                              # %pred.store.continue94
                                        #   in Loop: Header=BB10_39 Depth=4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 8
	beq	$a2, $ra, .LBB10_47
.LBB10_39:                              # %vector.body83
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a4, $a1, $a2
	vld	$vr0, $a4, -16
	vseqi.d	$vr0, $vr0, 0
	vpickve2gr.d	$a4, $vr0, 0
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_41
# %bb.40:                               # %pred.store.if87
                                        #   in Loop: Header=BB10_39 Depth=4
	st.h	$s2, $a3, -4
.LBB10_41:                              # %pred.store.continue88
                                        #   in Loop: Header=BB10_39 Depth=4
	vpickve2gr.d	$a4, $vr0, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_43
# %bb.42:                               # %pred.store.if89
                                        #   in Loop: Header=BB10_39 Depth=4
	st.h	$s2, $a3, -2
.LBB10_43:                              # %pred.store.continue90
                                        #   in Loop: Header=BB10_39 Depth=4
	vldx	$vr0, $a1, $a2
	vseqi.d	$vr0, $vr0, 0
	vpickve2gr.d	$a4, $vr0, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_45
# %bb.44:                               # %pred.store.continue92
                                        #   in Loop: Header=BB10_39 Depth=4
	vpickve2gr.d	$a4, $vr0, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_38
	b	.LBB10_46
	.p2align	4, , 16
.LBB10_45:                              # %pred.store.if91
                                        #   in Loop: Header=BB10_39 Depth=4
	st.h	$s2, $a3, 0
	vpickve2gr.d	$a4, $vr0, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_38
.LBB10_46:                              # %pred.store.if93
                                        #   in Loop: Header=BB10_39 Depth=4
	st.h	$s2, $a3, 2
	b	.LBB10_38
	.p2align	4, , 16
.LBB10_47:                              # %scalar.ph81
                                        #   in Loop: Header=BB10_36 Depth=3
	ld.d	$a1, $a1, 800
	beqz	$a1, .LBB10_97
.LBB10_48:                              # %.loopexit114.i.i
                                        #   in Loop: Header=BB10_36 Depth=3
	addi.d	$a0, $a0, 1
	bne	$a0, $fp, .LBB10_36
.LBB10_49:                              # %.preheader115.i.i.preheader
                                        #   in Loop: Header=BB10_36 Depth=3
	move	$a0, $zero
	move	$a4, $zero
	move	$a1, $t7
	b	.LBB10_51
	.p2align	4, , 16
.LBB10_50:                              # %.loopexit112.i.i
                                        #   in Loop: Header=BB10_51 Depth=4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 2
	beq	$a0, $fp, .LBB10_35
.LBB10_51:                              # %.preheader115.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_36 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_54 Depth 5
	slli.d	$a2, $a0, 1
	ldx.hu	$a2, $a2, $s8
	bne	$a2, $s2, .LBB10_50
# %bb.52:                               # %iter.check
                                        #   in Loop: Header=BB10_51 Depth=4
	move	$a3, $zero
	alsl.d	$a2, $a0, $s5, 1
	vori.b	$vr0, $vr7, 0
	vinsgr2vr.h	$vr0, $a4, 0
	move	$a4, $a1
	vori.b	$vr1, $vr7, 0
	b	.LBB10_54
	.p2align	4, , 16
.LBB10_53:                              # %pred.store.continue59
                                        #   in Loop: Header=BB10_54 Depth=5
	vand.v	$vr2, $vr3, $vr2
	vsub.h	$vr0, $vr0, $vr2
	vand.v	$vr2, $vr5, $vr4
	vsub.h	$vr1, $vr1, $vr2
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 2047
	addi.d	$a4, $a4, 1185
	beq	$a3, $s1, .LBB10_86
.LBB10_54:                              # %vector.body25
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_36 Depth=3
                                        #         Parent Loop BB10_51 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.h	$a5, $a4, -1616
	ld.h	$a6, $a4, -1414
	ld.h	$a7, $a4, -1212
	ld.h	$t0, $a4, -1010
	ld.h	$t1, $a4, -808
	ld.h	$t2, $a4, -606
	ld.h	$t3, $a4, -404
	ld.h	$t4, $a4, -202
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr2, $a6, 1
	vinsgr2vr.h	$vr2, $a7, 2
	vinsgr2vr.h	$vr2, $t0, 3
	vinsgr2vr.h	$vr2, $t1, 4
	vinsgr2vr.h	$vr2, $t2, 5
	vldx	$vr3, $a3, $s7
	vinsgr2vr.h	$vr2, $t3, 6
	vinsgr2vr.h	$vr2, $t4, 7
	vseqi.h	$vr2, $vr2, 1
	vseqi.h	$vr3, $vr3, 1
	vxor.v	$vr3, $vr3, $vr8
	vand.v	$vr4, $vr2, $vr3
	vpickve2gr.h	$a5, $vr4, 0
	andi	$a5, $a5, 1
	bnez	$a5, .LBB10_71
# %bb.55:                               # %pred.store.continue
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a5, $vr4, 1
	andi	$a6, $a5, 1
	add.d	$a5, $s7, $a3
	bnez	$a6, .LBB10_72
.LBB10_56:                              # %pred.store.continue31
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr4, 2
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_73
.LBB10_57:                              # %pred.store.continue33
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr4, 3
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_74
.LBB10_58:                              # %pred.store.continue35
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr4, 4
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_75
.LBB10_59:                              # %pred.store.continue37
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr4, 5
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_76
.LBB10_60:                              # %pred.store.continue39
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr4, 6
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_77
.LBB10_61:                              # %pred.store.continue41
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr4, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_63
.LBB10_62:                              # %pred.store.if42
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 14
.LBB10_63:                              # %pred.store.continue43
                                        #   in Loop: Header=BB10_54 Depth=5
	ld.h	$a6, $a4, 0
	ld.h	$a7, $a4, 202
	ld.h	$t0, $a4, 404
	ld.h	$t1, $a4, 606
	ld.h	$t2, $a4, 808
	ld.h	$t3, $a4, 1010
	ld.h	$t4, $a4, 1212
	ld.h	$t5, $a4, 1414
	vinsgr2vr.h	$vr4, $a6, 0
	vinsgr2vr.h	$vr4, $a7, 1
	vinsgr2vr.h	$vr4, $t0, 2
	vinsgr2vr.h	$vr4, $t1, 3
	vinsgr2vr.h	$vr4, $t2, 4
	vinsgr2vr.h	$vr4, $t3, 5
	vld	$vr5, $a5, 16
	vinsgr2vr.h	$vr4, $t4, 6
	vinsgr2vr.h	$vr4, $t5, 7
	vseqi.h	$vr4, $vr4, 1
	vseqi.h	$vr5, $vr5, 1
	vxor.v	$vr5, $vr5, $vr8
	vand.v	$vr6, $vr4, $vr5
	vpickve2gr.h	$a6, $vr6, 0
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_78
# %bb.64:                               # %pred.store.continue45
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr6, 1
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_79
.LBB10_65:                              # %pred.store.continue47
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr6, 2
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_80
.LBB10_66:                              # %pred.store.continue49
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr6, 3
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_81
.LBB10_67:                              # %pred.store.continue51
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr6, 4
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_82
.LBB10_68:                              # %pred.store.continue53
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr6, 5
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_83
.LBB10_69:                              # %pred.store.continue55
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr6, 6
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_84
.LBB10_70:                              # %pred.store.continue57
                                        #   in Loop: Header=BB10_54 Depth=5
	vpickve2gr.h	$a6, $vr6, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_53
	b	.LBB10_85
	.p2align	4, , 16
.LBB10_71:                              # %pred.store.if
                                        #   in Loop: Header=BB10_54 Depth=5
	stx.h	$s2, $a3, $s7
	vpickve2gr.h	$a5, $vr4, 1
	andi	$a6, $a5, 1
	add.d	$a5, $s7, $a3
	beqz	$a6, .LBB10_56
.LBB10_72:                              # %pred.store.if30
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 2
	vpickve2gr.h	$a6, $vr4, 2
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_57
.LBB10_73:                              # %pred.store.if32
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 4
	vpickve2gr.h	$a6, $vr4, 3
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_58
.LBB10_74:                              # %pred.store.if34
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 6
	vpickve2gr.h	$a6, $vr4, 4
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_59
.LBB10_75:                              # %pred.store.if36
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 8
	vpickve2gr.h	$a6, $vr4, 5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_60
.LBB10_76:                              # %pred.store.if38
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 10
	vpickve2gr.h	$a6, $vr4, 6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_61
.LBB10_77:                              # %pred.store.if40
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 12
	vpickve2gr.h	$a6, $vr4, 7
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_62
	b	.LBB10_63
	.p2align	4, , 16
.LBB10_78:                              # %pred.store.if44
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 16
	vpickve2gr.h	$a6, $vr6, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_65
.LBB10_79:                              # %pred.store.if46
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 18
	vpickve2gr.h	$a6, $vr6, 2
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_66
.LBB10_80:                              # %pred.store.if48
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 20
	vpickve2gr.h	$a6, $vr6, 3
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_67
.LBB10_81:                              # %pred.store.if50
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 22
	vpickve2gr.h	$a6, $vr6, 4
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_68
.LBB10_82:                              # %pred.store.if52
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 24
	vpickve2gr.h	$a6, $vr6, 5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_69
.LBB10_83:                              # %pred.store.if54
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 26
	vpickve2gr.h	$a6, $vr6, 6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_70
.LBB10_84:                              # %pred.store.if56
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 28
	vpickve2gr.h	$a6, $vr6, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_53
.LBB10_85:                              # %pred.store.if58
                                        #   in Loop: Header=BB10_54 Depth=5
	st.h	$s2, $a5, 30
	b	.LBB10_53
	.p2align	4, , 16
.LBB10_86:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB10_51 Depth=4
	ori	$a3, $s4, 3008
	ldx.h	$a3, $a2, $a3
	ori	$a4, $s4, 3210
	ldx.h	$a4, $a2, $a4
	ori	$a5, $s4, 3412
	ldx.h	$a5, $a2, $a5
	ori	$a6, $s4, 3614
	ldx.h	$a6, $a2, $a6
	vinsgr2vr.h	$vr2, $a3, 0
	vinsgr2vr.h	$vr2, $a4, 1
	lu12i.w	$a3, 5
	ori	$a3, $a3, 480
	add.d	$a3, $sp, $a3
	ld.d	$a3, $a3, 0
	vinsgr2vr.h	$vr2, $a5, 2
	vinsgr2vr.h	$vr2, $a6, 3
	vseqi.h	$vr2, $vr2, 1
	vinsgr2vr.d	$vr3, $a3, 0
	vseqi.h	$vr3, $vr3, 1
	vxor.v	$vr3, $vr3, $vr8
	vand.v	$vr2, $vr2, $vr3
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr3, $vr2, 16
	vsrai.w	$vr3, $vr3, 16
	vpickve2gr.w	$a3, $vr3, 0
	andi	$a3, $a3, 1
	bnez	$a3, .LBB10_94
# %bb.87:                               # %pred.store.continue69
                                        #   in Loop: Header=BB10_51 Depth=4
	vpickve2gr.w	$a3, $vr3, 1
	andi	$a3, $a3, 1
	bnez	$a3, .LBB10_95
.LBB10_88:                              # %pred.store.continue71
                                        #   in Loop: Header=BB10_51 Depth=4
	vpickve2gr.w	$a3, $vr3, 2
	andi	$a3, $a3, 1
	bnez	$a3, .LBB10_96
.LBB10_89:                              # %pred.store.continue73
                                        #   in Loop: Header=BB10_51 Depth=4
	vpickve2gr.w	$a3, $vr3, 3
	andi	$a3, $a3, 1
	beqz	$a3, .LBB10_91
.LBB10_90:                              # %pred.store.if74
                                        #   in Loop: Header=BB10_51 Depth=4
	lu12i.w	$a3, 5
	ori	$a3, $a3, 486
	add.d	$a3, $sp, $a3
	st.h	$s2, $a3, 0
.LBB10_91:                              # %pred.store.continue75
                                        #   in Loop: Header=BB10_51 Depth=4
	vadd.h	$vr0, $vr1, $vr0
	vhaddw.w.h	$vr0, $vr0, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	vori.b	$vr0, $vr7, 0
	vinsgr2vr.h	$vr0, $a3, 0
	vand.v	$vr1, $vr2, $vr9
	vpickve2gr.w	$a3, $vr1, 0
	vinsgr2vr.h	$vr2, $a3, 0
	vpickve2gr.w	$a3, $vr1, 1
	vinsgr2vr.h	$vr2, $a3, 1
	vpickve2gr.w	$a3, $vr1, 2
	vinsgr2vr.h	$vr2, $a3, 2
	vpickve2gr.w	$a3, $vr1, 3
	vinsgr2vr.h	$vr2, $a3, 3
	ori	$a3, $s4, 3816
	ldx.hu	$a2, $a2, $a3
	vadd.h	$vr0, $vr0, $vr2
	vhaddw.w.h	$vr0, $vr0, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.w	$a4, $vr0, 0
	bne	$a2, $s2, .LBB10_50
# %bb.92:                               # %pred.store.continue75
                                        #   in Loop: Header=BB10_51 Depth=4
	lu12i.w	$a2, 5
	ori	$a2, $a2, 488
	add.d	$a2, $sp, $a2
	ld.hu	$a2, $a2, 0
	beq	$a2, $s2, .LBB10_50
# %bb.93:                               #   in Loop: Header=BB10_51 Depth=4
	lu12i.w	$a2, 5
	ori	$a2, $a2, 488
	add.d	$a2, $sp, $a2
	st.h	$s2, $a2, 0
	addi.d	$a4, $a4, 1
	b	.LBB10_50
	.p2align	4, , 16
.LBB10_94:                              # %pred.store.if68
                                        #   in Loop: Header=BB10_51 Depth=4
	lu12i.w	$a3, 5
	ori	$a3, $a3, 480
	add.d	$a3, $sp, $a3
	st.h	$s2, $a3, 0
	vpickve2gr.w	$a3, $vr3, 1
	andi	$a3, $a3, 1
	beqz	$a3, .LBB10_88
.LBB10_95:                              # %pred.store.if70
                                        #   in Loop: Header=BB10_51 Depth=4
	lu12i.w	$a3, 5
	ori	$a3, $a3, 482
	add.d	$a3, $sp, $a3
	st.h	$s2, $a3, 0
	vpickve2gr.w	$a3, $vr3, 2
	andi	$a3, $a3, 1
	beqz	$a3, .LBB10_89
.LBB10_96:                              # %pred.store.if72
                                        #   in Loop: Header=BB10_51 Depth=4
	lu12i.w	$a3, 5
	ori	$a3, $a3, 484
	add.d	$a3, $sp, $a3
	st.h	$s2, $a3, 0
	vpickve2gr.w	$a3, $vr3, 3
	andi	$a3, $a3, 1
	bnez	$a3, .LBB10_90
	b	.LBB10_91
.LBB10_97:                              #   in Loop: Header=BB10_36 Depth=3
	lu12i.w	$a1, 5
	ori	$a1, $a1, 280
	add.d	$a1, $sp, $a1
	st.h	$s2, $a1, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $fp, .LBB10_36
	b	.LBB10_49
	.p2align	4, , 16
.LBB10_98:                              # %.preheader110.i.i.preheader
                                        #   in Loop: Header=BB10_119 Depth=2
	move	$a1, $zero
	move	$a2, $s0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB10_100
	.p2align	4, , 16
.LBB10_99:                              # %.loopexit109.i.i
                                        #   in Loop: Header=BB10_100 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 808
	beq	$a1, $fp, .LBB10_105
.LBB10_100:                             # %.preheader110.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_103 Depth 4
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a3, $s7
	beqz	$a3, .LBB10_99
# %bb.101:                              # %.preheader108.i.i
                                        #   in Loop: Header=BB10_100 Depth=3
	move	$a3, $zero
	move	$a4, $a2
	b	.LBB10_103
	.p2align	4, , 16
.LBB10_102:                             #   in Loop: Header=BB10_103 Depth=4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	beq	$a3, $s6, .LBB10_99
.LBB10_103:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_100 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a5, $a3, $s8
	beq	$a5, $s2, .LBB10_102
# %bb.104:                              #   in Loop: Header=BB10_103 Depth=4
	ld.d	$a5, $a4, 0
	slt	$a6, $a5, $a0
	masknez	$a0, $a0, $a6
	maskeqz	$a5, $a5, $a6
	or	$a0, $a5, $a0
	b	.LBB10_102
	.p2align	4, , 16
.LBB10_105:                             # %.preheader107.i.i.preheader
                                        #   in Loop: Header=BB10_119 Depth=2
	move	$a1, $zero
	move	$a2, $s0
	b	.LBB10_107
	.p2align	4, , 16
.LBB10_106:                             # %.loopexit106.i.i
                                        #   in Loop: Header=BB10_107 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 808
	beq	$a1, $fp, .LBB10_112
.LBB10_107:                             # %.preheader107.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_110 Depth 4
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a3, $s7
	beqz	$a3, .LBB10_106
# %bb.108:                              # %.preheader105.i.i
                                        #   in Loop: Header=BB10_107 Depth=3
	move	$a3, $zero
	move	$a4, $a2
	b	.LBB10_110
	.p2align	4, , 16
.LBB10_109:                             #   in Loop: Header=BB10_110 Depth=4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	beq	$a3, $s6, .LBB10_106
.LBB10_110:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a5, $a3, $s8
	beq	$a5, $s2, .LBB10_109
# %bb.111:                              #   in Loop: Header=BB10_110 Depth=4
	ld.d	$a5, $a4, 0
	sub.d	$a5, $a5, $a0
	st.d	$a5, $a4, 0
	b	.LBB10_109
	.p2align	4, , 16
.LBB10_112:                             # %.preheader104.i.i.preheader
                                        #   in Loop: Header=BB10_119 Depth=2
	move	$a1, $zero
	move	$a2, $s0
	b	.LBB10_114
	.p2align	4, , 16
.LBB10_113:                             # %.loopexit.i16.i
                                        #   in Loop: Header=BB10_114 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 808
	beq	$a1, $fp, .LBB10_119
.LBB10_114:                             # %.preheader104.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_117 Depth 4
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a3, $s7
	bnez	$a3, .LBB10_113
# %bb.115:                              # %.preheader.i17.i
                                        #   in Loop: Header=BB10_114 Depth=3
	move	$a3, $zero
	move	$a4, $a2
	b	.LBB10_117
	.p2align	4, , 16
.LBB10_116:                             #   in Loop: Header=BB10_117 Depth=4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	beq	$a3, $s6, .LBB10_113
.LBB10_117:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_114 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a5, $a3, $s8
	bne	$a5, $s2, .LBB10_116
# %bb.118:                              #   in Loop: Header=BB10_117 Depth=4
	ld.d	$a5, $a4, 0
	add.d	$a5, $a5, $a0
	st.d	$a5, $a4, 0
	b	.LBB10_116
	.p2align	4, , 16
.LBB10_119:                             # %calc_minimum_costs.exit.i
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_121 Depth 3
                                        #         Child Loop BB10_123 Depth 4
                                        #         Child Loop BB10_129 Depth 4
                                        #         Child Loop BB10_137 Depth 4
                                        #           Child Loop BB10_139 Depth 5
                                        #           Child Loop BB10_145 Depth 5
                                        #       Child Loop BB10_152 Depth 3
                                        #         Child Loop BB10_154 Depth 4
                                        #         Child Loop BB10_158 Depth 4
                                        #         Child Loop BB10_163 Depth 4
                                        #       Child Loop BB10_31 Depth 3
                                        #         Child Loop BB10_32 Depth 4
                                        #       Child Loop BB10_36 Depth 3
                                        #         Child Loop BB10_39 Depth 4
                                        #         Child Loop BB10_51 Depth 4
                                        #           Child Loop BB10_54 Depth 5
                                        #       Child Loop BB10_100 Depth 3
                                        #         Child Loop BB10_103 Depth 4
                                        #       Child Loop BB10_107 Depth 3
                                        #         Child Loop BB10_110 Depth 4
                                        #       Child Loop BB10_114 Depth 3
                                        #         Child Loop BB10_117 Depth 4
	addi.d	$a0, $sp, 152
	move	$a1, $zero
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	move	$a2, $zero
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ori	$t5, $zero, 808
	b	.LBB10_121
	.p2align	4, , 16
.LBB10_120:                             #   in Loop: Header=BB10_121 Depth=3
	slli.d	$a4, $a1, 48
	move	$a3, $zero
	move	$a1, $zero
	beqz	$a4, .LBB10_148
.LBB10_121:                             # %.preheader156.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_123 Depth 4
                                        #         Child Loop BB10_129 Depth 4
                                        #         Child Loop BB10_137 Depth 4
                                        #           Child Loop BB10_139 Depth 5
                                        #           Child Loop BB10_145 Depth 5
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	mul.d	$a4, $a3, $s6
	add.d	$a4, $s5, $a4
	mul.d	$t0, $a3, $t5
	b	.LBB10_123
	.p2align	4, , 16
.LBB10_122:                             #   in Loop: Header=BB10_123 Depth=4
	addi.w	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	addi.d	$t0, $t0, 8
	beq	$a5, $s6, .LBB10_126
.LBB10_123:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$t1, $s0, $t0
	bnez	$t1, .LBB10_122
# %bb.124:                              #   in Loop: Header=BB10_123 Depth=4
	ldx.hu	$t1, $a4, $a5
	bnez	$t1, .LBB10_122
# %bb.125:                              #   in Loop: Header=BB10_123 Depth=4
	addi.d	$a7, $a7, 1
	move	$a2, $a6
	b	.LBB10_122
	.p2align	4, , 16
.LBB10_126:                             #   in Loop: Header=BB10_121 Depth=3
	bstrpick.d	$a5, $a7, 15, 0
	bne	$a5, $s2, .LBB10_133
# %bb.127:                              #   in Loop: Header=BB10_121 Depth=3
	move	$a5, $zero
	slli.d	$a6, $a2, 1
	stx.h	$s2, $a4, $a6
	alsl.d	$a4, $a2, $s5, 1
	slli.d	$a6, $a2, 3
	b	.LBB10_129
	.p2align	4, , 16
.LBB10_128:                             #   in Loop: Header=BB10_129 Depth=4
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 808
	addi.d	$a4, $a4, 202
	beq	$a5, $fp, .LBB10_132
.LBB10_129:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a3, $a5, .LBB10_128
# %bb.130:                              #   in Loop: Header=BB10_129 Depth=4
	ldx.d	$a7, $s0, $a6
	bnez	$a7, .LBB10_128
# %bb.131:                              #   in Loop: Header=BB10_129 Depth=4
	st.h	$s3, $a4, 0
	b	.LBB10_128
	.p2align	4, , 16
.LBB10_132:                             # %.loopexit155.loopexit.i.i
                                        #   in Loop: Header=BB10_121 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
.LBB10_133:                             # %.loopexit155.i.i
                                        #   in Loop: Header=BB10_121 Depth=3
	addi.d	$a3, $a3, 1
	bne	$a3, $fp, .LBB10_121
# %bb.134:                              # %.preheader154.i.i.preheader
                                        #   in Loop: Header=BB10_121 Depth=3
	move	$a3, $zero
	addi.d	$a4, $sp, 152
	move	$a5, $s0
	b	.LBB10_137
	.p2align	4, , 16
.LBB10_135:                             # %.loopexit153.loopexit.i.i
                                        #   in Loop: Header=BB10_137 Depth=4
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
.LBB10_136:                             # %.loopexit153.i.i
                                        #   in Loop: Header=BB10_137 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 8
	beq	$a3, $fp, .LBB10_120
.LBB10_137:                             # %.preheader154.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_121 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_139 Depth 5
                                        #           Child Loop BB10_145 Depth 5
	move	$a6, $zero
	move	$a7, $zero
	ori	$t0, $zero, 101
	move	$t1, $a5
	move	$t2, $a4
	b	.LBB10_139
	.p2align	4, , 16
.LBB10_138:                             #   in Loop: Header=BB10_139 Depth=5
	addi.w	$a6, $a6, 1
	addi.d	$t2, $t2, 202
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 808
	beqz	$t0, .LBB10_142
.LBB10_139:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_121 Depth=3
                                        #         Parent Loop BB10_137 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$t3, $t1, 0
	bnez	$t3, .LBB10_138
# %bb.140:                              #   in Loop: Header=BB10_139 Depth=5
	ld.hu	$t3, $t2, 0
	bnez	$t3, .LBB10_138
# %bb.141:                              #   in Loop: Header=BB10_139 Depth=5
	addi.d	$a7, $a7, 1
	move	$a2, $a6
	b	.LBB10_138
	.p2align	4, , 16
.LBB10_142:                             #   in Loop: Header=BB10_137 Depth=4
	bstrpick.d	$a6, $a7, 15, 0
	bne	$a6, $s2, .LBB10_136
# %bb.143:                              #   in Loop: Header=BB10_137 Depth=4
	move	$a6, $zero
	mul.d	$a7, $a2, $s6
	add.d	$a7, $s5, $a7
	slli.d	$t0, $a3, 1
	stx.h	$s2, $a7, $t0
	mul.d	$t0, $a2, $t5
	b	.LBB10_145
	.p2align	4, , 16
.LBB10_144:                             #   in Loop: Header=BB10_145 Depth=5
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 2
	beq	$a6, $fp, .LBB10_135
.LBB10_145:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_121 Depth=3
                                        #         Parent Loop BB10_137 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	beq	$a3, $a6, .LBB10_144
# %bb.146:                              #   in Loop: Header=BB10_145 Depth=5
	ldx.d	$t1, $s0, $t0
	bnez	$t1, .LBB10_144
# %bb.147:                              #   in Loop: Header=BB10_145 Depth=5
	st.h	$s3, $a7, 0
	b	.LBB10_144
	.p2align	4, , 16
.LBB10_148:                             #   in Loop: Header=BB10_119 Depth=2
	bstrpick.d	$a1, $a0, 15, 0
	beq	$a1, $fp, .LBB10_17
# %bb.149:                              # %.preheader150.i.i.preheader
                                        #   in Loop: Header=BB10_119 Depth=2
	move	$a1, $zero
	addi.d	$a2, $sp, 152
	addi.d	$a3, $sp, 152
	move	$a4, $s0
	b	.LBB10_152
	.p2align	4, , 16
.LBB10_150:                             # %.thread.loopexit.i.i
                                        #   in Loop: Header=BB10_152 Depth=3
	addi.d	$a0, $a0, 1
.LBB10_151:                             # %.thread.i.i
                                        #   in Loop: Header=BB10_152 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 808
	addi.d	$a3, $a3, 202
	beq	$a1, $fp, .LBB10_166
.LBB10_152:                             # %.preheader150.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_154 Depth 4
                                        #         Child Loop BB10_158 Depth 4
                                        #         Child Loop BB10_163 Depth 4
	move	$a7, $zero
	mul.d	$a5, $a1, $t5
	add.d	$t1, $s0, $a5
	mul.d	$a5, $a1, $s6
	add.d	$t0, $a2, $a5
	addi.d	$a5, $sp, 152
	move	$a6, $s0
	b	.LBB10_154
	.p2align	4, , 16
.LBB10_153:                             #   in Loop: Header=BB10_154 Depth=4
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 2
	beq	$a7, $fp, .LBB10_151
.LBB10_154:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_152 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $t1, $t2
	bnez	$t2, .LBB10_153
# %bb.155:                              #   in Loop: Header=BB10_154 Depth=4
	slli.d	$t2, $a7, 1
	ldx.hu	$t2, $t0, $t2
	bnez	$t2, .LBB10_153
# %bb.156:                              #   in Loop: Header=BB10_152 Depth=3
	move	$t1, $zero
	bstrpick.d	$t2, $a7, 15, 0
	slli.d	$t2, $t2, 1
	stx.h	$s2, $t0, $t2
	move	$t0, $a3
	move	$t2, $a4
	b	.LBB10_158
	.p2align	4, , 16
.LBB10_157:                             #   in Loop: Header=BB10_158 Depth=4
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	addi.d	$t0, $t0, 2
	beq	$t1, $fp, .LBB10_161
.LBB10_158:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_152 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a7, $t1, .LBB10_157
# %bb.159:                              #   in Loop: Header=BB10_158 Depth=4
	ld.d	$t3, $t2, 0
	bnez	$t3, .LBB10_157
# %bb.160:                              #   in Loop: Header=BB10_158 Depth=4
	st.h	$s3, $t0, 0
	b	.LBB10_157
	.p2align	4, , 16
.LBB10_161:                             # %.preheader.i8.i
                                        #   in Loop: Header=BB10_152 Depth=3
	move	$a7, $zero
	b	.LBB10_163
	.p2align	4, , 16
.LBB10_162:                             #   in Loop: Header=BB10_163 Depth=4
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 808
	addi.d	$a5, $a5, 202
	beq	$a7, $fp, .LBB10_150
.LBB10_163:                             #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_119 Depth=2
                                        #       Parent Loop BB10_152 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a1, $a7, .LBB10_162
# %bb.164:                              #   in Loop: Header=BB10_163 Depth=4
	ld.d	$t0, $a6, 0
	bnez	$t0, .LBB10_162
# %bb.165:                              #   in Loop: Header=BB10_163 Depth=4
	st.h	$s3, $a5, 0
	b	.LBB10_162
	.p2align	4, , 16
.LBB10_166:                             # %first_assignments.exit.i
                                        #   in Loop: Header=BB10_119 Depth=2
	bstrpick.d	$a0, $a0, 15, 0
	bne	$a0, $fp, .LBB10_28
	b	.LBB10_17
.LBB10_167:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB10_168:                             # %._crit_edge
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2672
	add.d	$sp, $sp, $a1
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end10:
	.size	DoAssignIteration, .Lfunc_end10-DoAssignIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoIDEA
.LCPI11_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI11_1:
	.dword	0x409d4c0000000000              # double 1875
	.text
	.globl	DoIDEA
	.p2align	5
	.type	DoIDEA,@function
DoIDEA:                                 # @DoIDEA
# %bb.0:                                # %.preheader191.preheader
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 384                  # 8-byte Folded Spill
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 14
	ori	$s1, $a0, 2656
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 184
	ori	$a2, $zero, 88
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.h	$fp, $sp, 168
	st.h	$s0, $sp, 170
	st.h	$s2, $sp, 172
	st.h	$s3, $sp, 174
	addi.d	$a3, $sp, 176
	st.h	$s4, $sp, 176
	st.h	$s5, $sp, 178
	st.h	$s6, $sp, 180
	st.h	$s1, $sp, 182
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 44
	.p2align	4, , 16
.LBB11_1:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a0, 1
	addi.d	$a5, $a0, 2
	andi	$a6, $a4, 7
	slli.d	$a7, $a6, 1
	andi	$a5, $a5, 7
	slli.d	$a5, $a5, 1
	ldx.h	$a5, $a1, $a5
	ldx.h	$a7, $a1, $a7
	alsl.d	$a0, $a0, $a1, 1
	bstrpick.d	$a5, $a5, 15, 7
	slli.d	$a7, $a7, 9
	or	$a5, $a7, $a5
	st.h	$a5, $a0, 16
	andi	$a0, $a4, 8
	addi.w	$a2, $a2, -1
	alsl.d	$a1, $a0, $a1, 1
	move	$a0, $a6
	bnez	$a2, .LBB11_1
# %bb.2:                                # %en_key_idea.exit
	ld.hu	$a1, $sp, 168
	ori	$a2, $zero, 2
	lu12i.w	$a0, 16
	bltu	$a1, $a2, .LBB11_9
# %bb.3:
	bstrpick.d	$a5, $a1, 15, 0
	ori	$a6, $a0, 1
	div.wu	$a4, $a6, $a5
	mul.d	$a5, $a4, $a5
	sub.w	$a5, $a6, $a5
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB11_7
# %bb.4:                                # %.preheader.i.preheader.i
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB11_5:                               # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t1, $a1, 15, 0
	bstrpick.d	$t0, $a5, 15, 0
	div.du	$t2, $t1, $t0
	mul.d	$t1, $t2, $a5
	sub.d	$a1, $a1, $t1
	bstrpick.d	$t1, $a1, 15, 0
	mul.d	$t2, $a4, $t2
	add.d	$a7, $t2, $a7
	beq	$t1, $a6, .LBB11_8
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	div.du	$t0, $t0, $t1
	mul.d	$t1, $t0, $a1
	sub.d	$a5, $a5, $t1
	bstrpick.d	$t1, $a5, 15, 0
	mul.d	$t0, $a7, $t0
	add.d	$a4, $t0, $a4
	bne	$t1, $a6, .LBB11_5
.LBB11_7:
	ori	$a1, $zero, 1
	sub.d	$a1, $a1, $a4
	b	.LBB11_9
.LBB11_8:
	move	$a1, $a7
.LBB11_9:                               # %inv.exit.i
	ld.h	$a4, $sp, 170
	ld.h	$a5, $sp, 172
	ld.hu	$a6, $sp, 174
	sub.d	$a4, $zero, $a4
	sub.d	$a5, $zero, $a5
	bltu	$a6, $a2, .LBB11_16
# %bb.10:
	bstrpick.d	$a7, $a6, 15, 0
	ori	$t0, $a0, 1
	div.wu	$a2, $t0, $a7
	mul.d	$a7, $a2, $a7
	sub.w	$a7, $t0, $a7
	ori	$t0, $zero, 1
	beq	$a7, $t0, .LBB11_14
# %bb.11:                               # %.preheader.i53.preheader.i
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB11_12:                              # %.preheader.i53.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a6, 15, 0
	bstrpick.d	$t2, $a7, 15, 0
	div.du	$t4, $t3, $t2
	mul.d	$t3, $t4, $a7
	sub.d	$a6, $a6, $t3
	bstrpick.d	$t3, $a6, 15, 0
	mul.d	$t4, $a2, $t4
	add.d	$t1, $t4, $t1
	beq	$t3, $t0, .LBB11_15
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=1
	div.du	$t2, $t2, $t3
	mul.d	$t3, $t2, $a6
	sub.d	$a7, $a7, $t3
	bstrpick.d	$t3, $a7, 15, 0
	mul.d	$t2, $t1, $t2
	add.d	$a2, $t2, $a2
	bne	$t3, $t0, .LBB11_12
.LBB11_14:
	ori	$a6, $zero, 1
	sub.d	$a6, $a6, $a2
	b	.LBB11_16
.LBB11_15:
	move	$a6, $t1
.LBB11_16:                              # %inv.exit66.i
	st.h	$a6, $sp, 374
	st.h	$a5, $sp, 372
	st.h	$a4, $sp, 370
	addi.d	$t1, $sp, 368
	st.h	$a1, $sp, 368
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	ori	$a6, $zero, 8
	ori	$a1, $a0, 1
	ori	$a7, $zero, 1
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_17:                              #   in Loop: Header=BB11_19 Depth=1
	sub.d	$t1, $a4, $a3
.LBB11_18:                              # %inv.exit94.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ld.h	$a3, $a2, 6
	ld.h	$t2, $a2, 8
	sub.d	$t3, $zero, $a3
	sub.d	$t2, $zero, $t2
	addi.d	$a3, $a2, 12
	st.h	$t1, $a0, -6
	st.h	$t3, $a0, -8
	st.h	$t2, $a0, -10
	addi.d	$t1, $a0, -12
	addi.w	$a7, $a7, 1
	st.h	$t0, $a0, -12
	beq	$a7, $a6, .LBB11_32
.LBB11_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_22 Depth 2
                                        #     Child Loop BB11_28 Depth 2
	move	$a2, $a3
	ld.w	$a3, $a3, 0
	ld.hu	$t0, $a2, 4
	move	$a0, $t1
	st.w	$a3, $t1, -4
	bltu	$t0, $a5, .LBB11_25
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=1
	bstrpick.d	$t1, $t0, 15, 0
	div.wu	$a3, $a1, $t1
	mul.d	$t1, $a3, $t1
	sub.w	$t1, $a1, $t1
	beq	$t1, $a4, .LBB11_24
# %bb.21:                               # %.preheader.i67.preheader.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ori	$t2, $zero, 1
	.p2align	4, , 16
.LBB11_22:                              # %.preheader.i67.i
                                        #   Parent Loop BB11_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t0, 15, 0
	bstrpick.d	$t3, $t1, 15, 0
	div.du	$t5, $t4, $t3
	mul.d	$t4, $t5, $t1
	sub.d	$t0, $t0, $t4
	bstrpick.d	$t4, $t0, 15, 0
	mul.d	$t5, $a3, $t5
	add.d	$t2, $t5, $t2
	beq	$t4, $a4, .LBB11_30
# %bb.23:                               #   in Loop: Header=BB11_22 Depth=2
	div.du	$t3, $t3, $t4
	mul.d	$t4, $t3, $t0
	sub.d	$t1, $t1, $t4
	bstrpick.d	$t4, $t1, 15, 0
	mul.d	$t3, $t2, $t3
	add.d	$a3, $t3, $a3
	bne	$t4, $a4, .LBB11_22
.LBB11_24:                              #   in Loop: Header=BB11_19 Depth=1
	sub.d	$t0, $a4, $a3
.LBB11_25:                              # %inv.exit80.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ld.hu	$t1, $a2, 10
	bltu	$t1, $a5, .LBB11_18
.LBB11_26:                              #   in Loop: Header=BB11_19 Depth=1
	bstrpick.d	$t2, $t1, 15, 0
	div.wu	$a3, $a1, $t2
	mul.d	$t2, $a3, $t2
	sub.w	$t2, $a1, $t2
	beq	$t2, $a4, .LBB11_17
# %bb.27:                               # %.preheader.i81.preheader.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ori	$t3, $zero, 1
	.p2align	4, , 16
.LBB11_28:                              # %.preheader.i81.i
                                        #   Parent Loop BB11_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t1, 15, 0
	bstrpick.d	$t4, $t2, 15, 0
	div.du	$t6, $t5, $t4
	mul.d	$t5, $t6, $t2
	sub.d	$t1, $t1, $t5
	bstrpick.d	$t5, $t1, 15, 0
	mul.d	$t6, $a3, $t6
	add.d	$t3, $t6, $t3
	beq	$t5, $a4, .LBB11_31
# %bb.29:                               #   in Loop: Header=BB11_28 Depth=2
	div.du	$t4, $t4, $t5
	mul.d	$t5, $t4, $t1
	sub.d	$t2, $t2, $t5
	bstrpick.d	$t5, $t2, 15, 0
	mul.d	$t4, $t3, $t4
	add.d	$a3, $t4, $a3
	bne	$t5, $a4, .LBB11_28
	b	.LBB11_17
.LBB11_30:                              #   in Loop: Header=BB11_19 Depth=1
	move	$t0, $t2
	ld.hu	$t1, $a2, 10
	bltu	$t1, $a5, .LBB11_18
	b	.LBB11_26
.LBB11_31:                              #   in Loop: Header=BB11_19 Depth=1
	move	$t1, $t3
	b	.LBB11_18
.LBB11_32:
	ld.w	$a4, $a2, 12
	ld.hu	$a3, $a2, 16
	ori	$a5, $zero, 2
	st.w	$a4, $a0, -16
	bltu	$a3, $a5, .LBB11_38
# %bb.33:
	bstrpick.d	$a6, $a3, 15, 0
	div.wu	$a4, $a1, $a6
	mul.d	$a6, $a4, $a6
	sub.w	$a6, $a1, $a6
	ori	$a7, $zero, 1
	beq	$a6, $a7, .LBB11_37
# %bb.34:                               # %.preheader.i95.preheader.i
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB11_35:                              # %.preheader.i95.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t2, $a3, 15, 0
	bstrpick.d	$t1, $a6, 15, 0
	div.du	$t3, $t2, $t1
	mul.d	$t2, $t3, $a6
	sub.d	$a3, $a3, $t2
	bstrpick.d	$t2, $a3, 15, 0
	mul.d	$t3, $a4, $t3
	add.d	$t0, $t3, $t0
	beq	$t2, $a7, .LBB11_44
# %bb.36:                               #   in Loop: Header=BB11_35 Depth=1
	div.du	$t1, $t1, $t2
	mul.d	$t2, $t1, $a3
	sub.d	$a6, $a6, $t2
	bstrpick.d	$t2, $a6, 15, 0
	mul.d	$t1, $t0, $t1
	add.d	$a4, $t1, $a4
	bne	$t2, $a7, .LBB11_35
.LBB11_37:
	ori	$a3, $zero, 1
	sub.d	$a3, $a3, $a4
.LBB11_38:                              # %inv.exit108.i
	ld.hu	$a4, $a2, 18
	ld.hu	$a6, $a2, 22
	ld.hu	$a2, $a2, 20
	bltu	$a6, $a5, .LBB11_46
.LBB11_39:
	bstrpick.d	$a7, $a6, 15, 0
	div.wu	$a5, $a1, $a7
	mul.d	$a7, $a5, $a7
	sub.w	$a1, $a1, $a7
	ori	$a7, $zero, 1
	beq	$a1, $a7, .LBB11_43
# %bb.40:                               # %.preheader.i109.preheader.i
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB11_41:                              # %.preheader.i109.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t2, $a6, 15, 0
	bstrpick.d	$t1, $a1, 15, 0
	div.du	$t3, $t2, $t1
	mul.d	$t2, $t3, $a1
	sub.d	$a6, $a6, $t2
	bstrpick.d	$t2, $a6, 15, 0
	mul.d	$t3, $a5, $t3
	add.d	$t0, $t3, $t0
	beq	$t2, $a7, .LBB11_45
# %bb.42:                               #   in Loop: Header=BB11_41 Depth=1
	div.du	$t1, $t1, $t2
	mul.d	$t2, $t1, $a6
	sub.d	$a1, $a1, $t2
	bstrpick.d	$t2, $a1, 15, 0
	mul.d	$t1, $t0, $t1
	add.d	$a5, $t1, $a5
	bne	$t2, $a7, .LBB11_41
.LBB11_43:
	ori	$a1, $zero, 1
	sub.d	$a6, $a1, $a5
	b	.LBB11_46
.LBB11_44:
	move	$a3, $t0
	ld.hu	$a4, $a2, 18
	ld.hu	$a6, $a2, 22
	ld.hu	$a2, $a2, 20
	bgeu	$a6, $a5, .LBB11_39
	b	.LBB11_46
.LBB11_45:
	move	$a6, $t0
.LBB11_46:                              # %de_key_idea.exit
	sub.d	$a1, $zero, $a2
	sub.d	$a2, $zero, $a4
	st.h	$a6, $a0, -18
	st.h	$a1, $a0, -20
	st.h	$a2, $a0, -22
	st.h	$a3, $a0, -24
	vld	$vr0, $sp, 272
	vld	$vr1, $sp, 288
	vst	$vr0, $sp, 64
	vst	$vr1, $sp, 80
	vld	$vr0, $sp, 304
	vld	$vr1, $sp, 320
	vld	$vr2, $sp, 336
	vld	$vr3, $sp, 352
	vst	$vr0, $sp, 96
	vst	$vr1, $sp, 112
	vst	$vr2, $sp, 128
	vst	$vr3, $sp, 144
	ld.h	$a0, $sp, 368
	ld.h	$a1, $sp, 370
	ld.h	$a2, $sp, 372
	ld.h	$a3, $sp, 374
	st.h	$a0, $sp, 160
	st.h	$a1, $sp, 162
	st.h	$a2, $sp, 164
	st.h	$a3, $sp, 166
	pcalau12i	$a0, %got_pc_hi20(global_ideastruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_ideastruct)
	ld.d	$a0, $s2, 16
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 272
	move	$fp, $a0
	beqz	$a1, .LBB11_48
# %bb.47:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB11_48:
	ld.d	$a0, $s2, 16
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 272
	move	$s0, $a0
	beqz	$a1, .LBB11_50
# %bb.49:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 272
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB11_50:
	ld.d	$a0, $s2, 16
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 272
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB11_52
# %bb.51:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 272
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 272
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB11_52:
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB11_55
# %bb.53:                               # %.lr.ph.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB11_54:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 255
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	stx.b	$a0, $fp, $s1
	ld.d	$a0, $s2, 16
	addi.d	$s1, $s1, 1
	bltu	$s1, $a0, .LBB11_54
.LBB11_55:                              # %._crit_edge
	ld.w	$a0, $s2, 0
	move	$a2, $s2
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	bnez	$a0, .LBB11_128
# %bb.56:                               # %.preheader
	ori	$a1, $zero, 100
	st.d	$a1, $a2, 24
	ld.hu	$a0, $sp, 160
	ld.hu	$s3, $sp, 162
	ld.hu	$s4, $sp, 166
	ld.hu	$s1, $sp, 164
	ori	$s5, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sub.d	$s6, $s5, $a0
	sub.d	$s7, $s5, $s4
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$a0, $a0, %got_pc_lo12(global_min_ticks)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 122
	ori	$a0, $a0, 288
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s8, $zero, -8
	.p2align	4, , 16
.LBB11_57:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_61 Depth 2
                                        #       Child Loop BB11_64 Depth 3
                                        #         Child Loop BB11_67 Depth 4
                                        #       Child Loop BB11_97 Depth 3
                                        #         Child Loop BB11_100 Depth 4
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s2, $a2, 16
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	beqz	$t8, .LBB11_126
# %bb.58:                               #   in Loop: Header=BB11_57 Depth=1
	beqz	$s2, .LBB11_126
# %bb.59:                               # %.preheader21.us.us.i.preheader
                                        #   in Loop: Header=BB11_57 Depth=1
	move	$a1, $zero
	b	.LBB11_61
	.p2align	4, , 16
.LBB11_60:                              # %._crit_edge.us.us.i
                                        #   in Loop: Header=BB11_61 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $t8, .LBB11_126
.LBB11_61:                              # %.preheader21.us.us.i
                                        #   Parent Loop BB11_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_64 Depth 3
                                        #         Child Loop BB11_67 Depth 4
                                        #       Child Loop BB11_97 Depth 3
                                        #         Child Loop BB11_100 Depth 4
	move	$a2, $zero
	b	.LBB11_64
	.p2align	4, , 16
.LBB11_62:                              #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a3, $s5, $a3
.LBB11_63:                              # %cipher_idea.exit
                                        #   in Loop: Header=BB11_64 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a3, $a4, 6
	bgeu	$a2, $s2, .LBB11_94
.LBB11_64:                              #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_67 Depth 4
	add.d	$a4, $fp, $a2
	ldx.hu	$t1, $fp, $a2
	ld.hu	$a3, $a4, 2
	ld.hu	$a7, $a4, 4
	ld.hu	$t0, $a4, 6
	addi.d	$a4, $sp, 168
	move	$a5, $s8
	b	.LBB11_67
	.p2align	4, , 16
.LBB11_65:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t5, $s5, $t0
.LBB11_66:                              # %mul.exit62.i
                                        #   in Loop: Header=BB11_67 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a3
	xor	$a3, $t5, $t3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	slli.d	$t3, $a5, 31
	addi.d	$a4, $a4, 12
	bltz	$t3, .LBB11_85
.LBB11_67:                              #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        #       Parent Loop BB11_64 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a4, 0
	slli.d	$t2, $t1, 48
	beqz	$t2, .LBB11_70
# %bb.68:                               #   in Loop: Header=BB11_67 Depth=4
	beqz	$a6, .LBB11_73
# %bb.69:                               #   in Loop: Header=BB11_67 Depth=4
	bstrpick.d	$t1, $t1, 15, 0
	mul.d	$a6, $a6, $t1
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	ld.hu	$a6, $a4, 6
	slli.d	$t2, $t0, 48
	bnez	$t2, .LBB11_71
	b	.LBB11_74
	.p2align	4, , 16
.LBB11_70:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t1, $s5, $a6
	ld.hu	$a6, $a4, 6
	slli.d	$t2, $t0, 48
	beqz	$t2, .LBB11_74
.LBB11_71:                              #   in Loop: Header=BB11_67 Depth=4
	beqz	$a6, .LBB11_75
# %bb.72:                               #   in Loop: Header=BB11_67 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a6, $a6, $t0
	srli.d	$t0, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t2, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_76
	.p2align	4, , 16
.LBB11_73:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t1, $s5, $t1
	ld.hu	$a6, $a4, 6
	slli.d	$t2, $t0, 48
	bnez	$t2, .LBB11_71
.LBB11_74:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a6, $s5, $a6
	b	.LBB11_76
	.p2align	4, , 16
.LBB11_75:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a6, $s5, $t0
.LBB11_76:                              # %mul.exit54.i
                                        #   in Loop: Header=BB11_67 Depth=4
	ld.h	$t0, $a4, 4
	add.d	$t3, $t0, $a7
	ld.hu	$a7, $a4, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_78
# %bb.77:                               #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a7, $s5, $a7
	b	.LBB11_81
	.p2align	4, , 16
.LBB11_78:                              #   in Loop: Header=BB11_67 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_80
# %bb.79:                               #   in Loop: Header=BB11_67 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t4, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t4, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_81
.LBB11_80:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a7, $s5, $t0
	.p2align	4, , 16
.LBB11_81:                              # %mul.exit58.i
                                        #   in Loop: Header=BB11_67 Depth=4
	ld.h	$t0, $a4, 2
	add.d	$a3, $t0, $a3
	xor	$t4, $a6, $a3
	ld.hu	$t0, $a4, 10
	add.d	$t4, $a7, $t4
	slli.d	$t5, $t4, 48
	beqz	$t5, .LBB11_65
# %bb.82:                               #   in Loop: Header=BB11_67 Depth=4
	beqz	$t0, .LBB11_84
# %bb.83:                               #   in Loop: Header=BB11_67 Depth=4
	bstrpick.d	$t4, $t4, 15, 0
	mul.d	$t0, $t0, $t4
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_66
	.p2align	4, , 16
.LBB11_84:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t5, $s5, $t4
	b	.LBB11_66
	.p2align	4, , 16
.LBB11_85:                              #   in Loop: Header=BB11_64 Depth=3
	ld.hu	$a4, $sp, 264
	bstrpick.d	$a5, $t5, 15, 0
	bne	$t2, $a5, .LBB11_87
# %bb.86:                               #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a5, $s5, $a4
	b	.LBB11_90
	.p2align	4, , 16
.LBB11_87:                              #   in Loop: Header=BB11_64 Depth=3
	beqz	$a4, .LBB11_89
# %bb.88:                               #   in Loop: Header=BB11_64 Depth=3
	bstrpick.d	$a5, $t1, 15, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a5, $a4, 16
	bstrpick.d	$t1, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $t1, $a5
	add.d	$a5, $a4, $a5
	b	.LBB11_90
.LBB11_89:                              #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a5, $s5, $t1
	.p2align	4, , 16
.LBB11_90:                              # %mul.exit66.i
                                        #   in Loop: Header=BB11_64 Depth=3
	add.d	$a4, $s0, $a2
	st.h	$a5, $a4, 0
	ld.h	$a5, $sp, 266
	add.d	$a5, $a5, $a7
	st.h	$a5, $a4, 2
	ld.h	$a5, $sp, 268
	add.d	$a3, $a5, $a3
	st.h	$a3, $a4, 4
	ld.hu	$a3, $sp, 270
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	beq	$a6, $a5, .LBB11_62
# %bb.91:                               #   in Loop: Header=BB11_64 Depth=3
	beqz	$a3, .LBB11_93
# %bb.92:                               #   in Loop: Header=BB11_64 Depth=3
	bstrpick.d	$a5, $t0, 15, 0
	mul.d	$a3, $a3, $a5
	srli.d	$a5, $a3, 16
	bstrpick.d	$a6, $a3, 15, 0
	sub.d	$a3, $a3, $a5
	sltu	$a5, $a6, $a5
	add.d	$a3, $a3, $a5
	b	.LBB11_63
.LBB11_93:                              #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a3, $s5, $t0
	b	.LBB11_63
	.p2align	4, , 16
.LBB11_94:                              # %..preheader_crit_edge.us.us.i.preheader
                                        #   in Loop: Header=BB11_61 Depth=2
	move	$a2, $zero
	b	.LBB11_97
.LBB11_95:                              #   in Loop: Header=BB11_97 Depth=3
	sub.d	$a4, $s5, $t0
	.p2align	4, , 16
.LBB11_96:                              # %cipher_idea.exit103
                                        #   in Loop: Header=BB11_97 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a4, $a3, 6
	bgeu	$a2, $s2, .LBB11_60
.LBB11_97:                              # %..preheader_crit_edge.us.us.i
                                        #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_100 Depth 4
	add.d	$a3, $s0, $a2
	ldx.hu	$t1, $s0, $a2
	ld.hu	$a5, $a3, 2
	ld.hu	$a7, $a3, 4
	ld.hu	$t0, $a3, 6
	addi.d	$a3, $sp, 64
	addi.w	$a4, $zero, -8
	b	.LBB11_100
	.p2align	4, , 16
.LBB11_98:                              #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t5, $s5, $t0
.LBB11_99:                              # %mul.exit62.i92
                                        #   in Loop: Header=BB11_100 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a5
	xor	$a5, $t5, $t3
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 1
	slli.d	$t3, $a4, 31
	addi.d	$a3, $a3, 12
	bltz	$t3, .LBB11_119
.LBB11_100:                             #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        #       Parent Loop BB11_97 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a3, 0
	slli.d	$t2, $t1, 48
	beqz	$t2, .LBB11_103
# %bb.101:                              #   in Loop: Header=BB11_100 Depth=4
	beqz	$a6, .LBB11_104
# %bb.102:                              #   in Loop: Header=BB11_100 Depth=4
	bstrpick.d	$t1, $t1, 15, 0
	mul.d	$a6, $a6, $t1
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	b	.LBB11_105
	.p2align	4, , 16
.LBB11_103:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t1, $s5, $a6
	b	.LBB11_105
	.p2align	4, , 16
.LBB11_104:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t1, $s5, $t1
.LBB11_105:                             # %mul.exit.i80
                                        #   in Loop: Header=BB11_100 Depth=4
	ld.h	$t4, $a3, 2
	ld.h	$t2, $a3, 4
	ld.hu	$a6, $a3, 6
	slli.d	$t3, $t0, 48
	beqz	$t3, .LBB11_108
# %bb.106:                              #   in Loop: Header=BB11_100 Depth=4
	beqz	$a6, .LBB11_109
# %bb.107:                              #   in Loop: Header=BB11_100 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a6, $a6, $t0
	srli.d	$t0, $a6, 16
	bstrpick.d	$t3, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t3, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_110
	.p2align	4, , 16
.LBB11_108:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a6, $s5, $a6
	b	.LBB11_110
	.p2align	4, , 16
.LBB11_109:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a6, $s5, $t0
.LBB11_110:                             # %mul.exit54.i84
                                        #   in Loop: Header=BB11_100 Depth=4
	add.d	$t3, $t2, $a7
	ld.hu	$a7, $a3, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_112
# %bb.111:                              #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a7, $s5, $a7
	b	.LBB11_115
	.p2align	4, , 16
.LBB11_112:                             #   in Loop: Header=BB11_100 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_114
# %bb.113:                              #   in Loop: Header=BB11_100 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t5, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t5, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_115
.LBB11_114:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a7, $s5, $t0
	.p2align	4, , 16
.LBB11_115:                             # %mul.exit58.i88
                                        #   in Loop: Header=BB11_100 Depth=4
	add.d	$a5, $t4, $a5
	xor	$t4, $a6, $a5
	ld.hu	$t0, $a3, 10
	add.d	$t4, $a7, $t4
	slli.d	$t5, $t4, 48
	beqz	$t5, .LBB11_98
# %bb.116:                              #   in Loop: Header=BB11_100 Depth=4
	beqz	$t0, .LBB11_118
# %bb.117:                              #   in Loop: Header=BB11_100 Depth=4
	bstrpick.d	$t4, $t4, 15, 0
	mul.d	$t0, $t0, $t4
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_99
	.p2align	4, , 16
.LBB11_118:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t5, $s5, $t4
	b	.LBB11_99
	.p2align	4, , 16
.LBB11_119:                             #   in Loop: Header=BB11_97 Depth=3
	bstrpick.d	$a3, $t5, 15, 0
	move	$a4, $s6
	beq	$t2, $a3, .LBB11_123
# %bb.120:                              #   in Loop: Header=BB11_97 Depth=3
	beqz	$t7, .LBB11_122
# %bb.121:                              #   in Loop: Header=BB11_97 Depth=3
	bstrpick.d	$a3, $t1, 15, 0
	mul.d	$a3, $t7, $a3
	srli.d	$a4, $a3, 16
	bstrpick.d	$t1, $a3, 15, 0
	sub.d	$a3, $a3, $a4
	sltu	$a4, $t1, $a4
	add.d	$a4, $a3, $a4
	b	.LBB11_123
.LBB11_122:                             #   in Loop: Header=BB11_97 Depth=3
	sub.d	$a4, $s5, $t1
	.p2align	4, , 16
.LBB11_123:                             # %mul.exit66.i98
                                        #   in Loop: Header=BB11_97 Depth=3
	add.d	$a3, $t6, $a2
	st.h	$a4, $a3, 0
	add.d	$a4, $s3, $a7
	st.h	$a4, $a3, 2
	add.d	$a4, $s1, $a5
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	st.h	$a4, $a3, 4
	move	$a4, $s7
	beq	$a6, $a5, .LBB11_96
# %bb.124:                              #   in Loop: Header=BB11_97 Depth=3
	beqz	$s4, .LBB11_95
# %bb.125:                              #   in Loop: Header=BB11_97 Depth=3
	bstrpick.d	$a4, $t0, 15, 0
	mul.d	$a4, $s4, $a4
	srli.d	$a5, $a4, 16
	bstrpick.d	$a6, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $a6, $a5
	add.d	$a4, $a4, $a5
	b	.LBB11_96
	.p2align	4, , 16
.LBB11_126:                             # %DoIDEAIteration.exit
                                        #   in Loop: Header=BB11_57 Depth=1
	pcaddu18i	$ra, %call36(StopStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB11_128
# %bb.127:                              #   in Loop: Header=BB11_57 Depth=1
	ld.d	$a0, $a2, 24
	addi.d	$a1, $a0, 10
	st.d	$a1, $a2, 24
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB11_57
.LBB11_128:                             # %.loopexit
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ld.hu	$a0, $sp, 160
	ld.d	$a3, $a2, 24
	ori	$s5, $zero, 1
	ld.hu	$s6, $sp, 166
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sub.d	$s7, $s5, $a0
	ld.hu	$s8, $sp, 162
	ld.hu	$s3, $sp, 164
	sub.d	$s2, $s5, $s6
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI11_1)
	addi.w	$s1, $zero, -8
	move	$s4, $a2
	b	.LBB11_130
	.p2align	4, , 16
.LBB11_129:                             # %DoIDEAIteration.exit67
                                        #   in Loop: Header=BB11_130 Depth=1
	pcaddu18i	$ra, %call36(StopStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $s4, 24
	srli.d	$a1, $a3, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a3
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bceqz	$fcc0, .LBB11_199
.LBB11_130:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_134 Depth 2
                                        #       Child Loop BB11_137 Depth 3
                                        #         Child Loop BB11_140 Depth 4
                                        #       Child Loop BB11_170 Depth 3
                                        #         Child Loop BB11_173 Depth 4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s4, $s4, 16
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	beqz	$s4, .LBB11_129
# %bb.131:                              #   in Loop: Header=BB11_130 Depth=1
	beqz	$t8, .LBB11_129
# %bb.132:                              # %.preheader21.us.us.i60.preheader
                                        #   in Loop: Header=BB11_130 Depth=1
	move	$a1, $zero
	b	.LBB11_134
	.p2align	4, , 16
.LBB11_133:                             # %._crit_edge.us.us.i65
                                        #   in Loop: Header=BB11_134 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $t8, .LBB11_129
.LBB11_134:                             # %.preheader21.us.us.i60
                                        #   Parent Loop BB11_130 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_137 Depth 3
                                        #         Child Loop BB11_140 Depth 4
                                        #       Child Loop BB11_170 Depth 3
                                        #         Child Loop BB11_173 Depth 4
	move	$a2, $zero
	b	.LBB11_137
	.p2align	4, , 16
.LBB11_135:                             #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a3, $s5, $a3
.LBB11_136:                             # %cipher_idea.exit135
                                        #   in Loop: Header=BB11_137 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a3, $a4, 6
	bgeu	$a2, $s4, .LBB11_167
.LBB11_137:                             #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_140 Depth 4
	add.d	$a4, $fp, $a2
	ldx.hu	$t1, $fp, $a2
	ld.hu	$a3, $a4, 2
	ld.hu	$a7, $a4, 4
	ld.hu	$t0, $a4, 6
	addi.d	$a4, $sp, 168
	move	$a5, $s1
	b	.LBB11_140
	.p2align	4, , 16
.LBB11_138:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t5, $s5, $t0
.LBB11_139:                             # %mul.exit62.i124
                                        #   in Loop: Header=BB11_140 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a3
	xor	$a3, $t5, $t3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	slli.d	$t3, $a5, 31
	addi.d	$a4, $a4, 12
	bltz	$t3, .LBB11_158
.LBB11_140:                             #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        #       Parent Loop BB11_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a4, 0
	slli.d	$t2, $t1, 48
	beqz	$t2, .LBB11_143
# %bb.141:                              #   in Loop: Header=BB11_140 Depth=4
	beqz	$a6, .LBB11_146
# %bb.142:                              #   in Loop: Header=BB11_140 Depth=4
	bstrpick.d	$t1, $t1, 15, 0
	mul.d	$a6, $a6, $t1
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	ld.hu	$a6, $a4, 6
	slli.d	$t2, $t0, 48
	bnez	$t2, .LBB11_144
	b	.LBB11_147
	.p2align	4, , 16
.LBB11_143:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t1, $s5, $a6
	ld.hu	$a6, $a4, 6
	slli.d	$t2, $t0, 48
	beqz	$t2, .LBB11_147
.LBB11_144:                             #   in Loop: Header=BB11_140 Depth=4
	beqz	$a6, .LBB11_148
# %bb.145:                              #   in Loop: Header=BB11_140 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a6, $a6, $t0
	srli.d	$t0, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t2, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_149
	.p2align	4, , 16
.LBB11_146:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t1, $s5, $t1
	ld.hu	$a6, $a4, 6
	slli.d	$t2, $t0, 48
	bnez	$t2, .LBB11_144
.LBB11_147:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a6, $s5, $a6
	b	.LBB11_149
	.p2align	4, , 16
.LBB11_148:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a6, $s5, $t0
.LBB11_149:                             # %mul.exit54.i116
                                        #   in Loop: Header=BB11_140 Depth=4
	ld.h	$t0, $a4, 4
	add.d	$t3, $t0, $a7
	ld.hu	$a7, $a4, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_151
# %bb.150:                              #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a7, $s5, $a7
	b	.LBB11_154
	.p2align	4, , 16
.LBB11_151:                             #   in Loop: Header=BB11_140 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_153
# %bb.152:                              #   in Loop: Header=BB11_140 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t4, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t4, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_154
.LBB11_153:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a7, $s5, $t0
	.p2align	4, , 16
.LBB11_154:                             # %mul.exit58.i120
                                        #   in Loop: Header=BB11_140 Depth=4
	ld.h	$t0, $a4, 2
	add.d	$a3, $t0, $a3
	xor	$t4, $a6, $a3
	ld.hu	$t0, $a4, 10
	add.d	$t4, $a7, $t4
	slli.d	$t5, $t4, 48
	beqz	$t5, .LBB11_138
# %bb.155:                              #   in Loop: Header=BB11_140 Depth=4
	beqz	$t0, .LBB11_157
# %bb.156:                              #   in Loop: Header=BB11_140 Depth=4
	bstrpick.d	$t4, $t4, 15, 0
	mul.d	$t0, $t0, $t4
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_139
	.p2align	4, , 16
.LBB11_157:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t5, $s5, $t4
	b	.LBB11_139
	.p2align	4, , 16
.LBB11_158:                             #   in Loop: Header=BB11_137 Depth=3
	ld.hu	$a4, $sp, 264
	bstrpick.d	$a5, $t5, 15, 0
	bne	$t2, $a5, .LBB11_160
# %bb.159:                              #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a5, $s5, $a4
	b	.LBB11_163
	.p2align	4, , 16
.LBB11_160:                             #   in Loop: Header=BB11_137 Depth=3
	beqz	$a4, .LBB11_162
# %bb.161:                              #   in Loop: Header=BB11_137 Depth=3
	bstrpick.d	$a5, $t1, 15, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a5, $a4, 16
	bstrpick.d	$t1, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $t1, $a5
	add.d	$a5, $a4, $a5
	b	.LBB11_163
.LBB11_162:                             #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a5, $s5, $t1
	.p2align	4, , 16
.LBB11_163:                             # %mul.exit66.i130
                                        #   in Loop: Header=BB11_137 Depth=3
	add.d	$a4, $s0, $a2
	st.h	$a5, $a4, 0
	ld.h	$a5, $sp, 266
	add.d	$a5, $a5, $a7
	st.h	$a5, $a4, 2
	ld.h	$a5, $sp, 268
	add.d	$a3, $a5, $a3
	st.h	$a3, $a4, 4
	ld.hu	$a3, $sp, 270
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	beq	$a6, $a5, .LBB11_135
# %bb.164:                              #   in Loop: Header=BB11_137 Depth=3
	beqz	$a3, .LBB11_166
# %bb.165:                              #   in Loop: Header=BB11_137 Depth=3
	bstrpick.d	$a5, $t0, 15, 0
	mul.d	$a3, $a3, $a5
	srli.d	$a5, $a3, 16
	bstrpick.d	$a6, $a3, 15, 0
	sub.d	$a3, $a3, $a5
	sltu	$a5, $a6, $a5
	add.d	$a3, $a3, $a5
	b	.LBB11_136
.LBB11_166:                             #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a3, $s5, $t0
	b	.LBB11_136
	.p2align	4, , 16
.LBB11_167:                             # %..preheader_crit_edge.us.us.i63.preheader
                                        #   in Loop: Header=BB11_134 Depth=2
	move	$a2, $zero
	b	.LBB11_170
.LBB11_168:                             #   in Loop: Header=BB11_170 Depth=3
	sub.d	$a4, $s5, $t0
	.p2align	4, , 16
.LBB11_169:                             # %cipher_idea.exit167
                                        #   in Loop: Header=BB11_170 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a4, $a3, 6
	bgeu	$a2, $s4, .LBB11_133
.LBB11_170:                             # %..preheader_crit_edge.us.us.i63
                                        #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_173 Depth 4
	add.d	$a3, $s0, $a2
	ldx.hu	$t1, $s0, $a2
	ld.hu	$a5, $a3, 2
	ld.hu	$a7, $a3, 4
	ld.hu	$t0, $a3, 6
	addi.d	$a3, $sp, 64
	addi.w	$a4, $zero, -8
	b	.LBB11_173
	.p2align	4, , 16
.LBB11_171:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t5, $s5, $t0
.LBB11_172:                             # %mul.exit62.i156
                                        #   in Loop: Header=BB11_173 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a5
	xor	$a5, $t5, $t3
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 1
	slli.d	$t3, $a4, 31
	addi.d	$a3, $a3, 12
	bltz	$t3, .LBB11_192
.LBB11_173:                             #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        #       Parent Loop BB11_170 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a3, 0
	slli.d	$t2, $t1, 48
	beqz	$t2, .LBB11_176
# %bb.174:                              #   in Loop: Header=BB11_173 Depth=4
	beqz	$a6, .LBB11_177
# %bb.175:                              #   in Loop: Header=BB11_173 Depth=4
	bstrpick.d	$t1, $t1, 15, 0
	mul.d	$a6, $a6, $t1
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	b	.LBB11_178
	.p2align	4, , 16
.LBB11_176:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t1, $s5, $a6
	b	.LBB11_178
	.p2align	4, , 16
.LBB11_177:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t1, $s5, $t1
.LBB11_178:                             # %mul.exit.i144
                                        #   in Loop: Header=BB11_173 Depth=4
	ld.h	$t4, $a3, 2
	ld.h	$t2, $a3, 4
	ld.hu	$a6, $a3, 6
	slli.d	$t3, $t0, 48
	beqz	$t3, .LBB11_181
# %bb.179:                              #   in Loop: Header=BB11_173 Depth=4
	beqz	$a6, .LBB11_182
# %bb.180:                              #   in Loop: Header=BB11_173 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a6, $a6, $t0
	srli.d	$t0, $a6, 16
	bstrpick.d	$t3, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t3, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_183
	.p2align	4, , 16
.LBB11_181:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a6, $s5, $a6
	b	.LBB11_183
	.p2align	4, , 16
.LBB11_182:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a6, $s5, $t0
.LBB11_183:                             # %mul.exit54.i148
                                        #   in Loop: Header=BB11_173 Depth=4
	add.d	$t3, $t2, $a7
	ld.hu	$a7, $a3, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_185
# %bb.184:                              #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a7, $s5, $a7
	b	.LBB11_188
	.p2align	4, , 16
.LBB11_185:                             #   in Loop: Header=BB11_173 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_187
# %bb.186:                              #   in Loop: Header=BB11_173 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t5, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t5, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_188
.LBB11_187:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a7, $s5, $t0
	.p2align	4, , 16
.LBB11_188:                             # %mul.exit58.i152
                                        #   in Loop: Header=BB11_173 Depth=4
	add.d	$a5, $t4, $a5
	xor	$t4, $a6, $a5
	ld.hu	$t0, $a3, 10
	add.d	$t4, $a7, $t4
	slli.d	$t5, $t4, 48
	beqz	$t5, .LBB11_171
# %bb.189:                              #   in Loop: Header=BB11_173 Depth=4
	beqz	$t0, .LBB11_191
# %bb.190:                              #   in Loop: Header=BB11_173 Depth=4
	bstrpick.d	$t4, $t4, 15, 0
	mul.d	$t0, $t0, $t4
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_172
	.p2align	4, , 16
.LBB11_191:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t5, $s5, $t4
	b	.LBB11_172
	.p2align	4, , 16
.LBB11_192:                             #   in Loop: Header=BB11_170 Depth=3
	bstrpick.d	$a3, $t5, 15, 0
	move	$a4, $s7
	beq	$t2, $a3, .LBB11_196
# %bb.193:                              #   in Loop: Header=BB11_170 Depth=3
	beqz	$t7, .LBB11_195
# %bb.194:                              #   in Loop: Header=BB11_170 Depth=3
	bstrpick.d	$a3, $t1, 15, 0
	mul.d	$a3, $t7, $a3
	srli.d	$a4, $a3, 16
	bstrpick.d	$t1, $a3, 15, 0
	sub.d	$a3, $a3, $a4
	sltu	$a4, $t1, $a4
	add.d	$a4, $a3, $a4
	b	.LBB11_196
.LBB11_195:                             #   in Loop: Header=BB11_170 Depth=3
	sub.d	$a4, $s5, $t1
	.p2align	4, , 16
.LBB11_196:                             # %mul.exit66.i162
                                        #   in Loop: Header=BB11_170 Depth=3
	add.d	$a3, $t6, $a2
	st.h	$a4, $a3, 0
	add.d	$a4, $s8, $a7
	st.h	$a4, $a3, 2
	add.d	$a4, $s3, $a5
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	st.h	$a4, $a3, 4
	move	$a4, $s2
	beq	$a6, $a5, .LBB11_169
# %bb.197:                              #   in Loop: Header=BB11_170 Depth=3
	beqz	$s6, .LBB11_168
# %bb.198:                              #   in Loop: Header=BB11_170 Depth=3
	bstrpick.d	$a4, $t0, 15, 0
	mul.d	$a4, $s6, $a4
	srli.d	$a5, $a4, 16
	bstrpick.d	$a6, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $a6, $a5
	add.d	$a4, $a4, $a5
	b	.LBB11_169
.LBB11_199:
	addi.d	$a1, $sp, 272
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 272
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 272
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s4, 32
	bnez	$a0, .LBB11_201
# %bb.200:
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 0
.LBB11_201:
	fld.d	$fs2, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end11:
	.size	DoIDEA, .Lfunc_end11-DoIDEA
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoHuffman
.LCPI12_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI12_1:
	.dword	0x407f400000000000              # double 500
	.text
	.globl	DoHuffman
	.p2align	5
	.type	DoHuffman,@function
DoHuffman:                              # @DoHuffman
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_huffstruct)
	ld.d	$fp, $a0, %got_pc_lo12(global_huffstruct)
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	move	$s5, $a0
	beqz	$a1, .LBB12_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_2:
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	move	$s0, $a0
	beqz	$a1, .LBB12_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_4:
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	move	$s1, $a0
	beqz	$a1, .LBB12_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_6:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2048
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	pcalau12i	$a2, %pc_hi20(hufftree)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(hufftree)
	beqz	$a1, .LBB12_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_8:
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 16
	addi.d	$s6, $a0, -1
	ori	$s3, $zero, 2
	pcalau12i	$a0, %pc_hi20(wordcatarray)
	addi.d	$s8, $a0, %pc_lo12(wordcatarray)
	move	$s0, $zero
	addi.d	$fp, $sp, 56
	ori	$s1, $zero, 32
	ori	$s4, $zero, 10
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_9:                               #   in Loop: Header=BB12_10 Depth=1
	add.d	$s5, $s5, $s7
	add.d	$s0, $s7, $s0
	st.b	$s4, $s5, -1
	bgeu	$s0, $s6, .LBB12_14
.LBB12_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_12 Depth 2
	ori	$a0, $zero, 494
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 6
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $s0, $a0
	sltu	$a1, $s6, $a1
	sub.d	$a2, $s6, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$s7, $a2, $a0
	bltu	$s7, $s3, .LBB12_9
# %bb.11:                               #   in Loop: Header=BB12_10 Depth=1
	move	$s4, $zero
	move	$s2, $s5
	.p2align	4, , 16
.LBB12_12:                              #   Parent Loop BB12_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 50
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s3, $s8, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a2, $a0, 1
	addi.d	$a0, $sp, 56
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	stx.b	$s1, $a0, $fp
	add.d	$a0, $a1, $s4
	slt	$a0, $s7, $a0
	sub.d	$a2, $s7, $s4
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$s3, $a2, $a0
	addi.d	$a1, $sp, 56
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	add.d	$s4, $s3, $s4
	add.d	$s2, $s2, $s3
	blt	$s4, $s7, .LBB12_12
# %bb.13:                               # %create_text_line.exit.i
                                        #   in Loop: Header=BB12_10 Depth=1
	ori	$s3, $zero, 2
	ori	$s4, $zero, 10
	b	.LBB12_9
.LBB12_14:                              # %create_text_block.exit
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 16
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $s3, $a0
	st.b	$zero, $a0, -1
	ld.w	$a0, $s1, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB12_18
# %bb.15:                               # %.preheader
	ori	$a4, $zero, 100
	st.d	$a4, $s1, 24
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$fp, $a0, %got_pc_lo12(global_min_ticks)
	lu12i.w	$a0, 122
	ori	$s0, $a0, 288
	.p2align	4, , 16
.LBB12_16:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s1, 16
	ld.d	$a5, $s6, %pc_lo12(hufftree)
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(DoHuffIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	bltu	$a1, $a0, .LBB12_18
# %bb.17:                               #   in Loop: Header=BB12_16 Depth=1
	ld.d	$a0, $s1, 24
	addi.d	$a4, $a0, 10
	st.d	$a4, $s1, 24
	bltu	$a4, $s0, .LBB12_16
.LBB12_18:                              # %.loopexit
	move	$s2, $zero
	ld.d	$a4, $s1, 24
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(.LCPI12_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI12_1)
	movgr2fr.d	$fs0, $zero
	lu52i.d	$fp, $zero, 1107
	lu12i.w	$s0, 275200
	.p2align	4, , 16
.LBB12_19:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s1, 16
	ld.d	$a5, $s6, %pc_lo12(hufftree)
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(DoHuffIteration)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 24
	srli.d	$a1, $a4, 32
	or	$a1, $a1, $fp
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a4
	bstrins.d	$a1, $s0, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s2, $a0, $s2
	bcnez	$fcc0, .LBB12_19
# %bb.20:
	addi.d	$a1, $sp, 52
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(hufftree)
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s1, 32
	bnez	$a0, .LBB12_22
# %bb.21:
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 0
.LBB12_22:
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end12:
	.size	DoHuffman, .Lfunc_end12-DoHuffman
                                        # -- End function
	.p2align	5                               # -- Begin function DoHuffIteration
	.type	DoHuffIteration,@function
DoHuffIteration:                        # @DoHuffIteration
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	beqz	$s0, .LBB13_50
# %bb.1:                                # %.preheader154.lr.ph
	move	$t6, $s4
	move	$t5, $s2
	move	$t4, $s1
	move	$a4, $s0
	srli.d	$a0, $s1, 1
	andi	$a1, $s1, 1
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a0, $s1, 0
	movgr2fr.d	$fa1, $s1
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a0
	fsel	$fs0, $fa1, $fa0, $fcc0
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1024
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $fp, 24
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$t7, $fp, 8
	addi.d	$s7, $sp, 137
	ori	$a3, $zero, 256
	lu12i.w	$a1, -2
	ori	$a1, $a1, 3072
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$s6, $a0, 1028
	ori	$s0, $a0, 1048
	ori	$s8, $a0, 1068
	ori	$s4, $a0, 1088
	vrepli.b	$vr5, 0
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2048
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$t8, $a0, 2052
	lu12i.w	$a0, 7
	ori	$ra, $a0, 3328
	movgr2fr.w	$fs1, $zero
	addi.w	$a5, $zero, -1
	ori	$s5, $zero, 20
	addi.d	$s1, $sp, 138
	ori	$s2, $zero, 1
	vldi	$vr1, -1168
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t5, $sp, 112                   # 8-byte Folded Spill
	st.d	$t6, $sp, 104                   # 8-byte Folded Spill
	st.d	$t7, $sp, 72                    # 8-byte Folded Spill
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ori	$a3, $zero, 256
	beqz	$a4, .LBB13_50
.LBB13_3:                               # %vector.ph242
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
                                        #     Child Loop BB13_6 Depth 2
                                        #     Child Loop BB13_9 Depth 2
                                        #     Child Loop BB13_19 Depth 2
                                        #     Child Loop BB13_22 Depth 2
                                        #       Child Loop BB13_24 Depth 3
                                        #       Child Loop BB13_30 Depth 3
                                        #     Child Loop BB13_39 Depth 2
                                        #       Child Loop BB13_41 Depth 3
                                        #       Child Loop BB13_42 Depth 3
                                        #     Child Loop BB13_47 Depth 2
                                        #       Child Loop BB13_49 Depth 3
	move	$a0, $zero
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_4:                               # %vector.body243
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a2, $a0, 1
	st.w	$zero, $a1, -20
	st.w	$zero, $a1, 0
	st.b	$a0, $a1, -24
	st.b	$a2, $a1, -4
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 40
	bne	$a0, $a3, .LBB13_4
# %bb.5:                                # %.preheader153
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a0, $t6
	move	$a1, $t4
	beqz	$t4, .LBB13_7
	.p2align	4, , 16
.LBB13_6:                               # %.lr.ph
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a0, 0
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 2
	add.d	$a2, $fp, $a2
	fld.s	$fa0, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB13_6
.LBB13_7:                               # %vector.body.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a4, $a4, -1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_8:                               # %pred.store.continue240
                                        #   in Loop: Header=BB13_9 Depth=2
	addi.d	$a0, $a0, 80
	beqz	$a0, .LBB13_17
.LBB13_9:                               # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	fldx.s	$fa4, $a1, $s6
	fldx.s	$fa2, $a1, $s0
	fldx.s	$fa1, $a1, $s8
	fldx.s	$fa0, $a1, $s4
	vori.b	$vr3, $vr4, 0
	vextrins.w	$vr3, $vr2, 16
	vextrins.w	$vr3, $vr1, 32
	vextrins.w	$vr3, $vr0, 48
	vfcmp.cune.s	$vr3, $vr3, $vr5
	vpickve2gr.w	$a2, $vr3, 0
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_13
# %bb.10:                               # %pred.store.continue
                                        #   in Loop: Header=BB13_9 Depth=2
	vpickve2gr.w	$a2, $vr3, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_14
.LBB13_11:                              # %pred.store.continue236
                                        #   in Loop: Header=BB13_9 Depth=2
	vpickve2gr.w	$a2, $vr3, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_15
.LBB13_12:                              # %pred.store.continue238
                                        #   in Loop: Header=BB13_9 Depth=2
	vpickve2gr.w	$a2, $vr3, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_8
	b	.LBB13_16
	.p2align	4, , 16
.LBB13_13:                              # %pred.store.if
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa4, $fa4, $fs0
	fstx.s	$fa4, $a1, $s6
	vpickve2gr.w	$a2, $vr3, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_11
.LBB13_14:                              # %pred.store.if235
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa2, $fa2, $fs0
	fstx.s	$fa2, $a1, $s0
	vpickve2gr.w	$a2, $vr3, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_12
.LBB13_15:                              # %pred.store.if237
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa1, $fa1, $fs0
	fstx.s	$fa1, $a1, $s8
	vpickve2gr.w	$a2, $vr3, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_8
.LBB13_16:                              # %pred.store.if239
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa0, $fa0, $fs0
	fstx.s	$fa0, $a1, $s4
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_17:                              # %middle.block
                                        #   in Loop: Header=BB13_3 Depth=1
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB13_19
	.p2align	4, , 16
.LBB13_18:                              #   in Loop: Header=BB13_19 Depth=2
	addi.d	$a0, $a0, 20
	stptr.w	$a2, $a1, 10248
	beqz	$a0, .LBB13_21
.LBB13_19:                              #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	fldx.s	$fa0, $a1, $t8
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	move	$a2, $ra
	bcnez	$fcc0, .LBB13_18
# %bb.20:                               #   in Loop: Header=BB13_19 Depth=2
	addi.w	$a2, $zero, -1
	stptr.d	$a2, $a1, 10252
	b	.LBB13_18
	.p2align	4, , 16
.LBB13_21:                              # %.preheader151.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	ori	$a1, $zero, 256
	ori	$a0, $zero, 255
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 104                   # 8-byte Folded Reload
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB13_22:                              # %.preheader151
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_24 Depth 3
                                        #       Child Loop BB13_30 Depth 3
	move	$a3, $zero
	vldi	$vr0, -1280
	move	$a4, $a1
	move	$a5, $t7
	move	$a2, $t1
	b	.LBB13_24
	.p2align	4, , 16
.LBB13_23:                              #   in Loop: Header=BB13_24 Depth=3
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 20
	beqz	$a4, .LBB13_27
.LBB13_24:                              #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a5, 0
	bgez	$a6, .LBB13_23
# %bb.25:                               #   in Loop: Header=BB13_24 Depth=3
	fld.s	$fa1, $a5, -4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB13_23
# %bb.26:                               #   in Loop: Header=BB13_24 Depth=3
	fmov.s	$fa0, $fa1
	move	$a2, $a3
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_27:                              #   in Loop: Header=BB13_22 Depth=2
	addi.w	$a3, $zero, -1
	beq	$a2, $a3, .LBB13_36
# %bb.28:                               # %.preheader149.preheader
                                        #   in Loop: Header=BB13_22 Depth=2
	move	$a4, $zero
	move	$a5, $zero
	bstrpick.d	$a6, $a2, 31, 0
	vldi	$vr1, -1280
	move	$a7, $t7
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_29:                              #   in Loop: Header=BB13_30 Depth=3
	addi.d	$a5, $a5, 1
	addi.w	$a4, $a4, 1
	addi.d	$a7, $a7, 20
	beq	$a1, $a5, .LBB13_34
.LBB13_30:                              # %.preheader149
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a7, 0
	bgez	$t0, .LBB13_29
# %bb.31:                               # %.preheader149
                                        #   in Loop: Header=BB13_30 Depth=3
	beq	$a6, $a5, .LBB13_29
# %bb.32:                               #   in Loop: Header=BB13_30 Depth=3
	fld.s	$fa2, $a7, -4
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB13_29
# %bb.33:                               #   in Loop: Header=BB13_30 Depth=3
	fmov.s	$fa1, $fa2
	move	$a3, $a4
	b	.LBB13_29
	.p2align	4, , 16
.LBB13_34:                              #   in Loop: Header=BB13_22 Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB13_36
# %bb.35:                               #   in Loop: Header=BB13_22 Depth=2
	addi.d	$a0, $a0, 1
	mul.d	$a4, $a2, $s5
	add.d	$a4, $fp, $a4
	st.w	$a0, $a4, 8
	mul.d	$a4, $a3, $s5
	add.d	$a4, $fp, $a4
	st.w	$a0, $a4, 8
	fadd.s	$fa0, $fa0, $fa1
	mul.d	$a4, $a0, $s5
	add.d	$a4, $fp, $a4
	fst.s	$fa0, $a4, 4
	st.w	$a2, $a4, 12
	st.w	$a3, $a4, 16
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	st.w	$a2, $a4, 8
	addi.d	$a1, $a1, 1
	b	.LBB13_22
	.p2align	4, , 16
.LBB13_36:                              #   in Loop: Header=BB13_3 Depth=1
	beqz	$t4, .LBB13_43
# %bb.37:                               # %.lr.ph177.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a2, $zero
	move	$a1, $zero
	vldi	$vr1, -1168
	b	.LBB13_39
	.p2align	4, , 16
.LBB13_38:                              # %._crit_edge
                                        #   in Loop: Header=BB13_39 Depth=2
	addi.d	$a2, $a2, 1
	beq	$a2, $t4, .LBB13_44
.LBB13_39:                              # %.lr.ph177
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_41 Depth 3
                                        #       Child Loop BB13_42 Depth 3
	ldx.b	$a6, $t6, $a2
	slli.d	$a3, $a6, 4
	alsl.d	$a3, $a6, $a3, 2
	add.d	$a3, $fp, $a3
	ld.w	$a5, $a3, 8
	addi.w	$a4, $zero, -2
	beq	$a5, $a4, .LBB13_38
# %bb.40:                               # %.lr.ph168.preheader
                                        #   in Loop: Header=BB13_39 Depth=2
	move	$a3, $zero
	andi	$a6, $a6, 255
	ext.w.b	$a6, $a6
	.p2align	4, , 16
.LBB13_41:                              # %.lr.ph168
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a7, $a5, 4
	alsl.d	$a7, $a5, $a7, 2
	add.d	$a7, $fp, $a7
	ld.w	$t0, $a7, 12
	xor	$t0, $t0, $a6
	move	$a6, $a5
	ld.w	$a5, $a7, 8
	sltui	$a7, $t0, 1
	xori	$a7, $a7, 49
	stx.b	$a7, $a3, $s1
	addi.d	$a3, $a3, 1
	bne	$a5, $a4, .LBB13_41
	.p2align	4, , 16
.LBB13_42:                              # %.lr.ph172
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a4, $s7, $a3
	addi.d	$a5, $a3, -1
	addi.d	$a3, $a4, -49
	bstrpick.d	$a4, $a1, 31, 3
	ldx.b	$a6, $s3, $a4
	sltui	$a3, $a3, 1
	andi	$a7, $a1, 7
	sll.d	$a7, $s2, $a7
	andn	$t0, $a6, $a7
	or	$a6, $a6, $a7
	masknez	$a7, $t0, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a7
	stx.b	$a3, $s3, $a4
	addi.d	$a1, $a1, 1
	move	$a3, $a5
	bnez	$a5, .LBB13_42
	b	.LBB13_38
	.p2align	4, , 16
.LBB13_43:                              #   in Loop: Header=BB13_3 Depth=1
	move	$a1, $zero
	vldi	$vr1, -1168
.LBB13_44:                              # %.preheader150
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a4, $a0, 4
	alsl.d	$a4, $a0, $a4, 2
	add.d	$a4, $fp, $a4
	addi.d	$a5, $a4, 12
	b	.LBB13_47
	.p2align	4, , 16
.LBB13_45:                              #   in Loop: Header=BB13_47 Depth=2
	move	$t2, $a4
.LBB13_46:                              # %._crit_edge183
                                        #   in Loop: Header=BB13_47 Depth=2
	ld.b	$a6, $t2, 0
	stx.b	$a6, $t5, $a3
	addi.d	$a3, $a3, 1
	bge	$a2, $a1, .LBB13_2
.LBB13_47:                              #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_49 Depth 3
	ld.w	$a7, $a5, 0
	addi.w	$a6, $zero, -1
	beq	$a7, $a6, .LBB13_45
# %bb.48:                               # %.lr.ph182.preheader
                                        #   in Loop: Header=BB13_47 Depth=2
	move	$a7, $a2
	move	$t1, $a5
	move	$t0, $a0
	.p2align	4, , 16
.LBB13_49:                              # %.lr.ph182
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t2, $a2, 31, 3
	ldx.bu	$t2, $s3, $t2
	andi	$t3, $a7, 7
	srl.w	$t2, $t2, $t3
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	mul.d	$t0, $t0, $s5
	add.d	$t0, $fp, $t0
	addi.d	$t0, $t0, 16
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	ld.w	$t0, $t0, 0
	mul.d	$t1, $t0, $s5
	add.d	$t2, $fp, $t1
	ld.w	$t3, $t2, 12
	addi.d	$a2, $a2, 1
	addi.d	$t1, $t2, 12
	addi.d	$a7, $a7, 1
	bne	$t3, $a6, .LBB13_49
	b	.LBB13_46
.LBB13_50:                              # %._crit_edge187
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end13:
	.size	DoHuffIteration, .Lfunc_end13-DoHuffIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoNNET
.LCPI14_0:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI14_1:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI14_2:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	DoNNET
	.p2align	5
	.type	DoNNET,@function
DoNNET:                                 # @DoNNET
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	ori	$a0, $zero, 3
	ori	$s0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(inpath)
	ld.d	$a0, $a0, %pc_lo12(inpath)
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_5
# %bb.1:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	addi.d	$a2, $sp, 132
	addi.d	$a3, $sp, 128
	addi.d	$a4, $sp, 124
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB14_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a0, %pc_hi20(numpats)
	addi.d	$s0, $a0, %pc_lo12(numpats)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB14_7
# %bb.3:
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 11
	blt	$a0, $a1, .LBB14_8
# %bb.4:                                # %.thread84.i
	ori	$a0, $zero, 10
	st.w	$a0, $s0, 0
	b	.LBB14_9
.LBB14_5:
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	b	.LBB14_90
.LBB14_6:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB14_91
.LBB14_7:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB14_91
.LBB14_8:
	blez	$a0, .LBB14_88
.LBB14_9:                               # %.preheader73.i.preheader
	pcalau12i	$a0, %pc_hi20(in_pats)
	addi.d	$s4, $a0, %pc_lo12(in_pats)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$s1, $a0, %pc_lo12(.L.str.70)
	ori	$s5, $zero, 5
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, -209716
	lu52i.d	$a0, $a0, 1022
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a0, $a0, 1019
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(.LCPI14_0)
	pcalau12i	$a0, %pc_hi20(.LCPI14_1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_pats)
	addi.d	$a0, $a0, %pc_lo12(out_pats)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s3, $zero
.LBB14_10:                              # %.preheader73.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_12 Depth 2
	ld.w	$a0, $sp, 128
	ori	$a1, $zero, 280
	mul.d	$s2, $s3, $a1
	blez	$a0, .LBB14_14
# %bb.11:                               # %.lr.ph.i
                                        #   in Loop: Header=BB14_10 Depth=1
	move	$s7, $zero
	add.d	$s8, $s4, $s2
	.p2align	4, , 16
.LBB14_12:                              #   Parent Loop BB14_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 116
	addi.d	$a4, $sp, 112
	addi.d	$a5, $sp, 108
	addi.d	$a6, $sp, 104
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB14_89
# %bb.13:                               #   in Loop: Header=BB14_12 Depth=2
	ld.w	$a0, $sp, 132
	ld.w	$a1, $sp, 120
	mul.w	$a0, $a0, $s7
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	ld.w	$a1, $sp, 116
	alsl.d	$a2, $a0, $s8, 3
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $s8, $a0
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 112
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 8
	ld.w	$a1, $sp, 108
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 16
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 104
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 24
	ld.w	$a1, $sp, 128
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.w	$s7, $s7, 1
	fst.d	$fa0, $a2, 32
	blt	$s7, $a1, .LBB14_12
.LBB14_14:                              # %.preheader.i
                                        #   in Loop: Header=BB14_10 Depth=1
	vldx	$vr0, $s4, $s2
	add.d	$a0, $s4, $s2
	vld	$vr4, $sp, 64                   # 16-byte Folded Reload
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_16
# %bb.15:                               # %pred.store.if
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 0, 0
.LBB14_16:                              # %pred.store.continue
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_18
# %bb.17:                               # %pred.store.if31
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 8, 1
.LBB14_18:                              # %pred.store.continue32
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr0, $a0, 16
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_20
# %bb.19:                               # %pred.store.if33
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 16, 0
.LBB14_20:                              # %pred.store.continue34
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_22
# %bb.21:                               # %pred.store.if35
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 24, 1
.LBB14_22:                              # %pred.store.continue36
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr0, $a0, 32
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_24
# %bb.23:                               # %pred.store.if.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 32, 0
.LBB14_24:                              # %pred.store.continue.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_26
# %bb.25:                               # %pred.store.if31.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 40, 1
.LBB14_26:                              # %pred.store.continue32.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr0, $a0, 48
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_28
# %bb.27:                               # %pred.store.if33.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 48, 0
.LBB14_28:                              # %pred.store.continue34.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_30
# %bb.29:                               # %pred.store.if35.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 56, 1
.LBB14_30:                              # %pred.store.continue36.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr0, $a0, 64
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_32
# %bb.31:                               # %pred.store.if.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 64, 0
.LBB14_32:                              # %pred.store.continue.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_34
# %bb.33:                               # %pred.store.if31.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 72, 1
.LBB14_34:                              # %pred.store.continue32.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr0, $a0, 80
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_36
# %bb.35:                               # %pred.store.if33.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 80, 0
.LBB14_36:                              # %pred.store.continue34.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_38
# %bb.37:                               # %pred.store.if35.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 88, 1
.LBB14_38:                              # %pred.store.continue36.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr1, $a0, 96
	vld	$vr0, $a0, 112
	vfcmp.cle.d	$vr3, $vr4, $vr1
	vfcmp.cle.d	$vr1, $vr1, $vr5
	vor.v	$vr2, $vr1, $vr3
	vpickve2gr.d	$a1, $vr2, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr1, $vr5, $vr4, $vr3
	beqz	$a1, .LBB14_40
# %bb.39:                               # %pred.store.if.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 96, 0
.LBB14_40:                              # %pred.store.continue.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr2, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_42
# %bb.41:                               # %pred.store.if31.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 104, 1
.LBB14_42:                              # %pred.store.continue32.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_44
# %bb.43:                               # %pred.store.if33.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 112, 0
.LBB14_44:                              # %pred.store.continue34.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_46
# %bb.45:                               # %pred.store.if35.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 120, 1
.LBB14_46:                              # %pred.store.continue36.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr1, $a0, 128
	vld	$vr0, $a0, 144
	vfcmp.cle.d	$vr3, $vr4, $vr1
	vfcmp.cle.d	$vr1, $vr1, $vr5
	vor.v	$vr2, $vr1, $vr3
	vpickve2gr.d	$a1, $vr2, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr1, $vr5, $vr4, $vr3
	beqz	$a1, .LBB14_48
# %bb.47:                               # %pred.store.if.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 128, 0
.LBB14_48:                              # %pred.store.continue.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr2, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_50
# %bb.49:                               # %pred.store.if31.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 136, 1
.LBB14_50:                              # %pred.store.continue32.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_52
# %bb.51:                               # %pred.store.if33.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 144, 0
.LBB14_52:                              # %pred.store.continue34.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_54
# %bb.53:                               # %pred.store.if35.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 152, 1
.LBB14_54:                              # %pred.store.continue36.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr1, $a0, 160
	vld	$vr0, $a0, 176
	vfcmp.cle.d	$vr3, $vr4, $vr1
	vfcmp.cle.d	$vr1, $vr1, $vr5
	vor.v	$vr2, $vr1, $vr3
	vpickve2gr.d	$a1, $vr2, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr1, $vr5, $vr4, $vr3
	beqz	$a1, .LBB14_56
# %bb.55:                               # %pred.store.if.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 160, 0
.LBB14_56:                              # %pred.store.continue.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr2, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_58
# %bb.57:                               # %pred.store.if31.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 168, 1
.LBB14_58:                              # %pred.store.continue32.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_60
# %bb.59:                               # %pred.store.if33.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 176, 0
.LBB14_60:                              # %pred.store.continue34.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_62
# %bb.61:                               # %pred.store.if35.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 184, 1
.LBB14_62:                              # %pred.store.continue36.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr1, $a0, 192
	vld	$vr0, $a0, 208
	vfcmp.cle.d	$vr3, $vr4, $vr1
	vfcmp.cle.d	$vr1, $vr1, $vr5
	vor.v	$vr2, $vr1, $vr3
	vpickve2gr.d	$a1, $vr2, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr1, $vr5, $vr4, $vr3
	beqz	$a1, .LBB14_64
# %bb.63:                               # %pred.store.if.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 192, 0
.LBB14_64:                              # %pred.store.continue.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr2, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_66
# %bb.65:                               # %pred.store.if31.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 200, 1
.LBB14_66:                              # %pred.store.continue32.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	beqz	$a1, .LBB14_68
# %bb.67:                               # %pred.store.if33.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 208, 0
.LBB14_68:                              # %pred.store.continue34.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_70
# %bb.69:                               # %pred.store.if35.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 216, 1
.LBB14_70:                              # %pred.store.continue36.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vld	$vr1, $a0, 224
	vld	$vr0, $a0, 240
	vfcmp.cle.d	$vr3, $vr4, $vr1
	vfcmp.cle.d	$vr1, $vr1, $vr5
	vor.v	$vr2, $vr1, $vr3
	vpickve2gr.d	$a1, $vr2, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr1, $vr5, $vr4, $vr3
	beqz	$a1, .LBB14_72
# %bb.71:                               # %pred.store.if.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 224, 0
.LBB14_72:                              # %pred.store.continue.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr2, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_74
# %bb.73:                               # %pred.store.if31.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr1, $a0, 232, 1
.LBB14_74:                              # %pred.store.continue32.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vfcmp.cle.d	$vr2, $vr4, $vr0
	vfcmp.cle.d	$vr0, $vr0, $vr5
	vor.v	$vr1, $vr0, $vr2
	vpickve2gr.d	$a1, $vr1, 0
	andi	$a1, $a1, 1
	vbitsel.v	$vr0, $vr5, $vr4, $vr2
	bnez	$a1, .LBB14_77
# %bb.75:                               # %pred.store.continue34.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_78
.LBB14_76:                              # %scalar.ph
                                        #   in Loop: Header=BB14_10 Depth=1
	fld.d	$fa1, $a0, 256
	fld.d	$fa0, $s6, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB14_79
	b	.LBB14_80
.LBB14_77:                              # %pred.store.if33.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 240, 0
	vpickve2gr.d	$a1, $vr1, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_76
.LBB14_78:                              # %pred.store.if35.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vstelm.d	$vr0, $a0, 248, 1
	fld.d	$fa1, $a0, 256
	fld.d	$fa0, $s6, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_80
.LBB14_79:                              #   in Loop: Header=BB14_10 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(.LCPI14_1)
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_81
.LBB14_80:                              # %.sink.split.i
                                        #   in Loop: Header=BB14_10 Depth=1
	fst.d	$fa0, $a0, 256
.LBB14_81:                              # %scalar.ph.1
                                        #   in Loop: Header=BB14_10 Depth=1
	fld.d	$fa1, $a0, 264
	fld.d	$fa0, $s6, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_83
# %bb.82:                               #   in Loop: Header=BB14_10 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(.LCPI14_1)
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_84
.LBB14_83:                              # %.sink.split.i.1
                                        #   in Loop: Header=BB14_10 Depth=1
	fst.d	$fa0, $a0, 264
.LBB14_84:                              # %scalar.ph.2
                                        #   in Loop: Header=BB14_10 Depth=1
	fld.d	$fa1, $a0, 272
	fld.d	$fa0, $s6, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_86
# %bb.85:                               #   in Loop: Header=BB14_10 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(.LCPI14_1)
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_87
.LBB14_86:                              # %.sink.split.i.2
                                        #   in Loop: Header=BB14_10 Depth=1
	fst.d	$fa0, $a0, 272
.LBB14_87:                              #   in Loop: Header=BB14_10 Depth=1
	addi.d	$a0, $sp, 92
	st.d	$a0, $sp, 8
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 116
	addi.d	$a4, $sp, 112
	addi.d	$a5, $sp, 108
	addi.d	$a6, $sp, 104
	addi.d	$a7, $sp, 100
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 120
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $s3, 6
	ld.w	$a1, $sp, 116
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a0
	fstx.d	$fa0, $a3, $a0
	ld.w	$a0, $sp, 112
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 8
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $sp, 108
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 16
	ld.w	$a1, $sp, 104
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 24
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 100
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 32
	ld.w	$a1, $sp, 96
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 40
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 92
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 48
	ld.w	$a1, $s0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$s3, $s3, 1
	fst.d	$fa0, $a2, 56
	blt	$s3, $a1, .LBB14_10
.LBB14_88:                              # %read_data_file.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(global_nnetstruct)
	ld.d	$s0, $a0, %got_pc_lo12(global_nnetstruct)
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB14_95
	b	.LBB14_92
.LBB14_89:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
.LBB14_90:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB14_91:
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(global_nnetstruct)
	ld.d	$s0, $a0, %got_pc_lo12(global_nnetstruct)
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB14_95
.LBB14_92:                              # %.preheader
	ori	$a0, $zero, 1
	st.d	$a0, $s0, 16
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$fp, $a0, %got_pc_lo12(global_min_ticks)
	lu12i.w	$a0, 122
	ori	$s1, $a0, 288
	.p2align	4, , 16
.LBB14_93:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(DoNNetIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	bltu	$a1, $a0, .LBB14_95
# %bb.94:                               #   in Loop: Header=BB14_93 Depth=1
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 16
	bltu	$a0, $s1, .LBB14_93
.LBB14_95:                              # %.loopexit.preheader
	move	$fp, $zero
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI14_2)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI14_2)
	lu52i.d	$s1, $zero, 1107
	lu12i.w	$s2, 275200
	.p2align	4, , 16
.LBB14_96:                              # %.loopexit
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(DoNNetIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s1
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs1
	bstrins.d	$a1, $s2, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	vldi	$vr0, -984
	fcmp.clt.d	$fcc0, $fs0, $fa0
	add.d	$fp, $a0, $fp
	bcnez	$fcc0, .LBB14_96
# %bb.97:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s0, 24
	bnez	$a0, .LBB14_99
# %bb.98:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
.LBB14_99:
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end14:
	.size	DoNNET, .Lfunc_end14-DoNNET
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoNNetIteration
.LCPI15_0:
	.dword	0x40f86a0000000000              # double 1.0E+5
.LCPI15_1:
	.dword	0x40c3880000000000              # double 1.0E+4
.LCPI15_2:
	.dword	0x3fb70a3d70a3d70a              # double 0.089999999999999996
.LCPI15_3:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.p2align	5
	.type	DoNNetIteration,@function
DoNNetIteration:                        # @DoNNetIteration
# %bb.0:
	addi.d	$sp, $sp, -1056
	st.d	$ra, $sp, 1048                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s5, $sp, 992                   # 8-byte Folded Spill
	st.d	$s6, $sp, 984                   # 8-byte Folded Spill
	st.d	$s7, $sp, 976                   # 8-byte Folded Spill
	st.d	$s8, $sp, 968                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 960                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 952                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 944                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 936                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 928                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 920                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 904                  # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$s1, .LBB15_95
# %bb.1:
	lu12i.w	$a0, 24
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI15_0)
	ori	$s2, $a0, 1696
	pcalau12i	$a0, %pc_hi20(mid_wts)
	addi.d	$s6, $a0, %pc_lo12(mid_wts)
	ori	$s7, $zero, 280
	pcalau12i	$a0, %pc_hi20(out_wts)
	addi.d	$s8, $a0, %pc_lo12(out_wts)
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI15_1)
	lu12i.w	$a0, -1
	ori	$a0, $a0, 1856
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr5, 0
	ori	$fp, $zero, 2496
	lu12i.w	$a0, 461373
	ori	$a0, $a0, 1802
	lu32i.d	$a0, 461373
	lu52i.d	$a1, $a0, 1019
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	vst	$vr5, $sp, 96                   # 16-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_2:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB15_5 Depth=1
	st.w	$a0, $a3, %pc_lo12(numpasses)
.LBB15_3:                               # %._crit_edge.thread.i
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(worst_error)
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	fdiv.d	$fa0, $fa1, $fa0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(average_error)
	ori	$a0, $zero, 1
.LBB15_4:                               # %.loopexit
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s1, $s1, -1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a2, %pc_lo12(learned)
	beqz	$s1, .LBB15_95
.LBB15_5:                               # %.preheader22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
                                        #     Child Loop BB15_8 Depth 2
                                        #     Child Loop BB15_10 Depth 2
                                        #     Child Loop BB15_12 Depth 2
                                        #     Child Loop BB15_14 Depth 2
                                        #     Child Loop BB15_16 Depth 2
                                        #     Child Loop BB15_18 Depth 2
                                        #     Child Loop BB15_20 Depth 2
                                        #     Child Loop BB15_22 Depth 2
                                        #     Child Loop BB15_25 Depth 2
                                        #       Child Loop BB15_26 Depth 3
                                        #       Child Loop BB15_28 Depth 3
                                        #       Child Loop BB15_71 Depth 3
                                        #       Child Loop BB15_75 Depth 3
                                        #       Child Loop BB15_80 Depth 3
                                        #       Child Loop BB15_83 Depth 3
                                        #     Child Loop BB15_90 Depth 2
                                        #     Child Loop BB15_93 Depth 2
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_6:                               #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s6, $s0
	addi.d	$s0, $s0, 8
	bne	$s0, $s7, .LBB15_6
# %bb.7:                                # %.preheader18.1.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_8:                               # %.preheader18.1.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $s0
	addi.d	$s0, $s0, 8
	fst.d	$fa0, $a0, 280
	bne	$s0, $s7, .LBB15_8
# %bb.9:                                # %.preheader18.2.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_10:                              # %.preheader18.2.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $s0
	addi.d	$s0, $s0, 8
	fst.d	$fa0, $a0, 560
	bne	$s0, $s7, .LBB15_10
# %bb.11:                               # %.preheader18.3.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_12:                              # %.preheader18.3.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $s0
	addi.d	$s0, $s0, 8
	fst.d	$fa0, $a0, 840
	bne	$s0, $s7, .LBB15_12
# %bb.13:                               # %.preheader18.4.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_14:                              # %.preheader18.4.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $s0
	addi.d	$s0, $s0, 8
	fst.d	$fa0, $a0, 1120
	bne	$s0, $s7, .LBB15_14
# %bb.15:                               # %.preheader18.5.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_16:                              # %.preheader18.5.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $s0
	addi.d	$s0, $s0, 8
	fst.d	$fa0, $a0, 1400
	bne	$s0, $s7, .LBB15_16
# %bb.17:                               # %.preheader18.6.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_18:                              # %.preheader18.6.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $s0
	addi.d	$s0, $s0, 8
	fst.d	$fa0, $a0, 1680
	bne	$s0, $s7, .LBB15_18
# %bb.19:                               # %.preheader18.7.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_20:                              # %.preheader18.7.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $s0
	addi.d	$s0, $s0, 8
	fst.d	$fa0, $a0, 1960
	bne	$s0, $s7, .LBB15_20
# %bb.21:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $zero
	ori	$s3, $zero, 512
	.p2align	4, , 16
.LBB15_22:                              # %.preheader.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s1, $s8, $s0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s8, $s0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s1, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s1, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s1, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s1, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s1, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	addi.d	$s0, $s0, 64
	fst.d	$fa0, $s1, 56
	bne	$s0, $s3, .LBB15_22
# %bb.23:                               # %randomize_wts.exit
                                        #   in Loop: Header=BB15_5 Depth=1
	pcalau12i	$a0, %pc_hi20(mid_wt_change)
	addi.d	$s2, $a0, %pc_lo12(mid_wt_change)
	ori	$a2, $zero, 2240
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(mid_wt_cum_change)
	addi.d	$s3, $a0, %pc_lo12(mid_wt_cum_change)
	ori	$a2, $zero, 2240
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(out_wt_change)
	addi.d	$s4, $a0, %pc_lo12(out_wt_change)
	ori	$a2, $zero, 512
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(out_wt_cum_change)
	addi.d	$s5, $a0, %pc_lo12(out_wt_cum_change)
	ori	$a2, $zero, 512
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(iteration_count)
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(iteration_count)
	pcalau12i	$a1, %pc_hi20(learned)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(learned)
	pcalau12i	$a1, %pc_hi20(numpats)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a2, $a1, %pc_lo12(numpats)
	pcalau12i	$a3, %pc_hi20(numpasses)
	st.w	$zero, $a3, %pc_lo12(numpasses)
	pcalau12i	$a1, %pc_hi20(worst_error)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(average_error)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	blez	$a2, .LBB15_2
# %bb.24:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$ra, $zero
	ori	$t0, $zero, 2240
	vld	$vr5, $sp, 96                   # 16-byte Folded Reload
	ori	$t1, $zero, 2256
	ori	$t2, $zero, 2272
	ori	$t3, $zero, 2288
	ori	$t4, $zero, 2304
	ori	$t5, $zero, 2320
	ori	$t6, $zero, 2336
	ori	$t7, $zero, 2352
	ori	$t8, $zero, 2368
	ori	$s0, $zero, 2384
	ori	$s1, $zero, 2400
	ori	$a6, $zero, 2464
	ori	$a7, $zero, 2480
	.p2align	4, , 16
.LBB15_25:                              # %.lr.ph
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_26 Depth 3
                                        #       Child Loop BB15_28 Depth 3
                                        #       Child Loop BB15_71 Depth 3
                                        #       Child Loop BB15_75 Depth 3
                                        #       Child Loop BB15_80 Depth 3
                                        #       Child Loop BB15_83 Depth 3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(worst_error)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ori	$a3, $zero, 2416
	ori	$a4, $zero, 2432
	ori	$a5, $zero, 2448
	ori	$s7, $zero, 2512
	.p2align	4, , 16
.LBB15_26:                              # %.preheader23.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s3, $a0
	vldx	$vr0, $a1, $t0
	add.d	$a2, $s2, $a0
	vldx	$vr1, $a1, $t1
	vldx	$vr2, $a1, $t2
	vstx	$vr0, $a2, $t0
	vldx	$vr0, $a1, $t3
	vstx	$vr1, $a2, $t1
	vstx	$vr2, $a2, $t2
	vldx	$vr1, $a1, $t4
	vstx	$vr0, $a2, $t3
	vldx	$vr0, $a1, $t5
	vldx	$vr2, $a1, $t6
	vstx	$vr1, $a2, $t4
	vldx	$vr1, $a1, $t7
	vstx	$vr0, $a2, $t5
	vstx	$vr2, $a2, $t6
	vldx	$vr0, $a1, $t8
	vstx	$vr1, $a2, $t7
	vldx	$vr1, $a1, $s0
	vldx	$vr2, $a1, $s1
	vstx	$vr0, $a2, $t8
	vldx	$vr0, $a1, $a3
	vstx	$vr1, $a2, $s0
	vstx	$vr2, $a2, $s1
	vldx	$vr1, $a1, $a4
	vstx	$vr0, $a2, $a3
	vstx	$vr5, $a1, $t0
	vstx	$vr5, $a1, $t1
	vstx	$vr1, $a2, $a4
	vldx	$vr0, $a1, $a5
	vstx	$vr5, $a1, $t2
	vstx	$vr5, $a1, $t3
	vstx	$vr5, $a1, $t4
	vstx	$vr0, $a2, $a5
	vldx	$vr0, $a1, $a6
	vstx	$vr5, $a1, $t5
	vstx	$vr5, $a1, $t6
	vstx	$vr5, $a1, $t7
	vstx	$vr0, $a2, $a6
	vldx	$vr0, $a1, $a7
	vstx	$vr5, $a1, $t8
	vstx	$vr5, $a1, $s0
	vstx	$vr5, $a1, $s1
	vstx	$vr0, $a2, $a7
	vldx	$vr0, $a1, $fp
	vstx	$vr5, $a1, $a3
	vstx	$vr5, $a1, $a4
	vstx	$vr5, $a1, $a5
	vstx	$vr0, $a2, $fp
	fldx.d	$fa0, $a1, $s7
	vstx	$vr5, $a1, $a6
	vstx	$vr5, $a1, $a7
	vstx	$vr5, $a1, $fp
	fstx.d	$fa0, $a2, $s7
	addi.d	$a0, $a0, 280
	stptr.d	$zero, $a1, 2512
	bnez	$a0, .LBB15_26
# %bb.27:                               # %move_wt_changes.exit
                                        #   in Loop: Header=BB15_25 Depth=2
	vld	$vr0, $s5, 0
	vld	$vr1, $s5, 16
	vst	$vr0, $s4, 0
	vld	$vr0, $s5, 32
	vst	$vr1, $s4, 16
	vld	$vr1, $s5, 48
	vld	$vr2, $s5, 64
	vst	$vr0, $s4, 32
	vld	$vr0, $s5, 80
	vst	$vr1, $s4, 48
	vst	$vr2, $s4, 64
	vld	$vr1, $s5, 96
	vst	$vr0, $s4, 80
	vld	$vr0, $s5, 112
	vld	$vr2, $s5, 128
	vst	$vr1, $s4, 96
	vld	$vr1, $s5, 144
	vst	$vr0, $s4, 112
	vst	$vr2, $s4, 128
	vld	$vr0, $s5, 160
	vst	$vr1, $s4, 144
	vld	$vr1, $s5, 176
	vld	$vr2, $s5, 192
	vst	$vr0, $s4, 160
	vld	$vr0, $s5, 208
	vst	$vr1, $s4, 176
	vst	$vr2, $s4, 192
	vld	$vr1, $s5, 224
	vst	$vr0, $s4, 208
	vld	$vr0, $s5, 240
	vld	$vr2, $s5, 256
	vst	$vr1, $s4, 224
	vld	$vr1, $s5, 272
	vst	$vr0, $s4, 240
	vst	$vr2, $s4, 256
	vld	$vr0, $s5, 288
	vst	$vr1, $s4, 272
	vld	$vr1, $s5, 304
	vld	$vr2, $s5, 320
	vst	$vr0, $s4, 288
	vld	$vr0, $s5, 336
	vst	$vr1, $s4, 304
	vst	$vr2, $s4, 320
	vst	$vr5, $s5, 0
	vst	$vr0, $s4, 336
	vld	$vr0, $s5, 352
	vst	$vr5, $s5, 16
	vst	$vr5, $s5, 32
	vst	$vr5, $s5, 48
	vst	$vr0, $s4, 352
	vld	$vr0, $s5, 368
	vst	$vr5, $s5, 64
	vst	$vr5, $s5, 80
	vst	$vr5, $s5, 96
	vst	$vr0, $s4, 368
	vld	$vr0, $s5, 384
	vst	$vr5, $s5, 112
	vst	$vr5, $s5, 128
	vst	$vr5, $s5, 144
	vst	$vr0, $s4, 384
	vld	$vr0, $s5, 400
	vst	$vr5, $s5, 160
	vst	$vr5, $s5, 176
	vst	$vr5, $s5, 192
	vst	$vr0, $s4, 400
	vld	$vr0, $s5, 416
	vst	$vr5, $s5, 208
	vst	$vr5, $s5, 224
	vst	$vr5, $s5, 240
	vst	$vr0, $s4, 416
	vld	$vr0, $s5, 432
	vst	$vr5, $s5, 256
	vst	$vr5, $s5, 272
	vst	$vr5, $s5, 288
	vst	$vr0, $s4, 432
	vld	$vr0, $s5, 448
	vst	$vr5, $s5, 304
	vst	$vr5, $s5, 320
	vst	$vr5, $s5, 336
	vst	$vr0, $s4, 448
	vld	$vr0, $s5, 464
	vst	$vr5, $s5, 352
	vst	$vr5, $s5, 368
	vst	$vr5, $s5, 384
	vst	$vr0, $s4, 464
	vld	$vr0, $s5, 480
	vst	$vr5, $s5, 400
	vst	$vr5, $s5, 416
	vst	$vr5, $s5, 432
	vst	$vr0, $s4, 480
	vld	$vr0, $s5, 496
	vst	$vr5, $s5, 448
	vst	$vr5, $s5, 464
	vst	$vr5, $s5, 480
	vst	$vr0, $s4, 496
	vst	$vr5, $s5, 496
	st.d	$ra, $sp, 560                   # 8-byte Folded Spill
	ori	$a0, $zero, 280
	mul.d	$a0, $ra, $a0
	pcalau12i	$a1, %pc_hi20(in_pats)
	addi.d	$a1, $a1, %pc_lo12(in_pats)
	add.d	$s7, $a1, $a0
	fld.d	$fa0, $s7, 136
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 144
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 152
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	fldx.d	$fa0, $a1, $a0
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 8
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 16
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 24
	fst.d	$fa0, $sp, 784                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 32
	fst.d	$fa0, $sp, 768                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 40
	fst.d	$fa0, $sp, 752                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 48
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 56
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 64
	fst.d	$fa0, $sp, 704                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 72
	fst.d	$fa0, $sp, 688                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 80
	fst.d	$fa0, $sp, 680                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 88
	fst.d	$fa0, $sp, 672                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 96
	fst.d	$fa0, $sp, 664                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 104
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 112
	fst.d	$fa0, $sp, 648                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 120
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 128
	fst.d	$fa0, $sp, 632                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 160
	fst.d	$fa0, $sp, 624                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 168
	fst.d	$fa0, $sp, 616                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 176
	fst.d	$fa0, $sp, 608                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 184
	fst.d	$fa0, $sp, 600                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 192
	fst.d	$fa0, $sp, 592                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 200
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 208
	fst.d	$fa0, $sp, 576                  # 8-byte Folded Spill
	fld.d	$fa0, $s7, 216
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fld.d	$fs0, $s7, 224
	fld.d	$fs1, $s7, 232
	fld.d	$fs2, $s7, 240
	fld.d	$fs3, $s7, 248
	fld.d	$fs4, $s7, 256
	fld.d	$fs5, $s7, 264
	fld.d	$fs6, $s7, 272
	move	$s0, $zero
	addi.d	$s1, $s6, 136
	ori	$fp, $zero, 64
	.p2align	4, , 16
.LBB15_28:                              # %.preheader.i.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s1, -136
	fld.d	$fa1, $s1, -128
	fld.d	$fa2, $s1, -120
	movgr2fr.d	$fs7, $zero
	fld.d	$fa3, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa3, $fs7
	fld.d	$fa3, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $s1, -112
	fld.d	$fa2, $s1, -104
	fld.d	$fa3, $s1, -96
	fld.d	$fa4, $s1, -88
	fld.d	$fa5, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fld.d	$fa1, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s1, -80
	fld.d	$fa2, $s1, -72
	fld.d	$fa3, $s1, -64
	fld.d	$fa4, $s1, -56
	fld.d	$fa5, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fld.d	$fa1, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s1, -48
	fld.d	$fa2, $s1, -40
	fld.d	$fa3, $s1, -32
	fld.d	$fa4, $s1, -24
	fld.d	$fa5, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fld.d	$fa1, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s1, -16
	fld.d	$fa2, $s1, -8
	fld.d	$fa3, $s1, 0
	fld.d	$fa4, $s1, 8
	fld.d	$fa5, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fld.d	$fa1, $sp, 632                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s1, 16
	fld.d	$fa2, $s1, 24
	fld.d	$fa3, $s1, 32
	fld.d	$fa4, $s1, 40
	fld.d	$fa5, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fld.d	$fa1, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s1, 48
	fld.d	$fa2, $s1, 56
	fld.d	$fa3, $s1, 64
	fld.d	$fa4, $s1, 72
	fld.d	$fa5, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fld.d	$fa1, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $sp, 584                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s1, 80
	fld.d	$fa2, $s1, 88
	fld.d	$fa3, $s1, 96
	fld.d	$fa4, $s1, 104
	fld.d	$fa5, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fmadd.d	$fa0, $fa2, $fs0, $fa0
	fmadd.d	$fa0, $fa3, $fs1, $fa0
	fmadd.d	$fa0, $fa4, $fs2, $fa0
	fld.d	$fa1, $s1, 112
	fld.d	$fa2, $s1, 120
	fld.d	$fa3, $s1, 128
	fld.d	$fa4, $s1, 136
	fmadd.d	$fa0, $fa1, $fs3, $fa0
	fmadd.d	$fa0, $fa2, $fs4, $fa0
	fmadd.d	$fa0, $fa3, $fs5, $fa0
	fnmadd.d	$fa0, $fa4, $fs6, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	frecip.d	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(mid_out)
	addi.d	$a0, $a0, %pc_lo12(mid_out)
	fstx.d	$fa0, $a0, $s0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 280
	bne	$s0, $fp, .LBB15_28
# %bb.29:                               # %do_forward_pass.exit
                                        #   in Loop: Header=BB15_25 Depth=2
	vld	$vr1, $a0, 0
	fld.d	$fa0, $s8, 0
	fld.d	$fa2, $s8, 8
	vreplvei.d	$vr3, $vr1, 0
	vst	$vr3, $sp, 768                  # 16-byte Folded Spill
	fst.d	$fa0, $sp, 456                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $fa3, $fs7
	vst	$vr1, $sp, 736                  # 16-byte Folded Spill
	vreplvei.d	$vr4, $vr1, 1
	vst	$vr4, $sp, 880                  # 16-byte Folded Spill
	vld	$vr1, $a0, 16
	fld.d	$fa3, $s8, 16
	fst.d	$fa2, $sp, 680                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fa4, $fa0
	fld.d	$fa2, $s8, 24
	vreplvei.d	$vr4, $vr1, 0
	vst	$vr4, $sp, 864                  # 16-byte Folded Spill
	fst.d	$fa3, $sp, 672                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	vst	$vr1, $sp, 720                  # 16-byte Folded Spill
	vreplvei.d	$vr4, $vr1, 1
	vst	$vr4, $sp, 848                  # 16-byte Folded Spill
	vld	$vr1, $a0, 32
	fld.d	$fa3, $s8, 32
	fst.d	$fa2, $sp, 664                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fa4, $fa0
	fld.d	$fa2, $s8, 40
	vreplvei.d	$vr4, $vr1, 0
	vst	$vr4, $sp, 832                  # 16-byte Folded Spill
	fst.d	$fa3, $sp, 656                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	vst	$vr1, $sp, 704                  # 16-byte Folded Spill
	vreplvei.d	$vr4, $vr1, 1
	vst	$vr4, $sp, 816                  # 16-byte Folded Spill
	vld	$vr1, $a0, 48
	fld.d	$fa3, $s8, 48
	fst.d	$fa2, $sp, 648                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fa4, $fa0
	fld.d	$fa2, $s8, 56
	vreplvei.d	$vr4, $vr1, 0
	vst	$vr4, $sp, 800                  # 16-byte Folded Spill
	fst.d	$fa3, $sp, 640                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	vst	$vr1, $sp, 688                  # 16-byte Folded Spill
	vreplvei.d	$vr1, $vr1, 1
	vst	$vr1, $sp, 784                  # 16-byte Folded Spill
	fst.d	$fa2, $sp, 632                  # 8-byte Folded Spill
	fnmadd.d	$fa0, $fa2, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 752                  # 16-byte Folded Spill
	fld.d	$fa0, $s8, 64
	fld.d	$fa1, $s8, 72
	fld.d	$fa2, $s8, 80
	fld.d	$fa3, $s8, 88
	fst.d	$fa0, $sp, 320                  # 8-byte Folded Spill
	vld	$vr4, $sp, 768                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa4, $fs7
	fst.d	$fa1, $sp, 624                  # 8-byte Folded Spill
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa2, $sp, 616                  # 8-byte Folded Spill
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 608                  # 8-byte Folded Spill
	vld	$vr1, $sp, 848                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $s8, 96
	fld.d	$fa2, $s8, 104
	fld.d	$fa3, $s8, 112
	fld.d	$fa4, $s8, 120
	fst.d	$fa1, $sp, 600                  # 8-byte Folded Spill
	vld	$vr5, $sp, 832                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fst.d	$fa2, $sp, 592                  # 8-byte Folded Spill
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 584                  # 8-byte Folded Spill
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fst.d	$fa4, $sp, 576                  # 8-byte Folded Spill
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fnmadd.d	$fa0, $fa4, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 752                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	lu52i.d	$a0, $zero, 1023
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 752                  # 16-byte Folded Spill
	vfadd.d	$vr0, $vr1, $vr0
	vfrecip.d	$vr0, $vr0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_out)
	addi.d	$s0, $a0, %pc_lo12(out_out)
	vst	$vr0, $s0, 0
	fld.d	$fa0, $s8, 128
	fld.d	$fa1, $s8, 136
	fld.d	$fa2, $s8, 144
	fld.d	$fa3, $s8, 152
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	vld	$vr4, $sp, 768                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa4, $fs7
	fst.d	$fa1, $sp, 568                  # 8-byte Folded Spill
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa2, $sp, 552                  # 8-byte Folded Spill
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 544                  # 8-byte Folded Spill
	vld	$vr1, $sp, 848                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $s8, 160
	fld.d	$fa2, $s8, 168
	fld.d	$fa3, $s8, 176
	fld.d	$fa4, $s8, 184
	fst.d	$fa1, $sp, 536                  # 8-byte Folded Spill
	vld	$vr5, $sp, 832                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fst.d	$fa2, $sp, 528                  # 8-byte Folded Spill
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 520                  # 8-byte Folded Spill
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fst.d	$fa4, $sp, 512                  # 8-byte Folded Spill
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fnmadd.d	$fa0, $fa4, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	fld.d	$fs2, $s8, 192
	fld.d	$fa1, $s8, 200
	fld.d	$fa2, $s8, 208
	fld.d	$fa3, $s8, 216
	vld	$vr0, $sp, 768                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fs2, $fa0, $fs7
	fst.d	$fa1, $sp, 504                  # 8-byte Folded Spill
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa2, $sp, 496                  # 8-byte Folded Spill
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 488                  # 8-byte Folded Spill
	vld	$vr1, $sp, 848                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $s8, 224
	fld.d	$fa2, $s8, 232
	fld.d	$fa3, $s8, 240
	fld.d	$fa4, $s8, 248
	fst.d	$fa1, $sp, 480                  # 8-byte Folded Spill
	vld	$vr5, $sp, 832                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fst.d	$fa2, $sp, 472                  # 8-byte Folded Spill
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 464                  # 8-byte Folded Spill
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fst.d	$fa4, $sp, 448                  # 8-byte Folded Spill
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fnmadd.d	$fa0, $fa4, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 432                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 752                  # 16-byte Folded Reload
	vfadd.d	$vr0, $vr1, $vr0
	vfrecip.d	$vr0, $vr0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	fld.d	$fs6, $s8, 256
	fld.d	$fa1, $s8, 264
	fld.d	$fa2, $s8, 272
	fld.d	$fa3, $s8, 280
	vld	$vr0, $sp, 768                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fs6, $fa0, $fs7
	fst.d	$fa1, $sp, 432                  # 8-byte Folded Spill
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa2, $sp, 424                  # 8-byte Folded Spill
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 416                  # 8-byte Folded Spill
	vld	$vr1, $sp, 848                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $s8, 288
	fld.d	$fa2, $s8, 296
	fld.d	$fa3, $s8, 304
	fld.d	$fa4, $s8, 312
	fst.d	$fa1, $sp, 408                  # 8-byte Folded Spill
	vld	$vr5, $sp, 832                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fst.d	$fa2, $sp, 400                  # 8-byte Folded Spill
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 392                  # 8-byte Folded Spill
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fst.d	$fa4, $sp, 384                  # 8-byte Folded Spill
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fnmadd.d	$fa0, $fa4, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	fld.d	$fs1, $s8, 320
	fld.d	$fa1, $s8, 328
	fld.d	$fa2, $s8, 336
	fld.d	$fa3, $s8, 344
	vld	$vr0, $sp, 768                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fs1, $fa0, $fs7
	fst.d	$fa1, $sp, 376                  # 8-byte Folded Spill
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa2, $sp, 368                  # 8-byte Folded Spill
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 360                  # 8-byte Folded Spill
	vld	$vr1, $sp, 848                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $s8, 352
	fld.d	$fa2, $s8, 360
	fld.d	$fa3, $s8, 368
	fld.d	$fa4, $s8, 376
	fst.d	$fa1, $sp, 352                  # 8-byte Folded Spill
	vld	$vr5, $sp, 832                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fst.d	$fa2, $sp, 344                  # 8-byte Folded Spill
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 336                  # 8-byte Folded Spill
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fst.d	$fa4, $sp, 328                  # 8-byte Folded Spill
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fnmadd.d	$fa0, $fa4, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 304                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 752                  # 16-byte Folded Reload
	vfadd.d	$vr0, $vr1, $vr0
	vfrecip.d	$vr0, $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	vst	$vr0, $s0, 32
	fld.d	$fs3, $s8, 384
	fld.d	$fa1, $s8, 392
	fld.d	$fa2, $s8, 400
	fld.d	$fa3, $s8, 408
	vld	$vr0, $sp, 768                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fs3, $fa0, $fs7
	fst.d	$fa1, $sp, 304                  # 8-byte Folded Spill
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa2, $sp, 296                  # 8-byte Folded Spill
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 288                  # 8-byte Folded Spill
	vld	$vr1, $sp, 848                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $s8, 416
	fld.d	$fa2, $s8, 424
	fld.d	$fa3, $s8, 432
	fld.d	$fa4, $s8, 440
	fst.d	$fa1, $sp, 280                  # 8-byte Folded Spill
	vld	$vr5, $sp, 832                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fst.d	$fa2, $sp, 272                  # 8-byte Folded Spill
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa3, $sp, 264                  # 8-byte Folded Spill
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fst.d	$fa4, $sp, 256                  # 8-byte Folded Spill
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fnmadd.d	$fa0, $fa4, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	fld.d	$fs4, $s8, 448
	fld.d	$fa1, $s8, 456
	fld.d	$fa2, $s8, 464
	fld.d	$fa3, $s8, 472
	vld	$vr0, $sp, 768                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fs4, $fa0, $fs7
	vld	$vr4, $sp, 880                  # 16-byte Folded Reload
	fst.d	$fa1, $sp, 240                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	fst.d	$fa2, $sp, 232                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	vld	$vr1, $sp, 848                  # 16-byte Folded Reload
	fst.d	$fa3, $sp, 224                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $s8, 480
	fld.d	$fa2, $s8, 488
	fld.d	$fs5, $s8, 496
	fld.d	$fs0, $s8, 504
	vld	$vr3, $sp, 832                  # 16-byte Folded Reload
	fst.d	$fa1, $sp, 216                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	fst.d	$fa2, $sp, 208                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	vld	$vr1, $sp, 800                  # 16-byte Folded Reload
	fmadd.d	$fa0, $fs5, $fa1, $fa0
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	fnmadd.d	$fa0, $fs0, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 160                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 752                  # 16-byte Folded Reload
	vfadd.d	$vr0, $vr1, $vr0
	vfrecip.d	$vr6, $vr0
	vst	$vr6, $s0, 48
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	slli.d	$a0, $a3, 6
	pcalau12i	$a1, %pc_hi20(out_pats)
	addi.d	$a1, $a1, %pc_lo12(out_pats)
	fldx.d	$fa0, $a1, $a0
	vreplvei.d	$vr1, $vr4, 0
	fsub.d	$fa1, $fa0, $fa1
	pcalau12i	$a2, %pc_hi20(out_error)
	addi.d	$a2, $a2, %pc_lo12(out_error)
	fcmp.cule.d	$fcc0, $fs7, $fa1
	fst.d	$fa1, $a2, 0
	bcnez	$fcc0, .LBB15_31
# %bb.30:                               #   in Loop: Header=BB15_25 Depth=2
	movgr2fr.d	$fa0, $zero
	fsub.d	$fa3, $fa0, $fa1
	fneg.d	$fa0, $fa1
	ori	$a7, $zero, 512
	ori	$t0, $zero, 2240
	ori	$t1, $zero, 2256
	ori	$t2, $zero, 2272
	ori	$t3, $zero, 2288
	ori	$t4, $zero, 2304
	ori	$t5, $zero, 2320
	ori	$t6, $zero, 2336
	ori	$t7, $zero, 2352
	ori	$t8, $zero, 2368
	ori	$s0, $zero, 2384
	ori	$s1, $zero, 2400
	ori	$fp, $zero, 2496
	b	.LBB15_35
	.p2align	4, , 16
.LBB15_31:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa1, $fs7
	fadd.d	$fa3, $fa1, $fs7
	ori	$t0, $zero, 2240
	ori	$t1, $zero, 2256
	ori	$t2, $zero, 2272
	ori	$t3, $zero, 2288
	ori	$t4, $zero, 2304
	ori	$t5, $zero, 2320
	ori	$t6, $zero, 2336
	ori	$t7, $zero, 2352
	ori	$t8, $zero, 2368
	ori	$s0, $zero, 2384
	ori	$s1, $zero, 2400
	ori	$fp, $zero, 2496
	bcnez	$fcc0, .LBB15_33
# %bb.32:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB15_34
	.p2align	4, , 16
.LBB15_33:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa0, $fs7
.LBB15_34:                              #   in Loop: Header=BB15_25 Depth=2
	ori	$a7, $zero, 512
.LBB15_35:                              #   in Loop: Header=BB15_25 Depth=2
	vld	$vr17, $sp, 720                 # 16-byte Folded Reload
	vld	$vr18, $sp, 704                 # 16-byte Folded Reload
	vld	$vr19, $sp, 688                 # 16-byte Folded Reload
	vld	$vr11, $sp, 192                 # 16-byte Folded Reload
	vld	$vr9, $sp, 176                  # 16-byte Folded Reload
	add.d	$a0, $a1, $a0
	fld.d	$fa2, $a0, 8
	vreplvei.d	$vr4, $vr4, 1
	fsub.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa2, $fs7
	fst.d	$fa2, $a2, 8
	bceqz	$fcc0, .LBB15_37
# %bb.36:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$fa4, $fa2
	fcmp.cule.d	$fcc0, $fa4, $fa0
	fsub.d	$fa7, $fa3, $fa2
	bcnez	$fcc0, .LBB15_39
	b	.LBB15_40
	.p2align	4, , 16
.LBB15_37:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa2, $fa0
	fadd.d	$fa7, $fa3, $fa2
	bcnez	$fcc0, .LBB15_39
# %bb.38:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa4, $fa2
	b	.LBB15_40
	.p2align	4, , 16
.LBB15_39:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa4, $fa0
.LBB15_40:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa0, $a0, 16
	vreplvei.d	$vr3, $vr9, 0
	fsub.d	$fa3, $fa0, $fa3
	movgr2fr.d	$fa0, $zero
	fcmp.clt.d	$fcc0, $fa3, $fa0
	fst.d	$fa3, $a2, 16
	bceqz	$fcc0, .LBB15_42
# %bb.41:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$fa5, $fa3
	fcmp.cule.d	$fcc0, $fa5, $fa4
	fsub.d	$ft0, $fa7, $fa3
	bcnez	$fcc0, .LBB15_44
	b	.LBB15_45
	.p2align	4, , 16
.LBB15_42:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa3, $fa4
	fadd.d	$ft0, $fa7, $fa3
	bcnez	$fcc0, .LBB15_44
# %bb.43:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa5, $fa3
	b	.LBB15_45
	.p2align	4, , 16
.LBB15_44:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa5, $fa4
.LBB15_45:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa4, $a0, 24
	vreplvei.d	$vr7, $vr9, 1
	fsub.d	$fa4, $fa4, $fa7
	fcmp.clt.d	$fcc0, $fa4, $fa0
	fst.d	$fa4, $a2, 24
	bceqz	$fcc0, .LBB15_47
# %bb.46:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$fa7, $fa4
	fcmp.cule.d	$fcc0, $fa7, $fa5
	fsub.d	$ft1, $ft0, $fa4
	bcnez	$fcc0, .LBB15_49
	b	.LBB15_50
	.p2align	4, , 16
.LBB15_47:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa4, $fa5
	fadd.d	$ft1, $ft0, $fa4
	bcnez	$fcc0, .LBB15_49
# %bb.48:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa7, $fa4
	b	.LBB15_50
	.p2align	4, , 16
.LBB15_49:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa7, $fa5
.LBB15_50:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa5, $a0, 32
	vreplvei.d	$vr8, $vr11, 0
	fsub.d	$fa5, $fa5, $ft0
	fcmp.clt.d	$fcc0, $fa5, $fa0
	fst.d	$fa5, $a2, 32
	bceqz	$fcc0, .LBB15_52
# %bb.51:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft0, $fa5
	fcmp.cule.d	$fcc0, $ft0, $fa7
	fsub.d	$ft2, $ft1, $fa5
	bcnez	$fcc0, .LBB15_54
	b	.LBB15_55
	.p2align	4, , 16
.LBB15_52:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa5, $fa7
	fadd.d	$ft2, $ft1, $fa5
	bcnez	$fcc0, .LBB15_54
# %bb.53:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft0, $fa5
	b	.LBB15_55
	.p2align	4, , 16
.LBB15_54:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft0, $fa7
.LBB15_55:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa7, $a0, 40
	vreplvei.d	$vr9, $vr11, 1
	fsub.d	$fa7, $fa7, $ft1
	fcmp.clt.d	$fcc0, $fa7, $fa0
	fst.d	$fa7, $a2, 40
	bceqz	$fcc0, .LBB15_57
# %bb.56:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft1, $fa7
	fcmp.cule.d	$fcc0, $ft1, $ft0
	fsub.d	$ft3, $ft2, $fa7
	bcnez	$fcc0, .LBB15_59
	b	.LBB15_60
	.p2align	4, , 16
.LBB15_57:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa7, $ft0
	fadd.d	$ft3, $ft2, $fa7
	bcnez	$fcc0, .LBB15_59
# %bb.58:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft1, $fa7
	b	.LBB15_60
	.p2align	4, , 16
.LBB15_59:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft1, $ft0
.LBB15_60:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$ft0, $a0, 48
	vreplvei.d	$vr10, $vr6, 0
	fsub.d	$ft0, $ft0, $ft2
	fcmp.clt.d	$fcc0, $ft0, $fa0
	fst.d	$ft0, $a2, 48
	bceqz	$fcc0, .LBB15_62
# %bb.61:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft2, $ft0
	fcmp.cule.d	$fcc0, $ft2, $ft1
	fsub.d	$ft3, $ft3, $ft0
	bcnez	$fcc0, .LBB15_64
	b	.LBB15_65
	.p2align	4, , 16
.LBB15_62:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $ft0, $ft1
	fadd.d	$ft3, $ft3, $ft0
	bcnez	$fcc0, .LBB15_64
# %bb.63:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft2, $ft0
	b	.LBB15_65
	.p2align	4, , 16
.LBB15_64:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft2, $ft1
.LBB15_65:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$ft1, $a0, 56
	vreplvei.d	$vr6, $vr6, 1
	fsub.d	$fa6, $ft1, $fa6
	fcmp.clt.d	$fcc0, $fa6, $fa0
	fst.d	$fa6, $a2, 56
	bceqz	$fcc0, .LBB15_67
# %bb.66:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft1, $fa6
	fcmp.cule.d	$fcc0, $ft1, $ft2
	fsub.d	$ft3, $ft3, $fa6
	bcnez	$fcc0, .LBB15_69
	b	.LBB15_70
	.p2align	4, , 16
.LBB15_67:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa6, $ft2
	fadd.d	$ft3, $ft3, $fa6
	bcnez	$fcc0, .LBB15_69
# %bb.68:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft1, $fa6
	b	.LBB15_70
	.p2align	4, , 16
.LBB15_69:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft1, $ft2
.LBB15_70:                              # %do_out_error.exit.i
                                        #   in Loop: Header=BB15_25 Depth=2
	vldi	$vr10, -960
	fmul.d	$ft2, $ft3, $ft2
	slli.d	$a3, $a3, 3
	pcalau12i	$a0, %pc_hi20(avg_out_error)
	addi.d	$a0, $a0, %pc_lo12(avg_out_error)
	fstx.d	$ft2, $a0, $a3
	pcalau12i	$a1, %pc_hi20(tot_out_error)
	addi.d	$a1, $a1, %pc_lo12(tot_out_error)
	fstx.d	$ft1, $a1, $a3
	fld.d	$ft1, $sp, 456                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fa0
	fld.d	$ft2, $sp, 320                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 248                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fmadd.d	$ft1, $fs2, $fa4, $ft1
	fmadd.d	$ft1, $fs6, $fa5, $ft1
	fmadd.d	$ft1, $fs1, $fa7, $ft1
	fmadd.d	$ft1, $fs3, $ft0, $ft1
	fmadd.d	$ft1, $fs4, $fa6, $ft1
	vldi	$vr16, -912
	vld	$vr11, $sp, 768                 # 16-byte Folded Reload
	fsub.d	$ft2, $ft8, $ft3
	fmul.d	$ft2, $ft3, $ft2
	fmul.d	$ft2, $ft2, $ft1
	pcalau12i	$a3, %pc_hi20(mid_error)
	addi.d	$a3, $a3, %pc_lo12(mid_error)
	move	$a4, $zero
	fld.d	$ft1, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fa0
	fld.d	$ft3, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft3, $fa2, $ft1
	fld.d	$ft3, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$ft3, $ft3, $fa1, $fa0
	fld.d	$ft4, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$ft3, $ft4, $fa2, $ft3
	fld.d	$ft4, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$ft4, $ft4, $fa1, $fa0
	fld.d	$ft5, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$ft4, $ft5, $fa2, $ft4
	fld.d	$ft5, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$ft5, $ft5, $fa1, $fa0
	fld.d	$ft6, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$ft5, $ft6, $fa2, $ft5
	fld.d	$ft6, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$ft6, $ft6, $fa1, $fa0
	fld.d	$ft7, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$ft6, $ft7, $fa2, $ft6
	fld.d	$ft7, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$ft7, $ft7, $fa1, $fa0
	fld.d	$ft12, $sp, 584                 # 8-byte Folded Reload
	fmadd.d	$ft7, $ft12, $fa2, $ft7
	fld.d	$ft12, $sp, 632                 # 8-byte Folded Reload
	fmadd.d	$fa1, $ft12, $fa1, $fa0
	fld.d	$ft12, $sp, 576                 # 8-byte Folded Reload
	fmadd.d	$fa1, $ft12, $fa2, $fa1
	fld.d	$fa2, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa2, $fa3, $ft1
	fld.d	$ft1, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa3, $ft3
	fld.d	$ft3, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$ft3, $ft3, $fa3, $ft4
	fld.d	$ft4, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$ft4, $ft4, $fa3, $ft5
	fld.d	$ft5, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$ft5, $ft5, $fa3, $ft6
	fld.d	$ft6, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$ft6, $ft6, $fa3, $ft7
	fld.d	$ft7, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft7, $fa3, $fa1
	fld.d	$fa3, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fld.d	$fa3, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa3, $fa4, $ft1
	fld.d	$ft1, $sp, 488                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa4, $ft3
	fld.d	$ft3, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$ft3, $ft3, $fa4, $ft4
	fld.d	$ft4, $sp, 472                  # 8-byte Folded Reload
	fmadd.d	$ft4, $ft4, $fa4, $ft5
	fld.d	$ft5, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$ft5, $ft5, $fa4, $ft6
	fld.d	$ft6, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft6, $fa4, $fa1
	fld.d	$fa4, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa4, $fa5, $fa2
	fld.d	$fa4, $sp, 424                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa4, $fa5, $fa3
	fld.d	$fa4, $sp, 416                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa4, $fa5, $ft1
	fld.d	$ft1, $sp, 408                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa5, $ft3
	fld.d	$ft3, $sp, 400                  # 8-byte Folded Reload
	fmadd.d	$ft3, $ft3, $fa5, $ft4
	fld.d	$ft4, $sp, 392                  # 8-byte Folded Reload
	fmadd.d	$ft4, $ft4, $fa5, $ft5
	fld.d	$ft5, $sp, 384                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft5, $fa5, $fa1
	fld.d	$fa5, $sp, 376                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $fa7, $fa2
	fld.d	$fa5, $sp, 368                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $fa7, $fa3
	fld.d	$fa5, $sp, 360                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fld.d	$fa5, $sp, 352                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa5, $fa7, $ft1
	fld.d	$ft1, $sp, 344                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa7, $ft3
	fld.d	$ft3, $sp, 336                  # 8-byte Folded Reload
	fmadd.d	$ft3, $ft3, $fa7, $ft4
	fld.d	$ft4, $sp, 328                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft4, $fa7, $fa1
	fld.d	$fa7, $sp, 304                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa7, $ft0, $fa2
	fld.d	$fa7, $sp, 296                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa7, $ft0, $fa3
	fld.d	$fa7, $sp, 288                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa7, $ft0, $fa4
	fld.d	$fa7, $sp, 280                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa7, $ft0, $fa5
	fld.d	$fa7, $sp, 272                  # 8-byte Folded Reload
	fmadd.d	$fa7, $fa7, $ft0, $ft1
	fld.d	$ft1, $sp, 264                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $ft0, $ft3
	fld.d	$ft3, $sp, 256                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft3, $ft0, $fa1
	fld.d	$ft0, $sp, 240                  # 8-byte Folded Reload
	fmadd.d	$fa2, $ft0, $fa6, $fa2
	fld.d	$ft0, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$fa3, $ft0, $fa6, $fa3
	fld.d	$ft0, $sp, 224                  # 8-byte Folded Reload
	fmadd.d	$fa4, $ft0, $fa6, $fa4
	fld.d	$ft0, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$fa5, $ft0, $fa6, $fa5
	fld.d	$ft0, $sp, 208                  # 8-byte Folded Reload
	fmadd.d	$ft3, $ft0, $fa6, $fa7
	fmadd.d	$ft4, $fs5, $fa6, $ft1
	fmadd.d	$fa1, $fs0, $fa6, $fa1
	vld	$vr7, $sp, 880                  # 16-byte Folded Reload
	fsub.d	$fa6, $ft8, $fa7
	fmul.d	$fa6, $fa7, $fa6
	fmul.d	$ft1, $fa6, $fa2
	vld	$vr6, $sp, 864                  # 16-byte Folded Reload
	fsub.d	$fa2, $ft8, $fa6
	fmul.d	$fa2, $fa6, $fa2
	fmul.d	$ft0, $fa2, $fa3
	vld	$vr3, $sp, 848                  # 16-byte Folded Reload
	fsub.d	$fa2, $ft8, $fa3
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa7, $fa2, $fa4
	vld	$vr3, $sp, 832                  # 16-byte Folded Reload
	fsub.d	$fa2, $ft8, $fa3
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa6, $fa2, $fa5
	vld	$vr3, $sp, 816                  # 16-byte Folded Reload
	fsub.d	$fa2, $ft8, $fa3
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa5, $fa2, $ft3
	vld	$vr3, $sp, 800                  # 16-byte Folded Reload
	fsub.d	$fa2, $ft8, $fa3
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa2, $ft4
	vld	$vr3, $sp, 784                  # 16-byte Folded Reload
	fsub.d	$fa2, $ft8, $fa3
	fmul.d	$fa2, $fa3, $fa2
	fmul.d	$fa3, $fa2, $fa1
	fst.d	$ft2, $a3, 0
	fst.d	$ft1, $a3, 8
	fst.d	$ft0, $a3, 16
	fst.d	$fa7, $a3, 24
	fst.d	$fa6, $a3, 32
	fst.d	$fa5, $a3, 40
	fst.d	$fa4, $a3, 48
	fst.d	$fa3, $a3, 56
	ld.d	$ra, $sp, 64                    # 8-byte Folded Reload
	vld	$vr16, $sp, 736                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB15_71:                              # %.preheader.i.i10
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 0
	pcalau12i	$a3, %pc_hi20(.LCPI15_2)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI15_2)
	fmul.d	$fa2, $fa2, $fa1
	add.d	$a3, $s4, $a4
	add.d	$a5, $s8, $a4
	add.d	$a6, $s5, $a4
	vreplvei.d	$vr11, $vr2, 0
	vfmul.d	$vr12, $vr16, $vr11
	vldx	$vr13, $s4, $a4
	vldx	$vr14, $s8, $a4
	vreplgr2vr.d	$vr2, $ra
	vldx	$vr15, $s5, $a4
	vfmadd.d	$vr12, $vr13, $vr2, $vr12
	vfadd.d	$vr13, $vr14, $vr12
	vstx	$vr13, $s8, $a4
	vfadd.d	$vr12, $vr12, $vr15
	vstx	$vr12, $s5, $a4
	vld	$vr12, $a3, 16
	vld	$vr13, $a5, 16
	vfmul.d	$vr14, $vr17, $vr11
	vld	$vr15, $a6, 16
	vfmadd.d	$vr12, $vr12, $vr2, $vr14
	vfadd.d	$vr13, $vr13, $vr12
	vst	$vr13, $a5, 16
	vfadd.d	$vr12, $vr12, $vr15
	vst	$vr12, $a6, 16
	vld	$vr12, $a3, 32
	vld	$vr13, $a5, 32
	vfmul.d	$vr14, $vr18, $vr11
	vld	$vr15, $a6, 32
	vfmadd.d	$vr12, $vr12, $vr2, $vr14
	vfadd.d	$vr13, $vr13, $vr12
	vst	$vr13, $a5, 32
	vfadd.d	$vr12, $vr12, $vr15
	vst	$vr12, $a6, 32
	vld	$vr12, $a3, 48
	vld	$vr13, $a5, 48
	vfmul.d	$vr11, $vr19, $vr11
	vld	$vr14, $a6, 48
	vfmadd.d	$vr11, $vr12, $vr2, $vr11
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $a5, 48
	vfadd.d	$vr11, $vr11, $vr14
	vst	$vr11, $a6, 48
	addi.d	$a4, $a4, 64
	addi.d	$a2, $a2, 8
	bne	$a4, $a7, .LBB15_71
# %bb.72:                               # %adjust_out_wts.exit.i
                                        #   in Loop: Header=BB15_25 Depth=2
	fmul.d	$ft2, $ft2, $fa1
	vld	$vr12, $s7, 0
	vreplvei.d	$vr11, $vr10, 0
	vld	$vr13, $s2, 0
	vld	$vr14, $s6, 0
	vfmul.d	$vr12, $vr11, $vr12
	vld	$vr15, $s3, 0
	vfmadd.d	$vr12, $vr13, $vr2, $vr12
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 0
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 16
	vst	$vr12, $s3, 0
	vld	$vr12, $s2, 16
	vld	$vr14, $s6, 16
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 16
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 16
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 32
	vst	$vr12, $s3, 16
	vld	$vr12, $s2, 32
	vld	$vr14, $s6, 32
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 32
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 32
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 48
	vst	$vr12, $s3, 32
	vld	$vr12, $s2, 48
	vld	$vr14, $s6, 48
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 48
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 48
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 64
	vst	$vr12, $s3, 48
	vld	$vr12, $s2, 64
	vld	$vr14, $s6, 64
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 64
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 64
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 80
	vst	$vr12, $s3, 64
	vld	$vr12, $s2, 80
	vld	$vr14, $s6, 80
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 80
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 80
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 96
	vst	$vr12, $s3, 80
	vld	$vr12, $s2, 96
	vld	$vr14, $s6, 96
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 96
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 96
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 112
	vst	$vr12, $s3, 96
	vld	$vr12, $s2, 112
	vld	$vr14, $s6, 112
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 112
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 112
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 128
	vst	$vr12, $s3, 112
	vld	$vr12, $s2, 128
	vld	$vr14, $s6, 128
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 128
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 128
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 144
	vst	$vr12, $s3, 128
	vld	$vr12, $s2, 144
	vld	$vr14, $s6, 144
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 144
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 144
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 160
	vst	$vr12, $s3, 144
	vld	$vr12, $s2, 160
	vld	$vr14, $s6, 160
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 160
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 160
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 176
	vst	$vr12, $s3, 160
	vld	$vr12, $s2, 176
	vld	$vr14, $s6, 176
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 176
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 176
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 192
	vst	$vr12, $s3, 176
	vld	$vr12, $s2, 192
	vld	$vr14, $s6, 192
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 192
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 192
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 208
	vst	$vr12, $s3, 192
	vld	$vr12, $s2, 208
	vld	$vr14, $s6, 208
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 208
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 208
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 224
	vst	$vr12, $s3, 208
	vld	$vr12, $s2, 224
	vld	$vr14, $s6, 224
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 224
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 224
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 240
	vst	$vr12, $s3, 224
	vld	$vr12, $s2, 240
	vld	$vr14, $s6, 240
	vfmul.d	$vr13, $vr11, $vr13
	vld	$vr15, $s3, 240
	vfmadd.d	$vr12, $vr12, $vr2, $vr13
	vfadd.d	$vr13, $vr14, $vr12
	vst	$vr13, $s6, 240
	vfadd.d	$vr12, $vr12, $vr15
	vld	$vr13, $s7, 256
	vst	$vr12, $s3, 240
	vld	$vr12, $s2, 256
	vld	$vr14, $s6, 256
	vfmul.d	$vr11, $vr11, $vr13
	vld	$vr13, $s3, 256
	vfmadd.d	$vr11, $vr12, $vr2, $vr11
	vfadd.d	$vr12, $vr14, $vr11
	vst	$vr12, $s6, 256
	vfadd.d	$vr11, $vr11, $vr13
	fld.d	$ft4, $s7, 272
	vst	$vr11, $s3, 256
	fld.d	$ft3, $s2, 272
	fld.d	$ft5, $s6, 272
	fmul.d	$ft2, $ft2, $ft4
	fld.d	$ft4, $s3, 272
	fmadd.d	$ft2, $ft3, $fa1, $ft2
	fadd.d	$ft3, $ft5, $ft2
	fst.d	$ft3, $s6, 272
	fadd.d	$ft2, $ft2, $ft4
	fst.d	$ft2, $s3, 272
	fmul.d	$ft1, $ft1, $fa1
	vld	$vr11, $s7, 0
	vreplvei.d	$vr10, $vr9, 0
	vld	$vr12, $s2, 280
	vld	$vr13, $s6, 280
	vfmul.d	$vr11, $vr10, $vr11
	vld	$vr14, $s3, 280
	vfmadd.d	$vr11, $vr12, $vr2, $vr11
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 280
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 16
	vst	$vr11, $s3, 280
	vld	$vr11, $s2, 296
	vld	$vr13, $s6, 296
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 296
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 296
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 32
	vst	$vr11, $s3, 296
	vld	$vr11, $s2, 312
	vld	$vr13, $s6, 312
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 312
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 312
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 48
	vst	$vr11, $s3, 312
	vld	$vr11, $s2, 328
	vld	$vr13, $s6, 328
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 328
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 328
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 64
	vst	$vr11, $s3, 328
	vld	$vr11, $s2, 344
	vld	$vr13, $s6, 344
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 344
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 344
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 80
	vst	$vr11, $s3, 344
	vld	$vr11, $s2, 360
	vld	$vr13, $s6, 360
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 360
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 360
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 96
	vst	$vr11, $s3, 360
	vld	$vr11, $s2, 376
	vld	$vr13, $s6, 376
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 376
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 376
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 112
	vst	$vr11, $s3, 376
	vld	$vr11, $s2, 392
	vld	$vr13, $s6, 392
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 392
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 392
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 128
	vst	$vr11, $s3, 392
	vld	$vr11, $s2, 408
	vld	$vr13, $s6, 408
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 408
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 408
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 144
	vst	$vr11, $s3, 408
	vld	$vr11, $s2, 424
	vld	$vr13, $s6, 424
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 424
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 424
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 160
	vst	$vr11, $s3, 424
	vld	$vr11, $s2, 440
	vld	$vr13, $s6, 440
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 440
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 440
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 176
	vst	$vr11, $s3, 440
	vld	$vr11, $s2, 456
	vld	$vr13, $s6, 456
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 456
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 456
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 192
	vst	$vr11, $s3, 456
	vld	$vr11, $s2, 472
	vld	$vr13, $s6, 472
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 472
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 472
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 208
	vst	$vr11, $s3, 472
	vld	$vr11, $s2, 488
	vld	$vr13, $s6, 488
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 488
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 488
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 224
	vst	$vr11, $s3, 488
	vld	$vr11, $s2, 504
	vld	$vr13, $s6, 504
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 504
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 504
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 240
	vst	$vr11, $s3, 504
	vld	$vr11, $s2, 520
	vld	$vr13, $s6, 520
	vfmul.d	$vr12, $vr10, $vr12
	vld	$vr14, $s3, 520
	vfmadd.d	$vr11, $vr11, $vr2, $vr12
	vfadd.d	$vr12, $vr13, $vr11
	vst	$vr12, $s6, 520
	vfadd.d	$vr11, $vr11, $vr14
	vld	$vr12, $s7, 256
	vst	$vr11, $s3, 520
	vld	$vr11, $s2, 536
	vld	$vr13, $s6, 536
	vfmul.d	$vr10, $vr10, $vr12
	vld	$vr12, $s3, 536
	vfmadd.d	$vr10, $vr11, $vr2, $vr10
	vfadd.d	$vr11, $vr13, $vr10
	vst	$vr11, $s6, 536
	vfadd.d	$vr10, $vr10, $vr12
	fld.d	$ft3, $s7, 272
	vst	$vr10, $s3, 536
	fld.d	$ft2, $s2, 552
	fld.d	$ft4, $s6, 552
	fmul.d	$ft1, $ft1, $ft3
	fld.d	$ft3, $s3, 552
	fmadd.d	$ft1, $ft2, $fa1, $ft1
	fadd.d	$ft2, $ft4, $ft1
	fst.d	$ft2, $s6, 552
	fadd.d	$ft1, $ft1, $ft3
	fst.d	$ft1, $s3, 552
	fmul.d	$ft0, $ft0, $fa1
	vld	$vr10, $s7, 0
	vreplvei.d	$vr9, $vr8, 0
	vld	$vr11, $s2, 560
	vld	$vr12, $s6, 560
	vfmul.d	$vr10, $vr9, $vr10
	vld	$vr13, $s3, 560
	vfmadd.d	$vr10, $vr11, $vr2, $vr10
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 560
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 16
	vst	$vr10, $s3, 560
	vld	$vr10, $s2, 576
	vld	$vr12, $s6, 576
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 576
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 576
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 32
	vst	$vr10, $s3, 576
	vld	$vr10, $s2, 592
	vld	$vr12, $s6, 592
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 592
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 592
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 48
	vst	$vr10, $s3, 592
	vld	$vr10, $s2, 608
	vld	$vr12, $s6, 608
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 608
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 608
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 64
	vst	$vr10, $s3, 608
	vld	$vr10, $s2, 624
	vld	$vr12, $s6, 624
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 624
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 624
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 80
	vst	$vr10, $s3, 624
	vld	$vr10, $s2, 640
	vld	$vr12, $s6, 640
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 640
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 640
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 96
	vst	$vr10, $s3, 640
	vld	$vr10, $s2, 656
	vld	$vr12, $s6, 656
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 656
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 656
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 112
	vst	$vr10, $s3, 656
	vld	$vr10, $s2, 672
	vld	$vr12, $s6, 672
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 672
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 672
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 128
	vst	$vr10, $s3, 672
	vld	$vr10, $s2, 688
	vld	$vr12, $s6, 688
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 688
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 688
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 144
	vst	$vr10, $s3, 688
	vld	$vr10, $s2, 704
	vld	$vr12, $s6, 704
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 704
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 704
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 160
	vst	$vr10, $s3, 704
	vld	$vr10, $s2, 720
	vld	$vr12, $s6, 720
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 720
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 720
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 176
	vst	$vr10, $s3, 720
	vld	$vr10, $s2, 736
	vld	$vr12, $s6, 736
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 736
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 736
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 192
	vst	$vr10, $s3, 736
	vld	$vr10, $s2, 752
	vld	$vr12, $s6, 752
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 752
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 752
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 208
	vst	$vr10, $s3, 752
	vld	$vr10, $s2, 768
	vld	$vr12, $s6, 768
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 768
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 768
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 224
	vst	$vr10, $s3, 768
	vld	$vr10, $s2, 784
	vld	$vr12, $s6, 784
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 784
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 784
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 240
	vst	$vr10, $s3, 784
	vld	$vr10, $s2, 800
	vld	$vr12, $s6, 800
	vfmul.d	$vr11, $vr9, $vr11
	vld	$vr13, $s3, 800
	vfmadd.d	$vr10, $vr10, $vr2, $vr11
	vfadd.d	$vr11, $vr12, $vr10
	vst	$vr11, $s6, 800
	vfadd.d	$vr10, $vr10, $vr13
	vld	$vr11, $s7, 256
	vst	$vr10, $s3, 800
	vld	$vr10, $s2, 816
	vld	$vr12, $s6, 816
	vfmul.d	$vr9, $vr9, $vr11
	vld	$vr11, $s3, 816
	vfmadd.d	$vr9, $vr10, $vr2, $vr9
	vfadd.d	$vr10, $vr12, $vr9
	vst	$vr10, $s6, 816
	vfadd.d	$vr9, $vr9, $vr11
	fld.d	$ft2, $s7, 272
	vst	$vr9, $s3, 816
	fld.d	$ft1, $s2, 832
	fld.d	$ft3, $s6, 832
	fmul.d	$ft0, $ft0, $ft2
	fld.d	$ft2, $s3, 832
	fmadd.d	$ft0, $ft1, $fa1, $ft0
	fadd.d	$ft1, $ft3, $ft0
	fst.d	$ft1, $s6, 832
	fadd.d	$ft0, $ft0, $ft2
	fst.d	$ft0, $s3, 832
	fmul.d	$fa7, $fa7, $fa1
	vld	$vr9, $s7, 0
	vreplvei.d	$vr8, $vr7, 0
	vld	$vr10, $s2, 840
	vld	$vr11, $s6, 840
	vfmul.d	$vr9, $vr8, $vr9
	vld	$vr12, $s3, 840
	vfmadd.d	$vr9, $vr10, $vr2, $vr9
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 840
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 16
	vst	$vr9, $s3, 840
	vld	$vr9, $s2, 856
	vld	$vr11, $s6, 856
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 856
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 856
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 32
	vst	$vr9, $s3, 856
	vld	$vr9, $s2, 872
	vld	$vr11, $s6, 872
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 872
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 872
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 48
	vst	$vr9, $s3, 872
	vld	$vr9, $s2, 888
	vld	$vr11, $s6, 888
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 888
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 888
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 64
	vst	$vr9, $s3, 888
	vld	$vr9, $s2, 904
	vld	$vr11, $s6, 904
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 904
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 904
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 80
	vst	$vr9, $s3, 904
	vld	$vr9, $s2, 920
	vld	$vr11, $s6, 920
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 920
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 920
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 96
	vst	$vr9, $s3, 920
	vld	$vr9, $s2, 936
	vld	$vr11, $s6, 936
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 936
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 936
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 112
	vst	$vr9, $s3, 936
	vld	$vr9, $s2, 952
	vld	$vr11, $s6, 952
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 952
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 952
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 128
	vst	$vr9, $s3, 952
	vld	$vr9, $s2, 968
	vld	$vr11, $s6, 968
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 968
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 968
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 144
	vst	$vr9, $s3, 968
	vld	$vr9, $s2, 984
	vld	$vr11, $s6, 984
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 984
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 984
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 160
	vst	$vr9, $s3, 984
	vld	$vr9, $s2, 1000
	vld	$vr11, $s6, 1000
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 1000
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 1000
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 176
	vst	$vr9, $s3, 1000
	vld	$vr9, $s2, 1016
	vld	$vr11, $s6, 1016
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 1016
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 1016
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 192
	vst	$vr9, $s3, 1016
	vld	$vr9, $s2, 1032
	vld	$vr11, $s6, 1032
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 1032
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 1032
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 208
	vst	$vr9, $s3, 1032
	vld	$vr9, $s2, 1048
	vld	$vr11, $s6, 1048
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 1048
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 1048
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 224
	vst	$vr9, $s3, 1048
	vld	$vr9, $s2, 1064
	vld	$vr11, $s6, 1064
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 1064
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 1064
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 240
	vst	$vr9, $s3, 1064
	vld	$vr9, $s2, 1080
	vld	$vr11, $s6, 1080
	vfmul.d	$vr10, $vr8, $vr10
	vld	$vr12, $s3, 1080
	vfmadd.d	$vr9, $vr9, $vr2, $vr10
	vfadd.d	$vr10, $vr11, $vr9
	vst	$vr10, $s6, 1080
	vfadd.d	$vr9, $vr9, $vr12
	vld	$vr10, $s7, 256
	vst	$vr9, $s3, 1080
	vld	$vr9, $s2, 1096
	vld	$vr11, $s6, 1096
	vfmul.d	$vr8, $vr8, $vr10
	vld	$vr10, $s3, 1096
	vfmadd.d	$vr8, $vr9, $vr2, $vr8
	vfadd.d	$vr9, $vr11, $vr8
	vst	$vr9, $s6, 1096
	vfadd.d	$vr8, $vr8, $vr10
	fld.d	$ft1, $s7, 272
	vst	$vr8, $s3, 1096
	fld.d	$ft0, $s2, 1112
	fld.d	$ft2, $s6, 1112
	fmul.d	$fa7, $fa7, $ft1
	fld.d	$ft1, $s3, 1112
	fmadd.d	$fa7, $ft0, $fa1, $fa7
	fadd.d	$ft0, $ft2, $fa7
	fst.d	$ft0, $s6, 1112
	fadd.d	$fa7, $fa7, $ft1
	fst.d	$fa7, $s3, 1112
	fmul.d	$fa6, $fa6, $fa1
	vld	$vr8, $s7, 0
	vreplvei.d	$vr7, $vr6, 0
	vld	$vr9, $s2, 1120
	vld	$vr10, $s6, 1120
	vfmul.d	$vr8, $vr7, $vr8
	vld	$vr11, $s3, 1120
	vfmadd.d	$vr8, $vr9, $vr2, $vr8
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1120
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 16
	vst	$vr8, $s3, 1120
	vld	$vr8, $s2, 1136
	vld	$vr10, $s6, 1136
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1136
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1136
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 32
	vst	$vr8, $s3, 1136
	vld	$vr8, $s2, 1152
	vld	$vr10, $s6, 1152
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1152
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1152
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 48
	vst	$vr8, $s3, 1152
	vld	$vr8, $s2, 1168
	vld	$vr10, $s6, 1168
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1168
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1168
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 64
	vst	$vr8, $s3, 1168
	vld	$vr8, $s2, 1184
	vld	$vr10, $s6, 1184
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1184
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1184
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 80
	vst	$vr8, $s3, 1184
	vld	$vr8, $s2, 1200
	vld	$vr10, $s6, 1200
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1200
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1200
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 96
	vst	$vr8, $s3, 1200
	vld	$vr8, $s2, 1216
	vld	$vr10, $s6, 1216
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1216
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1216
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 112
	vst	$vr8, $s3, 1216
	vld	$vr8, $s2, 1232
	vld	$vr10, $s6, 1232
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1232
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1232
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 128
	vst	$vr8, $s3, 1232
	vld	$vr8, $s2, 1248
	vld	$vr10, $s6, 1248
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1248
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1248
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 144
	vst	$vr8, $s3, 1248
	vld	$vr8, $s2, 1264
	vld	$vr10, $s6, 1264
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1264
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1264
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 160
	vst	$vr8, $s3, 1264
	vld	$vr8, $s2, 1280
	vld	$vr10, $s6, 1280
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1280
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1280
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 176
	vst	$vr8, $s3, 1280
	vld	$vr8, $s2, 1296
	vld	$vr10, $s6, 1296
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1296
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1296
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 192
	vst	$vr8, $s3, 1296
	vld	$vr8, $s2, 1312
	vld	$vr10, $s6, 1312
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1312
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1312
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 208
	vst	$vr8, $s3, 1312
	vld	$vr8, $s2, 1328
	vld	$vr10, $s6, 1328
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1328
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1328
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 224
	vst	$vr8, $s3, 1328
	vld	$vr8, $s2, 1344
	vld	$vr10, $s6, 1344
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1344
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1344
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 240
	vst	$vr8, $s3, 1344
	vld	$vr8, $s2, 1360
	vld	$vr10, $s6, 1360
	vfmul.d	$vr9, $vr7, $vr9
	vld	$vr11, $s3, 1360
	vfmadd.d	$vr8, $vr8, $vr2, $vr9
	vfadd.d	$vr9, $vr10, $vr8
	vst	$vr9, $s6, 1360
	vfadd.d	$vr8, $vr8, $vr11
	vld	$vr9, $s7, 256
	vst	$vr8, $s3, 1360
	vld	$vr8, $s2, 1376
	vld	$vr10, $s6, 1376
	vfmul.d	$vr7, $vr7, $vr9
	vld	$vr9, $s3, 1376
	vfmadd.d	$vr7, $vr8, $vr2, $vr7
	vfadd.d	$vr8, $vr10, $vr7
	vst	$vr8, $s6, 1376
	vfadd.d	$vr7, $vr7, $vr9
	fld.d	$ft0, $s7, 272
	vst	$vr7, $s3, 1376
	fld.d	$fa7, $s2, 1392
	fld.d	$ft1, $s6, 1392
	fmul.d	$fa6, $fa6, $ft0
	fld.d	$ft0, $s3, 1392
	fmadd.d	$fa6, $fa7, $fa1, $fa6
	fadd.d	$fa7, $ft1, $fa6
	fst.d	$fa7, $s6, 1392
	fadd.d	$fa6, $fa6, $ft0
	fst.d	$fa6, $s3, 1392
	fmul.d	$fa5, $fa5, $fa1
	vld	$vr7, $s7, 0
	vreplvei.d	$vr6, $vr5, 0
	vld	$vr8, $s2, 1400
	vld	$vr9, $s6, 1400
	vfmul.d	$vr7, $vr6, $vr7
	vld	$vr10, $s3, 1400
	vfmadd.d	$vr7, $vr8, $vr2, $vr7
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1400
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 16
	vst	$vr7, $s3, 1400
	vld	$vr7, $s2, 1416
	vld	$vr9, $s6, 1416
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1416
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1416
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 32
	vst	$vr7, $s3, 1416
	vld	$vr7, $s2, 1432
	vld	$vr9, $s6, 1432
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1432
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1432
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 48
	vst	$vr7, $s3, 1432
	vld	$vr7, $s2, 1448
	vld	$vr9, $s6, 1448
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1448
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1448
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 64
	vst	$vr7, $s3, 1448
	vld	$vr7, $s2, 1464
	vld	$vr9, $s6, 1464
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1464
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1464
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 80
	vst	$vr7, $s3, 1464
	vld	$vr7, $s2, 1480
	vld	$vr9, $s6, 1480
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1480
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1480
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 96
	vst	$vr7, $s3, 1480
	vld	$vr7, $s2, 1496
	vld	$vr9, $s6, 1496
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1496
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1496
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 112
	vst	$vr7, $s3, 1496
	vld	$vr7, $s2, 1512
	vld	$vr9, $s6, 1512
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1512
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1512
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 128
	vst	$vr7, $s3, 1512
	vld	$vr7, $s2, 1528
	vld	$vr9, $s6, 1528
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1528
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1528
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 144
	vst	$vr7, $s3, 1528
	vld	$vr7, $s2, 1544
	vld	$vr9, $s6, 1544
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1544
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1544
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 160
	vst	$vr7, $s3, 1544
	vld	$vr7, $s2, 1560
	vld	$vr9, $s6, 1560
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1560
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1560
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 176
	vst	$vr7, $s3, 1560
	vld	$vr7, $s2, 1576
	vld	$vr9, $s6, 1576
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1576
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1576
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 192
	vst	$vr7, $s3, 1576
	vld	$vr7, $s2, 1592
	vld	$vr9, $s6, 1592
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1592
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1592
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 208
	vst	$vr7, $s3, 1592
	vld	$vr7, $s2, 1608
	vld	$vr9, $s6, 1608
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1608
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1608
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 224
	vst	$vr7, $s3, 1608
	vld	$vr7, $s2, 1624
	vld	$vr9, $s6, 1624
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1624
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1624
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 240
	vst	$vr7, $s3, 1624
	vld	$vr7, $s2, 1640
	vld	$vr9, $s6, 1640
	vfmul.d	$vr8, $vr6, $vr8
	vld	$vr10, $s3, 1640
	vfmadd.d	$vr7, $vr7, $vr2, $vr8
	vfadd.d	$vr8, $vr9, $vr7
	vst	$vr8, $s6, 1640
	vfadd.d	$vr7, $vr7, $vr10
	vld	$vr8, $s7, 256
	vst	$vr7, $s3, 1640
	vld	$vr7, $s2, 1656
	vld	$vr9, $s6, 1656
	vfmul.d	$vr6, $vr6, $vr8
	vld	$vr8, $s3, 1656
	vfmadd.d	$vr6, $vr7, $vr2, $vr6
	vfadd.d	$vr7, $vr9, $vr6
	vst	$vr7, $s6, 1656
	vfadd.d	$vr6, $vr6, $vr8
	fld.d	$fa7, $s7, 272
	vst	$vr6, $s3, 1656
	fld.d	$fa6, $s2, 1672
	fld.d	$ft0, $s6, 1672
	fmul.d	$fa5, $fa5, $fa7
	fld.d	$fa7, $s3, 1672
	fmadd.d	$fa5, $fa6, $fa1, $fa5
	fadd.d	$fa6, $ft0, $fa5
	fst.d	$fa6, $s6, 1672
	fadd.d	$fa5, $fa5, $fa7
	fst.d	$fa5, $s3, 1672
	fmul.d	$fa4, $fa4, $fa1
	vld	$vr6, $s7, 0
	vreplvei.d	$vr5, $vr4, 0
	vld	$vr7, $s2, 1680
	vld	$vr8, $s6, 1680
	vfmul.d	$vr6, $vr5, $vr6
	vld	$vr9, $s3, 1680
	vfmadd.d	$vr6, $vr7, $vr2, $vr6
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1680
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 16
	vst	$vr6, $s3, 1680
	vld	$vr6, $s2, 1696
	vld	$vr8, $s6, 1696
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1696
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1696
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 32
	vst	$vr6, $s3, 1696
	vld	$vr6, $s2, 1712
	vld	$vr8, $s6, 1712
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1712
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1712
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 48
	vst	$vr6, $s3, 1712
	vld	$vr6, $s2, 1728
	vld	$vr8, $s6, 1728
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1728
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1728
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 64
	vst	$vr6, $s3, 1728
	vld	$vr6, $s2, 1744
	vld	$vr8, $s6, 1744
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1744
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1744
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 80
	vst	$vr6, $s3, 1744
	vld	$vr6, $s2, 1760
	vld	$vr8, $s6, 1760
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1760
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1760
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 96
	vst	$vr6, $s3, 1760
	vld	$vr6, $s2, 1776
	vld	$vr8, $s6, 1776
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1776
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1776
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 112
	vst	$vr6, $s3, 1776
	vld	$vr6, $s2, 1792
	vld	$vr8, $s6, 1792
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1792
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1792
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 128
	vst	$vr6, $s3, 1792
	vld	$vr6, $s2, 1808
	vld	$vr8, $s6, 1808
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1808
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1808
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 144
	vst	$vr6, $s3, 1808
	vld	$vr6, $s2, 1824
	vld	$vr8, $s6, 1824
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1824
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1824
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 160
	vst	$vr6, $s3, 1824
	vld	$vr6, $s2, 1840
	vld	$vr8, $s6, 1840
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1840
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1840
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 176
	vst	$vr6, $s3, 1840
	vld	$vr6, $s2, 1856
	vld	$vr8, $s6, 1856
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1856
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1856
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 192
	vst	$vr6, $s3, 1856
	vld	$vr6, $s2, 1872
	vld	$vr8, $s6, 1872
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1872
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1872
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 208
	vst	$vr6, $s3, 1872
	vld	$vr6, $s2, 1888
	vld	$vr8, $s6, 1888
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1888
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1888
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 224
	vst	$vr6, $s3, 1888
	vld	$vr6, $s2, 1904
	vld	$vr8, $s6, 1904
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1904
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1904
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 240
	vst	$vr6, $s3, 1904
	vld	$vr6, $s2, 1920
	vld	$vr8, $s6, 1920
	vfmul.d	$vr7, $vr5, $vr7
	vld	$vr9, $s3, 1920
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr7, $vr8, $vr6
	vst	$vr7, $s6, 1920
	vfadd.d	$vr6, $vr6, $vr9
	vld	$vr7, $s7, 256
	vst	$vr6, $s3, 1920
	vld	$vr6, $s2, 1936
	vld	$vr8, $s6, 1936
	vfmul.d	$vr5, $vr5, $vr7
	vld	$vr7, $s3, 1936
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr8, $vr5
	vst	$vr6, $s6, 1936
	vfadd.d	$vr5, $vr5, $vr7
	fld.d	$fa6, $s7, 272
	vst	$vr5, $s3, 1936
	fld.d	$fa5, $s2, 1952
	fld.d	$fa7, $s6, 1952
	fmul.d	$fa4, $fa4, $fa6
	fld.d	$fa6, $s3, 1952
	fmadd.d	$fa4, $fa5, $fa1, $fa4
	fadd.d	$fa5, $fa7, $fa4
	fst.d	$fa5, $s6, 1952
	fadd.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $s3, 1952
	fmul.d	$fa3, $fa3, $fa1
	vld	$vr5, $s7, 0
	vreplvei.d	$vr4, $vr3, 0
	vld	$vr6, $s2, 1960
	vld	$vr7, $s6, 1960
	vfmul.d	$vr5, $vr4, $vr5
	vld	$vr8, $s3, 1960
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr7, $vr5
	vst	$vr6, $s6, 1960
	vfadd.d	$vr5, $vr5, $vr8
	vld	$vr6, $s7, 16
	vld	$vr7, $s2, 1976
	vst	$vr5, $s3, 1960
	vld	$vr5, $s6, 1976
	vfmul.d	$vr6, $vr4, $vr6
	vfmadd.d	$vr6, $vr7, $vr2, $vr6
	vld	$vr7, $s3, 1976
	vfadd.d	$vr5, $vr5, $vr6
	vst	$vr5, $s6, 1976
	vld	$vr5, $s6, 1992
	vfadd.d	$vr6, $vr6, $vr7
	vst	$vr6, $s3, 1976
	vld	$vr6, $s7, 32
	vld	$vr7, $s2, 1992
	vld	$vr8, $s6, 2008
	vld	$vr9, $s3, 1992
	vfmul.d	$vr6, $vr4, $vr6
	vfmadd.d	$vr6, $vr7, $vr2, $vr6
	vfadd.d	$vr5, $vr5, $vr6
	vst	$vr5, $s6, 1992
	vfadd.d	$vr5, $vr6, $vr9
	vst	$vr5, $s3, 1992
	vld	$vr5, $s7, 48
	vld	$vr6, $s2, 2008
	vld	$vr7, $s6, 2024
	vld	$vr9, $s3, 2008
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr8, $vr5
	vst	$vr6, $s6, 2008
	vfadd.d	$vr5, $vr5, $vr9
	vst	$vr5, $s3, 2008
	vld	$vr5, $s7, 64
	vld	$vr6, $s2, 2024
	vld	$vr8, $s6, 2040
	vld	$vr9, $s3, 2024
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr7, $vr5
	vst	$vr6, $s6, 2024
	vfadd.d	$vr5, $vr5, $vr9
	vst	$vr5, $s3, 2024
	vld	$vr5, $s7, 80
	vld	$vr6, $s2, 2040
	ori	$a2, $zero, 2056
	vldx	$vr7, $s6, $a2
	vld	$vr9, $s3, 2040
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr8, $vr5
	vst	$vr6, $s6, 2040
	vfadd.d	$vr5, $vr5, $vr9
	vst	$vr5, $s3, 2040
	vld	$vr5, $s7, 96
	vldx	$vr6, $s2, $a2
	ori	$a3, $zero, 2072
	vldx	$vr8, $s6, $a3
	vldx	$vr9, $s3, $a2
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr7, $vr5
	vstx	$vr6, $s6, $a2
	vfadd.d	$vr5, $vr5, $vr9
	vstx	$vr5, $s3, $a2
	vld	$vr5, $s7, 112
	vldx	$vr6, $s2, $a3
	ori	$a2, $zero, 2088
	vldx	$vr7, $s6, $a2
	vldx	$vr9, $s3, $a3
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr8, $vr5
	vstx	$vr6, $s6, $a3
	vfadd.d	$vr5, $vr5, $vr9
	vstx	$vr5, $s3, $a3
	vld	$vr5, $s7, 128
	vldx	$vr6, $s2, $a2
	ori	$a3, $zero, 2104
	vldx	$vr8, $s6, $a3
	vldx	$vr9, $s3, $a2
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr7, $vr5
	vstx	$vr6, $s6, $a2
	vfadd.d	$vr5, $vr5, $vr9
	vstx	$vr5, $s3, $a2
	vld	$vr5, $s7, 144
	vldx	$vr6, $s2, $a3
	ori	$a2, $zero, 2120
	vldx	$vr7, $s6, $a2
	vldx	$vr9, $s3, $a3
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr8, $vr5
	vstx	$vr6, $s6, $a3
	vfadd.d	$vr5, $vr5, $vr9
	vstx	$vr5, $s3, $a3
	vld	$vr5, $s7, 160
	vldx	$vr6, $s2, $a2
	ori	$a3, $zero, 2136
	vldx	$vr8, $s6, $a3
	vldx	$vr9, $s3, $a2
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr7, $vr5
	vstx	$vr6, $s6, $a2
	vfadd.d	$vr5, $vr5, $vr9
	vstx	$vr5, $s3, $a2
	vld	$vr5, $s7, 176
	vldx	$vr6, $s2, $a3
	ori	$a2, $zero, 2152
	vldx	$vr7, $s6, $a2
	vldx	$vr9, $s3, $a3
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr8, $vr5
	vstx	$vr6, $s6, $a3
	vfadd.d	$vr5, $vr5, $vr9
	vstx	$vr5, $s3, $a3
	vld	$vr5, $s7, 192
	vldx	$vr6, $s2, $a2
	ori	$a3, $zero, 2168
	vldx	$vr8, $s6, $a3
	vldx	$vr9, $s3, $a2
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr6, $vr2, $vr5
	vfadd.d	$vr6, $vr7, $vr5
	vstx	$vr6, $s6, $a2
	vfadd.d	$vr5, $vr5, $vr9
	vstx	$vr5, $s3, $a2
	ori	$a4, $zero, 2184
	vldx	$vr5, $s6, $a4
	vldx	$vr6, $s2, $a4
	vld	$vr7, $s7, 208
	vldx	$vr9, $s2, $a3
	vldx	$vr10, $s3, $a3
	vld	$vr11, $s7, 224
	vfmul.d	$vr7, $vr4, $vr7
	vfmadd.d	$vr7, $vr9, $vr2, $vr7
	vfadd.d	$vr8, $vr8, $vr7
	vstx	$vr8, $s6, $a3
	vfadd.d	$vr7, $vr7, $vr10
	vstx	$vr7, $s3, $a3
	vfmul.d	$vr7, $vr4, $vr11
	vfmadd.d	$vr6, $vr6, $vr2, $vr7
	vfadd.d	$vr5, $vr5, $vr6
	vstx	$vr5, $s6, $a4
	vld	$vr5, $s7, 240
	vld	$vr7, $s7, 256
	fld.d	$ft0, $s7, 272
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $a5, %pc_lo12(iteration_count)
	ori	$a3, $zero, 2200
	vldx	$vr9, $s6, $a3
	vldx	$vr10, $s3, $a4
	vldx	$vr11, $s2, $a3
	addi.d	$a2, $a2, 1
	st.w	$a2, $a5, %pc_lo12(iteration_count)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(numpats)
	vfadd.d	$vr6, $vr6, $vr10
	vstx	$vr6, $s3, $a4
	vfmul.d	$vr5, $vr4, $vr5
	vfmadd.d	$vr5, $vr11, $vr2, $vr5
	vfadd.d	$vr6, $vr9, $vr5
	vstx	$vr6, $s6, $a3
	vldx	$vr6, $s3, $a3
	ld.d	$ra, $sp, 560                   # 8-byte Folded Reload
	addi.d	$ra, $ra, 1
	ori	$a4, $zero, 2216
	vldx	$vr9, $s6, $a4
	ori	$a5, $zero, 2232
	fldx.d	$ft2, $s6, $a5
	vfadd.d	$vr5, $vr5, $vr6
	vstx	$vr5, $s3, $a3
	vldx	$vr5, $s2, $a4
	fldx.d	$fa6, $s2, $a5
	vldx	$vr11, $s3, $a4
	vfmul.d	$vr4, $vr4, $vr7
	vfmadd.d	$vr2, $vr5, $vr2, $vr4
	vfadd.d	$vr4, $vr9, $vr2
	vstx	$vr4, $s6, $a4
	vfadd.d	$vr2, $vr2, $vr11
	vstx	$vr2, $s3, $a4
	fldx.d	$fa2, $s3, $a5
	fmul.d	$fa3, $fa3, $ft0
	fmadd.d	$fa1, $fa6, $fa1, $fa3
	fadd.d	$fa3, $ft2, $fa1
	fstx.d	$fa3, $s6, $a5
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $s3, $a5
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	ori	$s7, $zero, 280
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	vld	$vr5, $sp, 96                   # 16-byte Folded Reload
	ori	$a6, $zero, 2464
	ori	$a7, $zero, 2480
	blt	$ra, $a2, .LBB15_25
# %bb.73:                               # %._crit_edge
                                        #   in Loop: Header=BB15_25 Depth=2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a4, %pc_lo12(numpasses)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a4, %pc_lo12(numpasses)
	ori	$a5, $zero, 1
	blez	$a2, .LBB15_3
# %bb.74:                               # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB15_25 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	move	$a4, $a2
	fmov.d	$fa1, $fa0
	vldi	$vr6, -976
	.p2align	4, , 16
.LBB15_75:                              # %.lr.ph.i.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa0, $fa0, $fa3
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB15_75
# %bb.76:                               # %.lr.ph.i
                                        #   in Loop: Header=BB15_25 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(worst_error)
	movgr2fr.d	$fa2, $a3
	pcalau12i	$a0, %pc_hi20(.LCPI15_3)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI15_3)
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(average_error)
	fcmp.cult.d	$fcc0, $fa1, $fa3
	lu52i.d	$a0, $zero, 1027
	vreplgr2vr.d	$vr0, $a0
	ori	$a0, $zero, 4
	bcnez	$fcc0, .LBB15_86
# %bb.77:                               # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB15_25 Depth=2
	bgeu	$a2, $a0, .LBB15_79
# %bb.78:                               #   in Loop: Header=BB15_25 Depth=2
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB15_82
	.p2align	4, , 16
.LBB15_79:                              # %vector.ph96
                                        #   in Loop: Header=BB15_25 Depth=2
	pcalau12i	$a0, %pc_hi20(tot_out_error+16)
	addi.d	$a1, $a0, %pc_lo12(tot_out_error+16)
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$a0, $a0, 2
	move	$a3, $a0
	vori.b	$vr1, $vr5, 0
	vori.b	$vr2, $vr5, 0
	.p2align	4, , 16
.LBB15_80:                              # %vector.body99
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $a1, -16
	vld	$vr4, $a1, 0
	vfcmp.cle.d	$vr3, $vr0, $vr3
	vfcmp.cle.d	$vr4, $vr0, $vr4
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB15_80
# %bb.81:                               # %middle.block106
                                        #   in Loop: Header=BB15_25 Depth=2
	vor.v	$vr0, $vr2, $vr1
	vslli.d	$vr0, $vr0, 63
	vmskltz.d	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	sltu	$a1, $zero, $a1
	beq	$a0, $a2, .LBB15_84
.LBB15_82:                              # %.lr.ph.split.i.preheader216
                                        #   in Loop: Header=BB15_25 Depth=2
	sub.d	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(tot_out_error)
	addi.d	$a3, $a3, %pc_lo12(tot_out_error)
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB15_83:                              # %.lr.ph.split.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a0, 0
	fcmp.cult.d	$fcc0, $fa0, $fa6
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a5, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB15_83
.LBB15_84:                              # %._crit_edge.i
                                        #   in Loop: Header=BB15_25 Depth=2
	bnez	$a1, .LBB15_88
# %bb.85:                               # %check_out_error.exit
                                        #   in Loop: Header=BB15_25 Depth=2
	move	$ra, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(learned)
	b	.LBB15_25
	.p2align	4, , 16
.LBB15_86:                              # %.lr.ph.split.us.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	bgeu	$a2, $a0, .LBB15_89
# %bb.87:                               #   in Loop: Header=BB15_5 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB15_92
	.p2align	4, , 16
.LBB15_88:                              #   in Loop: Header=BB15_5 Depth=1
	addi.d	$a0, $zero, -1
	b	.LBB15_4
.LBB15_89:                              # %vector.ph
                                        #   in Loop: Header=BB15_5 Depth=1
	pcalau12i	$a0, %pc_hi20(tot_out_error+16)
	addi.d	$a1, $a0, %pc_lo12(tot_out_error+16)
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$a0, $a0, 2
	vrepli.b	$vr1, 0
	move	$a4, $a0
	vori.b	$vr2, $vr1, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_90:                              # %vector.body
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a1, -16
	vld	$vr4, $a1, 0
	vfcmp.cle.d	$vr3, $vr0, $vr3
	vfcmp.cle.d	$vr4, $vr0, $vr4
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -4
	addi.d	$a1, $a1, 32
	bnez	$a4, .LBB15_90
# %bb.91:                               # %middle.block
                                        #   in Loop: Header=BB15_5 Depth=1
	vor.v	$vr0, $vr2, $vr1
	vslli.d	$vr0, $vr0, 63
	vmskltz.d	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	sltu	$a1, $zero, $a1
	beq	$a0, $a2, .LBB15_94
.LBB15_92:                              # %.lr.ph.split.us.i.preheader217
                                        #   in Loop: Header=BB15_5 Depth=1
	sub.d	$a2, $a3, $a0
	pcalau12i	$a3, %pc_hi20(tot_out_error)
	addi.d	$a3, $a3, %pc_lo12(tot_out_error)
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB15_93:                              # %.lr.ph.split.us.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fcmp.cult.d	$fcc0, $fa0, $fa6
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a5, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB15_93
.LBB15_94:                              # %._crit_edge.i.thread
                                        #   in Loop: Header=BB15_5 Depth=1
	sltu	$a0, $zero, $a1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	addi.d	$s1, $s1, -1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a2, %pc_lo12(learned)
	bnez	$s1, .LBB15_5
.LBB15_95:                              # %._crit_edge26
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fld.d	$fs7, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 912                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 920                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 928                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 936                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 944                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 952                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 960                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1048                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1056
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end15:
	.size	DoNNetIteration, .Lfunc_end15-DoNNetIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoLU
.LCPI16_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI16_1:
	.dword	0x407f400000000000              # double 500
	.text
	.globl	DoLU
	.p2align	5
	.type	DoLU,@function
DoLU:                                   # @DoLU
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	lu12i.w	$a0, 19
	ori	$a0, $a0, 3784
	addi.d	$a1, $sp, 40
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 808
	addi.d	$a1, $sp, 40
	ori	$s1, $zero, 808
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 808
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(LUtempvv)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(LUtempvv)
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$s3, $zero, 101
	move	$s4, $fp
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_1:                               #   in Loop: Header=BB16_2 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 808
	beq	$s2, $s3, .LBB16_6
.LBB16_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
	ori	$a0, $zero, 100
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	slli.d	$a0, $s2, 3
	fstx.d	$fa0, $s0, $a0
	mul.d	$a0, $s2, $s1
	add.d	$a0, $fp, $a0
	alsl.d	$s6, $s2, $a0, 3
	move	$s7, $s4
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               #   in Loop: Header=BB16_4 Depth=2
	st.d	$zero, $s7, 0
	addi.d	$s5, $s5, 1
	addi.d	$s7, $s7, 8
	beq	$s5, $s3, .LBB16_1
.LBB16_4:                               #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$s2, $s5, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=2
	ori	$a0, $zero, 1000
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $s6, 0
	addi.d	$s5, $s5, 1
	addi.d	$s7, $s7, 8
	bne	$s5, $s3, .LBB16_4
	b	.LBB16_1
.LBB16_6:                               # %.preheader.i.preheader
	move	$s3, $zero
	addi.d	$s4, $fp, 808
	ori	$s5, $zero, 808
	b	.LBB16_8
	.p2align	4, , 16
.LBB16_7:                               #   in Loop: Header=BB16_8 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s5, .LBB16_16
.LBB16_8:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_14 Depth 2
	ori	$a0, $zero, 101
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 101
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	beq	$s2, $a0, .LBB16_7
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB16_8 Depth=1
	bstrpick.d	$a1, $s2, 31, 0
	sltu	$a2, $s2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2cf	$fcc0, $a2
	vldi	$vr0, -912
	vldi	$vr1, -784
	fsel	$fa0, $fa1, $fa0, $fcc0
	mul.d	$a3, $a0, $s5
	mul.d	$a4, $a1, $s5
	add.d	$a2, $fp, $a4
	add.d	$a5, $s4, $a3
	add.d	$a3, $fp, $a3
	bgeu	$a2, $a5, .LBB16_12
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB16_8 Depth=1
	add.d	$a4, $s4, $a4
	bgeu	$a3, $a4, .LBB16_12
# %bb.11:                               #   in Loop: Header=BB16_8 Depth=1
	move	$a4, $zero
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_12:                              # %vector.ph
                                        #   in Loop: Header=BB16_8 Depth=1
	vld	$vr2, $a3, 0
	vld	$vr3, $a3, 16
	vld	$vr4, $a2, 0
	vld	$vr5, $a2, 16
	vreplvei.d	$vr1, $vr0, 0
	vfmadd.d	$vr2, $vr2, $vr1, $vr4
	vfmadd.d	$vr3, $vr3, $vr1, $vr5
	vld	$vr4, $a3, 32
	vld	$vr5, $a3, 48
	vld	$vr6, $a2, 32
	vld	$vr7, $a2, 48
	vst	$vr2, $a2, 0
	vst	$vr3, $a2, 16
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 64
	vld	$vr5, $a3, 80
	vld	$vr6, $a2, 64
	vld	$vr7, $a2, 80
	vst	$vr2, $a2, 32
	vst	$vr3, $a2, 48
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 96
	vld	$vr5, $a3, 112
	vld	$vr6, $a2, 96
	vld	$vr7, $a2, 112
	vst	$vr2, $a2, 64
	vst	$vr3, $a2, 80
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 128
	vld	$vr5, $a3, 144
	vld	$vr6, $a2, 128
	vld	$vr7, $a2, 144
	vst	$vr2, $a2, 96
	vst	$vr3, $a2, 112
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 160
	vld	$vr5, $a3, 176
	vld	$vr6, $a2, 160
	vld	$vr7, $a2, 176
	vst	$vr2, $a2, 128
	vst	$vr3, $a2, 144
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 192
	vld	$vr5, $a3, 208
	vld	$vr6, $a2, 192
	vld	$vr7, $a2, 208
	vst	$vr2, $a2, 160
	vst	$vr3, $a2, 176
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 224
	vld	$vr5, $a3, 240
	vld	$vr6, $a2, 224
	vld	$vr7, $a2, 240
	vst	$vr2, $a2, 192
	vst	$vr3, $a2, 208
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 256
	vld	$vr5, $a3, 272
	vld	$vr6, $a2, 256
	vld	$vr7, $a2, 272
	vst	$vr2, $a2, 224
	vst	$vr3, $a2, 240
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 288
	vld	$vr5, $a3, 304
	vld	$vr6, $a2, 288
	vld	$vr7, $a2, 304
	vst	$vr2, $a2, 256
	vst	$vr3, $a2, 272
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 320
	vld	$vr5, $a3, 336
	vld	$vr6, $a2, 320
	vld	$vr7, $a2, 336
	vst	$vr2, $a2, 288
	vst	$vr3, $a2, 304
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 352
	vld	$vr5, $a3, 368
	vld	$vr6, $a2, 352
	vld	$vr7, $a2, 368
	vst	$vr2, $a2, 320
	vst	$vr3, $a2, 336
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 384
	vld	$vr5, $a3, 400
	vld	$vr6, $a2, 384
	vld	$vr7, $a2, 400
	vst	$vr2, $a2, 352
	vst	$vr3, $a2, 368
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 416
	vld	$vr5, $a3, 432
	vld	$vr6, $a2, 416
	vld	$vr7, $a2, 432
	vst	$vr2, $a2, 384
	vst	$vr3, $a2, 400
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 448
	vld	$vr5, $a3, 464
	vld	$vr6, $a2, 448
	vld	$vr7, $a2, 464
	vst	$vr2, $a2, 416
	vst	$vr3, $a2, 432
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 480
	vld	$vr5, $a3, 496
	vld	$vr6, $a2, 480
	vld	$vr7, $a2, 496
	vst	$vr2, $a2, 448
	vst	$vr3, $a2, 464
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 512
	vld	$vr5, $a3, 528
	vld	$vr6, $a2, 512
	vld	$vr7, $a2, 528
	vst	$vr2, $a2, 480
	vst	$vr3, $a2, 496
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 544
	vld	$vr5, $a3, 560
	vld	$vr6, $a2, 544
	vld	$vr7, $a2, 560
	vst	$vr2, $a2, 512
	vst	$vr3, $a2, 528
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 576
	vld	$vr5, $a3, 592
	vld	$vr6, $a2, 576
	vld	$vr7, $a2, 592
	vst	$vr2, $a2, 544
	vst	$vr3, $a2, 560
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 608
	vld	$vr5, $a3, 624
	vld	$vr6, $a2, 608
	vld	$vr7, $a2, 624
	vst	$vr2, $a2, 576
	vst	$vr3, $a2, 592
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 640
	vld	$vr5, $a3, 656
	vld	$vr6, $a2, 640
	vld	$vr7, $a2, 656
	vst	$vr2, $a2, 608
	vst	$vr3, $a2, 624
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 672
	vld	$vr5, $a3, 688
	vld	$vr6, $a2, 672
	vld	$vr7, $a2, 688
	vst	$vr2, $a2, 640
	vst	$vr3, $a2, 656
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 704
	vld	$vr5, $a3, 720
	vld	$vr6, $a2, 704
	vld	$vr7, $a2, 720
	vst	$vr2, $a2, 672
	vst	$vr3, $a2, 688
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 736
	vld	$vr5, $a3, 752
	vld	$vr6, $a2, 736
	vld	$vr7, $a2, 752
	vst	$vr2, $a2, 704
	vst	$vr3, $a2, 720
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr3, $vr5, $vr1, $vr7
	vld	$vr4, $a3, 768
	vld	$vr5, $a3, 784
	vld	$vr6, $a2, 768
	vld	$vr7, $a2, 784
	vst	$vr2, $a2, 736
	vst	$vr3, $a2, 752
	vfmadd.d	$vr2, $vr4, $vr1, $vr6
	vfmadd.d	$vr1, $vr5, $vr1, $vr7
	vst	$vr2, $a2, 768
	vst	$vr1, $a2, 784
	ori	$a4, $zero, 100
.LBB16_13:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB16_8 Depth=1
	slli.d	$a4, $a4, 3
	.p2align	4, , 16
.LBB16_14:                              # %scalar.ph
                                        #   Parent Loop BB16_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $a3, $a4
	fldx.d	$fa2, $a2, $a4
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fstx.d	$fa1, $a2, $a4
	addi.d	$a4, $a4, 8
	bne	$a4, $s5, .LBB16_14
# %bb.15:                               #   in Loop: Header=BB16_8 Depth=1
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $s0, $a0
	slli.d	$a0, $a1, 3
	fldx.d	$fa2, $s0, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	fstx.d	$fa0, $s0, $a0
	b	.LBB16_7
.LBB16_16:                              # %build_problem.exit
	pcalau12i	$a0, %got_pc_hi20(global_lustruct)
	ld.d	$s8, $a0, %got_pc_lo12(global_lustruct)
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB16_24
# %bb.17:
	ld.d	$a0, $s8, 16
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s2, $a0
	beqz	$a1, .LBB16_19
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB16_19:
	ld.d	$a0, $s8, 16
	ori	$a1, $zero, 808
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s3, $a0
	beqz	$a1, .LBB16_39
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_23
# %bb.21:
	addi.d	$a1, $sp, 44
	move	$a0, $s2
.LBB16_22:                              # %LUFreeMem.exit74
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_23:                              # %LUFreeMem.exit74
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB16_39
.LBB16_24:
	st.d	$zero, $s8, 16
	ori	$s4, $zero, 1616
	lu12i.w	$a0, 39
	ori	$s5, $a0, 3472
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$a0, $a0, %got_pc_lo12(global_min_ticks)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1808
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$s6, $a0, %pc_lo12(.L.str.61)
	move	$s1, $zero
	.p2align	4, , 16
.LBB16_25:                              # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s2, $a0
	beqz	$a1, .LBB16_27
# %bb.26:                               #   in Loop: Header=BB16_25 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB16_27:                              #   in Loop: Header=BB16_25 Depth=1
	addi.d	$a1, $sp, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s3, $a0
	beqz	$a1, .LBB16_31
# %bb.28:                               #   in Loop: Header=BB16_25 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_30
# %bb.29:                               #   in Loop: Header=BB16_25 Depth=1
	addi.d	$a1, $sp, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_30:                              # %LUFreeMem.exit
                                        #   in Loop: Header=BB16_25 Depth=1
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB16_31:                              #   in Loop: Header=BB16_25 Depth=1
	addi.d	$s7, $s1, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s7
	pcaddu18i	$ra, %call36(DoLUIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bltu	$a1, $a0, .LBB16_38
# %bb.32:                               #   in Loop: Header=BB16_25 Depth=1
	addi.d	$a1, $sp, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 808
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$s5, $s5, $a0
	move	$s1, $s7
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bne	$s7, $a0, .LBB16_25
# %bb.33:
	ld.d	$a0, $s8, 16
	bnez	$a0, .LBB16_39
# %bb.34:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_36
# %bb.35:
	addi.d	$a1, $sp, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_36:
	beqz	$s3, .LBB16_23
# %bb.37:
	addi.d	$a1, $sp, 44
	move	$a0, $s3
	b	.LBB16_22
.LBB16_38:                              # %.thread
	addi.d	$a0, $s1, 1
	st.d	$a0, $s8, 16
.LBB16_39:
	move	$s1, $zero
	ld.d	$a4, $s8, 16
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI16_0)
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI16_1)
	movgr2fr.d	$fs0, $zero
	lu52i.d	$s4, $zero, 1107
	lu12i.w	$s5, 275200
	.p2align	4, , 16
.LBB16_40:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(DoLUIteration)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s8, 16
	srli.d	$a1, $a4, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a4
	bstrins.d	$a1, $s5, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s1, $a0, $s1
	bcnez	$fcc0, .LBB16_40
# %bb.41:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s8, 24
	bnez	$a0, .LBB16_43
# %bb.42:
	ori	$a0, $zero, 1
	st.w	$a0, $s8, 0
.LBB16_43:
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_45
# %bb.44:
	addi.d	$a1, $sp, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_45:
	beqz	$s3, .LBB16_47
# %bb.46:
	addi.d	$a1, $sp, 44
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_47:                              # %LUFreeMem.exit77
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end16:
	.size	DoLU, .Lfunc_end16-DoLU
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoLUIteration
.LCPI17_0:
	.dword	0x3bc79ca10c924223              # double 9.9999999999999995E-21
	.text
	.p2align	5
	.type	DoLUIteration,@function
DoLUIteration:                          # @DoLUIteration
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	beqz	$a4, .LBB17_67
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$a2, $zero
	sub.d	$a3, $a3, $a1
	sub.d	$a4, $s2, $a0
	addi.d	$a5, $s2, 16
	addi.d	$a6, $a0, 16
	ori	$a7, $zero, 808
	lu12i.w	$t0, 19
	ori	$s5, $t0, 3784
	ori	$t0, $zero, 32
	lu12i.w	$t1, -3
	ori	$t1, $t1, 2087
	lu12i.w	$t2, 2
	ori	$t2, $t2, 2008
	move	$t3, $s1
	move	$t4, $s2
	.p2align	4, , 16
.LBB17_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
                                        #     Child Loop BB17_8 Depth 2
                                        #     Child Loop BB17_13 Depth 2
	mul.d	$t5, $a2, $s5
	add.d	$t5, $a4, $t5
	bgeu	$t5, $t0, .LBB17_4
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	move	$fp, $zero
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_4:                               # %vector.body72.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	move	$t5, $a6
	move	$t6, $a5
	move	$t7, $t2
	.p2align	4, , 16
.LBB17_5:                               # %vector.body72
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t5, -16
	vld	$vr1, $t5, 0
	vst	$vr0, $t6, -16
	vst	$vr1, $t6, 0
	addi.d	$t7, $t7, -4
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	bnez	$t7, .LBB17_5
# %bb.6:                                #   in Loop: Header=BB17_2 Depth=1
	move	$fp, $t2
.LBB17_7:                               # %scalar.ph70.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	mul.d	$t5, $a2, $a7
	add.d	$t6, $a3, $t5
	add.d	$t7, $fp, $t1
	alsl.d	$t8, $fp, $t4, 3
	alsl.d	$fp, $fp, $a0, 3
	.p2align	4, , 16
.LBB17_8:                               # %scalar.ph70
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $fp, 0
	fst.d	$fa0, $t8, 0
	addi.d	$t7, $t7, 1
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, 8
	bnez	$t7, .LBB17_8
# %bb.9:                                # %.preheader.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	bgeu	$t6, $t0, .LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_2 Depth=1
	move	$t5, $zero
	b	.LBB17_12
	.p2align	4, , 16
.LBB17_11:                              # %vector.body
                                        #   in Loop: Header=BB17_2 Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a1, 16
	add.d	$t5, $s1, $t5
	vst	$vr0, $t5, 0
	vst	$vr1, $t5, 16
	vld	$vr0, $a1, 32
	vld	$vr1, $a1, 48
	vst	$vr0, $t5, 32
	vst	$vr1, $t5, 48
	vld	$vr0, $a1, 64
	vld	$vr1, $a1, 80
	vst	$vr0, $t5, 64
	vst	$vr1, $t5, 80
	vld	$vr0, $a1, 96
	vld	$vr1, $a1, 112
	vst	$vr0, $t5, 96
	vst	$vr1, $t5, 112
	vld	$vr0, $a1, 128
	vld	$vr1, $a1, 144
	vst	$vr0, $t5, 128
	vst	$vr1, $t5, 144
	vld	$vr0, $a1, 160
	vld	$vr1, $a1, 176
	vst	$vr0, $t5, 160
	vst	$vr1, $t5, 176
	vld	$vr0, $a1, 192
	vld	$vr1, $a1, 208
	vst	$vr0, $t5, 192
	vst	$vr1, $t5, 208
	vld	$vr0, $a1, 224
	vld	$vr1, $a1, 240
	vst	$vr0, $t5, 224
	vst	$vr1, $t5, 240
	vld	$vr0, $a1, 256
	vld	$vr1, $a1, 272
	vst	$vr0, $t5, 256
	vst	$vr1, $t5, 272
	vld	$vr0, $a1, 288
	vld	$vr1, $a1, 304
	vst	$vr0, $t5, 288
	vst	$vr1, $t5, 304
	vld	$vr0, $a1, 320
	vld	$vr1, $a1, 336
	vst	$vr0, $t5, 320
	vst	$vr1, $t5, 336
	vld	$vr0, $a1, 352
	vld	$vr1, $a1, 368
	vst	$vr0, $t5, 352
	vst	$vr1, $t5, 368
	vld	$vr0, $a1, 384
	vld	$vr1, $a1, 400
	vst	$vr0, $t5, 384
	vst	$vr1, $t5, 400
	vld	$vr0, $a1, 416
	vld	$vr1, $a1, 432
	vst	$vr0, $t5, 416
	vst	$vr1, $t5, 432
	vld	$vr0, $a1, 448
	vld	$vr1, $a1, 464
	vst	$vr0, $t5, 448
	vst	$vr1, $t5, 464
	vld	$vr0, $a1, 480
	vld	$vr1, $a1, 496
	vst	$vr0, $t5, 480
	vst	$vr1, $t5, 496
	vld	$vr0, $a1, 512
	vld	$vr1, $a1, 528
	vst	$vr0, $t5, 512
	vst	$vr1, $t5, 528
	vld	$vr0, $a1, 544
	vld	$vr1, $a1, 560
	vst	$vr0, $t5, 544
	vst	$vr1, $t5, 560
	vld	$vr0, $a1, 576
	vld	$vr1, $a1, 592
	vst	$vr0, $t5, 576
	vst	$vr1, $t5, 592
	vld	$vr0, $a1, 608
	vld	$vr1, $a1, 624
	vst	$vr0, $t5, 608
	vst	$vr1, $t5, 624
	vld	$vr0, $a1, 640
	vld	$vr1, $a1, 656
	vst	$vr0, $t5, 640
	vst	$vr1, $t5, 656
	vld	$vr0, $a1, 672
	vld	$vr1, $a1, 688
	vst	$vr0, $t5, 672
	vst	$vr1, $t5, 688
	vld	$vr0, $a1, 704
	vld	$vr1, $a1, 720
	vst	$vr0, $t5, 704
	vst	$vr1, $t5, 720
	vld	$vr0, $a1, 736
	vld	$vr1, $a1, 752
	vst	$vr0, $t5, 736
	vst	$vr1, $t5, 752
	vld	$vr0, $a1, 768
	vld	$vr1, $a1, 784
	vst	$vr0, $t5, 768
	vst	$vr1, $t5, 784
	ori	$t5, $zero, 100
.LBB17_12:                              # %.preheader.preheader105
                                        #   in Loop: Header=BB17_2 Depth=1
	slli.d	$t5, $t5, 3
	.p2align	4, , 16
.LBB17_13:                              # %.preheader
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $a1, $t5
	fstx.d	$fa0, $t3, $t5
	addi.d	$t5, $t5, 8
	bne	$t5, $a7, .LBB17_13
# %bb.14:                               #   in Loop: Header=BB17_2 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a5, $a5, $s5
	add.d	$t4, $t4, $s5
	addi.d	$t3, $t3, 808
	bne	$a2, $s0, .LBB17_2
# %bb.15:                               # %.lr.ph42.preheader
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$t7, $zero
	addi.d	$fp, $s2, 1616
	addi.d	$s6, $s2, 808
	addi.d	$s7, $s1, 808
	add.d	$s8, $s2, $s5
	ori	$a6, $zero, 808
	pcalau12i	$ra, %pc_hi20(LUtempvv)
	movgr2fr.d	$fa0, $zero
	ori	$t0, $zero, 101
	ori	$t1, $zero, 100
	addi.d	$t2, $sp, 116
	lu12i.w	$a0, 51492
	ori	$a0, $a0, 547
	lu32i.d	$a0, 498849
	lu52i.d	$a0, $a0, 956
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$t6, $s1
	move	$t3, $s2
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	b	.LBB17_17
	.p2align	4, , 16
.LBB17_16:                              # %lusolve.exit
                                        #   in Loop: Header=BB17_17 Depth=1
	addi.d	$t7, $t7, 1
	add.d	$t3, $t3, $s5
	add.d	$fp, $fp, $s5
	add.d	$s6, $s6, $s5
	addi.d	$t6, $t6, 808
	addi.d	$s7, $s7, 808
	add.d	$s8, $s8, $s5
	beq	$t7, $s0, .LBB17_66
.LBB17_17:                              # %.lr.ph42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_18 Depth 2
                                        #       Child Loop BB17_19 Depth 3
                                        #     Child Loop BB17_24 Depth 2
                                        #       Child Loop BB17_27 Depth 3
                                        #         Child Loop BB17_29 Depth 4
                                        #       Child Loop BB17_32 Depth 3
                                        #         Child Loop BB17_34 Depth 4
                                        #       Child Loop BB17_41 Depth 3
                                        #       Child Loop BB17_48 Depth 3
                                        #       Child Loop BB17_51 Depth 3
                                        #     Child Loop BB17_56 Depth 2
                                        #       Child Loop BB17_59 Depth 3
                                        #     Child Loop BB17_63 Depth 2
                                        #       Child Loop BB17_65 Depth 3
	move	$a0, $zero
	mul.d	$a1, $t7, $s5
	addi.d	$a2, $a1, 808
	add.d	$s4, $s2, $a2
	ld.d	$a2, $ra, %pc_lo12(LUtempvv)
	add.d	$t8, $s2, $a1
	mul.d	$a1, $t7, $a6
	add.d	$s3, $s1, $a1
	move	$a3, $t3
	.p2align	4, , 16
.LBB17_18:                              # %.preheader153.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_19 Depth 3
	move	$a1, $zero
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB17_19:                              #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $a3, $a1
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a1, $a1, 8
	fsel	$fa1, $fa1, $fa2, $fcc0
	bne	$a1, $a6, .LBB17_19
# %bb.20:                               #   in Loop: Header=BB17_18 Depth=2
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB17_16
# %bb.21:                               #   in Loop: Header=BB17_18 Depth=2
	frecip.d	$fa1, $fa1
	slli.d	$a1, $a0, 3
	fstx.d	$fa1, $a2, $a1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 808
	bne	$a0, $t0, .LBB17_18
# %bb.22:                               # %.preheader151.i.i
                                        #   in Loop: Header=BB17_17 Depth=1
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$t7, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s5, $ra, %pc_lo12(LUtempvv)
	move	$a3, $s6
	move	$s6, $zero
	move	$s7, $zero
	move	$ra, $zero
	ori	$s2, $zero, 100
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $fp
	move	$fp, $t3
	move	$s1, $t3
	b	.LBB17_24
	.p2align	4, , 16
.LBB17_23:                              # %.loopexit147.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s1, $s1, 8
	addi.d	$s6, $s6, 808
	addi.d	$fp, $fp, 808
	addi.d	$s2, $s2, -1
	addi.d	$a2, $a2, 816
	addi.d	$a3, $a3, 8
.LBB17_24:                              #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_27 Depth 3
                                        #         Child Loop BB17_29 Depth 4
                                        #       Child Loop BB17_32 Depth 3
                                        #         Child Loop BB17_34 Depth 4
                                        #       Child Loop BB17_41 Depth 3
                                        #       Child Loop BB17_48 Depth 3
                                        #       Child Loop BB17_51 Depth 3
	slli.d	$a0, $s7, 3
	beqz	$s7, .LBB17_30
# %bb.25:                               # %.preheader149.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	move	$a4, $zero
	move	$a5, $t3
	b	.LBB17_27
	.p2align	4, , 16
.LBB17_26:                              # %.loopexit146.i.i
                                        #   in Loop: Header=BB17_27 Depth=3
	alsl.d	$a1, $s7, $a7, 3
	fst.d	$fa1, $a1, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 808
	beq	$a4, $s7, .LBB17_30
.LBB17_27:                              #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_29 Depth 4
	mul.d	$a1, $a4, $a6
	add.d	$a7, $t8, $a1
	fldx.d	$fa1, $a7, $a0
	beqz	$a4, .LBB17_26
# %bb.28:                               # %.preheader145.i.i.preheader
                                        #   in Loop: Header=BB17_27 Depth=3
	move	$t4, $a5
	move	$t5, $s1
	move	$s0, $a4
	.p2align	4, , 16
.LBB17_29:                              # %.preheader145.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        #       Parent Loop BB17_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $t4, 0
	fld.d	$fa3, $t5, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$s0, $s0, -1
	addi.d	$t5, $t5, 808
	addi.d	$t4, $t4, 8
	bnez	$s0, .LBB17_29
	b	.LBB17_26
	.p2align	4, , 16
.LBB17_30:                              # %.lr.ph.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	move	$s8, $s2
	bstrins.d	$s8, $zero, 0, 0
	mul.d	$a1, $s7, $a6
	add.d	$s0, $t8, $a1
	add.d	$t4, $s4, $a1
	sub.d	$a7, $t1, $s7
	move	$t7, $fp
	move	$a5, $s7
	fmov.d	$fa1, $fa0
	b	.LBB17_32
	.p2align	4, , 16
.LBB17_31:                              # %.loopexit.i.i
                                        #   in Loop: Header=BB17_32 Depth=3
	alsl.d	$a1, $s7, $t5, 3
	fst.d	$fa2, $a1, 0
	slli.d	$a1, $a5, 3
	fldx.d	$fa3, $s5, $a1
	fabs.d	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa3
	fcmp.cult.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	movcf2gr	$a1, $fcc0
	masknez	$a4, $a5, $a1
	maskeqz	$a1, $ra, $a1
	or	$ra, $a1, $a4
	addi.d	$a5, $a5, 1
	addi.d	$t7, $t7, 808
	beq	$a5, $t0, .LBB17_35
.LBB17_32:                              #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_34 Depth 4
	mul.d	$a1, $a5, $a6
	add.d	$t5, $t8, $a1
	fldx.d	$fa2, $t5, $a0
	beqz	$s7, .LBB17_31
# %bb.33:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB17_32 Depth=3
	move	$a1, $zero
	move	$a4, $t7
	.p2align	4, , 16
.LBB17_34:                              # %.preheader.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        #       Parent Loop BB17_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa3, $a4, 0
	fldx.d	$fa4, $s1, $a1
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	addi.d	$a1, $a1, 808
	addi.d	$a4, $a4, 8
	bne	$s6, $a1, .LBB17_34
	b	.LBB17_31
	.p2align	4, , 16
.LBB17_35:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	bstrpick.d	$a4, $ra, 31, 0
	beq	$s7, $a4, .LBB17_43
# %bb.36:                               # %.preheader148.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	mul.d	$a5, $a4, $a6
	add.d	$t5, $t8, $a5
	bgeu	$t5, $t4, .LBB17_39
# %bb.37:                               # %.preheader148.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	add.d	$a1, $s4, $a5
	bgeu	$s0, $a1, .LBB17_39
# %bb.38:                               #   in Loop: Header=BB17_24 Depth=2
	move	$a1, $zero
	b	.LBB17_40
	.p2align	4, , 16
.LBB17_39:                              # %vector.body92
                                        #   in Loop: Header=BB17_24 Depth=2
	vld	$vr1, $s0, 0
	vld	$vr2, $s0, 16
	vld	$vr3, $t5, 0
	vld	$vr4, $t5, 16
	vst	$vr1, $t5, 0
	vst	$vr2, $t5, 16
	vst	$vr3, $s0, 0
	vst	$vr4, $s0, 16
	vld	$vr1, $s0, 32
	vld	$vr2, $s0, 48
	vld	$vr3, $t5, 32
	vld	$vr4, $t5, 48
	vst	$vr1, $t5, 32
	vst	$vr2, $t5, 48
	vst	$vr3, $s0, 32
	vst	$vr4, $s0, 48
	vld	$vr1, $s0, 64
	vld	$vr2, $s0, 80
	vld	$vr3, $t5, 64
	vld	$vr4, $t5, 80
	vst	$vr1, $t5, 64
	vst	$vr2, $t5, 80
	vst	$vr3, $s0, 64
	vst	$vr4, $s0, 80
	vld	$vr1, $s0, 96
	vld	$vr2, $s0, 112
	vld	$vr3, $t5, 96
	vld	$vr4, $t5, 112
	vst	$vr1, $t5, 96
	vst	$vr2, $t5, 112
	vst	$vr3, $s0, 96
	vst	$vr4, $s0, 112
	vld	$vr1, $s0, 128
	vld	$vr2, $s0, 144
	vld	$vr3, $t5, 128
	vld	$vr4, $t5, 144
	vst	$vr1, $t5, 128
	vst	$vr2, $t5, 144
	vst	$vr3, $s0, 128
	vst	$vr4, $s0, 144
	vld	$vr1, $s0, 160
	vld	$vr2, $s0, 176
	vld	$vr3, $t5, 160
	vld	$vr4, $t5, 176
	vst	$vr1, $t5, 160
	vst	$vr2, $t5, 176
	vst	$vr3, $s0, 160
	vst	$vr4, $s0, 176
	vld	$vr1, $s0, 192
	vld	$vr2, $s0, 208
	vld	$vr3, $t5, 192
	vld	$vr4, $t5, 208
	vst	$vr1, $t5, 192
	vst	$vr2, $t5, 208
	vst	$vr3, $s0, 192
	vst	$vr4, $s0, 208
	vld	$vr1, $s0, 224
	vld	$vr2, $s0, 240
	vld	$vr3, $t5, 224
	vld	$vr4, $t5, 240
	vst	$vr1, $t5, 224
	vst	$vr2, $t5, 240
	vst	$vr3, $s0, 224
	vst	$vr4, $s0, 240
	vld	$vr1, $s0, 256
	vld	$vr2, $s0, 272
	vld	$vr3, $t5, 256
	vld	$vr4, $t5, 272
	vst	$vr1, $t5, 256
	vst	$vr2, $t5, 272
	vst	$vr3, $s0, 256
	vst	$vr4, $s0, 272
	vld	$vr1, $s0, 288
	vld	$vr2, $s0, 304
	vld	$vr3, $t5, 288
	vld	$vr4, $t5, 304
	vst	$vr1, $t5, 288
	vst	$vr2, $t5, 304
	vst	$vr3, $s0, 288
	vst	$vr4, $s0, 304
	vld	$vr1, $s0, 320
	vld	$vr2, $s0, 336
	vld	$vr3, $t5, 320
	vld	$vr4, $t5, 336
	vst	$vr1, $t5, 320
	vst	$vr2, $t5, 336
	vst	$vr3, $s0, 320
	vst	$vr4, $s0, 336
	vld	$vr1, $s0, 352
	vld	$vr2, $s0, 368
	vld	$vr3, $t5, 352
	vld	$vr4, $t5, 368
	vst	$vr1, $t5, 352
	vst	$vr2, $t5, 368
	vst	$vr3, $s0, 352
	vst	$vr4, $s0, 368
	vld	$vr1, $s0, 384
	vld	$vr2, $s0, 400
	vld	$vr3, $t5, 384
	vld	$vr4, $t5, 400
	vst	$vr1, $t5, 384
	vst	$vr2, $t5, 400
	vst	$vr3, $s0, 384
	vst	$vr4, $s0, 400
	vld	$vr1, $s0, 416
	vld	$vr2, $s0, 432
	vld	$vr3, $t5, 416
	vld	$vr4, $t5, 432
	vst	$vr1, $t5, 416
	vst	$vr2, $t5, 432
	vst	$vr3, $s0, 416
	vst	$vr4, $s0, 432
	vld	$vr1, $s0, 448
	vld	$vr2, $s0, 464
	vld	$vr3, $t5, 448
	vld	$vr4, $t5, 464
	vst	$vr1, $t5, 448
	vst	$vr2, $t5, 464
	vst	$vr3, $s0, 448
	vst	$vr4, $s0, 464
	vld	$vr1, $s0, 480
	vld	$vr2, $s0, 496
	vld	$vr3, $t5, 480
	vld	$vr4, $t5, 496
	vst	$vr1, $t5, 480
	vst	$vr2, $t5, 496
	vst	$vr3, $s0, 480
	vst	$vr4, $s0, 496
	vld	$vr1, $s0, 512
	vld	$vr2, $s0, 528
	vld	$vr3, $t5, 512
	vld	$vr4, $t5, 528
	vst	$vr1, $t5, 512
	vst	$vr2, $t5, 528
	vst	$vr3, $s0, 512
	vst	$vr4, $s0, 528
	vld	$vr1, $s0, 544
	vld	$vr2, $s0, 560
	vld	$vr3, $t5, 544
	vld	$vr4, $t5, 560
	vst	$vr1, $t5, 544
	vst	$vr2, $t5, 560
	vst	$vr3, $s0, 544
	vst	$vr4, $s0, 560
	vld	$vr1, $s0, 576
	vld	$vr2, $s0, 592
	vld	$vr3, $t5, 576
	vld	$vr4, $t5, 592
	vst	$vr1, $t5, 576
	vst	$vr2, $t5, 592
	vst	$vr3, $s0, 576
	vst	$vr4, $s0, 592
	vld	$vr1, $s0, 608
	vld	$vr2, $s0, 624
	vld	$vr3, $t5, 608
	vld	$vr4, $t5, 624
	vst	$vr1, $t5, 608
	vst	$vr2, $t5, 624
	vst	$vr3, $s0, 608
	vst	$vr4, $s0, 624
	vld	$vr1, $s0, 640
	vld	$vr2, $s0, 656
	vld	$vr3, $t5, 640
	vld	$vr4, $t5, 656
	vst	$vr1, $t5, 640
	vst	$vr2, $t5, 656
	vst	$vr3, $s0, 640
	vst	$vr4, $s0, 656
	vld	$vr1, $s0, 672
	vld	$vr2, $s0, 688
	vld	$vr3, $t5, 672
	vld	$vr4, $t5, 688
	vst	$vr1, $t5, 672
	vst	$vr2, $t5, 688
	vst	$vr3, $s0, 672
	vst	$vr4, $s0, 688
	vld	$vr1, $s0, 704
	vld	$vr2, $s0, 720
	vld	$vr3, $t5, 704
	vld	$vr4, $t5, 720
	vst	$vr1, $t5, 704
	vst	$vr2, $t5, 720
	vst	$vr3, $s0, 704
	vst	$vr4, $s0, 720
	vld	$vr1, $s0, 736
	vld	$vr2, $s0, 752
	vld	$vr3, $t5, 736
	vld	$vr4, $t5, 752
	vst	$vr1, $t5, 736
	vst	$vr2, $t5, 752
	vst	$vr3, $s0, 736
	vst	$vr4, $s0, 752
	vld	$vr1, $s0, 768
	vld	$vr2, $s0, 784
	vld	$vr3, $t5, 768
	vld	$vr4, $t5, 784
	vst	$vr1, $t5, 768
	vst	$vr2, $t5, 784
	vst	$vr3, $s0, 768
	vst	$vr4, $s0, 784
	ori	$a1, $zero, 100
.LBB17_40:                              # %scalar.ph90.preheader
                                        #   in Loop: Header=BB17_24 Depth=2
	slli.d	$a1, $a1, 3
	add.d	$a5, $t3, $a5
	.p2align	4, , 16
.LBB17_41:                              # %scalar.ph90
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $fp, $a1
	fldx.d	$fa2, $a5, $a1
	fstx.d	$fa1, $a5, $a1
	fstx.d	$fa2, $fp, $a1
	addi.d	$a1, $a1, 8
	bne	$a1, $a6, .LBB17_41
# %bb.42:                               #   in Loop: Header=BB17_24 Depth=2
	slli.d	$a1, $a4, 3
	fldx.d	$fa1, $s5, $a0
	fldx.d	$fa2, $s5, $a1
	fstx.d	$fa1, $s5, $a1
	fstx.d	$fa2, $s5, $a0
.LBB17_43:                              #   in Loop: Header=BB17_24 Depth=2
	fldx.d	$fa1, $s0, $a0
	slli.d	$a0, $s7, 2
	fcmp.cune.d	$fcc0, $fa1, $fa0
	stx.w	$ra, $a0, $t2
	bcnez	$fcc0, .LBB17_45
# %bb.44:                               #   in Loop: Header=BB17_24 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI17_0)
	alsl.d	$a0, $s7, $s0, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
.LBB17_45:                              #   in Loop: Header=BB17_24 Depth=2
	beq	$s7, $t1, .LBB17_52
# %bb.46:                               # %.lr.ph173.preheader.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	frecip.d	$fa1, $fa1
	move	$a0, $s7
	ori	$a1, $zero, 2
	bltu	$a7, $a1, .LBB17_50
# %bb.47:                               # %vector.ph80
                                        #   in Loop: Header=BB17_24 Depth=2
	move	$a4, $a7
	bstrins.d	$a4, $zero, 0, 0
	add.d	$a0, $s7, $a4
	move	$a1, $a2
	.p2align	4, , 16
.LBB17_48:                              # %vector.body81
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, -808
	fld.d	$fa3, $a1, 0
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa3, $fa1, $fa3
	fst.d	$fa2, $a1, -808
	fst.d	$fa3, $a1, 0
	addi.d	$s8, $s8, -2
	addi.d	$a1, $a1, 1616
	bnez	$s8, .LBB17_48
# %bb.49:                               # %middle.block84
                                        #   in Loop: Header=BB17_24 Depth=2
	beq	$a7, $a4, .LBB17_23
.LBB17_50:                              # %.lr.ph173.i.i.preheader
                                        #   in Loop: Header=BB17_24 Depth=2
	addi.d	$a1, $a0, -100
	mul.d	$a0, $a0, $a6
	add.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB17_51:                              # %.lr.ph173.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a0, 0
	fmul.d	$fa2, $fa1, $fa2
	fst.d	$fa2, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 808
	bnez	$a1, .LBB17_51
	b	.LBB17_23
	.p2align	4, , 16
.LBB17_52:                              # %ludcmp.exit.i.preheader
                                        #   in Loop: Header=BB17_17 Depth=1
	addi.w	$a0, $zero, -1
	move	$a2, $zero
	move	$a3, $t3
	move	$a4, $a0
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	b	.LBB17_56
	.p2align	4, , 16
.LBB17_53:                              #   in Loop: Header=BB17_56 Depth=2
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB17_60
# %bb.54:                               #   in Loop: Header=BB17_56 Depth=2
	move	$a4, $a2
.LBB17_55:                              # %.loopexit61.i.i
                                        #   in Loop: Header=BB17_56 Depth=2
	alsl.d	$a1, $a2, $s3, 3
	fst.d	$fa1, $a1, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 808
	beq	$a2, $t0, .LBB17_61
.LBB17_56:                              # %ludcmp.exit.i
                                        #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_59 Depth 3
	slli.d	$a1, $a2, 2
	ldx.w	$a1, $a1, $t2
	slli.d	$a1, $a1, 3
	slli.d	$a5, $a2, 3
	fldx.d	$fa2, $s3, $a5
	fldx.d	$fa1, $s3, $a1
	addi.w	$a5, $a4, 0
	fstx.d	$fa2, $s3, $a1
	beq	$a5, $a0, .LBB17_53
# %bb.57:                               # %.preheader60.i.i
                                        #   in Loop: Header=BB17_56 Depth=2
	bge	$a5, $a2, .LBB17_55
# %bb.58:                               # %.lr.ph.i7.i
                                        #   in Loop: Header=BB17_56 Depth=2
	alsl.d	$a7, $a5, $t6, 3
	alsl.d	$t4, $a5, $a3, 3
	.p2align	4, , 16
.LBB17_59:                              #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $t4, 0
	fld.d	$fa3, $a7, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 8
	addi.d	$t4, $t4, 8
	bne	$a2, $a5, .LBB17_59
	b	.LBB17_55
.LBB17_60:                              #   in Loop: Header=BB17_56 Depth=2
	addi.d	$a4, $zero, -1
	b	.LBB17_55
	.p2align	4, , 16
.LBB17_61:                              # %.preheader59.i.i.preheader
                                        #   in Loop: Header=BB17_17 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 100
	move	$a2, $s8
	move	$a3, $s7
	b	.LBB17_63
	.p2align	4, , 16
.LBB17_62:                              # %.loopexit.i5.i
                                        #   in Loop: Header=BB17_63 Depth=2
	mul.d	$a1, $a4, $a6
	add.d	$a1, $t8, $a1
	fldx.d	$fa2, $a1, $a5
	alsl.d	$a1, $a4, $s3, 3
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a1, 0
	addi.d	$a1, $a4, -1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, -816
	beqz	$a4, .LBB17_16
.LBB17_63:                              # %.preheader59.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_65 Depth 3
	move	$a4, $a1
	slli.d	$a5, $a1, 3
	fldx.d	$fa1, $s3, $a5
	ori	$a1, $zero, 99
	bltu	$a1, $a4, .LBB17_62
# %bb.64:                               # %.lr.ph69.i.i
                                        #   in Loop: Header=BB17_63 Depth=2
	move	$a7, $a2
	move	$t4, $a3
	move	$t5, $a0
	.p2align	4, , 16
.LBB17_65:                              #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a7, 0
	fld.d	$fa3, $t4, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$a7, $a7, 8
	bnez	$t5, .LBB17_65
	b	.LBB17_62
.LBB17_66:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB17_68
.LBB17_67:                              # %._crit_edge.thread
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
.LBB17_68:                              # %._crit_edge43
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end17:
	.size	DoLUIteration, .Lfunc_end17-DoLUIteration
                                        # -- End function
	.p2align	5                               # -- Begin function strsift
	.type	strsift,@function
strsift:                                # @strsift
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	slli.d	$s5, $a3, 1
	bgeu	$a4, $s5, .LBB18_2
.LBB18_1:                               # %._crit_edge
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB18_2:                               # %.lr.ph
	move	$s3, $a3
	move	$fp, $a4
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $a2, $s2, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a4, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB18_6
	.p2align	4, , 16
.LBB18_3:                               # %._crit_edge.i60
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s7, 0
	stx.b	$s4, $s1, $a0
.LBB18_4:                               # %stradjust.exit70
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s7, 0
	add.d	$a0, $s1, $a0
	addi.d	$a2, $s4, 1
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB18_5:                               #   in Loop: Header=BB18_6 Depth=1
	slli.d	$s5, $a0, 1
	move	$s3, $a0
	bltu	$fp, $s5, .LBB18_1
.LBB18_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_15 Depth 2
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_21 Depth 2
                                        #     Child Loop BB18_24 Depth 2
                                        #     Child Loop BB18_32 Depth 2
                                        #     Child Loop BB18_35 Depth 2
                                        #     Child Loop BB18_38 Depth 2
                                        #     Child Loop BB18_41 Depth 2
	bgeu	$s5, $fp, .LBB18_8
# %bb.7:                                #   in Loop: Header=BB18_6 Depth=1
	addi.d	$s4, $s5, 1
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s2, $a0
	slli.d	$a1, $s4, 3
	ldx.d	$a1, $s2, $a1
	ldx.bu	$a2, $s1, $a0
	ldx.bu	$a3, $s1, $a1
	add.d	$a0, $s1, $a0
	add.d	$a1, $s1, $a1
	sltu	$s6, $a3, $a2
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	bstrpick.d	$a0, $a0, 31, 31
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
.LBB18_8:                               #   in Loop: Header=BB18_6 Depth=1
	slli.d	$a0, $s3, 3
	ldx.d	$a0, $s2, $a0
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $s2, $a1
	ldx.bu	$a2, $s1, $a0
	ldx.bu	$s6, $s1, $a1
	add.d	$a0, $s1, $a0
	add.d	$s4, $s1, $a1
	sltu	$s7, $s6, $a2
	sltu	$a1, $a2, $s6
	masknez	$a3, $s6, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	bstrpick.d	$a0, $a0, 31, 31
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB18_5
# %bb.9:                                #   in Loop: Header=BB18_6 Depth=1
	alsl.d	$s7, $s3, $s2, 3
	alsl.d	$s8, $s5, $s2, 3
	addi.d	$a2, $s6, 1
	addi.d	$a0, $sp, 40
	move	$a1, $s4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	ldx.bu	$s4, $s1, $a0
	add.d	$a0, $s1, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bne	$s5, $a2, .LBB18_11
# %bb.10:                               #   in Loop: Header=BB18_6 Depth=1
	st.b	$s4, $a0, 0
	b	.LBB18_26
	.p2align	4, , 16
.LBB18_11:                              #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, -8
	ldx.bu	$a3, $s1, $a2
	ld.d	$a4, $s8, 8
	ldx.bu	$s6, $s1, $a1
	add.d	$a1, $a2, $a3
	sub.d	$a1, $a1, $a4
	addi.d	$a2, $a1, 1
	add.d	$a0, $a0, $s4
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s5, 1
	bgeu	$a1, $s0, .LBB18_25
# %bb.12:                               # %.lr.ph.i
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s4, $s6
	srai.d	$a0, $a2, 63
	xor	$a3, $a2, $a0
	sub.w	$a0, $a3, $a0
	addi.w	$a3, $a2, 0
	nor	$a2, $s5, $zero
	add.d	$a2, $s0, $a2
	bltz	$a3, .LBB18_19
# %bb.13:                               # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB18_17
# %bb.14:                               # %vector.ph125
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a1, $a1, $a3
	vreplgr2vr.d	$vr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_15:                              # %vector.body130
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB18_15
# %bb.16:                               # %middle.block136
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_25
.LBB18_17:                              # %.lr.ph.split.i.preheader143
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_18:                              # %.lr.ph.split.i
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_18
	b	.LBB18_25
.LBB18_19:                              # %.lr.ph.split.us.i.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB18_23
# %bb.20:                               # %vector.ph109
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a1, $a1, $a3
	vreplgr2vr.d	$vr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_21:                              # %vector.body114
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vsub.d	$vr1, $vr1, $vr0
	vsub.d	$vr2, $vr2, $vr0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB18_21
# %bb.22:                               # %middle.block120
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_25
.LBB18_23:                              # %.lr.ph.split.us.i.preheader142
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_24:                              # %.lr.ph.split.us.i
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	sub.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_24
	.p2align	4, , 16
.LBB18_25:                              # %._crit_edge.i
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s8, 0
	stx.b	$s4, $s1, $a0
.LBB18_26:                              # %stradjust.exit
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s7, 0
	add.d	$a0, $s1, $a0
	add.d	$a1, $s1, $a1
	addi.d	$a2, $s4, 1
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	ld.bu	$s4, $sp, 40
	add.d	$a0, $s1, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bne	$s3, $a2, .LBB18_28
# %bb.27:                               #   in Loop: Header=BB18_6 Depth=1
	st.b	$s4, $a0, 0
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_28:                              #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, -8
	ldx.bu	$a3, $s1, $a2
	ld.d	$a4, $s7, 8
	ldx.bu	$s6, $s1, $a1
	add.d	$a1, $a2, $a3
	sub.d	$a1, $a1, $a4
	addi.d	$a2, $a1, 1
	add.d	$a0, $a0, $s4
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s3, 1
	bgeu	$a1, $s0, .LBB18_3
# %bb.29:                               # %.lr.ph.i61
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s4, $s6
	srai.d	$a0, $a2, 63
	xor	$a3, $a2, $a0
	sub.w	$a0, $a3, $a0
	addi.w	$a3, $a2, 0
	nor	$a2, $s3, $zero
	add.d	$a2, $s0, $a2
	bltz	$a3, .LBB18_36
# %bb.30:                               # %.lr.ph.split.i62.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB18_34
# %bb.31:                               # %vector.ph93
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a1, $a1, $a3
	vreplgr2vr.d	$vr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s3, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_32:                              # %vector.body98
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB18_32
# %bb.33:                               # %middle.block104
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_3
.LBB18_34:                              # %.lr.ph.split.i62.preheader140
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_35:                              # %.lr.ph.split.i62
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_35
	b	.LBB18_3
.LBB18_36:                              # %.lr.ph.split.us.i66.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB18_40
# %bb.37:                               # %vector.ph
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a1, $a1, $a3
	vreplgr2vr.d	$vr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s3, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_38:                              # %vector.body
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vsub.d	$vr1, $vr1, $vr0
	vsub.d	$vr2, $vr2, $vr0
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB18_38
# %bb.39:                               # %middle.block
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_3
.LBB18_40:                              # %.lr.ph.split.us.i66.preheader139
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_41:                              # %.lr.ph.split.us.i66
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	sub.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_41
	b	.LBB18_3
.Lfunc_end18:
	.size	strsift, .Lfunc_end18-strsift
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"NNET.DAT"
	.size	.L.str, 9

	.type	inpath,@object                  # @inpath
	.data
	.globl	inpath
	.p2align	3, 0x0
inpath:
	.dword	.L.str
	.size	inpath, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Hello"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"He"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Him"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"the"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"this"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"that"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"though"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"rough"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"cough"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"obviously"
	.size	.L.str.10, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"But"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"but"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"bye"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"begin"
	.size	.L.str.14, 6

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"beginning"
	.size	.L.str.15, 10

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"beginnings"
	.size	.L.str.16, 11

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"of"
	.size	.L.str.17, 3

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"our"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"ourselves"
	.size	.L.str.19, 10

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"yourselves"
	.size	.L.str.20, 11

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"to"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"together"
	.size	.L.str.22, 9

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"togetherness"
	.size	.L.str.23, 13

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"from"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"either"
	.size	.L.str.25, 7

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"I"
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"A"
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"return"
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"However"
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"example"
	.size	.L.str.30, 8

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"yet"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"quickly"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"all"
	.size	.L.str.33, 4

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"if"
	.size	.L.str.34, 3

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"were"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"includes"
	.size	.L.str.36, 9

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"always"
	.size	.L.str.37, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"never"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"not"
	.size	.L.str.39, 4

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"small"
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"returns"
	.size	.L.str.41, 8

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"set"
	.size	.L.str.42, 4

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"basic"
	.size	.L.str.43, 6

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Entered"
	.size	.L.str.44, 8

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"with"
	.size	.L.str.45, 5

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"used"
	.size	.L.str.46, 5

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"shown"
	.size	.L.str.47, 6

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"you"
	.size	.L.str.48, 4

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"know"
	.size	.L.str.49, 5

	.type	wordcatarray,@object            # @wordcatarray
	.data
	.globl	wordcatarray
	.p2align	3, 0x0
wordcatarray:
	.dword	.L.str.1
	.dword	.L.str.2
	.dword	.L.str.3
	.dword	.L.str.4
	.dword	.L.str.5
	.dword	.L.str.6
	.dword	.L.str.7
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.11
	.dword	.L.str.12
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.15
	.dword	.L.str.16
	.dword	.L.str.17
	.dword	.L.str.18
	.dword	.L.str.19
	.dword	.L.str.20
	.dword	.L.str.21
	.dword	.L.str.22
	.dword	.L.str.23
	.dword	.L.str.24
	.dword	.L.str.25
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.dword	.L.str.29
	.dword	.L.str.6
	.dword	.L.str.30
	.dword	.L.str.31
	.dword	.L.str.32
	.dword	.L.str.33
	.dword	.L.str.34
	.dword	.L.str.35
	.dword	.L.str.36
	.dword	.L.str.37
	.dword	.L.str.38
	.dword	.L.str.39
	.dword	.L.str.40
	.dword	.L.str.41
	.dword	.L.str.42
	.dword	.L.str.43
	.dword	.L.str.44
	.dword	.L.str.45
	.dword	.L.str.46
	.dword	.L.str.47
	.dword	.L.str.48
	.dword	.L.str.49
	.size	wordcatarray, 400

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"CPU:Numeric Sort"
	.size	.L.str.50, 17

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"CPU:String Sort"
	.size	.L.str.52, 16

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"CPU:Bitfields"
	.size	.L.str.53, 14

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"CPU:Floating Emulation"
	.size	.L.str.54, 23

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"FPU:Transcendental"
	.size	.L.str.56, 19

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"CPU:Assignment"
	.size	.L.str.57, 15

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"CPU:IDEA"
	.size	.L.str.58, 9

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"CPU:Huffman"
	.size	.L.str.59, 12

	.type	hufftree,@object                # @hufftree
	.local	hufftree
	.comm	hufftree,8,8
	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"FPU:LU"
	.size	.L.str.61, 7

	.type	LUtempvv,@object                # @LUtempvv
	.bss
	.globl	LUtempvv
	.p2align	3, 0x0
LUtempvv:
	.dword	0
	.size	LUtempvv, 8

	.type	mid_wts,@object                 # @mid_wts
	.globl	mid_wts
	.p2align	4, 0x0
mid_wts:
	.space	2240
	.size	mid_wts, 2240

	.type	out_wts,@object                 # @out_wts
	.globl	out_wts
	.p2align	3, 0x0
out_wts:
	.space	512
	.size	out_wts, 512

	.type	mid_out,@object                 # @mid_out
	.globl	mid_out
	.p2align	4, 0x0
mid_out:
	.space	64
	.size	mid_out, 64

	.type	out_out,@object                 # @out_out
	.globl	out_out
	.p2align	4, 0x0
out_out:
	.space	64
	.size	out_out, 64

	.type	mid_error,@object               # @mid_error
	.globl	mid_error
	.p2align	3, 0x0
mid_error:
	.space	64
	.size	mid_error, 64

	.type	out_error,@object               # @out_error
	.globl	out_error
	.p2align	3, 0x0
out_error:
	.space	64
	.size	out_error, 64

	.type	mid_wt_change,@object           # @mid_wt_change
	.globl	mid_wt_change
	.p2align	4, 0x0
mid_wt_change:
	.space	2240
	.size	mid_wt_change, 2240

	.type	out_wt_change,@object           # @out_wt_change
	.globl	out_wt_change
	.p2align	4, 0x0
out_wt_change:
	.space	512
	.size	out_wt_change, 512

	.type	in_pats,@object                 # @in_pats
	.globl	in_pats
	.p2align	3, 0x0
in_pats:
	.space	2800
	.size	in_pats, 2800

	.type	out_pats,@object                # @out_pats
	.globl	out_pats
	.p2align	3, 0x0
out_pats:
	.space	640
	.size	out_pats, 640

	.type	tot_out_error,@object           # @tot_out_error
	.globl	tot_out_error
	.p2align	3, 0x0
tot_out_error:
	.space	80
	.size	tot_out_error, 80

	.type	out_wt_cum_change,@object       # @out_wt_cum_change
	.globl	out_wt_cum_change
	.p2align	4, 0x0
out_wt_cum_change:
	.space	512
	.size	out_wt_cum_change, 512

	.type	mid_wt_cum_change,@object       # @mid_wt_cum_change
	.globl	mid_wt_cum_change
	.p2align	4, 0x0
mid_wt_cum_change:
	.space	2240
	.size	mid_wt_cum_change, 2240

	.type	worst_error,@object             # @worst_error
	.globl	worst_error
	.p2align	3, 0x0
worst_error:
	.dword	0x0000000000000000              # double 0
	.size	worst_error, 8

	.type	average_error,@object           # @average_error
	.globl	average_error
	.p2align	3, 0x0
average_error:
	.dword	0x0000000000000000              # double 0
	.size	average_error, 8

	.type	avg_out_error,@object           # @avg_out_error
	.globl	avg_out_error
	.p2align	3, 0x0
avg_out_error:
	.space	80
	.size	avg_out_error, 80

	.type	iteration_count,@object         # @iteration_count
	.globl	iteration_count
	.p2align	2, 0x0
iteration_count:
	.word	0                               # 0x0
	.size	iteration_count, 4

	.type	numpats,@object                 # @numpats
	.globl	numpats
	.p2align	2, 0x0
numpats:
	.word	0                               # 0x0
	.size	numpats, 4

	.type	numpasses,@object               # @numpasses
	.globl	numpasses
	.p2align	2, 0x0
numpasses:
	.word	0                               # 0x0
	.size	numpasses, 4

	.type	learned,@object                 # @learned
	.globl	learned
	.p2align	2, 0x0
learned:
	.word	0                               # 0x0
	.size	learned, 4

	.type	.L.str.63,@object               # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"CPU:Stringsort"
	.size	.L.str.63, 15

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"r"
	.size	.L.str.64, 2

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"\n CPU:NNET--error in opening file!"
	.size	.L.str.65, 35

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%d  %d  %d"
	.size	.L.str.66, 11

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"\n CPU:NNET -- Should read 3 items in line one; did read %d"
	.size	.L.str.67, 59

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%d"
	.size	.L.str.68, 3

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"\n CPU:NNET -- Should read 1 item in line 2; did read %d"
	.size	.L.str.69, 56

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"%d  %d  %d  %d  %d"
	.size	.L.str.70, 19

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"\n CPU:NNET -- failure in reading input!"
	.size	.L.str.71, 40

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"%d  %d  %d  %d  %d  %d  %d  %d"
	.size	.L.str.72, 31

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"CPU:NSORT -- NUMNUMARRAYS hit."
	.size	.Lstr, 31

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"CPU:EMFPU -- CMPUEMFLOATLOOPMAX limit hit"
	.size	.Lstr.1, 42

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"FPU:LU -- Array limit reached"
	.size	.Lstr.2, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym numpats
