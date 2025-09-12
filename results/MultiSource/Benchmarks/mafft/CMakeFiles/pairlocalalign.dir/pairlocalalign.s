	.file	"pairlocalalign.c"
	.text
	.globl	arguments                       # -- Begin function arguments
	.p2align	5
	.type	arguments,@function
arguments:                              # @arguments
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$s3, $a1
	pcalau12i	$a1, %pc_hi20(foldalignopt)
	addi.d	$a5, $a1, %pc_lo12(foldalignopt)
	st.b	$zero, $a5, 0
	pcalau12i	$a1, %got_pc_hi20(inputfile)
	ld.d	$a6, $a1, %got_pc_lo12(inputfile)
	st.d	$zero, $a6, 0
	pcalau12i	$a1, %got_pc_hi20(fftkeika)
	ld.d	$a1, $a1, %got_pc_lo12(fftkeika)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(pslocal)
	ld.d	$a2, $a1, %got_pc_lo12(pslocal)
	addi.w	$a1, $zero, -1000
	lu32i.d	$a1, 0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(constraint)
	ld.d	$a1, $a1, %got_pc_lo12(constraint)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(nblosum)
	ld.d	$a2, $a1, %got_pc_lo12(nblosum)
	ori	$a1, $zero, 62
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(fmodel)
	ld.d	$s5, $a1, %got_pc_lo12(fmodel)
	st.w	$zero, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(calledByXced)
	ld.d	$a7, $a1, %got_pc_lo12(calledByXced)
	st.w	$zero, $a7, 0
	pcalau12i	$a1, %got_pc_hi20(devide)
	ld.d	$a1, $a1, %got_pc_lo12(devide)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(use_fft)
	ld.d	$t0, $a1, %got_pc_lo12(use_fft)
	st.b	$zero, $t0, 0
	pcalau12i	$a1, %got_pc_hi20(fftscore)
	ld.d	$t1, $a1, %got_pc_lo12(fftscore)
	ori	$a1, $zero, 1
	st.w	$a1, $t1, 0
	pcalau12i	$a2, %got_pc_hi20(fftRepeatStop)
	ld.d	$a2, $a2, %got_pc_lo12(fftRepeatStop)
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(fftNoAnchStop)
	ld.d	$a2, $a2, %got_pc_lo12(fftNoAnchStop)
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(weight)
	ld.d	$a2, $a2, %got_pc_lo12(weight)
	ori	$a3, $zero, 3
	st.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(utree)
	ld.d	$a2, $a2, %got_pc_lo12(utree)
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(tbutree)
	ld.d	$t3, $a2, %got_pc_lo12(tbutree)
	st.w	$a1, $t3, 0
	pcalau12i	$a2, %got_pc_hi20(refine)
	ld.d	$a2, $a2, %got_pc_lo12(refine)
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(check)
	ld.d	$a2, $a2, %got_pc_lo12(check)
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(cut)
	ld.d	$t2, $a2, %got_pc_lo12(cut)
	st.d	$zero, $t2, 0
	pcalau12i	$a2, %got_pc_hi20(disp)
	ld.d	$t4, $a2, %got_pc_lo12(disp)
	st.w	$zero, $t4, 0
	pcalau12i	$a2, %got_pc_hi20(outgap)
	ld.d	$a2, $a2, %got_pc_lo12(outgap)
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(alg)
	ld.d	$s2, $a2, %got_pc_lo12(alg)
	ori	$a2, $zero, 65
	st.b	$a2, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(mix)
	ld.d	$a2, $a2, %got_pc_lo12(mix)
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(tbitr)
	ld.d	$a2, $a2, %got_pc_lo12(tbitr)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(scmtd)
	ld.d	$a2, $a2, %got_pc_lo12(scmtd)
	ori	$a4, $zero, 5
	st.w	$a4, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(tbweight)
	ld.d	$a2, $a2, %got_pc_lo12(tbweight)
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(tbrweight)
	ld.d	$a4, $a2, %got_pc_lo12(tbrweight)
	st.w	$a3, $a4, 0
	pcalau12i	$a2, %got_pc_hi20(checkC)
	ld.d	$t5, $a2, %got_pc_lo12(checkC)
	st.w	$zero, $t5, 0
	pcalau12i	$a2, %got_pc_hi20(treemethod)
	ld.d	$a2, $a2, %got_pc_lo12(treemethod)
	ori	$a3, $zero, 120
	st.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(contin)
	ld.d	$a2, $a2, %got_pc_lo12(contin)
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(scoremtx)
	ld.d	$a2, $a2, %got_pc_lo12(scoremtx)
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a1, $a1, %got_pc_lo12(kobetsubunkatsu)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(divpairscore)
	ld.d	$s6, $a1, %got_pc_lo12(divpairscore)
	st.w	$zero, $s6, 0
	pcalau12i	$s7, %pc_hi20(out_align_instead_of_hat3)
	st.b	$zero, $s7, %pc_lo12(out_align_instead_of_hat3)
	pcalau12i	$a1, %got_pc_hi20(dorp)
	ld.d	$s8, $a1, %got_pc_lo12(dorp)
	lu12i.w	$a1, 24
	ori	$a1, $a1, 1705
	st.w	$a1, $s8, 0
	pcalau12i	$a2, %got_pc_hi20(ppenalty)
	ld.d	$a2, $a2, %got_pc_lo12(ppenalty)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(ppenalty_OP)
	ld.d	$a2, $a2, %got_pc_lo12(ppenalty_OP)
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(ppenalty_ex)
	ld.d	$a2, $a2, %got_pc_lo12(ppenalty_ex)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(ppenalty_EX)
	ld.d	$a2, $a2, %got_pc_lo12(ppenalty_EX)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(poffset)
	ld.d	$a2, $a2, %got_pc_lo12(poffset)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(kimuraR)
	ld.d	$a2, $a2, %got_pc_lo12(kimuraR)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(pamN)
	ld.d	$t6, $a2, %got_pc_lo12(pamN)
	st.w	$a1, $t6, 0
	pcalau12i	$a2, %got_pc_hi20(geta2)
	ld.d	$a2, $a2, %got_pc_lo12(geta2)
	lu12i.w	$a3, 239665
	ori	$a3, $a3, 623
	st.w	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(fftWinSize)
	ld.d	$a2, $a2, %got_pc_lo12(fftWinSize)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(fftThreshold)
	ld.d	$a2, $a2, %got_pc_lo12(fftThreshold)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(RNAppenalty)
	ld.d	$a2, $a2, %got_pc_lo12(RNAppenalty)
	st.w	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(RNApthr)
	ld.d	$a2, $a2, %got_pc_lo12(RNApthr)
	st.w	$a1, $a2, 0
	ori	$a1, $zero, 2
	addi.w	$s4, $a0, -1
	blt	$a0, $a1, .LBB0_54
# %bb.1:                                # %.lr.ph.preheader
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	ori	$s0, $zero, 122
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$fp, $a0, %pc_lo12(.LJTI0_0)
	st.d	$a7, $sp, 208                   # 8-byte Folded Spill
	st.d	$t0, $sp, 200                   # 8-byte Folded Spill
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	st.d	$t3, $sp, 184                   # 8-byte Folded Spill
	st.d	$t4, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$t5, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	ld.d	$a0, $s3, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB0_55
# %bb.3:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$s1, $s3, 8
	b	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 116
	st.b	$a1, $s2, 0
	.p2align	4, , 16
.LBB0_5:                                # %.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a0
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 0
	ld.bu	$a1, $a1, 1
	bltu	$s0, $a1, .LBB0_33
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=2
	slli.d	$a2, $a1, 2
	ldx.w	$a2, $fp, $a2
	add.d	$a2, $fp, $a2
	jr	$a2
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 65
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 1
	st.w	$a1, $s6, 0
	b	.LBB0_5
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=2
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s5, 0
	b	.LBB0_5
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 1
	st.w	$a1, $t5, 0
	b	.LBB0_5
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=2
	st.w	$zero, $t3, 0
	b	.LBB0_5
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 84
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 72
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 115
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 83
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 1
	st.b	$a1, $s7, %pc_lo12(out_align_instead_of_hat3)
	b	.LBB0_5
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 1
	st.b	$a1, $t0, 0
	b	.LBB0_5
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 112
	st.w	$a1, $s8, 0
	b	.LBB0_5
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 1
	st.w	$a1, $a7, 0
	b	.LBB0_5
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 100
	st.w	$a1, $s8, 0
	b	.LBB0_5
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 86
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 66
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_23:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 75
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=2
	st.w	$zero, $t1, 0
	b	.LBB0_5
.LBB0_25:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 76
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 67
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_27:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 77
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 78
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_29:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 82
	st.b	$a1, $s2, 0
	b	.LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 1
	st.w	$a1, $s5, 0
	b	.LBB0_5
.LBB0_31:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 3
	st.w	$a1, $a4, 0
	b	.LBB0_5
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=2
	ori	$a1, $zero, 1
	st.w	$a1, $t4, 0
	b	.LBB0_5
.LBB0_33:                               #   in Loop: Header=BB0_5 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	move	$s4, $zero
	b	.LBB0_5
.LBB0_34:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	vldi	$vr1, -800
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_35:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	vldi	$vr1, -800
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_36:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_37:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	vldi	$vr1, -928
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	pcalau12i	$a1, %got_pc_hi20(ppslocal)
	ld.d	$a1, $a1, %got_pc_lo12(ppslocal)
	st.w	$a0, $a1, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, 209715
	ori	$a0, $a0, 819
	lu32i.d	$a0, 209715
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_38:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	vldi	$vr1, -800
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_39:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	vldi	$vr1, -800
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_40:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_41:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	vldi	$vr1, -800
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_42:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_43:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB0_52
.LBB0_44:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a2, $s3, 16
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$s1, $s3, 16
	pcalau12i	$a1, %pc_hi20(laraparams)
	st.d	$a2, $a1, %pc_lo12(laraparams)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	b	.LBB0_51
.LBB0_45:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(TMorJTT)
	ld.d	$a1, $a1, %got_pc_lo12(TMorJTT)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 0
	ori	$a2, $zero, 201
	st.w	$a2, $a1, 0
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_50
.LBB0_46:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a2, $s1
	stx.h	$a1, $s1, $a0
	ld.d	$a1, $s3, 16
	addi.d	$s1, $s3, 16
	move	$a0, $a2
	move	$s3, $a2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$a2, $s3
	b	.LBB0_51
.LBB0_47:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a2, $s3, 16
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$s1, $s3, 16
	pcalau12i	$a1, %pc_hi20(whereispairalign)
	st.d	$a2, $a1, %pc_lo12(whereispairalign)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	b	.LBB0_51
.LBB0_48:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a2, $s3, 16
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$s1, $s3, 16
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	b	.LBB0_51
.LBB0_49:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s3, 16
	addi.d	$s1, $s3, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(TMorJTT)
	ld.d	$a1, $a1, %got_pc_lo12(TMorJTT)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 0
	ori	$a2, $zero, 202
	st.w	$a2, $a1, 0
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
.LBB0_50:                               # %.loopexit
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $a3
.LBB0_51:                               # %.loopexit
                                        #   in Loop: Header=BB0_2 Depth=1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_52:                               # %.loopexit
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s4, $s4, -1
.LBB0_53:                               # %.loopexit
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $s4
	ori	$a1, $zero, 1
	addi.w	$s4, $s4, -1
	move	$s3, $s1
	blt	$a1, $a0, .LBB0_2
.LBB0_54:                               # %._crit_edge
	beqz	$s4, .LBB0_57
	b	.LBB0_62
.LBB0_55:                               # %.critedge
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB0_62
# %bb.56:                               # %.thread
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
.LBB0_57:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_59
# %bb.58:
	beqz	$a0, .LBB0_63
.LBB0_59:
	ld.bu	$a1, $s2, 0
	ori	$a2, $zero, 67
	bne	$a1, $a2, .LBB0_61
# %bb.60:
	beqz	$a0, .LBB0_64
.LBB0_61:
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB0_62:                               # %.thread54
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_63:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_64:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	arguments, .Lfunc_end0-arguments
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_53-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_25-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_43-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_47-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_37-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_16-.LJTI0_0
	.word	.LBB0_46-.LJTI0_0
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_36-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_40-.LJTI0_0
                                        # -- End function
	.text
	.globl	countamino                      # -- Begin function countamino
	.p2align	5
	.type	countamino,@function
countamino:                             # @countamino
# %bb.0:
	beqz	$a1, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB1_4
# %bb.2:
	move	$a5, $zero
	move	$a2, $a0
	b	.LBB1_7
.LBB1_3:
	move	$a5, $zero
	addi.w	$a0, $a5, 0
	ret
.LBB1_4:                                # %vector.ph
	bstrpick.d	$a3, $a1, 31, 0
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a4, $a2, 3
	sub.d	$a1, $a1, $a4
	alsl.d	$a2, $a2, $a0, 3
	addi.d	$a0, $a0, 4
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.w	$vr2, 1
	move	$a5, $a4
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, -4
	ld.w	$a7, $a0, 0
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 0
	vseq.b	$vr4, $vr4, $vr1
	vxori.b	$vr4, $vr4, 255
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr2
	vseq.b	$vr5, $vr5, $vr1
	vxori.b	$vr5, $vr5, 255
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a5, $a5, -8
	addi.d	$a0, $a0, 8
	bnez	$a5, .LBB1_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr3, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a4, $a3, .LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -45
	sltu	$a0, $zero, $a0
	add.d	$a5, $a5, $a0
	bnez	$a1, .LBB1_7
.LBB1_8:                                # %._crit_edge
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end1:
	.size	countamino, .Lfunc_end1-countamino
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -1504
	st.d	$ra, $sp, 1496                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1488                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1480                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1472                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1464                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1456                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1448                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1440                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1432                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1424                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1416                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1408                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1400                 # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(arguments)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(inputfile)
	ld.d	$s0, $a0, %got_pc_lo12(inputfile)
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$fp, $a0, 0
	b	.LBB2_3
.LBB2_2:
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB2_247
.LBB2_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getnumlen)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s4, $a0, %got_pc_lo12(njob)
	ld.w	$a2, $s4, 0
	ori	$a0, $zero, 1
	bge	$a0, $a2, .LBB2_244
# %bb.4:
	lu12i.w	$a3, 12
	ori	$a0, $a3, 849
	bgeu	$a2, $a0, .LBB2_245
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(nlenmax)
	ld.d	$s0, $a0, %got_pc_lo12(nlenmax)
	ld.w	$a0, $s0, 0
	alsl.d	$a0, $a0, $a0, 3
	addi.w	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$s1, %pc_hi20(main.seq)
	ld.w	$a2, $s4, 0
	st.d	$a0, $s1, %pc_lo12(main.seq)
	alsl.d	$a0, $a1, $a1, 3
	addi.w	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a3, %pc_hi20(main.aseq)
	ld.w	$a2, $s4, 0
	st.d	$a3, $sp, 376                   # 8-byte Folded Spill
	st.d	$a0, $a3, %pc_lo12(main.aseq)
	alsl.d	$a0, $a1, $a1, 3
	addi.w	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	pcalau12i	$s3, %pc_hi20(main.bseq)
	st.d	$a0, $s3, %pc_lo12(main.bseq)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	pcalau12i	$a2, %pc_hi20(main.mseq1)
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(main.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.w	$a1, $s4, 0
	pcalau12i	$a2, %pc_hi20(main.mseq2)
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(main.mseq2)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, %pc_lo12(main.seq)
	pcalau12i	$s8, %pc_hi20(main.eff)
	st.d	$a0, $s8, %pc_lo12(main.eff)
	pcalau12i	$a0, %pc_hi20(main.name)
	addi.d	$a1, $a0, %pc_lo12(main.name)
	pcalau12i	$a0, %pc_hi20(main.nlen)
	addi.d	$a2, $a0, %pc_lo12(main.nlen)
	move	$a0, $fp
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(readData)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s1, %pc_lo12(main.seq)
	pcaddu18i	$ra, %call36(constants)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(initSignalSM)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(initFiles)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(trap_g)
	ld.d	$s6, $a0, %got_pc_lo12(trap_g)
	ld.d	$fp, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(dorp)
	ld.d	$a0, $a0, %got_pc_lo12(dorp)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB2_8
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
.LBB2_7:
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB2_15
.LBB2_8:
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB2_12
# %bb.9:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB2_13
# %bb.10:
	bnez	$a0, .LBB2_15
# %bb.11:
	pcalau12i	$a0, %got_pc_hi20(pamN)
	ld.d	$a0, $a0, %got_pc_lo12(pamN)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	b	.LBB2_14
.LBB2_12:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	b	.LBB2_7
.LBB2_13:
	pcalau12i	$a0, %got_pc_hi20(nblosum)
	ld.d	$a0, $a0, %got_pc_lo12(nblosum)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
.LBB2_14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_15:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(ppenalty)
	ld.d	$s7, $a1, %got_pc_lo12(ppenalty)
	ld.w	$a1, $s7, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	movgr2fr.d	$fa1, $a1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %got_pc_hi20(ppenalty_ex)
	ld.d	$s0, $a1, %got_pc_lo12(ppenalty_ex)
	ld.w	$a1, $s0, 0
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	pcalau12i	$a1, %got_pc_hi20(poffset)
	ld.d	$s2, $a1, %got_pc_lo12(poffset)
	ld.w	$a1, $s2, 0
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa1, $fa3, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(use_fft)
	ld.d	$a0, $a0, %got_pc_lo12(use_fft)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB2_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB2_17:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(tbrweight)
	ld.d	$s5, $a0, %got_pc_lo12(tbrweight)
	ld.w	$a0, $s5, 0
	ori	$a1, $zero, 3
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB2_20
# %bb.18:
	bnez	$a0, .LBB2_22
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 11
	b	.LBB2_21
.LBB2_20:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 24
.LBB2_21:
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB2_22:
	pcalau12i	$a0, %got_pc_hi20(tbitr)
	ld.d	$s4, $a0, %got_pc_lo12(tbitr)
	ld.w	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(tbweight)
	ld.d	$s6, $a1, %got_pc_lo12(tbweight)
	ld.w	$a1, $s6, 0
	or	$a0, $a0, $a1
	beqz	$a0, .LBB2_32
# %bb.23:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	ld.w	$a0, $s5, 0
	beqz	$a1, .LBB2_26
# %bb.24:
	bnez	$a0, .LBB2_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	ld.w	$a0, $s5, 0
.LBB2_26:
	beqz	$a1, .LBB2_29
# %bb.27:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_29
# %bb.28:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB2_29:
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB2_31
# %bb.30:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB2_31:
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB2_32:
	ld.w	$a0, $s7, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	ld.w	$a1, $s0, 0
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	ld.w	$a0, $s2, 0
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa1, $fa3, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(alg)
	ld.d	$s6, $a0, %got_pc_lo12(alg)
	ld.bu	$a0, $s6, 0
	addi.d	$a0, $a0, -65
	ori	$a1, $zero, 32
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB2_38
# %bb.33:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_34:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 13
	b	.LBB2_39
.LBB2_35:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 15
	b	.LBB2_39
.LBB2_36:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 12
	b	.LBB2_39
.LBB2_37:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 12
	b	.LBB2_39
.LBB2_38:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 18
.LBB2_39:
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.bu	$a0, $s5, 0
	beqz	$a0, .LBB2_42
# %bb.40:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB2_43
# %bb.41:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 22
	b	.LBB2_46
.LBB2_42:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB2_47
.LBB2_43:
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_45
# %bb.44:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 28
	b	.LBB2_46
.LBB2_45:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 23
.LBB2_46:
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fftThreshold)
	ld.d	$a0, $a0, %got_pc_lo12(fftThreshold)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fftWinSize)
	ld.d	$a0, $a0, %got_pc_lo12(fftWinSize)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_47:                               # %WriteOptions.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(main.seq)
	pcaddu18i	$ra, %call36(seqcheck)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_249
# %bb.48:                               # %.preheader28
	ld.w	$s7, $s4, 0
	blez	$s7, .LBB2_58
# %bb.49:                               # %.lr.ph
	ld.d	$a0, $s8, %pc_lo12(main.eff)
	ori	$a1, $zero, 4
	bgeu	$s7, $a1, .LBB2_51
# %bb.50:
	move	$a1, $zero
	b	.LBB2_54
.LBB2_51:                               # %vector.ph
	bstrpick.d	$a1, $s7, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $a0, 16
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr0, $a3
	move	$a3, $a1
	.p2align	4, , 16
.LBB2_52:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB2_52
# %bb.53:                               # %middle.block
	beq	$a1, $s7, .LBB2_56
.LBB2_54:                               # %scalar.ph.preheader
	alsl.d	$a0, $a1, $a0, 3
	sub.d	$a1, $s7, $a1
	lu52i.d	$a2, $zero, 1023
	.p2align	4, , 16
.LBB2_55:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_55
.LBB2_56:                               # %.lr.ph49.preheader
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_57:                               # %.lr.ph49
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, %pc_lo12(main.bseq)
	ld.d	$a1, $s1, %pc_lo12(main.seq)
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(gappick0)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s4, 0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $s7, .LBB2_57
.LBB2_58:
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $s3, %pc_lo12(main.bseq)
	ld.d	$a0, $a0, %pc_lo12(main.aseq)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $a1, %pc_lo12(main.mseq1)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $a2, %pc_lo12(main.mseq2)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $s8, %pc_lo12(main.eff)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $s7
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s7, .LBB2_63
# %bb.59:                               # %.lr.ph.preheader.i.preheader
	move	$fp, $zero
	addi.w	$s0, $zero, -1
	lu52i.d	$s2, $zero, -1025
	.p2align	4, , 16
.LBB2_60:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_61 Depth 2
	ori	$a1, $zero, 80
	move	$a0, $s7
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $fp, 3
	stx.d	$a0, $s3, $a1
	addi.d	$a0, $a0, 24
	move	$a1, $s7
	.p2align	4, , 16
.LBB2_61:                               # %.lr.ph.i
                                        #   Parent Loop BB2_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s0, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$s2, $a0, 16
	st.d	$zero, $a0, -16
	st.w	$zero, $a0, -24
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 80
	bnez	$a1, .LBB2_61
# %bb.62:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_60 Depth=1
	addi.d	$fp, $fp, 1
	bne	$fp, $s7, .LBB2_60
.LBB2_63:                               # %._crit_edge26.i
	pcalau12i	$s0, %pc_hi20(pairalign.effarr1)
	ld.d	$a0, $s0, %pc_lo12(pairalign.effarr1)
	pcalau12i	$fp, %pc_hi20(pairalign.distancemtx)
	pcalau12i	$s2, %pc_hi20(pairalign.pair)
	bnez	$a0, .LBB2_65
# %bb.64:
	move	$a0, $s7
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	st.d	$a0, $fp, %pc_lo12(pairalign.distancemtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	st.d	$a0, $s0, %pc_lo12(pairalign.effarr1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(pairalign.effarr2)
	st.d	$a0, $a1, %pc_lo12(pairalign.effarr2)
	ori	$a0, $zero, 150
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(pairalign.indication1)
	st.d	$a0, $a1, %pc_lo12(pairalign.indication1)
	ori	$a0, $zero, 150
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	pcalau12i	$a2, %pc_hi20(pairalign.indication2)
	st.d	$a0, $a2, %pc_lo12(pairalign.indication2)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s4, 0
	st.d	$a0, $s2, %pc_lo12(pairalign.pair)
.LBB2_65:
	blez	$s7, .LBB2_74
# %bb.66:                               # %.preheader8.preheader.i
	ld.d	$a0, $s2, %pc_lo12(pairalign.pair)
	move	$a1, $zero
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_67:                               # %._crit_edge29.i
                                        #   in Loop: Header=BB2_68 Depth=1
	addi.d	$a1, $a1, 1
	bge	$a1, $s7, .LBB2_71
.LBB2_68:                               # %.preheader8.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_70 Depth 2
	blez	$s7, .LBB2_67
# %bb.69:                               # %.lr.ph28.i
                                        #   in Loop: Header=BB2_68 Depth=1
	move	$a2, $zero
	alsl.d	$a3, $a1, $a0, 3
	.p2align	4, , 16
.LBB2_70:                               #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a2
	ld.w	$s7, $s4, 0
	addi.d	$a2, $a2, 1
	blt	$a2, $s7, .LBB2_70
	b	.LBB2_67
.LBB2_71:                               # %.preheader7.i
	blez	$s7, .LBB2_74
# %bb.72:                               # %.lr.ph32.i.preheader
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB2_73:                               # %.lr.ph32.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	stx.b	$a2, $a3, $a1
	ld.w	$s7, $s4, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	blt	$a1, $s7, .LBB2_73
.LBB2_74:                               # %._crit_edge33.i
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 83
	st.d	$s6, $sp, 288                   # 8-byte Folded Spill
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_78
# %bb.75:                               # %._crit_edge33.i
	ori	$a1, $zero, 72
	beq	$a0, $a1, .LBB2_205
# %bb.76:                               # %._crit_edge33.i
	ori	$a1, $zero, 66
                                        # implicit-def: $r6
                                        # kill: killed $r6
	bne	$a0, $a1, .LBB2_80
# %bb.77:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 56
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a2, $a1, %pc_lo12(.L.str.50)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(calllara)
	jirl	$ra, $ra, 0
.LBB2_78:                               # %._crit_edge33.i
	ori	$a1, $zero, 115
	beq	$a0, $a1, .LBB2_217
# %bb.79:                               # %._crit_edge33.i
	ori	$a1, $zero, 84
                                        # implicit-def: $r6
                                        # kill: killed $r6
	beq	$a0, $a1, .LBB2_250
.LBB2_80:
	ori	$a0, $zero, 2
	pcalau12i	$a1, %pc_hi20(out_align_instead_of_hat3)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	blt	$s7, $a0, .LBB2_171
.LBB2_81:                               # %.lr.ph45.i
	st.d	$s2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.w	$a0, $a0, $a0, 3
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a0, $s7, -1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 231296
	lu52i.d	$a0, $a0, -1012
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(pairalign.indication1)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(pairalign.effarr2)
	pcalau12i	$a0, %pc_hi20(pairalign.indication2)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI2_2)
	addi.d	$a0, $a0, %pc_lo12(.LJTI2_2)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(recalllara.fp)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s3, $zero, 52
	st.d	$s5, $sp, 248                   # 8-byte Folded Spill
.LBB2_82:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_85 Depth 2
                                        #       Child Loop BB2_124 Depth 3
                                        #       Child Loop BB2_133 Depth 3
                                        #       Child Loop BB2_142 Depth 3
                                        #       Child Loop BB2_151 Depth 3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s4, 0
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	bge	$a0, $s7, .LBB2_170
# %bb.83:                               # %.lr.ph40.i
                                        #   in Loop: Header=BB2_82 Depth=1
	alsl.d	$s8, $s2, $s1, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $s2, 8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	b	.LBB2_85
	.p2align	4, , 16
.LBB2_84:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $fp, %pc_lo12(pairalign.distancemtx)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	stx.d	$a1, $a0, $a4
	ld.w	$s7, $s4, 0
	addi.w	$a0, $a2, 0
	bge	$a0, $s7, .LBB2_170
.LBB2_85:                               #   Parent Loop BB2_82 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_124 Depth 3
                                        #       Child Loop BB2_133 Depth 3
                                        #       Child Loop BB2_142 Depth 3
                                        #       Child Loop BB2_151 Depth 3
	ld.d	$a1, $s8, 0
	ld.bu	$a0, $a1, 0
	move	$s2, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a4, $s2, 3
	beqz	$a0, .LBB2_84
# %bb.86:                               #   in Loop: Header=BB2_85 Depth=2
	ldx.d	$a0, $s1, $a4
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB2_84
# %bb.87:                               #   in Loop: Header=BB2_85 Depth=2
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	alsl.d	$fp, $s2, $s1, 3
	move	$s6, $a4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$s7, $s5
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	st.d	$s6, $sp, 352                   # 8-byte Folded Spill
	ldx.d	$a0, $s5, $s6
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(pairalign.pair)
	ld.d	$a4, $s0, %pc_lo12(pairalign.effarr1)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $a1, %pc_lo12(pairalign.indication1)
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	move	$a3, $s6
	move	$s8, $s0
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	move	$a5, $s0
	pcaddu18i	$ra, %call36(conjuctionfortbfast)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(pairalign.pair)
	ld.d	$a4, $s7, %pc_lo12(pairalign.effarr2)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a6, $a2, %pc_lo12(pairalign.indication2)
	move	$fp, $a0
	move	$a0, $a1
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	move	$a1, $s2
	move	$a2, $s5
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(conjuctionfortbfast)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.bu	$a1, $s5, 0
	move	$a5, $a0
	beqz	$a1, .LBB2_99
# %bb.88:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a2, $s8, %pc_lo12(pairalign.effarr1)
	ld.d	$a3, $s7, %pc_lo12(pairalign.effarr2)
	addi.d	$a7, $sp, 384
	move	$a0, $s6
	move	$a1, $s2
	move	$a4, $fp
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Falign)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	st.w	$zero, $sp, 388
	st.w	$zero, $sp, 392
	move	$s0, $s8
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ori	$s7, $zero, 116
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
.LBB2_89:                               # %thread-pre-split.i
                                        #   in Loop: Header=BB2_85 Depth=2
	ld.bu	$a0, $s6, 0
.LBB2_90:                               #   in Loop: Header=BB2_85 Depth=2
	fcvt.d.s	$fs1, $fs0
	beq	$a0, $s7, .LBB2_93
# %bb.91:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB2_103
# %bb.92:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $s2, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB2_103
.LBB2_93:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(pairalign.distancemtx)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	fstx.d	$fs1, $a0, $a1
	ld.bu	$a1, $s6, 0
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	beq	$a1, $s7, .LBB2_107
# %bb.94:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.b	$a0, $a0, %pc_lo12(out_align_instead_of_hat3)
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_107
# %bb.95:                               #   in Loop: Header=BB2_85 Depth=2
	ori	$a0, $zero, 86
	beq	$a1, $a0, .LBB2_107
# %bb.96:                               #   in Loop: Header=BB2_85 Depth=2
	ori	$a0, $zero, 83
	beq	$a1, $a0, .LBB2_107
# %bb.97:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	slli.d	$a0, $a3, 6
	ftintrz.w.s	$fa0, $fs0
	ori	$a2, $zero, 72
	bne	$a1, $a2, .LBB2_104
# %bb.98:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$s6, $sp, 392
	ld.w	$s8, $sp, 388
	alsl.d	$a0, $a3, $a0, 4
	add.d	$s2, $a1, $a0
	movfr2gr.s	$s5, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a6, $a0, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s8
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	move	$a5, $s5
	pcaddu18i	$ra, %call36(putlocalhom_ext)
	jirl	$ra, $ra, 0
	b	.LBB2_105
.LBB2_99:                               #   in Loop: Header=BB2_85 Depth=2
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.bu	$a0, $s6, 0
	addi.d	$a1, $a0, -65
	ori	$a2, $zero, 51
	ori	$s7, $zero, 116
	bltu	$a2, $a1, .LBB2_160
# %bb.100:                              #   in Loop: Header=BB2_85 Depth=2
	slli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	move	$s0, $s8
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	jr	$a1
.LBB2_101:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $s2, %pc_lo12(recalllara.fp)
	pcalau12i	$a0, %pc_hi20(recalllara.ori2)
	pcalau12i	$s6, %pc_hi20(recalllara.ungap1)
	pcalau12i	$s5, %pc_hi20(recalllara.ungap2)
	pcalau12i	$s8, %pc_hi20(recalllara.ori1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	beqz	$fp, .LBB2_119
# %bb.102:                              # %._crit_edge.i275.i
                                        #   in Loop: Header=BB2_85 Depth=2
	ld.d	$s6, $a0, %pc_lo12(recalllara.ori2)
	b	.LBB2_121
.LBB2_103:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(pairalign.distancemtx)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	stx.d	$a1, $a0, $a2
	b	.LBB2_106
.LBB2_104:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$s2, $sp, 392
	ld.w	$s5, $sp, 388
	alsl.d	$a0, $a3, $a0, 4
	add.d	$s6, $a1, $a0
	movfr2gr.s	$s8, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a6, $a0, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s8
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(putlocalhom2)
	jirl	$ra, $ra, 0
.LBB2_105:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
.LBB2_106:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
.LBB2_107:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(out_align_instead_of_hat3)
	beqz	$a0, .LBB2_110
# %bb.108:                              #   in Loop: Header=BB2_85 Depth=2
	ld.bu	$a0, $s6, 0
	beq	$a0, $s7, .LBB2_110
# %bb.109:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	move	$s5, $s2
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s2, 0
	addi.w	$a3, $a2, 0
	movfr2gr.d	$a4, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$fp, $a1, %pc_lo12(.L.str.57)
	move	$a1, $fp
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(write1seq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	move	$a1, $fp
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s5, 0
	pcaddu18i	$ra, %call36(write1seq)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
.LBB2_110:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$s7, $s4, 0
	addi.w	$a0, $a2, 0
	blt	$a0, $s7, .LBB2_85
	b	.LBB2_170
.LBB2_111:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(G__align11)
	jirl	$ra, $ra, 0
	b	.LBB2_118
.LBB2_112:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(genG__align11)
	jirl	$ra, $ra, 0
	b	.LBB2_118
.LBB2_113:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(penalty_ex)
	ld.d	$a0, $a0, %got_pc_lo12(penalty_ex)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(amino_dis)
	ld.d	$a0, $a0, %got_pc_lo12(amino_dis)
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s2
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	move	$a5, $s2
	pcaddu18i	$ra, %call36(G__align11_noalign)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	addi.d	$a3, $sp, 392
	addi.d	$a4, $sp, 388
	move	$a0, $fp
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(L__align11)
	jirl	$ra, $ra, 0
	b	.LBB2_89
.LBB2_114:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MSalign11)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	b	.LBB2_89
.LBB2_115:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(penalty_ex)
	ld.d	$a0, $a0, %got_pc_lo12(penalty_ex)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(amino_dis)
	ld.d	$a0, $a0, %got_pc_lo12(amino_dis)
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s2
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	move	$a5, $s2
	pcaddu18i	$ra, %call36(G__align11_noalign)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	addi.d	$a3, $sp, 392
	addi.d	$a4, $sp, 388
	move	$a0, $fp
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(genL__align11)
	jirl	$ra, $ra, 0
	b	.LBB2_89
.LBB2_116:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a2, $s0, %pc_lo12(pairalign.effarr1)
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(pairalign.effarr2)
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	move	$a1, $s2
	move	$a4, $fp
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Aalign)
	jirl	$ra, $ra, 0
	b	.LBB2_118
.LBB2_117:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(penalty_ex)
	ld.d	$a0, $a0, %got_pc_lo12(penalty_ex)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(amino_dis)
	ld.d	$a0, $a0, %got_pc_lo12(amino_dis)
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	move	$a4, $s2
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(G__align11_noalign)
	jirl	$ra, $ra, 0
.LBB2_118:                              # %thread-pre-split.i
                                        #   in Loop: Header=BB2_85 Depth=2
	fmov.s	$fs0, $fa0
	st.w	$zero, $sp, 388
	st.w	$zero, $sp, 392
	b	.LBB2_89
.LBB2_119:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(recalllara.fp)
	beqz	$a0, .LBB2_254
# %bb.120:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(recalllara.ungap1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(recalllara.ungap2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(recalllara.ori1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, %pc_lo12(recalllara.fp)
	move	$s6, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$s6, $a0, %pc_lo12(recalllara.ori2)
.LBB2_121:                              #   in Loop: Header=BB2_85 Depth=2
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $s8, %pc_lo12(recalllara.ori1)
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $s5, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(recalllara.com)
	addi.d	$s6, $a0, %pc_lo12(recalllara.com)
	ori	$a1, $zero, 999
	move	$a0, $s6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, %pc_lo12(recalllara.fp)
	move	$a0, $s6
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(myfgets)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, %pc_lo12(recalllara.fp)
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(myfgets)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s2, %pc_lo12(recalllara.ungap1)
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(gappick0)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(recalllara.ungap2)
	ld.d	$a1, $s5, 0
	pcaddu18i	$ra, %call36(gappick0)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(recalllara.ungap1)
	move	$a1, $a0
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	move	$s2, $fp
	b	.LBB2_124
.LBB2_122:                              #   in Loop: Header=BB2_124 Depth=3
	ori	$a2, $zero, 103
	.p2align	4, , 16
.LBB2_123:                              #   in Loop: Header=BB2_124 Depth=3
	st.b	$a2, $a1, 0
	addi.d	$a1, $a1, 1
.LBB2_124:                              #   Parent Loop BB2_82 Depth=1
                                        #     Parent Loop BB2_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	addi.d	$a3, $a2, -65
	bltu	$s3, $a3, .LBB2_128
# %bb.125:                              #   in Loop: Header=BB2_124 Depth=3
	ori	$a2, $zero, 97
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI2_3)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_3)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB2_126:                              #   in Loop: Header=BB2_124 Depth=3
	ori	$a2, $zero, 117
	b	.LBB2_123
.LBB2_127:                              #   in Loop: Header=BB2_124 Depth=3
	ori	$a2, $zero, 99
	b	.LBB2_123
.LBB2_128:                              #   in Loop: Header=BB2_124 Depth=3
	beqz	$a2, .LBB2_130
.LBB2_129:                              #   in Loop: Header=BB2_124 Depth=3
	ori	$a2, $zero, 110
	b	.LBB2_123
.LBB2_130:                              # %t2u.exit.i278.i
                                        #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a1, $s2, %pc_lo12(recalllara.ungap2)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB2_133
.LBB2_131:                              #   in Loop: Header=BB2_133 Depth=3
	ori	$a2, $zero, 103
	.p2align	4, , 16
.LBB2_132:                              #   in Loop: Header=BB2_133 Depth=3
	st.b	$a2, $a1, 0
	addi.d	$a1, $a1, 1
.LBB2_133:                              #   Parent Loop BB2_82 Depth=1
                                        #     Parent Loop BB2_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	addi.d	$a3, $a2, -65
	bltu	$s3, $a3, .LBB2_137
# %bb.134:                              #   in Loop: Header=BB2_133 Depth=3
	ori	$a2, $zero, 97
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI2_4)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_4)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB2_135:                              #   in Loop: Header=BB2_133 Depth=3
	ori	$a2, $zero, 117
	b	.LBB2_132
.LBB2_136:                              #   in Loop: Header=BB2_133 Depth=3
	ori	$a2, $zero, 99
	b	.LBB2_132
.LBB2_137:                              #   in Loop: Header=BB2_133 Depth=3
	beqz	$a2, .LBB2_139
.LBB2_138:                              #   in Loop: Header=BB2_133 Depth=3
	ori	$a2, $zero, 110
	b	.LBB2_132
.LBB2_139:                              # %t2u.exit17.i.i
                                        #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(recalllara.ori1)
	move	$a2, $a1
	b	.LBB2_142
.LBB2_140:                              #   in Loop: Header=BB2_142 Depth=3
	ori	$a3, $zero, 103
	.p2align	4, , 16
.LBB2_141:                              #   in Loop: Header=BB2_142 Depth=3
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
.LBB2_142:                              #   Parent Loop BB2_82 Depth=1
                                        #     Parent Loop BB2_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a2, 0
	addi.d	$a4, $a3, -65
	bltu	$s3, $a4, .LBB2_146
# %bb.143:                              #   in Loop: Header=BB2_142 Depth=3
	ori	$a3, $zero, 97
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI2_5)
	addi.d	$a5, $a5, %pc_lo12(.LJTI2_5)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB2_144:                              #   in Loop: Header=BB2_142 Depth=3
	ori	$a3, $zero, 117
	b	.LBB2_141
.LBB2_145:                              #   in Loop: Header=BB2_142 Depth=3
	ori	$a3, $zero, 99
	b	.LBB2_141
.LBB2_146:                              #   in Loop: Header=BB2_142 Depth=3
	beqz	$a3, .LBB2_148
.LBB2_147:                              #   in Loop: Header=BB2_142 Depth=3
	ori	$a3, $zero, 110
	b	.LBB2_141
.LBB2_148:                              # %t2u.exit20.i.i
                                        #   in Loop: Header=BB2_85 Depth=2
	ld.d	$fp, $s6, %pc_lo12(recalllara.ori2)
	move	$a2, $fp
	b	.LBB2_151
.LBB2_149:                              #   in Loop: Header=BB2_151 Depth=3
	ori	$a3, $zero, 103
	.p2align	4, , 16
.LBB2_150:                              #   in Loop: Header=BB2_151 Depth=3
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
.LBB2_151:                              #   Parent Loop BB2_82 Depth=1
                                        #     Parent Loop BB2_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a2, 0
	addi.d	$a4, $a3, -65
	bltu	$s3, $a4, .LBB2_155
# %bb.152:                              #   in Loop: Header=BB2_151 Depth=3
	ori	$a3, $zero, 97
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI2_6)
	addi.d	$a5, $a5, %pc_lo12(.LJTI2_6)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB2_153:                              #   in Loop: Header=BB2_151 Depth=3
	ori	$a3, $zero, 117
	b	.LBB2_150
.LBB2_154:                              #   in Loop: Header=BB2_151 Depth=3
	ori	$a3, $zero, 99
	b	.LBB2_150
.LBB2_155:                              #   in Loop: Header=BB2_151 Depth=3
	beqz	$a3, .LBB2_157
.LBB2_156:                              #   in Loop: Header=BB2_151 Depth=3
	ori	$a3, $zero, 110
	b	.LBB2_150
.LBB2_157:                              # %t2u.exit23.i.i
                                        #   in Loop: Header=BB2_85 Depth=2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_248
# %bb.158:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_248
# %bb.159:                              # %recalllara.exit.i
                                        #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(penalty)
	ld.d	$a2, $a2, %got_pc_lo12(penalty)
	ld.w	$a2, $a2, 0
	pcaddu18i	$ra, %call36(naivepairscore11)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	st.w	$zero, $sp, 388
	st.w	$zero, $sp, 392
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	b	.LBB2_89
.LBB2_160:                              #   in Loop: Header=BB2_85 Depth=2
	move	$s0, $s8
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	b	.LBB2_90
.LBB2_161:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$s4, %pc_hi20(recallpairfoldalign.fp)
	ld.d	$fp, $s4, %pc_lo12(recallpairfoldalign.fp)
	bnez	$fp, .LBB2_163
# %bb.162:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s4, %pc_lo12(recallpairfoldalign.fp)
	beqz	$a0, .LBB2_262
.LBB2_163:                              #   in Loop: Header=BB2_85 Depth=2
	ori	$a1, $zero, 1
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a1, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a4, $a0
	st.d	$s2, $sp, 8
	addi.d	$a7, $sp, 396
	addi.d	$a0, $sp, 1396
	st.d	$a0, $sp, 0
	move	$a0, $fp
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	move	$a3, $s4
	move	$fp, $a4
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(readpairfoldalign)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(foldalignopt)
	addi.d	$a0, $a0, %pc_lo12(foldalignopt)
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	bnez	$a0, .LBB2_165
# %bb.164:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 392
	addi.d	$a4, $sp, 388
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(L__align11)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	b	.LBB2_166
.LBB2_165:                              #   in Loop: Header=BB2_85 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(G__align11)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	st.w	$zero, $sp, 392
	st.w	$zero, $sp, 388
.LBB2_166:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB2_169
# %bb.167:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 396
	ld.w	$a1, $sp, 1396
	st.w	$a0, $sp, 392
	st.w	$a1, $sp, 388
.LBB2_168:                              # %recallpairfoldalign.exit.i
                                        #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB2_89
.LBB2_169:                              #   in Loop: Header=BB2_85 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	addi.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	b	.LBB2_168
	.p2align	4, , 16
.LBB2_170:                              # %.loopexit6.i
                                        #   in Loop: Header=BB2_82 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	bne	$s2, $a0, .LBB2_82
.LBB2_171:                              # %.preheader5.i
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	blez	$s7, .LBB2_179
# %bb.172:                              # %.lr.ph54.i
	ld.d	$a0, $fp, %pc_lo12(pairalign.distancemtx)
	movgr2fr.w	$fa0, $zero
	movgr2fr.d	$fa1, $zero
	pcalau12i	$a1, %got_pc_hi20(amino_dis)
	ld.d	$a1, $a1, %got_pc_lo12(amino_dis)
	move	$a2, $zero
	b	.LBB2_174
	.p2align	4, , 16
.LBB2_173:                              # %._crit_edge51.i
                                        #   in Loop: Header=BB2_174 Depth=1
	ldx.d	$a4, $a0, $a3
	addi.d	$a2, $a2, 1
	fstx.d	$fa2, $a4, $a3
	beq	$a2, $s7, .LBB2_178
.LBB2_174:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_176 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a4, $s1, $a3
	ld.bu	$a5, $a4, 0
	fmov.d	$fa2, $fa1
	beqz	$a5, .LBB2_173
# %bb.175:                              # %.lr.ph50.i.preheader
                                        #   in Loop: Header=BB2_174 Depth=1
	addi.d	$a4, $a4, 1
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB2_176:                              # %.lr.ph50.i
                                        #   Parent Loop BB2_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a5, $a5
	slli.d	$a6, $a5, 9
	add.d	$a6, $a1, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a6, $a5
	ld.bu	$a5, $a4, 0
	movgr2fr.w	$fa3, $a6
	ffint.s.w	$fa3, $fa3
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a4, $a4, 1
	bnez	$a5, .LBB2_176
# %bb.177:                              # %._crit_edge51.loopexit.i
                                        #   in Loop: Header=BB2_174 Depth=1
	fcvt.d.s	$fa2, $fa2
	b	.LBB2_173
.LBB2_178:                              # %._crit_edge55.i
	ori	$a1, $zero, 1
	bne	$s7, $a1, .LBB2_196
.LBB2_179:                              # %._crit_edge63.i
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB2_181
# %bb.180:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_181:
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(out_align_instead_of_hat3)
	ld.w	$a1, $s4, 0
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(pairalign.distancemtx)
	beqz	$a0, .LBB2_183
# %bb.182:
	move	$a0, $fp
	move	$a2, $a3
	pcaddu18i	$ra, %call36(WriteHat2plain)
	jirl	$ra, $ra, 0
	b	.LBB2_184
.LBB2_183:
	pcalau12i	$a0, %pc_hi20(main.name)
	addi.d	$a2, $a0, %pc_lo12(main.name)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(WriteHat2)
	jirl	$ra, $ra, 0
.LBB2_184:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(out_align_instead_of_hat3)
	beqz	$a0, .LBB2_226
# %bb.185:                              # %..loopexit3_crit_edge.i
	ld.w	$a1, $s4, 0
.LBB2_186:                              # %.loopexit3.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeLocalHomTable)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 115
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB2_195
# %bb.187:                              # %.preheader.i
	ld.w	$a0, $s4, 0
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	blez	$a0, .LBB2_194
# %bb.188:                              # %.lr.ph77.i.preheader
	move	$fp, $zero
	b	.LBB2_190
	.p2align	4, , 16
.LBB2_189:                              # %._crit_edge75.i
                                        #   in Loop: Header=BB2_190 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB2_194
.LBB2_190:                              # %.lr.ph77.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_192 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a1, $s5, $a0
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB2_189
# %bb.191:                              # %.lr.ph74.i.preheader
                                        #   in Loop: Header=BB2_190 Depth=1
	alsl.d	$s0, $fp, $s5, 3
	addi.d	$s1, $a1, 8
	.p2align	4, , 16
.LBB2_192:                              # %.lr.ph74.i
                                        #   Parent Loop BB2_190 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$s1, $s1, 8
	bnez	$a0, .LBB2_192
# %bb.193:                              # %._crit_edge75.loopexit.i
                                        #   in Loop: Header=BB2_190 Depth=1
	ld.d	$a1, $s0, 0
	b	.LBB2_189
.LBB2_194:                              # %._crit_edge78.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_195:                              # %pairalign.exit
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, -100
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.20)
	addi.d	$a3, $a3, %pc_lo12(.L.str.20)
	ld.b	$a4, $s3, 0
	maskeqz	$a1, $a3, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcalau12i	$a5, %got_pc_hi20(modelname)
	ld.d	$a5, $a5, %got_pc_lo12(modelname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 1400                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1408                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1416                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1424                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1432                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1440                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1448                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1472                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1480                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1488                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1496                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1504
	ret
.LBB2_196:                              # %.lr.ph62.i
	move	$a2, $zero
	addi.w	$a3, $s7, -1
	ori	$a4, $zero, 8
	ori	$a5, $zero, 0
	lu32i.d	$a5, 231296
	lu52i.d	$a5, $a5, -1012
	movgr2fr.d	$fa0, $a5
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -912
	b	.LBB2_198
	.p2align	4, , 16
.LBB2_197:                              # %.loopexit4.i
                                        #   in Loop: Header=BB2_198 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$a2, $a3, .LBB2_179
.LBB2_198:                              # %.lr.ph59.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_201 Depth 2
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a0, $a5
	alsl.d	$a6, $a2, $a5, 3
	move	$a7, $a4
	move	$t0, $s7
	b	.LBB2_201
	.p2align	4, , 16
.LBB2_199:                              #   in Loop: Header=BB2_201 Depth=2
	vldi	$vr4, -1024
.LBB2_200:                              #   in Loop: Header=BB2_201 Depth=2
	fstx.d	$fa4, $a5, $a7
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	beq	$a1, $t0, .LBB2_197
.LBB2_201:                              #   Parent Loop BB2_198 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa3, $a5, $a7
	fcmp.ceq.d	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB2_199
# %bb.202:                              #   in Loop: Header=BB2_201 Depth=2
	ldx.d	$t1, $a0, $a7
	fld.d	$fa4, $a6, 0
	fldx.d	$fa5, $t1, $a7
	fcmp.clt.d	$fcc0, $fa4, $fa5
	fsel	$fa5, $fa5, $fa4, $fcc0
	fcmp.ceq.d	$fcc0, $fa5, $fa1
	vldi	$vr4, -1024
	bcnez	$fcc0, .LBB2_200
# %bb.203:                              #   in Loop: Header=BB2_201 Depth=2
	fcmp.clt.d	$fcc0, $fa5, $fa3
	bcnez	$fcc0, .LBB2_200
# %bb.204:                              #   in Loop: Header=BB2_201 Depth=2
	fdiv.d	$fa3, $fa3, $fa5
	fsub.d	$fa3, $fa2, $fa3
	fadd.d	$fa4, $fa3, $fa3
	b	.LBB2_200
.LBB2_205:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	pcalau12i	$a2, %pc_hi20(foldalignopt)
	addi.d	$a2, $a2, %pc_lo12(foldalignopt)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s4, 0
	blez	$s4, .LBB2_237
# %bb.206:                              # %.lr.ph.preheader.i.i
	ori	$a0, $zero, 52
	pcalau12i	$a1, %pc_hi20(.LJTI2_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_1)
	move	$a2, $zero
	b	.LBB2_208
	.p2align	4, , 16
.LBB2_207:                              # %t2u.exit.i.i
                                        #   in Loop: Header=BB2_208 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s4, .LBB2_238
.LBB2_208:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_211 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	b	.LBB2_211
.LBB2_209:                              #   in Loop: Header=BB2_211 Depth=2
	ori	$a4, $zero, 103
	.p2align	4, , 16
.LBB2_210:                              #   in Loop: Header=BB2_211 Depth=2
	st.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
.LBB2_211:                              #   Parent Loop BB2_208 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a3, 0
	addi.d	$a5, $a4, -65
	bltu	$a0, $a5, .LBB2_215
# %bb.212:                              #   in Loop: Header=BB2_211 Depth=2
	slli.d	$a4, $a5, 2
	ldx.w	$a4, $a1, $a4
	add.d	$a5, $a1, $a4
	ori	$a4, $zero, 97
	jr	$a5
.LBB2_213:                              #   in Loop: Header=BB2_211 Depth=2
	ori	$a4, $zero, 117
	b	.LBB2_210
.LBB2_214:                              #   in Loop: Header=BB2_211 Depth=2
	ori	$a4, $zero, 99
	b	.LBB2_210
.LBB2_215:                              #   in Loop: Header=BB2_211 Depth=2
	beqz	$a4, .LBB2_207
.LBB2_216:                              #   in Loop: Header=BB2_211 Depth=2
	ori	$a4, $zero, 110
	b	.LBB2_210
.LBB2_217:
	st.d	$s2, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s4, 0
	ori	$a1, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_251
# %bb.218:                              # %.preheader.i266.i
	move	$s7, $a0
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	blez	$s4, .LBB2_236
# %bb.219:                              # %.lr.ph.preheader.i268.i
	move	$s0, $zero
	ori	$s2, $zero, 62
	addi.w	$s3, $zero, -1
	st.d	$s4, $sp, 368                   # 8-byte Folded Spill
	b	.LBB2_221
	.p2align	4, , 16
.LBB2_220:                              # %readhat4.exit.i.i
                                        #   in Loop: Header=BB2_221 Depth=1
	ld.d	$a0, $s5, 0
	bstrpick.d	$a1, $s6, 34, 3
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	bstrpick.d	$a1, $fp, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$s0, $s0, 1
	stx.d	$zero, $a0, $a1
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	beq	$s0, $s4, .LBB2_236
.LBB2_221:                              # %.lr.ph.i270.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_223 Depth 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	bne	$a0, $s2, .LBB2_246
# %bb.222:                              #   in Loop: Header=BB2_221 Depth=1
	alsl.d	$s5, $s0, $a1, 3
	ori	$a0, $zero, 62
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 396
	ori	$a1, $zero, 999
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	move	$fp, $zero
	.p2align	4, , 16
.LBB2_223:                              #   Parent Loop BB2_221 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s4, 16
	beq	$s8, $s3, .LBB2_220
# %bb.224:                              #   in Loop: Header=BB2_223 Depth=2
	beq	$s8, $s2, .LBB2_220
# %bb.225:                              #   in Loop: Header=BB2_223 Depth=2
	addi.d	$a0, $sp, 396
	ori	$a1, $zero, 999
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s5, 0
	ori	$a0, $zero, 100
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s6, $s4
	addi.d	$a1, $sp, 396
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s4, $s4, 8
	b	.LBB2_223
.LBB2_226:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB2_186
# %bb.227:                              # %.lr.ph70.preheader.i
	addi.w	$s2, $a1, -1
	vldi	$vr1, -784
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$fp, $a0, %pc_lo12(.L.str.61)
	move	$s6, $zero
	b	.LBB2_229
	.p2align	4, , 16
.LBB2_228:                              # %.loopexit.i
                                        #   in Loop: Header=BB2_229 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	beq	$s6, $s2, .LBB2_186
.LBB2_229:                              # %.lr.ph70.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_232 Depth 2
                                        #       Child Loop BB2_234 Depth 3
	move	$s1, $s6
	addi.d	$s6, $s6, 1
	bge	$s6, $a1, .LBB2_228
# %bb.230:                              # %.lr.ph67.i
                                        #   in Loop: Header=BB2_229 Depth=1
	slli.d	$a0, $s1, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$s4, $a1, $a0
	move	$s3, $s0
	b	.LBB2_232
	.p2align	4, , 16
.LBB2_231:                              #   in Loop: Header=BB2_232 Depth=2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	addi.d	$s3, $s3, 1
	addi.w	$a0, $s3, 0
	bge	$a0, $a1, .LBB2_228
.LBB2_232:                              #   Parent Loop BB2_229 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_234 Depth 3
	slli.d	$a0, $s3, 6
	alsl.d	$a0, $s3, $a0, 4
	add.d	$s7, $s4, $a0
	b	.LBB2_234
	.p2align	4, , 16
.LBB2_233:                              #   in Loop: Header=BB2_234 Depth=3
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB2_231
.LBB2_234:                              #   Parent Loop BB2_229 Depth=1
                                        #     Parent Loop BB2_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s7, 40
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_233
# %bb.235:                              #   in Loop: Header=BB2_234 Depth=3
	ld.d	$a0, $s5, 0
	ld.w	$a4, $s7, 48
	ld.w	$a6, $s7, 24
	ld.w	$a7, $s7, 28
	ld.w	$a1, $s7, 32
	ld.w	$a2, $s7, 36
	st.d	$a2, $sp, 8
	movfr2gr.d	$a5, $fa0
	st.d	$a1, $sp, 0
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	b	.LBB2_233
.LBB2_236:                              # %preparebpp.exit.i
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a1, $zero, 71
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.w	$s7, $s4, 0
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	pcalau12i	$a1, %pc_hi20(out_align_instead_of_hat3)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	bge	$s7, $a0, .LBB2_81
	b	.LBB2_171
.LBB2_237:                              # %._crit_edge.thread.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB2_239
	b	.LBB2_242
.LBB2_238:                              # %._crit_edge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_240
.LBB2_239:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_240:                              # %.lr.ph18.i.i.preheader
	move	$fp, $a0
	ori	$s0, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$s2, $a0, %pc_lo12(.L.str.64)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$s3, $a0, %pc_lo12(.L.str.65)
	.p2align	4, , 16
.LBB2_241:                              # %.lr.ph18.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s4, $s4, -1
	addi.w	$s0, $s0, 1
	bnez	$s4, .LBB2_241
.LBB2_242:                              # %._crit_edge19.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(whereispairalign)
	ld.d	$a2, $a0, %pc_lo12(whereispairalign)
	pcalau12i	$a0, %pc_hi20(callfoldalign.com)
	addi.d	$a0, $a0, %pc_lo12(callfoldalign.com)
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	pcalau12i	$a3, %pc_hi20(foldalignopt)
	addi.d	$a3, $a3, %pc_lo12(foldalignopt)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB2_243:                              # %._crit_edge7.i.i
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB2_244:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_245:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	ori	$a2, $a3, 848
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 56
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_246:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_247:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_248:
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(recalllara.ungap1)
	pcalau12i	$a1, %pc_hi20(.L.str.84)
	addi.d	$a1, $a1, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(recalllara.ori1)
	pcalau12i	$a1, %pc_hi20(.L.str.85)
	addi.d	$a1, $a1, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.86)
	addi.d	$a1, $a1, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s2, %pc_lo12(recalllara.ungap2)
	pcalau12i	$a1, %pc_hi20(.L.str.87)
	addi.d	$a1, $a1, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s6, %pc_lo12(recalllara.ori2)
	pcalau12i	$a1, %pc_hi20(.L.str.88)
	addi.d	$a1, $a1, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_249:
	move	$a2, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_250:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a2, $a1, %pc_lo12(.L.str.52)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(calllara)
	jirl	$ra, $ra, 0
.LBB2_251:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_252:
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$s1, $a0, $a1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$s0, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_255
# %bb.253:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_254:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_255:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	beqz	$a1, .LBB2_258
# %bb.256:                              # %.lr.ph.i281.i.preheader
	addi.d	$s1, $s1, 8
.LBB2_257:                              # %.lr.ph.i281.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	addi.d	$s1, $s1, 8
	bnez	$a1, .LBB2_257
.LBB2_258:                              # %._crit_edge.i283.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	beqz	$a1, .LBB2_261
# %bb.259:                              # %.lr.ph6.i.i.preheader
	addi.d	$s0, $s0, 8
.LBB2_260:                              # %.lr.ph6.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	addi.d	$s0, $s0, 8
	bnez	$a1, .LBB2_260
.LBB2_261:                              # %._crit_edge7.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB2_243
.LBB2_262:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_34-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_35-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_36-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_38-.LJTI2_0
	.word	.LBB2_37-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_210-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_214-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_209-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_213-.LJTI2_1
	.word	.LBB2_213-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_210-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_214-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_209-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_216-.LJTI2_1
	.word	.LBB2_213-.LJTI2_1
	.word	.LBB2_213-.LJTI2_1
.LJTI2_2:
	.word	.LBB2_111-.LJTI2_2
	.word	.LBB2_101-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_161-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_112-.LJTI2_2
	.word	.LBB2_113-.LJTI2_2
	.word	.LBB2_114-.LJTI2_2
	.word	.LBB2_115-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_101-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_116-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_90-.LJTI2_2
	.word	.LBB2_252-.LJTI2_2
	.word	.LBB2_117-.LJTI2_2
.LJTI2_3:
	.word	.LBB2_123-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_127-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_122-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_126-.LJTI2_3
	.word	.LBB2_126-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_123-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_127-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_122-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_129-.LJTI2_3
	.word	.LBB2_126-.LJTI2_3
	.word	.LBB2_126-.LJTI2_3
.LJTI2_4:
	.word	.LBB2_132-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_136-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_131-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_135-.LJTI2_4
	.word	.LBB2_135-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_132-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_136-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_131-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_138-.LJTI2_4
	.word	.LBB2_135-.LJTI2_4
	.word	.LBB2_135-.LJTI2_4
.LJTI2_5:
	.word	.LBB2_141-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_145-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_140-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_144-.LJTI2_5
	.word	.LBB2_144-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_141-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_145-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_140-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_147-.LJTI2_5
	.word	.LBB2_144-.LJTI2_5
	.word	.LBB2_144-.LJTI2_5
.LJTI2_6:
	.word	.LBB2_150-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_154-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_149-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_153-.LJTI2_6
	.word	.LBB2_153-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_150-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_154-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_149-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_156-.LJTI2_6
	.word	.LBB2_153-.LJTI2_6
	.word	.LBB2_153-.LJTI2_6
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function calllara
	.type	calllara,@function
calllara:                               # @calllara
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
	blez	$a0, .LBB3_4
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$s3, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s4, $a0, %pc_lo12(.L.str.58)
	move	$s5, $s2
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, -1
	bnez	$s5, .LBB3_2
# %bb.3:                                # %._crit_edge
	move	$s1, $a0
	bnez	$a0, .LBB3_5
.LBB3_4:                                # %._crit_edge.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_5:                                # %.lr.ph17.preheader
	bstrpick.d	$s5, $s2, 31, 0
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$s3, $a0, %pc_lo12(.L.str.64)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$s4, $a0, %pc_lo12(.L.str.65)
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph17
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 0
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s5, $s5, -1
	addi.w	$s2, $s2, 1
	bnez	$s5, .LBB3_6
# %bb.7:                                # %._crit_edge18
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(whereispairalign)
	ld.d	$a2, $a0, %pc_lo12(whereispairalign)
	pcalau12i	$a0, %pc_hi20(calllara.com)
	addi.d	$a0, $a0, %pc_lo12(calllara.com)
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	calllara, .Lfunc_end3-calllara
                                        # -- End function
	.type	foldalignopt,@object            # @foldalignopt
	.local	foldalignopt
	.comm	foldalignopt,1000,1
	.type	laraparams,@object              # @laraparams
	.local	laraparams
	.comm	laraparams,8,8
	.type	out_align_instead_of_hat3,@object # @out_align_instead_of_hat3
	.local	out_align_instead_of_hat3
	.comm	out_align_instead_of_hat3,1,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"inputfile = %s\n"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"jtt %d\n"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"TM %d\n"
	.size	.L.str.2, 7

	.type	whereispairalign,@object        # @whereispairalign
	.local	whereispairalign
	.comm	whereispairalign,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"whereispairalign = %s\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"laraparams = %s\n"
	.size	.L.str.4, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"foldalignopt = %s\n"
	.size	.L.str.6, 19

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"illegal option %c\n"
	.size	.L.str.7, 19

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"options: Check source file !\n"
	.size	.L.str.8, 30

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"conflicting options : o, m or u\n"
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"conflicting options : C, o\n"
	.size	.L.str.10, 28

	.type	main.nlen,@object               # @main.nlen
	.local	main.nlen
	.comm	main.nlen,200000,4
	.type	main.name,@object               # @main.name
	.local	main.name
	.comm	main.name,12800000,1
	.type	main.seq,@object                # @main.seq
	.local	main.seq
	.comm	main.seq,8,8
	.type	main.mseq1,@object              # @main.mseq1
	.local	main.mseq1
	.comm	main.mseq1,8,8
	.type	main.mseq2,@object              # @main.mseq2
	.local	main.mseq2
	.comm	main.mseq2,8,8
	.type	main.aseq,@object               # @main.aseq
	.local	main.aseq
	.comm	main.aseq,8,8
	.type	main.bseq,@object               # @main.bseq
	.local	main.bseq
	.comm	main.bseq,8,8
	.type	main.eff,@object                # @main.eff
	.local	main.eff
	.comm	main.eff,8,8
	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"r"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Cannot open %s\n"
	.size	.L.str.12, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"At least 2 sequences should be input!\nOnly %d sequence found.\n"
	.size	.L.str.13, 63

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"The number of sequences must be < %d\n"
	.size	.L.str.14, 38

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Please try the splittbfast program for such large data.\n"
	.size	.L.str.15, 57

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Illegal character %c\n"
	.size	.L.str.16, 22

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"done.\n"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%s (%s) Version 6.624b alg=%c, model=%s\n"
	.size	.L.str.18, 41

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"<progname>"
	.size	.L.str.19, 11

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"nuc"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"aa"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"DNA\n"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"JTT %dPAM\n"
	.size	.L.str.23, 11

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"BLOSUM %d\n"
	.size	.L.str.24, 11

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"M-Y\n"
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Gap Penalty = %+5.2f, %+5.2f, %+5.2f\n"
	.size	.L.str.26, 38

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"FFT on\n"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"tree-base method\n"
	.size	.L.str.28, 18

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"unweighted\n"
	.size	.L.str.29, 12

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"clustalw-like weighting\n"
	.size	.L.str.30, 25

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"iterate at each step\n"
	.size	.L.str.31, 22

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"  unweighted\n"
	.size	.L.str.32, 14

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"  reversely weighted\n"
	.size	.L.str.33, 22

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"  weighted\n"
	.size	.L.str.34, 12

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Algorithm A\n"
	.size	.L.str.36, 13

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Algorithm A+\n"
	.size	.L.str.37, 14

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Apgorithm S\n"
	.size	.L.str.38, 13

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Apgorithm A+/C\n"
	.size	.L.str.39, 16

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Unknown algorithm\n"
	.size	.L.str.40, 19

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Basis : 4 nucleotides\n"
	.size	.L.str.41, 23

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Basis : Polarity and Volume\n"
	.size	.L.str.42, 29

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Basis : 20 amino acids\n"
	.size	.L.str.43, 24

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Threshold   of anchors = %d%%\n"
	.size	.L.str.44, 31

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"window size of anchors = %dsites\n"
	.size	.L.str.45, 34

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"FFT off\n"
	.size	.L.str.46, 9

	.type	pairalign.indication1,@object   # @pairalign.indication1
	.local	pairalign.indication1
	.comm	pairalign.indication1,8,8
	.type	pairalign.indication2,@object   # @pairalign.indication2
	.local	pairalign.indication2
	.comm	pairalign.indication2,8,8
	.type	pairalign.distancemtx,@object   # @pairalign.distancemtx
	.local	pairalign.distancemtx
	.comm	pairalign.distancemtx,8,8
	.type	pairalign.effarr1,@object       # @pairalign.effarr1
	.local	pairalign.effarr1
	.comm	pairalign.effarr1,8,8
	.type	pairalign.effarr2,@object       # @pairalign.effarr2
	.local	pairalign.effarr2
	.comm	pairalign.effarr2,8,8
	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"hat2"
	.size	.L.str.47, 5

	.type	pairalign.pair,@object          # @pairalign.pair
	.local	pairalign.pair
	.comm	pairalign.pair,8,8
	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Calling FOLDALIGN with option '%s'\n"
	.size	.L.str.48, 36

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Running LARA (Bauer et al. http://www.planet-lisa.net/)\n"
	.size	.L.str.49, 57

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.space	1
	.size	.L.str.50, 1

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Running SLARA (Bauer et al. http://www.planet-lisa.net/)\n"
	.size	.L.str.51, 58

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"-s"
	.size	.L.str.52, 3

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Preparing bpp\n"
	.size	.L.str.53, 15

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Running MXSCARNA (Tabei et al. http://www.ncrna.org/software/mxscarna)\n"
	.size	.L.str.54, 72

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"% 5d / %d\r"
	.size	.L.str.55, 11

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"sequence %d - sequence %d, pairwise score = %.0f\n"
	.size	.L.str.56, 50

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	">%s\n"
	.size	.L.str.57, 5

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"w"
	.size	.L.str.58, 2

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Cannot open hat2."
	.size	.L.str.59, 18

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"##### writing hat3\n"
	.size	.L.str.60, 20

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"%d %d %d %7.5f %d %d %d %d\n"
	.size	.L.str.61, 28

	.type	callfoldalign.com,@object       # @callfoldalign.com
	.local	callfoldalign.com
	.comm	callfoldalign.com,10000,1
	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"_foldalignin"
	.size	.L.str.62, 13

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Cannot open _foldalignin\n"
	.size	.L.str.63, 26

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	">%d\n"
	.size	.L.str.64, 5

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%s\n"
	.size	.L.str.65, 4

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"env PATH=%s  foldalign210 %s _foldalignin > _foldalignout "
	.size	.L.str.66, 59

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"Cannot execute system calls!\n"
	.size	.L.str.67, 30

	.type	calllara.com,@object            # @calllara.com
	.local	calllara.com
	.comm	calllara.com,10000,1
	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"_larain"
	.size	.L.str.68, 8

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Cannot open _larain\n"
	.size	.L.str.69, 21

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"env PATH=%s:/bin:/usr/bin mafft_lara -i _larain -w _laraout -o _lara.params %s"
	.size	.L.str.70, 79

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"hat4"
	.size	.L.str.71, 5

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"Cannot open hat4\n"
	.size	.L.str.72, 18

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Format error\n"
	.size	.L.str.73, 14

	.type	recallpairfoldalign.fp,@object  # @recallpairfoldalign.fp
	.local	recallpairfoldalign.fp
	.comm	recallpairfoldalign.fp,8,8
	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"_foldalignout"
	.size	.L.str.74, 14

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"Cannot open _foldalignout\n"
	.size	.L.str.75, 27

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"-global"
	.size	.L.str.76, 8

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Calling G__align11\n"
	.size	.L.str.77, 20

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"Calling L__align11\n"
	.size	.L.str.78, 20

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"FOLDALIGN returned no alignment between %d and %d.  Sequence alignment is used instead.\n"
	.size	.L.str.79, 89

	.type	recalllara.fp,@object           # @recalllara.fp
	.local	recalllara.fp
	.comm	recalllara.fp,8,8
	.type	recalllara.ungap1,@object       # @recalllara.ungap1
	.local	recalllara.ungap1
	.comm	recalllara.ungap1,8,8
	.type	recalllara.ungap2,@object       # @recalllara.ungap2
	.local	recalllara.ungap2
	.comm	recalllara.ungap2,8,8
	.type	recalllara.ori1,@object         # @recalllara.ori1
	.local	recalllara.ori1
	.comm	recalllara.ori1,8,8
	.type	recalllara.ori2,@object         # @recalllara.ori2
	.local	recalllara.ori2
	.comm	recalllara.ori2,8,8
	.type	recalllara.com,@object          # @recalllara.com
	.local	recalllara.com
	.comm	recalllara.com,10000,1
	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"_laraout"
	.size	.L.str.80, 9

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"Cannot open _laraout\n"
	.size	.L.str.81, 22

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"SEQUENCE CHANGED!!\n"
	.size	.L.str.82, 20

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"*mseq1  = %s\n"
	.size	.L.str.83, 14

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"ungap1  = %s\n"
	.size	.L.str.84, 14

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"ori1    = %s\n"
	.size	.L.str.85, 14

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"*mseq2  = %s\n"
	.size	.L.str.86, 14

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"ungap2  = %s\n"
	.size	.L.str.87, 14

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"ori2    = %s\n"
	.size	.L.str.88, 14

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"_bpporg"
	.size	.L.str.89, 8

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"Cannot write to _bpporg\n"
	.size	.L.str.90, 25

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	">a\n"
	.size	.L.str.91, 4

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	">b\n"
	.size	.L.str.92, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym foldalignopt
	.addrsig_sym main.nlen
	.addrsig_sym main.name
	.addrsig_sym modelname
	.addrsig_sym amino_dis
	.addrsig_sym callfoldalign.com
	.addrsig_sym calllara.com
	.addrsig_sym recalllara.com
