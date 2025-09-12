	.file	"gxcolor.c"
	.text
	.globl	gx_color_from_rgb               # -- Begin function gx_color_from_rgb
	.p2align	5
	.type	gx_color_from_rgb,@function
gx_color_from_rgb:                      # @gx_color_from_rgb
# %bb.0:
	ld.hu	$a1, $a0, 0
	ld.hu	$a2, $a0, 2
	bne	$a1, $a2, .LBB0_3
# %bb.1:
	ld.hu	$a2, $a0, 4
	bne	$a1, $a2, .LBB0_3
# %bb.2:
	st.h	$a1, $a0, 6
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 9
	st.b	$a1, $a0, 8
	ret
.LBB0_3:
	move	$a1, $zero
	st.b	$a1, $a0, 9
	st.b	$a1, $a0, 8
	ret
.Lfunc_end0:
	.size	gx_color_from_rgb, .Lfunc_end0-gx_color_from_rgb
                                        # -- End function
	.globl	gx_color_luminance              # -- Begin function gx_color_luminance
	.p2align	5
	.type	gx_color_luminance,@function
gx_color_luminance:                     # @gx_color_luminance
# %bb.0:
	ld.bu	$a1, $a0, 9
	beqz	$a1, .LBB1_2
# %bb.1:                                # %._crit_edge
	ld.hu	$a1, $a0, 6
	bstrpick.d	$a0, $a1, 15, 0
	ret
.LBB1_2:
	ld.hu	$a1, $a0, 0
	ori	$a2, $zero, 30
	ld.hu	$a3, $a0, 2
	ld.hu	$a4, $a0, 4
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 59
	mul.d	$a2, $a3, $a2
	alsl.d	$a3, $a4, $a4, 2
	alsl.d	$a3, $a3, $a4, 1
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	lu12i.w	$a2, 10485
	ori	$a2, $a2, 3113
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 2
	bstrins.d	$a2, $a2, 32, 30
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 32
	st.h	$a1, $a0, 6
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 9
	bstrpick.d	$a0, $a1, 15, 0
	ret
.Lfunc_end1:
	.size	gx_color_luminance, .Lfunc_end1-gx_color_luminance
                                        # -- End function
	.globl	gx_color_to_hsb                 # -- Begin function gx_color_to_hsb
	.p2align	5
	.type	gx_color_to_hsb,@function
gx_color_to_hsb:                        # @gx_color_to_hsb
# %bb.0:
	ld.bu	$a2, $a0, 8
	beqz	$a2, .LBB2_2
# %bb.1:
	st.w	$zero, $a1, 0
	ld.hu	$a0, $a0, 0
	st.h	$a0, $a1, 4
	ret
.LBB2_2:
	ld.hu	$a3, $a0, 0
	ld.hu	$a4, $a0, 2
	ld.hu	$a5, $a0, 4
	sltu	$a0, $a4, $a3
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltu	$a2, $a0, $a5
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a5, $a2
	or	$a0, $a2, $a0
	sltu	$a2, $a3, $a4
	masknez	$a6, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a6
	sltu	$a6, $a5, $a2
	masknez	$a2, $a2, $a6
	maskeqz	$a6, $a5, $a6
	or	$a2, $a6, $a2
	sub.d	$a2, $a0, $a2
	bne	$a0, $a3, .LBB2_4
# %bb.3:
	sub.d	$a3, $a4, $a5
	slli.d	$a4, $a3, 16
	sub.d	$a3, $a4, $a3
	div.d	$a3, $a3, $a2
	b	.LBB2_7
.LBB2_4:
	bne	$a0, $a4, .LBB2_6
# %bb.5:
	sub.d	$a3, $a5, $a3
	slli.d	$a4, $a3, 16
	sub.d	$a3, $a4, $a3
	div.d	$a3, $a3, $a2
	addu16i.d	$a3, $a3, 2
	addi.d	$a3, $a3, -2
	b	.LBB2_7
.LBB2_6:
	sub.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 16
	sub.d	$a3, $a4, $a3
	div.d	$a3, $a3, $a2
	addu16i.d	$a3, $a3, 4
	addi.d	$a3, $a3, -4
.LBB2_7:
	slti	$a4, $a3, 0
	addu16i.d	$a5, $a3, 6
	addi.d	$a5, $a5, -6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	lu12i.w	$a4, -349526
	ori	$a4, $a4, 2731
	lu32i.d	$a4, -349526
	lu52i.d	$a4, $a4, 682
	mulh.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 63
	add.d	$a3, $a3, $a4
	st.h	$a3, $a1, 0
	slli.d	$a3, $a2, 16
	sub.d	$a2, $a3, $a2
	div.d	$a2, $a2, $a0
	st.h	$a2, $a1, 2
	st.h	$a0, $a1, 4
	ret
.Lfunc_end2:
	.size	gx_color_to_hsb, .Lfunc_end2-gx_color_to_hsb
                                        # -- End function
	.globl	gx_color_from_hsb               # -- Begin function gx_color_from_hsb
	.p2align	5
	.type	gx_color_from_hsb,@function
gx_color_from_hsb:                      # @gx_color_from_hsb
# %bb.0:
	beqz	$a2, .LBB3_4
# %bb.1:
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa1, $fa0
	lu12i.w	$a3, 292863
	ori	$a3, $a3, 3840
	movgr2fr.w	$fa0, $a3
	fdiv.s	$fa2, $fa1, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa5, $fa1, $fa0
	lu12i.w	$a2, 11
	ori	$a2, $a2, 4095
	mul.d	$a2, $a1, $a2
	srli.d	$a2, $a2, 29
	lu12i.w	$a3, 2
	ori	$a3, $a3, 2731
	mul.d	$a3, $a2, $a3
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 15, 0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	lu12i.w	$a1, 287402
	ori	$a1, $a1, 3072
	movgr2fr.w	$fa3, $a1
	fdiv.s	$fa3, $fa1, $fa3
	vldi	$vr4, -1168
	fsub.s	$fa1, $fa4, $fa5
	fmul.s	$fa1, $fa2, $fa1
	fneg.s	$fa6, $fa5
	fsub.s	$fa5, $fa4, $fa3
	fmadd.s	$fa5, $fa6, $fa5, $fa4
	addi.d	$a1, $a2, -1
	ori	$a2, $zero, 4
	fmul.s	$fa5, $fa2, $fa5
	bltu	$a2, $a1, .LBB3_9
# %bb.2:
	fmadd.s	$fa3, $fa6, $fa3, $fa4
	fmul.s	$fa6, $fa2, $fa3
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI3_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB3_3:
	fmov.s	$fa3, $fa6
	fmov.s	$fa4, $fa2
	b	.LBB3_10
.LBB3_4:                                # %.thread50
	st.h	$a3, $a0, 4
	st.h	$a3, $a0, 2
	st.h	$a3, $a0, 0
	b	.LBB3_12
.LBB3_5:
	fmov.s	$fa3, $fa2
	fmov.s	$fa4, $fa1
	fmov.s	$fa1, $fa6
	b	.LBB3_10
.LBB3_6:
	fmov.s	$fa3, $fa1
	fmov.s	$fa4, $fa6
	fmov.s	$fa1, $fa2
	b	.LBB3_10
.LBB3_7:
	fmov.s	$fa3, $fa5
	fmov.s	$fa4, $fa1
	fmov.s	$fa1, $fa2
	b	.LBB3_10
.LBB3_8:
	fmov.s	$fa3, $fa1
	fmov.s	$fa4, $fa2
	fmov.s	$fa1, $fa5
	b	.LBB3_10
.LBB3_9:
	fmov.s	$fa3, $fa2
	fmov.s	$fa4, $fa5
.LBB3_10:
	move	$a1, $zero
	fmul.s	$fa2, $fa3, $fa0
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a4, $fa2
	st.h	$a4, $a0, 0
	fmul.s	$fa2, $fa4, $fa0
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	st.h	$a2, $a0, 2
	fmul.s	$fa0, $fa1, $fa0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	st.h	$a3, $a0, 4
	bne	$a4, $a2, .LBB3_13
# %bb.11:
	bne	$a2, $a3, .LBB3_13
.LBB3_12:
	st.h	$a3, $a0, 6
	ori	$a1, $zero, 1
.LBB3_13:                               # %gx_color_from_rgb.exit
	st.b	$a1, $a0, 9
	st.b	$a1, $a0, 8
	ret
.Lfunc_end3:
	.size	gx_color_from_hsb, .Lfunc_end3-gx_color_from_hsb
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_8-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
	.word	.LBB3_7-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
                                        # -- End function
	.text
	.globl	gx_sort_ht_order                # -- Begin function gx_sort_ht_order
	.p2align	5
	.type	gx_sort_ht_order,@function
gx_sort_ht_order:                       # @gx_sort_ht_order
# %bb.0:
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB4_13
# %bb.1:                                # %.preheader.preheader
	addi.w	$a2, $a1, -1
	bstrpick.d	$a1, $a1, 31, 1
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %.critedge
                                        #   in Loop: Header=BB4_3 Depth=1
	alsl.d	$a5, $a6, $a0, 2
	slli.d	$a6, $a6, 2
	stx.h	$a3, $a0, $a6
	st.h	$a4, $a5, 2
.LBB4_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	addi.w	$a3, $a1, 0
	beqz	$a3, .LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	addi.w	$a1, $a1, -1
	alsl.d	$a4, $a1, $a0, 2
	slli.d	$a3, $a1, 2
	ldx.hu	$a3, $a0, $a3
	ld.hu	$a4, $a4, 2
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $a2, 31, 0
	alsl.d	$a4, $a1, $a0, 2
	slli.d	$a1, $a1, 2
	ldx.hu	$a3, $a0, $a1
	ld.w	$a5, $a0, 0
	ld.hu	$a4, $a4, 2
	addi.w	$a2, $a2, -1
	stx.w	$a5, $a0, $a1
	beqz	$a2, .LBB4_12
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	move	$a6, $a1
	slli.d	$a7, $a6, 1
	addi.d	$a5, $a7, 1
	addi.w	$t0, $a5, 0
	bgeu	$t0, $a2, .LBB4_9
	.p2align	4, , 16
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$t0, $a5, 31, 0
	alsl.d	$t0, $t0, $a0, 2
	ld.hu	$t0, $t0, 2
	addi.w	$a7, $a7, 2
	bstrpick.d	$t1, $a7, 31, 0
	alsl.d	$t1, $t1, $a0, 2
	ld.hu	$t1, $t1, 2
	sltu	$t0, $t0, $t1
	masknez	$a5, $a5, $t0
	maskeqz	$a7, $a7, $t0
	or	$a5, $a7, $a5
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a5, 0
	bstrpick.d	$a6, $a6, 31, 0
	bltu	$a2, $a7, .LBB4_2
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	bstrpick.d	$a7, $a5, 31, 0
	alsl.d	$a7, $a7, $a0, 2
	ld.hu	$t0, $a7, 2
	bgeu	$a4, $t0, .LBB4_2
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=2
	ld.w	$a7, $a7, 0
	slli.d	$a6, $a6, 2
	stx.w	$a7, $a0, $a6
	move	$a6, $a5
	slli.d	$a7, $a6, 1
	addi.d	$a5, $a7, 1
	addi.w	$t0, $a5, 0
	bltu	$t0, $a2, .LBB4_8
	b	.LBB4_9
.LBB4_12:
	st.h	$a3, $a0, 0
	st.h	$a4, $a0, 2
.LBB4_13:
	ret
.Lfunc_end4:
	.size	gx_sort_ht_order, .Lfunc_end4-gx_sort_ht_order
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
