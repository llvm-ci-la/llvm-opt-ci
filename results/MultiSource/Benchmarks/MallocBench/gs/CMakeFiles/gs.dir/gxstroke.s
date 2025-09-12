	.file	"gxstroke.c"
	.text
	.globl	gx_stroke_fill                  # -- Begin function gx_stroke_fill
	.p2align	5
	.type	gx_stroke_fill,@function
gx_stroke_fill:                         # @gx_stroke_fill
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$s0, %pc_hi20(stroke_path)
	st.d	$zero, $s0, %pc_lo12(stroke_path)
	pcalau12i	$a1, %pc_hi20(stroke_fill)
	addi.d	$a1, $a1, %pc_lo12(stroke_fill)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(stroke)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, %pc_lo12(stroke_path)
	beqz	$a2, .LBB0_4
# %bb.1:
	bltz	$a0, .LBB0_3
# %bb.2:
	ld.d	$a1, $fp, 312
	addi.w	$a3, $zero, -1
	move	$a0, $a2
	move	$a2, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(gx_fill_path)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, %pc_lo12(stroke_path)
.LBB0_3:
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB0_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	gx_stroke_fill, .Lfunc_end0-gx_stroke_fill
                                        # -- End function
	.globl	stroke                          # -- Begin function stroke
	.p2align	5
	.type	stroke,@function
stroke:                                 # @stroke
# %bb.0:
	addi.d	$sp, $sp, -960
	st.d	$ra, $sp, 952                   # 8-byte Folded Spill
	st.d	$fp, $sp, 944                   # 8-byte Folded Spill
	st.d	$s0, $sp, 936                   # 8-byte Folded Spill
	st.d	$s1, $sp, 928                   # 8-byte Folded Spill
	st.d	$s2, $sp, 920                   # 8-byte Folded Spill
	st.d	$s3, $sp, 912                   # 8-byte Folded Spill
	st.d	$s4, $sp, 904                   # 8-byte Folded Spill
	st.d	$s5, $sp, 896                   # 8-byte Folded Spill
	st.d	$s6, $sp, 888                   # 8-byte Folded Spill
	st.d	$s7, $sp, 880                   # 8-byte Folded Spill
	st.d	$s8, $sp, 872                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 864                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 856                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 848                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 840                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 832                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 824                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 816                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 808                  # 8-byte Folded Spill
	ld.d	$a3, $a2, 280
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a3, 24
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	fld.s	$fa0, $a3, 0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 32
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $a2, 40
	ld.d	$a3, $a2, 56
	fst.s	$fa0, $sp, 656
	ld.d	$a0, $sp, 656
	fld.s	$fs0, $a2, 24
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	fld.s	$fs1, $a2, 72
	or	$a1, $a3, $a1
	slli.d	$a2, $a0, 1
	bstrpick.d	$s1, $a1, 62, 0
	beqz	$a2, .LBB1_3
# %bb.1:
	movgr2fr.w	$fa0, $a0
	beqz	$s1, .LBB1_8
# %bb.2:                                # %.thread
	lu12i.w	$a0, 284672
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 112
	bnez	$a0, .LBB1_4
	b	.LBB1_9
.LBB1_3:                                # %.thread227
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	lu12i.w	$a0, 246333
	ori	$a0, $a0, 1802
	st.w	$a0, $sp, 656
                                        # implicit-def: $f0
                                        # kill: killed $f0
	ld.w	$a0, $fp, 112
	beqz	$a0, .LBB1_9
.LBB1_4:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 440
	fcvt.d.s	$fa0, $fa0
	addi.d	$a1, $sp, 664
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_flatten)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB1_73
# %bb.5:
	ld.d	$s4, $sp, 752
	bnez	$s4, .LBB1_10
.LBB1_6:                                # %._crit_edge277
	ld.w	$a0, $fp, 112
	beqz	$a0, .LBB1_72
# %bb.7:
	addi.d	$a0, $sp, 664
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	b	.LBB1_72
.LBB1_8:
	fneg.s	$fa1, $fs0
	movgr2fr.w	$fa2, $zero
	fcmp.clt.s	$fcc0, $fs0, $fa2
	fsel	$fa1, $fs0, $fa1, $fcc0
	fneg.s	$fa3, $fs1
	fcmp.clt.s	$fcc0, $fs1, $fa2
	fsel	$fa2, $fs1, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fmul.s	$fa1, $fa1, $fa0
	vldi	$vr2, -1176
	fcmp.cule.s	$fcc0, $fa2, $fa1
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 284672
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	ld.w	$a0, $fp, 112
	bnez	$a0, .LBB1_4
.LBB1_9:
	ld.d	$s4, $fp, 88
	beqz	$s4, .LBB1_72
.LBB1_10:                               # %.lr.ph276
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(stroke_path)
	pcalau12i	$a0, %pc_hi20(stroke_path_body)
	addi.d	$s3, $a0, %pc_lo12(stroke_path_body)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	lu12i.w	$a0, 235520
	movgr2fr.w	$fs3, $a0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	beqz	$s4, .LBB1_6
.LBB1_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #       Child Loop BB1_43 Depth 3
	ld.w	$s8, $s4, 48
	ld.d	$s0, $s4, 8
	beqz	$s8, .LBB1_68
# %bb.13:                               # %.lr.ph268.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	ld.d	$s7, $s4, 24
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	ld.d	$fp, $s4, 32
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$s6, $a0, 40
	fld.s	$fs4, $a0, 48
	ld.w	$s5, $a0, 44
	move	$s4, $zero
	move	$s1, $zero
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_16 Depth=2
	addi.w	$s1, $s1, 1
	addi.w	$s4, $s4, 1
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_15:                               #   in Loop: Header=BB1_16 Depth=2
	ld.d	$s0, $s0, 8
	addi.w	$s8, $s8, -1
	beqz	$s8, .LBB1_62
.LBB1_16:                               # %.lr.ph268
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_43 Depth 3
	move	$s2, $s7
	move	$s3, $fp
	ld.d	$s7, $s0, 24
	ld.d	$fp, $s0, 32
	bne	$s7, $s2, .LBB1_18
# %bb.17:                               # %.lr.ph268
                                        #   in Loop: Header=BB1_16 Depth=2
	beq	$fp, $s3, .LBB1_15
.LBB1_18:                               #   in Loop: Header=BB1_16 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_16 Depth=2
	sub.d	$a0, $s7, $s2
	sub.d	$a1, $fp, $s3
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fs5, $fa0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fs6, $fa0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_26
# %bb.20:                               #   in Loop: Header=BB1_16 Depth=2
	fcvt.d.s	$fa0, $fs5
	fcvt.d.s	$fa1, $fs6
	addi.d	$a1, $sp, 144
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gs_idtransform)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $sp, 144
	fld.s	$fa2, $sp, 148
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_21:                               # %.thread299
                                        #   in Loop: Header=BB1_16 Depth=2
	addi.d	$a0, $sp, 616
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 648
	st.d	$s2, $sp, 488
	st.d	$s3, $sp, 496
	st.d	$s7, $sp, 552
	st.d	$fp, $sp, 560
.LBB1_22:                               #   in Loop: Header=BB1_16 Depth=2
	beqz	$s1, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_16 Depth=2
	bnez	$s4, .LBB1_25
	b	.LBB1_14
.LBB1_24:                               #   in Loop: Header=BB1_16 Depth=2
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB1_14
.LBB1_25:                               #   in Loop: Header=BB1_16 Depth=2
	addi.w	$a0, $s4, -1
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 488
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a4, 0
	b	.LBB1_14
.LBB1_26:                               #   in Loop: Header=BB1_16 Depth=2
	fdiv.s	$fa1, $fs5, $fs0
	fdiv.s	$fa2, $fs6, $fs1
.LBB1_27:                               #   in Loop: Header=BB1_16 Depth=2
	fmul.s	$fa0, $fa2, $fa2
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fsqrt.s	$fa0, $fa0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_32
# %bb.28:                               #   in Loop: Header=BB1_16 Depth=2
	fld.s	$fa3, $sp, 52                   # 4-byte Folded Reload
	fdiv.s	$fa3, $fa3, $fa0
	fmul.s	$fa1, $fa3, $fa1
	fst.s	$fa1, $sp, 144
	fmul.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $sp, 148
	fmul.s	$fa3, $fs0, $fa2
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a2, $fa3
	sub.d	$a1, $zero, $a2
	st.d	$a1, $sp, 616
	fmul.s	$fa3, $fs1, $fa1
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a0, $fa3
	fst.d	$fa3, $sp, 624
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	beqz	$a3, .LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_16 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	fld.s	$fa3, $a1, 56
	fmul.s	$fa3, $fa1, $fa3
	ftintrz.l.s	$fa3, $fa3
	fld.s	$fa4, $a1, 40
	movfr2gr.d	$a1, $fa3
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 616
	fmul.s	$fa3, $fa2, $fa4
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a2, $fa3
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 624
.LBB1_30:                               #   in Loop: Header=BB1_16 Depth=2
	srai.d	$a2, $a1, 63
	xor	$a3, $a1, $a2
	sub.d	$a2, $a3, $a2
	srai.d	$a3, $a0, 63
	xor	$a4, $a0, $a3
	sub.d	$a3, $a4, $a3
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 10
	sltui	$a3, $a2, 3
	st.w	$a3, $sp, 648
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_33
# %bb.31:                               #   in Loop: Header=BB1_16 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$a4, $zero
	addi.d	$a5, $sp, 616
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $a5, 16
	vst	$vr1, $a5, 0
	b	.LBB1_35
.LBB1_32:                               #   in Loop: Header=BB1_16 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$a4, $zero
	addi.d	$a5, $sp, 616
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vst	$vr1, $a5, 16
	vst	$vr1, $a5, 0
	ori	$a5, $zero, 1
	st.w	$a5, $sp, 648
	b	.LBB1_35
.LBB1_33:                               #   in Loop: Header=BB1_16 Depth=2
	fmul.s	$fa3, $fs0, $fa1
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a2, $fa3
	fst.d	$fa3, $sp, 632
	fmul.s	$fa3, $fs1, $fa2
	ftintrz.l.s	$fa3, $fa3
	movfr2gr.d	$a3, $fa3
	fst.d	$fa3, $sp, 640
	ori	$a4, $zero, 1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	beqz	$a5, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_16 Depth=2
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	fld.s	$fa3, $a5, 56
	fmul.s	$fa2, $fa2, $fa3
	ftintrz.l.s	$fa2, $fa2
	fld.s	$fa3, $a5, 40
	movfr2gr.d	$a5, $fa2
	add.d	$a2, $a5, $a2
	st.d	$a2, $sp, 632
	fmul.s	$fa1, $fa1, $fa3
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a5, $fa1
	add.d	$a3, $a5, $a3
	st.d	$a3, $sp, 640
	.p2align	4, , 16
.LBB1_35:                               #   in Loop: Header=BB1_16 Depth=2
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	beqz	$a5, .LBB1_50
# %bb.36:                               #   in Loop: Header=BB1_16 Depth=2
	fmul.s	$fs2, $fa0, $fs3
	fcmp.cule.s	$fcc0, $fs2, $fs4
	bcnez	$fcc0, .LBB1_52
# %bb.37:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_16 Depth=2
	fmov.s	$fs7, $fs2
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_38:                               #   in Loop: Header=BB1_43 Depth=3
	addi.w	$s1, $s1, 1
	bnez	$s4, .LBB1_49
# %bb.39:                               # %.thread298
                                        #   in Loop: Header=BB1_43 Depth=3
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_40:                               #   in Loop: Header=BB1_43 Depth=3
	addi.d	$a1, $sp, 320
	move	$a0, $s4
	move	$a2, $zero
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.LBB1_41:                               # %.thread238
                                        #   in Loop: Header=BB1_43 Depth=3
	move	$s6, $zero
	move	$s4, $zero
.LBB1_42:                               # %.thread238
                                        #   in Loop: Header=BB1_43 Depth=3
	fsub.s	$fs7, $fs7, $fs4
	addi.w	$a0, $s5, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	fldx.s	$fs4, $a1, $a0
	fcmp.clt.s	$fcc0, $fs4, $fs7
	bceqz	$fcc0, .LBB1_53
.LBB1_43:                               # %.lr.ph
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s2
	move	$a0, $s3
	fdiv.s	$fa0, $fs4, $fs2
	fmul.s	$fa1, $fa0, $fs5
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa1
	add.d	$s2, $s2, $a2
	fmul.s	$fa0, $fa0, $fs6
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	add.d	$s3, $s3, $a2
	beqz	$s6, .LBB1_46
# %bb.44:                               #   in Loop: Header=BB1_43 Depth=3
	ld.w	$a2, $sp, 648
	st.d	$a1, $sp, 488
	st.d	$a0, $sp, 496
	st.d	$s2, $sp, 552
	st.d	$s3, $sp, 560
	beqz	$a2, .LBB1_47
# %bb.45:                               #   in Loop: Header=BB1_43 Depth=3
	bnez	$s1, .LBB1_38
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_46:                               #   in Loop: Header=BB1_43 Depth=3
	ori	$s6, $zero, 1
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_47:                               #   in Loop: Header=BB1_43 Depth=3
	ld.d	$a2, $sp, 616
	ld.d	$a3, $sp, 624
	sub.d	$a4, $a1, $a2
	st.d	$a4, $sp, 504
	sub.d	$a4, $a0, $a3
	st.d	$a4, $sp, 512
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 520
	add.d	$a0, $a3, $a0
	st.d	$a0, $sp, 528
	add.d	$a0, $a2, $s2
	st.d	$a0, $sp, 568
	add.d	$a0, $a3, $s3
	st.d	$a0, $sp, 576
	sub.d	$a0, $s2, $a2
	vld	$vr0, $sp, 632
	st.d	$a0, $sp, 584
	sub.d	$a0, $s3, $a3
	st.d	$a0, $sp, 592
	vneg.d	$vr1, $vr0
	vst	$vr1, $sp, 536
	vst	$vr0, $sp, 600
	bnez	$s1, .LBB1_38
.LBB1_48:                               #   in Loop: Header=BB1_43 Depth=3
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_49:                               #   in Loop: Header=BB1_43 Depth=3
	addi.w	$a0, $s4, -1
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 488
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a4, 0
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB1_40
	b	.LBB1_41
.LBB1_50:                               #   in Loop: Header=BB1_16 Depth=2
	st.d	$s2, $sp, 488
	st.d	$s3, $sp, 496
	st.d	$s7, $sp, 552
	st.d	$fp, $sp, 560
	beqz	$a4, .LBB1_22
# %bb.51:                               #   in Loop: Header=BB1_16 Depth=2
	sub.d	$a4, $s2, $a1
	st.d	$a4, $sp, 504
	sub.d	$a4, $s3, $a0
	st.d	$a4, $sp, 512
	add.d	$a4, $a1, $s2
	st.d	$a4, $sp, 520
	add.d	$a4, $a0, $s3
	st.d	$a4, $sp, 528
	add.d	$a4, $a1, $s7
	st.d	$a4, $sp, 568
	add.d	$a4, $a0, $fp
	st.d	$a4, $sp, 576
	sub.d	$a1, $s7, $a1
	st.d	$a1, $sp, 584
	sub.d	$a0, $fp, $a0
	st.d	$a0, $sp, 592
	sub.d	$a0, $zero, $a2
	st.d	$a0, $sp, 536
	sub.d	$a0, $zero, $a3
	st.d	$a0, $sp, 544
	st.d	$a2, $sp, 600
	st.d	$a3, $sp, 608
	b	.LBB1_22
.LBB1_52:                               #   in Loop: Header=BB1_16 Depth=2
	fmov.s	$fs7, $fs2
.LBB1_53:                               # %._crit_edge
                                        #   in Loop: Header=BB1_16 Depth=2
	beqz	$s6, .LBB1_59
# %bb.54:                               #   in Loop: Header=BB1_16 Depth=2
	ld.w	$a0, $sp, 648
	st.d	$s2, $sp, 488
	st.d	$s3, $sp, 496
	st.d	$s7, $sp, 552
	st.d	$fp, $sp, 560
	beqz	$a0, .LBB1_60
# %bb.55:                               #   in Loop: Header=BB1_16 Depth=2
	beqz	$s1, .LBB1_61
.LBB1_56:                               #   in Loop: Header=BB1_16 Depth=2
	beqz	$s4, .LBB1_58
.LBB1_57:                               #   in Loop: Header=BB1_16 Depth=2
	addi.w	$a0, $s4, -1
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 488
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.LBB1_58:                               #   in Loop: Header=BB1_16 Depth=2
	addi.w	$s1, $s1, 1
	addi.w	$s4, $s4, 1
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_59:                               #   in Loop: Header=BB1_16 Depth=2
	fsub.s	$fs4, $fs4, $fs7
	b	.LBB1_15
.LBB1_60:                               #   in Loop: Header=BB1_16 Depth=2
	ld.d	$a0, $sp, 616
	ld.d	$a1, $sp, 624
	sub.d	$a2, $s2, $a0
	st.d	$a2, $sp, 504
	sub.d	$a2, $s3, $a1
	st.d	$a2, $sp, 512
	add.d	$a2, $a0, $s2
	st.d	$a2, $sp, 520
	add.d	$a2, $a1, $s3
	st.d	$a2, $sp, 528
	add.d	$a2, $a0, $s7
	st.d	$a2, $sp, 568
	add.d	$a2, $a1, $fp
	st.d	$a2, $sp, 576
	sub.d	$a0, $s7, $a0
	vld	$vr0, $sp, 632
	st.d	$a0, $sp, 584
	sub.d	$a0, $fp, $a1
	st.d	$a0, $sp, 592
	vneg.d	$vr1, $vr0
	vst	$vr1, $sp, 536
	vst	$vr0, $sp, 600
	bnez	$s1, .LBB1_56
.LBB1_61:                               #   in Loop: Header=BB1_16 Depth=2
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB1_57
	b	.LBB1_58
	.p2align	4, , 16
.LBB1_62:                               # %._crit_edge269
                                        #   in Loop: Header=BB1_12 Depth=1
	beqz	$s4, .LBB1_69
# %bb.63:                               #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 56
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_66
# %bb.64:                               #   in Loop: Header=BB1_12 Depth=1
	beqz	$s6, .LBB1_66
# %bb.65:                               #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	addi.d	$a2, $sp, 152
	bnez	$a0, .LBB1_67
.LBB1_66:                               #   in Loop: Header=BB1_12 Depth=1
	move	$a2, $zero
.LBB1_67:                               #   in Loop: Header=BB1_12 Depth=1
	addi.w	$a0, $s4, -1
	addi.d	$a1, $sp, 320
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a4, 0
	move	$s4, $s0
	b	.LBB1_70
	.p2align	4, , 16
.LBB1_68:                               #   in Loop: Header=BB1_12 Depth=1
	move	$s4, $s0
	ld.d	$a0, $s2, %pc_lo12(stroke_path)
	bne	$a0, $s3, .LBB1_11
	b	.LBB1_71
	.p2align	4, , 16
.LBB1_69:                               #   in Loop: Header=BB1_12 Depth=1
	move	$s4, $s0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
.LBB1_70:                               # %._crit_edge269.thread
                                        #   in Loop: Header=BB1_12 Depth=1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $s2, %pc_lo12(stroke_path)
	bne	$a0, $s3, .LBB1_11
.LBB1_71:                               #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 312
	move	$a0, $s3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(gx_fill_path)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(stroke_path)
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, %pc_lo12(stroke_path)
	b	.LBB1_11
.LBB1_72:
	move	$a0, $zero
.LBB1_73:
	fld.d	$fs7, $sp, 808                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 816                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 824                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 832                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 840                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 848                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 856                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 864                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 936                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 944                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 952                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 960
	ret
.Lfunc_end1:
	.size	stroke, .Lfunc_end1-stroke
                                        # -- End function
	.globl	stroke_fill                     # -- Begin function stroke_fill
	.p2align	5
	.type	stroke_fill,@function
stroke_fill:                            # @stroke_fill
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 160
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a0
	beqz	$a1, .LBB2_4
# %bb.1:
	ld.d	$a0, $fp, 264
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	ld.d	$a3, $s0, 64
	ld.d	$a4, $s0, 72
	pcaddu18i	$ra, %call36(gx_cpath_includes_rectangle)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
# %bb.2:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 64
	ld.d	$a3, $s0, 72
	ld.d	$a4, $fp, 312
	move	$a5, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(gz_draw_line_fixed)
	jr	$t8
.LBB2_3:
	ori	$a0, $zero, 1024
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $s0, 128
	ori	$a0, $zero, 512
	vld	$vr1, $s0, 0
	vreplgr2vr.d	$vr2, $a0
	addi.w	$a0, $zero, -1024
	vreplgr2vr.d	$vr3, $a0
	vadd.d	$vr4, $vr1, $vr3
	vst	$vr4, $s0, 16
	vld	$vr4, $s0, 64
	vst	$vr2, $s0, 144
	vadd.d	$vr1, $vr1, $vr0
	vst	$vr1, $s0, 32
	vadd.d	$vr0, $vr4, $vr0
	vst	$vr0, $s0, 80
	vadd.d	$vr0, $vr4, $vr3
	vst	$vr0, $s0, 96
	vrepli.d	$vr0, -512
	vst	$vr0, $s0, 48
	vst	$vr2, $s0, 112
.LBB2_4:
	pcalau12i	$s4, %pc_hi20(stroke_path)
	ld.d	$a0, $s4, %pc_lo12(stroke_path)
	pcalau12i	$a1, %pc_hi20(stroke_path_body)
	addi.d	$s3, $a1, %pc_lo12(stroke_path_body)
	bnez	$a0, .LBB2_6
# %bb.5:
	st.d	$s3, $s4, %pc_lo12(stroke_path)
	addi.d	$a1, $fp, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(gx_path_init)
	jirl	$ra, $ra, 0
.LBB2_6:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(stroke_add)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(stroke_path)
	bne	$a0, $s3, .LBB2_8
# %bb.7:
	ld.d	$a1, $fp, 312
	pcalau12i	$a0, %pc_hi20(stroke_path_body)
	addi.d	$a0, $a0, %pc_lo12(stroke_path_body)
	addi.w	$a3, $zero, -1
	move	$a2, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(gx_fill_path)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(stroke_path)
	pcaddu18i	$ra, %call36(gx_path_release)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, %pc_lo12(stroke_path)
.LBB2_8:
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	stroke_fill, .Lfunc_end2-stroke_fill
                                        # -- End function
	.globl	gx_stroke_add                   # -- Begin function gx_stroke_add
	.p2align	5
	.type	gx_stroke_add,@function
gx_stroke_add:                          # @gx_stroke_add
# %bb.0:
	pcalau12i	$a3, %pc_hi20(stroke_path)
	st.d	$a1, $a3, %pc_lo12(stroke_path)
	pcalau12i	$a1, %pc_hi20(stroke_add)
	addi.d	$a1, $a1, %pc_lo12(stroke_add)
	pcaddu18i	$t8, %call36(stroke)
	jr	$t8
.Lfunc_end3:
	.size	gx_stroke_add, .Lfunc_end3-gx_stroke_add
                                        # -- End function
	.globl	stroke_add                      # -- Begin function stroke_add
	.p2align	5
	.type	stroke_add,@function
stroke_add:                             # @stroke_add
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
	pcalau12i	$a4, %pc_hi20(stroke_path)
	ld.d	$fp, $a4, %pc_lo12(stroke_path)
	beqz	$fp, .LBB4_6
# %bb.1:
	move	$s2, $a3
	move	$s1, $a2
	move	$s0, $a1
	ld.w	$a1, $a1, 160
	beqz	$a1, .LBB4_3
# %bb.2:
	ld.d	$a1, $s0, 128
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s0, 136
	ld.d	$a4, $s0, 8
	sub.d	$a5, $a2, $a1
	st.d	$a5, $s0, 16
	sub.d	$a5, $a4, $a3
	st.d	$a5, $s0, 24
	add.d	$a2, $a2, $a1
	st.d	$a2, $s0, 32
	ld.d	$a2, $s0, 64
	add.d	$a4, $a4, $a3
	ld.d	$a5, $s0, 72
	st.d	$a4, $s0, 40
	add.d	$a4, $a2, $a1
	st.d	$a4, $s0, 80
	add.d	$a4, $a5, $a3
	st.d	$a4, $s0, 88
	sub.d	$a1, $a2, $a1
	vld	$vr0, $s0, 144
	st.d	$a1, $s0, 96
	sub.d	$a1, $a5, $a3
	st.d	$a1, $s0, 104
	vneg.d	$vr1, $vr0
	vst	$vr1, $s0, 48
	vst	$vr0, $s0, 112
.LBB4_3:
	beqz	$a0, .LBB4_7
.LBB4_4:                                # %.thread
	ld.d	$a1, $s0, 16
	ld.d	$a2, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.5:
	ld.d	$a1, $s0, 32
	ld.d	$a2, $s0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_15
	b	.LBB4_33
.LBB4_6:
	move	$a0, $zero
	b	.LBB4_33
.LBB4_7:
	ld.d	$a0, $s2, 280
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB4_4
# %bb.8:
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_13
# %bb.9:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_15
# %bb.10:
	ld.d	$s3, $s0, 0
	ld.d	$s4, $s0, 48
	ld.d	$s5, $s0, 8
	ld.d	$s6, $s0, 56
	ld.d	$a1, $s0, 16
	ld.d	$a2, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.11:
	ld.d	$a1, $s0, 16
	ld.d	$a2, $s0, 24
	ld.d	$a0, $s0, 48
	ld.d	$a3, $s0, 56
	add.d	$s3, $s4, $s3
	add.d	$s4, $s6, $s5
	add.d	$a5, $a0, $a1
	add.d	$a6, $a3, $a2
	move	$a0, $fp
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(gx_path_add_arc)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.12:
	ld.d	$a3, $s0, 32
	ld.d	$a4, $s0, 40
	ld.d	$a0, $s0, 48
	ld.d	$a1, $s0, 56
	add.d	$a5, $a0, $a3
	add.d	$a6, $a1, $a4
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gx_path_add_arc)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_15
	b	.LBB4_33
.LBB4_13:
	ld.d	$a0, $s0, 16
	ld.d	$a1, $s0, 48
	ld.d	$a2, $s0, 24
	ld.d	$a3, $s0, 56
	add.d	$a1, $a1, $a0
	add.d	$a2, $a3, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.14:
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ld.d	$a2, $s0, 40
	ld.d	$a3, $s0, 56
	add.d	$a1, $a1, $a0
	add.d	$a2, $a3, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
.LBB4_15:                               # %add_capped.exit.thread168
	ld.d	$a0, $s2, 280
	beqz	$s1, .LBB4_22
# %bb.16:
	ld.w	$a3, $a0, 8
	ori	$a1, $zero, 1
	beq	$a3, $a1, .LBB4_25
# %bb.17:
	ld.w	$a1, $s1, 160
	bnez	$a1, .LBB4_28
# %bb.18:
	ld.d	$a1, $s0, 128
	ld.d	$a2, $s0, 136
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	ld.d	$a5, $s0, 112
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	ld.d	$a4, $s0, 120
	movgr2fr.d	$fa2, $a5
	ffint.s.l	$fa4, $fa2
	ld.d	$a1, $s1, 128
	movgr2fr.d	$fa2, $a4
	ld.d	$a2, $s1, 136
	ffint.s.l	$fa5, $fa2
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	movgr2fr.d	$fa3, $a2
	ffint.s.l	$fa3, $fa3
	fmul.s	$fa4, $fa1, $fa4
	fmul.s	$fa5, $fa0, $fa5
	fcmp.cle.s	$fcc0, $fa5, $fa4
	fmul.s	$fa4, $fa1, $fa2
	fmul.s	$fa5, $fa0, $fa3
	fcmp.cult.s	$fcc1, $fa4, $fa5
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	xor	$a1, $a1, $a2
	ori	$a2, $zero, 16
	masknez	$a6, $a2, $a1
	ori	$a2, $zero, 32
	maskeqz	$a7, $a2, $a1
	ld.d	$a1, $s0, 80
	vld	$vr4, $s0, 96
	ld.d	$a2, $s0, 88
	or	$a6, $a7, $a6
	add.d	$s2, $s1, $a6
	vst	$vr4, $sp, 16
	beqz	$a3, .LBB4_34
.LBB4_19:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.20:
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.21:
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_32
	b	.LBB4_33
.LBB4_22:
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB4_28
# %bb.23:
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_30
# %bb.24:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_32
.LBB4_25:
	ld.d	$s1, $s0, 64
	ld.d	$s2, $s0, 112
	ld.d	$s3, $s0, 72
	ld.d	$s4, $s0, 120
	ld.d	$a1, $s0, 80
	ld.d	$a2, $s0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.26:
	ld.d	$a1, $s0, 80
	ld.d	$a2, $s0, 88
	ld.d	$a0, $s0, 112
	ld.d	$a3, $s0, 120
	add.d	$s1, $s2, $s1
	add.d	$s2, $s4, $s3
	add.d	$a5, $a0, $a1
	add.d	$a6, $a3, $a2
	move	$a0, $fp
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(gx_path_add_arc)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.27:
	ld.d	$a3, $s0, 96
	ld.d	$a4, $s0, 104
	ld.d	$a0, $s0, 112
	ld.d	$a1, $s0, 120
	add.d	$a5, $a0, $a3
	add.d	$a6, $a1, $a4
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gx_path_add_arc)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_32
	b	.LBB4_33
.LBB4_28:
	ld.d	$a1, $s0, 80
	ld.d	$a2, $s0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.29:
	ld.d	$a1, $s0, 96
	ld.d	$a2, $s0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_32
	b	.LBB4_33
.LBB4_30:
	ld.d	$a0, $s0, 80
	ld.d	$a1, $s0, 112
	ld.d	$a2, $s0, 88
	ld.d	$a3, $s0, 120
	add.d	$a1, $a1, $a0
	add.d	$a2, $a3, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
# %bb.31:
	ld.d	$a0, $s0, 96
	ld.d	$a1, $s0, 112
	ld.d	$a2, $s0, 104
	ld.d	$a3, $s0, 120
	add.d	$a1, $a1, $a0
	add.d	$a2, $a3, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_33
.LBB4_32:                               # %add_capped.exit162.thread175
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gx_path_close_subpath)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	and	$a0, $a1, $a0
.LBB4_33:                               # %add_capped.exit.thread
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
.LBB4_34:
	ld.d	$a3, $s1, 112
	ld.d	$a6, $s1, 120
	fld.s	$fa4, $a0, 16
	slti	$a0, $a5, 0
	sub.d	$a7, $zero, $a3
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a3, $a0, $a3
	srai.d	$a0, $a5, 63
	xor	$a5, $a5, $a0
	sub.d	$a5, $a5, $a0
	slti	$a0, $a4, 0
	sub.d	$a7, $zero, $a6
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a6
	srai.d	$a6, $a4, 63
	xor	$a4, $a4, $a6
	sub.d	$a4, $a4, $a6
	movgr2fr.d	$fa5, $a5
	ffint.s.l	$fa6, $fa5
	movgr2fr.d	$fa5, $a4
	ffint.s.l	$fa7, $fa5
	movgr2fr.d	$fa5, $a3
	ffint.s.l	$ft0, $fa5
	movgr2fr.d	$fa5, $a0
	ffint.s.l	$ft1, $fa5
	fneg.s	$fa5, $ft1
	fmul.s	$fa5, $fa6, $fa5
	fmadd.s	$fa5, $ft0, $fa7, $fa5
	fmul.s	$fa7, $fa7, $ft1
	fmadd.s	$fa6, $fa6, $ft0, $fa7
	bltz	$a3, .LBB4_37
# %bb.35:
	bltz	$a0, .LBB4_40
# %bb.36:
	fneg.s	$fa7, $fa5
	movgr2fr.w	$ft0, $zero
	fcmp.clt.s	$fcc0, $ft0, $fa5
	b	.LBB4_43
.LBB4_37:
	bltz	$a0, .LBB4_42
# %bb.38:
	movgr2fr.w	$fa7, $zero
	fcmp.cule.s	$fcc0, $fa7, $fa6
	bcnez	$fcc0, .LBB4_45
# %bb.39:
	fneg.s	$fa5, $fa5
	b	.LBB4_44
.LBB4_40:
	movgr2fr.w	$fa7, $zero
	fcmp.cule.s	$fcc0, $fa7, $fa6
	bceqz	$fcc0, .LBB4_44
# %bb.41:
	fneg.s	$fa5, $fa5
	b	.LBB4_45
.LBB4_42:
	fneg.s	$fa7, $fa5
	movgr2fr.w	$ft0, $zero
	fcmp.clt.s	$fcc0, $fa5, $ft0
.LBB4_43:
	fcmp.cule.s	$fcc1, $ft0, $fa6
	fsel	$fa5, $fa5, $fa7, $fcc0
	bcnez	$fcc1, .LBB4_45
.LBB4_44:
	fneg.s	$fa6, $fa6
.LBB4_45:
	movgr2fr.w	$fa7, $zero
	fcmp.cult.s	$fcc0, $fa5, $fa7
	fmul.s	$fa6, $fa4, $fa6
	bceqz	$fcc0, .LBB4_47
# %bb.46:
	fcmp.clt.s	$fcc0, $fa7, $fa4
	bceqz	$fcc0, .LBB4_48
	b	.LBB4_49
.LBB4_47:
	fcmp.cule.s	$fcc0, $fa4, $fa7
	bcnez	$fcc0, .LBB4_19
.LBB4_48:
	fcmp.cult.s	$fcc0, $fa5, $fa6
	bcnez	$fcc0, .LBB4_19
.LBB4_49:
	ld.d	$a0, $s1, 48
	ld.d	$a3, $s1, 56
	addi.d	$a5, $s0, 112
	movgr2fr.d	$fa4, $a0
	ffint.s.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a3
	ffint.s.l	$fa5, $fa5
	fmul.s	$fa4, $fa3, $fa4
	fmul.s	$fa5, $fa2, $fa5
	fcmp.cle.s	$fcc0, $fa5, $fa4
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa3
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc1, $fa0, $fa1
	addi.d	$a3, $s1, 48
	movcf2gr	$a0, $fcc1
	movcf2gr	$a4, $fcc0
	beq	$a0, $a4, .LBB4_51
# %bb.50:
	addi.d	$a0, $s0, 96
	addi.d	$a4, $sp, 16
	move	$s0, $a1
	move	$a1, $a5
	move	$s1, $a2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(line_intersect)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a1, $s0
	b	.LBB4_19
.LBB4_51:
	addi.d	$a0, $s0, 80
	addi.d	$a4, $sp, 40
	move	$a1, $a5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(line_intersect)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 48
	b	.LBB4_19
.Lfunc_end4:
	.size	stroke_add, .Lfunc_end4-stroke_add
                                        # -- End function
	.globl	compute_caps                    # -- Begin function compute_caps
	.p2align	5
	.type	compute_caps,@function
compute_caps:                           # @compute_caps
# %bb.0:
	ld.d	$a1, $a0, 128
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a0, 136
	ld.d	$a4, $a0, 8
	sub.d	$a5, $a2, $a1
	st.d	$a5, $a0, 16
	sub.d	$a5, $a4, $a3
	st.d	$a5, $a0, 24
	add.d	$a2, $a2, $a1
	st.d	$a2, $a0, 32
	ld.d	$a2, $a0, 64
	add.d	$a4, $a4, $a3
	ld.d	$a5, $a0, 72
	st.d	$a4, $a0, 40
	add.d	$a4, $a2, $a1
	st.d	$a4, $a0, 80
	add.d	$a4, $a5, $a3
	st.d	$a4, $a0, 88
	sub.d	$a1, $a2, $a1
	vld	$vr0, $a0, 144
	st.d	$a1, $a0, 96
	sub.d	$a1, $a5, $a3
	st.d	$a1, $a0, 104
	vneg.d	$vr1, $vr0
	vst	$vr1, $a0, 48
	vst	$vr0, $a0, 112
	ret
.Lfunc_end5:
	.size	compute_caps, .Lfunc_end5-compute_caps
                                        # -- End function
	.globl	line_intersect                  # -- Begin function line_intersect
	.p2align	5
	.type	line_intersect,@function
line_intersect:                         # @line_intersect
# %bb.0:
	ld.d	$a5, $a0, 0
	ld.d	$a0, $a0, 8
	movgr2fr.d	$fa0, $a5
	ffint.s.l	$fa0, $fa0
	ld.d	$a5, $a1, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	ld.d	$a0, $a1, 8
	movgr2fr.d	$fa2, $a5
	ffint.s.l	$fa2, $fa2
	ld.d	$a1, $a2, 0
	movgr2fr.d	$fa3, $a0
	ffint.s.l	$fa3, $fa3
	ld.d	$a0, $a2, 8
	movgr2fr.d	$fa4, $a1
	ffint.s.l	$fa4, $fa4
	ld.d	$a1, $a3, 0
	movgr2fr.d	$fa5, $a0
	ld.d	$a0, $a3, 8
	ffint.s.l	$fa5, $fa5
	movgr2fr.d	$fa6, $a1
	ffint.s.l	$fa6, $fa6
	movgr2fr.d	$fa7, $a0
	ffint.s.l	$fa7, $fa7
	fneg.s	$ft0, $fa3
	fmul.s	$ft0, $ft0, $fa6
	fmadd.s	$ft0, $fa2, $fa7, $ft0
	fcvt.d.s	$ft0, $ft0
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa3, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fneg.s	$fa1, $fa5
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa1, $fa7, $fa4, $fa1
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa4, $fa6
	fneg.d	$fa0, $fa0
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa2, $fa2, $fa1, $fa4
	fdiv.d	$fa2, $fa2, $ft0
	ftintrz.l.d	$fa2, $fa2
	fst.d	$fa2, $a4, 0
	fcvt.d.s	$fa2, $fa3
	fcvt.d.s	$fa3, $fa7
	fmul.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fdiv.d	$fa0, $fa0, $ft0
	ftintrz.l.d	$fa0, $fa0
	fst.d	$fa0, $a4, 8
	ret
.Lfunc_end6:
	.size	line_intersect, .Lfunc_end6-line_intersect
                                        # -- End function
	.globl	add_capped                      # -- Begin function add_capped
	.p2align	5
	.type	add_capped,@function
add_capped:                             # @add_capped
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$a3, $a2
	move	$fp, $a0
	beqz	$a1, .LBB7_8
# %bb.1:
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB7_6
# %bb.2:
	ori	$a2, $zero, 1
                                        # implicit-def: $r4
	bne	$a1, $a2, .LBB7_11
# %bb.3:
	ld.d	$s1, $s0, 0
	ld.d	$s2, $s0, 48
	ld.d	$s3, $s0, 8
	ld.d	$s4, $s0, 56
	ld.d	$a1, $s0, 16
	ld.d	$a2, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a3, 0
	bltz	$a0, .LBB7_11
# %bb.4:
	ld.d	$a1, $s0, 16
	ld.d	$a2, $s0, 24
	ld.d	$a0, $s0, 48
	ld.d	$a3, $s0, 56
	add.d	$s1, $s2, $s1
	add.d	$s2, $s4, $s3
	add.d	$a5, $a0, $a1
	add.d	$a6, $a3, $a2
	move	$a0, $fp
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(gx_path_add_arc)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_11
# %bb.5:
	ld.d	$a3, $s0, 32
	ld.d	$a4, $s0, 40
	ld.d	$a0, $s0, 48
	ld.d	$a1, $s0, 56
	add.d	$a5, $a0, $a3
	add.d	$a6, $a1, $a4
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(gx_path_add_arc)
	jr	$t8
.LBB7_6:
	ld.d	$a0, $s0, 16
	ld.d	$a1, $s0, 48
	ld.d	$a2, $s0, 24
	ld.d	$a4, $s0, 56
	add.d	$a1, $a1, $a0
	add.d	$a2, $a4, $a2
	move	$a0, $fp
	jirl	$ra, $a3, 0
	bltz	$a0, .LBB7_11
# %bb.7:
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s0, 48
	ld.d	$a2, $s0, 40
	ld.d	$a3, $s0, 56
	add.d	$a1, $a1, $a0
	add.d	$a2, $a3, $a2
	b	.LBB7_10
.LBB7_8:
	ld.d	$a1, $s0, 16
	ld.d	$a2, $s0, 24
	move	$a0, $fp
	jirl	$ra, $a3, 0
	bltz	$a0, .LBB7_11
# %bb.9:
	ld.d	$a1, $s0, 32
	ld.d	$a2, $s0, 40
.LBB7_10:
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(gx_path_add_line)
	jr	$t8
.LBB7_11:                               # %.thread
	addi.w	$a0, $a0, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	add_capped, .Lfunc_end7-add_capped
                                        # -- End function
	.type	stroke_path,@object             # @stroke_path
	.bss
	.globl	stroke_path
	.p2align	3, 0x0
stroke_path:
	.dword	0
	.size	stroke_path, 8

	.type	stroke_path_body,@object        # @stroke_path_body
	.globl	stroke_path_body
	.p2align	3, 0x0
stroke_path_body:
	.space	144
	.size	stroke_path_body, 144

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stroke_fill
	.addrsig_sym stroke_add
	.addrsig_sym stroke_path_body
