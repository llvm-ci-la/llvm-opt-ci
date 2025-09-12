	.file	"btConvexShape.cpp"
	.text
	.globl	_ZN13btConvexShapeC2Ev          # -- Begin function _ZN13btConvexShapeC2Ev
	.p2align	5
	.type	_ZN13btConvexShapeC2Ev,@function
_ZN13btConvexShapeC2Ev:                 # @_ZN13btConvexShapeC2Ev
# %bb.0:
	ori	$a1, $zero, 35
	st.w	$a1, $a0, 8
	st.d	$zero, $a0, 16
	pcalau12i	$a1, %pc_hi20(_ZTV13btConvexShape+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13btConvexShape+16)
	st.d	$a1, $a0, 0
	ret
.Lfunc_end0:
	.size	_ZN13btConvexShapeC2Ev, .Lfunc_end0-_ZN13btConvexShapeC2Ev
                                        # -- End function
	.globl	_ZN13btConvexShapeD2Ev          # -- Begin function _ZN13btConvexShapeD2Ev
	.p2align	5
	.type	_ZN13btConvexShapeD2Ev,@function
_ZN13btConvexShapeD2Ev:                 # @_ZN13btConvexShapeD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN13btConvexShapeD2Ev, .Lfunc_end1-_ZN13btConvexShapeD2Ev
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	_ZN13btConvexShapeD0Ev          # -- Begin function _ZN13btConvexShapeD0Ev
	.p2align	5
	.type	_ZN13btConvexShapeD0Ev,@function
_ZN13btConvexShapeD0Ev:                 # @_ZN13btConvexShapeD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end2:
	.size	_ZN13btConvexShapeD0Ev, .Lfunc_end2-_ZN13btConvexShapeD0Ev
                                        # -- End function
	.text
	.globl	_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3 # -- Begin function _ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3
	.p2align	5
	.type	_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3,@function
_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3: # @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.w	$a2, $a0, 8
	ori	$a3, $zero, 13
	bltu	$a3, $a2, .LBB3_3
# %bb.1:
	movgr2fr.w	$fa0, $zero
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI3_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI3_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a3, $a3, $a2
	move	$a2, $zero
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	jr	$a3
.LBB3_2:
	move	$a2, $zero
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 40
	fld.s	$fa2, $a0, 44
	fld.s	$fa3, $a0, 48
	movgr2fr.w	$fa4, $zero
	fld.s	$fa5, $a1, 4
	fcmp.cle.s	$fcc0, $fa4, $fa0
	fneg.s	$fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fcmp.cle.s	$fcc0, $fa4, $fa5
	fld.s	$fa5, $a1, 8
	fneg.s	$fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.s	$fa2, $fa3
	fcmp.cle.s	$fcc0, $fa4, $fa5
	fsel	$fa2, $fa2, $fa3, $fcc0
	b	.LBB3_29
.LBB3_3:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 104
	jirl	$ra, $a2, 0
	move	$a2, $a1
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	bstrins.d	$a2, $zero, 31, 0
	b	.LBB3_29
.LBB3_4:
	fld.s	$fa1, $a1, 0
	ld.w	$a2, $a0, 64
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	addi.d	$a3, $a0, 40
	slli.d	$a1, $a2, 2
	fldx.s	$fa4, $a3, $a1
	addi.w	$a2, $a2, 2
	lu12i.w	$a4, 349525
	ori	$a4, $a4, 1366
	mul.d	$a4, $a2, $a4
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $a4, $a4, 1
	sub.w	$a2, $a2, $a4
	slli.d	$a2, $a2, 2
	fldx.s	$fa7, $a3, $a2
	fmul.s	$fa0, $fa2, $fa2
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa5, $fa3, $fa3, $fa0
	lu12i.w	$a2, 232731
	ori	$a2, $a2, 1815
	movgr2fr.w	$fa0, $a2
	fcmp.clt.s	$fcc0, $fa5, $fa0
	movgr2fr.w	$fa0, $zero
	bceqz	$fcc0, .LBB3_18
# %bb.5:
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	fmov.s	$fa3, $fa0
	b	.LBB3_19
.LBB3_6:
	vld	$vr0, $a0, 40
	vst	$vr0, $sp, 24
	fld.s	$fa2, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa0, $a1, 8
	ld.w	$a3, $a0, 64
	fst.s	$fa2, $sp, 20
	fst.s	$fa1, $sp, 16
	ori	$a0, $zero, 2
	fst.s	$fa0, $sp, 12
	beq	$a3, $a0, .LBB3_22
# %bb.7:
	ori	$a1, $zero, 1
	addi.d	$a0, $sp, 0
	bne	$a3, $a1, .LBB3_23
# %bb.8:
	addi.d	$a6, $sp, 24
	addi.d	$a5, $sp, 20
	addi.d	$a1, $sp, 8
	addi.d	$a4, $sp, 16
	addi.d	$a2, $sp, 4
	b	.LBB3_24
.LBB3_9:
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 68
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $a0, 64
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a0, 72
	fld.s	$fa6, $a0, 84
	fld.s	$fa7, $a0, 80
	fmadd.s	$fa1, $fa2, $fa4, $fa1
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fmul.s	$fa4, $fa0, $fa6
	fmadd.s	$fa4, $fa2, $fa7, $fa4
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 100
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 104
	fmadd.s	$fa4, $fa3, $fa5, $fa4
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmadd.s	$fa0, $fa3, $ft0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fsel	$fa1, $fa1, $fa4, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	addi.d	$a0, $a0, 64
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	fldx.s	$fa0, $a0, $a1
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a2, 8
	b	.LBB3_28
.LBB3_10:
	ld.d	$a2, $a0, 120
	ld.w	$a3, $a0, 108
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a0, 28
	fld.s	$fa2, $a0, 32
	blez	$a3, .LBB3_16
# %bb.11:                               # %.lr.ph.preheader.i214
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, 8
	move	$a1, $zero
	fmul.s	$fa3, $fa3, $fa0
	fmul.s	$fa4, $fa4, $fa1
	fmul.s	$fa5, $fa5, $fa2
	addi.d	$a4, $a2, 8
	addi.w	$a0, $zero, -1
	lu12i.w	$a5, -141856
	ori	$a5, $a5, 2923
	lu32i.d	$a5, 0
	movgr2fr.w	$fa6, $a5
	.p2align	4, , 16
.LBB3_12:                               # %.lr.ph.i216
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a4, -4
	fld.s	$ft0, $a4, -8
	fld.s	$ft1, $a4, 0
	fmul.s	$fa7, $fa4, $fa7
	fmadd.s	$fa7, $fa3, $ft0, $fa7
	fmadd.s	$fa7, $fa5, $ft1, $fa7
	fcmp.clt.s	$fcc0, $fa6, $fa7
	fsel	$fa6, $fa6, $fa7, $fcc0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a1, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB3_12
	b	.LBB3_17
.LBB3_13:
	ld.d	$a2, $a0, 104
	ld.w	$a3, $a0, 112
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a0, 28
	fld.s	$fa2, $a0, 32
	blez	$a3, .LBB3_16
# %bb.14:                               # %.lr.ph.preheader.i
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, 8
	move	$a1, $zero
	fmul.s	$fa3, $fa3, $fa0
	fmul.s	$fa4, $fa4, $fa1
	fmul.s	$fa5, $fa5, $fa2
	addi.d	$a4, $a2, 8
	addi.w	$a0, $zero, -1
	lu12i.w	$a5, -141856
	ori	$a5, $a5, 2923
	lu32i.d	$a5, 0
	movgr2fr.w	$fa6, $a5
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a4, -4
	fld.s	$ft0, $a4, -8
	fld.s	$ft1, $a4, 0
	fmul.s	$fa7, $fa4, $fa7
	fmadd.s	$fa7, $fa3, $ft0, $fa7
	fmadd.s	$fa7, $fa5, $ft1, $fa7
	fcmp.clt.s	$fcc0, $fa6, $fa7
	fsel	$fa6, $fa6, $fa7, $fcc0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a1, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB3_15
	b	.LBB3_17
.LBB3_16:
	addi.w	$a0, $zero, -1
.LBB3_17:                               # %_ZL17convexHullSupportRK9btVector3PS0_iS1_.exit
	alsl.d	$a1, $a0, $a2, 4
	slli.d	$a0, $a0, 4
	fldx.s	$fa3, $a2, $a0
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, 8
	move	$a2, $zero
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa5
	b	.LBB3_29
.LBB3_18:
	frsqrt.s	$fa5, $fa5
	fmul.s	$fa1, $fa1, $fa5
	fmul.s	$fa2, $fa2, $fa5
	fmul.s	$fa3, $fa3, $fa5
.LBB3_19:
	vrepli.b	$vr11, 0
	vst	$vr11, $sp, 24
	addi.d	$a2, $sp, 24
	fld.s	$fa5, $a0, 24
	fld.s	$fa6, $a0, 28
	fld.s	$ft0, $a0, 32
	fstx.s	$fa4, $a1, $a2
	fmul.s	$fa5, $fa1, $fa5
	fmul.s	$fa6, $fa2, $fa6
	fmul.s	$ft0, $fa3, $ft0
	fmul.s	$fa5, $fa7, $fa5
	fmul.s	$fa6, $fa7, $fa6
	fmul.s	$fa7, $fa7, $ft0
	fld.s	$ft0, $sp, 24
	fld.s	$ft1, $sp, 28
	fld.s	$ft2, $sp, 32
	fld.s	$ft4, $a0, 56
	fadd.s	$ft5, $fa5, $ft0
	fadd.s	$ft6, $fa6, $ft1
	fadd.s	$ft9, $fa7, $ft2
	fmul.s	$ft0, $fa1, $ft4
	fmul.s	$ft1, $fa2, $ft4
	fmul.s	$ft2, $fa3, $ft4
	fsub.s	$ft7, $ft5, $ft0
	fsub.s	$ft8, $ft6, $ft1
	fsub.s	$ft9, $ft9, $ft2
	fmul.s	$ft4, $fa2, $ft8
	fmadd.s	$ft4, $fa1, $ft7, $ft4
	fmadd.s	$ft10, $fa3, $ft9, $ft4
	lu12i.w	$a0, -141856
	ori	$a0, $a0, 2923
	lu32i.d	$a0, 0
	movgr2fr.w	$ft6, $a0
	fcmp.cule.s	$fcc0, $ft10, $ft6
	fmov.s	$ft4, $fa0
	fmov.s	$ft5, $fa0
	bcnez	$fcc0, .LBB3_21
# %bb.20:
	fmov.s	$fa0, $ft7
	fmov.s	$ft4, $ft8
	fmov.s	$ft5, $ft9
	fmov.s	$ft6, $ft10
.LBB3_21:
	fneg.s	$fa4, $fa4
	vst	$vr11, $sp, 24
	fstx.s	$fa4, $a1, $a2
	fld.s	$fa4, $sp, 24
	fld.s	$ft3, $sp, 28
	fld.s	$ft7, $sp, 32
	move	$a2, $zero
	fadd.s	$fa4, $fa5, $fa4
	fadd.s	$fa5, $fa6, $ft3
	fadd.s	$fa6, $fa7, $ft7
	fsub.s	$fa4, $fa4, $ft0
	fsub.s	$fa5, $fa5, $ft1
	fsub.s	$fa6, $fa6, $ft2
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa1, $fa1, $fa4, $fa2
	fmadd.s	$fa1, $fa3, $fa6, $fa1
	fcmp.clt.s	$fcc0, $ft6, $fa1
	fsel	$fa0, $fa0, $fa4, $fcc0
	fsel	$fa1, $ft4, $fa5, $fcc0
	fsel	$fa2, $ft5, $fa6, $fcc0
	b	.LBB3_29
.LBB3_22:
	addi.d	$a6, $sp, 24
	addi.d	$a5, $sp, 20
	addi.d	$a1, $sp, 8
	addi.d	$a4, $sp, 12
	addi.d	$a2, $sp, 0
	addi.d	$a0, $sp, 4
	fmov.s	$fa0, $fa1
	b	.LBB3_24
.LBB3_23:
	addi.d	$a6, $sp, 28
	addi.d	$a5, $sp, 16
	addi.d	$a1, $sp, 4
	addi.d	$a4, $sp, 20
	addi.d	$a2, $sp, 8
.LBB3_24:
	fld.s	$fa1, $a6, 0
	slli.d	$a3, $a3, 2
	fld.s	$fa4, $a5, 0
	addi.d	$a5, $sp, 24
	fldx.s	$fa3, $a3, $a5
	fmul.s	$fa2, $fa0, $fa0
	fmadd.s	$fa5, $fa4, $fa4, $fa2
	movgr2fr.w	$fa2, $zero
	fcmp.ceq.s	$fcc0, $fa5, $fa2
	bcnez	$fcc0, .LBB3_26
# %bb.25:
	fsqrt.s	$fa2, $fa5
	fdiv.s	$fa2, $fa1, $fa2
	fld.s	$fa5, $a4, 0
	fmul.s	$fa1, $fa2, $fa4
	fneg.s	$fa4, $fa3
	movgr2fr.w	$fa6, $zero
	fcmp.clt.s	$fcc0, $fa5, $fa6
	fsel	$fa3, $fa3, $fa4, $fcc0
	fmul.s	$fa2, $fa2, $fa0
	b	.LBB3_27
.LBB3_26:
	fld.s	$fa0, $a4, 0
	fneg.s	$fa4, $fa3
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fsel	$fa3, $fa3, $fa4, $fcc0
.LBB3_27:
	fst.s	$fa1, $a1, 0
	fst.s	$fa3, $a2, 0
	fst.s	$fa2, $a0, 0
	fld.s	$fa2, $sp, 0
	fld.s	$fa1, $sp, 4
	fld.s	$fa0, $sp, 8
.LBB3_28:
	move	$a2, $zero
.LBB3_29:
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	or	$a1, $a2, $a1
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3, .Lfunc_end3-_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_9-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_29-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
                                        # -- End function
	.text
	.globl	_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3 # -- Begin function _ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3
	.p2align	5
	.type	_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3,@function
_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3: # @_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	vld	$vr0, $a1, 0
	vst	$vr0, $sp, 8
	fld.s	$fa1, $sp, 12
	fld.s	$fa2, $sp, 8
	fld.s	$fa0, $sp, 16
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	lu12i.w	$a1, 165888
	movgr2fr.w	$fa4, $a1
	fcmp.cule.s	$fcc0, $fa4, $fa3
	move	$fp, $a0
	bcnez	$fcc0, .LBB4_2
# %bb.1:
	st.w	$zero, $sp, 20
	vldi	$vr0, -1040
	vldi	$vr1, -1040
	vldi	$vr2, -1040
.LBB4_2:
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $sp, 8
	fmul.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $sp, 12
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 8
	ori	$a3, $zero, 13
	bltu	$a3, $a2, .LBB4_6
# %bb.3:
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI4_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI4_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB4_4:
	fld.s	$fa0, $fp, 56
.LBB4_5:                                # %_ZNK13btConvexShape19getMarginNonVirtualEv.exit
	movgr2fr.w	$fa1, $a1
	srli.d	$a1, $a0, 32
	movgr2fr.w	$fa2, $a1
	fld.s	$fa3, $sp, 8
	fld.s	$fa4, $sp, 12
	fld.s	$fa5, $sp, 16
	movgr2fr.w	$fa6, $a0
	fmul.s	$fa3, $fa0, $fa3
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa0, $fa0, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fadd.s	$fa2, $fa4, $fa2
	fadd.s	$fa0, $fa0, $fa1
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_6:
	ld.d	$a2, $fp, 0
	ld.d	$a2, $a2, 88
	move	$s0, $a0
	move	$a0, $fp
	move	$fp, $a1
	jirl	$ra, $a2, 0
	move	$a1, $fp
	move	$a0, $s0
	b	.LBB4_5
.LBB4_7:
	fld.s	$fa0, $fp, 40
	fld.s	$fa1, $fp, 24
	fmul.s	$fa0, $fa0, $fa1
	b	.LBB4_5
.Lfunc_end4:
	.size	_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3, .Lfunc_end4-_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_4-.LJTI4_0
	.word	.LBB4_4-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_4-.LJTI4_0
	.word	.LBB4_4-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_4-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_4-.LJTI4_0
                                        # -- End function
	.text
	.globl	_ZNK13btConvexShape19getMarginNonVirtualEv # -- Begin function _ZNK13btConvexShape19getMarginNonVirtualEv
	.p2align	5
	.type	_ZNK13btConvexShape19getMarginNonVirtualEv,@function
_ZNK13btConvexShape19getMarginNonVirtualEv: # @_ZNK13btConvexShape19getMarginNonVirtualEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 8
	ori	$a2, $zero, 13
	bltu	$a2, $a1, .LBB5_3
# %bb.1:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI5_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI5_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB5_2:
	fld.s	$fa0, $a0, 56
	ret
.LBB5_3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 88
	jr	$a1
.LBB5_4:
	fld.s	$fa0, $a0, 40
	fld.s	$fa1, $a0, 24
	fmul.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end5:
	.size	_ZNK13btConvexShape19getMarginNonVirtualEv, .Lfunc_end5-_ZNK13btConvexShape19getMarginNonVirtualEv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_3-.LJTI5_0
	.word	.LBB5_3-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_3-.LJTI5_0
	.word	.LBB5_3-.LJTI5_0
	.word	.LBB5_4-.LJTI5_0
	.word	.LBB5_3-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_3-.LJTI5_0
	.word	.LBB5_3-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
                                        # -- End function
	.text
	.globl	_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_ # -- Begin function _ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_,@function
_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_: # @_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	move	$s2, $a0
	ld.w	$a0, $a0, 8
	ori	$a4, $zero, 13
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	bltu	$a4, $a0, .LBB6_4
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI6_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB6_2:                                # %_ZNK13btConvexShape19getMarginNonVirtualEv.exit114
	fld.s	$fa0, $s2, 56
	fld.s	$fa1, $s2, 40
	fld.s	$fa2, $s2, 44
	fld.s	$fa3, $s2, 48
	b	.LBB6_7
.LBB6_3:                                # %_ZNK13btConvexShape19getMarginNonVirtualEv.exit180
	fld.s	$fa0, $s2, 80
	fld.s	$fa1, $s2, 64
	fld.s	$fa2, $s2, 84
	fld.s	$fa3, $s2, 68
	fld.s	$fa4, $s2, 88
	fld.s	$fa5, $s2, 72
	fld.s	$fa6, $s2, 56
	fsub.s	$fa7, $fa0, $fa1
	fsub.s	$ft0, $fa2, $fa3
	fsub.s	$ft1, $fa4, $fa5
	vldi	$vr10, -1184
	fmul.s	$fa7, $fa7, $ft2
	fmul.s	$ft0, $ft0, $ft2
	fmul.s	$ft1, $ft1, $ft2
	fadd.s	$fa7, $fa6, $fa7
	fadd.s	$ft0, $fa6, $ft0
	fadd.s	$fa6, $fa6, $ft1
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	fmul.s	$fa0, $fa0, $ft2
	fmul.s	$fa1, $fa1, $ft2
	fmul.s	$fa2, $fa2, $ft2
	fld.s	$fa3, $s1, 0
	fld.s	$fa4, $s1, 4
	fld.s	$fa5, $s1, 8
	fld.s	$ft1, $s1, 16
	fabs.s	$ft2, $fa3
	fabs.s	$ft3, $fa4
	fabs.s	$ft4, $fa5
	fabs.s	$ft5, $ft1
	fld.s	$ft6, $s1, 20
	fld.s	$ft7, $s1, 24
	fld.s	$ft8, $s1, 32
	fld.s	$ft9, $s1, 36
	fabs.s	$ft10, $ft6
	fabs.s	$ft11, $ft7
	fabs.s	$ft12, $ft8
	fabs.s	$ft13, $ft9
	fld.s	$ft14, $s1, 40
	fmul.s	$fa4, $fa1, $fa4
	fld.s	$ft15, $s1, 48
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fabs.s	$fa4, $ft14
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fadd.s	$fa3, $fa3, $ft15
	fld.s	$fa5, $s1, 52
	fmul.s	$ft6, $fa1, $ft6
	fmadd.s	$ft1, $ft1, $fa0, $ft6
	fmadd.s	$ft1, $ft7, $fa2, $ft1
	fadd.s	$fa5, $ft1, $fa5
	fld.s	$ft1, $s1, 56
	fmul.s	$fa1, $fa1, $ft9
	fmadd.s	$fa0, $ft8, $fa0, $fa1
	fmadd.s	$fa0, $ft14, $fa2, $fa0
	fadd.s	$fa0, $fa0, $ft1
	fmul.s	$fa1, $ft0, $ft3
	fmadd.s	$fa1, $ft2, $fa7, $fa1
	fmadd.s	$fa1, $ft4, $fa6, $fa1
	fmul.s	$fa2, $ft0, $ft10
	fmadd.s	$fa2, $ft5, $fa7, $fa2
	fmadd.s	$fa2, $ft11, $fa6, $fa2
	fmul.s	$ft0, $ft0, $ft13
	fmadd.s	$fa7, $ft12, $fa7, $ft0
	fmadd.s	$fa4, $fa4, $fa6, $fa7
	fsub.s	$fa6, $fa3, $fa1
	fsub.s	$fa7, $fa5, $fa2
	fsub.s	$ft0, $fa0, $fa4
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa4, $fa0
	b	.LBB6_8
.LBB6_4:
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 16
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
	jr	$a4
.LBB6_5:                                # %_ZNK13btConvexShape19getMarginNonVirtualEv.exit
	fld.s	$fa0, $s2, 40
	fld.s	$fa1, $s2, 24
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa2, $s1, 48
	fld.s	$fa3, $s1, 52
	fld.s	$fa4, $s1, 56
	fadd.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa0
	fsub.s	$fa2, $fa3, $fa0
	fsub.s	$fa3, $fa4, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fld.s	$fa1, $s1, 48
	fld.s	$fa2, $s1, 52
	fld.s	$fa3, $s1, 56
	fadd.s	$fa1, $fa0, $fa1
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	b	.LBB6_8
.LBB6_6:                                # %_ZNK13btConvexShape19getMarginNonVirtualEv.exit164
	ld.w	$a0, $s2, 64
	addi.w	$a1, $a0, 2
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1366
	mul.d	$a2, $a1, $a2
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.w	$a1, $a1, $a2
	addi.d	$a2, $s2, 40
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a2, $a1
	slli.d	$a0, $a0, 2
	fldx.s	$fa1, $a2, $a0
	fst.s	$fa0, $sp, 64
	fst.s	$fa0, $sp, 68
	fst.s	$fa0, $sp, 72
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a1, $sp, 64
	fstx.s	$fa0, $a0, $a1
	fld.s	$fa0, $s2, 56
	fld.s	$fa1, $sp, 64
	fld.s	$fa2, $sp, 68
	fld.s	$fa3, $sp, 72
.LBB6_7:                                # %.loopexit
	fld.s	$fa4, $s1, 0
	fadd.s	$fa1, $fa0, $fa1
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fabs.s	$fa3, $fa4
	fld.s	$fa4, $s1, 4
	fld.s	$fa5, $s1, 8
	fld.s	$fa6, $s1, 16
	fld.s	$fa7, $s1, 20
	fabs.s	$fa4, $fa4
	fabs.s	$fa5, $fa5
	fabs.s	$fa6, $fa6
	fabs.s	$fa7, $fa7
	fld.s	$ft0, $s1, 24
	fld.s	$ft1, $s1, 32
	fld.s	$ft2, $s1, 36
	fld.s	$ft3, $s1, 40
	fabs.s	$ft0, $ft0
	fabs.s	$ft1, $ft1
	fabs.s	$ft2, $ft2
	fabs.s	$ft3, $ft3
	fld.s	$ft4, $s1, 48
	fld.s	$ft5, $s1, 52
	fld.s	$ft6, $s1, 56
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa3, $fa3, $fa1, $fa4
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fmul.s	$fa4, $fa2, $fa7
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmadd.s	$fa4, $ft0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $ft2
	fmadd.s	$fa1, $ft1, $fa1, $fa2
	fmadd.s	$fa0, $ft3, $fa0, $fa1
	fsub.s	$fa1, $ft4, $fa3
	fsub.s	$fa2, $ft5, $fa4
	fsub.s	$fa5, $ft6, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fadd.s	$fa1, $fa3, $ft4
	fadd.s	$fa2, $fa4, $ft5
	fadd.s	$fa0, $ft6, $fa0
.LBB6_8:                                # %.loopexit
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
.LBB6_9:                                # %.loopexit
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.LBB6_10:                               # %_ZNK13btConvexShape19getMarginNonVirtualEv.exit130
	move	$s3, $zero
	fld.s	$fs0, $s2, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.d	$s4, $sp, 64
	lu12i.w	$s5, 260096
	addi.d	$s6, $sp, 48
	lu12i.w	$s7, -264192
	lu32i.d	$s7, 0
	ori	$s8, $zero, 12
	.p2align	4, , 16
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	stx.w	$s5, $s3, $s4
	fld.s	$fa0, $s1, 16
	fld.s	$fa1, $sp, 68
	fld.s	$fa2, $s1, 0
	fld.s	$fa3, $sp, 64
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s1, 32
	fld.s	$fa5, $sp, 72
	fld.s	$fa6, $s1, 20
	fld.s	$fa7, $s1, 4
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa4, $s1, 36
	fld.s	$fa6, $s1, 24
	fld.s	$fa7, $s1, 8
	fld.s	$ft0, $s1, 40
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft0, $fa5, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	addi.d	$a1, $sp, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	fld.s	$fa3, $s1, 4
	fld.s	$fa4, $s1, 0
	fld.s	$fa5, $s1, 8
	fld.s	$fa6, $s1, 48
	fmul.s	$fa3, $fa3, $fa1
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fld.s	$fa4, $s1, 20
	fld.s	$fa5, $s1, 16
	fld.s	$fa6, $s1, 24
	fld.s	$fa7, $s1, 52
	fmul.s	$fa4, $fa4, $fa1
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fadd.s	$fa4, $fa7, $fa4
	fld.s	$fa5, $s1, 36
	fld.s	$fa6, $s1, 32
	fld.s	$fa7, $s1, 40
	fld.s	$ft0, $s1, 56
	fmul.s	$fa1, $fa5, $fa1
	fmadd.s	$fa0, $fa6, $fa0, $fa1
	fmadd.s	$fa0, $fa7, $fa2, $fa0
	fadd.s	$fa0, $ft0, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	fldx.s	$fa0, $s3, $s6
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s3
	stx.w	$s7, $s3, $s4
	fld.s	$fa0, $s1, 16
	fld.s	$fa1, $sp, 68
	fld.s	$fa2, $s1, 0
	fld.s	$fa3, $sp, 64
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s1, 32
	fld.s	$fa5, $sp, 72
	fld.s	$fa6, $s1, 20
	fld.s	$fa7, $s1, 4
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa4, $s1, 36
	fld.s	$fa6, $s1, 24
	fld.s	$fa7, $s1, 8
	fld.s	$ft0, $s1, 40
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft0, $fa5, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	addi.d	$a1, $sp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	fld.s	$fa1, $s1, 4
	movgr2fr.w	$fa2, $a0
	fld.s	$fa3, $s1, 0
	movgr2fr.w	$fa4, $a1
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa5, $s1, 8
	fmadd.s	$fa1, $fa3, $fa0, $fa1
	fld.s	$fa3, $s1, 48
	fld.s	$fa6, $s1, 20
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $s1, 16
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa3, $fa6, $fa2
	fld.s	$fa6, $s1, 36
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fld.s	$fa5, $s1, 32
	fld.s	$fa7, $s1, 24
	fmul.s	$fa2, $fa6, $fa2
	fld.s	$fa6, $s1, 52
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fld.s	$fa2, $s1, 40
	fld.s	$fa5, $s1, 56
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	fldx.s	$fa0, $s3, $s6
	fsub.s	$fa0, $fa0, $fs0
	fstx.s	$fa0, $s0, $s3
	addi.d	$s3, $s3, 4
	bne	$s3, $s8, .LBB6_11
	b	.LBB6_9
.Lfunc_end6:
	.size	_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_, .Lfunc_end6-_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_2-.LJTI6_0
	.word	.LBB6_10-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_3-.LJTI6_0
	.word	.LBB6_3-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_5-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_6-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_2-.LJTI6_0
                                        # -- End function
	.type	_ZTV13btConvexShape,@object     # @_ZTV13btConvexShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV13btConvexShape
	.p2align	3, 0x0
_ZTV13btConvexShape:
	.dword	0
	.dword	_ZTI13btConvexShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN13btConvexShapeD0Ev
	.dword	__cxa_pure_virtual
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.size	_ZTV13btConvexShape, 160

	.type	_ZTI13btConvexShape,@object     # @_ZTI13btConvexShape
	.globl	_ZTI13btConvexShape
	.p2align	3, 0x0
_ZTI13btConvexShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13btConvexShape
	.dword	_ZTI16btCollisionShape
	.size	_ZTI13btConvexShape, 24

	.type	_ZTS13btConvexShape,@object     # @_ZTS13btConvexShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS13btConvexShape
_ZTS13btConvexShape:
	.asciz	"13btConvexShape"
	.size	_ZTS13btConvexShape, 16

	.globl	_ZN13btConvexShapeD1Ev
	.type	_ZN13btConvexShapeD1Ev,@function
_ZN13btConvexShapeD1Ev = _ZN13btConvexShapeD2Ev
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZTI13btConvexShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13btConvexShape
	.addrsig_sym _ZTI16btCollisionShape
