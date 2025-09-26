	.file	"ReedSolomon.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rsdec_204
.LCPI0_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
.LCPI0_1:
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
.LCPI0_2:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	rsdec_204
	.p2align	5
	.type	rsdec_204,@function
rsdec_204:                              # @rsdec_204
# %bb.0:
	addi.d	$sp, $sp, -1712
	st.d	$ra, $sp, 1704                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1688                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1680                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1672                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1664                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1656                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1648                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1640                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1624                  # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(inited)
	ld.bu	$a2, $s1, %pc_lo12(inited)
	move	$s0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(index_of)
	addi.d	$s3, $a0, %pc_lo12(index_of)
	pcalau12i	$a0, %pc_hi20(alpha_to)
	addi.d	$s2, $a0, %pc_lo12(alpha_to)
	bnez	$a2, .LBB0_6
# %bb.1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.d	$a0, $s3, 4
	ori	$a0, $zero, 2
	st.w	$a0, $s3, 16
	vst	$vr0, $s2, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 32
	ori	$a0, $zero, 4
	st.w	$a0, $s3, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s2, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	st.w	$a0, $s3, 128
	ori	$a0, $zero, 6
	st.w	$a0, $s3, 256
	vst	$vr0, $s2, 16
	ori	$a0, $zero, 7
	st.w	$a0, $s3, 512
	ori	$a0, $zero, 8
	st.w	$a0, $s3, 116
	ori	$a0, $zero, 36
	ori	$a1, $zero, 9
	ori	$a2, $zero, 128
	ori	$a3, $zero, 1020
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	stx.w	$a5, $s2, $a0
	slli.d	$a4, $a5, 2
	stx.w	$a1, $s3, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	move	$a4, $a5
	beq	$a0, $a3, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	slli.w	$a5, $a4, 1
	blt	$a4, $a2, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a4, $s2, 32
	xor	$a4, $a5, $a4
	xori	$a5, $a4, 256
	b	.LBB0_2
.LBB0_5:                                # %generate_gf.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 0
	pcaddu18i	$ra, %call36(gen_poly)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s1, %pc_lo12(inited)
.LBB0_6:                                # %.preheader32.preheader
	ld.w	$a0, $s0, 188
	vinsgr2vr.w	$vr0, $a0, 0
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vilvl.b	$vr0, $vr1, $vr0
	vilvl.h	$vr0, $vr1, $vr0
	pcalau12i	$a0, %pc_hi20(recd)
	addi.d	$s1, $a0, %pc_lo12(recd)
	ld.w	$a0, $s0, 192
	vst	$vr0, $s1, 0
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s0, 196
	vilvl.b	$vr0, $vr1, $vr0
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $s1, 16
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s0, 200
	vilvl.b	$vr0, $vr1, $vr0
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $s1, 32
	vinsgr2vr.w	$vr0, $a0, 0
	vilvl.b	$vr0, $vr1, $vr0
	vilvl.h	$vr0, $vr1, $vr0
	vst	$vr0, $s1, 48
	addi.d	$a0, $s1, 64
	ori	$a2, $zero, 204
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 4
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 268
	vst	$vr1, $s1, 284
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s0, 12
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 300
	vst	$vr1, $s1, 316
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s0, 20
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 332
	vst	$vr1, $s1, 348
	ld.w	$a0, $s0, 24
	ld.w	$a1, $s0, 28
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 364
	vst	$vr1, $s1, 380
	ld.w	$a0, $s0, 32
	ld.w	$a1, $s0, 36
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 396
	vst	$vr1, $s1, 412
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 44
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 428
	vst	$vr1, $s1, 444
	ld.w	$a0, $s0, 48
	ld.w	$a1, $s0, 52
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 460
	vst	$vr1, $s1, 476
	ld.w	$a0, $s0, 56
	ld.w	$a1, $s0, 60
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 492
	vst	$vr1, $s1, 508
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 524
	vst	$vr1, $s1, 540
	ld.w	$a0, $s0, 72
	ld.w	$a1, $s0, 76
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 556
	vst	$vr1, $s1, 572
	ld.w	$a0, $s0, 80
	ld.w	$a1, $s0, 84
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 588
	vst	$vr1, $s1, 604
	ld.w	$a0, $s0, 88
	ld.w	$a1, $s0, 92
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 620
	vst	$vr1, $s1, 636
	ld.w	$a0, $s0, 96
	ld.w	$a1, $s0, 100
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 652
	vst	$vr1, $s1, 668
	ld.w	$a0, $s0, 104
	ld.w	$a1, $s0, 108
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 684
	vst	$vr1, $s1, 700
	ld.w	$a0, $s0, 112
	ld.w	$a1, $s0, 116
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 716
	vst	$vr1, $s1, 732
	ld.w	$a0, $s0, 120
	ld.w	$a1, $s0, 124
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 748
	vst	$vr1, $s1, 764
	ld.w	$a0, $s0, 128
	ld.w	$a1, $s0, 132
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 780
	vst	$vr1, $s1, 796
	ld.w	$a0, $s0, 136
	ld.w	$a1, $s0, 140
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 812
	vst	$vr1, $s1, 828
	ld.w	$a0, $s0, 144
	ld.w	$a1, $s0, 148
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 844
	vst	$vr1, $s1, 860
	ld.w	$a0, $s0, 152
	ld.w	$a1, $s0, 156
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 876
	vst	$vr1, $s1, 892
	ld.w	$a0, $s0, 160
	ld.w	$a1, $s0, 164
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 908
	vst	$vr1, $s1, 924
	ld.w	$a0, $s0, 168
	ld.w	$a1, $s0, 172
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 940
	vst	$vr1, $s1, 956
	ld.w	$a0, $s0, 176
	ld.w	$a1, $s0, 180
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr0, $vr2, $vr0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.b	$vr1, $vr2, $vr1
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $s1, 972
	vst	$vr1, $s1, 988
	ld.bu	$a0, $s0, 184
	st.w	$a0, $s1, 1004
	ld.bu	$a0, $s0, 185
	st.w	$a0, $s1, 1008
	ld.bu	$a0, $s0, 186
	st.w	$a0, $s1, 1012
	ld.bu	$a1, $s0, 187
	move	$a0, $zero
	st.w	$a1, $s1, 1016
	ori	$a1, $zero, 1008
	.p2align	4, , 16
.LBB0_7:                                # %vector.body124
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $s1, $a0
	vshuf4i.w	$vr1, $vr0, 50
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vshuf4i.w	$vr0, $vr0, 16
	vslli.d	$vr0, $vr0, 32
	vsrai.d	$vr0, $vr0, 32
	vpickve2gr.d	$a2, $vr0, 0
	slli.d	$a2, $a2, 2
	vpickve2gr.d	$a3, $vr0, 1
	slli.d	$a3, $a3, 2
	vpickve2gr.d	$a4, $vr1, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr1, 1
	slli.d	$a5, $a5, 2
	ldx.w	$a2, $s3, $a2
	ldx.w	$a3, $s3, $a3
	ldx.w	$a4, $s3, $a4
	ldx.w	$a5, $s3, $a5
	vinsgr2vr.w	$vr0, $a2, 0
	vinsgr2vr.w	$vr0, $a3, 1
	vinsgr2vr.w	$vr0, $a4, 2
	vinsgr2vr.w	$vr0, $a5, 3
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	bne	$a0, $a1, .LBB0_7
# %bb.8:                                # %.preheader
	ld.w	$a0, $s1, 1008
	ld.w	$a1, $s1, 1012
	slli.d	$a0, $a0, 2
	ld.w	$a2, $s1, 1016
	ldx.w	$a0, $s3, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s3, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$a2, $s3, $a1
	move	$a1, $zero
	st.w	$a0, $s1, 1008
	st.w	$a3, $s1, 1012
	st.w	$a2, $s1, 1016
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 188
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 1020
	ori	$a5, $zero, 17
	lu12i.w	$a6, -522232
	ori	$s4, $a6, 129
	ori	$a6, $zero, 1
	ori	$a7, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	sltui	$t2, $t1, 1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s3, $t1
	masknez	$t3, $a2, $t2
	maskeqz	$a1, $a1, $t2
	or	$a1, $a1, $t3
	st.w	$t1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	beq	$a7, $a5, .LBB0_14
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	move	$t2, $zero
	move	$t3, $zero
	move	$t1, $zero
	alsl.d	$t0, $a7, $a3, 2
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	addi.d	$t3, $t3, 4
	add.d	$t2, $t2, $a6
	beq	$t3, $a4, .LBB0_9
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t4, $s1, $t3
	beq	$t4, $a0, .LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	add.w	$t4, $t2, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xor	$t1, $t4, $t1
	st.w	$t1, $t0, 0
	b	.LBB0_11
.LBB0_14:
	beqz	$a1, .LBB0_58
# %bb.15:
	ld.w	$s7, $sp, 192
	move	$s6, $zero
	st.w	$zero, $sp, 400
	addi.d	$a1, $sp, 192
	st.w	$s7, $sp, 404
	st.w	$zero, $sp, 472
	addi.d	$a2, $sp, 536
	st.d	$a0, $sp, 476
	st.d	$a0, $sp, 484
	st.d	$a0, $sp, 492
	st.d	$a0, $sp, 500
	st.d	$a0, $sp, 508
	st.d	$a0, $sp, 516
	st.d	$a0, $sp, 524
	move	$a3, $a0
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 532
	st.d	$zero, $sp, 540
	vst	$vr2, $sp, 548
	vst	$vr2, $sp, 564
	vst	$vr2, $sp, 580
	st.w	$zero, $sp, 596
	st.d	$zero, $sp, 328
	move	$a3, $a0
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 256
	addi.d	$a3, $sp, 600
	addi.d	$a4, $sp, 604
	ori	$a5, $zero, 1
	addi.d	$a6, $sp, 400
	addi.d	$s0, $sp, 328
	addi.d	$t2, $sp, 256
	move	$a7, $a0
	addi.d	$t7, $sp, 400
	ori	$t8, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $t4, 2
	ldx.w	$s7, $s3, $t0
	st.w	$s7, $s6, 0
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 4
	addi.w	$a7, $a7, 1
	addi.d	$a3, $a3, 64
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, 64
	addi.d	$a1, $a1, 4
	move	$s6, $t6
	ori	$t0, $zero, 9
	bge	$s5, $t0, .LBB0_90
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_55 Depth 2
	addi.d	$t6, $s6, 1
	slli.d	$s5, $t6, 2
	alsl.d	$t1, $s6, $s0, 2
	beq	$s7, $a0, .LBB0_26
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	slli.d	$t3, $s6, 6
	addi.d	$t0, $sp, 472
	add.d	$t3, $t0, $t3
	addi.d	$s8, $t3, 128
	move	$t6, $a7
	move	$t5, $t7
	move	$ra, $t8
	move	$t3, $s6
	.p2align	4, , 16
.LBB0_19:                               # %.preheader328.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $t3
	move	$t4, $t6
	addi.w	$ra, $ra, -1
	blez	$t3, .LBB0_21
# %bb.20:                               # %.preheader328.i
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.w	$t0, $t5, 0
	addi.d	$t3, $fp, -1
	addi.d	$t5, $t5, -4
	addi.w	$s0, $zero, -1
	addi.w	$t6, $t4, -1
	beq	$t0, $s0, .LBB0_19
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=1
	blez	$fp, .LBB0_29
# %bb.22:                               # %.preheader326.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bstrpick.d	$t0, $fp, 31, 0
	addi.d	$t3, $t0, 1
	addi.d	$s0, $sp, 328
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=2
	addi.d	$t3, $t3, -1
	addi.w	$t4, $t4, -1
	bgeu	$a5, $t3, .LBB0_30
.LBB0_24:                               # %.preheader326.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t5, $t4, 2
	ldx.w	$t0, $t5, $a6
	addi.w	$t6, $zero, -1
	beq	$t0, $t6, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	slli.d	$t0, $ra, 2
	ldx.w	$t0, $t0, $t2
	ldx.w	$t5, $t5, $t2
	slt	$t0, $t0, $t5
	masknez	$t5, $ra, $t0
	maskeqz	$t0, $t4, $t0
	or	$ra, $t0, $t5
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	ldx.w	$s5, $s5, $s0
	st.w	$s5, $t1, 8
	bltz	$s5, .LBB0_49
# %bb.27:                               # %.lr.ph343.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t1, $s5, 1
	bstrpick.d	$t1, $t1, 31, 0
	ori	$t0, $zero, 3
	bgeu	$s5, $t0, .LBB0_44
# %bb.28:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t4, $zero
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_17 Depth=1
	move	$ra, $zero
	addi.d	$s0, $sp, 328
.LBB0_30:                               # %.loopexit327.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $ra, 2
	ldx.w	$t3, $t0, $s0
	ldx.w	$t4, $s5, $s0
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	sub.d	$t5, $t5, $ra
	add.w	$t3, $t3, $t5
	slt	$t5, $t3, $t4
	masknez	$t3, $t3, $t5
	maskeqz	$t5, $t4, $t5
	or	$s5, $t5, $t3
	st.w	$s5, $t1, 8
	ldx.w	$t3, $t0, $s0
	vst	$vr2, $s8, 0
	vst	$vr2, $s8, 16
	vst	$vr2, $s8, 32
	vst	$vr2, $s8, 48
	bltz	$t3, .LBB0_35
# %bb.31:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $ra, 6
	addi.d	$t1, $sp, 472
	add.d	$t1, $t1, $t0
	addi.d	$s7, $s7, 255
	alsl.d	$t5, $ra, $a6, 2
	addi.d	$t0, $t3, 1
	bstrpick.d	$t3, $t0, 31, 0
	sub.w	$ra, $t8, $ra
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               #   in Loop: Header=BB0_33 Depth=2
	addi.d	$t3, $t3, -1
	addi.w	$ra, $ra, 1
	addi.d	$t1, $t1, 4
	beqz	$t3, .LBB0_35
.LBB0_33:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t1, 0
	addi.w	$t0, $zero, -1
	beq	$t6, $t0, .LBB0_32
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=2
	ld.w	$t0, $t5, 0
	add.d	$t6, $s7, $t6
	sub.w	$t0, $t6, $t0
	mul.d	$t6, $t0, $s4
	srli.d	$t6, $t6, 32
	add.w	$t6, $t6, $t0
	bstrpick.d	$fp, $t6, 31, 31
	srai.d	$t6, $t6, 7
	add.d	$t6, $t6, $fp
	slli.d	$fp, $t6, 8
	sub.d	$t6, $t6, $fp
	add.w	$t0, $t0, $t6
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s2, $t0
	slli.d	$t6, $ra, 2
	stx.w	$t0, $s8, $t6
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_35:                               # %.preheader323.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bltz	$t4, .LBB0_41
# %bb.36:                               # %.lr.ph340.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $t4, 1
	bstrpick.d	$t1, $t0, 31, 0
	ori	$t0, $zero, 3
	bgeu	$t4, $t0, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t4, $zero
	b	.LBB0_42
.LBB0_38:                               # %vector.ph138
                                        #   in Loop: Header=BB0_17 Depth=1
	bstrpick.d	$t0, $t1, 31, 2
	slli.d	$t4, $t0, 2
	move	$t5, $a3
	move	$s7, $t4
	.p2align	4, , 16
.LBB0_39:                               # %vector.body141
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t5, -64
	vld	$vr1, $t5, 0
	vxor.v	$vr1, $vr1, $vr0
	vst	$vr1, $t5, 0
	vshuf4i.w	$vr1, $vr0, 50
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vshuf4i.w	$vr0, $vr0, 16
	vslli.d	$vr0, $vr0, 32
	vsrai.d	$vr0, $vr0, 32
	vpickve2gr.d	$t0, $vr0, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t3, $vr0, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t6, $vr1, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$fp, $vr1, 1
	slli.d	$fp, $fp, 2
	ldx.w	$t0, $s3, $t0
	ldx.w	$t3, $s3, $t3
	ldx.w	$t6, $s3, $t6
	ldx.w	$fp, $s3, $fp
	vinsgr2vr.w	$vr0, $t0, 0
	vinsgr2vr.w	$vr0, $t3, 1
	vinsgr2vr.w	$vr0, $t6, 2
	vinsgr2vr.w	$vr0, $fp, 3
	vst	$vr0, $t5, -64
	addi.d	$s7, $s7, -4
	addi.d	$t5, $t5, 16
	bnez	$s7, .LBB0_39
# %bb.40:                               # %middle.block146
                                        #   in Loop: Header=BB0_17 Depth=1
	bne	$t4, $t1, .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_42:                               # %scalar.ph136.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$t1, $t1, $t4
	slli.d	$t3, $t4, 2
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_43:                               # %scalar.ph136
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t0, $a2, $t3
	ldx.w	$t4, $a3, $t3
	slli.d	$t5, $t0, 2
	ldx.w	$t5, $s3, $t5
	xor	$t0, $t4, $t0
	stx.w	$t0, $a3, $t3
	stx.w	$t5, $a2, $t3
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, 4
	bnez	$t1, .LBB0_43
	b	.LBB0_49
.LBB0_44:                               # %vector.ph130
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$t0, $t6
	move	$t3, $zero
	bstrpick.d	$t4, $t1, 31, 2
	slli.d	$t4, $t4, 2
	slli.d	$t5, $t1, 2
	bstrins.d	$t5, $zero, 3, 0
	.p2align	4, , 16
.LBB0_45:                               # %vector.body131
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $a2, $t3
	vstx	$vr0, $a3, $t3
	vshuf4i.w	$vr1, $vr0, 50
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vshuf4i.w	$vr0, $vr0, 16
	vslli.d	$vr0, $vr0, 32
	vsrai.d	$vr0, $vr0, 32
	vpickve2gr.d	$t6, $vr0, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$fp, $vr0, 1
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s7, $vr1, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s8, $vr1, 1
	slli.d	$s8, $s8, 2
	ldx.w	$t6, $s3, $t6
	ldx.w	$fp, $s3, $fp
	ldx.w	$s7, $s3, $s7
	ldx.w	$s8, $s3, $s8
	vinsgr2vr.w	$vr0, $t6, 0
	vinsgr2vr.w	$vr0, $fp, 1
	vinsgr2vr.w	$vr0, $s7, 2
	vinsgr2vr.w	$vr0, $s8, 3
	vstx	$vr0, $a2, $t3
	addi.d	$t3, $t3, 16
	bne	$t5, $t3, .LBB0_45
# %bb.46:                               # %middle.block135
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$t6, $t0
	beq	$t4, $t1, .LBB0_49
.LBB0_47:                               # %scalar.ph129.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$t1, $t1, $t4
	slli.d	$t3, $t4, 2
	.p2align	4, , 16
.LBB0_48:                               # %scalar.ph129
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t4, $a2, $t3
	slli.d	$t5, $t4, 2
	ldx.w	$t5, $s3, $t5
	stx.w	$t4, $a3, $t3
	stx.w	$t5, $a2, $t3
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, 4
	bnez	$t1, .LBB0_48
	.p2align	4, , 16
.LBB0_49:                               # %.loopexit322.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t3, $s6, 2
	sub.d	$t0, $t6, $s5
	slli.d	$t1, $t3, 2
	stx.w	$t0, $t1, $t2
	ori	$t0, $zero, 15
	beq	$s6, $t0, .LBB0_62
# %bb.50:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $sp, 188
	ldx.w	$t4, $t1, $t0
	addi.w	$t1, $zero, -1
	beq	$t4, $t1, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $t4, 2
	ldx.w	$t4, $s2, $t0
	alsl.d	$s6, $t3, $a6, 2
	bgtz	$s5, .LBB0_53
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t4, $zero
	alsl.d	$s6, $t3, $a6, 2
	blez	$s5, .LBB0_16
.LBB0_53:                               # %.lr.ph346.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $s5, 1
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$s7, $t0, -1
	move	$s8, $a1
	move	$ra, $a4
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               #   in Loop: Header=BB0_55 Depth=2
	addi.d	$s7, $s7, -1
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, -4
	beqz	$s7, .LBB0_16
.LBB0_55:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $s8, 0
	beq	$t3, $t1, .LBB0_54
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=2
	ld.w	$t5, $ra, 0
	beqz	$t5, .LBB0_54
# %bb.57:                               #   in Loop: Header=BB0_55 Depth=2
	slli.d	$t0, $t5, 2
	ldx.w	$t0, $s3, $t0
	add.w	$t0, $t0, $t3
	mul.d	$t3, $t0, $s4
	srli.d	$t3, $t3, 32
	add.w	$t3, $t3, $t0
	bstrpick.d	$t5, $t3, 31, 31
	srai.d	$t3, $t3, 7
	add.d	$t3, $t3, $t5
	slli.d	$t5, $t3, 8
	sub.d	$t3, $t3, $t5
	add.w	$t0, $t0, $t3
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s2, $t0
	xor	$t4, $t0, $t4
	st.w	$t4, $s6, 0
	b	.LBB0_54
.LBB0_58:                               # %.preheader.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_59:                               #   in Loop: Header=BB0_60 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_94
.LBB0_60:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_59
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_60
	b	.LBB0_94
.LBB0_62:                               # %.critedge.i
	ori	$a0, $zero, 9
	bge	$s5, $a0, .LBB0_90
# %bb.63:                               # %.preheader319.i
	addi.w	$s6, $s5, 1
	bltz	$s5, .LBB0_96
# %bb.64:                               # %.lr.ph350.i
	addi.d	$a0, $sp, 1560
	move	$a1, $s6
	.p2align	4, , 16
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_65
# %bb.66:                               # %.preheader318.i
	beqz	$s5, .LBB0_95
# %bb.67:                               # %.preheader316.i.preheader
	addi.d	$s0, $sp, 56
	addi.d	$a1, $sp, 1564
	slli.d	$a2, $s5, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	addi.d	$a2, $s6, -1
	ori	$a3, $zero, 1
	addi.w	$a0, $zero, -1
	addi.d	$a4, $sp, 156
	ori	$a5, $zero, 255
	addi.d	$a6, $sp, 124
	ori	$a7, $zero, 256
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge358.i
                                        #   in Loop: Header=BB0_70 Depth=1
	beqz	$t2, .LBB0_74
# %bb.69:                               # %._crit_edge358.thread.i
                                        #   in Loop: Header=BB0_70 Depth=1
	addi.w	$a3, $a3, 1
	beq	$a3, $a7, .LBB0_75
.LBB0_70:                               # %.preheader316.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_72 Depth 2
	move	$t0, $s0
	ori	$t1, $zero, 1
	move	$t3, $a2
	ori	$t2, $zero, 1
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_71:                               #   in Loop: Header=BB0_72 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	beqz	$t3, .LBB0_68
.LBB0_72:                               # %.lr.ph357.i
                                        #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t0, 0
	beq	$t4, $a0, .LBB0_71
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=2
	add.w	$t4, $t1, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t5, $t4, 2
	ldx.w	$t5, $s2, $t5
	st.w	$t4, $t0, 0
	xor	$t2, $t5, $t2
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_74:                               #   in Loop: Header=BB0_70 Depth=1
	slli.d	$t0, $a1, 2
	stx.w	$a3, $t0, $a4
	sub.d	$t1, $a5, $a3
	stx.w	$t1, $t0, $a6
	addi.w	$a1, $a1, 1
	addi.w	$a3, $a3, 1
	bne	$a3, $a7, .LBB0_70
.LBB0_75:                               # %.split.us.thread
	bne	$a1, $s5, .LBB0_97
# %bb.76:                               # %.lr.ph368.i
	move	$a1, $zero
	addi.d	$a2, $sp, 1560
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 192
	addi.d	$a5, $sp, 188
	ori	$a6, $zero, 2
	addi.d	$a7, $sp, 88
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_77:                               # %._crit_edge365.i
                                        #   in Loop: Header=BB0_78 Depth=1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s3, $t1
	stx.w	$t1, $t0, $a7
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 4
	beq	$a3, $s6, .LBB0_101
.LBB0_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
	slli.d	$t0, $a3, 2
	ldx.w	$t1, $t0, $a5
	ldx.w	$t2, $a2, $t0
	beq	$t1, $a0, .LBB0_81
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s2, $t1
	beq	$t2, $a0, .LBB0_83
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s2, $t2
	xor	$t1, $t2, $t1
	bltu	$a3, $a6, .LBB0_77
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_81:                               #   in Loop: Header=BB0_78 Depth=1
	beq	$t2, $a0, .LBB0_89
# %bb.82:                               #   in Loop: Header=BB0_78 Depth=1
	slli.d	$t1, $t2, 2
	ldx.w	$t1, $s2, $t1
.LBB0_83:                               #   in Loop: Header=BB0_78 Depth=1
	bltu	$a3, $a6, .LBB0_77
.LBB0_84:                               # %.lr.ph364.i
                                        #   in Loop: Header=BB0_78 Depth=1
	alsl.d	$t2, $a3, $a7, 2
	move	$t3, $a4
	move	$t4, $a1
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_85:                               #   in Loop: Header=BB0_86 Depth=2
	addi.d	$t4, $t4, -4
	addi.d	$t3, $t3, 4
	beqz	$t4, .LBB0_77
.LBB0_86:                               #   Parent Loop BB0_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t3, 0
	beq	$t5, $a0, .LBB0_85
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	ldx.w	$t6, $a2, $t4
	beq	$t6, $a0, .LBB0_85
# %bb.88:                               #   in Loop: Header=BB0_86 Depth=2
	add.w	$t5, $t6, $t5
	mul.d	$t6, $t5, $s4
	srli.d	$t6, $t6, 32
	add.w	$t6, $t6, $t5
	bstrpick.d	$t7, $t6, 31, 31
	srai.d	$t6, $t6, 7
	add.d	$t6, $t6, $t7
	slli.d	$t7, $t6, 8
	sub.d	$t6, $t6, $t7
	add.w	$t5, $t5, $t6
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s2, $t5
	xor	$t1, $t5, $t1
	st.w	$t1, $t2, 0
	b	.LBB0_85
.LBB0_89:                               #   in Loop: Header=BB0_78 Depth=1
	move	$t1, $zero
	bltu	$a3, $a6, .LBB0_77
	b	.LBB0_84
.LBB0_90:                               # %.preheader320.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_92
	.p2align	4, , 16
.LBB0_91:                               #   in Loop: Header=BB0_92 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_94
.LBB0_92:                               # %.preheader320.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_91
# %bb.93:                               #   in Loop: Header=BB0_92 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_92
.LBB0_94:                               # %decode_rs.exit
	vld	$vr1, $s1, 268
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	vld	$vr2, $s1, 284
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	vstelm.w	$vr1, $a1, 0, 0
	vstelm.w	$vr2, $a1, 4, 0
	vld	$vr1, $s1, 300
	vld	$vr2, $s1, 316
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 8, 0
	vstelm.w	$vr2, $a1, 12, 0
	vld	$vr1, $s1, 332
	vld	$vr2, $s1, 348
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 16, 0
	vstelm.w	$vr2, $a1, 20, 0
	vld	$vr1, $s1, 364
	vld	$vr2, $s1, 380
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 24, 0
	vstelm.w	$vr2, $a1, 28, 0
	vld	$vr1, $s1, 396
	vld	$vr2, $s1, 412
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 32, 0
	vstelm.w	$vr2, $a1, 36, 0
	vld	$vr1, $s1, 428
	vld	$vr2, $s1, 444
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 40, 0
	vstelm.w	$vr2, $a1, 44, 0
	vld	$vr1, $s1, 460
	vld	$vr2, $s1, 476
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 48, 0
	vstelm.w	$vr2, $a1, 52, 0
	vld	$vr1, $s1, 492
	vld	$vr2, $s1, 508
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 56, 0
	vstelm.w	$vr2, $a1, 60, 0
	vld	$vr1, $s1, 524
	vld	$vr2, $s1, 540
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 64, 0
	vstelm.w	$vr2, $a1, 68, 0
	vld	$vr1, $s1, 556
	vld	$vr2, $s1, 572
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 72, 0
	vstelm.w	$vr2, $a1, 76, 0
	vld	$vr1, $s1, 588
	vld	$vr2, $s1, 604
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 80, 0
	vstelm.w	$vr2, $a1, 84, 0
	vld	$vr1, $s1, 620
	vld	$vr2, $s1, 636
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 88, 0
	vstelm.w	$vr2, $a1, 92, 0
	vld	$vr1, $s1, 652
	vld	$vr2, $s1, 668
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 96, 0
	vstelm.w	$vr2, $a1, 100, 0
	vld	$vr1, $s1, 684
	vld	$vr2, $s1, 700
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 104, 0
	vstelm.w	$vr2, $a1, 108, 0
	vld	$vr1, $s1, 716
	vld	$vr2, $s1, 732
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 112, 0
	vstelm.w	$vr2, $a1, 116, 0
	vld	$vr1, $s1, 748
	vld	$vr2, $s1, 764
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 120, 0
	vstelm.w	$vr2, $a1, 124, 0
	vld	$vr1, $s1, 780
	vld	$vr2, $s1, 796
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 128, 0
	vstelm.w	$vr2, $a1, 132, 0
	vld	$vr1, $s1, 812
	vld	$vr2, $s1, 828
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 136, 0
	vstelm.w	$vr2, $a1, 140, 0
	vld	$vr1, $s1, 844
	vld	$vr2, $s1, 860
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 144, 0
	vstelm.w	$vr2, $a1, 148, 0
	vld	$vr1, $s1, 876
	vld	$vr2, $s1, 892
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 152, 0
	vstelm.w	$vr2, $a1, 156, 0
	vld	$vr1, $s1, 908
	vld	$vr2, $s1, 924
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 160, 0
	vstelm.w	$vr2, $a1, 164, 0
	vld	$vr1, $s1, 940
	vld	$vr2, $s1, 956
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 168, 0
	vstelm.w	$vr2, $a1, 172, 0
	vld	$vr1, $s1, 972
	vld	$vr2, $s1, 988
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vshuf.b	$vr0, $vr0, $vr2, $vr0
	vstelm.w	$vr1, $a1, 176, 0
	vstelm.w	$vr0, $a1, 180, 0
	ld.b	$a0, $s1, 1004
	st.b	$a0, $a1, 184
	ld.b	$a0, $s1, 1008
	st.b	$a0, $a1, 185
	ld.b	$a0, $s1, 1012
	st.b	$a0, $a1, 186
	ld.b	$a0, $s1, 1016
	st.b	$a0, $a1, 187
	ld.d	$s8, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1656                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1664                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1672                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1680                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1704                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1712
	ret
.LBB0_95:
	ori	$s6, $zero, 1
.LBB0_96:                               # %.split.us
	beqz	$s5, .LBB0_101
.LBB0_97:                               # %.preheader314.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_99
	.p2align	4, , 16
.LBB0_98:                               #   in Loop: Header=BB0_99 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_94
.LBB0_99:                               # %.preheader314.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_98
# %bb.100:                              #   in Loop: Header=BB0_99 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_99
	b	.LBB0_94
.LBB0_101:                              # %.preheader312.i
	move	$a1, $zero
	addi.w	$a0, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_103
	.p2align	4, , 16
.LBB0_102:                              #   in Loop: Header=BB0_103 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a1
	addi.d	$a1, $a1, 4
	beq	$a1, $a2, .LBB0_105
.LBB0_103:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	bne	$a3, $a0, .LBB0_102
# %bb.104:                              #   in Loop: Header=BB0_103 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a1
	addi.d	$a1, $a1, 4
	bne	$a1, $a2, .LBB0_103
.LBB0_105:                              # %.preheader310.i
	blez	$s5, .LBB0_94
# %bb.106:                              # %.lr.ph383.i
	move	$a1, $zero
	addi.d	$a2, $s6, -1
	addi.d	$a3, $sp, 92
	addi.d	$a4, $sp, 124
	addi.d	$a5, $sp, 156
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_107:                              # %._crit_edge379.i
                                        #   in Loop: Header=BB0_109 Depth=1
	mul.d	$a7, $t1, $s4
	srli.d	$a7, $a7, 32
	add.w	$a7, $a7, $t1
	bstrpick.d	$t2, $a7, 31, 31
	srai.d	$a7, $a7, 7
	add.d	$a7, $a7, $t2
	slli.d	$t2, $a7, 8
	sub.d	$a7, $t2, $a7
	sub.d	$a7, $a7, $t1
	add.d	$a7, $t0, $a7
	addi.w	$a7, $a7, 255
	mul.d	$t0, $a7, $s4
	srli.d	$t0, $t0, 32
	add.w	$t0, $t0, $a7
	bstrpick.d	$t1, $t0, 31, 31
	srai.d	$t0, $t0, 7
	add.d	$t0, $t0, $t1
	slli.d	$t1, $t0, 8
	sub.d	$t0, $t0, $t1
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s2, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $s1, $a6
	xor	$a7, $t0, $a7
	stx.w	$a7, $s1, $a6
.LBB0_108:                              #   in Loop: Header=BB0_109 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB0_94
.LBB0_109:                              # %.lr.ph373.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_111 Depth 2
                                        #     Child Loop BB0_116 Depth 2
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $a6, $a4
	alsl.d	$a7, $a1, $a5, 2
	ori	$t1, $zero, 1
	move	$t2, $a3
	move	$t3, $a2
	ori	$t0, $zero, 1
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_110:                              #   in Loop: Header=BB0_111 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 4
	beqz	$t3, .LBB0_113
.LBB0_111:                              #   Parent Loop BB0_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	beq	$t4, $a0, .LBB0_110
# %bb.112:                              #   in Loop: Header=BB0_111 Depth=2
	ld.w	$t5, $a7, 0
	mul.d	$t5, $t5, $t1
	add.w	$t4, $t5, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xor	$t0, $t4, $t0
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_113:                              # %._crit_edge374.i
                                        #   in Loop: Header=BB0_109 Depth=1
	beqz	$t0, .LBB0_108
# %bb.114:                              # %.lr.ph378.i
                                        #   in Loop: Header=BB0_109 Depth=1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s3, $t0
	move	$t2, $zero
	move	$t1, $zero
	addi.d	$t3, $sp, 124
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_115:                              #   in Loop: Header=BB0_116 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	beq	$s5, $t2, .LBB0_107
.LBB0_116:                              #   Parent Loop BB0_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $t2, .LBB0_115
# %bb.117:                              #   in Loop: Header=BB0_116 Depth=2
	ld.w	$t4, $t3, 0
	ld.w	$t5, $a7, 0
	add.w	$t4, $t5, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xori	$t4, $t4, 1
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s3, $t4
	add.w	$t1, $t4, $t1
	b	.LBB0_115
.Lfunc_end0:
	.size	rsdec_204, .Lfunc_end0-rsdec_204
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rsenc_204
.LCPI1_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
.LCPI1_1:
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.text
	.globl	rsenc_204
	.p2align	5
	.type	rsenc_204,@function
rsenc_204:                              # @rsenc_204
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
	pcalau12i	$s1, %pc_hi20(inited)
	ld.bu	$a2, $s1, %pc_lo12(inited)
	move	$s0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(index_of)
	addi.d	$fp, $a0, %pc_lo12(index_of)
	pcalau12i	$a0, %pc_hi20(alpha_to)
	addi.d	$s3, $a0, %pc_lo12(alpha_to)
	bnez	$a2, .LBB1_6
# %bb.1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	st.d	$a0, $fp, 4
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 16
	vst	$vr0, $s3, 0
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 32
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s3, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_1)
	st.w	$a0, $fp, 128
	ori	$a0, $zero, 6
	st.w	$a0, $fp, 256
	vst	$vr0, $s3, 16
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 512
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 116
	ori	$a0, $zero, 36
	ori	$a1, $zero, 9
	ori	$a2, $zero, 128
	ori	$a3, $zero, 1020
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	stx.w	$a5, $s3, $a0
	slli.d	$a4, $a5, 2
	stx.w	$a1, $fp, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	move	$a4, $a5
	beq	$a0, $a3, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	slli.w	$a5, $a4, 1
	blt	$a4, $a2, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a4, $s3, 32
	xor	$a4, $a5, $a4
	xori	$a5, $a4, 256
	b	.LBB1_2
.LBB1_5:                                # %generate_gf.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(gen_poly)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s1, %pc_lo12(inited)
.LBB1_6:                                # %.preheader22.preheader
	pcalau12i	$a0, %pc_hi20(data)
	addi.d	$s1, $a0, %pc_lo12(data)
	ori	$a2, $zero, 204
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 4
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 204
	vst	$vr2, $s1, 220
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s0, 12
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 236
	vst	$vr2, $s1, 252
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s0, 20
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 268
	vst	$vr2, $s1, 284
	ld.w	$a0, $s0, 24
	ld.w	$a1, $s0, 28
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 300
	vst	$vr2, $s1, 316
	ld.w	$a0, $s0, 32
	ld.w	$a1, $s0, 36
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 332
	vst	$vr2, $s1, 348
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 44
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 364
	vst	$vr2, $s1, 380
	ld.w	$a0, $s0, 48
	ld.w	$a1, $s0, 52
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 396
	vst	$vr2, $s1, 412
	ld.w	$a0, $s0, 56
	ld.w	$a1, $s0, 60
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 428
	vst	$vr2, $s1, 444
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 460
	vst	$vr2, $s1, 476
	ld.w	$a0, $s0, 72
	ld.w	$a1, $s0, 76
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 492
	vst	$vr2, $s1, 508
	ld.w	$a0, $s0, 80
	ld.w	$a1, $s0, 84
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 524
	vst	$vr2, $s1, 540
	ld.w	$a0, $s0, 88
	ld.w	$a1, $s0, 92
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 556
	vst	$vr2, $s1, 572
	ld.w	$a0, $s0, 96
	ld.w	$a1, $s0, 100
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 588
	vst	$vr2, $s1, 604
	ld.w	$a0, $s0, 104
	ld.w	$a1, $s0, 108
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 620
	vst	$vr2, $s1, 636
	ld.w	$a0, $s0, 112
	ld.w	$a1, $s0, 116
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 652
	vst	$vr2, $s1, 668
	ld.w	$a0, $s0, 120
	ld.w	$a1, $s0, 124
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 684
	vst	$vr2, $s1, 700
	ld.w	$a0, $s0, 128
	ld.w	$a1, $s0, 132
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 716
	vst	$vr2, $s1, 732
	ld.w	$a0, $s0, 136
	ld.w	$a1, $s0, 140
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 748
	vst	$vr2, $s1, 764
	ld.w	$a0, $s0, 144
	ld.w	$a1, $s0, 148
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 780
	vst	$vr2, $s1, 796
	ld.w	$a0, $s0, 152
	ld.w	$a1, $s0, 156
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 812
	vst	$vr2, $s1, 828
	ld.w	$a0, $s0, 160
	ld.w	$a1, $s0, 164
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 844
	vst	$vr2, $s1, 860
	ld.w	$a0, $s0, 168
	ld.w	$a1, $s0, 172
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 876
	vst	$vr2, $s1, 892
	ld.w	$a0, $s0, 176
	ld.w	$a1, $s0, 180
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 908
	vst	$vr2, $s1, 924
	ld.bu	$a0, $s0, 184
	st.w	$a0, $s1, 940
	ld.bu	$a0, $s0, 185
	st.w	$a0, $s1, 944
	ld.bu	$a0, $s0, 186
	st.w	$a0, $s1, 948
	ld.bu	$a0, $s0, 187
	st.w	$a0, $s1, 952
	pcalau12i	$a0, %pc_hi20(bb)
	addi.d	$a0, $a0, %pc_lo12(bb)
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(gg)
	addi.d	$a3, $a1, %pc_lo12(gg)
	move	$a2, $zero
	move	$a1, $zero
	ld.w	$a4, $a3, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a3, 60
	ld.w	$a5, $a3, 56
	ld.w	$a6, $a3, 52
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a7, $a3, 48
	ld.w	$t0, $a3, 44
	ld.w	$t1, $a3, 40
	ld.w	$t2, $a3, 36
	ld.w	$t3, $a3, 32
	ld.w	$t4, $a3, 28
	ld.w	$t5, $a3, 24
	ld.w	$t6, $a3, 20
	ld.w	$t7, $a3, 16
	ld.w	$t8, $a3, 12
	ld.w	$s4, $a3, 8
	ld.w	$s5, $a3, 4
	ori	$s6, $zero, 952
	addi.w	$s7, $zero, -1
	addi.w	$s8, $zero, -4
	lu12i.w	$a3, -522232
	ori	$ra, $a3, 129
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.preheader.preheader.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 4
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 12
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 20
	ld.d	$a1, $a0, 32
	st.d	$a2, $a0, 28
	ld.d	$a2, $a0, 40
	st.d	$a1, $a0, 36
	ld.d	$a3, $a0, 48
	st.d	$a2, $a0, 44
	ld.w	$a1, $a0, 56
	move	$a2, $zero
	st.d	$a3, $a0, 52
	st.w	$a1, $a0, 60
	addi.d	$s6, $s6, -4
	st.w	$a2, $a0, 0
	beq	$s6, $s8, .LBB1_40
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $s6
	xor	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $fp, $a1
	beq	$a3, $s7, .LBB1_7
# %bb.9:                                # %.preheader26.i.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a6, $fp
	ld.w	$a1, $a0, 56
	beq	$a4, $s7, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$fp, $a4, $a3
	mul.d	$s2, $fp, $ra
	srli.d	$s2, $s2, 32
	add.w	$s2, $s2, $fp
	bstrpick.d	$a4, $s2, 31, 31
	srai.d	$s2, $s2, 7
	add.d	$a4, $s2, $a4
	slli.d	$s2, $a4, 8
	sub.d	$a4, $a4, $s2
	add.w	$a4, $fp, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$a1, $a4, $a1
.LBB1_11:                               # %.preheader26.i.1
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 52
	st.w	$a1, $a0, 60
	beq	$a5, $s7, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a5, $a3
	mul.d	$s2, $a4, $ra
	srli.d	$s2, $s2, 32
	add.w	$s2, $s2, $a4
	bstrpick.d	$a5, $s2, 31, 31
	srai.d	$s2, $s2, 7
	add.d	$a5, $s2, $a5
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_13:                               # %.preheader26.i.2
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 48
	st.w	$fp, $a0, 56
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	beq	$a4, $s7, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_15:                               # %.preheader26.i.3
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 44
	st.w	$s2, $a0, 52
	beq	$a7, $s7, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a7, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_17:                               # %.preheader26.i.4
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 40
	st.w	$fp, $a0, 48
	beq	$t0, $s7, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t0, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_19:                               # %.preheader26.i.5
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 36
	st.w	$s2, $a0, 44
	beq	$t1, $s7, .LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t1, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_21:                               # %.preheader26.i.6
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 32
	st.w	$fp, $a0, 40
	beq	$t2, $s7, .LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t2, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_23:                               # %.preheader26.i.7
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 28
	st.w	$s2, $a0, 36
	beq	$t3, $s7, .LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t3, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_25:                               # %.preheader26.i.8
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 24
	st.w	$fp, $a0, 32
	beq	$t4, $s7, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_27:                               # %.preheader26.i.9
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 20
	st.w	$s2, $a0, 28
	beq	$t5, $s7, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t5, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_29:                               # %.preheader26.i.10
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 16
	st.w	$fp, $a0, 24
	beq	$t6, $s7, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t6, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_31:                               # %.preheader26.i.11
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 12
	st.w	$s2, $a0, 20
	beq	$t7, $s7, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t7, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_33:                               # %.preheader26.i.12
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 8
	st.w	$fp, $a0, 16
	beq	$t8, $s7, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t8, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_35:                               # %.preheader26.i.13
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 4
	st.w	$s2, $a0, 12
	beq	$s4, $s7, .LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $s4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_37:                               # %.preheader26.i.14
                                        #   in Loop: Header=BB1_8 Depth=1
	st.w	$fp, $a0, 8
	beq	$s5, $s7, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $s5, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$a2, $a4, $a2
.LBB1_39:                               #   in Loop: Header=BB1_8 Depth=1
	move	$fp, $a6
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	mul.d	$a3, $a2, $ra
	srli.d	$a3, $a3, 32
	add.w	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 31
	srai.d	$a3, $a3, 7
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 8
	sub.d	$a3, $a3, $a4
	add.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $s6, -4
	st.w	$a2, $a0, 0
	bne	$s6, $s8, .LBB1_8
.LBB1_40:                               # %vector.memcheck
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a3, $a6, $s0
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB1_42
# %bb.41:
	move	$a3, $zero
	b	.LBB1_43
.LBB1_42:                               # %vector.body56
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, 16
	vld	$vr0, $s0, 32
	vld	$vr1, $s0, 48
	vst	$vr0, $a6, 32
	vst	$vr1, $a6, 48
	vld	$vr0, $s0, 64
	vld	$vr1, $s0, 80
	vst	$vr0, $a6, 64
	vst	$vr1, $a6, 80
	vld	$vr0, $s0, 96
	vld	$vr1, $s0, 112
	vst	$vr0, $a6, 96
	vst	$vr1, $a6, 112
	vld	$vr0, $s0, 128
	vld	$vr1, $s0, 144
	vst	$vr0, $a6, 128
	vst	$vr1, $a6, 144
	vld	$vr0, $s0, 160
	vst	$vr0, $a6, 160
	ori	$a3, $zero, 176
.LBB1_43:                               # %encode_rs.exit.preheader
	ori	$a4, $zero, 188
	.p2align	4, , 16
.LBB1_44:                               # %encode_rs.exit
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a5, $s0, $a3
	stx.b	$a5, $a6, $a3
	addi.d	$a3, $a3, 1
	bne	$a3, $a4, .LBB1_44
# %bb.45:                               # %.preheader.preheader
	ld.b	$a3, $a0, 4
	ld.b	$a4, $a0, 8
	st.b	$a2, $a6, 188
	st.b	$a3, $a6, 189
	st.b	$a4, $a6, 190
	ld.b	$a2, $a0, 12
	ld.b	$a3, $a0, 16
	ld.b	$a4, $a0, 20
	ld.b	$a5, $a0, 24
	st.b	$a2, $a6, 191
	st.b	$a3, $a6, 192
	st.b	$a4, $a6, 193
	st.b	$a5, $a6, 194
	ld.b	$a2, $a0, 28
	ld.b	$a3, $a0, 32
	ld.b	$a4, $a0, 36
	ld.b	$a5, $a0, 40
	st.b	$a2, $a6, 195
	st.b	$a3, $a6, 196
	st.b	$a4, $a6, 197
	st.b	$a5, $a6, 198
	ld.b	$a2, $a0, 44
	ld.b	$a3, $a0, 48
	ld.b	$a4, $a0, 52
	ld.b	$a0, $a0, 56
	st.b	$a2, $a6, 199
	st.b	$a3, $a6, 200
	st.b	$a4, $a6, 201
	st.b	$a0, $a6, 202
	st.b	$a1, $a6, 203
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
.Lfunc_end1:
	.size	rsenc_204, .Lfunc_end1-rsenc_204
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	move	$s0, $zero
	addi.d	$s1, $sp, 212
	ori	$s2, $zero, 188
	addi.d	$s3, $sp, 8
	lu12i.w	$a0, 36
	ori	$s4, $a0, 2544
	lu12i.w	$a0, -390646
	ori	$a0, $a0, 161
	lu32i.d	$a0, 41120
	lu52i.d	$s5, $a0, -1526
	ori	$s6, $zero, 204
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %._crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a0, $sp, 212
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(rsdec_204)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	beq	$s0, $s4, .LBB2_6
.LBB2_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_5 Depth 2
	move	$fp, $zero
	.p2align	4, , 16
.LBB2_3:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	stx.b	$a0, $fp, $s1
	addi.d	$fp, $fp, 1
	bne	$fp, $s2, .LBB2_3
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 212
	pcaddu18i	$ra, %call36(rsenc_204)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	andi	$s7, $a0, 127
	beqz	$s7, .LBB2_1
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mulh.d	$a1, $a0, $s5
	add.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $s6
	sub.d	$a0, $a0, $a1
	addi.w	$s7, $s7, -1
	stx.b	$fp, $a0, $s3
	bnez	$s7, .LBB2_5
	b	.LBB2_1
.LBB2_6:
	move	$a0, $zero
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.p2align	5                               # -- Begin function gen_poly
	.type	gen_poly,@function
gen_poly:                               # @gen_poly
# %bb.0:
	pcalau12i	$a0, %pc_hi20(gg)
	addi.d	$a0, $a0, %pc_lo12(gg)
	ori	$a2, $zero, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 0
	addi.d	$a3, $a0, 4
	ori	$a4, $zero, 3
	ori	$a5, $zero, 1
	pcalau12i	$a1, %pc_hi20(index_of)
	addi.d	$a1, $a1, %pc_lo12(index_of)
	lu12i.w	$a6, -522232
	ori	$a6, $a6, 129
	pcalau12i	$a7, %pc_hi20(alpha_to)
	addi.d	$a7, $a7, %pc_lo12(alpha_to)
	ori	$t0, $zero, 17
	ori	$t1, $zero, 2
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	ld.w	$t2, $a0, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	add.w	$t2, $t2, $t1
	mul.d	$t3, $t2, $a6
	srli.d	$t3, $t3, 32
	add.w	$t3, $t3, $t2
	bstrpick.d	$t4, $t3, 31, 31
	srai.d	$t3, $t3, 7
	add.d	$t3, $t3, $t4
	slli.d	$t4, $t3, 8
	sub.d	$t3, $t3, $t4
	add.w	$t2, $t2, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a7, $t2
	st.w	$t2, $a0, 0
	addi.d	$t1, $t1, 1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	beq	$t1, $t0, .LBB3_6
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	slli.d	$t2, $t1, 2
	stx.w	$a5, $a0, $t2
	move	$t2, $a3
	move	$t3, $a4
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=2
	st.w	$t4, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, -4
	bge	$a2, $t3, .LBB3_1
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t2, 0
	ld.w	$t4, $t2, -4
	beqz	$t5, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=2
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a1, $t5
	add.w	$t5, $t5, $t1
	mul.d	$t6, $t5, $a6
	srli.d	$t6, $t6, 32
	add.w	$t6, $t6, $t5
	bstrpick.d	$t7, $t6, 31, 31
	srai.d	$t6, $t6, 7
	add.d	$t6, $t6, $t7
	slli.d	$t7, $t6, 8
	sub.d	$t6, $t6, $t7
	add.w	$t5, $t5, $t6
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a7, $t5
	xor	$t4, $t5, $t4
	b	.LBB3_3
.LBB3_6:                                # %.preheader.preheader
	slli.d	$a2, $t2, 2
	ldx.w	$a2, $a1, $a2
	ld.w	$a3, $a0, 4
	st.w	$a2, $a0, 0
	ld.w	$a2, $a0, 8
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 12
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 4
	ld.w	$a3, $a0, 16
	st.w	$a2, $a0, 8
	st.w	$a4, $a0, 12
	ld.w	$a2, $a0, 20
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 24
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 16
	ld.w	$a3, $a0, 28
	st.w	$a2, $a0, 20
	st.w	$a4, $a0, 24
	ld.w	$a2, $a0, 32
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 36
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 28
	ld.w	$a3, $a0, 40
	st.w	$a2, $a0, 32
	st.w	$a4, $a0, 36
	ld.w	$a2, $a0, 44
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 48
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 40
	ld.w	$a3, $a0, 52
	st.w	$a2, $a0, 44
	st.w	$a4, $a0, 48
	ld.w	$a2, $a0, 56
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	ld.w	$a4, $a0, 60
	slli.d	$a2, $a2, 2
	ld.w	$a5, $a0, 64
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	st.w	$a3, $a0, 52
	st.w	$a2, $a0, 56
	st.w	$a4, $a0, 60
	st.w	$a1, $a0, 64
	ret
.Lfunc_end3:
	.size	gen_poly, .Lfunc_end3-gen_poly
                                        # -- End function
	.type	inited,@object                  # @inited
	.local	inited
	.comm	inited,1,4
	.type	recd,@object                    # @recd
	.local	recd
	.comm	recd,1020,16
	.type	index_of,@object                # @index_of
	.local	index_of
	.comm	index_of,1024,4
	.type	data,@object                    # @data
	.local	data
	.comm	data,956,8
	.type	bb,@object                      # @bb
	.local	bb
	.comm	bb,64,8
	.type	alpha_to,@object                # @alpha_to
	.local	alpha_to
	.comm	alpha_to,1024,16
	.type	gg,@object                      # @gg
	.local	gg
	.comm	gg,68,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
