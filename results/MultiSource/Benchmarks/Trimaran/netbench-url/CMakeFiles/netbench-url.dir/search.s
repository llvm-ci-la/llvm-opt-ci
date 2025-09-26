	.file	"search.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function calculate_bm_table
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	calculate_bm_table
	.p2align	5
	.type	calculate_bm_table,@function
calculate_bm_table:                     # @calculate_bm_table
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.1:                                # %vector.ph
	vreplgr2vr.w	$vr0, $fp
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 80
	vst	$vr0, $a0, 96
	vst	$vr0, $a0, 112
	vst	$vr0, $a0, 128
	vst	$vr0, $a0, 144
	vst	$vr0, $a0, 160
	vst	$vr0, $a0, 176
	vst	$vr0, $a0, 192
	vst	$vr0, $a0, 208
	vst	$vr0, $a0, 224
	vst	$vr0, $a0, 240
	vst	$vr0, $a0, 256
	vst	$vr0, $a0, 272
	vst	$vr0, $a0, 288
	vst	$vr0, $a0, 304
	vst	$vr0, $a0, 320
	vst	$vr0, $a0, 336
	vst	$vr0, $a0, 352
	vst	$vr0, $a0, 368
	vst	$vr0, $a0, 384
	vst	$vr0, $a0, 400
	vst	$vr0, $a0, 416
	vst	$vr0, $a0, 432
	vst	$vr0, $a0, 448
	vst	$vr0, $a0, 464
	vst	$vr0, $a0, 480
	vst	$vr0, $a0, 496
	vst	$vr0, $a0, 512
	vst	$vr0, $a0, 528
	vst	$vr0, $a0, 544
	vst	$vr0, $a0, 560
	vst	$vr0, $a0, 576
	vst	$vr0, $a0, 592
	vst	$vr0, $a0, 608
	vst	$vr0, $a0, 624
	vst	$vr0, $a0, 640
	vst	$vr0, $a0, 656
	vst	$vr0, $a0, 672
	vst	$vr0, $a0, 688
	vst	$vr0, $a0, 704
	vst	$vr0, $a0, 720
	vst	$vr0, $a0, 736
	vst	$vr0, $a0, 752
	vst	$vr0, $a0, 768
	vst	$vr0, $a0, 784
	vst	$vr0, $a0, 800
	vst	$vr0, $a0, 816
	vst	$vr0, $a0, 832
	vst	$vr0, $a0, 848
	vst	$vr0, $a0, 864
	vst	$vr0, $a0, 880
	vst	$vr0, $a0, 896
	vst	$vr0, $a0, 912
	vst	$vr0, $a0, 928
	vst	$vr0, $a0, 944
	vst	$vr0, $a0, 960
	vst	$vr0, $a0, 976
	vst	$vr0, $a0, 992
	vst	$vr0, $a0, 1008
	blez	$fp, .LBB0_9
# %bb.2:                                # %.lr.ph.preheader
	ori	$a1, $zero, 4
	bgeu	$fp, $a1, .LBB0_4
# %bb.3:
	move	$a1, $zero
	b	.LBB0_7
.LBB0_4:                                # %vector.ph24
	bstrpick.d	$a1, $fp, 30, 2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_0)
	slli.d	$a1, $a1, 2
	vrepli.b	$vr2, -1
	vrepli.b	$vr3, 0
	move	$a2, $s0
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_5:                                # %vector.body27
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	vxor.v	$vr4, $vr1, $vr2
	vadd.w	$vr4, $vr0, $vr4
	vinsgr2vr.w	$vr5, $a4, 0
	vilvl.b	$vr5, $vr3, $vr5
	vilvl.h	$vr5, $vr3, $vr5
	vilvh.w	$vr6, $vr3, $vr5
	vilvl.w	$vr5, $vr3, $vr5
	vpickve2gr.d	$a4, $vr5, 0
	alsl.d	$a4, $a4, $a0, 2
	vpickve2gr.d	$a5, $vr5, 1
	alsl.d	$a5, $a5, $a0, 2
	vpickve2gr.d	$a6, $vr6, 0
	alsl.d	$a6, $a6, $a0, 2
	vpickve2gr.d	$a7, $vr6, 1
	alsl.d	$a7, $a7, $a0, 2
	vstelm.w	$vr4, $a4, 0, 0
	vstelm.w	$vr4, $a5, 0, 1
	vstelm.w	$vr4, $a6, 0, 2
	vstelm.w	$vr4, $a7, 0, 3
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_5
# %bb.6:                                # %middle.block30
	beq	$a1, $fp, .LBB0_9
.LBB0_7:                                # %.lr.ph.preheader31
	nor	$a2, $a1, $zero
	add.d	$a2, $a2, $fp
	add.d	$a3, $s0, $a1
	sub.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	stx.w	$a2, $a0, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB0_8
.LBB0_9:                                # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_10:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.calculate_bm_table)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.calculate_bm_table)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 60
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	calculate_bm_table, .Lfunc_end0-calculate_bm_table
                                        # -- End function
	.globl	boyer_moore                     # -- Begin function boyer_moore
	.p2align	5
	.type	boyer_moore,@function
boyer_moore:                            # @boyer_moore
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
	move	$s3, $a0
	addi.w	$a0, $zero, -1
	blt	$a1, $a3, .LBB1_9
# %bb.1:                                # %.preheader.lr.ph
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s5, $a0
	move	$a0, $zero
	addi.w	$s4, $a3, -1
	move	$a1, $a3
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	add.w	$a0, $s6, $s4
	add.w	$a1, $a0, $s0
	blt	$s2, $a1, .LBB1_8
.LBB1_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s3, $a1
	ld.bu	$a1, $a1, -1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	move	$s6, $a0
	beqz	$a1, .LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	add.w	$a0, $a1, $s6
	add.w	$a1, $a0, $s0
	bge	$s2, $a1, .LBB1_3
.LBB1_5:                                # %.critedge
                                        #   in Loop: Header=BB1_3 Depth=1
	add.d	$a1, $s3, $s6
	move	$a0, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bge	$s6, $s2, .LBB1_2
# %bb.6:                                # %.critedge
                                        #   in Loop: Header=BB1_3 Depth=1
	bnez	$a0, .LBB1_2
# %bb.7:
	move	$a0, $s6
	b	.LBB1_9
.LBB1_8:
	move	$a0, $s5
.LBB1_9:                                # %._crit_edge
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
.Lfunc_end1:
	.size	boyer_moore, .Lfunc_end1-boyer_moore
                                        # -- End function
	.globl	find_destination                # -- Begin function find_destination
	.p2align	5
	.type	find_destination,@function
find_destination:                       # @find_destination
# %bb.0:
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(tree_head)
	ld.d	$a0, $a0, %got_pc_lo12(tree_head)
	ld.d	$s3, $a0, 0
	beqz	$s3, .LBB2_29
# %bb.1:                                # %.lr.ph110.preheader
	move	$s0, $a1
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %boyer_moore.exit.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s3, $s3, 32
	beqz	$s3, .LBB2_29
.LBB2_3:                                # %.lr.ph110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #     Child Loop BB2_14 Depth 2
                                        #       Child Loop BB2_18 Depth 3
                                        #       Child Loop BB2_25 Depth 3
	ld.w	$s5, $s3, 16
	blt	$s0, $s5, .LBB2_2
# %bb.4:                                # %.preheader.lr.ph.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s1, $s3, 8
	ld.d	$s6, $s3, 24
	move	$a0, $zero
	addi.w	$s2, $s5, -1
	move	$a1, $s5
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=2
	add.w	$a0, $s4, $s2
	add.w	$a1, $a0, $s5
	blt	$s0, $a1, .LBB2_2
.LBB2_6:                                # %.preheader.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a1
	ld.bu	$a1, $a1, -1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s6, $a1
	move	$s4, $a0
	beqz	$a1, .LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	add.w	$a0, $a1, $s4
	add.w	$a1, $a0, $s5
	bge	$s0, $a1, .LBB2_6
.LBB2_8:                                # %.critedge.i
                                        #   in Loop: Header=BB2_6 Depth=2
	add.d	$a1, $fp, $s4
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bge	$s4, $s0, .LBB2_5
# %bb.9:                                # %.critedge.i
                                        #   in Loop: Header=BB2_6 Depth=2
	bnez	$a0, .LBB2_5
# %bb.10:                               # %boyer_moore.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB2_2
# %bb.11:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s5, $s3, 40
	bnez	$s5, .LBB2_14
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_12:                               # %boyer_moore.exit64
                                        #   in Loop: Header=BB2_14 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bne	$s6, $a0, .LBB2_30
.LBB2_13:                               # %boyer_moore.exit64.thread
                                        #   in Loop: Header=BB2_14 Depth=2
	ld.d	$s5, $s5, 56
	beqz	$s5, .LBB2_2
.LBB2_14:                               # %.lr.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_18 Depth 3
                                        #       Child Loop BB2_25 Depth 3
	ld.w	$a0, $s5, 36
	beqz	$a0, .LBB2_22
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=2
	slt	$a1, $s0, $a0
	ld.w	$s7, $s5, 32
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s8, $a1, $a0
	blt	$s8, $s7, .LBB2_13
# %bb.16:                               # %.preheader.lr.ph.i66
                                        #   in Loop: Header=BB2_14 Depth=2
	ld.d	$s1, $s5, 24
	ld.d	$s4, $s5, 40
	move	$a0, $zero
	addi.w	$s2, $s7, -1
	move	$a1, $s7
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_18 Depth=3
	add.w	$a0, $s6, $s2
	add.w	$a1, $a0, $s7
	blt	$s8, $a1, .LBB2_13
.LBB2_18:                               # %.preheader.i67
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $fp, $a1
	ld.bu	$a1, $a1, -1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s4, $a1
	move	$s6, $a0
	beqz	$a1, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=3
	add.w	$a0, $a1, $s6
	add.w	$a1, $a0, $s7
	bge	$s8, $a1, .LBB2_18
.LBB2_20:                               # %.critedge.i80
                                        #   in Loop: Header=BB2_18 Depth=3
	add.d	$a1, $fp, $s6
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bge	$s6, $s8, .LBB2_17
# %bb.21:                               # %.critedge.i80
                                        #   in Loop: Header=BB2_18 Depth=3
	bnez	$a0, .LBB2_17
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_22:                               #   in Loop: Header=BB2_14 Depth=2
	ld.w	$s7, $s5, 32
	blt	$s0, $s7, .LBB2_13
# %bb.23:                               # %.preheader.lr.ph.i45
                                        #   in Loop: Header=BB2_14 Depth=2
	ld.d	$s1, $s5, 24
	ld.d	$s8, $s5, 40
	move	$a0, $zero
	addi.w	$s2, $s7, -1
	move	$a1, $s7
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_25 Depth=3
	add.w	$a0, $s6, $s2
	add.w	$a1, $a0, $s7
	blt	$s0, $a1, .LBB2_13
.LBB2_25:                               # %.preheader.i46
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $fp, $a1
	ld.bu	$a1, $a1, -1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	move	$s6, $a0
	beqz	$a1, .LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=3
	add.w	$a0, $a1, $s6
	add.w	$a1, $a0, $s7
	bge	$s0, $a1, .LBB2_25
.LBB2_27:                               # %.critedge.i59
                                        #   in Loop: Header=BB2_25 Depth=3
	add.d	$a1, $fp, $s6
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bge	$s6, $s0, .LBB2_24
# %bb.28:                               # %.critedge.i59
                                        #   in Loop: Header=BB2_25 Depth=3
	bnez	$a0, .LBB2_24
	b	.LBB2_12
.LBB2_29:
	move	$a0, $zero
	b	.LBB2_33
.LBB2_30:
	ld.w	$a0, $s5, 4
	bnez	$a0, .LBB2_32
# %bb.31:
	ld.d	$a0, $s5, 16
	ld.w	$a2, $fp, 12
	ld.w	$a3, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_32:
	ld.d	$a0, $s5, 48
.LBB2_33:                               # %.loopexit
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
	ret
.Lfunc_end2:
	.size	find_destination, .Lfunc_end2-find_destination
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function NewPatternNode
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	NewPatternNode
	.p2align	5
	.type	NewPatternNode,@function
NewPatternNode:                         # @NewPatternNode
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_12
# %bb.1:
	move	$fp, $a0
	st.w	$s4, $a0, 0
	st.w	$s3, $a0, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	beqz	$a0, .LBB3_13
# %bb.2:
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	st.w	$s0, $fp, 32
	st.w	$s2, $fp, 36
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_14
# %bb.3:                                # %vector.ph
	vreplgr2vr.w	$vr0, $s0
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 80
	vst	$vr0, $a0, 96
	vst	$vr0, $a0, 112
	vst	$vr0, $a0, 128
	vst	$vr0, $a0, 144
	vst	$vr0, $a0, 160
	vst	$vr0, $a0, 176
	vst	$vr0, $a0, 192
	vst	$vr0, $a0, 208
	vst	$vr0, $a0, 224
	vst	$vr0, $a0, 240
	vst	$vr0, $a0, 256
	vst	$vr0, $a0, 272
	vst	$vr0, $a0, 288
	vst	$vr0, $a0, 304
	vst	$vr0, $a0, 320
	vst	$vr0, $a0, 336
	vst	$vr0, $a0, 352
	vst	$vr0, $a0, 368
	vst	$vr0, $a0, 384
	vst	$vr0, $a0, 400
	vst	$vr0, $a0, 416
	vst	$vr0, $a0, 432
	vst	$vr0, $a0, 448
	vst	$vr0, $a0, 464
	vst	$vr0, $a0, 480
	vst	$vr0, $a0, 496
	vst	$vr0, $a0, 512
	vst	$vr0, $a0, 528
	vst	$vr0, $a0, 544
	vst	$vr0, $a0, 560
	vst	$vr0, $a0, 576
	vst	$vr0, $a0, 592
	vst	$vr0, $a0, 608
	vst	$vr0, $a0, 624
	vst	$vr0, $a0, 640
	vst	$vr0, $a0, 656
	vst	$vr0, $a0, 672
	vst	$vr0, $a0, 688
	vst	$vr0, $a0, 704
	vst	$vr0, $a0, 720
	vst	$vr0, $a0, 736
	vst	$vr0, $a0, 752
	vst	$vr0, $a0, 768
	vst	$vr0, $a0, 784
	vst	$vr0, $a0, 800
	vst	$vr0, $a0, 816
	vst	$vr0, $a0, 832
	vst	$vr0, $a0, 848
	vst	$vr0, $a0, 864
	vst	$vr0, $a0, 880
	vst	$vr0, $a0, 896
	vst	$vr0, $a0, 912
	vst	$vr0, $a0, 928
	vst	$vr0, $a0, 944
	vst	$vr0, $a0, 960
	vst	$vr0, $a0, 976
	vst	$vr0, $a0, 992
	vst	$vr0, $a0, 1008
	blez	$s0, .LBB3_11
# %bb.4:                                # %.lr.ph.preheader.i
	ori	$a1, $zero, 4
	bgeu	$s0, $a1, .LBB3_6
# %bb.5:
	move	$a1, $zero
	b	.LBB3_9
.LBB3_6:                                # %vector.ph21
	bstrpick.d	$a1, $s0, 30, 2
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI3_0)
	slli.d	$a1, $a1, 2
	vrepli.b	$vr2, -1
	vrepli.b	$vr3, 0
	move	$a2, $s1
	move	$a3, $a1
	.p2align	4, , 16
.LBB3_7:                                # %vector.body24
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	vxor.v	$vr4, $vr1, $vr2
	vadd.w	$vr4, $vr0, $vr4
	vinsgr2vr.w	$vr5, $a4, 0
	vilvl.b	$vr5, $vr3, $vr5
	vilvl.h	$vr5, $vr3, $vr5
	vilvh.w	$vr6, $vr3, $vr5
	vilvl.w	$vr5, $vr3, $vr5
	vpickve2gr.d	$a4, $vr5, 0
	alsl.d	$a4, $a4, $a0, 2
	vpickve2gr.d	$a5, $vr5, 1
	alsl.d	$a5, $a5, $a0, 2
	vpickve2gr.d	$a6, $vr6, 0
	alsl.d	$a6, $a6, $a0, 2
	vpickve2gr.d	$a7, $vr6, 1
	alsl.d	$a7, $a7, $a0, 2
	vstelm.w	$vr4, $a4, 0, 0
	vstelm.w	$vr4, $a5, 0, 1
	vstelm.w	$vr4, $a6, 0, 2
	vstelm.w	$vr4, $a7, 0, 3
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB3_7
# %bb.8:                                # %middle.block27
	beq	$a1, $s0, .LBB3_11
.LBB3_9:                                # %.lr.ph.i.preheader
	sub.d	$a2, $s0, $a1
	add.d	$a3, $s1, $a1
	nor	$a1, $a1, $zero
	add.d	$a1, $a1, $s0
	.p2align	4, , 16
.LBB3_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	stx.w	$a1, $a0, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	bnez	$a2, .LBB3_10
.LBB3_11:                               # %calculate_bm_table.exit
	st.d	$a0, $fp, 40
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_12:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.NewPatternNode)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.NewPatternNode)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a3, $a2, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 170
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.LBB3_13:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.NewPatternNode)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.NewPatternNode)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 175
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.LBB3_14:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.calculate_bm_table)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.calculate_bm_table)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 60
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	NewPatternNode, .Lfunc_end3-NewPatternNode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function NewStrTreeNode
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	NewStrTreeNode
	.p2align	5
	.type	NewStrTreeNode,@function
NewStrTreeNode:                         # @NewStrTreeNode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_12
# %bb.1:
	move	$fp, $a0
	st.w	$s1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB4_13
# %bb.2:
	move	$s1, $a0
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	st.w	$s0, $fp, 16
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_14
# %bb.3:                                # %vector.ph
	vreplgr2vr.w	$vr0, $s0
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 80
	vst	$vr0, $a0, 96
	vst	$vr0, $a0, 112
	vst	$vr0, $a0, 128
	vst	$vr0, $a0, 144
	vst	$vr0, $a0, 160
	vst	$vr0, $a0, 176
	vst	$vr0, $a0, 192
	vst	$vr0, $a0, 208
	vst	$vr0, $a0, 224
	vst	$vr0, $a0, 240
	vst	$vr0, $a0, 256
	vst	$vr0, $a0, 272
	vst	$vr0, $a0, 288
	vst	$vr0, $a0, 304
	vst	$vr0, $a0, 320
	vst	$vr0, $a0, 336
	vst	$vr0, $a0, 352
	vst	$vr0, $a0, 368
	vst	$vr0, $a0, 384
	vst	$vr0, $a0, 400
	vst	$vr0, $a0, 416
	vst	$vr0, $a0, 432
	vst	$vr0, $a0, 448
	vst	$vr0, $a0, 464
	vst	$vr0, $a0, 480
	vst	$vr0, $a0, 496
	vst	$vr0, $a0, 512
	vst	$vr0, $a0, 528
	vst	$vr0, $a0, 544
	vst	$vr0, $a0, 560
	vst	$vr0, $a0, 576
	vst	$vr0, $a0, 592
	vst	$vr0, $a0, 608
	vst	$vr0, $a0, 624
	vst	$vr0, $a0, 640
	vst	$vr0, $a0, 656
	vst	$vr0, $a0, 672
	vst	$vr0, $a0, 688
	vst	$vr0, $a0, 704
	vst	$vr0, $a0, 720
	vst	$vr0, $a0, 736
	vst	$vr0, $a0, 752
	vst	$vr0, $a0, 768
	vst	$vr0, $a0, 784
	vst	$vr0, $a0, 800
	vst	$vr0, $a0, 816
	vst	$vr0, $a0, 832
	vst	$vr0, $a0, 848
	vst	$vr0, $a0, 864
	vst	$vr0, $a0, 880
	vst	$vr0, $a0, 896
	vst	$vr0, $a0, 912
	vst	$vr0, $a0, 928
	vst	$vr0, $a0, 944
	vst	$vr0, $a0, 960
	vst	$vr0, $a0, 976
	vst	$vr0, $a0, 992
	vst	$vr0, $a0, 1008
	blez	$s0, .LBB4_11
# %bb.4:                                # %.lr.ph.preheader.i
	ori	$a1, $zero, 4
	bgeu	$s0, $a1, .LBB4_6
# %bb.5:
	move	$a1, $zero
	b	.LBB4_9
.LBB4_6:                                # %vector.ph17
	bstrpick.d	$a1, $s0, 30, 2
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI4_0)
	slli.d	$a1, $a1, 2
	vrepli.b	$vr2, -1
	vrepli.b	$vr3, 0
	move	$a2, $s1
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_7:                                # %vector.body20
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	vxor.v	$vr4, $vr1, $vr2
	vadd.w	$vr4, $vr0, $vr4
	vinsgr2vr.w	$vr5, $a4, 0
	vilvl.b	$vr5, $vr3, $vr5
	vilvl.h	$vr5, $vr3, $vr5
	vilvh.w	$vr6, $vr3, $vr5
	vilvl.w	$vr5, $vr3, $vr5
	vpickve2gr.d	$a4, $vr5, 0
	alsl.d	$a4, $a4, $a0, 2
	vpickve2gr.d	$a5, $vr5, 1
	alsl.d	$a5, $a5, $a0, 2
	vpickve2gr.d	$a6, $vr6, 0
	alsl.d	$a6, $a6, $a0, 2
	vpickve2gr.d	$a7, $vr6, 1
	alsl.d	$a7, $a7, $a0, 2
	vstelm.w	$vr4, $a4, 0, 0
	vstelm.w	$vr4, $a5, 0, 1
	vstelm.w	$vr4, $a6, 0, 2
	vstelm.w	$vr4, $a7, 0, 3
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB4_7
# %bb.8:                                # %middle.block23
	beq	$a1, $s0, .LBB4_11
.LBB4_9:                                # %.lr.ph.i.preheader
	sub.d	$a2, $s0, $a1
	add.d	$a3, $s1, $a1
	nor	$a1, $a1, $zero
	add.d	$a1, $a1, $s0
	.p2align	4, , 16
.LBB4_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	stx.w	$a1, $a0, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	bnez	$a2, .LBB4_10
.LBB4_11:                               # %calculate_bm_table.exit
	st.d	$a0, $fp, 24
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_12:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.NewStrTreeNode)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.NewStrTreeNode)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a3, $a2, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 190
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.LBB4_13:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.NewStrTreeNode)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.NewStrTreeNode)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 194
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.LBB4_14:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.calculate_bm_table)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.calculate_bm_table)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 60
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	NewStrTreeNode, .Lfunc_end4-NewStrTreeNode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function find_lcs
.LCPI5_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	find_lcs
	.p2align	5
	.type	find_lcs,@function
find_lcs:                               # @find_lcs
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	bge	$a1, $a3, .LBB5_2
# %bb.1:
	move	$s3, $a1
	move	$s4, $a0
	b	.LBB5_3
.LBB5_2:
	move	$s3, $s0
	move	$s4, $s1
	move	$s0, $a1
	move	$s1, $a0
.LBB5_3:
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_35
# %bb.4:                                # %vector.ph
	vreplgr2vr.w	$vr0, $s3
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 64
	vst	$vr0, $a0, 80
	vst	$vr0, $a0, 96
	vst	$vr0, $a0, 112
	vst	$vr0, $a0, 128
	vst	$vr0, $a0, 144
	vst	$vr0, $a0, 160
	vst	$vr0, $a0, 176
	vst	$vr0, $a0, 192
	vst	$vr0, $a0, 208
	vst	$vr0, $a0, 224
	vst	$vr0, $a0, 240
	vst	$vr0, $a0, 256
	vst	$vr0, $a0, 272
	vst	$vr0, $a0, 288
	vst	$vr0, $a0, 304
	vst	$vr0, $a0, 320
	vst	$vr0, $a0, 336
	vst	$vr0, $a0, 352
	vst	$vr0, $a0, 368
	vst	$vr0, $a0, 384
	vst	$vr0, $a0, 400
	vst	$vr0, $a0, 416
	vst	$vr0, $a0, 432
	vst	$vr0, $a0, 448
	vst	$vr0, $a0, 464
	vst	$vr0, $a0, 480
	vst	$vr0, $a0, 496
	vst	$vr0, $a0, 512
	vst	$vr0, $a0, 528
	vst	$vr0, $a0, 544
	vst	$vr0, $a0, 560
	vst	$vr0, $a0, 576
	vst	$vr0, $a0, 592
	vst	$vr0, $a0, 608
	vst	$vr0, $a0, 624
	vst	$vr0, $a0, 640
	vst	$vr0, $a0, 656
	vst	$vr0, $a0, 672
	vst	$vr0, $a0, 688
	vst	$vr0, $a0, 704
	vst	$vr0, $a0, 720
	vst	$vr0, $a0, 736
	vst	$vr0, $a0, 752
	vst	$vr0, $a0, 768
	vst	$vr0, $a0, 784
	vst	$vr0, $a0, 800
	vst	$vr0, $a0, 816
	vst	$vr0, $a0, 832
	vst	$vr0, $a0, 848
	vst	$vr0, $a0, 864
	vst	$vr0, $a0, 880
	vst	$vr0, $a0, 896
	vst	$vr0, $a0, 912
	vst	$vr0, $a0, 928
	vst	$vr0, $a0, 944
	vst	$vr0, $a0, 960
	vst	$vr0, $a0, 976
	vst	$vr0, $a0, 992
	vst	$vr0, $a0, 1008
	blez	$s3, .LBB5_12
# %bb.5:                                # %.lr.ph.preheader.i
	ori	$a1, $zero, 4
	bgeu	$s3, $a1, .LBB5_7
# %bb.6:
	move	$a1, $zero
	b	.LBB5_10
.LBB5_7:                                # %vector.ph146
	bstrpick.d	$a1, $s3, 30, 2
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	slli.d	$a1, $a1, 2
	vrepli.b	$vr2, -1
	vrepli.b	$vr3, 0
	move	$a2, $s4
	move	$a3, $a1
	.p2align	4, , 16
.LBB5_8:                                # %vector.body149
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	vxor.v	$vr4, $vr1, $vr2
	vadd.w	$vr4, $vr0, $vr4
	vinsgr2vr.w	$vr5, $a4, 0
	vilvl.b	$vr5, $vr3, $vr5
	vilvl.h	$vr5, $vr3, $vr5
	vilvh.w	$vr6, $vr3, $vr5
	vilvl.w	$vr5, $vr3, $vr5
	vpickve2gr.d	$a4, $vr5, 0
	alsl.d	$a4, $a4, $a0, 2
	vpickve2gr.d	$a5, $vr5, 1
	alsl.d	$a5, $a5, $a0, 2
	vpickve2gr.d	$a6, $vr6, 0
	alsl.d	$a6, $a6, $a0, 2
	vpickve2gr.d	$a7, $vr6, 1
	alsl.d	$a7, $a7, $a0, 2
	vstelm.w	$vr4, $a4, 0, 0
	vstelm.w	$vr4, $a5, 0, 1
	vstelm.w	$vr4, $a6, 0, 2
	vstelm.w	$vr4, $a7, 0, 3
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB5_8
# %bb.9:                                # %middle.block152
	beq	$a1, $s3, .LBB5_12
.LBB5_10:                               # %.lr.ph.i.preheader
	sub.d	$a2, $s3, $a1
	add.d	$a3, $s4, $a1
	nor	$a1, $a1, $zero
	add.d	$a1, $a1, $s3
	.p2align	4, , 16
.LBB5_11:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	stx.w	$a1, $a0, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	bnez	$a2, .LBB5_11
.LBB5_12:                               # %calculate_bm_table.exit
	blez	$s0, .LBB5_31
# %bb.13:                               # %.lr.ph120
	add.d	$a1, $s1, $s3
	ld.bu	$a1, $a1, -1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a0, $a1
	move	$a1, $zero
	move	$a2, $zero
	move	$s2, $zero
	addi.d	$a3, $s3, -1
	ori	$a4, $zero, 1
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_14:                               #   in Loop: Header=BB5_16 Depth=1
	addi.d	$a5, $a2, 1
.LBB5_15:                               # %.thread
                                        #   in Loop: Header=BB5_16 Depth=1
	bge	$a1, $s0, .LBB5_32
.LBB5_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_24 Depth 2
	add.w	$a1, $a5, $a1
	add.w	$a6, $a3, $a1
	ldx.bu	$a5, $s1, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	beq	$a5, $s3, .LBB5_14
# %bb.17:                               # %.preheader
                                        #   in Loop: Header=BB5_16 Depth=1
	bge	$a5, $s3, .LBB5_22
# %bb.18:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_16 Depth=1
	add.d	$t0, $s1, $a6
	add.d	$a7, $a1, $a5
	addi.d	$a7, $a7, -1
	sub.w	$t1, $a3, $a5
	.p2align	4, , 16
.LBB5_19:                               # %.lr.ph
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t2, $s4, $t1
	ld.bu	$t3, $t0, 0
	bne	$t2, $t3, .LBB5_22
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=2
	addi.w	$a5, $a5, 1
	addi.w	$t1, $t1, -1
	addi.d	$a6, $a6, -1
	addi.w	$t2, $zero, -1
	addi.d	$t0, $t0, -1
	bne	$t1, $t2, .LBB5_19
# %bb.21:                               #   in Loop: Header=BB5_16 Depth=1
	move	$a5, $s3
	move	$a6, $a7
.LBB5_22:                               # %.critedge
                                        #   in Loop: Header=BB5_16 Depth=1
	addi.w	$a7, $a6, 1
	move	$t0, $zero
	blez	$a5, .LBB5_27
# %bb.23:                               # %.lr.ph110.preheader
                                        #   in Loop: Header=BB5_16 Depth=1
	add.d	$a6, $a5, $a6
	addi.d	$a6, $a6, 1
	addi.d	$t1, $a5, 1
	sub.d	$t2, $s3, $a5
	add.d	$t3, $s1, $a7
	.p2align	4, , 16
.LBB5_24:                               # %.lr.ph110
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$t4, $t2, $t0
	ldx.bu	$t4, $s4, $t4
	ld.bu	$t5, $t3, 0
	bne	$t4, $t5, .LBB5_28
# %bb.25:                               #   in Loop: Header=BB5_24 Depth=2
	addi.w	$t0, $t0, 1
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, 1
	blt	$a4, $t1, .LBB5_24
# %bb.26:                               #   in Loop: Header=BB5_16 Depth=1
	move	$t0, $a5
	move	$a7, $a6
.LBB5_27:                               # %.critedge2
                                        #   in Loop: Header=BB5_16 Depth=1
	ori	$a5, $zero, 1
	bge	$a2, $t0, .LBB5_15
	b	.LBB5_29
.LBB5_28:                               # %.critedge2.loopexit.split.loop.exit137
                                        #   in Loop: Header=BB5_16 Depth=1
	add.d	$a7, $a7, $t0
	ori	$a5, $zero, 1
	bge	$a2, $t0, .LBB5_15
.LBB5_29:                               #   in Loop: Header=BB5_16 Depth=1
	sub.w	$a2, $a7, $t0
	add.d	$s2, $s1, $a2
	beq	$t0, $s3, .LBB5_34
# %bb.30:                               #   in Loop: Header=BB5_16 Depth=1
	move	$a2, $t0
	b	.LBB5_15
.LBB5_31:
	move	$s2, $zero
	move	$a2, $zero
.LBB5_32:                               # %._crit_edge
	st.w	$a2, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_33:
	move	$a0, $s2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB5_34:
	st.w	$s3, $fp, 0
	b	.LBB5_33
.LBB5_35:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.calculate_bm_table)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.calculate_bm_table)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 60
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	find_lcs, .Lfunc_end5-find_lcs
                                        # -- End function
	.globl	insert_rule                     # -- Begin function insert_rule
	.p2align	5
	.type	insert_rule,@function
insert_rule:                            # @insert_rule
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(tree_head)
	ld.d	$s3, $a0, %got_pc_lo12(tree_head)
	ld.d	$s6, $s3, 0
	beqz	$s6, .LBB6_6
# %bb.1:                                # %.lr.ph.preheader
	move	$s4, $zero
	move	$s5, $zero
                                        # implicit-def: $r25
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.w	$a1, $s6, 16
	addi.d	$a4, $sp, 20
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(find_lcs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	sltu	$a2, $s5, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a3, $s2, $a2
	or	$s2, $a0, $a3
	masknez	$a0, $s5, $a2
	maskeqz	$a3, $s6, $a2
	ld.d	$s6, $s6, 32
	maskeqz	$a1, $a1, $a2
	or	$s5, $a1, $a0
	masknez	$a0, $s4, $a2
	or	$s4, $a3, $a0
	bnez	$s6, .LBB6_2
# %bb.3:                                # %._crit_edge
	ori	$a0, $zero, 2
	bltu	$a0, $s5, .LBB6_8
# %bb.4:
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB6_6
# %bb.5:
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, 1
	b	.LBB6_7
.LBB6_6:
	move	$a0, $zero
.LBB6_7:                                # %.thread
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(NewStrTreeNode)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 1
	move	$a0, $zero
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(NewPatternNode)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	st.d	$zero, $a0, 56
	st.d	$a0, $s2, 40
	st.d	$a1, $s2, 32
	st.d	$s2, $s3, 0
	b	.LBB6_9
.LBB6_8:
	ld.d	$a0, $s4, 8
	bstrpick.d	$a2, $s5, 31, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 40
	ld.w	$a0, $a0, 0
	st.w	$s5, $s4, 16
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 1
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(NewPatternNode)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 40
	st.d	$a1, $a0, 56
	st.d	$a0, $s4, 40
.LBB6_9:
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
.Lfunc_end6:
	.size	insert_rule, .Lfunc_end6-insert_rule
                                        # -- End function
	.globl	db_init                         # -- Begin function db_init
	.p2align	5
	.type	db_init,@function
db_init:                                # @db_init
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
	addi.d	$sp, $sp, -128
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_16
# %bb.1:                                # %.preheader18
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 2048
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_13
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 25
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s1, $a0, %pc_lo12(.L.str.7)
	ori	$s8, $zero, 44
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s2, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s3, $a0, %pc_lo12(.L.str.6)
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a2, $sp, 12
	stx.b	$zero, $s4, $s5
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(insert_rule)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 2048
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_13
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
	ld.bu	$a0, $sp, 24
	ori	$a1, $zero, 50
	beq	$a0, $a1, .LBB7_7
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	ori	$a1, $zero, 49
	bne	$a0, $a1, .LBB7_15
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 12
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	ld.w	$s5, $sp, 16
	addi.w	$a0, $s5, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_14
# %bb.9:                                # %.preheader17
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$s4, $a0
	blez	$s5, .LBB7_3
# %bb.10:                               # %.preheader.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$s7, $zero
	move	$s6, $s0
	.p2align	4, , 16
.LBB7_11:                               #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 0
	addi.d	$s6, $s6, 1
	bne	$a0, $s8, .LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=2
	addi.d	$a2, $sp, 20
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.b	$a0, $sp, 20
	ld.w	$s5, $sp, 16
	stx.b	$a0, $s4, $s7
	addi.d	$s7, $s7, 1
	blt	$s7, $s5, .LBB7_11
	b	.LBB7_3
.LBB7_13:                               # %._crit_edge24
	addi.d	$sp, $sp, 128
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
	ret
.LBB7_14:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.db_init)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.db_init)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 383
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.LBB7_15:
	ext.w.b	$a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.db_init)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.db_init)
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a3, $a2, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 379
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.LBB7_16:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.db_init)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.db_init)
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a3, $a2, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 360
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	db_init, .Lfunc_end7-db_init
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/search.c"
	.size	.L.str, 137

	.type	.L__FUNCTION__.calculate_bm_table,@object # @__FUNCTION__.calculate_bm_table
.L__FUNCTION__.calculate_bm_table:
	.asciz	"calculate_bm_table"
	.size	.L__FUNCTION__.calculate_bm_table, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Not enough virtual memory \n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Source: %x Destination %x \n"
	.size	.L.str.2, 28

	.type	.L__FUNCTION__.NewPatternNode,@object # @__FUNCTION__.NewPatternNode
.L__FUNCTION__.NewPatternNode:
	.asciz	"NewPatternNode"
	.size	.L__FUNCTION__.NewPatternNode, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Run out of virtual memory \n"
	.size	.L.str.3, 28

	.type	.L__FUNCTION__.NewStrTreeNode,@object # @__FUNCTION__.NewStrTreeNode
.L__FUNCTION__.NewStrTreeNode:
	.asciz	"NewStrTreeNode"
	.size	.L__FUNCTION__.NewStrTreeNode, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L__FUNCTION__.db_init,@object  # @__FUNCTION__.db_init
.L__FUNCTION__.db_init:
	.asciz	"db_init"
	.size	.L__FUNCTION__.db_init, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Can not open the input file\n"
	.size	.L.str.5, 29

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"(%d)"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"(%d:%d)"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"unrecognized input line start: %c \n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" %d"
	.size	.L.str.9, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
