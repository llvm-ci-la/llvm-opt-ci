	.file	"builtin-bitops-1.c"
	.text
	.globl	my_ffs                          # -- Begin function my_ffs
	.p2align	5
	.type	my_ffs,@function
my_ffs:                                 # @my_ffs
# %bb.0:
	beqz	$a0, .LBB0_5
# %bb.1:                                # %.preheader.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	srl.w	$a2, $a0, $a1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a1, $a1, 1
	ori	$a2, $zero, 32
	bne	$a1, $a2, .LBB0_2
# %bb.4:
	addi.w	$a0, $a2, 1
	ret
.LBB0_5:
	move	$a0, $zero
	ret
.LBB0_6:
	addi.w	$a0, $a1, 1
	ret
.Lfunc_end0:
	.size	my_ffs, .Lfunc_end0-my_ffs
                                        # -- End function
	.globl	my_ctz                          # -- Begin function my_ctz
	.p2align	5
	.type	my_ctz,@function
my_ctz:                                 # @my_ctz
# %bb.0:
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	srl.w	$a1, $a0, $a2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	addi.w	$a2, $a2, 1
	ori	$a1, $zero, 32
	bne	$a2, $a1, .LBB1_1
# %bb.3:
	move	$a0, $a1
	ret
.LBB1_4:
	move	$a0, $a2
	ret
.Lfunc_end1:
	.size	my_ctz, .Lfunc_end1-my_ctz
                                        # -- End function
	.globl	my_clz                          # -- Begin function my_clz
	.p2align	5
	.type	my_clz,@function
my_clz:                                 # @my_clz
# %bb.0:
	move	$a2, $zero
	lu12i.w	$a3, -524288
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	sll.w	$a1, $a0, $a2
	and	$a1, $a1, $a3
	addi.w	$a1, $a1, 0
	bnez	$a1, .LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	addi.w	$a2, $a2, 1
	ori	$a1, $zero, 32
	bne	$a2, $a1, .LBB2_1
# %bb.3:
	move	$a0, $a1
	ret
.LBB2_4:
	move	$a0, $a2
	ret
.Lfunc_end2:
	.size	my_clz, .Lfunc_end2-my_clz
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clrsb
.LCPI3_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_1:
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
	.globl	my_clrsb
	.p2align	5
	.type	my_clrsb,@function
my_clrsb:                               # @my_clrsb
# %bb.0:                                # %vector.ph
	bstrpick.d	$a2, $a0, 31, 31
	vreplgr2vr.w	$vr0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI3_0)
	vreplgr2vr.w	$vr2, $a0
	addi.w	$a1, $zero, -4
	vrepli.w	$vr3, 31
	vrepli.w	$vr4, 1
	vrepli.b	$vr5, -1
	ori	$a3, $zero, 20
	.p2align	4, , 16
.LBB3_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	vsub.w	$vr6, $vr3, $vr1
	vsrl.w	$vr6, $vr2, $vr6
	vand.v	$vr6, $vr6, $vr4
	vseq.w	$vr6, $vr6, $vr0
	vxor.v	$vr6, $vr6, $vr5
	vmskltz.w	$vr7, $vr6
	vpickve2gr.hu	$a5, $vr7, 0
	addi.w	$a1, $a1, 4
	bnez	$a5, .LBB3_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB3_1 Depth=1
	vaddi.wu	$vr1, $vr1, 4
	bne	$a4, $a3, .LBB3_1
.LBB3_3:                                # %middle.split
	andi	$a3, $a5, 15
	beqz	$a3, .LBB3_5
# %bb.4:                                # %vector.early.exit
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	vshuf.b	$vr0, $vr0, $vr6, $vr0
	lu12i.w	$a0, 4128
	ori	$a0, $a0, 772
	vreplgr2vr.w	$vr1, $a0
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 0
	ori	$a2, $zero, 4
	sub.d	$a0, $a2, $a0
	andi	$a0, $a0, 255
	add.w	$a0, $a0, $a1
	ret
.LBB3_5:                                # %scalar.ph
	bstrpick.d	$a3, $a0, 2, 2
	addi.w	$a2, $a2, 0
	ori	$a1, $zero, 28
	bne	$a3, $a2, .LBB3_8
# %bb.6:                                # %scalar.ph.1
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 29
	bne	$a3, $a2, .LBB3_8
# %bb.7:                                # %scalar.ph.2
	andi	$a0, $a0, 1
	xor	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 30
.LBB3_8:                                # %.loopexit
	move	$a0, $a1
	ret
.Lfunc_end3:
	.size	my_clrsb, .Lfunc_end3-my_clrsb
                                        # -- End function
	.globl	my_popcount                     # -- Begin function my_popcount
	.p2align	5
	.type	my_popcount,@function
my_popcount:                            # @my_popcount
# %bb.0:
	andi	$a1, $a0, 1
	bstrpick.d	$a2, $a0, 1, 1
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 2, 2
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 3, 3
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 4, 4
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 5, 5
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 6, 6
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 7, 7
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 8, 8
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 9, 9
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 10, 10
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 11, 11
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 12, 12
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 13, 13
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 14, 14
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 15, 15
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 16, 16
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 17, 17
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 18, 18
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 19, 19
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 20, 20
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 21, 21
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 22, 22
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 23, 23
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 24, 24
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 25, 25
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 26, 26
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 27, 27
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 28, 28
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 29, 29
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 30, 30
	add.d	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 31
	add.w	$a0, $a0, $a1
	ret
.Lfunc_end4:
	.size	my_popcount, .Lfunc_end4-my_popcount
                                        # -- End function
	.globl	my_parity                       # -- Begin function my_parity
	.p2align	5
	.type	my_parity,@function
my_parity:                              # @my_parity
# %bb.0:
	bstrpick.d	$a1, $a0, 31, 1
	add.d	$a1, $a1, $a0
	bstrpick.d	$a2, $a0, 31, 2
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 3
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 4
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 5
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 6
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 7
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 8
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 9
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 10
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 11
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 12
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 13
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 14
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 15
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 16
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 17
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 18
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 19
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 20
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 21
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 22
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 23
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 24
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 25
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 26
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 27
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a0, 31, 28
	add.d	$a1, $a2, $a1
	srli.d	$a2, $a0, 29
	add.d	$a1, $a2, $a1
	srli.d	$a2, $a0, 30
	add.d	$a1, $a2, $a1
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	ret
.Lfunc_end5:
	.size	my_parity, .Lfunc_end5-my_parity
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ffsl
.LCPI6_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI6_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI6_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI6_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI6_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI6_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI6_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI6_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ffsl
	.p2align	5
	.type	my_ffsl,@function
my_ffsl:                                # @my_ffsl
# %bb.0:
	beqz	$a0, .LBB6_6
# %bb.1:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_1)
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI6_2)
	pcalau12i	$a1, %pc_hi20(.LCPI6_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI6_3)
	pcalau12i	$a1, %pc_hi20(.LCPI6_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI6_4)
	pcalau12i	$a1, %pc_hi20(.LCPI6_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI6_5)
	pcalau12i	$a1, %pc_hi20(.LCPI6_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI6_6)
	pcalau12i	$a1, %pc_hi20(.LCPI6_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI6_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 15
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB6_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB6_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB6_2 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB6_2
.LBB6_4:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB6_7
# %bb.5:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI6_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB6_6:
	move	$a0, $zero
	ret
.LBB6_7:
	ori	$a0, $zero, 65
	ret
.Lfunc_end6:
	.size	my_ffsl, .Lfunc_end6-my_ffsl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ctzl
.LCPI7_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI7_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI7_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI7_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI7_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI7_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI7_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI7_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ctzl
	.p2align	5
	.type	my_ctzl,@function
my_ctzl:                                # @my_ctzl
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_0)
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_1)
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI7_2)
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI7_3)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI7_4)
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI7_5)
	pcalau12i	$a1, %pc_hi20(.LCPI7_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI7_6)
	pcalau12i	$a1, %pc_hi20(.LCPI7_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI7_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB7_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB7_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB7_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB7_1
.LBB7_3:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB7_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI7_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB7_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end7:
	.size	my_ctzl, .Lfunc_end7-my_ctzl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clzl
.LCPI8_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI8_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI8_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI8_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI8_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI8_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI8_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI8_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI8_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_clzl
	.p2align	5
	.type	my_clzl,@function
my_clzl:                                # @my_clzl
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_0)
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI8_1)
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI8_2)
	pcalau12i	$a1, %pc_hi20(.LCPI8_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI8_3)
	pcalau12i	$a1, %pc_hi20(.LCPI8_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI8_4)
	pcalau12i	$a1, %pc_hi20(.LCPI8_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI8_5)
	pcalau12i	$a1, %pc_hi20(.LCPI8_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI8_6)
	pcalau12i	$a1, %pc_hi20(.LCPI8_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI8_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	lu52i.d	$a1, $zero, -2048
	vreplgr2vr.d	$vr9, $a1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB8_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsrl.d	$vr11, $vr9, $vr0
	vsrl.d	$vr12, $vr9, $vr1
	vsrl.d	$vr13, $vr9, $vr2
	vsrl.d	$vr14, $vr9, $vr3
	vsrl.d	$vr15, $vr9, $vr4
	vsrl.d	$vr16, $vr9, $vr5
	vsrl.d	$vr17, $vr9, $vr6
	vsrl.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB8_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB8_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB8_1
.LBB8_3:                                # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB8_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI8_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB8_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end8:
	.size	my_clzl, .Lfunc_end8-my_clzl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clrsbl
.LCPI9_0:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI9_1:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI9_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI9_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.text
	.globl	my_clrsbl
	.p2align	5
	.type	my_clrsbl,@function
my_clrsbl:                              # @my_clrsbl
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	srli.d	$a2, $a0, 63
	vreplgr2vr.d	$vr0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI9_0)
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI9_1)
	pcalau12i	$a1, %pc_hi20(.LCPI9_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI9_2)
	pcalau12i	$a1, %pc_hi20(.LCPI9_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI9_3)
	vreplgr2vr.d	$vr5, $a0
	addi.w	$a1, $zero, -7
	vrepli.d	$vr6, 63
	vrepli.d	$vr7, 1
	vrepli.b	$vr8, -1
	ori	$a3, $zero, 41
	.p2align	4, , 16
.LBB9_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	vsub.d	$vr9, $vr6, $vr4
	vsub.d	$vr10, $vr6, $vr3
	vsub.d	$vr11, $vr6, $vr2
	vsub.d	$vr12, $vr6, $vr1
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr11, $vr5, $vr11
	vsrl.d	$vr10, $vr5, $vr10
	vsrl.d	$vr9, $vr5, $vr9
	vand.v	$vr13, $vr12, $vr7
	vand.v	$vr11, $vr11, $vr7
	vand.v	$vr12, $vr10, $vr7
	vand.v	$vr9, $vr9, $vr7
	vseq.d	$vr9, $vr9, $vr0
	vxor.v	$vr10, $vr9, $vr8
	vseq.d	$vr9, $vr12, $vr0
	vxor.v	$vr9, $vr9, $vr8
	vpickev.w	$vr12, $vr9, $vr10
	vpickve2gr.h	$a1, $vr12, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a5, $vr10, 0
	bstrins.d	$a5, $a1, 63, 1
	vpickve2gr.h	$a1, $vr12, 4
	bstrins.d	$a5, $a1, 2, 2
	vpickve2gr.h	$a1, $vr12, 6
	bstrins.d	$a5, $a1, 3, 3
	vseq.d	$vr11, $vr11, $vr0
	vxor.v	$vr12, $vr11, $vr8
	vseq.d	$vr11, $vr13, $vr0
	vxor.v	$vr11, $vr11, $vr8
	vpickev.w	$vr13, $vr11, $vr12
	vpickve2gr.h	$a1, $vr13, 0
	bstrins.d	$a5, $a1, 4, 4
	vpickve2gr.h	$a1, $vr13, 2
	bstrins.d	$a5, $a1, 5, 5
	vpickve2gr.h	$a1, $vr13, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a5, $a1
	vpickve2gr.h	$a5, $vr13, 6
	slli.d	$a5, $a5, 7
	or	$a1, $a1, $a5
	andi	$a5, $a1, 255
	addi.d	$a1, $a4, 8
	bnez	$a5, .LBB9_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB9_1 Depth=1
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	bne	$a4, $a3, .LBB9_1
.LBB9_3:                                # %middle.split
	beqz	$a5, .LBB9_5
# %bb.4:                                # %vector.early.exit
	vpickve2gr.d	$a0, $vr10, 0
	vinsgr2vr.b	$vr0, $a0, 0
	vpickve2gr.d	$a0, $vr10, 1
	vinsgr2vr.b	$vr0, $a0, 1
	vpickve2gr.d	$a0, $vr9, 0
	vinsgr2vr.b	$vr0, $a0, 2
	vpickve2gr.d	$a0, $vr9, 1
	vinsgr2vr.b	$vr0, $a0, 3
	vpickve2gr.d	$a0, $vr12, 0
	vinsgr2vr.b	$vr0, $a0, 4
	vpickve2gr.d	$a0, $vr12, 1
	vinsgr2vr.b	$vr0, $a0, 5
	vpickve2gr.d	$a0, $vr11, 0
	vinsgr2vr.b	$vr0, $a0, 6
	vpickve2gr.d	$a0, $vr11, 1
	vinsgr2vr.b	$vr0, $a0, 7
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr1, $a0
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 0
	ori	$a2, $zero, 8
	sub.d	$a0, $a2, $a0
	andi	$a0, $a0, 255
	add.d	$a1, $a0, $a1
	b	.LBB9_12
.LBB9_5:                                # %scalar.ph
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 57
	bne	$a3, $a2, .LBB9_12
# %bb.6:                                # %scalar.ph.1
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 58
	bne	$a3, $a2, .LBB9_12
# %bb.7:                                # %scalar.ph.2
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 59
	bne	$a3, $a2, .LBB9_12
# %bb.8:                                # %scalar.ph.3
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 60
	bne	$a3, $a2, .LBB9_12
# %bb.9:                                # %scalar.ph.4
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 61
	bne	$a3, $a2, .LBB9_12
# %bb.10:                               # %scalar.ph.5
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 62
	bne	$a3, $a2, .LBB9_12
# %bb.11:                               # %scalar.ph.6
	andi	$a0, $a0, 1
	ori	$a1, $zero, 63
	beq	$a0, $a2, .LBB9_13
.LBB9_12:                               # %.split.loop.exit
	addi.w	$a1, $a1, -1
.LBB9_13:                               # %.split.loop.exit10
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	my_clrsbl, .Lfunc_end9-my_clrsbl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_popcountl
.LCPI10_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI10_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI10_2:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI10_3:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI10_4:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI10_5:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI10_6:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI10_7:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI10_8:
	.dword	16                              # 0x10
	.dword	17                              # 0x11
.LCPI10_9:
	.dword	18                              # 0x12
	.dword	19                              # 0x13
.LCPI10_10:
	.dword	20                              # 0x14
	.dword	21                              # 0x15
.LCPI10_11:
	.dword	22                              # 0x16
	.dword	23                              # 0x17
.LCPI10_12:
	.dword	24                              # 0x18
	.dword	25                              # 0x19
.LCPI10_13:
	.dword	26                              # 0x1a
	.dword	27                              # 0x1b
.LCPI10_14:
	.dword	28                              # 0x1c
	.dword	29                              # 0x1d
.LCPI10_15:
	.dword	30                              # 0x1e
	.dword	31                              # 0x1f
.LCPI10_16:
	.dword	32                              # 0x20
	.dword	33                              # 0x21
.LCPI10_17:
	.dword	34                              # 0x22
	.dword	35                              # 0x23
.LCPI10_18:
	.dword	36                              # 0x24
	.dword	37                              # 0x25
.LCPI10_19:
	.dword	38                              # 0x26
	.dword	39                              # 0x27
.LCPI10_20:
	.dword	40                              # 0x28
	.dword	41                              # 0x29
.LCPI10_21:
	.dword	42                              # 0x2a
	.dword	43                              # 0x2b
.LCPI10_22:
	.dword	44                              # 0x2c
	.dword	45                              # 0x2d
.LCPI10_23:
	.dword	46                              # 0x2e
	.dword	47                              # 0x2f
.LCPI10_24:
	.dword	48                              # 0x30
	.dword	49                              # 0x31
.LCPI10_25:
	.dword	50                              # 0x32
	.dword	51                              # 0x33
.LCPI10_26:
	.dword	52                              # 0x34
	.dword	53                              # 0x35
.LCPI10_27:
	.dword	54                              # 0x36
	.dword	55                              # 0x37
.LCPI10_28:
	.dword	56                              # 0x38
	.dword	57                              # 0x39
.LCPI10_29:
	.dword	58                              # 0x3a
	.dword	59                              # 0x3b
.LCPI10_30:
	.dword	60                              # 0x3c
	.dword	61                              # 0x3d
.LCPI10_31:
	.dword	62                              # 0x3e
	.dword	63                              # 0x3f
	.text
	.globl	my_popcountl
	.p2align	5
	.type	my_popcountl,@function
my_popcountl:                           # @my_popcountl
# %bb.0:                                # %vector.ph
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI10_0)
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI10_1)
	pcalau12i	$a0, %pc_hi20(.LCPI10_2)
	vld	$vr3, $a0, %pc_lo12(.LCPI10_2)
	pcalau12i	$a0, %pc_hi20(.LCPI10_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_3)
	vsrl.d	$vr1, $vr0, $vr1
	vsrl.d	$vr2, $vr0, $vr2
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vpickev.w	$vr2, $vr2, $vr1
	vpickev.w	$vr3, $vr4, $vr3
	vrepli.w	$vr1, 1
	vand.v	$vr2, $vr2, $vr1
	vand.v	$vr3, $vr3, $vr1
	pcalau12i	$a0, %pc_hi20(.LCPI10_4)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_4)
	pcalau12i	$a0, %pc_hi20(.LCPI10_5)
	vld	$vr5, $a0, %pc_lo12(.LCPI10_5)
	pcalau12i	$a0, %pc_hi20(.LCPI10_6)
	vld	$vr6, $a0, %pc_lo12(.LCPI10_6)
	pcalau12i	$a0, %pc_hi20(.LCPI10_7)
	vld	$vr7, $a0, %pc_lo12(.LCPI10_7)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI10_8)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_8)
	pcalau12i	$a0, %pc_hi20(.LCPI10_9)
	vld	$vr5, $a0, %pc_lo12(.LCPI10_9)
	pcalau12i	$a0, %pc_hi20(.LCPI10_10)
	vld	$vr6, $a0, %pc_lo12(.LCPI10_10)
	pcalau12i	$a0, %pc_hi20(.LCPI10_11)
	vld	$vr7, $a0, %pc_lo12(.LCPI10_11)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI10_12)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_12)
	pcalau12i	$a0, %pc_hi20(.LCPI10_13)
	vld	$vr5, $a0, %pc_lo12(.LCPI10_13)
	pcalau12i	$a0, %pc_hi20(.LCPI10_14)
	vld	$vr6, $a0, %pc_lo12(.LCPI10_14)
	pcalau12i	$a0, %pc_hi20(.LCPI10_15)
	vld	$vr7, $a0, %pc_lo12(.LCPI10_15)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI10_16)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_16)
	pcalau12i	$a0, %pc_hi20(.LCPI10_17)
	vld	$vr5, $a0, %pc_lo12(.LCPI10_17)
	pcalau12i	$a0, %pc_hi20(.LCPI10_18)
	vld	$vr6, $a0, %pc_lo12(.LCPI10_18)
	pcalau12i	$a0, %pc_hi20(.LCPI10_19)
	vld	$vr7, $a0, %pc_lo12(.LCPI10_19)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI10_20)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_20)
	pcalau12i	$a0, %pc_hi20(.LCPI10_21)
	vld	$vr5, $a0, %pc_lo12(.LCPI10_21)
	pcalau12i	$a0, %pc_hi20(.LCPI10_22)
	vld	$vr6, $a0, %pc_lo12(.LCPI10_22)
	pcalau12i	$a0, %pc_hi20(.LCPI10_23)
	vld	$vr7, $a0, %pc_lo12(.LCPI10_23)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI10_24)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_24)
	pcalau12i	$a0, %pc_hi20(.LCPI10_25)
	vld	$vr5, $a0, %pc_lo12(.LCPI10_25)
	pcalau12i	$a0, %pc_hi20(.LCPI10_26)
	vld	$vr6, $a0, %pc_lo12(.LCPI10_26)
	pcalau12i	$a0, %pc_hi20(.LCPI10_27)
	vld	$vr7, $a0, %pc_lo12(.LCPI10_27)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI10_28)
	vld	$vr4, $a0, %pc_lo12(.LCPI10_28)
	pcalau12i	$a0, %pc_hi20(.LCPI10_29)
	vld	$vr5, $a0, %pc_lo12(.LCPI10_29)
	pcalau12i	$a0, %pc_hi20(.LCPI10_30)
	vld	$vr6, $a0, %pc_lo12(.LCPI10_30)
	pcalau12i	$a0, %pc_hi20(.LCPI10_31)
	vld	$vr7, $a0, %pc_lo12(.LCPI10_31)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr0, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr0, $vr0, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr0, $vr0, $vr1
	vadd.w	$vr1, $vr4, $vr2
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	addi.w	$a0, $a0, 0
	ret
.Lfunc_end10:
	.size	my_popcountl, .Lfunc_end10-my_popcountl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_parityl
.LCPI11_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI11_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI11_2:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI11_3:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI11_4:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI11_5:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI11_6:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI11_7:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI11_8:
	.dword	16                              # 0x10
	.dword	17                              # 0x11
.LCPI11_9:
	.dword	18                              # 0x12
	.dword	19                              # 0x13
.LCPI11_10:
	.dword	20                              # 0x14
	.dword	21                              # 0x15
.LCPI11_11:
	.dword	22                              # 0x16
	.dword	23                              # 0x17
.LCPI11_12:
	.dword	24                              # 0x18
	.dword	25                              # 0x19
.LCPI11_13:
	.dword	26                              # 0x1a
	.dword	27                              # 0x1b
.LCPI11_14:
	.dword	28                              # 0x1c
	.dword	29                              # 0x1d
.LCPI11_15:
	.dword	30                              # 0x1e
	.dword	31                              # 0x1f
.LCPI11_16:
	.dword	32                              # 0x20
	.dword	33                              # 0x21
.LCPI11_17:
	.dword	34                              # 0x22
	.dword	35                              # 0x23
.LCPI11_18:
	.dword	36                              # 0x24
	.dword	37                              # 0x25
.LCPI11_19:
	.dword	38                              # 0x26
	.dword	39                              # 0x27
.LCPI11_20:
	.dword	40                              # 0x28
	.dword	41                              # 0x29
.LCPI11_21:
	.dword	42                              # 0x2a
	.dword	43                              # 0x2b
.LCPI11_22:
	.dword	44                              # 0x2c
	.dword	45                              # 0x2d
.LCPI11_23:
	.dword	46                              # 0x2e
	.dword	47                              # 0x2f
.LCPI11_24:
	.dword	48                              # 0x30
	.dword	49                              # 0x31
.LCPI11_25:
	.dword	50                              # 0x32
	.dword	51                              # 0x33
.LCPI11_26:
	.dword	52                              # 0x34
	.dword	53                              # 0x35
.LCPI11_27:
	.dword	54                              # 0x36
	.dword	55                              # 0x37
.LCPI11_28:
	.dword	56                              # 0x38
	.dword	57                              # 0x39
.LCPI11_29:
	.dword	58                              # 0x3a
	.dword	59                              # 0x3b
.LCPI11_30:
	.dword	60                              # 0x3c
	.dword	61                              # 0x3d
.LCPI11_31:
	.dword	62                              # 0x3e
	.dword	63                              # 0x3f
	.text
	.globl	my_parityl
	.p2align	5
	.type	my_parityl,@function
my_parityl:                             # @my_parityl
# %bb.0:                                # %vector.ph
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI11_1)
	pcalau12i	$a0, %pc_hi20(.LCPI11_2)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_2)
	pcalau12i	$a0, %pc_hi20(.LCPI11_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_3)
	vsrl.d	$vr1, $vr0, $vr1
	vsrl.d	$vr2, $vr0, $vr2
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vpickev.w	$vr1, $vr2, $vr1
	vpickev.w	$vr2, $vr4, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI11_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_4)
	pcalau12i	$a0, %pc_hi20(.LCPI11_5)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_5)
	pcalau12i	$a0, %pc_hi20(.LCPI11_6)
	vld	$vr5, $a0, %pc_lo12(.LCPI11_6)
	pcalau12i	$a0, %pc_hi20(.LCPI11_7)
	vld	$vr6, $a0, %pc_lo12(.LCPI11_7)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI11_8)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_8)
	pcalau12i	$a0, %pc_hi20(.LCPI11_9)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_9)
	pcalau12i	$a0, %pc_hi20(.LCPI11_10)
	vld	$vr5, $a0, %pc_lo12(.LCPI11_10)
	pcalau12i	$a0, %pc_hi20(.LCPI11_11)
	vld	$vr6, $a0, %pc_lo12(.LCPI11_11)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI11_12)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_12)
	pcalau12i	$a0, %pc_hi20(.LCPI11_13)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_13)
	pcalau12i	$a0, %pc_hi20(.LCPI11_14)
	vld	$vr5, $a0, %pc_lo12(.LCPI11_14)
	pcalau12i	$a0, %pc_hi20(.LCPI11_15)
	vld	$vr6, $a0, %pc_lo12(.LCPI11_15)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI11_16)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_16)
	pcalau12i	$a0, %pc_hi20(.LCPI11_17)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_17)
	pcalau12i	$a0, %pc_hi20(.LCPI11_18)
	vld	$vr5, $a0, %pc_lo12(.LCPI11_18)
	pcalau12i	$a0, %pc_hi20(.LCPI11_19)
	vld	$vr6, $a0, %pc_lo12(.LCPI11_19)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI11_20)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_20)
	pcalau12i	$a0, %pc_hi20(.LCPI11_21)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_21)
	pcalau12i	$a0, %pc_hi20(.LCPI11_22)
	vld	$vr5, $a0, %pc_lo12(.LCPI11_22)
	pcalau12i	$a0, %pc_hi20(.LCPI11_23)
	vld	$vr6, $a0, %pc_lo12(.LCPI11_23)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI11_24)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_24)
	pcalau12i	$a0, %pc_hi20(.LCPI11_25)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_25)
	pcalau12i	$a0, %pc_hi20(.LCPI11_26)
	vld	$vr5, $a0, %pc_lo12(.LCPI11_26)
	pcalau12i	$a0, %pc_hi20(.LCPI11_27)
	vld	$vr6, $a0, %pc_lo12(.LCPI11_27)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI11_28)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_28)
	pcalau12i	$a0, %pc_hi20(.LCPI11_29)
	vld	$vr4, $a0, %pc_lo12(.LCPI11_29)
	pcalau12i	$a0, %pc_hi20(.LCPI11_30)
	vld	$vr5, $a0, %pc_lo12(.LCPI11_30)
	pcalau12i	$a0, %pc_hi20(.LCPI11_31)
	vld	$vr6, $a0, %pc_lo12(.LCPI11_31)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr0, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr0, $vr0, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	andi	$a0, $a0, 1
	ret
.Lfunc_end11:
	.size	my_parityl, .Lfunc_end11-my_parityl
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ffsll
.LCPI12_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI12_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI12_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI12_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI12_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI12_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI12_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI12_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI12_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ffsll
	.p2align	5
	.type	my_ffsll,@function
my_ffsll:                               # @my_ffsll
# %bb.0:
	beqz	$a0, .LBB12_6
# %bb.1:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_0)
	pcalau12i	$a1, %pc_hi20(.LCPI12_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI12_1)
	pcalau12i	$a1, %pc_hi20(.LCPI12_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI12_2)
	pcalau12i	$a1, %pc_hi20(.LCPI12_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI12_3)
	pcalau12i	$a1, %pc_hi20(.LCPI12_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI12_4)
	pcalau12i	$a1, %pc_hi20(.LCPI12_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI12_5)
	pcalau12i	$a1, %pc_hi20(.LCPI12_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI12_6)
	pcalau12i	$a1, %pc_hi20(.LCPI12_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI12_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 15
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB12_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB12_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB12_2 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB12_2
.LBB12_4:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB12_7
# %bb.5:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI12_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB12_6:
	move	$a0, $zero
	ret
.LBB12_7:
	ori	$a0, $zero, 65
	ret
.Lfunc_end12:
	.size	my_ffsll, .Lfunc_end12-my_ffsll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_ctzll
.LCPI13_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI13_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI13_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI13_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI13_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI13_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI13_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI13_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI13_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_ctzll
	.p2align	5
	.type	my_ctzll,@function
my_ctzll:                               # @my_ctzll
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI13_0)
	pcalau12i	$a1, %pc_hi20(.LCPI13_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI13_1)
	pcalau12i	$a1, %pc_hi20(.LCPI13_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI13_2)
	pcalau12i	$a1, %pc_hi20(.LCPI13_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI13_3)
	pcalau12i	$a1, %pc_hi20(.LCPI13_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI13_4)
	pcalau12i	$a1, %pc_hi20(.LCPI13_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI13_5)
	pcalau12i	$a1, %pc_hi20(.LCPI13_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI13_6)
	pcalau12i	$a1, %pc_hi20(.LCPI13_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI13_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	vrepli.d	$vr9, 1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsll.d	$vr11, $vr9, $vr0
	vsll.d	$vr12, $vr9, $vr1
	vsll.d	$vr13, $vr9, $vr2
	vsll.d	$vr14, $vr9, $vr3
	vsll.d	$vr15, $vr9, $vr4
	vsll.d	$vr16, $vr9, $vr5
	vsll.d	$vr17, $vr9, $vr6
	vsll.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB13_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB13_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB13_1
.LBB13_3:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB13_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI13_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI13_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB13_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end13:
	.size	my_ctzll, .Lfunc_end13-my_ctzll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clzll
.LCPI14_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI14_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI14_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI14_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI14_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI14_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI14_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI14_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI14_8:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	my_clzll
	.p2align	5
	.type	my_clzll,@function
my_clzll:                               # @my_clzll
# %bb.0:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI14_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_0)
	pcalau12i	$a1, %pc_hi20(.LCPI14_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI14_1)
	pcalau12i	$a1, %pc_hi20(.LCPI14_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI14_2)
	pcalau12i	$a1, %pc_hi20(.LCPI14_3)
	vld	$vr3, $a1, %pc_lo12(.LCPI14_3)
	pcalau12i	$a1, %pc_hi20(.LCPI14_4)
	vld	$vr4, $a1, %pc_lo12(.LCPI14_4)
	pcalau12i	$a1, %pc_hi20(.LCPI14_5)
	vld	$vr5, $a1, %pc_lo12(.LCPI14_5)
	pcalau12i	$a1, %pc_hi20(.LCPI14_6)
	vld	$vr6, $a1, %pc_lo12(.LCPI14_6)
	pcalau12i	$a1, %pc_hi20(.LCPI14_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI14_7)
	vreplgr2vr.d	$vr8, $a0
	ori	$a0, $zero, 16
	ori	$a2, $zero, 48
	lu52i.d	$a1, $zero, -2048
	vreplgr2vr.d	$vr9, $a1
	vrepli.b	$vr10, -1
	.p2align	4, , 16
.LBB14_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	vsrl.d	$vr11, $vr9, $vr0
	vsrl.d	$vr12, $vr9, $vr1
	vsrl.d	$vr13, $vr9, $vr2
	vsrl.d	$vr14, $vr9, $vr3
	vsrl.d	$vr15, $vr9, $vr4
	vsrl.d	$vr16, $vr9, $vr5
	vsrl.d	$vr17, $vr9, $vr6
	vsrl.d	$vr18, $vr9, $vr7
	vand.v	$vr19, $vr11, $vr8
	vand.v	$vr12, $vr12, $vr8
	vand.v	$vr13, $vr13, $vr8
	vand.v	$vr14, $vr14, $vr8
	vand.v	$vr11, $vr15, $vr8
	vand.v	$vr15, $vr16, $vr8
	vand.v	$vr16, $vr17, $vr8
	vand.v	$vr17, $vr18, $vr8
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr10
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr10
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr10
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr10
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$a2, $vr11, 2
	andi	$a2, $a2, 1
	vpickve2gr.b	$a3, $vr17, 0
	bstrins.d	$a3, $a2, 63, 1
	vpickve2gr.b	$a2, $vr11, 4
	bstrins.d	$a3, $a2, 2, 2
	vpickve2gr.b	$a2, $vr11, 6
	bstrins.d	$a3, $a2, 3, 3
	vpickve2gr.b	$a2, $vr11, 8
	bstrins.d	$a3, $a2, 4, 4
	vpickve2gr.b	$a2, $vr11, 10
	bstrins.d	$a3, $a2, 5, 5
	vpickve2gr.b	$a2, $vr11, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a3, $a2
	vpickve2gr.b	$a3, $vr11, 14
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickve2gr.b	$a3, $vr14, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr10
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr10
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr10
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	vpickve2gr.b	$a3, $vr12, 14
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$a0, $a0, -16
	bnez	$a3, .LBB14_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB14_1 Depth=1
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr1, $vr1, 16
	vaddi.du	$vr0, $vr0, 16
	addi.d	$a2, $a1, -16
	bnez	$a1, .LBB14_1
.LBB14_3:                               # %middle.split
	slli.d	$a1, $a3, 48
	beqz	$a1, .LBB14_5
# %bb.4:                                # %vector.early.exit
	addi.d	$sp, $sp, -16
	pcalau12i	$a1, %pc_hi20(.LCPI14_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_8)
	vpickev.b	$vr1, $vr12, $vr11
	vand.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	ori	$a2, $zero, 16
	sub.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	sub.w	$a0, $a1, $a0
	addi.d	$sp, $sp, 16
	ret
.LBB14_5:
	ori	$a0, $zero, 64
	ret
.Lfunc_end14:
	.size	my_clzll, .Lfunc_end14-my_clzll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_clrsbll
.LCPI15_0:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI15_1:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI15_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI15_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.text
	.globl	my_clrsbll
	.p2align	5
	.type	my_clrsbll,@function
my_clrsbll:                             # @my_clrsbll
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	srli.d	$a2, $a0, 63
	vreplgr2vr.d	$vr0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI15_0)
	pcalau12i	$a1, %pc_hi20(.LCPI15_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI15_1)
	pcalau12i	$a1, %pc_hi20(.LCPI15_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI15_2)
	pcalau12i	$a1, %pc_hi20(.LCPI15_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI15_3)
	vreplgr2vr.d	$vr5, $a0
	addi.w	$a1, $zero, -7
	vrepli.d	$vr6, 63
	vrepli.d	$vr7, 1
	vrepli.b	$vr8, -1
	ori	$a3, $zero, 41
	.p2align	4, , 16
.LBB15_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	vsub.d	$vr9, $vr6, $vr4
	vsub.d	$vr10, $vr6, $vr3
	vsub.d	$vr11, $vr6, $vr2
	vsub.d	$vr12, $vr6, $vr1
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr11, $vr5, $vr11
	vsrl.d	$vr10, $vr5, $vr10
	vsrl.d	$vr9, $vr5, $vr9
	vand.v	$vr13, $vr12, $vr7
	vand.v	$vr11, $vr11, $vr7
	vand.v	$vr12, $vr10, $vr7
	vand.v	$vr9, $vr9, $vr7
	vseq.d	$vr9, $vr9, $vr0
	vxor.v	$vr10, $vr9, $vr8
	vseq.d	$vr9, $vr12, $vr0
	vxor.v	$vr9, $vr9, $vr8
	vpickev.w	$vr12, $vr9, $vr10
	vpickve2gr.h	$a1, $vr12, 2
	andi	$a1, $a1, 1
	vpickve2gr.h	$a5, $vr10, 0
	bstrins.d	$a5, $a1, 63, 1
	vpickve2gr.h	$a1, $vr12, 4
	bstrins.d	$a5, $a1, 2, 2
	vpickve2gr.h	$a1, $vr12, 6
	bstrins.d	$a5, $a1, 3, 3
	vseq.d	$vr11, $vr11, $vr0
	vxor.v	$vr12, $vr11, $vr8
	vseq.d	$vr11, $vr13, $vr0
	vxor.v	$vr11, $vr11, $vr8
	vpickev.w	$vr13, $vr11, $vr12
	vpickve2gr.h	$a1, $vr13, 0
	bstrins.d	$a5, $a1, 4, 4
	vpickve2gr.h	$a1, $vr13, 2
	bstrins.d	$a5, $a1, 5, 5
	vpickve2gr.h	$a1, $vr13, 4
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a5, $a1
	vpickve2gr.h	$a5, $vr13, 6
	slli.d	$a5, $a5, 7
	or	$a1, $a1, $a5
	andi	$a5, $a1, 255
	addi.d	$a1, $a4, 8
	bnez	$a5, .LBB15_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB15_1 Depth=1
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr1, $vr1, 8
	bne	$a4, $a3, .LBB15_1
.LBB15_3:                               # %middle.split
	beqz	$a5, .LBB15_5
# %bb.4:                                # %vector.early.exit
	vpickve2gr.d	$a0, $vr10, 0
	vinsgr2vr.b	$vr0, $a0, 0
	vpickve2gr.d	$a0, $vr10, 1
	vinsgr2vr.b	$vr0, $a0, 1
	vpickve2gr.d	$a0, $vr9, 0
	vinsgr2vr.b	$vr0, $a0, 2
	vpickve2gr.d	$a0, $vr9, 1
	vinsgr2vr.b	$vr0, $a0, 3
	vpickve2gr.d	$a0, $vr12, 0
	vinsgr2vr.b	$vr0, $a0, 4
	vpickve2gr.d	$a0, $vr12, 1
	vinsgr2vr.b	$vr0, $a0, 5
	vpickve2gr.d	$a0, $vr11, 0
	vinsgr2vr.b	$vr0, $a0, 6
	vpickve2gr.d	$a0, $vr11, 1
	vinsgr2vr.b	$vr0, $a0, 7
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr1, $a0
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a0, $vr0, 0
	ori	$a2, $zero, 8
	sub.d	$a0, $a2, $a0
	andi	$a0, $a0, 255
	add.d	$a1, $a0, $a1
	b	.LBB15_12
.LBB15_5:                               # %scalar.ph
	bstrpick.d	$a3, $a0, 6, 6
	ori	$a1, $zero, 57
	bne	$a3, $a2, .LBB15_12
# %bb.6:                                # %scalar.ph.1
	bstrpick.d	$a3, $a0, 5, 5
	ori	$a1, $zero, 58
	bne	$a3, $a2, .LBB15_12
# %bb.7:                                # %scalar.ph.2
	bstrpick.d	$a3, $a0, 4, 4
	ori	$a1, $zero, 59
	bne	$a3, $a2, .LBB15_12
# %bb.8:                                # %scalar.ph.3
	bstrpick.d	$a3, $a0, 3, 3
	ori	$a1, $zero, 60
	bne	$a3, $a2, .LBB15_12
# %bb.9:                                # %scalar.ph.4
	bstrpick.d	$a3, $a0, 2, 2
	ori	$a1, $zero, 61
	bne	$a3, $a2, .LBB15_12
# %bb.10:                               # %scalar.ph.5
	bstrpick.d	$a3, $a0, 1, 1
	ori	$a1, $zero, 62
	bne	$a3, $a2, .LBB15_12
# %bb.11:                               # %scalar.ph.6
	andi	$a0, $a0, 1
	ori	$a1, $zero, 63
	beq	$a0, $a2, .LBB15_13
.LBB15_12:                              # %.split.loop.exit
	addi.w	$a1, $a1, -1
.LBB15_13:                              # %.split.loop.exit10
	move	$a0, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	my_clrsbll, .Lfunc_end15-my_clrsbll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_popcountll
.LCPI16_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI16_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI16_2:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI16_3:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI16_4:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI16_5:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI16_6:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI16_7:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI16_8:
	.dword	16                              # 0x10
	.dword	17                              # 0x11
.LCPI16_9:
	.dword	18                              # 0x12
	.dword	19                              # 0x13
.LCPI16_10:
	.dword	20                              # 0x14
	.dword	21                              # 0x15
.LCPI16_11:
	.dword	22                              # 0x16
	.dword	23                              # 0x17
.LCPI16_12:
	.dword	24                              # 0x18
	.dword	25                              # 0x19
.LCPI16_13:
	.dword	26                              # 0x1a
	.dword	27                              # 0x1b
.LCPI16_14:
	.dword	28                              # 0x1c
	.dword	29                              # 0x1d
.LCPI16_15:
	.dword	30                              # 0x1e
	.dword	31                              # 0x1f
.LCPI16_16:
	.dword	32                              # 0x20
	.dword	33                              # 0x21
.LCPI16_17:
	.dword	34                              # 0x22
	.dword	35                              # 0x23
.LCPI16_18:
	.dword	36                              # 0x24
	.dword	37                              # 0x25
.LCPI16_19:
	.dword	38                              # 0x26
	.dword	39                              # 0x27
.LCPI16_20:
	.dword	40                              # 0x28
	.dword	41                              # 0x29
.LCPI16_21:
	.dword	42                              # 0x2a
	.dword	43                              # 0x2b
.LCPI16_22:
	.dword	44                              # 0x2c
	.dword	45                              # 0x2d
.LCPI16_23:
	.dword	46                              # 0x2e
	.dword	47                              # 0x2f
.LCPI16_24:
	.dword	48                              # 0x30
	.dword	49                              # 0x31
.LCPI16_25:
	.dword	50                              # 0x32
	.dword	51                              # 0x33
.LCPI16_26:
	.dword	52                              # 0x34
	.dword	53                              # 0x35
.LCPI16_27:
	.dword	54                              # 0x36
	.dword	55                              # 0x37
.LCPI16_28:
	.dword	56                              # 0x38
	.dword	57                              # 0x39
.LCPI16_29:
	.dword	58                              # 0x3a
	.dword	59                              # 0x3b
.LCPI16_30:
	.dword	60                              # 0x3c
	.dword	61                              # 0x3d
.LCPI16_31:
	.dword	62                              # 0x3e
	.dword	63                              # 0x3f
	.text
	.globl	my_popcountll
	.p2align	5
	.type	my_popcountll,@function
my_popcountll:                          # @my_popcountll
# %bb.0:                                # %vector.ph
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI16_0)
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI16_1)
	pcalau12i	$a0, %pc_hi20(.LCPI16_2)
	vld	$vr3, $a0, %pc_lo12(.LCPI16_2)
	pcalau12i	$a0, %pc_hi20(.LCPI16_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_3)
	vsrl.d	$vr1, $vr0, $vr1
	vsrl.d	$vr2, $vr0, $vr2
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vpickev.w	$vr2, $vr2, $vr1
	vpickev.w	$vr3, $vr4, $vr3
	vrepli.w	$vr1, 1
	vand.v	$vr2, $vr2, $vr1
	vand.v	$vr3, $vr3, $vr1
	pcalau12i	$a0, %pc_hi20(.LCPI16_4)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_4)
	pcalau12i	$a0, %pc_hi20(.LCPI16_5)
	vld	$vr5, $a0, %pc_lo12(.LCPI16_5)
	pcalau12i	$a0, %pc_hi20(.LCPI16_6)
	vld	$vr6, $a0, %pc_lo12(.LCPI16_6)
	pcalau12i	$a0, %pc_hi20(.LCPI16_7)
	vld	$vr7, $a0, %pc_lo12(.LCPI16_7)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI16_8)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_8)
	pcalau12i	$a0, %pc_hi20(.LCPI16_9)
	vld	$vr5, $a0, %pc_lo12(.LCPI16_9)
	pcalau12i	$a0, %pc_hi20(.LCPI16_10)
	vld	$vr6, $a0, %pc_lo12(.LCPI16_10)
	pcalau12i	$a0, %pc_hi20(.LCPI16_11)
	vld	$vr7, $a0, %pc_lo12(.LCPI16_11)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI16_12)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_12)
	pcalau12i	$a0, %pc_hi20(.LCPI16_13)
	vld	$vr5, $a0, %pc_lo12(.LCPI16_13)
	pcalau12i	$a0, %pc_hi20(.LCPI16_14)
	vld	$vr6, $a0, %pc_lo12(.LCPI16_14)
	pcalau12i	$a0, %pc_hi20(.LCPI16_15)
	vld	$vr7, $a0, %pc_lo12(.LCPI16_15)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI16_16)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_16)
	pcalau12i	$a0, %pc_hi20(.LCPI16_17)
	vld	$vr5, $a0, %pc_lo12(.LCPI16_17)
	pcalau12i	$a0, %pc_hi20(.LCPI16_18)
	vld	$vr6, $a0, %pc_lo12(.LCPI16_18)
	pcalau12i	$a0, %pc_hi20(.LCPI16_19)
	vld	$vr7, $a0, %pc_lo12(.LCPI16_19)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI16_20)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_20)
	pcalau12i	$a0, %pc_hi20(.LCPI16_21)
	vld	$vr5, $a0, %pc_lo12(.LCPI16_21)
	pcalau12i	$a0, %pc_hi20(.LCPI16_22)
	vld	$vr6, $a0, %pc_lo12(.LCPI16_22)
	pcalau12i	$a0, %pc_hi20(.LCPI16_23)
	vld	$vr7, $a0, %pc_lo12(.LCPI16_23)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI16_24)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_24)
	pcalau12i	$a0, %pc_hi20(.LCPI16_25)
	vld	$vr5, $a0, %pc_lo12(.LCPI16_25)
	pcalau12i	$a0, %pc_hi20(.LCPI16_26)
	vld	$vr6, $a0, %pc_lo12(.LCPI16_26)
	pcalau12i	$a0, %pc_hi20(.LCPI16_27)
	vld	$vr7, $a0, %pc_lo12(.LCPI16_27)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr7, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr5, $vr7, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr5, $vr5, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI16_28)
	vld	$vr4, $a0, %pc_lo12(.LCPI16_28)
	pcalau12i	$a0, %pc_hi20(.LCPI16_29)
	vld	$vr5, $a0, %pc_lo12(.LCPI16_29)
	pcalau12i	$a0, %pc_hi20(.LCPI16_30)
	vld	$vr6, $a0, %pc_lo12(.LCPI16_30)
	pcalau12i	$a0, %pc_hi20(.LCPI16_31)
	vld	$vr7, $a0, %pc_lo12(.LCPI16_31)
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vsrl.d	$vr0, $vr0, $vr7
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr0, $vr0, $vr6
	vand.v	$vr4, $vr4, $vr1
	vand.v	$vr0, $vr0, $vr1
	vadd.w	$vr1, $vr4, $vr2
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	addi.w	$a0, $a0, 0
	ret
.Lfunc_end16:
	.size	my_popcountll, .Lfunc_end16-my_popcountll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function my_parityll
.LCPI17_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI17_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI17_2:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI17_3:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI17_4:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI17_5:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI17_6:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI17_7:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI17_8:
	.dword	16                              # 0x10
	.dword	17                              # 0x11
.LCPI17_9:
	.dword	18                              # 0x12
	.dword	19                              # 0x13
.LCPI17_10:
	.dword	20                              # 0x14
	.dword	21                              # 0x15
.LCPI17_11:
	.dword	22                              # 0x16
	.dword	23                              # 0x17
.LCPI17_12:
	.dword	24                              # 0x18
	.dword	25                              # 0x19
.LCPI17_13:
	.dword	26                              # 0x1a
	.dword	27                              # 0x1b
.LCPI17_14:
	.dword	28                              # 0x1c
	.dword	29                              # 0x1d
.LCPI17_15:
	.dword	30                              # 0x1e
	.dword	31                              # 0x1f
.LCPI17_16:
	.dword	32                              # 0x20
	.dword	33                              # 0x21
.LCPI17_17:
	.dword	34                              # 0x22
	.dword	35                              # 0x23
.LCPI17_18:
	.dword	36                              # 0x24
	.dword	37                              # 0x25
.LCPI17_19:
	.dword	38                              # 0x26
	.dword	39                              # 0x27
.LCPI17_20:
	.dword	40                              # 0x28
	.dword	41                              # 0x29
.LCPI17_21:
	.dword	42                              # 0x2a
	.dword	43                              # 0x2b
.LCPI17_22:
	.dword	44                              # 0x2c
	.dword	45                              # 0x2d
.LCPI17_23:
	.dword	46                              # 0x2e
	.dword	47                              # 0x2f
.LCPI17_24:
	.dword	48                              # 0x30
	.dword	49                              # 0x31
.LCPI17_25:
	.dword	50                              # 0x32
	.dword	51                              # 0x33
.LCPI17_26:
	.dword	52                              # 0x34
	.dword	53                              # 0x35
.LCPI17_27:
	.dword	54                              # 0x36
	.dword	55                              # 0x37
.LCPI17_28:
	.dword	56                              # 0x38
	.dword	57                              # 0x39
.LCPI17_29:
	.dword	58                              # 0x3a
	.dword	59                              # 0x3b
.LCPI17_30:
	.dword	60                              # 0x3c
	.dword	61                              # 0x3d
.LCPI17_31:
	.dword	62                              # 0x3e
	.dword	63                              # 0x3f
	.text
	.globl	my_parityll
	.p2align	5
	.type	my_parityll,@function
my_parityll:                            # @my_parityll
# %bb.0:                                # %vector.ph
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI17_0)
	pcalau12i	$a0, %pc_hi20(.LCPI17_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI17_1)
	pcalau12i	$a0, %pc_hi20(.LCPI17_2)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_2)
	pcalau12i	$a0, %pc_hi20(.LCPI17_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_3)
	vsrl.d	$vr1, $vr0, $vr1
	vsrl.d	$vr2, $vr0, $vr2
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vpickev.w	$vr1, $vr2, $vr1
	vpickev.w	$vr2, $vr4, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI17_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_4)
	pcalau12i	$a0, %pc_hi20(.LCPI17_5)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_5)
	pcalau12i	$a0, %pc_hi20(.LCPI17_6)
	vld	$vr5, $a0, %pc_lo12(.LCPI17_6)
	pcalau12i	$a0, %pc_hi20(.LCPI17_7)
	vld	$vr6, $a0, %pc_lo12(.LCPI17_7)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI17_8)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_8)
	pcalau12i	$a0, %pc_hi20(.LCPI17_9)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_9)
	pcalau12i	$a0, %pc_hi20(.LCPI17_10)
	vld	$vr5, $a0, %pc_lo12(.LCPI17_10)
	pcalau12i	$a0, %pc_hi20(.LCPI17_11)
	vld	$vr6, $a0, %pc_lo12(.LCPI17_11)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI17_12)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_12)
	pcalau12i	$a0, %pc_hi20(.LCPI17_13)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_13)
	pcalau12i	$a0, %pc_hi20(.LCPI17_14)
	vld	$vr5, $a0, %pc_lo12(.LCPI17_14)
	pcalau12i	$a0, %pc_hi20(.LCPI17_15)
	vld	$vr6, $a0, %pc_lo12(.LCPI17_15)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI17_16)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_16)
	pcalau12i	$a0, %pc_hi20(.LCPI17_17)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_17)
	pcalau12i	$a0, %pc_hi20(.LCPI17_18)
	vld	$vr5, $a0, %pc_lo12(.LCPI17_18)
	pcalau12i	$a0, %pc_hi20(.LCPI17_19)
	vld	$vr6, $a0, %pc_lo12(.LCPI17_19)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI17_20)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_20)
	pcalau12i	$a0, %pc_hi20(.LCPI17_21)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_21)
	pcalau12i	$a0, %pc_hi20(.LCPI17_22)
	vld	$vr5, $a0, %pc_lo12(.LCPI17_22)
	pcalau12i	$a0, %pc_hi20(.LCPI17_23)
	vld	$vr6, $a0, %pc_lo12(.LCPI17_23)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI17_24)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_24)
	pcalau12i	$a0, %pc_hi20(.LCPI17_25)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_25)
	pcalau12i	$a0, %pc_hi20(.LCPI17_26)
	vld	$vr5, $a0, %pc_lo12(.LCPI17_26)
	pcalau12i	$a0, %pc_hi20(.LCPI17_27)
	vld	$vr6, $a0, %pc_lo12(.LCPI17_27)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr6, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr4, $vr6, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI17_28)
	vld	$vr3, $a0, %pc_lo12(.LCPI17_28)
	pcalau12i	$a0, %pc_hi20(.LCPI17_29)
	vld	$vr4, $a0, %pc_lo12(.LCPI17_29)
	pcalau12i	$a0, %pc_hi20(.LCPI17_30)
	vld	$vr5, $a0, %pc_lo12(.LCPI17_30)
	pcalau12i	$a0, %pc_hi20(.LCPI17_31)
	vld	$vr6, $a0, %pc_lo12(.LCPI17_31)
	vsrl.d	$vr3, $vr0, $vr3
	vsrl.d	$vr4, $vr0, $vr4
	vsrl.d	$vr5, $vr0, $vr5
	vsrl.d	$vr0, $vr0, $vr6
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.w	$vr0, $vr0, $vr5
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	andi	$a0, $a0, 1
	ret
.Lfunc_end17:
	.size	my_parityll, .Lfunc_end17-my_parityll
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI18_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI18_1:
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
.LCPI18_2:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI18_3:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI18_4:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI18_5:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI18_6:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI18_7:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI18_8:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI18_9:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI18_10:
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
.LCPI18_11:
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI18_12:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
.LCPI18_13:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI18_14:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI18_15:
	.dword	16                              # 0x10
	.dword	17                              # 0x11
.LCPI18_16:
	.dword	18                              # 0x12
	.dword	19                              # 0x13
.LCPI18_17:
	.dword	20                              # 0x14
	.dword	21                              # 0x15
.LCPI18_18:
	.dword	22                              # 0x16
	.dword	23                              # 0x17
.LCPI18_19:
	.dword	24                              # 0x18
	.dword	25                              # 0x19
.LCPI18_20:
	.dword	26                              # 0x1a
	.dword	27                              # 0x1b
.LCPI18_21:
	.dword	28                              # 0x1c
	.dword	29                              # 0x1d
.LCPI18_22:
	.dword	30                              # 0x1e
	.dword	31                              # 0x1f
.LCPI18_23:
	.dword	32                              # 0x20
	.dword	33                              # 0x21
.LCPI18_24:
	.dword	34                              # 0x22
	.dword	35                              # 0x23
.LCPI18_25:
	.dword	36                              # 0x24
	.dword	37                              # 0x25
.LCPI18_26:
	.dword	38                              # 0x26
	.dword	39                              # 0x27
.LCPI18_27:
	.dword	40                              # 0x28
	.dword	41                              # 0x29
.LCPI18_28:
	.dword	42                              # 0x2a
	.dword	43                              # 0x2b
.LCPI18_29:
	.dword	44                              # 0x2c
	.dword	45                              # 0x2d
.LCPI18_30:
	.dword	46                              # 0x2e
	.dword	47                              # 0x2f
.LCPI18_31:
	.dword	48                              # 0x30
	.dword	49                              # 0x31
.LCPI18_32:
	.dword	50                              # 0x32
	.dword	51                              # 0x33
.LCPI18_33:
	.dword	52                              # 0x34
	.dword	53                              # 0x35
.LCPI18_34:
	.dword	54                              # 0x36
	.dword	55                              # 0x37
.LCPI18_35:
	.dword	56                              # 0x38
	.dword	57                              # 0x39
.LCPI18_36:
	.dword	58                              # 0x3a
	.dword	59                              # 0x3b
.LCPI18_37:
	.dword	60                              # 0x3c
	.dword	61                              # 0x3d
.LCPI18_38:
	.dword	62                              # 0x3e
	.dword	63                              # 0x3f
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 608                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 600                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 592                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 584                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 576                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 552                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ints)
	addi.d	$s0, $a0, %pc_lo12(ints)
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_0)
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
	addi.w	$s2, $zero, -3
	vrepli.w	$vr6, 31
	vrepli.w	$vr5, 1
	vrepli.b	$vr23, -1
	pcalau12i	$a0, %pc_hi20(.LCPI18_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI18_1)
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	lu12i.w	$a0, 4128
	ori	$a0, $a0, 772
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	ori	$s4, $zero, 13
	ori	$s5, $zero, 21
	ori	$s6, $zero, 32
	lu12i.w	$s7, -524288
	lu32i.d	$s7, 0
	vst	$vr5, $sp, 512                  # 16-byte Folded Spill
	vst	$vr23, $sp, 496                 # 16-byte Folded Spill
	vst	$vr6, $sp, 464                  # 16-byte Folded Spill
	.p2align	4, , 16
.LBB18_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
                                        #     Child Loop BB18_7 Depth 2
                                        #     Child Loop BB18_11 Depth 2
                                        #     Child Loop BB18_15 Depth 2
	slli.d	$a0, $s1, 2
	ldx.w	$fp, $s0, $a0
	beqz	$fp, .LBB18_14
# %bb.2:                                # %.preheader.i.preheader
                                        #   in Loop: Header=BB18_1 Depth=1
	move	$a1, $zero
	ctz.d	$a0, $fp
	.p2align	4, , 16
.LBB18_3:                               # %.preheader.i
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srl.w	$a2, $fp, $a1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB18_5
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=2
	addi.w	$a1, $a1, 1
	bne	$a1, $s6, .LBB18_3
	b	.LBB18_97
	.p2align	4, , 16
.LBB18_5:                               # %my_ffs.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	bne	$a0, $a1, .LBB18_97
# %bb.6:                                #   in Loop: Header=BB18_1 Depth=1
	move	$a1, $zero
	slli.d	$a2, $fp, 32
	clz.d	$a2, $a2
	.p2align	4, , 16
.LBB18_7:                               #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sll.w	$a3, $fp, $a1
	and	$a3, $a3, $s7
	addi.w	$a3, $a3, 0
	bnez	$a3, .LBB18_9
# %bb.8:                                #   in Loop: Header=BB18_7 Depth=2
	addi.w	$a1, $a1, 1
	bne	$a1, $s6, .LBB18_7
	b	.LBB18_97
	.p2align	4, , 16
.LBB18_9:                               # %my_clz.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	bne	$a2, $a1, .LBB18_97
# %bb.10:                               # %.preheader1397.preheader
                                        #   in Loop: Header=BB18_1 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB18_11:                              # %.preheader1397
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srl.w	$a2, $fp, $a1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB18_13
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=2
	addi.w	$a1, $a1, 1
	bne	$a1, $s6, .LBB18_11
	b	.LBB18_97
	.p2align	4, , 16
.LBB18_13:                              # %my_ctz.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	bne	$a0, $a1, .LBB18_97
.LBB18_14:                              # %.thread1103
                                        #   in Loop: Header=BB18_1 Depth=1
	srai.d	$a0, $fp, 31
	xor	$a0, $a0, $fp
	clz.w	$a0, $a0
	bstrpick.d	$s8, $fp, 31, 31
	vreplgr2vr.w	$vr0, $s8
	vreplgr2vr.w	$vr1, $fp
	move	$a1, $s2
	vld	$vr2, $sp, 480                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_15:                              # %vector.body
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	vsub.w	$vr3, $vr6, $vr2
	vsrl.w	$vr3, $vr1, $vr3
	vand.v	$vr3, $vr3, $vr5
	vseq.w	$vr3, $vr3, $vr0
	vxor.v	$vr3, $vr3, $vr23
	vmskltz.w	$vr4, $vr3
	vpickve2gr.hu	$a3, $vr4, 0
	addi.w	$a1, $a1, 4
	bnez	$a3, .LBB18_17
# %bb.16:                               # %vector.body
                                        #   in Loop: Header=BB18_15 Depth=2
	vaddi.wu	$vr2, $vr2, 4
	bne	$a2, $s5, .LBB18_15
.LBB18_17:                              # %middle.split
                                        #   in Loop: Header=BB18_1 Depth=1
	andi	$a2, $a3, 15
	beqz	$a2, .LBB18_19
# %bb.18:                               # %vector.early.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	vld	$vr0, $sp, 448                  # 16-byte Folded Reload
	vshuf.b	$vr0, $vr0, $vr3, $vr0
	vld	$vr1, $sp, 432                  # 16-byte Folded Reload
	vand.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a2, $vr0, 0
	ori	$a3, $zero, 4
	sub.d	$a2, $a3, $a2
	andi	$a2, $a2, 255
	add.w	$a1, $a2, $a1
	b	.LBB18_22
	.p2align	4, , 16
.LBB18_19:                              # %scalar.ph
                                        #   in Loop: Header=BB18_1 Depth=1
	bstrpick.d	$a3, $fp, 2, 2
	addi.w	$a2, $s8, 0
	ori	$a1, $zero, 29
	bne	$a3, $a2, .LBB18_22
# %bb.20:                               # %scalar.ph.1
                                        #   in Loop: Header=BB18_1 Depth=1
	bstrpick.d	$a3, $fp, 1, 1
	ori	$a1, $zero, 30
	bne	$a3, $a2, .LBB18_22
# %bb.21:                               # %scalar.ph.2
                                        #   in Loop: Header=BB18_1 Depth=1
	andi	$a1, $fp, 1
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	addi.d	$a1, $a1, 31
	.p2align	4, , 16
.LBB18_22:                              # %my_clrsb.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	bne	$a0, $a1, .LBB18_97
# %bb.23:                               #   in Loop: Header=BB18_1 Depth=1
	bstrpick.d	$a0, $fp, 31, 0
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $a0, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(my_popcount)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB18_97
# %bb.24:                               #   in Loop: Header=BB18_1 Depth=1
	bstrpick.d	$a0, $fp, 31, 1
	add.d	$a0, $a0, $fp
	bstrpick.d	$a1, $fp, 31, 2
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 3
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 4
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 5
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 6
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 7
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 8
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 9
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 10
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 11
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 12
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 13
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 14
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 15
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 16
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 17
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 18
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 19
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 20
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 21
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 22
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 23
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 24
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 25
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 26
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 27
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 28
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 29
	add.d	$a0, $a0, $a1
	srli.d	$a1, $fp, 30
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s8
	xor	$a0, $a0, $s3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_97
# %bb.25:                               #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s1, $s1, 1
	vld	$vr5, $sp, 512                  # 16-byte Folded Reload
	vld	$vr23, $sp, 496                 # 16-byte Folded Reload
	vld	$vr6, $sp, 464                  # 16-byte Folded Reload
	bne	$s1, $s4, .LBB18_1
# %bb.26:                               # %.preheader1394.preheader
	pcalau12i	$a0, %pc_hi20(longs)
	addi.d	$a0, $a0, %pc_lo12(longs)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$t6, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI18_11)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_11)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_12)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_12)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_13)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_13)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_14)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI18_14)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	addi.w	$t7, $zero, -7
	vrepli.d	$vr0, 63
	vrepli.d	$vr1, 1
	lu12i.w	$a0, 20576
	ori	$a0, $a0, 1800
	lu32i.d	$a0, 131844
	lu52i.d	$a0, $a0, 16
	vreplgr2vr.d	$vr2, $a0
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI18_9)
	pcalau12i	$a1, %pc_hi20(.LCPI18_8)
	pcalau12i	$a2, %pc_hi20(.LCPI18_7)
	pcalau12i	$a3, %pc_hi20(.LCPI18_6)
	pcalau12i	$a4, %pc_hi20(.LCPI18_5)
	pcalau12i	$a5, %pc_hi20(.LCPI18_4)
	pcalau12i	$a6, %pc_hi20(.LCPI18_3)
	pcalau12i	$a7, %pc_hi20(.LCPI18_2)
	pcalau12i	$fp, %pc_hi20(.LCPI18_15)
	pcalau12i	$s0, %pc_hi20(.LCPI18_16)
	pcalau12i	$s1, %pc_hi20(.LCPI18_17)
	pcalau12i	$s2, %pc_hi20(.LCPI18_18)
	pcalau12i	$s3, %pc_hi20(.LCPI18_19)
	pcalau12i	$s4, %pc_hi20(.LCPI18_20)
	pcalau12i	$s5, %pc_hi20(.LCPI18_21)
	pcalau12i	$s6, %pc_hi20(.LCPI18_22)
	ori	$s8, $zero, 41
	lu52i.d	$t0, $zero, -2048
	ori	$t2, $zero, 32
	.p2align	4, , 16
.LBB18_27:                              # %.preheader1394
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_29 Depth 2
                                        #     Child Loop BB18_35 Depth 2
                                        #     Child Loop BB18_40 Depth 2
                                        #     Child Loop BB18_45 Depth 2
	slli.d	$t1, $t6, 3
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$t3, $t3, $t1
	vreplgr2vr.d	$vr5, $t3
	beqz	$t3, .LBB18_44
# %bb.28:                               # %vector.ph1631
                                        #   in Loop: Header=BB18_27 Depth=1
	ctz.d	$t4, $t3
	vld	$vr2, $a7, %pc_lo12(.LCPI18_2)
	vld	$vr3, $a6, %pc_lo12(.LCPI18_3)
	vld	$vr4, $a5, %pc_lo12(.LCPI18_4)
	vld	$vr6, $a4, %pc_lo12(.LCPI18_5)
	vld	$vr7, $a3, %pc_lo12(.LCPI18_6)
	vld	$vr8, $a2, %pc_lo12(.LCPI18_7)
	vld	$vr9, $a1, %pc_lo12(.LCPI18_8)
	vld	$vr10, $a0, %pc_lo12(.LCPI18_9)
	addi.d	$t8, $t4, 1
	ori	$s7, $zero, 15
	ori	$ra, $zero, 48
	.p2align	4, , 16
.LBB18_29:                              # %vector.body1634
                                        #   Parent Loop BB18_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t5, $ra
	vsll.d	$vr11, $vr1, $vr2
	vsll.d	$vr12, $vr1, $vr3
	vsll.d	$vr13, $vr1, $vr4
	vsll.d	$vr14, $vr1, $vr6
	vsll.d	$vr15, $vr1, $vr7
	vsll.d	$vr16, $vr1, $vr8
	vsll.d	$vr17, $vr1, $vr9
	vsll.d	$vr18, $vr1, $vr10
	vand.v	$vr19, $vr11, $vr5
	vand.v	$vr12, $vr12, $vr5
	vand.v	$vr13, $vr13, $vr5
	vand.v	$vr14, $vr14, $vr5
	vand.v	$vr11, $vr15, $vr5
	vand.v	$vr15, $vr16, $vr5
	vand.v	$vr16, $vr17, $vr5
	vand.v	$vr17, $vr18, $vr5
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr23
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr23
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr23
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr11, $vr11, $vr23
	vpickev.w	$vr11, $vr11, $vr15
	vpickev.h	$vr11, $vr11, $vr16
	vpickve2gr.b	$t1, $vr11, 2
	andi	$t1, $t1, 1
	vpickve2gr.b	$ra, $vr17, 0
	bstrins.d	$ra, $t1, 63, 1
	vpickve2gr.b	$t1, $vr11, 4
	bstrins.d	$ra, $t1, 2, 2
	vpickve2gr.b	$t1, $vr11, 6
	bstrins.d	$ra, $t1, 3, 3
	vpickve2gr.b	$t1, $vr11, 8
	bstrins.d	$ra, $t1, 4, 4
	vpickve2gr.b	$t1, $vr11, 10
	bstrins.d	$ra, $t1, 5, 5
	vpickve2gr.b	$t1, $vr11, 12
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$t1, $ra, $t1
	vpickve2gr.b	$ra, $vr11, 14
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 7
	or	$t1, $t1, $ra
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr23
	vpickve2gr.b	$ra, $vr14, 0
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 8
	or	$t1, $t1, $ra
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr23
	vpickev.w	$vr13, $vr13, $vr14
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr23
	vseqi.d	$vr14, $vr19, 0
	vxor.v	$vr14, $vr14, $vr23
	vpickev.w	$vr12, $vr14, $vr12
	vpickev.h	$vr12, $vr12, $vr13
	vpickve2gr.b	$ra, $vr12, 2
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 9
	or	$t1, $t1, $ra
	vpickve2gr.b	$ra, $vr12, 4
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 10
	or	$t1, $t1, $ra
	vpickve2gr.b	$ra, $vr12, 6
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 11
	or	$t1, $t1, $ra
	vpickve2gr.b	$ra, $vr12, 8
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 12
	or	$t1, $t1, $ra
	vpickve2gr.b	$ra, $vr12, 10
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 13
	or	$t1, $t1, $ra
	vpickve2gr.b	$ra, $vr12, 12
	andi	$ra, $ra, 1
	slli.d	$ra, $ra, 14
	or	$t1, $t1, $ra
	vpickve2gr.b	$ra, $vr12, 14
	slli.d	$ra, $ra, 15
	or	$t1, $t1, $ra
	bstrpick.d	$t1, $t1, 15, 0
	addi.d	$s7, $s7, -16
	bnez	$t1, .LBB18_31
# %bb.30:                               # %vector.body1634
                                        #   in Loop: Header=BB18_29 Depth=2
	vaddi.du	$vr10, $vr10, 16
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	addi.d	$ra, $t5, -16
	bnez	$t5, .LBB18_29
.LBB18_31:                              # %middle.split1639
                                        #   in Loop: Header=BB18_27 Depth=1
	slli.d	$t1, $t1, 48
	pcalau12i	$t5, %pc_hi20(.LCPI18_10)
	beqz	$t1, .LBB18_33
# %bb.32:                               # %vector.early.exit1641
                                        #   in Loop: Header=BB18_27 Depth=1
	vld	$vr2, $t5, %pc_lo12(.LCPI18_10)
	vpickev.b	$vr3, $vr12, $vr11
	vand.v	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 8
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 4
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 2
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 1
	vmax.bu	$vr2, $vr3, $vr2
	vpickve2gr.b	$t1, $vr2, 0
	ori	$ra, $zero, 16
	sub.d	$t1, $ra, $t1
	andi	$t1, $t1, 255
	sub.w	$t1, $t1, $s7
	beq	$t8, $t1, .LBB18_34
	b	.LBB18_97
	.p2align	4, , 16
.LBB18_33:                              #   in Loop: Header=BB18_27 Depth=1
	ori	$t1, $zero, 65
	bne	$t8, $t1, .LBB18_97
.LBB18_34:                              # %vector.ph1619
                                        #   in Loop: Header=BB18_27 Depth=1
	vld	$vr2, $a7, %pc_lo12(.LCPI18_2)
	vld	$vr3, $a6, %pc_lo12(.LCPI18_3)
	vld	$vr4, $a5, %pc_lo12(.LCPI18_4)
	vld	$vr6, $a4, %pc_lo12(.LCPI18_5)
	vld	$vr7, $a3, %pc_lo12(.LCPI18_6)
	vld	$vr8, $a2, %pc_lo12(.LCPI18_7)
	vld	$vr9, $a1, %pc_lo12(.LCPI18_8)
	vld	$vr10, $a0, %pc_lo12(.LCPI18_9)
	clz.d	$t8, $t3
	addi.w	$s7, $zero, -16
	.p2align	4, , 16
.LBB18_35:                              # %vector.body1622
                                        #   Parent Loop BB18_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$ra, $s7
	vreplgr2vr.d	$vr11, $t0
	vsrl.d	$vr12, $vr11, $vr2
	vsrl.d	$vr13, $vr11, $vr3
	vsrl.d	$vr14, $vr11, $vr4
	vsrl.d	$vr15, $vr11, $vr6
	vsrl.d	$vr16, $vr11, $vr7
	vsrl.d	$vr17, $vr11, $vr8
	vsrl.d	$vr18, $vr11, $vr9
	vsrl.d	$vr11, $vr11, $vr10
	vand.v	$vr12, $vr12, $vr5
	vand.v	$vr13, $vr13, $vr5
	vand.v	$vr14, $vr14, $vr5
	vand.v	$vr15, $vr15, $vr5
	vand.v	$vr16, $vr16, $vr5
	vand.v	$vr17, $vr17, $vr5
	vand.v	$vr18, $vr18, $vr5
	vand.v	$vr11, $vr11, $vr5
	vseqi.d	$vr11, $vr11, 0
	vxor.v	$vr19, $vr11, $vr23
	vseqi.d	$vr11, $vr18, 0
	vxor.v	$vr11, $vr11, $vr23
	vpickev.w	$vr11, $vr11, $vr19
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr23
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr23
	vpickev.w	$vr16, $vr16, $vr17
	vpickev.h	$vr11, $vr16, $vr11
	vpickve2gr.b	$t1, $vr11, 2
	andi	$t1, $t1, 1
	vpickve2gr.b	$s7, $vr19, 0
	bstrins.d	$s7, $t1, 63, 1
	vpickve2gr.b	$t1, $vr11, 4
	bstrins.d	$s7, $t1, 2, 2
	vpickve2gr.b	$t1, $vr11, 6
	bstrins.d	$s7, $t1, 3, 3
	vpickve2gr.b	$t1, $vr11, 8
	bstrins.d	$s7, $t1, 4, 4
	vpickve2gr.b	$t1, $vr11, 10
	bstrins.d	$s7, $t1, 5, 5
	vpickve2gr.b	$t1, $vr11, 12
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$t1, $s7, $t1
	vpickve2gr.b	$s7, $vr11, 14
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 7
	or	$t1, $t1, $s7
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr23
	vpickve2gr.b	$s7, $vr15, 0
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 8
	or	$t1, $t1, $s7
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr23
	vpickev.w	$vr14, $vr14, $vr15
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr23
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr23
	vpickev.w	$vr12, $vr12, $vr13
	vpickev.h	$vr12, $vr12, $vr14
	vpickve2gr.b	$s7, $vr12, 2
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 9
	or	$t1, $t1, $s7
	vpickve2gr.b	$s7, $vr12, 4
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 10
	or	$t1, $t1, $s7
	vpickve2gr.b	$s7, $vr12, 6
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 11
	or	$t1, $t1, $s7
	vpickve2gr.b	$s7, $vr12, 8
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 12
	or	$t1, $t1, $s7
	vpickve2gr.b	$s7, $vr12, 10
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 13
	or	$t1, $t1, $s7
	vpickve2gr.b	$s7, $vr12, 12
	andi	$s7, $s7, 1
	slli.d	$s7, $s7, 14
	or	$t1, $t1, $s7
	vpickve2gr.b	$s7, $vr12, 14
	slli.d	$s7, $s7, 15
	or	$t1, $t1, $s7
	bstrpick.d	$t1, $t1, 15, 0
	addi.d	$s7, $ra, 16
	bnez	$t1, .LBB18_37
# %bb.36:                               # %vector.body1622
                                        #   in Loop: Header=BB18_35 Depth=2
	vaddi.du	$vr10, $vr10, 16
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	bne	$ra, $t2, .LBB18_35
.LBB18_37:                              # %middle.split1627
                                        #   in Loop: Header=BB18_27 Depth=1
	slli.d	$t1, $t1, 48
	beqz	$t1, .LBB18_97
# %bb.38:                               # %vector.early.exit1629
                                        #   in Loop: Header=BB18_27 Depth=1
	vld	$vr2, $t5, %pc_lo12(.LCPI18_10)
	vpickev.b	$vr3, $vr12, $vr11
	vand.v	$vr3, $vr3, $vr2
	vbsrl.v	$vr4, $vr3, 8
	vmax.bu	$vr3, $vr4, $vr3
	vbsrl.v	$vr4, $vr3, 4
	vmax.bu	$vr3, $vr4, $vr3
	vbsrl.v	$vr4, $vr3, 2
	vmax.bu	$vr3, $vr4, $vr3
	vbsrl.v	$vr4, $vr3, 1
	vmax.bu	$vr3, $vr4, $vr3
	vpickve2gr.b	$t1, $vr3, 0
	ori	$t5, $zero, 16
	sub.d	$t1, $t5, $t1
	andi	$t1, $t1, 255
	sub.d	$t1, $t8, $t1
	bne	$t1, $s7, .LBB18_97
# %bb.39:                               # %vector.ph1607
                                        #   in Loop: Header=BB18_27 Depth=1
	vld	$vr3, $a7, %pc_lo12(.LCPI18_2)
	vld	$vr4, $a6, %pc_lo12(.LCPI18_3)
	vld	$vr6, $a5, %pc_lo12(.LCPI18_4)
	vld	$vr7, $a4, %pc_lo12(.LCPI18_5)
	vld	$vr8, $a3, %pc_lo12(.LCPI18_6)
	vld	$vr9, $a2, %pc_lo12(.LCPI18_7)
	vld	$vr10, $a1, %pc_lo12(.LCPI18_8)
	vld	$vr11, $a0, %pc_lo12(.LCPI18_9)
	addi.w	$t8, $zero, -16
	.p2align	4, , 16
.LBB18_40:                              # %vector.body1610
                                        #   Parent Loop BB18_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t5, $t8
	vsll.d	$vr12, $vr1, $vr3
	vsll.d	$vr13, $vr1, $vr4
	vsll.d	$vr14, $vr1, $vr6
	vsll.d	$vr15, $vr1, $vr7
	vsll.d	$vr16, $vr1, $vr8
	vsll.d	$vr17, $vr1, $vr9
	vsll.d	$vr18, $vr1, $vr10
	vsll.d	$vr19, $vr1, $vr11
	vand.v	$vr20, $vr12, $vr5
	vand.v	$vr13, $vr13, $vr5
	vand.v	$vr14, $vr14, $vr5
	vand.v	$vr15, $vr15, $vr5
	vand.v	$vr12, $vr16, $vr5
	vand.v	$vr16, $vr17, $vr5
	vand.v	$vr17, $vr18, $vr5
	vand.v	$vr18, $vr19, $vr5
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr23
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr23
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr23
	vseqi.d	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr23
	vpickev.w	$vr12, $vr12, $vr16
	vpickev.h	$vr12, $vr12, $vr17
	vpickve2gr.b	$t1, $vr12, 2
	andi	$t1, $t1, 1
	vpickve2gr.b	$t8, $vr18, 0
	bstrins.d	$t8, $t1, 63, 1
	vpickve2gr.b	$t1, $vr12, 4
	bstrins.d	$t8, $t1, 2, 2
	vpickve2gr.b	$t1, $vr12, 6
	bstrins.d	$t8, $t1, 3, 3
	vpickve2gr.b	$t1, $vr12, 8
	bstrins.d	$t8, $t1, 4, 4
	vpickve2gr.b	$t1, $vr12, 10
	bstrins.d	$t8, $t1, 5, 5
	vpickve2gr.b	$t1, $vr12, 12
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$t1, $t8, $t1
	vpickve2gr.b	$t8, $vr12, 14
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 7
	or	$t1, $t1, $t8
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr23
	vpickve2gr.b	$t8, $vr15, 0
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 8
	or	$t1, $t1, $t8
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr23
	vpickev.w	$vr14, $vr14, $vr15
	vseqi.d	$vr13, $vr13, 0
	vxor.v	$vr13, $vr13, $vr23
	vseqi.d	$vr15, $vr20, 0
	vxor.v	$vr15, $vr15, $vr23
	vpickev.w	$vr13, $vr15, $vr13
	vpickev.h	$vr13, $vr13, $vr14
	vpickve2gr.b	$t8, $vr13, 2
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 9
	or	$t1, $t1, $t8
	vpickve2gr.b	$t8, $vr13, 4
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 10
	or	$t1, $t1, $t8
	vpickve2gr.b	$t8, $vr13, 6
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 11
	or	$t1, $t1, $t8
	vpickve2gr.b	$t8, $vr13, 8
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 12
	or	$t1, $t1, $t8
	vpickve2gr.b	$t8, $vr13, 10
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 13
	or	$t1, $t1, $t8
	vpickve2gr.b	$t8, $vr13, 12
	andi	$t8, $t8, 1
	slli.d	$t8, $t8, 14
	or	$t1, $t1, $t8
	vpickve2gr.b	$t8, $vr13, 14
	slli.d	$t8, $t8, 15
	or	$t1, $t1, $t8
	bstrpick.d	$t1, $t1, 15, 0
	addi.d	$t8, $t5, 16
	bnez	$t1, .LBB18_42
# %bb.41:                               # %vector.body1610
                                        #   in Loop: Header=BB18_40 Depth=2
	vaddi.du	$vr11, $vr11, 16
	vaddi.du	$vr10, $vr10, 16
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	bne	$t5, $t2, .LBB18_40
.LBB18_42:                              # %middle.split1615
                                        #   in Loop: Header=BB18_27 Depth=1
	slli.d	$t1, $t1, 48
	beqz	$t1, .LBB18_97
# %bb.43:                               # %vector.early.exit1617
                                        #   in Loop: Header=BB18_27 Depth=1
	vpickev.b	$vr3, $vr13, $vr12
	vand.v	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 8
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 4
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 2
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 1
	vmax.bu	$vr2, $vr3, $vr2
	vpickve2gr.b	$t1, $vr2, 0
	ori	$t5, $zero, 16
	sub.d	$t1, $t5, $t1
	andi	$t1, $t1, 255
	sub.d	$t1, $t4, $t1
	bne	$t1, $t8, .LBB18_97
.LBB18_44:                              # %.thread1112
                                        #   in Loop: Header=BB18_27 Depth=1
	srai.d	$t1, $t3, 63
	xor	$t1, $t1, $t3
	clz.d	$t1, $t1
	addi.d	$t4, $t1, -1
	srli.d	$t5, $t3, 63
	vreplgr2vr.d	$vr2, $t5
	move	$t8, $t7
	vld	$vr3, $sp, 64                   # 16-byte Folded Reload
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	vld	$vr7, $sp, 112                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_45:                              # %vector.body1597
                                        #   Parent Loop BB18_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s7, $t8
	vsub.d	$vr8, $vr0, $vr7
	vsub.d	$vr9, $vr0, $vr6
	vsub.d	$vr10, $vr0, $vr4
	vsub.d	$vr11, $vr0, $vr3
	vsrl.d	$vr11, $vr5, $vr11
	vsrl.d	$vr10, $vr5, $vr10
	vsrl.d	$vr9, $vr5, $vr9
	vsrl.d	$vr8, $vr5, $vr8
	vand.v	$vr12, $vr8, $vr1
	vand.v	$vr13, $vr9, $vr1
	vand.v	$vr8, $vr10, $vr1
	vand.v	$vr9, $vr11, $vr1
	vseq.d	$vr9, $vr9, $vr2
	vxor.v	$vr9, $vr9, $vr23
	vseq.d	$vr8, $vr8, $vr2
	vxor.v	$vr8, $vr8, $vr23
	vpickev.w	$vr10, $vr8, $vr9
	vpickve2gr.h	$t1, $vr10, 2
	andi	$t1, $t1, 1
	vpickve2gr.h	$t8, $vr9, 0
	bstrins.d	$t8, $t1, 63, 1
	vpickve2gr.h	$t1, $vr10, 4
	bstrins.d	$t8, $t1, 2, 2
	vpickve2gr.h	$t1, $vr10, 6
	bstrins.d	$t8, $t1, 3, 3
	vseq.d	$vr10, $vr13, $vr2
	vxor.v	$vr11, $vr10, $vr23
	vseq.d	$vr10, $vr12, $vr2
	vxor.v	$vr10, $vr10, $vr23
	vpickev.w	$vr12, $vr10, $vr11
	vpickve2gr.h	$t1, $vr12, 0
	bstrins.d	$t8, $t1, 4, 4
	vpickve2gr.h	$t1, $vr12, 2
	bstrins.d	$t8, $t1, 5, 5
	vpickve2gr.h	$t1, $vr12, 4
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 6
	or	$t1, $t8, $t1
	vpickve2gr.h	$t8, $vr12, 6
	slli.d	$t8, $t8, 7
	or	$t1, $t1, $t8
	andi	$t1, $t1, 255
	addi.d	$t8, $s7, 8
	bnez	$t1, .LBB18_47
# %bb.46:                               # %vector.body1597
                                        #   in Loop: Header=BB18_45 Depth=2
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr4, $vr4, 8
	vaddi.du	$vr6, $vr6, 8
	vaddi.du	$vr7, $vr7, 8
	bne	$s7, $s8, .LBB18_45
.LBB18_47:                              # %middle.split1602
                                        #   in Loop: Header=BB18_27 Depth=1
	beqz	$t1, .LBB18_49
# %bb.48:                               # %vector.early.exit1604
                                        #   in Loop: Header=BB18_27 Depth=1
	vpickve2gr.d	$t1, $vr9, 0
	vinsgr2vr.b	$vr2, $t1, 0
	vpickve2gr.d	$t1, $vr9, 1
	vinsgr2vr.b	$vr2, $t1, 1
	vpickve2gr.d	$t1, $vr8, 0
	vinsgr2vr.b	$vr2, $t1, 2
	vpickve2gr.d	$t1, $vr8, 1
	vinsgr2vr.b	$vr2, $t1, 3
	vpickve2gr.d	$t1, $vr11, 0
	vinsgr2vr.b	$vr2, $t1, 4
	vpickve2gr.d	$t1, $vr11, 1
	vinsgr2vr.b	$vr2, $t1, 5
	vpickve2gr.d	$t1, $vr10, 0
	vinsgr2vr.b	$vr2, $t1, 6
	vpickve2gr.d	$t1, $vr10, 1
	vinsgr2vr.b	$vr2, $t1, 7
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	vand.v	$vr2, $vr2, $vr3
	vbsrl.v	$vr3, $vr2, 4
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 2
	vmax.bu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 1
	vmax.bu	$vr2, $vr3, $vr2
	vpickve2gr.b	$t1, $vr2, 0
	ori	$t5, $zero, 8
	sub.d	$t1, $t5, $t1
	andi	$t1, $t1, 255
	add.d	$t8, $t1, $t8
	b	.LBB18_56
	.p2align	4, , 16
.LBB18_49:                              # %scalar.ph1591
                                        #   in Loop: Header=BB18_27 Depth=1
	bstrpick.d	$t1, $t3, 6, 6
	ori	$t8, $zero, 57
	bne	$t1, $t5, .LBB18_56
# %bb.50:                               # %scalar.ph1591.1
                                        #   in Loop: Header=BB18_27 Depth=1
	bstrpick.d	$t1, $t3, 5, 5
	ori	$t8, $zero, 58
	bne	$t1, $t5, .LBB18_56
# %bb.51:                               # %scalar.ph1591.2
                                        #   in Loop: Header=BB18_27 Depth=1
	bstrpick.d	$t1, $t3, 4, 4
	ori	$t8, $zero, 59
	bne	$t1, $t5, .LBB18_56
# %bb.52:                               # %scalar.ph1591.3
                                        #   in Loop: Header=BB18_27 Depth=1
	bstrpick.d	$t1, $t3, 3, 3
	ori	$t8, $zero, 60
	bne	$t1, $t5, .LBB18_56
# %bb.53:                               # %scalar.ph1591.4
                                        #   in Loop: Header=BB18_27 Depth=1
	bstrpick.d	$t1, $t3, 2, 2
	ori	$t8, $zero, 61
	bne	$t1, $t5, .LBB18_56
# %bb.54:                               # %scalar.ph1591.5
                                        #   in Loop: Header=BB18_27 Depth=1
	bstrpick.d	$t1, $t3, 1, 1
	ori	$t8, $zero, 62
	bne	$t1, $t5, .LBB18_56
# %bb.55:                               # %scalar.ph1591.6
                                        #   in Loop: Header=BB18_27 Depth=1
	andi	$t1, $t3, 1
	ori	$t8, $zero, 63
	beq	$t1, $t5, .LBB18_57
	.p2align	4, , 16
.LBB18_56:                              # %.split.loop.exit.i256
                                        #   in Loop: Header=BB18_27 Depth=1
	addi.w	$t8, $t8, -1
.LBB18_57:                              # %my_clrsbl.exit
                                        #   in Loop: Header=BB18_27 Depth=1
	bne	$t4, $t8, .LBB18_97
# %bb.58:                               # %vector.body1581
                                        #   in Loop: Header=BB18_27 Depth=1
	vld	$vr2, $a0, %pc_lo12(.LCPI18_9)
	vld	$vr3, $a1, %pc_lo12(.LCPI18_8)
	vld	$vr4, $a2, %pc_lo12(.LCPI18_7)
	vld	$vr6, $a3, %pc_lo12(.LCPI18_6)
	vst	$vr2, $sp, 256                  # 16-byte Folded Spill
	vsrl.d	$vr2, $vr5, $vr2
	vst	$vr3, $sp, 240                  # 16-byte Folded Spill
	vsrl.d	$vr3, $vr5, $vr3
	vst	$vr4, $sp, 224                  # 16-byte Folded Spill
	vsrl.d	$vr4, $vr5, $vr4
	vst	$vr6, $sp, 208                  # 16-byte Folded Spill
	vsrl.d	$vr7, $vr5, $vr6
	vpickev.w	$vr6, $vr3, $vr2
	vpickev.w	$vr7, $vr7, $vr4
	vld	$vr24, $sp, 512                 # 16-byte Folded Reload
	vand.v	$vr2, $vr6, $vr24
	vand.v	$vr3, $vr7, $vr24
	vld	$vr4, $a4, %pc_lo12(.LCPI18_5)
	vld	$vr8, $a5, %pc_lo12(.LCPI18_4)
	vld	$vr9, $a6, %pc_lo12(.LCPI18_3)
	vld	$vr10, $a7, %pc_lo12(.LCPI18_2)
	vst	$vr4, $sp, 192                  # 16-byte Folded Spill
	vsrl.d	$vr4, $vr5, $vr4
	vst	$vr8, $sp, 176                  # 16-byte Folded Spill
	vsrl.d	$vr8, $vr5, $vr8
	vst	$vr9, $sp, 160                  # 16-byte Folded Spill
	vsrl.d	$vr9, $vr5, $vr9
	vst	$vr10, $sp, 144                 # 16-byte Folded Spill
	vsrl.d	$vr10, $vr5, $vr10
	vpickev.w	$vr8, $vr8, $vr4
	vpickev.w	$vr9, $vr10, $vr9
	vand.v	$vr4, $vr8, $vr24
	vand.v	$vr10, $vr9, $vr24
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr10, $vr3
	vld	$vr4, $fp, %pc_lo12(.LCPI18_15)
	vld	$vr10, $s0, %pc_lo12(.LCPI18_16)
	vld	$vr11, $s1, %pc_lo12(.LCPI18_17)
	vld	$vr12, $s2, %pc_lo12(.LCPI18_18)
	vst	$vr4, $sp, 480                  # 16-byte Folded Spill
	vsrl.d	$vr4, $vr5, $vr4
	vst	$vr10, $sp, 464                 # 16-byte Folded Spill
	vsrl.d	$vr10, $vr5, $vr10
	vst	$vr11, $sp, 448                 # 16-byte Folded Spill
	vsrl.d	$vr11, $vr5, $vr11
	vst	$vr12, $sp, 432                 # 16-byte Folded Spill
	vsrl.d	$vr12, $vr5, $vr12
	vpickev.w	$vr10, $vr10, $vr4
	vpickev.w	$vr11, $vr12, $vr11
	vand.v	$vr4, $vr10, $vr24
	vand.v	$vr12, $vr11, $vr24
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr12, $vr3
	vld	$vr4, $s3, %pc_lo12(.LCPI18_19)
	vld	$vr12, $s4, %pc_lo12(.LCPI18_20)
	vld	$vr13, $s5, %pc_lo12(.LCPI18_21)
	vld	$vr14, $s6, %pc_lo12(.LCPI18_22)
	vst	$vr4, $sp, 416                  # 16-byte Folded Spill
	vsrl.d	$vr4, $vr5, $vr4
	vst	$vr12, $sp, 400                 # 16-byte Folded Spill
	vsrl.d	$vr12, $vr5, $vr12
	vst	$vr13, $sp, 384                 # 16-byte Folded Spill
	vsrl.d	$vr13, $vr5, $vr13
	vst	$vr14, $sp, 368                 # 16-byte Folded Spill
	vsrl.d	$vr14, $vr5, $vr14
	vpickev.w	$vr12, $vr12, $vr4
	vpickev.w	$vr13, $vr14, $vr13
	vand.v	$vr4, $vr12, $vr24
	pcalau12i	$t1, %pc_hi20(.LCPI18_23)
	vld	$vr15, $t1, %pc_lo12(.LCPI18_23)
	vand.v	$vr14, $vr13, $vr24
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr14, $vr3
	vst	$vr15, $sp, 352                 # 16-byte Folded Spill
	vsrl.d	$vr4, $vr5, $vr15
	pcalau12i	$t1, %pc_hi20(.LCPI18_24)
	vld	$vr14, $t1, %pc_lo12(.LCPI18_24)
	pcalau12i	$t1, %pc_hi20(.LCPI18_25)
	vld	$vr15, $t1, %pc_lo12(.LCPI18_25)
	pcalau12i	$t1, %pc_hi20(.LCPI18_26)
	vld	$vr16, $t1, %pc_lo12(.LCPI18_26)
	vst	$vr14, $sp, 336                 # 16-byte Folded Spill
	vsrl.d	$vr14, $vr5, $vr14
	vpickev.w	$vr14, $vr14, $vr4
	vst	$vr15, $sp, 320                 # 16-byte Folded Spill
	vsrl.d	$vr4, $vr5, $vr15
	vst	$vr16, $sp, 304                 # 16-byte Folded Spill
	vsrl.d	$vr15, $vr5, $vr16
	vpickev.w	$vr15, $vr15, $vr4
	vand.v	$vr4, $vr14, $vr24
	vadd.w	$vr2, $vr4, $vr2
	vand.v	$vr4, $vr15, $vr24
	vadd.w	$vr3, $vr4, $vr3
	pcalau12i	$t1, %pc_hi20(.LCPI18_27)
	pcalau12i	$t4, %pc_hi20(.LCPI18_28)
	vld	$vr4, $t1, %pc_lo12(.LCPI18_27)
	pcalau12i	$t1, %pc_hi20(.LCPI18_29)
	pcalau12i	$t5, %pc_hi20(.LCPI18_30)
	vld	$vr16, $t4, %pc_lo12(.LCPI18_28)
	vst	$vr4, $sp, 288                  # 16-byte Folded Spill
	vsrl.d	$vr4, $vr5, $vr4
	vld	$vr25, $t1, %pc_lo12(.LCPI18_29)
	vld	$vr26, $t5, %pc_lo12(.LCPI18_30)
	vst	$vr16, $sp, 272                 # 16-byte Folded Spill
	vsrl.d	$vr16, $vr5, $vr16
	vpickev.w	$vr16, $vr16, $vr4
	vsrl.d	$vr4, $vr5, $vr25
	vsrl.d	$vr17, $vr5, $vr26
	vpickev.w	$vr17, $vr17, $vr4
	vand.v	$vr4, $vr16, $vr24
	vadd.w	$vr4, $vr4, $vr2
	vand.v	$vr2, $vr17, $vr24
	vadd.w	$vr3, $vr2, $vr3
	pcalau12i	$t1, %pc_hi20(.LCPI18_31)
	pcalau12i	$t4, %pc_hi20(.LCPI18_32)
	vld	$vr30, $t1, %pc_lo12(.LCPI18_31)
	pcalau12i	$t1, %pc_hi20(.LCPI18_33)
	pcalau12i	$t5, %pc_hi20(.LCPI18_34)
	vld	$vr2, $t4, %pc_lo12(.LCPI18_32)
	vsrl.d	$vr18, $vr5, $vr30
	vld	$vr27, $t1, %pc_lo12(.LCPI18_33)
	vld	$vr28, $t5, %pc_lo12(.LCPI18_34)
	vsrl.d	$vr19, $vr5, $vr2
	vpickev.w	$vr18, $vr19, $vr18
	vsrl.d	$vr19, $vr5, $vr27
	vsrl.d	$vr20, $vr5, $vr28
	vpickev.w	$vr19, $vr20, $vr19
	vand.v	$vr20, $vr18, $vr24
	vadd.w	$vr21, $vr20, $vr4
	vand.v	$vr4, $vr19, $vr24
	vadd.w	$vr22, $vr4, $vr3
	pcalau12i	$t1, %pc_hi20(.LCPI18_35)
	pcalau12i	$t4, %pc_hi20(.LCPI18_36)
	vld	$vr29, $t1, %pc_lo12(.LCPI18_35)
	pcalau12i	$t1, %pc_hi20(.LCPI18_37)
	pcalau12i	$t5, %pc_hi20(.LCPI18_38)
	vld	$vr31, $t4, %pc_lo12(.LCPI18_36)
	vsrl.d	$vr20, $vr5, $vr29
	vld	$vr3, $t1, %pc_lo12(.LCPI18_37)
	vld	$vr4, $t5, %pc_lo12(.LCPI18_38)
	vsrl.d	$vr23, $vr5, $vr31
	vpickev.w	$vr20, $vr23, $vr20
	vsrl.d	$vr23, $vr5, $vr3
	vsrl.d	$vr5, $vr5, $vr4
	vpickev.w	$vr5, $vr5, $vr23
	vand.v	$vr23, $vr20, $vr24
	vadd.w	$vr21, $vr23, $vr21
	vand.v	$vr23, $vr5, $vr24
	vadd.w	$vr22, $vr23, $vr22
	vadd.w	$vr21, $vr22, $vr21
	vhaddw.d.w	$vr21, $vr21, $vr21
	vhaddw.q.d	$vr21, $vr21, $vr21
	vpickve2gr.d	$t4, $vr21, 0
	vldi	$vr21, 0
	vinsgr2vr.d	$vr21, $t3, 0
	vpcnt.d	$vr21, $vr21
	vpickve2gr.d	$t1, $vr21, 0
	addi.w	$t3, $t4, 0
	bne	$t3, $t1, .LBB18_97
# %bb.59:                               # %vector.body1570
                                        #   in Loop: Header=BB18_27 Depth=1
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	vadd.w	$vr6, $vr6, $vr10
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr6, $vr6, $vr12
	vadd.w	$vr7, $vr7, $vr13
	vadd.w	$vr6, $vr6, $vr14
	vadd.w	$vr7, $vr7, $vr15
	vadd.w	$vr6, $vr6, $vr16
	vadd.w	$vr7, $vr7, $vr17
	vadd.w	$vr6, $vr6, $vr18
	vadd.w	$vr7, $vr7, $vr19
	vadd.w	$vr6, $vr6, $vr20
	vadd.w	$vr5, $vr7, $vr5
	vadd.w	$vr5, $vr5, $vr6
	vhaddw.d.w	$vr5, $vr5, $vr5
	vhaddw.q.d	$vr5, $vr5, $vr5
	vpickve2gr.d	$t1, $vr5, 0
	xor	$t1, $t1, $t4
	andi	$t1, $t1, 1
	bnez	$t1, .LBB18_97
# %bb.60:                               #   in Loop: Header=BB18_27 Depth=1
	addi.d	$t6, $t6, 1
	vld	$vr23, $sp, 496                 # 16-byte Folded Reload
	ori	$t1, $zero, 13
	bne	$t6, $t1, .LBB18_27
# %bb.61:                               # %.preheader1389.preheader
	pcalau12i	$t1, %pc_hi20(longlongs)
	addi.d	$t1, $t1, %pc_lo12(longlongs)
	move	$t2, $zero
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	vld	$vr5, $t3, %pc_lo12(.LCPI18_11)
	vst	$vr5, $sp, 128                  # 16-byte Folded Spill
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	vld	$vr5, $t3, %pc_lo12(.LCPI18_12)
	vst	$vr5, $sp, 112                  # 16-byte Folded Spill
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	vld	$vr5, $t3, %pc_lo12(.LCPI18_13)
	vst	$vr5, $sp, 96                   # 16-byte Folded Spill
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	vld	$vr5, $t3, %pc_lo12(.LCPI18_14)
	vst	$vr5, $sp, 80                   # 16-byte Folded Spill
	addi.w	$t3, $zero, -7
	ori	$t4, $zero, 8
	ori	$t5, $zero, 13
	ori	$t6, $zero, 41
	ori	$t7, $zero, 16
	ori	$t8, $zero, 32
	.p2align	4, , 16
.LBB18_62:                              # %.preheader1389
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_64 Depth 2
                                        #     Child Loop BB18_70 Depth 2
                                        #     Child Loop BB18_75 Depth 2
                                        #     Child Loop BB18_80 Depth 2
	slli.d	$fp, $t2, 3
	ldx.d	$fp, $t1, $fp
	vreplgr2vr.d	$vr5, $fp
	beqz	$fp, .LBB18_79
# %bb.63:                               # %vector.ph1710
                                        #   in Loop: Header=BB18_62 Depth=1
	ctz.d	$s0, $fp
	addi.d	$s1, $s0, 1
	ori	$s2, $zero, 15
	ori	$s4, $zero, 48
	vld	$vr6, $sp, 256                  # 16-byte Folded Reload
	vld	$vr7, $sp, 240                  # 16-byte Folded Reload
	vld	$vr8, $sp, 224                  # 16-byte Folded Reload
	vld	$vr9, $sp, 208                  # 16-byte Folded Reload
	vld	$vr10, $sp, 192                 # 16-byte Folded Reload
	vld	$vr11, $sp, 176                 # 16-byte Folded Reload
	vld	$vr12, $sp, 160                 # 16-byte Folded Reload
	vld	$vr13, $sp, 144                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_64:                              # %vector.body1713
                                        #   Parent Loop BB18_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s3, $s4
	vsll.d	$vr14, $vr1, $vr13
	vsll.d	$vr15, $vr1, $vr12
	vsll.d	$vr16, $vr1, $vr11
	vsll.d	$vr17, $vr1, $vr10
	vsll.d	$vr18, $vr1, $vr9
	vsll.d	$vr19, $vr1, $vr8
	vsll.d	$vr20, $vr1, $vr7
	vsll.d	$vr21, $vr1, $vr6
	vand.v	$vr22, $vr14, $vr5
	vand.v	$vr15, $vr15, $vr5
	vand.v	$vr16, $vr16, $vr5
	vand.v	$vr17, $vr17, $vr5
	vand.v	$vr14, $vr18, $vr5
	vand.v	$vr18, $vr19, $vr5
	vand.v	$vr19, $vr20, $vr5
	vand.v	$vr20, $vr21, $vr5
	vseqi.d	$vr20, $vr20, 0
	vxor.v	$vr20, $vr20, $vr23
	vseqi.d	$vr19, $vr19, 0
	vxor.v	$vr19, $vr19, $vr23
	vpickev.w	$vr19, $vr19, $vr20
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr23
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr23
	vpickev.w	$vr14, $vr14, $vr18
	vpickev.h	$vr14, $vr14, $vr19
	vpickve2gr.b	$s4, $vr14, 2
	andi	$s4, $s4, 1
	vpickve2gr.b	$s5, $vr20, 0
	bstrins.d	$s5, $s4, 63, 1
	vpickve2gr.b	$s4, $vr14, 4
	bstrins.d	$s5, $s4, 2, 2
	vpickve2gr.b	$s4, $vr14, 6
	bstrins.d	$s5, $s4, 3, 3
	vpickve2gr.b	$s4, $vr14, 8
	bstrins.d	$s5, $s4, 4, 4
	vpickve2gr.b	$s4, $vr14, 10
	bstrins.d	$s5, $s4, 5, 5
	vpickve2gr.b	$s4, $vr14, 12
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 6
	or	$s4, $s5, $s4
	vpickve2gr.b	$s5, $vr14, 14
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 7
	or	$s4, $s4, $s5
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr23
	vpickve2gr.b	$s5, $vr17, 0
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 8
	or	$s4, $s4, $s5
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr23
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr23
	vseqi.d	$vr17, $vr22, 0
	vxor.v	$vr17, $vr17, $vr23
	vpickev.w	$vr15, $vr17, $vr15
	vpickev.h	$vr15, $vr15, $vr16
	vpickve2gr.b	$s5, $vr15, 2
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 9
	or	$s4, $s4, $s5
	vpickve2gr.b	$s5, $vr15, 4
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 10
	or	$s4, $s4, $s5
	vpickve2gr.b	$s5, $vr15, 6
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 11
	or	$s4, $s4, $s5
	vpickve2gr.b	$s5, $vr15, 8
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 12
	or	$s4, $s4, $s5
	vpickve2gr.b	$s5, $vr15, 10
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 13
	or	$s4, $s4, $s5
	vpickve2gr.b	$s5, $vr15, 12
	andi	$s5, $s5, 1
	slli.d	$s5, $s5, 14
	or	$s4, $s4, $s5
	vpickve2gr.b	$s5, $vr15, 14
	slli.d	$s5, $s5, 15
	or	$s4, $s4, $s5
	bstrpick.d	$s5, $s4, 15, 0
	addi.d	$s2, $s2, -16
	bnez	$s5, .LBB18_66
# %bb.65:                               # %vector.body1713
                                        #   in Loop: Header=BB18_64 Depth=2
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr10, $vr10, 16
	vaddi.du	$vr11, $vr11, 16
	vaddi.du	$vr12, $vr12, 16
	vaddi.du	$vr13, $vr13, 16
	addi.d	$s4, $s3, -16
	bnez	$s3, .LBB18_64
.LBB18_66:                              # %middle.split1718
                                        #   in Loop: Header=BB18_62 Depth=1
	slli.d	$s3, $s5, 48
	beqz	$s3, .LBB18_68
# %bb.67:                               # %vector.early.exit1720
                                        #   in Loop: Header=BB18_62 Depth=1
	pcalau12i	$s3, %pc_hi20(.LCPI18_10)
	vld	$vr6, $s3, %pc_lo12(.LCPI18_10)
	vpickev.b	$vr7, $vr15, $vr14
	vand.v	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 8
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 4
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 2
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 1
	vmax.bu	$vr6, $vr7, $vr6
	vpickve2gr.b	$s3, $vr6, 0
	sub.d	$s3, $t7, $s3
	andi	$s3, $s3, 255
	sub.w	$s2, $s3, $s2
	beq	$s1, $s2, .LBB18_69
	b	.LBB18_97
	.p2align	4, , 16
.LBB18_68:                              #   in Loop: Header=BB18_62 Depth=1
	ori	$s2, $zero, 65
	bne	$s1, $s2, .LBB18_97
.LBB18_69:                              # %vector.ph1698
                                        #   in Loop: Header=BB18_62 Depth=1
	vld	$vr6, $a7, %pc_lo12(.LCPI18_2)
	vld	$vr7, $a6, %pc_lo12(.LCPI18_3)
	vld	$vr8, $a5, %pc_lo12(.LCPI18_4)
	vld	$vr9, $a4, %pc_lo12(.LCPI18_5)
	vld	$vr10, $a3, %pc_lo12(.LCPI18_6)
	vld	$vr11, $a2, %pc_lo12(.LCPI18_7)
	vld	$vr12, $a1, %pc_lo12(.LCPI18_8)
	vld	$vr13, $a0, %pc_lo12(.LCPI18_9)
	clz.d	$s1, $fp
	addi.w	$s3, $zero, -16
	.p2align	4, , 16
.LBB18_70:                              # %vector.body1701
                                        #   Parent Loop BB18_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $s3
	vreplgr2vr.d	$vr14, $t0
	vsrl.d	$vr15, $vr14, $vr6
	vsrl.d	$vr16, $vr14, $vr7
	vsrl.d	$vr17, $vr14, $vr8
	vsrl.d	$vr18, $vr14, $vr9
	vsrl.d	$vr19, $vr14, $vr10
	vsrl.d	$vr20, $vr14, $vr11
	vsrl.d	$vr21, $vr14, $vr12
	vsrl.d	$vr14, $vr14, $vr13
	vand.v	$vr15, $vr15, $vr5
	vand.v	$vr16, $vr16, $vr5
	vand.v	$vr17, $vr17, $vr5
	vand.v	$vr18, $vr18, $vr5
	vand.v	$vr19, $vr19, $vr5
	vand.v	$vr20, $vr20, $vr5
	vand.v	$vr21, $vr21, $vr5
	vand.v	$vr14, $vr14, $vr5
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr22, $vr14, $vr23
	vseqi.d	$vr14, $vr21, 0
	vxor.v	$vr14, $vr14, $vr23
	vpickev.w	$vr14, $vr14, $vr22
	vseqi.d	$vr20, $vr20, 0
	vxor.v	$vr20, $vr20, $vr23
	vseqi.d	$vr19, $vr19, 0
	vxor.v	$vr19, $vr19, $vr23
	vpickev.w	$vr19, $vr19, $vr20
	vpickev.h	$vr14, $vr19, $vr14
	vpickve2gr.b	$s3, $vr14, 2
	andi	$s3, $s3, 1
	vpickve2gr.b	$s4, $vr22, 0
	bstrins.d	$s4, $s3, 63, 1
	vpickve2gr.b	$s3, $vr14, 4
	bstrins.d	$s4, $s3, 2, 2
	vpickve2gr.b	$s3, $vr14, 6
	bstrins.d	$s4, $s3, 3, 3
	vpickve2gr.b	$s3, $vr14, 8
	bstrins.d	$s4, $s3, 4, 4
	vpickve2gr.b	$s3, $vr14, 10
	bstrins.d	$s4, $s3, 5, 5
	vpickve2gr.b	$s3, $vr14, 12
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 6
	or	$s3, $s4, $s3
	vpickve2gr.b	$s4, $vr14, 14
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 7
	or	$s3, $s3, $s4
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr23
	vpickve2gr.b	$s4, $vr18, 0
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 8
	or	$s3, $s3, $s4
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr23
	vpickev.w	$vr17, $vr17, $vr18
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr23
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr23
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	vpickve2gr.b	$s4, $vr15, 2
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 9
	or	$s3, $s3, $s4
	vpickve2gr.b	$s4, $vr15, 4
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 10
	or	$s3, $s3, $s4
	vpickve2gr.b	$s4, $vr15, 6
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 11
	or	$s3, $s3, $s4
	vpickve2gr.b	$s4, $vr15, 8
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 12
	or	$s3, $s3, $s4
	vpickve2gr.b	$s4, $vr15, 10
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 13
	or	$s3, $s3, $s4
	vpickve2gr.b	$s4, $vr15, 12
	andi	$s4, $s4, 1
	slli.d	$s4, $s4, 14
	or	$s3, $s3, $s4
	vpickve2gr.b	$s4, $vr15, 14
	slli.d	$s4, $s4, 15
	or	$s3, $s3, $s4
	bstrpick.d	$s4, $s3, 15, 0
	addi.d	$s3, $s2, 16
	bnez	$s4, .LBB18_72
# %bb.71:                               # %vector.body1701
                                        #   in Loop: Header=BB18_70 Depth=2
	vaddi.du	$vr13, $vr13, 16
	vaddi.du	$vr12, $vr12, 16
	vaddi.du	$vr11, $vr11, 16
	vaddi.du	$vr10, $vr10, 16
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	bne	$s2, $t8, .LBB18_70
.LBB18_72:                              # %middle.split1706
                                        #   in Loop: Header=BB18_62 Depth=1
	slli.d	$s2, $s4, 48
	beqz	$s2, .LBB18_97
# %bb.73:                               # %vector.early.exit1708
                                        #   in Loop: Header=BB18_62 Depth=1
	pcalau12i	$s2, %pc_hi20(.LCPI18_10)
	vld	$vr24, $s2, %pc_lo12(.LCPI18_10)
	vpickev.b	$vr6, $vr15, $vr14
	vand.v	$vr6, $vr6, $vr24
	vbsrl.v	$vr7, $vr6, 8
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 4
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 2
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 1
	vmax.bu	$vr6, $vr7, $vr6
	vpickve2gr.b	$s2, $vr6, 0
	sub.d	$s2, $t7, $s2
	andi	$s2, $s2, 255
	sub.d	$s1, $s1, $s2
	bne	$s1, $s3, .LBB18_97
# %bb.74:                               # %vector.ph1686
                                        #   in Loop: Header=BB18_62 Depth=1
	vld	$vr7, $a7, %pc_lo12(.LCPI18_2)
	vld	$vr8, $a6, %pc_lo12(.LCPI18_3)
	vld	$vr9, $a5, %pc_lo12(.LCPI18_4)
	vld	$vr10, $a4, %pc_lo12(.LCPI18_5)
	vld	$vr11, $a3, %pc_lo12(.LCPI18_6)
	vld	$vr12, $a2, %pc_lo12(.LCPI18_7)
	vld	$vr13, $a1, %pc_lo12(.LCPI18_8)
	vld	$vr6, $a0, %pc_lo12(.LCPI18_9)
	addi.w	$s2, $zero, -16
	.p2align	4, , 16
.LBB18_75:                              # %vector.body1689
                                        #   Parent Loop BB18_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s1, $s2
	vsll.d	$vr14, $vr1, $vr7
	vsll.d	$vr15, $vr1, $vr8
	vsll.d	$vr16, $vr1, $vr9
	vsll.d	$vr17, $vr1, $vr10
	vsll.d	$vr18, $vr1, $vr11
	vsll.d	$vr19, $vr1, $vr12
	vsll.d	$vr20, $vr1, $vr13
	vsll.d	$vr21, $vr1, $vr6
	vand.v	$vr22, $vr14, $vr5
	vand.v	$vr15, $vr15, $vr5
	vand.v	$vr16, $vr16, $vr5
	vand.v	$vr17, $vr17, $vr5
	vand.v	$vr14, $vr18, $vr5
	vand.v	$vr18, $vr19, $vr5
	vand.v	$vr19, $vr20, $vr5
	vand.v	$vr20, $vr21, $vr5
	vseqi.d	$vr20, $vr20, 0
	vxor.v	$vr20, $vr20, $vr23
	vseqi.d	$vr19, $vr19, 0
	vxor.v	$vr19, $vr19, $vr23
	vpickev.w	$vr19, $vr19, $vr20
	vseqi.d	$vr18, $vr18, 0
	vxor.v	$vr18, $vr18, $vr23
	vseqi.d	$vr14, $vr14, 0
	vxor.v	$vr14, $vr14, $vr23
	vpickev.w	$vr14, $vr14, $vr18
	vpickev.h	$vr14, $vr14, $vr19
	vpickve2gr.b	$s2, $vr14, 2
	andi	$s2, $s2, 1
	vpickve2gr.b	$s3, $vr20, 0
	bstrins.d	$s3, $s2, 63, 1
	vpickve2gr.b	$s2, $vr14, 4
	bstrins.d	$s3, $s2, 2, 2
	vpickve2gr.b	$s2, $vr14, 6
	bstrins.d	$s3, $s2, 3, 3
	vpickve2gr.b	$s2, $vr14, 8
	bstrins.d	$s3, $s2, 4, 4
	vpickve2gr.b	$s2, $vr14, 10
	bstrins.d	$s3, $s2, 5, 5
	vpickve2gr.b	$s2, $vr14, 12
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 6
	or	$s2, $s3, $s2
	vpickve2gr.b	$s3, $vr14, 14
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 7
	or	$s2, $s2, $s3
	vseqi.d	$vr17, $vr17, 0
	vxor.v	$vr17, $vr17, $vr23
	vpickve2gr.b	$s3, $vr17, 0
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 8
	or	$s2, $s2, $s3
	vseqi.d	$vr16, $vr16, 0
	vxor.v	$vr16, $vr16, $vr23
	vpickev.w	$vr16, $vr16, $vr17
	vseqi.d	$vr15, $vr15, 0
	vxor.v	$vr15, $vr15, $vr23
	vseqi.d	$vr17, $vr22, 0
	vxor.v	$vr17, $vr17, $vr23
	vpickev.w	$vr15, $vr17, $vr15
	vpickev.h	$vr15, $vr15, $vr16
	vpickve2gr.b	$s3, $vr15, 2
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 9
	or	$s2, $s2, $s3
	vpickve2gr.b	$s3, $vr15, 4
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 10
	or	$s2, $s2, $s3
	vpickve2gr.b	$s3, $vr15, 6
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 11
	or	$s2, $s2, $s3
	vpickve2gr.b	$s3, $vr15, 8
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 12
	or	$s2, $s2, $s3
	vpickve2gr.b	$s3, $vr15, 10
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 13
	or	$s2, $s2, $s3
	vpickve2gr.b	$s3, $vr15, 12
	andi	$s3, $s3, 1
	slli.d	$s3, $s3, 14
	or	$s2, $s2, $s3
	vpickve2gr.b	$s3, $vr15, 14
	slli.d	$s3, $s3, 15
	or	$s2, $s2, $s3
	bstrpick.d	$s3, $s2, 15, 0
	addi.d	$s2, $s1, 16
	bnez	$s3, .LBB18_77
# %bb.76:                               # %vector.body1689
                                        #   in Loop: Header=BB18_75 Depth=2
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr13, $vr13, 16
	vaddi.du	$vr12, $vr12, 16
	vaddi.du	$vr11, $vr11, 16
	vaddi.du	$vr10, $vr10, 16
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	bne	$s1, $t8, .LBB18_75
.LBB18_77:                              # %middle.split1694
                                        #   in Loop: Header=BB18_62 Depth=1
	slli.d	$s1, $s3, 48
	beqz	$s1, .LBB18_97
# %bb.78:                               # %vector.early.exit1696
                                        #   in Loop: Header=BB18_62 Depth=1
	vpickev.b	$vr6, $vr15, $vr14
	vand.v	$vr6, $vr6, $vr24
	vbsrl.v	$vr7, $vr6, 8
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 4
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 2
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 1
	vmax.bu	$vr6, $vr7, $vr6
	vpickve2gr.b	$s1, $vr6, 0
	sub.d	$s1, $t7, $s1
	andi	$s1, $s1, 255
	sub.d	$s0, $s0, $s1
	bne	$s0, $s2, .LBB18_97
.LBB18_79:                              # %.thread1121
                                        #   in Loop: Header=BB18_62 Depth=1
	srai.d	$s0, $fp, 63
	xor	$s0, $s0, $fp
	clz.d	$s0, $s0
	addi.d	$s0, $s0, -1
	srli.d	$s1, $fp, 63
	vreplgr2vr.d	$vr6, $s1
	move	$s2, $t3
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	vld	$vr8, $sp, 96                   # 16-byte Folded Reload
	vld	$vr9, $sp, 112                  # 16-byte Folded Reload
	vld	$vr10, $sp, 128                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB18_80:                              # %vector.body1676
                                        #   Parent Loop BB18_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s3, $s2
	vsub.d	$vr11, $vr0, $vr10
	vsub.d	$vr12, $vr0, $vr9
	vsub.d	$vr13, $vr0, $vr8
	vsub.d	$vr14, $vr0, $vr7
	vsrl.d	$vr14, $vr5, $vr14
	vsrl.d	$vr13, $vr5, $vr13
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr11, $vr5, $vr11
	vand.v	$vr15, $vr11, $vr1
	vand.v	$vr16, $vr12, $vr1
	vand.v	$vr11, $vr13, $vr1
	vand.v	$vr12, $vr14, $vr1
	vseq.d	$vr12, $vr12, $vr6
	vxor.v	$vr12, $vr12, $vr23
	vseq.d	$vr11, $vr11, $vr6
	vxor.v	$vr11, $vr11, $vr23
	vpickev.w	$vr13, $vr11, $vr12
	vpickve2gr.h	$s2, $vr13, 2
	andi	$s2, $s2, 1
	vpickve2gr.h	$s4, $vr12, 0
	bstrins.d	$s4, $s2, 63, 1
	vpickve2gr.h	$s2, $vr13, 4
	bstrins.d	$s4, $s2, 2, 2
	vpickve2gr.h	$s2, $vr13, 6
	bstrins.d	$s4, $s2, 3, 3
	vseq.d	$vr13, $vr16, $vr6
	vxor.v	$vr14, $vr13, $vr23
	vseq.d	$vr13, $vr15, $vr6
	vxor.v	$vr13, $vr13, $vr23
	vpickev.w	$vr15, $vr13, $vr14
	vpickve2gr.h	$s2, $vr15, 0
	bstrins.d	$s4, $s2, 4, 4
	vpickve2gr.h	$s2, $vr15, 2
	bstrins.d	$s4, $s2, 5, 5
	vpickve2gr.h	$s2, $vr15, 4
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 6
	or	$s2, $s4, $s2
	vpickve2gr.h	$s4, $vr15, 6
	slli.d	$s4, $s4, 7
	or	$s2, $s2, $s4
	andi	$s4, $s2, 255
	addi.d	$s2, $s3, 8
	bnez	$s4, .LBB18_82
# %bb.81:                               # %vector.body1676
                                        #   in Loop: Header=BB18_80 Depth=2
	vaddi.du	$vr7, $vr7, 8
	vaddi.du	$vr8, $vr8, 8
	vaddi.du	$vr9, $vr9, 8
	vaddi.du	$vr10, $vr10, 8
	bne	$s3, $t6, .LBB18_80
.LBB18_82:                              # %middle.split1681
                                        #   in Loop: Header=BB18_62 Depth=1
	beqz	$s4, .LBB18_84
# %bb.83:                               # %vector.early.exit1683
                                        #   in Loop: Header=BB18_62 Depth=1
	vpickve2gr.d	$s1, $vr12, 0
	vinsgr2vr.b	$vr6, $s1, 0
	vpickve2gr.d	$s1, $vr12, 1
	vinsgr2vr.b	$vr6, $s1, 1
	vpickve2gr.d	$s1, $vr11, 0
	vinsgr2vr.b	$vr6, $s1, 2
	vpickve2gr.d	$s1, $vr11, 1
	vinsgr2vr.b	$vr6, $s1, 3
	vpickve2gr.d	$s1, $vr14, 0
	vinsgr2vr.b	$vr6, $s1, 4
	vpickve2gr.d	$s1, $vr14, 1
	vinsgr2vr.b	$vr6, $s1, 5
	vpickve2gr.d	$s1, $vr13, 0
	vinsgr2vr.b	$vr6, $s1, 6
	vpickve2gr.d	$s1, $vr13, 1
	vinsgr2vr.b	$vr6, $s1, 7
	vld	$vr7, $sp, 48                   # 16-byte Folded Reload
	vand.v	$vr6, $vr6, $vr7
	vbsrl.v	$vr7, $vr6, 4
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 2
	vmax.bu	$vr6, $vr7, $vr6
	vbsrl.v	$vr7, $vr6, 1
	vmax.bu	$vr6, $vr7, $vr6
	vpickve2gr.b	$s1, $vr6, 0
	sub.d	$s1, $t4, $s1
	andi	$s1, $s1, 255
	add.d	$s2, $s1, $s2
	b	.LBB18_91
	.p2align	4, , 16
.LBB18_84:                              # %scalar.ph1670
                                        #   in Loop: Header=BB18_62 Depth=1
	bstrpick.d	$s3, $fp, 6, 6
	ori	$s2, $zero, 57
	bne	$s3, $s1, .LBB18_91
# %bb.85:                               # %scalar.ph1670.1
                                        #   in Loop: Header=BB18_62 Depth=1
	bstrpick.d	$s3, $fp, 5, 5
	ori	$s2, $zero, 58
	bne	$s3, $s1, .LBB18_91
# %bb.86:                               # %scalar.ph1670.2
                                        #   in Loop: Header=BB18_62 Depth=1
	bstrpick.d	$s3, $fp, 4, 4
	ori	$s2, $zero, 59
	bne	$s3, $s1, .LBB18_91
# %bb.87:                               # %scalar.ph1670.3
                                        #   in Loop: Header=BB18_62 Depth=1
	bstrpick.d	$s3, $fp, 3, 3
	ori	$s2, $zero, 60
	bne	$s3, $s1, .LBB18_91
# %bb.88:                               # %scalar.ph1670.4
                                        #   in Loop: Header=BB18_62 Depth=1
	bstrpick.d	$s3, $fp, 2, 2
	ori	$s2, $zero, 61
	bne	$s3, $s1, .LBB18_91
# %bb.89:                               # %scalar.ph1670.5
                                        #   in Loop: Header=BB18_62 Depth=1
	bstrpick.d	$s3, $fp, 1, 1
	ori	$s2, $zero, 62
	bne	$s3, $s1, .LBB18_91
# %bb.90:                               # %scalar.ph1670.6
                                        #   in Loop: Header=BB18_62 Depth=1
	andi	$s3, $fp, 1
	ori	$s2, $zero, 63
	beq	$s3, $s1, .LBB18_92
	.p2align	4, , 16
.LBB18_91:                              # %.split.loop.exit.i293
                                        #   in Loop: Header=BB18_62 Depth=1
	addi.w	$s2, $s2, -1
.LBB18_92:                              # %my_clrsbll.exit
                                        #   in Loop: Header=BB18_62 Depth=1
	bne	$s0, $s2, .LBB18_97
# %bb.93:                               # %vector.body1660
                                        #   in Loop: Header=BB18_62 Depth=1
	vld	$vr6, $a0, %pc_lo12(.LCPI18_9)
	vld	$vr7, $a1, %pc_lo12(.LCPI18_8)
	vld	$vr8, $a2, %pc_lo12(.LCPI18_7)
	vld	$vr9, $a3, %pc_lo12(.LCPI18_6)
	vsrl.d	$vr6, $vr5, $vr6
	vsrl.d	$vr7, $vr5, $vr7
	vsrl.d	$vr8, $vr5, $vr8
	vsrl.d	$vr9, $vr5, $vr9
	vpickev.w	$vr6, $vr7, $vr6
	vpickev.w	$vr7, $vr9, $vr8
	vld	$vr24, $sp, 512                 # 16-byte Folded Reload
	vand.v	$vr10, $vr6, $vr24
	vand.v	$vr11, $vr7, $vr24
	vld	$vr8, $a4, %pc_lo12(.LCPI18_5)
	vld	$vr9, $a5, %pc_lo12(.LCPI18_4)
	vld	$vr12, $a6, %pc_lo12(.LCPI18_3)
	vld	$vr13, $a7, %pc_lo12(.LCPI18_2)
	vsrl.d	$vr8, $vr5, $vr8
	vsrl.d	$vr9, $vr5, $vr9
	vsrl.d	$vr12, $vr5, $vr12
	vsrl.d	$vr13, $vr5, $vr13
	vpickev.w	$vr8, $vr9, $vr8
	vpickev.w	$vr9, $vr13, $vr12
	vand.v	$vr12, $vr8, $vr24
	vand.v	$vr13, $vr9, $vr24
	vadd.w	$vr12, $vr12, $vr10
	vadd.w	$vr13, $vr13, $vr11
	vld	$vr10, $sp, 480                 # 16-byte Folded Reload
	vsrl.d	$vr10, $vr5, $vr10
	vld	$vr11, $sp, 464                 # 16-byte Folded Reload
	vsrl.d	$vr11, $vr5, $vr11
	vld	$vr14, $sp, 448                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr5, $vr14
	vld	$vr15, $sp, 432                 # 16-byte Folded Reload
	vsrl.d	$vr15, $vr5, $vr15
	vpickev.w	$vr10, $vr11, $vr10
	vpickev.w	$vr11, $vr15, $vr14
	vand.v	$vr14, $vr10, $vr24
	vand.v	$vr15, $vr11, $vr24
	vadd.w	$vr14, $vr14, $vr12
	vadd.w	$vr15, $vr15, $vr13
	vld	$vr12, $sp, 416                 # 16-byte Folded Reload
	vsrl.d	$vr12, $vr5, $vr12
	vld	$vr13, $sp, 400                 # 16-byte Folded Reload
	vsrl.d	$vr13, $vr5, $vr13
	vld	$vr16, $sp, 384                 # 16-byte Folded Reload
	vsrl.d	$vr16, $vr5, $vr16
	vld	$vr17, $sp, 368                 # 16-byte Folded Reload
	vsrl.d	$vr17, $vr5, $vr17
	vpickev.w	$vr12, $vr13, $vr12
	vpickev.w	$vr13, $vr17, $vr16
	vand.v	$vr16, $vr12, $vr24
	vand.v	$vr17, $vr13, $vr24
	vadd.w	$vr16, $vr16, $vr14
	vadd.w	$vr17, $vr17, $vr15
	vld	$vr14, $sp, 352                 # 16-byte Folded Reload
	vsrl.d	$vr14, $vr5, $vr14
	vld	$vr15, $sp, 336                 # 16-byte Folded Reload
	vsrl.d	$vr15, $vr5, $vr15
	vld	$vr18, $sp, 320                 # 16-byte Folded Reload
	vsrl.d	$vr18, $vr5, $vr18
	vld	$vr19, $sp, 304                 # 16-byte Folded Reload
	vsrl.d	$vr19, $vr5, $vr19
	vpickev.w	$vr14, $vr15, $vr14
	vpickev.w	$vr15, $vr19, $vr18
	vand.v	$vr18, $vr14, $vr24
	vand.v	$vr19, $vr15, $vr24
	vadd.w	$vr18, $vr18, $vr16
	vadd.w	$vr19, $vr19, $vr17
	vld	$vr16, $sp, 288                 # 16-byte Folded Reload
	vsrl.d	$vr16, $vr5, $vr16
	vld	$vr17, $sp, 272                 # 16-byte Folded Reload
	vsrl.d	$vr17, $vr5, $vr17
	vsrl.d	$vr20, $vr5, $vr25
	vsrl.d	$vr21, $vr5, $vr26
	vpickev.w	$vr16, $vr17, $vr16
	vpickev.w	$vr17, $vr21, $vr20
	vand.v	$vr20, $vr16, $vr24
	vand.v	$vr21, $vr17, $vr24
	vadd.w	$vr20, $vr20, $vr18
	vadd.w	$vr21, $vr21, $vr19
	vsrl.d	$vr18, $vr5, $vr30
	vsrl.d	$vr19, $vr5, $vr2
	vsrl.d	$vr22, $vr5, $vr27
	vsrl.d	$vr23, $vr5, $vr28
	vpickev.w	$vr18, $vr19, $vr18
	vpickev.w	$vr19, $vr23, $vr22
	vand.v	$vr22, $vr18, $vr24
	vand.v	$vr23, $vr19, $vr24
	vadd.w	$vr22, $vr22, $vr20
	vadd.w	$vr21, $vr23, $vr21
	vsrl.d	$vr20, $vr5, $vr29
	vsrl.d	$vr23, $vr5, $vr31
	vpickev.w	$vr20, $vr23, $vr20
	vsrl.d	$vr23, $vr5, $vr3
	vsrl.d	$vr5, $vr5, $vr4
	vpickev.w	$vr5, $vr5, $vr23
	vand.v	$vr23, $vr20, $vr24
	vadd.w	$vr22, $vr23, $vr22
	vand.v	$vr23, $vr5, $vr24
	vadd.w	$vr21, $vr23, $vr21
	vadd.w	$vr21, $vr21, $vr22
	vhaddw.d.w	$vr21, $vr21, $vr21
	vhaddw.q.d	$vr21, $vr21, $vr21
	vpickve2gr.d	$s0, $vr21, 0
	vldi	$vr21, 0
	vinsgr2vr.d	$vr21, $fp, 0
	vpcnt.d	$vr21, $vr21
	vpickve2gr.d	$fp, $vr21, 0
	addi.w	$s1, $s0, 0
	bne	$s1, $fp, .LBB18_97
# %bb.94:                               # %vector.body1646
                                        #   in Loop: Header=BB18_62 Depth=1
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	vadd.w	$vr6, $vr6, $vr10
	vadd.w	$vr7, $vr7, $vr11
	vadd.w	$vr6, $vr6, $vr12
	vadd.w	$vr7, $vr7, $vr13
	vadd.w	$vr6, $vr6, $vr14
	vadd.w	$vr7, $vr7, $vr15
	vadd.w	$vr6, $vr6, $vr16
	vadd.w	$vr7, $vr7, $vr17
	vadd.w	$vr6, $vr6, $vr18
	vadd.w	$vr7, $vr7, $vr19
	vadd.w	$vr6, $vr6, $vr20
	vadd.w	$vr5, $vr7, $vr5
	vadd.w	$vr5, $vr5, $vr6
	vhaddw.d.w	$vr5, $vr5, $vr5
	vhaddw.q.d	$vr5, $vr5, $vr5
	vpickve2gr.d	$fp, $vr5, 0
	xor	$fp, $fp, $s0
	andi	$fp, $fp, 1
	vld	$vr23, $sp, 496                 # 16-byte Folded Reload
	bnez	$fp, .LBB18_97
# %bb.95:                               #   in Loop: Header=BB18_62 Depth=1
	addi.d	$t2, $t2, 1
	bne	$t2, $t5, .LBB18_62
# %bb.96:                               # %.preheader.preheader
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_97:                              # %my_ffs.exit.thread
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
                                        # -- End function
	.type	ints,@object                    # @ints
	.data
	.globl	ints
	.p2align	2, 0x0
ints:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2147483648                      # 0x80000000
	.word	2                               # 0x2
	.word	1073741824                      # 0x40000000
	.word	65536                           # 0x10000
	.word	32768                           # 0x8000
	.word	2779096485                      # 0xa5a5a5a5
	.word	1515870810                      # 0x5a5a5a5a
	.word	3405643776                      # 0xcafe0000
	.word	13303296                        # 0xcafe00
	.word	51966                           # 0xcafe
	.word	4294967295                      # 0xffffffff
	.size	ints, 52

	.type	longs,@object                   # @longs
	.globl	longs
	.p2align	3, 0x0
longs:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	2                               # 0x2
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	4294967296                      # 0x100000000
	.dword	2147483648                      # 0x80000000
	.dword	-6510615555426900571            # 0xa5a5a5a5a5a5a5a5
	.dword	6510615555426900570             # 0x5a5a5a5a5a5a5a5a
	.dword	-3819392241693097984            # 0xcafecafe00000000
	.dword	223195676147712                 # 0xcafecafe0000
	.dword	3405695742                      # 0xcafecafe
	.dword	-1                              # 0xffffffffffffffff
	.size	longs, 104

	.type	longlongs,@object               # @longlongs
	.globl	longlongs
	.p2align	3, 0x0
longlongs:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-9223372036854775808            # 0x8000000000000000
	.dword	2                               # 0x2
	.dword	4611686018427387904             # 0x4000000000000000
	.dword	4294967296                      # 0x100000000
	.dword	2147483648                      # 0x80000000
	.dword	-6510615555426900571            # 0xa5a5a5a5a5a5a5a5
	.dword	6510615555426900570             # 0x5a5a5a5a5a5a5a5a
	.dword	-3819392241693097984            # 0xcafecafe00000000
	.dword	223195676147712                 # 0xcafecafe0000
	.dword	3405695742                      # 0xcafecafe
	.dword	-1                              # 0xffffffffffffffff
	.size	longlongs, 104

	.section	".note.GNU-stack","",@progbits
	.addrsig
