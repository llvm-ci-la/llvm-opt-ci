	.file	"cfrac.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0                          # -- Begin function pfKnuthEx28
.LCPI0_0:
	.word	0x3f2aaaab                      # float 0.666666686
	.word	0x3faaaaab                      # float 1.33333337
	.text
	.globl	pfKnuthEx28
	.p2align	5
	.type	pfKnuthEx28,@function
pfKnuthEx28:                            # @pfKnuthEx28
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	st.d	$zero, $sp, 0
	beqz	$a1, .LBB0_2
# %bb.1:
	ld.h	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $s0, 0
.LBB0_2:
	ori	$a0, $zero, 2
	bne	$fp, $a0, .LBB0_6
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(podd)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(phalf)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(podd)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_8
# %bb.4:
	bnez	$a0, .LBB0_9
# %bb.5:
	ld.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(phalf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(podd)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_0)
	fldx.s	$fs0, $a1, $a0
	ld.d	$a0, $sp, 0
	bnez	$a0, .LBB0_12
	b	.LBB0_14
.LBB0_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	pcalau12i	$a1, %got_pc_hi20(pone)
	ld.d	$s1, $a1, %got_pc_lo12(pone)
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(psub)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(phalf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ppowmod)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(pcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.7:
	movgr2fr.w	$fs0, $zero
	ld.d	$a0, $sp, 0
	bnez	$a0, .LBB0_12
	b	.LBB0_14
.LBB0_8:
	beqz	$a0, .LBB0_11
.LBB0_9:
	lu12i.w	$a0, 256682
	ori	$a0, $a0, 2731
	movgr2fr.w	$fs0, $a0
	ld.d	$a0, $sp, 0
	bnez	$a0, .LBB0_12
	b	.LBB0_14
.LBB0_10:
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$a1, $fp, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	vldi	$vr2, -784
	fadd.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa0
	ld.d	$a0, $sp, 0
	bnez	$a0, .LBB0_12
	b	.LBB0_14
.LBB0_11:
	ld.d	$a1, $sp, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(pfKnuthEx28)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa0
	ld.d	$a0, $sp, 0
	beqz	$a0, .LBB0_14
.LBB0_12:
	ld.h	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a1, 48
	st.h	$a1, $a0, 0
	bnez	$a2, .LBB0_14
# %bb.13:
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_14:
	beqz	$s0, .LBB0_16
# %bb.15:
	ld.h	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $s0, 0
	beqz	$a1, .LBB0_19
.LBB0_16:
	pcalau12i	$a0, %pc_hi20(debug)
	ld.w	$a0, $a0, %pc_lo12(debug)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB0_18
.LBB0_17:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_18:
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_19:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(debug)
	ld.w	$a0, $a0, %pc_lo12(debug)
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB0_17
	b	.LBB0_18
.Lfunc_end0:
	.size	pfKnuthEx28, .Lfunc_end0-pfKnuthEx28
                                        # -- End function
	.globl	logf_                           # -- Begin function logf_
	.p2align	5
	.type	logf_,@function
logf_:                                  # @logf_
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a1, .LBB1_2
# %bb.1:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
.LBB1_2:
	move	$a0, $a2
	pcaddu18i	$ra, %call36(itop)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pfKnuthEx28)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	bstrpick.d	$a0, $s0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_5
# %bb.3:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $fp, 0
	bnez	$a1, .LBB1_5
# %bb.4:
	move	$a0, $fp
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs1
.LBB1_5:
	fcvt.d.s	$fa1, $fs0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	logf_, .Lfunc_end1-logf_
                                        # -- End function
	.globl	findk                           # -- Begin function findk
	.p2align	5
	.type	findk,@function
findk:                                  # @findk
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
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB2_2
# %bb.1:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
.LBB2_2:
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB2_22
# %bb.3:                                # %.lr.ph61.preheader
	ori	$s3, $zero, 1
	lu12i.w	$a0, -162251
	ori	$a0, $a0, 4009
	lu32i.d	$a0, 0
	movgr2fr.w	$fs2, $a0
	pcalau12i	$s2, %pc_hi20(debug)
	pcalau12i	$a0, %got_pc_hi20(primes)
	ld.d	$a1, $a0, %got_pc_lo12(primes)
	movgr2fr.w	$fs3, $zero
	pcalau12i	$s0, %pc_hi20(verbose)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s1, $zero
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $sp, 92
	fcmp.clt.s	$fcc0, $fs2, $fs1
	fsel	$fs2, $fs2, $fs1, $fcc0
	movcf2gr	$a1, $fcc0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s6, $a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB2_23
.LBB2_5:                                # %.lr.ph61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	ld.w	$a0, $s2, %pc_lo12(debug)
	beqz	$a0, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s4, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fputp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB2_7:                                #   in Loop: Header=BB2_5 Depth=1
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 92
	addi.d	$a2, $sp, 92
	move	$a0, $fp
	move	$a1, $s3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(pfactorbase)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_27
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $a0
	ld.w	$a0, $sp, 92
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s7, $s8, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$s5, $a0, 0
	fmov.s	$fs4, $fs3
	bltu	$s7, $s5, .LBB2_16
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$fp, .LBB2_14
# %bb.10:                               # %.lr.ph.split.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	fmov.s	$fs4, $fs3
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_11:                               # %logf_.exit
                                        #   in Loop: Header=BB2_12 Depth=2
	fcvt.d.s	$fa0, $fs0
	ld.hu	$s5, $s6, 0
	fmul.d	$fa0, $fs1, $fa0
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fs4, $fs4, $fa0
	addi.d	$s6, $s6, 2
	bltu	$s7, $s5, .LBB2_16
.LBB2_12:                               # %.lr.ph.split
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(itop)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(pfKnuthEx28)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	bstrpick.d	$a0, $s5, 15, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.h	$a0, $fp, 0
	fmov.d	$fs1, $fa0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $fp, 0
	bnez	$a1, .LBB2_11
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
	b	.LBB2_11
.LBB2_14:                               # %logf_.exit.us.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	fmov.s	$fs4, $fs3
	.p2align	4, , 16
.LBB2_15:                               # %logf_.exit.us
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(itop)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(pfKnuthEx28)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	bstrpick.d	$a0, $s5, 15, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa1, $fs0
	ld.hu	$s5, $s6, 0
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fadd.s	$fs4, $fs4, $fa0
	addi.d	$s6, $s6, 2
	bgeu	$s7, $s5, .LBB2_15
	.p2align	4, , 16
.LBB2_16:                               # %._crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	bstrpick.d	$a0, $s3, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(verbose)
	fcvt.d.s	$fa1, $fs4
	vldi	$vr2, -800
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fcvt.s.d	$fs1, $fa0
	ori	$s6, $zero, 3
	blt	$a0, $s6, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $s4, 0
	fcvt.d.s	$fa0, $fs1
	movfr2gr.d	$a3, $fa0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_18:                               #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $s2, %pc_lo12(debug)
	beqz	$a0, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s5, $s4, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a2, $fa0
	move	$a0, $s5
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_20:                               #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $s0, %pc_lo12(verbose)
	blt	$a0, $s6, .LBB2_4
# %bb.21:                               #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_22:
	move	$s1, $zero
	move	$s6, $zero
.LBB2_23:                               # %._crit_edge62
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$s1, $a0, 0
	beqz	$fp, .LBB2_26
# %bb.24:
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $fp, 0
	bnez	$a1, .LBB2_26
# %bb.25:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB2_26:
	move	$a0, $s6
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
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
.LBB2_27:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	findk, .Lfunc_end2-findk
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	st.w	$zero, $sp, 52
	ld.d	$a0, $a1, 0
	st.d	$zero, $sp, 40
	st.d	$zero, $sp, 32
	pcalau12i	$a1, %pc_hi20(progName)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(progName)
	ori	$s3, $zero, 3
	lu12i.w	$a0, 262144
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	ori	$s7, $zero, 21
	pcalau12i	$a0, %pc_hi20(.LJTI3_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI3_0)
	pcalau12i	$a0, %got_pc_hi20(optarg)
	ld.d	$fp, $a0, %got_pc_lo12(optarg)
	move	$s0, $zero
	pcalau12i	$s6, %pc_hi20(debug)
	pcalau12i	$s5, %pc_hi20(verbose)
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	ld.w	$a0, $s6, %pc_lo12(debug)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, %pc_lo12(debug)
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(getopt)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -97
	bltu	$s7, $a1, .LBB3_8
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $s8, $a0
	add.d	$a0, $s8, $a0
	jr	$a0
.LBB3_4:                                #   in Loop: Header=BB3_2 Depth=1
	ld.w	$a0, $s5, %pc_lo12(verbose)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(verbose)
	b	.LBB3_2
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB3_2
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB3_2
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB3_2
.LBB3_8:
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB3_31
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(optind)
	ld.d	$a0, $a0, %got_pc_lo12(optind)
	ld.w	$s4, $a0, 0
	sub.w	$fp, $s2, $s4
	addi.w	$a0, $fp, -4
	addi.w	$a1, $zero, -3
	bltu	$a0, $a1, .LBB3_31
# %bb.10:
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s1, $a0
	pcaddu18i	$ra, %call36(atop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.w	$s2, $s3, 0
	bne	$fp, $a0, .LBB3_12
# %bb.11:
	move	$a0, $zero
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $s0, 0
	bnez	$a1, .LBB3_18
	b	.LBB3_16
.LBB3_12:
	alsl.d	$s1, $s4, $s1, 3
	ld.d	$a0, $s1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	st.w	$a0, $sp, 52
	bne	$fp, $a1, .LBB3_14
# %bb.13:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $s0, 0
	bnez	$a1, .LBB3_18
	b	.LBB3_16
.LBB3_14:                               # %.critedge
	move	$fp, $a0
	ld.d	$a0, $s1, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_20
# %bb.15:
	move	$a0, $fp
	addi.w	$a1, $s0, 0
	bnez	$a1, .LBB3_18
.LBB3_16:
	ld.w	$a1, $s5, %pc_lo12(verbose)
	bstrpick.d	$a0, $a0, 31, 1
	addi.w	$s0, $a0, 5
	beqz	$a1, .LBB3_18
# %bb.17:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_18:
	ld.d	$a0, $sp, 40
	addi.w	$a3, $s0, 0
	addi.d	$a1, $sp, 52
	move	$a2, $s2
	pcaddu18i	$ra, %call36(findk)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(verbose)
	move	$s1, $a0
	beqz	$a1, .LBB3_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_20:
	ld.w	$a0, $sp, 52
	st.w	$s3, $sp, 48
	addi.w	$a1, $s1, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(pcfracInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(pcfrac)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 48
	ld.w	$a1, $s5, %pc_lo12(verbose)
	sub.d	$a0, $s3, $a0
	st.w	$a0, $sp, 48
	beqz	$a1, .LBB3_22
# %bb.21:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(cfracNabort)
	ld.d	$a1, $a1, %got_pc_lo12(cfracNabort)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(cfracTsolns)
	ld.d	$a1, $a1, %got_pc_lo12(cfracTsolns)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(cfracT2solns)
	ld.d	$a1, $a1, %got_pc_lo12(cfracT2solns)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(cfracPsolns)
	ld.d	$a1, $a1, %got_pc_lo12(cfracPsolns)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(cfracFsolns)
	ld.d	$a1, $a1, %got_pc_lo12(cfracFsolns)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_22:
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB3_26
# %bb.23:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(fputp)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(fputp)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 32
	addi.d	$a2, $sp, 40
	move	$a3, $zero
	pcaddu18i	$ra, %call36(pdivmod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(fputp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB3_26
# %bb.24:
	ld.h	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a1, 48
	st.h	$a1, $a0, 0
	bnez	$a2, .LBB3_26
# %bb.25:
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB3_26:                               # %.thread
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB3_29
# %bb.27:
	ld.h	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a1, 48
	st.h	$a1, $a0, 0
	bnez	$a2, .LBB3_29
# %bb.28:
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB3_29:
	move	$a0, $zero
.LBB3_30:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB3_31:                               # %.loopexit
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(progName)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB3_30
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_7-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_1-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
                                        # -- End function
	.type	verbose,@object                 # @verbose
	.bss
	.globl	verbose
	.p2align	2, 0x0
verbose:
	.word	0                               # 0x0
	.size	verbose, 4

	.type	debug,@object                   # @debug
	.globl	debug
	.p2align	2, 0x0
debug:
	.word	0                               # 0x0
	.size	debug, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"f(%u,"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"d) = %9.7f\n"
	.size	.L.str.1, 12

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"kN = "
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"couldn't compute factor base in findk\n"
	.size	.L.str.3, 39

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u: %5.2f"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" log(k)/2=%5.2f"
	.size	.L.str.5, 16

	.type	progName,@object                # @progName
	.bss
	.globl	progName
	.p2align	3, 0x0
progName:
	.dword	0
	.size	progName, 8

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"a:k:i:dv"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"usage: %s [-dv] [-a aborts ] [-k maxk ] [-i maxCount ] n [[ m ] k ]\n"
	.size	.L.str.8, 69

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"maxk = %u\n"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"k = %u\n"
	.size	.L.str.10, 8

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Iterations     : %u\n"
	.size	.L.str.11, 21

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Early Aborts   : %u\n"
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Total Partials : %u\n"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Used  Partials : %u\n"
	.size	.L.str.14, 21

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Full Solutions : %u\n"
	.size	.L.str.15, 21

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Factor Attempts: %u\n"
	.size	.L.str.16, 21

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" = "
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	" * "
	.size	.L.str.18, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
