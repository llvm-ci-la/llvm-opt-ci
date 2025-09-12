	.file	"placepin.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function placepin
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	placepin
	.p2align	5
	.type	placepin,@function
placepin:                               # @placepin
# %bb.0:
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
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_88
# %bb.1:                                # %.lr.ph265
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$a1, $a1, %got_pc_lo12(cellarray)
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 44
	ori	$a4, $zero, 2
	lu12i.w	$a1, 269412
	ori	$a5, $a1, 3693
	lu12i.w	$a1, 3
	ori	$a6, $a1, 57
	vrepli.b	$vr0, 0
	ori	$a1, $zero, 1
                                        # implicit-def: $r28
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit195.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB0_3:                                # %.loopexit195
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a1, $fp, 1
	bge	$fp, $a0, .LBB0_88
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
	move	$fp, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$t2, $a2, $a1
	ld.w	$a1, $t2, 76
	beqz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $t2, 128
	beqz	$a1, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t3, $t2, 132
	blez	$t3, .LBB0_3
# %bb.7:                                # %.lr.ph258
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t4, $t2, 136
	ld.d	$t5, $t2, 144
	addi.d	$a0, $t4, 88
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
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
	ld.w	$s4, $s2, 28
	beqz	$s4, .LBB0_8
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s6, $s2, 16
	pcalau12i	$s3, %pc_hi20(.LCPI0_0)
	beq	$s6, $a4, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 1
	bne	$s6, $a0, .LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t2, 216
	ld.w	$a1, $s2, 20
	alsl.d	$a7, $a1, $a0, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a2, $a0, $a1
	ld.w	$s5, $a7, 4
	bge	$s5, $a2, .LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$s5, $t2, 216
	ld.w	$a0, $s2, 20
	alsl.d	$a1, $a0, $s5, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a2, $s5, $a0
	ld.w	$s6, $a1, 4
	bge	$s6, $a2, .LBB0_22
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 3
	blt	$s6, $a0, .LBB0_24
# %bb.17:                               # %.preheader194
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t2, 216
	ld.w	$a1, $t2, 64
	alsl.d	$a0, $a1, $a0, 3
	ld.w	$t1, $a0, 4
	blez	$t1, .LBB0_54
# %bb.18:                               # %.lr.ph231.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 8
	bgeu	$t1, $a0, .LBB0_55
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a1, $zero
	ori	$s5, $zero, 1
	b	.LBB0_58
.LBB0_20:                               # %.lr.ph225.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s5, $a2
	ori	$a1, $zero, 7
	bgeu	$a0, $a1, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	move	$t1, $a2
	b	.LBB0_28
.LBB0_22:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s6, $a2
	ori	$a1, $zero, 7
	bgeu	$a0, $a1, .LBB0_32
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	move	$t1, $a2
	b	.LBB0_35
.LBB0_24:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $s6
	bnez	$a0, .LBB0_64
	b	.LBB0_53
.LBB0_25:                               # %vector.ph406
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a7, $a0, 32, 3
	slli.d	$a1, $a7, 3
	alsl.d	$t1, $a7, $a2, 3
	slli.d	$a7, $a2, 4
	alsl.d	$a2, $a2, $a7, 2
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	add.d	$t0, $a7, $a2
	move	$s6, $a1
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_26:                               # %vector.body409
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t0, -80
	ld.w	$a7, $t0, -60
	ld.w	$s7, $t0, -40
	ld.w	$s8, $t0, -20
	vinsgr2vr.w	$vr3, $a2, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $s7, 2
	vinsgr2vr.w	$vr3, $s8, 3
	ld.w	$a2, $t0, 0
	ld.w	$a7, $t0, 20
	ld.w	$s7, $t0, 40
	ld.w	$s8, $t0, 60
	vinsgr2vr.w	$vr4, $a2, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s7, 2
	vinsgr2vr.w	$vr4, $s8, 3
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr2, $vr4, $vr2
	addi.d	$s6, $s6, -8
	addi.d	$t0, $t0, 160
	bnez	$s6, .LBB0_26
# %bb.27:                               # %middle.block415
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t0, $vr1, 0
	beq	$a0, $a1, .LBB0_30
.LBB0_28:                               # %.lr.ph225.preheader455
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a0, $t1, 4
	alsl.d	$a0, $t1, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a1, $s5, $t1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_29:                               # %.lr.ph225
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, 0
	add.d	$t0, $a2, $t0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_29
.LBB0_30:                               # %._crit_edge226
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t0, 0
	blt	$a0, $s4, .LBB0_89
# %bb.31:                               # %thread-pre-split.thread
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s5, $s2, 20
	b	.LBB0_64
.LBB0_32:                               # %vector.ph438
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a7, $a0, 32, 3
	slli.d	$a1, $a7, 3
	alsl.d	$t1, $a7, $a2, 3
	slli.d	$a7, $a2, 4
	alsl.d	$a2, $a2, $a7, 2
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	add.d	$t0, $a7, $a2
	move	$s7, $a1
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_33:                               # %vector.body441
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t0, -80
	ld.w	$a7, $t0, -60
	ld.w	$s8, $t0, -40
	ld.w	$ra, $t0, -20
	vinsgr2vr.w	$vr3, $a2, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $s8, 2
	vinsgr2vr.w	$vr3, $ra, 3
	ld.w	$a2, $t0, 0
	ld.w	$a7, $t0, 20
	ld.w	$s8, $t0, 40
	ld.w	$ra, $t0, 60
	vinsgr2vr.w	$vr4, $a2, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s8, 2
	vinsgr2vr.w	$vr4, $ra, 3
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr2, $vr4, $vr2
	addi.d	$s7, $s7, -8
	addi.d	$t0, $t0, 160
	bnez	$s7, .LBB0_33
# %bb.34:                               # %middle.block447
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t0, $vr1, 0
	beq	$a0, $a1, .LBB0_37
.LBB0_35:                               # %.lr.ph.preheader457
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a0, $t1, 4
	alsl.d	$a0, $t1, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a1, $s6, $t1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_36:                               # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, 0
	add.d	$t0, $a2, $t0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_36
.LBB0_37:                               # %._crit_edge
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t0, 0
	blt	$a0, $s4, .LBB0_89
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a0, $s2, 24
	alsl.d	$a1, $a0, $s5, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a2, $s5, $a0
	ld.w	$s5, $a1, 4
	bge	$s5, $a2, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	b	.LBB0_47
.LBB0_40:                               # %.lr.ph218.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s5, $a2
	ori	$a1, $zero, 7
	bgeu	$a0, $a1, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	move	$t1, $a2
	b	.LBB0_45
.LBB0_42:                               # %vector.ph422
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a7, $a0, 32, 3
	slli.d	$a1, $a7, 3
	alsl.d	$t1, $a7, $a2, 3
	slli.d	$a7, $a2, 4
	alsl.d	$a2, $a2, $a7, 2
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	add.d	$t0, $a7, $a2
	move	$s6, $a1
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_43:                               # %vector.body425
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t0, -80
	ld.w	$a7, $t0, -60
	ld.w	$s7, $t0, -40
	ld.w	$s8, $t0, -20
	vinsgr2vr.w	$vr3, $a2, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $s7, 2
	vinsgr2vr.w	$vr3, $s8, 3
	ld.w	$a2, $t0, 0
	ld.w	$a7, $t0, 20
	ld.w	$s7, $t0, 40
	ld.w	$s8, $t0, 60
	vinsgr2vr.w	$vr4, $a2, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s7, 2
	vinsgr2vr.w	$vr4, $s8, 3
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr2, $vr4, $vr2
	addi.d	$s6, $s6, -8
	addi.d	$t0, $t0, 160
	bnez	$s6, .LBB0_43
# %bb.44:                               # %middle.block431
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t0, $vr1, 0
	beq	$a0, $a1, .LBB0_47
.LBB0_45:                               # %.lr.ph218.preheader456
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a0, $t1, 4
	alsl.d	$a0, $t1, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a1, $s5, $t1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_46:                               # %.lr.ph218
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, 0
	add.d	$t0, $a2, $t0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_46
.LBB0_47:                               # %._crit_edge219
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t0, 0
	blt	$a0, $s4, .LBB0_89
# %bb.48:                               # %.preheader193.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a1, $a0, %got_pc_lo12(randVar)
	ld.w	$a7, $a1, 0
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB0_49:                               # %.preheader193
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	mul.d	$a0, $a7, $a5
	add.w	$a7, $a0, $a6
	st.w	$a7, $a1, 0
	fld.d	$fa2, $s3, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a0, $a7, 30, 0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa2, $fa3, $fa2
	ld.w	$a0, $s2, 16
	fmul.d	$fa1, $fa2, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	beq	$a0, $a2, .LBB0_49
# %bb.50:                               #   in Loop: Header=BB0_9 Depth=2
	beqz	$a2, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s5, $s2, 24
	bnez	$a0, .LBB0_64
	b	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s5, $s2, 20
	bnez	$a0, .LBB0_64
.LBB0_53:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$ra, $s2, 20
	vldi	$vr1, -912
	move	$t1, $ra
	b	.LBB0_65
.LBB0_54:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a1, $zero
	b	.LBB0_60
.LBB0_55:                               # %vector.ph393
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $t1, 30, 3
	slli.d	$a0, $a0, 3
	srli.d	$a1, $t1, 3
	ori	$s5, $zero, 1
	bstrins.d	$s5, $a1, 30, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$t0, $a0
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_56:                               # %vector.body396
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, -60
	ld.w	$a7, $a1, -40
	ld.w	$s7, $a1, -20
	ld.w	$s8, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $s7, 2
	vinsgr2vr.w	$vr3, $s8, 3
	ld.w	$a2, $a1, 20
	ld.w	$a7, $a1, 40
	ld.w	$s7, $a1, 60
	ld.w	$s8, $a1, 80
	vinsgr2vr.w	$vr4, $a2, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $s7, 2
	vinsgr2vr.w	$vr4, $s8, 3
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr2, $vr4, $vr2
	addi.d	$t0, $t0, -8
	addi.d	$a1, $a1, 160
	bnez	$t0, .LBB0_56
# %bb.57:                               # %middle.block401
                                        #   in Loop: Header=BB0_9 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a1, $vr1, 0
	beq	$a0, $t1, .LBB0_60
.LBB0_58:                               # %.lr.ph231.preheader454
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a0, $t1, 1
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a0, $s5, 4
	alsl.d	$a0, $s5, $a0, 2
	add.d	$a0, $t7, $a0
	sub.d	$a2, $a2, $s5
	.p2align	4, , 16
.LBB0_59:                               # %.lr.ph231
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a0, 0
	add.d	$a1, $a7, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 20
	bnez	$a2, .LBB0_59
.LBB0_60:                               # %._crit_edge232
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $a1, 0
	blt	$a0, $s4, .LBB0_89
# %bb.61:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a1, $a0, %got_pc_lo12(randVar)
	ld.w	$a7, $a1, 0
	.p2align	4, , 16
.LBB0_62:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa1, $s6
	ffint.d.w	$fa1, $fa1
	mul.d	$a0, $a7, $a5
	add.w	$a7, $a0, $a6
	st.w	$a7, $a1, 0
	fld.d	$fa2, $s3, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a0, $a7, 30, 0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa2, $fa3, $fa2
	ld.w	$a0, $s2, 16
	fmul.d	$fa1, $fa2, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s6, $fa1
	beq	$a0, $s6, .LBB0_62
# %bb.63:                               # %.loopexit192
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$s5, $s6, 1
	beqz	$a0, .LBB0_53
	.p2align	4, , 16
.LBB0_64:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t2, 216
	addi.w	$a1, $s5, 0
	alsl.d	$a2, $a1, $a0, 3
	slli.d	$a1, $a1, 3
	ldx.w	$ra, $a0, $a1
	ld.w	$t1, $a2, 4
	sub.d	$a0, $t1, $ra
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
.LBB0_65:                               #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $t1, 1
	pcalau12i	$a1, %got_pc_hi20(randVar)
	ld.d	$t0, $a1, %got_pc_lo12(randVar)
	ld.w	$a1, $t0, 0
.LBB0_66:                               # %.critedge
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_68 Depth 4
	mul.d	$a1, $a1, $a5
	add.w	$a1, $a1, $a6
	fld.d	$fa2, $s3, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa3, $a2
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s4, $fa2
	add.w	$a7, $ra, $s4
	st.w	$a1, $t0, 0
	blt	$t1, $a7, .LBB0_66
# %bb.67:                               # %.lr.ph237
                                        #   in Loop: Header=BB0_66 Depth=3
	move	$a2, $zero
	ld.w	$s6, $s2, 28
	add.d	$s8, $ra, $s4
	slli.d	$s4, $s8, 4
	alsl.d	$s4, $s8, $s4, 2
	add.d	$s7, $t4, $s4
	move	$s4, $a7
	.p2align	4, , 16
.LBB0_68:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t6, $s7, 8
	add.w	$a2, $t6, $a2
	bge	$a2, $s6, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=4
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, 20
	bne	$a0, $s4, .LBB0_68
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_70:                               # %.loopexit
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s3, $zero
	move	$s2, $s1
	blt	$a7, $s4, .LBB0_75
.LBB0_71:                               # %._crit_edge247
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a1, $s7, 0
	sub.w	$a0, $s6, $s3
	add.d	$a1, $a1, $a0
	st.w	$a1, $s7, 0
	blez	$a0, .LBB0_8
# %bb.72:                               # %.lr.ph252.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$a0, $s2, $a0
	addi.w	$t0, $s2, 0
	addi.d	$a1, $t0, 1
	slt	$a2, $a0, $a1
	masknez	$a7, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a7
	sub.d	$a7, $a1, $t0
	bgeu	$a7, $a4, .LBB0_83
# %bb.73:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a1, $t0
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_74:                               # %._crit_edge241
                                        #   in Loop: Header=BB0_75 Depth=3
	addi.d	$s8, $s8, 1
	add.d	$s3, $t1, $s3
	beq	$s8, $s4, .LBB0_71
.LBB0_75:                               # %.lr.ph246
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_79 Depth 4
                                        #         Child Loop BB0_82 Depth 4
	slli.d	$a0, $s8, 4
	alsl.d	$a1, $s8, $a0, 2
	add.d	$a0, $t4, $a1
	ld.w	$t1, $a0, 8
	ldx.w	$a2, $t4, $a1
	move	$a0, $s2
	add.d	$a2, $a2, $t1
	stx.w	$a2, $t4, $a1
	add.w	$s2, $t1, $s2
	blez	$t1, .LBB0_74
# %bb.76:                               # %.lr.ph240.preheader
                                        #   in Loop: Header=BB0_75 Depth=3
	addi.w	$a7, $a0, 0
	addi.d	$a0, $a7, 1
	slt	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	sub.d	$a1, $a0, $a7
	bgeu	$a1, $a4, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_75 Depth=3
	move	$a0, $a7
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_78:                               # %vector.ph381
                                        #   in Loop: Header=BB0_75 Depth=3
	move	$a2, $a1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a0, $a2, $a7
	mul.d	$a7, $a7, $a3
	add.d	$a7, $t8, $a7
	move	$t0, $a2
	.p2align	4, , 16
.LBB0_79:                               # %vector.body384
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$s8, $a7, -44
	st.w	$s8, $a7, 0
	addi.d	$t0, $t0, -2
	addi.d	$a7, $a7, 88
	bnez	$t0, .LBB0_79
# %bb.80:                               # %middle.block388
                                        #   in Loop: Header=BB0_75 Depth=3
	beq	$a1, $a2, .LBB0_74
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
	st.w	$s8, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 44
	blt	$a0, $s2, .LBB0_82
	b	.LBB0_74
.LBB0_83:                               # %vector.ph
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a2, $a7
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a1, $a2, $t0
	mul.d	$t0, $t0, $a3
	add.d	$t0, $t8, $t0
	move	$t1, $a2
	.p2align	4, , 16
.LBB0_84:                               # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s4, $t0, -44
	st.w	$s4, $t0, 0
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, 88
	bnez	$t1, .LBB0_84
# %bb.85:                               # %middle.block
                                        #   in Loop: Header=BB0_9 Depth=2
	beq	$a7, $a2, .LBB0_8
.LBB0_86:                               # %.lr.ph252.preheader453
                                        #   in Loop: Header=BB0_9 Depth=2
	mul.d	$a2, $a1, $a3
	add.d	$a2, $s0, $a2
	.p2align	4, , 16
.LBB0_87:                               # %.lr.ph252
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s4, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 44
	blt	$a1, $a0, .LBB0_87
	b	.LBB0_8
.LBB0_88:                               # %._crit_edge266
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
