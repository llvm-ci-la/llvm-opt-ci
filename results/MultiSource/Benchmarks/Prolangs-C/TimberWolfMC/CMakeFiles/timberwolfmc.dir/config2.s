	.file	"config2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function config2
.LCPI0_0:
	.dword	0x3ffccccccccccccd              # double 1.8
.LCPI0_1:
	.dword	0x3ff0cccccccccccd              # double 1.05
.LCPI0_2:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI0_3:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
.LCPI0_4:
	.dword	0x3f947ae147ae147b              # double 0.02
.LCPI0_5:
	.dword	0x3fa47ae147ae147b              # double 0.040000000000000001
	.text
	.globl	config2
	.p2align	5
	.type	config2,@function
config2:                                # @config2
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s0, $a0, %got_pc_lo12(numcells)
	ld.w	$a1, $s0, 0
	blez	$a1, .LBB0_7
# %bb.1:                                # %.lr.ph120
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a5, $a4, 56
	ld.w	$a6, $a4, 60
	ld.w	$a7, $a4, 64
	ld.w	$a4, $a4, 68
	sub.d	$a5, $a6, $a5
	sub.d	$a4, $a4, $a7
	mul.d	$a4, $a4, $a5
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB0_8
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	ld.w	$a5, $a4, 56
	ld.w	$a6, $a4, 60
	alsl.d	$a4, $a5, $a4, 3
	ld.d	$a4, $a4, 152
	beq	$a6, $a2, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_3
	.p2align	4, , 16
.LBB0_6:                                # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 56
	ld.w	$a6, $a4, 60
	ld.w	$a7, $a4, 64
	ld.w	$t0, $a4, 68
	sub.d	$a5, $a6, $a5
	sub.d	$a6, $t0, $a7
	ld.d	$a4, $a4, 0
	mul.d	$a5, $a6, $a5
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a4, .LBB0_6
	b	.LBB0_3
.LBB0_7:
	movgr2fr.d	$fa0, $zero
.LBB0_8:                                # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(coreGiven)
	ld.d	$s2, $a0, %got_pc_lo12(coreGiven)
	ld.w	$fp, $s2, 0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_42
# %bb.9:                                # %._crit_edge.split
	ftintrz.w.d	$fa0, $fa1
	movfr2gr.s	$a0, $fa0
	bnez	$fp, .LBB0_11
.LBB0_10:
	pcalau12i	$a1, %got_pc_hi20(blockt)
	ld.d	$a1, $a1, %got_pc_lo12(blockt)
	st.w	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(blockr)
	ld.d	$a1, $a1, %got_pc_lo12(blockr)
	st.w	$a0, $a1, 0
.LBB0_11:
	pcalau12i	$a1, %got_pc_hi20(perim)
	ld.d	$a1, $a1, %got_pc_lo12(perim)
	ld.wu	$a1, $a1, 0
	srli.d	$a2, $a1, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	addi.w	$a2, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(totNetLen)
	ld.d	$a1, $a1, %got_pc_lo12(totNetLen)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %got_pc_hi20(layersFactor)
	ld.d	$a1, $a1, %got_pc_lo12(layersFactor)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %got_pc_hi20(totChanLen)
	ld.d	$a1, $a1, %got_pc_lo12(totChanLen)
	st.w	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(defaultTracks)
	ld.d	$a0, $a0, %got_pc_lo12(defaultTracks)
	ld.w	$a0, $a0, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(trackspacing)
	ld.d	$a1, $a1, %got_pc_lo12(trackspacing)
	ld.w	$a1, $a1, 0
	mul.d	$a0, $a0, $a1
	addi.w	$fp, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(wire_est_factor)
	ld.d	$a1, $a1, %got_pc_lo12(wire_est_factor)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -988
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(aveChanWid)
	ld.d	$s3, $a1, %got_pc_lo12(aveChanWid)
	st.w	$a0, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s1, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a2, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB0_13
# %bb.12:                               # %._crit_edge142
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	ld.w	$a0, $a0, 0
	b	.LBB0_41
.LBB0_13:                               # %.preheader
	ld.w	$a1, $s0, 0
	pcalau12i	$fp, %pc_hi20(expandExtra)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	pcalau12i	$s2, %pc_hi20(.LCPI0_3)
	blez	$a1, .LBB0_25
# %bb.14:                               # %.lr.ph133
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(maxWeight)
	ld.d	$a3, $a3, %got_pc_lo12(maxWeight)
	ld.w	$a3, $a3, 0
	ld.w	$a4, $s3, 0
	mul.d	$a3, $a3, $a3
	mul.d	$a3, $a3, $a4
	addi.d	$a4, $a1, 1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fs0, $zero
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	ld.w	$t0, $a7, 56
	ld.w	$t1, $a7, 60
	ld.w	$t2, $a7, 64
	ld.w	$a7, $a7, 68
	sub.d	$t0, $t1, $t0
	add.d	$t0, $t0, $a3
	sub.d	$a7, $a7, $t2
	add.d	$a7, $a7, $a3
	mulw.d.w	$a7, $t0, $a7
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	movgr2fr.w	$fa0, $a7
	ffint.d.w	$fa0, $fa0
	addi.d	$a6, $a6, 1
	fadd.d	$fs0, $fs0, $fa0
	beq	$a6, $a4, .LBB0_23
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a2, $a7
	ld.w	$t0, $a7, 56
	ld.w	$t1, $a7, 60
	alsl.d	$a7, $t0, $a7, 3
	ld.d	$a7, $a7, 152
	beq	$t1, $a5, .LBB0_15
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t1, $a7, 0
	beqz	$t1, .LBB0_21
# %bb.19:                               # %.lr.ph127.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$t0, $zero
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph127
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 56
	ld.w	$t3, $t1, 60
	ld.w	$t4, $t1, 64
	ld.w	$t5, $t1, 68
	ld.d	$t1, $t1, 0
	sub.d	$t2, $t3, $t2
	sub.d	$t3, $t5, $t4
	mul.d	$t2, $t3, $t2
	add.d	$t0, $t2, $t0
	bnez	$t1, .LBB0_20
	b	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t0, $zero
.LBB0_22:                               # %._crit_edge128
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$t1, $a7, 56
	ld.w	$t2, $a7, 60
	ld.w	$t3, $a7, 64
	ld.w	$a7, $a7, 68
	sub.d	$t1, $t2, $t1
	add.d	$t2, $a3, $t1
	sub.d	$a7, $a7, $t3
	add.d	$t3, $a3, $a7
	mul.d	$t2, $t2, $t3
	mul.d	$a7, $a7, $t1
	sub.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t2
	b	.LBB0_16
.LBB0_23:                               # %._crit_edge134
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	lu32i.d	$a2, 52428
	lu52i.d	$a2, $a2, 1023
	ori	$a3, $zero, 9
	st.d	$a2, $fp, %pc_lo12(expandExtra)
	bge	$a3, $a1, .LBB0_26
# %bb.24:
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_1)
	b	.LBB0_29
.LBB0_25:
	movgr2fr.d	$fs0, $zero
.LBB0_26:                               # %._crit_edge134.thread
	ori	$a2, $zero, 10
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fld.d	$fs1, $s2, %pc_lo12(.LCPI0_3)
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fst.d	$fa0, $fp, %pc_lo12(expandExtra)
	bcnez	$fcc0, .LBB0_28
# %bb.27:
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, 104857
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $fp, %pc_lo12(expandExtra)
	b	.LBB0_29
.LBB0_28:
	fmov.d	$fs1, $fa0
.LBB0_29:
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_43
.LBB0_30:                               # %.split
	fmul.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.d	$a1, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$s4, $a0, %got_pc_lo12(blockt)
	st.w	$a1, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$s3, $a0, %got_pc_lo12(blockr)
	ld.d	$a0, $s1, 0
	st.w	$a1, $s3, 0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s0, 0
	movgr2fr.w	$fa2, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ffint.d.w	$fs1, $fa2
	bceqz	$fcc0, .LBB0_44
.LBB0_31:                               # %.split.split
	fdiv.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(core_expansion_given)
	ld.d	$s0, $a0, %got_pc_lo12(core_expansion_given)
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB0_35
# %bb.32:                               # %.split.split
	vldi	$vr1, -1016
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_35
# %bb.33:
	vldi	$vr1, -888
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_4)
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_5)
	fld.d	$fa4, $fp, %pc_lo12(expandExtra)
	fld.d	$fa5, $s2, %pc_lo12(.LCPI0_3)
	fadd.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fadd.d	$fa0, $fa0, $fa4
	fcmp.clt.d	$fcc0, $fa5, $fa0
	fsel	$fs1, $fa0, $fa5, $fcc0
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fst.d	$fs1, $fp, %pc_lo12(expandExtra)
	bceqz	$fcc0, .LBB0_48
.LBB0_34:                               # %.split166
	fmul.d	$fa0, $fa0, $fs1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ld.d	$a0, $s1, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s4, 0
	st.w	$a1, $s3, 0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
.LBB0_35:
	beqz	$a0, .LBB0_38
# %bb.36:
	pcalau12i	$a0, %got_pc_hi20(core_expansion)
	ld.d	$a0, $a0, %got_pc_lo12(core_expansion)
	fld.d	$fs1, $a0, 0
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fst.d	$fs1, $fp, %pc_lo12(expandExtra)
	bceqz	$fcc0, .LBB0_47
.LBB0_37:                               # %.split168
	fmul.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.d	$a1, $a0, 1
	ld.d	$a0, $s1, 0
	st.w	$a1, $s4, 0
	st.w	$a1, $s3, 0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_38:
	pcalau12i	$a0, %got_pc_hi20(chipaspect)
	ld.d	$a0, $a0, %got_pc_lo12(chipaspect)
	fld.d	$fs1, $a0, 0
	fsqrt.d	$fs0, $fs1
	fcmp.cor.d	$fcc0, $fs0, $fs0
	fmov.d	$fa0, $fs0
	bceqz	$fcc0, .LBB0_45
.LBB0_39:                               # %.split170
	ld.w	$a0, $s4, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	bceqz	$fcc0, .LBB0_46
.LBB0_40:                               # %.split170.split
	ld.w	$a0, $s3, 0
	frecip.d	$fa0, $fs0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s3, 0
.LBB0_41:
	pcalau12i	$a1, %got_pc_hi20(maxWeight)
	ld.d	$a1, $a1, %got_pc_lo12(maxWeight)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(baseWeight)
	ld.d	$a2, $a2, %got_pc_lo12(baseWeight)
	ld.w	$a2, $a2, 0
	sub.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa1, $fa0, $fa1
	pcalau12i	$a0, %got_pc_hi20(slopeX)
	ld.d	$a0, $a0, %got_pc_lo12(slopeX)
	fst.d	$fa1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$fp, $a0, %got_pc_lo12(blockt)
	ld.w	$a0, $fp, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %got_pc_hi20(slopeY)
	ld.d	$a0, $a0, %got_pc_lo12(slopeY)
	fst.d	$fa0, $a0, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(basefactor)
	ld.d	$a0, $a0, %got_pc_lo12(basefactor)
	fst.d	$fa0, $a0, 0
	pcaddu18i	$ra, %call36(placepads)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$a1, $a1, 0
	add.d	$a2, $a1, $a0
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	pcalau12i	$a3, %got_pc_hi20(blockmx)
	ld.d	$a3, $a3, %got_pc_lo12(blockmx)
	ld.w	$a4, $fp, 0
	st.w	$a2, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(blockb)
	ld.d	$a2, $a2, %got_pc_lo12(blockb)
	ld.w	$a2, $a2, 0
	add.d	$a3, $a2, $a4
	bstrpick.d	$a5, $a3, 31, 31
	add.w	$a3, $a3, $a5
	srli.d	$a3, $a3, 1
	pcalau12i	$a5, %got_pc_hi20(blockmy)
	ld.d	$a5, $a5, %got_pc_lo12(blockmy)
	st.w	$a3, $a5, 0
	sub.w	$a3, $a0, $a1
	pcalau12i	$a5, %got_pc_hi20(numBinsX)
	ld.d	$a5, $a5, %got_pc_lo12(numBinsX)
	ld.wu	$a5, $a5, 0
	addi.w	$a6, $a5, 0
	div.w	$a3, $a3, $a6
	mul.d	$a6, $a3, $a5
	add.d	$a6, $a1, $a6
	sub.w	$a0, $a0, $a6
	srli.d	$a6, $a5, 31
	add.w	$a5, $a5, $a6
	srai.d	$a5, $a5, 1
	slt	$a0, $a0, $a5
	xori	$a0, $a0, 1
	add.d	$a0, $a3, $a0
	pcalau12i	$a3, %got_pc_hi20(binWidthX)
	ld.d	$a3, $a3, %got_pc_lo12(binWidthX)
	st.w	$a0, $a3, 0
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(binOffsetX)
	ld.d	$a1, $a1, %got_pc_lo12(binOffsetX)
	st.w	$a0, $a1, 0
	sub.w	$a0, $a4, $a2
	pcalau12i	$a1, %got_pc_hi20(numBinsY)
	ld.d	$a1, $a1, %got_pc_lo12(numBinsY)
	ld.w	$a1, $a1, 0
	div.w	$a0, $a0, $a1
	mul.d	$a3, $a0, $a1
	add.d	$a3, $a2, $a3
	sub.w	$a3, $a4, $a3
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a1, $a1, $a4
	srai.d	$a1, $a1, 1
	slt	$a1, $a3, $a1
	xori	$a1, $a1, 1
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(binWidthY)
	ld.d	$a1, $a1, %got_pc_lo12(binWidthY)
	st.w	$a0, $a1, 0
	sub.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(binOffsetY)
	ld.d	$a1, $a1, %got_pc_lo12(binOffsetY)
	st.w	$a0, $a1, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(loadbins)
	jr	$t8
.LBB0_42:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	ftintrz.w.d	$fa0, $fa1
	movfr2gr.s	$a0, $fa0
	bnez	$fp, .LBB0_11
	b	.LBB0_10
.LBB0_43:                               # %call.sqrt164
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_30
.LBB0_44:                               # %call.sqrt165
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_45:                               # %call.sqrt171
	fmov.d	$fa0, $fs1
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	movgr2cf	$fcc0, $a0
	b	.LBB0_39
.LBB0_46:                               # %call.sqrt172
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	b	.LBB0_40
.LBB0_47:                               # %call.sqrt169
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_37
.LBB0_48:                               # %call.sqrt167
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_34
.Lfunc_end0:
	.size	config2, .Lfunc_end0-config2
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\nConfiguration Data\nInternal Channel Length:%d\n"
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Average Channel Width (un-normalized):%d\n\n"
	.size	.L.str.1, 43

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Average Channel Width:%d\n\n"
	.size	.L.str.2, 27

	.type	expandExtra,@object             # @expandExtra
	.comm	expandExtra,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Core Expansion Factor: %f\n"
	.size	.L.str.3, 27

	.section	".note.GNU-stack","",@progbits
	.addrsig
