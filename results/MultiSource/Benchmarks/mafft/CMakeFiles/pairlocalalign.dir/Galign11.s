	.file	"Galign11.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function G__align11
.LCPI0_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	G__align11
	.p2align	5
	.type	G__align11,@function
G__align11:                             # @G__align11
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$s3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(penalty_ex)
	ld.d	$a0, $a0, %got_pc_lo12(penalty_ex)
	pcalau12i	$s5, %pc_hi20(G__align11.orlgth1)
	ld.w	$a1, $s5, %pc_lo12(G__align11.orlgth1)
	ld.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(G__align11.mseq1)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.mseq2)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bnez	$a1, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(G__align11.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.mseq2)
.LBB0_2:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$s1, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$t1, $s1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$s4, $a0, 0
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	blez	$s1, .LBB0_100
# %bb.3:
	blez	$s4, .LBB0_100
.LBB0_4:
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s5, $s5, %pc_lo12(G__align11.orlgth1)
	pcalau12i	$a0, %pc_hi20(G__align11.orlgth2)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s7, $a0, %pc_lo12(G__align11.orlgth2)
	pcalau12i	$a0, %pc_hi20(G__align11.w1)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.w2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.initverticalw)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(G__align11.lastverticalw)
	pcalau12i	$a0, %pc_hi20(G__align11.m)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.mp)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(G__align11.mseq)
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	blt	$s5, $t1, .LBB0_6
# %bb.5:
	bge	$s7, $s4, .LBB0_10
.LBB0_6:
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(G__align11.match)
	pcalau12i	$a0, %pc_hi20(G__align11.floatwork)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.intwork)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blez	$s5, .LBB0_9
# %bb.7:
	blez	$s7, .LBB0_9
# %bb.8:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(G__align11.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(G__align11.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(G__align11.orlgth1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(G__align11.orlgth2)
.LBB0_9:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
	addi.w	$s3, $s5, 100
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s8, $s7, 100
	addi.w	$s2, $s7, 102
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.w1)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.w2)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(G__align11.match)
	addi.w	$s6, $s5, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s6, %pc_lo12(G__align11.lastverticalw)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.m)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s8, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(G__align11.mseq)
	slt	$a0, $s8, $s3
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 2
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.intwork)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$s5, $a0, %pc_lo12(G__align11.orlgth1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(G__align11.orlgth2)
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
.LBB0_10:
	ld.d	$a0, $s1, %pc_lo12(G__align11.mseq)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(G__align11.mseq1)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(G__align11.mseq2)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s3, 0
	blt	$a0, $s5, .LBB0_13
# %bb.11:
	blt	$a1, $s7, .LBB0_13
# %bb.12:                               # %._crit_edge253
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a3, $a0, 0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_18
.LBB0_13:
	move	$s8, $s6
	beqz	$a0, .LBB0_16
# %bb.14:
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_17
# %bb.15:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(G__align11.orlgth1)
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(G__align11.orlgth2)
	ld.w	$a1, $s3, 0
	b	.LBB0_17
.LBB0_16:
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
.LBB0_17:
	slt	$a2, $a0, $s5
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s5, $a2
	or	$s5, $a2, $a0
	slt	$a0, $a1, $s7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s6, $a0, $a1
	addi.w	$a0, $s5, 10
	addi.w	$a1, $s6, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	st.d	$a3, $a0, 0
	st.w	$s5, $s1, 0
	st.w	$s6, $s3, 0
	move	$s6, $s8
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
.LBB0_18:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(G__align11.w1)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(G__align11.w2)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(G__align11.initverticalw)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcalau12i	$a2, %pc_hi20(G__align11.ijp)
	st.d	$a3, $a2, %pc_lo12(G__align11.ijp)
	pcalau12i	$a2, %got_pc_hi20(amino_dis)
	ld.d	$a2, $a2, %got_pc_lo12(amino_dis)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	beqz	$t1, .LBB0_21
# %bb.19:                               # %.lr.ph.i.preheader
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.b	$a2, $a2, 0
	slli.d	$a2, $a2, 9
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	move	$a5, $a1
	move	$a7, $a0
	move	$a6, $s2
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $a7, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	addi.w	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	movgr2fr.w	$fa0, $t0
	ffint.s.w	$fa0, $fa0
	addi.d	$t0, $a5, 4
	fst.s	$fa0, $a5, 0
	move	$a5, $t0
	bnez	$a6, .LBB0_20
.LBB0_21:                               # %match_calc.exit
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a2
	beqz	$s4, .LBB0_24
# %bb.22:                               # %.lr.ph.i178.preheader
	ld.b	$a2, $a0, 0
	slli.d	$a2, $a2, 9
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	move	$a5, $a4
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_23:                               # %.lr.ph.i178
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $a7, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	addi.w	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	addi.d	$t0, $a5, 4
	fst.s	$fa1, $a5, 0
	move	$a5, $t0
	bnez	$a6, .LBB0_23
.LBB0_24:                               # %match_calc.exit183
	ffint.s.w	$fa0, $fa0
	pcalau12i	$a2, %got_pc_hi20(outgap)
	ld.d	$a7, $a2, %got_pc_lo12(outgap)
	ld.w	$a2, $a7, 0
	ori	$t0, $zero, 1
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a6, $a5, 32
	addi.d	$a5, $a5, 1
	bne	$a2, $t0, .LBB0_39
# %bb.25:                               # %.preheader192
	blez	$t1, .LBB0_32
# %bb.26:                               # %.lr.ph.preheader
	addi.d	$a2, $s2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$t0, $a2, -1
	ori	$t2, $zero, 8
	ori	$t1, $zero, 1
	bltu	$t0, $t2, .LBB0_30
# %bb.27:                               # %vector.ph
	move	$t2, $t0
	bstrins.d	$t2, $zero, 2, 0
	ori	$t3, $zero, 1
	move	$t1, $t0
	bstrins.d	$t1, $t3, 2, 0
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$t3, $a1, 20
	move	$t4, $t2
	.p2align	4, , 16
.LBB0_28:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t3, -16
	vld	$vr3, $t3, 0
	vfadd.s	$vr2, $vr2, $vr1
	vfadd.s	$vr3, $vr3, $vr1
	vst	$vr2, $t3, -16
	vst	$vr3, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB0_28
# %bb.29:                               # %middle.block
	beq	$t0, $t2, .LBB0_32
.LBB0_30:                               # %.lr.ph.preheader337
	alsl.d	$t0, $t1, $a1, 2
	sub.d	$a2, $a2, $t1
	.p2align	4, , 16
.LBB0_31:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $t0, 0
	addi.d	$a2, $a2, -1
	addi.d	$t0, $t0, 4
	bnez	$a2, .LBB0_31
.LBB0_32:                               # %.preheader
	blez	$s4, .LBB0_47
# %bb.33:                               # %.lr.ph197.preheader
	bstrpick.d	$a2, $a5, 31, 0
	addi.d	$t0, $a2, -1
	ori	$t2, $zero, 8
	ori	$t1, $zero, 1
	bltu	$t0, $t2, .LBB0_37
# %bb.34:                               # %vector.ph281
	move	$t2, $t0
	bstrins.d	$t2, $zero, 2, 0
	ori	$t3, $zero, 1
	move	$t1, $t0
	bstrins.d	$t1, $t3, 2, 0
	vreplvei.w	$vr1, $vr0, 0
	addi.d	$t3, $a4, 20
	move	$t4, $t2
	.p2align	4, , 16
.LBB0_35:                               # %vector.body286
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t3, -16
	vld	$vr3, $t3, 0
	vfadd.s	$vr2, $vr2, $vr1
	vfadd.s	$vr3, $vr3, $vr1
	vst	$vr2, $t3, -16
	vst	$vr3, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB0_35
# %bb.36:                               # %middle.block292
	beq	$t0, $t2, .LBB0_40
.LBB0_37:                               # %.lr.ph197.preheader336
	alsl.d	$t0, $t1, $a4, 2
	sub.d	$a2, $a2, $t1
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph197
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $t0, 0
	addi.d	$a2, $a2, -1
	addi.d	$t0, $t0, 4
	bnez	$a2, .LBB0_38
	b	.LBB0_40
.LBB0_39:                               # %.loopexit
	blez	$s4, .LBB0_47
.LBB0_40:                               # %.lr.ph200
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(G__align11.m)
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(G__align11.mp)
	bstrpick.d	$t1, $a5, 31, 0
	addi.d	$t3, $t1, -1
	ori	$t4, $zero, 8
	ori	$t2, $zero, 1
	bltu	$t3, $t4, .LBB0_45
# %bb.41:                               # %vector.memcheck
	sub.d	$t4, $a2, $a4
	addi.d	$t4, $t4, 4
	ori	$t5, $zero, 32
	bltu	$t4, $t5, .LBB0_45
# %bb.42:                               # %vector.ph297
	move	$t4, $t3
	bstrins.d	$t4, $zero, 2, 0
	ori	$t5, $zero, 1
	move	$t2, $t3
	bstrins.d	$t2, $t5, 2, 0
	addi.d	$t5, $a4, 16
	addi.d	$t6, $a2, 20
	addi.d	$t7, $t0, 20
	vrepli.b	$vr1, 0
	move	$t8, $t4
	.p2align	4, , 16
.LBB0_43:                               # %vector.body300
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t5, -16
	vld	$vr3, $t5, 0
	vst	$vr2, $t6, -16
	vst	$vr3, $t6, 0
	vst	$vr1, $t7, -16
	vst	$vr1, $t7, 0
	addi.d	$t8, $t8, -8
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB0_43
# %bb.44:                               # %middle.block306
	beq	$t3, $t4, .LBB0_48
.LBB0_45:                               # %scalar.ph295.preheader
	alsl.d	$t3, $t2, $a4, 2
	addi.d	$t3, $t3, -4
	alsl.d	$a2, $t2, $a2, 2
	alsl.d	$t0, $t2, $t0, 2
	sub.d	$t1, $t1, $t2
	.p2align	4, , 16
.LBB0_46:                               # %scalar.ph295
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t3, 0
	fst.s	$fa1, $a2, 0
	st.w	$zero, $t0, 0
	addi.d	$t3, $t3, 4
	addi.d	$a2, $a2, 4
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	bnez	$t1, .LBB0_46
	b	.LBB0_48
.LBB0_47:                               # %._crit_edge
	beqz	$s4, .LBB0_99
.LBB0_48:                               # %._crit_edge.thread
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a6, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa1, $a4, $a2
.LBB0_49:
	ld.w	$a2, $a7, 0
	ld.d	$a7, $s6, %pc_lo12(G__align11.lastverticalw)
	sltu	$a2, $zero, $a2
	add.w	$t0, $a2, $s2
	ori	$a2, $zero, 2
	fst.s	$fa1, $a7, 0
	move	$s6, $a3
	blt	$t0, $a2, .LBB0_63
# %bb.50:                               # %.lr.ph222
	movgr2fr.w	$fa1, $s8
	ffint.s.w	$fa1, $fa1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(G__align11.m)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $a3, %pc_lo12(G__align11.mp)
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a6, $a6, $t1
	srai.d	$a6, $a6, 30
	bstrpick.d	$t1, $a5, 31, 0
	addi.d	$a5, $a2, 4
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	movgr2fr.w	$fs0, $zero
	ori	$t3, $zero, 1
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_51:                               # %match_calc.exit190.thread
                                        #   in Loop: Header=BB0_53 Depth=1
	fldx.s	$fa2, $a1, $a4
	fst.s	$fa2, $t4, 0
.LBB0_52:                               # %._crit_edge213
                                        #   in Loop: Header=BB0_53 Depth=1
	fldx.s	$fa2, $t4, $a6
	addi.d	$t3, $t3, 1
	fstx.s	$fa2, $a7, $a4
	move	$a4, $t4
	beq	$t3, $t0, .LBB0_64
.LBB0_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_59 Depth 2
	addi.d	$t5, $t3, -1
	slli.d	$a2, $t5, 2
	fldx.s	$fa2, $a1, $a2
	move	$t4, $s3
	move	$s3, $a4
	fst.s	$fa2, $a4, 0
	slli.d	$a4, $t3, 2
	beqz	$s4, .LBB0_51
# %bb.54:                               # %.lr.ph.i185.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	ldx.b	$a2, $a0, $t3
	slli.d	$a2, $a2, 9
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	move	$t6, $t4
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_55:                               # %.lr.ph.i185
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s1, $t8, 0
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $a2, $s1
	addi.w	$t7, $t7, -1
	addi.d	$t8, $t8, 1
	movgr2fr.w	$fa2, $s1
	ffint.s.w	$fa2, $fa2
	addi.d	$s1, $t6, 4
	fst.s	$fa2, $t6, 0
	move	$t6, $s1
	bnez	$t7, .LBB0_55
# %bb.56:                               # %match_calc.exit190
                                        #   in Loop: Header=BB0_53 Depth=1
	fldx.s	$fa2, $a1, $a4
	fst.s	$fa2, $t4, 0
	blez	$s4, .LBB0_52
# %bb.57:                               # %.lr.ph212.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	slli.d	$a2, $t3, 3
	ldx.d	$a2, $s6, $a2
	move	$t6, $zero
	move	$t7, $zero
	fld.s	$fa2, $s3, 0
	addi.d	$t8, $t4, 4
	addi.d	$s1, $a2, 4
	move	$s5, $t2
	move	$s7, $t1
	move	$s8, $a5
	addi.d	$ra, $zero, -1
	move	$a2, $s3
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               #   in Loop: Header=BB0_59 Depth=2
	fld.s	$fa4, $s8, 0
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$a3, $fcc0
	masknez	$s2, $t6, $a3
	fadd.s	$fa3, $fa4, $fa1
	fst.s	$fa3, $s8, 0
	fld.s	$fa3, $t8, 0
	maskeqz	$a3, $t7, $a3
	or	$t7, $a3, $s2
	fadd.s	$fa2, $fa2, $fa1
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $t8, 0
	addi.d	$a2, $a2, 4
	addi.d	$t6, $t6, 1
	addi.d	$ra, $ra, -1
	addi.d	$s8, $s8, 4
	addi.d	$s7, $s7, -1
	addi.d	$t8, $t8, 4
	addi.d	$s1, $s1, 4
	addi.d	$s5, $s5, 4
	beqz	$s7, .LBB0_52
.LBB0_59:                               # %.lr.ph212
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a2, 0
	fadd.s	$fa5, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa3, $fa5
	fld.s	$fa4, $s8, 0
	add.d	$a3, $t7, $ra
	fsel	$fs0, $fa3, $fa5, $fcc0
	movcf2gr	$s2, $fcc0
	maskeqz	$a3, $a3, $s2
	fadd.s	$fa5, $fa4, $fa0
	fcmp.cule.s	$fcc0, $fa5, $fs0
	st.w	$a3, $s1, 0
	bcnez	$fcc0, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=2
	ld.w	$a3, $s5, 0
	sub.d	$a3, $t3, $a3
	st.w	$a3, $s1, 0
	fmov.s	$fs0, $fa5
.LBB0_61:                               #   in Loop: Header=BB0_59 Depth=2
	fcmp.cult.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB0_58
# %bb.62:                               #   in Loop: Header=BB0_59 Depth=2
	fst.s	$fa3, $s8, 0
	st.w	$t5, $s5, 0
	b	.LBB0_58
.LBB0_63:
	movgr2fr.w	$fs0, $zero
.LBB0_64:                               # %._crit_edge223
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(G__align11.mseq1)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(G__align11.mseq2)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s2, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltz	$s2, .LBB0_72
# %bb.65:                               # %.lr.ph.preheader.i
	addi.d	$a2, $s3, 1
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB0_67
# %bb.66:
	move	$a2, $zero
	b	.LBB0_70
.LBB0_67:                               # %vector.ph311
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s6, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_68:                               # %vector.body314
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
	bnez	$a4, .LBB0_68
# %bb.69:                               # %middle.block319
	beq	$a1, $a2, .LBB0_72
.LBB0_70:                               # %.lr.ph.i191.preheader
	alsl.d	$a3, $a2, $s6, 3
	sub.d	$a1, $a1, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_71:                               # %.lr.ph.i191
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_71
.LBB0_72:                               # %.preheader.i
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB0_80
# %bb.73:                               # %.lr.ph5.i
	ld.d	$a1, $s6, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 8
	bgeu	$a2, $a4, .LBB0_75
# %bb.74:
	move	$a3, $zero
	b	.LBB0_78
.LBB0_75:                               # %vector.ph324
	bstrpick.d	$a3, $a3, 31, 3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a4, %pc_lo12(.LCPI0_2)
	addi.d	$a4, $a1, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_76:                               # %vector.body327
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a4, -16
	vst	$vr4, $a4, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_76
# %bb.77:                               # %middle.block333
	beq	$a2, $a3, .LBB0_80
.LBB0_78:                               # %scalar.ph322.preheader
	alsl.d	$a1, $a3, $a1, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_79:                               # %scalar.ph322
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB0_79
.LBB0_80:                               # %._crit_edge.i
	ld.d	$a2, $s4, 0
	add.w	$a1, $a0, $s3
	add.d	$a3, $a2, $a1
	st.d	$a3, $s4, 0
	stx.b	$zero, $a2, $a1
	ld.d	$a2, $s1, 0
	add.d	$a3, $a2, $a1
	st.d	$a3, $s1, 0
	stx.b	$zero, $a2, $a1
	bltz	$a1, .LBB0_96
# %bb.81:                               # %.lr.ph22.i.preheader
	move	$a3, $zero
	addi.w	$a2, $zero, -1
	ori	$a4, $zero, 45
	.p2align	4, , 16
.LBB0_82:                               # %.lr.ph22.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_88 Depth 2
                                        #     Child Loop BB0_92 Depth 2
	addi.w	$a6, $s3, 0
	slli.d	$a5, $a6, 3
	ldx.d	$a5, $s6, $a5
	addi.w	$a7, $a0, 0
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $a5, $t0
	bltz	$t0, .LBB0_85
# %bb.83:                               #   in Loop: Header=BB0_82 Depth=1
	beqz	$t0, .LBB0_86
# %bb.84:                               #   in Loop: Header=BB0_82 Depth=1
	sub.w	$a5, $s3, $t0
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_85:                               #   in Loop: Header=BB0_82 Depth=1
	addi.w	$a5, $s3, -1
	nor	$t1, $a5, $zero
	add.w	$t2, $s3, $t1
	bnez	$t2, .LBB0_88
	b	.LBB0_90
	.p2align	4, , 16
.LBB0_86:                               #   in Loop: Header=BB0_82 Depth=1
	addi.w	$a5, $s3, -1
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=1
	move	$t0, $a2
	nor	$t1, $a5, $zero
	add.w	$t2, $s3, $t1
	beqz	$t2, .LBB0_90
	.p2align	4, , 16
.LBB0_88:                               # %.lr.ph9.i
                                        #   Parent Loop BB0_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s0, 0
	ld.d	$t4, $s4, 0
	add.d	$t3, $t3, $a5
	ldx.b	$t3, $t3, $t2
	addi.d	$t5, $t4, -1
	st.d	$t5, $s4, 0
	st.b	$t3, $t4, -1
	ld.d	$t3, $s1, 0
	addi.d	$t4, $t3, -1
	st.d	$t4, $s1, 0
	addi.d	$t2, $t2, -1
	st.b	$a4, $t3, -1
	bnez	$t2, .LBB0_88
# %bb.89:                               # %._crit_edge10.loopexit.i
                                        #   in Loop: Header=BB0_82 Depth=1
	add.d	$a3, $s3, $a3
	add.d	$a3, $t1, $a3
.LBB0_90:                               # %._crit_edge10.i
                                        #   in Loop: Header=BB0_82 Depth=1
	add.w	$a0, $t0, $a0
	beq	$t0, $a2, .LBB0_93
# %bb.91:                               # %.lr.ph14.preheader.i
                                        #   in Loop: Header=BB0_82 Depth=1
	nor	$t0, $t0, $zero
	.p2align	4, , 16
.LBB0_92:                               # %.lr.ph14.i
                                        #   Parent Loop BB0_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $s4, 0
	addi.d	$t2, $t1, -1
	st.d	$t2, $s4, 0
	st.b	$a4, $t1, -1
	ld.d	$t1, $fp, 0
	ld.d	$t2, $s1, 0
	add.d	$t1, $t1, $a0
	ldx.b	$t1, $t1, $t0
	addi.d	$t3, $t2, -1
	st.d	$t3, $s1, 0
	st.b	$t1, $t2, -1
	addi.d	$t0, $t0, -1
	addi.d	$a3, $a3, 1
	bnez	$t0, .LBB0_92
.LBB0_93:                               # %._crit_edge15.i
                                        #   in Loop: Header=BB0_82 Depth=1
	blez	$a6, .LBB0_96
# %bb.94:                               # %._crit_edge15.i
                                        #   in Loop: Header=BB0_82 Depth=1
	blez	$a7, .LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_82 Depth=1
	ld.d	$a6, $s0, 0
	ld.d	$a7, $s4, 0
	ldx.b	$a6, $a6, $a5
	addi.d	$t0, $a7, -1
	st.d	$t0, $s4, 0
	st.b	$a6, $a7, -1
	ld.d	$a6, $fp, 0
	ld.d	$a7, $s1, 0
	ldx.b	$a6, $a6, $a0
	addi.d	$t0, $a7, -1
	st.d	$t0, $s1, 0
	addi.w	$a3, $a3, 2
	st.b	$a6, $a7, -1
	move	$s3, $a5
	bge	$a1, $a3, .LBB0_82
.LBB0_96:                               # %Atracking.exit
	ld.d	$s2, $s4, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB0_101
# %bb.97:                               # %Atracking.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB0_101
.LBB0_98:
	ld.d	$a0, $s0, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB0_99:
	movgr2fr.w	$fa1, $zero
	b	.LBB0_49
.LBB0_100:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $t1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_101:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.mseq1)
	ld.d	$s2, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(G__align11.mseq2)
	b	.LBB0_98
.Lfunc_end0:
	.size	G__align11, .Lfunc_end0-G__align11
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function G__align11_noalign
.LCPI1_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.text
	.globl	G__align11_noalign
	.p2align	5
	.type	G__align11_noalign,@function
G__align11_noalign:                     # @G__align11_noalign
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$s2, $a3
	ld.d	$a3, $a3, 0
	move	$s0, $a4
	move	$s3, $a2
	move	$s7, $a1
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	move	$s5, $a0
	addi.w	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$s1, $a0, 0
	blez	$s4, .LBB1_54
# %bb.1:
	blez	$s1, .LBB1_54
.LBB1_2:
	pcalau12i	$a2, %pc_hi20(G__align11_noalign.orlgth1)
	ld.w	$a1, $a2, %pc_lo12(G__align11_noalign.orlgth1)
	pcalau12i	$a3, %pc_hi20(G__align11_noalign.orlgth2)
	ld.w	$a0, $a3, %pc_lo12(G__align11_noalign.orlgth2)
	pcalau12i	$a4, %pc_hi20(G__align11_noalign.w1)
	pcalau12i	$a5, %pc_hi20(G__align11_noalign.w2)
	pcalau12i	$a6, %pc_hi20(G__align11_noalign.initverticalw)
	pcalau12i	$s6, %pc_hi20(G__align11_noalign.lastverticalw)
	pcalau12i	$s8, %pc_hi20(G__align11_noalign.m)
	blt	$a1, $s4, .LBB1_4
# %bb.3:
	bge	$a0, $s1, .LBB1_8
.LBB1_4:
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a6, %pc_hi20(G__align11_noalign.match)
	pcalau12i	$a5, %pc_hi20(G__align11_noalign.floatwork)
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(G__align11_noalign.intwork)
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $a4
	move	$fp, $a6
	blez	$a1, .LBB1_7
# %bb.5:
	blez	$a0, .LBB1_7
# %bb.6:
	ld.d	$a0, $s4, %pc_lo12(G__align11_noalign.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(G__align11_noalign.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(G__align11_noalign.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(G__align11_noalign.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(G__align11_noalign.orlgth1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(G__align11_noalign.orlgth2)
.LBB1_7:
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_0)
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$s3, $a1, $a2
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	or	$s5, $a0, $a1
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s8, $s5, 102
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(G__align11_noalign.w1)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $s7, %pc_lo12(G__align11_noalign.w2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(G__align11_noalign.match)
	addi.w	$s2, $s3, 102
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(G__align11_noalign.initverticalw)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(G__align11_noalign.lastverticalw)
	move	$a0, $s8
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(G__align11_noalign.m)
	slt	$a0, $s5, $s3
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 102
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11_noalign.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a6, $fp
	move	$a5, $s7
	move	$a4, $s4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11_noalign.intwork)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(G__align11_noalign.orlgth1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$s5, $a0, %pc_lo12(G__align11_noalign.orlgth2)
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
.LBB1_8:
	ld.d	$a0, $a4, %pc_lo12(G__align11_noalign.w1)
	ld.d	$a4, $a5, %pc_lo12(G__align11_noalign.w2)
	ld.d	$a1, $a6, %pc_lo12(G__align11_noalign.initverticalw)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $s2, 0
	beqz	$s4, .LBB1_11
# %bb.9:                                # %.lr.ph.i.preheader
	ld.b	$a5, $a2, 0
	slli.d	$a5, $a5, 9
	add.d	$a5, $fp, $a5
	move	$a6, $a1
	move	$t0, $a3
	move	$a7, $s5
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $t0, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a5, $t1
	addi.w	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	movgr2fr.w	$fa0, $t1
	ffint.s.w	$fa0, $fa0
	addi.d	$t1, $a6, 4
	fst.s	$fa0, $a6, 0
	move	$a6, $t1
	bnez	$a7, .LBB1_10
.LBB1_11:                               # %match_calc_mtx.exit
	movgr2fr.w	$fa0, $s7
	beqz	$s1, .LBB1_14
# %bb.12:                               # %.lr.ph.i145.preheader
	ld.b	$a5, $a3, 0
	slli.d	$a5, $a5, 9
	add.d	$a5, $fp, $a5
	move	$a6, $a0
	move	$t0, $a2
	move	$a7, $s0
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph.i145
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $t0, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a5, $t1
	addi.w	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	movgr2fr.w	$fa1, $t1
	ffint.s.w	$fa1, $fa1
	addi.d	$t1, $a6, 4
	fst.s	$fa1, $a6, 0
	move	$a6, $t1
	bnez	$a7, .LBB1_13
.LBB1_14:                               # %match_calc_mtx.exit150
	ffint.s.w	$fa1, $fa0
	pcalau12i	$a5, %got_pc_hi20(outgap)
	ld.d	$a5, $a5, %got_pc_lo12(outgap)
	ld.w	$a7, $a5, 0
	ori	$t0, $zero, 1
	slli.d	$a6, $s0, 32
	addi.d	$a5, $s0, 1
	bne	$a7, $t0, .LBB1_29
# %bb.15:                               # %.preheader158
	blez	$s4, .LBB1_22
# %bb.16:                               # %.lr.ph.preheader
	addi.d	$t0, $s5, 1
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t1, $t0, -1
	ori	$t3, $zero, 8
	ori	$t2, $zero, 1
	bltu	$t1, $t3, .LBB1_20
# %bb.17:                               # %vector.ph
	move	$t3, $t1
	bstrins.d	$t3, $zero, 2, 0
	ori	$t4, $zero, 1
	move	$t2, $t1
	bstrins.d	$t2, $t4, 2, 0
	vreplvei.w	$vr0, $vr1, 0
	addi.d	$t4, $a1, 20
	move	$t5, $t3
	.p2align	4, , 16
.LBB1_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t4, -16
	vld	$vr3, $t4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $t4, -16
	vst	$vr3, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB1_18
# %bb.19:                               # %middle.block
	beq	$t1, $t3, .LBB1_22
.LBB1_20:                               # %.lr.ph.preheader241
	alsl.d	$t1, $t2, $a1, 2
	sub.d	$t0, $t0, $t2
	.p2align	4, , 16
.LBB1_21:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t1, 0
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB1_21
.LBB1_22:                               # %.preheader
	blez	$s1, .LBB1_37
# %bb.23:                               # %.lr.ph163.preheader
	bstrpick.d	$t0, $a5, 31, 0
	addi.d	$t1, $t0, -1
	ori	$t3, $zero, 8
	ori	$t2, $zero, 1
	bltu	$t1, $t3, .LBB1_27
# %bb.24:                               # %vector.ph212
	move	$t3, $t1
	bstrins.d	$t3, $zero, 2, 0
	ori	$t4, $zero, 1
	move	$t2, $t1
	bstrins.d	$t2, $t4, 2, 0
	vreplvei.w	$vr0, $vr1, 0
	addi.d	$t4, $a0, 20
	move	$t5, $t3
	.p2align	4, , 16
.LBB1_25:                               # %vector.body217
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t4, -16
	vld	$vr3, $t4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $t4, -16
	vst	$vr3, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB1_25
# %bb.26:                               # %middle.block223
	beq	$t1, $t3, .LBB1_30
.LBB1_27:                               # %.lr.ph163.preheader240
	alsl.d	$t1, $t2, $a0, 2
	sub.d	$t0, $t0, $t2
	.p2align	4, , 16
.LBB1_28:                               # %.lr.ph163
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t1, 0
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB1_28
	b	.LBB1_30
.LBB1_29:                               # %.loopexit
	blez	$s1, .LBB1_37
.LBB1_30:                               # %.lr.ph166
	ld.d	$t0, $s8, %pc_lo12(G__align11_noalign.m)
	bstrpick.d	$t1, $a5, 31, 0
	addi.d	$t3, $t1, -1
	ori	$t4, $zero, 8
	ori	$t2, $zero, 1
	bltu	$t3, $t4, .LBB1_35
# %bb.31:                               # %vector.memcheck
	sub.d	$t4, $t0, $a0
	addi.d	$t4, $t4, 4
	ori	$t5, $zero, 32
	bltu	$t4, $t5, .LBB1_35
# %bb.32:                               # %vector.ph228
	move	$t4, $t3
	bstrins.d	$t4, $zero, 2, 0
	ori	$t5, $zero, 1
	move	$t2, $t3
	bstrins.d	$t2, $t5, 2, 0
	addi.d	$t5, $a0, 16
	addi.d	$t6, $t0, 20
	move	$t7, $t4
	.p2align	4, , 16
.LBB1_33:                               # %vector.body231
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t5, -16
	vld	$vr2, $t5, 0
	vst	$vr0, $t6, -16
	vst	$vr2, $t6, 0
	addi.d	$t5, $t5, 32
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB1_33
# %bb.34:                               # %middle.block237
	beq	$t3, $t4, .LBB1_38
.LBB1_35:                               # %scalar.ph226.preheader
	alsl.d	$t3, $t2, $a0, 2
	addi.d	$t3, $t3, -4
	alsl.d	$t0, $t2, $t0, 2
	sub.d	$t1, $t1, $t2
	.p2align	4, , 16
.LBB1_36:                               # %scalar.ph226
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t3, 0
	fst.s	$fa0, $t0, 0
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	bnez	$t1, .LBB1_36
	b	.LBB1_38
.LBB1_37:                               # %._crit_edge
	beqz	$s1, .LBB1_53
.LBB1_38:                               # %._crit_edge.thread
	ori	$t0, $zero, 0
	lu32i.d	$t0, -1
	add.d	$t0, $a6, $t0
	srai.d	$t0, $t0, 30
	fldx.s	$fa0, $a0, $t0
.LBB1_39:
	ld.d	$t0, $s6, %pc_lo12(G__align11_noalign.lastverticalw)
	sltu	$a7, $zero, $a7
	add.w	$a7, $a7, $s5
	ori	$t1, $zero, 2
	fst.s	$fa0, $t0, 0
	blt	$a7, $t1, .LBB1_51
# %bb.40:                               # %.lr.ph182
	movgr2fr.w	$fa0, $s3
	ffint.s.w	$fa2, $fa0
	ld.d	$t1, $s8, %pc_lo12(G__align11_noalign.m)
	ori	$t2, $zero, 0
	lu32i.d	$t2, -1
	add.d	$a6, $a6, $t2
	srai.d	$a6, $a6, 30
	bstrpick.d	$t2, $a5, 31, 0
	addi.d	$a5, $t1, 4
	addi.d	$t1, $t2, -1
	movgr2fr.w	$fa0, $zero
	ori	$t2, $zero, 1
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_41:                               # %match_calc_mtx.exit157.thread
                                        #   in Loop: Header=BB1_43 Depth=1
	fld.s	$fa3, $t4, 0
	fst.s	$fa3, $a0, 0
.LBB1_42:                               # %._crit_edge175
                                        #   in Loop: Header=BB1_43 Depth=1
	fldx.s	$fa3, $a0, $a6
	slli.d	$a4, $t2, 2
	addi.d	$t2, $t2, 1
	fstx.s	$fa3, $t0, $a4
	move	$a4, $t3
	beq	$t2, $a7, .LBB1_52
.LBB1_43:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_49 Depth 2
	alsl.d	$t4, $t2, $a1, 2
	fld.s	$fa3, $t4, -4
	move	$t3, $a0
	move	$a0, $a4
	fst.s	$fa3, $t3, 0
	beqz	$s1, .LBB1_41
# %bb.44:                               # %.lr.ph.i152.preheader
                                        #   in Loop: Header=BB1_43 Depth=1
	ldx.b	$a4, $a3, $t2
	slli.d	$a4, $a4, 9
	add.d	$a4, $fp, $a4
	move	$t5, $a0
	move	$t7, $a2
	move	$t6, $s0
	.p2align	4, , 16
.LBB1_45:                               # %.lr.ph.i152
                                        #   Parent Loop BB1_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t8, $t7, 0
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a4, $t8
	addi.w	$t6, $t6, -1
	addi.d	$t7, $t7, 1
	movgr2fr.w	$fa3, $t8
	ffint.s.w	$fa3, $fa3
	addi.d	$t8, $t5, 4
	fst.s	$fa3, $t5, 0
	move	$t5, $t8
	bnez	$t6, .LBB1_45
# %bb.46:                               # %match_calc_mtx.exit157
                                        #   in Loop: Header=BB1_43 Depth=1
	fld.s	$fa3, $t4, 0
	fst.s	$fa3, $a0, 0
	blez	$s1, .LBB1_42
# %bb.47:                               # %.lr.ph174.preheader
                                        #   in Loop: Header=BB1_43 Depth=1
	fld.s	$fa3, $t3, 0
	addi.d	$a4, $a0, 4
	move	$t4, $t1
	move	$t5, $a5
	move	$t6, $t3
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_48:                               #   in Loop: Header=BB1_49 Depth=2
	fadd.s	$fa5, $fa3, $fa1
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa5, $fa4, $fa5, $fcc0
	fld.s	$fa6, $t5, 0
	fcmp.cle.s	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fadd.s	$fa3, $fa3, $fa2
	fadd.s	$fa4, $fa6, $fa2
	fst.s	$fa4, $t5, 0
	fld.s	$fa4, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa5, $fa0
	fsel	$fa0, $fa5, $fa0, $fcc0
	fadd.s	$fa4, $fa0, $fa4
	fst.s	$fa4, $a4, 0
	addi.d	$t6, $t6, 4
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, -1
	addi.d	$a4, $a4, 4
	beqz	$t4, .LBB1_42
.LBB1_49:                               # %.lr.ph174
                                        #   Parent Loop BB1_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t6, 0
	fld.s	$fa0, $t5, 0
	fcmp.cult.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB1_48
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=2
	fst.s	$fa4, $t5, 0
	b	.LBB1_48
.LBB1_51:
	movgr2fr.w	$fa0, $zero
.LBB1_52:                               # %._crit_edge183
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB1_53:
	movgr2fr.w	$fa0, $zero
	b	.LBB1_39
.LBB1_54:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.Lfunc_end1:
	.size	G__align11_noalign, .Lfunc_end1-G__align11_noalign
                                        # -- End function
	.type	G__align11.m,@object            # @G__align11.m
	.local	G__align11.m
	.comm	G__align11.m,8,8
	.type	G__align11.ijp,@object          # @G__align11.ijp
	.local	G__align11.ijp
	.comm	G__align11.ijp,8,8
	.type	G__align11.mp,@object           # @G__align11.mp
	.local	G__align11.mp
	.comm	G__align11.mp,8,8
	.type	G__align11.w1,@object           # @G__align11.w1
	.local	G__align11.w1
	.comm	G__align11.w1,8,8
	.type	G__align11.w2,@object           # @G__align11.w2
	.local	G__align11.w2
	.comm	G__align11.w2,8,8
	.type	G__align11.match,@object        # @G__align11.match
	.local	G__align11.match
	.comm	G__align11.match,8,8
	.type	G__align11.initverticalw,@object # @G__align11.initverticalw
	.local	G__align11.initverticalw
	.comm	G__align11.initverticalw,8,8
	.type	G__align11.lastverticalw,@object # @G__align11.lastverticalw
	.local	G__align11.lastverticalw
	.comm	G__align11.lastverticalw,8,8
	.type	G__align11.mseq1,@object        # @G__align11.mseq1
	.local	G__align11.mseq1
	.comm	G__align11.mseq1,8,8
	.type	G__align11.mseq2,@object        # @G__align11.mseq2
	.local	G__align11.mseq2
	.comm	G__align11.mseq2,8,8
	.type	G__align11.mseq,@object         # @G__align11.mseq
	.local	G__align11.mseq
	.comm	G__align11.mseq,8,8
	.type	G__align11.intwork,@object      # @G__align11.intwork
	.local	G__align11.intwork
	.comm	G__align11.intwork,8,8
	.type	G__align11.floatwork,@object    # @G__align11.floatwork
	.local	G__align11.floatwork
	.comm	G__align11.floatwork,8,8
	.type	G__align11.orlgth1,@object      # @G__align11.orlgth1
	.local	G__align11.orlgth1
	.comm	G__align11.orlgth1,4,4
	.type	G__align11.orlgth2,@object      # @G__align11.orlgth2
	.local	G__align11.orlgth2
	.comm	G__align11.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"WARNING (g11): lgth1=%d, lgth2=%d\n"
	.size	.L.str, 35

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.2, 14

	.type	G__align11_noalign.m,@object    # @G__align11_noalign.m
	.local	G__align11_noalign.m
	.comm	G__align11_noalign.m,8,8
	.type	G__align11_noalign.w1,@object   # @G__align11_noalign.w1
	.local	G__align11_noalign.w1
	.comm	G__align11_noalign.w1,8,8
	.type	G__align11_noalign.w2,@object   # @G__align11_noalign.w2
	.local	G__align11_noalign.w2
	.comm	G__align11_noalign.w2,8,8
	.type	G__align11_noalign.match,@object # @G__align11_noalign.match
	.local	G__align11_noalign.match
	.comm	G__align11_noalign.match,8,8
	.type	G__align11_noalign.initverticalw,@object # @G__align11_noalign.initverticalw
	.local	G__align11_noalign.initverticalw
	.comm	G__align11_noalign.initverticalw,8,8
	.type	G__align11_noalign.lastverticalw,@object # @G__align11_noalign.lastverticalw
	.local	G__align11_noalign.lastverticalw
	.comm	G__align11_noalign.lastverticalw,8,8
	.type	G__align11_noalign.intwork,@object # @G__align11_noalign.intwork
	.local	G__align11_noalign.intwork
	.comm	G__align11_noalign.intwork,8,8
	.type	G__align11_noalign.floatwork,@object # @G__align11_noalign.floatwork
	.local	G__align11_noalign.floatwork
	.comm	G__align11_noalign.floatwork,8,8
	.type	G__align11_noalign.orlgth1,@object # @G__align11_noalign.orlgth1
	.local	G__align11_noalign.orlgth1
	.comm	G__align11_noalign.orlgth1,4,4
	.type	G__align11_noalign.orlgth2,@object # @G__align11_noalign.orlgth2
	.local	G__align11_noalign.orlgth2
	.comm	G__align11_noalign.orlgth2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
