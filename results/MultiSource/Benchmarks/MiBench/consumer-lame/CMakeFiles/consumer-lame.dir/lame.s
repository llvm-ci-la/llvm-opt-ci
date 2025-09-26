	.file	"lame.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lame_init_params
.LCPI0_0:
	.dword	0x408f400000000000              # double 1000
.LCPI0_1:
	.dword	0x402a000010000000              # double 13.000000476837158
.LCPI0_2:
	.dword	0x40c3880000000000              # double 1.0E+4
.LCPI0_3:
	.dword	0x4026000010000000              # double 11.000000476837158
.LCPI0_4:
	.dword	0x401199999999999a              # double 4.4000000000000004
.LCPI0_5:
	.dword	0x4021fffff0000000              # double 8.9999995231628418
.LCPI0_6:
	.dword	0x3ff921fb54442d18              # double 1.5707963267948966
.LCPI0_7:
	.dword	0x3f964bf964bf964c              # double 0.021774193548387097
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI0_9:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI0_10:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.text
	.globl	lame_init_params
	.p2align	5
	.type	lame_init_params,@function
lame_init_params:                       # @lame_init_params
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	st.d	$zero, $a0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 16
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a0, $a0, %pc_lo12(l3_side)
	ori	$a2, $zero, 528
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 168
	pcaddu18i	$ra, %call36(InitFormatBitStream)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB0_2
# %bb.1:                                # %.thread431
	move	$a0, $zero
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 36
	b	.LBB0_3
.LBB0_2:
	ld.w	$a0, $fp, 36
	addi.d	$a0, $a0, -3
	sltu	$a0, $zero, $a0
	addi.d	$a6, $a0, 1
.LBB0_3:
	ld.w	$a2, $fp, 16
	st.w	$a6, $fp, 204
	lu12i.w	$a4, 5
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	beqz	$a2, .LBB0_8
# %bb.4:                                # %._crit_edge395
	ld.w	$a3, $fp, 48
.LBB0_5:
	ori	$a4, $a4, 3520
	slt	$a5, $a4, $a2
	addi.d	$a4, $a5, 1
	st.w	$a4, $fp, 200
	ori	$a4, $zero, 800
	st.w	$a4, $fp, 184
	ori	$a4, $zero, 576
	sll.w	$a4, $a4, $a5
	st.w	$a4, $fp, 188
	beqz	$a3, .LBB0_10
# %bb.6:
	ld.w	$a5, $fp, 12
	lu12i.w	$a6, 260096
	st.w	$a6, $fp, 216
	bne	$a2, $a5, .LBB0_11
.LBB0_7:
	vldi	$vr0, -1168
	b	.LBB0_12
.LBB0_8:
	ld.w	$a2, $fp, 12
	lu12i.w	$a5, 11
	ori	$a3, $a5, 2943
	bge	$a3, $a2, .LBB0_44
# %bb.9:
	ori	$a2, $a5, 2944
	b	.LBB0_101
.LBB0_10:
	ori	$a3, $zero, 64
	masknez	$a3, $a3, $a5
	ori	$a6, $zero, 128
	maskeqz	$a5, $a6, $a5
	or	$a3, $a5, $a3
	st.w	$a3, $fp, 48
	ld.w	$a5, $fp, 12
	lu12i.w	$a6, 260096
	st.w	$a6, $fp, 216
	beq	$a2, $a5, .LBB0_7
.LBB0_11:
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 216
.LBB0_12:
	ld.d	$a5, $fp, 0
	srli.d	$a6, $a5, 1
	andi	$a7, $a5, 1
	or	$a6, $a7, $a6
	movgr2fr.d	$fa1, $a6
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa1, $fa1, $fa1
	slti	$a6, $a5, 0
	movgr2fr.d	$fa2, $a5
	ffint.s.l	$fa2, $fa2
	movgr2cf	$fcc0, $a6
	fsel	$fa1, $fa2, $fa1, $fcc0
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.s.l	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1280
	fadd.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	ori	$a4, $zero, 319
	fst.d	$fa0, $fp, 176
	bge	$a4, $a3, .LBB0_14
# %bb.13:
	move	$a4, $zero
	st.w	$zero, $fp, 88
	b	.LBB0_15
.LBB0_14:                               # %._crit_edge398
	ld.w	$a4, $fp, 88
	sltu	$a4, $zero, $a4
.LBB0_15:
	slli.d	$a2, $a2, 4
	sll.w	$a2, $a2, $a0
	movgr2fr.w	$fa0, $a2
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	beqz	$a4, .LBB0_18
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_18
# %bb.17:
	ld.w	$a1, $fp, 92
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_4)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
.LBB0_18:
	ld.w	$a1, $fp, 40
	sltu	$a1, $zero, $a1
	xori	$a0, $a0, 1
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_21
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_5)
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_21
# %bb.20:
	st.w	$zero, $fp, 36
.LBB0_21:
	ld.w	$a0, $fp, 104
	bnez	$a0, .LBB0_24
# %bb.22:
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	lu52i.d	$a0, $zero, 1019
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -979
	vldi	$vr2, -846
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ori	$a1, $zero, 30
	blt	$a1, $a0, .LBB0_24
# %bb.23:
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -961
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 232
	fst.s	$fa0, $fp, 236
.LBB0_24:
	ld.w	$a0, $fp, 108
	blez	$a0, .LBB0_28
# %bb.25:
	slli.d	$a1, $a0, 1
	bstrpick.d	$a1, $a1, 31, 1
	ld.w	$a2, $fp, 16
	slli.d	$a1, $a1, 1
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ld.w	$a1, $fp, 116
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fmov.s	$fa2, $fa0
	bltz	$a1, .LBB0_27
# %bb.26:
	add.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa2, $fa1
.LBB0_27:
	vldi	$vr1, -1168
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa0, $fp, 240
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fst.s	$fa0, $fp, 244
.LBB0_28:
	ld.w	$a0, $fp, 104
	blez	$a0, .LBB0_34
# %bb.29:
	slli.d	$a1, $a0, 1
	bstrpick.d	$a1, $a1, 31, 1
	ld.w	$a2, $fp, 16
	slli.d	$a1, $a1, 1
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ld.w	$a1, $fp, 112
	ffint.d.w	$fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	fmov.s	$fa1, $fa0
	bltz	$a1, .LBB0_33
# %bb.30:
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa2
	lu52i.d	$a0, $zero, -1175
	movgr2fr.d	$fa2, $a0
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_32
# %bb.31:
	movgr2fr.w	$fa1, $zero
	b	.LBB0_33
.LBB0_32:
	fcvt.s.d	$fa1, $fa1
.LBB0_33:
	vldi	$vr2, -1168
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa1, $fa2, $fcc0
	fst.s	$fa1, $fp, 232
	fcmp.clt.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa0, $fa2, $fcc0
	fst.s	$fa0, $fp, 236
.LBB0_34:
	ld.w	$a0, $fp, 256
	bnez	$a0, .LBB0_59
# %bb.35:
	fld.s	$fa0, $fp, 232
	movgr2fr.w	$fs0, $zero
	fcmp.cule.s	$fcc0, $fa0, $fs0
	pcalau12i	$s0, %pc_hi20(.LCPI0_6)
	bcnez	$fcc0, .LBB0_47
# %bb.36:                               # %.preheader382
	fld.s	$fa1, $fp, 236
	move	$s1, $zero
	fcvt.d.s	$fs1, $fa1
	fcvt.d.s	$fs2, $fa0
	fsub.s	$fa0, $fa1, $fa0
	fcvt.d.s	$fs3, $fa0
	movgr2fr.d	$fs4, $zero
	ori	$s2, $zero, 999
	fld.d	$fs5, $s0, %pc_lo12(.LCPI0_6)
	vldi	$vr2, -961
	vldi	$vr3, -912
	ori	$s3, $zero, 32
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               # %cdce.end
                                        #   in Loop: Header=BB0_38 Depth=1
	addi.w	$s1, $s1, 1
	fadd.d	$fs4, $fs4, $fa3
	beq	$s1, $s3, .LBB0_46
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	fdiv.d	$fa0, $fs4, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a0, $fp, 248
	slt	$a1, $a0, $s1
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 248
.LBB0_40:                               #   in Loop: Header=BB0_38 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB0_37
# %bb.41:                               #   in Loop: Header=BB0_38 Depth=1
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_37
# %bb.42:                               #   in Loop: Header=BB0_38 Depth=1
	slt	$a0, $s2, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	fsub.d	$fa0, $fs2, $fa0
	fmul.d	$fa0, $fa0, $fs5
	fdiv.d	$fa0, $fa0, $fs3
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a2, $fa1
	andi	$a2, $a2, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	or	$s2, $a0, $a1
	beqz	$a2, .LBB0_37
# %bb.43:                               # %cdce.call
                                        #   in Loop: Header=BB0_38 Depth=1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	vldi	$vr2, -961
	b	.LBB0_37
.LBB0_44:
	lu12i.w	$a3, 10
	ori	$a7, $a3, 3139
	bge	$a7, $a2, .LBB0_96
# %bb.45:
	ori	$a2, $a3, 3140
	b	.LBB0_101
.LBB0_46:
	ld.w	$a0, $fp, 248
	addi.d	$a1, $s2, -999
	sltui	$a1, $a1, 1
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -792
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -961
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 232
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 236
.LBB0_47:
	fld.s	$fa0, $fp, 244
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_49
# %bb.48:
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_7)
	fcvt.d.s	$fa2, $fa0
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB0_111
.LBB0_49:
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_59
.LBB0_50:                               # %.preheader381
	fld.s	$fa1, $fp, 240
	move	$s1, $zero
	fcvt.d.s	$fs0, $fa1
	fcvt.d.s	$fs1, $fa0
	fsub.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fs2, $fa0
	movgr2fr.d	$fs3, $zero
	addi.w	$s2, $zero, -1
	fld.d	$fs4, $s0, %pc_lo12(.LCPI0_6)
	vldi	$vr2, -961
	vldi	$vr3, -912
	ori	$s0, $zero, 32
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_51:                               # %cdce.end379
                                        #   in Loop: Header=BB0_52 Depth=1
	addi.w	$s1, $s1, 1
	fadd.d	$fs3, $fs3, $fa3
	beq	$s1, $s0, .LBB0_58
.LBB0_52:                               # =>This Inner Loop Header: Depth=1
	fdiv.d	$fa0, $fs3, $fa2
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=1
	ld.w	$a0, $fp, 252
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 252
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_51
# %bb.55:                               #   in Loop: Header=BB0_52 Depth=1
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_51
# %bb.56:                               #   in Loop: Header=BB0_52 Depth=1
	slt	$a0, $s1, $s2
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	fsub.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fs4
	fdiv.d	$fa0, $fa0, $fs2
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a2, $fa1
	andi	$a2, $a2, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	or	$s2, $a0, $a1
	beqz	$a2, .LBB0_51
# %bb.57:                               # %cdce.call378
                                        #   in Loop: Header=BB0_52 Depth=1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	vldi	$vr2, -961
	b	.LBB0_51
.LBB0_58:                               # %.sink.split
	ld.w	$a0, $fp, 252
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -961
	fdiv.d	$fa2, $fa0, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $fp, 240
	addi.d	$a0, $s2, 1
	sltui	$a0, $a0, 1
	movgr2fr.w	$fa2, $s2
	ffint.d.w	$fa2, $fa2
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa2, $fa0, $fcc0
	vldi	$vr2, -920
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 244
.LBB0_59:
	ld.w	$a0, $fp, 36
	st.w	$zero, $fp, 228
	addi.d	$a0, $a0, -3
	sltui	$a1, $a0, 1
	ori	$a2, $zero, 2
	ld.w	$a0, $fp, 16
	sub.d	$a1, $a2, $a1
	st.w	$a1, $fp, 204
	addi.d	$a1, $fp, 192
	pcaddu18i	$ra, %call36(SmpFrqIndex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 224
	bltz	$a0, .LBB0_112
# %bb.60:
	ld.w	$a0, $fp, 48
	ld.w	$a1, $fp, 192
	ld.w	$a2, $fp, 16
	pcaddu18i	$ra, %call36(BitrateIndex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 220
	bltz	$a0, .LBB0_112
# %bb.61:
	ld.w	$a0, $fp, 88
	ori	$s0, $zero, 1
	beqz	$a0, .LBB0_68
# %bb.62:
	ld.w	$a0, $fp, 100
	beqz	$a0, .LBB0_82
# %bb.63:
	ld.w	$a1, $fp, 192
	ld.w	$a2, $fp, 16
	pcaddu18i	$ra, %call36(BitrateIndex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 212
	bltz	$a0, .LBB0_112
# %bb.64:                               # %._crit_edge402
	ld.w	$a0, $fp, 96
	beqz	$a0, .LBB0_83
.LBB0_65:
	ld.w	$a1, $fp, 192
	ld.w	$a2, $fp, 16
	pcaddu18i	$ra, %call36(BitrateIndex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 208
	bltz	$a0, .LBB0_112
# %bb.66:
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB0_68
.LBB0_67:
	ld.w	$a0, $fp, 28
	move	$s0, $zero
	slti	$a1, $a0, 2
	ori	$a2, $zero, 2
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 28
.LBB0_68:                               # %.thread
	ld.w	$a0, $fp, 36
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_71
# %bb.69:
	bnez	$s0, .LBB0_72
.LBB0_70:
	ld.d	$a0, $fp, 136
	bnez	$a0, .LBB0_73
	b	.LBB0_75
.LBB0_71:
	st.w	$zero, $fp, 44
	beqz	$s0, .LBB0_70
.LBB0_72:
	st.w	$zero, $fp, 24
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB0_75
.LBB0_73:
	ld.bu	$a2, $a0, 0
	ori	$a1, $zero, 45
	bne	$a2, $a1, .LBB0_76
# %bb.74:
	st.w	$zero, $fp, 24
	ld.bu	$a0, $a0, 0
	bne	$a0, $a1, .LBB0_76
.LBB0_75:
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$a0, $a0, %got_pc_lo12(id3tag)
	st.w	$zero, $a0, 0
.LBB0_76:                               # %.thread361
	ld.w	$a0, $fp, 20
	beqz	$a0, .LBB0_78
# %bb.77:
	st.w	$zero, $fp, 24
.LBB0_78:
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	pcaddu18i	$ra, %call36(init_bit_stream_w)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB0_93
# %bb.79:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_80:                               # %.thread376.sink.split
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 28
.LBB0_81:                               # %.thread376
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_9)
	b	.LBB0_88
.LBB0_82:
	ld.w	$a0, $fp, 96
	ld.w	$a1, $fp, 92
	ori	$a2, $zero, 255
	slt	$a2, $a2, $a0
	sltui	$a3, $a1, 1
	or	$a2, $a3, $a2
	addi.d	$a2, $a2, 13
	ori	$a3, $zero, 3
	slt	$a3, $a3, $a1
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 12
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ori	$a3, $zero, 7
	slt	$a1, $a3, $a1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 9
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $fp, 212
	bnez	$a0, .LBB0_65
.LBB0_83:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 208
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB0_67
	b	.LBB0_68
.LBB0_84:                               # %.thread433
	addi.d	$a0, $fp, 256
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	b	.LBB0_93
.LBB0_85:                               # %.thread364
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 28
.LBB0_86:                               # %.thread365
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 272
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	b	.LBB0_92
.LBB0_87:
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_8)
.LBB0_88:                               # %.preheader380.preheader
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	b	.LBB0_91
.LBB0_89:                               # %.thread368
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 28
.LBB0_90:                               # %.thread369
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_10)
	ori	$a0, $zero, 1
.LBB0_91:                               # %.preheader380.preheader
	st.d	$a0, $fp, 272
.LBB0_92:                               # %.preheader380.preheader
	vst	$vr0, $fp, 256
.LBB0_93:                               # %.preheader380.preheader
	ld.w	$a0, $fp, 192
	ld.w	$a1, $fp, 224
	alsl.d	$a0, $a0, $a0, 1
	add.w	$a0, $a0, $a1
	ori	$a1, $zero, 148
	mul.d	$a0, $a0, $a1
	pcalau12i	$a2, %got_pc_hi20(sfBandIndex)
	ld.d	$a2, $a2, %got_pc_lo12(sfBandIndex)
	vldx	$vr0, $a2, $a0
	add.d	$a4, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(scalefac_band)
	ld.d	$a5, $a0, %got_pc_lo12(scalefac_band)
	vld	$vr1, $a4, 16
	vst	$vr1, $a5, 16
	vld	$vr1, $a4, 32
	vld	$vr2, $a4, 48
	vld	$vr3, $a4, 64
	vld	$vr4, $a4, 80
	vst	$vr1, $a5, 32
	vst	$vr2, $a5, 48
	vst	$vr3, $a5, 64
	vst	$vr4, $a5, 80
	ld.w	$a0, $fp, 192
	ld.w	$a3, $fp, 224
	vld	$vr1, $a4, 96
	vld	$vr2, $a4, 112
	alsl.d	$a4, $a0, $a0, 1
	add.w	$a4, $a4, $a3
	mul.d	$a1, $a4, $a1
	add.d	$a1, $a2, $a1
	vld	$vr3, $a1, 128
	ld.w	$a1, $a1, 144
	vst	$vr1, $a5, 96
	vst	$vr2, $a5, 112
	vst	$vr3, $a5, 128
	st.w	$a1, $a5, 144
	ld.w	$a1, $fp, 24
	vst	$vr0, $a5, 0
	beqz	$a1, .LBB0_95
# %bb.94:
	ld.w	$a2, $fp, 36
	ori	$a1, $zero, 1
	sub.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(InitVbrTag)
	jr	$t8
.LBB0_95:
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB0_96:
	lu12i.w	$a3, 7
	ori	$a7, $a3, 3327
	bge	$a7, $a2, .LBB0_98
# %bb.97:
	ori	$a2, $a3, 3328
	b	.LBB0_101
.LBB0_98:
	ori	$a3, $a4, 3519
	bge	$a3, $a2, .LBB0_100
# %bb.99:
	ori	$a2, $a4, 3520
	b	.LBB0_101
.LBB0_100:
	ori	$a3, $a4, 1570
	slt	$a2, $a2, $a3
	masknez	$a3, $a3, $a2
	lu12i.w	$a7, 3
	ori	$a7, $a7, 3712
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $a3
.LBB0_101:
	ld.w	$a3, $fp, 48
	st.w	$a2, $fp, 16
	blez	$a3, .LBB0_5
# %bb.102:
	ld.w	$a7, $fp, 88
	bnez	$a7, .LBB0_5
# %bb.103:
	slli.d	$a7, $a2, 4
	sll.w	$a7, $a7, $a0
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa1, $fa0
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa0, $a7
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	fld.d	$fa3, $a7, %pc_lo12(.LCPI0_1)
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB0_5
# %bb.104:
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a2, $a6, 4
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3712
	bge	$a2, $a6, .LBB0_110
# %bb.105:
	ori	$a2, $a4, 1570
	bgeu	$a2, $a6, .LBB0_110
# %bb.106:
	ori	$a2, $a4, 3520
	bgeu	$a2, $a6, .LBB0_110
# %bb.107:
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	bgeu	$a2, $a6, .LBB0_110
# %bb.108:
	lu12i.w	$a2, 10
	ori	$a2, $a2, 3140
	bgeu	$a2, $a6, .LBB0_110
# %bb.109:
	ori	$a2, $a5, 2944
.LBB0_110:
	st.w	$a2, $fp, 16
	b	.LBB0_5
.LBB0_111:
	st.d	$zero, $fp, 240
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 244
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB0_50
	b	.LBB0_59
.LBB0_112:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(display_bitrates)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_113:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $fp, 256
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 272
	ori	$a0, $zero, 3
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 264
	addi.w	$a0, $zero, -99
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	lame_init_params, .Lfunc_end0-lame_init_params
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_113-.LJTI0_0
	.word	.LBB0_87-.LJTI0_0
	.word	.LBB0_81-.LJTI0_0
	.word	.LBB0_80-.LJTI0_0
	.word	.LBB0_80-.LJTI0_0
	.word	.LBB0_90-.LJTI0_0
	.word	.LBB0_89-.LJTI0_0
	.word	.LBB0_86-.LJTI0_0
	.word	.LBB0_85-.LJTI0_0
	.word	.LBB0_84-.LJTI0_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lame_print_config
.LCPI1_0:
	.dword	0x408f400000000000              # double 1000
	.text
	.globl	lame_print_config
	.p2align	5
	.type	lame_print_config,@function
lame_print_config:                      # @lame_print_config
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI1_0)
	fld.s	$fs2, $fp, 216
	ld.w	$s5, $fp, 204
	ld.w	$s4, $fp, 48
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa0, $fs0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s3, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(lame_print_version)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_3
# %bb.1:
	ld.w	$a0, $fp, 204
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_3
# %bb.2:
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB1_3:
	fld.s	$fa0, $fp, 216
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	fcvt.s.d	$fs1, $fs1
	bcnez	$fcc0, .LBB1_5
# %bb.4:
	fmul.s	$fa0, $fs2, $fs1
	ld.d	$a0, $s3, 0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ftintrz.w.s	$fa0, $fs1
	movfr2gr.s	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_5:
	fld.s	$fa0, $fp, 244
	movgr2fr.w	$fs2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fs2
	lu12i.w	$s0, 278432
	bceqz	$fcc0, .LBB1_11
# %bb.6:
	fld.s	$fa0, $fp, 232
	fcmp.cule.s	$fcc0, $fa0, $fs2
	bceqz	$fcc0, .LBB1_12
.LBB1_7:
	ld.w	$a0, $fp, 20
	ld.d	$s0, $s3, 0
	ld.d	$s1, $fp, 128
	bnez	$a0, .LBB1_13
.LBB1_8:                                # %sub_0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB1_14
# %bb.9:                                # %.tail
	ld.bu	$a0, $s1, 1
	bnez	$a0, .LBB1_14
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	ld.d	$s2, $fp, 136
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_15
	b	.LBB1_17
.LBB1_11:
	fld.s	$fa1, $fp, 240
	ld.d	$a0, $s3, 0
	fmul.s	$fa1, $fa1, $fs1
	movgr2fr.w	$fa2, $s0
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fs1
	fmul.s	$fa0, $fa0, $fa2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 232
	fcmp.cule.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB1_7
.LBB1_12:
	ld.d	$a0, $s3, 0
	fmul.s	$fa0, $fa0, $fs1
	fld.s	$fa1, $fp, 236
	movgr2fr.w	$fa2, $s0
	fmul.s	$fa0, $fa0, $fa2
	fcvt.d.s	$fa0, $fa0
	fmul.s	$fa1, $fa1, $fs1
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 20
	ld.d	$s0, $s3, 0
	ld.d	$s1, $fp, 128
	beqz	$a0, .LBB1_8
.LBB1_13:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_21
.LBB1_14:                               # %.tail.thread
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	ld.d	$s2, $fp, 136
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB1_17
.LBB1_15:                               # %.tail43
	ld.bu	$a0, $s2, 1
	bnez	$a0, .LBB1_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a3, $a0, %pc_lo12(.L.str.13)
	b	.LBB1_18
.LBB1_17:                               # %.tail43.thread
	ori	$a1, $zero, 47
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a0
.LBB1_18:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	ld.w	$a2, $fp, 88
	ld.d	$a0, $s3, 0
	ld.w	$a7, $fp, 28
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	bnez	$a2, .LBB1_20
# %bb.19:
	slli.d	$a1, $s5, 4
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s4
	fmul.s	$fa1, $fs1, $fa1
	ld.w	$a1, $fp, 36
	ld.w	$a3, $fp, 48
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(lame_print_config.mode_names)
	addi.d	$a2, $a2, %pc_lo12(lame_print_config.mode_names)
	ld.w	$a5, $fp, 192
	ldx.d	$a4, $a2, $a1
	ori	$a1, $zero, 2
	sub.w	$a5, $a1, $a5
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a6, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_21
.LBB1_20:
	ld.w	$a1, $fp, 36
	ld.w	$a3, $fp, 92
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(lame_print_config.mode_names)
	addi.d	$a2, $a2, %pc_lo12(lame_print_config.mode_names)
	ld.w	$a5, $fp, 192
	ldx.d	$a4, $a2, $a1
	ori	$a1, $zero, 2
	sub.w	$a5, $a1, $a5
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	move	$a6, $a7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_21:
	ld.d	$a0, $s3, 0
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end1:
	.size	lame_print_config, .Lfunc_end1-lame_print_config
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lame_encode_frame
.LCPI2_0:
	.dword	0x408f400000000000              # double 1000
.LCPI2_1:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
.LCPI2_2:
	.dword	0x3fd6666666666666              # double 0.34999999999999998
	.text
	.globl	lame_encode_frame
	.p2align	5
	.type	lame_encode_frame,@function
lame_encode_frame:                      # @lame_encode_frame
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	lu12i.w	$a3, 8
	ori	$a3, $a3, 1920
	sub.d	$sp, $sp, $a3
	move	$s1, $a5
	move	$s3, $a4
	move	$s0, $a2
	move	$s2, $a1
	move	$fp, $a0
	st.d	$zero, $sp, 96
	lu12i.w	$a0, 1
	ori	$a0, $a0, 976
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 3904
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1168
	ori	$a2, $zero, 3904
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	ori	$a2, $zero, 976
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 168
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 176
	st.d	$s0, $sp, 184
	st.w	$zero, $fp, 228
	pcalau12i	$s5, %pc_hi20(lame_encode_frame.sentBits)
	beqz	$a1, .LBB2_6
# %bb.1:
	ld.w	$a0, $fp, 64
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB2_7
.LBB2_2:
	beqz	$a0, .LBB2_5
# %bb.3:
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB2_5
# %bb.4:
	ld.w	$a0, $fp, 72
	beqz	$a0, .LBB2_72
.LBB2_5:
	st.w	$zero, $fp, 196
	b	.LBB2_8
.LBB2_6:
	ld.w	$a0, $fp, 16
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	ld.w	$a0, $fp, 48
	ld.w	$a2, $fp, 188
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	st.d	$zero, $s5, %pc_lo12(lame_encode_frame.sentBits)
	mul.d	$a0, $a2, $a0
	vldi	$vr1, -992
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI2_1)
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fadd.d	$fa2, $fa0, $fa1
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fsub.d	$fa0, $fa0, $fa2
	fabs.d	$fa2, $fa0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	movgr2fr.d	$fa1, $zero
	fsel	$fa0, $fa0, $fa1, $fcc0
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.frac_SpF)
	fst.d	$fa0, $a0, %pc_lo12(lame_encode_frame.frac_SpF)
	fneg.d	$fa2, $fa0
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.slot_lag)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	fst.d	$fa2, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	movcf2gr	$a0, $fcc0
	st.w	$a0, $fp, 196
	ld.w	$a0, $fp, 64
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB2_2
.LBB2_7:
	st.w	$a2, $fp, 196
.LBB2_8:
	ld.w	$a0, $fp, 20
	bnez	$a0, .LBB2_11
# %bb.9:
	ld.w	$a0, $fp, 32
	bnez	$a0, .LBB2_11
# %bb.10:
	ld.w	$a0, $fp, 192
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 50
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 200
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	mod.d	$a0, $a1, $a0
	beqz	$a0, .LBB2_43
.LBB2_11:
	ld.w	$a0, $fp, 272
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_44
.LBB2_12:
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 200
	pcalau12i	$a1, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$s6, $a1, %pc_lo12(lame_encode_frame.ms_ratio)
	alsl.d	$a1, $a0, $s6, 3
	fld.d	$fs0, $a1, -8
	blez	$a0, .LBB2_31
# %bb.13:                               # %.preheader129.lr.ph
	ld.wu	$a1, $fp, 204
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a0, $a0, %pc_lo12(l3_side)
	move	$s4, $zero
	addi.d	$s0, $a0, 552
	addi.d	$s1, $a0, 72
	ori	$s3, $zero, 4
	ori	$a0, $zero, 608
	vreplgr2vr.d	$vr3, $a0
	addi.d	$s8, $sp, 144
	addi.d	$s2, $sp, 112
	lu12i.w	$a0, 2
	ori	$a0, $a0, 784
	add.d	$s5, $sp, $a0
	ori	$s7, $zero, 8
	vst	$vr3, $sp, 80                   # 16-byte Folded Spill
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %._crit_edge134
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.w	$a0, $fp, 200
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 240
	addi.d	$s1, $s1, 240
	bge	$s4, $a0, .LBB2_31
.LBB2_15:                               # %.preheader129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_22 Depth 2
                                        #     Child Loop BB2_27 Depth 2
                                        #     Child Loop BB2_30 Depth 2
	addi.w	$a0, $a1, 0
	blez	$a0, .LBB2_23
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$a0, $s4, $s4, 3
	slli.d	$a0, $a0, 7
	bgeu	$a1, $s3, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=1
	move	$a2, $zero
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_18:                               # %vector.ph198
                                        #   in Loop: Header=BB2_15 Depth=1
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	vreplgr2vr.d	$vr0, $a0
	addi.d	$a3, $sp, 192
	lu12i.w	$a4, 4
	ori	$a4, $a4, 1824
	add.d	$a4, $sp, $a4
	move	$a5, $a2
	.p2align	4, , 16
.LBB2_19:                               # %vector.body201
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vadd.d	$vr1, $vr1, $vr3
	vadd.d	$vr2, $vr2, $vr3
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB2_19
# %bb.20:                               # %middle.block206
                                        #   in Loop: Header=BB2_15 Depth=1
	beq	$a2, $a1, .LBB2_23
.LBB2_21:                               # %scalar.ph196.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	addi.d	$a3, $sp, 176
	alsl.d	$a3, $a2, $a3, 3
	lu12i.w	$a4, 4
	ori	$a4, $a4, 1808
	add.d	$a4, $sp, $a4
	alsl.d	$a4, $a2, $a4, 3
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB2_22:                               # %scalar.ph196
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 0
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 608
	st.d	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB2_22
.LBB2_23:                               # %._crit_edge
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$a3, $s4, $s6, 3
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ener_ratio)
	addi.d	$a0, $a0, %pc_lo12(lame_encode_frame.ms_ener_ratio)
	alsl.d	$a5, $s4, $a0, 3
	alsl.d	$a0, $s4, $s8, 4
	alsl.d	$a1, $s4, $s2, 4
	st.d	$s5, $sp, 16
	st.d	$a1, $sp, 8
	lu12i.w	$a1, 4
	ori	$a1, $a1, 1808
	add.d	$a1, $sp, $a1
	addi.d	$a4, $sp, 96
	lu12i.w	$a2, 1
	ori	$a2, $a2, 976
	add.d	$a6, $sp, $a2
	addi.d	$a7, $sp, 1168
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(L3psycho_anal)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 80                   # 16-byte Folded Reload
	ld.w	$a0, $fp, 204
	bstrpick.d	$a1, $a0, 31, 0
	blez	$a0, .LBB2_14
# %bb.24:                               # %.lr.ph133
                                        #   in Loop: Header=BB2_15 Depth=1
	bgeu	$a1, $s7, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_15 Depth=1
	move	$a0, $zero
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_26:                               # %vector.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	bstrpick.d	$a0, $a1, 30, 3
	slli.d	$a0, $a0, 3
	move	$a2, $s0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 800
	add.d	$a3, $sp, $a3
	move	$a4, $a0
	.p2align	4, , 16
.LBB2_27:                               # %vector.body
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vstelm.w	$vr0, $a2, -480, 0
	vstelm.w	$vr0, $a2, -360, 1
	vstelm.w	$vr0, $a2, -240, 2
	vstelm.w	$vr0, $a2, -120, 3
	vstelm.w	$vr1, $a2, 0, 0
	vstelm.w	$vr1, $a2, 120, 1
	vstelm.w	$vr1, $a2, 240, 2
	vstelm.w	$vr1, $a2, 360, 3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 960
	bnez	$a4, .LBB2_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB2_15 Depth=1
	beq	$a0, $a1, .LBB2_14
.LBB2_29:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$a2, $a0, $s5, 2
	ori	$a3, $zero, 120
	mul.d	$a3, $a0, $a3
	add.d	$a3, $s1, $a3
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB2_30:                               # %scalar.ph
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 120
	bnez	$a0, .LBB2_30
	b	.LBB2_14
.LBB2_31:                               # %._crit_edge136
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
.LBB2_32:                               # %.loopexit
	blez	$a0, .LBB2_56
# %bb.33:                               # %.preheader.lr.ph
	ld.w	$t4, $fp, 204
	blez	$t4, .LBB2_56
.LBB2_34:                               # %.preheader.us.preheader
	pcalau12i	$a2, %pc_hi20(l3_side)
	addi.d	$a2, $a2, %pc_lo12(l3_side)
	move	$a3, $zero
	addi.d	$a4, $a2, 196
	bstrpick.d	$a5, $t4, 30, 1
	slli.d	$a5, $a5, 1
	ori	$a6, $zero, 1
	ori	$a7, $zero, 120
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_35:                               # %._crit_edge143.us
                                        #   in Loop: Header=BB2_36 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 240
	addi.d	$a2, $a2, 240
	beq	$a3, $a0, .LBB2_56
.LBB2_36:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_42 Depth 2
	bne	$t4, $a6, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_36 Depth=1
	move	$t1, $zero
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_38:                               # %vector.body225.preheader
                                        #   in Loop: Header=BB2_36 Depth=1
	move	$t0, $a4
	move	$t1, $a5
	.p2align	4, , 16
.LBB2_39:                               # %vector.body225
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, -124
	ld.w	$t3, $t0, -4
	st.w	$zero, $t0, -120
	st.w	$zero, $t0, 0
	sltu	$t2, $zero, $t2
	sltu	$t3, $zero, $t3
	st.w	$t2, $t0, -128
	st.w	$t3, $t0, -8
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, 240
	bnez	$t1, .LBB2_39
# %bb.40:                               # %middle.block228
                                        #   in Loop: Header=BB2_36 Depth=1
	move	$t1, $a5
	beq	$a5, $t4, .LBB2_35
.LBB2_41:                               # %scalar.ph220.preheader
                                        #   in Loop: Header=BB2_36 Depth=1
	mul.d	$t0, $t1, $a7
	sub.d	$t1, $t4, $t1
	.p2align	4, , 16
.LBB2_42:                               # %scalar.ph220
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $a2, $t0
	ld.w	$t3, $t2, 72
	st.w	$zero, $t2, 76
	sltu	$t3, $zero, $t3
	st.w	$t3, $t2, 68
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 120
	bnez	$t1, .LBB2_42
	b	.LBB2_35
.LBB2_43:
	ld.w	$a0, $fp, 16
	ld.d	$a2, $fp, 176
	ld.w	$a3, $fp, 188
	pcaddu18i	$ra, %call36(timestatus)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 272
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	bnez	$a0, .LBB2_12
.LBB2_44:                               # %.preheader128
	ld.w	$a0, $fp, 200
	blez	$a0, .LBB2_55
# %bb.45:                               # %.preheader127.lr.ph
	ld.w	$t6, $fp, 204
	blez	$t6, .LBB2_70
# %bb.46:                               # %.preheader127.us.preheader
	bstrpick.d	$a2, $t6, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(l3_side)
	addi.d	$a5, $a3, %pc_lo12(l3_side)
	move	$a3, $zero
	addi.d	$a4, $a5, 312
	addi.d	$a5, $a5, 72
	addi.d	$a6, $sp, 144
	addi.d	$a7, $sp, 160
	ori	$t0, $zero, 4
	ori	$t1, $zero, 120
	ori	$t2, $zero, 0
	lu32i.d	$t2, 385024
	lu52i.d	$t2, $t2, 1032
	movgr2fr.d	$fs0, $zero
	vreplgr2vr.d	$vr0, $t2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_47:                               # %._crit_edge139.us
                                        #   in Loop: Header=BB2_48 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 240
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 240
	addi.d	$a6, $a6, 16
	beq	$a3, $a0, .LBB2_32
.LBB2_48:                               # %.preheader127.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_51 Depth 2
                                        #     Child Loop BB2_54 Depth 2
	bgeu	$t6, $t0, .LBB2_50
# %bb.49:                               #   in Loop: Header=BB2_48 Depth=1
	move	$t5, $zero
	b	.LBB2_53
	.p2align	4, , 16
.LBB2_50:                               # %vector.body214.preheader
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$t3, $a7
	move	$t4, $a4
	move	$t5, $a2
	.p2align	4, , 16
.LBB2_51:                               # %vector.body214
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $t4, -240
	st.w	$zero, $t4, -120
	st.w	$zero, $t4, 0
	st.w	$zero, $t4, 120
	vst	$vr0, $t3, -16
	vst	$vr0, $t3, 0
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 480
	addi.d	$t3, $t3, 32
	bnez	$t5, .LBB2_51
# %bb.52:                               # %middle.block217
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$t5, $a2
	beq	$a2, $t6, .LBB2_47
.LBB2_53:                               # %scalar.ph209.preheader
                                        #   in Loop: Header=BB2_48 Depth=1
	mul.d	$t3, $t5, $t1
	add.d	$t3, $a5, $t3
	alsl.d	$t4, $t5, $a6, 3
	sub.d	$t5, $t6, $t5
	.p2align	4, , 16
.LBB2_54:                               # %scalar.ph209
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $t3, 0
	st.d	$t2, $t4, 0
	addi.d	$t3, $t3, 120
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB2_54
	b	.LBB2_47
.LBB2_55:
	movgr2fr.d	$fs0, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
.LBB2_56:                               # %._crit_edge145
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$s4, $a0, %pc_lo12(l3_side)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1808
	add.d	$a3, $sp, $a0
	move	$a0, $fp
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s4
	pcaddu18i	$ra, %call36(mdct_sub48)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_61
# %bb.57:
	ld.w	$a0, $s4, 72
	ld.w	$a1, $s4, 192
	bne	$a0, $a1, .LBB2_61
# %bb.58:
	ld.w	$a0, $s4, 432
	ld.w	$a1, $s4, 312
	bne	$a1, $a0, .LBB2_61
# %bb.59:
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$a0, $a0, %pc_lo12(lame_encode_frame.ms_ratio)
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 96
	fadd.d	$fa0, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_2)
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -944
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB2_61
# %bb.60:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 228
.LBB2_61:                               # %.thread
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB2_64
# %bb.62:                               # %.thread191
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 228
	addi.d	$a4, $sp, 1168
	addi.d	$a1, $sp, 112
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB2_65
.LBB2_63:
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$a2, $a0, %pc_lo12(lame_encode_frame.ms_ratio)
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a5, $a0, %pc_lo12(l3_side)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1808
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 784
	add.d	$a6, $sp, $a0
	addi.d	$a7, $sp, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(VBR_iteration_loop)
	jirl	$ra, $ra, 0
	b	.LBB2_66
.LBB2_64:
	ld.w	$a0, $fp, 228
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	addi.d	$a1, $sp, 144
	masknez	$a1, $a1, $a0
	addi.d	$a2, $sp, 112
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 976
	add.d	$a2, $sp, $a2
	masknez	$a2, $a2, $a0
	addi.d	$a3, $sp, 1168
	maskeqz	$a0, $a3, $a0
	or	$a4, $a0, $a2
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB2_63
.LBB2_65:
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$a2, $a0, %pc_lo12(lame_encode_frame.ms_ratio)
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a5, $a0, %pc_lo12(l3_side)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1808
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 784
	add.d	$a6, $sp, $a0
	addi.d	$a7, $sp, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(iteration_loop)
	jirl	$ra, $ra, 0
.LBB2_66:
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 104
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a3, $a0, %pc_lo12(l3_side)
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$s2, $a0, %pc_lo12(bs)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 784
	add.d	$a2, $sp, $a0
	addi.d	$a4, $sp, 192
	move	$a0, $fp
	move	$a5, $s2
	pcaddu18i	$ra, %call36(III_format_bitstream)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 40
	ld.d	$a0, $s5, %pc_lo12(lame_encode_frame.sentBits)
	sub.d	$a2, $a1, $a0
	pcalau12i	$s0, %pc_hi20(lame_encode_frame.frameBits)
	andi	$a4, $a2, 7
	st.d	$a2, $s0, %pc_lo12(lame_encode_frame.frameBits)
	bnez	$a4, .LBB2_71
.LBB2_67:
	add.d	$a0, $a0, $a2
	st.d	$a0, $s5, %pc_lo12(lame_encode_frame.sentBits)
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a2, $a0, %pc_lo12(bs)
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(copy_buffer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	beqz	$a1, .LBB2_69
# %bb.68:
	ld.d	$a1, $s5, %pc_lo12(lame_encode_frame.sentBits)
	srli.d	$a1, $a1, 3
	addi.w	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AddVbrFrame)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB2_69:
	ld.d	$a1, $fp, 168
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 168
	lu12i.w	$a1, 8
	ori	$a1, $a1, 1920
	add.d	$sp, $sp, $a1
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB2_70:
	movgr2fr.d	$fs0, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t4, $fp, 204
	bgtz	$t4, .LBB2_34
	b	.LBB2_56
.LBB2_71:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	srli.d	$a3, $a2, 3
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, %pc_lo12(lame_encode_frame.frameBits)
	ld.d	$a0, $s5, %pc_lo12(lame_encode_frame.sentBits)
	b	.LBB2_67
.LBB2_72:
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.frac_SpF)
	fld.d	$fa0, $a0, %pc_lo12(lame_encode_frame.frac_SpF)
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_8
# %bb.73:
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.slot_lag)
	fld.d	$fa1, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	vldi	$vr2, -784
	fadd.d	$fa2, $fa0, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_75
# %bb.74:
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	b	.LBB2_5
.LBB2_75:
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 196
	vldi	$vr2, -912
	fsub.d	$fa0, $fa2, $fa0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	b	.LBB2_8
.Lfunc_end2:
	.size	lame_encode_frame, .Lfunc_end2-lame_encode_frame
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fill_buffer_resample
.LCPI3_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	fill_buffer_resample
	.p2align	5
	.type	fill_buffer_resample,@function
fill_buffer_resample:                   # @fill_buffer_resample
# %bb.0:
	ld.d	$t3, $a0, 168
	pcalau12i	$a7, %pc_hi20(fill_buffer_resample.init)
	addi.d	$t1, $a7, %pc_lo12(fill_buffer_resample.init)
	slli.d	$t2, $a6, 2
	pcalau12i	$a7, %pc_hi20(fill_buffer_resample.itime)
	addi.d	$a7, $a7, %pc_lo12(fill_buffer_resample.itime)
	pcalau12i	$t0, %pc_hi20(fill_buffer_resample.inbuf_old)
	addi.d	$t0, $t0, %pc_lo12(fill_buffer_resample.inbuf_old)
	beqz	$t3, .LBB3_2
.LBB3_1:                                # %.thread
	stx.w	$zero, $t1, $t2
	b	.LBB3_3
.LBB3_2:
	ldx.w	$t3, $t1, $t2
	beqz	$t3, .LBB3_30
.LBB3_3:                                # %.thread155
	fld.s	$fa0, $a0, 216
	slli.d	$t1, $a6, 3
	blez	$a2, .LBB3_14
# %bb.4:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	fcvt.d.s	$fa1, $fa0
	vldi	$vr2, -928
	fadd.d	$fa2, $fa1, $fa2
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fsub.d	$fa1, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_0)
	fabs.d	$fa3, $fa1
	fldx.d	$fa1, $a7, $t1
	alsl.d	$a0, $a6, $t1, 1
	fcmp.clt.d	$fcc0, $fa3, $fa2
	add.d	$t2, $t0, $a0
	move	$a0, $zero
	vldi	$vr2, -784
	addi.w	$t4, $zero, -1
	bceqz	$fcc0, .LBB3_15
# %bb.5:                                # %.lr.ph.split.us.preheader
	vldi	$vr3, -928
	move	$t5, $a2
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_6:                                # %.thread109.us
                                        #   in Loop: Header=BB3_9 Depth=1
	slli.d	$t6, $t3, 1
	ldx.hu	$t6, $a3, $t6
	move	$t7, $t3
.LBB3_7:                                #   in Loop: Header=BB3_9 Depth=1
	alsl.d	$t7, $t7, $a3, 1
	addi.d	$t7, $t7, 2
.LBB3_8:                                #   in Loop: Header=BB3_9 Depth=1
	movgr2fr.w	$fa5, $t3
	ffint.d.w	$fa5, $fa5
	ld.h	$t7, $t7, 0
	fadd.d	$fa5, $fa1, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fadd.d	$fa5, $fa4, $fa2
	movgr2fr.w	$fa6, $t7
	ffint.d.w	$fa6, $fa6
	ext.w.h	$t6, $t6
	movgr2fr.w	$fa7, $t6
	ffint.d.w	$fa7, $fa7
	fneg.d	$fa7, $fa7
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa3
	vreplvei.d	$vr4, $vr4, 0
	vfrintrm.d	$vr4, $vr4
	ftintrz.l.d	$fa4, $fa4
	movfr2gr.d	$t6, $fa4
	st.h	$t6, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$t5, $t5, -1
	addi.w	$a0, $a0, 1
	beqz	$t5, .LBB3_27
.LBB3_9:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a0, 31, 0
	movgr2fr.d	$fa4, $t3
	ffint.s.l	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa5, $fa4, $fa1
	vreplvei.d	$vr5, $vr5, 0
	vfrintrm.d	$vr5, $vr5
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t3, $fa5
	addi.w	$t6, $t3, 2
	bge	$t6, $a4, .LBB3_28
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	bgez	$t3, .LBB3_6
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=1
	alsl.d	$t7, $t3, $t2, 1
	ld.hu	$t6, $t7, 10
	beq	$t3, $t4, .LBB3_13
# %bb.12:                               #   in Loop: Header=BB3_9 Depth=1
	addi.d	$t7, $t7, 12
	b	.LBB3_8
.LBB3_13:                               #   in Loop: Header=BB3_9 Depth=1
	move	$t7, $t4
	b	.LBB3_7
.LBB3_14:                               # %.._crit_edge_crit_edge
	fldx.d	$fa1, $a7, $t1
	move	$a0, $zero
	move	$t3, $zero
	b	.LBB3_29
.LBB3_15:                               # %.lr.ph.split.preheader
	vldi	$vr3, -912
	vldi	$vr4, -896
	addi.w	$t5, $zero, -2
	vldi	$vr5, -1000
	vldi	$vr6, -928
	lu12i.w	$t3, -8
	ori	$t6, $t3, 1
	lu12i.w	$t3, 7
	ori	$t7, $t3, 4095
	move	$t8, $a2
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a0, 31, 0
	movgr2fr.d	$fa7, $t3
	ffint.s.l	$fa7, $fa7
	fmul.s	$fa7, $fa0, $fa7
	fcvt.d.s	$fa7, $fa7
	fsub.d	$ft0, $fa7, $fa1
	vreplvei.d	$vr8, $vr8, 0
	vfrintrm.d	$vr8, $vr8
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$t3, $ft0
	addi.w	$s1, $t3, 2
	bge	$s1, $a4, .LBB3_28
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
	movgr2fr.w	$ft0, $t3
	ffint.d.w	$ft0, $ft0
	fadd.d	$ft0, $fa1, $ft0
	fsub.d	$fa7, $fa7, $ft0
	bltz	$t3, .LBB3_20
# %bb.18:                               #   in Loop: Header=BB3_16 Depth=1
	alsl.d	$s2, $t3, $a3, 1
	slli.d	$fp, $t3, 1
	ldx.hu	$s0, $a3, $fp
	ld.hu	$fp, $s2, 2
	fadd.d	$ft0, $fa7, $fa3
	fadd.d	$ft1, $fa7, $fa4
	beqz	$t3, .LBB3_24
# %bb.19:                               # %.thread114
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.h	$s2, $s2, -2
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_20:                               #   in Loop: Header=BB3_16 Depth=1
	alsl.d	$s3, $t3, $t2, 1
	ld.hu	$s0, $s3, 10
	beq	$t3, $t4, .LBB3_23
# %bb.21:                               #   in Loop: Header=BB3_16 Depth=1
	ld.hu	$fp, $s3, 12
	ld.h	$s2, $s3, 8
	fadd.d	$ft0, $fa7, $fa3
	fadd.d	$ft1, $fa7, $fa4
	beq	$t3, $t5, .LBB3_25
# %bb.22:                               #   in Loop: Header=BB3_16 Depth=1
	addi.d	$s1, $s3, 14
	b	.LBB3_26
.LBB3_23:                               # %.thread167
                                        #   in Loop: Header=BB3_16 Depth=1
	alsl.d	$fp, $t3, $a3, 1
	ld.hu	$fp, $fp, 2
	fadd.d	$ft0, $fa7, $fa3
	fadd.d	$ft1, $fa7, $fa4
.LBB3_24:                               # %.thread172
                                        #   in Loop: Header=BB3_16 Depth=1
	alsl.d	$s2, $t3, $t2, 1
	ld.h	$s2, $s2, 8
.LBB3_25:                               #   in Loop: Header=BB3_16 Depth=1
	alsl.d	$s1, $s1, $a3, 1
.LBB3_26:                               #   in Loop: Header=BB3_16 Depth=1
	fadd.d	$ft2, $fa7, $fa2
	ld.h	$s1, $s1, 0
	sub.d	$s2, $zero, $s2
	movgr2fr.w	$ft3, $s2
	ffint.d.w	$ft3, $ft3
	fmul.d	$ft3, $fa7, $ft3
	fmul.d	$ft3, $ft2, $ft3
	fmul.d	$ft3, $ft1, $ft3
	fdiv.d	$ft3, $ft3, $fa5
	fadd.d	$ft3, $ft3, $fa6
	ext.w.h	$s0, $s0
	movgr2fr.w	$ft4, $s0
	ffint.d.w	$ft4, $ft4
	fmul.d	$ft4, $ft0, $ft4
	fmul.d	$ft4, $ft2, $ft4
	fmul.d	$ft4, $ft1, $ft4
	fmul.d	$ft4, $ft4, $fa6
	fadd.d	$ft3, $ft4, $ft3
	ext.w.h	$fp, $fp
	movgr2fr.w	$ft4, $fp
	ffint.d.w	$ft4, $ft4
	fmul.d	$ft4, $ft0, $ft4
	fmul.d	$ft4, $fa7, $ft4
	fmul.d	$ft1, $ft1, $ft4
	fmul.d	$ft1, $ft1, $fa6
	fsub.d	$ft1, $ft3, $ft1
	movgr2fr.w	$ft3, $s1
	ffint.d.w	$ft3, $ft3
	fmul.d	$ft0, $ft0, $ft3
	fmul.d	$fa7, $fa7, $ft0
	fmul.d	$fa7, $ft2, $fa7
	fdiv.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft1
	vreplvei.d	$vr7, $vr7, 0
	vfrintrm.d	$vr7, $vr7
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$fp, $fa7
	slt	$s0, $t6, $fp
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $t6, $s0
	or	$fp, $fp, $s0
	slt	$s0, $fp, $t7
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $t7, $s0
	or	$fp, $fp, $s0
	st.h	$fp, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$t8, $t8, -1
	addi.w	$a0, $a0, 1
	bnez	$t8, .LBB3_16
.LBB3_27:
	move	$a0, $a2
.LBB3_28:
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB3_29:                               # %._crit_edge
	addi.w	$a1, $t3, 2
	slt	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a1, $a3, 1
	ld.h	$a3, $a2, -10
	alsl.d	$a4, $a6, $t1, 1
	stx.h	$a3, $t0, $a4
	ld.h	$a3, $a2, -8
	st.w	$a1, $a5, 0
	movgr2fr.w	$fa2, $a1
	add.d	$a1, $t0, $a4
	st.h	$a3, $a1, 2
	ld.h	$a3, $a2, -6
	ffint.s.w	$fa2, $fa2
	bstrpick.d	$a4, $a0, 31, 0
	movgr2fr.d	$fa3, $a4
	st.h	$a3, $a1, 4
	ld.h	$a3, $a2, -4
	ffint.s.l	$fa3, $fa3
	fneg.s	$fa3, $fa3
	fmadd.s	$fa0, $fa3, $fa0, $fa2
	st.h	$a3, $a1, 6
	ld.h	$a2, $a2, -2
	fcvt.d.s	$fa0, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $a7, $t1
	st.h	$a2, $a1, 8
	ret
.LBB3_30:
	slli.d	$t3, $a6, 3
	alsl.d	$t4, $a6, $t3, 1
	add.d	$t5, $t0, $t4
	stx.d	$zero, $t0, $t4
	st.h	$zero, $t5, 8
	ld.d	$t4, $a0, 168
	alsl.d	$t5, $a6, $t1, 2
	ori	$t6, $zero, 1
	st.w	$t6, $t5, 0
	stx.d	$zero, $a7, $t3
	bnez	$t4, .LBB3_1
	b	.LBB3_3
.Lfunc_end3:
	.size	fill_buffer_resample, .Lfunc_end3-fill_buffer_resample
                                        # -- End function
	.globl	fill_buffer                     # -- Begin function fill_buffer
	.p2align	5
	.type	fill_buffer,@function
fill_buffer:                            # @fill_buffer
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $a1
	slt	$a1, $a2, $a4
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a4
	slli.d	$a2, $fp, 1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	fill_buffer, .Lfunc_end4-fill_buffer
                                        # -- End function
	.globl	lame_encode_buffer              # -- Begin function lame_encode_buffer
	.p2align	5
	.type	lame_encode_buffer,@function
lame_encode_buffer:                     # @lame_encode_buffer
# %bb.0:
	addi.d	$sp, $sp, -176
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
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a4
	move	$s1, $a3
	move	$s4, $a2
	move	$s3, $a1
	move	$s2, $a0
	st.d	$a1, $sp, 72
	st.d	$a2, $sp, 80
	ld.d	$a0, $a0, 168
	ld.w	$fp, $s2, 188
	pcalau12i	$s0, %pc_hi20(lame_encode_buffer.frame_buffered)
	pcalau12i	$s6, %pc_hi20(mf_size)
	pcalau12i	$a1, %pc_hi20(mf_samples_to_encode)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bnez	$a0, .LBB5_3
# %bb.1:
	ld.b	$a1, $s0, %pc_lo12(lame_encode_buffer.frame_buffered)
	andi	$a1, $a1, 1
	bnez	$a1, .LBB5_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$a0, $a0, %pc_lo12(mfbuf)
	lu12i.w	$a1, 2
	ori	$a2, $a1, 4032
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s0, %pc_lo12(lame_encode_buffer.frame_buffered)
	ori	$a1, $zero, 1088
	ld.d	$a0, $s2, 168
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(mf_samples_to_encode)
	ori	$a1, $zero, 752
	st.w	$a1, $s6, %pc_lo12(mf_size)
.LBB5_3:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_5
# %bb.4:
	st.b	$zero, $s0, %pc_lo12(lame_encode_buffer.frame_buffered)
.LBB5_5:
	ld.w	$a0, $s2, 8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_14
# %bb.6:
	ld.w	$a0, $s2, 204
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_14
# %bb.7:
	blez	$s1, .LBB5_14
# %bb.8:                                # %.lr.ph.preheader
	ori	$a0, $zero, 8
	bltu	$s1, $a0, .LBB5_11
# %bb.9:                                # %vector.memcheck
	alsl.d	$a0, $s1, $s4, 1
	bgeu	$s3, $a0, .LBB5_47
# %bb.10:                               # %vector.memcheck
	alsl.d	$a0, $s1, $s3, 1
	bgeu	$s4, $a0, .LBB5_47
.LBB5_11:
	move	$a0, $zero
.LBB5_12:                               # %.lr.ph.preheader144
	alsl.d	$a1, $a0, $s4, 1
	alsl.d	$a2, $a0, $s3, 1
	sub.d	$a0, $s1, $a0
	.p2align	4, , 16
.LBB5_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a1, 0
	add.d	$a3, $a4, $a3
	bstrpick.d	$a4, $a3, 31, 31
	add.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	st.h	$a3, $a2, 0
	st.h	$zero, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 2
	bnez	$a0, .LBB5_13
	b	.LBB5_15
.LBB5_14:                               # %.loopexit77
	blez	$s1, .LBB5_44
.LBB5_15:                               # %.lr.ph90
	addi.w	$a0, $fp, 752
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$a0, $a0, %pc_lo12(mfbuf)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	ld.w	$a1, $s2, 204
	lu12i.w	$a0, 1
	ori	$fp, $a0, 2016
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_16:                               #   in Loop: Header=BB5_18 Depth=1
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
.LBB5_17:                               # %.loopexit
                                        #   in Loop: Header=BB5_18 Depth=1
	sub.w	$s1, $s1, $s0
	blez	$s1, .LBB5_46
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_31 Depth 2
                                        #       Child Loop BB5_39 Depth 3
                                        #       Child Loop BB5_36 Depth 3
                                        #       Child Loop BB5_43 Depth 3
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $sp, 68
	blez	$a1, .LBB5_24
# %bb.19:                               # %.lr.ph81.preheader
                                        #   in Loop: Header=BB5_18 Depth=1
	move	$s4, $zero
	move	$s3, $zero
	addi.d	$s8, $sp, 72
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_20:                               #   in Loop: Header=BB5_22 Depth=2
	slt	$a0, $a2, $s1
	masknez	$a3, $s1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a3
	slli.d	$a2, $s0, 1
	move	$a0, $a1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 68
	move	$a0, $s0
.LBB5_21:                               #   in Loop: Header=BB5_22 Depth=2
	alsl.d	$a1, $s0, $s5, 1
	st.d	$a1, $s8, 0
	ld.w	$a1, $s2, 204
	addi.d	$s3, $s3, 1
	addi.w	$s4, $s4, 1
	add.d	$s7, $s7, $fp
	addi.d	$s8, $s8, 8
	bge	$s3, $a1, .LBB5_25
.LBB5_22:                               # %.lr.ph81
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s2, 216
	ld.w	$a0, $s6, %pc_lo12(mf_size)
	ld.w	$a2, $s2, 188
	ld.d	$s5, $s8, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	alsl.d	$a1, $a0, $s7, 1
	bcnez	$fcc0, .LBB5_20
# %bb.23:                               #   in Loop: Header=BB5_22 Depth=2
	addi.d	$a5, $sp, 68
	move	$a0, $s2
	move	$a3, $s5
	move	$a4, $s1
	move	$a6, $s4
	pcaddu18i	$ra, %call36(fill_buffer_resample)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 68
	b	.LBB5_21
	.p2align	4, , 16
.LBB5_24:                               #   in Loop: Header=BB5_18 Depth=1
	move	$s0, $zero
	move	$a0, $zero
.LBB5_25:                               # %._crit_edge
                                        #   in Loop: Header=BB5_18 Depth=1
	ld.w	$a2, $s6, %pc_lo12(mf_size)
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a4, %pc_lo12(mf_samples_to_encode)
	add.w	$a2, $a2, $a0
	st.w	$a2, $s6, %pc_lo12(mf_size)
	add.d	$a0, $a3, $a0
	st.w	$a0, $a4, %pc_lo12(mf_samples_to_encode)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB5_16
# %bb.26:                               #   in Loop: Header=BB5_18 Depth=1
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$s4, $a0, %pc_lo12(mfbuf)
	add.d	$a2, $s4, $fp
	move	$a0, $s2
	move	$a1, $s4
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $s5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lame_encode_frame)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	ori	$t5, $zero, 16
	beq	$a0, $a1, .LBB5_45
# %bb.27:                               #   in Loop: Header=BB5_18 Depth=1
	add.d	$s5, $s5, $a0
	ld.w	$t1, $s2, 188
	ld.w	$a2, $s6, %pc_lo12(mf_size)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a4, %pc_lo12(mf_samples_to_encode)
	ld.w	$a1, $s2, 204
	sub.w	$a0, $a2, $t1
	st.w	$a0, $s6, %pc_lo12(mf_size)
	sub.d	$a2, $a3, $t1
	st.w	$a2, $a4, %pc_lo12(mf_samples_to_encode)
	blez	$a1, .LBB5_17
# %bb.28:                               #   in Loop: Header=BB5_18 Depth=1
	blez	$a0, .LBB5_17
# %bb.29:                               # %.preheader.us.preheader
                                        #   in Loop: Header=BB5_18 Depth=1
	move	$a2, $zero
	slli.d	$a3, $t1, 1
	sub.d	$a4, $zero, $a3
	sltui	$a5, $a0, 8
	sltui	$a4, $a4, 32
	or	$a4, $a5, $a4
	andi	$a5, $a0, 8
	bstrpick.d	$a6, $a0, 30, 4
	slli.d	$a6, $a6, 4
	bstrpick.d	$a7, $a0, 30, 3
	slli.d	$a7, $a7, 3
	sub.d	$t0, $zero, $a7
	alsl.d	$t1, $t1, $s4, 1
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_30:                               # %._crit_edge84.us
                                        #   in Loop: Header=BB5_31 Depth=2
	addi.d	$a2, $a2, 1
	add.d	$s4, $s4, $fp
	add.d	$t1, $t1, $fp
	beq	$a2, $a1, .LBB5_17
.LBB5_31:                               # %iter.check
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_39 Depth 3
                                        #       Child Loop BB5_36 Depth 3
                                        #       Child Loop BB5_43 Depth 3
	beqz	$a4, .LBB5_33
# %bb.32:                               #   in Loop: Header=BB5_31 Depth=2
	move	$t3, $zero
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_33:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB5_31 Depth=2
	bgeu	$a0, $t5, .LBB5_38
# %bb.34:                               #   in Loop: Header=BB5_31 Depth=2
	move	$t4, $zero
.LBB5_35:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB5_31 Depth=2
	add.d	$t2, $t0, $t4
	alsl.d	$t3, $t4, $s4, 1
	alsl.d	$t4, $t4, $a3, 1
	.p2align	4, , 16
.LBB5_36:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $s4, $t4
	vst	$vr0, $t3, 0
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	bnez	$t2, .LBB5_36
# %bb.37:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB5_31 Depth=2
	move	$t3, $a7
	beq	$a7, $a0, .LBB5_30
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_38:                               # %vector.body128.preheader
                                        #   in Loop: Header=BB5_31 Depth=2
	move	$t2, $s4
	move	$t3, $a6
	.p2align	4, , 16
.LBB5_39:                               # %vector.body128
                                        #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $t2, $a3
	vldx	$vr0, $t2, $a3
	vld	$vr1, $t4, 16
	vst	$vr0, $t2, 0
	vst	$vr1, $t2, 16
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB5_39
# %bb.40:                               # %middle.block133
                                        #   in Loop: Header=BB5_31 Depth=2
	beq	$a6, $a0, .LBB5_30
# %bb.41:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB5_31 Depth=2
	move	$t4, $a6
	move	$t3, $a6
	bnez	$a5, .LBB5_35
	.p2align	4, , 16
.LBB5_42:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB5_31 Depth=2
	slli.d	$t2, $t3, 1
	sub.d	$t3, $a0, $t3
	.p2align	4, , 16
.LBB5_43:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$t4, $t1, $t2
	stx.h	$t4, $s4, $t2
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 2
	bnez	$t3, .LBB5_43
	b	.LBB5_30
.LBB5_44:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB5_46
.LBB5_45:                               # %.critedge
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
.LBB5_46:                               # %.loopexit75
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
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
.LBB5_47:                               # %vector.ph
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	vrepli.b	$vr0, 0
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $a0
	.p2align	4, , 16
.LBB5_48:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vld	$vr2, $a2, 0
	vsllwil.w.h	$vr3, $vr1, 0
	vbsrl.v	$vr1, $vr1, 8
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.w.h	$vr4, $vr2, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr4, $vr3
	vsrli.w	$vr3, $vr2, 31
	vadd.w	$vr2, $vr2, $vr3
	vsrli.w	$vr2, $vr2, 1
	vsrli.w	$vr3, $vr1, 31
	vadd.w	$vr1, $vr1, $vr3
	vsrli.w	$vr1, $vr1, 1
	vpickev.h	$vr1, $vr1, $vr2
	vst	$vr1, $a1, 0
	vst	$vr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB5_48
# %bb.49:                               # %middle.block
	beq	$a0, $s1, .LBB5_15
	b	.LBB5_12
.Lfunc_end5:
	.size	lame_encode_buffer, .Lfunc_end5-lame_encode_buffer
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lame_encode_buffer_interleaved
.LCPI6_0:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI6_1:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI6_2:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI6_3:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	lame_encode_buffer_interleaved
	.p2align	5
	.type	lame_encode_buffer_interleaved,@function
lame_encode_buffer_interleaved:         # @lame_encode_buffer_interleaved
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$s8, $a0
	ld.w	$a0, $a0, 8
	ori	$a5, $zero, 1
	move	$s1, $a4
	move	$s7, $a3
	move	$s2, $a2
	move	$s3, $a1
	bne	$a0, $a5, .LBB6_2
# %bb.1:
	move	$a0, $s8
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s1
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	pcaddu18i	$t8, %call36(lame_encode_buffer)
	jr	$t8
.LBB6_2:
	fld.s	$fa0, $s8, 216
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB6_8
# %bb.3:
	slli.d	$s5, $s2, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beqz	$s4, .LBB6_52
# %bb.4:
	beqz	$a0, .LBB6_52
# %bb.5:                                # %.preheader
	blez	$s2, .LBB6_58
# %bb.6:                                # %.lr.ph133.preheader
	ori	$a1, $zero, 8
	bgeu	$s2, $a1, .LBB6_53
# %bb.7:
	move	$a1, $zero
	b	.LBB6_56
.LBB6_8:
	ld.d	$a0, $s8, 168
	ld.w	$fp, $s8, 188
	pcalau12i	$s0, %pc_hi20(lame_encode_buffer_interleaved.frame_buffered)
	pcalau12i	$s5, %pc_hi20(mf_size)
	pcalau12i	$s6, %pc_hi20(mf_samples_to_encode)
	bnez	$a0, .LBB6_11
# %bb.9:
	ld.b	$a1, $s0, %pc_lo12(lame_encode_buffer_interleaved.frame_buffered)
	andi	$a1, $a1, 1
	bnez	$a1, .LBB6_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$a0, $a0, %pc_lo12(mfbuf)
	lu12i.w	$a1, 2
	ori	$a2, $a1, 4032
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s0, %pc_lo12(lame_encode_buffer_interleaved.frame_buffered)
	ori	$a1, $zero, 1088
	ld.d	$a0, $s8, 168
	st.w	$a1, $s6, %pc_lo12(mf_samples_to_encode)
	ori	$a1, $zero, 752
	st.w	$a1, $s5, %pc_lo12(mf_size)
.LBB6_11:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_13
# %bb.12:
	st.b	$zero, $s0, %pc_lo12(lame_encode_buffer_interleaved.frame_buffered)
.LBB6_13:
	ld.w	$a0, $s8, 8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB6_18
# %bb.14:
	ld.w	$a0, $s8, 204
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_18
# %bb.15:
	blez	$s2, .LBB6_18
# %bb.16:                               # %.lr.ph.preheader
	addi.d	$a0, $s3, 2
	move	$a1, $s2
	.p2align	4, , 16
.LBB6_17:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $a0, -2
	ld.h	$a3, $a0, 0
	add.d	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 31
	add.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	st.h	$a2, $a0, -2
	st.h	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB6_17
	b	.LBB6_19
.LBB6_18:                               # %.loopexit116
	blez	$s2, .LBB6_51
.LBB6_19:                               # %.lr.ph129
	addi.w	$a0, $fp, 752
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$s4, $a0, %pc_lo12(mfbuf)
	move	$t7, $zero
	ld.w	$a2, $s8, 188
	ld.w	$a0, $s5, %pc_lo12(mf_size)
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_1)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_2)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI6_3)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_3)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$fp, $a1, 2016
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	b	.LBB6_22
.LBB6_20:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_21:                               # %.loopexit
                                        #   in Loop: Header=BB6_22 Depth=1
	slli.w	$a1, $s0, 1
	sub.w	$s2, $s2, $s0
	alsl.d	$s3, $a1, $s3, 1
	move	$a1, $t7
	blez	$s2, .LBB6_52
.LBB6_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_49 Depth 2
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_35 Depth 2
                                        #       Child Loop BB6_43 Depth 3
                                        #       Child Loop BB6_40 Depth 3
                                        #       Child Loop BB6_47 Depth 3
	slt	$a1, $a2, $s2
	masknez	$a3, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a3
	blez	$a2, .LBB6_29
# %bb.23:                               # %.lr.ph119
                                        #   in Loop: Header=BB6_22 Depth=1
	ori	$a3, $zero, 1
	slt	$a1, $a3, $s0
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a3
	ori	$a3, $zero, 8
	blt	$s0, $a3, .LBB6_26
# %bb.24:                               # %vector.memcheck177
                                        #   in Loop: Header=BB6_22 Depth=1
	alsl.d	$a4, $a0, $s4, 1
	alsl.d	$a3, $a1, $s3, 2
	bgeu	$a4, $a3, .LBB6_48
# %bb.25:                               # %vector.memcheck177
                                        #   in Loop: Header=BB6_22 Depth=1
	add.d	$a3, $a0, $a1
	alsl.d	$a3, $a3, $s4, 1
	add.d	$a3, $a3, $fp
	bgeu	$s3, $a3, .LBB6_48
.LBB6_26:                               #   in Loop: Header=BB6_22 Depth=1
	move	$a3, $zero
.LBB6_27:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB6_22 Depth=1
	alsl.d	$a4, $a3, $s3, 2
	addi.d	$a4, $a4, 2
	add.d	$a5, $a3, $a0
	alsl.d	$a5, $a5, $s4, 1
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB6_28:                               # %scalar.ph
                                        #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a4, -2
	st.h	$a3, $a5, 0
	ld.h	$a3, $a4, 0
	stx.h	$a3, $a5, $fp
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 2
	bnez	$a1, .LBB6_28
.LBB6_29:                               # %._crit_edge
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.w	$a1, $s6, %pc_lo12(mf_samples_to_encode)
	add.w	$a0, $a0, $s0
	st.w	$a0, $s5, %pc_lo12(mf_size)
	add.d	$a1, $a1, $s0
	st.w	$a1, $s6, %pc_lo12(mf_samples_to_encode)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_21
# %bb.30:                               #   in Loop: Header=BB6_22 Depth=1
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	add.d	$a2, $s4, $fp
	move	$a0, $s8
	move	$a1, $s4
	move	$a4, $s7
	move	$a5, $s1
	move	$s0, $s2
	move	$s2, $s4
	move	$s4, $s6
	move	$s6, $s5
	move	$s5, $s8
	move	$s8, $s7
	move	$s7, $s1
	move	$s1, $t7
	pcaddu18i	$ra, %call36(lame_encode_frame)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 16
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB6_52
# %bb.31:                               #   in Loop: Header=BB6_22 Depth=1
	move	$t7, $s1
	move	$s1, $s7
	move	$s7, $s8
	move	$s8, $s5
	move	$s5, $s6
	move	$s6, $s4
	move	$s4, $s2
	move	$s2, $s0
	add.d	$s7, $s7, $a0
	ld.w	$a2, $s8, 188
	ld.w	$a3, $s5, %pc_lo12(mf_size)
	add.w	$t7, $a0, $t7
	ld.w	$a4, $s6, %pc_lo12(mf_samples_to_encode)
	ld.w	$a1, $s8, 204
	sub.w	$a0, $a3, $a2
	st.w	$a0, $s5, %pc_lo12(mf_size)
	sub.d	$a3, $a4, $a2
	st.w	$a3, $s6, %pc_lo12(mf_samples_to_encode)
	blez	$a1, .LBB6_20
# %bb.32:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	blez	$a0, .LBB6_21
# %bb.33:                               # %.preheader114.us.preheader
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$a3, $zero
	slli.d	$a4, $a2, 1
	sub.d	$a5, $zero, $a4
	sltui	$a6, $a0, 8
	sltui	$a5, $a5, 32
	or	$a5, $a6, $a5
	andi	$a6, $a0, 8
	bstrpick.d	$a7, $a0, 30, 4
	slli.d	$a7, $a7, 4
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	sub.d	$t1, $zero, $t0
	alsl.d	$t2, $a2, $s4, 1
	move	$t3, $s4
	b	.LBB6_35
	.p2align	4, , 16
.LBB6_34:                               # %._crit_edge122.us
                                        #   in Loop: Header=BB6_35 Depth=2
	addi.d	$a3, $a3, 1
	add.d	$t3, $t3, $fp
	add.d	$t2, $t2, $fp
	beq	$a3, $a1, .LBB6_21
.LBB6_35:                               # %iter.check
                                        #   Parent Loop BB6_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_43 Depth 3
                                        #       Child Loop BB6_40 Depth 3
                                        #       Child Loop BB6_47 Depth 3
	beqz	$a5, .LBB6_37
# %bb.36:                               #   in Loop: Header=BB6_35 Depth=2
	move	$t5, $zero
	b	.LBB6_46
	.p2align	4, , 16
.LBB6_37:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_35 Depth=2
	bgeu	$a0, $t8, .LBB6_42
# %bb.38:                               #   in Loop: Header=BB6_35 Depth=2
	move	$t6, $zero
.LBB6_39:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_35 Depth=2
	add.d	$t4, $t1, $t6
	alsl.d	$t5, $t6, $t3, 1
	alsl.d	$t6, $t6, $a4, 1
	.p2align	4, , 16
.LBB6_40:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_22 Depth=1
                                        #     Parent Loop BB6_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $t3, $t6
	vst	$vr0, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	bnez	$t4, .LBB6_40
# %bb.41:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_35 Depth=2
	move	$t5, $t0
	beq	$t0, $a0, .LBB6_34
	b	.LBB6_46
	.p2align	4, , 16
.LBB6_42:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_35 Depth=2
	move	$t4, $t3
	move	$t5, $a7
	.p2align	4, , 16
.LBB6_43:                               # %vector.body
                                        #   Parent Loop BB6_22 Depth=1
                                        #     Parent Loop BB6_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $t4, $a4
	vldx	$vr0, $t4, $a4
	vld	$vr1, $t6, 16
	vst	$vr0, $t4, 0
	vst	$vr1, $t4, 16
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB6_43
# %bb.44:                               # %middle.block
                                        #   in Loop: Header=BB6_35 Depth=2
	beq	$a7, $a0, .LBB6_34
# %bb.45:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_35 Depth=2
	move	$t6, $a7
	move	$t5, $a7
	bnez	$a6, .LBB6_39
	.p2align	4, , 16
.LBB6_46:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB6_35 Depth=2
	slli.d	$t4, $t5, 1
	sub.d	$t5, $a0, $t5
	.p2align	4, , 16
.LBB6_47:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB6_22 Depth=1
                                        #     Parent Loop BB6_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$t6, $t2, $t4
	stx.h	$t6, $t3, $t4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB6_47
	b	.LBB6_34
.LBB6_48:                               # %vector.ph181
                                        #   in Loop: Header=BB6_22 Depth=1
	st.d	$t7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	move	$a5, $a3
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB6_49:                               # %vector.body184
                                        #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vslli.d	$vr4, $vr3, 2
	vslli.d	$vr5, $vr2, 2
	vslli.d	$vr6, $vr1, 2
	vslli.d	$vr7, $vr0, 2
	vpickve2gr.d	$a6, $vr7, 0
	add.d	$a7, $s3, $a6
	vpickve2gr.d	$t0, $vr7, 1
	add.d	$t1, $s3, $t0
	vpickve2gr.d	$t2, $vr6, 0
	add.d	$t3, $s3, $t2
	vpickve2gr.d	$t4, $vr6, 1
	add.d	$t5, $s3, $t4
	vpickve2gr.d	$t6, $vr5, 0
	add.d	$t7, $s3, $t6
	vpickve2gr.d	$t8, $vr5, 1
	add.d	$ra, $s3, $t8
	vpickve2gr.d	$s1, $vr4, 0
	add.d	$s5, $s3, $s1
	vpickve2gr.d	$s8, $vr4, 1
	add.d	$s7, $s3, $s8
	ldx.h	$a6, $s3, $a6
	ldx.h	$t0, $s3, $t0
	ldx.h	$t2, $s3, $t2
	ldx.h	$t4, $s3, $t4
	ldx.h	$t6, $s3, $t6
	ldx.h	$t8, $s3, $t8
	ldx.h	$s1, $s3, $s1
	ldx.h	$s8, $s3, $s8
	vinsgr2vr.h	$vr4, $a6, 0
	vinsgr2vr.h	$vr4, $t0, 1
	vinsgr2vr.h	$vr4, $t2, 2
	vinsgr2vr.h	$vr4, $t4, 3
	vinsgr2vr.h	$vr4, $t6, 4
	vinsgr2vr.h	$vr4, $t8, 5
	vinsgr2vr.h	$vr4, $s1, 6
	vinsgr2vr.h	$vr4, $s8, 7
	vst	$vr4, $a4, 0
	ld.h	$a6, $a7, 2
	ld.h	$a7, $t1, 2
	ld.h	$t0, $t3, 2
	ld.h	$t1, $t5, 2
	ld.h	$t2, $t7, 2
	ld.h	$t3, $ra, 2
	ld.h	$t4, $s5, 2
	ld.h	$t5, $s7, 2
	vinsgr2vr.h	$vr4, $a6, 0
	vinsgr2vr.h	$vr4, $a7, 1
	vinsgr2vr.h	$vr4, $t0, 2
	vinsgr2vr.h	$vr4, $t1, 3
	vinsgr2vr.h	$vr4, $t2, 4
	vinsgr2vr.h	$vr4, $t3, 5
	vinsgr2vr.h	$vr4, $t4, 6
	vinsgr2vr.h	$vr4, $t5, 7
	vstx	$vr4, $a4, $fp
	vaddi.du	$vr0, $vr0, 8
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr3, $vr3, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB6_49
# %bb.50:                               # %middle.block187
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	beq	$a3, $a1, .LBB6_29
	b	.LBB6_27
.LBB6_51:
	move	$a1, $zero
.LBB6_52:                               # %.critedge
	move	$a0, $a1
	b	.LBB6_59
.LBB6_53:                               # %vector.ph192
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_1)
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI6_2)
	pcalau12i	$a1, %pc_hi20(.LCPI6_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI6_3)
	bstrpick.d	$a1, $s2, 30, 3
	slli.d	$a1, $a1, 3
	move	$a2, $s4
	move	$a3, $a0
	move	$a4, $a1
	.p2align	4, , 16
.LBB6_54:                               # %vector.body195
                                        # =>This Inner Loop Header: Depth=1
	vslli.d	$vr4, $vr0, 2
	vslli.d	$vr5, $vr1, 2
	vslli.d	$vr6, $vr2, 2
	vslli.d	$vr7, $vr3, 2
	vpickve2gr.d	$a5, $vr7, 0
	add.d	$a6, $s3, $a5
	vpickve2gr.d	$a7, $vr7, 1
	add.d	$t0, $s3, $a7
	vpickve2gr.d	$t1, $vr6, 0
	add.d	$t2, $s3, $t1
	vpickve2gr.d	$t3, $vr6, 1
	add.d	$t4, $s3, $t3
	vpickve2gr.d	$t5, $vr5, 0
	add.d	$t6, $s3, $t5
	vpickve2gr.d	$t7, $vr5, 1
	add.d	$t8, $s3, $t7
	vpickve2gr.d	$fp, $vr4, 0
	add.d	$s0, $s3, $fp
	vpickve2gr.d	$s5, $vr4, 1
	add.d	$s6, $s3, $s5
	ldx.h	$a5, $s3, $a5
	ldx.h	$a7, $s3, $a7
	ldx.h	$t1, $s3, $t1
	ldx.h	$t3, $s3, $t3
	ldx.h	$t5, $s3, $t5
	ldx.h	$t7, $s3, $t7
	ldx.h	$fp, $s3, $fp
	ldx.h	$s5, $s3, $s5
	vinsgr2vr.h	$vr4, $a5, 0
	vinsgr2vr.h	$vr4, $a7, 1
	vinsgr2vr.h	$vr4, $t1, 2
	vinsgr2vr.h	$vr4, $t3, 3
	vinsgr2vr.h	$vr4, $t5, 4
	vinsgr2vr.h	$vr4, $t7, 5
	vinsgr2vr.h	$vr4, $fp, 6
	vinsgr2vr.h	$vr4, $s5, 7
	vst	$vr4, $a2, 0
	ld.h	$a5, $a6, 2
	ld.h	$a6, $t0, 2
	ld.h	$a7, $t2, 2
	ld.h	$t0, $t4, 2
	ld.h	$t1, $t6, 2
	ld.h	$t2, $t8, 2
	ld.h	$t3, $s0, 2
	ld.h	$t4, $s6, 2
	vinsgr2vr.h	$vr4, $a5, 0
	vinsgr2vr.h	$vr4, $a6, 1
	vinsgr2vr.h	$vr4, $a7, 2
	vinsgr2vr.h	$vr4, $t0, 3
	vinsgr2vr.h	$vr4, $t1, 4
	vinsgr2vr.h	$vr4, $t2, 5
	vinsgr2vr.h	$vr4, $t3, 6
	vinsgr2vr.h	$vr4, $t4, 7
	vst	$vr4, $a3, 0
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB6_54
# %bb.55:                               # %middle.block200
	beq	$a1, $s2, .LBB6_58
.LBB6_56:                               # %.lr.ph133.preheader204
	alsl.d	$a2, $a1, $s3, 2
	addi.d	$a2, $a2, 2
	alsl.d	$a3, $a1, $a0, 1
	alsl.d	$a4, $a1, $s4, 1
	sub.d	$a1, $s2, $a1
	.p2align	4, , 16
.LBB6_57:                               # %.lr.ph133
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, -2
	ld.h	$a6, $a2, 0
	st.h	$a5, $a4, 0
	st.h	$a6, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 2
	bnez	$a1, .LBB6_57
.LBB6_58:                               # %._crit_edge134
	move	$s3, $a0
	move	$a0, $s8
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s1
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB6_59:                               # %.critedge
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end6:
	.size	lame_encode_buffer_interleaved, .Lfunc_end6-lame_encode_buffer_interleaved
                                        # -- End function
	.globl	lame_encode                     # -- Begin function lame_encode
	.p2align	5
	.type	lame_encode,@function
lame_encode:                            # @lame_encode
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(mf_samples_to_encode)
	ld.w	$s0, $fp, %pc_lo12(mf_samples_to_encode)
	ld.w	$a6, $a0, 200
	move	$a5, $a3
	move	$a4, $a2
	addi.d	$a2, $a1, 2047
	addi.d	$a2, $a2, 257
	alsl.w	$a3, $a6, $a6, 3
	slli.w	$a3, $a3, 6
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	st.w	$s0, $fp, %pc_lo12(mf_samples_to_encode)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	lame_encode, .Lfunc_end7-lame_encode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lame_init
.LCPI8_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI8_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI8_2:
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI8_3:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
.LCPI8_4:
	.word	2                               # 0x2
	.word	44100                           # 0xac44
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	lame_init
	.p2align	5
	.type	lame_init,@function
lame_init:                              # @lame_init
# %bb.0:
	st.d	$zero, $a0, 156
	st.d	$zero, $a0, 144
	st.w	$zero, $a0, 152
	vrepli.b	$vr0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI8_0)
	vst	$vr0, $a0, 72
	st.d	$zero, $a0, 120
	st.w	$zero, $a0, 256
	vst	$vr1, $a0, 104
	vst	$vr0, $a0, 232
	ori	$a1, $zero, 32
	pcalau12i	$a2, %pc_hi20(.LCPI8_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI8_1)
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 248
	lu12i.w	$a1, 260096
	vst	$vr1, $a0, 88
	pcalau12i	$a2, %pc_hi20(.LCPI8_2)
	vld	$vr1, $a2, %pc_lo12(.LCPI8_2)
	st.w	$a1, $a0, 216
	vst	$vr0, $a0, 168
	ori	$a1, $zero, 1
	vst	$vr1, $a0, 24
	pcalau12i	$a2, %pc_hi20(.LCPI8_3)
	vld	$vr1, $a2, %pc_lo12(.LCPI8_3)
	ori	$a2, $zero, 1
	lu32i.d	$a2, 13
	st.d	$a2, $a0, 208
	vst	$vr1, $a0, 56
	pcalau12i	$a2, %pc_hi20(.LCPI8_4)
	vld	$vr1, $a2, %pc_lo12(.LCPI8_4)
	st.d	$a1, $a0, 192
	vst	$vr0, $a0, 40
	st.w	$zero, $a0, 164
	vst	$vr1, $a0, 8
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 0
	vst	$vr0, $a0, 128
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$a0, $a0, %got_pc_lo12(id3tag)
	st.w	$zero, $a0, 0
	ret
.Lfunc_end8:
	.size	lame_init, .Lfunc_end8-lame_init
                                        # -- End function
	.globl	lame_encode_finish              # -- Begin function lame_encode_finish
	.p2align	5
	.type	lame_encode_finish,@function
lame_encode_finish:                     # @lame_encode_finish
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -608
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 512
	addi.d	$a0, $sp, 8
	addi.d	$s2, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(mf_samples_to_encode)
	ld.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	blez	$s6, .LBB9_6
# %bb.1:                                # %.lr.ph
	addi.d	$a0, $s2, 2047
	addi.d	$s3, $a0, 257
	move	$s4, $zero
	addi.w	$s2, $zero, -1
	beqz	$s0, .LBB9_5
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 200
	sub.w	$a5, $s0, $s4
	alsl.w	$a0, $a0, $a0, 3
	slli.w	$a3, $a0, 6
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $fp
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	beq	$a0, $s2, .LBB9_11
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a1, $s1, 188
	add.d	$fp, $fp, $a0
	add.d	$s4, $a0, $s4
	sub.w	$s6, $s6, $a1
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	bgtz	$s6, .LBB9_2
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a1, $s1, 188
	add.d	$fp, $fp, $a0
	add.d	$s4, $a0, $s4
	sub.w	$s6, $s6, $a1
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	blez	$s6, .LBB9_7
.LBB9_5:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 200
	alsl.w	$a0, $a0, $a0, 3
	slli.w	$a3, $a0, 6
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $fp
	move	$a5, $zero
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	bne	$a0, $s2, .LBB9_4
	b	.LBB9_11
.LBB9_6:
	move	$s4, $zero
.LBB9_7:                                # %._crit_edge
	ld.d	$a0, $s1, 168
	ld.w	$a2, $s1, 20
	addi.d	$a1, $a0, -1
	st.d	$a1, $s1, 168
	bnez	$a2, .LBB9_10
# %bb.8:
	ld.w	$a0, $s1, 32
	bnez	$a0, .LBB9_10
# %bb.9:
	ld.w	$a0, $s1, 16
	ld.d	$a2, $s1, 176
	ld.w	$a3, $s1, 188
	pcaddu18i	$ra, %call36(timestatus)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB9_10:
	pcaddu18i	$ra, %call36(III_FlushBitstream)
	jirl	$ra, $ra, 0
	sub.w	$a0, $s0, $s4
	sltui	$a1, $s0, 1
	masknez	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a2, $a0, %pc_lo12(bs)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_buffer)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	add.w	$a0, $a0, $s4
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
.LBB9_11:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	pcaddu18i	$ra, %call36(desalloc_buffer)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 624
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end9:
	.size	lame_encode_finish, .Lfunc_end9-lame_encode_finish
                                        # -- End function
	.globl	lame_mp3_tags                   # -- Begin function lame_mp3_tags
	.p2align	5
	.type	lame_mp3_tags,@function
lame_mp3_tags:                          # @lame_mp3_tags
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB10_2
# %bb.1:
	ld.w	$a0, $fp, 92
	ori	$a1, $zero, 100
	mul.w	$a0, $a0, $a1
	lu12i.w	$a1, 233016
	ori	$a1, $a1, 3641
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a2, $a0, 33
	ld.w	$a3, $fp, 192
	ld.d	$a0, $fp, 136
	add.d	$a1, $a2, $a1
	ori	$a2, $zero, 1
	sub.w	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(PutVbrTag)
	jirl	$ra, $ra, 0
.LBB10_2:
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$a0, $a0, %got_pc_lo12(id3tag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB10_4
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$s0, $a0, %got_pc_lo12(id3tag)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(id3_buildtag)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(id3_writetag)
	jr	$t8
.LBB10_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	lame_mp3_tags, .Lfunc_end10-lame_mp3_tags
                                        # -- End function
	.globl	lame_version                    # -- Begin function lame_version
	.p2align	5
	.type	lame_version,@function
lame_version:                           # @lame_version
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_lame_version)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 20
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(strncpy)
	jr	$t8
.Lfunc_end11:
	.size	lame_version, .Lfunc_end11-lame_version
                                        # -- End function
	.type	bs,@object                      # @bs
	.local	bs
	.comm	bs,56,8
	.type	l3_side,@object                 # @l3_side
	.local	l3_side
	.comm	l3_side,528,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Warning: highpass filter disabled.  highpass frequency to small\n"
	.size	.L.str, 65

	.type	lame_print_config.mode_names,@object # @lame_print_config.mode_names
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
lame_print_config.mode_names:
	.dword	.L.str.1
	.dword	.L.str.2
	.dword	.L.str.3
	.dword	.L.str.4
	.size	lame_print_config.mode_names, 32

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"stereo"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"j-stereo"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"dual-ch"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"single-ch"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Autoconverting from stereo to mono. Setting encoding to mono mode.\n"
	.size	.L.str.5, 68

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Resampling:  input=%ikHz  output=%ikHz\n"
	.size	.L.str.6, 40

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\n"
	.size	.L.str.7, 70

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\n"
	.size	.L.str.8, 70

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Analyzing %s \n"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Encoding %s to %s\n"
	.size	.L.str.10, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"stdin"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"stdout"
	.size	.L.str.13, 7

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\n"
	.size	.L.str.14, 59

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\n"
	.size	.L.str.15, 67

	.type	lame_encode_frame.frameBits,@object # @lame_encode_frame.frameBits
	.local	lame_encode_frame.frameBits
	.comm	lame_encode_frame.frameBits,8,8
	.type	lame_encode_frame.frac_SpF,@object # @lame_encode_frame.frac_SpF
	.local	lame_encode_frame.frac_SpF
	.comm	lame_encode_frame.frac_SpF,8,8
	.type	lame_encode_frame.slot_lag,@object # @lame_encode_frame.slot_lag
	.local	lame_encode_frame.slot_lag
	.comm	lame_encode_frame.slot_lag,8,8
	.type	lame_encode_frame.sentBits,@object # @lame_encode_frame.sentBits
	.local	lame_encode_frame.sentBits
	.comm	lame_encode_frame.sentBits,8,8
	.type	lame_encode_frame.ms_ratio,@object # @lame_encode_frame.ms_ratio
	.local	lame_encode_frame.ms_ratio
	.comm	lame_encode_frame.ms_ratio,16,8
	.type	lame_encode_frame.ms_ener_ratio,@object # @lame_encode_frame.ms_ener_ratio
	.local	lame_encode_frame.ms_ener_ratio
	.comm	lame_encode_frame.ms_ener_ratio,16,8
	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Sent %ld bits = %ld slots plus %ld\n"
	.size	.L.str.16, 36

	.type	fill_buffer_resample.itime,@object # @fill_buffer_resample.itime
	.local	fill_buffer_resample.itime
	.comm	fill_buffer_resample.itime,16,8
	.type	fill_buffer_resample.inbuf_old,@object # @fill_buffer_resample.inbuf_old
	.local	fill_buffer_resample.inbuf_old
	.comm	fill_buffer_resample.inbuf_old,20,2
	.type	fill_buffer_resample.init,@object # @fill_buffer_resample.init
	.local	fill_buffer_resample.init
	.comm	fill_buffer_resample.init,8,4
	.type	lame_encode_buffer.frame_buffered,@object # @lame_encode_buffer.frame_buffered
	.local	lame_encode_buffer.frame_buffered
	.comm	lame_encode_buffer.frame_buffered,1,4
	.type	mfbuf,@object                   # @mfbuf
	.local	mfbuf
	.comm	mfbuf,12224,8
	.type	mf_samples_to_encode,@object    # @mf_samples_to_encode
	.local	mf_samples_to_encode
	.comm	mf_samples_to_encode,4,4
	.type	mf_size,@object                 # @mf_size
	.local	mf_size
	.comm	mf_size,4,4
	.type	lame_encode_buffer_interleaved.frame_buffered,@object # @lame_encode_buffer_interleaved.frame_buffered
	.local	lame_encode_buffer_interleaved.frame_buffered
	.comm	lame_encode_buffer_interleaved.frame_buffered,1,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bs
	.addrsig_sym l3_side
	.addrsig_sym id3tag
	.addrsig_sym lame_encode_frame.ms_ratio
	.addrsig_sym lame_encode_frame.ms_ener_ratio
	.addrsig_sym mfbuf
