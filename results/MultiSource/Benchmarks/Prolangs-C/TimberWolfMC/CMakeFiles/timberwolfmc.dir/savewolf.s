	.file	"savewolf.c"
	.text
	.globl	savewolf                        # -- Begin function savewolf
	.p2align	5
	.type	savewolf,@function
savewolf:                               # @savewolf
# %bb.0:
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1032                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cktName)
	ld.d	$a0, $a0, %got_pc_lo12(cktName)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s4, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s4, 0
	blez	$a0, .LBB0_8
# %bb.1:                                # %.lr.ph25.preheader
	ori	$a0, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$s5, $a1, %got_pc_lo12(cellarray)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$s0, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$s1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s2, $a1, %pc_lo12(.L.str.4)
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $s4, 0
	addi.d	$a0, $s3, 1
	bge	$s3, $a1, .LBB0_8
.LBB0_3:                                # %.lr.ph25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	ld.d	$a1, $s5, 0
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s6, $a1, $a0
	ld.w	$a3, $s6, 56
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 132
	blez	$a0, .LBB0_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s7, $zero
	ori	$s8, $zero, 48
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=2
	addi.w	$a0, $a0, 0
	addi.d	$s8, $s8, 44
	bge	$s7, $a0, .LBB0_2
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 144
	ldx.w	$a2, $a0, $s8
	addi.d	$s7, $s7, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 132
	bne	$s7, $a0, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $s6, 96
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 132
	b	.LBB0_5
.LBB0_8:                                # %._crit_edge26
	move	$a0, $fp
	ld.d	$s8, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end0:
	.size	savewolf, .Lfunc_end0-savewolf
                                        # -- End function
	.globl	TW_oldinput                     # -- Begin function TW_oldinput
	.p2align	5
	.type	TW_oldinput,@function
TW_oldinput:                            # @TW_oldinput
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 92
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 76
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 4
	bne	$a0, $s6, .LBB1_201
# %bb.1:                                # %.lr.ph581.preheader
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s3, $a0, %got_pc_lo12(cellarray)
	ori	$s8, $zero, 1
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, 1016
	movgr2fr.d	$fs0, $a0
	vldi	$vr3, -928
	ori	$s4, $zero, 44
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %._crit_edge579
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(loadbins)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 92
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 76
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	bne	$a0, $s6, .LBB1_201
.LBB1_3:                                # %.lr.ph581
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_13 Depth 3
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_56 Depth 2
                                        #     Child Loop BB1_190 Depth 2
                                        #     Child Loop BB1_84 Depth 2
                                        #     Child Loop BB1_96 Depth 2
                                        #       Child Loop BB1_112 Depth 3
                                        #     Child Loop BB1_125 Depth 2
                                        #       Child Loop BB1_145 Depth 3
                                        #       Child Loop BB1_157 Depth 3
                                        #       Child Loop BB1_141 Depth 3
                                        #     Child Loop BB1_165 Depth 2
                                        #       Child Loop BB1_170 Depth 3
                                        #     Child Loop BB1_183 Depth 2
                                        #     Child Loop BB1_186 Depth 2
	ld.w	$a0, $sp, 92
	ld.d	$a1, $s3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a1, $a0
	ld.w	$a3, $sp, 88
	ld.w	$a0, $sp, 80
	ld.w	$a1, $sp, 76
	ld.w	$a2, $s5, 132
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.w	$a3, $s5, 56
	st.w	$a0, $s5, 12
	st.w	$a1, $s5, 16
	blez	$a2, .LBB1_16
# %bb.4:                                # %.lr.ph523
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=2
	addi.w	$a1, $a0, 0
	addi.d	$a0, $fp, 1
	vldi	$vr3, -928
	bge	$fp, $a1, .LBB1_16
.LBB1_6:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_13 Depth 3
	move	$fp, $a0
	bne	$a0, $s8, .LBB1_14
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.w	$a0, $s5, 128
	blez	$a0, .LBB1_14
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a1, $s5, 136
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB1_12
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB1_6 Depth=2
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$a3, $a2, 1
	ori	$a2, $a0, 1
	addi.d	$a4, $a1, 40
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$zero, $a4, -20
	st.w	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 40
	bnez	$a5, .LBB1_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB1_6 Depth=2
	beq	$a3, $a0, .LBB1_14
.LBB1_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.d	$a0, $a0, 1
	bstrpick.d	$a3, $a0, 31, 0
	slli.d	$a0, $a2, 4
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a0, $a1, $a0
	sub.d	$a1, $a3, $a2
	.p2align	4, , 16
.LBB1_13:                               # %scalar.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB1_13
.LBB1_14:                               # %.loopexit509
                                        #   in Loop: Header=BB1_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 84
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 84
	ld.d	$a2, $s5, 144
	ld.d	$a3, $s5, 136
	mul.d	$a4, $fp, $s4
	slli.d	$a0, $a1, 4
	alsl.d	$a5, $a1, $a0, 2
	ldx.w	$a6, $a3, $a5
	ld.wu	$a0, $s5, 132
	add.d	$a2, $a2, $a4
	st.w	$a1, $a2, 4
	addi.d	$a1, $a6, 1
	stx.w	$a1, $a3, $a5
	bne	$fp, $a0, .LBB1_5
# %bb.15:                               #   in Loop: Header=BB1_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a2, $sp, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 64
	ld.w	$a0, $s5, 132
	fst.d	$fa0, $s5, 96
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_16:                               # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 76
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $s8, .LBB1_181
# %bb.17:                               #   in Loop: Header=BB1_3 Depth=1
	fld.d	$fa0, $s5, 120
	fld.d	$fa1, $s5, 112
	fadd.d	$fa0, $fa0, $fs0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_181
# %bb.18:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 3
	blt	$a0, $a4, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	fld.d	$fa0, $sp, 64
	fld.d	$fa1, $s5, 104
	b	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_3 Depth=1
	fld.d	$fa0, $s5, 104
	fld.d	$fa1, $sp, 64
.LBB1_21:                               # %.lr.ph527.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	fdiv.d	$fa1, $fa0, $fa1
	addi.d	$a1, $s5, 152
	slli.d	$a0, $a4, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$s4, $a1, $a0
	ld.d	$a0, $s4, 88
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s0, $s4, 72
	ld.w	$s2, $s4, 76
	ld.w	$s1, $s4, 80
	ld.w	$s3, $s4, 84
	ld.d	$fp, $s4, 96
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_200
.LBB1_22:                               # %.lr.ph527.preheader.split
                                        #   in Loop: Header=BB1_3 Depth=1
	sub.d	$a0, $s3, $s1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a0, $fa2
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	movcf2gr	$a1, $fcc0
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	sub.d	$a1, $s2, $s0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	sub.d	$a0, $zero, $a0
	movcf2gr	$a2, $fcc0
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	move	$a2, $s4
	.p2align	4, , 16
.LBB1_23:                               # %.lr.ph527
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 72
	sub.d	$a3, $a3, $s0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 76
	add.d	$a3, $a1, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 56
	sub.d	$a3, $a4, $s0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 80
	add.d	$a3, $a1, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 60
	sub.d	$a3, $a4, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 84
	add.d	$a3, $a0, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 64
	sub.d	$a3, $a4, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a3, $a0, $a3
	movcf2gr	$a4, $fcc0
	add.d	$a3, $a3, $a4
	st.w	$a3, $a2, 68
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB1_23
# %bb.24:                               # %.preheader517
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $a3
	beqz	$a3, .LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %.lr.ph530
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 16
	sub.d	$a3, $a3, $s0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 20
	add.d	$a3, $a1, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 8
	sub.d	$a3, $a4, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a3, $a0, $a3
	movcf2gr	$a4, $fcc0
	add.d	$a3, $a3, $a4
	st.w	$a3, $a2, 12
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB1_25
.LBB1_26:                               # %.preheader516
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a2, $s5, 128
	st.w	$s8, $sp, 84
	blez	$a2, .LBB1_29
# %bb.27:                               # %.lr.ph533.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB1_28:                               # %.lr.ph533
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a4, $a3, $fp, 4
	ld.w	$a4, $a4, 8
	slli.d	$a3, $a3, 4
	sub.d	$a4, $a4, $s0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a4, $fa2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a4, $a1, $a4
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a4, $a5
	stx.w	$a4, $fp, $a3
	ld.w	$a3, $sp, 84
	alsl.d	$a3, $a3, $fp, 4
	ld.w	$a4, $a3, 12
	sub.d	$a4, $a4, $s1
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a4, $fa2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a4, $a0, $a4
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a4, $a5
	st.w	$a4, $a3, 4
	ld.w	$a4, $sp, 84
	addi.w	$a3, $a4, 1
	st.w	$a3, $sp, 84
	blt	$a4, $a2, .LBB1_28
.LBB1_29:                               # %._crit_edge534
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_94
# %bb.30:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 6
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB1_36
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_32:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	b	.LBB1_40
.LBB1_33:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 5
	b	.LBB1_40
.LBB1_34:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 3
	b	.LBB1_40
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 4
	b	.LBB1_40
.LBB1_36:                               # %._crit_edge592
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $sp, 88
	b	.LBB1_41
.LBB1_37:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 2
	b	.LBB1_40
.LBB1_38:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 7
	b	.LBB1_40
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 6
.LBB1_40:                               #   in Loop: Header=BB1_3 Depth=1
	st.w	$a0, $sp, 88
.LBB1_41:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s6, $s4
	vld	$vr0, $s4, 56
	vpickve2gr.w	$a1, $vr0, 2
	vpickve2gr.w	$a2, $vr0, 3
	sub.d	$s4, $a2, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $a1, 0
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	sub.d	$s0, $a2, $a1
	addi.d	$s3, $s8, 56
	addi.d	$s2, $s8, 60
	addi.d	$s1, $s8, 64
	addi.d	$fp, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $fp
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	andi	$s7, $s4, 1
	andi	$fp, $s0, 1
	beqz	$s7, .LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
.LBB1_43:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$fp, .LBB1_46
# %bb.44:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_46
.LBB1_45:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
.LBB1_46:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$s7, .LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_51
.LBB1_48:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$fp, .LBB1_52
# %bb.49:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_52
.LBB1_51:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $a2, 0
.LBB1_52:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 60
	blez	$a0, .LBB1_66
# %bb.53:                               # %.lr.ph540
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $zero
	b	.LBB1_56
	.p2align	4, , 16
.LBB1_54:                               #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 0
.LBB1_55:                               #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $s5, 60
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB1_66
.LBB1_56:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 0
	ld.d	$a0, $s6, 0
	addi.d	$s3, $s8, 56
	addi.d	$s2, $s8, 60
	move	$s6, $a0
	vld	$vr0, $a0, 56
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s8, 64
	addi.d	$s0, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_56 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_60
.LBB1_58:                               #   in Loop: Header=BB1_56 Depth=2
	beqz	$fp, .LBB1_61
# %bb.59:                               #   in Loop: Header=BB1_56 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_61
.LBB1_60:                               #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
.LBB1_61:                               #   in Loop: Header=BB1_56 Depth=2
	beqz	$s7, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_56 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_54
.LBB1_63:                               #   in Loop: Header=BB1_56 Depth=2
	beqz	$fp, .LBB1_55
# %bb.64:                               #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_54
# %bb.65:                               #   in Loop: Header=BB1_56 Depth=2
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_54
	b	.LBB1_55
.LBB1_66:                               # %._crit_edge541
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 68
	ori	$s4, $zero, 1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	move	$s6, $fp
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_79
# %bb.67:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s2, $a0, 88
	ld.d	$a1, $s8, 8
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s2, 8
	st.d	$a1, $s2, 8
	addi.d	$s0, $s2, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_71
.LBB1_69:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$s6, .LBB1_72
# %bb.70:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_72
.LBB1_71:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB1_72:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$s7, .LBB1_74
# %bb.73:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_77
.LBB1_74:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$s6, .LBB1_78
# %bb.75:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_78
.LBB1_77:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
.LBB1_78:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 68
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB1_187
.LBB1_79:                               # %.loopexit515
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 128
	beqz	$a0, .LBB1_94
# %bb.80:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$s0, $a1, 96
	st.w	$s4, $sp, 84
	blez	$a0, .LBB1_94
# %bb.81:                               # %.lr.ph551
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	b	.LBB1_84
	.p2align	4, , 16
.LBB1_82:                               #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s0, 4
	ld.w	$a1, $a0, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 4
.LBB1_83:                               #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a1, $sp, 84
	ld.w	$a2, $s5, 128
	addi.w	$a0, $a1, 1
	st.w	$a0, $sp, 84
	bge	$a1, $a2, .LBB1_94
.LBB1_84:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a0, $a0, 4
	ldx.w	$a1, $fp, $a0
	stx.w	$a1, $s0, $a0
	ld.w	$a0, $sp, 84
	alsl.d	$a1, $a0, $fp, 4
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s0, 4
	st.w	$a1, $a0, 4
	ld.w	$a0, $sp, 88
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s0, 4
	addi.d	$a1, $a0, 4
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_86
# %bb.85:                               #   in Loop: Header=BB1_84 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_88
.LBB1_86:                               #   in Loop: Header=BB1_84 Depth=2
	beqz	$s6, .LBB1_89
# %bb.87:                               #   in Loop: Header=BB1_84 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_89
.LBB1_88:                               #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a0, $sp, 84
	slli.d	$a0, $a0, 4
	ldx.w	$a1, $s0, $a0
	addi.d	$a1, $a1, 1
	stx.w	$a1, $s0, $a0
.LBB1_89:                               #   in Loop: Header=BB1_84 Depth=2
	beqz	$s7, .LBB1_91
# %bb.90:                               #   in Loop: Header=BB1_84 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_82
.LBB1_91:                               #   in Loop: Header=BB1_84 Depth=2
	beqz	$s6, .LBB1_83
# %bb.92:                               #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_82
# %bb.93:                               #   in Loop: Header=BB1_84 Depth=2
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_82
	b	.LBB1_83
	.p2align	4, , 16
.LBB1_94:                               # %.loopexit514
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s5, 152
	ld.w	$a1, $a0, 68
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 60
	ld.w	$a0, $a0, 56
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 88
	andi	$fp, $a1, 1
	andi	$s7, $a2, 1
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_95:                               # %.loopexit508
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a1, $sp, 88
	addi.w	$a0, $a1, 1
	st.w	$a0, $sp, 88
	ori	$a2, $zero, 7
	bge	$a1, $a2, .LBB1_122
.LBB1_96:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_112 Depth 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_95
# %bb.97:                               #   in Loop: Header=BB1_96 Depth=2
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s8, $a2, $a1
	ld.d	$s6, $a2, 0
	addi.d	$s2, $s8, 56
	vld	$vr0, $s6, 56
	addi.d	$s3, $s8, 60
	addi.d	$s1, $s8, 64
	addi.d	$s0, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_99
# %bb.98:                               #   in Loop: Header=BB1_96 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_101
.LBB1_99:                               #   in Loop: Header=BB1_96 Depth=2
	beqz	$s7, .LBB1_102
# %bb.100:                              #   in Loop: Header=BB1_96 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_102
.LBB1_101:                              #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s3, 0
.LBB1_102:                              #   in Loop: Header=BB1_96 Depth=2
	beqz	$fp, .LBB1_104
# %bb.103:                              #   in Loop: Header=BB1_96 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_107
.LBB1_104:                              #   in Loop: Header=BB1_96 Depth=2
	beqz	$s7, .LBB1_108
# %bb.105:                              #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_107
# %bb.106:                              #   in Loop: Header=BB1_96 Depth=2
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_108
.LBB1_107:                              #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 0
.LBB1_108:                              #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $s5, 60
	blez	$a0, .LBB1_95
# %bb.109:                              # %.lr.ph557.preheader
                                        #   in Loop: Header=BB1_96 Depth=2
	move	$s4, $zero
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_110:                              #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 0
.LBB1_111:                              #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $s5, 60
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB1_95
.LBB1_112:                              # %.lr.ph557
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s8, 0
	ld.d	$s6, $s6, 0
	addi.d	$s3, $s8, 56
	addi.d	$s2, $s8, 60
	vld	$vr0, $s6, 56
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s8, 64
	addi.d	$s0, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_114
# %bb.113:                              #   in Loop: Header=BB1_112 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_116
.LBB1_114:                              #   in Loop: Header=BB1_112 Depth=3
	beqz	$s7, .LBB1_117
# %bb.115:                              #   in Loop: Header=BB1_112 Depth=3
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_117
.LBB1_116:                              #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
.LBB1_117:                              #   in Loop: Header=BB1_112 Depth=3
	beqz	$fp, .LBB1_119
# %bb.118:                              #   in Loop: Header=BB1_112 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_110
.LBB1_119:                              #   in Loop: Header=BB1_112 Depth=3
	beqz	$s7, .LBB1_111
# %bb.120:                              #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_110
# %bb.121:                              #   in Loop: Header=BB1_112 Depth=3
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_110
	b	.LBB1_111
	.p2align	4, , 16
.LBB1_122:                              #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 68
	ori	$s6, $zero, 4
	ori	$s8, $zero, 1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_161
# %bb.123:                              # %.preheader512
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 88
	b	.LBB1_125
	.p2align	4, , 16
.LBB1_124:                              # %.loopexit507
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a1, $sp, 88
	addi.w	$a0, $a1, 1
	st.w	$a0, $sp, 88
	ori	$a2, $zero, 7
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bge	$a1, $a2, .LBB1_161
.LBB1_125:                              #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_145 Depth 3
                                        #       Child Loop BB1_157 Depth 3
                                        #       Child Loop BB1_141 Depth 3
	beq	$a0, $a4, .LBB1_124
# %bb.126:                              #   in Loop: Header=BB1_125 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $a3, $a2
	ld.d	$s2, $a1, 88
	ld.d	$s3, $a2, 88
	ld.d	$a1, $s2, 8
	addi.d	$s1, $s3, 8
	st.d	$a1, $s3, 8
	addi.d	$s0, $s3, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_128
# %bb.127:                              #   in Loop: Header=BB1_125 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s6, .LBB1_130
.LBB1_128:                              #   in Loop: Header=BB1_125 Depth=2
	beqz	$s7, .LBB1_131
# %bb.129:                              #   in Loop: Header=BB1_125 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_131
.LBB1_130:                              #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB1_131:                              #   in Loop: Header=BB1_125 Depth=2
	beqz	$fp, .LBB1_133
# %bb.132:                              #   in Loop: Header=BB1_125 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s8, .LBB1_136
.LBB1_133:                              #   in Loop: Header=BB1_125 Depth=2
	beqz	$s7, .LBB1_137
# %bb.134:                              #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_136
# %bb.135:                              #   in Loop: Header=BB1_125 Depth=2
	bne	$a0, $s6, .LBB1_137
.LBB1_136:                              #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
.LBB1_137:                              #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $s5, 68
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB1_124
# %bb.138:                              # %.lr.ph564
                                        #   in Loop: Header=BB1_125 Depth=2
	bnez	$fp, .LBB1_142
# %bb.139:                              # %.lr.ph564.split.us
                                        #   in Loop: Header=BB1_125 Depth=2
	bnez	$s7, .LBB1_154
# %bb.140:                              # %.lr.ph564.split.us.split.us.preheader.preheader
                                        #   in Loop: Header=BB1_125 Depth=2
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB1_141:                              # %.lr.ph564.split.us.split.us.preheader
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 0
	ld.d	$s3, $s3, 0
	ld.d	$a1, $s2, 8
	ld.w	$a0, $sp, 88
	addi.d	$s0, $s3, 8
	st.d	$a1, $s3, 8
	addi.d	$s1, $s3, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 68
	addi.w	$s4, $s4, 1
	blt	$s4, $a0, .LBB1_141
	b	.LBB1_124
.LBB1_142:                              # %.lr.ph564.split.preheader
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $sp, 88
	ori	$s4, $zero, 1
	b	.LBB1_145
	.p2align	4, , 16
.LBB1_143:                              #   in Loop: Header=BB1_145 Depth=3
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 0
.LBB1_144:                              # %.thread612
                                        #   in Loop: Header=BB1_145 Depth=3
	ld.w	$a1, $s5, 68
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB1_124
.LBB1_145:                              # %.lr.ph564.split
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 0
	ld.d	$s3, $s3, 0
	ld.d	$a1, $s2, 8
	addi.d	$s1, $s3, 8
	st.d	$a1, $s3, 8
	addi.d	$s0, $s3, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 88
	move	$a1, $a0
	bstrins.d	$a1, $zero, 1, 1
	bne	$a1, $s6, .LBB1_147
# %bb.146:                              #   in Loop: Header=BB1_145 Depth=3
	ld.w	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 0
	beqz	$s7, .LBB1_144
	b	.LBB1_152
	.p2align	4, , 16
.LBB1_147:                              #   in Loop: Header=BB1_145 Depth=3
	bnez	$s7, .LBB1_149
# %bb.148:                              # %.thread610
                                        #   in Loop: Header=BB1_145 Depth=3
	beq	$a1, $s8, .LBB1_143
	b	.LBB1_144
	.p2align	4, , 16
.LBB1_149:                              #   in Loop: Header=BB1_145 Depth=3
	move	$a2, $a0
	bstrins.d	$a2, $zero, 0, 0
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB1_151
# %bb.150:                              #   in Loop: Header=BB1_145 Depth=3
	ld.w	$a2, $s1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
.LBB1_151:                              # %.thread
                                        #   in Loop: Header=BB1_145 Depth=3
	beq	$a1, $s8, .LBB1_143
.LBB1_152:                              # %.thread609
                                        #   in Loop: Header=BB1_145 Depth=3
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_143
# %bb.153:                              # %.thread609
                                        #   in Loop: Header=BB1_145 Depth=3
	beq	$a0, $s6, .LBB1_143
	b	.LBB1_144
.LBB1_154:                              # %.lr.ph564.split.us.split.preheader
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $sp, 88
	ori	$s4, $zero, 1
	b	.LBB1_157
	.p2align	4, , 16
.LBB1_155:                              #   in Loop: Header=BB1_157 Depth=3
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 0
.LBB1_156:                              #   in Loop: Header=BB1_157 Depth=3
	ld.w	$a1, $s5, 68
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB1_124
.LBB1_157:                              # %.lr.ph564.split.us.split
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 0
	ld.d	$s3, $s3, 0
	ld.d	$a1, $s2, 8
	addi.d	$s1, $s3, 8
	st.d	$a1, $s3, 8
	addi.d	$s0, $s3, 12
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a1, $a0, 31, 1
	slli.w	$a1, $a1, 1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_159
# %bb.158:                              #   in Loop: Header=BB1_157 Depth=3
	ld.w	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 0
.LBB1_159:                              #   in Loop: Header=BB1_157 Depth=3
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 7
	beq	$a1, $a2, .LBB1_155
# %bb.160:                              #   in Loop: Header=BB1_157 Depth=3
	beq	$a1, $s6, .LBB1_155
	b	.LBB1_156
	.p2align	4, , 16
.LBB1_161:                              # %.loopexit513
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 128
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ori	$s4, $zero, 44
	beqz	$a0, .LBB1_181
# %bb.162:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$s0, $a1, 96
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 88
	b	.LBB1_165
	.p2align	4, , 16
.LBB1_163:                              #   in Loop: Header=BB1_165 Depth=2
	move	$a1, $a4
.LBB1_164:                              # %.loopexit
                                        #   in Loop: Header=BB1_165 Depth=2
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 88
	ori	$a3, $zero, 7
	bge	$a2, $a3, .LBB1_181
.LBB1_165:                              #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_170 Depth 3
	beq	$a1, $a4, .LBB1_163
# %bb.166:                              #   in Loop: Header=BB1_165 Depth=2
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	ld.d	$s1, $a2, 96
	st.w	$s8, $sp, 84
	blez	$a0, .LBB1_164
# %bb.167:                              # %.lr.ph569.preheader
                                        #   in Loop: Header=BB1_165 Depth=2
	ori	$a1, $zero, 1
	b	.LBB1_170
	.p2align	4, , 16
.LBB1_168:                              #   in Loop: Header=BB1_170 Depth=3
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s1, 4
	ld.w	$a1, $a0, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 4
.LBB1_169:                              #   in Loop: Header=BB1_170 Depth=3
	ld.w	$a2, $sp, 84
	ld.w	$a0, $s5, 128
	addi.w	$a1, $a2, 1
	st.w	$a1, $sp, 84
	bge	$a2, $a0, .LBB1_180
.LBB1_170:                              # %.lr.ph569
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a0, $a1, 4
	ldx.w	$a1, $s0, $a0
	stx.w	$a1, $s1, $a0
	ld.w	$a0, $sp, 84
	alsl.d	$a1, $a0, $s0, 4
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s1, 4
	st.w	$a1, $a0, 4
	ld.w	$a0, $sp, 88
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s1, 4
	addi.d	$a1, $a0, 4
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_172
# %bb.171:                              #   in Loop: Header=BB1_170 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s6, .LBB1_174
.LBB1_172:                              #   in Loop: Header=BB1_170 Depth=3
	beqz	$s7, .LBB1_175
# %bb.173:                              #   in Loop: Header=BB1_170 Depth=3
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_175
.LBB1_174:                              #   in Loop: Header=BB1_170 Depth=3
	ld.w	$a0, $sp, 84
	slli.d	$a0, $a0, 4
	ldx.w	$a1, $s1, $a0
	addi.d	$a1, $a1, 1
	stx.w	$a1, $s1, $a0
.LBB1_175:                              #   in Loop: Header=BB1_170 Depth=3
	beqz	$fp, .LBB1_177
# %bb.176:                              #   in Loop: Header=BB1_170 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s8, .LBB1_168
.LBB1_177:                              #   in Loop: Header=BB1_170 Depth=3
	beqz	$s7, .LBB1_169
# %bb.178:                              #   in Loop: Header=BB1_170 Depth=3
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_168
# %bb.179:                              #   in Loop: Header=BB1_170 Depth=3
	beq	$a0, $s6, .LBB1_168
	b	.LBB1_169
	.p2align	4, , 16
.LBB1_180:                              # %.loopexit.loopexit
                                        #   in Loop: Header=BB1_165 Depth=2
	ld.w	$a1, $sp, 88
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_164
	.p2align	4, , 16
.LBB1_181:                              # %.loopexit511
                                        #   in Loop: Header=BB1_3 Depth=1
	alsl.d	$a0, $a4, $s5, 3
	ld.d	$a1, $a0, 152
	ld.d	$a0, $a1, 88
	beqz	$a0, .LBB1_184
# %bb.182:                              # %.lr.ph575
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a2, %got_pc_hi20(termarray)
	ld.d	$a2, $a2, %got_pc_lo12(termarray)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $sp, 80
	ld.w	$a4, $sp, 76
	.p2align	4, , 16
.LBB1_183:                              #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a0, 24
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a2, $a5
	ld.w	$a6, $a0, 8
	ld.d	$a5, $a5, 8
	ld.w	$a7, $a0, 12
	ld.d	$a0, $a0, 0
	add.d	$a6, $a3, $a6
	st.w	$a6, $a5, 8
	add.d	$a6, $a4, $a7
	st.w	$a6, $a5, 12
	bnez	$a0, .LBB1_183
.LBB1_184:                              # %.preheader510
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 132
	blez	$a0, .LBB1_2
# %bb.185:                              # %.lr.ph578
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $s5, 144
	ld.d	$a1, $a1, 96
	pcalau12i	$a2, %got_pc_hi20(termarray)
	ld.d	$a2, $a2, %got_pc_lo12(termarray)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $sp, 80
	ld.w	$a4, $sp, 76
	move	$a5, $zero
	addi.d	$a6, $a6, 48
	.p2align	4, , 16
.LBB1_186:                              #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	ld.w	$t0, $a6, -4
	st.w	$a7, $sp, 84
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a2, $t0
	alsl.d	$t1, $a7, $a1, 4
	slli.d	$a7, $a7, 4
	ldx.w	$a7, $a1, $a7
	ld.d	$t0, $t0, 8
	ld.w	$t1, $t1, 4
	add.d	$a7, $a3, $a7
	st.w	$a7, $t0, 8
	add.d	$a7, $a4, $t1
	st.w	$a7, $t0, 12
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 44
	bltu	$a5, $a0, .LBB1_186
	b	.LBB1_2
.LBB1_187:                              # %.lr.ph547
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$s3, $zero, 1
	b	.LBB1_190
	.p2align	4, , 16
.LBB1_188:                              #   in Loop: Header=BB1_190 Depth=2
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
.LBB1_189:                              #   in Loop: Header=BB1_190 Depth=2
	ld.w	$a0, $s5, 68
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB1_79
.LBB1_190:                              #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 0
	ld.d	$s2, $s2, 0
	ld.d	$a1, $s8, 8
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s2, 8
	st.d	$a1, $s2, 8
	addi.d	$s0, $s2, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_192
# %bb.191:                              #   in Loop: Header=BB1_190 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_194
.LBB1_192:                              #   in Loop: Header=BB1_190 Depth=2
	beqz	$s6, .LBB1_195
# %bb.193:                              #   in Loop: Header=BB1_190 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_195
.LBB1_194:                              #   in Loop: Header=BB1_190 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB1_195:                              #   in Loop: Header=BB1_190 Depth=2
	beqz	$s7, .LBB1_197
# %bb.196:                              #   in Loop: Header=BB1_190 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_188
.LBB1_197:                              #   in Loop: Header=BB1_190 Depth=2
	beqz	$s6, .LBB1_189
# %bb.198:                              #   in Loop: Header=BB1_190 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_188
# %bb.199:                              #   in Loop: Header=BB1_190 Depth=2
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_188
	b	.LBB1_189
.LBB1_200:                              # %call.sqrt
                                        #   in Loop: Header=BB1_3 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	b	.LBB1_22
.LBB1_201:                              # %._crit_edge582
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end1:
	.size	TW_oldinput, .Lfunc_end1-TW_oldinput
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_32-.LJTI1_0
	.word	.LBB1_37-.LJTI1_0
	.word	.LBB1_34-.LJTI1_0
	.word	.LBB1_35-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_39-.LJTI1_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.sav"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d %d %d %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" %d "
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %lf\n"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %d %d %d %d "
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%lf"
	.size	.L.str.6, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
