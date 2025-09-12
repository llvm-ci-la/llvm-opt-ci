	.file	"init.c"
	.text
	.globl	init                            # -- Begin function init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:
	move	$t0, $zero
	addi.d	$a5, $a5, 48
	addi.d	$a6, $a6, 48
	addi.d	$a7, $a7, 48
	ori	$t1, $zero, 11
	lu12i.w	$t2, -419431
	ori	$t2, $t2, 2458
	lu32i.d	$t2, -419431
	lu52i.d	$t2, $t2, 1020
	movgr2fr.d	$fa0, $t2
	vldi	$vr1, -984
	lu12i.w	$t2, 419430
	ori	$t2, $t2, 1638
	lu32i.d	$t2, -104858
	lu52i.d	$t2, $t2, 1023
	movgr2fr.d	$fa2, $t2
	lu12i.w	$t2, -184550
	ori	$t2, $t2, 2556
	lu32i.d	$t2, 25165
	lu52i.d	$t2, $t2, 1013
	movgr2fr.d	$fa3, $t2
	ori	$t2, $zero, 0
	lu32i.d	$t2, -131072
	lu52i.d	$t2, $t2, 1027
	vldi	$vr4, -1012
	lu12i.w	$t3, -487882
	ori	$t4, $t3, 2289
	lu32i.d	$t4, 325813
	lu52i.d	$t3, $t4, 1006
	movgr2fr.d	$fa5, $t3
	lu52i.d	$t3, $t4, 1007
	movgr2fr.d	$fa6, $t3
	lu12i.w	$t3, 316753
	ori	$t5, $t3, 3434
	lu32i.d	$t5, -35568
	lu52i.d	$t3, $t5, 1007
	movgr2fr.d	$fa7, $t3
	lu52i.d	$t3, $t4, 1008
	movgr2fr.d	$ft0, $t3
	lu12i.w	$t3, -85564
	ori	$t6, $t3, 813
	lu32i.d	$t6, -379166
	lu52i.d	$t3, $t6, 1008
	movgr2fr.d	$ft1, $t3
	lu12i.w	$t3, 293601
	ori	$t3, $t3, 1147
	lu32i.d	$t3, 293601
	lu52i.d	$t3, $t3, 1016
	movgr2fr.d	$ft2, $t3
	lu52i.d	$t5, $t5, 1008
	movgr2fr.d	$ft3, $t5
	lu12i.w	$t5, -164753
	ori	$t5, $t5, 3027
	lu32i.d	$t5, 154014
	lu52i.d	$t5, $t5, 1009
	movgr2fr.d	$ft4, $t5
	lu52i.d	$t4, $t4, 1009
	movgr2fr.d	$ft5, $t4
	lu12i.w	$t4, 237565
	ori	$t4, $t4, 1551
	lu32i.d	$t4, 497612
	lu52i.d	$t4, $t4, 1009
	movgr2fr.d	$ft6, $t4
	lu52i.d	$t4, $t6, 1009
	movgr2fr.d	$ft7, $t4
	lu12i.w	$t4, -408693
	ori	$t4, $t4, 75
	lu32i.d	$t4, -207367
	lu52i.d	$t4, $t4, 1009
	movgr2fr.d	$ft8, $t4
	ori	$t4, $zero, 96
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t5, $t1, 31, 0
	addi.d	$t6, $t1, -11
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft9, $t6
	ffint.d.l	$ft9, $ft9
	fmul.d	$ft10, $ft9, $fa0
	fdiv.d	$ft10, $ft10, $fa1
	fadd.d	$ft10, $ft10, $fa2
	fstx.d	$ft10, $a0, $t0
	fmul.d	$ft10, $ft10, $fa3
	fstx.d	$ft10, $a1, $t0
	addi.d	$t6, $t1, -9
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fstx.d	$ft10, $a2, $t0
	stx.d	$t2, $a3, $t0
	fadd.d	$ft11, $ft9, $fa4
	fstx.d	$ft11, $a4, $t0
	st.d	$t3, $a5, -48
	fst.d	$ft9, $a6, -48
	st.d	$zero, $a7, -48
	fmadd.d	$ft11, $ft9, $fa5, $ft2
	fst.d	$ft11, $a5, -40
	addi.d	$t6, $t1, -10
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft11, $t6
	ffint.d.l	$ft11, $ft11
	fst.d	$ft11, $a6, -40
	st.d	$zero, $a7, -40
	fmadd.d	$ft11, $ft9, $fa6, $ft2
	fst.d	$ft11, $a5, -32
	fst.d	$ft10, $a6, -32
	st.d	$zero, $a7, -32
	fmadd.d	$ft10, $ft9, $fa7, $ft2
	fst.d	$ft10, $a5, -24
	addi.d	$t6, $t1, -8
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, -24
	st.d	$zero, $a7, -24
	fmadd.d	$ft10, $ft9, $ft0, $ft2
	fst.d	$ft10, $a5, -16
	addi.d	$t6, $t1, -7
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, -16
	st.d	$zero, $a7, -16
	fmadd.d	$ft10, $ft9, $ft1, $ft2
	fst.d	$ft10, $a5, -8
	addi.d	$t6, $t1, -6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, -8
	st.d	$zero, $a7, -8
	fmadd.d	$ft10, $ft9, $ft3, $ft2
	fst.d	$ft10, $a5, 0
	addi.d	$t6, $t1, -5
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 0
	st.d	$zero, $a7, 0
	fmadd.d	$ft10, $ft9, $ft4, $ft2
	fst.d	$ft10, $a5, 8
	addi.d	$t6, $t1, -4
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 8
	st.d	$zero, $a7, 8
	fmadd.d	$ft10, $ft9, $ft5, $ft2
	fst.d	$ft10, $a5, 16
	addi.d	$t6, $t1, -3
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 16
	st.d	$zero, $a7, 16
	fmadd.d	$ft10, $ft9, $ft6, $ft2
	fst.d	$ft10, $a5, 24
	addi.d	$t6, $t1, -2
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 24
	st.d	$zero, $a7, 24
	fmadd.d	$ft10, $ft9, $ft7, $ft2
	fst.d	$ft10, $a5, 32
	addi.d	$t6, $t1, -1
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 32
	st.d	$zero, $a7, 32
	fmadd.d	$ft9, $ft9, $ft8, $ft2
	fst.d	$ft9, $a5, 40
	movgr2fr.d	$ft9, $t5
	ffint.d.l	$ft9, $ft9
	fst.d	$ft9, $a6, 40
	st.d	$zero, $a7, 40
	addi.w	$t1, $t1, 1
	addi.d	$t0, $t0, 8
	addi.d	$a5, $a5, 96
	addi.d	$a6, $a6, 96
	addi.d	$a7, $a7, 96
	bne	$t0, $t4, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	init, .Lfunc_end0-init
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
