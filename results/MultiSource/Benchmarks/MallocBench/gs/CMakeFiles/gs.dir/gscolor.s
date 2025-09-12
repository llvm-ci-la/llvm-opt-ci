	.file	"gscolor.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_setgray
.LCPI0_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	gs_setgray
	.p2align	5
	.type	gs_setgray,@function
gs_setgray:                             # @gs_setgray
# %bb.0:
	ld.bu	$a1, $a0, 436
	beqz	$a1, .LBB0_2
# %bb.1:
	addi.w	$a0, $zero, -21
	ret
.LBB0_2:
	ld.d	$a1, $a0, 304
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_4
# %bb.3:
	move	$a2, $zero
	b	.LBB0_7
.LBB0_4:
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_6
# %bb.5:
	lu12i.w	$a0, 15
	ori	$a2, $a0, 4095
	b	.LBB0_7
.LBB0_6:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_0)
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
.LBB0_7:                                # %check_unit.exit
	move	$a0, $zero
	st.h	$a2, $a1, 6
	st.h	$a2, $a1, 4
	st.h	$a2, $a1, 2
	st.h	$a2, $a1, 0
	ori	$a2, $zero, 257
	st.h	$a2, $a1, 8
	ret
.Lfunc_end0:
	.size	gs_setgray, .Lfunc_end0-gs_setgray
                                        # -- End function
	.globl	check_unit                      # -- Begin function check_unit
	.p2align	5
	.type	check_unit,@function
check_unit:                             # @check_unit
# %bb.0:
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_2
# %bb.1:
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $a0, 0
	move	$a0, $zero
	ret
.LBB1_2:
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_4
# %bb.3:
	vldi	$vr0, -1168
	fst.s	$fa0, $a0, 0
	move	$a0, $zero
	ret
.LBB1_4:
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	check_unit, .Lfunc_end1-check_unit
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_currentgray
.LCPI2_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	gs_currentgray
	.p2align	5
	.type	gs_currentgray,@function
gs_currentgray:                         # @gs_currentgray
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 304
	ld.bu	$a1, $a0, 9
	beqz	$a1, .LBB2_2
# %bb.1:
	ld.hu	$a0, $a0, 6
	b	.LBB2_3
.LBB2_2:
	pcaddu18i	$ra, %call36(gx_color_luminance)
	jirl	$ra, $ra, 0
.LBB2_3:
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI2_0)
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	gs_currentgray, .Lfunc_end2-gs_currentgray
                                        # -- End function
	.globl	gs_setgscolor                   # -- Begin function gs_setgscolor
	.p2align	5
	.type	gs_setgscolor,@function
gs_setgscolor:                          # @gs_setgscolor
# %bb.0:
	ld.bu	$a2, $a0, 436
	beqz	$a2, .LBB3_2
# %bb.1:
	addi.w	$a0, $zero, -21
	ret
.LBB3_2:
	ld.d	$a2, $a0, 304
	ld.h	$a0, $a1, 8
	st.h	$a0, $a2, 8
	ld.d	$a1, $a1, 0
	move	$a0, $zero
	st.d	$a1, $a2, 0
	ret
.Lfunc_end3:
	.size	gs_setgscolor, .Lfunc_end3-gs_setgscolor
                                        # -- End function
	.globl	gs_currentgscolor               # -- Begin function gs_currentgscolor
	.p2align	5
	.type	gs_currentgscolor,@function
gs_currentgscolor:                      # @gs_currentgscolor
# %bb.0:
	ld.d	$a0, $a0, 304
	ld.h	$a2, $a0, 8
	st.h	$a2, $a1, 8
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	gs_currentgscolor, .Lfunc_end4-gs_currentgscolor
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_sethsbcolor
.LCPI5_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	gs_sethsbcolor
	.p2align	5
	.type	gs_sethsbcolor,@function
gs_sethsbcolor:                         # @gs_sethsbcolor
# %bb.0:
	ld.bu	$a1, $a0, 436
	beqz	$a1, .LBB5_2
# %bb.1:
	addi.w	$a0, $zero, -21
	ret
.LBB5_2:
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa3
	lu12i.w	$a3, 15
	bceqz	$fcc0, .LBB5_4
# %bb.3:
	move	$a1, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB5_6
	b	.LBB5_9
.LBB5_4:
	vldi	$vr4, -912
	fcmp.clt.d	$fcc0, $fa4, $fa0
	bceqz	$fcc0, .LBB5_8
# %bb.5:
	ori	$a1, $a3, 4095
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB5_9
.LBB5_6:
	vldi	$vr0, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB5_11
# %bb.7:
	ori	$a2, $a3, 4095
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB5_10
	b	.LBB5_12
.LBB5_8:
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI5_0)
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB5_6
.LBB5_9:
	move	$a2, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB5_12
.LBB5_10:
	move	$a3, $zero
	b	.LBB5_15
.LBB5_11:
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI5_0)
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB5_10
.LBB5_12:
	vldi	$vr0, -912
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB5_14
# %bb.13:
	ori	$a3, $a3, 4095
	b	.LBB5_15
.LBB5_14:
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI5_0)
	fcvt.s.d	$fa1, $fa2
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
.LBB5_15:                               # %tri_param.exit
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 304
	pcaddu18i	$ra, %call36(gx_color_from_hsb)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	gs_sethsbcolor, .Lfunc_end5-gs_sethsbcolor
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function tri_param
.LCPI6_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	tri_param
	.p2align	5
	.type	tri_param,@function
tri_param:                              # @tri_param
# %bb.0:
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa3
	lu12i.w	$a2, 15
	bceqz	$fcc0, .LBB6_2
# %bb.1:
	move	$a1, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB6_4
	b	.LBB6_7
.LBB6_2:
	vldi	$vr4, -912
	fcmp.clt.d	$fcc0, $fa4, $fa0
	bceqz	$fcc0, .LBB6_6
# %bb.3:
	ori	$a1, $a2, 4095
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB6_7
.LBB6_4:
	vldi	$vr0, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB6_9
# %bb.5:
	ori	$a3, $a2, 4095
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB6_8
	b	.LBB6_10
.LBB6_6:
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI6_0)
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB6_4
.LBB6_7:
	move	$a3, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB6_10
.LBB6_8:
	move	$a2, $zero
	b	.LBB6_13
.LBB6_9:
	pcalau12i	$a3, %pc_hi20(.LCPI6_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI6_0)
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB6_8
.LBB6_10:
	vldi	$vr0, -912
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB6_12
# %bb.11:
	ori	$a2, $a2, 4095
	b	.LBB6_13
.LBB6_12:
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI6_0)
	fcvt.s.d	$fa1, $fa2
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
.LBB6_13:                               # %check_unit.exit14
	st.h	$a1, $a0, 0
	st.h	$a3, $a0, 2
	st.h	$a2, $a0, 4
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	tri_param, .Lfunc_end6-tri_param
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_currenthsbcolor
.LCPI7_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	gs_currenthsbcolor
	.p2align	5
	.type	gs_currenthsbcolor,@function
gs_currenthsbcolor:                     # @gs_currenthsbcolor
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 304
	move	$fp, $a1
	addi.d	$a1, $sp, 10
	pcaddu18i	$ra, %call36(gx_color_to_hsb)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 10
	ld.hu	$a1, $sp, 12
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI7_0)
	ld.hu	$a2, $sp, 14
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $fp, 0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $fp, 4
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $fp, 8
	move	$a0, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	gs_currenthsbcolor, .Lfunc_end7-gs_currenthsbcolor
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function tri_return
.LCPI8_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	tri_return
	.p2align	5
	.type	tri_return,@function
tri_return:                             # @tri_return
# %bb.0:
	pcalau12i	$a4, %pc_hi20(.LCPI8_0)
	fld.s	$fa0, $a4, %pc_lo12(.LCPI8_0)
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a3, 0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a3, 4
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a3, 8
	ret
.Lfunc_end8:
	.size	tri_return, .Lfunc_end8-tri_return
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_setrgbcolor
.LCPI9_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	gs_setrgbcolor
	.p2align	5
	.type	gs_setrgbcolor,@function
gs_setrgbcolor:                         # @gs_setrgbcolor
# %bb.0:
	ld.bu	$a1, $a0, 436
	beqz	$a1, .LBB9_2
# %bb.1:
	addi.w	$a0, $zero, -21
	ret
.LBB9_2:
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa3
	lu12i.w	$a2, 15
	bceqz	$fcc0, .LBB9_4
# %bb.3:
	move	$a1, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB9_6
	b	.LBB9_9
.LBB9_4:
	vldi	$vr4, -912
	fcmp.clt.d	$fcc0, $fa4, $fa0
	bceqz	$fcc0, .LBB9_8
# %bb.5:
	ori	$a1, $a2, 4095
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB9_9
.LBB9_6:
	vldi	$vr0, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_11
# %bb.7:
	ori	$a3, $a2, 4095
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB9_10
	b	.LBB9_12
.LBB9_8:
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI9_0)
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB9_6
.LBB9_9:
	move	$a3, $zero
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bceqz	$fcc0, .LBB9_12
.LBB9_10:
	move	$a2, $zero
	b	.LBB9_15
.LBB9_11:
	pcalau12i	$a3, %pc_hi20(.LCPI9_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI9_0)
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	fcmp.clt.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB9_10
.LBB9_12:
	vldi	$vr0, -912
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB9_14
# %bb.13:
	ori	$a2, $a2, 4095
	b	.LBB9_15
.LBB9_14:
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI9_0)
	fcvt.s.d	$fa1, $fa2
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
.LBB9_15:                               # %tri_param.exit
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 304
	st.h	$a1, $a0, 0
	st.h	$a3, $a0, 2
	st.h	$a2, $a0, 4
	pcaddu18i	$ra, %call36(gx_color_from_rgb)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	gs_setrgbcolor, .Lfunc_end9-gs_setrgbcolor
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_currentrgbcolor
.LCPI10_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	gs_currentrgbcolor
	.p2align	5
	.type	gs_currentrgbcolor,@function
gs_currentrgbcolor:                     # @gs_currentrgbcolor
# %bb.0:
	ld.d	$a0, $a0, 304
	ld.hu	$a2, $a0, 0
	pcalau12i	$a3, %pc_hi20(.LCPI10_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI10_0)
	ld.hu	$a3, $a0, 2
	ld.hu	$a0, $a0, 4
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a1, 0
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a1, 4
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a1, 8
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	gs_currentrgbcolor, .Lfunc_end10-gs_currentrgbcolor
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gs_colorrgb
.LCPI11_0:
	.word	0x477fff00                      # float 65535
	.text
	.globl	gs_colorrgb
	.p2align	5
	.type	gs_colorrgb,@function
gs_colorrgb:                            # @gs_colorrgb
# %bb.0:
	ld.hu	$a2, $a0, 0
	pcalau12i	$a3, %pc_hi20(.LCPI11_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI11_0)
	ld.hu	$a3, $a0, 2
	ld.hu	$a0, $a0, 4
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a1, 0
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a1, 4
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a1, 8
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	gs_colorrgb, .Lfunc_end11-gs_colorrgb
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gs_setscreen
.LCPI12_0:
	.dword	0x40dfffc000000000              # double 32767
	.text
	.globl	gs_setscreen
	.p2align	5
	.type	gs_setscreen,@function
gs_setscreen:                           # @gs_setscreen
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 24
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gs_screen_init)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_10
# %bb.1:                                # %.preheader
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(gs_screen_currentpoint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_4
.LBB12_2:                               # %._crit_edge
	bltz	$a0, .LBB12_10
# %bb.3:
	move	$a0, $zero
	st.d	$fp, $s0, 296
	b	.LBB12_10
.LBB12_4:                               # %.lr.ph
	addi.w	$s1, $zero, -15
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI12_0)
	lu12i.w	$a0, 7
	ori	$s2, $a0, 4095
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_5:                               # %gs_screen_next.exit
                                        #   in Loop: Header=BB12_6 Depth=1
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(gs_screen_currentpoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_2
.LBB12_6:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 20
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	jirl	$ra, $fp, 0
	fcvt.d.s	$fa0, $fa0
	fabs.d	$fa1, $fa0
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB12_9
# %bb.7:                                #   in Loop: Header=BB12_6 Depth=1
	ld.d	$a1, $sp, 32
	fmul.d	$fa0, $fa0, $fs0
	ftintrz.l.d	$fa0, $fa0
	ld.w	$a0, $sp, 148
	ld.w	$a2, $sp, 40
	ld.w	$a3, $sp, 144
	movfr2gr.d	$a4, $fa0
	add.d	$a4, $a4, $s2
	mul.d	$a5, $a2, $a0
	add.w	$a5, $a5, $a3
	alsl.d	$a1, $a5, $a1, 2
	st.h	$a4, $a1, 2
	addi.w	$a1, $a3, 1
	st.w	$a1, $sp, 144
	blt	$a1, $a2, .LBB12_5
# %bb.8:                                #   in Loop: Header=BB12_6 Depth=1
	st.w	$zero, $sp, 144
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 148
	b	.LBB12_5
.LBB12_9:
	move	$a0, $s1
.LBB12_10:                              # %gs_screen_next.exit.thread
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end12:
	.size	gs_setscreen, .Lfunc_end12-gs_setscreen
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gs_screen_init
.LCPI13_0:
	.dword	0x4052000000000000              # double 72
	.text
	.globl	gs_screen_init
	.p2align	5
	.type	gs_screen_init,@function
gs_screen_init:                         # @gs_screen_init
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	movgr2fr.d	$fa2, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.w	$s0, $zero, -15
	bcnez	$fcc0, .LBB13_7
# %bb.1:
	move	$fp, $a1
	move	$s1, $a0
	fmov.d	$fs0, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI13_0)
	fmov.d	$fs1, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fs2, $fa0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 96
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_currentdevice)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 12
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(gs_deviceparams)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs2
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	fmov.d	$fa1, $fa0
	pcaddu18i	$ra, %call36(gs_distance_transform)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_5
# %bb.2:
	fld.s	$fa0, $sp, 112
	movgr2fr.w	$fa1, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	sub.w	$a1, $zero, $a0
	movcf2gr	$a2, $fcc0
	fld.s	$fa0, $sp, 116
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	sub.w	$a2, $zero, $a1
	movcf2gr	$a3, $fcc0
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$s3, $a0, $a3
	sltu	$a0, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$s2, $a1, $a0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	div.w	$a0, $a0, $s2
	blt	$a0, $s3, .LBB13_7
# %bb.3:
	mul.w	$a0, $s2, $s3
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(gs_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_6
# %bb.4:
	fcvt.s.d	$fa0, $fs1
	fst.s	$fa0, $s1, 0
	fcvt.s.d	$fa0, $fs0
	fst.s	$fa0, $s1, 4
	st.d	$a0, $s1, 8
	st.w	$s3, $s1, 16
	st.w	$s2, $s1, 20
	st.d	$zero, $s1, 120
	st.d	$fp, $s1, 128
	movgr2fr.w	$fa0, $s3
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1024
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fs1, $fa0
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fs2, $fa0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gs_make_identity)
	jirl	$ra, $ra, 0
	fst.s	$fs1, $sp, 16
	fst.s	$fs2, $sp, 64
	fcvt.d.s	$fa0, $fs1
	vldi	$vr1, -784
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 80
	fcvt.d.s	$fa0, $fs2
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $sp, 96
	fneg.d	$fa0, $fs0
	addi.d	$a1, $s1, 24
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gs_matrix_rotate)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	and	$s0, $a1, $a0
	b	.LBB13_7
.LBB13_5:                               # %.critedge
	move	$s0, $a0
	b	.LBB13_7
.LBB13_6:
	addi.w	$s0, $zero, -25
.LBB13_7:
	move	$a0, $s0
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end13:
	.size	gs_screen_init, .Lfunc_end13-gs_screen_init
                                        # -- End function
	.globl	gs_screen_currentpoint          # -- Begin function gs_screen_currentpoint
	.p2align	5
	.type	gs_screen_currentpoint,@function
gs_screen_currentpoint:                 # @gs_screen_currentpoint
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 124
	ld.w	$a2, $fp, 20
	bge	$a0, $a2, .LBB14_4
# %bb.1:
	move	$s0, $a1
	ld.w	$a1, $fp, 120
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	addi.d	$a0, $fp, 24
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(gs_point_transform)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB14_23
# %bb.2:
	fld.s	$fa0, $sp, 0
	vldi	$vr1, -1040
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB14_7
# %bb.3:
	vldi	$vr1, -1280
	b	.LBB14_9
.LBB14_4:
	ld.w	$a1, $fp, 16
	ld.d	$a0, $fp, 8
	mul.w	$a1, $a1, $a2
	beqz	$a1, .LBB14_17
# %bb.5:                                # %.lr.ph.preheader.i
	ori	$a3, $zero, 1
	bstrpick.d	$a2, $a1, 31, 0
	bne	$a1, $a3, .LBB14_12
# %bb.6:
	move	$a3, $zero
	b	.LBB14_15
.LBB14_7:
	vldi	$vr1, -1168
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_10
# %bb.8:
	vldi	$vr1, -1152
.LBB14_9:                               # %.sink.split
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 0
.LBB14_10:
	fld.s	$fa0, $sp, 4
	vldi	$vr1, -1040
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB14_19
# %bb.11:
	vldi	$vr1, -1280
	b	.LBB14_21
.LBB14_12:                              # %vector.ph
	move	$a4, $zero
	bstrpick.d	$a3, $a2, 31, 1
	slli.d	$a3, $a3, 1
	addi.d	$a5, $a0, 4
	.p2align	4, , 16
.LBB14_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a6, $a4, 1
	st.h	$a4, $a5, -4
	st.h	$a6, $a5, 0
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB14_13
# %bb.14:                               # %middle.block
	beq	$a3, $a2, .LBB14_17
.LBB14_15:                              # %.lr.ph.i.preheader
	alsl.d	$a4, $a3, $a0, 2
	.p2align	4, , 16
.LBB14_16:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a3, $a4, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bne	$a2, $a3, .LBB14_16
.LBB14_17:                              # %._crit_edge.i
	pcaddu18i	$ra, %call36(gx_sort_ht_order)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.w	$a1, $fp, 16
	ld.w	$a2, $fp, 20
	pcaddu18i	$ra, %call36(gx_ht_construct_order)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB14_23
# %bb.18:
	ld.d	$a0, $fp, 128
	ld.d	$a0, $a0, 288
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	ld.w	$a1, $fp, 16
	ld.w	$a2, $fp, 20
	ld.d	$a3, $fp, 8
	st.w	$a1, $a0, 8
	st.w	$a2, $a0, 12
	st.d	$a3, $a0, 16
	mul.d	$a1, $a2, $a1
	st.w	$a1, $a0, 24
	ori	$a0, $zero, 1
	b	.LBB14_23
.LBB14_19:
	vldi	$vr1, -1168
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_22
# %bb.20:
	vldi	$vr1, -1152
.LBB14_21:                              # %.sink.split22
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 4
.LBB14_22:
	ld.d	$a1, $sp, 0
	move	$a0, $zero
	st.d	$a1, $s0, 0
.LBB14_23:                              # %gx_screen_finish.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	gs_screen_currentpoint, .Lfunc_end14-gs_screen_currentpoint
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gs_screen_next
.LCPI15_0:
	.dword	0x40dfffc000000000              # double 32767
	.text
	.globl	gs_screen_next
	.p2align	5
	.type	gs_screen_next,@function
gs_screen_next:                         # @gs_screen_next
# %bb.0:
	fabs.d	$fa1, $fa0
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB15_2
# %bb.1:
	addi.w	$a0, $zero, -15
	ret
.LBB15_2:
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI15_0)
	ld.d	$a2, $a0, 8
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	lu12i.w	$a4, 7
	ld.w	$a1, $a0, 124
	ld.w	$a5, $a0, 16
	ld.w	$a6, $a0, 120
	ori	$a4, $a4, 4095
	add.d	$a3, $a3, $a4
	mul.d	$a4, $a5, $a1
	add.w	$a4, $a4, $a6
	alsl.d	$a2, $a4, $a2, 2
	st.h	$a3, $a2, 2
	addi.w	$a2, $a6, 1
	st.w	$a2, $a0, 120
	bge	$a2, $a5, .LBB15_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB15_4:
	st.w	$zero, $a0, 120
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 124
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	gs_screen_next, .Lfunc_end15-gs_screen_next
                                        # -- End function
	.globl	gs_currentscreen                # -- Begin function gs_currentscreen
	.p2align	5
	.type	gs_currentscreen,@function
gs_currentscreen:                       # @gs_currentscreen
# %bb.0:
	ld.d	$a4, $a0, 288
	fld.s	$fa0, $a4, 0
	fst.s	$fa0, $a1, 0
	fld.s	$fa0, $a4, 4
	ld.d	$a0, $a0, 296
	fst.s	$fa0, $a2, 0
	st.d	$a0, $a3, 0
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	gs_currentscreen, .Lfunc_end16-gs_currentscreen
                                        # -- End function
	.globl	gx_screen_finish                # -- Begin function gx_screen_finish
	.p2align	5
	.type	gx_screen_finish,@function
gx_screen_finish:                       # @gx_screen_finish
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 20
	ld.d	$a0, $a0, 8
	mul.w	$a1, $a2, $a1
	beqz	$a1, .LBB17_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a3, $zero, 1
	bstrpick.d	$a2, $a1, 31, 0
	bne	$a1, $a3, .LBB17_3
# %bb.2:
	move	$a3, $zero
	b	.LBB17_6
.LBB17_3:                               # %vector.ph
	move	$a4, $zero
	bstrpick.d	$a3, $a2, 31, 1
	slli.d	$a3, $a3, 1
	addi.d	$a5, $a0, 4
	.p2align	4, , 16
.LBB17_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a6, $a4, 1
	st.h	$a4, $a5, -4
	st.h	$a6, $a5, 0
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB17_4
# %bb.5:                                # %middle.block
	beq	$a3, $a2, .LBB17_8
.LBB17_6:                               # %.lr.ph.preheader36
	alsl.d	$a4, $a3, $a0, 2
	.p2align	4, , 16
.LBB17_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a3, $a4, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bne	$a2, $a3, .LBB17_7
.LBB17_8:                               # %._crit_edge
	pcaddu18i	$ra, %call36(gx_sort_ht_order)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.w	$a1, $fp, 16
	ld.w	$a2, $fp, 20
	pcaddu18i	$ra, %call36(gx_ht_construct_order)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB17_10
# %bb.9:
	ld.d	$a0, $fp, 128
	ld.d	$a0, $a0, 288
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	ld.w	$a1, $fp, 16
	ld.w	$a2, $fp, 20
	ld.d	$a3, $fp, 8
	st.w	$a1, $a0, 8
	st.w	$a2, $a0, 12
	st.d	$a3, $a0, 16
	mul.d	$a1, $a2, $a1
	st.w	$a1, $a0, 24
	ori	$a0, $zero, 1
.LBB17_10:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end17:
	.size	gx_screen_finish, .Lfunc_end17-gx_screen_finish
                                        # -- End function
	.type	gs_screen_enum_sizeof,@object   # @gs_screen_enum_sizeof
	.data
	.globl	gs_screen_enum_sizeof
	.p2align	2, 0x0
gs_screen_enum_sizeof:
	.word	136                             # 0x88
	.size	gs_screen_enum_sizeof, 4

	.type	gs_color_sizeof,@object         # @gs_color_sizeof
	.globl	gs_color_sizeof
	.p2align	2, 0x0
gs_color_sizeof:
	.word	10                              # 0xa
	.size	gs_color_sizeof, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"halftone samples"
	.size	.L.str, 17

	.section	".note.GNU-stack","",@progbits
	.addrsig
