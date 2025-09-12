	.file	"makesite.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Vside
.LCPI0_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	Vside
	.p2align	5
	.type	Vside,@function
Vside:                                  # @Vside
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a1
	sub.w	$a1, $a3, $a2
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$s2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$a1, $a1, %got_pc_lo12(cellarray)
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	fld.d	$fa0, $a0, 120
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	fld.d	$fa2, $a0, 112
	fadd.d	$fa1, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB0_2
# %bb.1:
	vldi	$vr0, -912
	b	.LBB0_3
.LBB0_2:
	fld.d	$fa1, $a0, 96
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_29
.LBB0_3:
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fs0, $fa1
	fmul.d	$fa1, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	addi.d	$a1, $a0, 1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa1, $fs0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fsub.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a2, $fcc0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(pinSpacing)
	ld.d	$a1, $a1, %got_pc_lo12(pinSpacing)
	ld.w	$a1, $a1, 0
	addi.w	$a0, $a0, 0
	div.w	$s3, $a0, $a1
	addi.w	$s2, $s3, -1
	beqz	$a4, .LBB0_12
# %bb.4:
	ori	$a0, $zero, 51
	bge	$a0, $s3, .LBB0_13
# %bb.5:                                # %.preheader107
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$s4, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $s4, 0
	addi.d	$a0, $s5, 24
	ori	$a2, $zero, 996
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 0
	lu12i.w	$a1, 335544
	ori	$a1, $a1, 1311
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	st.w	$a0, $s5, 20
	st.w	$a0, $s5, 40
	st.w	$a0, $s5, 60
	st.w	$a0, $s5, 80
	st.w	$a0, $s5, 100
	st.w	$a0, $s5, 120
	st.w	$a0, $s5, 140
	st.w	$a0, $s5, 160
	st.w	$a0, $s5, 180
	st.w	$a0, $s5, 200
	st.w	$a0, $s5, 220
	st.w	$a0, $s5, 240
	st.w	$a0, $s5, 260
	st.w	$a0, $s5, 280
	st.w	$a0, $s5, 300
	st.w	$a0, $s5, 320
	st.w	$a0, $s5, 340
	st.w	$a0, $s5, 360
	st.w	$a0, $s5, 380
	st.w	$a0, $s5, 400
	st.w	$a0, $s5, 420
	st.w	$a0, $s5, 440
	st.w	$a0, $s5, 460
	st.w	$a0, $s5, 480
	st.w	$a0, $s5, 500
	st.w	$a0, $s5, 520
	st.w	$a0, $s5, 540
	st.w	$a0, $s5, 560
	st.w	$a0, $s5, 580
	st.w	$a0, $s5, 600
	st.w	$a0, $s5, 620
	st.w	$a0, $s5, 640
	st.w	$a0, $s5, 660
	st.w	$a0, $s5, 680
	st.w	$a0, $s5, 700
	st.w	$a0, $s5, 720
	st.w	$a0, $s5, 740
	st.w	$a0, $s5, 760
	st.w	$a0, $s5, 780
	st.w	$a0, $s5, 800
	st.w	$a0, $s5, 820
	st.w	$a0, $s5, 840
	st.w	$a0, $s5, 860
	st.w	$a0, $s5, 880
	st.w	$a0, $s5, 900
	ld.w	$a1, $s5, 1000
	st.w	$a0, $s5, 920
	st.w	$a0, $s5, 940
	st.w	$a0, $s5, 960
	add.d	$a1, $a1, $a0
	st.w	$a1, $s5, 1000
	ori	$a1, $zero, 50
	mul.d	$a1, $a0, $a1
	sub.w	$a1, $s2, $a1
	st.w	$a0, $s5, 980
	beqz	$a1, .LBB0_20
# %bb.6:                                # %.lr.ph120
	ld.d	$a1, $s4, 0
	addi.w	$a2, $zero, -50
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s3
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a3, $a0, -1
	ori	$a4, $zero, 2
	ori	$a2, $zero, 1
	bltu	$a3, $a4, .LBB0_10
# %bb.7:                                # %vector.ph165
	move	$a4, $a3
	bstrins.d	$a4, $zero, 0, 0
	ori	$a2, $a3, 1
	addi.d	$a5, $a1, 40
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_8:                                # %vector.body168
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -20
	ld.w	$t0, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	st.w	$a7, $a5, -20
	st.w	$t0, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 40
	bnez	$a6, .LBB0_8
# %bb.9:                                # %middle.block172
	beq	$a3, $a4, .LBB0_20
.LBB0_10:                               # %scalar.ph163.preheader
	slli.d	$a3, $a2, 4
	alsl.d	$a3, $a2, $a3, 2
	add.d	$a1, $a1, $a3
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph163
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 20
	bnez	$a0, .LBB0_11
	b	.LBB0_20
.LBB0_12:                               # %.thread
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	b	.LBB0_28
.LBB0_13:                               # %.preheader110
	ori	$s4, $zero, 1
	bge	$s4, $s3, .LBB0_20
# %bb.14:                               # %.lr.ph115
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$a0, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $a0, 0
	addi.d	$a0, $s5, 20
	alsl.d	$a1, $s2, $s2, 2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB0_18
# %bb.15:                               # %vector.ph
	addi.d	$a0, $s3, -1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 0, 0
	ori	$s4, $a0, 1
	addi.d	$a2, $s5, 40
	ori	$a3, $zero, 1
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, -20
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 40
	bnez	$a4, .LBB0_16
# %bb.17:                               # %middle.block
	beq	$a0, $a1, .LBB0_20
.LBB0_18:                               # %scalar.ph.preheader
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	add.d	$a0, $s5, $a0
	sub.d	$a1, $s3, $s4
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_19
.LBB0_20:                               # %.loopexit106
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.d	$a2, $a0, 1
	addi.w	$a1, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	bge	$fp, $s1, .LBB0_24
# %bb.21:                               # %.preheader
	blez	$a0, .LBB0_28
# %bb.22:                               # %.lr.ph127
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 36
	ori	$a3, $zero, 2
	vldi	$vr1, -928
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	st.w	$s0, $a2, -4
	bstrpick.d	$a5, $a3, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa3, $fa2
	addi.d	$a5, $a3, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a5, $fa4
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a6, $fcc0
	add.d	$a5, $a6, $a5
	add.d	$a6, $a5, $fp
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a7, $fa4
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a6, $a2, 0
	movcf2gr	$a6, $fcc0
	add.d	$a6, $a6, $a7
	sub.d	$a5, $a6, $a5
	st.w	$a5, $a2, -8
	st.w	$a4, $a2, -12
	addi.w	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 20
	bnez	$a1, .LBB0_23
	b	.LBB0_27
.LBB0_24:                               # %.preheader103
	blez	$a0, .LBB0_28
# %bb.25:                               # %.lr.ph123
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 36
	ori	$a3, $zero, 2
	vldi	$vr1, -928
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	st.w	$s0, $a2, -4
	bstrpick.d	$a5, $a3, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa3, $fa2
	addi.d	$a5, $a3, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a5, $fa4
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a6, $fcc0
	add.d	$a5, $a6, $a5
	sub.d	$a6, $fp, $a5
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a7, $fa4
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a6, $a2, 0
	movcf2gr	$a6, $fcc0
	add.d	$a6, $a6, $a7
	sub.d	$a5, $a6, $a5
	st.w	$a5, $a2, -8
	st.w	$a4, $a2, -12
	addi.w	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 20
	bnez	$a1, .LBB0_26
.LBB0_27:                               # %..loopexit104_crit_edge
	pcalau12i	$a1, %pc_hi20(val1)
	fst.d	$fa3, $a1, %pc_lo12(val1)
	pcalau12i	$a1, %pc_hi20(val2)
	fst.d	$fa2, $a1, %pc_lo12(val2)
	move	$s2, $a0
.LBB0_28:                               # %.loopexit
	move	$a0, $s2
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.LBB0_29:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s3, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a4, $s3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_3
.Lfunc_end0:
	.size	Vside, .Lfunc_end0-Vside
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Hside
.LCPI1_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	Hside
	.p2align	5
	.type	Hside,@function
Hside:                                  # @Hside
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s1, $a2
	move	$s0, $a1
	sub.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$s2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$a1, $a1, %got_pc_lo12(cellarray)
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	fld.d	$fa1, $a0, 120
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_0)
	fld.d	$fa0, $a0, 112
	fadd.d	$fa1, $fa1, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_2
# %bb.1:
	vldi	$vr0, -912
	b	.LBB1_3
.LBB1_2:
	fld.d	$fa1, $a0, 96
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_29
.LBB1_3:
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fs0, $fa1
	fmul.d	$fa1, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	addi.d	$a1, $a0, 1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa1, $fs0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fsub.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a2, $fcc0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(pinSpacing)
	ld.d	$a1, $a1, %got_pc_lo12(pinSpacing)
	ld.w	$a1, $a1, 0
	addi.w	$a0, $a0, 0
	div.w	$s3, $a0, $a1
	addi.w	$s2, $s3, -1
	beqz	$a4, .LBB1_12
# %bb.4:
	ori	$a0, $zero, 51
	bge	$a0, $s3, .LBB1_13
# %bb.5:                                # %.preheader108
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$s4, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $s4, 0
	addi.d	$a0, $s5, 24
	ori	$a2, $zero, 996
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 0
	lu12i.w	$a1, 335544
	ori	$a1, $a1, 1311
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	st.w	$a0, $s5, 20
	st.w	$a0, $s5, 40
	st.w	$a0, $s5, 60
	st.w	$a0, $s5, 80
	st.w	$a0, $s5, 100
	st.w	$a0, $s5, 120
	st.w	$a0, $s5, 140
	st.w	$a0, $s5, 160
	st.w	$a0, $s5, 180
	st.w	$a0, $s5, 200
	st.w	$a0, $s5, 220
	st.w	$a0, $s5, 240
	st.w	$a0, $s5, 260
	st.w	$a0, $s5, 280
	st.w	$a0, $s5, 300
	st.w	$a0, $s5, 320
	st.w	$a0, $s5, 340
	st.w	$a0, $s5, 360
	st.w	$a0, $s5, 380
	st.w	$a0, $s5, 400
	st.w	$a0, $s5, 420
	st.w	$a0, $s5, 440
	st.w	$a0, $s5, 460
	st.w	$a0, $s5, 480
	st.w	$a0, $s5, 500
	st.w	$a0, $s5, 520
	st.w	$a0, $s5, 540
	st.w	$a0, $s5, 560
	st.w	$a0, $s5, 580
	st.w	$a0, $s5, 600
	st.w	$a0, $s5, 620
	st.w	$a0, $s5, 640
	st.w	$a0, $s5, 660
	st.w	$a0, $s5, 680
	st.w	$a0, $s5, 700
	st.w	$a0, $s5, 720
	st.w	$a0, $s5, 740
	st.w	$a0, $s5, 760
	st.w	$a0, $s5, 780
	st.w	$a0, $s5, 800
	st.w	$a0, $s5, 820
	st.w	$a0, $s5, 840
	st.w	$a0, $s5, 860
	st.w	$a0, $s5, 880
	st.w	$a0, $s5, 900
	ld.w	$a1, $s5, 1000
	st.w	$a0, $s5, 920
	st.w	$a0, $s5, 940
	st.w	$a0, $s5, 960
	add.d	$a1, $a1, $a0
	st.w	$a1, $s5, 1000
	ori	$a1, $zero, 50
	mul.d	$a1, $a0, $a1
	sub.w	$a1, $s2, $a1
	st.w	$a0, $s5, 980
	beqz	$a1, .LBB1_20
# %bb.6:                                # %.lr.ph121
	ld.d	$a1, $s4, 0
	addi.w	$a2, $zero, -50
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s3
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a3, $a0, -1
	ori	$a4, $zero, 2
	ori	$a2, $zero, 1
	bltu	$a3, $a4, .LBB1_10
# %bb.7:                                # %vector.ph167
	move	$a4, $a3
	bstrins.d	$a4, $zero, 0, 0
	ori	$a2, $a3, 1
	addi.d	$a5, $a1, 40
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_8:                                # %vector.body170
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -20
	ld.w	$t0, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	st.w	$a7, $a5, -20
	st.w	$t0, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 40
	bnez	$a6, .LBB1_8
# %bb.9:                                # %middle.block174
	beq	$a3, $a4, .LBB1_20
.LBB1_10:                               # %scalar.ph165.preheader
	slli.d	$a3, $a2, 4
	alsl.d	$a3, $a2, $a3, 2
	add.d	$a1, $a1, $a3
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB1_11:                               # %scalar.ph165
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 20
	bnez	$a0, .LBB1_11
	b	.LBB1_20
.LBB1_12:                               # %.thread
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	b	.LBB1_28
.LBB1_13:                               # %.preheader111
	ori	$s4, $zero, 1
	bge	$s4, $s3, .LBB1_20
# %bb.14:                               # %.lr.ph116
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$a0, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $a0, 0
	addi.d	$a0, $s5, 20
	alsl.d	$a1, $s2, $s2, 2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB1_18
# %bb.15:                               # %vector.ph
	addi.d	$a0, $s3, -1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 0, 0
	ori	$s4, $a0, 1
	addi.d	$a2, $s5, 40
	ori	$a3, $zero, 1
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, -20
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 40
	bnez	$a4, .LBB1_16
# %bb.17:                               # %middle.block
	beq	$a0, $a1, .LBB1_20
.LBB1_18:                               # %scalar.ph.preheader
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	add.d	$a0, $s5, $a0
	sub.d	$a1, $s3, $s4
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB1_19:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB1_19
.LBB1_20:                               # %.loopexit107
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.d	$a2, $a0, 1
	addi.w	$a1, $a2, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	bge	$s0, $s1, .LBB1_24
# %bb.21:                               # %.preheader
	blez	$a0, .LBB1_28
# %bb.22:                               # %.lr.ph128
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 36
	ori	$a3, $zero, 2
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	st.w	$fp, $a2, 0
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa3, $fa2
	addi.d	$a4, $a3, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a4, $fa4
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $s0
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a6, $fa4
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a5, $a2, -4
	movcf2gr	$a5, $fcc0
	add.d	$a5, $a5, $a6
	sub.d	$a4, $a5, $a4
	st.w	$a4, $a2, -8
	st.w	$zero, $a2, -12
	addi.w	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 20
	bnez	$a1, .LBB1_23
	b	.LBB1_27
.LBB1_24:                               # %.preheader104
	blez	$a0, .LBB1_28
# %bb.25:                               # %.lr.ph124
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 36
	ori	$a3, $zero, 2
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	st.w	$fp, $a2, 0
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa3, $fa2
	addi.d	$a4, $a3, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a4, $fa4
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a5, $a4
	sub.d	$a5, $s0, $a4
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a6, $fa4
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a5, $a2, -4
	movcf2gr	$a5, $fcc0
	add.d	$a5, $a5, $a6
	sub.d	$a4, $a5, $a4
	st.w	$a4, $a2, -8
	st.w	$zero, $a2, -12
	addi.w	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 20
	bnez	$a1, .LBB1_26
.LBB1_27:                               # %..loopexit105_crit_edge
	pcalau12i	$a1, %pc_hi20(val1)
	fst.d	$fa3, $a1, %pc_lo12(val1)
	pcalau12i	$a1, %pc_hi20(val2)
	fst.d	$fa2, $a1, %pc_lo12(val2)
	move	$s2, $a0
.LBB1_28:                               # %.loopexit
	move	$a0, $s2
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.LBB1_29:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s3, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a4, $s3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB1_3
.Lfunc_end1:
	.size	Hside, .Lfunc_end1-Hside
                                        # -- End function
	.type	val1,@object                    # @val1
	.comm	val1,8,8
	.type	val2,@object                    # @val2
	.comm	val2,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
