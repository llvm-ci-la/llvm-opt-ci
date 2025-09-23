	.file	"MSalign11.c"
	.text
	.globl	backdp                          # -- Begin function backdp
	.p2align	5
	.type	backdp,@function
backdp:                                 # @backdp
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 400
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 392
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 384
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 376
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 368
	ld.d	$s6, $sp, 360
	ld.d	$s8, $sp, 352
	ld.d	$a5, $sp, 344
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 336
	move	$s5, $a7
	move	$s7, $a6
	move	$s2, $a4
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	fmov.s	$fs0, $fa0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a0, $a0, 0
	addi.w	$s3, $a4, -1
	beqz	$a3, .LBB0_3
# %bb.1:                                # %.lr.ph.i
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.b	$a1, $a1, $s3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 9
	pcalau12i	$a4, %got_pc_hi20(amino_dis)
	ld.d	$a4, $a4, %got_pc_lo12(amino_dis)
	add.d	$a1, $a4, $a1
	move	$a4, $s1
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a2, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	addi.w	$a6, $a6, -1
	addi.d	$a2, $a2, 1
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	addi.d	$a5, $a4, 4
	fst.s	$fa0, $a4, 0
	move	$a4, $a5
	bnez	$a6, .LBB0_2
.LBB0_3:                                # %match_calc.exit
	movgr2fr.w	$fa0, $a0
	addi.w	$s0, $a3, -1
	beqz	$s2, .LBB0_6
# %bb.4:                                # %.lr.ph.i190
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.b	$a0, $a0, $s0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 9
	pcalau12i	$a2, %got_pc_hi20(amino_dis)
	ld.d	$a2, $a2, %got_pc_lo12(amino_dis)
	add.d	$a0, $a2, $a0
	move	$a5, $s7
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	movgr2fr.w	$fa1, $a4
	ffint.s.w	$fa1, $fa1
	addi.d	$a4, $a5, 4
	fst.s	$fa1, $a5, 0
	move	$a5, $a4
	bnez	$a2, .LBB0_5
.LBB0_6:                                # %match_calc.exit195
	ffint.s.w	$fa0, $fa0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s6
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a2, $s4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	move	$fp, $s6
	move	$a4, $s6
	move	$s6, $s4
	move	$a5, $s4
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $s2
	pcaddu18i	$ra, %call36(extendmseq)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	vld	$vr4, $sp, 128                  # 16-byte Folded Reload
	ori	$a0, $zero, 2
	blt	$a6, $a0, .LBB0_9
# %bb.7:                                # %.lr.ph
	slli.d	$a1, $s3, 2
	move	$a2, $s0
	move	$a3, $s1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	ld.d	$a5, $a4, 0
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a3, 0
	fldx.s	$fa0, $a5, $a1
	fadd.s	$fa0, $fa0, $fa4
	fstx.s	$fa0, $a5, $a1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_8
.LBB0_9:                                # %.preheader204
	slli.d	$s4, $s2, 2
	blt	$s2, $a0, .LBB0_12
# %bb.10:                               # %.lr.ph207
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	ori	$a2, $zero, 5
	bstrpick.d	$a0, $s3, 31, 0
	bgeu	$s2, $a2, .LBB0_30
# %bb.11:
	move	$a2, $zero
	move	$s0, $s8
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_36
.LBB0_12:                               # %.preheader
	ori	$a0, $zero, 1
	move	$s0, $s8
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB0_43
# %bb.13:                               # %._crit_edge
	ori	$a0, $zero, 2
	blt	$a6, $a0, .LBB0_44
.LBB0_14:                               # %.lr.ph230
	addi.w	$t3, $a6, -2
	alsl.d	$a0, $s2, $s8, 2
	addi.d	$t1, $a0, -8
	alsl.d	$a0, $s2, $s0, 2
	addi.d	$t2, $a0, -8
	addi.w	$a0, $s2, -2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$t4, $a1, 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$t5, $a1, $a0, 2
	addi.d	$a0, $s4, -4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$t6, $s3, 2
	pcalau12i	$a0, %got_pc_hi20(amino_dis)
	ld.d	$t7, $a0, %got_pc_lo12(amino_dis)
	ori	$t8, $zero, 1
	move	$a7, $s6
	move	$t0, $fp
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	st.d	$t4, $sp, 96                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	st.d	$t7, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               # %match_calc.exit202.thread
                                        #   in Loop: Header=BB0_17 Depth=1
	fld.s	$fa0, $a1, 0
	fstx.s	$fa0, $fp, $t6
.LBB0_16:                               # %._crit_edge222
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s5, $s7
	move	$s7, $fp
	blez	$s8, .LBB0_45
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	move	$s8, $t3
	alsl.d	$a1, $t3, $s1, 2
	fld.s	$fa0, $a1, 4
	move	$fp, $s5
	fstx.s	$fa0, $s7, $t6
	addi.d	$t3, $t3, -1
	beqz	$s2, .LBB0_15
# %bb.18:                               # %.lr.ph.i197
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.b	$a2, $a0, $s8
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	alsl.d	$a0, $s3, $s7, 2
	slli.d	$a2, $a2, 9
	add.d	$a2, $t7, $a2
	move	$a5, $fp
	move	$a4, $s2
	.p2align	4, , 16
.LBB0_19:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a6, $a3, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 1
	movgr2fr.w	$fa0, $a6
	ffint.s.w	$fa0, $fa0
	addi.d	$a6, $a5, 4
	fst.s	$fa0, $a5, 0
	move	$a5, $a6
	bnez	$a4, .LBB0_19
# %bb.20:                               # %match_calc.exit202
                                        #   in Loop: Header=BB0_17 Depth=1
	fld.s	$fa0, $a1, 0
	fstx.s	$fa0, $fp, $t6
	bge	$t8, $s2, .LBB0_16
# %bb.21:                               # %.lr.ph221
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s6, $zero
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a1, $s2, $fp, 2
	addi.d	$s2, $a1, -8
	fld.s	$fs1, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s3, $s8, $a0, 2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s4, $s8, $a0, 3
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$s7, $s7, $a0
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$t3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 208                   # 8-byte Folded Spill
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=2
	fldx.s	$fa0, $s2, $s6
	fcmp.cle.s	$fcc0, $fs1, $fs2
	fsel	$fs1, $fs1, $fs2, $fcc0
	fadd.s	$fa0, $fs3, $fa0
	fstx.s	$fa0, $s2, $s6
	addi.d	$a0, $s0, -1
	addi.w	$s5, $s5, -1
	addi.d	$s6, $s6, -4
	blez	$s0, .LBB0_29
.LBB0_23:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fs2, $s7, $s6
	fldx.s	$fa0, $t1, $s6
	fcmp.cult.s	$fcc0, $fs2, $fa0
	move	$s0, $a0
	bcnez	$fcc0, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	fstx.s	$fs2, $t1, $s6
	stx.w	$t3, $t2, $s6
.LBB0_25:                               #   in Loop: Header=BB0_23 Depth=2
	fadd.s	$fa1, $fs1, $fa4
	fcmp.clt.s	$fcc0, $fs2, $fa1
	fsel	$fa1, $fs2, $fa1, $fcc0
	fadd.s	$fa0, $fa0, $fa4
	fld.s	$fa2, $s3, 0
	fldx.s	$fa3, $t5, $s6
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fs3, $fa1, $fa0, $fcc0
	ld.d	$a0, $s4, 0
	fcmp.clt.s	$fcc0, $fa2, $fa3
	fsel	$fa0, $fa3, $fa2, $fcc0
	fadd.s	$fa0, $fs3, $fa0
	add.d	$a0, $a0, $t4
	fcmp.cune.s	$fcc0, $fa0, $fs0
	fstx.s	$fa0, $a0, $s6
	bcnez	$fcc0, .LBB0_22
# %bb.26:                               #   in Loop: Header=BB0_23 Depth=2
	addi.w	$fp, $t0, 0
	bge	$s8, $fp, .LBB0_22
# %bb.27:                               #   in Loop: Header=BB0_23 Depth=2
	addi.w	$s1, $a7, 0
	bge	$s0, $s1, .LBB0_22
# %bb.28:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $fp
	move	$a7, $s1
	pcaddu18i	$ra, %call36(extendmseq)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	vld	$vr4, $sp, 128                  # 16-byte Folded Reload
	ld.d	$a0, $s8, 0
	addi.d	$a1, $a0, -1
	st.d	$a1, $s8, 0
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 117
	st.b	$a2, $a0, -1
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	addi.d	$a1, $a0, -1
	st.d	$a1, $a3, 0
	st.b	$a2, $a0, -1
	move	$a7, $s5
	move	$t0, $s8
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	ori	$t8, $zero, 1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_16
.LBB0_30:                               # %vector.memcheck
	alsl.d	$a2, $a0, $a1, 2
	move	$s0, $s8
	bgeu	$s7, $a2, .LBB0_33
# %bb.31:                               # %vector.memcheck
	alsl.d	$a2, $a0, $s7, 2
	bgeu	$a1, $a2, .LBB0_33
# %bb.32:
	move	$a2, $zero
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_36
.LBB0_33:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.w	$vr0, $vr4, 0
	move	$a3, $s7
	move	$a4, $a1
	move	$a5, $a2
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_34:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr1, $vr0
	vst	$vr1, $a3, 0
	vfadd.s	$vr1, $vr2, $vr0
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB0_34
# %bb.35:                               # %middle.block
	beq	$a2, $a0, .LBB0_38
.LBB0_36:                               # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	alsl.d	$a3, $a2, $s7, 2
	sub.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB0_37:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a3, 0
	fld.s	$fa0, $a1, 0
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_37
.LBB0_38:                               # %.lr.ph209.preheader
	sltu	$a1, $zero, $s3
	sub.d	$a1, $s2, $a1
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB0_40
# %bb.39:                               # %vector.memcheck251
	sub.d	$a2, $s7, $s8
	addi.d	$a2, $a2, 4
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB0_46
.LBB0_40:
	move	$a2, $a0
.LBB0_41:                               # %.lr.ph209.preheader268
	addi.d	$a0, $a2, 1
	alsl.d	$a1, $a2, $s0, 2
	alsl.d	$a3, $a2, $s7, 2
	alsl.d	$a2, $a2, $s8, 2
	addi.d	$a2, $a2, -4
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_42:                               # %.lr.ph209
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, -4
	bltu	$a4, $a0, .LBB0_42
.LBB0_43:                               # %.lr.ph211.preheader
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	vld	$vr4, $sp, 128                  # 16-byte Folded Reload
	ori	$a0, $zero, 2
	bge	$a6, $a0, .LBB0_14
.LBB0_44:
	move	$a7, $s6
	move	$t0, $fp
.LBB0_45:                               # %._crit_edge231
	addi.w	$a6, $t0, 0
	addi.w	$a7, $a7, 0
	addi.w	$a4, $zero, -1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	move	$a5, $a4
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	pcaddu18i	$t8, %call36(extendmseq)
	jr	$t8
.LBB0_46:                               # %vector.ph254
	move	$a3, $a1
	bstrins.d	$a3, $zero, 2, 0
	sub.d	$a2, $a0, $a3
	slli.d	$a4, $a0, 2
	addi.d	$a5, $a4, -12
	add.d	$a4, $s7, $a5
	add.d	$a5, $s0, $a5
	alsl.d	$a0, $a0, $s8, 2
	addi.d	$a0, $a0, -16
	vrepli.b	$vr0, 0
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_47:                               # %vector.body257
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a4, -16
	vst	$vr1, $a0, 0
	vst	$vr2, $a0, -16
	vst	$vr0, $a5, 0
	vst	$vr0, $a5, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	addi.d	$a0, $a0, -32
	bnez	$a6, .LBB0_47
# %bb.48:                               # %middle.block265
	beq	$a1, $a3, .LBB0_43
	b	.LBB0_41
.Lfunc_end0:
	.size	backdp, .Lfunc_end0-backdp
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function extendmseq
	.type	extendmseq,@function
extendmseq:                             # @extendmseq
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a7
	move	$s6, $a6
	move	$fp, $a5
	move	$s2, $a4
	move	$s1, $a3
	move	$s4, $a2
	move	$s0, $a1
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $a4
	move	$a3, $a6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	move	$a2, $fp
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	nor	$a1, $s2, $zero
	add.w	$s6, $s6, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a0, $zero, 45
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s4, 0
	move	$a3, $s6
	ld.d	$a4, $s3, 0
	add.d	$a2, $a2, $s2
	ldx.b	$a2, $a2, $s6
	addi.d	$a5, $a4, -1
	st.d	$a5, $s3, 0
	st.b	$a2, $a4, -1
	ld.d	$a2, $s0, 0
	addi.d	$s6, $s6, -1
	addi.d	$a4, $a2, -1
	st.d	$a4, $s0, 0
	st.b	$a0, $a2, -1
	bltu	$a1, $a3, .LBB1_2
.LBB1_3:                                # %._crit_edge
	ld.d	$a0, $s7, 0
	nor	$a1, $fp, $zero
	add.w	$s5, $s5, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB1_6
# %bb.4:                                # %.lr.ph42.preheader
	ori	$a0, $zero, 45
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph42
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 0
	addi.d	$a3, $a2, -1
	st.d	$a3, $s3, 0
	st.b	$a0, $a2, -1
	ld.d	$a2, $s1, 0
	move	$a3, $s5
	ld.d	$a4, $s0, 0
	add.d	$a2, $a2, $fp
	ldx.b	$a2, $a2, $s5
	addi.d	$s5, $s5, -1
	addi.d	$a5, $a4, -1
	st.d	$a5, $s0, 0
	st.b	$a2, $a4, -1
	bltu	$a1, $a3, .LBB1_5
.LBB1_6:                                # %._crit_edge43
	or	$a0, $fp, $s2
	bgez	$a0, .LBB1_8
# %bb.7:
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB1_8:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s3, 0
	ldx.b	$a0, $a0, $s2
	addi.d	$a2, $a1, -1
	st.d	$a2, $s3, 0
	st.b	$a0, $a1, -1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, 0
	ldx.b	$a0, $a0, $fp
	addi.d	$a2, $a1, -1
	st.d	$a2, $s0, 0
	st.b	$a0, $a1, -1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s7, 0
	ldx.b	$a2, $a1, $s2
	ld.d	$a3, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s7, 0
	ldx.b	$a2, $a1, $fp
	ld.d	$a3, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end1:
	.size	extendmseq, .Lfunc_end1-extendmseq
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function MSalign11
.LCPI2_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_1:
	.word	0xc479f99a                      # float -999.900024
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	MSalign11
	.p2align	5
	.type	MSalign11,@function
MSalign11:                              # @MSalign11
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 288                  # 8-byte Folded Spill
	move	$s5, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(MSalign11.orlgth1)
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.w	$s4, $a1, %pc_lo12(MSalign11.orlgth1)
	ld.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(MSalign11.mseq1)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(MSalign11.mseq2)
	bnez	$s4, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(MSalign11.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.w	$s4, $a1, %pc_lo12(MSalign11.orlgth1)
	st.d	$a0, $s2, %pc_lo12(MSalign11.mseq2)
.LBB2_2:
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.w	$s1, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(MSalign11.orlgth2)
	ld.w	$s7, $s2, %pc_lo12(MSalign11.orlgth2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(MSalign11.w1)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MSalign11.w2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MSalign11.initverticalw)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MSalign11.lastverticalw)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MSalign11.m)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MSalign11.mp)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(MSalign11.mseq)
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	blt	$s4, $s1, .LBB2_5
# %bb.3:
	blt	$s7, $s3, .LBB2_5
# %bb.4:
	move	$t6, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	b	.LBB2_9
.LBB2_5:
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(MSalign11.match)
	pcalau12i	$a0, %pc_hi20(MSalign11.cpmx1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MSalign11.cpmx2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MSalign11.floatwork)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(MSalign11.intwork)
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	blez	$s4, .LBB2_8
# %bb.6:
	blez	$s7, .LBB2_8
# %bb.7:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(MSalign11.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(MSalign11.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(MSalign11.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(MSalign11.orlgth1)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(MSalign11.orlgth2)
.LBB2_8:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s6, $s4, 100
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s5, $s7, 100
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	addi.w	$s1, $s7, 102
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.w1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.w2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(MSalign11.match)
	addi.w	$s2, $s4, 102
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.initverticalw)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.lastverticalw)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.m)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.mp)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s5, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.mseq)
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.cpmx2)
	slt	$a0, $s5, $s6
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 2
	ori	$a0, $zero, 26
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$t6, $s8
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.intwork)
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	st.w	$s4, $a0, %pc_lo12(MSalign11.orlgth1)
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	st.w	$s7, $s2, %pc_lo12(MSalign11.orlgth2)
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
.LBB2_9:
	ld.d	$a0, $s6, %pc_lo12(MSalign11.mseq)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(MSalign11.mseq1)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(MSalign11.mseq2)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s5, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s6, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s6, 0
	pcalau12i	$a2, %pc_hi20(MSalign11.WMMTX)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	st.d	$t6, $sp, 264                   # 8-byte Folded Spill
	blt	$a0, $s4, .LBB2_11
# %bb.10:
	bge	$a1, $s7, .LBB2_15
.LBB2_11:
	beqz	$a0, .LBB2_14
# %bb.12:
	beqz	$a1, .LBB2_14
# %bb.13:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.WMMTX)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(MSalign11.orlgth1)
	ld.w	$a0, $s5, 0
	ld.w	$s7, $s2, %pc_lo12(MSalign11.orlgth2)
	ld.w	$a1, $s6, 0
.LBB2_14:
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s4, $a2, $a0
	slt	$a0, $a1, $s7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s7, $a0, $a1
	addi.w	$s1, $s4, 10
	addi.w	$s2, $s7, 10
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(MSalign11.WMMTX)
	st.w	$s4, $s5, 0
	st.w	$s7, $s6, 0
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
.LBB2_15:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(MSalign11.w1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.w2)
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(MSalign11.initverticalw)
	pcalau12i	$a3, %pc_hi20(MSalign11.ijp)
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	st.d	$a1, $a3, %pc_lo12(MSalign11.ijp)
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	beqz	$t5, .LBB2_18
# %bb.16:                               # %.lr.ph.i
	ld.d	$a1, $fp, 0
	ld.b	$a1, $a1, 0
	ld.d	$a3, $s0, 0
	slli.d	$a1, $a1, 9
	pcalau12i	$a4, %got_pc_hi20(amino_dis)
	ld.d	$a4, $a4, %got_pc_lo12(amino_dis)
	add.d	$a1, $a4, $a1
	move	$a5, $a2
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_17:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a3, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 1
	movgr2fr.w	$fa0, $a6
	ffint.s.w	$fa0, $fa0
	addi.d	$a6, $a5, 4
	fst.s	$fa0, $a5, 0
	move	$a5, $a6
	bnez	$a4, .LBB2_17
.LBB2_18:                               # %match_calc.exit
	movgr2fr.w	$fa0, $s8
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	beqz	$s3, .LBB2_21
# %bb.19:                               # %.lr.ph.i304
	ld.d	$a1, $s0, 0
	ld.b	$a1, $a1, 0
	ld.d	$a3, $fp, 0
	slli.d	$a1, $a1, 9
	pcalau12i	$a4, %got_pc_hi20(amino_dis)
	ld.d	$a4, $a4, %got_pc_lo12(amino_dis)
	add.d	$a1, $a4, $a1
	move	$a5, $s2
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_20:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a3, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 1
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	addi.d	$a6, $a5, 4
	fst.s	$fa1, $a5, 0
	move	$a5, $a6
	bnez	$a4, .LBB2_20
.LBB2_21:                               # %match_calc.exit309
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(MSalign11.WMMTX)
	fld.s	$fa1, $a2, 0
	ld.d	$a4, $a3, 0
	ffint.s.w	$fs1, $fa0
	fst.s	$fa1, $a4, 0
	fst.s	$fa1, $t7, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	blez	$t5, .LBB2_26
# %bb.22:                               # %.lr.ph.preheader
	bstrpick.d	$a5, $a1, 31, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, -1
	b	.LBB2_24
	.p2align	4, , 16
.LBB2_23:                               #   in Loop: Header=BB2_24 Depth=1
	addi.d	$a3, $a3, 8
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 4
	beqz	$a5, .LBB2_26
.LBB2_24:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	ld.d	$a6, $a3, 0
	fadd.s	$fa0, $fa0, $fs1
	fst.s	$fa0, $a2, 0
	fst.s	$fa0, $a6, 0
	fld.s	$fa1, $t7, 0
	fld.s	$fa0, $a2, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_23
# %bb.25:                               #   in Loop: Header=BB2_24 Depth=1
	fst.s	$fa0, $t7, 0
	b	.LBB2_23
.LBB2_26:                               # %._crit_edge
	fld.s	$fa0, $s2, 0
	fst.s	$fa0, $t6, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	blez	$s3, .LBB2_38
# %bb.27:                               # %.lr.ph327.preheader
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $s2, 4
	addi.d	$a6, $a3, -1
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_29 Depth=1
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	beqz	$a6, .LBB2_31
.LBB2_29:                               # %.lr.ph327
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fadd.s	$fa0, $fa0, $fs1
	fst.s	$fa0, $a5, 0
	fst.s	$fa0, $a4, 0
	fld.s	$fa1, $t6, 0
	fld.s	$fa0, $a5, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_28
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=1
	fst.s	$fa0, $t6, 0
	b	.LBB2_28
.LBB2_31:                               # %.lr.ph330
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(MSalign11.m)
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(MSalign11.mp)
	addi.d	$a7, $a3, -1
	ori	$t0, $zero, 8
	ori	$a6, $zero, 1
	bltu	$a7, $t0, .LBB2_36
# %bb.32:                               # %vector.memcheck
	sub.d	$t0, $a4, $s2
	addi.d	$t0, $t0, 4
	ori	$t1, $zero, 32
	bltu	$t0, $t1, .LBB2_36
# %bb.33:                               # %vector.ph
	move	$t0, $a7
	bstrins.d	$t0, $zero, 2, 0
	ori	$t1, $zero, 1
	move	$a6, $a7
	bstrins.d	$a6, $t1, 2, 0
	addi.d	$t1, $s2, 16
	addi.d	$t2, $a4, 20
	addi.d	$t3, $a5, 20
	vrepli.b	$vr0, 0
	move	$t4, $t0
	.p2align	4, , 16
.LBB2_34:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t1, -16
	vld	$vr2, $t1, 0
	vst	$vr1, $t2, -16
	vst	$vr2, $t2, 0
	vst	$vr0, $t3, -16
	vst	$vr0, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB2_34
# %bb.35:                               # %middle.block
	beq	$a7, $t0, .LBB2_38
.LBB2_36:                               # %scalar.ph.preheader
	alsl.d	$a7, $a6, $s2, 2
	addi.d	$a7, $a7, -4
	alsl.d	$a4, $a6, $a4, 2
	alsl.d	$a5, $a6, $a5, 2
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB2_37:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a7, 0
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a5, 0
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB2_37
.LBB2_38:                               # %._crit_edge331
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	addi.w	$a3, $a3, -1
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 2
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	fldx.s	$fa0, $s2, $a3
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(MSalign11.lastverticalw)
	fst.s	$fa0, $a3, 0
	pcalau12i	$a3, %pc_hi20(.LCPI2_1)
	blez	$t5, .LBB2_58
# %bb.39:                               # %.lr.ph351
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	bstrpick.d	$s8, $a2, 31, 0
	addi.d	$a1, $t7, 4
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s1, $zero, 1
	pcalau12i	$s4, %pc_hi20(MSalign11.mi)
	pcalau12i	$s7, %pc_hi20(MSalign11.mpi)
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %._crit_edge344
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	fldx.s	$fa0, $s5, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(MSalign11.lastverticalw)
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s2
	move	$s2, $s5
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	beq	$s1, $a2, .LBB2_59
.LBB2_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_43 Depth 2
                                        #     Child Loop BB2_47 Depth 2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(MSalign11.initverticalw)
	addi.d	$s6, $s1, -1
	slli.d	$a2, $s6, 2
	fldx.s	$fa0, $a1, $a2
	move	$s5, $a0
	fst.s	$fa0, $s2, 0
	beqz	$s3, .LBB2_44
# %bb.42:                               # %.lr.ph.i311
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.d	$a0, $s0, 0
	ldx.b	$a0, $a0, $s1
	ld.d	$a2, $fp, 0
	slli.d	$a0, $a0, 9
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	add.d	$a0, $a3, $a0
	move	$a4, $s5
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_43:                               #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a2, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	addi.d	$a5, $a4, 4
	fst.s	$fa0, $a4, 0
	move	$a4, $a5
	bnez	$a3, .LBB2_43
.LBB2_44:                               # %match_calc.exit316
                                        #   in Loop: Header=BB2_41 Depth=1
	slli.d	$a0, $s1, 2
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s5, 0
	fld.s	$fa1, $s2, 0
	fst.s	$fa1, $s4, %pc_lo12(MSalign11.mi)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	fstx.s	$fa0, $t6, $a0
	fld.s	$fa1, $s5, 0
	st.w	$zero, $s7, %pc_lo12(MSalign11.mpi)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a2, $fa1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
	blez	$s3, .LBB2_40
# %bb.45:                               # %.lr.ph343
                                        #   in Loop: Header=BB2_41 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(MSalign11.ijp)
	alsl.d	$a1, $s1, $t6, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(MSalign11.WMMTX)
	slli.d	$a4, $s1, 3
	ldx.d	$a5, $a2, $a4
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $a2, %pc_lo12(MSalign11.m)
	ldx.d	$a2, $a3, $a4
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $a3, %pc_lo12(MSalign11.mp)
	ld.w	$a4, $s7, %pc_lo12(MSalign11.mpi)
	fld.s	$fa0, $s4, %pc_lo12(MSalign11.mi)
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a5, 4
	addi.d	$a5, $a6, 4
	addi.d	$a6, $a7, 4
	addi.d	$a7, $s5, 4
	ori	$t0, $zero, 1
	addi.d	$t1, $zero, -1
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	move	$t3, $s2
	b	.LBB2_47
	.p2align	4, , 16
.LBB2_46:                               # %.critedge
                                        #   in Loop: Header=BB2_47 Depth=2
	addi.d	$t3, $t3, 4
	addi.d	$t0, $t0, 1
	addi.d	$a0, $a0, 1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	beq	$s8, $t0, .LBB2_40
.LBB2_47:                               #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t3, 0
	fadd.s	$fa2, $fa0, $fs1
	fcmp.clt.s	$fcc0, $fa1, $fa2
	add.d	$t4, $a4, $t1
	movcf2gr	$t5, $fcc0
	maskeqz	$t4, $t4, $t5
	fcmp.cult.s	$fcc1, $fa1, $fa0
	st.w	$t4, $a3, 0
	bcnez	$fcc1, .LBB2_49
# %bb.48:                               #   in Loop: Header=BB2_47 Depth=2
	fst.s	$fa1, $s4, %pc_lo12(MSalign11.mi)
	st.w	$a0, $s7, %pc_lo12(MSalign11.mpi)
	move	$a4, $a0
	fmov.s	$fa0, $fa1
.LBB2_49:                               #   in Loop: Header=BB2_47 Depth=2
	fld.s	$fa3, $a5, 0
	fsel	$fs0, $fa1, $fa2, $fcc0
	fadd.s	$fa2, $fa3, $fs1
	fcmp.cule.s	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB2_51
# %bb.50:                               #   in Loop: Header=BB2_47 Depth=2
	ld.w	$t4, $a6, 0
	sub.d	$t4, $s1, $t4
	st.w	$t4, $a3, 0
	fmov.s	$fs0, $fa2
.LBB2_51:                               #   in Loop: Header=BB2_47 Depth=2
	fcmp.cult.s	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB2_53
# %bb.52:                               #   in Loop: Header=BB2_47 Depth=2
	fst.s	$fa1, $a5, 0
	st.w	$s6, $a6, 0
.LBB2_53:                               #   in Loop: Header=BB2_47 Depth=2
	fld.s	$fa1, $a7, 0
	fadd.s	$fa1, $fs0, $fa1
	fst.s	$fa1, $a7, 0
	fst.s	$fa1, $a2, 0
	bge	$t0, $s3, .LBB2_46
# %bb.54:                               #   in Loop: Header=BB2_47 Depth=2
	fld.s	$fa2, $a1, 0
	fld.s	$fa1, $a7, 0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_47 Depth=2
	fst.s	$fa1, $a1, 0
	fld.s	$fa1, $a7, 0
.LBB2_56:                               #   in Loop: Header=BB2_47 Depth=2
	fld.s	$fa2, $t2, 0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_46
# %bb.57:                               #   in Loop: Header=BB2_47 Depth=2
	fst.s	$fa1, $t2, 0
	b	.LBB2_46
.LBB2_58:
	fld.s	$fs2, $a3, %pc_lo12(.LCPI2_1)
	move	$s1, $zero
	move	$s8, $zero
	movgr2fr.w	$fs0, $zero
	b	.LBB2_62
.LBB2_59:                               # %.lr.ph358
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.s	$fs2, $a0, %pc_lo12(.LCPI2_1)
	move	$a0, $zero
	move	$s8, $zero
	move	$s1, $zero
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 0
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_60:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fcmp.clt.s	$fcc0, $fs2, $fa0
	fsel	$fs2, $fs2, $fa0, $fcc0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $s1, $a3
	maskeqz	$a5, $a6, $a3
	or	$s1, $a5, $a4
	masknez	$a4, $s8, $a3
	maskeqz	$a3, $a0, $a3
	or	$s8, $a3, $a4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.w	$a0, $a0, 1
	bnez	$a2, .LBB2_60
# %bb.61:
	move	$s2, $s5
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
.LBB2_62:                               # %.preheader319
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$s6, $a0, -1
	blez	$s3, .LBB2_65
# %bb.63:                               # %.lr.ph366
	move	$a0, $zero
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	.p2align	4, , 16
.LBB2_64:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s2, 0
	fcmp.clt.s	$fcc0, $fs2, $fa0
	fsel	$fs2, $fs2, $fa0, $fcc0
	movcf2gr	$a2, $fcc0
	masknez	$a3, $s1, $a2
	maskeqz	$a4, $a0, $a2
	or	$s1, $a4, $a3
	masknez	$a3, $s8, $a2
	maskeqz	$a2, $s6, $a2
	or	$s8, $a2, $a3
	addi.d	$s2, $s2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB2_64
.LBB2_65:                               # %.preheader318
	blez	$t5, .LBB2_68
# %bb.66:                               # %.lr.ph371.preheader
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$s7, $a0, 30, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$s4, $zero
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_67:                               # %.lr.ph371
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s2, 0
	ld.d	$a0, $s5, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, 4
	bnez	$s7, .LBB2_67
.LBB2_68:                               # %.preheader
	blez	$s3, .LBB2_71
# %bb.69:                               # %.lr.ph373.preheader
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$s7, $a0, 30, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$s4, $zero
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_70:                               # %.lr.ph373
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s2, 0
	ld.d	$a0, $s5, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, 4
	bnez	$s7, .LBB2_70
.LBB2_71:                               # %._crit_edge374
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s2, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s2, 0
	fcvt.d.s	$fa0, $fs2
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$a3, $s8
	move	$a4, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	xor	$a0, $s8, $s6
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	xor	$a1, $s1, $a1
	sltui	$a1, $a1, 1
	fadd.s	$fa0, $fs2, $fs1
	movgr2cf	$fcc0, $a1
	fsel	$fa1, $fa0, $fs2, $fcc0
	movgr2cf	$fcc0, $a0
	ld.d	$a0, $s2, 0
	fsel	$fs1, $fa0, $fa1, $fcc0
	fcvt.d.s	$fa0, $fs1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $s4, %pc_lo12(MSalign11.mseq1)
	ld.d	$a0, $a1, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.w	$s5, $a3, $a2
	add.d	$a2, $a0, $s5
	st.d	$a2, $a1, 0
	stx.b	$zero, $a0, $s5
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $s7, %pc_lo12(MSalign11.mseq2)
	ld.d	$a0, $a2, 0
	add.d	$a3, $a0, $s5
	st.d	$a3, $a2, 0
	stx.b	$zero, $a0, $s5
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.WMMTX)
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $a3, %pc_lo12(MSalign11.w1)
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a7, $a3, %pc_lo12(MSalign11.w2)
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(MSalign11.initverticalw)
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(MSalign11.m)
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(MSalign11.mp)
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 56
	st.d	$fp, $sp, 48
	st.d	$s0, $sp, 40
	st.d	$s1, $sp, 32
	st.d	$s8, $sp, 24
	st.d	$a5, $sp, 16
	st.d	$a4, $sp, 8
	st.d	$a3, $sp, 0
	fmov.s	$fa0, $fs1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(backdp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(MSalign11.mseq1)
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$s1, $a1, %pc_lo12(.L.str.9)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(MSalign11.mseq2)
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.mseq)
	ld.d	$a1, $a0, 0
	ld.d	$s4, $s4, %pc_lo12(MSalign11.mseq1)
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 8
	ld.d	$s3, $s7, %pc_lo12(MSalign11.mseq2)
	st.d	$a0, $s3, 0
	ld.d	$a0, $s4, 0
	add.d	$a1, $a0, $s5
	st.d	$a1, $s4, 0
	stx.b	$zero, $a0, $s5
	ld.d	$a0, $s3, 0
	add.d	$a1, $a0, $s5
	st.d	$a1, $s3, 0
	stx.b	$zero, $a0, $s5
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(MSalign11.ijp)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	addi.w	$s6, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltz	$s6, .LBB2_79
# %bb.72:                               # %.lr.ph.preheader.i
	addi.d	$a2, $s1, 1
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB2_74
# %bb.73:
	move	$a2, $zero
	b	.LBB2_77
.LBB2_74:                               # %vector.ph455
	pcalau12i	$a3, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_2)
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s5, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB2_75:                               # %vector.body458
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a5, $vr1, 0
	vstelm.w	$vr4, $a5, 0, 0
	vpickve2gr.d	$a5, $vr1, 1
	vstelm.w	$vr4, $a5, 0, 1
	vpickve2gr.d	$a5, $vr2, 0
	vstelm.w	$vr3, $a5, 0, 0
	vpickve2gr.d	$a5, $vr2, 1
	vstelm.w	$vr3, $a5, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_75
# %bb.76:                               # %middle.block463
	beq	$a1, $a2, .LBB2_79
.LBB2_77:                               # %.lr.ph.i317.preheader
	alsl.d	$a3, $a2, $s5, 3
	sub.d	$a1, $a1, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB2_78:                               # %.lr.ph.i317
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB2_78
.LBB2_79:                               # %.preheader.i
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB2_87
# %bb.80:                               # %.lr.ph98.i
	ld.d	$a1, $s5, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 8
	bgeu	$a2, $a4, .LBB2_82
# %bb.81:
	move	$a3, $zero
	b	.LBB2_85
.LBB2_82:                               # %vector.ph468
	bstrpick.d	$a3, $a3, 31, 3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_3)
	addi.d	$a4, $a1, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_83:                               # %vector.body471
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a4, -16
	vst	$vr4, $a4, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB2_83
# %bb.84:                               # %middle.block477
	beq	$a2, $a3, .LBB2_87
.LBB2_85:                               # %scalar.ph466.preheader
	alsl.d	$a1, $a3, $a1, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB2_86:                               # %scalar.ph466
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB2_86
.LBB2_87:                               # %._crit_edge.i
	ld.d	$a2, $s4, 0
	add.w	$a1, $a0, $s1
	add.d	$a3, $a2, $a1
	st.d	$a3, $s4, 0
	stx.b	$zero, $a2, $a1
	ld.d	$a2, $s3, 0
	add.d	$a3, $a2, $a1
	st.d	$a3, $s3, 0
	stx.b	$zero, $a2, $a1
	bltz	$a1, .LBB2_104
# %bb.88:                               # %.lr.ph115.i.preheader
	move	$a3, $zero
	addi.w	$a2, $zero, -1
	ori	$a4, $zero, 45
	.p2align	4, , 16
.LBB2_89:                               # %.lr.ph115.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_96 Depth 2
                                        #     Child Loop BB2_100 Depth 2
	addi.w	$a6, $s1, 0
	slli.d	$a5, $a6, 3
	ldx.d	$a5, $s5, $a5
	addi.w	$a7, $a0, 0
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $a5, $t0
	bltz	$t0, .LBB2_92
# %bb.90:                               #   in Loop: Header=BB2_89 Depth=1
	beqz	$t0, .LBB2_93
# %bb.91:                               #   in Loop: Header=BB2_89 Depth=1
	sub.w	$a5, $s1, $t0
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_92:                               #   in Loop: Header=BB2_89 Depth=1
	addi.w	$a5, $s1, -1
	b	.LBB2_95
	.p2align	4, , 16
.LBB2_93:                               #   in Loop: Header=BB2_89 Depth=1
	addi.w	$a5, $s1, -1
.LBB2_94:                               #   in Loop: Header=BB2_89 Depth=1
	move	$t0, $a2
.LBB2_95:                               #   in Loop: Header=BB2_89 Depth=1
	nor	$t1, $a5, $zero
	add.w	$t2, $s1, $t1
	beqz	$t2, .LBB2_98
	.p2align	4, , 16
.LBB2_96:                               # %.lr.ph102.i
                                        #   Parent Loop BB2_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s0, 0
	ld.d	$t4, $s4, 0
	add.d	$t3, $t3, $a5
	ldx.b	$t3, $t3, $t2
	addi.d	$t5, $t4, -1
	st.d	$t5, $s4, 0
	st.b	$t3, $t4, -1
	ld.d	$t3, $s3, 0
	addi.d	$t4, $t3, -1
	st.d	$t4, $s3, 0
	addi.d	$t2, $t2, -1
	st.b	$a4, $t3, -1
	bnez	$t2, .LBB2_96
# %bb.97:                               # %._crit_edge103.loopexit.i
                                        #   in Loop: Header=BB2_89 Depth=1
	add.d	$a3, $s1, $a3
	add.d	$a3, $t1, $a3
.LBB2_98:                               # %._crit_edge103.i
                                        #   in Loop: Header=BB2_89 Depth=1
	add.w	$a0, $t0, $a0
	beq	$t0, $a2, .LBB2_101
# %bb.99:                               # %.lr.ph107.preheader.i
                                        #   in Loop: Header=BB2_89 Depth=1
	nor	$t0, $t0, $zero
	.p2align	4, , 16
.LBB2_100:                              # %.lr.ph107.i
                                        #   Parent Loop BB2_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $s4, 0
	addi.d	$t2, $t1, -1
	st.d	$t2, $s4, 0
	st.b	$a4, $t1, -1
	ld.d	$t1, $fp, 0
	ld.d	$t2, $s3, 0
	add.d	$t1, $t1, $a0
	ldx.b	$t1, $t1, $t0
	addi.d	$t3, $t2, -1
	st.d	$t3, $s3, 0
	st.b	$t1, $t2, -1
	addi.d	$t0, $t0, -1
	addi.d	$a3, $a3, 1
	bnez	$t0, .LBB2_100
.LBB2_101:                              # %._crit_edge108.i
                                        #   in Loop: Header=BB2_89 Depth=1
	blez	$a6, .LBB2_104
# %bb.102:                              # %._crit_edge108.i
                                        #   in Loop: Header=BB2_89 Depth=1
	blez	$a7, .LBB2_104
# %bb.103:                              #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a6, $s0, 0
	ld.d	$a7, $s4, 0
	ldx.b	$a6, $a6, $a5
	addi.d	$t0, $a7, -1
	st.d	$t0, $s4, 0
	st.b	$a6, $a7, -1
	ld.d	$a6, $fp, 0
	ld.d	$a7, $s3, 0
	ldx.b	$a6, $a6, $a0
	addi.d	$t0, $a7, -1
	st.d	$t0, $s3, 0
	addi.w	$a3, $a3, 2
	st.b	$a6, $a7, -1
	move	$s1, $a5
	bge	$a1, $a3, .LBB2_89
.LBB2_104:                              # %Atracking.exit
	ld.d	$s1, $s4, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_106
# %bb.105:                              # %Atracking.exit
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_107
.LBB2_106:
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(MSalign11.mseq1)
	ld.d	$s1, $a0, 0
	ld.d	$s3, $s7, %pc_lo12(MSalign11.mseq2)
.LBB2_107:
	ld.d	$a0, $s0, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(MSalign11.mseq1)
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$fp, $a1, %pc_lo12(.L.str.12)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(MSalign11.mseq2)
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs2, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end2:
	.size	MSalign11, .Lfunc_end2-MSalign11
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"prevhiti = %d, lgth1 = %d\n"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"prevhitj = %d, lgth2 = %d\n"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"hit!\n"
	.size	.L.str.2, 6

	.type	MSalign11.mi,@object            # @MSalign11.mi
	.local	MSalign11.mi
	.comm	MSalign11.mi,4,4
	.type	MSalign11.m,@object             # @MSalign11.m
	.local	MSalign11.m
	.comm	MSalign11.m,8,8
	.type	MSalign11.ijp,@object           # @MSalign11.ijp
	.local	MSalign11.ijp
	.comm	MSalign11.ijp,8,8
	.type	MSalign11.mpi,@object           # @MSalign11.mpi
	.local	MSalign11.mpi
	.comm	MSalign11.mpi,4,4
	.type	MSalign11.mp,@object            # @MSalign11.mp
	.local	MSalign11.mp
	.comm	MSalign11.mp,8,8
	.type	MSalign11.w1,@object            # @MSalign11.w1
	.local	MSalign11.w1
	.comm	MSalign11.w1,8,8
	.type	MSalign11.w2,@object            # @MSalign11.w2
	.local	MSalign11.w2
	.comm	MSalign11.w2,8,8
	.type	MSalign11.match,@object         # @MSalign11.match
	.local	MSalign11.match
	.comm	MSalign11.match,8,8
	.type	MSalign11.initverticalw,@object # @MSalign11.initverticalw
	.local	MSalign11.initverticalw
	.comm	MSalign11.initverticalw,8,8
	.type	MSalign11.lastverticalw,@object # @MSalign11.lastverticalw
	.local	MSalign11.lastverticalw
	.comm	MSalign11.lastverticalw,8,8
	.type	MSalign11.mseq1,@object         # @MSalign11.mseq1
	.local	MSalign11.mseq1
	.comm	MSalign11.mseq1,8,8
	.type	MSalign11.mseq2,@object         # @MSalign11.mseq2
	.local	MSalign11.mseq2
	.comm	MSalign11.mseq2,8,8
	.type	MSalign11.mseq,@object          # @MSalign11.mseq
	.local	MSalign11.mseq
	.comm	MSalign11.mseq,8,8
	.type	MSalign11.cpmx1,@object         # @MSalign11.cpmx1
	.local	MSalign11.cpmx1
	.comm	MSalign11.cpmx1,8,8
	.type	MSalign11.cpmx2,@object         # @MSalign11.cpmx2
	.local	MSalign11.cpmx2
	.comm	MSalign11.cpmx2,8,8
	.type	MSalign11.intwork,@object       # @MSalign11.intwork
	.local	MSalign11.intwork
	.comm	MSalign11.intwork,8,8
	.type	MSalign11.WMMTX,@object         # @MSalign11.WMMTX
	.local	MSalign11.WMMTX
	.comm	MSalign11.WMMTX,8,8
	.type	MSalign11.floatwork,@object     # @MSalign11.floatwork
	.local	MSalign11.floatwork
	.comm	MSalign11.floatwork,8,8
	.type	MSalign11.orlgth1,@object       # @MSalign11.orlgth1
	.local	MSalign11.orlgth1
	.comm	MSalign11.orlgth1,4,4
	.type	MSalign11.orlgth2,@object       # @MSalign11.orlgth2
	.local	MSalign11.orlgth2
	.comm	MSalign11.orlgth2,4,4
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"currentw[0]  = %f, *maxinwpt = %f\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"maxinw[%d] = %f\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"maxinh[%d] = %f\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"wmmax = %f (%d,%d)\n"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"wmmax = %f\n"
	.size	.L.str.7, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	">MSres\n%s\n"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.10, 33

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.11, 14

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	">\n%s\n"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"i=%d, prevhiti=%d\n"
	.size	.L.str.13, 19

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"j=%d, prevhitj=%d\n"
	.size	.L.str.14, 19

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"l=%d\n"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"added %c to mseq1, mseq1 = %s \n"
	.size	.L.str.16, 32

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"added %c to mseq2, mseq2 = %s \n"
	.size	.L.str.17, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
