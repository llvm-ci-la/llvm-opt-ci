	.file	"image.c"
	.text
	.globl	MbAffPostProc                   # -- Begin function MbAffPostProc
	.p2align	5
	.type	MbAffPostProc,@function
MbAffPostProc:                          # @MbAffPostProc
# %bb.0:
	addi.d	$sp, $sp, -1264
	st.d	$ra, $sp, 1256                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1176                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dec_picture)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s2, $a0, %pc_lo12(dec_picture)
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1520
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a1, $s2, $a0
	blez	$a1, .LBB0_66
# %bb.1:                                # %.lr.ph.preheader
	move	$a3, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $s2, $a0
	ld.d	$s4, $a1, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1544
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -64
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $s2, $a0
	addi.d	$a3, $a3, 2
	addi.w	$a1, $a3, 0
	bge	$a1, $a0, .LBB0_66
.LBB0_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_53 Depth 2
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_56 Depth 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $s2, $a0
	ldx.bu	$a1, $a1, $a3
	beqz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a1, $sp, 148
	addi.d	$a2, $sp, 144
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(get_mb_pos)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 144
	ld.w	$s2, $sp, 148
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$s5, $a0, $s4, 3
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 6
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 7
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 9
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$fp, $s2, 10
	addi.d	$s4, $s2, 11
	addi.d	$s7, $s2, 12
	addi.d	$s8, $s2, 13
	addi.d	$ra, $s2, 14
	addi.d	$s6, $s2, 15
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s5
	.p2align	4, , 16
.LBB0_6:                                # %.preheader65
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.h	$a2, $s0, $a1
	addi.d	$a3, $sp, 152
	add.d	$s3, $a3, $s1
	st.h	$a2, $s3, 64
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	ldx.h	$a3, $s0, $a2
	st.h	$a3, $s3, 128
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 1
	ldx.h	$a4, $s0, $a3
	st.h	$a4, $s3, 192
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 1
	ldx.h	$a5, $s0, $a4
	st.h	$a5, $s3, 256
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a5, $a5, 1
	ldx.h	$a6, $s0, $a5
	st.h	$a6, $s3, 320
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a6, $a6, 1
	ldx.h	$a7, $s0, $a6
	st.h	$a7, $s3, 384
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 1
	ldx.h	$t0, $s0, $a7
	st.h	$t0, $s3, 448
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t0, $t0, 1
	ldx.h	$t1, $s0, $t0
	st.h	$t1, $s3, 512
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 1
	ldx.h	$t2, $s0, $t1
	st.h	$t2, $s3, 576
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 1
	ldx.h	$t3, $s0, $t2
	st.h	$t3, $s3, 640
	slli.d	$t3, $fp, 1
	ldx.h	$t4, $s0, $t3
	st.h	$t4, $s3, 704
	slli.d	$t4, $s4, 1
	ldx.h	$t5, $s0, $t4
	st.h	$t5, $s3, 768
	slli.d	$t5, $s7, 1
	ldx.h	$t6, $s0, $t5
	st.h	$t6, $s3, 832
	slli.d	$t6, $s8, 1
	ldx.h	$t7, $s0, $t6
	st.h	$t7, $s3, 896
	slli.d	$t7, $ra, 1
	ldx.h	$t8, $s0, $t7
	st.h	$t8, $s3, 960
	slli.d	$t8, $s6, 1
	ldx.h	$s0, $s0, $t8
	st.h	$s0, $s3, 1024
	addi.d	$s1, $s1, 2
	addi.d	$a0, $a0, 8
	bnez	$s1, .LBB0_6
# %bb.7:                                # %.preheader66
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s0, $a0, 1
	addi.w	$s2, $zero, -32
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s6, $sp, 152
	.p2align	4, , 16
.LBB0_8:                                # %.preheader64
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$fp, $s6, $s2
	ld.d	$s1, $s5, 0
	ld.h	$a0, $fp, 32
	slli.d	$s3, $s0, 3
	ldx.d	$s3, $s4, $s3
	stx.h	$a0, $s1, $a1
	ld.h	$a0, $fp, 64
	stx.h	$a0, $s3, $a1
	ld.h	$a0, $fp, 96
	stx.h	$a0, $s1, $a2
	ld.h	$a0, $fp, 128
	stx.h	$a0, $s3, $a2
	ld.h	$a0, $fp, 160
	stx.h	$a0, $s1, $a3
	ld.h	$a0, $fp, 192
	stx.h	$a0, $s3, $a3
	ld.h	$a0, $fp, 224
	stx.h	$a0, $s1, $a4
	ld.h	$a0, $fp, 256
	stx.h	$a0, $s3, $a4
	ld.h	$a0, $fp, 288
	stx.h	$a0, $s1, $a5
	ld.h	$a0, $fp, 320
	stx.h	$a0, $s3, $a5
	ld.h	$a0, $fp, 352
	stx.h	$a0, $s1, $a6
	ld.h	$a0, $fp, 384
	stx.h	$a0, $s3, $a6
	ld.h	$a0, $fp, 416
	stx.h	$a0, $s1, $a7
	ld.h	$a0, $fp, 448
	stx.h	$a0, $s3, $a7
	ld.h	$a0, $fp, 480
	stx.h	$a0, $s1, $t0
	ld.h	$a0, $fp, 512
	stx.h	$a0, $s3, $t0
	ld.h	$a0, $fp, 544
	stx.h	$a0, $s1, $t1
	ld.h	$a0, $fp, 576
	stx.h	$a0, $s3, $t1
	ld.h	$a0, $fp, 608
	stx.h	$a0, $s1, $t2
	ld.h	$a0, $fp, 640
	stx.h	$a0, $s3, $t2
	ld.h	$a0, $fp, 672
	stx.h	$a0, $s1, $t3
	ld.h	$a0, $fp, 704
	stx.h	$a0, $s3, $t3
	ld.h	$a0, $fp, 736
	stx.h	$a0, $s1, $t4
	ld.h	$a0, $fp, 768
	stx.h	$a0, $s3, $t4
	ld.h	$a0, $fp, 800
	stx.h	$a0, $s1, $t5
	ld.h	$a0, $fp, 832
	stx.h	$a0, $s3, $t5
	ld.h	$a0, $fp, 864
	stx.h	$a0, $s1, $t6
	ld.h	$a0, $fp, 896
	stx.h	$a0, $s3, $t6
	ld.h	$a0, $fp, 928
	stx.h	$a0, $s1, $t7
	ld.h	$a0, $fp, 960
	stx.h	$a0, $s3, $t7
	ld.h	$a0, $fp, 992
	stx.h	$a0, $s1, $t8
	ld.h	$a0, $fp, 1024
	stx.h	$a0, $s3, $t8
	addi.d	$s2, $s2, 2
	addi.w	$s0, $s0, 2
	addi.d	$s5, $s5, 16
	bnez	$s2, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(dec_picture)
	lu12i.w	$a0, 77
	ori	$a1, $a0, 1652
	ldx.w	$a1, $s2, $a1
	ori	$t6, $zero, 8
	beqz	$a1, .LBB0_2
# %bb.10:                               # %.preheader63
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $sp, 148
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a2, $a1, 0
	ldptr.w	$a1, $a2, 5932
	ori	$a0, $zero, 16
	div.w	$a4, $a0, $a1
	ldptr.w	$a2, $a2, 5936
	ld.w	$a5, $sp, 144
	div.w	$a3, $a3, $a4
	st.w	$a3, $sp, 148
	div.w	$a4, $a0, $a2
	div.w	$s3, $a5, $a4
	st.w	$s3, $sp, 144
	blez	$a2, .LBB0_2
# %bb.11:                               # %.preheader63
                                        #   in Loop: Header=BB0_4 Depth=1
	blez	$a1, .LBB0_2
# %bb.12:                               # %.preheader61.lr.ph.split.us
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t1, $zero
	slli.w	$a5, $a2, 1
	addi.d	$s5, $s3, 1
	ori	$a4, $zero, 1
	slt	$a6, $a4, $a5
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a7, $a0, 0
	masknez	$t0, $a4, $a6
	maskeqz	$a5, $a5, $a6
	or	$t5, $a5, $t0
	alsl.d	$t2, $s3, $a7, 3
	slli.d	$a7, $a1, 6
	addi.d	$a0, $sp, 88
	add.d	$t0, $a0, $a7
	alsl.d	$a0, $t5, $t0, 1
	add.d	$a5, $a3, $a1
	slli.d	$a5, $a5, 1
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$t3, $a4, 3
	slli.d	$a6, $a3, 1
	addi.d	$t4, $sp, 152
	addi.d	$t7, $sp, 408
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_14 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t7, $t7, 2
	addi.d	$t4, $t4, 2
	beq	$t1, $t5, .LBB0_23
.LBB0_14:                               # %.preheader61.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_19 Depth 3
	slli.d	$t8, $t1, 3
	ldx.d	$t8, $t2, $t8
	bltu	$a1, $t6, .LBB0_17
# %bb.15:                               # %vector.memcheck230
                                        #   in Loop: Header=BB0_14 Depth=2
	add.d	$s0, $t8, $a5
	alsl.d	$fp, $a3, $t8, 1
	bgeu	$s6, $s0, .LBB0_20
# %bb.16:                               # %vector.memcheck230
                                        #   in Loop: Header=BB0_14 Depth=2
	bgeu	$fp, $a0, .LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	move	$s0, $zero
.LBB0_18:                               # %scalar.ph237.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	add.d	$t8, $t8, $a6
	alsl.d	$t8, $s0, $t8, 1
	slli.d	$fp, $s0, 6
	add.d	$fp, $t4, $fp
	sub.d	$s0, $a1, $s0
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph237
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$s1, $t8, 0
	st.h	$s1, $fp, 0
	addi.d	$t8, $t8, 2
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB0_19
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_20:                               # %vector.body242.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	move	$s0, $t7
	move	$s1, $t3
	.p2align	4, , 16
.LBB0_21:                               # %vector.body242
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $fp, 0
	vstelm.h	$vr0, $s0, -256, 0
	vstelm.h	$vr0, $s0, -192, 1
	vstelm.h	$vr0, $s0, -128, 2
	vstelm.h	$vr0, $s0, -64, 3
	vstelm.h	$vr0, $s0, 0, 4
	vstelm.h	$vr0, $s0, 64, 5
	vstelm.h	$vr0, $s0, 128, 6
	vstelm.h	$vr0, $s0, 192, 7
	addi.d	$s1, $s1, -8
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 512
	bnez	$s1, .LBB0_21
# %bb.22:                               # %middle.block246
                                        #   in Loop: Header=BB0_14 Depth=2
	move	$s0, $t3
	beq	$t3, $a1, .LBB0_13
	b	.LBB0_18
.LBB0_23:                               # %.preheader62
                                        #   in Loop: Header=BB0_4 Depth=1
	blez	$a2, .LBB0_2
# %bb.24:                               # %.preheader.lr.ph.split.us
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t8, $a0, 0
	move	$ra, $zero
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$s4, $s3, $t8, 3
	addi.d	$s8, $sp, 152
	alsl.d	$s0, $a2, $s8, 1
	alsl.d	$t0, $a2, $t0, 1
	alsl.d	$t1, $a2, $t0, 1
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a7, $a7, 36, 9
	slli.d	$t2, $a7, 9
	move	$a7, $s0
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %._crit_edge.us80
                                        #   in Loop: Header=BB0_26 Depth=2
	addi.d	$ra, $ra, 1
	addi.d	$a7, $a7, 2
	addi.d	$s8, $s8, 2
	beq	$ra, $a2, .LBB0_40
.LBB0_26:                               # %.preheader.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_29 Depth 3
	slli.d	$t3, $ra, 4
	ldx.d	$s7, $s4, $t3
	alsl.w	$t3, $ra, $s5, 1
	slli.d	$t3, $t3, 3
	ldx.d	$s2, $t8, $t3
	ori	$a0, $zero, 16
	bgeu	$a1, $a0, .LBB0_30
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=2
	move	$fp, $zero
.LBB0_28:                               # %scalar.ph219.preheader
                                        #   in Loop: Header=BB0_26 Depth=2
	add.d	$a0, $a3, $fp
	alsl.d	$t3, $a0, $s7, 1
	alsl.d	$t4, $a0, $s2, 1
	slli.d	$s1, $fp, 6
	sub.d	$fp, $a1, $fp
	.p2align	4, , 16
.LBB0_29:                               # %scalar.ph219
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a0, $s8, $s1
	st.h	$a0, $t3, 0
	ldx.h	$a0, $a7, $s1
	st.h	$a0, $t4, 0
	addi.d	$t3, $t3, 2
	addi.d	$t4, $t4, 2
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 64
	bnez	$fp, .LBB0_29
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_30:                               # %vector.memcheck190
                                        #   in Loop: Header=BB0_26 Depth=2
	add.d	$t4, $s7, $a6
	add.d	$s3, $s7, $a5
	add.d	$t3, $s2, $a6
	add.d	$s1, $s2, $a5
	sltu	$fp, $t4, $s1
	sltu	$s5, $t3, $s3
	and	$s5, $fp, $s5
	move	$fp, $zero
	bnez	$s5, .LBB0_38
# %bb.31:                               # %vector.memcheck190
                                        #   in Loop: Header=BB0_26 Depth=2
	sltu	$s5, $t4, $t1
	sltu	$s6, $s0, $s3
	and	$s5, $s5, $s6
	bnez	$s5, .LBB0_39
# %bb.32:                               # %vector.memcheck190
                                        #   in Loop: Header=BB0_26 Depth=2
	sltu	$s5, $t4, $t0
	addi.d	$s6, $sp, 152
	sltu	$s3, $s6, $s3
	and	$s3, $s5, $s3
	bnez	$s3, .LBB0_38
# %bb.33:                               # %vector.memcheck190
                                        #   in Loop: Header=BB0_26 Depth=2
	sltu	$s3, $t3, $t1
	sltu	$s5, $s0, $s1
	and	$s3, $s3, $s5
	bnez	$s3, .LBB0_38
# %bb.34:                               # %vector.memcheck190
                                        #   in Loop: Header=BB0_26 Depth=2
	sltu	$s3, $t3, $t0
	sltu	$s1, $s6, $s1
	and	$s1, $s3, $s1
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	bnez	$s1, .LBB0_28
# %bb.35:                               # %vector.ph221
                                        #   in Loop: Header=BB0_26 Depth=2
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_36:                               # %vector.body224
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s1, $s8, $fp
	ldx.h	$s3, $s8, $fp
	ld.h	$s5, $s1, 64
	ld.h	$s6, $s1, 128
	ld.h	$a0, $s1, 192
	ld.h	$t6, $s1, 256
	ld.h	$t7, $s1, 320
	ld.h	$a4, $s1, 384
	ld.h	$s1, $s1, 448
	vinsgr2vr.h	$vr0, $s3, 0
	vinsgr2vr.h	$vr0, $s5, 1
	vinsgr2vr.h	$vr0, $s6, 2
	vinsgr2vr.h	$vr0, $a0, 3
	vinsgr2vr.h	$vr0, $t6, 4
	vinsgr2vr.h	$vr0, $t7, 5
	vinsgr2vr.h	$vr0, $a4, 6
	vinsgr2vr.h	$vr0, $s1, 7
	vst	$vr0, $t4, 0
	add.d	$a0, $a7, $fp
	ldx.h	$a4, $a7, $fp
	ld.h	$t6, $a0, 64
	ld.h	$t7, $a0, 128
	ld.h	$s1, $a0, 192
	ld.h	$s3, $a0, 256
	ld.h	$s5, $a0, 320
	ld.h	$s6, $a0, 384
	ld.h	$a0, $a0, 448
	vinsgr2vr.h	$vr0, $a4, 0
	vinsgr2vr.h	$vr0, $t6, 1
	vinsgr2vr.h	$vr0, $t7, 2
	vinsgr2vr.h	$vr0, $s1, 3
	vinsgr2vr.h	$vr0, $s3, 4
	vinsgr2vr.h	$vr0, $s5, 5
	vinsgr2vr.h	$vr0, $s6, 6
	vinsgr2vr.h	$vr0, $a0, 7
	vst	$vr0, $t3, 0
	addi.d	$fp, $fp, 512
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	bne	$t2, $fp, .LBB0_36
# %bb.37:                               # %middle.block227
                                        #   in Loop: Header=BB0_26 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$fp, $a0
	addi.d	$s6, $sp, 152
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_28
.LBB0_38:                               #   in Loop: Header=BB0_26 Depth=2
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_28
.LBB0_39:                               #   in Loop: Header=BB0_26 Depth=2
	addi.d	$s6, $sp, 152
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_28
.LBB0_40:                               # %.preheader61.lr.ph.split.us.1
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	move	$a7, $zero
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$t3, $t7, $a0, 3
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	slli.d	$t4, $s7, 3
	addi.d	$t8, $sp, 152
	addi.d	$s2, $sp, 408
	ori	$a4, $zero, 8
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_41:                               # %._crit_edge.us.1
                                        #   in Loop: Header=BB0_42 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$s2, $s2, 2
	addi.d	$t8, $t8, 2
	beq	$a7, $t5, .LBB0_51
.LBB0_42:                               # %.preheader61.us.1
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	slli.d	$a0, $a7, 3
	ldx.d	$fp, $t3, $a0
	bltu	$a1, $a4, .LBB0_45
# %bb.43:                               # %vector.memcheck172
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $fp, $a5
	alsl.d	$s1, $a3, $fp, 1
	bgeu	$s6, $a0, .LBB0_48
# %bb.44:                               # %vector.memcheck172
                                        #   in Loop: Header=BB0_42 Depth=2
	bgeu	$s1, $t6, .LBB0_48
.LBB0_45:                               #   in Loop: Header=BB0_42 Depth=2
	move	$s3, $zero
.LBB0_46:                               # %scalar.ph179.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	add.d	$a0, $fp, $a6
	alsl.d	$fp, $s3, $a0, 1
	sub.d	$s1, $a1, $s3
	slli.d	$a0, $s3, 6
	add.d	$s3, $t8, $a0
	.p2align	4, , 16
.LBB0_47:                               # %scalar.ph179
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a0, $fp, 0
	st.h	$a0, $s3, 0
	addi.d	$fp, $fp, 2
	addi.d	$s1, $s1, -1
	addi.d	$s3, $s3, 64
	bnez	$s1, .LBB0_47
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_48:                               # %vector.body184.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	move	$s3, $s2
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_49:                               # %vector.body184
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $s1, 0
	vstelm.h	$vr0, $s3, -256, 0
	vstelm.h	$vr0, $s3, -192, 1
	vstelm.h	$vr0, $s3, -128, 2
	vstelm.h	$vr0, $s3, -64, 3
	vstelm.h	$vr0, $s3, 0, 4
	vstelm.h	$vr0, $s3, 64, 5
	vstelm.h	$vr0, $s3, 128, 6
	vstelm.h	$vr0, $s3, 192, 7
	addi.d	$s4, $s4, -8
	addi.d	$s1, $s1, 16
	addi.d	$s3, $s3, 512
	bnez	$s4, .LBB0_49
# %bb.50:                               # %middle.block187
                                        #   in Loop: Header=BB0_42 Depth=2
	move	$s3, $t4
	beq	$t4, $a1, .LBB0_41
	b	.LBB0_46
.LBB0_51:                               # %.preheader.lr.ph.split.us.1
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $a0, 8
	move	$t6, $zero
	alsl.d	$t3, $t7, $t5, 3
	addi.d	$a7, $sp, 152
	alsl.d	$t7, $a2, $a7, 1
	slli.d	$t4, $s7, 3
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_52:                               # %._crit_edge.us80.1
                                        #   in Loop: Header=BB0_53 Depth=2
	addi.d	$t6, $t6, 1
	addi.d	$s0, $s0, 2
	addi.d	$a7, $a7, 2
	beq	$t6, $a2, .LBB0_65
.LBB0_53:                               # %.preheader.us.1
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_56 Depth 3
	slli.d	$a0, $t6, 4
	ldx.d	$t8, $t3, $a0
	alsl.w	$a0, $t6, $s5, 1
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $t5, $a0
	ori	$a0, $zero, 16
	bgeu	$a1, $a0, .LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=2
	move	$fp, $zero
.LBB0_55:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_53 Depth=2
	sub.d	$s1, $a1, $fp
	add.d	$a0, $a3, $fp
	alsl.d	$s2, $a0, $s2, 1
	alsl.d	$t8, $a0, $t8, 1
	slli.d	$fp, $fp, 6
	.p2align	4, , 16
.LBB0_56:                               # %scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a0, $a7, $fp
	st.h	$a0, $t8, 0
	ldx.h	$a0, $s0, $fp
	st.h	$a0, $s2, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 2
	addi.d	$t8, $t8, 2
	addi.d	$fp, $fp, 64
	bnez	$s1, .LBB0_56
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_57:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_53 Depth=2
	add.d	$s4, $t8, $a6
	add.d	$s3, $t8, $a5
	add.d	$s7, $s2, $a6
	add.d	$s1, $s2, $a5
	sltu	$a0, $s4, $s1
	sltu	$a4, $s7, $s3
	and	$a0, $a0, $a4
	move	$fp, $zero
	bnez	$a0, .LBB0_55
# %bb.58:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_53 Depth=2
	sltu	$a0, $s4, $t1
	sltu	$a4, $t7, $s3
	and	$a0, $a0, $a4
	bnez	$a0, .LBB0_55
# %bb.59:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_53 Depth=2
	sltu	$a0, $s4, $t0
	sltu	$a4, $s6, $s3
	and	$a0, $a0, $a4
	bnez	$a0, .LBB0_55
# %bb.60:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_53 Depth=2
	sltu	$a0, $s7, $t1
	sltu	$a4, $t7, $s1
	and	$a0, $a0, $a4
	bnez	$a0, .LBB0_55
# %bb.61:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_53 Depth=2
	sltu	$a0, $s7, $t0
	sltu	$a4, $s6, $s1
	and	$a0, $a0, $a4
	bnez	$a0, .LBB0_55
# %bb.62:                               # %vector.ph
                                        #   in Loop: Header=BB0_53 Depth=2
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_63:                               # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $a7, $fp
	ldx.h	$a4, $a7, $fp
	ld.h	$s1, $a0, 64
	ld.h	$s3, $a0, 128
	ld.h	$s5, $a0, 192
	ld.h	$s6, $a0, 256
	ld.h	$s8, $a0, 320
	ld.h	$ra, $a0, 384
	ld.h	$a0, $a0, 448
	vinsgr2vr.h	$vr0, $a4, 0
	vinsgr2vr.h	$vr0, $s1, 1
	vinsgr2vr.h	$vr0, $s3, 2
	vinsgr2vr.h	$vr0, $s5, 3
	vinsgr2vr.h	$vr0, $s6, 4
	vinsgr2vr.h	$vr0, $s8, 5
	vinsgr2vr.h	$vr0, $ra, 6
	vinsgr2vr.h	$vr0, $a0, 7
	vst	$vr0, $s4, 0
	add.d	$a0, $s0, $fp
	ldx.h	$a4, $s0, $fp
	ld.h	$s1, $a0, 64
	ld.h	$s3, $a0, 128
	ld.h	$s5, $a0, 192
	ld.h	$s6, $a0, 256
	ld.h	$s8, $a0, 320
	ld.h	$ra, $a0, 384
	ld.h	$a0, $a0, 448
	vinsgr2vr.h	$vr0, $a4, 0
	vinsgr2vr.h	$vr0, $s1, 1
	vinsgr2vr.h	$vr0, $s3, 2
	vinsgr2vr.h	$vr0, $s5, 3
	vinsgr2vr.h	$vr0, $s6, 4
	vinsgr2vr.h	$vr0, $s8, 5
	vinsgr2vr.h	$vr0, $ra, 6
	vinsgr2vr.h	$vr0, $a0, 7
	vst	$vr0, $s7, 0
	addi.d	$fp, $fp, 512
	addi.d	$s4, $s4, 16
	addi.d	$s7, $s7, 16
	bne	$t2, $fp, .LBB0_63
# %bb.64:                               # %middle.block
                                        #   in Loop: Header=BB0_53 Depth=2
	move	$fp, $t4
	addi.d	$s6, $sp, 152
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	beq	$t4, $a1, .LBB0_52
	b	.LBB0_55
.LBB0_65:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_3
.LBB0_66:                               # %._crit_edge
	ld.d	$s8, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1256                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1264
	ret
.Lfunc_end0:
	.size	MbAffPostProc, .Lfunc_end0-MbAffPostProc
                                        # -- End function
	.globl	decode_one_frame                # -- Begin function decode_one_frame
	.p2align	5
	.type	decode_one_frame,@function
decode_one_frame:                       # @decode_one_frame
# %bb.0:                                # %.lr.ph
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a0
	ldptr.d	$a1, $a0, 5592
	st.w	$zero, $a0, 12
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3481
	lu32i.d	$a0, 0
	st.d	$a0, $s0, 4
	lu12i.w	$a0, -3
	ori	$a0, $a0, 3400
	lu32i.d	$a0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.w	$a0, $a1, 32
	ori	$s3, $zero, 1
	stptr.w	$s3, $s0, 5580
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s4, $a0, %got_pc_lo12(img)
	pcalau12i	$s5, %pc_hi20(Is_redundant_correct)
	pcalau12i	$s6, %pc_hi20(Is_primary_correct)
	pcalau12i	$a0, %pc_hi20(ref_flag)
	addi.d	$s8, $a0, %pc_lo12(ref_flag)
	addi.d	$a0, $s8, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(previous_frame_num)
	lu12i.w	$a0, 1
	ori	$s7, $a0, 1556
	pcalau12i	$s2, %pc_hi20(active_pps)
	pcalau12i	$a0, %pc_hi20(redundant_slice_ref_idx)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_1:                                # %decode_slice.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s0, 12
	stptr.w	$zero, $s0, 5580
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
.LBB1_2:                                # %.backedge
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 32
	addi.w	$a0, $a0, -1
	bgeu	$s3, $a0, .LBB1_36
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_34 Depth 2
	pcaddu18i	$ra, %call36(read_new_slice)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ldptr.w	$a2, $a1, 5652
	beqz	$a2, .LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a1, $a1, 44
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB1_16
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(redundant_slice_ref_idx)
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	bnez	$a1, .LBB1_16
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	st.w	$zero, $s5, %pc_lo12(Is_redundant_correct)
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a2, $a1, 44
	st.w	$s3, $s5, %pc_lo12(Is_redundant_correct)
	st.w	$s3, $s6, %pc_lo12(Is_primary_correct)
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB1_16
# %bb.8:                                # %.preheader.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ldptr.w	$a1, $a1, 5640
	blez	$a1, .LBB1_16
# %bb.9:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_3 Depth=1
	move	$a2, $zero
	b	.LBB1_32
.LBB1_11:                               # %vector.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	move	$a4, $a2
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=2
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	beqz	$a4, .LBB1_15
.LBB1_13:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vseqi.w	$vr0, $vr0, 0
	vseqi.w	$vr1, $vr1, 0
	vpickve2gr.w	$a5, $vr1, 0
	vinsgr2vr.h	$vr2, $a5, 0
	vpickve2gr.w	$a5, $vr1, 1
	vinsgr2vr.h	$vr2, $a5, 1
	vpickve2gr.w	$a5, $vr1, 2
	vinsgr2vr.h	$vr2, $a5, 2
	vpickve2gr.w	$a5, $vr1, 3
	vinsgr2vr.h	$vr2, $a5, 3
	vpickve2gr.w	$a5, $vr0, 0
	vinsgr2vr.h	$vr2, $a5, 4
	vpickve2gr.w	$a5, $vr0, 1
	vinsgr2vr.h	$vr2, $a5, 5
	vpickve2gr.w	$a5, $vr0, 2
	vinsgr2vr.h	$vr2, $a5, 6
	vpickve2gr.w	$a5, $vr0, 3
	vinsgr2vr.h	$vr2, $a5, 7
	vslli.h	$vr0, $vr2, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	beqz	$a5, .LBB1_12
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=2
	st.w	$zero, $s6, %pc_lo12(Is_primary_correct)
	b	.LBB1_12
.LBB1_15:                               # %middle.block
                                        #   in Loop: Header=BB1_3 Depth=1
	bne	$a2, $a1, .LBB1_32
	.p2align	4, , 16
.LBB1_16:                               # %Error_tracking.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	ldptr.w	$a1, $s0, 5676
	ld.w	$a4, $fp, %pc_lo12(previous_frame_num)
	ldx.w	$a3, $s0, $s7
	ld.w	$a2, $s6, %pc_lo12(Is_primary_correct)
	bne	$a1, $a4, .LBB1_21
# %bb.17:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$a3, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$a2, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	bne	$a0, $s3, .LBB1_2
.LBB1_20:                               #   in Loop: Header=BB1_3 Depth=1
	bnez	$a3, .LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %.thread35
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a4, $s8, 0
	ld.d	$a5, $s8, 8
	st.d	$a4, $s8, 4
	ld.d	$a4, $s8, 16
	st.d	$a5, $s8, 12
	ld.d	$a5, $s8, 24
	st.d	$a4, $s8, 20
	ld.d	$a4, $s8, 32
	st.d	$a5, $s8, 28
	ld.d	$a5, $s8, 40
	st.d	$a4, $s8, 36
	ld.d	$a4, $s8, 48
	st.d	$a5, $s8, 44
	ld.d	$a5, $s8, 56
	st.d	$a4, $s8, 52
	st.d	$a5, $s8, 60
.LBB1_22:                               # %.loopexit
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a4, $s5, %pc_lo12(Is_redundant_correct)
	sltui	$a3, $a3, 1
	masknez	$a4, $a4, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	st.w	$a2, $s8, 0
	ori	$s1, $zero, 1
	st.w	$a1, $fp, %pc_lo12(previous_frame_num)
	beq	$a0, $s1, .LBB1_37
# %bb.23:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s2, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 12
	ldptr.d	$s1, $s0, 5592
	beqz	$a1, .LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(init_contexts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(active_pps)
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a1, $a0, 1124
	beqz	$a1, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a1, $s0, 44
	beq	$a1, $s3, .LBB1_29
.LBB1_27:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $a0, 1120
	beqz	$a0, .LBB1_30
# %bb.28:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s0, 44
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_30
.LBB1_29:                               #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fill_wp_params)
	jirl	$ra, $ra, 0
.LBB1_30:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s1, 0
	bnez	$a0, .LBB1_1
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(decode_one_slice)
	jirl	$ra, $ra, 0
	b	.LBB1_1
.LBB1_32:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a2, $s8, 2
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	beqz	$a1, .LBB1_16
.LBB1_34:                               # %.lr.ph.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	bnez	$a3, .LBB1_33
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=2
	st.w	$zero, $s6, %pc_lo12(Is_primary_correct)
	b	.LBB1_33
.LBB1_36:
	ori	$s1, $zero, 2
.LBB1_37:                               # %.critedge
	pcaddu18i	$ra, %call36(exit_picture)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	decode_one_frame, .Lfunc_end1-decode_one_frame
                                        # -- End function
	.globl	Error_tracking                  # -- Begin function Error_tracking
	.p2align	5
	.type	Error_tracking,@function
Error_tracking:                         # @Error_tracking
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $a0, 0
	ldptr.w	$a0, $a1, 5652
	beqz	$a0, .LBB2_4
# %bb.1:
	ld.w	$a0, $a1, 44
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB2_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(redundant_slice_ref_idx)
	ld.w	$a0, $a0, %pc_lo12(redundant_slice_ref_idx)
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(ref_flag)
	addi.d	$a1, $a1, %pc_lo12(ref_flag)
	ldx.w	$a0, $a1, $a0
	beqz	$a0, .LBB2_8
.LBB2_3:                                # %.thread5
	ret
.LBB2_4:
	pcalau12i	$a0, %pc_hi20(Is_redundant_correct)
	ori	$a2, $zero, 1
	ld.w	$a3, $a1, 44
	st.w	$a2, $a0, %pc_lo12(Is_redundant_correct)
	pcalau12i	$a0, %pc_hi20(Is_primary_correct)
	ori	$a4, $zero, 2
	st.w	$a2, $a0, %pc_lo12(Is_primary_correct)
	beq	$a3, $a4, .LBB2_3
# %bb.5:                                # %.preheader
	ldptr.w	$a1, $a1, 5640
	blez	$a1, .LBB2_3
# %bb.6:                                # %.lr.ph.preheader
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB2_9
# %bb.7:
	move	$a2, $zero
	b	.LBB2_14
.LBB2_8:
	pcalau12i	$a0, %pc_hi20(Is_redundant_correct)
	st.w	$zero, $a0, %pc_lo12(Is_redundant_correct)
	ret
.LBB2_9:                                # %vector.ph
	pcalau12i	$a2, %pc_hi20(ref_flag+16)
	addi.d	$a3, $a2, %pc_lo12(ref_flag+16)
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	move	$a4, $a2
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	beqz	$a4, .LBB2_13
.LBB2_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vseqi.w	$vr0, $vr0, 0
	vseqi.w	$vr1, $vr1, 0
	vpickve2gr.w	$a5, $vr1, 0
	vinsgr2vr.h	$vr2, $a5, 0
	vpickve2gr.w	$a5, $vr1, 1
	vinsgr2vr.h	$vr2, $a5, 1
	vpickve2gr.w	$a5, $vr1, 2
	vinsgr2vr.h	$vr2, $a5, 2
	vpickve2gr.w	$a5, $vr1, 3
	vinsgr2vr.h	$vr2, $a5, 3
	vpickve2gr.w	$a5, $vr0, 0
	vinsgr2vr.h	$vr2, $a5, 4
	vpickve2gr.w	$a5, $vr0, 1
	vinsgr2vr.h	$vr2, $a5, 5
	vpickve2gr.w	$a5, $vr0, 2
	vinsgr2vr.h	$vr2, $a5, 6
	vpickve2gr.w	$a5, $vr0, 3
	vinsgr2vr.h	$vr2, $a5, 7
	vslli.h	$vr0, $vr2, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a5, $vr0, 0
	beqz	$a5, .LBB2_10
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	st.w	$zero, $a0, %pc_lo12(Is_primary_correct)
	b	.LBB2_10
.LBB2_13:                               # %middle.block
	beq	$a2, $a1, .LBB2_3
.LBB2_14:                               # %.lr.ph.preheader23
	pcalau12i	$a3, %pc_hi20(ref_flag)
	addi.d	$a3, $a3, %pc_lo12(ref_flag)
	alsl.d	$a3, $a2, $a3, 2
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bgeu	$a2, $a1, .LBB2_3
.LBB2_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	bnez	$a4, .LBB2_15
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=1
	st.w	$zero, $a0, %pc_lo12(Is_primary_correct)
	b	.LBB2_15
.Lfunc_end2:
	.size	Error_tracking, .Lfunc_end2-Error_tracking
                                        # -- End function
	.globl	decode_slice                    # -- Begin function decode_slice
	.p2align	5
	.type	decode_slice,@function
decode_slice:                           # @decode_slice
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(active_pps)
	ld.d	$a3, $s3, %pc_lo12(active_pps)
	move	$fp, $a0
	ld.w	$a0, $a3, 12
	ldptr.d	$s2, $fp, 5592
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a0, .LBB3_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_contexts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s3, %pc_lo12(active_pps)
.LBB3_2:
	ld.w	$a0, $a3, 1124
	beqz	$a0, .LBB3_4
# %bb.3:
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_6
.LBB3_4:
	ld.w	$a0, $a3, 1120
	beqz	$a0, .LBB3_7
# %bb.5:
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_7
.LBB3_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_wp_params)
	jirl	$ra, $ra, 0
.LBB3_7:
	bstrins.d	$s1, $zero, 0, 0
	ori	$a0, $zero, 2
	bne	$s1, $a0, .LBB3_9
# %bb.8:
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB3_10
.LBB3_9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_10:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(decode_one_slice)
	jr	$t8
.Lfunc_end3:
	.size	decode_slice, .Lfunc_end3-decode_slice
                                        # -- End function
	.globl	buf2img                         # -- Begin function buf2img
	.p2align	5
	.type	buf2img,@function
buf2img:                                # @buf2img
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ori	$a5, $zero, 3
	move	$s3, $a4
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	bltu	$a4, $a5, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB4_2:
	pcaddu18i	$ra, %call36(testEndian)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_13
# %bb.3:
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB4_49
# %bb.4:
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB4_31
# %bb.5:
	ori	$a0, $zero, 4
	bne	$s3, $a0, .LBB4_12
# %bb.6:                                # %.preheader104
	blez	$fp, .LBB4_12
# %bb.7:                                # %.preheader104
	blez	$s1, .LBB4_12
# %bb.8:                                # %.preheader103.us.preheader
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a2, $s1, 2
	.p2align	4, , 16
.LBB4_9:                                # %.preheader103.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s0, $a3
	move	$a4, $s1
	move	$a5, $a0
	.p2align	4, , 16
.LBB4_10:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a5, 31, 2
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s2, $a6
	revb.2w	$a6, $a6
	st.h	$a6, $a3, 0
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB4_10
# %bb.11:                               # %._crit_edge.us
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $a2
	bne	$a1, $fp, .LBB4_9
.LBB4_12:                               # %.loopexit105
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 500
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB4_13:
	slt	$a0, $zero, $fp
	slt	$a1, $zero, $s1
	ori	$a2, $zero, 1
	and	$a0, $a0, $a1
	bne	$s3, $a2, .LBB4_26
# %bb.14:                               # %.preheader94
	beqz	$a0, .LBB4_68
# %bb.15:                               # %.preheader.us.preheader
	move	$a0, $zero
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s1, 30, 4
	slli.d	$a2, $a2, 4
	ori	$a3, $zero, 16
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %._crit_edge.us125
                                        #   in Loop: Header=BB4_17 Depth=1
	addi.d	$a0, $a0, 1
	move	$s2, $a4
	beq	$a0, $fp, .LBB4_68
.LBB4_17:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_22 Depth 2
	slli.d	$a4, $a0, 3
	ldx.d	$a5, $s0, $a4
	bltu	$s1, $a3, .LBB4_20
# %bb.18:                               # %vector.memcheck225
                                        #   in Loop: Header=BB4_17 Depth=1
	add.d	$a4, $s2, $s1
	bgeu	$a5, $a4, .LBB4_23
# %bb.19:                               # %vector.memcheck225
                                        #   in Loop: Header=BB4_17 Depth=1
	add.d	$a4, $a5, $a1
	bgeu	$s2, $a4, .LBB4_23
.LBB4_20:                               #   in Loop: Header=BB4_17 Depth=1
	move	$a6, $zero
	move	$a4, $s2
.LBB4_21:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_17 Depth=1
	alsl.d	$a5, $a6, $a5, 1
	sub.d	$a6, $s1, $a6
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_22:                               # %scalar.ph
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a7, 0
	addi.d	$a4, $a7, 1
	st.h	$t0, $a5, 0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 2
	move	$a7, $a4
	bnez	$a6, .LBB4_22
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_23:                               # %vector.ph232
                                        #   in Loop: Header=BB4_17 Depth=1
	add.d	$a4, $s2, $a2
	addi.d	$a6, $a5, 16
	addi.d	$a7, $s2, 8
	move	$t0, $a2
	.p2align	4, , 16
.LBB4_24:                               # %vector.body235
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vinsgr2vr.d	$vr1, $t2, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.hu.bu	$vr1, $vr1, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB4_24
# %bb.25:                               # %middle.block240
                                        #   in Loop: Header=BB4_17 Depth=1
	move	$a6, $a2
	beq	$a2, $s1, .LBB4_16
	b	.LBB4_21
.LBB4_26:                               # %.preheader95
	beqz	$a0, .LBB4_68
# %bb.27:                               # %.lr.ph.us.preheader
	move	$s4, $zero
	mul.d	$s5, $s3, $s1
	slli.d	$s6, $s1, 1
	.p2align	4, , 16
.LBB4_28:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_29 Depth 2
	move	$s7, $zero
	alsl.d	$s8, $s4, $s0, 3
	move	$s1, $s2
	.p2align	4, , 16
.LBB4_29:                               #   Parent Loop BB4_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s8, 0
	add.d	$a0, $a1, $s7
	stx.h	$zero, $a1, $s7
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 2
	add.d	$s1, $s1, $s3
	bne	$s6, $s7, .LBB4_29
# %bb.30:                               # %._crit_edge.us119
                                        #   in Loop: Header=BB4_28 Depth=1
	addi.d	$s4, $s4, 1
	add.d	$s2, $s2, $s5
	bne	$s4, $fp, .LBB4_28
	b	.LBB4_68
.LBB4_31:                               # %.preheader101
	blez	$fp, .LBB4_68
# %bb.32:                               # %.preheader101
	blez	$s1, .LBB4_68
# %bb.33:                               # %.preheader100.us.preheader
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a2, $s1, 1
	sub.d	$a3, $zero, $a2
	andi	$a4, $s1, 8
	bstrpick.d	$a5, $s1, 30, 4
	slli.d	$a5, $a5, 4
	bstrpick.d	$a6, $s1, 30, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $s2, 16
	sub.d	$t0, $zero, $a6
	ori	$t1, $zero, 8
	ori	$t2, $zero, 32
	ori	$t3, $zero, 16
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_34:                               # %._crit_edge.us112
                                        #   in Loop: Header=BB4_35 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a7, $a7, $a2
	add.d	$a0, $a0, $s1
	beq	$a1, $fp, .LBB4_68
.LBB4_35:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_46 Depth 2
                                        #     Child Loop BB4_43 Depth 2
                                        #     Child Loop BB4_39 Depth 2
	slli.d	$t4, $a1, 3
	ldx.d	$t4, $s0, $t4
	bltu	$s1, $t1, .LBB4_37
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_35 Depth=1
	mul.d	$t5, $a3, $a1
	sub.d	$t5, $t5, $s2
	add.d	$t5, $t5, $t4
	bgeu	$t5, $t2, .LBB4_40
.LBB4_37:                               #   in Loop: Header=BB4_35 Depth=1
	move	$t6, $zero
.LBB4_38:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB4_35 Depth=1
	alsl.d	$t4, $t6, $t4, 1
	add.d	$t5, $t6, $a0
	alsl.d	$t5, $t5, $s2, 1
	sub.d	$t6, $s1, $t6
	.p2align	4, , 16
.LBB4_39:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB4_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $t5, 0
	revb.2h	$t7, $t7
	st.h	$t7, $t4, 0
	addi.d	$t4, $t4, 2
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
	bnez	$t6, .LBB4_39
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_40:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_35 Depth=1
	bgeu	$s1, $t3, .LBB4_45
# %bb.41:                               #   in Loop: Header=BB4_35 Depth=1
	move	$t7, $zero
.LBB4_42:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_35 Depth=1
	add.d	$t5, $t0, $t7
	alsl.d	$t6, $t7, $t4, 1
	add.d	$t7, $t7, $a0
	alsl.d	$t7, $t7, $s2, 1
	.p2align	4, , 16
.LBB4_43:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vshuf4i.b	$vr0, $vr0, 177
	vst	$vr0, $t6, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	bnez	$t5, .LBB4_43
# %bb.44:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_35 Depth=1
	move	$t6, $a6
	beq	$a6, $s1, .LBB4_34
	b	.LBB4_38
.LBB4_45:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_35 Depth=1
	addi.d	$t5, $t4, 16
	move	$t6, $a7
	move	$t7, $a5
	.p2align	4, , 16
.LBB4_46:                               # %vector.body
                                        #   Parent Loop BB4_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t6, -16
	vld	$vr1, $t6, 0
	vshuf4i.b	$vr0, $vr0, 177
	vshuf4i.b	$vr1, $vr1, 177
	vst	$vr0, $t5, -16
	vst	$vr1, $t5, 0
	addi.d	$t7, $t7, -16
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB4_46
# %bb.47:                               # %middle.block
                                        #   in Loop: Header=BB4_35 Depth=1
	beq	$a5, $s1, .LBB4_34
# %bb.48:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_35 Depth=1
	move	$t7, $a5
	move	$t6, $a5
	bnez	$a4, .LBB4_42
	b	.LBB4_38
.LBB4_49:                               # %.preheader98
	blez	$fp, .LBB4_68
# %bb.50:                               # %.preheader98
	blez	$s1, .LBB4_68
# %bb.51:                               # %.preheader97.us.preheader
	move	$a0, $zero
	slli.d	$a1, $s1, 1
	mul.d	$a2, $fp, $s1
	add.d	$a2, $s2, $a2
	andi	$a3, $s1, 8
	bstrpick.d	$a4, $s1, 30, 4
	slli.d	$a4, $a4, 4
	bstrpick.d	$a5, $s1, 30, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $s2, 8
	sub.d	$a7, $zero, $a5
	ori	$t0, $zero, 8
	ori	$t1, $zero, 16
	move	$t2, $s2
	b	.LBB4_53
	.p2align	4, , 16
.LBB4_52:                               # %._crit_edge.us115
                                        #   in Loop: Header=BB4_53 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $s1
	add.d	$t2, $t2, $s1
	beq	$a0, $fp, .LBB4_68
.LBB4_53:                               # %iter.check198
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_65 Depth 2
                                        #     Child Loop BB4_62 Depth 2
                                        #     Child Loop BB4_58 Depth 2
	slli.d	$t3, $a0, 3
	ldx.d	$t3, $s0, $t3
	bltu	$s1, $t0, .LBB4_56
# %bb.54:                               # %vector.memcheck194
                                        #   in Loop: Header=BB4_53 Depth=1
	bgeu	$t3, $a2, .LBB4_59
# %bb.55:                               # %vector.memcheck194
                                        #   in Loop: Header=BB4_53 Depth=1
	add.d	$t4, $t3, $a1
	bgeu	$s2, $t4, .LBB4_59
.LBB4_56:                               #   in Loop: Header=BB4_53 Depth=1
	move	$t4, $zero
.LBB4_57:                               # %vec.epilog.scalar.ph212.preheader
                                        #   in Loop: Header=BB4_53 Depth=1
	alsl.d	$t3, $t4, $t3, 1
	.p2align	4, , 16
.LBB4_58:                               # %vec.epilog.scalar.ph212
                                        #   Parent Loop BB4_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t5, $t2, $t4
	st.h	$t5, $t3, 0
	addi.d	$t4, $t4, 1
	addi.d	$t3, $t3, 2
	bne	$s1, $t4, .LBB4_58
	b	.LBB4_52
	.p2align	4, , 16
.LBB4_59:                               # %vector.main.loop.iter.check200
                                        #   in Loop: Header=BB4_53 Depth=1
	bgeu	$s1, $t1, .LBB4_64
# %bb.60:                               #   in Loop: Header=BB4_53 Depth=1
	move	$t6, $zero
.LBB4_61:                               # %vec.epilog.ph215
                                        #   in Loop: Header=BB4_53 Depth=1
	add.d	$t4, $a7, $t6
	alsl.d	$t5, $t6, $t3, 1
	add.d	$t6, $t2, $t6
	.p2align	4, , 16
.LBB4_62:                               # %vec.epilog.vector.body218
                                        #   Parent Loop BB4_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t6, 0
	vinsgr2vr.d	$vr0, $t7, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vst	$vr0, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 8
	bnez	$t4, .LBB4_62
# %bb.63:                               # %vec.epilog.middle.block222
                                        #   in Loop: Header=BB4_53 Depth=1
	move	$t4, $a5
	beq	$a5, $s1, .LBB4_52
	b	.LBB4_57
.LBB4_64:                               # %vector.body204.preheader
                                        #   in Loop: Header=BB4_53 Depth=1
	addi.d	$t4, $t3, 16
	move	$t5, $a6
	move	$t6, $a4
	.p2align	4, , 16
.LBB4_65:                               # %vector.body204
                                        #   Parent Loop BB4_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t5, -8
	ld.d	$t8, $t5, 0
	vinsgr2vr.d	$vr0, $t7, 0
	vinsgr2vr.d	$vr1, $t8, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.hu.bu	$vr1, $vr1, 0
	vst	$vr0, $t4, -16
	vst	$vr1, $t4, 0
	addi.d	$t6, $t6, -16
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 16
	bnez	$t6, .LBB4_65
# %bb.66:                               # %middle.block209
                                        #   in Loop: Header=BB4_53 Depth=1
	beq	$a4, $s1, .LBB4_52
# %bb.67:                               # %vec.epilog.iter.check213
                                        #   in Loop: Header=BB4_53 Depth=1
	move	$t6, $a4
	move	$t4, $a4
	bnez	$a3, .LBB4_61
	b	.LBB4_57
.LBB4_68:                               # %.loopexit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	buf2img, .Lfunc_end4-buf2img
                                        # -- End function
	.globl	find_snr                        # -- Begin function find_snr
	.p2align	5
	.type	find_snr,@function
find_snr:                               # @find_snr
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 176                  # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1440
	add.d	$fp, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s5, $a2, %got_pc_lo12(img)
	ld.d	$s1, $s5, 0
	ldptr.w	$a2, $s1, 5872
	lu12i.w	$s0, 1
	ori	$a3, $s0, 1804
	ldx.w	$s2, $s1, $a3
	pcalau12i	$a3, %pc_hi20(active_sps)
	ld.d	$a3, $a3, %pc_lo12(active_sps)
	ori	$a4, $s0, 1808
	ldx.w	$s3, $s1, $a4
	ori	$a4, $zero, 2160
	ldx.w	$a3, $a3, $a4
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a2, 62, 60
	add.w	$a3, $a2, $a3
	pcalau12i	$a2, %pc_hi20(.L__const.exit_picture.yuv_types)
	addi.d	$a2, $a2, %pc_lo12(.L__const.exit_picture.yuv_types)
	ld.d	$a5, $a2, 16
	vld	$vr0, $a2, 0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 4
	st.d	$a5, $sp, 168
	vst	$vr0, $sp, 152
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a5, $a2, 0
	ld.w	$a6, $fp, 220
	ldptr.w	$a2, $a5, 3008
	beqz	$a6, .LBB5_2
# %bb.1:
	ld.w	$a6, $fp, 212
	slli.d	$t1, $a6, 2
	pcalau12i	$a7, %pc_hi20(find_snr.SubWidthC)
	addi.d	$a7, $a7, %pc_lo12(find_snr.SubWidthC)
	ldx.w	$t2, $a7, $t1
	ld.w	$t0, $fp, 224
	ld.w	$a7, $fp, 228
	pcalau12i	$t3, %pc_hi20(find_snr.SubHeightC)
	addi.d	$t3, $t3, %pc_lo12(find_snr.SubHeightC)
	ld.w	$t4, $fp, 216
	ldx.w	$t1, $t3, $t1
	addi.d	$t5, $t4, -2
	mul.d	$t3, $t5, $t1
	ld.w	$t6, $fp, 232
	ld.w	$t7, $fp, 236
	add.d	$t1, $a7, $t0
	mul.d	$t2, $t1, $t2
	ld.w	$t4, $fp, 32
	ld.w	$t1, $fp, 36
	add.d	$t8, $t7, $t6
	mul.d	$t3, $t3, $t8
	sub.w	$s4, $t4, $t2
	add.w	$t8, $t3, $t1
	mul.d	$t3, $t5, $t6
	mul.d	$t2, $t5, $t7
	div.w	$a4, $a4, $a2
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	bnez	$a6, .LBB5_5
	b	.LBB5_3
.LBB5_2:                                # %.thread
	ld.w	$s4, $fp, 32
	ld.w	$t8, $fp, 36
	ld.w	$a6, $fp, 212
	move	$t2, $zero
	move	$t3, $zero
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $t8
	move	$t4, $s4
	div.w	$a4, $a4, $a2
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	bnez	$a6, .LBB5_5
.LBB5_3:
	ldptr.w	$a5, $a5, 3012
	beqz	$a5, .LBB5_5
# %bb.4:
	bstrpick.d	$a5, $t4, 31, 31
	add.w	$a5, $t4, $a5
	srai.d	$a1, $a5, 1
	bstrpick.d	$a5, $t1, 31, 31
	add.w	$a5, $t1, $a5
	srai.d	$a6, $a5, 1
	b	.LBB5_6
.LBB5_5:
	ld.w	$a5, $fp, 40
	ld.w	$a6, $fp, 44
	add.d	$a7, $t0, $a7
	sub.w	$a1, $a5, $a7
	add.d	$a5, $t3, $t2
	add.w	$a6, $a5, $a6
.LBB5_6:
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	srai.d	$s6, $a3, 3
	ori	$a3, $s0, 1904
	ldx.w	$a3, $s1, $a3
	mulw.d.w	$a5, $s4, $t8
	mul.d	$s5, $a1, $a6
	alsl.d	$a5, $s5, $a5, 1
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	bnez	$a4, .LBB5_10
# %bb.7:
	beqz	$a3, .LBB5_9
# %bb.8:
	ld.w	$a6, $s1, 0
	ori	$a7, $s0, 1964
	ldx.w	$a7, $s1, $a7
	mul.w	$a6, $a7, $a6
	div.w	$a2, $a6, $a2
	stptr.w	$a2, $s1, 5996
	b	.LBB5_10
.LBB5_9:
	move	$a3, $zero
.LBB5_10:                               # %._crit_edge
	ori	$a1, $s0, 1900
	ldx.w	$a1, $s1, $a1
	mul.d	$s0, $a5, $s6
	add.w	$fp, $a1, $a4
	slt	$a1, $fp, $a3
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	stptr.w	$a1, $s1, 6000
	pcalau12i	$a0, %pc_hi20(frame_no)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.w	$fp, $a0, %pc_lo12(frame_no)
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	mul.d	$a0, $t8, $s6
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	mul.w	$s8, $a0, $s4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$fp, $a0, %pc_lo12(frame_no)
.LBB5_12:
	mul.d	$a1, $s0, $fp
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB5_56
# %bb.13:
	bnez	$s2, .LBB5_15
# %bb.14:
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1365
	mulh.d	$a0, $s0, $a0
	srli.d	$a1, $a0, 63
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
.LBB5_15:
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	pcalau12i	$s8, %pc_hi20(imgY_ref)
	ld.d	$a0, $s8, %pc_lo12(imgY_ref)
	move	$a1, $s7
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(buf2img)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 212
	pcalau12i	$s3, %pc_hi20(imgUV_ref)
	beqz	$a0, .LBB5_18
# %bb.16:                               # %.preheader207
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	mul.w	$s8, $s5, $s6
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(imgUV_ref)
	ld.d	$a0, $a0, 0
	move	$a1, $s7
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(buf2img)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB5_19
# %bb.17:                               # %.loopexit208.thread259
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	move	$s5, $s3
	ld.d	$a0, $s3, %pc_lo12(imgUV_ref)
	ld.d	$a0, $a0, 8
	move	$a1, $s7
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(buf2img)
	jirl	$ra, $ra, 0
	move	$s2, $fp
	move	$s3, $s1
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	b	.LBB5_21
.LBB5_18:                               # %.loopexit208
	move	$s5, $s3
	move	$a0, $s2
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_21
	b	.LBB5_20
.LBB5_19:                               # %.loopexit208.thread
	sub.d	$a1, $zero, $s0
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	move	$s5, $s3
	ld.d	$a0, $s3, %pc_lo12(imgUV_ref)
	ld.d	$a0, $a0, 8
	move	$a1, $s7
	move	$a2, $fp
	move	$a3, $s1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(buf2img)
	jirl	$ra, $ra, 0
	move	$s2, $fp
	move	$s3, $s1
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
.LBB5_20:
	slli.d	$a0, $s0, 1
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	lu32i.d	$a1, 349525
	lu52i.d	$a1, $a1, 1365
	mulh.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lseek64)
	jirl	$ra, $ra, 0
.LBB5_21:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 5552
	st.w	$zero, $a1, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	blez	$s0, .LBB5_31
# %bb.22:                               # %.preheader206.lr.ph
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	blez	$s1, .LBB5_44
# %bb.23:                               # %.preheader206.lr.ph.split.us
	move	$a2, $zero
	move	$a0, $zero
	ld.d	$a3, $s8, %pc_lo12(imgY_ref)
	ld.d	$a4, $fp, 88
	bstrpick.d	$a5, $s1, 30, 1
	slli.d	$a5, $a5, 1
	ori	$a6, $zero, 1
	b	.LBB5_25
	.p2align	4, , 16
.LBB5_24:                               # %._crit_edge.us
                                        #   in Loop: Header=BB5_25 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s0, .LBB5_32
.LBB5_25:                               # %.preheader206.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_30 Depth 2
	slli.d	$t0, $a2, 3
	ldx.d	$a7, $a4, $t0
	ldx.d	$t0, $a3, $t0
	move	$t1, $zero
	beq	$s1, $a6, .LBB5_29
# %bb.26:                               # %vector.body.preheader
                                        #   in Loop: Header=BB5_25 Depth=1
	addi.d	$t2, $a7, 2
	addi.d	$t3, $t0, 2
	move	$t4, $a5
	.p2align	4, , 16
.LBB5_27:                               # %vector.body
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t5, $t2, -2
	ld.hu	$t6, $t2, 0
	ld.hu	$t7, $t3, -2
	ld.hu	$t8, $t3, 0
	sub.d	$t5, $t5, $t7
	sub.d	$t6, $t6, $t8
	slli.d	$t5, $t5, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t5, $a1, $t5
	ldx.w	$t6, $a1, $t6
	add.d	$a0, $a0, $t5
	add.d	$t1, $t1, $t6
	addi.d	$t2, $t2, 4
	addi.d	$t4, $t4, -2
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB5_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB5_25 Depth=1
	add.d	$a0, $t1, $a0
	move	$t1, $a5
	beq	$a5, $s1, .LBB5_24
.LBB5_29:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_25 Depth=1
	alsl.d	$a7, $t1, $a7, 1
	alsl.d	$t0, $t1, $t0, 1
	sub.d	$t1, $s1, $t1
	.p2align	4, , 16
.LBB5_30:                               # %scalar.ph
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t2, $a7, 0
	ld.hu	$t3, $t0, 0
	sub.d	$t2, $t2, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	add.d	$a0, $a0, $t2
	addi.d	$a7, $a7, 2
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 2
	bnez	$t1, .LBB5_30
	b	.LBB5_24
.LBB5_31:
	move	$a0, $zero
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
.LBB5_32:                               # %._crit_edge214
	ld.w	$a2, $fp, 212
	move	$s6, $zero
	move	$s7, $zero
	beqz	$a2, .LBB5_45
.LBB5_33:                               # %._crit_edge214
	blez	$s3, .LBB5_45
# %bb.34:                               # %._crit_edge214
	blez	$s2, .LBB5_45
# %bb.35:                               # %.preheader.lr.ph.split.us
	ld.d	$a5, $s5, %pc_lo12(imgUV_ref)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a2, 96
	move	$a2, $zero
	move	$s7, $zero
	move	$s6, $zero
	ld.d	$t8, $a5, 0
	ld.d	$a4, $a6, 0
	ld.d	$a5, $a5, 8
	ld.d	$a6, $a6, 8
	bstrpick.d	$a7, $s2, 30, 1
	slli.d	$ra, $a7, 1
	ori	$a7, $zero, 2
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_37
	.p2align	4, , 16
.LBB5_36:                               # %._crit_edge.us225
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s3, .LBB5_45
.LBB5_37:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_40 Depth 2
                                        #     Child Loop BB5_43 Depth 2
	slli.d	$t4, $a2, 3
	ldx.d	$t1, $t8, $t4
	ldx.d	$t2, $a4, $t4
	ldx.d	$t3, $a5, $t4
	ldx.d	$t4, $a6, $t4
	bgeu	$s2, $a7, .LBB5_39
# %bb.38:                               #   in Loop: Header=BB5_37 Depth=1
	move	$t5, $zero
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_39:                               # %vector.body271.preheader
                                        #   in Loop: Header=BB5_37 Depth=1
	move	$a6, $a5
	move	$a5, $a4
	move	$a4, $t8
	move	$t5, $zero
	move	$t6, $zero
	addi.d	$t7, $t1, 2
	addi.d	$t8, $t2, 2
	addi.d	$s5, $t3, 2
	addi.d	$s8, $t4, 2
	move	$a7, $ra
	.p2align	4, , 16
.LBB5_40:                               # %vector.body271
                                        #   Parent Loop BB5_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$fp, $t7, -2
	ld.hu	$s0, $t7, 0
	ld.hu	$s1, $t8, -2
	ld.hu	$s4, $t8, 0
	ld.hu	$t0, $s5, -2
	ld.hu	$s2, $s5, 0
	ld.hu	$s3, $s8, -2
	ld.hu	$a3, $s8, 0
	sub.d	$fp, $fp, $s1
	sub.d	$s0, $s0, $s4
	sub.d	$t0, $t0, $s3
	sub.d	$a3, $s2, $a3
	slli.d	$fp, $fp, 2
	slli.d	$s0, $s0, 2
	ldx.w	$fp, $a1, $fp
	ldx.w	$s0, $a1, $s0
	slli.d	$t0, $t0, 2
	slli.d	$a3, $a3, 2
	ldx.w	$t0, $a1, $t0
	ldx.w	$a3, $a1, $a3
	add.d	$s7, $s7, $fp
	add.d	$t5, $t5, $s0
	add.d	$s6, $s6, $t0
	add.d	$t6, $t6, $a3
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 4
	addi.d	$s5, $s5, 4
	addi.d	$ra, $ra, -2
	addi.d	$s8, $s8, 4
	bnez	$ra, .LBB5_40
# %bb.41:                               # %middle.block278
                                        #   in Loop: Header=BB5_37 Depth=1
	add.d	$s7, $t5, $s7
	add.d	$s6, $t6, $s6
	move	$ra, $a7
	move	$t5, $a7
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	move	$t8, $a4
	move	$a4, $a5
	move	$a5, $a6
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ori	$a7, $zero, 2
	beq	$ra, $s2, .LBB5_36
.LBB5_42:                               # %scalar.ph266.preheader
                                        #   in Loop: Header=BB5_37 Depth=1
	alsl.d	$t1, $t5, $t1, 1
	alsl.d	$t2, $t5, $t2, 1
	alsl.d	$t3, $t5, $t3, 1
	alsl.d	$t4, $t5, $t4, 1
	sub.d	$t5, $s2, $t5
	.p2align	4, , 16
.LBB5_43:                               # %scalar.ph266
                                        #   Parent Loop BB5_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a3, $t1, 0
	ld.hu	$t0, $t2, 0
	ld.hu	$t6, $t3, 0
	ld.hu	$t7, $t4, 0
	sub.d	$a3, $a3, $t0
	sub.d	$t0, $t6, $t7
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	add.d	$s7, $s7, $a3
	add.d	$s6, $s6, $t0
	addi.d	$t1, $t1, 2
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB5_43
	b	.LBB5_36
.LBB5_44:
	move	$a0, $zero
	ld.w	$a2, $fp, 212
	move	$s6, $zero
	move	$s7, $zero
	bnez	$a2, .LBB5_33
.LBB5_45:                               # %.loopexit
	movgr2fr.w	$fs0, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$s5, $a1, $a1
	fmov.s	$fs1, $fs0
	beqz	$a0, .LBB5_47
# %bb.46:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs1, $fa0
.LBB5_47:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	fst.s	$fs1, $a0, 4
	bstrpick.d	$s1, $s5, 31, 0
	movgr2fr.w	$fs3, $s2
	movgr2fr.w	$fs4, $s3
	fmov.s	$fs2, $fs0
	beqz	$s7, .LBB5_49
# %bb.48:
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	ffint.d.w	$fa1, $fs3
	ffint.d.w	$fa2, $fs4
	fmul.d	$fa1, $fa1, $fa2
	movgr2fr.d	$fa2, $s7
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs2, $fa0
.LBB5_49:
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	fst.s	$fs2, $fp, 8
	beqz	$s6, .LBB5_51
# %bb.50:
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	ffint.d.w	$fa1, $fs3
	ffint.d.w	$fa2, $fs4
	fmul.d	$fa1, $fa1, $fa2
	movgr2fr.d	$fa2, $s6
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa0
.LBB5_51:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	fst.s	$fs0, $fp, 12
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_55
# %bb.52:
	ld.w	$a0, $fp, 0
	fld.s	$fa0, $fp, 28
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa1, $fs1
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa2, $fa2
	fld.s	$fa3, $fp, 32
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $fp, 28
	fld.s	$fa0, $fp, 36
	fmadd.s	$fa3, $fa3, $fa1, $fs2
	fdiv.s	$fa3, $fa3, $fa2
	fst.s	$fa3, $fp, 32
	fmadd.s	$fa0, $fa0, $fa1, $fs0
	fdiv.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $fp, 36
	ld.w	$a0, $a1, 264
	beqz	$a0, .LBB5_54
.LBB5_53:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(frame_no)
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 16
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a1, 240
	ld.w	$a1, $a1, 212
	fcvt.d.s	$fa0, $fs1
	fcvt.d.s	$fa1, $fs2
	fcvt.d.s	$fa2, $fs0
	slli.d	$a6, $a1, 2
	alsl.d	$a1, $a1, $a6, 1
	addi.d	$a6, $sp, 152
	add.d	$a1, $a6, $a1
	st.d	$zero, $sp, 16
	fst.d	$fa2, $sp, 0
	st.d	$a1, $sp, 8
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a7, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB5_54:
	fld.d	$fs4, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB5_55:
	fst.s	$fs1, $fp, 16
	fst.s	$fs1, $fp, 28
	fst.s	$fs2, $fp, 20
	fst.s	$fs2, $fp, 32
	fst.s	$fs0, $fp, 24
	fst.s	$fs0, $fp, 36
	ld.w	$a0, $a1, 264
	bnez	$a0, .LBB5_53
	b	.LBB5_54
.LBB5_56:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a2, $a1, %pc_lo12(frame_no)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	fld.d	$fs4, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	find_snr, .Lfunc_end5-find_snr
                                        # -- End function
	.globl	get_block                       # -- Begin function get_block
	.p2align	5
	.type	get_block,@function
get_block:                              # @get_block
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(no_reference_picture)
	ld.d	$a1, $a1, %got_pc_lo12(no_reference_picture)
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB6_3
# %bb.1:
	ldptr.w	$a1, $a4, 5672
	ldptr.w	$a5, $a4, 6104
	bge	$a1, $a5, .LBB6_3
# %bb.2:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 128
	vst	$vr0, $fp, 0
	vst	$vr0, $fp, 16
	vst	$vr0, $fp, 32
	vst	$vr0, $fp, 48
	b	.LBB6_34
.LBB6_3:
	lu12i.w	$a1, 77
	pcalau12i	$a5, %pc_hi20(dec_picture)
	ld.d	$a5, $a5, %pc_lo12(dec_picture)
	ori	$a6, $a1, 1528
	ldx.d	$a0, $a0, $a6
	ori	$a1, $a1, 1476
	add.d	$a5, $a5, $a1
	ld.d	$a1, $a5, 68
	ld.wu	$a7, $a4, 4
	pcalau12i	$a6, %pc_hi20(get_block.cur_imgY)
	st.d	$a0, $a6, %pc_lo12(get_block.cur_imgY)
	ldx.bu	$a1, $a1, $a7
	beqz	$a1, .LBB6_5
# %bb.4:
	ld.w	$a1, $a5, 0
	srai.d	$a1, $a1, 1
	addi.w	$a1, $a1, -1
	b	.LBB6_6
.LBB6_5:
	ld.w	$a1, $a5, 16
.LBB6_6:
	srai.d	$t1, $a2, 2
	ld.w	$t0, $a5, 12
	or	$a5, $a3, $a2
	andi	$a5, $a5, 3
	srai.d	$a6, $a3, 2
	beqz	$a5, .LBB6_14
# %bb.7:
	andi	$a5, $a3, 3
	andi	$a7, $a2, 3
	beqz	$a5, .LBB6_16
# %bb.8:
	beqz	$a7, .LBB6_20
# %bb.9:
	ori	$t3, $zero, 2
	ori	$t2, $zero, 2
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	bne	$a7, $t3, .LBB6_24
# %bb.10:                               # %.preheader472.preheader
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ori	$a3, $zero, 2
	slt	$a2, $a3, $a6
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, -2
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	ori	$a4, $zero, 1
	slt	$a3, $a4, $a6
	masknez	$a5, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, -1
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$t4, $a0, $a3
	srai.d	$a3, $a6, 63
	andn	$a3, $a6, $a3
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$t5, $a0, $a3
	addi.w	$a4, $zero, -1
	slt	$a3, $a4, $a6
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	masknez	$a5, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, 1
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$t7, $a0, $a3
	addi.w	$t8, $zero, -2
	slt	$a3, $t8, $a6
	masknez	$a5, $t8, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, 2
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$fp, $a0, $a3
	addi.w	$s0, $zero, -3
	slt	$a3, $s0, $a6
	masknez	$a5, $s0, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, 3
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$s1, $a0, $a3
	addi.w	$a3, $zero, -4
	slt	$a5, $a3, $a6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a6, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, 4
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$s2, $a0, $a3
	addi.w	$a3, $zero, -5
	slt	$a5, $a3, $a6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a6, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, 5
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$s3, $a0, $a3
	addi.w	$a3, $zero, -6
	slt	$a5, $a3, $a6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a6, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, 6
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a1, $a1, $a5
	or	$a1, $a3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 144
	ori	$s4, $zero, 20
	.p2align	4, , 16
.LBB6_11:                               # %.preheader472
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $t1, 0
	ori	$a6, $zero, 2
	slt	$a5, $a6, $a3
	masknez	$t2, $a6, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $t2
	addi.w	$a5, $a5, -2
	slt	$t2, $a5, $t0
	maskeqz	$a5, $a5, $t2
	masknez	$t2, $t0, $t2
	or	$a5, $a5, $t2
	ori	$a6, $zero, 1
	slt	$t2, $a6, $a3
	masknez	$s5, $a6, $t2
	maskeqz	$t2, $a3, $t2
	or	$t2, $t2, $s5
	addi.d	$t2, $t2, -1
	slt	$s5, $t2, $t0
	maskeqz	$t2, $t2, $s5
	masknez	$s5, $t0, $s5
	or	$t2, $t2, $s5
	srai.d	$s5, $a3, 63
	andn	$s5, $a3, $s5
	slt	$s6, $s5, $t0
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $t0, $s6
	or	$s5, $s5, $s6
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	slt	$s6, $a4, $a3
	masknez	$s7, $a4, $s6
	maskeqz	$s6, $a3, $s6
	or	$s6, $s6, $s7
	addi.w	$s6, $s6, 1
	slt	$s7, $s6, $t0
	maskeqz	$s6, $s6, $s7
	masknez	$s7, $t0, $s7
	or	$a7, $s6, $s7
	slt	$s6, $t8, $a3
	masknez	$s7, $t8, $s6
	maskeqz	$s6, $a3, $s6
	or	$s6, $s6, $s7
	addi.w	$s6, $s6, 2
	slt	$s8, $s6, $t0
	maskeqz	$ra, $s6, $s8
	slt	$s6, $s0, $a3
	masknez	$s7, $s0, $s6
	maskeqz	$a3, $a3, $s6
	or	$a3, $a3, $s7
	addi.w	$a3, $a3, 3
	slt	$s6, $a3, $t0
	maskeqz	$a3, $a3, $s6
	masknez	$s6, $t0, $s6
	or	$a3, $a3, $s6
	slli.d	$s6, $a5, 1
	ldx.hu	$a5, $a2, $s6
	slli.d	$s7, $a3, 1
	ldx.hu	$a3, $a2, $s7
	masknez	$s8, $t0, $s8
	or	$t3, $ra, $s8
	addi.d	$a4, $sp, 68
	add.d	$s8, $a4, $a1
	add.d	$a5, $a3, $a5
	slli.d	$ra, $t2, 1
	ldx.hu	$a6, $a2, $ra
	slli.d	$t2, $t3, 1
	ldx.hu	$t3, $a2, $t2
	slli.d	$s5, $s5, 1
	ldx.hu	$t6, $a2, $s5
	slli.d	$a3, $a7, 1
	ldx.hu	$a7, $a2, $a3
	add.d	$a6, $t3, $a6
	alsl.d	$a6, $a6, $a6, 2
	sub.d	$a5, $a5, $a6
	add.d	$a6, $a7, $t6
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $t4, $s6
	ldx.hu	$a7, $t4, $s7
	st.w	$a5, $s8, -144
	ldx.hu	$a5, $t4, $ra
	ldx.hu	$t3, $t4, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $t4, $s5
	ldx.hu	$t6, $t4, $a3
	add.d	$a5, $t3, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $a7
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $t5, $s6
	ldx.hu	$a7, $t5, $s7
	st.w	$a5, $s8, -108
	ldx.hu	$a5, $t5, $ra
	ldx.hu	$t3, $t5, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $t5, $s5
	ldx.hu	$t6, $t5, $a3
	add.d	$a5, $t3, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $a7
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $t7, $s6
	ldx.hu	$a7, $t7, $s7
	st.w	$a5, $s8, -72
	ldx.hu	$a5, $t7, $ra
	ldx.hu	$t3, $t7, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $t7, $s5
	ldx.hu	$t6, $t7, $a3
	add.d	$a5, $t3, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $a7
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $s1, $s6
	ldx.hu	$a7, $s1, $s7
	st.w	$a5, $s8, -36
	ldx.hu	$a5, $s1, $ra
	ldx.hu	$t3, $s1, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $s1, $s5
	ldx.hu	$t6, $s1, $a3
	add.d	$a5, $t3, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $a7
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $s2, $s6
	ldx.hu	$a7, $s2, $s7
	st.w	$a5, $s8, 36
	ldx.hu	$a5, $s2, $ra
	ldx.hu	$t3, $s2, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $s2, $s5
	ldx.hu	$t6, $s2, $a3
	add.d	$a5, $t3, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $a7
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $s3, $s6
	ldx.hu	$a7, $s3, $s7
	st.w	$a5, $s8, 72
	ldx.hu	$a5, $s3, $ra
	ldx.hu	$t3, $s3, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $s3, $s5
	ldx.hu	$t6, $s3, $a3
	add.d	$a5, $t3, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $a7
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $a0, $s6
	ldx.hu	$a7, $a0, $s7
	st.w	$a5, $s8, 108
	ldx.hu	$a5, $a0, $ra
	ldx.hu	$t3, $a0, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $a0, $s5
	ldx.hu	$t6, $a0, $a3
	add.d	$a5, $t3, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $a7
	mul.d	$a6, $a6, $s4
	add.d	$a5, $a6, $a5
	ldx.hu	$a6, $fp, $s6
	ldx.hu	$a7, $fp, $s7
	st.w	$a5, $s8, 144
	ldx.hu	$a5, $fp, $ra
	ldx.hu	$t2, $fp, $t2
	add.d	$a6, $a7, $a6
	ldx.hu	$a7, $fp, $s5
	ldx.hu	$a3, $fp, $a3
	add.d	$a5, $t2, $a5
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a5, $a6, $a5
	add.d	$a3, $a3, $a7
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a3, $a5
	stx.w	$a3, $a1, $a4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, 1
	ori	$a3, $zero, 160
	bne	$a1, $a3, .LBB6_11
# %bb.12:                               # %.preheader471
	pcalau12i	$a1, %pc_hi20(get_block.cur_lineY)
	st.d	$a0, $a1, %pc_lo12(get_block.cur_lineY)
	ld.w	$a5, $sp, 68
	ld.w	$a1, $sp, 104
	ld.w	$a2, $sp, 212
	ld.w	$a3, $sp, 248
	ld.w	$t0, $sp, 140
	ld.w	$a6, $sp, 176
	add.d	$a0, $a2, $a1
	addi.w	$a7, $a0, 0
	alsl.d	$a7, $a7, $a0, 2
	add.d	$t1, $a6, $t0
	ori	$a0, $zero, 20
	mul.d	$t1, $t1, $a0
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	ldptr.w	$t2, $ra, 5900
	add.d	$a5, $a5, $a3
	sub.d	$a5, $a5, $a7
	add.d	$a5, $a5, $t1
	addi.w	$a5, $a5, 512
	srai.d	$a7, $a5, 10
	srai.d	$a5, $a5, 63
	andn	$a5, $a7, $a5
	slt	$a7, $a5, $t2
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t2, $a7
	or	$a7, $a5, $a7
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	st.w	$a7, $a5, 0
	ld.w	$t4, $sp, 72
	ld.w	$a7, $sp, 108
	ld.w	$t1, $sp, 216
	ld.w	$t2, $sp, 252
	ld.w	$t5, $sp, 144
	ld.w	$t3, $sp, 180
	add.d	$t6, $t1, $a7
	addi.w	$t7, $t6, 0
	alsl.d	$t6, $t7, $t6, 2
	add.d	$t7, $t3, $t5
	mul.d	$t7, $t7, $a0
	ldptr.w	$t8, $ra, 5900
	add.d	$t4, $t4, $t2
	sub.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t7
	addi.w	$t4, $t4, 512
	srai.d	$t6, $t4, 10
	srai.d	$t4, $t4, 63
	andn	$t4, $t6, $t4
	slt	$t6, $t4, $t8
	maskeqz	$t4, $t4, $t6
	masknez	$t6, $t8, $t6
	or	$t4, $t4, $t6
	st.w	$t4, $a5, 4
	ld.w	$t7, $sp, 76
	ld.w	$t4, $sp, 112
	ld.w	$t6, $sp, 220
	ld.w	$t8, $sp, 256
	ld.w	$s1, $sp, 148
	ld.w	$s0, $sp, 184
	add.d	$fp, $t6, $t4
	addi.w	$s2, $fp, 0
	alsl.d	$fp, $s2, $fp, 2
	add.d	$s2, $s0, $s1
	mul.d	$s2, $s2, $a0
	ldptr.w	$s3, $ra, 5900
	add.d	$t7, $t7, $t8
	sub.d	$t7, $t7, $fp
	add.d	$t7, $t7, $s2
	addi.w	$t7, $t7, 512
	srai.d	$fp, $t7, 10
	srai.d	$t7, $t7, 63
	andn	$t7, $fp, $t7
	slt	$fp, $t7, $s3
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $s3, $fp
	or	$t7, $t7, $fp
	st.w	$t7, $a5, 8
	ld.w	$t7, $sp, 80
	ld.w	$fp, $sp, 116
	ld.w	$s2, $sp, 224
	ld.w	$s4, $sp, 260
	ld.w	$s6, $sp, 152
	ld.w	$s5, $sp, 188
	add.d	$s3, $s2, $fp
	addi.w	$s7, $s3, 0
	alsl.d	$s3, $s7, $s3, 2
	add.d	$s7, $s5, $s6
	mul.d	$s7, $s7, $a0
	ldptr.w	$s8, $ra, 5900
	add.d	$t7, $t7, $s4
	sub.d	$t7, $t7, $s3
	add.d	$t7, $t7, $s7
	addi.w	$t7, $t7, 512
	srai.d	$s3, $t7, 10
	srai.d	$t7, $t7, 63
	andn	$t7, $s3, $t7
	slt	$s3, $t7, $s8
	maskeqz	$t7, $t7, $s3
	masknez	$s3, $s8, $s3
	or	$t7, $t7, $s3
	st.w	$t7, $a5, 12
	ld.w	$s3, $sp, 284
	add.d	$a3, $a3, $t0
	addi.w	$t0, $a3, 0
	alsl.d	$a3, $t0, $a3, 2
	add.d	$a2, $a2, $a6
	mul.d	$a2, $a2, $a0
	ldptr.w	$a6, $ra, 5900
	add.d	$a1, $a1, $s3
	sub.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a6
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a6, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 16
	ld.w	$t7, $sp, 288
	add.d	$a1, $t2, $t5
	addi.w	$a2, $a1, 0
	alsl.d	$a1, $a2, $a1, 2
	add.d	$a2, $t1, $t3
	mul.d	$a2, $a2, $a0
	ldptr.w	$a3, $ra, 5900
	add.d	$a6, $a7, $t7
	sub.d	$a1, $a6, $a1
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 20
	ld.w	$t3, $sp, 292
	add.d	$a1, $t8, $s1
	addi.w	$a2, $a1, 0
	alsl.d	$a1, $a2, $a1, 2
	add.d	$a2, $t6, $s0
	mul.d	$a2, $a2, $a0
	ldptr.w	$a3, $ra, 5900
	add.d	$a6, $t4, $t3
	sub.d	$a1, $a6, $a1
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 24
	ld.w	$a6, $sp, 296
	add.d	$a1, $s4, $s6
	addi.w	$a2, $a1, 0
	alsl.d	$a1, $a2, $a1, 2
	add.d	$a2, $s2, $s5
	mul.d	$a2, $a2, $a0
	ldptr.w	$a3, $ra, 5900
	add.d	$a7, $fp, $a6
	sub.d	$a1, $a7, $a1
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 28
	ld.w	$a2, $sp, 140
	ld.w	$a1, $sp, 176
	ld.w	$a3, $sp, 320
	ld.w	$t1, $sp, 212
	ld.w	$t0, $sp, 248
	add.d	$a7, $s3, $a1
	addi.w	$t2, $a7, 0
	alsl.d	$a7, $t2, $a7, 2
	add.d	$t2, $t0, $t1
	mul.d	$t2, $t2, $a0
	ldptr.w	$t4, $ra, 5900
	add.d	$a2, $a2, $a3
	sub.d	$a2, $a2, $a7
	add.d	$a2, $a2, $t2
	addi.w	$a2, $a2, 512
	srai.d	$a7, $a2, 10
	srai.d	$a2, $a2, 63
	andn	$a2, $a7, $a2
	slt	$a7, $a2, $t4
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $t4, $a7
	or	$a2, $a2, $a7
	st.w	$a2, $a5, 32
	ld.w	$a7, $sp, 144
	ld.w	$a2, $sp, 180
	ld.w	$t2, $sp, 324
	ld.w	$t5, $sp, 216
	ld.w	$t4, $sp, 252
	add.d	$t6, $t7, $a2
	addi.w	$t7, $t6, 0
	alsl.d	$t6, $t7, $t6, 2
	add.d	$t7, $t4, $t5
	mul.d	$t7, $t7, $a0
	ldptr.w	$t8, $ra, 5900
	add.d	$a7, $a7, $t2
	sub.d	$a7, $a7, $t6
	add.d	$a7, $a7, $t7
	addi.w	$a7, $a7, 512
	srai.d	$t6, $a7, 10
	srai.d	$a7, $a7, 63
	andn	$a7, $t6, $a7
	slt	$t6, $a7, $t8
	maskeqz	$a7, $a7, $t6
	masknez	$t6, $t8, $t6
	or	$a7, $a7, $t6
	st.w	$a7, $a5, 36
	ld.w	$fp, $sp, 148
	ld.w	$a7, $sp, 184
	ld.w	$t6, $sp, 328
	ld.w	$t8, $sp, 220
	ld.w	$t7, $sp, 256
	add.d	$t3, $t3, $a7
	addi.w	$s0, $t3, 0
	alsl.d	$t3, $s0, $t3, 2
	add.d	$s0, $t7, $t8
	mul.d	$s0, $s0, $a0
	ldptr.w	$s1, $ra, 5900
	add.d	$fp, $fp, $t6
	sub.d	$t3, $fp, $t3
	add.d	$t3, $t3, $s0
	addi.w	$t3, $t3, 512
	srai.d	$fp, $t3, 10
	srai.d	$t3, $t3, 63
	andn	$t3, $fp, $t3
	slt	$fp, $t3, $s1
	maskeqz	$t3, $t3, $fp
	masknez	$fp, $s1, $fp
	or	$t3, $t3, $fp
	st.w	$t3, $a5, 40
	ld.w	$s2, $sp, 152
	ld.w	$t3, $sp, 188
	ld.w	$fp, $sp, 332
	ld.w	$s1, $sp, 224
	ld.w	$s0, $sp, 260
	add.d	$a6, $a6, $t3
	addi.w	$s3, $a6, 0
	alsl.d	$a6, $s3, $a6, 2
	add.d	$s3, $s0, $s1
	mul.d	$s3, $s3, $a0
	ldptr.w	$s4, $ra, 5900
	add.d	$s2, $s2, $fp
	sub.d	$a6, $s2, $a6
	add.d	$a6, $a6, $s3
	addi.w	$a6, $a6, 512
	srai.d	$s2, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $s2, $a6
	slt	$s2, $a6, $s4
	maskeqz	$a6, $a6, $s2
	masknez	$s2, $s4, $s2
	or	$a6, $a6, $s2
	st.w	$a6, $a5, 44
	ld.w	$a6, $sp, 356
	ld.w	$s2, $sp, 284
	add.d	$a3, $a3, $t1
	addi.w	$t1, $a3, 0
	alsl.d	$a3, $t1, $a3, 2
	add.d	$t0, $s2, $t0
	mul.d	$t0, $t0, $a0
	ldptr.w	$t1, $ra, 5900
	add.d	$a1, $a1, $a6
	sub.d	$a1, $a1, $a3
	add.d	$a1, $a1, $t0
	addi.w	$a1, $a1, 512
	srai.d	$a3, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a3, $a1
	slt	$a3, $a1, $t1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $t1, $a3
	or	$a1, $a1, $a3
	st.w	$a1, $a5, 48
	ld.w	$a1, $sp, 360
	ld.w	$a3, $sp, 288
	add.d	$a6, $t2, $t5
	addi.w	$t0, $a6, 0
	alsl.d	$a6, $t0, $a6, 2
	add.d	$a3, $a3, $t4
	mul.d	$a3, $a3, $a0
	ldptr.w	$t0, $ra, 5900
	add.d	$a1, $a2, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $t0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $t0, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 52
	ld.w	$a1, $sp, 364
	ld.w	$a2, $sp, 292
	add.d	$a3, $t6, $t8
	addi.w	$a6, $a3, 0
	alsl.d	$a3, $a6, $a3, 2
	add.d	$a2, $a2, $t7
	mul.d	$a2, $a2, $a0
	ldptr.w	$a6, $ra, 5900
	add.d	$a1, $a7, $a1
	sub.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a6
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a6, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 56
	ld.w	$a1, $sp, 368
	ld.w	$a2, $sp, 296
	add.d	$a3, $fp, $s1
	addi.w	$a6, $a3, 0
	alsl.d	$a3, $a6, $a3, 2
	add.d	$a2, $a2, $s0
	mul.d	$a0, $a2, $a0
	ldptr.w	$a2, $ra, 5900
	add.d	$a1, $t3, $a1
	sub.d	$a1, $a1, $a3
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 512
	srai.d	$a1, $a0, 10
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	andi	$a1, $a1, 1
	st.w	$a0, $a5, 60
	beqz	$a1, .LBB6_34
# %bb.13:                               # %.preheader468
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	srli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a0, $a0, $a0, 3
	slli.d	$a0, $a0, 2
	addi.d	$a2, $sp, 68
	ldx.w	$a3, $a0, $a2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a4, $a1, 0
	ldptr.w	$a5, $ra, 5900
	add.d	$a0, $a2, $a0
	addi.w	$a2, $a3, 16
	srai.d	$a3, $a2, 5
	srai.d	$a2, $a2, 63
	andn	$a2, $a3, $a2
	slt	$a3, $a2, $a5
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	add.d	$a2, $a4, $a2
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 4
	st.w	$a2, $a1, 0
	ld.w	$a2, $a1, 4
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 8
	st.w	$a2, $a1, 4
	ld.w	$a2, $a1, 8
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 12
	st.w	$a2, $a1, 8
	ld.w	$a2, $a1, 12
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 36
	st.w	$a2, $a1, 12
	ld.w	$a2, $a1, 16
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 40
	st.w	$a2, $a1, 16
	ld.w	$a2, $a1, 20
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 44
	st.w	$a2, $a1, 20
	ld.w	$a2, $a1, 24
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 48
	st.w	$a2, $a1, 24
	ld.w	$a2, $a1, 28
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 72
	st.w	$a2, $a1, 28
	ld.w	$a2, $a1, 32
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 76
	st.w	$a2, $a1, 32
	ld.w	$a2, $a1, 36
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 80
	st.w	$a2, $a1, 36
	ld.w	$a2, $a1, 40
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 84
	st.w	$a2, $a1, 40
	ld.w	$a2, $a1, 44
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 108
	st.w	$a2, $a1, 44
	ld.w	$a2, $a1, 48
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 112
	st.w	$a2, $a1, 48
	ld.w	$a2, $a1, 52
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 116
	st.w	$a2, $a1, 52
	ld.w	$a2, $a1, 56
	ldptr.w	$a4, $ra, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a0, $a0, 120
	st.w	$a2, $a1, 56
	ld.w	$a2, $a1, 60
	ldptr.w	$a3, $ra, 5900
	b	.LBB6_29
.LBB6_14:                               # %.preheader452
	srai.d	$a2, $t1, 63
	andn	$a2, $t1, $a2
	slt	$a3, $a2, $t0
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t0, $a3
	or	$a3, $a2, $a3
	addi.w	$t3, $zero, -1
	slt	$a2, $t3, $t1
	masknez	$a4, $t3, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, 1
	slt	$a4, $a2, $t0
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $t0, $a4
	or	$a4, $a2, $a4
	addi.w	$t2, $zero, -2
	slt	$a2, $t2, $t1
	masknez	$a7, $t2, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a7
	addi.d	$a2, $a2, 2
	slt	$a7, $a2, $t0
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $t0, $a7
	or	$a7, $a2, $a7
	addi.w	$a2, $zero, -3
	slt	$t4, $a2, $t1
	masknez	$t5, $a2, $t4
	maskeqz	$t1, $t1, $t4
	or	$t1, $t1, $t5
	srai.d	$t4, $a6, 63
	andn	$t4, $a6, $t4
	slt	$t5, $t4, $a1
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a1, $t5
	or	$t4, $t4, $t5
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $a0, $t4
	addi.d	$t1, $t1, 3
	slt	$t5, $t1, $t0
	slli.d	$a3, $a3, 1
	ldx.hu	$t6, $t4, $a3
	maskeqz	$t1, $t1, $t5
	masknez	$t0, $t0, $t5
	or	$t0, $t1, $t0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	st.w	$t6, $a5, 0
	slli.d	$a4, $a4, 1
	ldx.hu	$t1, $t4, $a4
	slli.d	$a7, $a7, 1
	slt	$t5, $t3, $a6
	masknez	$t3, $t3, $t5
	maskeqz	$t5, $a6, $t5
	or	$t3, $t5, $t3
	addi.d	$t3, $t3, 1
	slt	$t5, $t3, $a1
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a1, $t5
	or	$t3, $t3, $t5
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	ldx.hu	$t5, $t4, $a7
	slli.d	$t0, $t0, 1
	ldx.hu	$t4, $t4, $t0
	ldx.hu	$t6, $t3, $a3
	st.w	$t1, $a5, 4
	st.w	$t5, $a5, 8
	st.w	$t4, $a5, 12
	st.w	$t6, $a5, 16
	slt	$t1, $t2, $a6
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $a6, $t1
	or	$t1, $t1, $t2
	addi.d	$t1, $t1, 2
	slt	$t2, $t1, $a1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a1, $t2
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	ldx.hu	$t2, $t3, $a4
	ldx.hu	$t4, $t3, $a7
	ldx.hu	$t3, $t3, $t0
	ldx.hu	$t5, $t1, $a3
	st.w	$t2, $a5, 20
	st.w	$t4, $a5, 24
	st.w	$t3, $a5, 28
	st.w	$t5, $a5, 32
	ldx.hu	$t2, $t1, $a4
	ldx.hu	$t3, $t1, $a7
	ldx.hu	$t1, $t1, $t0
	slt	$t4, $a2, $a6
	masknez	$a2, $a2, $t4
	maskeqz	$a6, $a6, $t4
	or	$a2, $a6, $a2
	addi.d	$a2, $a2, 3
	slt	$a6, $a2, $a1
	maskeqz	$a2, $a2, $a6
	masknez	$a1, $a1, $a6
	or	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.w	$t2, $a5, 36
	st.w	$t3, $a5, 40
	st.w	$t1, $a5, 44
	ldx.hu	$a1, $a0, $a3
	ldx.hu	$a2, $a0, $a4
	ldx.hu	$a3, $a0, $a7
	ldx.hu	$a4, $a0, $t0
	st.w	$a1, $a5, 48
	st.w	$a2, $a5, 52
	st.w	$a3, $a5, 56
	st.w	$a4, $a5, 60
.LBB6_15:                               # %.loopexit
	pcalau12i	$a1, %pc_hi20(get_block.cur_lineY)
	st.d	$a0, $a1, %pc_lo12(get_block.cur_lineY)
	b	.LBB6_34
.LBB6_16:                               # %.preheader456
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	move	$t4, $zero
	srai.d	$a2, $a6, 63
	andn	$a2, $a6, $a2
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	alsl.d	$a3, $a2, $a0, 3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$t5, $a0, $a2
	addi.w	$t6, $zero, -1
	slt	$a2, $t6, $a6
	masknez	$a3, $t6, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	alsl.d	$a3, $a2, $a0, 3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$t7, $a0, $a2
	addi.w	$t8, $zero, -2
	slt	$a2, $t8, $a6
	masknez	$a3, $t8, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 2
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $a0, $a2
	addi.w	$fp, $zero, -3
	slt	$a2, $fp, $a6
	masknez	$a7, $fp, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a7
	addi.d	$a2, $a2, 3
	slt	$a6, $a2, $a1
	maskeqz	$a2, $a2, $a6
	masknez	$a1, $a1, $a6
	or	$a2, $a2, $a1
	alsl.d	$a1, $a2, $a0, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ori	$a6, $zero, 2
	ori	$s0, $zero, 1
	ori	$s1, $zero, 20
	move	$s3, $t1
	.p2align	4, , 16
.LBB6_17:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $s3, 0
	slt	$a7, $a6, $a2
	masknez	$s4, $a6, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $s4
	addi.w	$a7, $a7, -2
	slt	$s4, $a7, $t0
	maskeqz	$a7, $a7, $s4
	masknez	$s4, $t0, $s4
	or	$a7, $a7, $s4
	slt	$s4, $s0, $a2
	masknez	$s5, $s0, $s4
	maskeqz	$s4, $a2, $s4
	or	$s4, $s4, $s5
	addi.d	$s4, $s4, -1
	slt	$s5, $s4, $t0
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t0, $s5
	or	$s5, $s4, $s5
	srai.d	$s4, $a2, 63
	andn	$s4, $a2, $s4
	slt	$s6, $s4, $t0
	maskeqz	$s4, $s4, $s6
	masknez	$s6, $t0, $s6
	or	$s7, $s4, $s6
	slt	$s4, $t6, $a2
	masknez	$s6, $t6, $s4
	maskeqz	$s4, $a2, $s4
	or	$s4, $s4, $s6
	addi.w	$s4, $s4, 1
	slt	$s6, $s4, $t0
	maskeqz	$s4, $s4, $s6
	masknez	$s6, $t0, $s6
	or	$s8, $s4, $s6
	slt	$s4, $t8, $a2
	masknez	$s6, $t8, $s4
	maskeqz	$s4, $a2, $s4
	or	$s4, $s4, $s6
	addi.w	$s4, $s4, 2
	slt	$s6, $s4, $t0
	maskeqz	$s4, $s4, $s6
	masknez	$s6, $t0, $s6
	or	$s6, $s4, $s6
	slt	$s4, $fp, $a2
	masknez	$ra, $fp, $s4
	maskeqz	$a2, $a2, $s4
	or	$a2, $a2, $ra
	addi.w	$a2, $a2, 3
	slt	$s4, $a2, $t0
	maskeqz	$a2, $a2, $s4
	masknez	$s4, $t0, $s4
	or	$ra, $a2, $s4
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a5, $t4
	slli.d	$s4, $a7, 1
	ldx.hu	$a1, $t5, $s4
	slli.d	$a7, $ra, 1
	slli.d	$s5, $s5, 1
	ldx.hu	$ra, $t5, $s5
	slli.d	$s6, $s6, 1
	ldx.hu	$t2, $t5, $s6
	slli.d	$s7, $s7, 1
	ldx.hu	$t3, $t5, $s7
	slli.d	$s8, $s8, 1
	ldx.hu	$s2, $t5, $s8
	add.d	$t2, $t2, $ra
	ldx.hu	$ra, $t5, $a7
	alsl.d	$t2, $t2, $t2, 2
	add.d	$t3, $s2, $t3
	mul.d	$t3, $t3, $s1
	ldptr.w	$s2, $a4, 5900
	add.d	$a1, $a1, $ra
	sub.d	$a1, $a1, $t2
	add.d	$a1, $a1, $t3
	addi.w	$a1, $a1, 16
	srai.d	$t2, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $s2
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $s2, $t2
	or	$a1, $a1, $t2
	stx.w	$a1, $a5, $t4
	ldx.hu	$a1, $t7, $s5
	ldx.hu	$a5, $t7, $s6
	ldx.hu	$t2, $t7, $s4
	ldx.hu	$t3, $t7, $s7
	ldx.hu	$s2, $t7, $s8
	add.d	$a1, $a5, $a1
	ldx.hu	$a5, $t7, $a7
	alsl.d	$a1, $a1, $a1, 2
	add.d	$t3, $s2, $t3
	mul.d	$t3, $t3, $s1
	ldptr.w	$s2, $a4, 5900
	add.d	$a5, $t2, $a5
	sub.d	$a1, $a5, $a1
	add.d	$a1, $a1, $t3
	addi.w	$a1, $a1, 16
	srai.d	$a5, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a5, $a1
	slt	$a5, $a1, $s2
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $s2, $a5
	or	$a1, $a1, $a5
	st.w	$a1, $a2, 16
	ldx.hu	$a1, $a3, $s5
	ldx.hu	$a5, $a3, $s6
	ldx.hu	$t2, $a3, $s4
	ldx.hu	$t3, $a3, $s7
	ldx.hu	$s2, $a3, $s8
	add.d	$a1, $a5, $a1
	ldx.hu	$a5, $a3, $a7
	alsl.d	$a1, $a1, $a1, 2
	add.d	$t3, $s2, $t3
	mul.d	$t3, $t3, $s1
	ldptr.w	$s2, $a4, 5900
	add.d	$a5, $t2, $a5
	sub.d	$a1, $a5, $a1
	add.d	$a1, $a1, $t3
	addi.w	$a1, $a1, 16
	srai.d	$a5, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a5, $a1
	slt	$a5, $a1, $s2
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $s2, $a5
	or	$a1, $a1, $a5
	st.w	$a1, $a2, 32
	ldx.hu	$a1, $a0, $s4
	ldx.hu	$a5, $a0, $s5
	ldx.hu	$t2, $a0, $s6
	ldx.hu	$t3, $a0, $s7
	ldx.hu	$s2, $a0, $s8
	ldx.hu	$a7, $a0, $a7
	add.d	$a5, $t2, $a5
	alsl.d	$a5, $a5, $a5, 2
	add.d	$t2, $s2, $t3
	mul.d	$t2, $t2, $s1
	ldptr.w	$t3, $a4, 5900
	add.d	$a1, $a1, $a7
	sub.d	$a1, $a1, $a5
	add.d	$a1, $a1, $t2
	addi.w	$a1, $a1, 16
	srai.d	$a5, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a5, $a1
	slt	$a5, $a1, $t3
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $t3, $a5
	or	$a1, $a1, $a5
	st.w	$a1, $a2, 48
	addi.d	$t4, $t4, 4
	addi.d	$s3, $s3, 1
	ori	$a1, $zero, 16
	bne	$t4, $a1, .LBB6_17
# %bb.18:
	pcalau12i	$a2, %pc_hi20(get_block.cur_lineY)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	andi	$a1, $a1, 1
	st.d	$a0, $a2, %pc_lo12(get_block.cur_lineY)
	beqz	$a1, .LBB6_34
# %bb.19:                               # %.preheader454
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	srli.d	$a0, $a0, 1
	add.d	$a0, $a0, $t1
	srai.d	$a1, $a0, 63
	andn	$a1, $a0, $a1
	slt	$a4, $a1, $t0
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $t0, $a4
	or	$a1, $a1, $a4
	addi.d	$a4, $a0, 1
	srai.d	$a5, $a4, 63
	andn	$a4, $a4, $a5
	slt	$a5, $a4, $t0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t0, $a5
	or	$a4, $a4, $a5
	addi.d	$a5, $a0, 2
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slt	$a6, $a5, $t0
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t0, $a6
	or	$a5, $a5, $a6
	addi.d	$a0, $a0, 3
	srai.d	$a6, $a0, 63
	andn	$a0, $a0, $a6
	slt	$a6, $a0, $t0
	maskeqz	$a0, $a0, $a6
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t1, $a7, 0
	masknez	$a6, $t0, $a6
	or	$a7, $a0, $a6
	slli.d	$a0, $a1, 1
	ldx.h	$t0, $t1, $a0
	slli.d	$a4, $a4, 1
	ldx.h	$t2, $t1, $a4
	slli.d	$a6, $a5, 1
	ldx.h	$a5, $t1, $a6
	slli.d	$a7, $a7, 1
	ldx.h	$t1, $t1, $a7
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	vld	$vr0, $a1, 0
	vinsgr2vr.h	$vr1, $t0, 0
	vinsgr2vr.h	$vr1, $t2, 1
	vinsgr2vr.h	$vr1, $a5, 2
	vinsgr2vr.h	$vr1, $t1, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a1, 0
	ldx.h	$t0, $a5, $a0
	ldx.h	$t1, $a5, $a4
	ldx.h	$t2, $a5, $a6
	ldx.h	$a5, $a5, $a7
	vld	$vr0, $a1, 16
	vinsgr2vr.h	$vr1, $t0, 0
	vinsgr2vr.h	$vr1, $t1, 1
	vinsgr2vr.h	$vr1, $t2, 2
	vinsgr2vr.h	$vr1, $a5, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a1, 16
	ldx.h	$a5, $a3, $a0
	ldx.h	$t0, $a3, $a4
	ldx.h	$t1, $a3, $a6
	ldx.h	$a3, $a3, $a7
	vld	$vr0, $a1, 32
	vinsgr2vr.h	$vr1, $a5, 0
	vinsgr2vr.h	$vr1, $t0, 1
	vinsgr2vr.h	$vr1, $t1, 2
	vinsgr2vr.h	$vr1, $a3, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a1, 32
	ldx.h	$a0, $a3, $a0
	ldx.h	$a4, $a3, $a4
	ldx.h	$a5, $a3, $a6
	ldx.h	$a6, $a3, $a7
	vld	$vr0, $a1, 48
	vinsgr2vr.h	$vr1, $a0, 0
	vinsgr2vr.h	$vr1, $a4, 1
	vinsgr2vr.h	$vr1, $a5, 2
	vinsgr2vr.h	$vr1, $a6, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a1, 48
	st.d	$a3, $a2, %pc_lo12(get_block.cur_lineY)
	b	.LBB6_34
.LBB6_20:                               # %.preheader467
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	move	$t6, $zero
	srai.d	$a2, $t1, 63
	andn	$a2, $t1, $a2
	slt	$a3, $a2, $t0
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t0, $a3
	or	$a3, $a2, $a3
	addi.w	$t5, $zero, -1
	slt	$a2, $t5, $t1
	masknez	$a5, $t5, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a5
	addi.d	$a2, $a2, 1
	slt	$a5, $a2, $t0
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $t0, $a5
	or	$a5, $a2, $a5
	addi.w	$t4, $zero, -2
	slt	$a2, $t4, $t1
	masknez	$a7, $t4, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a7
	addi.d	$a2, $a2, 2
	slt	$a7, $a2, $t0
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $t0, $a7
	or	$t2, $a2, $a7
	addi.w	$a2, $zero, -3
	slt	$a7, $a2, $t1
	masknez	$t3, $a2, $a7
	maskeqz	$a7, $t1, $a7
	or	$a7, $a7, $t3
	addi.d	$a7, $a7, 3
	slt	$t1, $a7, $t0
	maskeqz	$a7, $a7, $t1
	masknez	$t0, $t0, $t1
	or	$t3, $a7, $t0
	slli.d	$a7, $a3, 1
	ori	$fp, $zero, 20
	slli.d	$t0, $a5, 1
	slli.d	$t1, $t2, 1
	slli.d	$t3, $t3, 1
	move	$s1, $a6
	.p2align	4, , 16
.LBB6_21:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $s1, 0
	ori	$t2, $zero, 2
	slt	$a5, $t2, $a3
	masknez	$t2, $t2, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $t2
	addi.w	$a5, $a5, -2
	slt	$t2, $a5, $a1
	maskeqz	$a5, $a5, $t2
	masknez	$t2, $a1, $t2
	or	$a5, $a5, $t2
	ori	$t7, $zero, 1
	slt	$t2, $t7, $a3
	masknez	$s2, $t7, $t2
	maskeqz	$t2, $a3, $t2
	or	$t2, $t2, $s2
	addi.d	$t2, $t2, -1
	slt	$s2, $t2, $a1
	maskeqz	$t2, $t2, $s2
	masknez	$s2, $a1, $s2
	or	$s3, $t2, $s2
	srai.d	$t2, $a3, 63
	andn	$t2, $a3, $t2
	slt	$s2, $t2, $a1
	maskeqz	$t2, $t2, $s2
	masknez	$s2, $a1, $s2
	or	$s4, $t2, $s2
	slt	$t2, $t5, $a3
	masknez	$s2, $t5, $t2
	maskeqz	$t2, $a3, $t2
	or	$t2, $t2, $s2
	addi.w	$t2, $t2, 1
	slt	$s2, $t2, $a1
	maskeqz	$t2, $t2, $s2
	masknez	$s2, $a1, $s2
	or	$s6, $t2, $s2
	slt	$t2, $t4, $a3
	masknez	$s2, $t4, $t2
	maskeqz	$t2, $a3, $t2
	or	$t2, $t2, $s2
	addi.w	$t2, $t2, 2
	slt	$s2, $t2, $a1
	maskeqz	$t2, $t2, $s2
	masknez	$s2, $a1, $s2
	or	$s5, $t2, $s2
	slt	$t2, $a2, $a3
	masknez	$s2, $a2, $t2
	maskeqz	$a3, $a3, $t2
	or	$a3, $a3, $s2
	addi.w	$a3, $a3, 3
	slt	$t2, $a3, $a1
	maskeqz	$a3, $a3, $t2
	masknez	$t2, $a1, $t2
	or	$a3, $a3, $t2
	slli.d	$a5, $a5, 3
	ldx.d	$s2, $a0, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$t2, $a0, $a3
	slli.d	$a3, $s3, 3
	ldx.d	$s3, $a0, $a3
	slli.d	$a3, $s5, 3
	ldx.d	$s5, $a0, $a3
	slli.d	$a3, $s4, 3
	ldx.d	$s4, $a0, $a3
	slli.d	$a3, $s6, 3
	ldx.d	$s6, $a0, $a3
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	add.d	$a3, $a5, $t6
	ldx.hu	$s7, $s2, $a7
	ldx.hu	$s8, $s3, $a7
	ldx.hu	$ra, $s5, $a7
	ldx.hu	$s0, $s4, $a7
	ldx.hu	$t7, $s6, $a7
	ldx.hu	$t8, $t2, $a7
	add.d	$s8, $ra, $s8
	alsl.d	$s8, $s8, $s8, 2
	add.d	$t7, $t7, $s0
	mul.d	$t7, $t7, $fp
	ldptr.w	$s0, $a4, 5900
	add.d	$t8, $s7, $t8
	sub.d	$t8, $t8, $s8
	add.d	$t7, $t8, $t7
	addi.w	$t7, $t7, 16
	srai.d	$t8, $t7, 5
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $s0
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $s0, $t8
	or	$t7, $t7, $t8
	stx.w	$t7, $a5, $t6
	ldx.hu	$a5, $s2, $t0
	ldx.hu	$t7, $s3, $t0
	ldx.hu	$t8, $s5, $t0
	ldx.hu	$s0, $s4, $t0
	ldx.hu	$s7, $s6, $t0
	ldx.hu	$s8, $t2, $t0
	add.d	$t7, $t8, $t7
	alsl.d	$t7, $t7, $t7, 2
	add.d	$t8, $s7, $s0
	mul.d	$t8, $t8, $fp
	ldptr.w	$s0, $a4, 5900
	add.d	$a5, $a5, $s8
	sub.d	$a5, $a5, $t7
	add.d	$a5, $a5, $t8
	addi.w	$a5, $a5, 16
	srai.d	$t7, $a5, 5
	srai.d	$a5, $a5, 63
	andn	$a5, $t7, $a5
	slt	$t7, $a5, $s0
	maskeqz	$a5, $a5, $t7
	masknez	$t7, $s0, $t7
	or	$a5, $a5, $t7
	ldx.hu	$t7, $s2, $t1
	ldx.hu	$t8, $s3, $t1
	ldx.hu	$s0, $s5, $t1
	ldx.hu	$s7, $s4, $t1
	ldx.hu	$s8, $s6, $t1
	ldx.hu	$ra, $t2, $t1
	st.w	$a5, $a3, 4
	add.d	$a5, $s0, $t8
	add.d	$t8, $s8, $s7
	add.d	$t7, $t7, $ra
	alsl.d	$a5, $a5, $a5, 2
	mul.d	$t8, $t8, $fp
	sub.d	$a5, $t7, $a5
	ldptr.w	$t7, $a4, 5900
	add.d	$a5, $a5, $t8
	addi.w	$a5, $a5, 16
	srai.d	$t8, $a5, 5
	srai.d	$a5, $a5, 63
	andn	$a5, $t8, $a5
	slt	$t8, $a5, $t7
	maskeqz	$a5, $a5, $t8
	masknez	$t7, $t7, $t8
	or	$a5, $a5, $t7
	ldx.hu	$t7, $s2, $t3
	ldx.hu	$t8, $s3, $t3
	ldx.hu	$s0, $s5, $t3
	ldx.hu	$s2, $s4, $t3
	ldx.hu	$s3, $s6, $t3
	ldx.hu	$t2, $t2, $t3
	st.w	$a5, $a3, 8
	add.d	$a5, $s0, $t8
	add.d	$t8, $s3, $s2
	add.d	$t2, $t7, $t2
	alsl.d	$a5, $a5, $a5, 2
	mul.d	$t7, $t8, $fp
	sub.d	$a5, $t2, $a5
	ldptr.w	$t2, $a4, 5900
	add.d	$a5, $a5, $t7
	addi.w	$a5, $a5, 16
	srai.d	$t7, $a5, 5
	srai.d	$a5, $a5, 63
	andn	$a5, $t7, $a5
	slt	$t7, $a5, $t2
	maskeqz	$a5, $a5, $t7
	masknez	$t2, $t2, $t7
	or	$a5, $a5, $t2
	st.w	$a5, $a3, 12
	addi.d	$t6, $t6, 16
	addi.d	$s1, $s1, 1
	ori	$a3, $zero, 64
	bne	$t6, $a3, .LBB6_21
# %bb.22:
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	andi	$a3, $a3, 1
	beqz	$a3, .LBB6_34
# %bb.23:                               # %.preheader465
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	srli.d	$a3, $a3, 1
	add.d	$a3, $a3, $a6
	srai.d	$a4, $a3, 63
	andn	$a4, $a3, $a4
	slt	$a5, $a4, $a1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	ldx.h	$a5, $a4, $a7
	ldx.h	$a6, $a4, $t0
	ldx.h	$t2, $a4, $t1
	ldx.h	$t6, $a4, $t3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	vld	$vr0, $a4, 0
	vinsgr2vr.h	$vr1, $a5, 0
	vinsgr2vr.h	$vr1, $a6, 1
	vinsgr2vr.h	$vr1, $t2, 2
	vinsgr2vr.h	$vr1, $t6, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	slt	$a5, $t5, $a3
	maskeqz	$a6, $a3, $a5
	masknez	$a5, $t5, $a5
	or	$a5, $a6, $a5
	addi.d	$a5, $a5, 1
	slt	$a6, $a5, $a1
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a1, $a6
	or	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a4, 0
	ldx.h	$a6, $a5, $a7
	ldx.h	$t2, $a5, $t0
	ldx.h	$t5, $a5, $t1
	ldx.h	$a5, $a5, $t3
	vld	$vr0, $a4, 16
	vinsgr2vr.h	$vr1, $a6, 0
	vinsgr2vr.h	$vr1, $t2, 1
	vinsgr2vr.h	$vr1, $t5, 2
	vinsgr2vr.h	$vr1, $a5, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	slt	$a5, $t4, $a3
	maskeqz	$a6, $a3, $a5
	masknez	$a5, $t4, $a5
	or	$a5, $a6, $a5
	addi.d	$a5, $a5, 2
	slt	$a6, $a5, $a1
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a1, $a6
	or	$a5, $a5, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a4, 16
	ldx.h	$a6, $a5, $a7
	ldx.h	$t2, $a5, $t0
	ldx.h	$t4, $a5, $t1
	ldx.h	$a5, $a5, $t3
	vld	$vr0, $a4, 32
	vinsgr2vr.h	$vr1, $a6, 0
	vinsgr2vr.h	$vr1, $t2, 1
	vinsgr2vr.h	$vr1, $t4, 2
	vinsgr2vr.h	$vr1, $a5, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	slt	$a5, $a2, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a2, $a2, $a5
	or	$a2, $a3, $a2
	addi.d	$a2, $a2, 3
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a4, 32
	ldx.h	$a1, $a0, $a7
	ldx.h	$a2, $a0, $t0
	ldx.h	$a3, $a0, $t1
	ldx.h	$a5, $a0, $t3
	vld	$vr0, $a4, 48
	vinsgr2vr.h	$vr1, $a1, 0
	vinsgr2vr.h	$vr1, $a2, 1
	vinsgr2vr.h	$vr1, $a3, 2
	vinsgr2vr.h	$vr1, $a5, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vadd.w	$vr0, $vr0, $vr1
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr0, $vr0, 1
	vst	$vr0, $a4, 48
	b	.LBB6_15
.LBB6_24:
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	bne	$a5, $t2, .LBB6_30
# %bb.25:                               # %.preheader461.preheader
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $zero
	ori	$a4, $zero, 2
	slt	$a2, $a4, $t1
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, -2
	slt	$a4, $a2, $t0
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $t0, $a4
	or	$a2, $a2, $a4
	ori	$a5, $zero, 1
	slt	$a4, $a5, $t1
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t1, $a4
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	slt	$a5, $a4, $t0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t0, $a5
	or	$a7, $a4, $a5
	srai.d	$a4, $t1, 63
	andn	$a4, $t1, $a4
	slt	$a5, $a4, $t0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t0, $a5
	or	$t2, $a4, $a5
	addi.w	$a5, $zero, -1
	slt	$a4, $a5, $t1
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t1, $a4
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	slt	$a5, $a4, $t0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t0, $a5
	or	$a4, $a4, $a5
	addi.w	$t3, $zero, -2
	slt	$a5, $t3, $t1
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	masknez	$t6, $t3, $a5
	maskeqz	$a5, $t1, $a5
	or	$a5, $a5, $t6
	addi.d	$a5, $a5, 2
	slt	$t6, $a5, $t0
	maskeqz	$a5, $a5, $t6
	masknez	$t6, $t0, $t6
	or	$a5, $a5, $t6
	addi.w	$t6, $zero, -3
	slt	$t7, $t6, $t1
	masknez	$t8, $t6, $t7
	maskeqz	$t7, $t1, $t7
	or	$t7, $t7, $t8
	addi.d	$t7, $t7, 3
	slt	$t8, $t7, $t0
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t0, $t8
	or	$s2, $t7, $t8
	addi.w	$t7, $zero, -4
	slt	$t8, $t7, $t1
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t1, $t8
	or	$t7, $t8, $t7
	addi.d	$t7, $t7, 4
	slt	$t8, $t7, $t0
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t0, $t8
	or	$s3, $t7, $t8
	addi.w	$t7, $zero, -5
	slt	$t8, $t7, $t1
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t1, $t8
	or	$t7, $t8, $t7
	addi.d	$t7, $t7, 5
	slt	$t8, $t7, $t0
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t0, $t8
	or	$s4, $t7, $t8
	addi.w	$t7, $zero, -6
	slt	$t8, $t7, $t1
	masknez	$t7, $t7, $t8
	maskeqz	$t1, $t1, $t8
	or	$t1, $t1, $t7
	addi.d	$t1, $t1, 6
	slt	$t7, $t1, $t0
	maskeqz	$t1, $t1, $t7
	masknez	$t0, $t0, $t7
	or	$s5, $t1, $t0
	slli.d	$t1, $a2, 1
	ori	$t7, $zero, 20
	slli.d	$t8, $a7, 1
	slli.d	$fp, $t2, 1
	slli.d	$s0, $a4, 1
	slli.d	$s1, $a5, 1
	slli.d	$s2, $s2, 1
	slli.d	$s3, $s3, 1
	slli.d	$s4, $s4, 1
	slli.d	$s5, $s5, 1
	.p2align	4, , 16
.LBB6_26:                               # %.preheader461
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a6, 0
	ori	$a5, $zero, 2
	slt	$a4, $a5, $a2
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	addi.w	$a4, $a4, -2
	slt	$a5, $a4, $a1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	ori	$a7, $zero, 1
	slt	$a5, $a7, $a2
	masknez	$a7, $a7, $a5
	maskeqz	$a5, $a2, $a5
	or	$a5, $a5, $a7
	addi.d	$a5, $a5, -1
	slt	$a7, $a5, $a1
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a1, $a7
	or	$a5, $a5, $a7
	srai.d	$a7, $a2, 63
	andn	$a7, $a2, $a7
	slt	$t2, $a7, $a1
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $a1, $t2
	or	$t2, $a7, $t2
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	slt	$a7, $t0, $a2
	masknez	$s6, $t0, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $s6
	addi.w	$a7, $a7, 1
	slt	$s6, $a7, $a1
	maskeqz	$a7, $a7, $s6
	masknez	$s6, $a1, $s6
	or	$t3, $a7, $s6
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	slt	$a7, $t0, $a2
	masknez	$s6, $t0, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $s6
	addi.w	$a7, $a7, 2
	slt	$s6, $a7, $a1
	maskeqz	$a7, $a7, $s6
	masknez	$s6, $a1, $s6
	or	$s6, $a7, $s6
	slt	$a7, $t6, $a2
	masknez	$s7, $t6, $a7
	maskeqz	$a2, $a2, $a7
	or	$a2, $a2, $s7
	addi.w	$a2, $a2, 3
	slt	$a7, $a2, $a1
	maskeqz	$a2, $a2, $a7
	masknez	$a7, $a1, $a7
	or	$a2, $a2, $a7
	slli.d	$a4, $a4, 3
	ldx.d	$s7, $a0, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$s8, $a0, $a2
	addi.d	$t5, $sp, 68
	add.d	$ra, $t5, $a3
	slli.d	$a2, $a5, 3
	ldx.d	$a7, $a0, $a2
	slli.d	$a2, $s6, 3
	ldx.d	$s6, $a0, $a2
	slli.d	$a2, $t2, 3
	ldx.d	$a2, $a0, $a2
	slli.d	$a4, $t3, 3
	ldx.hu	$a5, $s7, $t8
	ldx.hu	$t3, $s8, $t8
	ldx.d	$t2, $a0, $a4
	ldx.hu	$a4, $a7, $t8
	ldx.hu	$t0, $s6, $t8
	add.d	$a5, $t3, $a5
	ldx.hu	$t3, $a2, $t8
	ldx.hu	$t4, $t2, $t8
	add.d	$a4, $t0, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t3
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $fp
	ldx.hu	$t0, $s8, $fp
	st.w	$a4, $ra, 4
	ldx.hu	$a4, $a7, $fp
	ldx.hu	$t3, $s6, $fp
	add.d	$a5, $t0, $a5
	ldx.hu	$t0, $a2, $fp
	ldx.hu	$t4, $t2, $fp
	add.d	$a4, $t3, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t0
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $s0
	ldx.hu	$t0, $s8, $s0
	st.w	$a4, $ra, 8
	ldx.hu	$a4, $a7, $s0
	ldx.hu	$t3, $s6, $s0
	add.d	$a5, $t0, $a5
	ldx.hu	$t0, $a2, $s0
	ldx.hu	$t4, $t2, $s0
	add.d	$a4, $t3, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t0
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $s1
	ldx.hu	$t0, $s8, $s1
	st.w	$a4, $ra, 12
	ldx.hu	$a4, $a7, $s1
	ldx.hu	$t3, $s6, $s1
	add.d	$a5, $t0, $a5
	ldx.hu	$t0, $a2, $s1
	ldx.hu	$t4, $t2, $s1
	add.d	$a4, $t3, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t0
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $s2
	ldx.hu	$t0, $s8, $s2
	st.w	$a4, $ra, 16
	ldx.hu	$a4, $a7, $s2
	ldx.hu	$t3, $s6, $s2
	add.d	$a5, $t0, $a5
	ldx.hu	$t0, $a2, $s2
	ldx.hu	$t4, $t2, $s2
	add.d	$a4, $t3, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t0
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $s3
	ldx.hu	$t0, $s8, $s3
	st.w	$a4, $ra, 20
	ldx.hu	$a4, $a7, $s3
	ldx.hu	$t3, $s6, $s3
	add.d	$a5, $t0, $a5
	ldx.hu	$t0, $a2, $s3
	ldx.hu	$t4, $t2, $s3
	add.d	$a4, $t3, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t0
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $s4
	ldx.hu	$t0, $s8, $s4
	st.w	$a4, $ra, 24
	ldx.hu	$a4, $a7, $s4
	ldx.hu	$t3, $s6, $s4
	add.d	$a5, $t0, $a5
	ldx.hu	$t0, $a2, $s4
	ldx.hu	$t4, $t2, $s4
	add.d	$a4, $t3, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t0
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $s5
	ldx.hu	$t0, $s8, $s5
	st.w	$a4, $ra, 28
	ldx.hu	$a4, $a7, $s5
	ldx.hu	$t3, $s6, $s5
	add.d	$a5, $t0, $a5
	ldx.hu	$t0, $a2, $s5
	ldx.hu	$t4, $t2, $s5
	add.d	$a4, $t3, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a5, $t4, $t0
	mul.d	$a5, $a5, $t7
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s7, $t1
	ldx.hu	$t0, $s8, $t1
	st.w	$a4, $ra, 32
	ldx.hu	$a4, $a7, $t1
	ldx.hu	$a7, $s6, $t1
	add.d	$a5, $t0, $a5
	ldx.hu	$a2, $a2, $t1
	ldx.hu	$t0, $t2, $t1
	add.d	$a4, $a7, $a4
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a4, $a5, $a4
	add.d	$a2, $t0, $a2
	mul.d	$a2, $a2, $t7
	add.d	$a2, $a2, $a4
	stx.w	$a2, $a3, $t5
	addi.d	$a3, $a3, 36
	addi.d	$a6, $a6, 1
	ori	$a2, $zero, 144
	bne	$a3, $a2, .LBB6_26
# %bb.27:                               # %.preheader460
	ld.w	$a4, $sp, 68
	ld.w	$a6, $sp, 72
	ld.w	$a2, $sp, 84
	ld.w	$a1, $sp, 88
	ld.w	$a7, $sp, 76
	ld.w	$a3, $sp, 80
	add.d	$a0, $a2, $a6
	addi.w	$a5, $a0, 0
	alsl.d	$a5, $a5, $a0, 2
	add.d	$t0, $a3, $a7
	ori	$a0, $zero, 20
	mul.d	$t0, $t0, $a0
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ldptr.w	$t1, $t3, 5900
	add.d	$a4, $a4, $a1
	sub.d	$a4, $a4, $a5
	add.d	$a4, $a4, $t0
	addi.w	$a4, $a4, 512
	srai.d	$a5, $a4, 10
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $t1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t1, $a5
	or	$a4, $a4, $a5
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	st.w	$a4, $a5, 0
	ld.w	$a4, $sp, 92
	add.d	$t0, $a1, $a7
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a2, $a3
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a6, $a6, $a4
	sub.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	addi.w	$a6, $a6, 512
	srai.d	$t0, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $t0, $a6
	slt	$t0, $a6, $t2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t2, $t0
	or	$a6, $a6, $t0
	st.w	$a6, $a5, 4
	ld.w	$a6, $sp, 96
	add.d	$t0, $a4, $a3
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a1, $a2
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a7, $a7, $a6
	sub.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	addi.w	$a7, $a7, 512
	srai.d	$t0, $a7, 10
	srai.d	$a7, $a7, 63
	andn	$a7, $t0, $a7
	slt	$t0, $a7, $t2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t2, $t0
	or	$a7, $a7, $t0
	st.w	$a7, $a5, 8
	ld.w	$a7, $sp, 100
	add.d	$a2, $a6, $a2
	addi.w	$a6, $a2, 0
	alsl.d	$a2, $a6, $a2, 2
	add.d	$a1, $a4, $a1
	mul.d	$a1, $a1, $a0
	ldptr.w	$a4, $t3, 5900
	add.d	$a3, $a3, $a7
	sub.d	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 12
	ld.w	$a4, $sp, 104
	ld.w	$a6, $sp, 108
	ld.w	$a2, $sp, 120
	ld.w	$a1, $sp, 124
	ld.w	$a7, $sp, 112
	ld.w	$a3, $sp, 116
	add.d	$t0, $a2, $a6
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a3, $a7
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a4, $a4, $a1
	sub.d	$a4, $a4, $t0
	add.d	$a4, $a4, $t1
	addi.w	$a4, $a4, 512
	srai.d	$t0, $a4, 10
	srai.d	$a4, $a4, 63
	andn	$a4, $t0, $a4
	slt	$t0, $a4, $t2
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t2, $t0
	or	$a4, $a4, $t0
	st.w	$a4, $a5, 16
	ld.w	$a4, $sp, 128
	add.d	$t0, $a1, $a7
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a2, $a3
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a6, $a6, $a4
	sub.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	addi.w	$a6, $a6, 512
	srai.d	$t0, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $t0, $a6
	slt	$t0, $a6, $t2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t2, $t0
	or	$a6, $a6, $t0
	st.w	$a6, $a5, 20
	ld.w	$a6, $sp, 132
	add.d	$t0, $a4, $a3
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a1, $a2
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a7, $a7, $a6
	sub.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	addi.w	$a7, $a7, 512
	srai.d	$t0, $a7, 10
	srai.d	$a7, $a7, 63
	andn	$a7, $t0, $a7
	slt	$t0, $a7, $t2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t2, $t0
	or	$a7, $a7, $t0
	st.w	$a7, $a5, 24
	ld.w	$a7, $sp, 136
	add.d	$a2, $a6, $a2
	addi.w	$a6, $a2, 0
	alsl.d	$a2, $a6, $a2, 2
	add.d	$a1, $a4, $a1
	mul.d	$a1, $a1, $a0
	ldptr.w	$a4, $t3, 5900
	add.d	$a3, $a3, $a7
	sub.d	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 28
	ld.w	$a4, $sp, 140
	ld.w	$a6, $sp, 144
	ld.w	$a2, $sp, 156
	ld.w	$a1, $sp, 160
	ld.w	$a7, $sp, 148
	ld.w	$a3, $sp, 152
	add.d	$t0, $a2, $a6
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a3, $a7
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a4, $a4, $a1
	sub.d	$a4, $a4, $t0
	add.d	$a4, $a4, $t1
	addi.w	$a4, $a4, 512
	srai.d	$t0, $a4, 10
	srai.d	$a4, $a4, 63
	andn	$a4, $t0, $a4
	slt	$t0, $a4, $t2
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t2, $t0
	or	$a4, $a4, $t0
	st.w	$a4, $a5, 32
	ld.w	$a4, $sp, 164
	add.d	$t0, $a1, $a7
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a2, $a3
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a6, $a6, $a4
	sub.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	addi.w	$a6, $a6, 512
	srai.d	$t0, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $t0, $a6
	slt	$t0, $a6, $t2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t2, $t0
	or	$a6, $a6, $t0
	st.w	$a6, $a5, 36
	ld.w	$a6, $sp, 168
	add.d	$t0, $a4, $a3
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a1, $a2
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a7, $a7, $a6
	sub.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	addi.w	$a7, $a7, 512
	srai.d	$t0, $a7, 10
	srai.d	$a7, $a7, 63
	andn	$a7, $t0, $a7
	slt	$t0, $a7, $t2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t2, $t0
	or	$a7, $a7, $t0
	st.w	$a7, $a5, 40
	ld.w	$a7, $sp, 172
	add.d	$a2, $a6, $a2
	addi.w	$a6, $a2, 0
	alsl.d	$a2, $a6, $a2, 2
	add.d	$a1, $a4, $a1
	mul.d	$a1, $a1, $a0
	ldptr.w	$a4, $t3, 5900
	add.d	$a3, $a3, $a7
	sub.d	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	addi.w	$a1, $a1, 512
	srai.d	$a2, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a5, 44
	ld.w	$a4, $sp, 176
	ld.w	$a6, $sp, 180
	ld.w	$a2, $sp, 192
	ld.w	$a1, $sp, 196
	ld.w	$a7, $sp, 184
	ld.w	$a3, $sp, 188
	add.d	$t0, $a2, $a6
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a3, $a7
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a4, $a4, $a1
	sub.d	$a4, $a4, $t0
	add.d	$a4, $a4, $t1
	addi.w	$a4, $a4, 512
	srai.d	$t0, $a4, 10
	srai.d	$a4, $a4, 63
	andn	$a4, $t0, $a4
	slt	$t0, $a4, $t2
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t2, $t0
	or	$a4, $a4, $t0
	st.w	$a4, $a5, 48
	ld.w	$a4, $sp, 200
	add.d	$t0, $a1, $a7
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a2, $a3
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a6, $a6, $a4
	sub.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	addi.w	$a6, $a6, 512
	srai.d	$t0, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $t0, $a6
	slt	$t0, $a6, $t2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t2, $t0
	or	$a6, $a6, $t0
	st.w	$a6, $a5, 52
	ld.w	$a6, $sp, 204
	add.d	$t0, $a4, $a3
	addi.w	$t1, $t0, 0
	alsl.d	$t0, $t1, $t0, 2
	add.d	$t1, $a1, $a2
	mul.d	$t1, $t1, $a0
	ldptr.w	$t2, $t3, 5900
	add.d	$a7, $a7, $a6
	sub.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	addi.w	$a7, $a7, 512
	srai.d	$t0, $a7, 10
	srai.d	$a7, $a7, 63
	andn	$a7, $t0, $a7
	slt	$t0, $a7, $t2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t2, $t0
	or	$a7, $a7, $t0
	st.w	$a7, $a5, 56
	ld.w	$a7, $sp, 208
	add.d	$a2, $a6, $a2
	addi.w	$a6, $a2, 0
	alsl.d	$a2, $a6, $a2, 2
	add.d	$a1, $a4, $a1
	mul.d	$a0, $a1, $a0
	ldptr.w	$a1, $t3, 5900
	add.d	$a3, $a3, $a7
	sub.d	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	addi.w	$a0, $a0, 512
	srai.d	$a2, $a0, 10
	srai.d	$a0, $a0, 63
	andn	$a0, $a2, $a0
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	andi	$a1, $a1, 1
	st.w	$a0, $a5, 60
	beqz	$a1, .LBB6_34
# %bb.28:                               # %.preheader457
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 4
	addi.d	$a1, $sp, 68
	add.d	$a0, $a1, $a0
	ld.w	$a2, $a0, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a1, 0
	ldptr.w	$a4, $t3, 5900
	addi.w	$a2, $a2, 16
	srai.d	$a5, $a2, 5
	srai.d	$a2, $a2, 63
	andn	$a2, $a5, $a2
	slt	$a5, $a2, $a4
	maskeqz	$a2, $a2, $a5
	masknez	$a4, $a4, $a5
	or	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 12
	st.w	$a2, $a1, 0
	ld.w	$a2, $a1, 4
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 16
	st.w	$a2, $a1, 4
	ld.w	$a2, $a1, 8
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 20
	st.w	$a2, $a1, 8
	ld.w	$a2, $a1, 12
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 44
	st.w	$a2, $a1, 12
	ld.w	$a2, $a1, 16
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 48
	st.w	$a2, $a1, 16
	ld.w	$a2, $a1, 20
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 52
	st.w	$a2, $a1, 20
	ld.w	$a2, $a1, 24
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 56
	st.w	$a2, $a1, 24
	ld.w	$a2, $a1, 28
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 80
	st.w	$a2, $a1, 28
	ld.w	$a2, $a1, 32
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 84
	st.w	$a2, $a1, 32
	ld.w	$a2, $a1, 36
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 88
	st.w	$a2, $a1, 36
	ld.w	$a2, $a1, 40
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 92
	st.w	$a2, $a1, 40
	ld.w	$a2, $a1, 44
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 116
	st.w	$a2, $a1, 44
	ld.w	$a2, $a1, 48
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 120
	st.w	$a2, $a1, 48
	ld.w	$a2, $a1, 52
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a3, $a0, 124
	st.w	$a2, $a1, 52
	ld.w	$a2, $a1, 56
	ldptr.w	$a4, $t3, 5900
	addi.w	$a3, $a3, 16
	srai.d	$a5, $a3, 5
	srai.d	$a3, $a3, 63
	andn	$a3, $a5, $a3
	slt	$a5, $a3, $a4
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ld.w	$a0, $a0, 128
	st.w	$a2, $a1, 56
	ld.w	$a2, $a1, 60
	ldptr.w	$a3, $t3, 5900
.LBB6_29:                               # %.loopexit
	addi.w	$a0, $a0, 16
	srai.d	$a4, $a0, 5
	srai.d	$a0, $a0, 63
	andn	$a0, $a4, $a0
	slt	$a4, $a0, $a3
	maskeqz	$a0, $a0, $a4
	masknez	$a3, $a3, $a4
	or	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	addi.w	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.w	$a0, $a1, 60
	b	.LBB6_34
.LBB6_30:                               # %.preheader464
	move	$t3, $zero
	addi.d	$a2, $a5, -1
	sltu	$a2, $zero, $a2
	add.d	$a4, $a6, $a2
	srai.d	$a2, $a4, 63
	andn	$a2, $a4, $a2
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$t5, $a0, $a2
	addi.w	$a2, $zero, -1
	slt	$a3, $a2, $a4
	maskeqz	$a5, $a4, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	masknez	$a3, $a2, $a3
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, 1
	slt	$a5, $a3, $a1
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	ldx.d	$t6, $a0, $a3
	addi.w	$a3, $zero, -2
	slt	$a5, $a3, $a4
	maskeqz	$a7, $a4, $a5
	masknez	$a5, $a3, $a5
	or	$a5, $a7, $a5
	addi.d	$a5, $a5, 2
	slt	$a7, $a5, $a1
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a1, $a7
	or	$a5, $a5, $a7
	slli.d	$a5, $a5, 3
	ldx.d	$t7, $a0, $a5
	addi.w	$t2, $zero, -3
	slt	$a5, $t2, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t2, $a5
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, 3
	slt	$a5, $a4, $a1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$t4, $a0, $a4
	ori	$s0, $zero, 20
	move	$s2, $t1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_31:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $s2, 0
	ori	$a7, $zero, 2
	slt	$a5, $a7, $a4
	masknez	$a7, $a7, $a5
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $a7
	addi.w	$a5, $a5, -2
	slt	$a7, $a5, $t0
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t0, $a7
	or	$a5, $a5, $a7
	ori	$t8, $zero, 1
	slt	$a7, $t8, $a4
	masknez	$s3, $t8, $a7
	maskeqz	$a7, $a4, $a7
	or	$a7, $a7, $s3
	addi.d	$a7, $a7, -1
	slt	$s3, $a7, $t0
	maskeqz	$a7, $a7, $s3
	masknez	$s3, $t0, $s3
	or	$s5, $a7, $s3
	srai.d	$a7, $a4, 63
	andn	$a7, $a4, $a7
	slt	$s3, $a7, $t0
	maskeqz	$a7, $a7, $s3
	masknez	$s3, $t0, $s3
	or	$s7, $a7, $s3
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	slt	$a7, $t8, $a4
	masknez	$s3, $t8, $a7
	maskeqz	$a7, $a4, $a7
	or	$a7, $a7, $s3
	addi.w	$a7, $a7, 1
	slt	$s3, $a7, $t0
	maskeqz	$a7, $a7, $s3
	masknez	$s3, $t0, $s3
	or	$s8, $a7, $s3
	slt	$a7, $a3, $a4
	masknez	$s3, $a3, $a7
	maskeqz	$a7, $a4, $a7
	or	$a7, $a7, $s3
	addi.w	$a7, $a7, 2
	slt	$s3, $a7, $t0
	maskeqz	$a7, $a7, $s3
	masknez	$s3, $t0, $s3
	or	$s6, $a7, $s3
	slt	$a7, $t2, $a4
	masknez	$s3, $t2, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $s3
	addi.w	$a4, $a4, 3
	slt	$a7, $a4, $t0
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t0, $a7
	or	$a4, $a4, $a7
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	add.d	$a7, $ra, $t3
	slli.d	$s4, $a5, 1
	ldx.hu	$a5, $t5, $s4
	slli.d	$s3, $a4, 1
	slli.d	$s5, $s5, 1
	ldx.hu	$a4, $t5, $s5
	slli.d	$s6, $s6, 1
	ldx.hu	$s1, $t5, $s6
	slli.d	$s7, $s7, 1
	ldx.hu	$t8, $t5, $s7
	slli.d	$s8, $s8, 1
	ldx.hu	$fp, $t5, $s8
	add.d	$a4, $s1, $a4
	ldx.hu	$s1, $t5, $s3
	alsl.d	$a4, $a4, $a4, 2
	add.d	$t8, $fp, $t8
	mul.d	$t8, $t8, $s0
	ldptr.w	$fp, $a2, 5900
	add.d	$a5, $a5, $s1
	sub.d	$a4, $a5, $a4
	add.d	$a4, $a4, $t8
	addi.w	$a4, $a4, 16
	srai.d	$a5, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $fp
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $fp, $a5
	or	$a4, $a4, $a5
	stx.w	$a4, $ra, $t3
	ldx.hu	$a4, $t6, $s5
	ldx.hu	$a5, $t6, $s6
	ldx.hu	$t8, $t6, $s4
	ldx.hu	$fp, $t6, $s7
	ldx.hu	$s1, $t6, $s8
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $t6, $s3
	alsl.d	$a4, $a4, $a4, 2
	add.d	$fp, $s1, $fp
	mul.d	$fp, $fp, $s0
	ldptr.w	$s1, $a2, 5900
	add.d	$a5, $t8, $a5
	sub.d	$a4, $a5, $a4
	add.d	$a4, $a4, $fp
	addi.w	$a4, $a4, 16
	srai.d	$a5, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $s1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $s1, $a5
	or	$a4, $a4, $a5
	st.w	$a4, $a7, 16
	ldx.hu	$a4, $t7, $s5
	ldx.hu	$a5, $t7, $s6
	ldx.hu	$t8, $t7, $s4
	ldx.hu	$fp, $t7, $s7
	ldx.hu	$s1, $t7, $s8
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $t7, $s3
	alsl.d	$a4, $a4, $a4, 2
	add.d	$fp, $s1, $fp
	mul.d	$fp, $fp, $s0
	ldptr.w	$s1, $a2, 5900
	add.d	$a5, $t8, $a5
	sub.d	$a4, $a5, $a4
	add.d	$a4, $a4, $fp
	addi.w	$a4, $a4, 16
	srai.d	$a5, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $s1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $s1, $a5
	or	$a4, $a4, $a5
	st.w	$a4, $a7, 32
	ldx.hu	$a4, $t4, $s4
	ldx.hu	$a5, $t4, $s5
	ldx.hu	$t8, $t4, $s6
	ldx.hu	$fp, $t4, $s7
	ldx.hu	$s1, $t4, $s8
	ldx.hu	$s3, $t4, $s3
	add.d	$a5, $t8, $a5
	alsl.d	$a5, $a5, $a5, 2
	add.d	$t8, $s1, $fp
	mul.d	$t8, $t8, $s0
	ldptr.w	$fp, $a2, 5900
	add.d	$a4, $a4, $s3
	sub.d	$a4, $a4, $a5
	add.d	$a4, $a4, $t8
	addi.w	$a4, $a4, 16
	srai.d	$a5, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $fp
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $fp, $a5
	or	$a4, $a4, $a5
	st.w	$a4, $a7, 48
	addi.d	$t3, $t3, 4
	addi.d	$s2, $s2, 1
	ori	$a4, $zero, 16
	bne	$t3, $a4, .LBB6_31
# %bb.32:                               # %.preheader462
	move	$t3, $zero
	pcalau12i	$a4, %pc_hi20(get_block.cur_lineY)
	st.d	$t4, $a4, %pc_lo12(get_block.cur_lineY)
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a4, $a4, -1
	sltu	$a4, $zero, $a4
	add.d	$a4, $t1, $a4
	srai.d	$a5, $a4, 63
	andn	$a5, $a4, $a5
	slt	$a7, $a5, $t0
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t0, $a7
	or	$a5, $a5, $a7
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	slt	$a7, $t4, $a4
	maskeqz	$t1, $a4, $a7
	masknez	$a7, $t4, $a7
	or	$a7, $t1, $a7
	addi.d	$a7, $a7, 1
	slt	$t1, $a7, $t0
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $t0, $t1
	or	$t5, $a7, $t1
	slt	$a7, $a3, $a4
	maskeqz	$t1, $a4, $a7
	masknez	$a7, $a3, $a7
	or	$a7, $t1, $a7
	addi.d	$a7, $a7, 2
	slt	$t1, $a7, $t0
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $t0, $t1
	or	$t6, $a7, $t1
	slt	$a7, $t2, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t2, $a7
	or	$a4, $a4, $a7
	addi.d	$a4, $a4, 3
	slt	$a7, $a4, $t0
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t0, $a7
	or	$a4, $a4, $a7
	ori	$a7, $zero, 2
	ori	$t0, $zero, 1
	slli.d	$t1, $a5, 1
	ori	$t4, $zero, 20
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 1
	slli.d	$t7, $a4, 1
	ori	$t8, $zero, 64
	.p2align	4, , 16
.LBB6_33:                               # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a6, 0
	slt	$a5, $a7, $a4
	masknez	$fp, $a7, $a5
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $fp
	addi.w	$a5, $a5, -2
	slt	$fp, $a5, $a1
	maskeqz	$a5, $a5, $fp
	masknez	$fp, $a1, $fp
	or	$a5, $a5, $fp
	slt	$fp, $t0, $a4
	masknez	$s0, $t0, $fp
	maskeqz	$fp, $a4, $fp
	or	$fp, $fp, $s0
	addi.d	$fp, $fp, -1
	slt	$s0, $fp, $a1
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $a1, $s0
	or	$fp, $fp, $s0
	srai.d	$s0, $a4, 63
	andn	$s0, $a4, $s0
	slt	$s1, $s0, $a1
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $a1, $s1
	or	$s2, $s0, $s1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	slt	$s0, $s1, $a4
	masknez	$s1, $s1, $s0
	maskeqz	$s0, $a4, $s0
	or	$s0, $s0, $s1
	addi.w	$s0, $s0, 1
	slt	$s1, $s0, $a1
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $a1, $s1
	or	$s4, $s0, $s1
	slt	$s0, $a3, $a4
	masknez	$s1, $a3, $s0
	maskeqz	$s0, $a4, $s0
	or	$s0, $s0, $s1
	addi.w	$s0, $s0, 2
	slt	$s1, $s0, $a1
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $a1, $s1
	or	$s5, $s0, $s1
	slt	$s0, $t2, $a4
	masknez	$s1, $t2, $s0
	maskeqz	$a4, $a4, $s0
	or	$a4, $a4, $s1
	addi.w	$a4, $a4, 3
	slt	$s0, $a4, $a1
	maskeqz	$a4, $a4, $s0
	masknez	$s0, $a1, $s0
	or	$a4, $a4, $s0
	slli.d	$a5, $a5, 3
	ldx.d	$s0, $a0, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$s1, $a0, $a4
	slli.d	$a4, $fp, 3
	ldx.d	$s3, $a0, $a4
	slli.d	$a4, $s5, 3
	ldx.d	$s5, $a0, $a4
	slli.d	$a4, $s2, 3
	ldx.d	$s2, $a0, $a4
	slli.d	$a4, $s4, 3
	ldx.d	$s4, $a0, $a4
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	add.d	$fp, $a4, $t3
	ldx.hu	$a5, $s3, $t1
	ldx.hu	$s6, $s5, $t1
	ldx.hu	$s7, $s0, $t1
	ldx.hu	$s8, $s2, $t1
	ldx.hu	$ra, $s4, $t1
	add.d	$a5, $s6, $a5
	ldx.hu	$s6, $s1, $t1
	alsl.d	$a5, $a5, $a5, 2
	add.d	$s8, $ra, $s8
	mul.d	$s8, $s8, $t4
	ldx.w	$ra, $a4, $t3
	add.d	$s6, $s7, $s6
	ldptr.w	$s7, $a2, 5900
	sub.d	$a5, $s6, $a5
	add.d	$a5, $a5, $s8
	addi.w	$a5, $a5, 16
	srai.d	$s6, $a5, 5
	srai.d	$a5, $a5, 63
	andn	$a5, $s6, $a5
	slt	$s6, $a5, $s7
	maskeqz	$a5, $a5, $s6
	masknez	$s6, $s7, $s6
	or	$a5, $a5, $s6
	add.d	$a5, $ra, $a5
	addi.w	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	stx.w	$a5, $a4, $t3
	ldx.hu	$a4, $s3, $t5
	ldx.hu	$a5, $s5, $t5
	ldx.hu	$s6, $s0, $t5
	ldx.hu	$s7, $s2, $t5
	ldx.hu	$s8, $s4, $t5
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s1, $t5
	alsl.d	$a4, $a4, $a4, 2
	add.d	$s7, $s8, $s7
	mul.d	$s7, $s7, $t4
	ld.w	$s8, $fp, 4
	add.d	$a5, $s6, $a5
	ldptr.w	$s6, $a2, 5900
	sub.d	$a4, $a5, $a4
	add.d	$a4, $a4, $s7
	addi.w	$a4, $a4, 16
	srai.d	$a5, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $s6
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $s6, $a5
	or	$a4, $a4, $a5
	add.d	$a4, $s8, $a4
	addi.w	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	st.w	$a4, $fp, 4
	ldx.hu	$a4, $s3, $t6
	ldx.hu	$a5, $s5, $t6
	ldx.hu	$s6, $s2, $t6
	ldx.hu	$s7, $s4, $t6
	ldx.hu	$s8, $s0, $t6
	add.d	$a4, $a5, $a4
	ldx.hu	$a5, $s1, $t6
	add.d	$s6, $s7, $s6
	alsl.d	$a4, $a4, $a4, 2
	mul.d	$s6, $s6, $t4
	add.d	$a5, $s8, $a5
	ld.w	$s7, $fp, 8
	sub.d	$a4, $a5, $a4
	ldptr.w	$a5, $a2, 5900
	add.d	$a4, $a4, $s6
	addi.w	$a4, $a4, 16
	srai.d	$s6, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $s6, $a4
	slt	$s6, $a4, $a5
	maskeqz	$a4, $a4, $s6
	masknez	$a5, $a5, $s6
	or	$a4, $a4, $a5
	add.d	$a4, $s7, $a4
	addi.w	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	ldx.hu	$a5, $s3, $t7
	ldx.hu	$s3, $s5, $t7
	st.w	$a4, $fp, 8
	ldx.hu	$a4, $s2, $t7
	ldx.hu	$s2, $s4, $t7
	add.d	$a5, $s3, $a5
	ldx.hu	$s0, $s0, $t7
	ldx.hu	$s1, $s1, $t7
	add.d	$a4, $s2, $a4
	alsl.d	$a5, $a5, $a5, 2
	mul.d	$a4, $a4, $t4
	add.d	$s0, $s0, $s1
	ld.w	$s1, $fp, 12
	sub.d	$a5, $s0, $a5
	ldptr.w	$s0, $a2, 5900
	add.d	$a4, $a5, $a4
	addi.w	$a4, $a4, 16
	srai.d	$a5, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $s0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $s0, $a5
	or	$a4, $a4, $a5
	add.d	$a4, $s1, $a4
	addi.w	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	st.w	$a4, $fp, 12
	addi.d	$t3, $t3, 16
	addi.d	$a6, $a6, 1
	bne	$t3, $t8, .LBB6_33
.LBB6_34:                               # %.loopexit
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end6:
	.size	get_block, .Lfunc_end6-get_block
                                        # -- End function
	.globl	reorder_lists                   # -- Begin function reorder_lists
	.p2align	5
	.type	reorder_lists,@function
reorder_lists:                          # @reorder_lists
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	move	$fp, $a1
	beq	$a0, $a2, .LBB7_17
# %bb.1:
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB7_17
# %bb.2:
	ld.w	$a1, $fp, 64
	lu12i.w	$s0, 1
	beqz	$a1, .LBB7_4
# %bb.3:
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	ld.d	$a6, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ori	$a2, $s0, 1544
	ldx.w	$a1, $a1, $a2
	ld.d	$a3, $fp, 72
	ld.d	$a4, $fp, 80
	ld.d	$a5, $fp, 88
	addi.w	$a2, $a1, -1
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	move	$s1, $a0
	move	$a0, $a6
	pcaddu18i	$ra, %call36(reorder_ref_pic_list)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB7_4:
	pcalau12i	$a1, %got_pc_hi20(no_reference_picture)
	ld.d	$s2, $a1, %got_pc_lo12(no_reference_picture)
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$s3, $a2, %got_pc_lo12(listX)
	ld.d	$a2, $s3, 0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$s1, $a3, %got_pc_lo12(img)
	ld.d	$a3, $s1, 0
	ldptr.w	$a3, $a3, 5640
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, -8
	bne	$a1, $a2, .LBB7_9
# %bb.5:
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(non_conforming_stream)
	ld.w	$a0, $a0, %pc_lo12(non_conforming_stream)
	beqz	$a0, .LBB7_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB7_8
.LBB7_7:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB7_8:
	move	$a0, $s4
.LBB7_9:
	ld.d	$a1, $s1, 0
	ori	$a2, $s0, 1544
	ldx.w	$a2, $a1, $a2
	pcalau12i	$a3, %got_pc_hi20(listXsize)
	ld.d	$s4, $a3, %got_pc_lo12(listXsize)
	ori	$a3, $zero, 1
	st.w	$a2, $s4, 0
	bne	$a0, $a3, .LBB7_17
# %bb.10:
	ld.w	$a0, $fp, 96
	beqz	$a0, .LBB7_12
# %bb.11:
	ld.d	$a0, $s3, 8
	ori	$a2, $s0, 1548
	ldx.w	$a1, $a1, $a2
	ld.d	$a3, $fp, 104
	ld.d	$a4, $fp, 112
	ld.d	$a5, $fp, 120
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s4, 4
	pcaddu18i	$ra, %call36(reorder_ref_pic_list)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
.LBB7_12:
	ld.d	$a0, $s3, 8
	ldptr.w	$a1, $a1, 5644
	ld.d	$a2, $s2, 0
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a0, $a0, -8
	bne	$a2, $a0, .LBB7_16
# %bb.13:
	pcalau12i	$a0, %pc_hi20(non_conforming_stream)
	ld.w	$a0, $a0, %pc_lo12(non_conforming_stream)
	beqz	$a0, .LBB7_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB7_16
.LBB7_15:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB7_16:
	ld.d	$a0, $s1, 0
	ori	$a1, $s0, 1548
	ldx.w	$a0, $a0, $a1
	st.w	$a0, $s4, 4
.LBB7_17:
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(free_ref_pic_list_reordering_buffer)
	jr	$t8
.Lfunc_end7:
	.size	reorder_lists, .Lfunc_end7-reorder_lists
                                        # -- End function
	.globl	set_ref_pic_num                 # -- Begin function set_ref_pic_num
	.p2align	5
	.type	set_ref_pic_num,@function
set_ref_pic_num:                        # @set_ref_pic_num
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a2, $a0, 0
	ld.w	$a0, $a2, 12
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	ld.w	$a3, $a1, 0
	blez	$a3, .LBB8_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$a4, $a4, %got_pc_lo12(listX)
	pcalau12i	$a5, %pc_hi20(dec_picture)
	ld.d	$a5, $a5, %pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $zero, 1584
	mul.d	$a6, $a0, $a6
	add.d	$a5, $a5, $a6
	lu12i.w	$a6, 19
	ori	$a6, $a6, 1400
	lu12i.w	$a7, 38
	ori	$a7, $a7, 2776
	lu12i.w	$t0, 58
	ori	$t0, $t0, 56
	.p2align	4, , 16
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a4, 0
	ld.w	$t2, $t1, 4
	ld.w	$t3, $t1, 0
	slli.w	$t2, $t2, 1
	addi.d	$t3, $t3, -2
	sltui	$t3, $t3, 1
	ld.w	$t4, $t1, 16
	or	$t2, $t2, $t3
	st.d	$t2, $a5, 24
	ld.w	$t2, $t1, 8
	slli.w	$t3, $t4, 1
	ld.w	$t1, $t1, 12
	stx.d	$t3, $a5, $a6
	slli.w	$t2, $t2, 1
	stx.d	$t2, $a5, $a7
	slli.d	$t1, $t1, 1
	addi.w	$t1, $t1, 1
	stx.d	$t1, $a5, $t0
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	bnez	$a3, .LBB8_2
.LBB8_3:                                # %.preheader59
	ld.w	$a3, $a1, 4
	blez	$a3, .LBB8_6
# %bb.4:                                # %.lr.ph62
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$a4, $a4, %got_pc_lo12(listX)
	pcalau12i	$a5, %pc_hi20(dec_picture)
	ld.d	$a5, $a5, %pc_lo12(dec_picture)
	ld.d	$a4, $a4, 8
	ori	$a6, $zero, 1584
	mul.d	$a6, $a0, $a6
	add.d	$a5, $a5, $a6
	lu12i.w	$a6, 19
	ori	$a6, $a6, 1664
	lu12i.w	$a7, 38
	ori	$a7, $a7, 3040
	lu12i.w	$t0, 58
	ori	$t0, $t0, 320
	.p2align	4, , 16
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a4, 0
	ld.w	$t2, $t1, 4
	ld.w	$t3, $t1, 0
	slli.w	$t2, $t2, 1
	addi.d	$t3, $t3, -2
	sltui	$t3, $t3, 1
	ld.w	$t4, $t1, 16
	or	$t2, $t2, $t3
	st.d	$t2, $a5, 288
	ld.w	$t2, $t1, 8
	slli.w	$t3, $t4, 1
	ld.w	$t1, $t1, 12
	stx.d	$t3, $a5, $a6
	slli.w	$t2, $t2, 1
	stx.d	$t2, $a5, $a7
	slli.d	$t1, $t1, 1
	addi.w	$t1, $t1, 1
	stx.d	$t1, $a5, $t0
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	bnez	$a3, .LBB8_5
.LBB8_6:                                # %._crit_edge
	pcalau12i	$a3, %pc_hi20(active_sps)
	ld.d	$a3, $a3, %pc_lo12(active_sps)
	ldptr.w	$a3, $a3, 2076
	bnez	$a3, .LBB8_20
# %bb.7:
	ldptr.w	$a2, $a2, 5584
	bnez	$a2, .LBB8_20
# %bb.8:                                # %.preheader58
	pcalau12i	$a2, %pc_hi20(dec_picture)
	ld.w	$a6, $a1, 8
	ld.d	$a2, $a2, %pc_lo12(dec_picture)
	lu12i.w	$a3, 19
	lu12i.w	$a5, 38
	lu12i.w	$a4, 58
	blez	$a6, .LBB8_11
# %bb.9:                                # %.lr.ph64
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$a7, $a7, %got_pc_lo12(listX)
	ld.d	$a7, $a7, 16
	ori	$t0, $zero, 1584
	mul.d	$t0, $a0, $t0
	add.d	$t0, $a2, $t0
	ori	$t1, $a3, 1928
	ori	$t2, $a5, 3304
	ori	$t3, $a4, 584
	.p2align	4, , 16
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $a7, 0
	ld.w	$t5, $t4, 4
	ld.w	$t6, $t4, 0
	slli.w	$t5, $t5, 1
	addi.d	$t6, $t6, -2
	sltui	$t6, $t6, 1
	ld.w	$t7, $t4, 16
	or	$t5, $t5, $t6
	st.d	$t5, $t0, 552
	ld.w	$t5, $t4, 8
	slli.w	$t6, $t7, 1
	ld.w	$t4, $t4, 12
	stx.d	$t6, $t0, $t1
	slli.w	$t5, $t5, 1
	stx.d	$t5, $t0, $t2
	slli.d	$t4, $t4, 1
	addi.w	$t4, $t4, 1
	stx.d	$t4, $t0, $t3
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	bnez	$a6, .LBB8_10
.LBB8_11:                               # %._crit_edge65
	ld.w	$a6, $a1, 12
	blez	$a6, .LBB8_14
# %bb.12:                               # %.lr.ph64.1
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$a7, $a7, %got_pc_lo12(listX)
	ld.d	$a7, $a7, 24
	ori	$t0, $zero, 1584
	mul.d	$t0, $a0, $t0
	add.d	$t0, $a2, $t0
	ori	$t1, $a3, 2192
	ori	$t2, $a5, 3568
	ori	$t3, $a4, 848
	.p2align	4, , 16
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $a7, 0
	ld.w	$t5, $t4, 4
	ld.w	$t6, $t4, 0
	slli.w	$t5, $t5, 1
	addi.d	$t6, $t6, -2
	sltui	$t6, $t6, 1
	ld.w	$t7, $t4, 16
	or	$t5, $t5, $t6
	st.d	$t5, $t0, 816
	ld.w	$t5, $t4, 8
	slli.w	$t6, $t7, 1
	ld.w	$t4, $t4, 12
	stx.d	$t6, $t0, $t1
	slli.w	$t5, $t5, 1
	stx.d	$t5, $t0, $t2
	slli.d	$t4, $t4, 1
	addi.w	$t4, $t4, 1
	stx.d	$t4, $t0, $t3
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB8_13
.LBB8_14:                               # %._crit_edge65.1
	ld.w	$a6, $a1, 16
	blez	$a6, .LBB8_17
# %bb.15:                               # %.lr.ph64.2
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$a7, $a7, %got_pc_lo12(listX)
	ld.d	$a7, $a7, 32
	ori	$t0, $zero, 1584
	mul.d	$t0, $a0, $t0
	add.d	$t0, $a2, $t0
	ori	$t1, $a3, 2456
	ori	$a5, $a5, 3832
	ori	$t2, $a4, 1112
	.p2align	4, , 16
.LBB8_16:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a7, 0
	ld.w	$t4, $t3, 4
	ld.w	$t5, $t3, 0
	slli.w	$t4, $t4, 1
	addi.d	$t5, $t5, -2
	sltui	$t5, $t5, 1
	ld.w	$t6, $t3, 16
	or	$t4, $t4, $t5
	st.d	$t4, $t0, 1080
	ld.w	$t4, $t3, 8
	slli.w	$t5, $t6, 1
	ld.w	$t3, $t3, 12
	stx.d	$t5, $t0, $t1
	slli.w	$t4, $t4, 1
	stx.d	$t4, $t0, $a5
	slli.d	$t3, $t3, 1
	addi.w	$t3, $t3, 1
	stx.d	$t3, $t0, $t2
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB8_16
.LBB8_17:                               # %._crit_edge65.2
	ld.w	$a1, $a1, 20
	blez	$a1, .LBB8_20
# %bb.18:                               # %.lr.ph64.3
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a5, $a5, 40
	ori	$a6, $zero, 1584
	mul.d	$a0, $a0, $a6
	add.d	$a0, $a2, $a0
	ori	$a2, $a3, 2720
	lu12i.w	$a3, 39
	ori	$a4, $a4, 1376
	.p2align	4, , 16
.LBB8_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	ld.w	$a7, $a6, 4
	ld.w	$t0, $a6, 0
	slli.w	$a7, $a7, 1
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	ld.w	$t1, $a6, 16
	or	$a7, $a7, $t0
	st.d	$a7, $a0, 1344
	ld.w	$a7, $a6, 8
	slli.w	$t0, $t1, 1
	ld.w	$a6, $a6, 12
	stx.d	$t0, $a0, $a2
	slli.w	$a7, $a7, 1
	stx.d	$a7, $a0, $a3
	slli.d	$a6, $a6, 1
	addi.w	$a6, $a6, 1
	stx.d	$a6, $a0, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	addi.d	$a5, $a5, 8
	bnez	$a1, .LBB8_19
.LBB8_20:                               # %.loopexit
	ret
.Lfunc_end8:
	.size	set_ref_pic_num, .Lfunc_end8-set_ref_pic_num
                                        # -- End function
	.globl	read_new_slice                  # -- Begin function read_new_slice
	.p2align	5
	.type	read_new_slice,@function
read_new_slice:                         # @read_new_slice
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
	lu12i.w	$a0, 1953
	ori	$a0, $a0, 512
	pcaddu18i	$ra, %call36(AllocNALU)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 5592
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bits)
	ld.d	$s1, $a0, %got_pc_lo12(bits)
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s8, $a0, %got_pc_lo12(input)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s4, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s0, $a0, %pc_lo12(.L.str.10)
	ori	$s5, $zero, 11
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI9_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI9_0)
	lu12i.w	$a0, 1
	ori	$s2, $a0, 1996
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$s7, $a0, %pc_lo12(.Lstr.3)
	b	.LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 3000
	beqz	$a0, .LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GetRTPNALU)
	jirl	$ra, $ra, 0
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GetAnnexbNALU)
	jirl	$ra, $ra, 0
.LBB9_5:                                #   in Loop: Header=BB9_2 Depth=1
	st.w	$a0, $sp, 84
	addi.d	$a1, $sp, 84
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CheckZeroByteNonVCL)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(NALUtoRBSP)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	bgez	$a0, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 3000
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a1, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
.LBB9_7:                                #   in Loop: Header=BB9_2 Depth=1
	beqz	$a0, .LBB9_21
# %bb.8:                                #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a0, $fp, 20
	beqz	$a0, .LBB9_10
# %bb.9:                                #   in Loop: Header=BB9_2 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB9_10:                               #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a1, $fp, 12
	addi.d	$a0, $a1, -1
	bltu	$s5, $a0, .LBB9_20
# %bb.11:                               #   in Loop: Header=BB9_2 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $s6, $a0
	jr	$a0
.LBB9_12:                               #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a0, $s3, 0
	ldptr.w	$a2, $a0, 6088
	bnez	$a2, .LBB9_22
# %bb.13:                               #   in Loop: Header=BB9_2 Depth=1
	ldx.w	$a2, $a0, $s2
	ori	$a3, $zero, 5
	beq	$a1, $a3, .LBB9_25
# %bb.14:                               #   in Loop: Header=BB9_2 Depth=1
	beqz	$a2, .LBB9_2
	b	.LBB9_28
.LBB9_15:                               #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a1, $fp, 4
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.w	$a1, $fp, 4
	ld.d	$a2, $s3, 0
	pcaddu18i	$ra, %call36(InterpretSEIMessage)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_16:                               #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_17:                               #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a1, $fp, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_18:                               #   in Loop: Header=BB9_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ProcessSPS)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_19:                               #   in Loop: Header=BB9_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ProcessPPS)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_20:                               #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a2, $fp, 4
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_21:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeNALU)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB9_40
.LBB9_22:
	ldptr.w	$a2, $a0, 6092
	bnez	$a2, .LBB9_27
# %bb.23:
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB9_26
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.Lstr.9)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.9)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(non_conforming_stream)
	ori	$a2, $zero, 1
	st.w	$a2, $a1, %pc_lo12(non_conforming_stream)
	b	.LBB9_27
.LBB9_25:                               # %.thread
	bnez	$a2, .LBB9_27
.LBB9_26:                               # %.thread149
	pcalau12i	$a1, %pc_hi20(non_conforming_stream)
	st.w	$zero, $a1, %pc_lo12(non_conforming_stream)
.LBB9_27:                               # %.thread164
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 6092
.LBB9_28:                               # %.loopexit
	ld.w	$a1, $fp, 12
	addi.d	$a1, $a1, -5
	ld.w	$a2, $fp, 16
	sltui	$a1, $a1, 1
	stptr.w	$a1, $a0, 5804
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $s4, 40
	stptr.w	$a2, $a0, 5808
	ori	$a0, $zero, 1
	st.d	$a0, $s4, 24
	ld.d	$s0, $a1, 0
	st.w	$zero, $s4, 0
	st.w	$zero, $s0, 24
	st.w	$zero, $s0, 0
	ld.d	$a1, $fp, 24
	ld.w	$a2, $fp, 4
	st.w	$zero, $s0, 8
	ld.d	$a0, $s0, 16
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $s0, 16
	addi.w	$a1, $a1, -1
	pcaddu18i	$ra, %call36(RBSPtoSODB)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 12
	st.w	$a0, $s0, 4
	pcaddu18i	$ra, %call36(FirstPartOfSliceHeader)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 148
	pcaddu18i	$ra, %call36(UseParameterSet)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(RestOfSliceHeader)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(active_pps)
	ld.d	$a0, $s2, %pc_lo12(active_pps)
	pcalau12i	$s1, %pc_hi20(active_sps)
	ld.d	$a1, $s1, %pc_lo12(active_sps)
	pcaddu18i	$ra, %call36(FmoInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(active_pps)
	ld.d	$a1, $s1, %pc_lo12(active_sps)
	pcaddu18i	$ra, %call36(AssignQuantParam)
	jirl	$ra, $ra, 0
	move	$s5, $s3
	ld.d	$s1, $s3, 0
	ldptr.w	$a0, $s1, 5652
	beqz	$a0, .LBB9_32
# %bb.29:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(Is_primary_correct)
	ld.w	$a0, $a0, %pc_lo12(Is_primary_correct)
	bnez	$a0, .LBB9_32
# %bb.30:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(Is_redundant_correct)
	ld.w	$a0, $a0, %pc_lo12(Is_redundant_correct)
	beqz	$a0, .LBB9_32
# %bb.31:
	ld.w	$a0, $s1, 44
	pcalau12i	$a1, %pc_hi20(dec_picture)
	ld.d	$a1, $a1, %pc_lo12(dec_picture)
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1632
	stx.w	$a0, $a1, $a2
.LBB9_32:
	pcaddu18i	$ra, %call36(is_new_picture)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_34
# %bb.33:
	ld.d	$a1, $s8, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(init_picture)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 84
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CheckZeroByteVCL)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s5, 0
	ori	$s3, $zero, 2
	b	.LBB9_35
.LBB9_34:
	ori	$s3, $zero, 3
.LBB9_35:
	ldptr.d	$a1, $s1, 5592
	ld.w	$a0, $s1, 44
	ld.w	$a1, $a1, 16
	pcaddu18i	$ra, %call36(init_lists)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ld.w	$a0, $a1, 44
	ldptr.d	$a1, $a1, 5592
	pcaddu18i	$ra, %call36(reorder_lists)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.w	$a1, $a0, 5584
	bnez	$a1, .LBB9_37
# %bb.36:
	pcaddu18i	$ra, %call36(init_mbaff_lists)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
.LBB9_37:
	ld.d	$a1, $s2, %pc_lo12(active_pps)
	ldptr.w	$a2, $a0, 5624
	ld.w	$a3, $s4, 20
	ld.w	$a1, $a1, 12
	sltu	$a2, $zero, $a2
	sll.w	$a2, $a3, $a2
	st.w	$a2, $a0, 4
	beqz	$a1, .LBB9_39
# %bb.38:
	ld.w	$a1, $s0, 8
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 3
	andi	$a3, $a1, 7
	ld.d	$a5, $s4, 40
	ld.d	$a1, $s0, 16
	ld.w	$a4, $a0, 44
	sltu	$a0, $zero, $a3
	add.d	$a2, $a2, $a0
	addi.d	$a0, $a5, 8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(arideco_start_decoding)
	jirl	$ra, $ra, 0
.LBB9_39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeNALU)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	stptr.w	$zero, $a0, 6088
	move	$a0, $s3
.LBB9_40:
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
.LBB9_41:
	ld.d	$a0, $s3, 0
	ld.w	$a1, $fp, 16
	stptr.w	$zero, $a0, 5804
	stptr.w	$a1, $a0, 5808
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 40
	ori	$a1, $zero, 3
	lu32i.d	$a1, 1
	st.d	$a1, $s2, 24
	ld.d	$s0, $a0, 0
	ori	$s6, $zero, 3
	st.w	$zero, $s2, 0
	st.w	$zero, $s0, 24
	st.w	$zero, $s0, 0
	ld.d	$a1, $fp, 24
	ld.w	$a2, $fp, 4
	st.w	$zero, $s0, 8
	ld.d	$a0, $s0, 16
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $s0, 16
	addi.w	$a1, $a1, -1
	pcaddu18i	$ra, %call36(RBSPtoSODB)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 12
	st.w	$a0, $s0, 4
	pcaddu18i	$ra, %call36(FirstPartOfSliceHeader)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 148
	pcaddu18i	$ra, %call36(UseParameterSet)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(RestOfSliceHeader)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(active_pps)
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	pcaddu18i	$ra, %call36(FmoInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(is_new_picture)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_43
# %bb.42:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(init_picture)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 84
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CheckZeroByteVCL)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 2
.LBB9_43:
	ld.d	$a0, $s3, 0
	ldptr.d	$a1, $a0, 5592
	ld.w	$a0, $a0, 44
	ld.w	$a1, $a1, 16
	pcaddu18i	$ra, %call36(init_lists)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ld.w	$a0, $a1, 44
	ldptr.d	$a1, $a1, 5592
	pcaddu18i	$ra, %call36(reorder_lists)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a1, $a0, 5584
	bnez	$a1, .LBB9_45
# %bb.44:
	pcaddu18i	$ra, %call36(init_mbaff_lists)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
.LBB9_45:
	ldptr.w	$a1, $a0, 5624
	ld.w	$a2, $s2, 20
	sltu	$a1, $zero, $a1
	sll.w	$a1, $a2, $a1
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	move	$s0, $a0
	beqz	$a1, .LBB9_47
# %bb.46:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB9_47:
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ldptr.w	$a1, $a1, 3000
	move	$s5, $a0
	move	$a0, $fp
	beqz	$a1, .LBB9_49
# %bb.48:
	pcaddu18i	$ra, %call36(GetRTPNALU)
	jirl	$ra, $ra, 0
	b	.LBB9_50
.LBB9_49:
	pcaddu18i	$ra, %call36(GetAnnexbNALU)
	jirl	$ra, $ra, 0
.LBB9_50:
	st.w	$a0, $sp, 84
	addi.d	$a1, $sp, 84
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CheckZeroByteNonVCL)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(NALUtoRBSP)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	bgez	$a0, .LBB9_52
# %bb.51:
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 3000
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
.LBB9_52:
	beqz	$a0, .LBB9_72
# %bb.53:
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB9_65
# %bb.54:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	ld.d	$s2, $a0, 56
	st.w	$zero, $s2, 24
	st.w	$zero, $s2, 0
	ld.d	$a1, $fp, 24
	ld.w	$a2, $fp, 4
	st.w	$zero, $s2, 8
	ld.d	$a0, $s2, 16
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $s2, 16
	addi.w	$a1, $a1, -1
	pcaddu18i	$ra, %call36(RBSPtoSODB)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 12
	st.w	$a0, $s2, 4
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB9_56
# %bb.55:
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB9_56:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 1152
	beqz	$a0, .LBB9_58
# %bb.57:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
.LBB9_58:
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ldptr.w	$a1, $a1, 3000
	move	$s5, $a0
	move	$a0, $fp
	beqz	$a1, .LBB9_60
# %bb.59:
	pcaddu18i	$ra, %call36(GetRTPNALU)
	jirl	$ra, $ra, 0
	b	.LBB9_61
.LBB9_60:
	pcaddu18i	$ra, %call36(GetAnnexbNALU)
	jirl	$ra, $ra, 0
.LBB9_61:
	st.w	$a0, $sp, 84
	addi.d	$a1, $sp, 84
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CheckZeroByteNonVCL)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(NALUtoRBSP)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	bgez	$a0, .LBB9_63
# %bb.62:
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 3000
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
.LBB9_63:
	beqz	$a0, .LBB9_72
# %bb.64:                               # %thread-pre-split
	ld.w	$a0, $fp, 12
.LBB9_65:
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB9_70
# %bb.66:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	ld.d	$s2, $a0, 112
	st.w	$zero, $s2, 24
	st.w	$zero, $s2, 0
	ld.d	$a1, $fp, 24
	ld.w	$a2, $fp, 4
	st.w	$zero, $s2, 8
	ld.d	$a0, $s2, 16
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $s2, 16
	addi.w	$a1, $a1, -1
	pcaddu18i	$ra, %call36(RBSPtoSODB)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 12
	st.w	$a0, $s2, 4
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB9_68
# %bb.67:
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB9_68:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 1152
	beqz	$a0, .LBB9_70
# %bb.69:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
.LBB9_70:
	ld.w	$a0, $fp, 12
	addi.w	$a0, $a0, -3
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB9_72
# %bb.71:
	ld.d	$a0, $s1, 0
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
.LBB9_72:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeNALU)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	b	.LBB9_40
.Lfunc_end9:
	.size	read_new_slice, .Lfunc_end9-read_new_slice
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI9_0:
	.word	.LBB9_12-.LJTI9_0
	.word	.LBB9_41-.LJTI9_0
	.word	.LBB9_1-.LJTI9_0
	.word	.LBB9_16-.LJTI9_0
	.word	.LBB9_12-.LJTI9_0
	.word	.LBB9_15-.LJTI9_0
	.word	.LBB9_18-.LJTI9_0
	.word	.LBB9_19-.LJTI9_0
	.word	.LBB9_2-.LJTI9_0
	.word	.LBB9_2-.LJTI9_0
	.word	.LBB9_2-.LJTI9_0
	.word	.LBB9_17-.LJTI9_0
                                        # -- End function
	.text
	.globl	init_picture                    # -- Begin function init_picture
	.p2align	5
	.type	init_picture,@function
init_picture:                           # @init_picture
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
	move	$fp, $a0
	pcalau12i	$s3, %pc_hi20(dec_picture)
	ld.d	$a0, $s3, %pc_lo12(dec_picture)
	ldptr.d	$s5, $fp, 5592
	move	$s0, $a1
	beqz	$a0, .LBB10_2
# %bb.1:
	pcaddu18i	$ra, %call36(exit_picture)
	jirl	$ra, $ra, 0
.LBB10_2:
	ldptr.w	$a0, $fp, 6088
	lu12i.w	$s2, 1
	beqz	$a0, .LBB10_4
# %bb.3:
	ori	$a1, $s2, 1580
	ldx.w	$a1, $fp, $a1
	ori	$a2, $s2, 2000
	ldx.w	$a2, $fp, $a2
	ldptr.w	$a3, $fp, 5816
	add.w	$a1, $a2, $a1
	mod.wu	$a1, $a1, $a3
	stptr.w	$a1, $fp, 6100
.LBB10_4:
	ldptr.w	$a1, $fp, 5804
	beqz	$a1, .LBB10_6
# %bb.5:
	ori	$a1, $s2, 1580
	ldx.w	$a1, $fp, $a1
	stptr.w	$a1, $fp, 6100
.LBB10_6:
	pcalau12i	$s1, %pc_hi20(active_sps)
	bnez	$a0, .LBB10_12
# %bb.7:
	ldptr.w	$a0, $fp, 5676
	ldptr.w	$a1, $fp, 5660
	beq	$a0, $a1, .LBB10_12
# %bb.8:
	ldptr.w	$a2, $fp, 5816
	addi.w	$a1, $a1, 1
	mod.wu	$a1, $a1, $a2
	beq	$a0, $a1, .LBB10_12
# %bb.9:
	ld.d	$a2, $s1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a2, 2064
	beqz	$a2, .LBB10_62
.LBB10_10:
	ldptr.w	$a0, $fp, 6068
	bnez	$a0, .LBB10_12
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_frame_num_gap)
	jirl	$ra, $ra, 0
.LBB10_12:
	ldptr.w	$a0, $fp, 5808
	beqz	$a0, .LBB10_14
# %bb.13:
	ori	$a0, $s2, 1580
	ldx.w	$a0, $fp, $a0
	stptr.w	$a0, $fp, 5660
.LBB10_14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(decode_poc)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 6100
	ldptr.w	$a1, $fp, 5676
	bne	$a0, $a1, .LBB10_17
# %bb.15:
	ldptr.w	$a0, $fp, 6104
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	bne	$a0, $a1, .LBB10_17
# %bb.16:
	ori	$a0, $s2, 1576
	ldx.w	$a0, $fp, $a0
	stptr.w	$a0, $fp, 6104
.LBB10_17:
	ldptr.w	$a0, $fp, 5808
	beqz	$a0, .LBB10_19
# %bb.18:
	ori	$a0, $s2, 1576
	ldx.w	$a0, $fp, $a0
	stptr.w	$a0, $fp, 6056
.LBB10_19:
	ldptr.w	$a0, $fp, 5584
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB10_21
# %bb.20:
	ori	$a0, $s2, 1928
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 1912
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 1488
	ldx.w	$a0, $fp, $a0
.LBB10_21:
	ld.w	$a1, $fp, 48
	ld.w	$a2, $fp, 52
	ld.w	$a3, $fp, 56
	ld.w	$a4, $fp, 64
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ori	$s6, $s2, 1568
	ldx.w	$a1, $fp, $s6
	st.w	$a1, $a0, 8
	ldptr.d	$a1, $fp, 5668
	pcalau12i	$s4, %pc_hi20(active_pps)
	ld.d	$a2, $s4, %pc_lo12(active_pps)
	lu12i.w	$s0, 77
	ori	$a3, $s0, 1472
	st.d	$a1, $a0, 12
	ld.w	$a1, $a2, 1136
	add.d	$a4, $a0, $a3
	ld.w	$a5, $fp, 28
	ld.w	$a6, $s5, 8
	st.w	$a1, $a4, 212
	ld.w	$a1, $a2, 1140
	st.w	$a5, $a4, 208
	st.d	$a0, $s3, %pc_lo12(dec_picture)
	st.w	$a6, $a4, 220
	st.w	$a1, $a4, 216
	pcalau12i	$a1, %got_pc_hi20(erc_errorVar)
	ld.d	$a1, $a1, %got_pc_lo12(erc_errorVar)
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $fp, 5836
	ldx.w	$a3, $a0, $a3
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(ercReset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(erc_mvperMB)
	ld.d	$a1, $a0, %got_pc_lo12(erc_mvperMB)
	ldptr.w	$a0, $fp, 5584
	st.w	$zero, $a1, 0
	beqz	$a0, .LBB10_52
# %bb.22:
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB10_25
# %bb.23:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB10_53
# %bb.24:
	ldx.w	$a0, $fp, $s6
	ld.d	$a1, $s3, %pc_lo12(dec_picture)
	ld.w	$a2, $fp, 0
	st.w	$a0, $a1, 4
	slli.d	$a0, $a2, 1
	b	.LBB10_26
.LBB10_25:
	ori	$a0, $s2, 1572
	ldx.w	$a0, $fp, $a0
	ld.d	$a1, $s3, %pc_lo12(dec_picture)
	ld.w	$a2, $fp, 0
	st.w	$a0, $a1, 4
	slli.d	$a0, $a2, 1
	addi.d	$a0, $a0, 1
.LBB10_26:
	st.w	$a0, $fp, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 5
	st.w	$zero, $fp, 12
	blt	$a0, $a1, .LBB10_28
.LBB10_27:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(set_ec_flag)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 44
.LBB10_28:
	ldptr.w	$a3, $fp, 5836
	blez	$a3, .LBB10_45
# %bb.29:                               # %.preheader133.lr.ph
	ldptr.w	$a7, $fp, 5924
	addi.w	$a0, $zero, -3
	blt	$a7, $a0, .LBB10_45
# %bb.30:                               # %.preheader133.preheader
	addi.w	$a1, $zero, -1
	move	$a2, $zero
	move	$a4, $a1
	lu32i.d	$a4, 0
	ori	$a5, $s2, 1828
	ori	$a6, $s2, 1740
	b	.LBB10_33
	.p2align	4, , 16
.LBB10_31:                              # %._crit_edge.3
                                        #   in Loop: Header=BB10_33 Depth=1
	ldx.w	$a3, $fp, $a6
.LBB10_32:                              # %.split.us
                                        #   in Loop: Header=BB10_33 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB10_45
.LBB10_33:                              # %.preheader133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_35 Depth 2
                                        #     Child Loop BB10_38 Depth 2
                                        #     Child Loop BB10_41 Depth 2
                                        #     Child Loop BB10_44 Depth 2
	blt	$a7, $a0, .LBB10_32
# %bb.34:                               # %.lr.ph
                                        #   in Loop: Header=BB10_33 Depth=1
	ldptr.d	$a7, $fp, 5560
	slli.d	$a3, $a2, 3
	ldx.d	$a7, $a7, $a3
	ld.d	$t0, $a7, 0
	move	$t1, $a1
	.p2align	4, , 16
.LBB10_35:                              #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $t0, 0
	ldptr.w	$a7, $fp, 5924
	addi.w	$t2, $a7, 3
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	blt	$t1, $t2, .LBB10_35
# %bb.36:                               # %._crit_edge
                                        #   in Loop: Header=BB10_33 Depth=1
	blt	$a7, $a0, .LBB10_31
# %bb.37:                               # %.lr.ph.1
                                        #   in Loop: Header=BB10_33 Depth=1
	ldptr.d	$a7, $fp, 5560
	ldx.d	$a7, $a7, $a3
	ld.d	$t0, $a7, 8
	move	$t1, $a1
	.p2align	4, , 16
.LBB10_38:                              #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $t0, 0
	ldptr.w	$a7, $fp, 5924
	addi.w	$t2, $a7, 3
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	blt	$t1, $t2, .LBB10_38
# %bb.39:                               # %._crit_edge.1
                                        #   in Loop: Header=BB10_33 Depth=1
	blt	$a7, $a0, .LBB10_31
# %bb.40:                               # %.lr.ph.2
                                        #   in Loop: Header=BB10_33 Depth=1
	ldptr.d	$a7, $fp, 5560
	ldx.d	$a7, $a7, $a3
	ld.d	$t0, $a7, 16
	move	$t1, $a1
	.p2align	4, , 16
.LBB10_41:                              #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $t0, 0
	ldptr.w	$a7, $fp, 5924
	addi.w	$t2, $a7, 3
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	blt	$t1, $t2, .LBB10_41
# %bb.42:                               # %._crit_edge.2
                                        #   in Loop: Header=BB10_33 Depth=1
	blt	$a7, $a0, .LBB10_31
# %bb.43:                               # %.lr.ph.3
                                        #   in Loop: Header=BB10_33 Depth=1
	ldptr.d	$a7, $fp, 5560
	ldx.d	$a3, $a7, $a3
	ld.d	$a3, $a3, 24
	move	$t0, $a1
	.p2align	4, , 16
.LBB10_44:                              #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a4, $a3, 0
	ldx.w	$a7, $fp, $a5
	addi.w	$t1, $a7, 3
	addi.d	$t0, $t0, 1
	addi.d	$a3, $a3, 4
	blt	$t0, $t1, .LBB10_44
	b	.LBB10_31
.LBB10_45:                              # %._crit_edge137
	ld.d	$a0, $s4, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 1148
	beqz	$a0, .LBB10_49
# %bb.46:                               # %.preheader
	blez	$a3, .LBB10_59
# %bb.47:                               # %.lr.ph139
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB10_48:                              # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a0, 0
	ldptr.w	$a3, $fp, 5836
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	blt	$a1, $a3, .LBB10_48
.LBB10_49:                              # %.loopexit
	blez	$a3, .LBB10_59
# %bb.50:                               # %.lr.ph142
	ldptr.d	$a1, $fp, 5600
	ori	$a0, $zero, 1
	bne	$a3, $a0, .LBB10_54
# %bb.51:
	move	$a2, $zero
	b	.LBB10_57
.LBB10_52:
	ori	$a0, $s2, 1576
	ldx.w	$a0, $fp, $a0
	ld.d	$a1, $s3, %pc_lo12(dec_picture)
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 5
	st.w	$zero, $fp, 12
	blt	$a0, $a1, .LBB10_28
	b	.LBB10_27
.LBB10_53:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 235
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 5
	st.w	$zero, $fp, 12
	bge	$a0, $a1, .LBB10_27
	b	.LBB10_28
.LBB10_54:                              # %vector.ph
	bstrpick.d	$a2, $a3, 30, 1
	slli.d	$a2, $a2, 1
	addi.d	$a4, $a1, 420
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a6, $a2
	.p2align	4, , 16
.LBB10_55:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a4, -408
	st.w	$a5, $a4, 0
	st.w	$a0, $a4, -84
	st.w	$a0, $a4, 324
	addi.d	$a6, $a6, -2
	addi.d	$a4, $a4, 816
	bnez	$a6, .LBB10_55
# %bb.56:                               # %middle.block
	beq	$a2, $a3, .LBB10_59
.LBB10_57:                              # %scalar.ph.preheader
	ori	$a4, $zero, 408
	mul.d	$a4, $a2, $a4
	add.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 336
	sub.d	$a2, $a3, $a2
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB10_58:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a1, -324
	st.w	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 408
	bnez	$a2, .LBB10_58
.LBB10_59:                              # %._crit_edge143
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 84
	ld.d	$a1, $s3, %pc_lo12(dec_picture)
	ld.w	$a2, $fp, 44
	vst	$vr0, $fp, 68
	ori	$a3, $s0, 1432
	add.d	$a0, $a1, $a3
	st.w	$a2, $a0, 200
	ldptr.w	$a2, $fp, 5808
	ori	$a4, $s2, 1708
	ldx.w	$a4, $fp, $a4
	ori	$a5, $s2, 1752
	ldx.w	$a5, $fp, $a5
	sltu	$a2, $zero, $a2
	st.w	$a2, $a0, 24
	st.w	$a4, $a0, 204
	st.w	$a5, $a0, 208
	ldptr.d	$a2, $fp, 5852
	st.d	$a2, $a0, 212
	ldptr.d	$a2, $fp, 5632
	ldptr.w	$a4, $fp, 5624
	ori	$a5, $s2, 1724
	ldx.w	$a5, $fp, $a5
	st.d	$a2, $a0, 264
	stptr.d	$zero, $fp, 5632
	st.w	$a4, $a0, 80
	st.w	$a5, $a0, 84
	sltui	$a2, $a4, 1
	pcalau12i	$a4, %got_pc_hi20(get_mb_block_pos_mbaff)
	ld.d	$a4, $a4, %got_pc_lo12(get_mb_block_pos_mbaff)
	masknez	$a4, $a4, $a2
	pcalau12i	$a5, %got_pc_hi20(get_mb_block_pos_normal)
	ld.d	$a5, $a5, %got_pc_lo12(get_mb_block_pos_normal)
	maskeqz	$a5, $a5, $a2
	or	$a4, $a5, $a4
	pcalau12i	$a5, %pc_hi20(get_mb_block_pos)
	st.d	$a4, $a5, %pc_lo12(get_mb_block_pos)
	pcalau12i	$a4, %got_pc_hi20(getAffNeighbour)
	ld.d	$a4, $a4, %got_pc_lo12(getAffNeighbour)
	masknez	$a4, $a4, $a2
	pcalau12i	$a5, %got_pc_hi20(getNonAffNeighbour)
	ld.d	$a5, $a5, %got_pc_lo12(getNonAffNeighbour)
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	ldptr.w	$a4, $fp, 5676
	pcalau12i	$a5, %pc_hi20(getNeighbour)
	ldptr.w	$a6, $fp, 6100
	st.d	$a2, $a5, %pc_lo12(getNeighbour)
	st.w	$a4, $a0, 8
	stx.w	$a4, $a1, $a3
	xor	$a2, $a4, $a6
	ldptr.w	$a3, $fp, 5584
	ld.d	$a1, $s1, %pc_lo12(active_sps)
	sltui	$a2, $a2, 1
	st.w	$a2, $a0, 4
	sltui	$a2, $a3, 1
	ld.w	$a3, $a1, 32
	ori	$a4, $zero, 2076
	ldx.w	$a4, $a1, $a4
	ldptr.w	$a5, $a1, 2088
	st.w	$a2, $a0, 76
	st.w	$a3, $a0, 220
	st.w	$a4, $a0, 224
	st.w	$a5, $a0, 228
	beqz	$a5, .LBB10_61
# %bb.60:
	ori	$a2, $zero, 2092
	vldx	$vr0, $a1, $a2
	vst	$vr0, $a0, 232
.LBB10_61:
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
.LBB10_62:
	ldptr.w	$a2, $s0, 3020
	beqz	$a2, .LBB10_65
# %bb.63:
	bgeu	$a0, $a1, .LBB10_66
# %bb.64:
	ori	$a0, $zero, 1
	stptr.w	$a0, $fp, 6068
	stptr.w	$a0, $fp, 6080
	move	$a0, $fp
	pcaddu18i	$ra, %call36(conceal_lost_frames)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3020
	ldx.w	$a0, $s0, $a0
	stptr.w	$a0, $fp, 6068
	b	.LBB10_10
.LBB10_65:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB10_10
.LBB10_66:
	stptr.w	$a2, $fp, 6068
	stptr.w	$zero, $fp, 6080
	move	$a0, $fp
	pcaddu18i	$ra, %call36(conceal_lost_frames)
	jirl	$ra, $ra, 0
	b	.LBB10_10
.Lfunc_end10:
	.size	init_picture, .Lfunc_end10-init_picture
                                        # -- End function
	.globl	exit_picture                    # -- Begin function exit_picture
	.p2align	5
	.type	exit_picture,@function
exit_picture:                           # @exit_picture
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
	pcalau12i	$s4, %pc_hi20(dec_picture)
	ld.d	$a1, $s4, %pc_lo12(dec_picture)
	beqz	$a1, .LBB11_42
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(DeblockPicture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(dec_picture)
	lu12i.w	$s7, 77
	ori	$fp, $s7, 1512
	ldx.w	$a1, $a0, $fp
	beqz	$a1, .LBB11_3
# %bb.2:
	pcaddu18i	$ra, %call36(MbAffPostProc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(dec_picture)
.LBB11_3:
	add.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 16
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 140
	st.d	$a1, $sp, 48
	beqz	$a2, .LBB11_5
# %bb.4:
	ld.d	$a1, $a0, 24
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 8
	st.d	$a2, $sp, 56
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 64
.LBB11_5:
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB11_21
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(erc_errorVar)
	ld.d	$s3, $a0, %got_pc_lo12(erc_errorVar)
	ld.d	$a3, $s3, 0
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(ercStartSegment)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(dec_picture)
	ori	$s5, $s7, 1520
	ldx.w	$a2, $a0, $s5
	ori	$a1, $zero, 2
	bltu	$a2, $a1, .LBB11_14
# %bb.7:                                # %.lr.ph.preheader
	ld.d	$a1, $s2, 0
	move	$s6, $zero
	move	$s1, $zero
	move	$fp, $zero
	ori	$s0, $zero, 1
	ori	$s8, $s7, 1472
	b	.LBB11_11
.LBB11_8:                               #   in Loop: Header=BB11_11 Depth=1
	pcaddu18i	$ra, %call36(ercMarkCurrSegmentOK)
	jirl	$ra, $ra, 0
.LBB11_9:                               #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a3, $s3, 0
	addi.w	$fp, $fp, 1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(ercStartSegment)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s4, %pc_lo12(dec_picture)
.LBB11_10:                              #   in Loop: Header=BB11_11 Depth=1
	ldx.wu	$a2, $a0, $s5
	addi.d	$s7, $s1, 1
	addi.w	$s0, $s0, 1
	addi.d	$a3, $s1, 2
	addi.d	$s6, $s6, 408
	move	$s1, $s7
	bgeu	$a3, $a2, .LBB11_15
.LBB11_11:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a2, $a1, 5600
	add.d	$a2, $a2, $s6
	ld.w	$a3, $a2, 744
	ld.w	$a2, $a2, 336
	beq	$a3, $a2, .LBB11_10
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a3, $s3, 0
	addi.w	$a0, $s0, -1
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(ercStopSegment)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 5600
	ld.d	$a1, $s4, %pc_lo12(dec_picture)
	add.d	$a0, $a0, $s6
	ld.w	$a2, $a0, 336
	ldx.w	$a0, $a1, $s8
	ld.d	$a1, $s3, 0
	beqz	$a2, .LBB11_8
# %bb.13:                               #   in Loop: Header=BB11_11 Depth=1
	pcaddu18i	$ra, %call36(ercMarkCurrSegmentLost)
	jirl	$ra, $ra, 0
	b	.LBB11_9
.LBB11_14:
	move	$s7, $zero
	move	$fp, $zero
.LBB11_15:                              # %._crit_edge
	ld.d	$a3, $s3, 0
	addi.w	$a0, $a2, -1
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(ercStopSegment)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 5600
	ori	$a1, $zero, 408
	mul.d	$a1, $s7, $a1
	ld.d	$a2, $s4, %pc_lo12(dec_picture)
	add.d	$a0, $a0, $a1
	ld.w	$a3, $a0, 336
	lu12i.w	$s7, 77
	ori	$fp, $s7, 1472
	ldx.w	$a0, $a2, $fp
	ld.d	$a1, $s3, 0
	beqz	$a3, .LBB11_17
# %bb.16:
	pcaddu18i	$ra, %call36(ercMarkCurrSegmentLost)
	jirl	$ra, $ra, 0
	b	.LBB11_18
.LBB11_17:
	pcaddu18i	$ra, %call36(ercMarkCurrSegmentOK)
	jirl	$ra, $ra, 0
.LBB11_18:
	ld.d	$a0, $s4, %pc_lo12(dec_picture)
	add.d	$a0, $a0, $fp
	ld.w	$a1, $a0, 48
	pcalau12i	$a2, %got_pc_hi20(erc_mvperMB)
	ld.d	$a2, $a2, %got_pc_lo12(erc_mvperMB)
	ld.w	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	div.wu	$a1, $a3, $a1
	st.w	$a1, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(erc_img)
	ld.d	$a2, $a1, %got_pc_lo12(erc_img)
	ld.w	$a1, $a0, 160
	ori	$a3, $zero, 4
	st.d	$a4, $a2, 0
	beq	$a1, $a3, .LBB11_20
# %bb.19:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB11_31
.LBB11_20:
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 4
	ld.d	$a3, $s3, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(ercConcealIntraFrame)
	jirl	$ra, $ra, 0
.LBB11_21:
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 5584
	beqz	$a1, .LBB11_23
.LBB11_22:
	ld.wu	$a1, $a0, 0
	srli.d	$a2, $a1, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
.LBB11_23:
	ld.d	$a0, $s4, %pc_lo12(dec_picture)
	ori	$a1, $s7, 1440
	add.d	$a2, $a0, $a1
	ld.w	$s7, $a0, 0
	ld.w	$s3, $a2, 192
	ld.w	$s1, $a0, 16
	ld.w	$s5, $a2, 16
	ld.w	$fp, $a2, 240
	ldx.w	$s0, $a0, $a1
	ld.w	$s6, $a2, 212
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 5860
	st.d	$zero, $s4, %pc_lo12(dec_picture)
	beqz	$a1, .LBB11_25
# %bb.24:
	stptr.w	$zero, $a0, 5660
.LBB11_25:
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a1, $s7, $a1
	addi.w	$a1, $a1, 0
	bnez	$a1, .LBB11_41
# %bb.26:
	lu12i.w	$s4, 1
	ori	$a1, $s4, 1944
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ori	$a1, $s4, 1920
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s6, 2
	alsl.d	$a0, $s6, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L__const.exit_picture.yuv_types)
	addi.d	$a1, $a1, %pc_lo12(.L__const.exit_picture.yuv_types)
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 38
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3016
	beqz	$a0, .LBB11_28
# %bb.27:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(snr)
	ld.d	$a1, $a1, %got_pc_lo12(snr)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB11_36
.LBB11_28:
	ori	$a0, $zero, 4
	bltu	$a0, $s3, .LBB11_43
# %bb.29:
	slli.d	$a0, $s3, 2
	pcalau12i	$a1, %pc_hi20(.LJTI11_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI11_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB11_30:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(frame_no)
	ld.w	$a2, $a1, %pc_lo12(frame_no)
	pcalau12i	$a1, %got_pc_hi20(snr)
	ld.d	$a1, $a1, %got_pc_lo12(snr)
	ld.d	$a1, $a1, 0
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 38
	st.d	$a1, $sp, 8
	fst.d	$fa2, $sp, 0
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a7, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	b	.LBB11_35
.LBB11_31:
	pcalau12i	$a1, %got_pc_hi20(erc_object_list)
	ld.d	$a1, $a1, %got_pc_lo12(erc_object_list)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ld.d	$a4, $s3, 0
	ld.w	$a5, $a0, 180
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(ercConcealInterFrame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 5584
	bnez	$a1, .LBB11_22
	b	.LBB11_23
.LBB11_32:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(frame_no)
	ld.w	$a2, $a1, %pc_lo12(frame_no)
	pcalau12i	$a1, %got_pc_hi20(snr)
	ld.d	$a1, $a1, %got_pc_lo12(snr)
	ld.d	$a1, $a1, 0
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 38
	st.d	$a1, $sp, 8
	fst.d	$fa2, $sp, 0
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a7, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	b	.LBB11_35
.LBB11_33:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(frame_no)
	ld.w	$a2, $a1, %pc_lo12(frame_no)
	pcalau12i	$a1, %got_pc_hi20(snr)
	ld.d	$a1, $a1, %got_pc_lo12(snr)
	ld.d	$a1, $a1, 0
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 38
	st.d	$a1, $sp, 8
	fst.d	$fa2, $sp, 0
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a7, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	b	.LBB11_35
.LBB11_34:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(frame_no)
	ld.w	$a2, $a1, %pc_lo12(frame_no)
	pcalau12i	$a1, %got_pc_hi20(snr)
	ld.d	$a1, $a1, %got_pc_lo12(snr)
	ld.d	$a1, $a1, 0
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 38
	st.d	$a1, $sp, 8
	fst.d	$fa2, $sp, 0
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a7, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
.LBB11_35:
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB11_36:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB11_39
# %bb.37:                               # %switch.early.test
	ori	$a0, $zero, 4
	bltu	$a0, $s3, .LBB11_46
.LBB11_38:                              # %switch.early.test
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s3
	andi	$a0, $a0, 21
	beqz	$a0, .LBB11_46
.LBB11_39:
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
.LBB11_40:
	pcalau12i	$a1, %got_pc_hi20(snr)
	ld.d	$a1, $a1, %got_pc_lo12(snr)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(g_nFrame)
	ld.w	$a2, $a1, %pc_lo12(g_nFrame)
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, %pc_lo12(g_nFrame)
.LBB11_41:
	lu12i.w	$a1, -2
	ori	$a1, $a1, 3480
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 4
	st.w	$zero, $a0, 12
.LBB11_42:
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
.LBB11_43:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(frame_no)
	ld.w	$a2, $a1, %pc_lo12(frame_no)
	pcalau12i	$a1, %got_pc_hi20(snr)
	ld.d	$a1, $a1, %got_pc_lo12(snr)
	ld.d	$a1, $a1, 0
	fld.s	$fa0, $a1, 4
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a1, 12
	fcvt.d.s	$fa1, $fa0
	fcvt.d.s	$fa0, $fa2
	fcvt.d.s	$fa2, $fa3
	beqz	$s5, .LBB11_45
# %bb.44:                               # %.thread
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 38
	st.d	$a1, $sp, 8
	fst.d	$fa2, $sp, 0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB11_39
.LBB11_45:                              # %.thread63
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 38
	st.d	$a1, $sp, 8
	fst.d	$fa2, $sp, 0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	bgeu	$a0, $s3, .LBB11_38
.LBB11_46:
	pcalau12i	$a1, %pc_hi20(Bframe_ctr)
	ld.w	$a2, $a1, %pc_lo12(Bframe_ctr)
	ld.d	$a0, $s2, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, %pc_lo12(Bframe_ctr)
	b	.LBB11_40
.Lfunc_end11:
	.size	exit_picture, .Lfunc_end11-exit_picture
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_30-.LJTI11_0
	.word	.LBB11_43-.LJTI11_0
	.word	.LBB11_33-.LJTI11_0
	.word	.LBB11_32-.LJTI11_0
	.word	.LBB11_34-.LJTI11_0
                                        # -- End function
	.text
	.globl	frame_postprocessing            # -- Begin function frame_postprocessing
	.p2align	5
	.type	frame_postprocessing,@function
frame_postprocessing:                   # @frame_postprocessing
# %bb.0:
	ret
.Lfunc_end12:
	.size	frame_postprocessing, .Lfunc_end12-frame_postprocessing
                                        # -- End function
	.globl	field_postprocessing            # -- Begin function field_postprocessing
	.p2align	5
	.type	field_postprocessing,@function
field_postprocessing:                   # @field_postprocessing
# %bb.0:
	ld.wu	$a1, $a0, 0
	srli.d	$a2, $a1, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	ret
.Lfunc_end13:
	.size	field_postprocessing, .Lfunc_end13-field_postprocessing
                                        # -- End function
	.globl	ercWriteMBMODEandMV             # -- Begin function ercWriteMBMODEandMV
	.p2align	5
	.type	ercWriteMBMODEandMV,@function
ercWriteMBMODEandMV:                    # @ercWriteMBMODEandMV
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(dec_picture)
	ld.d	$a1, $a1, %pc_lo12(dec_picture)
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1472
	ldx.w	$a3, $a1, $a2
	ld.w	$a4, $a0, 4
	add.d	$a1, $a1, $a2
	srai.d	$a2, $a3, 4
	addi.w	$a3, $a2, 0
	div.w	$a5, $a4, $a3
	mul.d	$a2, $a5, $a2
	ldptr.d	$a3, $a0, 5600
	sub.d	$a2, $a4, $a2
	ori	$a6, $zero, 408
	mul.d	$a6, $a4, $a6
	add.d	$a3, $a3, $a6
	pcalau12i	$a6, %got_pc_hi20(erc_object_list)
	ld.d	$a6, $a6, %got_pc_lo12(erc_object_list)
	ld.d	$t0, $a6, 0
	slli.w	$a4, $a4, 2
	slli.d	$a6, $a4, 4
	ld.w	$a7, $a0, 44
	alsl.d	$t1, $a4, $a6, 3
	ori	$a4, $zero, 1
	slli.w	$a0, $a2, 2
	slli.w	$a2, $a5, 2
	bne	$a7, $a4, .LBB14_8
# %bb.1:                                # %.preheader
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.d	$a7, $a3, 328
	add.d	$t0, $t1, $t0
	addi.d	$t0, $t0, 12
	ori	$t1, $zero, 10
	ori	$t2, $zero, 2
	ori	$t3, $zero, 4
	ori	$t4, $zero, 11
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_2:                               #   in Loop: Header=BB14_4 Depth=1
	ld.d	$t5, $a1, 88
	ld.d	$t6, $t5, 0
	andi	$t7, $a4, 2
	or	$fp, $t7, $a2
	slli.d	$t7, $fp, 3
	ldx.d	$t8, $t6, $t7
	andi	$t6, $a5, 2
	or	$t6, $t6, $a0
	ldx.bu	$t8, $t8, $t6
	ld.d	$s0, $a1, 112
	srli.d	$t8, $t8, 4
	andi	$t8, $t8, 8
	ldx.d	$s0, $s0, $t8
	ldx.d	$s1, $s0, $t7
	alsl.d	$fp, $fp, $s0, 3
	slli.d	$s0, $t6, 3
	ldx.d	$s2, $s1, $s0
	ld.d	$fp, $fp, 8
	ori	$s3, $t6, 1
	slli.d	$s3, $s3, 3
	ldx.d	$s1, $s1, $s3
	ldx.d	$s0, $fp, $s0
	ldx.d	$fp, $fp, $s3
	ld.h	$s3, $s2, 0
	ld.h	$s4, $s1, 0
	ld.h	$s5, $s0, 0
	ld.h	$s6, $fp, 0
	add.d	$s3, $s3, $s4
	add.d	$s3, $s3, $s5
	add.d	$s3, $s3, $s6
	addi.d	$s3, $s3, 2
	bstrpick.d	$s4, $s3, 62, 61
	add.d	$s3, $s3, $s4
	srai.d	$s3, $s3, 2
	addi.w	$s4, $s3, 0
	ld.h	$s2, $s2, 2
	ld.h	$s1, $s1, 2
	ld.h	$s0, $s0, 2
	ld.h	$fp, $fp, 2
	st.w	$s3, $t0, 0
	add.d	$s1, $s2, $s1
	add.d	$s0, $s1, $s0
	add.d	$fp, $s0, $fp
	addi.d	$fp, $fp, 2
	bstrpick.d	$s0, $fp, 62, 61
	add.d	$fp, $fp, $s0
	srai.d	$fp, $fp, 2
	addi.w	$s0, $fp, 0
	st.w	$fp, $t0, 4
	srai.d	$s1, $s4, 31
	xor	$s2, $s3, $s1
	sub.d	$s1, $s2, $s1
	srai.d	$s0, $s0, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	pcalau12i	$s0, %got_pc_hi20(erc_mvperMB)
	ld.d	$s0, $s0, %got_pc_lo12(erc_mvperMB)
	ldx.d	$t5, $t5, $t8
	ld.w	$t8, $s0, 0
	ldx.d	$t5, $t5, $t7
	add.d	$t7, $t8, $s1
	add.d	$t7, $t7, $fp
	st.w	$t7, $s0, 0
	ldx.b	$t5, $t5, $t6
.LBB14_3:                               #   in Loop: Header=BB14_4 Depth=1
	st.w	$t5, $t0, 8
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 1
	addi.d	$t0, $t0, 24
	beq	$a6, $t3, .LBB14_59
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $a3, 40
	bne	$t5, $t1, .LBB14_6
# %bb.5:                                # %.thread
                                        #   in Loop: Header=BB14_4 Depth=1
	st.b	$t2, $t0, -12
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_6:                               #   in Loop: Header=BB14_4 Depth=1
	ldx.bu	$t5, $a7, $a6
	addi.d	$t5, $t5, -11
	sltui	$t5, $t5, 1
	addi.d	$t5, $t5, 5
	st.b	$t5, $t0, -12
	ldx.bu	$t5, $a7, $a6
	bne	$t5, $t4, .LBB14_2
.LBB14_7:                               #   in Loop: Header=BB14_4 Depth=1
	move	$t5, $zero
	st.d	$zero, $t0, 0
	b	.LBB14_3
.LBB14_8:                               # %.preheader133
	ld.w	$a6, $a3, 40
	add.d	$a4, $t0, $t1
	ori	$a7, $zero, 10
	ori	$a5, $zero, 2
	beq	$a6, $a7, .LBB14_12
# %bb.9:
	ld.bu	$a6, $a3, 328
	beqz	$a6, .LBB14_17
# %bb.10:
	ori	$a7, $zero, 11
	ori	$a5, $zero, 6
	beq	$a6, $a7, .LBB14_12
# %bb.11:
	addi.d	$a5, $a6, -1
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 5
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 1
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
.LBB14_12:
	st.b	$a5, $a4, 0
	ld.bu	$t2, $a3, 328
	ori	$a5, $zero, 11
	beq	$t2, $a5, .LBB14_14
.LBB14_13:
	bnez	$t2, .LBB14_15
.LBB14_14:
	move	$a5, $zero
	st.d	$zero, $a4, 12
	b	.LBB14_20
.LBB14_15:
	ld.d	$a5, $a1, 112
	ld.d	$t3, $a5, 0
	slli.d	$a5, $a2, 3
	ldx.d	$t0, $t3, $a5
	slli.d	$t1, $a0, 3
	ldx.d	$a7, $t0, $t1
	ld.h	$a6, $a7, 0
	addi.d	$t2, $t2, -5
	ori	$t4, $zero, 2
	bltu	$t4, $t2, .LBB14_18
# %bb.16:
	alsl.d	$t2, $a2, $t3, 3
	ld.d	$t2, $t2, 8
	ori	$t3, $a0, 1
	slli.d	$t3, $t3, 3
	ldx.d	$t0, $t0, $t3
	ldx.d	$t1, $t2, $t1
	ldx.d	$t2, $t2, $t3
	ld.h	$t3, $t0, 0
	ld.h	$t4, $t1, 0
	ld.h	$t5, $t2, 0
	add.d	$a6, $a6, $t3
	add.d	$a6, $a6, $t4
	add.d	$a6, $a6, $t5
	addi.d	$a6, $a6, 2
	bstrpick.d	$t3, $a6, 62, 61
	add.d	$a6, $a6, $t3
	ld.h	$a7, $a7, 2
	ld.h	$t0, $t0, 2
	ld.h	$t1, $t1, 2
	ld.h	$t2, $t2, 2
	srai.d	$a6, $a6, 2
	add.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $t2
	addi.d	$a7, $a7, 2
	bstrpick.d	$t0, $a7, 62, 61
	add.d	$a7, $a7, $t0
	srai.d	$a7, $a7, 2
	b	.LBB14_19
.LBB14_17:                              # %.fold.split
	move	$a5, $zero
	st.b	$a5, $a4, 0
	ld.bu	$t2, $a3, 328
	ori	$a5, $zero, 11
	bne	$t2, $a5, .LBB14_13
	b	.LBB14_14
.LBB14_18:
	ld.h	$a7, $a7, 2
.LBB14_19:
	st.w	$a6, $a4, 12
	addi.w	$t0, $a6, 0
	st.w	$a7, $a4, 16
	addi.w	$t1, $a7, 0
	srai.d	$t0, $t0, 31
	xor	$a6, $a6, $t0
	sub.d	$a6, $a6, $t0
	srai.d	$t0, $t1, 31
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a7, $a6
	pcalau12i	$a7, %got_pc_hi20(erc_mvperMB)
	ld.d	$a7, $a7, %got_pc_lo12(erc_mvperMB)
	ld.d	$t0, $a1, 88
	ld.d	$t0, $t0, 0
	ld.w	$t1, $a7, 0
	ldx.d	$a5, $t0, $a5
	add.d	$a6, $a6, $t1
	st.w	$a6, $a7, 0
	ldx.b	$a5, $a5, $a0
.LBB14_20:
	st.w	$a5, $a4, 20
	ld.w	$a6, $a3, 40
	ori	$a7, $zero, 10
	ori	$a5, $zero, 2
	beq	$a6, $a7, .LBB14_25
# %bb.21:
	ld.bu	$a5, $a3, 329
	ori	$a6, $zero, 11
	beq	$a5, $a6, .LBB14_24
# %bb.22:
	bnez	$a5, .LBB14_30
# %bb.23:                               # %.fold.split.1
	move	$a5, $zero
	st.b	$a5, $a4, 24
	ld.bu	$t1, $a3, 329
	ori	$a5, $zero, 11
	bne	$t1, $a5, .LBB14_26
	b	.LBB14_27
.LBB14_24:
	ori	$a5, $zero, 6
.LBB14_25:
	st.b	$a5, $a4, 24
	ld.bu	$t1, $a3, 329
	ori	$a5, $zero, 11
	beq	$t1, $a5, .LBB14_27
.LBB14_26:
	bnez	$t1, .LBB14_28
.LBB14_27:
	move	$a5, $zero
	st.d	$zero, $a4, 36
	b	.LBB14_33
.LBB14_28:
	ld.d	$a5, $a1, 112
	ld.d	$t4, $a5, 0
	slli.d	$a6, $a2, 3
	ldx.d	$t2, $t4, $a6
	addi.d	$a5, $a0, 2
	slli.d	$t3, $a5, 3
	ldx.d	$t0, $t2, $t3
	ld.h	$a7, $t0, 0
	addi.d	$t1, $t1, -5
	ori	$t5, $zero, 3
	bgeu	$t1, $t5, .LBB14_31
# %bb.29:
	alsl.d	$t1, $a2, $t4, 3
	ld.d	$t1, $t1, 8
	ori	$t4, $a0, 3
	slli.d	$t4, $t4, 3
	ldx.d	$t2, $t2, $t4
	ldx.d	$t3, $t1, $t3
	ldx.d	$t1, $t1, $t4
	ld.h	$t4, $t2, 0
	ld.h	$t5, $t3, 0
	ld.h	$t6, $t1, 0
	add.d	$a7, $a7, $t4
	add.d	$a7, $a7, $t5
	add.d	$a7, $a7, $t6
	addi.d	$a7, $a7, 2
	bstrpick.d	$t4, $a7, 62, 61
	add.d	$a7, $a7, $t4
	ld.h	$t0, $t0, 2
	ld.h	$t2, $t2, 2
	ld.h	$t3, $t3, 2
	ld.h	$t1, $t1, 2
	srai.d	$a7, $a7, 2
	add.d	$t0, $t0, $t2
	add.d	$t0, $t0, $t3
	add.d	$t0, $t0, $t1
	addi.d	$t0, $t0, 2
	bstrpick.d	$t1, $t0, 62, 61
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 2
	b	.LBB14_32
.LBB14_30:
	addi.d	$a5, $a5, -1
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 5
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 1
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	st.b	$a5, $a4, 24
	ld.bu	$t1, $a3, 329
	ori	$a5, $zero, 11
	bne	$t1, $a5, .LBB14_26
	b	.LBB14_27
.LBB14_31:
	ld.h	$t0, $t0, 2
.LBB14_32:
	st.w	$a7, $a4, 36
	addi.w	$t1, $a7, 0
	st.w	$t0, $a4, 40
	addi.w	$t2, $t0, 0
	srai.d	$t1, $t1, 31
	xor	$a7, $a7, $t1
	sub.d	$a7, $a7, $t1
	srai.d	$t1, $t2, 31
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	add.d	$a7, $t0, $a7
	pcalau12i	$t0, %got_pc_hi20(erc_mvperMB)
	ld.d	$t0, $t0, %got_pc_lo12(erc_mvperMB)
	ld.d	$t1, $a1, 88
	ld.d	$t1, $t1, 0
	ld.w	$t2, $t0, 0
	ldx.d	$a6, $t1, $a6
	add.d	$a7, $a7, $t2
	st.w	$a7, $t0, 0
	ldx.b	$a5, $a6, $a5
.LBB14_33:
	st.w	$a5, $a4, 44
	ld.w	$a6, $a3, 40
	ori	$a7, $zero, 10
	ori	$a5, $zero, 2
	beq	$a6, $a7, .LBB14_38
# %bb.34:
	ld.bu	$a5, $a3, 330
	ori	$a6, $zero, 11
	beq	$a5, $a6, .LBB14_37
# %bb.35:
	bnez	$a5, .LBB14_43
# %bb.36:                               # %.fold.split.2
	move	$a5, $zero
	st.b	$a5, $a4, 48
	ld.bu	$t0, $a3, 330
	ori	$a5, $zero, 11
	bne	$t0, $a5, .LBB14_39
	b	.LBB14_40
.LBB14_37:
	ori	$a5, $zero, 6
.LBB14_38:
	st.b	$a5, $a4, 48
	ld.bu	$t0, $a3, 330
	ori	$a5, $zero, 11
	beq	$t0, $a5, .LBB14_40
.LBB14_39:
	bnez	$t0, .LBB14_41
.LBB14_40:
	move	$a5, $zero
	st.d	$zero, $a4, 60
	b	.LBB14_46
.LBB14_41:
	ld.d	$a5, $a1, 112
	ld.d	$t3, $a5, 0
	ori	$t4, $a2, 2
	slli.d	$a5, $t4, 3
	ldx.d	$t1, $t3, $a5
	slli.d	$t2, $a0, 3
	ldx.d	$a7, $t1, $t2
	ld.h	$a6, $a7, 0
	addi.d	$t0, $t0, -5
	ori	$t5, $zero, 3
	bgeu	$t0, $t5, .LBB14_44
# %bb.42:
	alsl.d	$t0, $t4, $t3, 3
	ld.d	$t0, $t0, 8
	ori	$t3, $a0, 1
	slli.d	$t3, $t3, 3
	ldx.d	$t1, $t1, $t3
	ldx.d	$t2, $t0, $t2
	ldx.d	$t0, $t0, $t3
	ld.h	$t3, $t1, 0
	ld.h	$t4, $t2, 0
	ld.h	$t5, $t0, 0
	add.d	$a6, $a6, $t3
	add.d	$a6, $a6, $t4
	add.d	$a6, $a6, $t5
	addi.d	$a6, $a6, 2
	bstrpick.d	$t3, $a6, 62, 61
	add.d	$a6, $a6, $t3
	ld.h	$a7, $a7, 2
	ld.h	$t1, $t1, 2
	ld.h	$t2, $t2, 2
	ld.h	$t0, $t0, 2
	srai.d	$a6, $a6, 2
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $t2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 2
	bstrpick.d	$t0, $a7, 62, 61
	add.d	$a7, $a7, $t0
	srai.d	$a7, $a7, 2
	b	.LBB14_45
.LBB14_43:
	addi.d	$a5, $a5, -1
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 5
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 1
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	st.b	$a5, $a4, 48
	ld.bu	$t0, $a3, 330
	ori	$a5, $zero, 11
	bne	$t0, $a5, .LBB14_39
	b	.LBB14_40
.LBB14_44:
	ld.h	$a7, $a7, 2
.LBB14_45:
	st.w	$a6, $a4, 60
	addi.w	$t0, $a6, 0
	st.w	$a7, $a4, 64
	addi.w	$t1, $a7, 0
	srai.d	$t0, $t0, 31
	xor	$a6, $a6, $t0
	sub.d	$a6, $a6, $t0
	srai.d	$t0, $t1, 31
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a7, $a6
	pcalau12i	$a7, %got_pc_hi20(erc_mvperMB)
	ld.d	$a7, $a7, %got_pc_lo12(erc_mvperMB)
	ld.d	$t0, $a1, 88
	ld.d	$t0, $t0, 0
	ld.w	$t1, $a7, 0
	ldx.d	$a5, $t0, $a5
	add.d	$a6, $a6, $t1
	st.w	$a6, $a7, 0
	ldx.b	$a5, $a5, $a0
.LBB14_46:
	st.w	$a5, $a4, 68
	ld.w	$a6, $a3, 40
	ori	$a7, $zero, 10
	ori	$a5, $zero, 2
	beq	$a6, $a7, .LBB14_51
# %bb.47:
	ld.bu	$a5, $a3, 331
	ori	$a6, $zero, 11
	beq	$a5, $a6, .LBB14_50
# %bb.48:
	bnez	$a5, .LBB14_56
# %bb.49:                               # %.fold.split.3
	move	$a5, $zero
	st.b	$a5, $a4, 72
	ld.bu	$a7, $a3, 331
	ori	$a3, $zero, 11
	bne	$a7, $a3, .LBB14_52
	b	.LBB14_53
.LBB14_50:
	ori	$a5, $zero, 6
.LBB14_51:
	st.b	$a5, $a4, 72
	ld.bu	$a7, $a3, 331
	ori	$a3, $zero, 11
	beq	$a7, $a3, .LBB14_53
.LBB14_52:
	bnez	$a7, .LBB14_54
.LBB14_53:
	st.d	$zero, $a4, 84
	st.w	$zero, $a4, 92
	b	.LBB14_59
.LBB14_54:
	ld.d	$a3, $a1, 112
	ld.d	$t2, $a3, 0
	ori	$t3, $a2, 2
	slli.d	$a3, $t3, 3
	ldx.d	$t0, $t2, $a3
	addi.d	$a2, $a0, 2
	slli.d	$t1, $a2, 3
	ldx.d	$a6, $t0, $t1
	ld.h	$a5, $a6, 0
	addi.d	$a7, $a7, -5
	ori	$t4, $zero, 3
	bgeu	$a7, $t4, .LBB14_57
# %bb.55:
	alsl.d	$a7, $t3, $t2, 3
	ld.d	$a7, $a7, 8
	ori	$a0, $a0, 3
	slli.d	$a0, $a0, 3
	ldx.d	$t0, $t0, $a0
	ldx.d	$t1, $a7, $t1
	ldx.d	$a0, $a7, $a0
	ld.h	$a7, $t0, 0
	ld.h	$t2, $t1, 0
	ld.h	$t3, $a0, 0
	add.d	$a5, $a5, $a7
	add.d	$a5, $a5, $t2
	add.d	$a5, $a5, $t3
	addi.d	$a5, $a5, 2
	bstrpick.d	$a7, $a5, 62, 61
	add.d	$a5, $a5, $a7
	ld.h	$a6, $a6, 2
	ld.h	$a7, $t0, 2
	ld.h	$t0, $t1, 2
	ld.h	$a0, $a0, 2
	srai.d	$a5, $a5, 2
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	add.d	$a0, $a6, $a0
	addi.d	$a0, $a0, 2
	bstrpick.d	$a6, $a0, 62, 61
	add.d	$a0, $a0, $a6
	srai.d	$a0, $a0, 2
	b	.LBB14_58
.LBB14_56:
	addi.d	$a5, $a5, -1
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 5
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 1
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	st.b	$a5, $a4, 72
	ld.bu	$a7, $a3, 331
	ori	$a3, $zero, 11
	bne	$a7, $a3, .LBB14_52
	b	.LBB14_53
.LBB14_57:
	ld.h	$a0, $a6, 2
.LBB14_58:
	st.w	$a5, $a4, 84
	addi.w	$a6, $a5, 0
	st.w	$a0, $a4, 88
	addi.w	$a7, $a0, 0
	srai.d	$a6, $a6, 31
	xor	$a5, $a5, $a6
	sub.d	$a5, $a5, $a6
	srai.d	$a6, $a7, 31
	xor	$a0, $a0, $a6
	sub.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a5
	pcalau12i	$a5, %got_pc_hi20(erc_mvperMB)
	ld.d	$a5, $a5, %got_pc_lo12(erc_mvperMB)
	ld.d	$a1, $a1, 88
	ld.d	$a1, $a1, 0
	ld.w	$a6, $a5, 0
	ldx.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a6
	st.w	$a0, $a5, 0
	ldx.b	$a0, $a1, $a2
	st.w	$a0, $a4, 92
.LBB14_59:                              # %.loopexit
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	ercWriteMBMODEandMV, .Lfunc_end14-ercWriteMBMODEandMV
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_old_slice
.LCPI15_0:
	.word	2147483647                      # 0x7fffffff
	.word	2147483647                      # 0x7fffffff
	.word	4294967295                      # 0xffffffff
	.word	2147483647                      # 0x7fffffff
	.text
	.globl	init_old_slice
	.p2align	5
	.type	init_old_slice,@function
init_old_slice:                         # @init_old_slice
# %bb.0:
	pcalau12i	$a0, %pc_hi20(old_slice)
	addi.d	$a0, $a0, %pc_lo12(old_slice)
	st.w	$zero, $a0, 0
	lu12i.w	$a1, 524287
	pcalau12i	$a2, %pc_hi20(.LCPI15_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI15_0)
	ori	$a1, $a1, 4095
	st.w	$a1, $a0, 40
	st.w	$zero, $a0, 32
	vst	$vr0, $a0, 8
	bstrins.d	$a1, $a1, 62, 32
	st.d	$a1, $a0, 24
	ret
.Lfunc_end15:
	.size	init_old_slice, .Lfunc_end15-init_old_slice
                                        # -- End function
	.globl	exit_slice                      # -- Begin function exit_slice
	.p2align	5
	.type	exit_slice,@function
exit_slice:                             # @exit_slice
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 5592
	ld.w	$a3, $a1, 148
	pcalau12i	$a1, %pc_hi20(old_slice)
	addi.d	$a1, $a1, %pc_lo12(old_slice)
	lu12i.w	$a2, 1
	ori	$a4, $a2, 1580
	ldx.w	$a4, $a0, $a4
	ldptr.w	$a5, $a0, 5680
	st.w	$a3, $a1, 40
	st.w	$a4, $a1, 8
	st.w	$a5, $a1, 0
	beqz	$a5, .LBB16_2
# %bb.1:
	ori	$a3, $a2, 1588
	ldx.w	$a3, $a0, $a3
	st.w	$a3, $a1, 4
.LBB16_2:
	ori	$a3, $a2, 1712
	ldx.w	$a3, $a0, $a3
	ldptr.w	$a4, $a0, 5804
	st.w	$a3, $a1, 12
	st.w	$a4, $a1, 32
	beqz	$a4, .LBB16_4
# %bb.3:
	ori	$a2, $a2, 1716
	ldx.w	$a2, $a0, $a2
	st.w	$a2, $a1, 36
.LBB16_4:
	pcalau12i	$a2, %pc_hi20(active_sps)
	ld.d	$a2, $a2, %pc_lo12(active_sps)
	ld.w	$a2, $a2, 1012
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB16_7
# %bb.5:
	bnez	$a2, .LBB16_8
# %bb.6:                                # %.thread
	ldptr.d	$a0, $a0, 5688
	st.d	$a0, $a1, 16
	ret
.LBB16_7:
	ldptr.d	$a0, $a0, 5696
	st.d	$a0, $a1, 24
.LBB16_8:
	ret
.Lfunc_end16:
	.size	exit_slice, .Lfunc_end16-exit_slice
                                        # -- End function
	.globl	is_new_picture                  # -- Begin function is_new_picture
	.p2align	5
	.type	is_new_picture,@function
is_new_picture:                         # @is_new_picture
# %bb.0:
	pcalau12i	$a0, %pc_hi20(dec_picture)
	ld.d	$a0, $a0, %pc_lo12(dec_picture)
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(old_slice)
	addi.d	$a2, $a1, %pc_lo12(old_slice)
	ld.w	$a3, $a2, 40
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$a4, $a1, 5592
	ld.w	$a4, $a4, 148
	ld.w	$a5, $a2, 8
	ldptr.w	$a6, $a1, 5676
	xor	$a3, $a3, $a4
	sltu	$a4, $zero, $a3
	xor	$a5, $a5, $a6
	ld.w	$a3, $a2, 0
	ldptr.w	$a6, $a1, 5680
	sltu	$a5, $zero, $a5
	or	$a4, $a4, $a5
	or	$a0, $a4, $a0
	xor	$a4, $a3, $a6
	sltu	$a4, $zero, $a4
	or	$a0, $a0, $a4
	beqz	$a6, .LBB17_3
# %bb.1:
	beqz	$a3, .LBB17_3
# %bb.2:
	ld.w	$a3, $a2, 4
	ldptr.w	$a4, $a1, 5684
	xor	$a3, $a3, $a4
	sltu	$a3, $zero, $a3
	or	$a0, $a0, $a3
.LBB17_3:
	ld.w	$a4, $a2, 12
	ldptr.w	$a3, $a1, 5808
	bne	$a4, $a3, .LBB17_5
# %bb.4:
	move	$a3, $zero
	b	.LBB17_8
.LBB17_5:
	beqz	$a4, .LBB17_7
# %bb.6:
	sltui	$a3, $a3, 1
	b	.LBB17_8
.LBB17_7:
	ori	$a3, $zero, 1
.LBB17_8:
	ld.w	$a4, $a2, 32
	ldptr.w	$a5, $a1, 5804
	or	$a0, $a3, $a0
	xor	$a3, $a4, $a5
	sltu	$a3, $zero, $a3
	or	$a0, $a0, $a3
	beqz	$a5, .LBB17_11
# %bb.9:
	beqz	$a4, .LBB17_11
# %bb.10:
	ld.w	$a3, $a2, 36
	ldptr.w	$a4, $a1, 5812
	xor	$a3, $a3, $a4
	sltu	$a3, $zero, $a3
	or	$a0, $a0, $a3
.LBB17_11:
	pcalau12i	$a3, %pc_hi20(active_sps)
	ld.d	$a3, $a3, %pc_lo12(active_sps)
	ld.w	$a3, $a3, 1012
	lu12i.w	$a5, 1
	beqz	$a3, .LBB17_14
# %bb.12:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB17_16
# %bb.13:
	addi.d	$a3, $a2, 28
	addi.d	$a4, $a2, 24
	ori	$a2, $a5, 1604
	ori	$a5, $a5, 1600
	b	.LBB17_15
.LBB17_14:
	addi.d	$a3, $a2, 20
	addi.d	$a4, $a2, 16
	ori	$a2, $a5, 1596
	ori	$a5, $a5, 1592
.LBB17_15:                              # %.sink.split
	ld.w	$a4, $a4, 0
	ldx.w	$a5, $a1, $a5
	ld.w	$a3, $a3, 0
	ldx.w	$a1, $a1, $a2
	xor	$a2, $a4, $a5
	sltu	$a2, $zero, $a2
	xor	$a1, $a3, $a1
	sltu	$a1, $zero, $a1
	or	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB17_16:
	ret
.Lfunc_end17:
	.size	is_new_picture, .Lfunc_end17-is_new_picture
                                        # -- End function
	.globl	decode_one_slice                # -- Begin function decode_one_slice
	.p2align	5
	.type	decode_one_slice,@function
decode_one_slice:                       # @decode_one_slice
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	stptr.w	$a0, $s0, 5576
	pcaddu18i	$ra, %call36(set_ref_pic_num)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 44
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB18_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(Co_located)
	ld.d	$a0, $a0, %got_pc_lo12(Co_located)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	pcaddu18i	$ra, %call36(compute_colocated)
	jirl	$ra, $ra, 0
.LBB18_2:
	pcalau12i	$s1, %pc_hi20(dec_picture)
	lu12i.w	$a0, 77
	ori	$s2, $a0, 1544
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_3:                               #   in Loop: Header=BB18_4 Depth=1
	ld.wu	$a0, $s0, 4
	andi	$a2, $a0, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(exit_macroblock)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_9
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(read_one_macroblock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(decode_one_macroblock)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s0, 5624
	beqz	$a0, .LBB18_7
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a0, $s1, %pc_lo12(dec_picture)
	ldx.d	$a0, $a0, $s2
	ld.wu	$a1, $s0, 4
	ldx.bu	$a0, $a0, $a1
	beqz	$a0, .LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=1
	ldptr.w	$a0, $s0, 5640
	ldptr.w	$a1, $s0, 5644
	srli.d	$a0, $a0, 1
	stptr.w	$a0, $s0, 5640
	srli.d	$a0, $a1, 1
	stptr.w	$a0, $s0, 5644
.LBB18_7:                               #   in Loop: Header=BB18_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ercWriteMBMODEandMV)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s0, 5624
	bnez	$a0, .LBB18_3
# %bb.8:                                #   in Loop: Header=BB18_4 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(exit_macroblock)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_4
.LBB18_9:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 5592
	ld.w	$a3, $a1, 148
	pcalau12i	$a1, %pc_hi20(old_slice)
	addi.d	$a1, $a1, %pc_lo12(old_slice)
	lu12i.w	$a2, 1
	ori	$a4, $a2, 1580
	ldx.w	$a4, $a0, $a4
	ldptr.w	$a5, $a0, 5680
	st.w	$a3, $a1, 40
	st.w	$a4, $a1, 8
	st.w	$a5, $a1, 0
	beqz	$a5, .LBB18_11
# %bb.10:
	ori	$a3, $a2, 1588
	ldx.w	$a3, $a0, $a3
	st.w	$a3, $a1, 4
.LBB18_11:
	ori	$a3, $a2, 1712
	ldx.w	$a3, $a0, $a3
	ldptr.w	$a4, $a0, 5804
	st.w	$a3, $a1, 12
	st.w	$a4, $a1, 32
	beqz	$a4, .LBB18_13
# %bb.12:
	ori	$a2, $a2, 1716
	ldx.w	$a2, $a0, $a2
	st.w	$a2, $a1, 36
.LBB18_13:
	pcalau12i	$a2, %pc_hi20(active_sps)
	ld.d	$a2, $a2, %pc_lo12(active_sps)
	ld.w	$a2, $a2, 1012
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB18_16
# %bb.14:
	bnez	$a2, .LBB18_17
# %bb.15:                               # %.thread.i
	ldptr.d	$a0, $a0, 5688
	st.d	$a0, $a1, 16
	b	.LBB18_17
.LBB18_16:
	ldptr.d	$a0, $a0, 5696
	st.d	$a0, $a1, 24
.LBB18_17:                              # %exit_slice.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	decode_one_slice, .Lfunc_end18-decode_one_slice
                                        # -- End function
	.globl	fill_wp_params                  # -- Begin function fill_wp_params
	.p2align	5
	.type	fill_wp_params,@function
fill_wp_params:                         # @fill_wp_params
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
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a3, $a0, 44
	ldptr.w	$a7, $a0, 5640
	ld.w	$a2, $a1, 1124
	ldptr.w	$t0, $a0, 5644
	ori	$a4, $zero, 2
	bne	$a2, $a4, .LBB19_4
# %bb.1:
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB19_4
# %bb.2:
	move	$a3, $zero
	ori	$a4, $zero, 5
	lu32i.d	$a4, 5
	stptr.d	$a4, $a0, 5760
	ori	$a4, $zero, 16
	ldptr.d	$a5, $a0, 5768
	lu32i.d	$a4, 16
	ldptr.d	$t1, $a0, 5776
	stptr.d	$a4, $a0, 5792
	ld.d	$a4, $a5, 0
	ld.d	$a5, $a5, 8
	ld.d	$a6, $t1, 0
	ld.d	$t1, $t1, 8
	lu12i.w	$t3, 1
	ori	$t2, $t3, 1664
	ori	$t3, $t3, 1668
	ori	$t4, $zero, 256
	.p2align	4, , 16
.LBB19_3:                               # %.preheader258
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$t5, $a4, $a3
	ldx.wu	$t6, $a0, $t2
	ldx.d	$t7, $a5, $a3
	ldx.d	$t8, $a6, $a3
	ldx.d	$fp, $t1, $a3
	sll.w	$t6, $a2, $t6
	st.w	$t6, $t5, 0
	st.w	$t6, $t7, 0
	st.w	$zero, $t8, 0
	st.w	$zero, $fp, 0
	ldx.wu	$t6, $a0, $t3
	sll.w	$t6, $a2, $t6
	st.w	$t6, $t5, 4
	st.w	$t6, $t7, 4
	st.w	$zero, $t8, 4
	st.w	$zero, $fp, 4
	ldx.wu	$t6, $a0, $t3
	sll.w	$t6, $a2, $t6
	st.w	$t6, $t5, 8
	st.w	$t6, $t7, 8
	st.w	$zero, $t8, 8
	addi.d	$a3, $a3, 8
	st.w	$zero, $fp, 8
	bne	$a3, $t4, .LBB19_3
	b	.LBB19_5
.LBB19_4:                               # %.loopexit
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB19_66
.LBB19_5:                               # %.preheader257
	blez	$a7, .LBB19_66
# %bb.6:                                # %.preheader256.lr.ph
	blez	$t0, .LBB19_66
# %bb.7:                                # %.preheader256.us.preheader
	slli.d	$t1, $t0, 3
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	move	$t2, $zero
	ori	$t3, $zero, 1
	ori	$t4, $zero, 2
	addi.w	$a3, $zero, -128
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ori	$t5, $zero, 127
	lu12i.w	$a3, 77
	ori	$a4, $a3, 1452
	lu12i.w	$a3, 1
	ori	$t6, $a3, 1656
	ori	$t7, $zero, 1023
	ori	$t8, $zero, 64
	ori	$fp, $zero, 32
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_8:                               # %._crit_edge.us
                                        #   in Loop: Header=BB19_9 Depth=1
	addi.d	$t2, $t2, 1
	beq	$t2, $a7, .LBB19_41
.LBB19_9:                               # %.preheader256.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_13 Depth 2
	move	$s0, $zero
	slli.d	$s1, $t2, 3
	b	.LBB19_13
	.p2align	4, , 16
.LBB19_10:                              #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5768
	ldptr.d	$a5, $a0, 5784
	ld.d	$a6, $a3, 0
	ld.d	$s2, $a5, 0
	ldx.d	$a6, $a6, $s1
	ldx.d	$s2, $s2, $s1
	ld.d	$a3, $a3, 8
	ld.w	$a6, $a6, 8
	ldx.d	$s2, $s2, $s0
	ldx.d	$a3, $a3, $s0
	st.w	$a6, $s2, 8
	ld.d	$a5, $a5, 8
	ld.w	$s2, $a3, 8
	alsl.d	$a5, $t2, $a5, 3
.LBB19_11:                              # %.sink.split.2
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a3, $a5, 0
	ldx.d	$a3, $a3, $s0
	st.w	$s2, $a3, 8
.LBB19_12:                              #   in Loop: Header=BB19_13 Depth=2
	addi.d	$s0, $s0, 8
	beq	$t1, $s0, .LBB19_8
.LBB19_13:                              # %.preheader255.us
                                        #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a2, 0
	ld.w	$a3, $a1, 1124
	ld.d	$s3, $a2, 8
	alsl.d	$s2, $t2, $a5, 3
	beq	$a3, $t3, .LBB19_19
# %bb.14:                               # %.preheader255.us
                                        #   in Loop: Header=BB19_13 Depth=2
	bne	$a3, $t4, .LBB19_21
# %bb.15:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.d	$s5, $s3, $s0
	ld.d	$s4, $s2, 0
	ld.w	$a6, $s5, 4
	ld.w	$a5, $s4, 4
	beq	$a6, $a5, .LBB19_18
# %bb.16:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.w	$a3, $s5, $a4
	bnez	$a3, .LBB19_18
# %bb.17:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.w	$a3, $s4, $a4
	beqz	$a3, .LBB19_35
	.p2align	4, , 16
.LBB19_18:                              #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5784
	ld.d	$a5, $a3, 0
	ldx.d	$a5, $a5, $s1
	ldx.d	$a5, $a5, $s0
	ld.d	$a3, $a3, 8
	ori	$s4, $zero, 32
	st.w	$s4, $a5, 0
	alsl.d	$a5, $t2, $a3, 3
	b	.LBB19_20
	.p2align	4, , 16
.LBB19_19:                              #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5768
	ldptr.d	$a5, $a0, 5784
	ld.d	$a6, $a3, 0
	ld.d	$s4, $a5, 0
	ldx.d	$a6, $a6, $s1
	ldx.d	$s4, $s4, $s1
	ld.d	$a3, $a3, 8
	ld.w	$a6, $a6, 0
	ldx.d	$s4, $s4, $s0
	ldx.d	$a3, $a3, $s0
	st.w	$a6, $s4, 0
	ld.d	$a5, $a5, 8
	ld.w	$s4, $a3, 0
	alsl.d	$a5, $t2, $a5, 3
.LBB19_20:                              # %.sink.split
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a3, $a5, 0
	ldx.d	$a3, $a3, $s0
	st.w	$s4, $a3, 0
.LBB19_21:                              #   in Loop: Header=BB19_13 Depth=2
	ld.w	$a3, $a1, 1124
	beq	$a3, $t3, .LBB19_27
# %bb.22:                               #   in Loop: Header=BB19_13 Depth=2
	bne	$a3, $t4, .LBB19_29
# %bb.23:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.d	$s5, $s3, $s0
	ld.d	$s4, $s2, 0
	ld.w	$a6, $s5, 4
	ld.w	$a5, $s4, 4
	beq	$a6, $a5, .LBB19_26
# %bb.24:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.w	$a3, $s5, $a4
	bnez	$a3, .LBB19_26
# %bb.25:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.w	$a3, $s4, $a4
	beqz	$a3, .LBB19_37
	.p2align	4, , 16
.LBB19_26:                              #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5784
	ld.d	$a5, $a3, 0
	ldx.d	$a5, $a5, $s1
	ldx.d	$a5, $a5, $s0
	ld.d	$a3, $a3, 8
	ori	$s4, $zero, 32
	st.w	$s4, $a5, 4
	alsl.d	$a5, $t2, $a3, 3
	b	.LBB19_28
	.p2align	4, , 16
.LBB19_27:                              #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5768
	ldptr.d	$a5, $a0, 5784
	ld.d	$a6, $a3, 0
	ld.d	$s4, $a5, 0
	ldx.d	$a6, $a6, $s1
	ldx.d	$s4, $s4, $s1
	ld.d	$a3, $a3, 8
	ld.w	$a6, $a6, 4
	ldx.d	$s4, $s4, $s0
	ldx.d	$a3, $a3, $s0
	st.w	$a6, $s4, 4
	ld.d	$a5, $a5, 8
	ld.w	$s4, $a3, 4
	alsl.d	$a5, $t2, $a5, 3
.LBB19_28:                              # %.sink.split.1
                                        #   in Loop: Header=BB19_13 Depth=2
	ld.d	$a3, $a5, 0
	ldx.d	$a3, $a3, $s0
	st.w	$s4, $a3, 4
.LBB19_29:                              #   in Loop: Header=BB19_13 Depth=2
	ld.w	$a3, $a1, 1124
	beq	$a3, $t3, .LBB19_10
# %bb.30:                               #   in Loop: Header=BB19_13 Depth=2
	bne	$a3, $t4, .LBB19_12
# %bb.31:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.d	$s3, $s3, $s0
	ld.d	$s2, $s2, 0
	ld.w	$a6, $s3, 4
	ld.w	$a5, $s2, 4
	beq	$a6, $a5, .LBB19_34
# %bb.32:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.w	$a3, $s3, $a4
	bnez	$a3, .LBB19_34
# %bb.33:                               #   in Loop: Header=BB19_13 Depth=2
	ldx.w	$a3, $s2, $a4
	beqz	$a3, .LBB19_39
	.p2align	4, , 16
.LBB19_34:                              #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5784
	ld.d	$a5, $a3, 0
	ldx.d	$a5, $a5, $s1
	ldx.d	$a5, $a5, $s0
	ld.d	$a3, $a3, 8
	ori	$s2, $zero, 32
	st.w	$s2, $a5, 8
	alsl.d	$a5, $t2, $a3, 3
	b	.LBB19_11
.LBB19_35:                              #   in Loop: Header=BB19_13 Depth=2
	sub.w	$a3, $a6, $a5
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	slt	$a6, $s5, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s5, $a6
	or	$a3, $a3, $a6
	slti	$a6, $a3, 127
	ldx.w	$s4, $a0, $t6
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t5, $a6
	or	$a3, $a3, $a6
	sub.w	$a5, $s4, $a5
	slt	$a6, $s5, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s5, $a6
	or	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t5, $a6
	or	$a5, $a5, $a6
	bstrpick.d	$a6, $a3, 7, 7
	add.d	$a6, $a3, $a6
	ext.w.b	$a6, $a6
	srai.d	$a6, $a6, 1
	srai.d	$s4, $a6, 63
	xor	$a6, $a6, $s4
	sub.d	$a6, $a6, $s4
	lu12i.w	$s4, 4
	or	$a6, $a6, $s4
	ext.w.h	$a3, $a3
	div.d	$a3, $a6, $a3
	ext.w.h	$a3, $a3
	mul.d	$a3, $a5, $a3
	addi.w	$a3, $a3, 32
	srai.d	$a3, $a3, 6
	addi.w	$a5, $zero, -1024
	ldptr.d	$a6, $a0, 5784
	slt	$s4, $a5, $a3
	maskeqz	$a3, $a3, $s4
	masknez	$a5, $a5, $s4
	ld.d	$s4, $a6, 8
	or	$a3, $a3, $a5
	ld.d	$a5, $a6, 0
	slti	$a6, $a3, 1023
	ldx.d	$s4, $s4, $s1
	maskeqz	$a3, $a3, $a6
	ldx.d	$s5, $a5, $s1
	masknez	$a6, $t7, $a6
	ldx.d	$a5, $s4, $s0
	or	$a3, $a3, $a6
	ldx.d	$a6, $s5, $s0
	srai.d	$a3, $a3, 2
	st.w	$a3, $a5, 0
	sub.d	$a3, $t8, $a3
	st.w	$a3, $a6, 0
	ld.w	$a3, $a5, 0
	addi.w	$a3, $a3, -129
	addi.w	$s4, $zero, -194
	bltu	$s4, $a3, .LBB19_21
# %bb.36:                               #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5776
	ld.d	$s4, $a3, 0
	ldx.d	$s5, $s4, $s1
	move	$s4, $zero
	st.w	$fp, $a6, 0
	st.w	$fp, $a5, 0
	st.w	$zero, $s5, 0
	addi.d	$a5, $a3, 8
	b	.LBB19_20
.LBB19_37:                              #   in Loop: Header=BB19_13 Depth=2
	sub.w	$a3, $a6, $a5
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	slt	$a6, $s5, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s5, $a6
	or	$a3, $a3, $a6
	slti	$a6, $a3, 127
	ldx.w	$s4, $a0, $t6
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t5, $a6
	or	$a3, $a3, $a6
	sub.w	$a5, $s4, $a5
	slt	$a6, $s5, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s5, $a6
	or	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t5, $a6
	or	$a5, $a5, $a6
	bstrpick.d	$a6, $a3, 7, 7
	add.d	$a6, $a3, $a6
	ext.w.b	$a6, $a6
	srai.d	$a6, $a6, 1
	srai.d	$s4, $a6, 63
	xor	$a6, $a6, $s4
	sub.d	$a6, $a6, $s4
	lu12i.w	$s4, 4
	or	$a6, $a6, $s4
	ext.w.h	$a3, $a3
	div.d	$a3, $a6, $a3
	ext.w.h	$a3, $a3
	mul.d	$a3, $a5, $a3
	addi.w	$a3, $a3, 32
	srai.d	$a3, $a3, 6
	addi.w	$a5, $zero, -1024
	ldptr.d	$a6, $a0, 5784
	slt	$s4, $a5, $a3
	maskeqz	$a3, $a3, $s4
	masknez	$a5, $a5, $s4
	ld.d	$s4, $a6, 8
	or	$a3, $a3, $a5
	ld.d	$a5, $a6, 0
	slti	$a6, $a3, 1023
	ldx.d	$s4, $s4, $s1
	maskeqz	$a3, $a3, $a6
	ldx.d	$s5, $a5, $s1
	masknez	$a6, $t7, $a6
	ldx.d	$a5, $s4, $s0
	or	$a3, $a3, $a6
	ldx.d	$a6, $s5, $s0
	srai.d	$a3, $a3, 2
	st.w	$a3, $a5, 4
	sub.d	$a3, $t8, $a3
	st.w	$a3, $a6, 4
	ld.w	$a3, $a5, 4
	addi.w	$a3, $a3, -129
	addi.w	$s4, $zero, -194
	bltu	$s4, $a3, .LBB19_29
# %bb.38:                               #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5776
	ld.d	$s4, $a3, 0
	ldx.d	$s5, $s4, $s1
	move	$s4, $zero
	st.w	$fp, $a6, 4
	st.w	$fp, $a5, 4
	st.w	$zero, $s5, 4
	addi.d	$a5, $a3, 8
	b	.LBB19_28
.LBB19_39:                              #   in Loop: Header=BB19_13 Depth=2
	sub.w	$a3, $a6, $a5
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	slt	$a6, $s3, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s3, $a6
	or	$a3, $a3, $a6
	slti	$a6, $a3, 127
	ldx.w	$s2, $a0, $t6
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t5, $a6
	or	$a3, $a3, $a6
	sub.w	$a5, $s2, $a5
	slt	$a6, $s3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s3, $a6
	or	$a5, $a5, $a6
	slti	$a6, $a5, 127
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t5, $a6
	or	$a5, $a5, $a6
	bstrpick.d	$a6, $a3, 7, 7
	add.d	$a6, $a3, $a6
	ext.w.b	$a6, $a6
	srai.d	$a6, $a6, 1
	srai.d	$s2, $a6, 63
	xor	$a6, $a6, $s2
	sub.d	$a6, $a6, $s2
	lu12i.w	$s2, 4
	or	$a6, $a6, $s2
	ext.w.h	$a3, $a3
	div.d	$a3, $a6, $a3
	ext.w.h	$a3, $a3
	mul.d	$a3, $a5, $a3
	addi.w	$a3, $a3, 32
	srai.d	$a3, $a3, 6
	addi.w	$a5, $zero, -1024
	ldptr.d	$a6, $a0, 5784
	slt	$s2, $a5, $a3
	maskeqz	$a3, $a3, $s2
	masknez	$a5, $a5, $s2
	ld.d	$s2, $a6, 8
	or	$a3, $a3, $a5
	ld.d	$a5, $a6, 0
	slti	$a6, $a3, 1023
	ldx.d	$s2, $s2, $s1
	maskeqz	$a3, $a3, $a6
	ldx.d	$s3, $a5, $s1
	masknez	$a6, $t7, $a6
	ldx.d	$a5, $s2, $s0
	or	$a3, $a3, $a6
	ldx.d	$a6, $s3, $s0
	srai.d	$a3, $a3, 2
	st.w	$a3, $a5, 8
	sub.d	$a3, $t8, $a3
	st.w	$a3, $a6, 8
	ld.w	$a3, $a5, 8
	addi.w	$a3, $a3, -129
	addi.w	$s2, $zero, -194
	bltu	$s2, $a3, .LBB19_12
# %bb.40:                               #   in Loop: Header=BB19_13 Depth=2
	ldptr.d	$a3, $a0, 5776
	ld.d	$s2, $a3, 0
	ldx.d	$s3, $s2, $s1
	move	$s2, $zero
	st.w	$fp, $a6, 8
	st.w	$fp, $a5, 8
	st.w	$zero, $s3, 8
	addi.d	$a5, $a3, 8
	b	.LBB19_11
.LBB19_41:                              # %._crit_edge264
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ldptr.w	$a3, $a0, 5624
	beqz	$a3, .LBB19_66
# %bb.42:                               # %.preheader254
	ldptr.d	$a3, $a0, 5776
	move	$t6, $zero
	slli.w	$a5, $a7, 1
	slli.w	$a6, $t0, 1
	ld.d	$a2, $a3, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 8
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ori	$t2, $zero, 1
	slt	$a7, $t2, $a6
	masknez	$t0, $t2, $a7
	maskeqz	$a6, $a6, $a7
	or	$a2, $a6, $t0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slt	$a6, $t2, $a5
	masknez	$a7, $t2, $a6
	maskeqz	$a5, $a5, $a6
	or	$a2, $a5, $a7
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 16
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 24
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 32
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 40
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ori	$fp, $zero, 12
	ori	$s0, $zero, 2
	ori	$s2, $zero, 32
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1572
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	b	.LBB19_44
	.p2align	4, , 16
.LBB19_43:                              # %._crit_edge.us269
                                        #   in Loop: Header=BB19_44 Depth=1
	addi.d	$t6, $t6, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	beq	$t6, $a2, .LBB19_66
.LBB19_44:                              # %.preheader253.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_46 Depth 2
                                        #       Child Loop BB19_49 Depth 3
	bstrpick.d	$a3, $t6, 31, 1
	slli.d	$s6, $a3, 3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$s7, $a2, $s6
	slli.d	$s8, $t6, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$ra, $a2, $s8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a7, $a2, $s8
	move	$t4, $zero
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	b	.LBB19_46
	.p2align	4, , 16
.LBB19_45:                              #   in Loop: Header=BB19_46 Depth=2
	addi.d	$t4, $t4, 1
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	beq	$t4, $a2, .LBB19_43
.LBB19_46:                              # %.preheader252.us
                                        #   Parent Loop BB19_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_49 Depth 3
	move	$t5, $zero
	bstrpick.d	$a2, $t4, 31, 1
	slli.d	$t7, $a2, 3
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $t0, 24
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a5, $a3, $t7
	slli.d	$a6, $t4, 3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s3, $a3, $a6
	alsl.d	$s4, $t4, $a2, 3
	ld.d	$a2, $t0, 16
	ld.d	$a3, $t0, 40
	ld.d	$t1, $t0, 32
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$s5, $t0, $a6
	alsl.d	$t0, $t6, $a2, 3
	alsl.d	$t3, $t4, $a3, 3
	alsl.d	$t6, $t6, $t1, 3
	b	.LBB19_49
	.p2align	4, , 16
.LBB19_47:                              #   in Loop: Header=BB19_49 Depth=3
	ldptr.d	$a2, $a0, 5768
	ldptr.d	$a3, $a0, 5784
	ld.d	$t1, $a2, 0
	ld.d	$t8, $a3, 32
	ldx.d	$t1, $t1, $s6
	ldx.d	$t8, $t8, $s8
	ld.d	$a2, $a2, 8
	ld.d	$a3, $a3, 40
	ldx.w	$t1, $t1, $t5
	ldx.d	$t8, $t8, $a6
	ldx.d	$a2, $a2, $t7
	ldx.d	$a3, $a3, $s8
	stx.w	$t1, $t8, $t5
	ldx.w	$a2, $a2, $t5
	ldx.d	$a3, $a3, $a6
	stx.w	$a2, $a3, $t5
.LBB19_48:                              #   in Loop: Header=BB19_49 Depth=3
	addi.d	$t5, $t5, 4
	beq	$t5, $fp, .LBB19_45
.LBB19_49:                              # %.preheader.us
                                        #   Parent Loop BB19_44 Depth=1
                                        #     Parent Loop BB19_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $s7, $t5
	stx.w	$a2, $ra, $t5
	ldx.w	$a2, $a5, $t5
	stx.w	$a2, $s3, $t5
	ld.w	$a3, $a1, 1124
	beq	$a3, $t2, .LBB19_55
# %bb.50:                               # %.preheader.us
                                        #   in Loop: Header=BB19_49 Depth=3
	bne	$a3, $s0, .LBB19_56
# %bb.51:                               #   in Loop: Header=BB19_49 Depth=3
	ld.d	$a3, $s4, 0
	ld.d	$t1, $t0, 0
	ld.w	$s1, $a3, 4
	ld.w	$t8, $t1, 4
	beq	$s1, $t8, .LBB19_54
# %bb.52:                               #   in Loop: Header=BB19_49 Depth=3
	ldx.w	$a3, $a3, $a4
	bnez	$a3, .LBB19_54
# %bb.53:                               #   in Loop: Header=BB19_49 Depth=3
	ldx.w	$a3, $t1, $a4
	beqz	$a3, .LBB19_62
	.p2align	4, , 16
.LBB19_54:                              #   in Loop: Header=BB19_49 Depth=3
	ldptr.d	$a2, $a0, 5784
	ld.d	$a3, $a2, 16
	ld.d	$a2, $a2, 24
	ldx.d	$a3, $a3, $s8
	ldx.d	$a2, $a2, $s8
	ldx.d	$a3, $a3, $a6
	ldx.d	$a2, $a2, $a6
	stx.w	$s2, $a3, $t5
	stx.w	$s2, $a2, $t5
	b	.LBB19_56
	.p2align	4, , 16
.LBB19_55:                              #   in Loop: Header=BB19_49 Depth=3
	ldptr.d	$a2, $a0, 5768
	ldptr.d	$a3, $a0, 5784
	ld.d	$t1, $a2, 0
	ld.d	$t8, $a3, 16
	ldx.d	$t1, $t1, $s6
	ldx.d	$t8, $t8, $s8
	ld.d	$a2, $a2, 8
	ld.d	$a3, $a3, 24
	ldx.w	$t1, $t1, $t5
	ldx.d	$t8, $t8, $a6
	ldx.d	$a2, $a2, $t7
	ldx.d	$a3, $a3, $s8
	stx.w	$t1, $t8, $t5
	ldx.w	$a2, $a2, $t5
	ldx.d	$a3, $a3, $a6
	stx.w	$a2, $a3, $t5
.LBB19_56:                              #   in Loop: Header=BB19_49 Depth=3
	ldx.w	$a2, $s7, $t5
	stx.w	$a2, $a7, $t5
	ldx.w	$a2, $a5, $t5
	stx.w	$a2, $s5, $t5
	ld.w	$a3, $a1, 1124
	beq	$a3, $t2, .LBB19_47
# %bb.57:                               #   in Loop: Header=BB19_49 Depth=3
	bne	$a3, $s0, .LBB19_48
# %bb.58:                               #   in Loop: Header=BB19_49 Depth=3
	ld.d	$a3, $t3, 0
	ld.d	$t1, $t6, 0
	ld.w	$s1, $a3, 4
	ld.w	$t8, $t1, 4
	beq	$s1, $t8, .LBB19_61
# %bb.59:                               #   in Loop: Header=BB19_49 Depth=3
	ldx.w	$a2, $a3, $a4
	bnez	$a2, .LBB19_61
# %bb.60:                               #   in Loop: Header=BB19_49 Depth=3
	ldx.w	$a2, $t1, $a4
	beqz	$a2, .LBB19_64
	.p2align	4, , 16
.LBB19_61:                              #   in Loop: Header=BB19_49 Depth=3
	ldptr.d	$a2, $a0, 5784
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 40
	ldx.d	$a3, $a3, $s8
	ldx.d	$a2, $a2, $s8
	ldx.d	$a3, $a3, $a6
	ldx.d	$a2, $a2, $a6
	stx.w	$s2, $a3, $t5
	stx.w	$s2, $a2, $t5
	b	.LBB19_48
.LBB19_62:                              #   in Loop: Header=BB19_49 Depth=3
	sub.w	$a3, $s1, $t8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slt	$t1, $a2, $a3
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $a2, $t1
	or	$a3, $a3, $t1
	slti	$t1, $a3, 127
	lu12i.w	$s1, 1
	ori	$s1, $s1, 1568
	ldx.w	$s1, $a0, $s1
	maskeqz	$a3, $a3, $t1
	ori	$a4, $zero, 127
	masknez	$t1, $a4, $t1
	or	$a3, $a3, $t1
	sub.w	$t1, $s1, $t8
	slt	$t8, $a2, $t1
	maskeqz	$t1, $t1, $t8
	masknez	$t8, $a2, $t8
	or	$t1, $t1, $t8
	slti	$t8, $t1, 127
	maskeqz	$t1, $t1, $t8
	masknez	$t8, $a4, $t8
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	or	$t1, $t1, $t8
	bstrpick.d	$t8, $a3, 7, 7
	add.d	$t8, $a3, $t8
	ext.w.b	$t8, $t8
	srai.d	$t8, $t8, 1
	srai.d	$s1, $t8, 63
	xor	$t8, $t8, $s1
	sub.d	$t8, $t8, $s1
	lu12i.w	$a2, 4
	or	$t8, $t8, $a2
	ext.w.h	$a3, $a3
	div.d	$a3, $t8, $a3
	ext.w.h	$a3, $a3
	mul.d	$a3, $t1, $a3
	addi.w	$a3, $a3, 32
	srai.d	$a3, $a3, 6
	addi.w	$t1, $zero, -1024
	ldptr.d	$t8, $a0, 5784
	slt	$s1, $t1, $a3
	maskeqz	$a3, $a3, $s1
	masknez	$t1, $t1, $s1
	ld.d	$s1, $t8, 24
	or	$a3, $a3, $t1
	ld.d	$t1, $t8, 16
	slti	$t8, $a3, 1023
	ldx.d	$s1, $s1, $s8
	maskeqz	$a3, $a3, $t8
	ldx.d	$t1, $t1, $s8
	ori	$a2, $zero, 1023
	masknez	$a2, $a2, $t8
	ldx.d	$t8, $s1, $a6
	or	$a2, $a3, $a2
	ldx.d	$s1, $t1, $a6
	srai.d	$a2, $a2, 2
	stx.w	$a2, $t8, $t5
	ori	$a3, $zero, 64
	sub.d	$a2, $a3, $a2
	stx.w	$a2, $s1, $t5
	ldx.w	$a2, $t8, $t5
	addi.w	$a2, $a2, -129
	addi.w	$a3, $zero, -194
	bltu	$a3, $a2, .LBB19_56
# %bb.63:                               #   in Loop: Header=BB19_49 Depth=3
	stx.w	$s2, $t8, $t5
	stx.w	$s2, $s1, $t5
	stx.w	$zero, $ra, $t5
	stx.w	$zero, $s3, $t5
	b	.LBB19_56
.LBB19_64:                              #   in Loop: Header=BB19_49 Depth=3
	sub.w	$a2, $s1, $t8
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	slt	$a3, $s1, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s1, $a3
	or	$a2, $a2, $a3
	slti	$a3, $a2, 127
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$t1, $a0, $a4
	maskeqz	$a2, $a2, $a3
	ori	$a4, $zero, 127
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	sub.w	$a3, $t1, $t8
	slt	$t1, $s1, $a3
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $s1, $t1
	or	$a3, $a3, $t1
	slti	$t1, $a3, 127
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $a4, $t1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	or	$a3, $a3, $t1
	bstrpick.d	$t1, $a2, 7, 7
	add.d	$t1, $a2, $t1
	ext.w.b	$t1, $t1
	srai.d	$t1, $t1, 1
	srai.d	$t8, $t1, 63
	xor	$t1, $t1, $t8
	sub.d	$t1, $t1, $t8
	lu12i.w	$t8, 4
	or	$t1, $t1, $t8
	ext.w.h	$a2, $a2
	div.d	$a2, $t1, $a2
	ext.w.h	$a2, $a2
	mul.d	$a2, $a3, $a2
	addi.w	$a2, $a2, 32
	srai.d	$a2, $a2, 6
	addi.w	$a3, $zero, -1024
	ldptr.d	$t1, $a0, 5784
	slt	$t8, $a3, $a2
	maskeqz	$a2, $a2, $t8
	masknez	$a3, $a3, $t8
	ld.d	$t8, $t1, 40
	or	$a2, $a2, $a3
	ld.d	$a3, $t1, 32
	slti	$t1, $a2, 1023
	ldx.d	$t8, $t8, $s8
	maskeqz	$a2, $a2, $t1
	ldx.d	$a3, $a3, $s8
	ori	$s1, $zero, 1023
	masknez	$t1, $s1, $t1
	ldx.d	$t8, $t8, $a6
	or	$a2, $a2, $t1
	ldx.d	$s1, $a3, $a6
	srai.d	$a2, $a2, 2
	stx.w	$a2, $t8, $t5
	ori	$a3, $zero, 64
	sub.d	$a2, $a3, $a2
	stx.w	$a2, $s1, $t5
	ldx.w	$a2, $t8, $t5
	addi.w	$a2, $a2, -129
	addi.w	$a3, $zero, -194
	bltu	$a3, $a2, .LBB19_48
# %bb.65:                               #   in Loop: Header=BB19_49 Depth=3
	stx.w	$s2, $t8, $t5
	stx.w	$s2, $s1, $t5
	stx.w	$zero, $a7, $t5
	stx.w	$zero, $s5, $t5
	b	.LBB19_48
.LBB19_66:                              # %.critedge
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
.Lfunc_end19:
	.size	fill_wp_params, .Lfunc_end19-fill_wp_params
                                        # -- End function
	.globl	reset_wp_params                 # -- Begin function reset_wp_params
	.p2align	5
	.type	reset_wp_params,@function
reset_wp_params:                        # @reset_wp_params
# %bb.0:
	ldptr.d	$a3, $a0, 5768
	move	$a1, $zero
	ld.d	$a2, $a3, 0
	ld.d	$a3, $a3, 8
	lu12i.w	$a6, 1
	ori	$a4, $a6, 1664
	ori	$a5, $zero, 1
	ori	$a6, $a6, 1668
	ori	$a7, $zero, 256
	.p2align	4, , 16
.LBB20_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.wu	$t0, $a0, $a4
	ldx.d	$t1, $a2, $a1
	ldx.d	$t2, $a3, $a1
	sll.w	$t0, $a5, $t0
	st.w	$t0, $t1, 0
	st.w	$t0, $t2, 0
	ldx.wu	$t0, $a0, $a6
	sll.w	$t0, $a5, $t0
	st.w	$t0, $t1, 4
	st.w	$t0, $t2, 4
	ldx.wu	$t0, $a0, $a6
	sll.w	$t0, $a5, $t0
	st.w	$t0, $t1, 8
	addi.d	$a1, $a1, 8
	st.w	$t0, $t2, 8
	bne	$a1, $a7, .LBB20_1
# %bb.2:
	ret
.Lfunc_end20:
	.size	reset_wp_params, .Lfunc_end20-reset_wp_params
                                        # -- End function
	.type	dec_picture,@object             # @dec_picture
	.comm	dec_picture,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel."
	.size	.L.str, 110

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture"
	.size	.L.str.1, 80

	.type	find_snr.SubWidthC,@object      # @find_snr.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
find_snr.SubWidthC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	find_snr.SubWidthC, 16

	.type	find_snr.SubHeightC,@object     # @find_snr.SubHeightC
	.p2align	2, 0x0
find_snr.SubHeightC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	find_snr.SubHeightC, 16

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"find_snr: buf"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Error in seeking frame number: %d\n"
	.size	.L.str.3, 35

	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%04d(P)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\n"
	.size	.L.str.4, 48

	.type	get_block.cur_imgY,@object      # @get_block.cur_imgY
	.local	get_block.cur_imgY
	.comm	get_block.cur_imgY,8,8
	.type	get_block.cur_lineY,@object     # @get_block.cur_lineY
	.local	get_block.cur_lineY
	.comm	get_block.cur_lineY,8,8
	.type	non_conforming_stream,@object   # @non_conforming_stream
	.comm	non_conforming_stream,4,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream"
	.size	.L.str.7, 98

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream"
	.size	.L.str.9, 98

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error while getting the NALU in file format %s, exit\n"
	.size	.L.str.10, 54

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Annex B"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"RTP"
	.size	.L.str.12, 4

	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"NALU: DP_A slice_id"
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"received data partition with CABAC, this is not allowed"
	.size	.L.str.17, 56

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"NALU: DP_B slice_id"
	.size	.L.str.18, 20

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"NALU: DP_B redudant_pic_cnt"
	.size	.L.str.20, 28

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"NALU: DP_C slice_id"
	.size	.L.str.21, 20

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"NALU:SLICE_C redudand_pic_cnt"
	.size	.L.str.23, 30

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"read_new_slice: Found NALU_TYPE_SEI, len %d\n"
	.size	.L.str.26, 45

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"read_new_slice: Found NALU_TYPE_FILL, len %d\n"
	.size	.L.str.27, 46

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Found NALU type %d, len %d undefined, ignore NALU, moving on\n"
	.size	.L.str.29, 62

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"An unintentional loss of pictures occurs! Exit\n"
	.size	.L.str.30, 48

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"img->structure not initialized"
	.size	.L.str.31, 31

	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	.L__const.exit_picture.yuv_types,@object # @__const.exit_picture.yuv_types
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.exit_picture.yuv_types:
	.asciz	"4:0:0"
	.asciz	"4:2:0"
	.asciz	"4:2:2"
	.asciz	"4:4:4"
	.size	.L__const.exit_picture.yuv_types, 24

	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"%04d(I)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\n"
	.size	.L.str.33, 48

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%04d(SP) %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\n"
	.size	.L.str.34, 48

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%04d(SI) %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\n"
	.size	.L.str.35, 48

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%04d(RB) %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\n"
	.size	.L.str.36, 48

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"%04d(B)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\n"
	.size	.L.str.37, 48

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Completed Decoding frame %05d.\r"
	.size	.L.str.38, 32

	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	old_slice,@object               # @old_slice
	.comm	old_slice,44,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	last_out_fs,@object             # @last_out_fs
	.comm	last_out_fs,8,8
	.type	pocs_in_dpb,@object             # @pocs_in_dpb
	.comm	pocs_in_dpb,400,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"list[ref_frame] is equal to 'no reference picture' before RAP"
	.size	.Lstr, 62

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'"
	.size	.Lstr.1, 79

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'"
	.size	.Lstr.2, 79

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Found NALU w/ forbidden_bit set, bit error?  Let's try..."
	.size	.Lstr.3, 58

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Skipping these filling bits, proceeding w/ next NALU"
	.size	.Lstr.4, 53

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"found data partition C without matching DP A, discarding"
	.size	.Lstr.5, 57

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"found data partition B without matching DP A, discarding"
	.size	.Lstr.6, 57

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"got a data partition B which does not match DP_A"
	.size	.Lstr.7, 49

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"got a data partition C which does not match DP_A"
	.size	.Lstr.8, 49

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"Warning: Decoding does not start with an IDR picture."
	.size	.Lstr.9, 54

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_mb_block_pos_mbaff
	.addrsig_sym get_mb_block_pos_normal
	.addrsig_sym getAffNeighbour
	.addrsig_sym getNonAffNeighbour
	.addrsig_sym listX
	.addrsig_sym listXsize
