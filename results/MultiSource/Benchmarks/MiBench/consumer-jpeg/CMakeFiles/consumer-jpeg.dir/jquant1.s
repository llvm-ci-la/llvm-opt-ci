	.file	"jquant1.c"
	.text
	.globl	jinit_1pass_quantizer           # -- Begin function jinit_1pass_quantizer
	.p2align	5
	.type	jinit_1pass_quantizer,@function
jinit_1pass_quantizer:                  # @jinit_1pass_quantizer
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 152
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 608
	pcalau12i	$a1, %pc_hi20(start_pass_1_quant)
	addi.d	$a1, $a1, %pc_lo12(start_pass_1_quant)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(finish_pass_1_quant)
	addi.d	$a1, $a1, %pc_lo12(finish_pass_1_quant)
	st.d	$a1, $a0, 16
	pcalau12i	$a1, %pc_hi20(new_color_map_1_quant)
	addi.d	$a1, $a1, %pc_lo12(new_color_map_1_quant)
	ld.w	$a2, $fp, 136
	st.d	$a1, $a0, 24
	st.d	$zero, $a0, 112
	ori	$a1, $zero, 5
	st.d	$zero, $a0, 80
	bge	$a2, $a1, .LBB0_11
# %bb.1:
	ld.w	$s0, $fp, 112
	ori	$a0, $zero, 257
	bge	$s0, $a0, .LBB0_12
.LBB0_2:
	ld.w	$s3, $fp, 136
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB0_13
.LBB0_3:                                # %.lr.ph.us.i.i.preheader
	addi.w	$a0, $s3, -1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$a2, $a0
	bstrins.d	$a2, $a3, 1, 0
	ori	$a4, $zero, 5
	vrepli.d	$vr0, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge.us.i.i
                                        #   in Loop: Header=BB0_5 Depth=1
	blt	$s0, $a5, .LBB0_14
.LBB0_5:                                # %.lr.ph.us.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	move	$s4, $a3
	addi.d	$a3, $a3, 1
	move	$a5, $a3
	ori	$a6, $zero, 1
	bltu	$s3, $a4, .LBB0_9
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.d	$vr1, $a3, 0
	vreplgr2vr.d	$vr2, $a3
	move	$a5, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr1, $vr1, $vr2
	addi.w	$a5, $a5, -4
	vmul.d	$vr3, $vr3, $vr2
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	vmul.d	$vr1, $vr3, $vr1
	vreplvei.d	$vr2, $vr1, 1
	vmul.d	$vr1, $vr1, $vr2
	vpickve2gr.d	$a5, $vr1, 0
	move	$a6, $a2
	beq	$a0, $a1, .LBB0_4
.LBB0_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	sub.d	$a6, $s3, $a6
	.p2align	4, , 16
.LBB0_10:                               # %scalar.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a6, -1
	mul.d	$a5, $a5, $a3
	bnez	$a6, .LBB0_10
	b	.LBB0_4
.LBB0_11:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 54
	lu32i.d	$a1, 4
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$s0, $fp, 112
	ori	$a0, $zero, 257
	blt	$s0, $a0, .LBB0_2
.LBB0_12:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 56
	lu32i.d	$a1, 256
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$s0, $fp, 112
	ld.w	$s3, $fp, 136
	ori	$a0, $zero, 2
	bge	$s3, $a0, .LBB0_3
.LBB0_13:                               # %.split.preheader.i.i
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s4, $a1, $a0
	addi.d	$a5, $s4, 1
.LBB0_14:                               # %.split57.us.i.i
	ld.d	$s1, $fp, 608
	addi.w	$a0, $s4, 0
	ori	$s5, $zero, 1
	bltu	$s5, $a0, .LBB0_16
# %bb.15:
	ld.d	$a0, $fp, 0
	st.w	$a5, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 55
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_16:
	addi.d	$s2, $s1, 60
	blez	$s3, .LBB0_27
# %bb.17:                               # %.lr.ph.preheader.i.i
	ori	$a0, $zero, 8
	bgeu	$s3, $a0, .LBB0_19
# %bb.18:
	move	$a0, $zero
	ori	$s5, $zero, 1
	b	.LBB0_22
.LBB0_19:                               # %vector.ph66
	bstrpick.d	$a0, $s3, 30, 3
	slli.d	$a0, $a0, 3
	vreplgr2vr.w	$vr0, $s4
	vrepli.w	$vr1, 1
	addi.d	$a1, $s1, 76
	move	$a2, $a0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB0_20:                               # %vector.body71
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	vmul.w	$vr1, $vr1, $vr0
	vmul.w	$vr2, $vr2, $vr0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB0_20
# %bb.21:                               # %middle.block76
	vmul.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s5, $vr0, 0
	beq	$a0, $s3, .LBB0_24
.LBB0_22:                               # %.lr.ph.i.i.preheader
	sub.d	$a1, $s3, $a0
	alsl.d	$a0, $a0, $s1, 2
	addi.d	$a0, $a0, 60
	.p2align	4, , 16
.LBB0_23:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s4, $a0, 0
	mul.w	$s5, $s5, $s4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_23
.LBB0_24:                               # %.lr.ph64.us.preheader.i.i
	ld.w	$a0, $fp, 56
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s2, $a1
	div.w	$a2, $s5, $a1
	addi.d	$a4, $a1, 1
	mulw.d.w	$a3, $a2, $a4
	blt	$s0, $a3, .LBB0_27
# %bb.25:                               # %.lr.ph.i
	ori	$a1, $zero, 1
	alsl.d	$a5, $a0, $s2, 2
	bne	$s3, $a1, .LBB0_48
	.p2align	4, , 16
.LBB0_26:                               # %._crit_edge.us70.i.us.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a5, 0
	ld.w	$a0, $fp, 56
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s2, $a1
	move	$s5, $a3
	addi.w	$a2, $a3, 0
	div.w	$a2, $a2, $a1
	addi.d	$a4, $a1, 1
	mulw.d.w	$a3, $a2, $a4
	alsl.d	$a5, $a0, $s2, 2
	bge	$s0, $a3, .LBB0_26
.LBB0_27:                               # %select_ncolors.exit.i
	ld.w	$a1, $fp, 136
	ld.d	$a0, $fp, 0
	addi.w	$s0, $s5, 0
	ori	$a2, $zero, 3
	st.w	$s5, $a0, 44
	bne	$a1, $a2, .LBB0_29
# %bb.28:
	ld.w	$a1, $s1, 60
	st.w	$a1, $a0, 48
	ld.w	$a1, $s1, 64
	st.w	$a1, $a0, 52
	ld.w	$a1, $s1, 68
	st.w	$a1, $a0, 56
	ori	$a1, $zero, 93
	move	$a2, $a0
	b	.LBB0_30
.LBB0_29:
	ld.d	$a2, $fp, 0
	ori	$a1, $zero, 94
.LBB0_30:
	ld.d	$a2, $a2, 8
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 8
	ld.d	$a4, $a0, 16
	ld.w	$a3, $fp, 136
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	jirl	$ra, $a4, 0
	ld.w	$a5, $fp, 136
	blez	$a5, .LBB0_43
# %bb.31:                               # %.lr.ph74.preheader.i
	move	$a1, $zero
	move	$a2, $s0
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_32:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.w	$a5, $fp, 136
.LBB0_33:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_34 Depth=1
	addi.d	$a1, $a1, 1
	bge	$a1, $a5, .LBB0_43
.LBB0_34:                               # %.lr.ph74.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #       Child Loop BB0_40 Depth 3
                                        #         Child Loop BB0_41 Depth 4
	slli.d	$a3, $a1, 2
	ldx.w	$a3, $s2, $a3
	move	$a4, $a2
	div.w	$a2, $a2, $a3
	blez	$a3, .LBB0_33
# %bb.35:                               # %.lr.ph70.i
                                        #   in Loop: Header=BB0_34 Depth=1
	blez	$a2, .LBB0_33
# %bb.36:                               # %.lr.ph70.split.us.preheader.i
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a7, $a3, -1
	bstrpick.d	$t0, $a7, 31, 1
	alsl.d	$t1, $a1, $a0, 3
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               # %._crit_edge68.split.us.us.i
                                        #   in Loop: Header=BB0_38 Depth=2
	addi.d	$a5, $a5, 1
	add.d	$a6, $a6, $a2
	beq	$a5, $a3, .LBB0_32
.LBB0_38:                               # %.lr.ph70.split.us.i
                                        #   Parent Loop BB0_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_40 Depth 3
                                        #         Child Loop BB0_41 Depth 4
	mul.w	$t2, $a2, $a5
	bge	$t2, $s0, .LBB0_37
# %bb.39:                               # %.preheader.lr.ph.us.i
                                        #   in Loop: Header=BB0_38 Depth=2
	slli.d	$t2, $a5, 8
	sub.d	$t2, $t2, $a5
	add.d	$t2, $t2, $t0
	div.du	$t2, $t2, $a7
	move	$t3, $a6
	.p2align	4, , 16
.LBB0_40:                               # %.preheader.us.us.i
                                        #   Parent Loop BB0_34 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_41 Depth 4
	move	$t4, $zero
	.p2align	4, , 16
.LBB0_41:                               #   Parent Loop BB0_34 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        #       Parent Loop BB0_40 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t5, $t1, 0
	add.d	$t5, $t5, $t3
	stx.b	$t2, $t5, $t4
	addi.d	$t4, $t4, 1
	bne	$a2, $t4, .LBB0_41
# %bb.42:                               # %._crit_edge.us.us.i
                                        #   in Loop: Header=BB0_40 Depth=3
	add.d	$t3, $t3, $a4
	blt	$t3, $s0, .LBB0_40
	b	.LBB0_37
.LBB0_43:                               # %create_colormap.exit
	st.d	$a0, $s1, 32
	st.w	$s0, $s1, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(create_colorindex)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 104
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_47
# %bb.44:
	ld.w	$a0, $fp, 136
	blez	$a0, .LBB0_47
# %bb.45:                               # %.lr.ph.i24
	ld.w	$a0, $fp, 128
	move	$s1, $zero
	ld.d	$a1, $fp, 608
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s0, $a0, 1
	addi.d	$s2, $a1, 112
	.p2align	4, , 16
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.w	$a1, $fp, 136
	st.d	$a0, $s2, 0
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	blt	$s1, $a1, .LBB0_46
.LBB0_47:                               # %alloc_fs_workspace.exit
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
.LBB0_48:                               # %.peel.next.i.preheader.i.preheader
	addi.d	$a0, $s3, -1
	pcalau12i	$a1, %pc_hi20(select_ncolors.RGB_order+4)
	addi.d	$a1, $a1, %pc_lo12(select_ncolors.RGB_order+4)
	ori	$a2, $zero, 2
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_49:                               # %.._crit_edge.us70.i.loopexit_crit_edge.i
                                        #   in Loop: Header=BB0_51 Depth=1
	ld.w	$a3, $fp, 56
	move	$s5, $a7
.LBB0_50:                               # %._crit_edge.us70.i.loopexit.i
                                        #   in Loop: Header=BB0_51 Depth=1
	addi.d	$a3, $a3, -2
	sltui	$a5, $a3, 1
	slli.d	$a3, $a5, 2
	ldx.w	$a3, $s2, $a3
	addi.w	$a4, $s5, 0
	div.w	$a6, $a4, $a3
	addi.d	$a4, $a3, 1
	mulw.d.w	$a3, $a6, $a4
	alsl.d	$a5, $a5, $s2, 2
	blt	$s0, $a3, .LBB0_27
.LBB0_51:                               # %.peel.next.i.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	st.w	$a4, $a5, 0
	ori	$a4, $zero, 1
	move	$a5, $a0
	move	$a6, $a1
	move	$s5, $a3
	.p2align	4, , 16
.LBB0_52:                               # %.peel.next.i.i
                                        #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $fp, 56
	move	$t0, $a4
	bne	$a3, $a2, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=2
	ld.w	$t0, $a6, 0
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$a7, $s2, $a7
	addi.w	$t1, $s5, 0
	div.w	$t2, $t1, $a7
	addi.d	$t1, $a7, 1
	mulw.d.w	$a7, $t2, $t1
	blt	$s0, $a7, .LBB0_50
# %bb.55:                               #   in Loop: Header=BB0_52 Depth=2
	alsl.d	$a3, $t0, $s2, 2
	st.w	$t1, $a3, 0
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, -1
	addi.w	$a4, $a4, 1
	move	$s5, $a7
	bnez	$a5, .LBB0_52
	b	.LBB0_49
.Lfunc_end0:
	.size	jinit_1pass_quantizer, .Lfunc_end0-jinit_1pass_quantizer
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_1_quant
	.type	start_pass_1_quant,@function
start_pass_1_quant:                     # @start_pass_1_quant
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
	move	$fp, $a0
	ld.d	$s0, $a0, 608
	ld.d	$a1, $s0, 32
	ld.w	$a2, $s0, 40
	ld.w	$a0, $a0, 104
	st.d	$a1, $fp, 152
	ori	$a1, $zero, 2
	st.w	$a2, $fp, 148
	beq	$a0, $a1, .LBB1_7
# %bb.1:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_5
# %bb.2:
	bnez	$a0, .LBB1_9
# %bb.3:
	ld.w	$a0, $fp, 136
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB1_10
# %bb.4:
	pcalau12i	$a0, %pc_hi20(color_quantize3)
	addi.d	$a0, $a0, %pc_lo12(color_quantize3)
	b	.LBB1_11
.LBB1_5:
	ld.w	$a0, $fp, 136
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(quantize_ord_dither)
	addi.d	$a1, $a1, %pc_lo12(quantize_ord_dither)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(quantize3_ord_dither)
	addi.d	$a2, $a2, %pc_lo12(quantize3_ord_dither)
	ld.w	$a3, $s0, 56
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $s0, 8
	st.w	$zero, $s0, 76
	beqz	$a3, .LBB1_12
# %bb.6:
	ld.d	$a0, $s0, 80
	bnez	$a0, .LBB1_29
	b	.LBB1_13
.LBB1_7:
	pcalau12i	$a0, %pc_hi20(quantize_fs_dither)
	addi.d	$a0, $a0, %pc_lo12(quantize_fs_dither)
	ld.d	$a1, $s0, 112
	st.d	$a0, $s0, 8
	st.w	$zero, $s0, 144
	addi.d	$s1, $s0, 112
	beqz	$a1, .LBB1_23
# %bb.8:                                # %.alloc_fs_workspace.exit_crit_edge
	ld.w	$a1, $fp, 136
	b	.LBB1_26
.LBB1_9:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 47
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	jr	$a1
.LBB1_10:
	pcalau12i	$a0, %pc_hi20(color_quantize)
	addi.d	$a0, $a0, %pc_lo12(color_quantize)
.LBB1_11:                               # %create_odither_tables.exit
	st.d	$a0, $s0, 8
	b	.LBB1_29
.LBB1_12:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(create_colorindex)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
	bnez	$a0, .LBB1_29
.LBB1_13:
	ld.w	$a1, $fp, 136
	blez	$a1, .LBB1_29
# %bb.14:                               # %.lr.ph26.i
	ld.d	$a0, $fp, 608
	addi.d	$s0, $a0, 60
	addi.d	$s1, $a0, 80
	ori	$s2, $zero, 1024
	pcalau12i	$a0, %pc_hi20(base_dither_matrix+8)
	addi.d	$s3, $a0, %pc_lo12(base_dither_matrix+8)
	move	$s4, $zero
	vrepli.b	$vr3, 0
	vrepli.w	$vr4, 255
	vst	$vr3, $sp, 32                   # 16-byte Folded Spill
	vst	$vr4, $sp, 16                   # 16-byte Folded Spill
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_15:                               #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $a2, 0
	beqz	$a0, .LBB1_20
	.p2align	4, , 16
.LBB1_16:                               # %make_odither_array.exit.i
                                        #   in Loop: Header=BB1_17 Depth=1
	slli.d	$a2, $s4, 3
	addi.d	$s4, $s4, 1
	stx.d	$a0, $s1, $a2
	bge	$s4, $a1, .LBB1_29
.LBB1_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_21 Depth 2
	slli.d	$a0, $s4, 2
	ldx.w	$s5, $s0, $a0
	move	$a0, $s0
	move	$a3, $s4
	move	$a2, $s1
	beqz	$s4, .LBB1_20
	.p2align	4, , 16
.LBB1_18:                               # %.lr.ph.i
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a0, 0
	beq	$s5, $a4, .LBB1_15
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=2
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB1_18
.LBB1_20:                               # %.thread.i
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1024
	move	$a0, $fp
	jirl	$ra, $a3, 0
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	move	$a1, $zero
	slli.d	$a2, $s5, 9
	addi.d	$a2, $a2, -512
	vreplgr2vr.d	$vr0, $a2
	move	$a2, $s3
	.p2align	4, , 16
.LBB1_21:                               # %.preheader.i.i
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, -8
	vinsgr2vr.w	$vr1, $a3, 0
	vilvl.b	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr3, $vr1
	vslli.w	$vr1, $vr1, 1
	vsub.w	$vr1, $vr4, $vr1
	vmul.w	$vr1, $vr1, $vr4
	vshuf4i.w	$vr2, $vr1, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vdiv.d	$vr1, $vr1, $vr0
	vdiv.d	$vr2, $vr2, $vr0
	vpickev.w	$vr1, $vr2, $vr1
	vstx	$vr1, $a0, $a1
	ld.w	$a3, $a2, -4
	add.d	$a4, $a0, $a1
	vinsgr2vr.w	$vr1, $a3, 0
	vilvl.b	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr3, $vr1
	vslli.w	$vr1, $vr1, 1
	vsub.w	$vr1, $vr4, $vr1
	vmul.w	$vr1, $vr1, $vr4
	vshuf4i.w	$vr2, $vr1, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vdiv.d	$vr1, $vr1, $vr0
	vdiv.d	$vr2, $vr2, $vr0
	vpickev.w	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 16
	ld.w	$a3, $a2, 0
	vinsgr2vr.w	$vr1, $a3, 0
	vilvl.b	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr3, $vr1
	vslli.w	$vr1, $vr1, 1
	vsub.w	$vr1, $vr4, $vr1
	vmul.w	$vr1, $vr1, $vr4
	vshuf4i.w	$vr2, $vr1, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vdiv.d	$vr1, $vr1, $vr0
	vdiv.d	$vr2, $vr2, $vr0
	vpickev.w	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 32
	ld.w	$a3, $a2, 4
	vinsgr2vr.w	$vr1, $a3, 0
	vilvl.b	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr3, $vr1
	vslli.w	$vr1, $vr1, 1
	vsub.w	$vr1, $vr4, $vr1
	vmul.w	$vr1, $vr1, $vr4
	vshuf4i.w	$vr2, $vr1, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vdiv.d	$vr1, $vr1, $vr0
	vdiv.d	$vr2, $vr2, $vr0
	vpickev.w	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 48
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 16
	bne	$a1, $s2, .LBB1_21
# %bb.22:                               # %make_odither_array.exit.loopexit.i
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.w	$a1, $fp, 136
	b	.LBB1_16
.LBB1_23:
	ld.w	$a0, $fp, 136
	blez	$a0, .LBB1_29
# %bb.24:                               # %.lr.ph.i30
	ld.w	$a0, $fp, 128
	move	$s2, $zero
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s0, $a0, 1
	move	$s3, $s1
	.p2align	4, , 16
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.w	$a1, $fp, 136
	st.d	$a0, $s3, 0
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	blt	$s2, $a1, .LBB1_25
.LBB1_26:                               # %alloc_fs_workspace.exit
	blez	$a1, .LBB1_29
# %bb.27:                               # %.lr.ph.preheader
	ld.w	$a0, $fp, 128
	move	$s2, $zero
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s0, $a0, 1
	.p2align	4, , 16
.LBB1_28:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 136
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB1_28
.LBB1_29:                               # %create_odither_tables.exit
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
.Lfunc_end1:
	.size	start_pass_1_quant, .Lfunc_end1-start_pass_1_quant
                                        # -- End function
	.p2align	5                               # -- Begin function finish_pass_1_quant
	.type	finish_pass_1_quant,@function
finish_pass_1_quant:                    # @finish_pass_1_quant
# %bb.0:
	ret
.Lfunc_end2:
	.size	finish_pass_1_quant, .Lfunc_end2-finish_pass_1_quant
                                        # -- End function
	.p2align	5                               # -- Begin function new_color_map_1_quant
	.type	new_color_map_1_quant,@function
new_color_map_1_quant:                  # @new_color_map_1_quant
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 45
	st.w	$a3, $a1, 40
	jr	$a2
.Lfunc_end3:
	.size	new_color_map_1_quant, .Lfunc_end3-new_color_map_1_quant
                                        # -- End function
	.p2align	5                               # -- Begin function create_colorindex
	.type	create_colorindex,@function
create_colorindex:                      # @create_colorindex
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s0, $a0, 104
	ld.d	$s1, $a0, 608
	ld.d	$a0, $a0, 8
	addi.d	$a1, $s0, -1
	sltui	$a1, $a1, 1
	st.w	$a1, $s1, 56
	ld.d	$a4, $a0, 16
	ld.w	$a3, $fp, 136
	ori	$s2, $zero, 256
	masknez	$a0, $s2, $a1
	ori	$a2, $zero, 766
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a0
	ori	$a1, $zero, 1
	ori	$s3, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.w	$a1, $fp, 136
	st.d	$a0, $s1, 48
	blez	$a1, .LBB4_13
# %bb.1:                                # %.lr.ph62
	move	$a0, $zero
	ld.w	$a1, $s1, 40
	addi.d	$a2, $s1, 60
	ori	$a3, $zero, 510
	ori	$a4, $zero, 255
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a5, $fp, 136
	addi.d	$a0, $a0, 1
	bge	$a0, $a5, .LBB4_13
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #     Child Loop BB4_12 Depth 2
	ld.d	$a6, $s1, 48
	slli.d	$a5, $a0, 2
	ldx.w	$t0, $a2, $a5
	slli.d	$a5, $a0, 3
	ldx.d	$a5, $a6, $a5
	bne	$s0, $s3, .LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	alsl.d	$a6, $a0, $a6, 3
	addi.d	$a5, $a5, 255
	st.d	$a5, $a6, 0
.LBB4_5:                                # %._crit_edge72
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a6, $zero
	move	$a7, $zero
	div.w	$a1, $a1, $t0
	addi.w	$t1, $t0, -1
	addi.d	$t2, $t1, 255
	slli.w	$t0, $t1, 1
	div.d	$t2, $t2, $t0
	addi.d	$t1, $t1, 765
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %._crit_edge
                                        #   in Loop: Header=BB4_7 Depth=2
	mul.d	$t3, $a7, $a1
	stx.b	$t3, $a5, $a6
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB4_10
.LBB4_7:                                # %.preheader
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
	addi.w	$t3, $t2, 0
	bge	$t3, $a6, .LBB4_6
# %bb.8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_7 Depth=2
	mul.d	$t2, $a7, $a3
	add.d	$t3, $t1, $t2
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	div.d	$t2, $t3, $t0
	addi.w	$t4, $t2, 0
	addi.w	$a7, $a7, 1
	addi.d	$t3, $t3, 510
	blt	$t4, $a6, .LBB4_9
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_10:                               #   in Loop: Header=BB4_3 Depth=1
	bne	$s0, $s3, .LBB4_2
# %bb.11:                               # %.preheader52
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a6, $a5, 0
	move	$a7, $zero
	addi.d	$t0, $a5, -1
	addi.d	$t1, $a5, 256
	.p2align	4, , 16
.LBB4_12:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a6, $t0, 0
	ld.b	$t2, $a5, 255
	stx.b	$t2, $t1, $a7
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, -1
	bne	$a7, $a4, .LBB4_12
	b	.LBB4_2
.LBB4_13:                               # %._crit_edge63
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	create_colorindex, .Lfunc_end4-create_colorindex
                                        # -- End function
	.p2align	5                               # -- Begin function color_quantize3
	.type	color_quantize3,@function
color_quantize3:                        # @color_quantize3
# %bb.0:
	blez	$a3, .LBB5_6
# %bb.1:
	ld.w	$a4, $a0, 128
	beqz	$a4, .LBB5_6
# %bb.2:                                # %.lr.ph.preheader
	ld.d	$a0, $a0, 608
	ld.d	$a6, $a0, 48
	ld.d	$a0, $a6, 0
	ld.d	$a5, $a6, 8
	ld.d	$a6, $a6, 16
	move	$a7, $zero
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	slli.d	$t1, $a7, 3
	ldx.d	$t0, $a1, $t1
	ldx.d	$t2, $a2, $t1
	move	$t1, $a4
	.p2align	4, , 16
.LBB5_4:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t3, $t0, 0
	ld.bu	$t4, $t0, 1
	ld.bu	$t5, $t0, 2
	ldx.b	$t3, $a0, $t3
	ldx.b	$t4, $a5, $t4
	ldx.b	$t5, $a6, $t5
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $t5
	st.b	$t3, $t2, 0
	addi.d	$t2, $t2, 1
	addi.w	$t1, $t1, -1
	addi.d	$t0, $t0, 3
	bnez	$t1, .LBB5_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$a7, $a7, 1
	bne	$a7, $a3, .LBB5_3
.LBB5_6:                                # %._crit_edge34
	ret
.Lfunc_end5:
	.size	color_quantize3, .Lfunc_end5-color_quantize3
                                        # -- End function
	.p2align	5                               # -- Begin function color_quantize
	.type	color_quantize,@function
color_quantize:                         # @color_quantize
# %bb.0:
	blez	$a3, .LBB6_16
# %bb.1:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ld.wu	$s1, $a0, 128
	beqz	$s1, .LBB6_15
# %bb.2:                                # %.lr.ph.split
	move	$fp, $a3
	move	$s0, $a2
	ld.w	$a2, $a0, 136
	blez	$a2, .LBB6_14
# %bb.3:                                # %.preheader.lr.ph.us.preheader
	ld.d	$a0, $a0, 608
	ld.d	$a0, $a0, 48
	move	$a3, $zero
	bstrpick.d	$a4, $a2, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a0, 16
	ori	$a6, $zero, 4
	vrepli.b	$vr0, 0
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %._crit_edge35.split.us.us
                                        #   in Loop: Header=BB6_5 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $fp, .LBB6_15
.LBB6_5:                                # %.preheader.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #       Child Loop BB6_10 Depth 3
                                        #       Child Loop BB6_13 Depth 3
	slli.d	$t0, $a3, 3
	ldx.d	$a7, $a1, $t0
	ldx.d	$t1, $s0, $t0
	move	$t0, $s1
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB6_7 Depth=2
	st.b	$t3, $t1, 0
	addi.d	$t1, $t1, 1
	addi.w	$t0, $t0, -1
	add.d	$a7, $a7, $a2
	beqz	$t0, .LBB6_4
.LBB6_7:                                # %.preheader.us.us
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_10 Depth 3
                                        #       Child Loop BB6_13 Depth 3
	bgeu	$a2, $a6, .LBB6_9
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=2
	move	$t5, $zero
	move	$t3, $zero
	move	$t2, $a7
	b	.LBB6_12
	.p2align	4, , 16
.LBB6_9:                                # %vector.ph
                                        #   in Loop: Header=BB6_7 Depth=2
	move	$t3, $zero
	add.d	$t2, $a7, $a4
	move	$t4, $a5
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB6_10:                               # %vector.body
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $a7, $t3
	ldx.h	$t6, $a7, $t3
	ld.h	$t5, $t5, 2
	vinsgr2vr.h	$vr3, $t6, 0
	vinsgr2vr.h	$vr4, $t5, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.w	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vilvl.w	$vr4, $vr0, $vr4
	ld.d	$t5, $t4, -16
	vpickve2gr.d	$t6, $vr3, 0
	ld.d	$t7, $t4, -8
	vpickve2gr.d	$t8, $vr3, 1
	ld.d	$s2, $t4, 0
	vpickve2gr.d	$s3, $vr4, 0
	ld.d	$s4, $t4, 8
	vpickve2gr.d	$s5, $vr4, 1
	ldx.b	$t5, $t5, $t6
	ldx.b	$t6, $t7, $t8
	ldx.b	$t7, $s2, $s3
	ldx.b	$t8, $s4, $s5
	vinsgr2vr.b	$vr3, $t5, 0
	vinsgr2vr.b	$vr3, $t6, 1
	vinsgr2vr.b	$vr4, $t7, 0
	vinsgr2vr.b	$vr4, $t8, 1
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 32
	bne	$a4, $t3, .LBB6_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB6_7 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vpickve2gr.d	$t3, $vr1, 0
	move	$t5, $a4
	beq	$a4, $a2, .LBB6_6
.LBB6_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB6_7 Depth=2
	alsl.d	$t4, $t5, $a0, 3
	sub.d	$t5, $a2, $t5
	.p2align	4, , 16
.LBB6_13:                               # %scalar.ph
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t4, 0
	ld.bu	$t7, $t2, 0
	ldx.bu	$t6, $t6, $t7
	addi.d	$t2, $t2, 1
	add.d	$t3, $t3, $t6
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB6_13
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_14:                               # %.preheader.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB6_14
.LBB6_15:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB6_16:                               # %._crit_edge
	ret
.Lfunc_end6:
	.size	color_quantize, .Lfunc_end6-color_quantize
                                        # -- End function
	.p2align	5                               # -- Begin function quantize3_ord_dither
	.type	quantize3_ord_dither,@function
quantize3_ord_dither:                   # @quantize3_ord_dither
# %bb.0:
	blez	$a3, .LBB7_10
# %bb.1:                                # %.lr.ph52
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a0, 128
	ld.d	$a0, $a0, 608
	beqz	$a4, .LBB7_6
# %bb.2:                                # %.lr.ph.preheader
	ld.d	$a7, $a0, 48
	ld.d	$a5, $a7, 0
	ld.d	$a6, $a7, 8
	ld.d	$a7, $a7, 16
	ld.w	$t0, $a0, 76
	move	$t1, $zero
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	move	$t2, $zero
	slli.d	$t4, $t1, 3
	ldx.d	$t3, $a1, $t4
	ldx.d	$t8, $a2, $t4
	ld.d	$t4, $a0, 80
	ld.d	$t5, $a0, 88
	ld.d	$t6, $a0, 96
	slli.d	$t7, $t0, 6
	add.d	$t4, $t4, $t7
	add.d	$t5, $t5, $t7
	add.d	$t6, $t6, $t7
	move	$t7, $a4
	.p2align	4, , 16
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$fp, $t3, 0
	slli.d	$s0, $t2, 2
	ldx.w	$s1, $t4, $s0
	ld.bu	$s2, $t3, 1
	ldx.w	$s3, $t5, $s0
	add.w	$fp, $s1, $fp
	ld.bu	$s1, $t3, 2
	ldx.w	$s0, $t6, $s0
	add.w	$s2, $s3, $s2
	ldx.b	$fp, $a5, $fp
	ldx.b	$s2, $a6, $s2
	add.w	$s0, $s0, $s1
	ldx.b	$s0, $a7, $s0
	add.d	$fp, $s2, $fp
	add.d	$fp, $fp, $s0
	st.b	$fp, $t8, 0
	addi.d	$t8, $t8, 1
	addi.d	$t2, $t2, 1
	andi	$t2, $t2, 15
	addi.w	$t7, $t7, -1
	addi.d	$t3, $t3, 3
	bnez	$t7, .LBB7_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$t0, $t0, 1
	andi	$t0, $t0, 15
	addi.d	$t1, $t1, 1
	st.w	$t0, $a0, 76
	bne	$t1, $a3, .LBB7_3
	b	.LBB7_9
.LBB7_6:                                # %.lr.ph52.split.us
	ld.w	$a1, $a0, 76
	.p2align	4, , 16
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, 1
	addi.w	$a3, $a3, -1
	andi	$a1, $a1, 15
	bnez	$a3, .LBB7_7
# %bb.8:                                # %._crit_edge53.split.us
	st.w	$a1, $a0, 76
.LBB7_9:
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB7_10:                               # %._crit_edge53
	ret
.Lfunc_end7:
	.size	quantize3_ord_dither, .Lfunc_end7-quantize3_ord_dither
                                        # -- End function
	.p2align	5                               # -- Begin function quantize_ord_dither
	.type	quantize_ord_dither,@function
quantize_ord_dither:                    # @quantize_ord_dither
# %bb.0:
	blez	$a3, .LBB8_13
# %bb.1:                                # %.lr.ph54
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
	move	$fp, $a2
	ld.w	$s4, $a0, 136
	ld.w	$s5, $a0, 128
	ld.d	$s2, $a0, 608
	bstrpick.d	$s0, $s5, 31, 0
	blez	$s4, .LBB8_10
# %bb.2:                                # %.lr.ph54.split.us
	bstrpick.d	$s3, $a3, 31, 0
	beqz	$s5, .LBB8_9
# %bb.3:                                # %.lr.ph50.us.preheader
	move	$s1, $a1
	move	$s6, $zero
	addi.d	$s7, $s2, 80
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph50.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #       Child Loop BB8_6 Depth 3
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $fp, $a0
	alsl.d	$s8, $s6, $fp, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 76
	move	$a1, $zero
	alsl.d	$a2, $s6, $s1, 3
	slli.d	$a3, $a0, 6
	.p2align	4, , 16
.LBB8_5:                                # %.lr.ph.us
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_6 Depth 3
	ld.d	$a4, $a2, 0
	ld.d	$a6, $s2, 48
	ld.d	$a5, $s8, 0
	slli.d	$a7, $a1, 3
	ldx.d	$t1, $s7, $a7
	ldx.d	$a6, $a6, $a7
	move	$t0, $zero
	add.d	$a7, $t1, $a3
	move	$t1, $s5
	.p2align	4, , 16
.LBB8_6:                                #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$t2, $a4, $a1
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a7, $t3
	add.w	$t2, $t3, $t2
	ldx.b	$t2, $a6, $t2
	ld.b	$t3, $a5, 0
	add.d	$t2, $t3, $t2
	st.b	$t2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 1
	andi	$t0, $t0, 15
	addi.w	$t1, $t1, -1
	add.d	$a4, $a4, $s4
	bnez	$t1, .LBB8_6
# %bb.7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB8_5 Depth=2
	addi.d	$a1, $a1, 1
	bne	$a1, $s4, .LBB8_5
# %bb.8:                                # %._crit_edge51.split.us57
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a0, $a0, 1
	andi	$a0, $a0, 15
	addi.d	$s6, $s6, 1
	st.w	$a0, $s2, 76
	bne	$s6, $s3, .LBB8_4
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph50.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 76
	addi.d	$a0, $a0, 1
	andi	$a0, $a0, 15
	st.w	$a0, $s2, 76
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB8_9
	b	.LBB8_12
.LBB8_10:                               # %.lr.ph54.split.preheader
	bstrpick.d	$s1, $a3, 31, 0
	.p2align	4, , 16
.LBB8_11:                               # %.lr.ph54.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 76
	addi.d	$a0, $a0, 1
	andi	$a0, $a0, 15
	st.w	$a0, $s2, 76
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB8_11
.LBB8_12:
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
.LBB8_13:                               # %._crit_edge55
	ret
.Lfunc_end8:
	.size	quantize_ord_dither, .Lfunc_end8-quantize_ord_dither
                                        # -- End function
	.p2align	5                               # -- Begin function quantize_fs_dither
	.type	quantize_fs_dither,@function
quantize_fs_dither:                     # @quantize_fs_dither
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	blez	$a3, .LBB9_14
# %bb.1:                                # %.lr.ph105
	move	$s8, $a2
	ld.w	$s4, $a0, 136
	ld.w	$s7, $a0, 128
	ld.d	$s3, $a0, 608
	bstrpick.d	$a1, $s7, 31, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	blez	$s4, .LBB9_12
# %bb.2:                                # %.lr.ph105.split.us
	addi.d	$s5, $s3, 112
	addi.d	$a2, $s7, 1
	bstrpick.d	$s6, $a2, 31, 0
	beqz	$s7, .LBB9_15
# %bb.3:                                # %.lr.ph101.us.preheader
	move	$t8, $zero
	ld.d	$s1, $a0, 408
	addi.d	$a0, $s7, -1
	mul.d	$a2, $a0, $s4
	bstrpick.d	$s2, $a2, 31, 0
	bstrpick.d	$s0, $a0, 31, 0
	sub.w	$fp, $zero, $s4
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB9_4:                                # %.lr.ph101.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
                                        #       Child Loop BB9_9 Depth 3
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $t8, 3
	ldx.d	$a0, $s8, $a0
	alsl.d	$s8, $t8, $s8, 3
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a1, 3
	.p2align	4, , 16
.LBB9_5:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
	ld.d	$a3, $a1, 0
	ld.w	$a4, $s3, 144
	ld.d	$a2, $s8, 0
	add.d	$a3, $a3, $a0
	slli.d	$t0, $a0, 3
	beqz	$a4, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=2
	ldx.d	$a4, $s5, $t0
	add.d	$a3, $a3, $s2
	add.d	$a2, $a2, $s0
	alsl.d	$a6, $s6, $a4, 1
	addi.w	$a4, $zero, -1
	move	$a5, $fp
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=2
	ldx.d	$a6, $s5, $t0
	ori	$a4, $zero, 1
	move	$a5, $s4
.LBB9_8:                                # %.lr.ph.us
                                        #   in Loop: Header=BB9_5 Depth=2
	ld.d	$a7, $s3, 48
	ld.d	$t1, $s3, 32
	ldx.d	$a7, $a7, $t0
	ldx.d	$t0, $t1, $t0
	move	$t5, $zero
	move	$t4, $zero
	move	$t1, $zero
	slli.d	$t2, $a4, 1
	move	$t3, $s7
	.p2align	4, , 16
.LBB9_9:                                #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$t6, $a6, $t2
	ld.bu	$t7, $a3, 0
	add.d	$t5, $t5, $t6
	addi.w	$t5, $t5, 8
	srai.d	$t5, $t5, 4
	add.d	$t5, $t5, $t7
	ldx.bu	$t5, $s1, $t5
	ldx.bu	$t6, $a7, $t5
	ld.b	$t7, $a2, 0
	add.d	$t7, $t7, $t6
	st.b	$t7, $a2, 0
	ldx.bu	$t6, $t0, $t6
	sub.d	$t6, $t5, $t6
	alsl.d	$t5, $t6, $t6, 1
	add.d	$t1, $t5, $t1
	st.h	$t1, $a6, 0
	add.d	$a6, $a6, $t2
	alsl.d	$t1, $t6, $t6, 2
	add.d	$t1, $t1, $t4
	slli.d	$t4, $t6, 3
	sub.d	$t5, $t4, $t6
	add.d	$a3, $a3, $a5
	addi.w	$t3, $t3, -1
	add.d	$a2, $a2, $a4
	move	$t4, $t6
	bnez	$t3, .LBB9_9
# %bb.10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB9_5 Depth=2
	addi.d	$a0, $a0, 1
	st.h	$t1, $a6, 0
	bne	$a0, $s4, .LBB9_5
# %bb.11:                               # %._crit_edge102.split.us109
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a0, $s3, 144
	sltui	$a0, $a0, 1
	addi.d	$t8, $t8, 1
	st.w	$a0, $s3, 144
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bne	$t8, $a0, .LBB9_4
	b	.LBB9_14
.LBB9_12:                               # %.lr.ph105.split.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$fp, $a0, 31, 0
	.p2align	4, , 16
.LBB9_13:                               # %.lr.ph105.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 144
	sltui	$a0, $a0, 1
	st.w	$a0, $s3, 144
	addi.d	$fp, $fp, -1
	addi.d	$s8, $s8, 8
	bnez	$fp, .LBB9_13
.LBB9_14:                               # %._crit_edge106
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB9_15:                               # %.lr.ph101.us.us.preheader
	move	$fp, $zero
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$s0, $a0, 2
	addi.d	$s1, $s3, 136
	addi.d	$s2, $s3, 128
	ori	$s7, $zero, 4
	slli.d	$s6, $s6, 1
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_16:                               # %._crit_edge102.split.us.us.us
                                        #   in Loop: Header=BB9_17 Depth=1
	sltui	$a0, $a0, 1
	addi.d	$fp, $fp, 1
	st.w	$a0, $s3, 144
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB9_14
.LBB9_17:                               # %.lr.ph101.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_23 Depth 2
                                        #     Child Loop BB9_26 Depth 2
                                        #     Child Loop BB9_28 Depth 2
                                        #     Child Loop BB9_31 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s8, $a0
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 144
	beqz	$a0, .LBB9_20
# %bb.18:                               # %.lr.ph101.split.us.split.us113.us.preheader
                                        #   in Loop: Header=BB9_17 Depth=1
	bgeu	$s4, $s7, .LBB9_22
# %bb.19:                               #   in Loop: Header=BB9_17 Depth=1
	move	$a2, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB9_25
	.p2align	4, , 16
.LBB9_20:                               # %.lr.ph101.split.us.split.us.us.us.preheader
                                        #   in Loop: Header=BB9_17 Depth=1
	bgeu	$s4, $s7, .LBB9_27
# %bb.21:                               #   in Loop: Header=BB9_17 Depth=1
	move	$a2, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB9_30
	.p2align	4, , 16
.LBB9_22:                               # %vector.body153.preheader
                                        #   in Loop: Header=BB9_17 Depth=1
	move	$a1, $s1
	move	$a2, $s0
	.p2align	4, , 16
.LBB9_23:                               # %vector.body153
                                        #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, -24
	ld.d	$a4, $a1, -16
	ld.d	$a5, $a1, -8
	ld.d	$a6, $a1, 0
	stx.h	$zero, $a3, $s6
	stx.h	$zero, $a4, $s6
	stx.h	$zero, $a5, $s6
	stx.h	$zero, $a6, $s6
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB9_23
# %bb.24:                               # %middle.block158
                                        #   in Loop: Header=BB9_17 Depth=1
	move	$a2, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $s4, .LBB9_16
.LBB9_25:                               # %.lr.ph101.split.us.split.us113.us.preheader162
                                        #   in Loop: Header=BB9_17 Depth=1
	alsl.d	$a4, $a2, $s5, 3
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB9_26:                               # %.lr.ph101.split.us.split.us113.us
                                        #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a4, 0
	stx.h	$zero, $a3, $s6
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB9_26
	b	.LBB9_16
.LBB9_27:                               # %vector.body.preheader
                                        #   in Loop: Header=BB9_17 Depth=1
	move	$a4, $s2
	move	$a2, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_28:                               # %vector.body
                                        #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vpickve2gr.d	$a3, $vr0, 0
	st.h	$zero, $a3, 0
	vpickve2gr.d	$a3, $vr0, 1
	st.h	$zero, $a3, 0
	vpickve2gr.d	$a3, $vr1, 0
	st.h	$zero, $a3, 0
	vpickve2gr.d	$a3, $vr1, 1
	st.h	$zero, $a3, 0
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, 32
	bnez	$a2, .LBB9_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB9_17 Depth=1
	move	$a2, $s0
	beq	$s0, $s4, .LBB9_16
.LBB9_30:                               # %.lr.ph101.split.us.split.us.us.us.preheader161
                                        #   in Loop: Header=BB9_17 Depth=1
	alsl.d	$a4, $a2, $s5, 3
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB9_31:                               # %.lr.ph101.split.us.split.us.us.us
                                        #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a4, 0
	st.h	$zero, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB9_31
	b	.LBB9_16
.Lfunc_end9:
	.size	quantize_fs_dither, .Lfunc_end9-quantize_fs_dither
                                        # -- End function
	.type	base_dither_matrix,@object      # @base_dither_matrix
	.section	.rodata,"a",@progbits
base_dither_matrix:
	.ascii	"\000\3000\360\f\314<\374\003\3033\363\017\317?\377"
	.ascii	"\200@\260p\214L\274|\203C\263s\217O\277\177"
	.ascii	" \340\020\320,\354\034\334#\343\023\323/\357\037\337"
	.ascii	"\240`\220P\254l\234\\\243c\223S\257o\237_"
	.ascii	"\b\3108\370\004\3044\364\013\313;\373\007\3077\367"
	.ascii	"\210H\270x\204D\264t\213K\273{\207G\267w"
	.ascii	"(\350\030\330$\344\024\324+\353\033\333'\347\027\327"
	.ascii	"\250h\230X\244d\224T\253k\233[\247g\227W"
	.ascii	"\002\3022\362\016\316>\376\001\3011\361\r\315=\375"
	.ascii	"\202B\262r\216N\276~\201A\261q\215M\275}"
	.ascii	"\"\342\022\322.\356\036\336!\341\021\321-\355\035\335"
	.ascii	"\242b\222R\256n\236^\241a\221Q\255m\235]"
	.ascii	"\n\312:\372\006\3066\366\t\3119\371\005\3055\365"
	.ascii	"\212J\272z\206F\266v\211I\271y\205E\265u"
	.ascii	"*\352\032\332&\346\026\326)\351\031\331%\345\025\325"
	.ascii	"\252j\232Z\246f\226V\251i\231Y\245e\225U"
	.size	base_dither_matrix, 256

	.type	select_ncolors.RGB_order,@object # @select_ncolors.RGB_order
	.p2align	2, 0x0
select_ncolors.RGB_order:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.size	select_ncolors.RGB_order, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_1_quant
	.addrsig_sym finish_pass_1_quant
	.addrsig_sym new_color_map_1_quant
	.addrsig_sym color_quantize3
	.addrsig_sym color_quantize
	.addrsig_sym quantize3_ord_dither
	.addrsig_sym quantize_ord_dither
	.addrsig_sym quantize_fs_dither
