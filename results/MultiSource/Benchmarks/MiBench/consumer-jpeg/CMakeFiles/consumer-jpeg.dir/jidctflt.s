	.file	"jidctflt.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function jpeg_idct_float
.LCPI0_0:
	.word	0x3fb504f3                      # float 1.41421354
.LCPI0_1:
	.word	0x3fec835e                      # float 1.84775901
.LCPI0_2:
	.word	0x3f8a8bd4                      # float 1.08239222
.LCPI0_3:
	.word	0xc0273d75                      # float -2.61312604
	.text
	.globl	jpeg_idct_float
	.p2align	5
	.type	jpeg_idct_float,@function
jpeg_idct_float:                        # @jpeg_idct_float
# %bb.0:
	addi.d	$sp, $sp, -272
	ld.d	$a5, $a1, 88
	ld.d	$a0, $a0, 408
	addi.d	$a1, $a2, 64
	addi.d	$a2, $a5, 128
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a5, %pc_lo12(.LCPI0_0)
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a5, %pc_lo12(.LCPI0_1)
	pcalau12i	$a5, %pc_hi20(.LCPI0_2)
	fld.s	$fa2, $a5, %pc_lo12(.LCPI0_2)
	pcalau12i	$a5, %pc_hi20(.LCPI0_3)
	fld.s	$fa3, $a5, %pc_lo12(.LCPI0_3)
	addi.d	$a5, $sp, 16
	ori	$a6, $zero, 9
	ori	$a7, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	fld.s	$fa5, $a2, -64
	ext.w.h	$t6, $t6
	movgr2fr.w	$fa6, $t6
	ffint.s.w	$fa6, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $a2, 0
	ext.w.h	$t5, $t5
	movgr2fr.w	$fa7, $t5
	ffint.s.w	$fa7, $fa7
	fmul.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $a2, 64
	ext.w.h	$t4, $t4
	movgr2fr.w	$ft0, $t4
	ffint.s.w	$ft0, $ft0
	fmul.s	$fa7, $fa7, $ft0
	fadd.s	$ft0, $fa4, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fadd.s	$fa6, $fa5, $fa7
	fsub.s	$fa5, $fa5, $fa7
	fmsub.s	$fa5, $fa5, $fa0, $fa6
	fadd.s	$fa7, $ft0, $fa6
	fsub.s	$ft0, $ft0, $fa6
	fadd.s	$fa6, $fa4, $fa5
	fsub.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $a2, -96
	ext.w.h	$t3, $t3
	movgr2fr.w	$ft1, $t3
	ffint.s.w	$ft1, $ft1
	fmul.s	$fa5, $fa5, $ft1
	fld.s	$ft1, $a2, -32
	ext.w.h	$t2, $t2
	movgr2fr.w	$ft2, $t2
	ffint.s.w	$ft2, $ft2
	fmul.s	$ft1, $ft1, $ft2
	fld.s	$ft2, $a2, 32
	ext.w.h	$t1, $t1
	movgr2fr.w	$ft3, $t1
	ffint.s.w	$ft3, $ft3
	fmul.s	$ft2, $ft2, $ft3
	fld.s	$ft3, $a2, 96
	ext.w.h	$t0, $t0
	movgr2fr.w	$ft4, $t0
	ffint.s.w	$ft4, $ft4
	fmul.s	$ft3, $ft3, $ft4
	fadd.s	$ft4, $ft1, $ft2
	fsub.s	$ft1, $ft2, $ft1
	fadd.s	$ft2, $fa5, $ft3
	fsub.s	$fa5, $fa5, $ft3
	fadd.s	$ft3, $ft4, $ft2
	fsub.s	$ft2, $ft2, $ft4
	fmul.s	$ft2, $ft2, $fa0
	fadd.s	$ft4, $ft1, $fa5
	fmul.s	$ft4, $ft4, $fa1
	fmsub.s	$fa5, $fa5, $fa2, $ft4
	fmadd.s	$ft1, $ft1, $fa3, $ft4
	fsub.s	$ft1, $ft1, $ft3
	fsub.s	$ft2, $ft2, $ft1
	fadd.s	$ft4, $fa5, $ft2
	fadd.s	$fa5, $fa7, $ft3
	fst.s	$fa5, $a5, 0
	fsub.s	$fa5, $fa7, $ft3
	fadd.s	$fa7, $fa6, $ft1
	fst.s	$fa7, $a5, 32
	fsub.s	$fa6, $fa6, $ft1
	fadd.s	$fa7, $fa4, $ft2
	fst.s	$fa7, $a5, 64
	fsub.s	$fa7, $fa4, $ft2
	fadd.s	$fa4, $ft0, $ft4
	fst.s	$fa4, $a5, 128
	fsub.s	$fa4, $ft0, $ft4
	ori	$t0, $zero, 96
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	fstx.s	$fa4, $a5, $t0
	fst.s	$fa7, $a5, 160
	fst.s	$fa6, $a5, 192
	fst.s	$fa5, $a5, 224
	addi.d	$a5, $a5, 4
	addi.w	$a6, $a6, -1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 4
	bgeu	$a7, $a6, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.hu	$t3, $a1, -48
	ld.hu	$t6, $a1, -32
	ld.hu	$t2, $a1, -16
	ld.hu	$t5, $a1, 0
	or	$t0, $t6, $t3
	or	$t0, $t0, $t2
	ld.hu	$t1, $a1, 16
	or	$t7, $t0, $t5
	ld.hu	$t4, $a1, 32
	ld.hu	$t0, $a1, 48
	or	$t7, $t7, $t1
	ld.h	$t8, $a1, -64
	or	$t7, $t7, $t4
	or	$t7, $t7, $t0
	fld.s	$fa4, $a2, -128
	movgr2fr.w	$fa5, $t8
	ffint.s.w	$fa5, $fa5
	slli.d	$t7, $t7, 48
	fmul.s	$fa4, $fa4, $fa5
	bnez	$t7, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	fst.s	$fa4, $a5, 0
	fst.s	$fa4, $a5, 32
	fst.s	$fa4, $a5, 64
	fst.s	$fa4, $a5, 96
	ori	$t0, $zero, 128
	fmov.s	$fa7, $fa4
	fmov.s	$fa6, $fa4
	fmov.s	$fa5, $fa4
	b	.LBB0_2
.LBB0_5:                                # %.preheader
	move	$a1, $zero
	addi.d	$a0, $a0, 128
	bstrpick.d	$a2, $a4, 31, 0
	addi.d	$a4, $sp, 16
	ori	$a5, $zero, 1023
	vreplgr2vr.d	$vr4, $a5
	ori	$a5, $zero, 64
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa6, $a4, 0
	fld.s	$fa7, $a4, 16
	fld.s	$ft0, $a4, 8
	fld.s	$ft1, $a4, 24
	ldx.d	$a7, $a3, $a1
	fadd.s	$fa5, $fa6, $fa7
	fsub.s	$fa7, $fa6, $fa7
	fadd.s	$fa6, $ft0, $ft1
	fsub.s	$ft0, $ft0, $ft1
	fld.s	$ft1, $a4, 20
	fld.s	$ft2, $a4, 12
	fld.s	$ft3, $a4, 4
	fld.s	$ft4, $a4, 28
	fadd.s	$ft5, $fa5, $fa6
	fadd.s	$ft6, $ft1, $ft2
	fsub.s	$ft1, $ft1, $ft2
	fadd.s	$ft2, $ft3, $ft4
	fadd.s	$ft7, $ft6, $ft2
	fadd.s	$ft8, $ft5, $ft7
	ftintrz.l.s	$ft8, $ft8
	movfr2gr.d	$t0, $ft8
	add.d	$a6, $a7, $a2
	addi.d	$t0, $t0, 4
	bstrpick.d	$t0, $t0, 12, 3
	ldx.b	$t0, $a0, $t0
	fmsub.s	$ft0, $ft0, $fa0, $fa6
	fsub.s	$ft3, $ft3, $ft4
	fadd.s	$ft4, $fa7, $ft0
	stx.b	$t0, $a7, $a2
	fsub.s	$ft5, $ft5, $ft7
	ftintrz.l.s	$ft5, $ft5
	movfr2gr.d	$a7, $ft5
	fadd.s	$ft5, $ft1, $ft3
	addi.d	$a7, $a7, 4
	bstrpick.d	$a7, $a7, 12, 3
	ldx.b	$a7, $a0, $a7
	fmul.s	$ft5, $ft5, $fa1
	fmadd.s	$ft1, $ft1, $fa3, $ft5
	fsub.s	$ft1, $ft1, $ft7
	st.b	$a7, $a6, 7
	fadd.s	$ft7, $ft4, $ft1
	ftintrz.l.s	$ft7, $ft7
	movfr2gr.d	$a7, $ft7
	addi.d	$a7, $a7, 4
	bstrpick.d	$a7, $a7, 12, 3
	ldx.b	$a7, $a0, $a7
	st.b	$a7, $a6, 1
	fsub.s	$ft4, $ft4, $ft1
	ftintrz.l.s	$ft4, $ft4
	movfr2gr.d	$a7, $ft4
	addi.d	$a7, $a7, 4
	bstrpick.d	$a7, $a7, 12, 3
	ldx.b	$a7, $a0, $a7
	fsub.s	$ft2, $ft2, $ft6
	fmul.s	$ft2, $ft2, $fa0
	fmsub.s	$ft3, $ft3, $fa2, $ft5
	st.b	$a7, $a6, 6
	fsub.s	$fa7, $fa7, $ft0
	fsub.s	$ft0, $ft2, $ft1
	fadd.s	$ft1, $ft3, $ft0
	vextrins.w	$vr8, $vr7, 16
	vextrins.w	$vr8, $vr9, 32
	fsub.s	$fa5, $fa5, $fa6
	vori.b	$vr6, $vr8, 0
	vextrins.w	$vr6, $vr5, 48
	vshuf4i.w	$vr5, $vr6, 177
	vfadd.s	$vr7, $vr8, $vr5
	vfsub.s	$vr5, $vr6, $vr5
	vreplvei.w	$vr6, $vr7, 0
	ftintrz.l.s	$fa6, $fa6
	movfr2gr.d	$a7, $fa6
	vinsgr2vr.d	$vr6, $a7, 0
	vreplvei.w	$vr8, $vr5, 1
	ftintrz.l.s	$ft0, $ft0
	movfr2gr.d	$a7, $ft0
	vinsgr2vr.d	$vr6, $a7, 1
	vreplvei.w	$vr7, $vr7, 2
	ftintrz.l.s	$fa7, $fa7
	movfr2gr.d	$a7, $fa7
	vinsgr2vr.d	$vr7, $a7, 0
	vreplvei.w	$vr5, $vr5, 3
	vaddi.du	$vr6, $vr6, 4
	vsrli.d	$vr6, $vr6, 3
	vand.v	$vr6, $vr6, $vr4
	vpickve2gr.d	$a7, $vr6, 0
	ldx.b	$a7, $a0, $a7
	ftintrz.l.s	$fa5, $fa5
	movfr2gr.d	$t0, $fa5
	vinsgr2vr.d	$vr7, $t0, 1
	st.b	$a7, $a6, 2
	vpickve2gr.d	$a7, $vr6, 1
	ldx.b	$a7, $a0, $a7
	vaddi.du	$vr5, $vr7, 4
	vsrli.d	$vr5, $vr5, 3
	vand.v	$vr5, $vr5, $vr4
	st.b	$a7, $a6, 5
	vpickve2gr.d	$a7, $vr5, 0
	ldx.b	$a7, $a0, $a7
	st.b	$a7, $a6, 4
	vpickve2gr.d	$a7, $vr5, 1
	ldx.b	$a7, $a0, $a7
	st.b	$a7, $a6, 3
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, 32
	bne	$a1, $a5, .LBB0_6
# %bb.7:
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end0:
	.size	jpeg_idct_float, .Lfunc_end0-jpeg_idct_float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
