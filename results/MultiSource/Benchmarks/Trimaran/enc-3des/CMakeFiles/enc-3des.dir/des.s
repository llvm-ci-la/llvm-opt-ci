	.file	"des.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function des_main_ks
.LCPI0_0:
	.dword	18                              # 0x12
	.dword	10                              # 0xa
.LCPI0_1:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI0_2:
	.dword	134217728                       # 0x8000000
	.dword	536870912                       # 0x20000000
.LCPI0_3:
	.dword	4                               # 0x4
	.dword	17                              # 0x11
.LCPI0_4:
	.dword	603979776                       # 0x24000000
	.dword	268435456                       # 0x10000000
.LCPI0_5:
	.dword	10                              # 0xa
	.dword	16                              # 0x10
.LCPI0_6:
	.dword	34078720                        # 0x2080000
	.dword	134217728                       # 0x8000000
.LCPI0_7:
	.dword	6                               # 0x6
	.dword	22                              # 0x16
.LCPI0_8:
	.dword	16777216                        # 0x1000000
	.dword	67108864                        # 0x4000000
.LCPI0_9:
	.dword	1048576                         # 0x100000
	.dword	33554432                        # 0x2000000
.LCPI0_10:
	.dword	9                               # 0x9
	.dword	1                               # 0x1
.LCPI0_11:
	.dword	2097152                         # 0x200000
	.dword	16777216                        # 0x1000000
.LCPI0_12:
	.dword	262144                          # 0x40000
	.dword	2097152                         # 0x200000
.LCPI0_13:
	.dword	2                               # 0x2
	.dword	11                              # 0xb
.LCPI0_14:
	.dword	131072                          # 0x20000
	.dword	1048576                         # 0x100000
.LCPI0_15:
	.dword	65536                           # 0x10000
	.dword	262144                          # 0x40000
.LCPI0_16:
	.dword	256                             # 0x100
	.dword	65536                           # 0x10000
.LCPI0_17:
	.dword	268435456                       # 0x10000000
	.dword	512                             # 0x200
.LCPI0_18:
	.dword	14                              # 0xe
	.dword	3                               # 0x3
.LCPI0_19:
	.dword	24                              # 0x18
	.dword	14                              # 0xe
.LCPI0_20:
	.dword	4096                            # 0x1000
	.dword	131072                          # 0x20000
.LCPI0_21:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI0_22:
	.dword	1024                            # 0x400
	.dword	8192                            # 0x2000
.LCPI0_23:
	.dword	2                               # 0x2
	.dword	4096                            # 0x1000
.LCPI0_24:
	.dword	1                               # 0x1
	.dword	2056                            # 0x808
.LCPI0_25:
	.dword	5                               # 0x5
	.dword	9                               # 0x9
.LCPI0_26:
	.dword	32                              # 0x20
	.dword	1024                            # 0x400
.LCPI0_27:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI0_28:
	.dword	2048                            # 0x800
	.dword	256                             # 0x100
.LCPI0_29:
	.dword	10                              # 0xa
	.dword	7                               # 0x7
.LCPI0_30:
	.dword	16                              # 0x10
	.dword	32                              # 0x20
.LCPI0_31:
	.dword	512                             # 0x200
	.dword	17                              # 0x11
.LCPI0_32:
	.dword	8                               # 0x8
	.dword	4                               # 0x4
.LCPI0_33:
	.dword	18                              # 0x12
	.dword	21                              # 0x15
.LCPI0_34:
	.dword	4                               # 0x4
	.dword	2                               # 0x2
	.text
	.globl	des_main_ks
	.p2align	5
	.type	des_main_ks,@function
des_main_ks:                            # @des_main_ks
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
	ld.bu	$a3, $a1, 0
	ld.bu	$a2, $a1, 1
	ld.bu	$a4, $a1, 2
	slli.d	$a5, $a3, 24
	slli.d	$a2, $a2, 16
	ld.bu	$a6, $a1, 3
	slli.d	$a4, $a4, 8
	ld.wu	$a1, $a1, 4
	or	$a2, $a2, $a5
	or	$a2, $a2, $a6
	or	$a2, $a2, $a4
	revb.d	$a1, $a1
	srli.d	$a4, $a1, 32
	srli.d	$a1, $a1, 36
	xor	$a1, $a1, $a2
	lu12i.w	$a5, 61680
	ori	$a5, $a5, 3855
	and	$a1, $a1, $a5
	xor	$a5, $a1, $a2
	slli.d	$a1, $a1, 4
	xor	$a1, $a1, $a4
	lu12i.w	$a4, 65793
	ori	$a4, $a4, 16
	and	$a2, $a2, $a4
	lu12i.w	$a4, -65794
	ori	$a4, $a4, 4079
	lu32i.d	$a4, 0
	and	$a1, $a1, $a4
	or	$a2, $a1, $a2
	andi	$a1, $a5, 15
	slli.d	$a1, $a1, 3
	pcalau12i	$a4, %pc_hi20(LHs)
	addi.d	$a4, $a4, %pc_lo12(LHs)
	ldx.d	$a1, $a4, $a1
	srli.d	$a6, $a5, 5
	andi	$a6, $a6, 120
	ldx.d	$a6, $a4, $a6
	srli.d	$a7, $a5, 13
	andi	$a7, $a7, 120
	ldx.d	$a7, $a4, $a7
	slli.d	$a1, $a1, 3
	slli.d	$a6, $a6, 2
	or	$a1, $a6, $a1
	slli.d	$a6, $a7, 1
	or	$a1, $a1, $a6
	srli.d	$a6, $a5, 21
	andi	$a6, $a6, 120
	ldx.d	$a6, $a4, $a6
	srli.d	$a7, $a5, 2
	andi	$a7, $a7, 120
	ldx.d	$a7, $a4, $a7
	srli.d	$t0, $a5, 10
	andi	$t0, $t0, 120
	ldx.d	$t0, $a4, $t0
	or	$a1, $a1, $a6
	slli.d	$a6, $a7, 7
	or	$a1, $a1, $a6
	slli.d	$a6, $t0, 6
	srli.d	$a5, $a5, 18
	andi	$a5, $a5, 120
	ldx.d	$a5, $a4, $a5
	srli.d	$a3, $a3, 2
	andi	$a3, $a3, 56
	ldx.d	$a3, $a4, $a3
	or	$a1, $a1, $a6
	slli.d	$a4, $a5, 5
	or	$a1, $a1, $a4
	slli.d	$a3, $a3, 4
	or	$a3, $a1, $a3
	srli.d	$a5, $a2, 1
	slli.d	$a1, $a2, 2
	andi	$a1, $a1, 120
	pcalau12i	$a4, %pc_hi20(RHs)
	addi.d	$a4, $a4, %pc_lo12(RHs)
	ldx.d	$a6, $a4, $a1
	move	$a1, $zero
	slli.d	$a6, $a6, 3
	srli.d	$a7, $a2, 9
	srli.d	$t0, $a2, 6
	andi	$t0, $t0, 120
	ldx.d	$t0, $a4, $t0
	srli.d	$t1, $a2, 14
	andi	$t1, $t1, 120
	ldx.d	$t1, $a4, $t1
	slli.d	$t0, $t0, 2
	or	$a6, $t0, $a6
	srli.d	$t0, $a2, 17
	slli.d	$t1, $t1, 1
	or	$a6, $a6, $t1
	srli.d	$t1, $a2, 25
	srli.d	$a2, $a2, 22
	andi	$a2, $a2, 120
	ldx.d	$a2, $a4, $a2
	andi	$a5, $a5, 120
	ldx.d	$a5, $a4, $a5
	andi	$a7, $a7, 120
	ldx.d	$a7, $a4, $a7
	or	$a2, $a6, $a2
	slli.d	$a5, $a5, 7
	or	$a2, $a2, $a5
	slli.d	$a5, $a7, 6
	andi	$a6, $t0, 120
	ldx.d	$a6, $a4, $a6
	andi	$a7, $t1, 120
	ldx.d	$a4, $a4, $a7
	or	$a2, $a2, $a5
	slli.d	$a5, $a6, 5
	or	$a2, $a2, $a5
	slli.d	$a4, $a4, 4
	or	$a2, $a2, $a4
	bstrpick.d	$a5, $a3, 27, 0
	bstrpick.d	$a4, $a2, 27, 0
	ori	$a2, $zero, 15
	lu12i.w	$a3, 128
	pcalau12i	$a6, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI0_0)
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	lu12i.w	$a6, 2
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_1)
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_2)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_3)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_4)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_5)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_5)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_6)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_6)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_7)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_7)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_8)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_8)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_9)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_9)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(.LCPI0_10)
	vld	$vr10, $a7, %pc_lo12(.LCPI0_10)
	pcalau12i	$a7, %pc_hi20(.LCPI0_11)
	vld	$vr11, $a7, %pc_lo12(.LCPI0_11)
	pcalau12i	$a7, %pc_hi20(.LCPI0_12)
	vld	$vr12, $a7, %pc_lo12(.LCPI0_12)
	pcalau12i	$a7, %pc_hi20(.LCPI0_13)
	vld	$vr13, $a7, %pc_lo12(.LCPI0_13)
	pcalau12i	$a7, %pc_hi20(.LCPI0_14)
	vld	$vr14, $a7, %pc_lo12(.LCPI0_14)
	pcalau12i	$a7, %pc_hi20(.LCPI0_15)
	vld	$vr15, $a7, %pc_lo12(.LCPI0_15)
	pcalau12i	$a7, %pc_hi20(.LCPI0_16)
	vld	$vr16, $a7, %pc_lo12(.LCPI0_16)
	pcalau12i	$a7, %pc_hi20(.LCPI0_17)
	vld	$vr17, $a7, %pc_lo12(.LCPI0_17)
	pcalau12i	$a7, %pc_hi20(.LCPI0_18)
	vld	$vr18, $a7, %pc_lo12(.LCPI0_18)
	pcalau12i	$a7, %pc_hi20(.LCPI0_19)
	vld	$vr19, $a7, %pc_lo12(.LCPI0_19)
	pcalau12i	$a7, %pc_hi20(.LCPI0_20)
	vld	$vr20, $a7, %pc_lo12(.LCPI0_20)
	pcalau12i	$a7, %pc_hi20(.LCPI0_21)
	vld	$vr21, $a7, %pc_lo12(.LCPI0_21)
	pcalau12i	$a7, %pc_hi20(.LCPI0_22)
	vld	$vr22, $a7, %pc_lo12(.LCPI0_22)
	pcalau12i	$a7, %pc_hi20(.LCPI0_23)
	vld	$vr23, $a7, %pc_lo12(.LCPI0_23)
	pcalau12i	$a7, %pc_hi20(.LCPI0_24)
	vld	$vr24, $a7, %pc_lo12(.LCPI0_24)
	pcalau12i	$a7, %pc_hi20(.LCPI0_25)
	vld	$vr25, $a7, %pc_lo12(.LCPI0_25)
	pcalau12i	$a7, %pc_hi20(.LCPI0_26)
	vld	$vr26, $a7, %pc_lo12(.LCPI0_26)
	pcalau12i	$a7, %pc_hi20(.LCPI0_27)
	vld	$vr27, $a7, %pc_lo12(.LCPI0_27)
	pcalau12i	$a7, %pc_hi20(.LCPI0_28)
	vld	$vr28, $a7, %pc_lo12(.LCPI0_28)
	pcalau12i	$a7, %pc_hi20(.LCPI0_29)
	vld	$vr29, $a7, %pc_lo12(.LCPI0_29)
	pcalau12i	$a7, %pc_hi20(.LCPI0_30)
	vld	$vr30, $a7, %pc_lo12(.LCPI0_30)
	pcalau12i	$a7, %pc_hi20(.LCPI0_31)
	vld	$vr31, $a7, %pc_lo12(.LCPI0_31)
	pcalau12i	$t1, %pc_hi20(.LCPI0_32)
	pcalau12i	$t2, %pc_hi20(.LCPI0_33)
	pcalau12i	$t3, %pc_hi20(.LCPI0_34)
	ori	$a7, $zero, 16
	ori	$t0, $zero, 1
	vld	$vr0, $t1, %pc_lo12(.LCPI0_32)
	vld	$vr1, $t2, %pc_lo12(.LCPI0_33)
	vld	$vr2, $t3, %pc_lo12(.LCPI0_34)
	lu12i.w	$t1, 8
	ori	$t1, $t1, 259
	vrepli.d	$vr5, 28
	b	.LBB0_3
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	ori	$t2, $zero, 26
	ori	$t3, $zero, 2
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	sll.d	$t4, $a5, $t3
	srl.d	$t5, $a5, $t2
	bstrpick.d	$a5, $t4, 27, 1
	slli.d	$a5, $a5, 1
	or	$a5, $a5, $t5
	srli.d	$t6, $t4, 1
	srli.d	$t7, $t4, 10
	srli.d	$t8, $t4, 2
	srli.d	$fp, $t4, 6
	srli.d	$t4, $t4, 4
	vinsgr2vr.d	$vr4, $t5, 0
	vinsgr2vr.d	$vr4, $a4, 1
	vori.b	$vr3, $vr5, 0
	vinsgr2vr.d	$vr3, $t3, 1
	vsll.d	$vr3, $vr4, $vr3
	vreplgr2vr.d	$vr6, $a5
	vinsgr2vr.d	$vr4, $t6, 0
	vinsgr2vr.d	$vr4, $t8, 1
	vld	$vr7, $sp, 16                   # 16-byte Folded Reload
	vand.v	$vr7, $vr4, $vr7
	vinsgr2vr.d	$vr4, $t7, 0
	vinsgr2vr.d	$vr4, $fp, 1
	vand.v	$vr8, $vr4, $vr15
	vreplvei.d	$vr4, $vr3, 1
	vor.v	$vr7, $vr8, $vr7
	vori.b	$vr8, $vr4, 0
	vinsgr2vr.d	$vr8, $t4, 1
	vand.v	$vr8, $vr8, $vr16
	vor.v	$vr7, $vr7, $vr8
	vld	$vr8, $sp, 144                  # 16-byte Folded Reload
	vsll.d	$vr8, $vr6, $vr8
	vand.v	$vr3, $vr3, $vr17
	vor.v	$vr3, $vr7, $vr3
	vld	$vr7, $sp, 112                  # 16-byte Folded Reload
	vsll.d	$vr7, $vr6, $vr7
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vand.v	$vr7, $vr7, $vr9
	vor.v	$vr3, $vr3, $vr7
	vld	$vr7, $sp, 128                  # 16-byte Folded Reload
	vand.v	$vr7, $vr8, $vr7
	vor.v	$vr3, $vr3, $vr7
	vld	$vr7, $sp, 160                  # 16-byte Folded Reload
	vsll.d	$vr7, $vr6, $vr7
	vld	$vr9, $sp, 64                   # 16-byte Folded Reload
	vand.v	$vr7, $vr7, $vr9
	vor.v	$vr3, $vr3, $vr7
	vld	$vr7, $sp, 48                   # 16-byte Folded Reload
	vsll.d	$vr7, $vr6, $vr7
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
	vand.v	$vr7, $vr7, $vr9
	vor.v	$vr3, $vr3, $vr7
	vsll.d	$vr7, $vr6, $vr10
	vand.v	$vr7, $vr7, $vr11
	vor.v	$vr3, $vr3, $vr7
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	vsll.d	$vr7, $vr6, $vr7
	vand.v	$vr7, $vr7, $vr12
	vor.v	$vr3, $vr3, $vr7
	slli.d	$t4, $a5, 3
	and	$t4, $t4, $a3
	sll.d	$t3, $a4, $t3
	srli.d	$t5, $t3, 13
	and	$t5, $t5, $a6
	vsll.d	$vr6, $vr6, $vr13
	vand.v	$vr6, $vr6, $vr14
	vor.v	$vr3, $vr3, $vr6
	vinsgr2vr.d	$vr6, $t5, 0
	vinsgr2vr.d	$vr6, $t4, 1
	vor.v	$vr3, $vr3, $vr6
	srli.d	$t4, $t3, 4
	vinsgr2vr.d	$vr8, $t4, 0
	vand.v	$vr6, $vr8, $vr20
	vor.v	$vr3, $vr3, $vr6
	vsrl.d	$vr6, $vr4, $vr21
	vand.v	$vr6, $vr6, $vr22
	vor.v	$vr3, $vr3, $vr6
	vsrl.d	$vr6, $vr4, $vr25
	vand.v	$vr6, $vr6, $vr26
	vor.v	$vr3, $vr3, $vr6
	vsrl.d	$vr6, $vr4, $vr29
	vand.v	$vr6, $vr6, $vr30
	vor.v	$vr3, $vr3, $vr6
	vori.b	$vr6, $vr4, 0
	vsrl.d	$vr4, $vr4, $vr1
	srl.d	$t2, $a4, $t2
	bstrpick.d	$a4, $t3, 27, 1
	slli.d	$a4, $a4, 1
	or	$a4, $a4, $t2
	srli.d	$t3, $t3, 26
	slli.d	$t4, $a4, 8
	vand.v	$vr4, $vr4, $vr2
	vor.v	$vr3, $vr3, $vr4
	vinsgr2vr.d	$vr4, $t3, 0
	vinsgr2vr.d	$vr4, $t4, 1
	vand.v	$vr4, $vr4, $vr23
	vor.v	$vr3, $vr3, $vr4
	vreplgr2vr.d	$vr4, $a4
	vinsgr2vr.d	$vr6, $a4, 1
	vsrl.d	$vr6, $vr6, $vr19
	vand.v	$vr6, $vr6, $vr24
	vor.v	$vr3, $vr3, $vr6
	vsrl.d	$vr6, $vr4, $vr18
	vsll.d	$vr4, $vr4, $vr27
	vand.v	$vr4, $vr4, $vr28
	vor.v	$vr3, $vr3, $vr4
	vand.v	$vr4, $vr6, $vr31
	vor.v	$vr3, $vr3, $vr4
	slli.d	$t2, $t2, 2
	vreplvei.d	$vr4, $vr6, 1
	vinsgr2vr.d	$vr4, $t2, 1
	vand.v	$vr4, $vr4, $vr0
	vor.v	$vr3, $vr3, $vr4
	addi.d	$t2, $a0, 16
	addi.w	$a1, $a1, 1
	vst	$vr3, $a0, 0
	move	$a0, $t2
	beq	$a1, $a7, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	bltu	$a2, $a1, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ori	$t2, $zero, 27
	sll.d	$t3, $t0, $a1
	and	$t4, $t3, $t1
	ori	$t3, $zero, 1
	bnez	$t4, .LBB0_2
	b	.LBB0_1
.LBB0_5:
	move	$a0, $zero
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end0:
	.size	des_main_ks, .Lfunc_end0-des_main_ks
                                        # -- End function
	.globl	des_set_key                     # -- Begin function des_set_key
	.p2align	5
	.type	des_set_key,@function
des_set_key:                            # @des_set_key
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 240
	vld	$vr1, $fp, 224
	vld	$vr2, $fp, 208
	vld	$vr3, $fp, 192
	vst	$vr0, $fp, 256
	vst	$vr1, $fp, 272
	vst	$vr2, $fp, 288
	vst	$vr3, $fp, 304
	vld	$vr0, $fp, 176
	vld	$vr1, $fp, 160
	vld	$vr2, $fp, 144
	vld	$vr3, $fp, 128
	vst	$vr0, $fp, 320
	vst	$vr1, $fp, 336
	vst	$vr2, $fp, 352
	vst	$vr3, $fp, 368
	vld	$vr0, $fp, 112
	vld	$vr1, $fp, 96
	vld	$vr2, $fp, 80
	vld	$vr3, $fp, 64
	vst	$vr0, $fp, 384
	vst	$vr1, $fp, 400
	vst	$vr2, $fp, 416
	vst	$vr3, $fp, 432
	vld	$vr0, $fp, 48
	vld	$vr1, $fp, 32
	vld	$vr2, $fp, 16
	vld	$vr3, $fp, 0
	vst	$vr0, $fp, 448
	vst	$vr1, $fp, 464
	vst	$vr2, $fp, 480
	vst	$vr3, $fp, 496
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	des_set_key, .Lfunc_end1-des_set_key
                                        # -- End function
	.globl	des_crypt                       # -- Begin function des_crypt
	.p2align	5
	.type	des_crypt,@function
des_crypt:                              # @des_crypt
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.wu	$a3, $a1, 0
	ld.wu	$a1, $a1, 4
	revb.d	$a3, $a3
	srli.d	$a4, $a3, 32
	revb.d	$a1, $a1
	srli.d	$a5, $a1, 32
	srli.d	$a1, $a3, 36
	xor	$a3, $a5, $a1
	lu12i.w	$a1, 61680
	ori	$a1, $a1, 3855
	and	$a3, $a3, $a1
	xor	$a5, $a3, $a5
	slli.d	$a3, $a3, 4
	xor	$a3, $a3, $a4
	srli.d	$a4, $a3, 16
	xor	$a4, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 0
	xor	$a5, $a4, $a5
	slli.d	$a4, $a4, 16
	xor	$a4, $a4, $a3
	srli.d	$a3, $a5, 2
	xor	$a6, $a3, $a4
	lu12i.w	$a3, 209715
	ori	$a3, $a3, 819
	and	$a6, $a6, $a3
	xor	$a7, $a6, $a4
	slli.d	$a4, $a6, 2
	xor	$a5, $a4, $a5
	srli.d	$a4, $a5, 8
	xor	$a6, $a4, $a7
	lu12i.w	$a4, 4080
	ori	$a4, $a4, 255
	and	$a6, $a6, $a4
	xor	$a7, $a6, $a7
	slli.d	$a6, $a6, 8
	xor	$a5, $a6, $a5
	slli.d	$a6, $a5, 1
	srli.d	$a5, $a5, 31
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 0
	xor	$t0, $a5, $a7
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2730
	lu32i.d	$a5, 0
	and	$t0, $t0, $a5
	xor	$t6, $t0, $a6
	xor	$a6, $t0, $a7
	slli.d	$a7, $a6, 1
	ld.d	$t0, $a0, 0
	srli.d	$a6, $a6, 31
	or	$a6, $a7, $a6
	bstrpick.d	$t7, $a6, 31, 0
	xor	$t1, $t6, $t0
	andi	$a6, $t1, 63
	slli.d	$a7, $a6, 3
	pcalau12i	$a6, %pc_hi20(SB8)
	addi.d	$a6, $a6, %pc_lo12(SB8)
	ldx.d	$t0, $a6, $a7
	srli.d	$a7, $t1, 5
	andi	$t2, $a7, 504
	pcalau12i	$a7, %pc_hi20(SB6)
	addi.d	$a7, $a7, %pc_lo12(SB6)
	ldx.d	$t2, $a7, $t2
	xor	$t2, $t2, $t0
	srli.d	$t0, $t1, 13
	andi	$t3, $t0, 504
	pcalau12i	$t0, %pc_hi20(SB4)
	addi.d	$t0, $t0, %pc_lo12(SB4)
	ldx.d	$t3, $t0, $t3
	xor	$t2, $t2, $t3
	srli.d	$t1, $t1, 21
	andi	$t3, $t1, 504
	pcalau12i	$t1, %pc_hi20(SB2)
	addi.d	$t1, $t1, %pc_lo12(SB2)
	ldx.d	$t3, $t1, $t3
	xor	$t8, $t2, $t3
	ld.d	$t2, $a0, 8
	slli.d	$t3, $t6, 28
	srli.d	$t4, $t6, 4
	or	$t3, $t3, $t4
	xor	$t5, $t3, $t2
	andi	$t2, $t5, 63
	slli.d	$t3, $t2, 3
	pcalau12i	$t2, %pc_hi20(SB7)
	addi.d	$t2, $t2, %pc_lo12(SB7)
	ldx.d	$fp, $t2, $t3
	srli.d	$t3, $t5, 5
	andi	$t4, $t3, 504
	pcalau12i	$t3, %pc_hi20(SB5)
	addi.d	$t3, $t3, %pc_lo12(SB5)
	ldx.d	$s0, $t3, $t4
	srli.d	$t4, $t5, 13
	andi	$s1, $t4, 504
	pcalau12i	$t4, %pc_hi20(SB3)
	addi.d	$t4, $t4, %pc_lo12(SB3)
	ldx.d	$s1, $t4, $s1
	srli.d	$t5, $t5, 21
	andi	$s2, $t5, 504
	pcalau12i	$t5, %pc_hi20(SB1)
	addi.d	$t5, $t5, %pc_lo12(SB1)
	ldx.d	$s2, $t5, $s2
	xor	$t8, $t8, $fp
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 16
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 24
	slli.d	$s3, $t7, 28
	srli.d	$s4, $t7, 4
	or	$s3, $s3, $s4
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $s0, $fp
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 32
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 40
	slli.d	$s3, $t6, 28
	srli.d	$s4, $t6, 4
	or	$s3, $s3, $s4
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $s0, $fp
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 48
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 56
	slli.d	$s3, $t7, 28
	srli.d	$s4, $t7, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 64
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 72
	slli.d	$s3, $t6, 28
	srli.d	$s4, $t6, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 80
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 88
	slli.d	$s3, $t7, 28
	srli.d	$s4, $t7, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 96
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 104
	slli.d	$s3, $t6, 28
	srli.d	$s4, $t6, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 112
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 120
	slli.d	$s3, $t7, 28
	srli.d	$s4, $t7, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 128
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 136
	slli.d	$s3, $t6, 28
	srli.d	$s4, $t6, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 144
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 152
	slli.d	$s3, $t7, 28
	srli.d	$s4, $t7, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 160
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 168
	slli.d	$s3, $t6, 28
	srli.d	$s4, $t6, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 176
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 184
	slli.d	$s3, $t7, 28
	srli.d	$s4, $t7, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 192
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 200
	slli.d	$s3, $t6, 28
	srli.d	$s4, $t6, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 208
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 216
	slli.d	$s3, $t7, 28
	srli.d	$s4, $t7, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 224
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	ld.d	$s2, $a0, 232
	slli.d	$s3, $t6, 28
	srli.d	$s4, $t6, 4
	or	$s3, $s3, $s4
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	srli.d	$s4, $s2, 5
	andi	$s4, $s4, 504
	ldx.d	$s4, $t3, $s4
	srli.d	$s5, $s2, 13
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s4
	ld.d	$fp, $a0, 240
	xor	$t8, $t8, $s5
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$a6, $a6, $fp
	srli.d	$fp, $t8, 5
	andi	$fp, $fp, 504
	ldx.d	$a7, $a7, $fp
	srli.d	$fp, $t8, 13
	andi	$fp, $fp, 504
	ldx.d	$t0, $t0, $fp
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t1, $t1, $t8
	ld.d	$a0, $a0, 248
	slli.d	$t8, $t7, 28
	srli.d	$fp, $t7, 4
	or	$t8, $t8, $fp
	xor	$a0, $a0, $t8
	andi	$t8, $a0, 63
	slli.d	$t8, $t8, 3
	ldx.d	$t2, $t2, $t8
	srli.d	$t8, $a0, 5
	andi	$t8, $t8, 504
	ldx.d	$t3, $t3, $t8
	srli.d	$t8, $a0, 13
	andi	$t8, $t8, 504
	ldx.d	$t4, $t4, $t8
	srli.d	$a0, $a0, 21
	andi	$a0, $a0, 504
	ldx.d	$a0, $t5, $a0
	xor	$a6, $a6, $a7
	xor	$a6, $a6, $t0
	xor	$a6, $a6, $t1
	xor	$a6, $a6, $t2
	xor	$a6, $a6, $t3
	xor	$a6, $a6, $t4
	xor	$a0, $a6, $a0
	xor	$a0, $a0, $t6
	slli.d	$a6, $a0, 31
	srli.d	$a0, $a0, 1
	or	$a0, $a6, $a0
	bstrpick.d	$a6, $a0, 31, 0
	xor	$a0, $a0, $t7
	and	$a0, $a0, $a5
	xor	$a5, $a0, $a6
	xor	$a0, $a0, $t7
	slli.d	$a6, $t7, 31
	srli.d	$a0, $a0, 1
	or	$a0, $a0, $a6
	srli.d	$a6, $a0, 8
	xor	$a6, $a6, $a5
	and	$a4, $a6, $a4
	xor	$a5, $a4, $a5
	slli.d	$a4, $a4, 8
	xor	$a0, $a4, $a0
	srli.d	$a4, $a0, 2
	xor	$a4, $a4, $a5
	and	$a3, $a4, $a3
	xor	$a4, $a3, $a5
	slli.d	$a3, $a3, 2
	xor	$a0, $a3, $a0
	srli.d	$a3, $a4, 16
	bstrpick.d	$a5, $a0, 15, 0
	xor	$a3, $a5, $a3
	xor	$a0, $a3, $a0
	slli.d	$a3, $a3, 16
	xor	$a3, $a3, $a4
	srli.d	$a4, $a3, 4
	xor	$a4, $a4, $a0
	and	$a1, $a4, $a1
	xor	$a0, $a1, $a0
	slli.d	$a1, $a1, 4
	xor	$a1, $a1, $a3
	srli.d	$a3, $a1, 24
	st.b	$a3, $a2, 0
	srli.d	$a3, $a1, 16
	st.b	$a3, $a2, 1
	srli.d	$a3, $a1, 8
	st.b	$a3, $a2, 2
	st.b	$a1, $a2, 3
	srli.d	$a1, $a0, 24
	st.b	$a1, $a2, 4
	srli.d	$a1, $a0, 16
	st.b	$a1, $a2, 5
	srli.d	$a1, $a0, 8
	st.b	$a1, $a2, 6
	st.b	$a0, $a2, 7
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	des_crypt, .Lfunc_end2-des_crypt
                                        # -- End function
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	5
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
# %bb.0:
	pcaddu18i	$t8, %call36(des_crypt)
	jr	$t8
.Lfunc_end3:
	.size	des_encrypt, .Lfunc_end3-des_encrypt
                                        # -- End function
	.globl	des_decrypt                     # -- Begin function des_decrypt
	.p2align	5
	.type	des_decrypt,@function
des_decrypt:                            # @des_decrypt
# %bb.0:
	addi.d	$a0, $a0, 256
	pcaddu18i	$t8, %call36(des_crypt)
	jr	$t8
.Lfunc_end4:
	.size	des_decrypt, .Lfunc_end4-des_decrypt
                                        # -- End function
	.globl	des3_set_2keys                  # -- Begin function des3_set_2keys
	.p2align	5
	.type	des3_set_2keys,@function
des3_set_2keys:                         # @des3_set_2keys
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s0, 768
	addi.d	$a0, $s0, 1024
	move	$a1, $fp
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 1264
	addi.w	$a1, $zero, -2
	ori	$a2, $zero, 30
	.p2align	4, , 16
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, -1024
	vst	$vr0, $s1, 0
	ld.d	$a3, $a0, 0
	st.d	$a3, $s1, -512
	ld.d	$a3, $a0, 8
	vld	$vr1, $s1, -768
	st.d	$a3, $s1, -504
	vst	$vr1, $s1, -256
	vst	$vr0, $s1, 512
	addi.d	$a1, $a1, 2
	addi.d	$s1, $s1, 16
	addi.d	$a0, $a0, -16
	bltu	$a1, $a2, .LBB5_1
# %bb.2:
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	des3_set_2keys, .Lfunc_end5-des3_set_2keys
                                        # -- End function
	.globl	des3_set_3keys                  # -- Begin function des3_set_3keys
	.p2align	5
	.type	des3_set_3keys,@function
des3_set_3keys:                         # @des3_set_3keys
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a0
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s1, 768
	addi.d	$a0, $s1, 1024
	move	$a1, $s0
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 512
	move	$a1, $fp
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 1272
	addi.w	$a1, $zero, -2
	ori	$a2, $zero, 30
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, -520
	vst	$vr0, $s2, 0
	ld.d	$a3, $a0, -8
	st.d	$a3, $s2, -512
	ld.d	$a3, $a0, 0
	st.d	$a3, $s2, -504
	vld	$vr0, $a0, -1032
	vst	$vr0, $s2, 512
	addi.d	$a1, $a1, 2
	addi.d	$s2, $s2, 16
	addi.d	$a0, $a0, -16
	bltu	$a1, $a2, .LBB6_1
# %bb.2:
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	des3_set_3keys, .Lfunc_end6-des3_set_3keys
                                        # -- End function
	.globl	des3_crypt                      # -- Begin function des3_crypt
	.p2align	5
	.type	des3_crypt,@function
des3_crypt:                             # @des3_crypt
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	ld.wu	$a3, $a1, 0
	ld.wu	$a1, $a1, 4
	revb.d	$a3, $a3
	srli.d	$a4, $a3, 32
	revb.d	$a1, $a1
	srli.d	$a5, $a1, 32
	srli.d	$a1, $a3, 36
	xor	$a3, $a5, $a1
	lu12i.w	$a1, 61680
	ori	$a1, $a1, 3855
	and	$a3, $a3, $a1
	xor	$a5, $a3, $a5
	slli.d	$a3, $a3, 4
	xor	$a3, $a3, $a4
	srli.d	$a4, $a3, 16
	xor	$a4, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 0
	xor	$a5, $a4, $a5
	slli.d	$a4, $a4, 16
	xor	$a4, $a4, $a3
	srli.d	$a3, $a5, 2
	xor	$a6, $a3, $a4
	lu12i.w	$a3, 209715
	ori	$a3, $a3, 819
	and	$a6, $a6, $a3
	xor	$a7, $a6, $a4
	slli.d	$a4, $a6, 2
	xor	$a5, $a4, $a5
	srli.d	$a4, $a5, 8
	xor	$a6, $a4, $a7
	lu12i.w	$a4, 4080
	ori	$a4, $a4, 255
	and	$a6, $a6, $a4
	xor	$a7, $a6, $a7
	slli.d	$a6, $a6, 8
	xor	$a5, $a6, $a5
	slli.d	$a6, $a5, 1
	srli.d	$a5, $a5, 31
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 0
	xor	$t0, $a5, $a7
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2730
	lu32i.d	$a5, 0
	and	$t0, $t0, $a5
	xor	$t6, $t0, $a6
	xor	$a6, $t0, $a7
	slli.d	$a7, $a6, 1
	ld.d	$t0, $a0, 0
	srli.d	$a6, $a6, 31
	or	$a6, $a7, $a6
	bstrpick.d	$t7, $a6, 31, 0
	xor	$t1, $t6, $t0
	andi	$a6, $t1, 63
	slli.d	$a7, $a6, 3
	pcalau12i	$a6, %pc_hi20(SB8)
	addi.d	$a6, $a6, %pc_lo12(SB8)
	ldx.d	$t0, $a6, $a7
	srli.d	$a7, $t1, 5
	andi	$t2, $a7, 504
	pcalau12i	$a7, %pc_hi20(SB6)
	addi.d	$a7, $a7, %pc_lo12(SB6)
	ldx.d	$t2, $a7, $t2
	xor	$t2, $t2, $t0
	srli.d	$t0, $t1, 13
	andi	$t3, $t0, 504
	pcalau12i	$t0, %pc_hi20(SB4)
	addi.d	$t0, $t0, %pc_lo12(SB4)
	ldx.d	$t3, $t0, $t3
	xor	$t2, $t2, $t3
	srli.d	$t1, $t1, 21
	andi	$t3, $t1, 504
	pcalau12i	$t1, %pc_hi20(SB2)
	addi.d	$t1, $t1, %pc_lo12(SB2)
	ldx.d	$t3, $t1, $t3
	xor	$t8, $t2, $t3
	ld.d	$t2, $a0, 8
	slli.d	$t3, $t6, 28
	srli.d	$t4, $t6, 4
	or	$t3, $t3, $t4
	xor	$t5, $t3, $t2
	andi	$t2, $t5, 63
	slli.d	$t3, $t2, 3
	pcalau12i	$t2, %pc_hi20(SB7)
	addi.d	$t2, $t2, %pc_lo12(SB7)
	ldx.d	$fp, $t2, $t3
	srli.d	$t3, $t5, 5
	andi	$t4, $t3, 504
	pcalau12i	$t3, %pc_hi20(SB5)
	addi.d	$t3, $t3, %pc_lo12(SB5)
	ldx.d	$s0, $t3, $t4
	srli.d	$t4, $t5, 13
	andi	$s1, $t4, 504
	pcalau12i	$t4, %pc_hi20(SB3)
	addi.d	$t4, $t4, %pc_lo12(SB3)
	ldx.d	$s1, $t4, $s1
	srli.d	$t5, $t5, 21
	andi	$s2, $t5, 504
	pcalau12i	$t5, %pc_hi20(SB1)
	addi.d	$t5, $t5, %pc_lo12(SB1)
	ldx.d	$s2, $t5, $s2
	xor	$t8, $t8, $fp
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 16
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 24
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $s0, $fp
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 32
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 40
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s2, $s3
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $s0, $fp
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 48
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 56
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 64
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 72
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 80
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 88
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 96
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 104
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 112
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 120
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 128
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 136
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 144
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 152
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 160
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 168
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 176
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 184
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 192
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 200
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 208
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 216
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 224
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 232
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 240
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$s0, $t7, $fp
	andi	$t8, $s0, 63
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $a6, $t8
	srli.d	$fp, $s0, 5
	ld.d	$s1, $a0, 248
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 264
	andi	$fp, $fp, 504
	ldx.d	$s4, $a7, $fp
	xor	$s1, $s1, $s2
	xor	$fp, $s3, $s2
	srli.d	$s2, $s0, 13
	andi	$s2, $s2, 504
	ldx.d	$s2, $t0, $s2
	srli.d	$s0, $s0, 21
	andi	$s0, $s0, 504
	ldx.d	$s0, $t1, $s0
	xor	$t8, $t8, $s4
	andi	$s3, $s1, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$t8, $t8, $s2
	srli.d	$s2, $s1, 5
	andi	$s2, $s2, 504
	ldx.d	$s2, $t3, $s2
	xor	$t8, $t8, $s0
	srli.d	$s0, $s1, 13
	andi	$s0, $s0, 504
	ldx.d	$s0, $t4, $s0
	xor	$t8, $t8, $s3
	ld.d	$s3, $a0, 256
	srli.d	$s1, $s1, 21
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	xor	$s3, $s3, $t7
	xor	$t8, $t8, $s2
	andi	$s2, $s3, 63
	slli.d	$s2, $s2, 3
	ldx.d	$s2, $a6, $s2
	xor	$t8, $t8, $s0
	srli.d	$s0, $s3, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	xor	$t8, $t8, $s1
	srli.d	$s1, $s3, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$s3, $s3, 21
	andi	$s3, $s3, 504
	ldx.d	$s3, $t1, $s3
	xor	$t8, $t8, $s2
	andi	$s2, $fp, 63
	slli.d	$s2, $s2, 3
	ldx.d	$s2, $t2, $s2
	xor	$t8, $t8, $s0
	srli.d	$s0, $fp, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$t8, $t8, $s1
	srli.d	$s1, $fp, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$fp, $fp, 21
	andi	$fp, $fp, 504
	ldx.d	$fp, $t5, $fp
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s2
	xor	$t8, $t8, $s0
	ld.d	$s0, $a0, 272
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $fp
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $s0
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 280
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 288
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 296
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 304
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 312
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 320
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 328
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 336
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 344
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 352
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 360
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 368
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 376
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 384
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 392
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 400
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 408
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 416
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 424
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 432
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 440
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 448
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 456
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 464
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t8, $t8, $t6
	xor	$t6, $t8, $fp
	andi	$fp, $t6, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t6, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t6, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t8, 28
	srli.d	$s3, $t8, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 472
	srli.d	$t6, $t6, 21
	andi	$t6, $t6, 504
	ldx.d	$t6, $t1, $t6
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t6, $fp, $t6
	xor	$t6, $t6, $s3
	xor	$t6, $t6, $s0
	ld.d	$fp, $a0, 480
	xor	$t6, $t6, $s1
	xor	$t6, $t6, $s2
	xor	$t6, $t6, $t7
	xor	$t7, $t6, $fp
	andi	$fp, $t7, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t7, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t7, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 488
	srli.d	$t7, $t7, 21
	andi	$t7, $t7, 504
	ldx.d	$t7, $t1, $t7
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t7, $fp, $t7
	xor	$t7, $t7, $s3
	xor	$t7, $t7, $s0
	ld.d	$fp, $a0, 496
	xor	$t7, $t7, $s1
	xor	$t7, $t7, $s2
	xor	$t7, $t7, $t8
	xor	$s0, $t7, $fp
	andi	$t8, $s0, 63
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $a6, $t8
	srli.d	$fp, $s0, 5
	ld.d	$s1, $a0, 504
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 520
	andi	$fp, $fp, 504
	ldx.d	$s4, $a7, $fp
	xor	$s1, $s1, $s2
	xor	$fp, $s3, $s2
	srli.d	$s2, $s0, 13
	andi	$s2, $s2, 504
	ldx.d	$s2, $t0, $s2
	srli.d	$s0, $s0, 21
	andi	$s0, $s0, 504
	ldx.d	$s0, $t1, $s0
	xor	$t8, $t8, $s4
	andi	$s3, $s1, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$t8, $t8, $s2
	srli.d	$s2, $s1, 5
	andi	$s2, $s2, 504
	ldx.d	$s2, $t3, $s2
	xor	$t8, $t8, $s0
	srli.d	$s0, $s1, 13
	andi	$s0, $s0, 504
	ldx.d	$s0, $t4, $s0
	xor	$t8, $t8, $s3
	ld.d	$s3, $a0, 512
	srli.d	$s1, $s1, 21
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	xor	$s3, $s3, $t7
	xor	$t8, $t8, $s2
	andi	$s2, $s3, 63
	slli.d	$s2, $s2, 3
	ldx.d	$s2, $a6, $s2
	xor	$t8, $t8, $s0
	srli.d	$s0, $s3, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	xor	$t8, $t8, $s1
	srli.d	$s1, $s3, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	srli.d	$s3, $s3, 21
	andi	$s3, $s3, 504
	ldx.d	$s3, $t1, $s3
	xor	$t8, $t8, $s2
	andi	$s2, $fp, 63
	slli.d	$s2, $s2, 3
	ldx.d	$s2, $t2, $s2
	xor	$t8, $t8, $s0
	srli.d	$s0, $fp, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$t8, $t8, $s1
	srli.d	$s1, $fp, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$fp, $fp, 21
	andi	$fp, $fp, 504
	ldx.d	$fp, $t5, $fp
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s2
	xor	$t8, $t8, $s0
	ld.d	$s0, $a0, 528
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $fp
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $s0
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 536
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 544
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 552
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 560
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 568
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 576
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 584
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 592
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 600
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 608
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 616
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 624
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 632
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 640
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 648
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 656
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 664
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 672
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 680
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 688
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 696
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 704
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 712
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 720
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	srli.d	$s1, $t8, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t0, $s1
	slli.d	$s2, $t6, 28
	srli.d	$s3, $t6, 4
	or	$s2, $s2, $s3
	ld.d	$s3, $a0, 728
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$s2, $s3, $s2
	andi	$s3, $s2, 63
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $t2, $s3
	xor	$fp, $fp, $s0
	srli.d	$s0, $s2, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $t3, $s0
	xor	$fp, $fp, $s1
	srli.d	$s1, $s2, 13
	andi	$s1, $s1, 504
	ldx.d	$s1, $t4, $s1
	srli.d	$s2, $s2, 21
	andi	$s2, $s2, 504
	ldx.d	$s2, $t5, $s2
	xor	$t8, $fp, $t8
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s0
	ld.d	$fp, $a0, 736
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s2
	xor	$t7, $t8, $t7
	xor	$t8, $t7, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	srli.d	$s0, $t8, 5
	andi	$s0, $s0, 504
	ldx.d	$s0, $a7, $s0
	ld.d	$s1, $a0, 744
	slli.d	$s2, $t7, 28
	srli.d	$s3, $t7, 4
	or	$s2, $s2, $s3
	xor	$s1, $s1, $s2
	xor	$fp, $fp, $s0
	srli.d	$s0, $t8, 13
	andi	$s0, $s0, 504
	ldx.d	$s0, $t0, $s0
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t8, $t1, $t8
	xor	$fp, $fp, $s0
	andi	$s0, $s1, 63
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $t2, $s0
	xor	$t8, $fp, $t8
	srli.d	$fp, $s1, 5
	andi	$fp, $fp, 504
	ldx.d	$fp, $t3, $fp
	xor	$t8, $t8, $s0
	srli.d	$s0, $s1, 13
	andi	$s0, $s0, 504
	ldx.d	$s0, $t4, $s0
	srli.d	$s1, $s1, 21
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	xor	$t8, $t8, $fp
	ld.d	$fp, $a0, 752
	xor	$t8, $t8, $s0
	xor	$t8, $t8, $s1
	xor	$t6, $t8, $t6
	xor	$t8, $t6, $fp
	andi	$fp, $t8, 63
	slli.d	$fp, $fp, 3
	ldx.d	$a6, $a6, $fp
	srli.d	$fp, $t8, 5
	andi	$fp, $fp, 504
	ldx.d	$a7, $a7, $fp
	srli.d	$fp, $t8, 13
	andi	$fp, $fp, 504
	ldx.d	$t0, $t0, $fp
	srli.d	$t8, $t8, 21
	andi	$t8, $t8, 504
	ldx.d	$t1, $t1, $t8
	ld.d	$a0, $a0, 760
	slli.d	$t8, $t6, 28
	srli.d	$fp, $t6, 4
	or	$t8, $t8, $fp
	xor	$a0, $a0, $t8
	andi	$t8, $a0, 63
	slli.d	$t8, $t8, 3
	ldx.d	$t2, $t2, $t8
	srli.d	$t8, $a0, 5
	andi	$t8, $t8, 504
	ldx.d	$t3, $t3, $t8
	srli.d	$t8, $a0, 13
	andi	$t8, $t8, 504
	ldx.d	$t4, $t4, $t8
	srli.d	$a0, $a0, 21
	andi	$a0, $a0, 504
	ldx.d	$a0, $t5, $a0
	xor	$a6, $a6, $a7
	xor	$a6, $a6, $t0
	xor	$a6, $a6, $t1
	xor	$a6, $a6, $t2
	xor	$a6, $a6, $t3
	xor	$a6, $a6, $t4
	xor	$a0, $a6, $a0
	xor	$a0, $a0, $t7
	slli.d	$a6, $a0, 31
	srli.d	$a0, $a0, 1
	or	$a0, $a6, $a0
	xor	$a6, $a0, $t6
	and	$a5, $a6, $a5
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $a5, $a0
	xor	$a5, $a5, $t6
	slli.d	$a6, $t6, 31
	srli.d	$a5, $a5, 1
	or	$a5, $a5, $a6
	srli.d	$a6, $a5, 8
	xor	$a6, $a6, $a0
	and	$a4, $a6, $a4
	xor	$a0, $a4, $a0
	slli.d	$a4, $a4, 8
	xor	$a4, $a4, $a5
	srli.d	$a5, $a4, 2
	xor	$a5, $a5, $a0
	and	$a3, $a5, $a3
	xor	$a0, $a3, $a0
	slli.d	$a3, $a3, 2
	xor	$a3, $a3, $a4
	srli.d	$a4, $a0, 16
	bstrpick.d	$a5, $a3, 15, 0
	xor	$a4, $a5, $a4
	xor	$a3, $a4, $a3
	slli.d	$a4, $a4, 16
	xor	$a0, $a4, $a0
	srli.d	$a4, $a0, 4
	xor	$a4, $a4, $a3
	and	$a1, $a4, $a1
	xor	$a3, $a1, $a3
	slli.d	$a1, $a1, 4
	xor	$a0, $a1, $a0
	srli.d	$a1, $a0, 24
	st.b	$a1, $a2, 0
	srli.d	$a1, $a0, 16
	st.b	$a1, $a2, 1
	srli.d	$a1, $a0, 8
	st.b	$a1, $a2, 2
	st.b	$a0, $a2, 3
	srli.d	$a0, $a3, 24
	st.b	$a0, $a2, 4
	srli.d	$a0, $a3, 16
	st.b	$a0, $a2, 5
	srli.d	$a0, $a3, 8
	st.b	$a0, $a2, 6
	st.b	$a3, $a2, 7
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	des3_crypt, .Lfunc_end7-des3_crypt
                                        # -- End function
	.globl	des3_encrypt                    # -- Begin function des3_encrypt
	.p2align	5
	.type	des3_encrypt,@function
des3_encrypt:                           # @des3_encrypt
# %bb.0:
	pcaddu18i	$t8, %call36(des3_crypt)
	jr	$t8
.Lfunc_end8:
	.size	des3_encrypt, .Lfunc_end8-des3_encrypt
                                        # -- End function
	.globl	des3_decrypt                    # -- Begin function des3_decrypt
	.p2align	5
	.type	des3_decrypt,@function
des3_decrypt:                           # @des3_decrypt
# %bb.0:
	addi.d	$a0, $a0, 768
	pcaddu18i	$t8, %call36(des3_crypt)
	jr	$t8
.Lfunc_end9:
	.size	des3_decrypt, .Lfunc_end9-des3_decrypt
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -240
	move	$a2, $a0
	ori	$a3, $zero, 2
	ori	$a0, $zero, 100
	bne	$a2, $a3, .LBB10_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
.LBB10_2:
	addi.d	$fp, $sp, 904
	addi.d	$s2, $sp, 1928
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.Lstr.1)
	addi.d	$s3, $a1, %pc_lo12(.Lstr.1)
	pcalau12i	$a1, %pc_hi20(.Lstr)
	addi.d	$s6, $a1, %pc_lo12(.Lstr)
	addi.w	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(DES3_dec_test)
	addi.d	$a0, $a0, %pc_lo12(DES3_dec_test)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(DES3_enc_test)
	addi.d	$a0, $a0, %pc_lo12(DES3_enc_test)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 132982
	ori	$a0, $a0, 3918
	lu32i.d	$a0, 29545
	lu52i.d	$s0, $a0, 1858
	pcalau12i	$a0, %pc_hi20(DES3_keys)
	addi.d	$a0, $a0, %pc_lo12(DES3_keys)
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s7, $zero, 30
	lu12i.w	$a0, 2
	ori	$s5, $a0, 1808
	ori	$s1, $zero, 1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #       Child Loop BB10_7 Depth 3
                                        #         Child Loop BB10_10 Depth 4
                                        #         Child Loop BB10_12 Depth 4
                                        #         Child Loop BB10_18 Depth 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	andi	$s8, $s1, 1
	masknez	$a0, $s3, $s8
	maskeqz	$a1, $s6, $s8
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s1, $zero
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_4:                               # %._crit_edge
                                        #   in Loop: Header=BB10_5 Depth=2
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s1, $s1, 1
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$s3, $a1
	ori	$a0, $zero, 3
	beq	$a1, $a0, .LBB10_29
.LBB10_5:                               #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_7 Depth 3
                                        #         Child Loop BB10_10 Depth 4
                                        #         Child Loop BB10_12 Depth 4
                                        #         Child Loop BB10_18 Depth 4
	addi.d	$a1, $s3, 1
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 6
	addi.w	$a2, $a0, 64
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB10_4
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB10_5 Depth=2
	move	$s6, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_7:                               #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_10 Depth 4
                                        #         Child Loop BB10_12 Depth 4
                                        #         Child Loop BB10_18 Depth 4
	st.d	$s0, $sp, 128
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB10_11
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=3
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB10_13
# %bb.9:                                #   in Loop: Header=BB10_7 Depth=3
	addi.d	$a0, $sp, 136
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1160
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -2
	move	$a1, $fp
	addi.d	$a2, $sp, 1408
	.p2align	4, , 16
.LBB10_10:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a2, -1032
	vst	$vr0, $a1, 0
	ld.d	$a3, $a2, -8
	st.d	$a3, $a1, -512
	ld.d	$a3, $a2, 0
	vld	$vr1, $a1, -768
	st.d	$a3, $a1, -504
	vst	$vr1, $a1, -256
	vst	$vr0, $a1, 512
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 16
	bltu	$a0, $s7, .LBB10_10
	b	.LBB10_14
	.p2align	4, , 16
.LBB10_11:                              #   in Loop: Header=BB10_7 Depth=3
	addi.d	$a0, $sp, 136
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1160
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 648
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	addi.d	$a1, $sp, 1408
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_12:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a1, -520
	vst	$vr0, $a0, 0
	ld.d	$a3, $a1, -8
	st.d	$a3, $a0, -512
	ld.d	$a3, $a1, 0
	st.d	$a3, $a0, -504
	vld	$vr0, $a1, -1032
	vst	$vr0, $a0, 512
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 16
	bltu	$a2, $s7, .LBB10_12
	b	.LBB10_14
	.p2align	4, , 16
.LBB10_13:                              # %vector.ph
                                        #   in Loop: Header=BB10_7 Depth=3
	pcalau12i	$a0, %pc_hi20(DES3_keys)
	addi.d	$a1, $a0, %pc_lo12(DES3_keys)
	addi.d	$a0, $sp, 1672
	pcaddu18i	$ra, %call36(des_main_ks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1816
	ld.d	$a1, $sp, 1800
	ld.d	$a2, $sp, 1824
	ld.d	$a3, $sp, 1808
	st.d	$a0, $sp, 2024
	st.d	$a1, $sp, 2040
	st.d	$a2, $sp, 2032
	ori	$a0, $zero, 2048
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0
	ld.d	$a0, $sp, 1784
	ld.d	$a1, $sp, 1768
	ld.d	$a2, $sp, 1792
	ld.d	$a3, $sp, 1776
	ori	$a4, $zero, 2056
	add.d	$a4, $sp, $a4
	st.d	$a0, $a4, 0
	ori	$a0, $zero, 2072
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	st.d	$a2, $a0, 0
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0
	ld.d	$a0, $sp, 1752
	ld.d	$a1, $sp, 1736
	vld	$vr0, $sp, 1912
	vld	$vr1, $sp, 1896
	ori	$a2, $zero, 2088
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 1760
	ld.d	$a1, $sp, 1744
	vst	$vr0, $sp, 1928
	vst	$vr1, $sp, 1944
	ori	$a2, $zero, 2096
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 1720
	ld.d	$a1, $sp, 1704
	vld	$vr0, $sp, 1880
	vld	$vr1, $sp, 1864
	ori	$a2, $zero, 2120
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2136
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 1728
	ld.d	$a1, $sp, 1712
	vst	$vr0, $sp, 1960
	vst	$vr1, $sp, 1976
	ori	$a2, $zero, 2128
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 1688
	ld.d	$a1, $sp, 1672
	vld	$vr0, $sp, 1848
	vld	$vr1, $sp, 1832
	ori	$a2, $zero, 2152
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2168
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 1696
	ld.d	$a1, $sp, 1680
	vst	$vr0, $sp, 1992
	vst	$vr1, $sp, 2008
	ori	$a2, $zero, 2160
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2176
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
.LBB10_14:                              # %des_set_key.exit.preheader
                                        #   in Loop: Header=BB10_7 Depth=3
	move	$s1, $s5
	b	.LBB10_18
	.p2align	4, , 16
.LBB10_15:                              # %.critedge41
                                        #   in Loop: Header=BB10_18 Depth=4
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 128
	move	$a0, $fp
.LBB10_16:                              #   in Loop: Header=BB10_18 Depth=4
	pcaddu18i	$ra, %call36(des3_crypt)
	jirl	$ra, $ra, 0
.LBB10_17:                              #   in Loop: Header=BB10_18 Depth=4
	addi.w	$s1, $s1, -1
	beqz	$s1, .LBB10_24
.LBB10_18:                              # %des_set_key.exit
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beqz	$s3, .LBB10_21
# %bb.19:                               #   in Loop: Header=BB10_18 Depth=4
	beqz	$s8, .LBB10_15
# %bb.20:                               #   in Loop: Header=BB10_18 Depth=4
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 128
	b	.LBB10_16
	.p2align	4, , 16
.LBB10_21:                              #   in Loop: Header=BB10_18 Depth=4
	beqz	$s8, .LBB10_23
# %bb.22:                               #   in Loop: Header=BB10_18 Depth=4
	addi.d	$a0, $sp, 1672
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(des_crypt)
	jirl	$ra, $ra, 0
	b	.LBB10_17
.LBB10_23:                              # %.critedge
                                        #   in Loop: Header=BB10_18 Depth=4
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 128
	move	$a0, $s2
	pcaddu18i	$ra, %call36(des_crypt)
	jirl	$ra, $ra, 0
	b	.LBB10_17
	.p2align	4, , 16
.LBB10_24:                              #   in Loop: Header=BB10_7 Depth=3
	beqz	$s8, .LBB10_26
# %bb.25:                               #   in Loop: Header=BB10_7 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB10_27
	.p2align	4, , 16
.LBB10_26:                              # %.critedge43
                                        #   in Loop: Header=BB10_7 Depth=3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
.LBB10_27:                              # %.critedge43
                                        #   in Loop: Header=BB10_7 Depth=3
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 128
	bne	$a1, $a0, .LBB10_31
# %bb.28:                               #   in Loop: Header=BB10_7 Depth=3
	addi.w	$s6, $s6, 1
	bne	$s6, $s4, .LBB10_7
	b	.LBB10_4
.LBB10_29:                              #   in Loop: Header=BB10_3 Depth=1
	move	$s1, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bnez	$s8, .LBB10_3
# %bb.30:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB10_32
.LBB10_31:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB10_32:
	addi.d	$sp, $sp, 240
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
                                        # -- End function
	.type	SB1,@object                     # @SB1
	.data
	.globl	SB1
	.p2align	3, 0x0
SB1:
	.dword	16843776                        # 0x1010400
	.dword	0                               # 0x0
	.dword	65536                           # 0x10000
	.dword	16843780                        # 0x1010404
	.dword	16842756                        # 0x1010004
	.dword	66564                           # 0x10404
	.dword	4                               # 0x4
	.dword	65536                           # 0x10000
	.dword	1024                            # 0x400
	.dword	16843776                        # 0x1010400
	.dword	16843780                        # 0x1010404
	.dword	1024                            # 0x400
	.dword	16778244                        # 0x1000404
	.dword	16842756                        # 0x1010004
	.dword	16777216                        # 0x1000000
	.dword	4                               # 0x4
	.dword	1028                            # 0x404
	.dword	16778240                        # 0x1000400
	.dword	16778240                        # 0x1000400
	.dword	66560                           # 0x10400
	.dword	66560                           # 0x10400
	.dword	16842752                        # 0x1010000
	.dword	16842752                        # 0x1010000
	.dword	16778244                        # 0x1000404
	.dword	65540                           # 0x10004
	.dword	16777220                        # 0x1000004
	.dword	16777220                        # 0x1000004
	.dword	65540                           # 0x10004
	.dword	0                               # 0x0
	.dword	1028                            # 0x404
	.dword	66564                           # 0x10404
	.dword	16777216                        # 0x1000000
	.dword	65536                           # 0x10000
	.dword	16843780                        # 0x1010404
	.dword	4                               # 0x4
	.dword	16842752                        # 0x1010000
	.dword	16843776                        # 0x1010400
	.dword	16777216                        # 0x1000000
	.dword	16777216                        # 0x1000000
	.dword	1024                            # 0x400
	.dword	16842756                        # 0x1010004
	.dword	65536                           # 0x10000
	.dword	66560                           # 0x10400
	.dword	16777220                        # 0x1000004
	.dword	1024                            # 0x400
	.dword	4                               # 0x4
	.dword	16778244                        # 0x1000404
	.dword	66564                           # 0x10404
	.dword	16843780                        # 0x1010404
	.dword	65540                           # 0x10004
	.dword	16842752                        # 0x1010000
	.dword	16778244                        # 0x1000404
	.dword	16777220                        # 0x1000004
	.dword	1028                            # 0x404
	.dword	66564                           # 0x10404
	.dword	16843776                        # 0x1010400
	.dword	1028                            # 0x404
	.dword	16778240                        # 0x1000400
	.dword	16778240                        # 0x1000400
	.dword	0                               # 0x0
	.dword	65540                           # 0x10004
	.dword	66560                           # 0x10400
	.dword	0                               # 0x0
	.dword	16842756                        # 0x1010004
	.size	SB1, 512

	.type	LHs,@object                     # @LHs
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
LHs:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	256                             # 0x100
	.dword	257                             # 0x101
	.dword	65536                           # 0x10000
	.dword	65537                           # 0x10001
	.dword	65792                           # 0x10100
	.dword	65793                           # 0x10101
	.dword	16777216                        # 0x1000000
	.dword	16777217                        # 0x1000001
	.dword	16777472                        # 0x1000100
	.dword	16777473                        # 0x1000101
	.dword	16842752                        # 0x1010000
	.dword	16842753                        # 0x1010001
	.dword	16843008                        # 0x1010100
	.dword	16843009                        # 0x1010101
	.size	LHs, 128

	.type	RHs,@object                     # @RHs
	.p2align	3, 0x0
RHs:
	.dword	0                               # 0x0
	.dword	16777216                        # 0x1000000
	.dword	65536                           # 0x10000
	.dword	16842752                        # 0x1010000
	.dword	256                             # 0x100
	.dword	16777472                        # 0x1000100
	.dword	65792                           # 0x10100
	.dword	16843008                        # 0x1010100
	.dword	1                               # 0x1
	.dword	16777217                        # 0x1000001
	.dword	65537                           # 0x10001
	.dword	16842753                        # 0x1010001
	.dword	257                             # 0x101
	.dword	16777473                        # 0x1000101
	.dword	65793                           # 0x10101
	.dword	16843009                        # 0x1010101
	.size	RHs, 128

	.type	SB8,@object                     # @SB8
	.p2align	3, 0x0
SB8:
	.dword	268439616                       # 0x10001040
	.dword	4096                            # 0x1000
	.dword	262144                          # 0x40000
	.dword	268701760                       # 0x10041040
	.dword	268435456                       # 0x10000000
	.dword	268439616                       # 0x10001040
	.dword	64                              # 0x40
	.dword	268435456                       # 0x10000000
	.dword	262208                          # 0x40040
	.dword	268697600                       # 0x10040000
	.dword	268701760                       # 0x10041040
	.dword	266240                          # 0x41000
	.dword	268701696                       # 0x10041000
	.dword	266304                          # 0x41040
	.dword	4096                            # 0x1000
	.dword	64                              # 0x40
	.dword	268697600                       # 0x10040000
	.dword	268435520                       # 0x10000040
	.dword	268439552                       # 0x10001000
	.dword	4160                            # 0x1040
	.dword	266240                          # 0x41000
	.dword	262208                          # 0x40040
	.dword	268697664                       # 0x10040040
	.dword	268701696                       # 0x10041000
	.dword	4160                            # 0x1040
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	268697664                       # 0x10040040
	.dword	268435520                       # 0x10000040
	.dword	268439552                       # 0x10001000
	.dword	266304                          # 0x41040
	.dword	262144                          # 0x40000
	.dword	266304                          # 0x41040
	.dword	262144                          # 0x40000
	.dword	268701696                       # 0x10041000
	.dword	4096                            # 0x1000
	.dword	64                              # 0x40
	.dword	268697664                       # 0x10040040
	.dword	4096                            # 0x1000
	.dword	266304                          # 0x41040
	.dword	268439552                       # 0x10001000
	.dword	64                              # 0x40
	.dword	268435520                       # 0x10000040
	.dword	268697600                       # 0x10040000
	.dword	268697664                       # 0x10040040
	.dword	268435456                       # 0x10000000
	.dword	262144                          # 0x40000
	.dword	268439616                       # 0x10001040
	.dword	0                               # 0x0
	.dword	268701760                       # 0x10041040
	.dword	262208                          # 0x40040
	.dword	268435520                       # 0x10000040
	.dword	268697600                       # 0x10040000
	.dword	268439552                       # 0x10001000
	.dword	268439616                       # 0x10001040
	.dword	0                               # 0x0
	.dword	268701760                       # 0x10041040
	.dword	266240                          # 0x41000
	.dword	266240                          # 0x41000
	.dword	4160                            # 0x1040
	.dword	4160                            # 0x1040
	.dword	262208                          # 0x40040
	.dword	268435456                       # 0x10000000
	.dword	268701696                       # 0x10041000
	.size	SB8, 512

	.type	SB6,@object                     # @SB6
	.p2align	3, 0x0
SB6:
	.dword	536870928                       # 0x20000010
	.dword	541065216                       # 0x20400000
	.dword	16384                           # 0x4000
	.dword	541081616                       # 0x20404010
	.dword	541065216                       # 0x20400000
	.dword	16                              # 0x10
	.dword	541081616                       # 0x20404010
	.dword	4194304                         # 0x400000
	.dword	536887296                       # 0x20004000
	.dword	4210704                         # 0x404010
	.dword	4194304                         # 0x400000
	.dword	536870928                       # 0x20000010
	.dword	4194320                         # 0x400010
	.dword	536887296                       # 0x20004000
	.dword	536870912                       # 0x20000000
	.dword	16400                           # 0x4010
	.dword	0                               # 0x0
	.dword	4194320                         # 0x400010
	.dword	536887312                       # 0x20004010
	.dword	16384                           # 0x4000
	.dword	4210688                         # 0x404000
	.dword	536887312                       # 0x20004010
	.dword	16                              # 0x10
	.dword	541065232                       # 0x20400010
	.dword	541065232                       # 0x20400010
	.dword	0                               # 0x0
	.dword	4210704                         # 0x404010
	.dword	541081600                       # 0x20404000
	.dword	16400                           # 0x4010
	.dword	4210688                         # 0x404000
	.dword	541081600                       # 0x20404000
	.dword	536870912                       # 0x20000000
	.dword	536887296                       # 0x20004000
	.dword	16                              # 0x10
	.dword	541065232                       # 0x20400010
	.dword	4210688                         # 0x404000
	.dword	541081616                       # 0x20404010
	.dword	4194304                         # 0x400000
	.dword	16400                           # 0x4010
	.dword	536870928                       # 0x20000010
	.dword	4194304                         # 0x400000
	.dword	536887296                       # 0x20004000
	.dword	536870912                       # 0x20000000
	.dword	16400                           # 0x4010
	.dword	536870928                       # 0x20000010
	.dword	541081616                       # 0x20404010
	.dword	4210688                         # 0x404000
	.dword	541065216                       # 0x20400000
	.dword	4210704                         # 0x404010
	.dword	541081600                       # 0x20404000
	.dword	0                               # 0x0
	.dword	541065232                       # 0x20400010
	.dword	16                              # 0x10
	.dword	16384                           # 0x4000
	.dword	541065216                       # 0x20400000
	.dword	4210704                         # 0x404010
	.dword	16384                           # 0x4000
	.dword	4194320                         # 0x400010
	.dword	536887312                       # 0x20004010
	.dword	0                               # 0x0
	.dword	541081600                       # 0x20404000
	.dword	536870912                       # 0x20000000
	.dword	4194320                         # 0x400010
	.dword	536887312                       # 0x20004010
	.size	SB6, 512

	.type	SB4,@object                     # @SB4
	.p2align	3, 0x0
SB4:
	.dword	8396801                         # 0x802001
	.dword	8321                            # 0x2081
	.dword	8321                            # 0x2081
	.dword	128                             # 0x80
	.dword	8396928                         # 0x802080
	.dword	8388737                         # 0x800081
	.dword	8388609                         # 0x800001
	.dword	8193                            # 0x2001
	.dword	0                               # 0x0
	.dword	8396800                         # 0x802000
	.dword	8396800                         # 0x802000
	.dword	8396929                         # 0x802081
	.dword	129                             # 0x81
	.dword	0                               # 0x0
	.dword	8388736                         # 0x800080
	.dword	8388609                         # 0x800001
	.dword	1                               # 0x1
	.dword	8192                            # 0x2000
	.dword	8388608                         # 0x800000
	.dword	8396801                         # 0x802001
	.dword	128                             # 0x80
	.dword	8388608                         # 0x800000
	.dword	8193                            # 0x2001
	.dword	8320                            # 0x2080
	.dword	8388737                         # 0x800081
	.dword	1                               # 0x1
	.dword	8320                            # 0x2080
	.dword	8388736                         # 0x800080
	.dword	8192                            # 0x2000
	.dword	8396928                         # 0x802080
	.dword	8396929                         # 0x802081
	.dword	129                             # 0x81
	.dword	8388736                         # 0x800080
	.dword	8388609                         # 0x800001
	.dword	8396800                         # 0x802000
	.dword	8396929                         # 0x802081
	.dword	129                             # 0x81
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	8396800                         # 0x802000
	.dword	8320                            # 0x2080
	.dword	8388736                         # 0x800080
	.dword	8388737                         # 0x800081
	.dword	1                               # 0x1
	.dword	8396801                         # 0x802001
	.dword	8321                            # 0x2081
	.dword	8321                            # 0x2081
	.dword	128                             # 0x80
	.dword	8396929                         # 0x802081
	.dword	129                             # 0x81
	.dword	1                               # 0x1
	.dword	8192                            # 0x2000
	.dword	8388609                         # 0x800001
	.dword	8193                            # 0x2001
	.dword	8396928                         # 0x802080
	.dword	8388737                         # 0x800081
	.dword	8193                            # 0x2001
	.dword	8320                            # 0x2080
	.dword	8388608                         # 0x800000
	.dword	8396801                         # 0x802001
	.dword	128                             # 0x80
	.dword	8388608                         # 0x800000
	.dword	8192                            # 0x2000
	.dword	8396928                         # 0x802080
	.size	SB4, 512

	.type	SB2,@object                     # @SB2
	.p2align	3, 0x0
SB2:
	.dword	2148565024                      # 0x80108020
	.dword	2147516416                      # 0x80008000
	.dword	32768                           # 0x8000
	.dword	1081376                         # 0x108020
	.dword	1048576                         # 0x100000
	.dword	32                              # 0x20
	.dword	2148532256                      # 0x80100020
	.dword	2147516448                      # 0x80008020
	.dword	2147483680                      # 0x80000020
	.dword	2148565024                      # 0x80108020
	.dword	2148564992                      # 0x80108000
	.dword	2147483648                      # 0x80000000
	.dword	2147516416                      # 0x80008000
	.dword	1048576                         # 0x100000
	.dword	32                              # 0x20
	.dword	2148532256                      # 0x80100020
	.dword	1081344                         # 0x108000
	.dword	1048608                         # 0x100020
	.dword	2147516448                      # 0x80008020
	.dword	0                               # 0x0
	.dword	2147483648                      # 0x80000000
	.dword	32768                           # 0x8000
	.dword	1081376                         # 0x108020
	.dword	2148532224                      # 0x80100000
	.dword	1048608                         # 0x100020
	.dword	2147483680                      # 0x80000020
	.dword	0                               # 0x0
	.dword	1081344                         # 0x108000
	.dword	32800                           # 0x8020
	.dword	2148564992                      # 0x80108000
	.dword	2148532224                      # 0x80100000
	.dword	32800                           # 0x8020
	.dword	0                               # 0x0
	.dword	1081376                         # 0x108020
	.dword	2148532256                      # 0x80100020
	.dword	1048576                         # 0x100000
	.dword	2147516448                      # 0x80008020
	.dword	2148532224                      # 0x80100000
	.dword	2148564992                      # 0x80108000
	.dword	32768                           # 0x8000
	.dword	2148532224                      # 0x80100000
	.dword	2147516416                      # 0x80008000
	.dword	32                              # 0x20
	.dword	2148565024                      # 0x80108020
	.dword	1081376                         # 0x108020
	.dword	32                              # 0x20
	.dword	32768                           # 0x8000
	.dword	2147483648                      # 0x80000000
	.dword	32800                           # 0x8020
	.dword	2148564992                      # 0x80108000
	.dword	1048576                         # 0x100000
	.dword	2147483680                      # 0x80000020
	.dword	1048608                         # 0x100020
	.dword	2147516448                      # 0x80008020
	.dword	2147483680                      # 0x80000020
	.dword	1048608                         # 0x100020
	.dword	1081344                         # 0x108000
	.dword	0                               # 0x0
	.dword	2147516416                      # 0x80008000
	.dword	32800                           # 0x8020
	.dword	2147483648                      # 0x80000000
	.dword	2148532256                      # 0x80100020
	.dword	2148565024                      # 0x80108020
	.dword	1081344                         # 0x108000
	.size	SB2, 512

	.type	SB7,@object                     # @SB7
	.p2align	3, 0x0
SB7:
	.dword	2097152                         # 0x200000
	.dword	69206018                        # 0x4200002
	.dword	67110914                        # 0x4000802
	.dword	0                               # 0x0
	.dword	2048                            # 0x800
	.dword	67110914                        # 0x4000802
	.dword	2099202                         # 0x200802
	.dword	69208064                        # 0x4200800
	.dword	69208066                        # 0x4200802
	.dword	2097152                         # 0x200000
	.dword	0                               # 0x0
	.dword	67108866                        # 0x4000002
	.dword	2                               # 0x2
	.dword	67108864                        # 0x4000000
	.dword	69206018                        # 0x4200002
	.dword	2050                            # 0x802
	.dword	67110912                        # 0x4000800
	.dword	2099202                         # 0x200802
	.dword	2097154                         # 0x200002
	.dword	67110912                        # 0x4000800
	.dword	67108866                        # 0x4000002
	.dword	69206016                        # 0x4200000
	.dword	69208064                        # 0x4200800
	.dword	2097154                         # 0x200002
	.dword	69206016                        # 0x4200000
	.dword	2048                            # 0x800
	.dword	2050                            # 0x802
	.dword	69208066                        # 0x4200802
	.dword	2099200                         # 0x200800
	.dword	2                               # 0x2
	.dword	67108864                        # 0x4000000
	.dword	2099200                         # 0x200800
	.dword	67108864                        # 0x4000000
	.dword	2099200                         # 0x200800
	.dword	2097152                         # 0x200000
	.dword	67110914                        # 0x4000802
	.dword	67110914                        # 0x4000802
	.dword	69206018                        # 0x4200002
	.dword	69206018                        # 0x4200002
	.dword	2                               # 0x2
	.dword	2097154                         # 0x200002
	.dword	67108864                        # 0x4000000
	.dword	67110912                        # 0x4000800
	.dword	2097152                         # 0x200000
	.dword	69208064                        # 0x4200800
	.dword	2050                            # 0x802
	.dword	2099202                         # 0x200802
	.dword	69208064                        # 0x4200800
	.dword	2050                            # 0x802
	.dword	67108866                        # 0x4000002
	.dword	69208066                        # 0x4200802
	.dword	69206016                        # 0x4200000
	.dword	2099200                         # 0x200800
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	69208066                        # 0x4200802
	.dword	0                               # 0x0
	.dword	2099202                         # 0x200802
	.dword	69206016                        # 0x4200000
	.dword	2048                            # 0x800
	.dword	67108866                        # 0x4000002
	.dword	67110912                        # 0x4000800
	.dword	2048                            # 0x800
	.dword	2097154                         # 0x200002
	.size	SB7, 512

	.type	SB5,@object                     # @SB5
	.p2align	3, 0x0
SB5:
	.dword	256                             # 0x100
	.dword	34078976                        # 0x2080100
	.dword	34078720                        # 0x2080000
	.dword	1107296512                      # 0x42000100
	.dword	524288                          # 0x80000
	.dword	256                             # 0x100
	.dword	1073741824                      # 0x40000000
	.dword	34078720                        # 0x2080000
	.dword	1074266368                      # 0x40080100
	.dword	524288                          # 0x80000
	.dword	33554688                        # 0x2000100
	.dword	1074266368                      # 0x40080100
	.dword	1107296512                      # 0x42000100
	.dword	1107820544                      # 0x42080000
	.dword	524544                          # 0x80100
	.dword	1073741824                      # 0x40000000
	.dword	33554432                        # 0x2000000
	.dword	1074266112                      # 0x40080000
	.dword	1074266112                      # 0x40080000
	.dword	0                               # 0x0
	.dword	1073742080                      # 0x40000100
	.dword	1107820800                      # 0x42080100
	.dword	1107820800                      # 0x42080100
	.dword	33554688                        # 0x2000100
	.dword	1107820544                      # 0x42080000
	.dword	1073742080                      # 0x40000100
	.dword	0                               # 0x0
	.dword	1107296256                      # 0x42000000
	.dword	34078976                        # 0x2080100
	.dword	33554432                        # 0x2000000
	.dword	1107296256                      # 0x42000000
	.dword	524544                          # 0x80100
	.dword	524288                          # 0x80000
	.dword	1107296512                      # 0x42000100
	.dword	256                             # 0x100
	.dword	33554432                        # 0x2000000
	.dword	1073741824                      # 0x40000000
	.dword	34078720                        # 0x2080000
	.dword	1107296512                      # 0x42000100
	.dword	1074266368                      # 0x40080100
	.dword	33554688                        # 0x2000100
	.dword	1073741824                      # 0x40000000
	.dword	1107820544                      # 0x42080000
	.dword	34078976                        # 0x2080100
	.dword	1074266368                      # 0x40080100
	.dword	256                             # 0x100
	.dword	33554432                        # 0x2000000
	.dword	1107820544                      # 0x42080000
	.dword	1107820800                      # 0x42080100
	.dword	524544                          # 0x80100
	.dword	1107296256                      # 0x42000000
	.dword	1107820800                      # 0x42080100
	.dword	34078720                        # 0x2080000
	.dword	0                               # 0x0
	.dword	1074266112                      # 0x40080000
	.dword	1107296256                      # 0x42000000
	.dword	524544                          # 0x80100
	.dword	33554688                        # 0x2000100
	.dword	1073742080                      # 0x40000100
	.dword	524288                          # 0x80000
	.dword	0                               # 0x0
	.dword	1074266112                      # 0x40080000
	.dword	34078976                        # 0x2080100
	.dword	1073742080                      # 0x40000100
	.size	SB5, 512

	.type	SB3,@object                     # @SB3
	.p2align	3, 0x0
SB3:
	.dword	520                             # 0x208
	.dword	134349312                       # 0x8020200
	.dword	0                               # 0x0
	.dword	134348808                       # 0x8020008
	.dword	134218240                       # 0x8000200
	.dword	0                               # 0x0
	.dword	131592                          # 0x20208
	.dword	134218240                       # 0x8000200
	.dword	131080                          # 0x20008
	.dword	134217736                       # 0x8000008
	.dword	134217736                       # 0x8000008
	.dword	131072                          # 0x20000
	.dword	134349320                       # 0x8020208
	.dword	131080                          # 0x20008
	.dword	134348800                       # 0x8020000
	.dword	520                             # 0x208
	.dword	134217728                       # 0x8000000
	.dword	8                               # 0x8
	.dword	134349312                       # 0x8020200
	.dword	512                             # 0x200
	.dword	131584                          # 0x20200
	.dword	134348800                       # 0x8020000
	.dword	134348808                       # 0x8020008
	.dword	131592                          # 0x20208
	.dword	134218248                       # 0x8000208
	.dword	131584                          # 0x20200
	.dword	131072                          # 0x20000
	.dword	134218248                       # 0x8000208
	.dword	8                               # 0x8
	.dword	134349320                       # 0x8020208
	.dword	512                             # 0x200
	.dword	134217728                       # 0x8000000
	.dword	134349312                       # 0x8020200
	.dword	134217728                       # 0x8000000
	.dword	131080                          # 0x20008
	.dword	520                             # 0x208
	.dword	131072                          # 0x20000
	.dword	134349312                       # 0x8020200
	.dword	134218240                       # 0x8000200
	.dword	0                               # 0x0
	.dword	512                             # 0x200
	.dword	131080                          # 0x20008
	.dword	134349320                       # 0x8020208
	.dword	134218240                       # 0x8000200
	.dword	134217736                       # 0x8000008
	.dword	512                             # 0x200
	.dword	0                               # 0x0
	.dword	134348808                       # 0x8020008
	.dword	134218248                       # 0x8000208
	.dword	131072                          # 0x20000
	.dword	134217728                       # 0x8000000
	.dword	134349320                       # 0x8020208
	.dword	8                               # 0x8
	.dword	131592                          # 0x20208
	.dword	131584                          # 0x20200
	.dword	134217736                       # 0x8000008
	.dword	134348800                       # 0x8020000
	.dword	134218248                       # 0x8000208
	.dword	520                             # 0x208
	.dword	134348800                       # 0x8020000
	.dword	131592                          # 0x20208
	.dword	8                               # 0x8
	.dword	134348808                       # 0x8020008
	.dword	131584                          # 0x20200
	.size	SB3, 512

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n Triple-DES Monte Carlo Test (ECB mode) - "
	.size	.L.str, 44

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" Test %d, key size = %3d bits: "
	.size	.L.str.3, 32

	.type	DES3_keys,@object               # @DES3_keys
	.data
DES3_keys:
	.ascii	"\001#Eg\211\253\315\357"
	.ascii	"#Eg\211\253\315\357\001"
	.ascii	"Eg\211\253\315\357\001#"
	.size	DES3_keys, 24

	.type	DES3_enc_test,@object           # @DES3_enc_test
DES3_enc_test:
	.ascii	"j*\031\364\036\312\205K"
	.ascii	"\003\346\237[\372X\353B"
	.ascii	"\335\027\350\270\2647\3222"
	.size	DES3_enc_test, 24

	.type	DES3_dec_test,@object           # @DES3_dec_test
DES3_dec_test:
	.ascii	"\315\326O/\224'\301]"
	.ascii	"i\226\310\372G\242\253\353"
	.ascii	"\203%9vD\t\032\n"
	.size	DES3_dec_test, 24

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"encryption\n"
	.size	.Lstr, 12

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"decryption\n"
	.size	.Lstr.1, 12

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"passed."
	.size	.Lstr.2, 8

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"failed!"
	.size	.Lstr.3, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DES3_keys
	.addrsig_sym DES3_enc_test
	.addrsig_sym DES3_dec_test
