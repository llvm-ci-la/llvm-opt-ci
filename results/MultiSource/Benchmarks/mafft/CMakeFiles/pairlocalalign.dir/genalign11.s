	.file	"genalign11.c"
	.text
	.globl	genL__align11                   # -- Begin function genL__align11
	.p2align	5
	.type	genL__align11,@function
genL__align11:                          # @genL__align11
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty_OP)
	ld.d	$a0, $a0, %got_pc_lo12(penalty_OP)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty_ex)
	ld.d	$a0, $a0, %got_pc_lo12(penalty_ex)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	pcalau12i	$s7, %pc_hi20(genL__align11.orlgth1)
	ld.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.mseq1)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.mseq2)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	bnez	$s6, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(genL__align11.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.mseq2)
.LBB0_2:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s5, $a0
	addi.w	$s1, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(genL__align11.orlgth2)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.w	$s3, $a1, %pc_lo12(genL__align11.orlgth2)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(genL__align11.w1)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.w2)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.initverticalw)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.lastverticalw)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.m)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.mp)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.largeM)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.Mp)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(genL__align11.mseq)
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	blt	$s6, $s1, .LBB0_4
# %bb.3:
	bge	$s3, $s2, .LBB0_8
.LBB0_4:
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(genL__align11.match)
	pcalau12i	$a0, %pc_hi20(genL__align11.cpmx1)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.cpmx2)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(genL__align11.floatwork)
	pcalau12i	$fp, %pc_hi20(genL__align11.intwork)
	blez	$s6, .LBB0_7
# %bb.5:
	blez	$s3, .LBB0_7
# %bb.6:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(genL__align11.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.largeM)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.Mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(genL__align11.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(genL__align11.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(genL__align11.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(genL__align11.orlgth1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(genL__align11.orlgth2)
.LBB0_7:
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 314572
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	addi.w	$s4, $s6, 100
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s1, $s3, 100
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $s5
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(genL__align11.match)
	addi.w	$s7, $s6, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.initverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.mp)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.largeM)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.Mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s1, $s4
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(genL__align11.mseq)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.cpmx2)
	slt	$a0, $s1, $s4
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(genL__align11.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s5
	move	$s5, $fp
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.intwork)
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	st.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(genL__align11.orlgth2)
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
.LBB0_8:
	ld.d	$a0, $s8, %pc_lo12(genL__align11.mseq)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(genL__align11.mseq1)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(genL__align11.mseq2)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s4, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s4, 0
	blt	$a0, $s6, .LBB0_11
# %bb.9:
	blt	$a1, $s3, .LBB0_11
# %bb.10:                               # %._crit_edge344
	pcalau12i	$a0, %got_pc_hi20(commonJP)
	ld.d	$a0, $a0, %got_pc_lo12(commonJP)
	ld.d	$t0, $a0, 0
	b	.LBB0_15
.LBB0_11:
	move	$s8, $s5
	beqz	$a0, .LBB0_14
# %bb.12:
	beqz	$a1, .LBB0_14
# %bb.13:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(commonJP)
	ld.d	$a0, $a0, %got_pc_lo12(commonJP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$s3, $a1, %pc_lo12(genL__align11.orlgth2)
	ld.w	$a1, $s4, 0
.LBB0_14:
	slt	$a2, $a0, $s6
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s6, $a2
	or	$s6, $a2, $a0
	slt	$a0, $a1, $s3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	addi.w	$s5, $s6, 10
	addi.w	$s7, $s3, 10
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$t0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonJP)
	ld.d	$a0, $a0, %got_pc_lo12(commonJP)
	st.d	$t0, $a0, 0
	st.w	$s6, $s1, 0
	st.w	$s3, $s4, 0
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$s5, $s8
.LBB0_15:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(genL__align11.ijpi)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $a1, %pc_lo12(genL__align11.w1)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(genL__align11.w2)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(genL__align11.initverticalw)
	ld.d	$a4, $fp, 0
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a4, $s0, 0
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$a3, $a0, %pc_lo12(genL__align11.ijpi)
	pcalau12i	$a0, %pc_hi20(genL__align11.ijpj)
	st.d	$t0, $a0, %pc_lo12(genL__align11.ijpj)
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	beqz	$fp, .LBB0_18
# %bb.16:                               # %.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.b	$a0, $a0, 0
	slli.d	$a0, $a0, 9
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	add.d	$a0, $a3, $a0
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	move	$a4, $a1
	move	$a3, $s5
	.p2align	4, , 16
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a6, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	addi.w	$a3, $a3, -1
	addi.d	$a6, $a6, 1
	movgr2fr.w	$fa0, $a7
	ffint.s.w	$fa0, $fa0
	addi.d	$a7, $a4, 4
	fst.s	$fa0, $a4, 0
	move	$a4, $a7
	bnez	$a3, .LBB0_17
.LBB0_18:                               # %match_calc.exit
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$t0, $sp, 176                   # 8-byte Folded Spill
	beqz	$s2, .LBB0_26
# %bb.19:                               # %.lr.ph.i257
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.b	$a0, $a0, 0
	slli.d	$a0, $a0, 9
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	add.d	$a0, $a3, $a0
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $a5
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a6, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	addi.w	$a3, $a3, -1
	addi.d	$a6, $a6, 1
	movgr2fr.w	$fa0, $a7
	ffint.s.w	$fa0, $fa0
	addi.d	$a7, $a4, 4
	fst.s	$fa0, $a4, 0
	move	$a4, $a7
	bnez	$a3, .LBB0_20
# %bb.21:                               # %match_calc.exit262
	blez	$s2, .LBB0_26
# %bb.22:                               # %.lr.ph
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.m)
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(genL__align11.mp)
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(genL__align11.largeM)
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(genL__align11.Mp)
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$t1, $a7, -1
	ori	$t2, $zero, 16
	ori	$t0, $zero, 1
	bgeu	$t1, $t2, .LBB0_74
.LBB0_23:                               # %scalar.ph.preheader
	alsl.d	$t1, $t0, $a5, 2
	addi.d	$t1, $t1, -4
	alsl.d	$a0, $t0, $a0, 2
	alsl.d	$a3, $t0, $a3, 2
	alsl.d	$a4, $t0, $a4, 2
	alsl.d	$a6, $t0, $a6, 2
	sub.d	$a7, $a7, $t0
	.p2align	4, , 16
.LBB0_24:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fst.s	$fa0, $a0, 0
	st.w	$zero, $a3, 0
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a6, 0
	addi.d	$t1, $t1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB0_24
.LBB0_25:
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
.LBB0_26:                               # %._crit_edge
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a0, $a6, 32
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	add.d	$a3, $a0, $a3
	srai.d	$a0, $a3, 30
	fldx.s	$fa0, $a5, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(genL__align11.lastverticalw)
	fst.s	$fa0, $a4, 0
	addi.w	$t2, $s5, 1
	add.w	$s6, $t2, $a6
	lu12i.w	$a0, -203034
	ori	$a0, $a0, 2856
	lu32i.d	$a0, 0
	blez	$fp, .LBB0_47
# %bb.27:                               # %.lr.ph313
	move	$s1, $zero
	move	$s8, $zero
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a6
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a6
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	movgr2fr.w	$fa2, $a6
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	movgr2fr.w	$fa3, $a6
	ffint.s.w	$fa4, $fa0
	ffint.s.w	$fa0, $fa1
	ffint.s.w	$fa1, $fa2
	ffint.s.w	$fa2, $fa3
	fneg.s	$fa3, $fa4
	srai.d	$a3, $a3, 32
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(genL__align11.m)
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(genL__align11.largeM)
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(genL__align11.mp)
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(genL__align11.Mp)
	bstrpick.d	$t2, $t2, 31, 0
	ori	$t3, $zero, 1
	movgr2fr.w	$fs0, $a0
	slli.d	$t4, $a3, 2
	lu12i.w	$a0, -223422
	ori	$a0, $a0, 1022
	lu32i.d	$a0, 0
	movgr2fr.w	$fa4, $a0
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %._crit_edge297
                                        #   in Loop: Header=BB0_29 Depth=1
	fldx.s	$fa5, $a2, $t4
	addi.d	$t3, $t3, 1
	fstx.s	$fa5, $a4, $a5
	move	$a5, $a2
	move	$a2, $t5
	beq	$t3, $t2, .LBB0_48
.LBB0_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_35 Depth 2
	addi.d	$t6, $t3, -1
	slli.d	$a0, $t6, 2
	fldx.s	$fa5, $a1, $a0
	move	$t5, $a5
	fst.s	$fa5, $a5, 0
	beqz	$s2, .LBB0_32
# %bb.30:                               # %.lr.ph.i264
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ldx.b	$a0, $a0, $t3
	slli.d	$a0, $a0, 9
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	add.d	$a0, $a3, $a0
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	move	$a5, $a2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_31:                               #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t8, $t7, 0
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a0, $t8
	addi.w	$a3, $a3, -1
	addi.d	$t7, $t7, 1
	movgr2fr.w	$fa5, $t8
	ffint.s.w	$fa5, $fa5
	addi.d	$t8, $a5, 4
	fst.s	$fa5, $a5, 0
	move	$a5, $t8
	bnez	$a3, .LBB0_31
.LBB0_32:                               # %match_calc.exit269
                                        #   in Loop: Header=BB0_29 Depth=1
	slli.d	$a5, $t3, 2
	fldx.s	$fa5, $a1, $a5
	fst.s	$fa5, $a2, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_28
# %bb.33:                               # %.lr.ph296.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	fld.s	$fa5, $t5, 0
	slli.d	$a0, $t3, 3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ldx.d	$t7, $a3, $a0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$t8, $a3, $a0
	move	$s5, $zero
	move	$a3, $zero
	move	$ra, $zero
	move	$s4, $zero
	move	$s7, $zero
	ori	$s3, $zero, 4
	fmov.s	$fa7, $fa4
	fmov.s	$fa6, $fa5
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_35 Depth=2
	addi.w	$a0, $s5, 1
	fcmp.clt.s	$fcc0, $fa5, $ft1
	fsel	$fa5, $fa5, $ft1, $fcc0
	movcf2gr	$fp, $fcc0
	masknez	$s0, $s4, $fp
	maskeqz	$fp, $s5, $fp
	or	$s4, $fp, $s0
	fadd.s	$fa5, $fa5, $fa2
	fcmp.clt.s	$fcc0, $fa6, $ft3
	fsel	$fa6, $fa6, $ft3, $fcc0
	movcf2gr	$fp, $fcc0
	masknez	$s0, $s7, $fp
	maskeqz	$fp, $s5, $fp
	or	$s7, $fp, $s0
	fcmp.clt.s	$fcc0, $fs0, $ft0
	fsel	$fs0, $fs0, $ft0, $fcc0
	movcf2gr	$fp, $fcc0
	masknez	$s0, $s8, $fp
	maskeqz	$s5, $t3, $fp
	or	$s8, $s5, $s0
	fldx.s	$ft0, $a2, $s3
	masknez	$s0, $s1, $fp
	maskeqz	$fp, $a0, $fp
	or	$s1, $fp, $s0
	fadd.s	$ft0, $ft2, $ft0
	fstx.s	$ft0, $a2, $s3
	addi.d	$s3, $s3, 4
	move	$s5, $a0
	beq	$s2, $a0, .LBB0_28
.LBB0_35:                               # %.lr.ph296
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $t5, $s3
	fld.s	$ft1, $a0, -4
	stx.w	$t6, $t8, $s3
	fadd.s	$ft0, $fa5, $fa0
	fcmp.clt.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$fp, $fcc0
	fldx.s	$ft2, $a6, $s3
	masknez	$s0, $s5, $fp
	maskeqz	$fp, $s4, $fp
	or	$fp, $fp, $s0
	fadd.s	$ft3, $ft2, $fa0
	fcmp.cule.s	$fcc0, $ft3, $ft0
	stx.w	$fp, $t7, $s3
	bcnez	$fcc0, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	ldx.w	$fp, $t0, $s3
	stx.w	$fp, $t8, $s3
	stx.w	$s5, $t7, $s3
	fmov.s	$ft0, $ft3
.LBB0_37:                               #   in Loop: Header=BB0_35 Depth=2
	fcmp.cule.s	$fcc0, $ft1, $ft2
	bcnez	$fcc0, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_35 Depth=2
	stx.w	$t6, $t0, $s3
	fmov.s	$ft2, $ft1
.LBB0_39:                               #   in Loop: Header=BB0_35 Depth=2
	fadd.s	$ft3, $ft2, $fa2
	fadd.s	$ft2, $fa7, $fa1
	fcmp.cule.s	$fcc0, $ft2, $ft0
	fstx.s	$ft3, $a6, $s3
	bcnez	$fcc0, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_35 Depth=2
	stx.w	$ra, $t8, $s3
	stx.w	$a3, $t7, $s3
	fmov.s	$ft0, $ft2
.LBB0_41:                               #   in Loop: Header=BB0_35 Depth=2
	fldx.s	$ft2, $a7, $s3
	fcmp.clt.s	$fcc0, $fa7, $fa6
	fsel	$fa7, $fa7, $fa6, $fcc0
	fcmp.cule.s	$fcc1, $ft2, $fa7
	bcnez	$fcc1, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_35 Depth=2
	ldx.w	$ra, $t1, $s3
	fmov.s	$fa7, $ft2
	move	$a3, $s5
	fld.s	$ft3, $a0, -4
	fcmp.cule.s	$fcc0, $ft3, $ft2
	bceqz	$fcc0, .LBB0_44
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_43:                               #   in Loop: Header=BB0_35 Depth=2
	movcf2gr	$fp, $fcc0
	masknez	$s0, $ra, $fp
	maskeqz	$ra, $t6, $fp
	or	$ra, $ra, $s0
	masknez	$a3, $a3, $fp
	maskeqz	$fp, $s7, $fp
	or	$a3, $fp, $a3
	fld.s	$ft3, $a0, -4
	fcmp.cule.s	$fcc0, $ft3, $ft2
	bcnez	$fcc0, .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_35 Depth=2
	fstx.s	$ft3, $a7, $s3
	fld.s	$ft3, $a0, -4
	stx.w	$t6, $t1, $s3
.LBB0_45:                               #   in Loop: Header=BB0_35 Depth=2
	fcmp.cule.s	$fcc0, $fa3, $ft0
	fmov.s	$ft2, $ft0
	bcnez	$fcc0, .LBB0_34
# %bb.46:                               #   in Loop: Header=BB0_35 Depth=2
	stx.w	$s6, $t8, $s3
	fmov.s	$ft2, $fa3
	b	.LBB0_34
.LBB0_47:
	move	$s8, $zero
	move	$s1, $zero
	movgr2fr.w	$fs0, $a0
.LBB0_48:                               # %._crit_edge314
	addi.w	$s7, $s8, 0
	slli.d	$s3, $s7, 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s3
	slli.d	$s5, $s1, 2
	ldx.w	$a0, $a0, $s5
	bne	$a0, $s6, .LBB0_50
# %bb.49:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	movgr2fr.w	$fs0, $zero
	b	.LBB0_85
.LBB0_50:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(genL__align11.mseq1)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(genL__align11.mseq2)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$fp, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	bltz	$fp, .LBB0_53
# %bb.51:                               # %.lr.ph.i270
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	move	$a3, $t2
	.p2align	4, , 16
.LBB0_52:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a3, 0
	st.w	$s6, $a4, 0
	st.w	$s6, $a5, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB0_52
.LBB0_53:                               # %.preheader.i
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB0_61
# %bb.54:                               # %.lr.ph5.i
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $t2, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a6, $zero, 8
	move	$a4, $zero
	bltu	$a3, $a6, .LBB0_59
# %bb.55:                               # %.lr.ph5.i
	sub.d	$a6, $a2, $a1
	ori	$a7, $zero, 32
	bltu	$a6, $a7, .LBB0_59
# %bb.56:                               # %vector.ph394
	bstrpick.d	$a4, $a5, 31, 3
	slli.d	$a4, $a4, 3
	vreplgr2vr.w	$vr0, $s6
	addi.d	$a5, $a2, 16
	addi.d	$a6, $a1, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB0_57:                               # %vector.body397
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a6, -16
	vst	$vr0, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB0_57
# %bb.58:                               # %middle.block400
	beq	$a3, $a4, .LBB0_61
.LBB0_59:                               # %scalar.ph392.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	.p2align	4, , 16
.LBB0_60:                               # %scalar.ph392
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s6, $a1, 0
	st.w	$s6, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB0_60
.LBB0_61:                               # %._crit_edge.i
	ld.d	$a1, $s4, 0
	add.w	$a0, $a0, $s0
	add.d	$a2, $a1, $a0
	st.d	$a2, $s4, 0
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $s2, 0
	add.d	$a2, $a1, $a0
	st.d	$a2, $s2, 0
	stx.b	$zero, $a1, $a0
	bltz	$a0, .LBB0_81
# %bb.62:                               # %.lr.ph22.i
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	ld.d	$a1, $a1, 0
	ldx.d	$a2, $t2, $s3
	ldx.w	$a5, $a1, $s5
	ldx.w	$a6, $a2, $s5
	move	$a2, $zero
	ori	$a1, $zero, 45
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_63:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_67 Depth 2
	move	$a4, $a5
	nor	$a5, $a5, $zero
	add.w	$a7, $s8, $a5
	move	$a3, $a6
	beqz	$a7, .LBB0_66
	.p2align	4, , 16
.LBB0_64:                               # %.lr.ph9.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $s0, 0
	ld.d	$t0, $s4, 0
	add.d	$a6, $a6, $a4
	ldx.b	$a6, $a6, $a7
	addi.d	$t1, $t0, -1
	st.d	$t1, $s4, 0
	st.b	$a6, $t0, -1
	ld.d	$a6, $s2, 0
	addi.d	$t0, $a6, -1
	st.d	$t0, $s2, 0
	addi.d	$a7, $a7, -1
	st.b	$a1, $a6, -1
	bnez	$a7, .LBB0_64
# %bb.65:                               # %._crit_edge10.loopexit.i
                                        #   in Loop: Header=BB0_63 Depth=1
	add.d	$a2, $a2, $a5
	add.d	$a2, $a2, $s8
.LBB0_66:                               # %._crit_edge10.i
                                        #   in Loop: Header=BB0_63 Depth=1
	nor	$a5, $a3, $zero
	add.w	$a5, $s1, $a5
	beqz	$a5, .LBB0_68
	.p2align	4, , 16
.LBB0_67:                               # %.lr.ph14.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $s4, 0
	addi.d	$a7, $a6, -1
	st.d	$a7, $s4, 0
	st.b	$a1, $a6, -1
	ld.d	$a6, $fp, 0
	ld.d	$a7, $s2, 0
	add.d	$a6, $a6, $a3
	ldx.b	$a6, $a6, $a5
	addi.d	$t0, $a7, -1
	st.d	$t0, $s2, 0
	st.b	$a6, $a7, -1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 1
	bnez	$a5, .LBB0_67
.LBB0_68:                               # %._crit_edge15.i
                                        #   in Loop: Header=BB0_63 Depth=1
	addi.w	$a5, $s8, 0
	blez	$a5, .LBB0_73
# %bb.69:                               # %._crit_edge15.i
                                        #   in Loop: Header=BB0_63 Depth=1
	blez	$s1, .LBB0_73
# %bb.70:                               #   in Loop: Header=BB0_63 Depth=1
	ld.d	$a5, $s0, 0
	ld.d	$a6, $s4, 0
	ldx.b	$a5, $a5, $a4
	addi.d	$a7, $a6, -1
	st.d	$a7, $s4, 0
	st.b	$a5, $a6, -1
	ld.d	$a5, $fp, 0
	ld.d	$a6, $s2, 0
	ldx.b	$a5, $a5, $a3
	addi.d	$a7, $a6, -1
	st.d	$a7, $s2, 0
	st.b	$a5, $a6, -1
	slli.d	$a6, $a4, 3
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a6
	slli.d	$a7, $a3, 2
	ldx.w	$a5, $a5, $a7
	beq	$a5, $s6, .LBB0_73
# %bb.71:                               #   in Loop: Header=BB0_63 Depth=1
	ldx.d	$a6, $t2, $a6
	ldx.w	$a6, $a6, $a7
	beq	$a6, $s6, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_63 Depth=1
	addi.w	$a2, $a2, 2
	move	$s8, $a4
	move	$s1, $a3
	bge	$a0, $a2, .LBB0_63
.LBB0_73:                               # %._crit_edge23.i
	addi.d	$a0, $a4, 1
	sltui	$a0, $a0, 1
	masknez	$a0, $a4, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	addi.d	$a0, $a3, 1
	sltui	$a0, $a0, 1
	masknez	$a0, $a3, $a0
	b	.LBB0_82
.LBB0_74:                               # %vector.memcheck
	sub.d	$t3, $a4, $a0
	ori	$t2, $zero, 32
	bltu	$t3, $t2, .LBB0_23
# %bb.75:                               # %vector.memcheck
	sub.d	$t3, $a0, $a5
	addi.d	$t3, $t3, 4
	bltu	$t3, $t2, .LBB0_23
# %bb.76:                               # %vector.memcheck
	sub.d	$t2, $a4, $a5
	addi.d	$t3, $t2, 4
	ori	$t2, $zero, 32
	bltu	$t3, $t2, .LBB0_23
# %bb.77:                               # %vector.memcheck
	sub.d	$t3, $a6, $a3
	bltu	$t3, $t2, .LBB0_23
# %bb.78:                               # %vector.ph
	move	$t2, $t1
	bstrins.d	$t2, $zero, 2, 0
	ori	$t3, $zero, 1
	move	$t0, $t1
	bstrins.d	$t0, $t3, 2, 0
	addi.d	$t3, $a5, 16
	addi.d	$t4, $a0, 20
	addi.d	$t5, $a6, 20
	addi.d	$t6, $a3, 20
	addi.d	$t7, $a4, 20
	vrepli.b	$vr0, 0
	move	$t8, $t2
	.p2align	4, , 16
.LBB0_79:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t3, -16
	vld	$vr2, $t3, 0
	vst	$vr1, $t4, -16
	vst	$vr2, $t4, 0
	vst	$vr0, $t6, -16
	vst	$vr0, $t6, 0
	vst	$vr1, $t7, -16
	vst	$vr2, $t7, 0
	vst	$vr0, $t5, -16
	vst	$vr0, $t5, 0
	addi.d	$t8, $t8, -8
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB0_79
# %bb.80:                               # %middle.block
	bne	$t1, $t2, .LBB0_23
	b	.LBB0_25
.LBB0_81:                               # %.thread.i
	move	$a0, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
.LBB0_82:                               # %gentracking.exit
	ld.d	$s3, $s4, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB0_86
# %bb.83:                               # %gentracking.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB0_86
.LBB0_84:
	ld.d	$a0, $s0, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB0_85:
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_86:
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
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.mseq1)
	ld.d	$s3, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(genL__align11.mseq2)
	b	.LBB0_84
.Lfunc_end0:
	.size	genL__align11, .Lfunc_end0-genL__align11
                                        # -- End function
	.type	genL__align11.m,@object         # @genL__align11.m
	.local	genL__align11.m
	.comm	genL__align11.m,8,8
	.type	genL__align11.largeM,@object    # @genL__align11.largeM
	.local	genL__align11.largeM
	.comm	genL__align11.largeM,8,8
	.type	genL__align11.ijpi,@object      # @genL__align11.ijpi
	.local	genL__align11.ijpi
	.comm	genL__align11.ijpi,8,8
	.type	genL__align11.ijpj,@object      # @genL__align11.ijpj
	.local	genL__align11.ijpj
	.comm	genL__align11.ijpj,8,8
	.type	genL__align11.mp,@object        # @genL__align11.mp
	.local	genL__align11.mp
	.comm	genL__align11.mp,8,8
	.type	genL__align11.Mp,@object        # @genL__align11.Mp
	.local	genL__align11.Mp
	.comm	genL__align11.Mp,8,8
	.type	genL__align11.w1,@object        # @genL__align11.w1
	.local	genL__align11.w1
	.comm	genL__align11.w1,8,8
	.type	genL__align11.w2,@object        # @genL__align11.w2
	.local	genL__align11.w2
	.comm	genL__align11.w2,8,8
	.type	genL__align11.match,@object     # @genL__align11.match
	.local	genL__align11.match
	.comm	genL__align11.match,8,8
	.type	genL__align11.initverticalw,@object # @genL__align11.initverticalw
	.local	genL__align11.initverticalw
	.comm	genL__align11.initverticalw,8,8
	.type	genL__align11.lastverticalw,@object # @genL__align11.lastverticalw
	.local	genL__align11.lastverticalw
	.comm	genL__align11.lastverticalw,8,8
	.type	genL__align11.mseq1,@object     # @genL__align11.mseq1
	.local	genL__align11.mseq1
	.comm	genL__align11.mseq1,8,8
	.type	genL__align11.mseq2,@object     # @genL__align11.mseq2
	.local	genL__align11.mseq2
	.comm	genL__align11.mseq2,8,8
	.type	genL__align11.mseq,@object      # @genL__align11.mseq
	.local	genL__align11.mseq
	.comm	genL__align11.mseq,8,8
	.type	genL__align11.cpmx1,@object     # @genL__align11.cpmx1
	.local	genL__align11.cpmx1
	.comm	genL__align11.cpmx1,8,8
	.type	genL__align11.cpmx2,@object     # @genL__align11.cpmx2
	.local	genL__align11.cpmx2
	.comm	genL__align11.cpmx2,8,8
	.type	genL__align11.intwork,@object   # @genL__align11.intwork
	.local	genL__align11.intwork
	.comm	genL__align11.intwork,8,8
	.type	genL__align11.floatwork,@object # @genL__align11.floatwork
	.local	genL__align11.floatwork
	.comm	genL__align11.floatwork,8,8
	.type	genL__align11.orlgth1,@object   # @genL__align11.orlgth1
	.local	genL__align11.orlgth1
	.comm	genL__align11.orlgth1,4,4
	.type	genL__align11.orlgth2,@object   # @genL__align11.orlgth2
	.local	genL__align11.orlgth2
	.comm	genL__align11.orlgth2,4,4
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
