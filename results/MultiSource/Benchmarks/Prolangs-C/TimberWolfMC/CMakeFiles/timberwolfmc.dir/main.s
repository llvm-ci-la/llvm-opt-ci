	.file	"main.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
.LCPI0_1:
	.dword	0x405fc00000000000              # double 127
.LCPI0_2:
	.dword	0x40f86a0000000000              # double 1.0E+5
.LCPI0_3:
	.dword	0x3ffccccccccccccd              # double 1.8
.LCPI0_4:
	.dword	0x3fb47ae147ae147b              # double 0.080000000000000002
.LCPI0_5:
	.dword	0xbfb999999999999a              # double -0.10000000000000001
.LCPI0_6:
	.dword	0xbf947ae147ae147b              # double -0.02
.LCPI0_7:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
.LCPI0_8:
	.dword	0x3f947ae147ae147b              # double 0.02
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -1232
	st.d	$ra, $sp, 1224                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1144                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1136                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1128                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1120                 # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(offset)
	ld.d	$s2, $a2, %got_pc_lo12(offset)
	st.w	$zero, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(lapFactor)
	ld.d	$s3, $a2, %got_pc_lo12(lapFactor)
	lu52i.d	$a2, $zero, 1023
	st.d	$a2, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(finalShot)
	ld.d	$a2, $a2, %got_pc_lo12(finalShot)
	st.w	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(maxWeight)
	ld.d	$s4, $a2, %got_pc_lo12(maxWeight)
	ori	$a2, $zero, 2
	st.w	$a2, $s4, 0
	pcalau12i	$a3, %got_pc_hi20(baseWeight)
	ld.d	$a3, $a3, %got_pc_lo12(baseWeight)
	ori	$a4, $zero, 1
	st.w	$a4, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(layersFactor)
	ld.d	$a3, $a3, %got_pc_lo12(layersFactor)
	st.w	$a4, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(totNetLen)
	ld.d	$s7, $a3, %got_pc_lo12(totNetLen)
	st.w	$zero, $s7, 0
	pcalau12i	$a3, %got_pc_hi20(randVar)
	ld.d	$s5, $a3, %got_pc_lo12(randVar)
	addi.w	$s6, $zero, -1
	move	$a3, $s6
	lu32i.d	$a3, 0
	st.w	$a3, $s5, 0
	bne	$a0, $a2, .LBB0_3
# %bb.1:
	ld.d	$fp, $a1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(cktName)
	ld.d	$s1, $a0, %got_pc_lo12(cktName)
	st.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 96
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	st.d	$a3, $s0, 0
	bnez	$a3, .LBB0_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_3:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_4:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(readpar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(doPlacement)
	ld.w	$a0, $a0, %pc_lo12(doPlacement)
	bnez	$a0, .LBB0_10
# %bb.5:
	pcalau12i	$a0, %pc_hi20(doChannelGraph)
	ld.w	$a0, $a0, %pc_lo12(doChannelGraph)
	beqz	$a0, .LBB0_7
# %bb.6:
	pcaddu18i	$ra, %call36(gmain)
	jirl	$ra, $ra, 0
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(doGlobalRoute)
	ld.w	$a0, $a0, %pc_lo12(doGlobalRoute)
	beqz	$a0, .LBB0_9
# %bb.8:
	pcaddu18i	$ra, %call36(rmain)
	jirl	$ra, $ra, 0
.LBB0_9:
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$fp, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_10:
	pcalau12i	$a0, %got_pc_hi20(overlap)
	ld.d	$a0, $a0, %got_pc_lo12(overlap)
	pcalau12i	$a1, %got_pc_hi20(woverlap)
	ld.d	$a1, $a1, %got_pc_lo12(woverlap)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(overlapf)
	ld.d	$a0, $a0, %got_pc_lo12(overlapf)
	pcalau12i	$a1, %got_pc_hi20(woverlapf)
	ld.d	$a1, $a1, %got_pc_lo12(woverlapf)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(overlapx)
	ld.d	$a1, $a0, %got_pc_lo12(overlapx)
	pcalau12i	$a0, %got_pc_hi20(woverlapx)
	ld.d	$a2, $a0, %got_pc_lo12(woverlapx)
	ld.w	$a0, $s5, 0
	st.d	$a2, $a1, 0
	bne	$a0, $s6, .LBB0_12
# %bb.11:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, 0
.LBB0_12:
	ld.d	$a3, $s0, 0
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.13:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(readcells)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(scrapnet)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(config1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sub.w	$a2, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(bdxlength)
	ld.d	$s5, $a0, %got_pc_lo12(bdxlength)
	st.w	$a2, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$s8, $a0, %got_pc_lo12(blockt)
	ld.w	$a0, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$s6, $a1, %got_pc_lo12(blockb)
	ld.w	$a1, $s6, 0
	sub.w	$a3, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(bdylength)
	ld.d	$a1, $a0, %got_pc_lo12(bdylength)
	ld.d	$a0, $s0, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.14:
	pcaddu18i	$ra, %call36(readnets)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_17
.LBB0_15:
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 96
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_16:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_17:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(findcost)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(funccost)
	ld.d	$fp, $a1, %got_pc_lo12(funccost)
	st.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(initcheck)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(penalty)
	ld.d	$fp, $a1, %got_pc_lo12(penalty)
	ld.w	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(overfill)
	ld.d	$a1, $a1, %got_pc_lo12(overfill)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(analyze)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(wireEstimateOnly)
	ld.d	$a0, $a0, %got_pc_lo12(wireEstimateOnly)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_16
# %bb.18:
	fmov.d	$fs0, $fa0
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(T)
	ld.d	$a1, $a0, %got_pc_lo12(T)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -144027
	lu52i.d	$a0, $a0, 1052
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s5, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s5, 0
	alsl.d	$a1, $a0, $a0, 2
	alsl.d	$a1, $a1, $a0, 1
	pcalau12i	$a2, %pc_hi20(bigcell)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.w	$a1, $a2, %pc_lo12(bigcell)
	addi.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(toobig)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.w	$a1, $a2, %pc_lo12(toobig)
	ori	$a1, $zero, 100
	mul.w	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(testloop)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(totFunc)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	fld.d	$fa0, $a1, %pc_lo12(totFunc)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	ld.w	$a0, $s5, 0
	fdiv.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	bgtz	$a0, .LBB0_20
# %bb.19:
	movgr2fr.d	$fa1, $zero
	b	.LBB0_28
.LBB0_20:                               # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 4
	bgeu	$a0, $a3, .LBB0_22
# %bb.21:
	move	$a5, $zero
	ori	$a3, $zero, 1
	b	.LBB0_25
.LBB0_22:                               # %vector.ph
	bstrpick.d	$a3, $a0, 30, 2
	slli.d	$a4, $a3, 2
	srli.d	$a5, $a0, 2
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a5, 30, 2
	vrepli.b	$vr0, 0
	addi.d	$a5, $a2, 32
	move	$a6, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, -24
	ld.d	$t0, $a5, -16
	ld.d	$t1, $a5, -8
	ld.d	$t2, $a5, 0
	ld.w	$a7, $a7, 76
	ld.w	$t0, $t0, 76
	ld.w	$t1, $t1, 76
	ld.w	$t2, $t2, 76
	vinsgr2vr.w	$vr2, $a7, 0
	vinsgr2vr.w	$vr2, $t0, 1
	vinsgr2vr.w	$vr3, $t1, 0
	vinsgr2vr.w	$vr3, $t2, 1
	vseqi.w	$vr2, $vr2, 1
	vseqi.w	$vr3, $vr3, 1
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB0_23
# %bb.24:                               # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a4, $a0, .LBB0_27
.LBB0_25:                               # %scalar.ph.preheader
	addi.d	$a4, $a0, 1
	bstrpick.d	$a4, $a4, 31, 0
	alsl.d	$a2, $a3, $a2, 3
	sub.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_26:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a4, $a4, 76
	addi.d	$a4, $a4, -1
	sltui	$a4, $a4, 1
	add.w	$a5, $a5, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_26
.LBB0_27:                               # %._crit_edge.loopexit
	bstrpick.d	$a2, $a5, 31, 0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa1, $fa0
.LBB0_28:                               # %._crit_edge
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs0, $fa1, $fa0
	movgr2fr.w	$fa2, $a1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	ffint.d.w	$fs1, $fa2
	bcnez	$fcc0, .LBB0_30
# %bb.29:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
.LBB0_30:                               # %._crit_edge.split
	fdiv.d	$fa0, $fs0, $fa1
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s7, 0
	pcaddu18i	$ra, %call36(config2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.w	$a2, $s8, 0
	ld.w	$a3, $s6, 0
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	sub.d	$a1, $a2, $a3
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.w	$a0, $s5, 0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	bcnez	$fcc0, .LBB0_32
# %bb.31:                               # %call.sqrt246
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %._crit_edge.split.split
	ld.d	$a0, $s0, 0
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $s8, 0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $fp, 0
	pcalau12i	$s6, %pc_hi20(aveCellSide)
	fst.d	$fa0, $s6, %pc_lo12(aveCellSide)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(findcost)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s7, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	alsl.d	$a1, $a0, $a0, 2
	alsl.d	$a1, $a1, $a0, 1
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $s7, %pc_lo12(bigcell)
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(toobig)
	ori	$a1, $zero, 100
	mul.w	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(test2loop)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	fld.d	$fa1, $a2, %pc_lo12(totFunc)
	pcalau12i	$a0, %pc_hi20(totPen)
	fld.d	$fa2, $a0, %pc_lo12(totPen)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI0_0)
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fa1, $fa0
	fdiv.d	$fa0, $fa2, $fa0
	fst.d	$fa1, $a2, %pc_lo12(totFunc)
	fst.d	$fa0, $a0, %pc_lo12(totPen)
	fmul.d	$fa1, $fa1, $fa3
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(numnets)
	ld.d	$a0, $a0, %got_pc_lo12(numnets)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s5, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa2, $fa0
	ld.w	$a0, $s8, 0
	movgr2fr.w	$fa0, $a1
	ld.w	$a1, $fp, 0
	ffint.d.w	$fa3, $fa0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $fa0, $fa3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fdiv.d	$fs0, $fa2, $fa3
	bcnez	$fcc0, .LBB0_34
# %bb.33:                               # %call.sqrt247
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
.LBB0_34:                               # %._crit_edge.split.split.split
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_2)
	ld.d	$a0, $s0, 0
	fdiv.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fs1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	fst.d	$fa1, $a1, 0
	movfr2gr.d	$a2, $fs0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(aveChanWid)
	ld.d	$fp, $a0, %got_pc_lo12(aveChanWid)
	ld.w	$a0, $fp, 0
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	fld.d	$fa2, $s6, %pc_lo12(aveCellSide)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_4)
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fcmp.cult.d	$fcc0, $fa3, $fa0
	pcalau12i	$s6, %pc_hi20(.LCPI0_8)
	bceqz	$fcc0, .LBB0_36
# %bb.35:
	fld.d	$fa1, $s3, 0
	fld.d	$fa0, $s6, %pc_lo12(.LCPI0_8)
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_39
	b	.LBB0_40
.LBB0_36:                               # %condstore.split
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_5)
	fsub.d	$fa1, $fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_6)
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_7)
	fld.d	$fa1, $s3, 0
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	bcnez	$fcc0, .LBB0_38
# %bb.37:                               # %condstore.split
	fld.d	$fa2, $s6, %pc_lo12(.LCPI0_8)
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB0_40
.LBB0_38:
	fld.d	$fa1, $s6, %pc_lo12(.LCPI0_8)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
.LBB0_39:                               # %.sink.split
	fst.d	$fa0, $s3, 0
	fmov.d	$fa1, $fa0
.LBB0_40:
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 0
	vldi	$vr1, -1008
	ld.w	$a0, $s5, 0
	fdiv.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $s2, 0
	bgtz	$a0, .LBB0_42
# %bb.41:                               # %._crit_edge119.thread
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fs0, $zero
	fdiv.d	$fs2, $fs0, $fa0
	b	.LBB0_53
.LBB0_42:                               # %.lr.ph118
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s2, $a0, %got_pc_lo12(cellarray)
	ld.d	$a0, $s2, 0
	move	$s3, $zero
	addi.d	$s6, $a0, 8
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.w	$a1, $a0, 56
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $a0, 60
	ld.w	$a2, $a0, 56
	ld.w	$a3, $a0, 68
	ld.w	$a0, $a0, 64
	ld.w	$a4, $s4, 0
	ld.w	$a5, $fp, 0
	sub.d	$a1, $a1, $a2
	sub.d	$a0, $a3, $a0
	mul.d	$a2, $a4, $a4
	mul.d	$a2, $a2, $a5
	add.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_45
.LBB0_44:                               # %.split
                                        #   in Loop: Header=BB0_43 Depth=1
	ld.w	$a0, $s5, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$s3, $s3, 1
	addi.d	$s6, $s6, 8
	blt	$s3, $a0, .LBB0_43
	b	.LBB0_46
.LBB0_45:                               # %call.sqrt248
                                        #   in Loop: Header=BB0_43 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_44
.LBB0_46:                               # %._crit_edge119
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs2, $fs0, $fa0
	bgtz	$a0, .LBB0_48
# %bb.47:
	movgr2fr.d	$fs0, $zero
	b	.LBB0_53
.LBB0_48:                               # %.lr.ph126
	ld.d	$a0, $s2, 0
	move	$s2, $zero
	addi.d	$s3, $a0, 8
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 56
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $a0, 60
	ld.w	$a2, $a0, 56
	ld.w	$a3, $a0, 68
	ld.w	$a0, $a0, 64
	ld.w	$a4, $s4, 0
	ld.w	$a5, $fp, 0
	sub.d	$a1, $a1, $a2
	sub.d	$a0, $a3, $a0
	mul.d	$a2, $a4, $a4
	mul.d	$a2, $a2, $a5
	add.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_51
.LBB0_50:                               # %.split249
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.w	$a0, $s5, 0
	fsub.d	$fa0, $fa0, $fs2
	fmadd.d	$fs0, $fa0, $fa0, $fs0
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	blt	$s2, $a0, .LBB0_49
	b	.LBB0_52
.LBB0_51:                               # %call.sqrt250
                                        #   in Loop: Header=BB0_49 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_50
.LBB0_52:                               # %._crit_edge127.loopexit
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
.LBB0_53:                               # %._crit_edge127
	fdiv.d	$fa0, $fs0, $fa0
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	bcnez	$fcc0, .LBB0_55
# %bb.54:                               # %call.sqrt251
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
.LBB0_55:                               # %._crit_edge127.split
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fs2
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1024
	fmadd.d	$fa1, $fs0, $fa0, $fs2
	fld.d	$fa0, $s4, 0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	pcalau12i	$a1, %pc_hi20(rangeLimit)
	fcmp.cule.d	$fcc0, $fs1, $fa0
	st.w	$a0, $a1, %pc_lo12(rangeLimit)
	bcnez	$fcc0, .LBB0_57
# %bb.56:
	ori	$a0, $zero, 0
	lu32i.d	$a0, -497152
	lu52i.d	$a0, $a0, 1039
	st.d	$a0, $s4, 0
	fmov.d	$fa0, $fs1
.LBB0_57:
	pcalau12i	$fp, %pc_hi20(Tsave)
	fst.d	$fa0, $fp, %pc_lo12(Tsave)
	pcaddu18i	$ra, %call36(findcost)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s4, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -988
	fdiv.d	$fa0, $fa0, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	st.w	$a0, $s2, 0
	bcnez	$fcc0, .LBB0_59
# %bb.58:
	fst.d	$fa0, $s4, 0
	fst.d	$fa0, $fp, %pc_lo12(Tsave)
	pcaddu18i	$ra, %call36(findcost)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 0
.LBB0_59:
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s2, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $fp, 0
	ld.w	$a4, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	bnez	$a0, .LBB0_61
# %bb.60:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a2, $sp, 96
	move	$a0, $a3
	b	.LBB0_62
.LBB0_61:
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	addi.d	$a2, $sp, 96
	move	$s1, $fp
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TW_oldinput)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(findcost)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	move	$a2, $a0
	st.w	$a0, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
.LBB0_62:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cost_only)
	ld.w	$a0, $a0, %pc_lo12(cost_only)
	bnez	$a0, .LBB0_74
# %bb.63:
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	ld.w	$a1, $a1, 0
	blez	$a1, .LBB0_66
# %bb.64:                               # %.lr.ph134
	add.w	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a0, 1
	slt	$a4, $a1, $a2
	masknez	$a5, $a1, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a5
	sub.d	$a4, $a2, $a0
	ori	$a2, $zero, 4
	bgeu	$a4, $a2, .LBB0_67
# %bb.65:
	move	$a6, $zero
	move	$a2, $a0
	b	.LBB0_70
.LBB0_66:                               # %._crit_edge135.thread
	pcalau12i	$a1, %pc_hi20(attpercell)
	ld.w	$a1, $a1, %pc_lo12(attpercell)
	mul.d	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(attmax)
	ld.d	$a2, $a2, %got_pc_lo12(attmax)
	st.w	$a1, $a2, 0
	b	.LBB0_73
.LBB0_67:                               # %vector.ph175
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	add.d	$a2, $a5, $a0
	alsl.d	$a6, $a0, $a3, 3
	vrepli.b	$vr0, 0
	addi.d	$a6, $a6, 16
	move	$a7, $a5
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_68:                               # %vector.body178
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a6, 8
	ld.d	$t3, $a6, 16
	ld.w	$t0, $t0, 8
	ld.w	$t1, $t1, 8
	ld.w	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vinsgr2vr.w	$vr4, $t2, 0
	vinsgr2vr.w	$vr4, $t3, 1
	vslt.w	$vr3, $vr0, $vr3
	vslt.w	$vr4, $vr0, $vr4
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB0_68
# %bb.69:                               # %middle.block186
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.d	$a6, $vr0, 0
	beq	$a4, $a5, .LBB0_72
.LBB0_70:                               # %scalar.ph173.preheader
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a3, $a3, 8
	.p2align	4, , 16
.LBB0_71:                               # %scalar.ph173
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	ld.w	$a4, $a4, 8
	addi.d	$a2, $a2, 1
	slt	$a4, $zero, $a4
	add.d	$a6, $a6, $a4
	addi.d	$a3, $a3, 8
	blt	$a2, $a1, .LBB0_71
.LBB0_72:                               # %._crit_edge135
	pcalau12i	$a2, %pc_hi20(attpercell)
	ld.w	$a2, $a2, %pc_lo12(attpercell)
	add.d	$a3, $a6, $a0
	addi.w	$a4, $a6, 0
	mul.d	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(attmax)
	ld.d	$a3, $a3, %got_pc_lo12(attmax)
	st.w	$a2, $a3, 0
	ori	$a2, $zero, 1
	sltu	$a2, $a2, $a4
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB0_73:
	alsl.d	$a1, $a0, $a0, 2
	alsl.d	$a1, $a1, $a0, 1
	st.w	$a1, $s7, %pc_lo12(bigcell)
	pcalau12i	$a2, %pc_hi20(choose)
	st.w	$a0, $a2, %pc_lo12(choose)
	addi.d	$a0, $a1, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(toobig)
	pcaddu18i	$ra, %call36(prepSpots)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(utemp)
	jirl	$ra, $ra, 0
.LBB0_74:
	pcaddu18i	$ra, %call36(finalout)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(finalcheck)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(twstats)
	jirl	$ra, $ra, 0
	b	.LBB0_9
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	prepSpots                       # -- Begin function prepSpots
	.p2align	5
	.type	prepSpots,@function
prepSpots:                              # @prepSpots
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
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	lu12i.w	$a0, -2442
	blez	$a1, .LBB1_4
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a2, $a2, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a1, $a2, 8
	addi.d	$a2, $a3, -1
	ori	$a0, $a0, 2432
	lu12i.w	$a3, 2441
	ori	$a4, $a3, 1664
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.w	$a6, $a5, 56
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 152
	ld.w	$a6, $a5, 60
	ld.w	$a7, $a5, 56
	ld.w	$t0, $a5, 68
	ld.w	$a5, $a5, 64
	sub.w	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	slt	$a7, $a6, $a5
	masknez	$t0, $a5, $a7
	maskeqz	$a7, $a6, $a7
	or	$a7, $a7, $t0
	slt	$t0, $a7, $a4
	maskeqz	$a7, $a7, $t0
	masknez	$a4, $a4, $t0
	or	$a4, $a7, $a4
	slt	$a7, $a3, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $a3, $a7
	or	$a4, $a4, $a7
	slt	$a7, $a5, $a6
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	slt	$a6, $a0, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a0, $a0, $a6
	or	$a0, $a5, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_2
# %bb.3:                                # %._crit_edge.loopexit
	bstrpick.d	$a1, $a4, 31, 2
	b	.LBB1_5
.LBB1_4:
	lu12i.w	$a1, 610
	ori	$a1, $a1, 1440
	ori	$a0, $a0, 2432
.LBB1_5:                                # %._crit_edge
	pcalau12i	$a2, %got_pc_hi20(blockl)
	ld.d	$s7, $a2, %got_pc_lo12(blockl)
	ld.w	$a2, $s7, 0
	sub.d	$a3, $a2, $a0
	pcalau12i	$a4, %pc_hi20(spotXhash)
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.w	$a3, $a4, %pc_lo12(spotXhash)
	pcalau12i	$a4, %got_pc_hi20(blockb)
	ld.d	$s5, $a4, %got_pc_lo12(blockb)
	ld.w	$a4, $s5, 0
	sub.d	$a4, $a4, $a0
	pcalau12i	$a5, %pc_hi20(spotYhash)
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.w	$a4, $a5, %pc_lo12(spotYhash)
	pcalau12i	$a5, %got_pc_hi20(blockr)
	ld.d	$a5, $a5, %got_pc_lo12(blockr)
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a5, $a5, 0
	sub.w	$a2, $a5, $a2
	lu12i.w	$a6, 67108
	ori	$a6, $a6, 3539
	mul.d	$a2, $a2, $a6
	srli.d	$a6, $a2, 63
	srai.d	$a2, $a2, 39
	add.d	$a2, $a2, $a6
	addi.w	$a1, $a1, 0
	slt	$a6, $a2, $a1
	masknez	$a2, $a2, $a6
	maskeqz	$a1, $a1, $a6
	or	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(spotSize)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.w	$a1, $a2, %pc_lo12(spotSize)
	sub.d	$a2, $a0, $a3
	add.w	$a2, $a2, $a5
	div.w	$a2, $a2, $a1
	addi.w	$a2, $a2, 1
	pcalau12i	$s4, %pc_hi20(numXspots)
	st.w	$a2, $s4, %pc_lo12(numXspots)
	pcalau12i	$a3, %got_pc_hi20(blockt)
	ld.d	$a3, $a3, %got_pc_lo12(blockt)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a3, $a3, 0
	sub.d	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	div.w	$a0, $a0, $a1
	addi.w	$a3, $a0, 1
	pcalau12i	$s8, %pc_hi20(numYspots)
	st.w	$a3, $s8, %pc_lo12(numYspots)
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s3, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s4, %pc_lo12(numXspots)
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s6, %pc_hi20(spots)
	st.d	$a0, $s6, %pc_lo12(spots)
	blez	$s1, .LBB1_15
# %bb.6:                                # %.lr.ph148
	ld.w	$fp, $s8, %pc_lo12(numYspots)
	blez	$fp, .LBB1_13
# %bb.7:                                # %.lr.ph148.split.preheader
	move	$s0, $zero
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_8:                                # %._crit_edge145
                                        #   in Loop: Header=BB1_9 Depth=1
	addi.d	$s0, $s0, 1
	bge	$s0, $s1, .LBB1_15
.LBB1_9:                                # %.lr.ph148.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, %pc_lo12(spots)
	slli.d	$a1, $s0, 3
	stx.d	$a0, $a2, $a1
	blez	$fp, .LBB1_8
# %bb.10:                               # %.lr.ph144.preheader
                                        #   in Loop: Header=BB1_9 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph144
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s6, %pc_lo12(spots)
	ldx.d	$a2, $a2, $a1
	stx.b	$zero, $a2, $a0
	ld.w	$fp, $s8, %pc_lo12(numYspots)
	addi.d	$a0, $a0, 1
	blt	$a0, $fp, .LBB1_11
# %bb.12:                               # %._crit_edge145.loopexit
                                        #   in Loop: Header=BB1_9 Depth=1
	ld.w	$s1, $s4, %pc_lo12(numXspots)
	b	.LBB1_8
.LBB1_13:                               # %.lr.ph148.split.us
	move	$s0, $a0
	move	$s2, $s1
	.p2align	4, , 16
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB1_14
.LBB1_15:                               # %.preheader136
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB1_25
# %bb.16:                               # %.lr.ph157.preheader
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$s5, $a1, %got_pc_lo12(cellarray)
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               # %._crit_edge154
                                        #   in Loop: Header=BB1_18 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	addi.d	$a0, $s7, 1
	bge	$s7, $a1, .LBB1_24
.LBB1_18:                               # %.lr.ph157
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_22 Depth 3
	ld.d	$a1, $s5, 0
	move	$s7, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 56
	alsl.d	$a1, $a1, $a0, 3
	ld.d	$s4, $a1, 152
	ld.w	$a1, $a0, 12
	ld.w	$a2, $s4, 56
	add.w	$s1, $a2, $a1
	ld.w	$a2, $s4, 60
	ld.w	$a0, $a0, 16
	ld.w	$a3, $s4, 64
	ld.w	$a4, $s4, 68
	fld.d	$fa0, $s4, 8
	add.w	$s2, $a2, $a1
	add.w	$fp, $a3, $a0
	add.w	$s0, $a4, $a0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 16
	sub.w	$s3, $s1, $a0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 24
	add.w	$s2, $a0, $s2
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 32
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(spotXhash)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a3, $a2, %pc_lo12(spotSize)
	sub.w	$a2, $s3, $a1
	div.w	$a2, $a2, $a3
	sub.w	$a1, $s2, $a1
	div.w	$a1, $a1, $a3
	addi.w	$a4, $a2, 1
	bge	$a4, $a1, .LBB1_17
# %bb.19:                               # %.preheader135.lr.ph
                                        #   in Loop: Header=BB1_18 Depth=1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a5, $a4, %pc_lo12(spotYhash)
	add.d	$a0, $a0, $s0
	sub.w	$a0, $a0, $a5
	div.w	$a4, $a0, $a3
	add.d	$a0, $s1, $a5
	sub.w	$a0, $fp, $a0
	div.w	$a3, $a0, $a3
	addi.w	$a0, $a3, 1
	bge	$a0, $a4, .LBB1_17
# %bb.20:                               # %.preheader135.us.preheader
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.d	$a0, $a3, 1
	addi.d	$a2, $a2, 1
	nor	$a3, $a3, $zero
	add.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB1_21:                               # %.preheader135.us
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_22 Depth 3
	slli.d	$a4, $a2, 3
	move	$a5, $a3
	move	$a6, $a0
	.p2align	4, , 16
.LBB1_22:                               #   Parent Loop BB1_18 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $s6, %pc_lo12(spots)
	ldx.d	$a7, $a7, $a4
	ldx.b	$t0, $a7, $a6
	addi.d	$t0, $t0, 1
	stx.b	$t0, $a7, $a6
	addi.w	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB1_22
# %bb.23:                               # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB1_21 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$a4, $a2, 0
	bne	$a1, $a4, .LBB1_21
	b	.LBB1_17
.LBB1_24:                               # %._crit_edge158.loopexit
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s1, $s4, %pc_lo12(numXspots)
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
.LBB1_25:                               # %._crit_edge158
	pcalau12i	$a0, %pc_hi20(spotPenalty)
	addi.d	$fp, $a0, %pc_lo12(spotPenalty)
	blez	$s1, .LBB1_39
# %bb.26:                               # %.preheader134.lr.ph
	ld.w	$a1, $s8, %pc_lo12(numYspots)
	blez	$a1, .LBB1_39
# %bb.27:                               # %.preheader134.preheader
	ld.w	$a0, $s7, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $a2, %pc_lo12(spotXhash)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a2, 0
	move	$a2, $zero
	sub.w	$a0, $a0, $a3
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a6, $a5, %pc_lo12(spotSize)
	sub.w	$a4, $a4, $a3
	ld.w	$a5, $s5, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a7, $a3, %pc_lo12(spotYhash)
	div.w	$a3, $a0, $a6
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	div.w	$a4, $a4, $a6
	sub.w	$a5, $a5, $a7
	div.w	$a5, $a5, $a6
	sub.w	$a0, $a0, $a7
	div.w	$a6, $a0, $a6
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %._crit_edge161
                                        #   in Loop: Header=BB1_29 Depth=1
	ld.w	$a0, $s4, %pc_lo12(numXspots)
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB1_41
.LBB1_29:                               # %.preheader134
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_38 Depth 2
	blez	$a1, .LBB1_28
# %bb.30:                               # %.lr.ph160
                                        #   in Loop: Header=BB1_29 Depth=1
	slli.d	$a0, $a2, 3
	blt	$a2, $a3, .LBB1_37
# %bb.31:                               # %.lr.ph160
                                        #   in Loop: Header=BB1_29 Depth=1
	blt	$a4, $a2, .LBB1_37
# %bb.32:                               # %.lr.ph160.split.preheader
                                        #   in Loop: Header=BB1_29 Depth=1
	move	$a7, $zero
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_35 Depth=2
	ld.d	$a1, $s6, %pc_lo12(spots)
	ldx.d	$a1, $a1, $a0
	ldx.b	$t0, $a1, $a7
	addi.d	$t0, $t0, 1
	stx.b	$t0, $a1, $a7
	ld.w	$a1, $s8, %pc_lo12(numYspots)
.LBB1_34:                               #   in Loop: Header=BB1_35 Depth=2
	addi.d	$a7, $a7, 1
	bge	$a7, $a1, .LBB1_28
.LBB1_35:                               # %.lr.ph160.split
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$a7, $a5, .LBB1_33
# %bb.36:                               # %.lr.ph160.split
                                        #   in Loop: Header=BB1_35 Depth=2
	bge	$a6, $a7, .LBB1_34
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_37:                               # %.lr.ph160.split.us.preheader
                                        #   in Loop: Header=BB1_29 Depth=1
	move	$a7, $zero
	.p2align	4, , 16
.LBB1_38:                               # %.lr.ph160.split.us
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, %pc_lo12(spots)
	ldx.d	$a1, $a1, $a0
	ldx.b	$t0, $a1, $a7
	addi.d	$t0, $t0, 1
	stx.b	$t0, $a1, $a7
	ld.w	$a1, $s8, %pc_lo12(numYspots)
	addi.d	$a7, $a7, 1
	blt	$a7, $a1, .LBB1_38
	b	.LBB1_28
.LBB1_39:                               # %._crit_edge174.sink.split
	pcalau12i	$a0, %pc_hi20(spot_control)
	fld.d	$fa0, $a0, %pc_lo12(spot_control)
	st.w	$zero, $fp, 0
.LBB1_40:                               # %._crit_edge174
	ld.d	$a0, $s3, 0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a2, $a1, %pc_lo12(spotSize)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB1_41:                               # %._crit_edge163
	pcalau12i	$a1, %pc_hi20(spot_control)
	fld.d	$fa0, $a1, %pc_lo12(spot_control)
	st.w	$zero, $fp, 0
	blez	$a0, .LBB1_40
# %bb.42:                               # %.preheader.lr.ph
	ld.w	$a1, $s8, %pc_lo12(numYspots)
	blez	$a1, .LBB1_40
# %bb.43:                               # %.preheader.us.preheader
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a4, $a2, %pc_lo12(spotSize)
	move	$a2, $zero
	move	$t1, $zero
	ld.d	$a3, $s6, %pc_lo12(spots)
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	vreplvei.d	$vr2, $vr0, 0
	vreplvei.d	$vr3, $vr1, 0
	ori	$a5, $zero, 8
	ori	$a6, $zero, 1
	addi.d	$a7, $fp, 4
	vrepli.b	$vr4, 0
	vrepli.b	$vr5, -1
	vrepli.w	$vr6, 1
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # %._crit_edge167.us
                                        #   in Loop: Header=BB1_45 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB1_40
.LBB1_45:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_52 Depth 2
                                        #     Child Loop BB1_50 Depth 2
	slli.d	$t0, $a2, 3
	ldx.d	$t0, $a3, $t0
	bltu	$a1, $a5, .LBB1_48
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_45 Depth=1
	add.d	$t2, $t0, $a1
	bgeu	$fp, $t2, .LBB1_51
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_45 Depth=1
	bgeu	$t0, $a7, .LBB1_51
.LBB1_48:                               #   in Loop: Header=BB1_45 Depth=1
	move	$t2, $zero
.LBB1_49:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_45 Depth=1
	add.d	$t0, $t0, $t2
	sub.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB1_50:                               # %scalar.ph
                                        #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t3, $t0, 0
	slt	$t4, $zero, $t3
	addi.d	$t5, $t3, -1
	sub.d	$t3, $a6, $t3
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $t5, $t4
	or	$t3, $t4, $t3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa7, $t3
	ffint.d.l	$fa7, $fa7
	fmul.d	$fa7, $fa0, $fa7
	fmul.d	$fa7, $fa7, $fa1
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$t3, $fa7
	add.d	$t1, $t1, $t3
	st.w	$t1, $fp, 0
	addi.d	$t2, $t2, -1
	addi.d	$t0, $t0, 1
	bnez	$t2, .LBB1_50
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_51:                               # %vector.ph
                                        #   in Loop: Header=BB1_45 Depth=1
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.w	$vr7, $t1, 0
	addi.d	$t1, $t0, 4
	move	$t2, $a4
	vori.b	$vr8, $vr4, 0
	.p2align	4, , 16
.LBB1_52:                               # %vector.body
                                        #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, -4
	ld.w	$t4, $t1, 0
	vinsgr2vr.w	$vr9, $t3, 0
	vinsgr2vr.w	$vr10, $t4, 0
	vsllwil.h.b	$vr11, $vr9, 0
	vsllwil.w.h	$vr11, $vr11, 0
	vsllwil.h.b	$vr12, $vr10, 0
	vsllwil.w.h	$vr12, $vr12, 0
	vslt.b	$vr9, $vr4, $vr9
	vsllwil.h.b	$vr9, $vr9, 0
	vsllwil.w.h	$vr9, $vr9, 0
	vslt.b	$vr10, $vr4, $vr10
	vsllwil.h.b	$vr10, $vr10, 0
	vsllwil.w.h	$vr10, $vr10, 0
	vadd.w	$vr13, $vr11, $vr5
	vadd.w	$vr14, $vr12, $vr5
	vsub.w	$vr11, $vr6, $vr11
	vsub.w	$vr12, $vr6, $vr12
	vbitsel.v	$vr9, $vr11, $vr13, $vr9
	vbitsel.v	$vr10, $vr12, $vr14, $vr10
	vpickve2gr.w	$t3, $vr9, 3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft3, $t3
	ffint.d.l	$ft3, $ft3
	vpickve2gr.w	$t3, $vr9, 2
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft4, $t3
	ffint.d.l	$ft4, $ft4
	vextrins.d	$vr12, $vr11, 16
	vpickve2gr.w	$t3, $vr9, 1
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft3, $t3
	ffint.d.l	$ft3, $ft3
	vpickve2gr.w	$t3, $vr9, 0
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft1, $t3
	ffint.d.l	$ft1, $ft1
	vextrins.d	$vr9, $vr11, 16
	vpickve2gr.w	$t3, $vr10, 3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft3, $t3
	ffint.d.l	$ft3, $ft3
	vpickve2gr.w	$t3, $vr10, 2
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft5, $t3
	ffint.d.l	$ft5, $ft5
	vextrins.d	$vr13, $vr11, 16
	vpickve2gr.w	$t3, $vr10, 1
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft3, $t3
	ffint.d.l	$ft3, $ft3
	vpickve2gr.w	$t3, $vr10, 0
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft2, $t3
	ffint.d.l	$ft2, $ft2
	vextrins.d	$vr10, $vr11, 16
	vfmul.d	$vr9, $vr2, $vr9
	vfmul.d	$vr11, $vr2, $vr12
	vfmul.d	$vr10, $vr2, $vr10
	vfmul.d	$vr12, $vr2, $vr13
	vfmul.d	$vr11, $vr11, $vr3
	vfmul.d	$vr9, $vr9, $vr3
	vfmul.d	$vr12, $vr12, $vr3
	vfmul.d	$vr10, $vr10, $vr3
	vreplvei.d	$vr13, $vr9, 0
	ftintrz.w.d	$ft5, $ft5
	movfr2gr.s	$t3, $ft5
	vinsgr2vr.w	$vr13, $t3, 0
	vreplvei.d	$vr9, $vr9, 1
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$t3, $ft1
	vinsgr2vr.w	$vr13, $t3, 1
	vreplvei.d	$vr9, $vr11, 0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$t3, $ft1
	vinsgr2vr.w	$vr13, $t3, 2
	vreplvei.d	$vr9, $vr11, 1
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$t3, $ft1
	vinsgr2vr.w	$vr13, $t3, 3
	vreplvei.d	$vr9, $vr10, 0
	ftintrz.w.d	$ft1, $ft1
	movfr2gr.s	$t3, $ft1
	vinsgr2vr.w	$vr9, $t3, 0
	vreplvei.d	$vr10, $vr10, 1
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$t3, $ft2
	vinsgr2vr.w	$vr9, $t3, 1
	vreplvei.d	$vr10, $vr12, 0
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$t3, $ft2
	vinsgr2vr.w	$vr9, $t3, 2
	vreplvei.d	$vr10, $vr12, 1
	ftintrz.w.d	$ft2, $ft2
	movfr2gr.s	$t3, $ft2
	vinsgr2vr.w	$vr9, $t3, 3
	vadd.w	$vr7, $vr7, $vr13
	vadd.w	$vr8, $vr8, $vr9
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB1_52
# %bb.53:                               # %middle.block
                                        #   in Loop: Header=BB1_45 Depth=1
	vadd.w	$vr7, $vr8, $vr7
	vhaddw.d.w	$vr7, $vr7, $vr7
	vhaddw.q.d	$vr7, $vr7, $vr7
	vpickve2gr.d	$t1, $vr7, 0
	st.w	$t1, $fp, 0
	move	$t2, $a4
	beq	$a4, $a1, .LBB1_44
	b	.LBB1_49
.Lfunc_end1:
	.size	prepSpots, .Lfunc_end1-prepSpots
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s.out"
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"w"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"can't open %s\n"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"TimberWolfMC dated: June 29 1986\n"
	.size	.L.str.5, 34

	.type	doPlacement,@object             # @doPlacement
	.comm	doPlacement,4,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nThe rand generator seed was: %d\n\n\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s.cel"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"r"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"bdxlength:%d    bdylength:%d\n"
	.size	.L.str.9, 30

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s.net"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s.sav"
	.size	.L.str.11, 7

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\n\n\nTHE ROUTE COST OF THE CURRENT PLACEMENT: %d\n"
	.size	.L.str.12, 48

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\nTHE PENALTY OF THE CURRENT PLACEMENT: %d\n"
	.size	.L.str.13, 43

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\nTHE OVERFILL OF THE CURRENT PIN PLACEMENT: %d\n"
	.size	.L.str.14, 48

	.type	bigcell,@object                 # @bigcell
	.comm	bigcell,4,4
	.type	toobig,@object                  # @toobig
	.comm	toobig,4,4
	.type	totFunc,@object                 # @totFunc
	.comm	totFunc,8,8
	.type	aveCellSide,@object             # @aveCellSide
	.comm	aveCellSide,8,8
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\n\n\n"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"parameter adjust: route:%d  penalty:%d  overfill:%d\n"
	.size	.L.str.16, 53

	.type	totPen,@object                  # @totPen
	.comm	totPen,8,8
	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"nets.per.cell:%g  ave.cell.side:%g\n"
	.size	.L.str.17, 36

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n\nOVERLAP FACTOR (COMPUTED) : %f\n\n"
	.size	.L.str.18, 35

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"MEAN AND STANDARD DEVIATION OF SQRT OF CELL AREA:\n"
	.size	.L.str.19, 51

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"MEAN: %g   STANDARD DEVIATION: %g\n"
	.size	.L.str.20, 35

	.type	rangeLimit,@object              # @rangeLimit
	.comm	rangeLimit,4,4
	.type	Tsave,@object                   # @Tsave
	.comm	Tsave,8,8
	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\n\n\nThe New Cost Values after readjustment:\n\n"
	.size	.L.str.21, 45

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"route:%d  penalty:%d  overfill:%d\n\n\n"
	.size	.L.str.22, 37

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%s.res"
	.size	.L.str.23, 7

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"restart file: %s  wasn't present\n"
	.size	.L.str.24, 34

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"reading data from %s\n"
	.size	.L.str.25, 22

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\n\nTHE PENALTY OF THE CURRENT PLACEMENT: %d\n"
	.size	.L.str.26, 44

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\n\nTHE OVERFILL OF THE CURRENT PIN PLACEMENT: %d\n"
	.size	.L.str.27, 49

	.type	cost_only,@object               # @cost_only
	.comm	cost_only,4,4
	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\nTimberWolfMC Cell Placement Ready for Action\n\n"
	.size	.L.str.28, 48

	.type	attpercell,@object              # @attpercell
	.comm	attpercell,4,4
	.type	choose,@object                  # @choose
	.comm	choose,4,4
	.type	doChannelGraph,@object          # @doChannelGraph
	.comm	doChannelGraph,4,4
	.type	doGlobalRoute,@object           # @doGlobalRoute
	.comm	doGlobalRoute,4,4
	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\n\n************************************ \n\n"
	.size	.L.str.29, 42

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"TimberWolfMC has completed its mission\n"
	.size	.L.str.30, 40

	.type	spotXhash,@object               # @spotXhash
	.comm	spotXhash,4,4
	.type	spotYhash,@object               # @spotYhash
	.comm	spotYhash,4,4
	.type	spotSize,@object                # @spotSize
	.comm	spotSize,4,4
	.type	numXspots,@object               # @numXspots
	.comm	numXspots,4,4
	.type	numYspots,@object               # @numYspots
	.comm	numYspots,4,4
	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"numXspots:%d       numYspots:%d\n\n"
	.size	.L.str.31, 34

	.type	spots,@object                   # @spots
	.comm	spots,8,8
	.type	spotPenalty,@object             # @spotPenalty
	.comm	spotPenalty,4,4
	.type	spot_control,@object            # @spot_control
	.comm	spot_control,8,8
	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Value of Spot Control: %f\n"
	.size	.L.str.32, 27

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Value of Spot Size: %d\n"
	.size	.L.str.33, 24

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Initial Value of Spot Penalty: %d\n\n"
	.size	.L.str.34, 36

	.type	chipaspect,@object              # @chipaspect
	.comm	chipaspect,8,8
	.type	iwire,@object                   # @iwire
	.comm	iwire,4,4
	.type	iwirex,@object                  # @iwirex
	.comm	iwirex,4,4
	.type	iwirey,@object                  # @iwirey
	.comm	iwirey,4,4
	.type	icost,@object                   # @icost
	.comm	icost,4,4
	.type	fwire,@object                   # @fwire
	.comm	fwire,4,4
	.type	fwirex,@object                  # @fwirex
	.comm	fwirex,4,4
	.type	fwirey,@object                  # @fwirey
	.comm	fwirey,4,4
	.type	fcost,@object                   # @fcost
	.comm	fcost,4,4
	.type	doCompaction,@object            # @doCompaction
	.comm	doCompaction,4,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"TimberWolf usage:  TimberWolf circuitName <CR> "
	.size	.Lstr, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym woverlap
	.addrsig_sym woverlapf
	.addrsig_sym woverlapx
