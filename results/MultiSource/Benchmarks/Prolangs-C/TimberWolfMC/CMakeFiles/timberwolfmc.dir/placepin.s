	.file	"placepin.c"
	.text
	.globl	placepin                        # -- Begin function placepin
	.p2align	5
	.type	placepin,@function
placepin:                               # @placepin
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
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$t4, $a0, 0
	blez	$t4, .LBB0_88
# %bb.1:                                # %.lr.ph265
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a1, $a0, 0
	ori	$a3, $zero, 44
	ori	$a4, $zero, 2
	lu12i.w	$a0, 269412
	ori	$a5, $a0, 3693
	lu12i.w	$a0, 3
	ori	$a6, $a0, 57
	lu12i.w	$a0, -1024
	lu52i.d	$a0, $a0, 1053
	movgr2fr.d	$fa0, $a0
	vrepli.b	$vr1, 0
	ori	$a0, $zero, 1
                                        # implicit-def: $r27
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit195.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$t4, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
.LBB0_3:                                # %.loopexit195
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a0, $fp, 1
	bge	$fp, $t4, .LBB0_88
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_66 Depth 3
                                        #         Child Loop BB0_68 Depth 4
                                        #       Child Loop BB0_75 Depth 3
                                        #         Child Loop BB0_79 Depth 4
                                        #         Child Loop BB0_82 Depth 4
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_87 Depth 3
	move	$fp, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$t2, $a1, $a0
	ld.w	$a0, $t2, 76
	beqz	$a0, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $t2, 128
	beqz	$a0, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t3, $t2, 132
	blez	$t3, .LBB0_3
# %bb.7:                                # %.lr.ph258
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t4, $t2, 136
	ld.d	$t5, $t2, 144
	addi.d	$t6, $t4, 88
	addi.d	$t7, $t4, 8
	addi.d	$t8, $t5, 48
	addi.d	$s0, $t5, 4
	ori	$a0, $zero, 1
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %.loopexit191
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a0, $s1, 1
	bgeu	$s1, $t3, .LBB0_2
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_66 Depth 3
                                        #         Child Loop BB0_68 Depth 4
                                        #       Child Loop BB0_75 Depth 3
                                        #         Child Loop BB0_79 Depth 4
                                        #         Child Loop BB0_82 Depth 4
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_87 Depth 3
	move	$s1, $a0
	mul.d	$a0, $a0, $a3
	add.d	$s2, $t5, $a0
	ld.w	$s3, $s2, 28
	beqz	$s3, .LBB0_8
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s5, $s2, 16
	beq	$s5, $a4, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t2, 216
	ld.w	$a1, $s2, 20
	alsl.d	$a7, $a1, $a0, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a1, $a0, $a1
	ld.w	$s4, $a7, 4
	bge	$s4, $a1, .LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$s4, $t2, 216
	ld.w	$a0, $s2, 20
	alsl.d	$a7, $a0, $s4, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a1, $s4, $a0
	ld.w	$s5, $a7, 4
	bge	$s5, $a1, .LBB0_22
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 3
	blt	$s5, $a0, .LBB0_24
# %bb.17:                               # %.preheader194
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t2, 216
	ld.w	$a1, $t2, 64
	alsl.d	$a0, $a1, $a0, 3
	ld.w	$s4, $a0, 4
	blez	$s4, .LBB0_54
# %bb.18:                               # %.lr.ph231.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 8
	bgeu	$s4, $a0, .LBB0_55
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	ori	$s6, $zero, 1
	b	.LBB0_58
.LBB0_20:                               # %.lr.ph225.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s4, $a1
	ori	$a2, $zero, 7
	bgeu	$a0, $a2, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	move	$s5, $a1
	b	.LBB0_28
.LBB0_22:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s5, $a1
	ori	$a2, $zero, 7
	bgeu	$a0, $a2, .LBB0_32
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	move	$s6, $a1
	b	.LBB0_35
.LBB0_24:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $s5
	bnez	$a0, .LBB0_64
	b	.LBB0_53
.LBB0_25:                               # %vector.ph406
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$t1, $a0, 1
	bstrpick.d	$a7, $t1, 32, 3
	slli.d	$a0, $a7, 3
	alsl.d	$s5, $a7, $a1, 3
	slli.d	$a7, $a1, 4
	alsl.d	$a1, $a1, $a7, 2
	add.d	$t0, $t6, $a1
	move	$s6, $a0
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB0_26:                               # %vector.body409
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $t0, -80
	ld.w	$a7, $t0, -60
	ld.w	$s7, $t0, -40
	ld.w	$s8, $t0, -20
	vinsgr2vr.w	$vr4, $a1, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s7, 2
	vinsgr2vr.w	$vr4, $s8, 3
	ld.w	$a1, $t0, 0
	ld.w	$a7, $t0, 20
	ld.w	$s7, $t0, 40
	ld.w	$s8, $t0, 60
	vinsgr2vr.w	$vr5, $a1, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $s7, 2
	vinsgr2vr.w	$vr5, $s8, 3
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	addi.d	$s6, $s6, -8
	addi.d	$t0, $t0, 160
	bnez	$s6, .LBB0_26
# %bb.27:                               # %middle.block415
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr2, $vr3, $vr2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$t0, $vr2, 0
	beq	$t1, $a0, .LBB0_30
.LBB0_28:                               # %.lr.ph225.preheader455
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a0, $s5, 4
	alsl.d	$a0, $s5, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a1, $s4, $s5
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_29:                               # %.lr.ph225
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a0, 0
	add.d	$t0, $a7, $t0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_29
.LBB0_30:                               # %._crit_edge226
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t0, 0
	blt	$a0, $s3, .LBB0_89
# %bb.31:                               # %thread-pre-split.thread
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s4, $s2, 20
	b	.LBB0_64
.LBB0_32:                               # %vector.ph438
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$t1, $a0, 1
	bstrpick.d	$a7, $t1, 32, 3
	slli.d	$a0, $a7, 3
	alsl.d	$s6, $a7, $a1, 3
	slli.d	$a7, $a1, 4
	alsl.d	$a1, $a1, $a7, 2
	add.d	$t0, $t6, $a1
	move	$s7, $a0
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB0_33:                               # %vector.body441
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $t0, -80
	ld.w	$a7, $t0, -60
	ld.w	$s8, $t0, -40
	ld.w	$ra, $t0, -20
	vinsgr2vr.w	$vr4, $a1, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s8, 2
	vinsgr2vr.w	$vr4, $ra, 3
	ld.w	$a1, $t0, 0
	ld.w	$a7, $t0, 20
	ld.w	$s8, $t0, 40
	ld.w	$ra, $t0, 60
	vinsgr2vr.w	$vr5, $a1, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $s8, 2
	vinsgr2vr.w	$vr5, $ra, 3
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	addi.d	$s7, $s7, -8
	addi.d	$t0, $t0, 160
	bnez	$s7, .LBB0_33
# %bb.34:                               # %middle.block447
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr2, $vr3, $vr2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$t0, $vr2, 0
	beq	$t1, $a0, .LBB0_37
.LBB0_35:                               # %.lr.ph.preheader457
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a0, $s6, 4
	alsl.d	$a0, $s6, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a1, $s5, $s6
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_36:                               # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a0, 0
	add.d	$t0, $a7, $t0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_36
.LBB0_37:                               # %._crit_edge
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t0, 0
	blt	$a0, $s3, .LBB0_89
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a0, $s2, 24
	alsl.d	$a7, $a0, $s4, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a1, $s4, $a0
	ld.w	$s4, $a7, 4
	bge	$s4, $a1, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	b	.LBB0_47
.LBB0_40:                               # %.lr.ph218.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s4, $a1
	ori	$a2, $zero, 7
	bgeu	$a0, $a2, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	move	$s5, $a1
	b	.LBB0_45
.LBB0_42:                               # %vector.ph422
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$t1, $a0, 1
	bstrpick.d	$a7, $t1, 32, 3
	slli.d	$a0, $a7, 3
	alsl.d	$s5, $a7, $a1, 3
	slli.d	$a7, $a1, 4
	alsl.d	$a1, $a1, $a7, 2
	add.d	$t0, $t6, $a1
	move	$s6, $a0
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB0_43:                               # %vector.body425
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $t0, -80
	ld.w	$a7, $t0, -60
	ld.w	$s7, $t0, -40
	ld.w	$s8, $t0, -20
	vinsgr2vr.w	$vr4, $a1, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s7, 2
	vinsgr2vr.w	$vr4, $s8, 3
	ld.w	$a1, $t0, 0
	ld.w	$a7, $t0, 20
	ld.w	$s7, $t0, 40
	ld.w	$s8, $t0, 60
	vinsgr2vr.w	$vr5, $a1, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $s7, 2
	vinsgr2vr.w	$vr5, $s8, 3
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	addi.d	$s6, $s6, -8
	addi.d	$t0, $t0, 160
	bnez	$s6, .LBB0_43
# %bb.44:                               # %middle.block431
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr2, $vr3, $vr2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$t0, $vr2, 0
	beq	$t1, $a0, .LBB0_47
.LBB0_45:                               # %.lr.ph218.preheader456
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a0, $s5, 4
	alsl.d	$a0, $s5, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a1, $s4, $s5
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_46:                               # %.lr.ph218
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a0, 0
	add.d	$t0, $a7, $t0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_46
.LBB0_47:                               # %._crit_edge219
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t0, 0
	blt	$a0, $s3, .LBB0_89
# %bb.48:                               # %.preheader193.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a1, $a0, %got_pc_lo12(randVar)
	ld.w	$t0, $a1, 0
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB0_49:                               # %.preheader193
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	mul.d	$a0, $t0, $a5
	add.w	$t0, $a0, $a6
	st.w	$t0, $a1, 0
	bstrpick.d	$a0, $t0, 30, 0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	ld.w	$a0, $s2, 16
	fmul.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	beq	$a0, $a7, .LBB0_49
# %bb.50:                               #   in Loop: Header=BB0_9 Depth=2
	beqz	$a7, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s4, $s2, 24
	bnez	$a0, .LBB0_64
	b	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s4, $s2, 20
	bnez	$a0, .LBB0_64
.LBB0_53:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s8, $s2, 20
	vldi	$vr2, -912
	move	$ra, $s8
	b	.LBB0_65
.LBB0_54:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	b	.LBB0_60
.LBB0_55:                               # %vector.ph393
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	srli.d	$a1, $s4, 3
	ori	$s6, $zero, 1
	bstrins.d	$s6, $a1, 30, 3
	move	$t0, $t6
	move	$t1, $a0
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr1, 0
	.p2align	4, , 16
.LBB0_56:                               # %vector.body396
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $t0, -60
	ld.w	$a7, $t0, -40
	ld.w	$s7, $t0, -20
	ld.w	$s8, $t0, 0
	vinsgr2vr.w	$vr4, $a1, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s7, 2
	vinsgr2vr.w	$vr4, $s8, 3
	ld.w	$a1, $t0, 20
	ld.w	$a7, $t0, 40
	ld.w	$s7, $t0, 60
	ld.w	$s8, $t0, 80
	vinsgr2vr.w	$vr5, $a1, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $s7, 2
	vinsgr2vr.w	$vr5, $s8, 3
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 160
	bnez	$t1, .LBB0_56
# %bb.57:                               # %middle.block401
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr2, $vr3, $vr2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$t0, $vr2, 0
	beq	$a0, $s4, .LBB0_60
.LBB0_58:                               # %.lr.ph231.preheader454
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a0, $s4, 1
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a0, $s6, 4
	alsl.d	$a0, $s6, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a1, $a1, $s6
	.p2align	4, , 16
.LBB0_59:                               # %.lr.ph231
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a0, 0
	add.d	$t0, $a7, $t0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_59
.LBB0_60:                               # %._crit_edge232
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t0, 0
	blt	$a0, $s3, .LBB0_89
# %bb.61:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a1, $a0, %got_pc_lo12(randVar)
	ld.w	$t0, $a1, 0
	.p2align	4, , 16
.LBB0_62:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa2, $s5
	ffint.d.w	$fa2, $fa2
	mul.d	$a0, $t0, $a5
	add.w	$t0, $a0, $a6
	st.w	$t0, $a1, 0
	bstrpick.d	$a0, $t0, 30, 0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	ld.w	$a0, $s2, 16
	fmul.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s5, $fa2
	beq	$a0, $s5, .LBB0_62
# %bb.63:                               # %.loopexit192
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$s4, $s5, 1
	beqz	$a0, .LBB0_53
	.p2align	4, , 16
.LBB0_64:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t2, 216
	addi.w	$a1, $s4, 0
	alsl.d	$a7, $a1, $a0, 3
	slli.d	$a1, $a1, 3
	ldx.w	$s8, $a0, $a1
	ld.w	$ra, $a7, 4
	sub.d	$a0, $ra, $s8
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
.LBB0_65:                               #   in Loop: Header=BB0_9 Depth=2
	addi.w	$t1, $ra, 1
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	ld.w	$t0, $a0, 0
.LBB0_66:                               # %.critedge
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_68 Depth 4
	mul.d	$a1, $t0, $a5
	add.w	$t0, $a1, $a6
	bstrpick.d	$a1, $t0, 30, 0
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s3, $fa3
	add.w	$a1, $s8, $s3
	st.w	$t0, $a0, 0
	blt	$ra, $a1, .LBB0_66
# %bb.67:                               # %.lr.ph237
                                        #   in Loop: Header=BB0_66 Depth=3
	move	$a7, $zero
	ld.w	$s5, $s2, 28
	add.d	$s7, $s8, $s3
	slli.d	$s3, $s7, 4
	alsl.d	$s3, $s7, $s3, 2
	add.d	$s6, $t4, $s3
	move	$s3, $a1
	.p2align	4, , 16
.LBB0_68:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a2, $s6, 8
	add.w	$a7, $a2, $a7
	bge	$a7, $s5, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=4
	addi.w	$s3, $s3, 1
	addi.d	$s6, $s6, 20
	bne	$t1, $s3, .LBB0_68
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_70:                               # %.loopexit
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s8, $zero
	move	$s2, $s1
	blt	$a1, $s3, .LBB0_75
.LBB0_71:                               # %._crit_edge247
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a1, $s6, 0
	sub.w	$a0, $s5, $s8
	add.d	$a1, $a1, $a0
	st.w	$a1, $s6, 0
	blez	$a0, .LBB0_8
# %bb.72:                               # %.lr.ph252.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$a0, $s2, $a0
	addi.w	$t1, $s2, 0
	addi.d	$a1, $t1, 1
	slt	$a2, $a0, $a1
	masknez	$a7, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a7
	sub.d	$t0, $a1, $t1
	bgeu	$t0, $a4, .LBB0_83
# %bb.73:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a1, $t1
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_74:                               # %._crit_edge241
                                        #   in Loop: Header=BB0_75 Depth=3
	addi.d	$s7, $s7, 1
	add.d	$s8, $ra, $s8
	beq	$s7, $s3, .LBB0_71
.LBB0_75:                               # %.lr.ph246
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_79 Depth 4
                                        #         Child Loop BB0_82 Depth 4
	slli.d	$a0, $s7, 4
	alsl.d	$a1, $s7, $a0, 2
	add.d	$a0, $t4, $a1
	ld.w	$ra, $a0, 8
	ldx.w	$a2, $t4, $a1
	move	$a0, $s2
	add.d	$a2, $a2, $ra
	stx.w	$a2, $t4, $a1
	add.w	$s2, $ra, $s2
	blez	$ra, .LBB0_74
# %bb.76:                               # %.lr.ph240.preheader
                                        #   in Loop: Header=BB0_75 Depth=3
	addi.w	$t0, $a0, 0
	addi.d	$a0, $t0, 1
	slt	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	sub.d	$a1, $a0, $t0
	bgeu	$a1, $a4, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_75 Depth=3
	move	$a0, $t0
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_78:                               # %vector.ph381
                                        #   in Loop: Header=BB0_75 Depth=3
	move	$a7, $a1
	bstrins.d	$a7, $zero, 0, 0
	add.d	$a0, $a7, $t0
	mul.d	$a2, $t0, $a3
	add.d	$t0, $t8, $a2
	move	$t1, $a7
	.p2align	4, , 16
.LBB0_79:                               # %vector.body384
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$s7, $t0, -44
	st.w	$s7, $t0, 0
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, 88
	bnez	$t1, .LBB0_79
# %bb.80:                               # %middle.block388
                                        #   in Loop: Header=BB0_75 Depth=3
	beq	$a1, $a7, .LBB0_74
.LBB0_81:                               # %.lr.ph240.preheader452
                                        #   in Loop: Header=BB0_75 Depth=3
	mul.d	$a1, $a0, $a3
	add.d	$a1, $s0, $a1
	.p2align	4, , 16
.LBB0_82:                               # %.lr.ph240
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$s7, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 44
	blt	$a0, $s2, .LBB0_82
	b	.LBB0_74
.LBB0_83:                               # %vector.ph
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a7, $t0
	bstrins.d	$a7, $zero, 0, 0
	add.d	$a1, $a7, $t1
	mul.d	$a2, $t1, $a3
	add.d	$t1, $t8, $a2
	move	$s2, $a7
	.p2align	4, , 16
.LBB0_84:                               # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s3, $t1, -44
	st.w	$s3, $t1, 0
	addi.d	$s2, $s2, -2
	addi.d	$t1, $t1, 88
	bnez	$s2, .LBB0_84
# %bb.85:                               # %middle.block
                                        #   in Loop: Header=BB0_9 Depth=2
	beq	$t0, $a7, .LBB0_8
.LBB0_86:                               # %.lr.ph252.preheader453
                                        #   in Loop: Header=BB0_9 Depth=2
	mul.d	$a2, $a1, $a3
	add.d	$a7, $s0, $a2
	.p2align	4, , 16
.LBB0_87:                               # %.lr.ph252
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s3, $a7, 0
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 44
	blt	$a1, $a0, .LBB0_87
	b	.LBB0_8
.LBB0_88:                               # %._crit_edge266
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
.LBB0_89:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	placepin, .Lfunc_end0-placepin
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DEATH: Sequence was specified which"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" required more capacity than given\n"
	.size	.L.str.1, 36

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"sides could hanlde. Problem cell:%d\n"
	.size	.L.str.2, 37

	.section	".note.GNU-stack","",@progbits
	.addrsig
