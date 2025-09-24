	.file	"crc32.be.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	33800                           # 0x8408
	.word	67600                           # 0x10810
	.word	101400                          # 0x18c18
	.word	135200                          # 0x21020
.LCPI0_1:
	.word	169000                          # 0x29428
	.word	202800                          # 0x31830
	.word	236600                          # 0x39c38
	.word	270400                          # 0x42040
.LCPI0_2:
	.word	304200                          # 0x4a448
	.word	338000                          # 0x52850
	.word	371800                          # 0x5ac58
	.word	405600                          # 0x63060
.LCPI0_3:
	.word	439400                          # 0x6b468
	.word	473200                          # 0x73870
	.word	507000                          # 0x7bc78
	.word	540800                          # 0x84080
.LCPI0_4:
	.word	574600                          # 0x8c488
	.word	608400                          # 0x94890
	.word	642200                          # 0x9cc98
	.word	676000                          # 0xa50a0
.LCPI0_5:
	.word	709800                          # 0xad4a8
	.word	743600                          # 0xb58b0
	.word	777400                          # 0xbdcb8
	.word	811200                          # 0xc60c0
.LCPI0_6:
	.word	845000                          # 0xce4c8
	.word	878800                          # 0xd68d0
	.word	912600                          # 0xdecd8
	.word	946400                          # 0xe70e0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.w	$a0, $a1, 0
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_1)
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a2, %pc_lo12(.LCPI0_2)
	vreplgr2vr.w	$vr6, $a0
	vxor.v	$vr0, $vr6, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vxor.v	$vr1, $vr6, $vr1
	vxor.v	$vr2, $vr6, $vr2
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a2, %pc_lo12(.LCPI0_3)
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	vld	$vr4, $a2, %pc_lo12(.LCPI0_4)
	pcalau12i	$a2, %pc_hi20(.LCPI0_5)
	vld	$vr5, $a2, %pc_lo12(.LCPI0_5)
	pcalau12i	$a2, %pc_hi20(.LCPI0_6)
	vld	$vr7, $a2, %pc_lo12(.LCPI0_6)
	vxor.v	$vr3, $vr6, $vr3
	vxor.v	$vr4, $vr6, $vr4
	vxor.v	$vr5, $vr6, $vr5
	vxor.v	$vr6, $vr6, $vr7
	lu12i.w	$a2, 239
	ori	$a2, $a2, 1256
	xor	$a2, $a0, $a2
	lu12i.w	$a3, 247
	ori	$a3, $a3, 2288
	xor	$a3, $a0, $a3
	lu12i.w	$a4, 255
	ori	$a4, $a4, 3320
	xor	$a4, $a0, $a4
	ori	$a5, $zero, 28
	pcalau12i	$a0, %pc_hi20(main.sample)
	addi.d	$a6, $a0, %pc_lo12(main.sample)
	lu12i.w	$a0, 264
	ori	$a0, $a0, 256
	vreplgr2vr.w	$vr7, $a0
	lu12i.w	$a0, 528
	ori	$a0, $a0, 512
	vreplgr2vr.w	$vr8, $a0
	lu12i.w	$a0, 792
	ori	$a0, $a0, 768
	vreplgr2vr.w	$vr9, $a0
	lu12i.w	$a0, 1056
	ori	$a0, $a0, 1024
	vreplgr2vr.w	$vr10, $a0
	lu12i.w	$a0, 1320
	ori	$a0, $a0, 1280
	vreplgr2vr.w	$vr11, $a0
	lu12i.w	$a0, 1584
	ori	$a0, $a0, 1536
	vreplgr2vr.w	$vr12, $a0
	lu12i.w	$a0, 1848
	ori	$a0, $a0, 1792
	vreplgr2vr.w	$vr13, $a0
	lu12i.w	$a7, -4096
	lu32i.d	$a7, 0
	pcalau12i	$a0, %pc_hi20(.L.crctable)
	addi.d	$t0, $a0, %pc_lo12(.L.crctable)
	move	$t1, $zero
	move	$a0, $zero
	ori	$t2, $zero, 1
	addi.w	$t3, $zero, -4
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ldx.w	$t4, $a6, $t1
	ldx.w	$t5, $a6, $a5
	xor	$t6, $t5, $t4
	and	$t7, $t6, $a7
	srli.d	$t7, $t7, 22
	ldx.w	$t8, $a1, $t7
	slli.d	$t6, $t6, 8
	xor	$fp, $t8, $t6
	and	$fp, $fp, $a7
	srli.d	$fp, $fp, 22
	ldx.w	$fp, $a1, $fp
	slli.d	$t4, $t4, 16
	slli.d	$t8, $t8, 8
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $t4
	slli.d	$fp, $t5, 16
	xor	$s0, $t8, $fp
	and	$s0, $s0, $a7
	srli.d	$s0, $s0, 22
	ldx.w	$s0, $a1, $s0
	ldx.w	$t7, $t0, $t7
	slli.d	$t8, $t8, 8
	xor	$t8, $t8, $s0
	slli.d	$t5, $t5, 24
	xor	$t6, $t7, $t6
	and	$t6, $t6, $a7
	srli.d	$t6, $t6, 22
	ldx.w	$t6, $t0, $t6
	xor	$s0, $t8, $t5
	and	$s0, $s0, $a7
	slli.d	$t7, $t7, 8
	xor	$t6, $t6, $t7
	xor	$t4, $t6, $t4
	xor	$t6, $t4, $fp
	and	$t6, $t6, $a7
	srli.d	$t6, $t6, 22
	ldx.w	$t6, $t0, $t6
	srli.d	$t7, $s0, 22
	ldx.w	$t7, $a1, $t7
	slli.d	$t4, $t4, 8
	xor	$t4, $t4, $t6
	xor	$t5, $t4, $t5
	and	$t5, $t5, $a7
	srli.d	$t5, $t5, 22
	ldx.w	$t5, $t0, $t5
	slli.w	$t6, $t8, 8
	xor	$t6, $t6, $t7
	slli.w	$t4, $t4, 8
	xor	$t4, $t4, $t5
	xor	$t4, $t6, $t4
	sltui	$t4, $t4, 1
	masknez	$t5, $t2, $t4
	maskeqz	$a0, $a0, $t4
	or	$a0, $a0, $t5
	addi.d	$a5, $a5, -4
	addi.d	$t1, $t1, 4
	beq	$a5, $t3, .LBB0_4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a1, 1020
	bnez	$t4, .LBB0_1
# %bb.3:                                # %vector.ph20
                                        #   in Loop: Header=BB0_2 Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a1, 4
	vst	$vr1, $a1, 20
	vst	$vr2, $a1, 36
	vst	$vr3, $a1, 52
	vst	$vr4, $a1, 68
	vst	$vr5, $a1, 84
	vst	$vr6, $a1, 100
	st.w	$a2, $a1, 116
	vld	$vr14, $a1, 0
	vld	$vr15, $a1, 16
	st.w	$a3, $a1, 120
	st.w	$a4, $a1, 124
	vxor.v	$vr18, $vr14, $vr7
	vxor.v	$vr19, $vr15, $vr7
	vld	$vr16, $a1, 32
	vld	$vr17, $a1, 48
	vst	$vr18, $a1, 128
	vst	$vr19, $a1, 144
	vxor.v	$vr20, $vr16, $vr7
	vxor.v	$vr21, $vr17, $vr7
	vld	$vr18, $a1, 64
	vld	$vr19, $a1, 80
	vst	$vr20, $a1, 160
	vst	$vr21, $a1, 176
	vxor.v	$vr22, $vr18, $vr7
	vxor.v	$vr23, $vr19, $vr7
	vld	$vr20, $a1, 96
	vld	$vr21, $a1, 112
	vst	$vr22, $a1, 192
	vst	$vr23, $a1, 208
	vxor.v	$vr24, $vr20, $vr7
	vxor.v	$vr25, $vr21, $vr7
	vld	$vr22, $a1, 0
	vld	$vr23, $a1, 16
	vst	$vr24, $a1, 224
	vst	$vr25, $a1, 240
	vxor.v	$vr26, $vr22, $vr8
	vxor.v	$vr27, $vr23, $vr8
	vld	$vr24, $a1, 32
	vld	$vr25, $a1, 48
	vst	$vr26, $a1, 256
	vst	$vr27, $a1, 272
	vxor.v	$vr28, $vr24, $vr8
	vxor.v	$vr29, $vr25, $vr8
	vld	$vr26, $a1, 64
	vld	$vr27, $a1, 80
	vst	$vr28, $a1, 288
	vst	$vr29, $a1, 304
	vxor.v	$vr30, $vr26, $vr8
	vxor.v	$vr31, $vr27, $vr8
	vld	$vr28, $a1, 96
	vld	$vr29, $a1, 112
	vst	$vr30, $a1, 320
	vst	$vr31, $a1, 336
	vxor.v	$vr30, $vr28, $vr8
	vxor.v	$vr31, $vr29, $vr8
	vst	$vr30, $a1, 352
	vst	$vr31, $a1, 368
	vxor.v	$vr30, $vr14, $vr9
	vxor.v	$vr31, $vr15, $vr9
	vst	$vr30, $a1, 384
	vst	$vr31, $a1, 400
	vxor.v	$vr30, $vr16, $vr9
	vxor.v	$vr31, $vr17, $vr9
	vst	$vr30, $a1, 416
	vst	$vr31, $a1, 432
	vxor.v	$vr30, $vr18, $vr9
	vxor.v	$vr31, $vr19, $vr9
	vst	$vr30, $a1, 448
	vst	$vr31, $a1, 464
	vxor.v	$vr30, $vr20, $vr9
	vxor.v	$vr31, $vr21, $vr9
	vld	$vr0, $a1, 0
	vst	$vr30, $a1, 480
	vst	$vr31, $a1, 496
	vld	$vr30, $a1, 16
	vxor.v	$vr0, $vr0, $vr10
	vst	$vr0, $a1, 512
	vld	$vr0, $a1, 32
	vld	$vr31, $a1, 48
	vxor.v	$vr30, $vr30, $vr10
	vst	$vr30, $a1, 528
	vxor.v	$vr0, $vr0, $vr10
	vxor.v	$vr30, $vr31, $vr10
	vld	$vr31, $a1, 64
	vst	$vr0, $a1, 544
	vst	$vr30, $a1, 560
	vld	$vr0, $a1, 80
	vxor.v	$vr30, $vr31, $vr10
	vst	$vr30, $a1, 576
	vld	$vr30, $a1, 96
	vld	$vr31, $a1, 112
	vxor.v	$vr0, $vr0, $vr10
	vst	$vr0, $a1, 592
	vxor.v	$vr0, $vr30, $vr10
	vxor.v	$vr30, $vr31, $vr10
	vst	$vr0, $a1, 608
	vst	$vr30, $a1, 624
	vxor.v	$vr0, $vr14, $vr11
	vxor.v	$vr30, $vr15, $vr11
	vst	$vr0, $a1, 640
	vst	$vr30, $a1, 656
	vxor.v	$vr0, $vr16, $vr11
	vxor.v	$vr30, $vr17, $vr11
	vst	$vr0, $a1, 672
	vst	$vr30, $a1, 688
	vxor.v	$vr0, $vr18, $vr11
	vxor.v	$vr30, $vr19, $vr11
	vst	$vr0, $a1, 704
	vst	$vr30, $a1, 720
	vxor.v	$vr0, $vr20, $vr11
	vxor.v	$vr30, $vr21, $vr11
	vst	$vr0, $a1, 736
	vst	$vr30, $a1, 752
	vxor.v	$vr0, $vr22, $vr12
	vxor.v	$vr22, $vr23, $vr12
	vst	$vr0, $a1, 768
	vst	$vr22, $a1, 784
	vxor.v	$vr0, $vr24, $vr12
	vxor.v	$vr22, $vr25, $vr12
	vst	$vr0, $a1, 800
	vst	$vr22, $a1, 816
	vxor.v	$vr0, $vr26, $vr12
	vxor.v	$vr22, $vr27, $vr12
	vst	$vr0, $a1, 832
	vst	$vr22, $a1, 848
	vxor.v	$vr0, $vr28, $vr12
	vxor.v	$vr22, $vr29, $vr12
	vst	$vr0, $a1, 864
	vst	$vr22, $a1, 880
	vxor.v	$vr0, $vr14, $vr13
	vxor.v	$vr14, $vr15, $vr13
	vst	$vr0, $a1, 896
	vst	$vr14, $a1, 912
	vxor.v	$vr0, $vr16, $vr13
	vxor.v	$vr14, $vr17, $vr13
	vst	$vr0, $a1, 928
	vst	$vr14, $a1, 944
	vxor.v	$vr0, $vr18, $vr13
	vxor.v	$vr14, $vr19, $vr13
	vst	$vr0, $a1, 960
	vst	$vr14, $a1, 976
	vxor.v	$vr0, $vr20, $vr13
	vxor.v	$vr14, $vr21, $vr13
	vst	$vr0, $a1, 992
	vst	$vr14, $a1, 1008
	b	.LBB0_1
.LBB0_4:
	fld.d	$fs7, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.sample,@object             # @main.sample
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
main.sample:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	11                              # 0xb
	.word	16                              # 0x10
	.word	129                             # 0x81
	.word	142                             # 0x8e
	.word	196                             # 0xc4
	.word	255                             # 0xff
	.size	main.sample, 32

	.type	CRCTable,@object                # @CRCTable
	.local	CRCTable
	.comm	CRCTable,1024,16
	.type	.L.crctable,@object             # @.crctable
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.crctable:
	.word	0                               # 0x0
	.word	33800                           # 0x8408
	.word	67600                           # 0x10810
	.word	101400                          # 0x18c18
	.word	135200                          # 0x21020
	.word	169000                          # 0x29428
	.word	202800                          # 0x31830
	.word	236600                          # 0x39c38
	.word	270400                          # 0x42040
	.word	304200                          # 0x4a448
	.word	338000                          # 0x52850
	.word	371800                          # 0x5ac58
	.word	405600                          # 0x63060
	.word	439400                          # 0x6b468
	.word	473200                          # 0x73870
	.word	507000                          # 0x7bc78
	.word	540800                          # 0x84080
	.word	574600                          # 0x8c488
	.word	608400                          # 0x94890
	.word	642200                          # 0x9cc98
	.word	676000                          # 0xa50a0
	.word	709800                          # 0xad4a8
	.word	743600                          # 0xb58b0
	.word	777400                          # 0xbdcb8
	.word	811200                          # 0xc60c0
	.word	845000                          # 0xce4c8
	.word	878800                          # 0xd68d0
	.word	912600                          # 0xdecd8
	.word	946400                          # 0xe70e0
	.word	980200                          # 0xef4e8
	.word	1014000                         # 0xf78f0
	.word	1047800                         # 0xffcf8
	.word	1081600                         # 0x108100
	.word	1049864                         # 0x100508
	.word	1149200                         # 0x118910
	.word	1117464                         # 0x110d18
	.word	1216800                         # 0x129120
	.word	1185064                         # 0x121528
	.word	1284400                         # 0x139930
	.word	1252664                         # 0x131d38
	.word	1352000                         # 0x14a140
	.word	1320264                         # 0x142548
	.word	1419600                         # 0x15a950
	.word	1387864                         # 0x152d58
	.word	1487200                         # 0x16b160
	.word	1455464                         # 0x163568
	.word	1554800                         # 0x17b970
	.word	1523064                         # 0x173d78
	.word	1622400                         # 0x18c180
	.word	1590664                         # 0x184588
	.word	1690000                         # 0x19c990
	.word	1658264                         # 0x194d98
	.word	1757600                         # 0x1ad1a0
	.word	1725864                         # 0x1a55a8
	.word	1825200                         # 0x1bd9b0
	.word	1793464                         # 0x1b5db8
	.word	1892800                         # 0x1ce1c0
	.word	1861064                         # 0x1c65c8
	.word	1960400                         # 0x1de9d0
	.word	1928664                         # 0x1d6dd8
	.word	2028000                         # 0x1ef1e0
	.word	1996264                         # 0x1e75e8
	.word	2095600                         # 0x1ff9f0
	.word	2063864                         # 0x1f7df8
	.word	2163200                         # 0x210200
	.word	2197000                         # 0x218608
	.word	2099728                         # 0x200a10
	.word	2133528                         # 0x208e18
	.word	2298400                         # 0x231220
	.word	2332200                         # 0x239628
	.word	2234928                         # 0x221a30
	.word	2268728                         # 0x229e38
	.word	2433600                         # 0x252240
	.word	2467400                         # 0x25a648
	.word	2370128                         # 0x242a50
	.word	2403928                         # 0x24ae58
	.word	2568800                         # 0x273260
	.word	2602600                         # 0x27b668
	.word	2505328                         # 0x263a70
	.word	2539128                         # 0x26be78
	.word	2704000                         # 0x294280
	.word	2737800                         # 0x29c688
	.word	2640528                         # 0x284a90
	.word	2674328                         # 0x28ce98
	.word	2839200                         # 0x2b52a0
	.word	2873000                         # 0x2bd6a8
	.word	2775728                         # 0x2a5ab0
	.word	2809528                         # 0x2adeb8
	.word	2974400                         # 0x2d62c0
	.word	3008200                         # 0x2de6c8
	.word	2910928                         # 0x2c6ad0
	.word	2944728                         # 0x2ceed8
	.word	3109600                         # 0x2f72e0
	.word	3143400                         # 0x2ff6e8
	.word	3046128                         # 0x2e7af0
	.word	3079928                         # 0x2efef8
	.word	3244800                         # 0x318300
	.word	3213064                         # 0x310708
	.word	3181328                         # 0x308b10
	.word	3149592                         # 0x300f18
	.word	3380000                         # 0x339320
	.word	3348264                         # 0x331728
	.word	3316528                         # 0x329b30
	.word	3284792                         # 0x321f38
	.word	3515200                         # 0x35a340
	.word	3483464                         # 0x352748
	.word	3451728                         # 0x34ab50
	.word	3419992                         # 0x342f58
	.word	3650400                         # 0x37b360
	.word	3618664                         # 0x373768
	.word	3586928                         # 0x36bb70
	.word	3555192                         # 0x363f78
	.word	3785600                         # 0x39c380
	.word	3753864                         # 0x394788
	.word	3722128                         # 0x38cb90
	.word	3690392                         # 0x384f98
	.word	3920800                         # 0x3bd3a0
	.word	3889064                         # 0x3b57a8
	.word	3857328                         # 0x3adbb0
	.word	3825592                         # 0x3a5fb8
	.word	4056000                         # 0x3de3c0
	.word	4024264                         # 0x3d67c8
	.word	3992528                         # 0x3cebd0
	.word	3960792                         # 0x3c6fd8
	.word	4191200                         # 0x3ff3e0
	.word	4159464                         # 0x3f77e8
	.word	4127728                         # 0x3efbf0
	.word	4095992                         # 0x3e7ff8
	.word	4326400                         # 0x420400
	.word	4358152                         # 0x428008
	.word	4394000                         # 0x430c10
	.word	4425752                         # 0x438818
	.word	4199456                         # 0x401420
	.word	4231208                         # 0x409028
	.word	4267056                         # 0x411c30
	.word	4298808                         # 0x419838
	.word	4596800                         # 0x462440
	.word	4628552                         # 0x46a048
	.word	4664400                         # 0x472c50
	.word	4696152                         # 0x47a858
	.word	4469856                         # 0x443460
	.word	4501608                         # 0x44b068
	.word	4537456                         # 0x453c70
	.word	4569208                         # 0x45b878
	.word	4867200                         # 0x4a4480
	.word	4898952                         # 0x4ac088
	.word	4934800                         # 0x4b4c90
	.word	4966552                         # 0x4bc898
	.word	4740256                         # 0x4854a0
	.word	4772008                         # 0x48d0a8
	.word	4807856                         # 0x495cb0
	.word	4839608                         # 0x49d8b8
	.word	5137600                         # 0x4e64c0
	.word	5169352                         # 0x4ee0c8
	.word	5205200                         # 0x4f6cd0
	.word	5236952                         # 0x4fe8d8
	.word	5010656                         # 0x4c74e0
	.word	5042408                         # 0x4cf0e8
	.word	5078256                         # 0x4d7cf0
	.word	5110008                         # 0x4df8f8
	.word	5408000                         # 0x528500
	.word	5374216                         # 0x520108
	.word	5475600                         # 0x538d10
	.word	5441816                         # 0x530918
	.word	5281056                         # 0x509520
	.word	5247272                         # 0x501128
	.word	5348656                         # 0x519d30
	.word	5314872                         # 0x511938
	.word	5678400                         # 0x56a540
	.word	5644616                         # 0x562148
	.word	5746000                         # 0x57ad50
	.word	5712216                         # 0x572958
	.word	5551456                         # 0x54b560
	.word	5517672                         # 0x543168
	.word	5619056                         # 0x55bd70
	.word	5585272                         # 0x553978
	.word	5948800                         # 0x5ac580
	.word	5915016                         # 0x5a4188
	.word	6016400                         # 0x5bcd90
	.word	5982616                         # 0x5b4998
	.word	5821856                         # 0x58d5a0
	.word	5788072                         # 0x5851a8
	.word	5889456                         # 0x59ddb0
	.word	5855672                         # 0x5959b8
	.word	6219200                         # 0x5ee5c0
	.word	6185416                         # 0x5e61c8
	.word	6286800                         # 0x5fedd0
	.word	6253016                         # 0x5f69d8
	.word	6092256                         # 0x5cf5e0
	.word	6058472                         # 0x5c71e8
	.word	6159856                         # 0x5dfdf0
	.word	6126072                         # 0x5d79f8
	.word	6489600                         # 0x630600
	.word	6521352                         # 0x638208
	.word	6426128                         # 0x620e10
	.word	6457880                         # 0x628a18
	.word	6362656                         # 0x611620
	.word	6394408                         # 0x619228
	.word	6299184                         # 0x601e30
	.word	6330936                         # 0x609a38
	.word	6760000                         # 0x672640
	.word	6791752                         # 0x67a248
	.word	6696528                         # 0x662e50
	.word	6728280                         # 0x66aa58
	.word	6633056                         # 0x653660
	.word	6664808                         # 0x65b268
	.word	6569584                         # 0x643e70
	.word	6601336                         # 0x64ba78
	.word	7030400                         # 0x6b4680
	.word	7062152                         # 0x6bc288
	.word	6966928                         # 0x6a4e90
	.word	6998680                         # 0x6aca98
	.word	6903456                         # 0x6956a0
	.word	6935208                         # 0x69d2a8
	.word	6839984                         # 0x685eb0
	.word	6871736                         # 0x68dab8
	.word	7300800                         # 0x6f66c0
	.word	7332552                         # 0x6fe2c8
	.word	7237328                         # 0x6e6ed0
	.word	7269080                         # 0x6eead8
	.word	7173856                         # 0x6d76e0
	.word	7205608                         # 0x6df2e8
	.word	7110384                         # 0x6c7ef0
	.word	7142136                         # 0x6cfaf8
	.word	7571200                         # 0x738700
	.word	7537416                         # 0x730308
	.word	7507728                         # 0x728f10
	.word	7473944                         # 0x720b18
	.word	7444256                         # 0x719720
	.word	7410472                         # 0x711328
	.word	7380784                         # 0x709f30
	.word	7347000                         # 0x701b38
	.word	7841600                         # 0x77a740
	.word	7807816                         # 0x772348
	.word	7778128                         # 0x76af50
	.word	7744344                         # 0x762b58
	.word	7714656                         # 0x75b760
	.word	7680872                         # 0x753368
	.word	7651184                         # 0x74bf70
	.word	7617400                         # 0x743b78
	.word	8112000                         # 0x7bc780
	.word	8078216                         # 0x7b4388
	.word	8048528                         # 0x7acf90
	.word	8014744                         # 0x7a4b98
	.word	7985056                         # 0x79d7a0
	.word	7951272                         # 0x7953a8
	.word	7921584                         # 0x78dfb0
	.word	7887800                         # 0x785bb8
	.word	8382400                         # 0x7fe7c0
	.word	8348616                         # 0x7f63c8
	.word	8318928                         # 0x7eefd0
	.word	8285144                         # 0x7e6bd8
	.word	8255456                         # 0x7df7e0
	.word	8221672                         # 0x7d73e8
	.word	8191984                         # 0x7cfff0
	.word	8158200                         # 0x7c7bf8
	.size	.L.crctable, 1024

	.section	".note.GNU-stack","",@progbits
	.addrsig
