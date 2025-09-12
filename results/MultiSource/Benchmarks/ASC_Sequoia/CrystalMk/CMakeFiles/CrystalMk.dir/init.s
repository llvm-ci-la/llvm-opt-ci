	.file	"init.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function init
.LCPI0_0:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI0_1:
	.dword	0x3ffe666666666666              # double 1.8999999999999999
.LCPI0_2:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
.LCPI0_3:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI0_4:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
.LCPI0_5:
	.dword	0x3ef4f8b588e368f1              # double 2.0000000000000002E-5
.LCPI0_6:
	.dword	0x3eff75104d551d6a              # double 3.0000000000000004E-5
.LCPI0_7:
	.dword	0x3f04f8b588e368f1              # double 4.0000000000000003E-5
.LCPI0_8:
	.dword	0x3f0a36e2eb1c432d              # double 5.0000000000000002E-5
.LCPI0_9:
	.dword	0x3f0f75104d551d6a              # double 6.0000000000000008E-5
.LCPI0_10:
	.dword	0x3f12599ed7c6fbd3              # double 7.0000000000000007E-5
.LCPI0_11:
	.dword	0x3f14f8b588e368f1              # double 8.0000000000000007E-5
.LCPI0_12:
	.dword	0x3f1797cc39ffd60f              # double 9.0000000000000006E-5
.LCPI0_13:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI0_14:
	.dword	0x3f1cd5f99c38b04b              # double 1.1E-4
	.text
	.globl	init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:
	move	$t0, $zero
	addi.d	$a5, $a5, 48
	addi.d	$a6, $a6, 48
	addi.d	$a7, $a7, 48
	ori	$t1, $zero, 11
	pcalau12i	$t2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $t2, %pc_lo12(.LCPI0_0)
	vldi	$vr1, -984
	pcalau12i	$t2, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $t2, %pc_lo12(.LCPI0_1)
	pcalau12i	$t2, %pc_hi20(.LCPI0_2)
	fld.d	$fa3, $t2, %pc_lo12(.LCPI0_2)
	ori	$t2, $zero, 0
	lu32i.d	$t2, -131072
	lu52i.d	$t2, $t2, 1027
	vldi	$vr4, -1012
	lu12i.w	$t3, 293601
	ori	$t3, $t3, 1147
	pcalau12i	$t4, %pc_hi20(.LCPI0_3)
	fld.d	$fa5, $t4, %pc_lo12(.LCPI0_3)
	pcalau12i	$t4, %pc_hi20(.LCPI0_4)
	fld.d	$fa6, $t4, %pc_lo12(.LCPI0_4)
	pcalau12i	$t4, %pc_hi20(.LCPI0_5)
	fld.d	$fa7, $t4, %pc_lo12(.LCPI0_5)
	pcalau12i	$t4, %pc_hi20(.LCPI0_6)
	fld.d	$ft0, $t4, %pc_lo12(.LCPI0_6)
	pcalau12i	$t4, %pc_hi20(.LCPI0_7)
	fld.d	$ft1, $t4, %pc_lo12(.LCPI0_7)
	pcalau12i	$t4, %pc_hi20(.LCPI0_8)
	fld.d	$ft2, $t4, %pc_lo12(.LCPI0_8)
	pcalau12i	$t4, %pc_hi20(.LCPI0_9)
	fld.d	$ft3, $t4, %pc_lo12(.LCPI0_9)
	pcalau12i	$t4, %pc_hi20(.LCPI0_10)
	fld.d	$ft4, $t4, %pc_lo12(.LCPI0_10)
	pcalau12i	$t4, %pc_hi20(.LCPI0_11)
	fld.d	$ft5, $t4, %pc_lo12(.LCPI0_11)
	pcalau12i	$t4, %pc_hi20(.LCPI0_12)
	fld.d	$ft6, $t4, %pc_lo12(.LCPI0_12)
	pcalau12i	$t4, %pc_hi20(.LCPI0_13)
	fld.d	$ft7, $t4, %pc_lo12(.LCPI0_13)
	pcalau12i	$t4, %pc_hi20(.LCPI0_14)
	fld.d	$ft8, $t4, %pc_lo12(.LCPI0_14)
	lu32i.d	$t3, 293601
	lu52i.d	$t3, $t3, 1016
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
	fmadd.d	$ft11, $ft9, $fa6, $fa5
	fst.d	$ft11, $a5, -40
	addi.d	$t6, $t1, -10
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft11, $t6
	ffint.d.l	$ft11, $ft11
	fst.d	$ft11, $a6, -40
	st.d	$zero, $a7, -40
	fmadd.d	$ft11, $ft9, $fa7, $fa5
	fst.d	$ft11, $a5, -32
	fst.d	$ft10, $a6, -32
	st.d	$zero, $a7, -32
	fmadd.d	$ft10, $ft9, $ft0, $fa5
	fst.d	$ft10, $a5, -24
	addi.d	$t6, $t1, -8
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, -24
	st.d	$zero, $a7, -24
	fmadd.d	$ft10, $ft9, $ft1, $fa5
	fst.d	$ft10, $a5, -16
	addi.d	$t6, $t1, -7
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, -16
	st.d	$zero, $a7, -16
	fmadd.d	$ft10, $ft9, $ft2, $fa5
	fst.d	$ft10, $a5, -8
	addi.d	$t6, $t1, -6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, -8
	st.d	$zero, $a7, -8
	fmadd.d	$ft10, $ft9, $ft3, $fa5
	fst.d	$ft10, $a5, 0
	addi.d	$t6, $t1, -5
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 0
	st.d	$zero, $a7, 0
	fmadd.d	$ft10, $ft9, $ft4, $fa5
	fst.d	$ft10, $a5, 8
	addi.d	$t6, $t1, -4
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 8
	st.d	$zero, $a7, 8
	fmadd.d	$ft10, $ft9, $ft5, $fa5
	fst.d	$ft10, $a5, 16
	addi.d	$t6, $t1, -3
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 16
	st.d	$zero, $a7, 16
	fmadd.d	$ft10, $ft9, $ft6, $fa5
	fst.d	$ft10, $a5, 24
	addi.d	$t6, $t1, -2
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 24
	st.d	$zero, $a7, 24
	fmadd.d	$ft10, $ft9, $ft7, $fa5
	fst.d	$ft10, $a5, 32
	addi.d	$t6, $t1, -1
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft10, $t6
	ffint.d.l	$ft10, $ft10
	fst.d	$ft10, $a6, 32
	st.d	$zero, $a7, 32
	fmadd.d	$ft9, $ft9, $ft8, $fa5
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
