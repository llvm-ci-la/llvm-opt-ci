	.file	"Lalign11.c"
	.text
	.globl	L__align11                      # -- Begin function L__align11
	.p2align	5
	.type	L__align11,@function
L__align11:                             # @L__align11
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty_ex)
	ld.d	$a0, $a0, %got_pc_lo12(penalty_ex)
	pcalau12i	$a1, %pc_hi20(L__align11.orlgth1)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(L__align11.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L__align11.mseq1)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L__align11.mseq2)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bnez	$s7, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(L__align11.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(L__align11.orlgth1)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(L__align11.mseq2)
.LBB0_2:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s6, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(L__align11.orlgth2)
	ld.w	$s8, $s3, %pc_lo12(L__align11.orlgth2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(L__align11.w1)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L__align11.w2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L__align11.initverticalw)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(L__align11.lastverticalw)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(L__align11.m)
	pcalau12i	$a1, %pc_hi20(L__align11.mp)
	pcalau12i	$s1, %pc_hi20(L__align11.mseq)
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	blt	$s7, $s6, .LBB0_5
# %bb.3:
	blt	$s8, $s2, .LBB0_5
# %bb.4:                                # %._crit_edge242
	ld.d	$a0, $s1, %pc_lo12(L__align11.mseq)
	move	$s6, $a1
	b	.LBB0_10
.LBB0_5:
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(L__align11.match)
	blez	$s7, .LBB0_8
# %bb.6:
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	move	$s6, $a1
	blez	$s8, .LBB0_9
# %bb.7:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(L__align11.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(L__align11.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(L__align11.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(L__align11.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(L__align11.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(L__align11.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(L__align11.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(L__align11.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(L__align11.orlgth1)
	ld.w	$s8, $s3, %pc_lo12(L__align11.orlgth2)
	b	.LBB0_9
.LBB0_8:
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	move	$s6, $a1
.LBB0_9:
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 314572
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a0
	addi.w	$s4, $s8, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(L__align11.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(L__align11.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(L__align11.match)
	move	$s5, $s6
	addi.w	$s6, $s7, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(L__align11.initverticalw)
	move	$a0, $s6
	move	$s6, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(L__align11.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $s5, %pc_lo12(L__align11.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(L__align11.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.d	$a1, $s7, $s8
	addi.w	$a1, $a1, 200
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(L__align11.mseq)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$s7, $a1, %pc_lo12(L__align11.orlgth1)
	st.w	$s8, $s3, %pc_lo12(L__align11.orlgth2)
.LBB0_10:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(L__align11.mseq1)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(L__align11.mseq2)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s4, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s4, 0
	blt	$a0, $s7, .LBB0_13
# %bb.11:
	blt	$a1, $s8, .LBB0_13
# %bb.12:                               # %._crit_edge249
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB0_17
.LBB0_13:
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s6, $s5
	beqz	$a0, .LBB0_16
# %bb.14:
	beqz	$a1, .LBB0_16
# %bb.15:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(L__align11.orlgth1)
	ld.w	$a0, $s1, 0
	ld.w	$s8, $s3, %pc_lo12(L__align11.orlgth2)
	ld.w	$a1, $s4, 0
.LBB0_16:
	slt	$a2, $a0, $s7
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s7, $a2
	or	$s3, $a2, $a0
	slt	$a0, $a1, $s8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$s5, $a0, $a1
	addi.w	$a0, $s3, 10
	addi.w	$a1, $s5, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s3, $s1, 0
	st.w	$s5, $s4, 0
	move	$s5, $s6
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
.LBB0_17:
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $a1, %pc_lo12(L__align11.w1)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(L__align11.w2)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(L__align11.initverticalw)
	ld.d	$a3, $fp, 0
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a3, $s0, 0
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(L__align11.ijp)
	st.d	$a0, $a3, %pc_lo12(L__align11.ijp)
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	beqz	$t7, .LBB0_20
# %bb.18:                               # %.lr.ph.i.preheader
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.b	$a4, $a3, 0
	slli.d	$a4, $a4, 9
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a4, $a3, $a4
	move	$a5, $a1
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	move	$a6, $t8
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $a7, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a4, $t1
	addi.w	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	movgr2fr.w	$fa0, $t1
	ffint.s.w	$fa0, $fa0
	addi.d	$t1, $a5, 4
	fst.s	$fa0, $a5, 0
	move	$a5, $t1
	bnez	$a6, .LBB0_19
.LBB0_20:                               # %match_calc.exit
	ori	$a4, $zero, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	beqz	$s2, .LBB0_32
# %bb.21:                               # %.lr.ph.i179.preheader
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.b	$a5, $a0, 0
	slli.d	$a5, $a5, 9
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	move	$a6, $t0
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_22:                               # %.lr.ph.i179
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t2, $t1, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a5, $t2
	addi.w	$a7, $a7, -1
	addi.d	$t1, $t1, 1
	movgr2fr.w	$fa0, $t2
	ffint.s.w	$fa0, $fa0
	addi.d	$t2, $a6, 4
	fst.s	$fa0, $a6, 0
	move	$a6, $t2
	bnez	$a7, .LBB0_22
# %bb.23:                               # %match_calc.exit184
	blez	$s2, .LBB0_32
# %bb.24:                               # %.lr.ph
	ld.d	$a4, $s5, %pc_lo12(L__align11.m)
	ld.d	$a5, $s6, %pc_lo12(L__align11.mp)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a6, $a0, 1
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$t1, $a6, -1
	ori	$t2, $zero, 8
	ori	$a7, $zero, 1
	bltu	$t1, $t2, .LBB0_29
# %bb.25:                               # %vector.memcheck
	sub.d	$t2, $a4, $t0
	addi.d	$t2, $t2, 4
	ori	$t3, $zero, 32
	bltu	$t2, $t3, .LBB0_29
# %bb.26:                               # %vector.ph
	move	$t2, $t1
	bstrins.d	$t2, $zero, 2, 0
	ori	$t3, $zero, 1
	move	$a7, $t1
	bstrins.d	$a7, $t3, 2, 0
	addi.d	$t3, $t0, 16
	addi.d	$t4, $a4, 20
	addi.d	$t5, $a5, 20
	vrepli.b	$vr0, 0
	move	$t6, $t2
	.p2align	4, , 16
.LBB0_27:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t3, -16
	vld	$vr2, $t3, 0
	vst	$vr1, $t4, -16
	vst	$vr2, $t4, 0
	vst	$vr0, $t5, -16
	vst	$vr0, $t5, 0
	addi.d	$t6, $t6, -8
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB0_27
# %bb.28:                               # %middle.block
	beq	$t1, $t2, .LBB0_31
.LBB0_29:                               # %scalar.ph.preheader
	alsl.d	$t1, $a7, $t0, 2
	addi.d	$t1, $t1, -4
	alsl.d	$a4, $a7, $a4, 2
	alsl.d	$a5, $a7, $a5, 2
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB0_30:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a5, 0
	addi.d	$t1, $t1, 4
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB0_30
.LBB0_31:
	move	$a4, $zero
.LBB0_32:                               # %._crit_edge
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a5, $a0, 32
	ori	$a6, $zero, 0
	lu32i.d	$a6, -1
	add.d	$a7, $a5, $a6
	srai.d	$a5, $a7, 30
	fldx.s	$fa0, $t0, $a5
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $a3, %pc_lo12(L__align11.lastverticalw)
	fst.s	$fa0, $a5, 0
	addi.w	$t1, $t8, 1
	add.w	$s7, $t1, $a0
	lu12i.w	$a6, -203034
	ori	$a6, $a6, 2856
	lu32i.d	$a6, 0
	blez	$t7, .LBB0_47
# %bb.33:                               # %.lr.ph224
	move	$s3, $zero
	move	$s8, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$t2, $zero, $a0
	movgr2fr.w	$fa0, $t2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa0, $fa0
	ffint.s.w	$fa1, $fa1
	ffint.s.w	$fa2, $fa2
	ld.d	$t2, $s5, %pc_lo12(L__align11.m)
	ld.d	$t3, $s6, %pc_lo12(L__align11.mp)
	srai.d	$t4, $a7, 32
	bstrpick.d	$a7, $t1, 31, 0
	addi.d	$a0, $t2, 4
	addi.d	$t1, $t3, 4
	ori	$t2, $zero, 1
	movgr2fr.w	$fs0, $a6
	slli.d	$t3, $t4, 2
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge210
                                        #   in Loop: Header=BB0_35 Depth=1
	fldx.s	$fa3, $a2, $t3
	addi.d	$t2, $t2, 1
	fstx.s	$fa3, $a5, $s5
	move	$t0, $a2
	move	$a2, $a6
	beq	$t2, $a7, .LBB0_48
.LBB0_35:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_41 Depth 2
	addi.d	$t5, $t2, -1
	slli.d	$a6, $t5, 2
	fldx.s	$fa3, $a1, $a6
	move	$a6, $t0
	fst.s	$fa3, $t0, 0
	beqz	$s2, .LBB0_38
# %bb.36:                               # %.lr.ph.i186.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.b	$t0, $a3, $t2
	slli.d	$t0, $t0, 9
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$t0, $a3, $t0
	move	$t4, $a2
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_37:                               # %.lr.ph.i186
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t8, $t7, 0
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $t0, $t8
	addi.w	$t6, $t6, -1
	addi.d	$t7, $t7, 1
	movgr2fr.w	$fa3, $t8
	ffint.s.w	$fa3, $fa3
	addi.d	$t8, $t4, 4
	fst.s	$fa3, $t4, 0
	move	$t4, $t8
	bnez	$t6, .LBB0_37
.LBB0_38:                               # %match_calc.exit191
                                        #   in Loop: Header=BB0_35 Depth=1
	slli.d	$s5, $t2, 2
	fldx.s	$fa3, $a1, $s5
	fst.s	$fa3, $a2, 0
	bnez	$a4, .LBB0_34
# %bb.39:                               # %.lr.ph209.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	slli.d	$t0, $t2, 3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$t0, $a3, $t0
	move	$s6, $zero
	move	$t7, $zero
	fld.s	$fa3, $a6, 0
	addi.d	$t6, $a2, 4
	addi.d	$t8, $t0, 4
	addi.d	$s1, $zero, -1
	move	$ra, $t1
	move	$t0, $a0
	move	$t4, $a6
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_41 Depth=2
	addi.w	$a3, $s6, 1
	fcmp.clt.s	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	movcf2gr	$s4, $fcc0
	masknez	$t7, $t7, $s4
	maskeqz	$s4, $s6, $s4
	or	$t7, $s4, $t7
	fadd.s	$fa3, $fa3, $fa2
	fcmp.clt.s	$fcc0, $fs0, $fa5
	fsel	$fs0, $fs0, $fa5, $fcc0
	movcf2gr	$s4, $fcc0
	masknez	$s6, $s8, $s4
	maskeqz	$s8, $t2, $s4
	or	$s8, $s8, $s6
	fld.s	$fa4, $t6, 0
	masknez	$s3, $s3, $s4
	maskeqz	$s4, $a3, $s4
	or	$s3, $s4, $s3
	fadd.s	$fa4, $fa6, $fa4
	fst.s	$fa4, $t6, 0
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, 4
	addi.d	$t8, $t8, 4
	addi.d	$t0, $t0, 4
	addi.d	$ra, $ra, 4
	addi.d	$s1, $s1, -1
	move	$s6, $a3
	beq	$s2, $a3, .LBB0_34
.LBB0_41:                               # %.lr.ph209
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t4, 0
	fadd.s	$fa5, $fa3, $fa1
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fld.s	$fa6, $t0, 0
	add.d	$a3, $t7, $s1
	fsel	$fa5, $fa4, $fa5, $fcc0
	movcf2gr	$s4, $fcc0
	maskeqz	$a3, $a3, $s4
	fadd.s	$fa7, $fa6, $fa1
	fcmp.cule.s	$fcc0, $fa7, $fa5
	st.w	$a3, $t8, 0
	bcnez	$fcc0, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=2
	ld.w	$a3, $ra, 0
	sub.d	$a3, $t2, $a3
	st.w	$a3, $t8, 0
	fmov.s	$fa5, $fa7
.LBB0_43:                               #   in Loop: Header=BB0_41 Depth=2
	fcmp.cule.s	$fcc0, $fa4, $fa6
	bcnez	$fcc0, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_41 Depth=2
	st.w	$t5, $ra, 0
	fmov.s	$fa6, $fa4
.LBB0_45:                               #   in Loop: Header=BB0_41 Depth=2
	fadd.s	$fa6, $fa6, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa5
	fst.s	$fa6, $t0, 0
	fmov.s	$fa6, $fa5
	bcnez	$fcc0, .LBB0_40
# %bb.46:                               #   in Loop: Header=BB0_41 Depth=2
	st.w	$s7, $t8, 0
	fmov.s	$fa6, $fa0
	b	.LBB0_40
.LBB0_47:
	move	$s8, $zero
	move	$s3, $zero
	movgr2fr.w	$fs0, $a6
.LBB0_48:                               # %._crit_edge225
	addi.w	$a2, $s8, 0
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	slli.d	$s5, $s3, 2
	ldx.w	$a0, $a0, $s5
	bne	$a0, $s7, .LBB0_50
# %bb.49:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 0
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	movgr2fr.w	$fs0, $zero
	b	.LBB0_88
.LBB0_50:
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(L__align11.mseq1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(L__align11.mseq2)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.w	$s4, $a0, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	bltz	$s4, .LBB0_58
# %bb.51:                               # %.lr.ph.i192
	addi.d	$a2, $s6, 1
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB0_53
# %bb.52:
	move	$a2, $zero
	b	.LBB0_56
.LBB0_53:                               # %vector.ph283
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $t3, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_54:                               # %vector.body286
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vpickve2gr.d	$a5, $vr0, 0
	st.w	$s7, $a5, 0
	vpickve2gr.d	$a5, $vr0, 1
	st.w	$s7, $a5, 0
	vpickve2gr.d	$a5, $vr1, 0
	st.w	$s7, $a5, 0
	vpickve2gr.d	$a5, $vr1, 1
	st.w	$s7, $a5, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_54
# %bb.55:                               # %middle.block291
	beq	$a1, $a2, .LBB0_58
.LBB0_56:                               # %scalar.ph281.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a2, $t3, 3
	.p2align	4, , 16
.LBB0_57:                               # %scalar.ph281
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$s7, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB0_57
.LBB0_58:                               # %.preheader.i
	addi.w	$a1, $a0, 0
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	bltz	$a1, .LBB0_66
# %bb.59:                               # %.lr.ph5.i
	ld.d	$a1, $t3, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 8
	bgeu	$a2, $a4, .LBB0_61
# %bb.60:
	move	$a3, $zero
	b	.LBB0_64
.LBB0_61:                               # %vector.ph296
	bstrpick.d	$a3, $a3, 31, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.w	$vr0, $s7
	addi.d	$a4, $a1, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_62:                               # %vector.body299
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_62
# %bb.63:                               # %middle.block302
	beq	$a2, $a3, .LBB0_66
.LBB0_64:                               # %scalar.ph294.preheader
	sub.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 2
	.p2align	4, , 16
.LBB0_65:                               # %scalar.ph294
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s7, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_65
.LBB0_66:                               # %._crit_edge.i
	ld.d	$a1, $s2, 0
	add.w	$a0, $a0, $s6
	add.d	$a2, $a1, $a0
	st.d	$a2, $s2, 0
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $s1, 0
	add.d	$a2, $a1, $a0
	st.d	$a2, $s1, 0
	stx.b	$zero, $a1, $a0
	bltz	$a0, .LBB0_84
# %bb.67:                               # %.lr.ph22.i
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $t3, 3
	ld.d	$a1, $a1, 0
	ldx.w	$a5, $a1, $s5
	move	$a2, $zero
	addi.w	$a1, $zero, -1
	ori	$a3, $zero, 45
	.p2align	4, , 16
.LBB0_68:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_78 Depth 2
	bltz	$a5, .LBB0_71
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=1
	beqz	$a5, .LBB0_72
# %bb.70:                               #   in Loop: Header=BB0_68 Depth=1
	sub.w	$a4, $s8, $a5
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_71:                               #   in Loop: Header=BB0_68 Depth=1
	addi.w	$a4, $s8, -1
	nor	$a6, $a4, $zero
	add.w	$a7, $s8, $a6
	bnez	$a7, .LBB0_74
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_72:                               #   in Loop: Header=BB0_68 Depth=1
	addi.w	$a4, $s8, -1
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=1
	move	$a5, $a1
	nor	$a6, $a4, $zero
	add.w	$a7, $s8, $a6
	beqz	$a7, .LBB0_76
	.p2align	4, , 16
.LBB0_74:                               # %.lr.ph9.i
                                        #   Parent Loop BB0_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $s0, 0
	ld.d	$t1, $s2, 0
	add.d	$t0, $t0, $a4
	ldx.b	$t0, $t0, $a7
	addi.d	$t2, $t1, -1
	st.d	$t2, $s2, 0
	st.b	$t0, $t1, -1
	ld.d	$t0, $s1, 0
	addi.d	$t1, $t0, -1
	st.d	$t1, $s1, 0
	addi.d	$a7, $a7, -1
	st.b	$a3, $t0, -1
	bnez	$a7, .LBB0_74
# %bb.75:                               # %._crit_edge10.loopexit.i
                                        #   in Loop: Header=BB0_68 Depth=1
	add.d	$a2, $s8, $a2
	add.d	$a2, $a6, $a2
.LBB0_76:                               # %._crit_edge10.i
                                        #   in Loop: Header=BB0_68 Depth=1
	add.w	$a6, $a5, $s3
	beq	$a5, $a1, .LBB0_79
# %bb.77:                               # %.lr.ph14.preheader.i
                                        #   in Loop: Header=BB0_68 Depth=1
	nor	$a5, $a5, $zero
	.p2align	4, , 16
.LBB0_78:                               # %.lr.ph14.i
                                        #   Parent Loop BB0_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $s2, 0
	addi.d	$t0, $a7, -1
	st.d	$t0, $s2, 0
	st.b	$a3, $a7, -1
	ld.d	$a7, $fp, 0
	ld.d	$t0, $s1, 0
	add.d	$a7, $a7, $a6
	ldx.b	$a7, $a7, $a5
	addi.d	$t1, $t0, -1
	st.d	$t1, $s1, 0
	st.b	$a7, $t0, -1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 1
	bnez	$a5, .LBB0_78
.LBB0_79:                               # %._crit_edge15.i
                                        #   in Loop: Header=BB0_68 Depth=1
	addi.w	$a5, $s8, 0
	blez	$a5, .LBB0_83
# %bb.80:                               # %._crit_edge15.i
                                        #   in Loop: Header=BB0_68 Depth=1
	blez	$s3, .LBB0_83
# %bb.81:                               #   in Loop: Header=BB0_68 Depth=1
	ld.d	$a5, $s0, 0
	ld.d	$a7, $s2, 0
	ldx.b	$a5, $a5, $a4
	addi.d	$t0, $a7, -1
	st.d	$t0, $s2, 0
	st.b	$a5, $a7, -1
	ld.d	$a5, $fp, 0
	ld.d	$a7, $s1, 0
	ldx.b	$a5, $a5, $a6
	addi.d	$t0, $a7, -1
	st.d	$t0, $s1, 0
	st.b	$a5, $a7, -1
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $t3, $a5
	slli.d	$a7, $a6, 2
	ldx.w	$a5, $a5, $a7
	beq	$a5, $s7, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_68 Depth=1
	addi.w	$a2, $a2, 2
	move	$s8, $a4
	move	$s3, $a6
	bge	$a0, $a2, .LBB0_68
.LBB0_83:                               # %._crit_edge23.i
	addi.d	$a0, $a4, 1
	sltui	$a0, $a0, 1
	masknez	$a0, $a4, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	addi.d	$a0, $a6, 1
	sltui	$a0, $a0, 1
	masknez	$a0, $a6, $a0
	b	.LBB0_85
.LBB0_84:                               # %.thread.i
	move	$a0, $zero
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
.LBB0_85:                               # %Ltracking.exit
	ld.d	$s3, $s2, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a2, 1220
	blt	$s4, $a3, .LBB0_89
# %bb.86:                               # %Ltracking.exit
	ori	$a0, $a2, 2881
	bge	$a3, $a0, .LBB0_89
.LBB0_87:
	ld.d	$a0, $s0, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB0_88:
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB0_89:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a4, $a2, 2880
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(L__align11.mseq1)
	ld.d	$s3, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(L__align11.mseq2)
	b	.LBB0_87
.Lfunc_end0:
	.size	L__align11, .Lfunc_end0-L__align11
                                        # -- End function
	.type	L__align11.m,@object            # @L__align11.m
	.local	L__align11.m
	.comm	L__align11.m,8,8
	.type	L__align11.ijp,@object          # @L__align11.ijp
	.local	L__align11.ijp
	.comm	L__align11.ijp,8,8
	.type	L__align11.mp,@object           # @L__align11.mp
	.local	L__align11.mp
	.comm	L__align11.mp,8,8
	.type	L__align11.w1,@object           # @L__align11.w1
	.local	L__align11.w1
	.comm	L__align11.w1,8,8
	.type	L__align11.w2,@object           # @L__align11.w2
	.local	L__align11.w2
	.comm	L__align11.w2,8,8
	.type	L__align11.match,@object        # @L__align11.match
	.local	L__align11.match
	.comm	L__align11.match,8,8
	.type	L__align11.initverticalw,@object # @L__align11.initverticalw
	.local	L__align11.initverticalw
	.comm	L__align11.initverticalw,8,8
	.type	L__align11.lastverticalw,@object # @L__align11.lastverticalw
	.local	L__align11.lastverticalw
	.comm	L__align11.lastverticalw,8,8
	.type	L__align11.mseq1,@object        # @L__align11.mseq1
	.local	L__align11.mseq1
	.comm	L__align11.mseq1,8,8
	.type	L__align11.mseq2,@object        # @L__align11.mseq2
	.local	L__align11.mseq2
	.comm	L__align11.mseq2,8,8
	.type	L__align11.mseq,@object         # @L__align11.mseq
	.local	L__align11.mseq
	.comm	L__align11.mseq,8,8
	.type	L__align11.orlgth1,@object      # @L__align11.orlgth1
	.local	L__align11.orlgth1
	.comm	L__align11.orlgth1,4,4
	.type	L__align11.orlgth2,@object      # @L__align11.orlgth2
	.local	L__align11.orlgth2
	.comm	L__align11.orlgth2,4,4
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.2, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
