	.file	"QuantumDecoder.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9NCompress8NQuantum8CDecoder4InitEv
.LCPI0_0:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
.LCPI0_1:
	.half	64                              # 0x40
	.half	63                              # 0x3f
	.half	62                              # 0x3e
	.half	61                              # 0x3d
	.half	60                              # 0x3c
	.half	59                              # 0x3b
	.half	58                              # 0x3a
	.half	57                              # 0x39
.LCPI0_2:
	.half	56                              # 0x38
	.half	55                              # 0x37
	.half	54                              # 0x36
	.half	53                              # 0x35
	.half	52                              # 0x34
	.half	51                              # 0x33
	.half	50                              # 0x32
	.half	49                              # 0x31
.LCPI0_3:
	.dword	506097522914230528              # 0x706050403020100
	.dword	1084818905618843912             # 0xf0e0d0c0b0a0908
.LCPI0_4:
	.half	48                              # 0x30
	.half	47                              # 0x2f
	.half	46                              # 0x2e
	.half	45                              # 0x2d
	.half	44                              # 0x2c
	.half	43                              # 0x2b
	.half	42                              # 0x2a
	.half	41                              # 0x29
.LCPI0_5:
	.half	40                              # 0x28
	.half	39                              # 0x27
	.half	38                              # 0x26
	.half	37                              # 0x25
	.half	36                              # 0x24
	.half	35                              # 0x23
	.half	34                              # 0x22
	.half	33                              # 0x21
.LCPI0_6:
	.dword	1663540288323457296             # 0x1716151413121110
	.dword	2242261671028070680             # 0x1f1e1d1c1b1a1918
.LCPI0_7:
	.half	32                              # 0x20
	.half	31                              # 0x1f
	.half	30                              # 0x1e
	.half	29                              # 0x1d
	.half	28                              # 0x1c
	.half	27                              # 0x1b
	.half	26                              # 0x1a
	.half	25                              # 0x19
.LCPI0_8:
	.half	24                              # 0x18
	.half	23                              # 0x17
	.half	22                              # 0x16
	.half	21                              # 0x15
	.half	20                              # 0x14
	.half	19                              # 0x13
	.half	18                              # 0x12
	.half	17                              # 0x11
.LCPI0_9:
	.dword	2820983053732684064             # 0x2726252423222120
	.dword	3399704436437297448             # 0x2f2e2d2c2b2a2928
.LCPI0_10:
	.half	16                              # 0x10
	.half	15                              # 0xf
	.half	14                              # 0xe
	.half	13                              # 0xd
	.half	12                              # 0xc
	.half	11                              # 0xb
	.half	10                              # 0xa
	.half	9                               # 0x9
.LCPI0_11:
	.half	8                               # 0x8
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
.LCPI0_12:
	.dword	3978425819141910832             # 0x3736353433323130
	.dword	4557147201846524216             # 0x3f3e3d3c3b3a3938
.LCPI0_13:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI0_14:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI0_15:
	.half	27                              # 0x1b
	.half	26                              # 0x1a
	.half	25                              # 0x19
	.half	24                              # 0x18
	.half	23                              # 0x17
	.half	22                              # 0x16
	.half	21                              # 0x15
	.half	20                              # 0x14
.LCPI0_16:
	.half	19                              # 0x13
	.half	18                              # 0x12
	.half	17                              # 0x11
	.half	16                              # 0x10
	.half	15                              # 0xf
	.half	14                              # 0xe
	.half	13                              # 0xd
	.half	12                              # 0xc
.LCPI0_17:
	.half	11                              # 0xb
	.half	10                              # 0xa
	.half	9                               # 0x9
	.half	8                               # 0x8
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.text
	.globl	_ZN9NCompress8NQuantum8CDecoder4InitEv
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder4InitEv,@function
_ZN9NCompress8NQuantum8CDecoder4InitEv: # @_ZN9NCompress8NQuantum8CDecoder4InitEv
# %bb.0:                                # %_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder4InitEj.exit
	ori	$a1, $zero, 7
	lu32i.d	$a1, 4
	st.d	$a1, $a0, 184
	lu12i.w	$a1, 12320
	ori	$a1, $a1, 256
	st.w	$a1, $a0, 322
	ori	$a2, $zero, 1284
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	st.h	$a2, $a0, 326
	ori	$a2, $zero, 6
	st.b	$a2, $a0, 328
	vst	$vr0, $a0, 192
	ori	$a2, $zero, 64
	lu32i.d	$a2, 4
	st.d	$a2, $a0, 388
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_1)
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI0_2)
	pcalau12i	$a3, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_3)
	pcalau12i	$a3, %pc_hi20(.LCPI0_4)
	vld	$vr3, $a3, %pc_lo12(.LCPI0_4)
	vst	$vr1, $a0, 396
	vst	$vr2, $a0, 412
	vst	$vr0, $a0, 526
	vst	$vr3, $a0, 428
	pcalau12i	$a3, %pc_hi20(.LCPI0_5)
	vld	$vr4, $a3, %pc_lo12(.LCPI0_5)
	pcalau12i	$a3, %pc_hi20(.LCPI0_6)
	vld	$vr5, $a3, %pc_lo12(.LCPI0_6)
	pcalau12i	$a3, %pc_hi20(.LCPI0_7)
	vld	$vr6, $a3, %pc_lo12(.LCPI0_7)
	pcalau12i	$a3, %pc_hi20(.LCPI0_8)
	vld	$vr7, $a3, %pc_lo12(.LCPI0_8)
	vst	$vr4, $a0, 444
	vst	$vr5, $a0, 542
	vst	$vr6, $a0, 460
	vst	$vr7, $a0, 476
	pcalau12i	$a3, %pc_hi20(.LCPI0_9)
	vld	$vr8, $a3, %pc_lo12(.LCPI0_9)
	pcalau12i	$a3, %pc_hi20(.LCPI0_10)
	vld	$vr9, $a3, %pc_lo12(.LCPI0_10)
	pcalau12i	$a3, %pc_hi20(.LCPI0_11)
	vld	$vr10, $a3, %pc_lo12(.LCPI0_11)
	pcalau12i	$a3, %pc_hi20(.LCPI0_12)
	vld	$vr11, $a3, %pc_lo12(.LCPI0_12)
	vst	$vr8, $a0, 558
	vst	$vr9, $a0, 492
	vst	$vr10, $a0, 508
	vst	$vr11, $a0, 574
	st.h	$zero, $a0, 524
	st.d	$a2, $a0, 592
	vst	$vr1, $a0, 600
	vst	$vr2, $a0, 616
	vst	$vr0, $a0, 730
	vst	$vr3, $a0, 632
	vst	$vr4, $a0, 648
	vst	$vr5, $a0, 746
	vst	$vr6, $a0, 664
	vst	$vr7, $a0, 680
	vst	$vr8, $a0, 762
	vst	$vr9, $a0, 696
	vst	$vr10, $a0, 712
	vst	$vr11, $a0, 778
	st.h	$zero, $a0, 728
	st.d	$a2, $a0, 796
	vst	$vr1, $a0, 804
	vst	$vr2, $a0, 820
	vst	$vr0, $a0, 934
	vst	$vr3, $a0, 836
	vst	$vr4, $a0, 852
	vst	$vr5, $a0, 950
	vst	$vr6, $a0, 868
	vst	$vr7, $a0, 884
	vst	$vr8, $a0, 966
	vst	$vr9, $a0, 900
	vst	$vr10, $a0, 916
	vst	$vr11, $a0, 982
	st.h	$zero, $a0, 932
	st.d	$a2, $a0, 1000
	vst	$vr1, $a0, 1008
	vst	$vr2, $a0, 1024
	vst	$vr0, $a0, 1138
	vst	$vr3, $a0, 1040
	vst	$vr4, $a0, 1056
	vst	$vr5, $a0, 1154
	vst	$vr6, $a0, 1072
	vst	$vr7, $a0, 1088
	vst	$vr8, $a0, 1170
	vst	$vr9, $a0, 1104
	ld.w	$a2, $a0, 176
	vst	$vr10, $a0, 1120
	vst	$vr11, $a0, 1186
	st.h	$zero, $a0, 1136
	sltui	$a3, $a2, 1
	slli.w	$a2, $a2, 1
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 1
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	sltui	$a3, $a2, 24
	maskeqz	$a4, $a2, $a3
	ori	$a5, $zero, 24
	masknez	$a3, $a5, $a3
	or	$a5, $a4, $a3
	st.w	$a5, $a0, 1204
	ori	$a3, $zero, 4
	st.w	$a3, $a0, 1208
	beqz	$a2, .LBB0_7
# %bb.1:                                # %.lr.ph.i
	ori	$a6, $zero, 16
	bstrpick.d	$a4, $a5, 31, 0
	bltu	$a2, $a6, .LBB0_4
# %bb.2:                                # %vector.memcheck
	addi.d	$a7, $a0, 1212
	add.d	$a6, $a0, $a4
	addi.d	$a6, $a6, 1342
	addi.d	$t0, $a0, 1342
	bgeu	$a7, $a6, .LBB0_25
# %bb.3:                                # %vector.memcheck
	alsl.d	$a6, $a4, $a0, 1
	addi.d	$a6, $a6, 1212
	bgeu	$t0, $a6, .LBB0_25
.LBB0_4:
	move	$a6, $zero
.LBB0_5:                                # %scalar.ph70.preheader
	slli.d	$a7, $a6, 1
	addi.d	$a7, $a7, 1212
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB0_6:                                # %scalar.ph70
                                        # =>This Inner Loop Header: Depth=1
	stx.h	$a5, $a0, $a7
	add.d	$t0, $a0, $a6
	st.b	$a6, $t0, 1342
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$a5, $a5, -1
	bne	$a4, $a6, .LBB0_6
	b	.LBB0_8
.LBB0_7:
	move	$a4, $zero
.LBB0_8:                                # %_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder4InitEj.exit16
	alsl.d	$a4, $a4, $a0, 1
	st.h	$zero, $a4, 1212
	sltui	$a4, $a2, 36
	ori	$a5, $zero, 36
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	st.w	$a4, $a0, 1408
	st.w	$a3, $a0, 1412
	beqz	$a2, .LBB0_15
# %bb.9:                                # %.lr.ph.i.1
	ori	$a5, $zero, 16
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a2, $a5, .LBB0_12
# %bb.10:                               # %vector.memcheck80
	addi.d	$a6, $a0, 1416
	add.d	$a5, $a0, $a3
	addi.d	$a5, $a5, 1546
	addi.d	$a7, $a0, 1546
	bgeu	$a6, $a5, .LBB0_28
# %bb.11:                               # %vector.memcheck80
	alsl.d	$a5, $a3, $a0, 1
	addi.d	$a5, $a5, 1416
	bgeu	$a7, $a5, .LBB0_28
.LBB0_12:
	move	$a5, $zero
.LBB0_13:                               # %scalar.ph86.preheader
	slli.d	$a6, $a5, 1
	addi.d	$a6, $a6, 1416
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB0_14:                               # %scalar.ph86
                                        # =>This Inner Loop Header: Depth=1
	stx.h	$a4, $a0, $a6
	add.d	$a7, $a0, $a5
	st.b	$a5, $a7, 1546
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 2
	addi.d	$a4, $a4, -1
	bne	$a3, $a5, .LBB0_14
	b	.LBB0_16
.LBB0_15:
	move	$a3, $zero
.LBB0_16:                               # %_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder4InitEj.exit16.1
	alsl.d	$a3, $a3, $a0, 1
	st.h	$zero, $a3, 1416
	sltui	$a3, $a2, 42
	ori	$a4, $zero, 42
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a2, $a3
	or	$a4, $a3, $a4
	st.w	$a4, $a0, 1612
	ori	$a3, $zero, 4
	st.w	$a3, $a0, 1616
	beqz	$a2, .LBB0_23
# %bb.17:                               # %.lr.ph.i.2
	ori	$a5, $zero, 16
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a2, $a5, .LBB0_20
# %bb.18:                               # %vector.memcheck103
	addi.d	$a5, $a0, 1620
	add.d	$a2, $a0, $a3
	addi.d	$a2, $a2, 1750
	addi.d	$a6, $a0, 1750
	bgeu	$a5, $a2, .LBB0_31
# %bb.19:                               # %vector.memcheck103
	alsl.d	$a2, $a3, $a0, 1
	addi.d	$a2, $a2, 1620
	bgeu	$a6, $a2, .LBB0_31
.LBB0_20:
	move	$a2, $zero
.LBB0_21:                               # %scalar.ph109.preheader
	slli.d	$a1, $a2, 1
	addi.d	$a1, $a1, 1620
	sub.d	$a4, $a4, $a2
	.p2align	4, , 16
.LBB0_22:                               # %scalar.ph109
                                        # =>This Inner Loop Header: Depth=1
	stx.h	$a4, $a0, $a1
	add.d	$a5, $a0, $a2
	st.b	$a2, $a5, 1750
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 2
	addi.d	$a4, $a4, -1
	bne	$a3, $a2, .LBB0_22
	b	.LBB0_24
.LBB0_23:
	move	$a3, $zero
.LBB0_24:                               # %_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder4InitEj.exit16.2
	pcalau12i	$a1, %pc_hi20(.LCPI0_15)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_15)
	alsl.d	$a1, $a3, $a0, 1
	st.h	$zero, $a1, 1620
	vst	$vr1, $a0, 1824
	pcalau12i	$a1, %pc_hi20(.LCPI0_16)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_16)
	ori	$a1, $zero, 27
	lu32i.d	$a1, 4
	st.d	$a1, $a0, 1816
	vst	$vr1, $a0, 1840
	vst	$vr0, $a0, 1954
	lu12i.w	$a1, 78113
	ori	$a1, $a1, 272
	st.w	$a1, $a0, 1970
	pcalau12i	$a1, %pc_hi20(.LCPI0_17)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_17)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1300
	st.h	$a1, $a0, 1974
	ori	$a1, $zero, 22
	st.b	$a1, $a0, 1976
	vst	$vr0, $a0, 1856
	lu12i.w	$a1, 106897
	ori	$a1, $a1, 2071
	st.w	$a1, $a0, 1977
	ori	$a1, $zero, 3
	st.h	$a1, $a0, 1872
	lu12i.w	$a1, 16
	ori	$a1, $a1, 2
	st.w	$a1, $a0, 1874
	st.h	$zero, $a0, 1878
	ret
.LBB0_25:                               # %vector.ph71
	andi	$a6, $a4, 24
	pcalau12i	$t1, %pc_hi20(.LCPI0_13)
	vld	$vr1, $t1, %pc_lo12(.LCPI0_13)
	pcalau12i	$t1, %pc_hi20(.LCPI0_14)
	vld	$vr2, $t1, %pc_lo12(.LCPI0_14)
	vreplgr2vr.w	$vr3, $a5
	move	$t1, $a1
	lu32i.d	$t1, 394500
	lu52i.d	$t1, $t1, 112
	vreplgr2vr.d	$vr4, $t1
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_26:                               # %vector.body72
                                        # =>This Inner Loop Header: Depth=1
	vsub.w	$vr5, $vr3, $vr2
	vsub.w	$vr6, $vr3, $vr1
	vpickev.h	$vr5, $vr6, $vr5
	vst	$vr5, $a7, 0
	vstelm.d	$vr4, $t0, 0, 0
	vaddi.wu	$vr2, $vr2, 8
	vaddi.wu	$vr1, $vr1, 8
	vaddi.bu	$vr4, $vr4, 8
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 16
	bnez	$t1, .LBB0_26
# %bb.27:                               # %middle.block79
	beq	$a6, $a4, .LBB0_8
	b	.LBB0_5
.LBB0_28:                               # %vector.ph88
	andi	$a5, $a3, 56
	pcalau12i	$t0, %pc_hi20(.LCPI0_13)
	vld	$vr1, $t0, %pc_lo12(.LCPI0_13)
	pcalau12i	$t0, %pc_hi20(.LCPI0_14)
	vld	$vr2, $t0, %pc_lo12(.LCPI0_14)
	vreplgr2vr.w	$vr3, $a4
	move	$t0, $a1
	lu32i.d	$t0, 394500
	lu52i.d	$t0, $t0, 112
	vreplgr2vr.d	$vr4, $t0
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_29:                               # %vector.body93
                                        # =>This Inner Loop Header: Depth=1
	vsub.w	$vr5, $vr3, $vr2
	vsub.w	$vr6, $vr3, $vr1
	vpickev.h	$vr5, $vr6, $vr5
	vst	$vr5, $a6, 0
	vstelm.d	$vr4, $a7, 0, 0
	vaddi.wu	$vr2, $vr2, 8
	vaddi.wu	$vr1, $vr1, 8
	vaddi.bu	$vr4, $vr4, 8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 16
	bnez	$t0, .LBB0_29
# %bb.30:                               # %middle.block100
	beq	$a5, $a3, .LBB0_16
	b	.LBB0_13
.LBB0_31:                               # %vector.ph111
	andi	$a2, $a3, 56
	pcalau12i	$a7, %pc_hi20(.LCPI0_13)
	vld	$vr1, $a7, %pc_lo12(.LCPI0_13)
	pcalau12i	$a7, %pc_hi20(.LCPI0_14)
	vld	$vr2, $a7, %pc_lo12(.LCPI0_14)
	vreplgr2vr.w	$vr3, $a4
	lu32i.d	$a1, 394500
	lu52i.d	$a1, $a1, 112
	vreplgr2vr.d	$vr4, $a1
	move	$a1, $a2
	.p2align	4, , 16
.LBB0_32:                               # %vector.body116
                                        # =>This Inner Loop Header: Depth=1
	vsub.w	$vr5, $vr3, $vr2
	vsub.w	$vr6, $vr3, $vr1
	vpickev.h	$vr5, $vr6, $vr5
	vst	$vr5, $a5, 0
	vstelm.d	$vr4, $a6, 0, 0
	vaddi.wu	$vr2, $vr2, 8
	vaddi.wu	$vr1, $vr1, 8
	vaddi.bu	$vr4, $vr4, 8
	addi.d	$a1, $a1, -8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 16
	bnez	$a1, .LBB0_32
# %bb.33:                               # %middle.block123
	beq	$a2, $a3, .LBB0_24
	b	.LBB0_21
.Lfunc_end0:
	.size	_ZN9NCompress8NQuantum8CDecoder4InitEv, .Lfunc_end0-_ZN9NCompress8NQuantum8CDecoder4InitEv
                                        # -- End function
	.globl	_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj # -- Begin function _ZN9NCompress8NQuantum8CDecoder8CodeSpecEj
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj,@function
_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj: # @_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$fp, $a0
	ld.w	$a0, $a0, 168
	addi.w	$a2, $zero, -2
	move	$s0, $a1
	bne	$a0, $a2, .LBB1_12
# %bb.1:
	ld.bu	$a0, $fp, 180
	lu12i.w	$s2, -524176
	bnez	$a0, .LBB1_4
# %bb.2:
	ld.wu	$a1, $fp, 176
	addi.d	$a0, $fp, 32
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_20
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoder4InitEv)
	jirl	$ra, $ra, 0
.LBB1_4:
	addi.d	$s1, $fp, 112
	lu12i.w	$a1, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_20
# %bb.5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	lu12i.w	$a0, 16
	st.w	$a0, $fp, 104
	ori	$a1, $zero, 0
	lu32i.d	$a1, 65536
	st.d	$a1, $fp, 88
	addi.w	$s3, $zero, -16
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_6:                                #   in Loop: Header=BB1_9 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s1, 0
	ld.bu	$a0, $a0, 0
.LBB1_7:                                # %_ZN9CInBuffer8ReadByteEv.exit.i.i.i
                                        #   in Loop: Header=BB1_9 Depth=1
	addi.d	$a0, $a0, 256
.LBB1_8:                                # %_ZN9NCompress8NQuantum17CStreamBitDecoder7ReadBitEv.exit.i.i
                                        #   in Loop: Header=BB1_9 Depth=1
	slli.d	$a1, $s2, 1
	bstrpick.d	$a2, $a0, 7, 7
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, 104
	bstrpick.d	$a3, $s3, 31, 0
	addi.d	$s3, $a3, 1
	slli.d	$a3, $s3, 31
	or	$s2, $a2, $a1
	bltz	$a3, .LBB1_21
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a1, $a0, 31, 16
	beqz	$a1, .LBB1_8
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	ld.d	$a0, $fp, 112
	ld.d	$a1, $fp, 120
	bltu	$a0, $a1, .LBB1_6
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	b	.LBB1_7
.LBB1_12:
	beqz	$s0, .LBB1_76
# %bb.13:                               # %.preheader99
	blez	$a0, .LBB1_22
# %bb.14:                               # %.lr.ph
	addi.d	$s1, $fp, 32
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, -1
	ld.w	$a1, $fp, 172
	ld.wu	$a2, $fp, 40
	st.w	$a0, $fp, 168
	ld.w	$a0, $fp, 52
	nor	$a1, $a1, $zero
	add.d	$a1, $a2, $a1
	addi.w	$a3, $a1, 0
	sltu	$a3, $a3, $a0
	ld.d	$a4, $fp, 32
	masknez	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.b	$a0, $a4, $a0
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 40
	stx.b	$a0, $a4, $a2
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	move	$s3, $s0
	bne	$a0, $a1, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB1_17:                               # %_ZN12CLzOutWindow7PutByteEh.exit
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.w	$a0, $fp, 168
	addi.w	$s0, $s3, -1
	blez	$a0, .LBB1_19
# %bb.18:                               # %_ZN12CLzOutWindow7PutByteEh.exit
                                        #   in Loop: Header=BB1_15 Depth=1
	bne	$s3, $s2, .LBB1_15
.LBB1_19:                               # %.preheader
	bnez	$s0, .LBB1_22
	b	.LBB1_79
.LBB1_20:
	ori	$a0, $s2, 14
	b	.LBB1_80
.LBB1_21:                               # %.thread
	st.w	$s2, $fp, 96
	st.w	$zero, $fp, 168
	beqz	$s0, .LBB1_76
.LBB1_22:                               # %.lr.ph105
	addi.d	$s2, $fp, 88
	addi.d	$s3, $fp, 184
	addi.d	$a0, $fp, 1816
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s5, $fp, 112
	addi.d	$a0, $fp, 1204
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s6, $fp, 32
	addi.d	$a0, $fp, 388
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s4, $zero, 3
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               # %_ZN12CLzOutWindow7PutByteEh.exit70
                                        #   in Loop: Header=BB1_24 Depth=1
	addi.w	$s0, $s0, -1
	beqz	$s0, .LBB1_79
.LBB1_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_66 Depth 2
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_72 Depth 2
	ld.bu	$a0, $fp, 156
	bnez	$a0, .LBB1_77
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE)
	jirl	$ra, $ra, 0
	bltu	$s4, $a0, .LBB1_28
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=1
	slli.d	$s1, $a0, 6
	ori	$a1, $zero, 204
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 40
	ld.d	$a2, $fp, 32
	add.d	$a0, $a0, $s1
	addi.d	$a3, $a1, 1
	st.w	$a3, $fp, 40
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB1_23
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_28:                               #   in Loop: Header=BB1_24 Depth=1
	addi.w	$s4, $a0, -4
	addi.w	$s8, $a0, -1
	ori	$a1, $zero, 2
	bne	$s4, $a1, .LBB1_40
# %bb.29:                               #   in Loop: Header=BB1_24 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	bltu	$a0, $a1, .LBB1_38
# %bb.30:                               #   in Loop: Header=BB1_24 Depth=1
	addi.w	$a0, $a0, -2
	bstrpick.d	$s7, $a0, 31, 2
	move	$a1, $a0
	ori	$a2, $zero, 1
	bstrins.d	$a1, $a2, 63, 2
	sll.w	$a1, $a1, $s7
	add.d	$a1, $s1, $a1
	addi.w	$s8, $a1, -3
	ori	$a1, $zero, 23
	bltu	$a1, $a0, .LBB1_40
# %bb.31:                               #   in Loop: Header=BB1_24 Depth=1
	ld.w	$a0, $fp, 104
	move	$s1, $zero
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_35 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $s5, 0
	ld.bu	$a0, $a0, 0
.LBB1_33:                               # %_ZN9CInBuffer8ReadByteEv.exit.i.i
                                        #   in Loop: Header=BB1_35 Depth=2
	addi.d	$a0, $a0, 256
.LBB1_34:                               # %_ZN9NCompress8NQuantum17CStreamBitDecoder7ReadBitEv.exit.i
                                        #   in Loop: Header=BB1_35 Depth=2
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $a0, 7, 7
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, 104
	addi.w	$s7, $s7, -1
	or	$s1, $a2, $a1
	beqz	$s7, .LBB1_39
.LBB1_35:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a1, $a0, 31, 16
	beqz	$a1, .LBB1_34
# %bb.36:                               #   in Loop: Header=BB1_35 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$a1, $fp, 120
	bltu	$a0, $a1, .LBB1_32
# %bb.37:                               #   in Loop: Header=BB1_35 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	b	.LBB1_33
.LBB1_38:                               #   in Loop: Header=BB1_24 Depth=1
	add.w	$s8, $a0, $s8
	b	.LBB1_40
.LBB1_39:                               # %_ZN9NCompress8NQuantum17CStreamBitDecoder8ReadBitsEi.exit
                                        #   in Loop: Header=BB1_24 Depth=1
	add.w	$s8, $s1, $s8
	.p2align	4, , 16
.LBB1_40:                               #   in Loop: Header=BB1_24 Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	ori	$a1, $zero, 204
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 4
	bltu	$s7, $a0, .LBB1_49
# %bb.41:                               #   in Loop: Header=BB1_24 Depth=1
	ld.w	$a0, $fp, 104
	bstrpick.d	$a1, $s7, 31, 1
	addi.d	$s1, $a1, -1
	move	$s3, $zero
	move	$s4, $s1
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_42:                               #   in Loop: Header=BB1_45 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $s5, 0
	ld.bu	$a0, $a0, 0
.LBB1_43:                               # %_ZN9CInBuffer8ReadByteEv.exit.i.i78
                                        #   in Loop: Header=BB1_45 Depth=2
	addi.d	$a0, $a0, 256
.LBB1_44:                               # %_ZN9NCompress8NQuantum17CStreamBitDecoder7ReadBitEv.exit.i75
                                        #   in Loop: Header=BB1_45 Depth=2
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $a0, 7, 7
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, 104
	addi.w	$s4, $s4, -1
	or	$s3, $a2, $a1
	beqz	$s4, .LBB1_48
.LBB1_45:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a1, $a0, 31, 16
	beqz	$a1, .LBB1_44
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$a1, $fp, 120
	bltu	$a0, $a1, .LBB1_42
# %bb.47:                               #   in Loop: Header=BB1_45 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_48:                               # %_ZN9NCompress8NQuantum17CStreamBitDecoder8ReadBitsEi.exit80
                                        #   in Loop: Header=BB1_24 Depth=1
	ori	$a0, $zero, 1
	bstrins.d	$s7, $a0, 63, 1
	sll.w	$a0, $s7, $s1
	add.w	$s7, $s3, $a0
.LBB1_49:                               #   in Loop: Header=BB1_24 Depth=1
	ld.w	$a2, $fp, 40
	nor	$a0, $s7, $zero
	add.w	$a0, $a2, $a0
	bltu	$s7, $a2, .LBB1_53
# %bb.50:                               #   in Loop: Header=BB1_24 Depth=1
	ld.bu	$a1, $fp, 80
	beqz	$a1, .LBB1_77
# %bb.51:                               #   in Loop: Header=BB1_24 Depth=1
	ld.w	$a1, $fp, 52
	bgeu	$s7, $a1, .LBB1_77
# %bb.52:                               #   in Loop: Header=BB1_24 Depth=1
	add.w	$a0, $a1, $a0
.LBB1_53:                               #   in Loop: Header=BB1_24 Depth=1
	sltu	$a1, $s8, $s0
	ld.w	$a3, $fp, 44
	masknez	$a4, $s0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s4, $a1, $a4
	sub.w	$a1, $a3, $a2
	bgeu	$s4, $a1, .LBB1_59
# %bb.54:                               #   in Loop: Header=BB1_24 Depth=1
	ld.w	$a1, $fp, 52
	sub.w	$a1, $a1, $a0
	bgeu	$s4, $a1, .LBB1_59
# %bb.55:                               # %iter.check
                                        #   in Loop: Header=BB1_24 Depth=1
	ld.d	$a4, $fp, 32
	bstrpick.d	$a6, $a2, 31, 0
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a1, $a4, $a5
	add.d	$a0, $a4, $a6
	add.d	$a2, $a2, $s4
	addi.w	$a3, $s4, -1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 7
	bltu	$a3, $a2, .LBB1_64
# %bb.56:                               # %iter.check
                                        #   in Loop: Header=BB1_24 Depth=1
	sub.d	$a2, $a6, $a5
	ori	$a7, $zero, 32
	bltu	$a2, $a7, .LBB1_63
# %bb.57:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_24 Depth=1
	bstrpick.d	$a2, $a3, 31, 0
	addi.d	$a2, $a2, 1
	ori	$a7, $zero, 31
	bgeu	$a3, $a7, .LBB1_65
# %bb.58:                               #   in Loop: Header=BB1_24 Depth=1
	move	$a7, $zero
	b	.LBB1_69
	.p2align	4, , 16
.LBB1_59:                               #   in Loop: Header=BB1_24 Depth=1
	move	$s1, $s4
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_60:                               #   in Loop: Header=BB1_61 Depth=2
	addi.w	$s1, $s1, -1
	addi.w	$a0, $s3, 1
	beqz	$s1, .LBB1_73
.LBB1_61:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $fp, 52
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	ld.d	$a2, $fp, 32
	masknez	$s3, $a0, $a1
	ld.wu	$a0, $fp, 40
	bstrpick.d	$a1, $s3, 31, 0
	ldx.b	$a1, $a2, $a1
	addi.d	$a3, $a0, 1
	st.w	$a3, $fp, 40
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB1_60
# %bb.62:                               #   in Loop: Header=BB1_61 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB1_60
.LBB1_63:                               #   in Loop: Header=BB1_24 Depth=1
	move	$a3, $s4
	b	.LBB1_72
.LBB1_64:                               #   in Loop: Header=BB1_24 Depth=1
	move	$a3, $s4
	b	.LBB1_72
.LBB1_65:                               # %vector.ph
                                        #   in Loop: Header=BB1_24 Depth=1
	bstrpick.d	$a3, $a2, 32, 5
	slli.d	$a7, $a3, 5
	addi.d	$t0, $a4, 16
	add.d	$a3, $t0, $a6
	add.d	$t0, $t0, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB1_66:                               # %vector.body
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$t1, $t1, -32
	addi.d	$a3, $a3, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_66
# %bb.67:                               # %middle.block
                                        #   in Loop: Header=BB1_24 Depth=1
	beq	$a2, $a7, .LBB1_73
# %bb.68:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_24 Depth=1
	andi	$a3, $a2, 24
	beqz	$a3, .LBB1_75
.LBB1_69:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_24 Depth=1
	bstrpick.d	$t1, $a2, 32, 3
	slli.d	$t0, $t1, 3
	sub.d	$a3, $s4, $t0
	alsl.d	$a1, $t1, $a1, 3
	alsl.d	$a0, $t1, $a0, 3
	sub.d	$t1, $a7, $t0
	add.d	$a6, $a7, $a6
	add.d	$a6, $a4, $a6
	add.d	$a5, $a7, $a5
	add.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB1_70:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	st.d	$a5, $a6, 0
	addi.d	$t1, $t1, 8
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$t1, .LBB1_70
# %bb.71:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_24 Depth=1
	beq	$a2, $t0, .LBB1_73
	.p2align	4, , 16
.LBB1_72:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a0, 1
	addi.w	$a3, $a3, -1
	st.b	$a2, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB1_72
	.p2align	4, , 16
.LBB1_73:                               # %.loopexit
                                        #   in Loop: Header=BB1_24 Depth=1
	bltu	$s0, $s8, .LBB1_78
# %bb.74:                               #   in Loop: Header=BB1_24 Depth=1
	sub.w	$s0, $s0, $s4
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ori	$s4, $zero, 3
	bnez	$s0, .LBB1_24
	b	.LBB1_79
.LBB1_75:                               #   in Loop: Header=BB1_24 Depth=1
	sub.d	$a3, $s4, $a7
	add.d	$a1, $a1, $a7
	add.d	$a0, $a0, $a7
	b	.LBB1_72
.LBB1_76:
	move	$a0, $zero
	b	.LBB1_80
.LBB1_77:
	ori	$a0, $zero, 1
	b	.LBB1_80
.LBB1_78:                               # %_ZN12CLzOutWindow9CopyBlockEjj.exit.thread94
	sub.d	$a0, $s8, $s4
	st.w	$a0, $fp, 168
	st.w	$s7, $fp, 172
.LBB1_79:                               # %.loopexit98
	ld.bu	$a0, $fp, 156
.LBB1_80:                               # %_ZN12CLzOutWindow9CopyBlockEjj.exit.thread91
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj, .Lfunc_end1-_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE
.LCPI2_0:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	4                               # 0x4
	.half	11                              # 0xb
	.half	5                               # 0x5
	.half	13                              # 0xd
	.half	6                               # 0x6
	.half	15                              # 0xf
	.section	.text._ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE,"axG",@progbits,_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE,comdat
	.weak	_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE
	.p2align	5
	.type	_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE,@function
_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE: # @_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$a4, $a1
	move	$fp, $a0
	ld.w	$a0, $a1, 8
	ld.hu	$a3, $fp, 8
	addi.d	$s0, $fp, 8
	ld.w	$a1, $a1, 4
	addi.d	$a0, $a0, 1
	mul.d	$a0, $a0, $a3
	addi.w	$a0, $a0, -1
	div.wu	$a0, $a0, $a1
	addi.w	$s1, $zero, -1
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $s1, 2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $s0, $a1
	addi.w	$s1, $s1, 1
	bltu	$a0, $a1, .LBB2_1
# %bb.2:
	bstrpick.d	$s2, $s1, 31, 0
	slli.d	$a0, $s2, 1
	ldx.hu	$a2, $s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 138
	ldx.bu	$a0, $a1, $s2
	ori	$a2, $zero, 7
	bgeu	$s1, $a2, .LBB2_4
# %bb.3:
	move	$a2, $s2
	b	.LBB2_7
.LBB2_4:                                # %vector.ph
	addi.d	$a3, $s2, 1
	bstrpick.d	$a2, $a3, 32, 3
	slli.d	$a4, $a2, 3
	sub.d	$a2, $s2, $a4
	alsl.d	$a5, $s2, $fp, 1
	addi.d	$a5, $a5, -6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vaddi.hu	$vr0, $vr0, 8
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -16
	bnez	$a6, .LBB2_5
# %bb.6:                                # %middle.block
	beq	$a3, $a4, .LBB2_9
.LBB2_7:                                # %scalar.ph.preheader
	addi.d	$a3, $a2, 1
	alsl.d	$a2, $a2, $fp, 1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB2_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a2, 0
	addi.d	$a4, $a4, 8
	st.h	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, -2
	bnez	$a3, .LBB2_8
.LBB2_9:                                # %.loopexit122
	ld.hu	$a3, $s0, 0
	ori	$a2, $zero, 3801
	bltu	$a3, $a2, .LBB2_41
# %bb.10:
	ld.w	$a2, $fp, 4
	addi.w	$a2, $a2, -1
	st.w	$a2, $fp, 4
	beqz	$a2, .LBB2_13
# %bb.11:
	ld.wu	$a1, $fp, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $s0, $a2
	addi.d	$a3, $a1, -1
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a3, $a3, $fp, 1
	addi.d	$a3, $a3, 8
	.p2align	4, , 16
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a3, 0
	addi.w	$a1, $a1, -1
	srli.d	$a4, $a4, 1
	bstrpick.d	$a5, $a2, 15, 0
	sltu	$a5, $a5, $a4
	addi.d	$a2, $a2, 1
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	st.h	$a2, $a3, 0
	addi.d	$a3, $a3, -2
	bnez	$a1, .LBB2_12
	b	.LBB2_41
.LBB2_13:
	ld.wu	$a2, $fp, 0
	ori	$a4, $zero, 50
	addi.w	$a5, $a2, 0
	st.w	$a4, $fp, 4
	beqz	$a5, .LBB2_16
# %bb.14:                               # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bgeu	$a2, $a4, .LBB2_17
# %bb.15:
	move	$a4, $zero
	b	.LBB2_21
.LBB2_16:
	addi.w	$a4, $zero, -1
	b	.LBB2_24
.LBB2_17:                               # %vector.ph93
	addi.d	$a5, $fp, 10
	bstrpick.d	$a4, $a2, 31, 3
	pcalau12i	$a6, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI2_0)
	slli.d	$a4, $a4, 3
	vinsgr2vr.h	$vr1, $a3, 7
	vrepli.b	$vr2, 0
	move	$a3, $a4
	.p2align	4, , 16
.LBB2_18:                               # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr3, $vr1, 0
	vld	$vr1, $a5, 0
	vbsrl.v	$vr3, $vr3, 14
	vbsll.v	$vr4, $vr1, 2
	vor.v	$vr3, $vr4, $vr3
	vori.b	$vr4, $vr0, 0
	vshuf.h	$vr4, $vr2, $vr1
	vilvl.h	$vr3, $vr2, $vr3
	vilvh.h	$vr5, $vr2, $vr1
	vilvl.h	$vr6, $vr2, $vr1
	vsub.w	$vr3, $vr3, $vr6
	vaddi.wu	$vr3, $vr3, 1
	vsub.w	$vr4, $vr4, $vr5
	vaddi.wu	$vr4, $vr4, 1
	vsrli.w	$vr4, $vr4, 1
	vsrli.w	$vr3, $vr3, 1
	vpickev.h	$vr3, $vr4, $vr3
	vst	$vr3, $a5, -2
	addi.d	$a3, $a3, -8
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB2_18
# %bb.19:                               # %middle.block100
	beq	$a4, $a2, .LBB2_23
# %bb.20:
	vpickve2gr.h	$a3, $vr1, 7
.LBB2_21:                               # %.lr.ph.preheader123
	alsl.d	$a5, $a4, $fp, 1
	addi.d	$a5, $a5, 10
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB2_22:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a3, 15, 0
	ld.hu	$a3, $a5, 0
	sub.d	$a6, $a6, $a3
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	st.h	$a6, $a5, -2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 2
	bnez	$a4, .LBB2_22
.LBB2_23:                               # %.preheader50
	addi.w	$a4, $a2, -1
	beqz	$a4, .LBB2_31
.LBB2_24:                               # %.lr.ph57.preheader
	move	$a7, $zero
	bstrpick.d	$a3, $a4, 31, 0
	addi.d	$a5, $fp, 10
	addi.d	$a6, $fp, 139
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_25:                               # %.loopexit49
                                        #   in Loop: Header=BB2_26 Depth=1
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, 1
	addi.d	$a4, $a4, -1
	beq	$a7, $a3, .LBB2_32
.LBB2_26:                               # %.lr.ph57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_29 Depth 2
	move	$t0, $a7
	addi.d	$a7, $a7, 1
	bgeu	$a7, $a2, .LBB2_25
# %bb.27:                               # %.lr.ph55
                                        #   in Loop: Header=BB2_26 Depth=1
	alsl.d	$t1, $t0, $s0, 1
	move	$t2, $a4
	move	$t3, $a6
	move	$t4, $a5
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_29 Depth=2
	addi.d	$t4, $t4, 2
	addi.w	$t2, $t2, -1
	addi.d	$t3, $t3, 1
	beqz	$t2, .LBB2_25
.LBB2_29:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t5, $t1, 0
	ld.hu	$t6, $t4, 0
	bgeu	$t5, $t6, .LBB2_28
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=2
	ldx.b	$t7, $a1, $t0
	st.h	$t6, $t1, 0
	ld.b	$t6, $t3, 0
	stx.b	$t6, $a1, $t0
	st.h	$t5, $t4, 0
	st.b	$t7, $t3, 0
	b	.LBB2_28
.LBB2_31:
	move	$a3, $zero
.LBB2_32:                               # %.preheader
	ori	$a1, $zero, 15
	bltu	$a3, $a1, .LBB2_39
# %bb.33:                               # %.preheader
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	beq	$a3, $a1, .LBB2_39
# %bb.34:                               # %vector.memcheck
	slli.d	$a4, $a3, 1
	addi.d	$a1, $a4, 2
	bstrpick.d	$a1, $a1, 32, 1
	alsl.d	$a2, $a1, $fp, 1
	addi.d	$a2, $a2, 10
	bgeu	$s0, $a2, .LBB2_36
# %bb.35:                               # %vector.memcheck
	alsl.d	$a2, $a3, $fp, 1
	addi.d	$a2, $a2, 10
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a1, $a4
	add.d	$a1, $a1, $fp
	addi.d	$a1, $a1, 8
	bltu	$a1, $a2, .LBB2_39
.LBB2_36:                               # %vector.ph107
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a1, 32, 3
	slli.d	$a2, $a2, 3
	sub.d	$a3, $a3, $a2
	add.d	$a4, $a4, $fp
	addi.d	$a4, $a4, -6
	move	$a5, $a1
	move	$a6, $a2
	.p2align	4, , 16
.LBB2_37:                               # %vector.body110
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	bstrpick.d	$a7, $a5, 31, 0
	alsl.d	$a7, $a7, $s0, 1
	vld	$vr1, $a7, -14
	vadd.h	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -16
	bnez	$a6, .LBB2_37
# %bb.38:                               # %middle.block119
	beq	$a1, $a2, .LBB2_41
.LBB2_39:                               # %scalar.ph105.preheader
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $fp, 1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB2_40:                               # %scalar.ph105
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, 0
	bstrpick.d	$a4, $a1, 31, 0
	slli.d	$a4, $a4, 1
	ldx.h	$a4, $s0, $a4
	add.d	$a3, $a4, $a3
	st.h	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -2
	bnez	$a1, .LBB2_40
.LBB2_41:                               # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE, .Lfunc_end2-_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo # -- Begin function _ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo,@function
_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo: # @_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	beqz	$a4, .LBB3_11
# %bb.1:
	move	$s1, $a5
	move	$s2, $a2
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a4, 0
	ld.d	$a2, $a0, 48
	move	$a0, $fp
	move	$s3, $a4
	jirl	$ra, $a2, 0
	addi.d	$s0, $fp, 32
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 64
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a2, 0
	st.d	$fp, $sp, 32
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 40
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %.preheader
	move	$s2, $a0
	beqz	$s1, .LBB3_12
# %bb.3:
	lu12i.w	$s5, 64
	.p2align	4, , 16
.LBB3_4:                                # %.preheader.split
                                        # =>This Inner Loop Header: Depth=1
.Ltmp2:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	sub.d	$a0, $s2, $a0
	add.d	$a0, $a0, $s4
	beqz	$a0, .LBB3_19
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	srli.d	$a1, $a0, 18
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	maskeqz	$a0, $a0, $a1
	or	$a1, $a0, $a2
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB3_17
# %bb.8:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $fp, 144
	ld.d	$a1, $fp, 112
	ld.d	$a2, $fp, 128
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 24
.Ltmp8:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.d	$a3, $a1, 40
	sub.d	$a0, $a0, $s2
	st.d	$a0, $sp, 16
.Ltmp11:                                # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	jirl	$ra, $a3, 0
.Ltmp12:                                # EH_LABEL
# %bb.10:                               # %select.unfold
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB3_4
	b	.LBB3_17
.LBB3_11:
	lu12i.w	$a0, -524176
	ori	$s3, $a0, 87
	b	.LBB3_24
.LBB3_12:                               # %.preheader.split.us.preheader
	lu12i.w	$s1, 64
	.p2align	4, , 16
.LBB3_13:                               # %.preheader.split.us
                                        # =>This Inner Loop Header: Depth=1
.Ltmp14:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	sub.d	$a0, $s2, $a0
	add.d	$a0, $a0, $s4
	beqz	$a0, .LBB3_19
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	srli.d	$a1, $a0, 18
	sltui	$a1, $a1, 1
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$a1, $a0, $a2
.Ltmp17:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.16:                               # %select.unfold.us
                                        #   in Loop: Header=BB3_13 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB3_13
.LBB3_17:                               # %.loopexit
.Ltmp20:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.18:                               # %_ZN9NCompress8NQuantum8CDecoder5FlushEv.exit.i
	ld.d	$a0, $fp, 56
	bnez	$a0, .LBB3_21
	b	.LBB3_23
.LBB3_19:                               # %.split61.us
	st.b	$zero, $sp, 40
.Ltmp22:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.20:
	move	$s3, $a0
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB3_23
.LBB3_21:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp25:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp26:                                # EH_LABEL
# %bb.22:                               # %.noexc.i
	st.d	$zero, $fp, 56
.LBB3_23:                               # %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 56
.Ltmp27:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp28:                                # EH_LABEL
.LBB3_24:
	move	$a0, $s3
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB3_25:
.Ltmp24:                                # EH_LABEL
	b	.LBB3_33
.LBB3_26:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_27:                               # %.split63.us
.Ltmp19:                                # EH_LABEL
	b	.LBB3_33
.LBB3_28:                               # %.split.us
.Ltmp16:                                # EH_LABEL
	b	.LBB3_33
.LBB3_29:
.Ltmp13:                                # EH_LABEL
	b	.LBB3_33
.LBB3_30:
.Ltmp10:                                # EH_LABEL
	b	.LBB3_33
.LBB3_31:                               # %.split63
.Ltmp7:                                 # EH_LABEL
	b	.LBB3_33
.LBB3_32:                               # %.split
.Ltmp4:                                 # EH_LABEL
.LBB3_33:
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo, .Lfunc_end3-_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp28-.Ltmp25                #   Call between .Ltmp25 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Lfunc_end3-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev,"axG",@progbits,_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev,comdat
	.weak	_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev # -- Begin function _ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev,@function
_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev: # @_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.bu	$a0, $a0, 8
	beqz	$a0, .LBB4_2
# %bb.1:
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 32
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
.LBB4_2:                                # %_ZN9NCompress8NQuantum8CDecoder5FlushEv.exit
	ld.d	$fp, $fp, 0
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB4_5
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp32:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp33:                                # EH_LABEL
# %bb.4:                                # %.noexc
	st.d	$zero, $fp, 56
.LBB4_5:                                # %_ZN10COutBuffer13ReleaseStreamEv.exit.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 56
.Ltmp34:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp35:                                # EH_LABEL
# %bb.6:                                # %_ZN9NCompress8NQuantum8CDecoder14ReleaseStreamsEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_7:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev, .Lfunc_end4-_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev,"aG",@progbits,_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Ltmp30                #   Call between .Ltmp30 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo # -- Begin function _ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo,@function
_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo: # @_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
.LBB5_1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_2:
.Ltmp39:                                # EH_LABEL
	addi.w	$fp, $a1, 0
	ori	$a1, $zero, 3
	bne	$fp, $a1, .LBB5_4
# %bb.3:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	b	.LBB5_5
.LBB5_4:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$s0, $zero, 1
	bne	$fp, $a1, .LBB5_6
.LBB5_5:                                # %.sink.split.sink.split
	ld.w	$s0, $a0, 0
.LBB5_6:                                # %.sink.split
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB5_1
.Lfunc_end5:
	.size	_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo, .Lfunc_end5-_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp37-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	3                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                             #   Continue to action 2
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp40:                                # TypeInfo 3
	.word	.L_ZTI18CInBufferException.DW.stub-.Ltmp40
.Ltmp41:                                # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp41
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream # -- Begin function _ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream,@function
_ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream: # @_ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.d	$a0, $a0, 112
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream, .Lfunc_end6-_ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream # -- Begin function _ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.p2align	5
	.type	_ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream,@function
_ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream: # @_ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.d	$a0, $a0, 104
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	_ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream, .Lfunc_end7-_ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv # -- Begin function _ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv,@function
_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv: # @_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 136
	beqz	$a0, .LBB8_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 136
.LBB8_2:                                # %_ZN9NCompress8NQuantum11NRangeCoder8CDecoder13ReleaseStreamEv.exit
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv, .Lfunc_end8-_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv # -- Begin function _ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.p2align	5
	.type	_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv,@function
_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv: # @_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 128
	beqz	$a0, .LBB9_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 128
.LBB9_2:                                # %_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv.exit
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv, .Lfunc_end9-_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy # -- Begin function _ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy,@function
_ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy: # @_ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB10_2
# %bb.1:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.w	$a2, $zero, -2
	ld.bu	$a1, $a0, 180
	lu32i.d	$a2, 0
	st.w	$a2, $a0, 168
	addi.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(_ZN12CLzOutWindow4InitEb)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_2:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	ret
.Lfunc_end10:
	.size	_ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy, .Lfunc_end10-_ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.cfi_endproc
                                        # -- End function
	.globl	_ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy # -- Begin function _ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.p2align	5
	.type	_ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy,@function
_ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy: # @_ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB11_2
# %bb.1:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.w	$a2, $zero, -2
	ld.bu	$a1, $a0, 164
	lu32i.d	$a2, 0
	st.w	$a2, $a0, 152
	addi.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN12CLzOutWindow4InitEb)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB11_2:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	ret
.Lfunc_end11:
	.size	_ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy, .Lfunc_end11-_ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,@function
_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv: # @_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB12_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB12_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB12_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB12_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB12_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB12_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB12_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB12_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB12_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB12_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB12_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB12_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB12_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB12_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB12_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a6, $a1, 15
	ld.bu	$a3, $a3, 15
	ori	$a5, $zero, 8
	beq	$a6, $a3, .LBB12_48
.LBB12_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_ICompressSetInStream)
	ld.d	$a3, $a3, %got_pc_lo12(IID_ICompressSetInStream)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB12_32
# %bb.17:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB12_32
# %bb.18:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB12_32
# %bb.19:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB12_32
# %bb.20:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB12_32
# %bb.21:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB12_32
# %bb.22:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB12_32
# %bb.23:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB12_32
# %bb.24:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB12_32
# %bb.25:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB12_32
# %bb.26:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB12_32
# %bb.27:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB12_32
# %bb.28:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB12_32
# %bb.29:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB12_32
# %bb.30:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB12_32
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit27
	ld.bu	$a6, $a1, 15
	ld.bu	$a3, $a3, 15
	ori	$a5, $zero, 8
	beq	$a6, $a3, .LBB12_48
.LBB12_32:                              # %_ZeqRK4GUIDS1_.exit27.thread
	pcalau12i	$a3, %got_pc_hi20(IID_ICompressSetOutStreamSize)
	ld.d	$a5, $a3, %got_pc_lo12(IID_ICompressSetOutStreamSize)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB12_49
# %bb.33:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB12_49
# %bb.34:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB12_49
# %bb.35:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB12_49
# %bb.36:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB12_49
# %bb.37:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB12_49
# %bb.38:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB12_49
# %bb.39:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB12_49
# %bb.40:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB12_49
# %bb.41:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB12_49
# %bb.42:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB12_49
# %bb.43:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB12_49
# %bb.44:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB12_49
# %bb.45:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB12_49
# %bb.46:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB12_49
# %bb.47:                               # %_ZeqRK4GUIDS1_.exit46
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	ori	$a5, $zero, 16
	bne	$a1, $a4, .LBB12_49
.LBB12_48:                              # %_ZeqRK4GUIDS1_.exit46.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	add.d	$a3, $a0, $a5
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB12_49:                              # %_ZeqRK4GUIDS1_.exit46.thread
	move	$a0, $a3
	ret
.Lfunc_end12:
	.size	_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end12-_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress8NQuantum8CDecoder6AddRefEv,"axG",@progbits,_ZN9NCompress8NQuantum8CDecoder6AddRefEv,comdat
	.weak	_ZN9NCompress8NQuantum8CDecoder6AddRefEv # -- Begin function _ZN9NCompress8NQuantum8CDecoder6AddRefEv
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder6AddRefEv,@function
_ZN9NCompress8NQuantum8CDecoder6AddRefEv: # @_ZN9NCompress8NQuantum8CDecoder6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 24
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 24
	move	$a0, $a1
	ret
.Lfunc_end13:
	.size	_ZN9NCompress8NQuantum8CDecoder6AddRefEv, .Lfunc_end13-_ZN9NCompress8NQuantum8CDecoder6AddRefEv
                                        # -- End function
	.section	.text._ZN9NCompress8NQuantum8CDecoder7ReleaseEv,"axG",@progbits,_ZN9NCompress8NQuantum8CDecoder7ReleaseEv,comdat
	.weak	_ZN9NCompress8NQuantum8CDecoder7ReleaseEv # -- Begin function _ZN9NCompress8NQuantum8CDecoder7ReleaseEv
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoder7ReleaseEv,@function
_ZN9NCompress8NQuantum8CDecoder7ReleaseEv: # @_ZN9NCompress8NQuantum8CDecoder7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 24
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 24
	bnez	$fp, .LBB14_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB14_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	_ZN9NCompress8NQuantum8CDecoder7ReleaseEv, .Lfunc_end14-_ZN9NCompress8NQuantum8CDecoder7ReleaseEv
                                        # -- End function
	.section	.text._ZN9NCompress8NQuantum8CDecoderD2Ev,"axG",@progbits,_ZN9NCompress8NQuantum8CDecoderD2Ev,comdat
	.weak	_ZN9NCompress8NQuantum8CDecoderD2Ev # -- Begin function _ZN9NCompress8NQuantum8CDecoderD2Ev
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoderD2Ev,@function
_ZN9NCompress8NQuantum8CDecoderD2Ev:    # @_ZN9NCompress8NQuantum8CDecoderD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN9NCompress8NQuantum8CDecoderE)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN9NCompress8NQuantum8CDecoderE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 0
	addi.d	$a1, $a0, 104
	st.d	$a1, $fp, 8
	addi.d	$a0, $a0, 176
	st.d	$a0, $fp, 16
	addi.d	$a0, $fp, 112
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB15_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp45:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp46:                                # EH_LABEL
.LBB15_3:                               # %_ZN9NCompress8NQuantum11NRangeCoder8CDecoderD2Ev.exit
	addi.d	$a0, $fp, 32
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.4:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB15_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp51:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp52:                                # EH_LABEL
.LBB15_6:                               # %_ZN10COutBufferD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB15_7:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_8:
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_9:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_10:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN9NCompress8NQuantum8CDecoderD2Ev, .Lfunc_end15-_ZN9NCompress8NQuantum8CDecoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress8NQuantum8CDecoderD2Ev,"aG",@progbits,_ZN9NCompress8NQuantum8CDecoderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin3          #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin3          #     jumps to .Ltmp47
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin3          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end15-.Ltmp52           #   Call between .Ltmp52 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress8NQuantum8CDecoderD0Ev,"axG",@progbits,_ZN9NCompress8NQuantum8CDecoderD0Ev,comdat
	.weak	_ZN9NCompress8NQuantum8CDecoderD0Ev # -- Begin function _ZN9NCompress8NQuantum8CDecoderD0Ev
	.p2align	5
	.type	_ZN9NCompress8NQuantum8CDecoderD0Ev,@function
_ZN9NCompress8NQuantum8CDecoderD0Ev:    # @_ZN9NCompress8NQuantum8CDecoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2024
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end16:
	.size	_ZN9NCompress8NQuantum8CDecoderD0Ev, .Lfunc_end16-_ZN9NCompress8NQuantum8CDecoderD0Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,@function
_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv: # @_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end17:
	.size	_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end17-_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv,"axG",@progbits,_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv,comdat
	.weak	_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv # -- Begin function _ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv
	.p2align	5
	.type	_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv,@function
_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv: # @_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 16
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end18:
	.size	_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv, .Lfunc_end18-_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv,"axG",@progbits,_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv,comdat
	.weak	_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv # -- Begin function _ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.p2align	5
	.type	_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv,@function
_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv: # @_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 16
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 16
	bnez	$fp, .LBB19_2
# %bb.1:
	ld.d	$a1, $a0, -8
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -8
	jirl	$ra, $a1, 0
.LBB19_2:                               # %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end19:
	.size	_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv, .Lfunc_end19-_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NQuantum8CDecoderD1Ev,"axG",@progbits,_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev,comdat
	.weak	_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev # -- Begin function _ZThn8_N9NCompress8NQuantum8CDecoderD1Ev
	.p2align	5
	.type	_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev,@function
_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev: # @_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress8NQuantum8CDecoderD2Ev)
	jr	$t8
.Lfunc_end20:
	.size	_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev, .Lfunc_end20-_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NQuantum8CDecoderD0Ev,"axG",@progbits,_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev,comdat
	.weak	_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev # -- Begin function _ZThn8_N9NCompress8NQuantum8CDecoderD0Ev
	.p2align	5
	.type	_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev,@function
_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev: # @_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2024
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end21:
	.size	_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev, .Lfunc_end21-_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev
                                        # -- End function
	.section	.text._ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv,@function
_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv: # @_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end22:
	.size	_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end22-_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv,"axG",@progbits,_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv,comdat
	.weak	_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv # -- Begin function _ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv
	.p2align	5
	.type	_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv,@function
_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv: # @_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end23:
	.size	_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv, .Lfunc_end23-_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv,"axG",@progbits,_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv,comdat
	.weak	_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv # -- Begin function _ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.p2align	5
	.type	_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv,@function
_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv: # @_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB24_2
# %bb.1:
	ld.d	$a1, $a0, -16
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -16
	jirl	$ra, $a1, 0
.LBB24_2:                               # %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv, .Lfunc_end24-_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N9NCompress8NQuantum8CDecoderD1Ev,"axG",@progbits,_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev,comdat
	.weak	_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev # -- Begin function _ZThn16_N9NCompress8NQuantum8CDecoderD1Ev
	.p2align	5
	.type	_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev,@function
_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev: # @_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN9NCompress8NQuantum8CDecoderD2Ev)
	jr	$t8
.Lfunc_end25:
	.size	_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev, .Lfunc_end25-_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev
                                        # -- End function
	.section	.text._ZThn16_N9NCompress8NQuantum8CDecoderD0Ev,"axG",@progbits,_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev,comdat
	.weak	_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev # -- Begin function _ZThn16_N9NCompress8NQuantum8CDecoderD0Ev
	.p2align	5
	.type	_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev,@function
_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev: # @_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NQuantum8CDecoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2024
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end26:
	.size	_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev, .Lfunc_end26-_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev
                                        # -- End function
	.section	.text._ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj,"axG",@progbits,_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj,comdat
	.weak	_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj # -- Begin function _ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj
	.p2align	5
	.type	_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj,@function
_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj: # @_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.w	$a0, $a0, 4
	ld.w	$a4, $fp, 0
	mul.w	$a2, $a0, $a2
	div.wu	$a2, $a2, $a3
	mul.w	$a0, $a0, $a1
	ld.w	$a1, $fp, 8
	add.d	$a2, $a4, $a2
	addi.w	$s2, $a2, -1
	div.wu	$a0, $a0, $a3
	sub.d	$s1, $a1, $a0
	st.w	$s1, $fp, 8
	add.w	$a1, $a0, $a4
	st.w	$a1, $fp, 0
	addi.d	$s0, $fp, 24
	lu12i.w	$s3, 4
	b	.LBB27_4
	.p2align	4, , 16
.LBB27_1:                               #   in Loop: Header=BB27_4 Depth=1
	addi.d	$a2, $a0, 1
	st.d	$a2, $s0, 0
	ld.bu	$a0, $a0, 0
.LBB27_2:                               # %_ZN9CInBuffer8ReadByteEv.exit.i
                                        #   in Loop: Header=BB27_4 Depth=1
	addi.d	$a0, $a0, 256
.LBB27_3:                               # %_ZN9NCompress8NQuantum17CStreamBitDecoder7ReadBitEv.exit
                                        #   in Loop: Header=BB27_4 Depth=1
	ori	$a2, $zero, 1
	bstrins.d	$a2, $s2, 15, 1
	slli.d	$a3, $s1, 1
	bstrpick.d	$a4, $a0, 7, 7
	slli.d	$a0, $a0, 1
	st.w	$a0, $fp, 16
	or	$s1, $a4, $a3
	st.w	$s1, $fp, 8
	move	$s2, $a2
.LBB27_4:                               # =>This Inner Loop Header: Depth=1
	xor	$a0, $a1, $s2
	slli.d	$a0, $a0, 48
	bgez	$a0, .LBB27_8
# %bb.5:                                #   in Loop: Header=BB27_4 Depth=1
	slli.d	$a0, $s2, 49
	bltz	$a0, .LBB27_11
# %bb.6:                                #   in Loop: Header=BB27_4 Depth=1
	and	$a0, $a1, $s3
	beqz	$a0, .LBB27_11
# %bb.7:                                #   in Loop: Header=BB27_4 Depth=1
	bstrpick.d	$a1, $a1, 13, 0
	or	$s2, $s2, $s3
.LBB27_8:                               #   in Loop: Header=BB27_4 Depth=1
	ld.wu	$a0, $fp, 16
	slli.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 15, 1
	slli.d	$a1, $a1, 1
	srli.d	$a2, $a0, 16
	st.w	$a1, $fp, 0
	beqz	$a2, .LBB27_3
# %bb.9:                                #   in Loop: Header=BB27_4 Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a2, $fp, 32
	bltu	$a0, $a2, .LBB27_1
# %bb.10:                               #   in Loop: Header=BB27_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	b	.LBB27_2
.LBB27_11:
	sub.d	$a0, $s2, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 4
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end27:
	.size	_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj, .Lfunc_end27-_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	__clang_call_terminate, .Lfunc_end28-__clang_call_terminate
                                        # -- End function
	.type	_ZTI18CInBufferException,@object # @_ZTI18CInBufferException
	.section	.data.rel.ro._ZTI18CInBufferException,"awG",@progbits,_ZTI18CInBufferException,comdat
	.weak	_ZTI18CInBufferException
	.p2align	3, 0x0
_ZTI18CInBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18CInBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI18CInBufferException, 24

	.type	_ZTS18CInBufferException,@object # @_ZTS18CInBufferException
	.section	.rodata._ZTS18CInBufferException,"aG",@progbits,_ZTS18CInBufferException,comdat
	.weak	_ZTS18CInBufferException
_ZTS18CInBufferException:
	.asciz	"18CInBufferException"
	.size	_ZTS18CInBufferException, 21

	.type	_ZTI16CSystemException,@object  # @_ZTI16CSystemException
	.section	.data.rel.ro._ZTI16CSystemException,"awG",@progbits,_ZTI16CSystemException,comdat
	.weak	_ZTI16CSystemException
	.p2align	3, 0x0
_ZTI16CSystemException:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS16CSystemException
	.size	_ZTI16CSystemException, 16

	.type	_ZTS16CSystemException,@object  # @_ZTS16CSystemException
	.section	.rodata._ZTS16CSystemException,"aG",@progbits,_ZTS16CSystemException,comdat
	.weak	_ZTS16CSystemException
_ZTS16CSystemException:
	.asciz	"16CSystemException"
	.size	_ZTS16CSystemException, 19

	.type	_ZTI19COutBufferException,@object # @_ZTI19COutBufferException
	.section	.data.rel.ro._ZTI19COutBufferException,"awG",@progbits,_ZTI19COutBufferException,comdat
	.weak	_ZTI19COutBufferException
	.p2align	3, 0x0
_ZTI19COutBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19COutBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI19COutBufferException, 24

	.type	_ZTS19COutBufferException,@object # @_ZTS19COutBufferException
	.section	.rodata._ZTS19COutBufferException,"aG",@progbits,_ZTS19COutBufferException,comdat
	.weak	_ZTS19COutBufferException
_ZTS19COutBufferException:
	.asciz	"19COutBufferException"
	.size	_ZTS19COutBufferException, 22

	.type	_ZTVN9NCompress8NQuantum8CDecoderE,@object # @_ZTVN9NCompress8NQuantum8CDecoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9NCompress8NQuantum8CDecoderE
	.p2align	3, 0x0
_ZTVN9NCompress8NQuantum8CDecoderE:
	.dword	0
	.dword	_ZTIN9NCompress8NQuantum8CDecoderE
	.dword	_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZN9NCompress8NQuantum8CDecoder6AddRefEv
	.dword	_ZN9NCompress8NQuantum8CDecoder7ReleaseEv
	.dword	_ZN9NCompress8NQuantum8CDecoderD2Ev
	.dword	_ZN9NCompress8NQuantum8CDecoderD0Ev
	.dword	_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.dword	_ZN9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.dword	_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.dword	_ZN9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.dword	-8
	.dword	_ZTIN9NCompress8NQuantum8CDecoderE
	.dword	_ZThn8_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv
	.dword	_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.dword	_ZThn8_N9NCompress8NQuantum8CDecoderD1Ev
	.dword	_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev
	.dword	_ZThn8_N9NCompress8NQuantum8CDecoder11SetInStreamEP19ISequentialInStream
	.dword	_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
	.dword	-16
	.dword	_ZTIN9NCompress8NQuantum8CDecoderE
	.dword	_ZThn16_N9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv
	.dword	_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv
	.dword	_ZThn16_N9NCompress8NQuantum8CDecoderD1Ev
	.dword	_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev
	.dword	_ZThn16_N9NCompress8NQuantum8CDecoder16SetOutStreamSizeEPKy
	.size	_ZTVN9NCompress8NQuantum8CDecoderE, 224

	.type	_ZTIN9NCompress8NQuantum8CDecoderE,@object # @_ZTIN9NCompress8NQuantum8CDecoderE
	.globl	_ZTIN9NCompress8NQuantum8CDecoderE
	.p2align	3, 0x0
_ZTIN9NCompress8NQuantum8CDecoderE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN9NCompress8NQuantum8CDecoderE
	.word	1                               # 0x1
	.word	4                               # 0x4
	.dword	_ZTI14ICompressCoder
	.dword	2                               # 0x2
	.dword	_ZTI20ICompressSetInStream
	.dword	2050                            # 0x802
	.dword	_ZTI25ICompressSetOutStreamSize
	.dword	4098                            # 0x1002
	.dword	_ZTI13CMyUnknownImp
	.dword	6146                            # 0x1802
	.size	_ZTIN9NCompress8NQuantum8CDecoderE, 88

	.type	_ZTSN9NCompress8NQuantum8CDecoderE,@object # @_ZTSN9NCompress8NQuantum8CDecoderE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9NCompress8NQuantum8CDecoderE
_ZTSN9NCompress8NQuantum8CDecoderE:
	.asciz	"N9NCompress8NQuantum8CDecoderE"
	.size	_ZTSN9NCompress8NQuantum8CDecoderE, 31

	.type	_ZTI14ICompressCoder,@object    # @_ZTI14ICompressCoder
	.section	.data.rel.ro._ZTI14ICompressCoder,"awG",@progbits,_ZTI14ICompressCoder,comdat
	.weak	_ZTI14ICompressCoder
	.p2align	3, 0x0
_ZTI14ICompressCoder:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14ICompressCoder
	.dword	_ZTI8IUnknown
	.size	_ZTI14ICompressCoder, 24

	.type	_ZTS14ICompressCoder,@object    # @_ZTS14ICompressCoder
	.section	.rodata._ZTS14ICompressCoder,"aG",@progbits,_ZTS14ICompressCoder,comdat
	.weak	_ZTS14ICompressCoder
_ZTS14ICompressCoder:
	.asciz	"14ICompressCoder"
	.size	_ZTS14ICompressCoder, 17

	.type	_ZTI8IUnknown,@object           # @_ZTI8IUnknown
	.section	.data.rel.ro._ZTI8IUnknown,"awG",@progbits,_ZTI8IUnknown,comdat
	.weak	_ZTI8IUnknown
	.p2align	3, 0x0
_ZTI8IUnknown:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS8IUnknown
	.size	_ZTI8IUnknown, 16

	.type	_ZTS8IUnknown,@object           # @_ZTS8IUnknown
	.section	.rodata._ZTS8IUnknown,"aG",@progbits,_ZTS8IUnknown,comdat
	.weak	_ZTS8IUnknown
_ZTS8IUnknown:
	.asciz	"8IUnknown"
	.size	_ZTS8IUnknown, 10

	.type	_ZTI20ICompressSetInStream,@object # @_ZTI20ICompressSetInStream
	.section	.data.rel.ro._ZTI20ICompressSetInStream,"awG",@progbits,_ZTI20ICompressSetInStream,comdat
	.weak	_ZTI20ICompressSetInStream
	.p2align	3, 0x0
_ZTI20ICompressSetInStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20ICompressSetInStream
	.dword	_ZTI8IUnknown
	.size	_ZTI20ICompressSetInStream, 24

	.type	_ZTS20ICompressSetInStream,@object # @_ZTS20ICompressSetInStream
	.section	.rodata._ZTS20ICompressSetInStream,"aG",@progbits,_ZTS20ICompressSetInStream,comdat
	.weak	_ZTS20ICompressSetInStream
_ZTS20ICompressSetInStream:
	.asciz	"20ICompressSetInStream"
	.size	_ZTS20ICompressSetInStream, 23

	.type	_ZTI25ICompressSetOutStreamSize,@object # @_ZTI25ICompressSetOutStreamSize
	.section	.data.rel.ro._ZTI25ICompressSetOutStreamSize,"awG",@progbits,_ZTI25ICompressSetOutStreamSize,comdat
	.weak	_ZTI25ICompressSetOutStreamSize
	.p2align	3, 0x0
_ZTI25ICompressSetOutStreamSize:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS25ICompressSetOutStreamSize
	.dword	_ZTI8IUnknown
	.size	_ZTI25ICompressSetOutStreamSize, 24

	.type	_ZTS25ICompressSetOutStreamSize,@object # @_ZTS25ICompressSetOutStreamSize
	.section	.rodata._ZTS25ICompressSetOutStreamSize,"aG",@progbits,_ZTS25ICompressSetOutStreamSize,comdat
	.weak	_ZTS25ICompressSetOutStreamSize
_ZTS25ICompressSetOutStreamSize:
	.asciz	"25ICompressSetOutStreamSize"
	.size	_ZTS25ICompressSetOutStreamSize, 28

	.type	_ZTI13CMyUnknownImp,@object     # @_ZTI13CMyUnknownImp
	.section	.data.rel.ro._ZTI13CMyUnknownImp,"awG",@progbits,_ZTI13CMyUnknownImp,comdat
	.weak	_ZTI13CMyUnknownImp
	.p2align	3, 0x0
_ZTI13CMyUnknownImp:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS13CMyUnknownImp
	.size	_ZTI13CMyUnknownImp, 16

	.type	_ZTS13CMyUnknownImp,@object     # @_ZTS13CMyUnknownImp
	.section	.rodata._ZTS13CMyUnknownImp,"aG",@progbits,_ZTS13CMyUnknownImp,comdat
	.weak	_ZTS13CMyUnknownImp
_ZTS13CMyUnknownImp:
	.asciz	"13CMyUnknownImp"
	.size	_ZTS13CMyUnknownImp, 16

	.data
	.p2align	3, 0x0
.L_ZTI18CInBufferException.DW.stub:
	.dword	_ZTI18CInBufferException
.L_ZTI19COutBufferException.DW.stub:
	.dword	_ZTI19COutBufferException
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTI18CInBufferException
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18CInBufferException
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym _ZTI19COutBufferException
	.addrsig_sym _ZTS19COutBufferException
	.addrsig_sym _ZTIN9NCompress8NQuantum8CDecoderE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN9NCompress8NQuantum8CDecoderE
	.addrsig_sym _ZTI14ICompressCoder
	.addrsig_sym _ZTS14ICompressCoder
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI20ICompressSetInStream
	.addrsig_sym _ZTS20ICompressSetInStream
	.addrsig_sym _ZTI25ICompressSetOutStreamSize
	.addrsig_sym _ZTS25ICompressSetOutStreamSize
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
