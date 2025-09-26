	.file	"Ppmd8.c"
	.text
	.globl	Ppmd8_Construct                 # -- Begin function Ppmd8_Construct
	.p2align	5
	.type	Ppmd8_Construct,@function
Ppmd8_Construct:                        # @Ppmd8_Construct
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $zero
	move	$t0, $zero
	st.d	$zero, $fp, 56
	addi.d	$a1, $fp, 166
	addi.d	$a2, $fp, 128
	ori	$a3, $zero, 11
	ori	$a4, $zero, 4
	ori	$a5, $zero, 32
	ori	$a6, $zero, 38
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.loopexit
                                        #   in Loop: Header=BB0_2 Depth=1
	stx.b	$a7, $a2, $a0
	addi.d	$a0, $a0, 1
	move	$t0, $a7
	beq	$a0, $a6, .LBB0_10
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	sltu	$a7, $a3, $a0
	bstrpick.d	$t1, $a0, 31, 2
	addi.d	$t1, $t1, 1
	maskeqz	$t2, $a4, $a7
	masknez	$a7, $t1, $a7
	or	$t2, $t2, $a7
	bltu	$t2, $a5, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	sub.w	$a7, $zero, $t2
	bltu	$a7, $t0, .LBB0_7
# %bb.4:                                # %vector.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	bstrpick.d	$a7, $t2, 30, 5
	slli.w	$t3, $a7, 5
	add.w	$a7, $t0, $t3
	andi	$t1, $t2, 31
	vreplgr2vr.b	$vr0, $a0
	move	$t4, $t3
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t0, 31, 0
	add.d	$t6, $a1, $t5
	vstx	$vr0, $a1, $t5
	vst	$vr0, $t6, 16
	addi.w	$t4, $t4, -32
	addi.w	$t0, $t0, 32
	bnez	$t4, .LBB0_5
# %bb.6:                                # %middle.block
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.w	$t0, $t2, 0
	beq	$t0, $t3, .LBB0_1
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	move	$a7, $t0
	move	$t1, $t2
.LBB0_8:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$t0, $a7
	.p2align	4, , 16
.LBB0_9:                                # %scalar.ph
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t0, 1
	bstrpick.d	$t0, $t0, 31, 0
	addi.w	$t1, $t1, -1
	stx.b	$a0, $a1, $t0
	move	$t0, $a7
	bnez	$t1, .LBB0_9
	b	.LBB0_1
.LBB0_10:                               # %.lr.ph
	ori	$a0, $zero, 512
	st.h	$a0, $fp, 600
	ori	$s0, $zero, 4
	st.b	$s0, $fp, 610
	lu12i.w	$a0, 16448
	ori	$a0, $a0, 1028
	bstrins.d	$a0, $a0, 58, 32
	st.d	$a0, $fp, 602
	addi.d	$a0, $fp, 611
	ori	$a1, $zero, 6
	ori	$a2, $zero, 245
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 12320
	ori	$a1, $a1, 256
	st.w	$a1, $fp, 856
	st.b	$s0, $fp, 860
	addi.d	$a1, $fp, 861
	ori	$a4, $zero, 1
	ori	$a2, $zero, 5
	ori	$a3, $zero, 255
	.p2align	4, , 16
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	stx.b	$a2, $a1, $a0
	addi.w	$a4, $a4, -1
	sltui	$a5, $a4, 1
	addi.d	$a6, $a2, -3
	masknez	$a4, $a4, $a5
	maskeqz	$a6, $a6, $a5
	or	$a4, $a6, $a4
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $a5
	bne	$a0, $a3, .LBB0_11
# %bb.12:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	Ppmd8_Construct, .Lfunc_end0-Ppmd8_Construct
                                        # -- End function
	.globl	Ppmd8_Free                      # -- Begin function Ppmd8_Free
	.p2align	5
	.type	Ppmd8_Free,@function
Ppmd8_Free:                             # @Ppmd8_Free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$fp, $a0
	ld.d	$a3, $a1, 8
	ld.d	$a1, $a0, 56
	move	$a0, $a2
	jirl	$ra, $a3, 0
	st.w	$zero, $fp, 48
	st.d	$zero, $fp, 56
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	Ppmd8_Free, .Lfunc_end1-Ppmd8_Free
                                        # -- End function
	.globl	Ppmd8_Alloc                     # -- Begin function Ppmd8_Alloc
	.p2align	5
	.type	Ppmd8_Alloc,@function
Ppmd8_Alloc:                            # @Ppmd8_Alloc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a3, $a0, 56
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a3, .LBB2_2
# %bb.1:
	ld.w	$a1, $fp, 48
	ori	$a0, $zero, 1
	beq	$a1, $s0, .LBB2_5
.LBB2_2:
	ld.d	$a2, $s1, 8
	move	$a0, $s1
	move	$a1, $a3
	jirl	$ra, $a2, 0
	st.w	$zero, $fp, 48
	st.d	$zero, $fp, 56
	andi	$a0, $s0, 3
	ori	$a1, $zero, 4
	sub.d	$a0, $a1, $a0
	ld.d	$a2, $s1, 0
	st.w	$a0, $fp, 96
	add.d	$a0, $a0, $s0
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	jirl	$ra, $a2, 0
	st.d	$a0, $fp, 56
	beqz	$a0, .LBB2_4
# %bb.3:
	st.w	$s0, $fp, 48
	ori	$a0, $zero, 1
	b	.LBB2_5
.LBB2_4:
	move	$a0, $zero
.LBB2_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	Ppmd8_Alloc, .Lfunc_end2-Ppmd8_Alloc
                                        # -- End function
	.globl	Ppmd8_Init                      # -- Begin function Ppmd8_Init
	.p2align	5
	.type	Ppmd8_Init,@function
Ppmd8_Init:                             # @Ppmd8_Init
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a1, $a0, 36
	st.w	$a2, $a0, 100
	pcaddu18i	$ra, %call36(RestartModel)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 262256
	st.w	$a0, $fp, 1116
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	Ppmd8_Init, .Lfunc_end3-Ppmd8_Init
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function RestartModel
.LCPI4_0:
	.word	15581                           # 0x3cdd
	.word	7999                            # 0x1f3f
	.word	22975                           # 0x59bf
	.word	18675                           # 0x48f3
.LCPI4_1:
	.word	25761                           # 0x64a1
	.word	23228                           # 0x5abc
	.word	26162                           # 0x6632
	.word	24657                           # 0x6051
	.text
	.p2align	5
	.type	RestartModel,@function
RestartModel:                           # @RestartModel
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 296
	ori	$a2, $zero, 304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.wu	$a1, $fp, 96
	ld.wu	$a2, $fp, 48
	move	$a3, $zero
	add.d	$a4, $a0, $a1
	st.d	$a4, $fp, 80
	add.d	$a4, $a4, $a2
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	lu32i.d	$a5, 0
	mul.d	$a5, $a2, $a5
	srli.d	$a5, $a5, 38
	ori	$a6, $zero, 84
	ld.w	$a7, $fp, 36
	mul.d	$a5, $a5, $a6
	bstrpick.d	$a6, $a5, 31, 2
	slli.d	$a6, $a6, 2
	st.w	$a7, $fp, 24
	sltui	$t0, $a7, 12
	ori	$t1, $zero, 12
	masknez	$t1, $t1, $t0
	maskeqz	$a7, $a7, $t0
	sub.d	$t0, $a4, $a6
	st.d	$t0, $fp, 88
	st.w	$zero, $fp, 52
	or	$a7, $a7, $t1
	nor	$a7, $a7, $zero
	st.w	$a7, $fp, 44
	st.w	$a7, $fp, 40
	st.w	$zero, $fp, 32
	addi.d	$a7, $a4, -12
	st.d	$a7, $fp, 72
	st.d	$a7, $fp, 8
	st.d	$a7, $fp, 0
	st.w	$zero, $a4, -4
	lu12i.w	$a7, 4112
	ori	$a7, $a7, 255
	st.w	$a7, $a4, -12
	st.d	$t0, $fp, 16
	addi.d	$a7, $t0, 1536
	st.d	$a7, $fp, 64
	add.d	$a1, $a2, $a1
	sub.d	$a2, $a1, $a5
	st.w	$a2, $a4, -8
	sub.d	$a1, $a1, $a6
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 6
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a4, $a3, 1
	st.b	$a3, $a0, -6
	st.b	$a4, $a0, 0
	st.b	$a1, $a0, -5
	st.b	$a1, $a0, 1
	st.w	$zero, $a0, -4
	st.w	$zero, $a0, 2
	addi.d	$a3, $a3, 2
	addi.d	$a0, $a0, 12
	bne	$a3, $a2, .LBB4_1
# %bb.2:                                # %.preheader83
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a0, $fp, 856
	lu12i.w	$a3, 1
	ori	$a3, $a3, 96
	add.d	$a3, $fp, $a3
	pcalau12i	$a4, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI4_0)
	pcalau12i	$a4, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a4, %pc_lo12(.LCPI4_1)
	lu12i.w	$a4, 4
	vreplgr2vr.h	$vr2, $a4
	ori	$a4, $zero, 25
	.p2align	4, , 16
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a2, 31, 0
	ldx.bu	$a5, $a0, $a5
	addi.w	$a2, $a2, 1
	beq	$a1, $a5, .LBB4_3
# %bb.4:                                # %.preheader81
                                        #   in Loop: Header=BB4_3 Depth=1
	slli.d	$a5, $a1, 7
	add.d	$a6, $a3, $a5
	vreplgr2vr.w	$vr3, $a2
	vdiv.wu	$vr4, $vr0, $vr3
	vdiv.wu	$vr3, $vr1, $vr3
	vpickev.h	$vr3, $vr3, $vr4
	vsub.h	$vr3, $vr2, $vr3
	vstx	$vr3, $a3, $a5
	vst	$vr3, $a6, 16
	vst	$vr3, $a6, 32
	vst	$vr3, $a6, 48
	vst	$vr3, $a6, 64
	vst	$vr3, $a6, 80
	vst	$vr3, $a6, 96
	vst	$vr3, $a6, 112
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, -1
	bne	$a1, $a4, .LBB4_3
# %bb.5:                                # %.preheader80
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a3, $fp, 1120
	ori	$a4, $zero, 1795
	ori	$a5, $zero, 3
	ori	$a6, $zero, 7
	ori	$a7, $zero, 24
	.p2align	4, , 16
.LBB4_6:                                # %.preheader79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	addi.d	$t0, $a1, 3
	addi.w	$a2, $a2, -1
	.p2align	4, , 16
.LBB4_7:                                #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $a2, 4
	bstrpick.d	$t1, $t1, 31, 0
	ldx.bu	$t1, $a0, $t1
	addi.w	$a2, $a2, 1
	beq	$t0, $t1, .LBB4_7
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB4_6 Depth=1
	slli.d	$t2, $a1, 7
	add.d	$t0, $a3, $t2
	slli.d	$t1, $a2, 4
	addi.d	$t1, $t1, 40
	st.h	$a4, $t0, 2
	stx.h	$t1, $a3, $t2
	st.h	$a4, $t0, 6
	st.h	$t1, $t0, 4
	st.h	$a4, $t0, 10
	st.h	$t1, $t0, 8
	st.h	$a4, $t0, 14
	st.h	$t1, $t0, 12
	st.h	$a4, $t0, 18
	st.h	$t1, $t0, 16
	st.h	$a4, $t0, 22
	st.h	$t1, $t0, 20
	st.h	$a4, $t0, 26
	st.h	$t1, $t0, 24
	st.h	$a4, $t0, 30
	st.h	$t1, $t0, 28
	st.b	$a5, $t0, 34
	st.h	$t1, $t0, 32
	st.b	$a6, $t0, 35
	st.h	$a4, $t0, 38
	st.h	$t1, $t0, 36
	st.h	$a4, $t0, 42
	st.h	$t1, $t0, 40
	st.h	$a4, $t0, 46
	st.h	$t1, $t0, 44
	st.h	$a4, $t0, 50
	st.h	$t1, $t0, 48
	st.h	$a4, $t0, 54
	st.h	$t1, $t0, 52
	st.h	$a4, $t0, 58
	st.h	$t1, $t0, 56
	st.h	$a4, $t0, 62
	st.h	$t1, $t0, 60
	st.b	$a5, $t0, 66
	st.h	$t1, $t0, 64
	st.b	$a6, $t0, 67
	st.h	$a4, $t0, 70
	st.h	$t1, $t0, 68
	st.h	$a4, $t0, 74
	st.h	$t1, $t0, 72
	st.h	$a4, $t0, 78
	st.h	$t1, $t0, 76
	st.h	$a4, $t0, 82
	st.h	$t1, $t0, 80
	st.h	$a4, $t0, 86
	st.h	$t1, $t0, 84
	st.h	$a4, $t0, 90
	st.h	$t1, $t0, 88
	st.h	$a4, $t0, 94
	st.h	$t1, $t0, 92
	st.h	$a4, $t0, 98
	st.h	$t1, $t0, 96
	st.b	$a5, $t0, 102
	st.h	$t1, $t0, 100
	st.b	$a6, $t0, 103
	st.b	$a5, $t0, 106
	st.h	$t1, $t0, 104
	st.b	$a6, $t0, 107
	st.b	$a5, $t0, 110
	st.h	$t1, $t0, 108
	st.b	$a6, $t0, 111
	st.b	$a5, $t0, 114
	st.h	$t1, $t0, 112
	st.b	$a6, $t0, 115
	st.b	$a5, $t0, 118
	st.h	$t1, $t0, 116
	st.b	$a6, $t0, 119
	st.b	$a5, $t0, 122
	st.h	$t1, $t0, 120
	st.b	$a6, $t0, 123
	st.b	$a5, $t0, 126
	st.h	$t1, $t0, 124
	addi.d	$a1, $a1, 1
	st.b	$a6, $t0, 127
	bne	$a1, $a7, .LBB4_6
# %bb.9:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	RestartModel, .Lfunc_end4-RestartModel
                                        # -- End function
	.globl	Ppmd8_MakeEscFreq               # -- Begin function Ppmd8_MakeEscFreq
	.p2align	5
	.type	Ppmd8_MakeEscFreq,@function
Ppmd8_MakeEscFreq:                      # @Ppmd8_MakeEscFreq
# %bb.0:
	ld.d	$a3, $a0, 0
	ld.bu	$a4, $a3, 0
	ori	$a5, $zero, 255
	beq	$a4, $a5, .LBB5_2
# %bb.1:
	add.d	$a5, $a0, $a4
	ld.bu	$a5, $a5, 858
	slli.d	$a5, $a5, 7
	add.d	$a5, $a0, $a5
	ld.hu	$a6, $a3, 2
	alsl.d	$a7, $a4, $a4, 2
	ld.d	$a0, $a0, 56
	ld.wu	$t0, $a3, 8
	alsl.d	$a7, $a7, $a4, 1
	addi.d	$a7, $a7, 11
	sltu	$a6, $a7, $a6
	ldx.bu	$a0, $a0, $t0
	alsl.d	$a5, $a6, $a5, 2
	slli.d	$a4, $a4, 1
	ld.bu	$a3, $a3, 1
	add.w	$a0, $a1, $a0
	sltu	$a0, $a4, $a0
	alsl.d	$a0, $a0, $a5, 3
	alsl.d	$a1, $a3, $a0, 2
	ld.hu	$a3, $a1, 736
	ld.bu	$a4, $a1, 738
	addi.d	$a0, $a1, 736
	srl.w	$a4, $a3, $a4
	sub.d	$a3, $a3, $a4
	st.h	$a3, $a1, 736
	ori	$a1, $zero, 1
	sltu	$a3, $a1, $a4
	maskeqz	$a4, $a4, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a4, $a1
	st.w	$a1, $a2, 0
	ret
.LBB5_2:
	addi.d	$a0, $a0, 1116
	ori	$a1, $zero, 1
	st.w	$a1, $a2, 0
	ret
.Lfunc_end5:
	.size	Ppmd8_MakeEscFreq, .Lfunc_end5-Ppmd8_MakeEscFreq
                                        # -- End function
	.globl	Ppmd8_Update1                   # -- Begin function Ppmd8_Update1
	.p2align	5
	.type	Ppmd8_Update1,@function
Ppmd8_Update1:                          # @Ppmd8_Update1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.b	$a1, $a0, 1
	ld.d	$a2, $fp, 0
	addi.d	$a1, $a1, 4
	ld.h	$a3, $a2, 2
	ld.bu	$a4, $a0, -5
	andi	$a5, $a1, 255
	st.b	$a1, $a0, 1
	addi.d	$a1, $a3, 4
	st.h	$a1, $a2, 2
	bgeu	$a4, $a5, .LBB6_3
# %bb.1:
	ld.w	$a1, $a0, -6
	ld.wu	$a2, $a0, 0
	ld.hu	$a3, $a0, 4
	st.w	$a1, $a0, 0
	ld.h	$a1, $a0, -2
	st.w	$a2, $a0, -6
	st.h	$a3, $a0, -2
	ld.bu	$a2, $a0, -5
	st.h	$a1, $a0, 4
	addi.d	$a0, $a0, -6
	ori	$a1, $zero, 125
	st.d	$a0, $fp, 16
	bltu	$a2, $a1, .LBB6_3
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Rescale)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB6_3:
	ld.w	$a1, $fp, 24
	bnez	$a1, .LBB6_5
# %bb.4:
	ld.hu	$a1, $a0, 4
	ld.d	$a2, $fp, 56
	ld.hu	$a0, $a0, 2
	ld.d	$a3, $fp, 88
	slli.d	$a1, $a1, 16
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	bgeu	$a0, $a3, .LBB6_7
.LBB6_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(UpdateModel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB6_6:                                # %NextContext.exit
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_7:
	st.d	$a0, $fp, 8
	b	.LBB6_6
.Lfunc_end6:
	.size	Ppmd8_Update1, .Lfunc_end6-Ppmd8_Update1
                                        # -- End function
	.p2align	5                               # -- Begin function Rescale
	.type	Rescale,@function
Rescale:                                # @Rescale
# %bb.0:
	addi.d	$sp, $sp, -128
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
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 56
	ld.wu	$a1, $a1, 4
	ld.h	$a4, $a3, 4
	ld.w	$a5, $a3, 0
	add.d	$a1, $a2, $a1
	st.h	$a4, $sp, 36
	st.w	$a5, $sp, 32
	beq	$a3, $a1, .LBB7_2
	.p2align	4, , 16
.LBB7_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a3, -2
	ld.w	$a5, $a3, -6
	addi.d	$a2, $a3, -6
	st.h	$a4, $a3, 4
	st.w	$a5, $a3, 0
	move	$a3, $a2
	bne	$a2, $a1, .LBB7_1
	b	.LBB7_3
.LBB7_2:
	move	$a2, $a3
.LBB7_3:                                # %._crit_edge
	ld.h	$a3, $sp, 36
	ld.w	$a4, $sp, 32
	st.h	$a3, $a2, 4
	st.w	$a4, $a2, 0
	ld.d	$a4, $a0, 0
	ld.hu	$a3, $a4, 2
	ld.bu	$a5, $a2, 1
	ld.w	$a6, $a0, 24
	sub.d	$s0, $a3, $a5
	addi.d	$a3, $a5, 4
	andi	$a5, $a3, 255
	sltu	$a3, $zero, $a6
	ld.bu	$a4, $a4, 0
	add.d	$a5, $a3, $a5
	srli.d	$s1, $a5, 1
	st.b	$s1, $a2, 1
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                # %.critedge
                                        #   in Loop: Header=BB7_6 Depth=1
	st.b	$t0, $t1, 0
	st.b	$a7, $t1, 1
	st.w	$a2, $t1, 2
.LBB7_5:                                #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a2, $a5, 6
	sub.d	$s0, $s0, $a6
	addi.w	$a4, $a4, -1
	add.d	$s1, $a7, $s1
	beqz	$a4, .LBB7_10
.LBB7_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	move	$a5, $a2
	ld.bu	$a6, $a2, 7
	ld.bu	$a2, $a2, 1
	add.d	$a7, $a6, $a3
	srli.d	$a7, $a7, 1
	st.b	$a7, $a5, 7
	bgeu	$a2, $a7, .LBB7_5
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$t0, $a5, 6
	ld.w	$a2, $a5, 8
	move	$t2, $a5
	.p2align	4, , 16
.LBB7_8:                                #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t1, $t2
	ld.h	$t2, $t2, 4
	ld.w	$t3, $t1, 0
	st.h	$t2, $t1, 10
	st.w	$t3, $t1, 6
	beq	$t1, $a1, .LBB7_4
# %bb.9:                                #   in Loop: Header=BB7_8 Depth=2
	ld.bu	$t3, $t1, -5
	addi.d	$t2, $t1, -6
	bltu	$t3, $a7, .LBB7_8
	b	.LBB7_4
.LBB7_10:
	ld.bu	$a3, $a5, 7
	ld.d	$a4, $a0, 0
	beqz	$a3, .LBB7_12
# %bb.11:                               # %._crit_edge134
	ld.bu	$t2, $a4, 1
	ld.d	$a2, $a0, 56
	ld.wu	$a1, $a4, 4
	b	.LBB7_32
.LBB7_12:
	ld.bu	$a3, $a4, 0
	move	$a5, $zero
	addi.w	$a6, $zero, -5
	.p2align	4, , 16
.LBB7_13:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a7, $a2, $a6
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, -6
	addi.w	$s0, $s0, 1
	beqz	$a7, .LBB7_13
# %bb.14:
	andi	$a6, $a5, 255
	sub.d	$a2, $a3, $a5
	st.b	$a2, $a4, 0
	bne	$a3, $a6, .LBB7_16
# %bb.15:                               # %.thread
	ld.bu	$a2, $a1, 1
	ld.bu	$a5, $a1, 0
	ld.w	$a6, $a1, 2
	alsl.d	$a2, $a2, $s0, 1
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 1
	add.d	$a3, $a0, $a3
	ld.bu	$a3, $a3, 165
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, 0
	st.w	$a7, $a1, 0
	alsl.d	$a7, $a3, $a0, 2
	ld.w	$t0, $a7, 296
	addi.w	$a2, $a2, -1
	div.wu	$a2, $a2, $s0
	andi	$t1, $a2, 254
	st.w	$t0, $a1, 4
	ori	$t0, $zero, 41
	sltu	$t1, $t0, $t1
	add.d	$a3, $a0, $a3
	ld.bu	$a3, $a3, 128
	masknez	$a2, $a2, $t1
	maskeqz	$t0, $t0, $t1
	ld.d	$t1, $a0, 56
	st.w	$a3, $a1, 8
	ld.w	$a3, $a7, 448
	or	$a2, $t0, $a2
	sub.d	$a1, $a1, $t1
	st.w	$a1, $a7, 296
	addi.d	$a1, $a3, 1
	st.w	$a1, $a7, 448
	ld.bu	$a1, $a4, 1
	ori	$a3, $zero, 63
	sltu	$a3, $a3, $a5
	slli.d	$a3, $a3, 3
	srli.d	$a1, $a1, 4
	bstrins.d	$a3, $a1, 4, 4
	st.b	$a3, $a4, 1
	addi.d	$a1, $a4, 2
	st.d	$a1, $a0, 16
	st.b	$a5, $a4, 2
	st.b	$a2, $a4, 3
	st.w	$a6, $a4, 4
	b	.LBB7_33
.LBB7_16:
	andi	$a5, $a2, 255
	addi.d	$a2, $a3, 2
	srli.d	$a2, $a2, 1
	addi.d	$a3, $a5, 2
	srli.d	$a3, $a3, 1
	bne	$a2, $a3, .LBB7_18
# %bb.17:                               # %._crit_edge130
	ld.d	$a2, $a0, 56
	ld.w	$a1, $a4, 4
	b	.LBB7_19
.LBB7_18:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(ShrinkUnits)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 0
	ld.d	$a2, $fp, 56
	ld.bu	$a5, $a4, 0
	move	$a1, $a0
	move	$a0, $fp
	sub.d	$a1, $a1, $a2
	st.w	$a1, $a4, 4
.LBB7_19:                               # %iter.check
	ld.b	$a7, $a4, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$t0, $a2, $a1
	bstrins.d	$a7, $zero, 3, 3
	add.d	$a6, $a2, $a1
	ori	$a3, $zero, 63
	sltu	$t0, $a3, $t0
	slli.d	$t1, $t0, 3
	addi.d	$t0, $a5, -1
	ori	$t3, $zero, 7
	or	$t2, $t1, $a7
	bltu	$t0, $t3, .LBB7_29
# %bb.20:                               # %vector.main.loop.iter.check
	bstrpick.d	$a7, $t0, 31, 0
	addi.d	$s2, $a7, 1
	ori	$t1, $zero, 31
	vrepli.b	$vr0, 63
	bgeu	$t0, $t1, .LBB7_22
# %bb.21:
	move	$t0, $zero
	b	.LBB7_26
.LBB7_22:                               # %vector.ph
	vrepli.b	$vr1, 0
	andi	$a7, $s2, 24
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$t0, $s2, 32, 5
	slli.d	$t0, $t0, 5
	vori.b	$vr2, $vr1, 0
	vinsgr2vr.b	$vr2, $t2, 0
	add.d	$t2, $a1, $a2
	addi.d	$t2, $t2, 96
	move	$t3, $t0
	.p2align	4, , 16
.LBB7_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t4, $t2, -90
	ld.b	$t5, $t2, -84
	ld.b	$t6, $t2, -78
	ld.b	$t7, $t2, -72
	ld.b	$t8, $t2, -66
	ld.b	$fp, $t2, -60
	ld.b	$s2, $t2, -54
	ld.b	$s3, $t2, -48
	ld.b	$s4, $t2, -42
	ld.b	$s5, $t2, -36
	ld.b	$s6, $t2, -30
	ld.b	$s7, $t2, -24
	ld.b	$s8, $t2, -18
	ld.b	$ra, $t2, -12
	ld.b	$t1, $t2, -6
	ld.b	$a7, $t2, 0
	vinsgr2vr.b	$vr3, $t4, 0
	vinsgr2vr.b	$vr3, $t5, 1
	vinsgr2vr.b	$vr3, $t6, 2
	vinsgr2vr.b	$vr3, $t7, 3
	vinsgr2vr.b	$vr3, $t8, 4
	vinsgr2vr.b	$vr3, $fp, 5
	vinsgr2vr.b	$vr3, $s2, 6
	vinsgr2vr.b	$vr3, $s3, 7
	vinsgr2vr.b	$vr3, $s4, 8
	vinsgr2vr.b	$vr3, $s5, 9
	vinsgr2vr.b	$vr3, $s6, 10
	vinsgr2vr.b	$vr3, $s7, 11
	vinsgr2vr.b	$vr3, $s8, 12
	vinsgr2vr.b	$vr3, $ra, 13
	vinsgr2vr.b	$vr3, $t1, 14
	vinsgr2vr.b	$vr3, $a7, 15
	ld.b	$a7, $t2, 6
	ld.b	$t1, $t2, 12
	ld.b	$t4, $t2, 18
	ld.b	$t5, $t2, 24
	ld.b	$t6, $t2, 30
	ld.b	$t7, $t2, 36
	ld.b	$t8, $t2, 42
	ld.b	$fp, $t2, 48
	ld.b	$s2, $t2, 54
	ld.b	$s3, $t2, 60
	ld.b	$s4, $t2, 66
	ld.b	$s5, $t2, 72
	ld.b	$s6, $t2, 78
	ld.b	$s7, $t2, 84
	ld.b	$s8, $t2, 90
	ld.b	$ra, $t2, 96
	vinsgr2vr.b	$vr4, $a7, 0
	vinsgr2vr.b	$vr4, $t1, 1
	vinsgr2vr.b	$vr4, $t4, 2
	vinsgr2vr.b	$vr4, $t5, 3
	vinsgr2vr.b	$vr4, $t6, 4
	vinsgr2vr.b	$vr4, $t7, 5
	vinsgr2vr.b	$vr4, $t8, 6
	vinsgr2vr.b	$vr4, $fp, 7
	vinsgr2vr.b	$vr4, $s2, 8
	vinsgr2vr.b	$vr4, $s3, 9
	vinsgr2vr.b	$vr4, $s4, 10
	vinsgr2vr.b	$vr4, $s5, 11
	vinsgr2vr.b	$vr4, $s6, 12
	vinsgr2vr.b	$vr4, $s7, 13
	vinsgr2vr.b	$vr4, $s8, 14
	vinsgr2vr.b	$vr4, $ra, 15
	vslt.bu	$vr3, $vr0, $vr3
	vandi.b	$vr3, $vr3, 8
	vslt.bu	$vr4, $vr0, $vr4
	vandi.b	$vr4, $vr4, 8
	vor.v	$vr2, $vr3, $vr2
	vor.v	$vr1, $vr4, $vr1
	addi.d	$t3, $t3, -32
	addi.d	$t2, $t2, 192
	bnez	$t3, .LBB7_23
# %bb.24:                               # %middle.block
	vor.v	$vr1, $vr1, $vr2
	vbsrl.v	$vr2, $vr1, 8
	vor.v	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vor.v	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 2
	vor.v	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 1
	vor.v	$vr1, $vr2, $vr1
	vpickve2gr.b	$t2, $vr1, 0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	beq	$s2, $t0, .LBB7_31
# %bb.25:                               # %vec.epilog.iter.check
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	beqz	$a7, .LBB7_34
.LBB7_26:                               # %vec.epilog.ph
	bstrpick.d	$a7, $s2, 32, 3
	slli.d	$t1, $a7, 3
	slli.d	$t3, $a7, 5
	alsl.d	$a7, $a7, $t3, 4
	add.d	$a6, $a6, $a7
	sub.d	$a5, $a5, $t1
	vrepli.b	$vr1, 0
	vinsgr2vr.b	$vr1, $t2, 0
	sub.d	$t2, $t0, $t1
	alsl.d	$a7, $t0, $t0, 1
	slli.d	$a7, $a7, 1
	add.d	$a7, $a7, $a1
	add.d	$a7, $a7, $a2
	addi.d	$t0, $a7, 24
	.p2align	4, , 16
.LBB7_27:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $t0, -18
	ld.b	$t3, $t0, -12
	ld.b	$t4, $t0, -6
	ld.b	$t5, $t0, 0
	ld.b	$t6, $t0, 6
	ld.b	$t7, $t0, 12
	ld.b	$t8, $t0, 18
	ld.b	$fp, $t0, 24
	vinsgr2vr.b	$vr2, $a7, 0
	vinsgr2vr.b	$vr2, $t3, 1
	vinsgr2vr.b	$vr2, $t4, 2
	vinsgr2vr.b	$vr2, $t5, 3
	vinsgr2vr.b	$vr2, $t6, 4
	vinsgr2vr.b	$vr2, $t7, 5
	vinsgr2vr.b	$vr2, $t8, 6
	vinsgr2vr.b	$vr2, $fp, 7
	vslt.bu	$vr2, $vr0, $vr2
	vandi.b	$vr2, $vr2, 8
	vor.v	$vr1, $vr2, $vr1
	addi.d	$t2, $t2, 8
	addi.d	$t0, $t0, 48
	bnez	$t2, .LBB7_27
# %bb.28:                               # %vec.epilog.middle.block
	vbsrl.v	$vr0, $vr1, 4
	vor.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 2
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.b	$t2, $vr0, 0
	beq	$s2, $t1, .LBB7_31
.LBB7_29:                               # %vec.epilog.scalar.ph.preheader
	addi.d	$a6, $a6, 6
	.p2align	4, , 16
.LBB7_30:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a6, 0
	sltu	$a7, $a3, $a7
	slli.d	$a7, $a7, 3
	or	$t2, $a7, $t2
	addi.w	$a5, $a5, -1
	addi.d	$a6, $a6, 6
	bnez	$a5, .LBB7_30
.LBB7_31:                               # %.loopexit
	st.b	$t2, $a4, 1
.LBB7_32:
	add.d	$a3, $s0, $s1
	srli.d	$a5, $s0, 1
	sub.d	$a3, $a3, $a5
	st.h	$a3, $a4, 2
	ori	$a3, $t2, 4
	st.b	$a3, $a4, 1
	add.d	$a1, $a2, $a1
	st.d	$a1, $a0, 16
.LBB7_33:
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
.LBB7_34:
	slli.d	$a7, $t0, 2
	alsl.d	$a7, $t0, $a7, 1
	add.d	$a6, $a6, $a7
	sub.d	$a5, $a5, $t0
	b	.LBB7_29
.Lfunc_end7:
	.size	Rescale, .Lfunc_end7-Rescale
                                        # -- End function
	.globl	Ppmd8_Update1_0                 # -- Begin function Ppmd8_Update1_0
	.p2align	5
	.type	Ppmd8_Update1_0,@function
Ppmd8_Update1_0:                        # @Ppmd8_Update1_0
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $fp, 0
	ld.bu	$a2, $a0, 1
	ld.hu	$a3, $a1, 2
	slli.d	$a4, $a2, 1
	ld.w	$a5, $fp, 40
	sltu	$a4, $a4, $a3
	xori	$a4, $a4, 1
	st.w	$a4, $fp, 32
	add.d	$a4, $a5, $a4
	st.w	$a4, $fp, 40
	addi.d	$a3, $a3, 4
	st.h	$a3, $a1, 2
	addi.d	$a1, $a2, 4
	andi	$a2, $a1, 255
	ori	$a3, $zero, 125
	st.b	$a1, $a0, 1
	bltu	$a2, $a3, .LBB8_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Rescale)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB8_2:
	ld.w	$a1, $fp, 24
	bnez	$a1, .LBB8_4
# %bb.3:
	ld.hu	$a1, $a0, 4
	ld.d	$a2, $fp, 56
	ld.hu	$a0, $a0, 2
	ld.d	$a3, $fp, 88
	slli.d	$a1, $a1, 16
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	bgeu	$a0, $a3, .LBB8_6
.LBB8_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(UpdateModel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB8_5:                                # %NextContext.exit
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB8_6:
	st.d	$a0, $fp, 8
	b	.LBB8_5
.Lfunc_end8:
	.size	Ppmd8_Update1_0, .Lfunc_end8-Ppmd8_Update1_0
                                        # -- End function
	.globl	Ppmd8_UpdateBin                 # -- Begin function Ppmd8_UpdateBin
	.p2align	5
	.type	Ppmd8_UpdateBin,@function
Ppmd8_UpdateBin:                        # @Ppmd8_UpdateBin
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 1
	sltui	$a2, $a1, 196
	add.d	$a1, $a1, $a2
	st.b	$a1, $a0, 1
	ld.w	$a1, $fp, 40
	ld.w	$a2, $fp, 24
	ori	$a3, $zero, 1
	st.w	$a3, $fp, 32
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 40
	bnez	$a2, .LBB9_2
# %bb.1:
	ld.hu	$a1, $a0, 4
	ld.d	$a2, $fp, 56
	ld.hu	$a0, $a0, 2
	ld.d	$a3, $fp, 88
	slli.d	$a1, $a1, 16
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	bgeu	$a0, $a3, .LBB9_4
.LBB9_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(UpdateModel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB9_3:                                # %NextContext.exit
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_4:
	st.d	$a0, $fp, 8
	b	.LBB9_3
.Lfunc_end9:
	.size	Ppmd8_UpdateBin, .Lfunc_end9-Ppmd8_UpdateBin
                                        # -- End function
	.globl	Ppmd8_Update2                   # -- Begin function Ppmd8_Update2
	.p2align	5
	.type	Ppmd8_Update2,@function
Ppmd8_Update2:                          # @Ppmd8_Update2
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 16
	ld.h	$a2, $a0, 2
	ld.b	$a3, $a1, 1
	addi.d	$a2, $a2, 4
	st.h	$a2, $a0, 2
	addi.d	$a0, $a3, 4
	andi	$a2, $a0, 255
	ori	$a3, $zero, 125
	st.b	$a0, $a1, 1
	bltu	$a2, $a3, .LBB10_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Rescale)
	jirl	$ra, $ra, 0
.LBB10_2:
	ld.w	$a0, $fp, 44
	st.w	$a0, $fp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(UpdateModel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	Ppmd8_Update2, .Lfunc_end10-Ppmd8_Update2
                                        # -- End function
	.p2align	5                               # -- Begin function UpdateModel
	.type	UpdateModel,@function
UpdateModel:                            # @UpdateModel
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.w	$s3, $a0, 2
	ld.bu	$s7, $a0, 1
	ld.bu	$s1, $a0, 0
	ori	$a0, $zero, 30
	bltu	$a0, $s7, .LBB11_9
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.wu	$a0, $a0, 8
	beqz	$a0, .LBB11_9
# %bb.2:
	ld.d	$a1, $fp, 56
	ldx.bu	$a2, $a1, $a0
	add.d	$a0, $a1, $a0
	beqz	$a2, .LBB11_21
# %bb.3:
	ld.wu	$a2, $a0, 4
	ldx.bu	$a3, $a1, $a2
	add.d	$a2, $a1, $a2
	beq	$a3, $s1, .LBB11_7
	.p2align	4, , 16
.LBB11_4:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 6
	addi.d	$a2, $a2, 6
	bne	$a3, $s1, .LBB11_4
# %bb.5:
	ld.bu	$a1, $a2, 1
	ld.bu	$a3, $a2, -5
	bltu	$a1, $a3, .LBB11_7
# %bb.6:
	addi.d	$a1, $a2, -6
	ld.w	$a3, $a1, 0
	ld.h	$a4, $a1, 4
	ld.wu	$a5, $a2, 0
	ld.hu	$a6, $a2, 4
	st.w	$a3, $a2, 0
	st.h	$a4, $a2, 4
	st.w	$a5, $a1, 0
	st.h	$a6, $a1, 4
	move	$a2, $a1
.LBB11_7:
	ld.bu	$a1, $a2, 1
	ori	$a3, $zero, 114
	bltu	$a3, $a1, .LBB11_10
# %bb.8:
	ld.h	$a3, $a0, 2
	addi.d	$a1, $a1, 2
	st.b	$a1, $a2, 1
	addi.d	$a1, $a3, 2
	st.h	$a1, $a0, 2
	b	.LBB11_10
.LBB11_9:
	move	$a2, $zero
.LBB11_10:
	ld.w	$a0, $fp, 24
	ld.d	$s0, $fp, 8
	bnez	$a0, .LBB11_14
# %bb.11:
	beqz	$s3, .LBB11_14
# %bb.12:
	ld.d	$a3, $fp, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CreateSuccessors)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	beqz	$a0, .LBB11_19
# %bb.13:
	ld.d	$a2, $fp, 56
	sub.d	$a2, $a0, $a2
	st.w	$a2, $a1, 2
	b	.LBB11_76
.LBB11_14:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 80
	ld.b	$a0, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 80
	st.b	$a0, $a1, 0
	ld.d	$a3, $fp, 80
	ld.d	$a0, $fp, 88
	bgeu	$a3, $a0, .LBB11_20
# %bb.15:
	ld.d	$a1, $fp, 56
	sub.d	$t1, $a3, $a1
	beqz	$s3, .LBB11_23
# %bb.16:
	bstrpick.d	$a3, $s3, 31, 0
	add.d	$a1, $a1, $a3
	bgeu	$a1, $a0, .LBB11_45
# %bb.17:
	move	$s2, $t1
	ld.d	$a3, $fp, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(CreateSuccessors)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_20
# %bb.18:
	ld.d	$a1, $fp, 56
	sub.d	$s3, $a0, $a1
	move	$t1, $s2
	b	.LBB11_45
.LBB11_19:
	st.w	$zero, $a1, 2
.LBB11_20:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(RestoreModel)
	jr	$t8
.LBB11_21:
	ld.bu	$a1, $a0, 3
	ori	$a3, $zero, 31
	addi.d	$a2, $a0, 2
	bltu	$a3, $a1, .LBB11_10
# %bb.22:
	addi.d	$a1, $a1, 1
	st.b	$a1, $a0, 3
	b	.LBB11_10
.LBB11_23:
	ld.d	$s4, $fp, 16
	ld.d	$s5, $fp, 0
	st.w	$t1, $s4, 2
	ld.w	$a0, $fp, 24
	srli.d	$a4, $t1, 16
	ori	$a5, $zero, 114
	move	$a3, $s5
	ld.wu	$a6, $a3, 8
	addi.w	$a0, $a0, 1
	beqz	$a2, .LBB11_27
	.p2align	4, , 16
.LBB11_24:
	add.d	$a3, $a1, $a6
.LBB11_25:
	ld.hu	$a6, $a2, 4
	ld.hu	$s3, $a2, 2
	slli.w	$a7, $a6, 16
	or	$a7, $a7, $s3
	bnez	$a7, .LBB11_35
# %bb.26:
	st.h	$t1, $a2, 2
	st.h	$a4, $a2, 4
	move	$a2, $zero
	ld.wu	$a6, $a3, 8
	addi.w	$a0, $a0, 1
	bnez	$a2, .LBB11_24
.LBB11_27:
	beqz	$a6, .LBB11_38
# %bb.28:
	ldx.bu	$a2, $a1, $a6
	add.d	$a3, $a1, $a6
	beqz	$a2, .LBB11_34
# %bb.29:
	ld.wu	$a2, $a3, 4
	ldx.bu	$t0, $a1, $a2
	ld.bu	$a6, $s4, 0
	add.d	$a7, $a1, $a2
	bne	$t0, $a6, .LBB11_31
# %bb.30:
	move	$a2, $a7
	b	.LBB11_32
	.p2align	4, , 16
.LBB11_31:                              # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a7, 6
	addi.d	$a2, $a7, 6
	move	$a7, $a2
	bne	$t0, $a6, .LBB11_31
.LBB11_32:                              # %.loopexit.i
	ld.bu	$a6, $a2, 1
	bltu	$a5, $a6, .LBB11_25
# %bb.33:
	ld.h	$a7, $a3, 2
	addi.d	$a6, $a6, 2
	st.b	$a6, $a2, 1
	addi.d	$a6, $a7, 2
	st.h	$a6, $a3, 2
	b	.LBB11_25
	.p2align	4, , 16
.LBB11_34:
	ld.bu	$a6, $a3, 3
	addi.d	$a2, $a3, 2
	sltui	$a7, $a6, 32
	add.d	$a6, $a6, $a7
	st.b	$a6, $a3, 3
	b	.LBB11_25
.LBB11_35:
	addi.w	$a1, $t1, 0
	st.w	$a0, $fp, 24
	bltu	$a1, $a7, .LBB11_41
# %bb.36:
	move	$s6, $t1
	move	$s2, $a2
	st.d	$a2, $fp, 16
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(CreateSuccessors)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_39
# %bb.37:
	ld.d	$a1, $fp, 56
	sub.d	$s3, $a0, $a1
	srli.d	$a6, $s3, 16
	b	.LBB11_40
.LBB11_38:
	st.w	$a0, $fp, 24
	sub.d	$s3, $a3, $a1
	b	.LBB11_45
.LBB11_39:
	move	$s3, $zero
	move	$a6, $zero
.LBB11_40:
	ld.w	$a0, $fp, 24
	move	$a2, $s2
	st.h	$s3, $s2, 2
	st.h	$a6, $s2, 4
	st.d	$s4, $fp, 16
	move	$t1, $s6
.LBB11_41:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_44
# %bb.42:
	ld.d	$a0, $fp, 8
	bne	$s5, $a0, .LBB11_44
# %bb.43:
	st.h	$s3, $s4, 2
	st.h	$a6, $s4, 4
	ld.d	$a0, $fp, 80
	ld.hu	$s3, $a2, 2
	ld.hu	$a6, $a2, 4
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 80
.LBB11_44:
	bstrins.d	$s3, $a6, 63, 16
	addi.w	$a0, $s3, 0
	beqz	$a0, .LBB11_20
.LBB11_45:                              # %.thread244
	ld.w	$a1, $fp, 24
	ld.d	$a0, $fp, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $fp, 24
	beqz	$a1, .LBB11_73
# %bb.46:
	beq	$s0, $a0, .LBB11_74
.LBB11_47:                              # %.lr.ph
	ld.bu	$a7, $a0, 0
	ori	$a1, $zero, 63
	sltu	$a1, $a1, $s1
	slli.d	$t0, $a1, 3
	ld.hu	$a0, $a0, 2
	addi.d	$t2, $fp, 166
	addi.d	$t3, $fp, 296
	addi.d	$s4, $fp, 448
	addi.d	$t4, $fp, 128
	ori	$a1, $zero, 2
	sltu	$t5, $a1, $a7
	slli.d	$s5, $s7, 1
	add.d	$a1, $s7, $a7
	sub.d	$t7, $a0, $a1
	bstrpick.d	$t6, $t1, 31, 16
	ori	$t8, $zero, 120
	ori	$s7, $zero, 6
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	st.d	$t2, $sp, 80                    # 8-byte Folded Spill
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$t7, $sp, 64                    # 8-byte Folded Spill
	b	.LBB11_50
	.p2align	4, , 16
.LBB11_48:                              #   in Loop: Header=BB11_50 Depth=1
	alsl.w	$a3, $a1, $a1, 3
	sltu	$a3, $a3, $a2
	slli.d	$a4, $a1, 3
	alsl.w	$a4, $a1, $a4, 2
	sltu	$a4, $a4, $a2
	add.d	$a3, $a4, $a3
	slli.d	$a4, $a1, 4
	sub.w	$a1, $a4, $a1
	sltu	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a3, $a1, 4
	move	$a1, $a3
.LBB11_49:                              # %.critedge226
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$a2, $fp, 56
	ld.wu	$a4, $s0, 4
	add.d	$a0, $a3, $a0
	st.h	$a0, $s0, 2
	add.d	$a0, $a2, $a4
	alsl.d	$a3, $s8, $s8, 1
	ld.b	$a4, $s0, 1
	slli.d	$a3, $a3, 1
	add.d	$a0, $a0, $a3
	st.h	$t1, $a0, 8
	or	$a3, $a4, $t0
	st.b	$a3, $s0, 1
	addi.d	$a3, $s8, 1
	st.b	$a3, $s0, 0
	ld.wu	$a3, $s0, 8
	ld.d	$a4, $fp, 0
	st.h	$t6, $a0, 10
	st.b	$s1, $a0, 6
	add.d	$s0, $a2, $a3
	st.b	$a1, $a0, 7
	beq	$s0, $a4, .LBB11_75
.LBB11_50:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_68 Depth 2
	ld.bu	$s8, $s0, 0
	beqz	$s8, .LBB11_55
# %bb.51:                               #   in Loop: Header=BB11_50 Depth=1
	andi	$a0, $s8, 1
	beqz	$a0, .LBB11_70
# %bb.52:                               #   in Loop: Header=BB11_50 Depth=1
	addi.d	$a0, $s8, 1
	srli.d	$s2, $a0, 1
	add.d	$a0, $t2, $s2
	ld.bu	$s6, $a0, -1
	ldx.bu	$a0, $t2, $s2
	beq	$s6, $a0, .LBB11_70
# %bb.53:                               #   in Loop: Header=BB11_50 Depth=1
	addi.d	$a1, $s6, 1
	slli.d	$a3, $a1, 2
	ldx.wu	$a0, $t3, $a3
	beqz	$a0, .LBB11_62
# %bb.54:                               # %AllocUnits.exit.thread
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$a2, $fp, 56
	add.d	$a0, $a2, $a0
	ld.w	$a4, $a0, 4
	ldx.w	$a5, $s4, $a3
	alsl.d	$a1, $a1, $t3, 2
	st.w	$a4, $a1, 0
	addi.d	$a1, $a5, -1
	stx.w	$a1, $s4, $a3
	b	.LBB11_67
	.p2align	4, , 16
.LBB11_55:                              #   in Loop: Header=BB11_50 Depth=1
	ld.wu	$a0, $t3, 0
	beqz	$a0, .LBB11_57
# %bb.56:                               # %AllocUnits.exit232.thread
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$a1, $fp, 56
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 4
	ld.w	$a2, $fp, 448
	st.w	$a1, $fp, 296
	addi.d	$a1, $a2, -1
	st.w	$a1, $fp, 448
	b	.LBB11_61
.LBB11_57:                              #   in Loop: Header=BB11_50 Depth=1
	ld.bu	$a1, $fp, 128
	ld.d	$a2, $fp, 72
	ld.d	$a0, $fp, 64
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	sub.w	$a2, $a2, $a0
	bgeu	$a2, $a1, .LBB11_59
# %bb.58:                               #   in Loop: Header=BB11_50 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	move	$s2, $t1
	move	$s6, $t0
	move	$s7, $s4
	move	$s4, $t3
	move	$s5, $t5
	move	$s1, $t6
	pcaddu18i	$ra, %call36(AllocUnitsRare)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 120
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	move	$t6, $s1
	move	$t5, $s5
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	move	$t3, $s4
	move	$s4, $s7
	ori	$s7, $zero, 6
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	move	$t0, $s6
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	move	$t1, $s2
	b	.LBB11_60
.LBB11_59:                              #   in Loop: Header=BB11_50 Depth=1
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 64
.LBB11_60:                              # %AllocUnits.exit232
                                        #   in Loop: Header=BB11_50 Depth=1
	beqz	$a0, .LBB11_20
.LBB11_61:                              #   in Loop: Header=BB11_50 Depth=1
	ld.h	$a1, $s0, 6
	st.h	$a1, $a0, 4
	ld.w	$a1, $s0, 2
	st.w	$a1, $a0, 0
	ld.d	$a1, $fp, 56
	ld.bu	$a2, $a0, 1
	sub.d	$a1, $a0, $a1
	st.w	$a1, $s0, 4
	sltui	$a1, $a2, 30
	slli.d	$a2, $a2, 1
	masknez	$a3, $t8, $a1
	maskeqz	$a1, $a2, $a1
	ld.w	$a2, $fp, 28
	or	$a1, $a1, $a3
	st.b	$a1, $a0, 1
	andi	$a0, $a1, 254
	add.d	$a1, $a2, $t5
	add.w	$a0, $a1, $a0
	b	.LBB11_71
.LBB11_62:                              #   in Loop: Header=BB11_50 Depth=1
	ldx.bu	$a2, $t4, $a1
	ld.d	$a3, $fp, 72
	ld.d	$a0, $fp, 64
	slli.d	$a4, $a2, 3
	alsl.d	$a2, $a2, $a4, 2
	sub.w	$a3, $a3, $a0
	bgeu	$a3, $a2, .LBB11_64
# %bb.63:                               #   in Loop: Header=BB11_50 Depth=1
	move	$a0, $fp
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $t6
	pcaddu18i	$ra, %call36(AllocUnitsRare)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 120
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	move	$t6, $s7
	ori	$s7, $zero, 6
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB11_65
.LBB11_64:                              #   in Loop: Header=BB11_50 Depth=1
	add.d	$a1, $a0, $a2
	st.d	$a1, $fp, 64
.LBB11_65:                              # %AllocUnits.exit
                                        #   in Loop: Header=BB11_50 Depth=1
	beqz	$a0, .LBB11_20
# %bb.66:                               # %AllocUnits.exit._crit_edge
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$a2, $fp, 56
.LBB11_67:                              #   in Loop: Header=BB11_50 Depth=1
	ld.wu	$a1, $s0, 4
	add.d	$a3, $a2, $a1
	move	$a4, $a0
	move	$a5, $a3
	.p2align	4, , 16
.LBB11_68:                              #   Parent Loop BB11_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	st.w	$a6, $a4, 0
	ld.w	$a6, $a5, 4
	st.w	$a6, $a4, 4
	ld.w	$a6, $a5, 8
	st.w	$a6, $a4, 8
	addi.d	$a5, $a5, 12
	addi.w	$s2, $s2, -1
	addi.d	$a4, $a4, 12
	bnez	$s2, .LBB11_68
# %bb.69:                               #   in Loop: Header=BB11_50 Depth=1
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	st.w	$a4, $a3, 0
	slli.d	$a4, $s6, 2
	ldx.w	$a5, $t3, $a4
	st.w	$a5, $a3, 4
	ldx.bu	$a5, $t4, $s6
	st.w	$a5, $a3, 8
	ldx.w	$a3, $s4, $a4
	stx.w	$a1, $t3, $a4
	addi.d	$a1, $a3, 1
	stx.w	$a1, $s4, $a4
	sub.d	$a0, $a0, $a2
	st.w	$a0, $s0, 4
.LBB11_70:                              # %.critedge
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.h	$a0, $s0, 2
	alsl.d	$a1, $s8, $s8, 1
	addi.d	$a1, $a1, 1
	sltu	$a1, $a1, $a7
	add.d	$a0, $a0, $a1
.LBB11_71:                              #   in Loop: Header=BB11_50 Depth=1
	bstrpick.d	$a1, $a0, 15, 0
	addi.d	$a2, $a1, 6
	mul.d	$a3, $a2, $s5
	add.d	$a1, $t7, $a1
	mul.d	$a4, $a1, $s7
	addi.w	$a2, $a3, 0
	bgeu	$a3, $a4, .LBB11_48
# %bb.72:                               #   in Loop: Header=BB11_50 Depth=1
	addi.w	$a3, $a1, 0
	sltu	$a3, $a3, $a2
	slli.w	$a1, $a1, 2
	sltu	$a1, $a2, $a1
	xori	$a1, $a1, 1
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 4
	b	.LBB11_49
.LBB11_73:
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 80
	xor	$a1, $a1, $a0
	sltu	$a1, $zero, $a1
	sub.d	$a1, $a2, $a1
	st.d	$a1, $fp, 80
	move	$t1, $s3
	bne	$s0, $a0, .LBB11_47
.LBB11_74:                              # %.._crit_edge_crit_edge
	ld.d	$a2, $fp, 56
.LBB11_75:                              # %._crit_edge
	bstrpick.d	$a0, $s3, 31, 0
	add.d	$a0, $a2, $a0
	st.d	$a0, $fp, 0
.LBB11_76:
	st.d	$a0, $fp, 8
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end11:
	.size	UpdateModel, .Lfunc_end11-UpdateModel
                                        # -- End function
	.p2align	5                               # -- Begin function ShrinkUnits
	.type	ShrinkUnits,@function
ShrinkUnits:                            # @ShrinkUnits
# %bb.0:
	move	$a4, $a0
	addi.d	$a7, $a0, 166
	add.d	$a0, $a7, $a2
	ld.bu	$a5, $a0, -1
	add.d	$a0, $a7, $a3
	ld.bu	$t0, $a0, -1
	move	$a0, $a1
	beq	$a5, $t0, .LBB12_9
# %bb.1:
	addi.d	$a1, $a4, 296
	slli.d	$t2, $t0, 2
	ldx.wu	$a2, $a1, $t2
	beqz	$a2, .LBB12_5
# %bb.2:
	ld.d	$a6, $a4, 56
	add.d	$a2, $a6, $a2
	ld.w	$t3, $a2, 4
	addi.d	$a7, $a4, 448
	ldx.w	$t4, $a7, $t2
	move	$t1, $zero
	alsl.d	$t0, $t0, $a1, 2
	st.w	$t3, $t0, 0
	addi.d	$t0, $t4, -1
	stx.w	$t0, $a7, $t2
	.p2align	4, , 16
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$t0, $a0, $t1
	add.d	$t2, $a0, $t1
	stx.w	$t0, $a2, $t1
	ld.w	$t0, $t2, 4
	add.d	$t3, $a2, $t1
	st.w	$t0, $t3, 4
	ld.w	$t0, $t2, 8
	st.w	$t0, $t3, 8
	addi.w	$a3, $a3, -1
	addi.d	$t1, $t1, 12
	bnez	$a3, .LBB12_3
# %bb.4:
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	st.w	$a3, $a0, 0
	slli.d	$a3, $a5, 2
	ldx.w	$t0, $a1, $a3
	st.w	$t0, $a0, 4
	add.d	$a4, $a4, $a5
	ld.bu	$a4, $a4, 128
	st.w	$a4, $a0, 8
	ldx.w	$a4, $a7, $a3
	sub.d	$a0, $a0, $a6
	stx.w	$a0, $a1, $a3
	addi.d	$a0, $a4, 1
	stx.w	$a0, $a7, $a3
	move	$a0, $a2
	ret
.LBB12_5:
	addi.d	$a2, $a4, 128
	ldx.bu	$a3, $a2, $a5
	ldx.bu	$a5, $a2, $t0
	sub.d	$a6, $a3, $a5
	addi.d	$a3, $a6, -1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a3, $a7, $a3
	ldx.bu	$a7, $a2, $a3
	slli.d	$t0, $a5, 3
	alsl.d	$a5, $a5, $t0, 2
	add.d	$a5, $a0, $a5
	bne	$a6, $a7, .LBB12_7
# %bb.6:                                # %._crit_edge.i
	ld.d	$a6, $a4, 56
	b	.LBB12_8
.LBB12_7:
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a7, $a2, $a3
	slli.d	$t0, $a7, 3
	alsl.d	$t0, $a7, $t0, 2
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	stx.w	$t1, $a5, $t0
	sub.d	$a6, $a7, $a6
	nor	$a6, $a6, $zero
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$t1, $a7, 2
	ldx.w	$a6, $a1, $t1
	add.d	$t0, $a5, $t0
	st.w	$a6, $t0, 4
	ldx.bu	$a6, $a2, $a7
	st.w	$a6, $t0, 8
	ld.d	$a6, $a4, 56
	alsl.d	$a7, $a7, $a4, 2
	ld.w	$t2, $a7, 448
	sub.d	$t0, $t0, $a6
	stx.w	$t0, $a1, $t1
	addi.d	$t0, $t2, 1
	st.w	$t0, $a7, 448
.LBB12_8:                               # %SplitBlock.exit
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, 0
	st.w	$a7, $a5, 0
	slli.d	$a7, $a3, 2
	ldx.w	$t0, $a1, $a7
	st.w	$t0, $a5, 4
	ldx.bu	$a2, $a2, $a3
	st.w	$a2, $a5, 8
	alsl.d	$a2, $a3, $a4, 2
	ld.w	$a3, $a2, 448
	sub.d	$a4, $a5, $a6
	stx.w	$a4, $a1, $a7
	addi.d	$a1, $a3, 1
	st.w	$a1, $a2, 448
.LBB12_9:
	ret
.Lfunc_end12:
	.size	ShrinkUnits, .Lfunc_end12-ShrinkUnits
                                        # -- End function
	.p2align	5                               # -- Begin function CreateSuccessors
	.type	CreateSuccessors,@function
CreateSuccessors:                       # @CreateSuccessors
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
	move	$fp, $a0
	ld.d	$a4, $a0, 16
	move	$s0, $a3
	beqz	$a1, .LBB13_12
# %bb.1:
	move	$a5, $zero
	ld.w	$a3, $a4, 2
	ld.wu	$t0, $s0, 8
	ld.d	$a1, $fp, 56
	beqz	$t0, .LBB13_13
.LBB13_2:                               # %.lr.ph.preheader
	addi.d	$a0, $a1, -6
	ori	$a6, $zero, 114
	addi.d	$a7, $sp, 8
	.p2align	4, , 16
.LBB13_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
	add.d	$s0, $a1, $t0
	beqz	$a2, .LBB13_6
.LBB13_4:                               #   in Loop: Header=BB13_3 Depth=1
	ld.w	$t0, $a2, 2
	bne	$t0, $a3, .LBB13_14
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=1
	ld.wu	$t0, $s0, 8
	addi.w	$s1, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	stx.d	$a2, $a5, $a7
	move	$a5, $s1
	move	$a2, $zero
	bnez	$t0, .LBB13_3
	b	.LBB13_15
	.p2align	4, , 16
.LBB13_6:                               #   in Loop: Header=BB13_3 Depth=1
	ld.bu	$a2, $s0, 0
	beqz	$a2, .LBB13_11
# %bb.7:                                #   in Loop: Header=BB13_3 Depth=1
	ld.wu	$a2, $s0, 4
	ld.bu	$t0, $a4, 0
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB13_8:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $a2, 6
	addi.d	$a2, $a2, 6
	bne	$t1, $t0, .LBB13_8
# %bb.9:                                #   in Loop: Header=BB13_3 Depth=1
	ld.bu	$t0, $a2, 1
	bltu	$a6, $t0, .LBB13_4
# %bb.10:                               #   in Loop: Header=BB13_3 Depth=1
	ld.h	$t1, $s0, 2
	addi.d	$t0, $t0, 1
	st.b	$t0, $a2, 1
	addi.d	$t0, $t1, 1
	st.h	$t0, $s0, 2
	b	.LBB13_4
.LBB13_11:                              #   in Loop: Header=BB13_3 Depth=1
	ld.wu	$a2, $s0, 8
	ldx.bu	$t0, $a1, $a2
	ld.bu	$t1, $s0, 3
	addi.d	$a2, $s0, 2
	sltui	$t0, $t0, 1
	sltui	$t2, $t1, 24
	and	$t0, $t0, $t2
	add.d	$t0, $t1, $t0
	st.b	$t0, $s0, 3
	b	.LBB13_4
.LBB13_12:
	st.d	$a4, $sp, 8
	ori	$a5, $zero, 1
	ld.w	$a3, $a4, 2
	ld.wu	$t0, $s0, 8
	ld.d	$a1, $fp, 56
	bnez	$t0, .LBB13_2
.LBB13_13:
	move	$s1, $a5
	b	.LBB13_15
.LBB13_14:
	bstrpick.d	$a0, $t0, 31, 0
	add.d	$s0, $a1, $a0
	move	$s1, $a5
	move	$a0, $s0
	beqz	$a5, .LBB13_31
.LBB13_15:                              # %.thread119
	bstrpick.d	$a0, $a3, 31, 0
	ldx.bu	$s2, $a1, $a0
	ori	$a0, $zero, 63
	ld.bu	$a2, $a4, 0
	sltu	$a5, $a0, $s2
	ld.bu	$a4, $s0, 0
	addi.w	$s3, $a3, 1
	sltu	$a0, $a0, $a2
	slli.d	$a0, $a0, 4
	slli.d	$a2, $a5, 3
	beqz	$a4, .LBB13_20
# %bb.16:
	ld.wu	$a3, $s0, 4
	add.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB13_17:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a3, 0
	addi.d	$a3, $a3, 6
	bne	$a5, $s2, .LBB13_17
# %bb.18:
	ld.bu	$a3, $a3, -5
	ld.hu	$a6, $s0, 2
	addi.d	$a5, $a3, -1
	add.d	$a4, $a3, $a4
	sub.d	$a4, $a6, $a4
	addi.d	$a4, $a4, 1
	slli.d	$a6, $a5, 1
	bgeu	$a4, $a6, .LBB13_21
# %bb.19:
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$a3, $a3, -4
	div.wu	$a3, $a3, $a4
	b	.LBB13_22
.LBB13_20:
	ld.bu	$s4, $s0, 3
	b	.LBB13_23
.LBB13_21:
	alsl.d	$a3, $a5, $a5, 2
	sltu	$a3, $a4, $a3
.LBB13_22:
	addi.d	$s4, $a3, 1
.LBB13_23:
	bstrpick.d	$s5, $s3, 31, 16
	or	$s6, $a0, $a2
	addi.d	$a0, $s1, -1
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a2, $sp, 8
	alsl.d	$s7, $a0, $a2, 3
	b	.LBB13_26
	.p2align	4, , 16
.LBB13_24:                              #   in Loop: Header=BB13_26 Depth=1
	addi.d	$a0, $a0, -12
	st.d	$a0, $fp, 72
.LBB13_25:                              #   in Loop: Header=BB13_26 Depth=1
	st.b	$zero, $a0, 0
	st.b	$s2, $a0, 2
	st.b	$s4, $a0, 3
	ld.d	$a1, $fp, 56
	st.b	$s6, $a0, 1
	st.h	$s3, $a0, 4
	st.h	$s5, $a0, 6
	sub.d	$a2, $s0, $a1
	ld.d	$a3, $s7, 0
	st.w	$a2, $a0, 8
	addi.w	$s1, $s1, -1
	sub.d	$a2, $a0, $a1
	st.w	$a2, $a3, 2
	addi.d	$s7, $s7, -8
	move	$s0, $a0
	beqz	$s1, .LBB13_31
.LBB13_26:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ld.d	$a2, $fp, 64
	bne	$a0, $a2, .LBB13_24
# %bb.27:                               #   in Loop: Header=BB13_26 Depth=1
	ld.wu	$a0, $fp, 296
	beqz	$a0, .LBB13_29
# %bb.28:                               #   in Loop: Header=BB13_26 Depth=1
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 4
	ld.w	$a2, $fp, 448
	st.w	$a1, $fp, 296
	addi.d	$a1, $a2, -1
	st.w	$a1, $fp, 448
	b	.LBB13_25
.LBB13_29:                              #   in Loop: Header=BB13_26 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocUnitsRare)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_25
# %bb.30:
	move	$a0, $zero
.LBB13_31:                              # %.thread
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
.Lfunc_end13:
	.size	CreateSuccessors, .Lfunc_end13-CreateSuccessors
                                        # -- End function
	.p2align	5                               # -- Begin function RestoreModel
	.type	RestoreModel,@function
RestoreModel:                           # @RestoreModel
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 56
	ld.wu	$a0, $a0, 96
	ld.d	$s2, $fp, 8
	add.d	$a0, $s1, $a0
	st.d	$a0, $fp, 80
	beq	$s2, $a1, .LBB14_10
# %bb.1:
	move	$s0, $a1
	ori	$s3, $zero, 63
	addi.w	$s4, $zero, -1
	lu32i.d	$s4, 0
	b	.LBB14_6
	.p2align	4, , 16
.LBB14_2:                               #   in Loop: Header=BB14_6 Depth=1
	ld.wu	$a1, $s2, 4
	ldx.bu	$a2, $s1, $a1
	ld.bu	$a3, $s2, 1
	add.d	$a0, $s1, $a1
	sltu	$a2, $s3, $a2
	slli.d	$a2, $a2, 3
	srli.d	$a3, $a3, 4
	bstrins.d	$a2, $a3, 4, 4
	st.b	$a2, $s2, 1
	ld.h	$a2, $a0, 4
	st.h	$a2, $s2, 6
	ldx.w	$a1, $s1, $a1
	st.w	$a1, $s2, 2
	ld.d	$a1, $fp, 88
	beq	$a0, $a1, .LBB14_5
# %bb.3:                                #   in Loop: Header=BB14_6 Depth=1
	st.w	$s4, $a0, 0
	ld.w	$a1, $fp, 296
	st.w	$a1, $a0, 4
	ld.bu	$a1, $fp, 128
	ld.d	$s1, $fp, 56
	st.w	$a1, $a0, 8
	ld.w	$a1, $fp, 448
	sub.d	$a0, $a0, $s1
	st.w	$a0, $fp, 296
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 448
.LBB14_4:                               # %SpecialFreeUnit.exit
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.bu	$a0, $s2, 3
	addi.d	$a0, $a0, 11
	srli.d	$a0, $a0, 3
	st.b	$a0, $s2, 3
	ld.wu	$a0, $s2, 8
	add.d	$s2, $s1, $a0
	bne	$s2, $s0, .LBB14_6
	b	.LBB14_10
.LBB14_5:                               #   in Loop: Header=BB14_6 Depth=1
	ld.d	$s1, $fp, 56
	addi.d	$a0, $a1, 12
	st.d	$a0, $fp, 88
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
	ld.b	$a0, $s2, 0
	addi.d	$a0, $a0, -1
	andi	$s5, $a0, 255
	st.b	$a0, $s2, 0
	beqz	$s5, .LBB14_2
# %bb.7:                                #   in Loop: Header=BB14_6 Depth=1
	ld.wu	$a0, $s2, 4
	addi.d	$a1, $s5, 3
	srli.d	$a2, $a1, 1
	add.d	$a1, $s1, $a0
	addi.d	$a0, $s5, 2
	srli.d	$a3, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ShrinkUnits)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 56
	ld.bu	$a1, $a0, 0
	sub.d	$a2, $a0, $s1
	st.w	$a2, $s2, 4
	ld.bu	$a3, $s2, 1
	sltu	$a1, $s3, $a1
	ld.hu	$a4, $s2, 2
	ld.bu	$a2, $a0, 1
	slli.d	$a1, $a1, 3
	srli.d	$a3, $a3, 4
	bstrins.d	$a1, $a3, 4, 4
	sub.d	$a3, $a4, $a2
	addi.d	$a0, $a0, 7
	.p2align	4, , 16
.LBB14_8:                               #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a0, 0
	ld.bu	$a7, $a0, -1
	move	$a4, $a2
	move	$a5, $a3
	sub.d	$a3, $a3, $a6
	add.d	$a2, $a2, $a6
	sltu	$a6, $s3, $a7
	slli.d	$a6, $a6, 3
	or	$a1, $a6, $a1
	addi.w	$s5, $s5, -1
	addi.d	$a0, $a0, 6
	bnez	$s5, .LBB14_8
# %bb.9:                                # %Refresh.exit
                                        #   in Loop: Header=BB14_6 Depth=1
	add.d	$a0, $a4, $a5
	st.h	$a0, $s2, 2
	st.b	$a1, $s2, 1
	ld.wu	$a0, $s2, 8
	add.d	$s2, $s1, $a0
	bne	$s2, $s0, .LBB14_6
.LBB14_10:                              # %.preheader67
	ld.d	$a0, $fp, 0
	beq	$s2, $a0, .LBB14_24
# %bb.11:
	ori	$s0, $zero, 63
	ori	$s3, $zero, 8
	vrepli.b	$vr10, 0
	vrepli.b	$vr11, 63
	vrepli.w	$vr12, 1
	vst	$vr10, $sp, 48                  # 16-byte Folded Spill
	vst	$vr11, $sp, 32                  # 16-byte Folded Spill
	vst	$vr12, $sp, 16                  # 16-byte Folded Spill
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_12:                              #   in Loop: Header=BB14_14 Depth=1
	ld.bu	$a1, $s2, 3
	srli.d	$a2, $a1, 1
	sub.d	$a1, $a1, $a2
	st.b	$a1, $s2, 3
.LBB14_13:                              #   in Loop: Header=BB14_14 Depth=1
	ld.wu	$a1, $s2, 8
	add.d	$s2, $s1, $a1
	beq	$s2, $a0, .LBB14_24
.LBB14_14:                              # %.lr.ph77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_19 Depth 2
                                        #     Child Loop BB14_22 Depth 2
	ld.bu	$s4, $s2, 0
	beqz	$s4, .LBB14_12
# %bb.15:                               #   in Loop: Header=BB14_14 Depth=1
	ld.h	$a1, $s2, 2
	addi.d	$a1, $a1, 4
	bstrpick.d	$a2, $a1, 15, 0
	slli.d	$a3, $s4, 2
	addi.d	$a3, $a3, 128
	st.h	$a1, $s2, 2
	bgeu	$a3, $a2, .LBB14_13
# %bb.16:                               #   in Loop: Header=BB14_14 Depth=1
	ld.wu	$a0, $s2, 4
	addi.d	$a1, $s4, 2
	srli.d	$a2, $a1, 1
	add.d	$a1, $s1, $a0
	move	$a0, $fp
	move	$a3, $a2
	pcaddu18i	$ra, %call36(ShrinkUnits)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 56
	ld.bu	$a1, $s2, 1
	sub.d	$a2, $a0, $s1
	st.w	$a2, $s2, 4
	ld.bu	$a2, $a0, 0
	andi	$a1, $a1, 20
	ld.hu	$a3, $s2, 2
	ld.bu	$a5, $a0, 1
	sltu	$a2, $s0, $a2
	slli.d	$a2, $a2, 3
	or	$a4, $a2, $a1
	sub.d	$a6, $a3, $a5
	addi.d	$a1, $a5, 1
	srli.d	$a5, $a1, 1
	st.b	$a5, $a0, 1
	bgeu	$s4, $s3, .LBB14_18
# %bb.17:                               #   in Loop: Header=BB14_14 Depth=1
	move	$a1, $s4
	move	$a2, $a0
	b	.LBB14_21
.LBB14_18:                              # %vector.ph
                                        #   in Loop: Header=BB14_14 Depth=1
	andi	$a3, $s4, 248
	sub.d	$a1, $s4, $a3
	slli.d	$a2, $a3, 2
	alsl.d	$a2, $a3, $a2, 1
	add.d	$a2, $a0, $a2
	vld	$vr10, $sp, 48                  # 16-byte Folded Reload
	vori.b	$vr2, $vr10, 0
	vinsgr2vr.w	$vr2, $a6, 0
	vori.b	$vr1, $vr10, 0
	vinsgr2vr.w	$vr1, $a5, 0
	vori.b	$vr0, $vr10, 0
	vinsgr2vr.w	$vr0, $a4, 0
	addi.d	$a0, $a0, 24
	move	$a4, $a3
	vori.b	$vr5, $vr10, 0
	vori.b	$vr4, $vr10, 0
	vori.b	$vr3, $vr10, 0
	vld	$vr11, $sp, 32                  # 16-byte Folded Reload
	vld	$vr12, $sp, 16                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB14_19:                              # %vector.body
                                        #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a0, -17
	ld.b	$a6, $a0, -11
	ld.b	$a7, $a0, -5
	ld.b	$t0, $a0, 1
	vinsgr2vr.b	$vr6, $a5, 0
	vinsgr2vr.b	$vr6, $a6, 1
	vinsgr2vr.b	$vr6, $a7, 2
	vinsgr2vr.b	$vr6, $t0, 3
	vinsgr2vr.b	$vr6, $a0, 4
	vinsgr2vr.b	$vr6, $a0, 5
	vinsgr2vr.b	$vr6, $a0, 6
	vinsgr2vr.b	$vr6, $a0, 7
	vinsgr2vr.b	$vr6, $a0, 8
	vinsgr2vr.b	$vr6, $a0, 9
	vinsgr2vr.b	$vr6, $a0, 10
	vinsgr2vr.b	$vr6, $a0, 11
	vinsgr2vr.b	$vr6, $a0, 12
	vinsgr2vr.b	$vr6, $a0, 13
	vinsgr2vr.b	$vr6, $a0, 14
	vinsgr2vr.b	$vr6, $a0, 15
	ld.b	$a5, $a0, 7
	ld.b	$a6, $a0, 13
	ld.b	$a7, $a0, 19
	ld.b	$t0, $a0, 25
	vinsgr2vr.b	$vr7, $a5, 0
	vinsgr2vr.b	$vr7, $a6, 1
	vinsgr2vr.b	$vr7, $a7, 2
	vinsgr2vr.b	$vr7, $t0, 3
	vilvl.b	$vr8, $vr10, $vr6
	vilvl.h	$vr8, $vr10, $vr8
	vilvl.b	$vr9, $vr10, $vr7
	vilvl.h	$vr9, $vr10, $vr9
	vsub.w	$vr2, $vr2, $vr8
	vsub.w	$vr5, $vr5, $vr9
	vsrli.b	$vr8, $vr6, 1
	vsub.b	$vr6, $vr6, $vr8
	vilvl.b	$vr8, $vr10, $vr6
	vilvl.h	$vr8, $vr10, $vr8
	vsrli.b	$vr9, $vr7, 1
	vsub.b	$vr7, $vr7, $vr9
	vilvl.b	$vr9, $vr10, $vr7
	vilvl.h	$vr9, $vr10, $vr9
	vstelm.b	$vr6, $a0, -17, 0
	vstelm.b	$vr6, $a0, -11, 1
	vstelm.b	$vr6, $a0, -5, 2
	vstelm.b	$vr6, $a0, 1, 3
	vstelm.b	$vr7, $a0, 7, 0
	vstelm.b	$vr7, $a0, 13, 1
	vstelm.b	$vr7, $a0, 19, 2
	vstelm.b	$vr7, $a0, 25, 3
	vadd.w	$vr1, $vr8, $vr1
	vadd.w	$vr4, $vr9, $vr4
	ld.b	$a5, $a0, -18
	ld.b	$a6, $a0, -12
	ld.b	$a7, $a0, -6
	ld.b	$t0, $a0, 0
	vinsgr2vr.b	$vr6, $a5, 0
	vinsgr2vr.b	$vr6, $a6, 1
	vinsgr2vr.b	$vr6, $a7, 2
	vinsgr2vr.b	$vr6, $t0, 3
	ld.b	$a5, $a0, 6
	ld.b	$a6, $a0, 12
	ld.b	$a7, $a0, 18
	ld.b	$t0, $a0, 24
	vinsgr2vr.b	$vr7, $a5, 0
	vinsgr2vr.b	$vr7, $a6, 1
	vinsgr2vr.b	$vr7, $a7, 2
	vinsgr2vr.b	$vr7, $t0, 3
	vslt.bu	$vr6, $vr11, $vr6
	vilvl.b	$vr6, $vr6, $vr6
	vilvl.h	$vr6, $vr6, $vr6
	vand.v	$vr6, $vr6, $vr12
	vslli.w	$vr6, $vr6, 3
	vslt.bu	$vr7, $vr11, $vr7
	vilvl.b	$vr7, $vr7, $vr7
	vilvl.h	$vr7, $vr7, $vr7
	vand.v	$vr7, $vr7, $vr12
	vslli.w	$vr7, $vr7, 3
	vor.v	$vr0, $vr6, $vr0
	vor.v	$vr3, $vr7, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a0, $a0, 48
	bnez	$a4, .LBB14_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB14_14 Depth=1
	vadd.w	$vr2, $vr5, $vr2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$a6, $vr2, 0
	vadd.w	$vr1, $vr4, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$a5, $vr1, 0
	vor.v	$vr0, $vr3, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a3, $s4, .LBB14_23
.LBB14_21:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$a0, $a2, 7
	.p2align	4, , 16
.LBB14_22:                              # %scalar.ph
                                        #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a0, 0
	sub.d	$a6, $a6, $a2
	addi.d	$a2, $a2, 1
	ld.bu	$a3, $a0, -1
	srli.d	$a2, $a2, 1
	st.b	$a2, $a0, 0
	add.d	$a5, $a2, $a5
	sltu	$a2, $s0, $a3
	slli.d	$a2, $a2, 3
	or	$a4, $a2, $a4
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 6
	bnez	$a1, .LBB14_22
.LBB14_23:                              # %Refresh.exit63
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$a0, $a6, 1
	srli.d	$a1, $a0, 1
	ld.d	$a0, $fp, 0
	add.d	$a1, $a5, $a1
	st.h	$a1, $s2, 2
	st.b	$a4, $s2, 1
	b	.LBB14_13
.LBB14_24:                              # %._crit_edge
	ld.w	$a0, $fp, 100
	beqz	$a0, .LBB14_26
# %bb.25:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GetUsedMemory)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 48
	srli.d	$a1, $a1, 1
	bgeu	$a0, $a1, .LBB14_27
.LBB14_26:
	move	$a0, $fp
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	pcaddu18i	$t8, %call36(RestartModel)
	jr	$t8
.LBB14_27:                              # %.preheader66
	ld.d	$a0, $fp, 8
	ld.wu	$a0, $a0, 8
	beqz	$a0, .LBB14_30
	.p2align	4, , 16
.LBB14_28:                              # %.lr.ph79
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s1, $a0
	ld.wu	$a0, $a1, 8
	bnez	$a0, .LBB14_28
# %bb.29:                               # %..preheader_crit_edge
	st.d	$a1, $fp, 8
.LBB14_30:                              # %.preheader
	addi.d	$s0, $fp, 166
	addi.d	$s1, $fp, 296
	addi.d	$s2, $fp, 448
	addi.d	$s3, $sp, 72
	addi.w	$s4, $zero, -1
	ori	$s5, $zero, 38
	b	.LBB14_32
	.p2align	4, , 16
.LBB14_31:                              # %ExpandTextArea.exit
                                        #   in Loop: Header=BB14_32 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GetUsedMemory)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 48
	srli.d	$a1, $a1, 2
	alsl.w	$a1, $a1, $a1, 1
	bgeu	$a1, $a0, .LBB14_45
.LBB14_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_36 Depth 2
                                        #     Child Loop BB14_39 Depth 2
                                        #       Child Loop BB14_42 Depth 3
                                        #         Child Loop BB14_43 Depth 4
	ld.d	$a1, $fp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(CutOff)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	ori	$a2, $zero, 152
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $fp, 72
	beq	$a0, $a1, .LBB14_34
# %bb.33:                               #   in Loop: Header=BB14_32 Depth=1
	st.w	$zero, $a0, 0
.LBB14_34:                              #   in Loop: Header=BB14_32 Depth=1
	ld.d	$a0, $fp, 88
	ld.w	$a1, $a0, 0
	beq	$a1, $s4, .LBB14_36
# %bb.35:                               #   in Loop: Header=BB14_32 Depth=1
	move	$a1, $a0
	b	.LBB14_37
	.p2align	4, , 16
.LBB14_36:                              # %.lr.ph.i
                                        #   Parent Loop BB14_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a1, $a0, 8
	st.w	$zero, $a0, 0
	addi.d	$a2, $a1, -1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s0, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a2, $s3
	slli.d	$a4, $a1, 3
	alsl.d	$a1, $a1, $a4, 2
	ldx.w	$a4, $a0, $a1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a0, $a1
	stx.w	$a3, $a2, $s3
	move	$a0, $a1
	beq	$a4, $s4, .LBB14_36
.LBB14_37:                              # %._crit_edge.i
                                        #   in Loop: Header=BB14_32 Depth=1
	move	$a0, $zero
	st.d	$a1, $fp, 88
	b	.LBB14_39
	.p2align	4, , 16
.LBB14_38:                              # %._crit_edge37.i
                                        #   in Loop: Header=BB14_39 Depth=2
	addi.d	$a0, $a0, 1
	beq	$a0, $s5, .LBB14_31
.LBB14_39:                              #   Parent Loop BB14_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_42 Depth 3
                                        #         Child Loop BB14_43 Depth 4
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $a1, $s3
	beqz	$a1, .LBB14_38
# %bb.40:                               # %.lr.ph36.i
                                        #   in Loop: Header=BB14_39 Depth=2
	ld.d	$a2, $fp, 56
	alsl.d	$a3, $a0, $s3, 2
	alsl.d	$a5, $a0, $s1, 2
	alsl.d	$a4, $a0, $s2, 2
	b	.LBB14_42
	.p2align	4, , 16
.LBB14_41:                              #   in Loop: Header=BB14_42 Depth=3
	move	$a5, $a6
.LBB14_42:                              # %.loopexit
                                        #   Parent Loop BB14_32 Depth=1
                                        #     Parent Loop BB14_39 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_43 Depth 4
	ld.wu	$a6, $a5, 0
	.p2align	4, , 16
.LBB14_43:                              #   Parent Loop BB14_32 Depth=1
                                        #     Parent Loop BB14_39 Depth=2
                                        #       Parent Loop BB14_42 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a7, $a2, $a6
	add.d	$a6, $a2, $a6
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB14_41
# %bb.44:                               #   in Loop: Header=BB14_43 Depth=4
	ld.wu	$a6, $a6, 0
	st.w	$a6, $a5, 0
	ld.w	$a7, $a4, 0
	addi.d	$a7, $a7, -1
	st.w	$a7, $a4, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a3, 0
	bnez	$a1, .LBB14_43
	b	.LBB14_38
.LBB14_45:
	ld.w	$a0, $fp, 36
	st.w	$zero, $fp, 52
	st.w	$a0, $fp, 24
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end14:
	.size	RestoreModel, .Lfunc_end14-RestoreModel
                                        # -- End function
	.p2align	5                               # -- Begin function AllocUnitsRare
	.type	AllocUnitsRare,@function
AllocUnitsRare:                         # @AllocUnitsRare
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 52
	move	$s0, $a1
	addi.d	$s2, $fp, 296
	beqz	$a0, .LBB15_8
.LBB15_1:
	addi.w	$a0, $s0, 1
	ori	$a1, $zero, 38
	.p2align	4, , 16
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	beq	$a0, $a1, .LBB15_6
# %bb.3:                                #   in Loop: Header=BB15_2 Depth=1
	bstrpick.d	$a5, $a0, 31, 0
	slli.d	$a4, $a5, 2
	ldx.w	$a3, $s2, $a4
	addi.w	$a0, $a0, 1
	beqz	$a3, .LBB15_2
# %bb.4:
	ld.d	$a0, $fp, 56
	bstrpick.d	$a1, $a3, 31, 0
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 4
	alsl.d	$a2, $a5, $s2, 2
	st.w	$a1, $a2, 0
	addi.d	$a1, $fp, 448
	ldx.w	$a6, $a1, $a4
	addi.d	$a2, $fp, 128
	ldx.bu	$a5, $a2, $a5
	ldx.bu	$t0, $a2, $s0
	addi.d	$a6, $a6, -1
	stx.w	$a6, $a1, $a4
	sub.d	$a7, $a5, $t0
	addi.d	$a4, $a7, -1
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $fp, $a4
	ld.bu	$a4, $a4, 166
	ldx.bu	$t1, $a2, $a4
	slli.d	$a5, $t0, 3
	alsl.d	$a6, $t0, $a5, 2
	add.d	$a5, $a0, $a6
	bne	$a7, $t1, .LBB15_30
# %bb.5:                                # %.SplitBlock.exit_crit_edge
	add.d	$a3, $a6, $a3
	b	.LBB15_31
.LBB15_6:
	add.d	$a0, $fp, $s0
	ld.bu	$a1, $a0, 128
	ld.w	$a2, $fp, 52
	ld.d	$a0, $fp, 88
	ld.d	$a3, $fp, 80
	slli.d	$a4, $a1, 3
	alsl.d	$a1, $a1, $a4, 2
	addi.d	$a2, $a2, -1
	sub.w	$a3, $a0, $a3
	st.w	$a2, $fp, 52
	bgeu	$a1, $a3, .LBB15_29
# %bb.7:
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, 88
	b	.LBB15_32
.LBB15_8:
	st.w	$zero, $sp, 4
	lu12i.w	$a0, 2
	st.w	$a0, $fp, 52
	addi.d	$s1, $fp, 448
	ori	$a2, $zero, 152
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $fp, 72
	beq	$a0, $a1, .LBB15_10
# %bb.9:
	st.w	$zero, $a0, 0
.LBB15_10:
	move	$a1, $zero
	addi.d	$a4, $sp, 4
	ori	$a2, $zero, 38
	addi.w	$a0, $zero, -1
	ori	$a3, $zero, 12
	b	.LBB15_12
	.p2align	4, , 16
.LBB15_11:                              # %._crit_edge.i
                                        #   in Loop: Header=BB15_12 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB15_18
.LBB15_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_15 Depth 2
                                        #       Child Loop BB15_17 Depth 3
	slli.d	$a5, $a1, 2
	ldx.wu	$a7, $s2, $a5
	stx.w	$zero, $s2, $a5
	beqz	$a7, .LBB15_11
# %bb.13:                               # %.lr.ph62.i
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a5, $fp, 56
	b	.LBB15_15
	.p2align	4, , 16
.LBB15_14:                              # %.loopexit.i
                                        #   in Loop: Header=BB15_15 Depth=2
	ld.wu	$a7, $a6, 4
	beqz	$a7, .LBB15_11
.LBB15_15:                              #   Parent Loop BB15_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_17 Depth 3
	add.d	$a6, $a5, $a7
	ld.w	$t0, $a6, 8
	beqz	$t0, .LBB15_14
# %bb.16:                               #   in Loop: Header=BB15_15 Depth=2
	st.w	$a7, $a4, 0
	ld.wu	$a7, $a6, 8
	slli.d	$a4, $a7, 3
	alsl.d	$a4, $a7, $a4, 2
	ldx.w	$t0, $a6, $a4
	addi.d	$a4, $a6, 4
	bne	$t0, $a0, .LBB15_14
	.p2align	4, , 16
.LBB15_17:                              # %.lr.ph.i
                                        #   Parent Loop BB15_12 Depth=1
                                        #     Parent Loop BB15_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$t0, $a7, $a3
	add.d	$t0, $a6, $t0
	ld.w	$t1, $t0, 8
	add.d	$a7, $t1, $a7
	st.w	$a7, $a6, 8
	st.w	$zero, $t0, 8
	ld.wu	$a7, $a6, 8
	mul.d	$t0, $a7, $a3
	ldx.w	$t0, $a6, $t0
	beq	$t0, $a0, .LBB15_17
	b	.LBB15_14
.LBB15_18:
	st.w	$zero, $a4, 0
	ld.w	$a7, $sp, 4
	beqz	$a7, .LBB15_27
# %bb.19:                               # %.lr.ph75.i
	ld.d	$a1, $fp, 56
	addi.d	$a2, $fp, 128
	ori	$a3, $zero, 129
	lu32i.d	$a0, 0
	ori	$a4, $zero, 128
	b	.LBB15_22
	.p2align	4, , 16
.LBB15_20:                              # %._crit_edge68._crit_edge.i
                                        #   in Loop: Header=BB15_22 Depth=1
	st.w	$a0, $a5, 0
	slli.d	$t0, $a7, 2
	ldx.w	$t1, $s2, $t0
	st.w	$t1, $a5, 4
	ldx.bu	$a7, $a2, $a7
	st.w	$a7, $a5, 8
	ldx.w	$a7, $s1, $t0
	sub.d	$a5, $a5, $a1
	stx.w	$a5, $s2, $t0
	addi.d	$a5, $a7, 1
	stx.w	$a5, $s1, $t0
.LBB15_21:                              #   in Loop: Header=BB15_22 Depth=1
	move	$a7, $a6
	beqz	$a6, .LBB15_27
.LBB15_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_24 Depth 2
	bstrpick.d	$a5, $a7, 31, 0
	add.d	$a5, $a1, $a5
	ld.w	$a6, $a5, 4
	ld.w	$t0, $a5, 8
	st.w	$a6, $sp, 4
	beqz	$t0, .LBB15_21
# %bb.23:                               # %.preheader.i
                                        #   in Loop: Header=BB15_22 Depth=1
	bltu	$t0, $a3, .LBB15_25
	.p2align	4, , 16
.LBB15_24:                              # %.lr.ph67.i
                                        #   Parent Loop BB15_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a0, $a5, 0
	ld.w	$t1, $fp, 444
	st.w	$t1, $a5, 4
	ld.bu	$t1, $fp, 165
	st.w	$t1, $a5, 8
	ld.w	$t1, $fp, 596
	st.w	$a7, $fp, 444
	addi.d	$t1, $t1, 1
	st.w	$t1, $fp, 596
	addi.w	$t0, $t0, -128
	addi.d	$a5, $a5, 1536
	addi.d	$a7, $a7, 1536
	bltu	$a4, $t0, .LBB15_24
.LBB15_25:                              # %._crit_edge68.i
                                        #   in Loop: Header=BB15_22 Depth=1
	add.d	$a7, $fp, $t0
	ld.bu	$a7, $a7, 165
	ldx.bu	$t1, $a2, $a7
	beq	$t0, $t1, .LBB15_20
# %bb.26:                               #   in Loop: Header=BB15_22 Depth=1
	addi.d	$a6, $a7, -1
	bstrpick.d	$a7, $a6, 31, 0
	ldx.bu	$a6, $a2, $a7
	slli.d	$t1, $a6, 3
	alsl.d	$t1, $a6, $t1, 2
	stx.w	$a0, $a5, $t1
	sub.d	$a6, $a6, $t0
	nor	$a6, $a6, $zero
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$t0, $a6, 2
	ldx.w	$t2, $s2, $t0
	add.d	$t1, $a5, $t1
	st.w	$t2, $t1, 4
	ldx.bu	$a6, $a2, $a6
	st.w	$a6, $t1, 8
	ldx.w	$t2, $s1, $t0
	sub.d	$t1, $t1, $a1
	ld.w	$a6, $sp, 4
	stx.w	$t1, $s2, $t0
	addi.d	$t1, $t2, 1
	stx.w	$t1, $s1, $t0
	b	.LBB15_20
.LBB15_27:                              # %GlueFreeBlocks.exit
	slli.d	$a0, $s0, 2
	ldx.wu	$a0, $s2, $a0
	beqz	$a0, .LBB15_1
# %bb.28:
	ld.d	$a1, $fp, 56
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 4
	slli.d	$a2, $s0, 2
	ldx.w	$a3, $s1, $a2
	alsl.d	$a4, $s0, $s2, 2
	st.w	$a1, $a4, 0
	addi.d	$a1, $a3, -1
	stx.w	$a1, $s1, $a2
	b	.LBB15_32
.LBB15_29:
	move	$a0, $zero
	b	.LBB15_32
.LBB15_30:
	addi.d	$a4, $a4, -1
	bstrpick.d	$a4, $a4, 31, 0
	ldx.bu	$t0, $a2, $a4
	slli.d	$t1, $t0, 3
	alsl.d	$t1, $t0, $t1, 2
	addi.w	$t2, $zero, -1
	lu32i.d	$t2, 0
	stx.w	$t2, $a5, $t1
	sub.d	$a7, $t0, $a7
	nor	$a7, $a7, $zero
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$t0, $a7, 2
	ldx.w	$t2, $s2, $t0
	add.d	$t3, $a5, $t1
	st.w	$t2, $t3, 4
	ldx.bu	$a7, $a2, $a7
	st.w	$a7, $t3, 8
	ldx.w	$a7, $a1, $t0
	add.d	$a3, $a6, $a3
	add.d	$a6, $a3, $t1
	stx.w	$a6, $s2, $t0
	addi.d	$a6, $a7, 1
	stx.w	$a6, $a1, $t0
.LBB15_31:                              # %SplitBlock.exit
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	st.w	$a6, $a5, 0
	slli.d	$a6, $a4, 2
	ldx.w	$a7, $s2, $a6
	st.w	$a7, $a5, 4
	ldx.bu	$a2, $a2, $a4
	st.w	$a2, $a5, 8
	ldx.w	$a2, $a1, $a6
	stx.w	$a3, $s2, $a6
	addi.d	$a2, $a2, 1
	stx.w	$a2, $a1, $a6
.LBB15_32:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	AllocUnitsRare, .Lfunc_end15-AllocUnitsRare
                                        # -- End function
	.p2align	5                               # -- Begin function GetUsedMemory
	.type	GetUsedMemory,@function
GetUsedMemory:                          # @GetUsedMemory
# %bb.0:
	vld	$vr0, $a0, 512
	vld	$vr1, $a0, 544
	vld	$vr2, $a0, 528
	vld	$vr3, $a0, 560
	vld	$vr4, $a0, 448
	vld	$vr5, $a0, 496
	vld	$vr6, $a0, 464
	vld	$vr7, $a0, 144
	vld	$vr8, $a0, 480
	vld	$vr9, $a0, 128
	vrepli.b	$vr10, 0
	vilvl.b	$vr11, $vr10, $vr7
	vilvl.h	$vr12, $vr10, $vr11
	vilvh.b	$vr7, $vr10, $vr7
	vilvl.h	$vr13, $vr10, $vr7
	vilvh.h	$vr11, $vr10, $vr11
	vilvh.h	$vr7, $vr10, $vr7
	vilvl.b	$vr14, $vr10, $vr9
	vilvl.h	$vr15, $vr10, $vr14
	vilvh.b	$vr9, $vr10, $vr9
	vilvh.h	$vr16, $vr10, $vr9
	vilvh.h	$vr14, $vr10, $vr14
	vilvl.h	$vr9, $vr10, $vr9
	vmul.w	$vr8, $vr8, $vr9
	vmul.w	$vr6, $vr6, $vr14
	ld.w	$a1, $a0, 160
	vmul.w	$vr5, $vr5, $vr16
	vmul.w	$vr4, $vr4, $vr15
	vld	$vr9, $a0, 576
	vinsgr2vr.w	$vr14, $a1, 0
	ld.w	$a1, $a0, 592
	ld.bu	$a2, $a0, 164
	ld.w	$a3, $a0, 596
	ld.bu	$a4, $a0, 165
	vilvl.b	$vr14, $vr10, $vr14
	vilvl.h	$vr10, $vr10, $vr14
	mul.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $a4
	vmadd.w	$vr4, $vr9, $vr10
	vmadd.w	$vr5, $vr3, $vr7
	vmadd.w	$vr6, $vr2, $vr11
	vadd.w	$vr2, $vr6, $vr5
	vmadd.w	$vr8, $vr1, $vr13
	vmadd.w	$vr4, $vr0, $vr12
	vadd.w	$vr0, $vr4, $vr8
	vadd.w	$vr0, $vr0, $vr2
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	add.d	$a1, $a3, $a1
	ld.d	$a3, $a0, 72
	ld.d	$a4, $a0, 64
	ld.d	$a5, $a0, 88
	ld.d	$a6, $a0, 80
	add.d	$a1, $a1, $a2
	sub.d	$a2, $a4, $a3
	ld.w	$a0, $a0, 48
	sub.d	$a3, $a6, $a5
	addi.d	$a4, $zero, -12
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a3
	ret
.Lfunc_end16:
	.size	GetUsedMemory, .Lfunc_end16-GetUsedMemory
                                        # -- End function
	.p2align	5                               # -- Begin function CutOff
	.type	CutOff,@function
CutOff:                                 # @CutOff
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
	move	$fp, $a1
	move	$s0, $a0
	ld.bu	$s4, $a1, 0
	ld.d	$a3, $a0, 56
	move	$s1, $a2
	beqz	$s4, .LBB17_17
# %bb.1:
	ld.wu	$a0, $fp, 4
	ld.d	$a4, $s0, 88
	add.d	$a2, $a3, $a0
	addi.d	$a1, $s4, 2
	lu12i.w	$a5, 4
	add.d	$a5, $a4, $a5
	srli.d	$s2, $a1, 1
	bltu	$a5, $a2, .LBB17_3
# %bb.2:
	add.d	$a1, $s0, $s2
	ld.bu	$a5, $a1, 165
	alsl.d	$t0, $a5, $s0, 2
	ld.w	$a1, $t0, 296
	addi.w	$a6, $a0, 0
	bgeu	$a1, $a6, .LBB17_20
.LBB17_3:
	move	$a1, $a2
.LBB17_4:                               # %.lr.ph
	sub.d	$a0, $a1, $a3
	st.w	$a0, $fp, 4
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $a3, $a0
	slli.d	$a0, $s4, 2
	alsl.d	$a0, $s4, $a0, 1
	add.d	$s5, $a1, $a0
	addi.w	$s3, $s1, 1
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_5:                               #   in Loop: Header=BB17_7 Depth=1
	slli.d	$a0, $s4, 2
	alsl.d	$a0, $s4, $a0, 1
	st.w	$zero, $s5, 2
	ldx.w	$a2, $a1, $a0
	add.d	$a3, $a1, $a0
	ld.wu	$a4, $s5, 0
	st.w	$a2, $s5, 0
	ld.h	$a2, $a3, 4
	ld.hu	$a5, $s5, 4
	addi.w	$s4, $s4, -1
	st.h	$a2, $s5, 4
	stx.w	$a4, $a1, $a0
	st.h	$a5, $a3, 4
.LBB17_6:                               #   in Loop: Header=BB17_7 Depth=1
	ld.d	$a3, $s0, 56
	ld.wu	$a0, $fp, 4
	addi.d	$s5, $s5, -6
	add.d	$a1, $a3, $a0
	bltu	$s5, $a1, .LBB17_11
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s5, 4
	ld.hu	$a2, $s5, 2
	ld.d	$a4, $s0, 88
	slli.d	$a0, $a0, 16
	add.d	$a0, $a3, $a0
	add.d	$a2, $a0, $a2
	bltu	$a2, $a4, .LBB17_5
# %bb.8:                                #   in Loop: Header=BB17_7 Depth=1
	ld.w	$a0, $s0, 36
	bgeu	$s1, $a0, .LBB17_10
# %bb.9:                                #   in Loop: Header=BB17_7 Depth=1
	move	$a0, $s0
	move	$a1, $a2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(CutOff)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, 2
	b	.LBB17_6
	.p2align	4, , 16
.LBB17_10:                              #   in Loop: Header=BB17_7 Depth=1
	st.w	$zero, $s5, 2
	b	.LBB17_6
.LBB17_11:                              # %._crit_edge
	beqz	$s1, .LBB17_40
# %bb.12:                               # %._crit_edge
	ld.bu	$a2, $fp, 0
	beq	$s4, $a2, .LBB17_40
# %bb.13:
	st.b	$s4, $fp, 0
	bltz	$s4, .LBB17_24
# %bb.14:
	beqz	$s4, .LBB17_33
# %bb.15:
	ld.hu	$a0, $fp, 2
	slli.w	$a2, $s4, 4
	sltu	$s1, $a2, $a0
	andi	$s3, $s4, 255
	addi.d	$a0, $s3, 2
	srli.d	$a3, $a0, 1
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(ShrinkUnits)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 56
	sub.d	$a1, $a0, $a3
	st.w	$a1, $fp, 4
	ld.bu	$a1, $fp, 1
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $s1
	ori	$a4, $zero, 20
	maskeqz	$a4, $a4, $s1
	or	$a2, $a4, $a2
	and	$a2, $a2, $a1
	ld.bu	$a4, $a0, 0
	ori	$a1, $zero, 63
	ld.hu	$a5, $fp, 2
	ld.bu	$t0, $a0, 1
	sltu	$a4, $a1, $a4
	slli.d	$a4, $a4, 3
	or	$a7, $a4, $a2
	sub.d	$a6, $a5, $t0
	add.d	$a2, $t0, $s1
	srl.w	$a4, $a2, $s1
	st.b	$a4, $a0, 1
	addi.d	$a2, $s3, -1
	ori	$a5, $zero, 7
	andi	$t0, $a4, 255
	bgeu	$a2, $a5, .LBB17_34
# %bb.16:
	move	$a2, $a0
	b	.LBB17_37
.LBB17_17:
	ld.hu	$a0, $fp, 6
	ld.hu	$a1, $fp, 4
	ld.d	$a2, $s0, 88
	slli.d	$a0, $a0, 16
	add.d	$a0, $a3, $a0
	add.d	$a1, $a0, $a1
	bltu	$a1, $a2, .LBB17_29
# %bb.18:
	ld.w	$a0, $s0, 36
	bgeu	$s1, $a0, .LBB17_26
# %bb.19:
	addi.w	$a2, $s1, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(CutOff)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 15, 0
	bstrpick.d	$a0, $a0, 31, 16
	st.h	$a1, $fp, 4
	ori	$a2, $zero, 10
	st.h	$a0, $fp, 6
	bgeu	$s1, $a2, .LBB17_27
	b	.LBB17_32
.LBB17_20:
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a3, $a1
	ld.w	$a7, $a1, 4
	ld.w	$t1, $t0, 448
	addi.d	$a6, $t0, 296
	st.w	$a7, $a6, 0
	addi.d	$a7, $t0, 448
	addi.d	$t1, $t1, -1
	st.w	$t1, $t0, 448
	addi.d	$t0, $a1, 8
	add.d	$t1, $a0, $a3
	addi.d	$t1, $t1, 4
	move	$t2, $s2
	.p2align	4, , 16
.LBB17_21:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t1, -4
	st.w	$t3, $t0, -8
	ld.w	$t3, $t1, 0
	st.w	$t3, $t0, -4
	ld.w	$t3, $t1, 4
	st.w	$t3, $t0, 0
	addi.w	$t2, $t2, -1
	addi.d	$t0, $t0, 12
	addi.d	$t1, $t1, 12
	bnez	$t2, .LBB17_21
# %bb.22:
	beq	$a2, $a4, .LBB17_42
# %bb.23:
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	st.w	$a4, $a2, 0
	ld.w	$a4, $a6, 0
	st.w	$a4, $a2, 4
	add.d	$a4, $s0, $a5
	ld.bu	$a4, $a4, 128
	st.w	$a4, $a2, 8
	ld.w	$a2, $a7, 0
	st.w	$a0, $a6, 0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a7, 0
	b	.LBB17_4
.LBB17_24:
	add.d	$a2, $s0, $s2
	ld.bu	$a6, $a2, 165
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	st.w	$a4, $a1, 0
	addi.d	$a2, $s0, 296
	slli.d	$a7, $a6, 2
	ldx.w	$a5, $a2, $a7
	st.w	$a5, $a1, 4
	addi.d	$a5, $s0, 128
	ldx.bu	$a6, $a5, $a6
	st.w	$a6, $a1, 8
	addi.d	$a1, $s0, 448
	ldx.w	$t0, $a1, $a7
	ld.d	$a6, $s0, 88
	stx.w	$a0, $a2, $a7
	addi.d	$a0, $t0, 1
	stx.w	$a0, $a1, $a7
	beq	$fp, $a6, .LBB17_43
# %bb.25:
	st.w	$a4, $fp, 0
	ld.w	$a0, $a2, 0
	st.w	$a0, $fp, 4
	ld.bu	$a0, $a5, 0
	st.w	$a0, $fp, 8
	ld.w	$a4, $a1, 0
	move	$a0, $zero
	sub.d	$a3, $fp, $a3
	st.w	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	st.w	$a2, $a1, 0
	b	.LBB17_41
.LBB17_26:
	move	$a1, $zero
	move	$a0, $zero
	st.h	$a1, $fp, 4
	ori	$a2, $zero, 10
	st.h	$a0, $fp, 6
	bltu	$s1, $a2, .LBB17_32
.LBB17_27:
	or	$a0, $a0, $a1
	bnez	$a0, .LBB17_32
# %bb.28:                               # %._crit_edge121
	ld.d	$a2, $s0, 88
.LBB17_29:
	beq	$fp, $a2, .LBB17_31
# %bb.30:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 0
	ld.w	$a0, $s0, 296
	st.w	$a0, $fp, 4
	ld.bu	$a0, $s0, 128
	ld.d	$a1, $s0, 56
	st.w	$a0, $fp, 8
	ld.w	$a2, $s0, 448
	move	$a0, $zero
	sub.d	$a1, $fp, $a1
	st.w	$a1, $s0, 296
	addi.d	$a1, $a2, 1
	st.w	$a1, $s0, 448
	b	.LBB17_41
.LBB17_31:
	move	$a0, $zero
	addi.d	$a1, $a2, 12
	st.d	$a1, $s0, 88
	b	.LBB17_41
.LBB17_32:
	ld.d	$a0, $s0, 56
	sub.w	$a0, $fp, $a0
	b	.LBB17_41
.LBB17_33:
	ld.bu	$a0, $a1, 0
	ld.bu	$a2, $fp, 1
	ori	$a3, $zero, 63
	sltu	$a0, $a3, $a0
	slli.d	$a0, $a0, 3
	srli.d	$a2, $a2, 4
	bstrins.d	$a0, $a2, 4, 4
	st.b	$a0, $fp, 1
	ld.h	$a0, $a1, 4
	st.h	$a0, $fp, 6
	ld.w	$a0, $a1, 0
	st.w	$a0, $fp, 2
	add.d	$a0, $s0, $s2
	ld.bu	$a0, $a0, 165
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $a1, 0
	alsl.d	$a2, $a0, $s0, 2
	ld.w	$a3, $a2, 296
	st.w	$a3, $a1, 4
	add.d	$a0, $s0, $a0
	ld.bu	$a0, $a0, 128
	ld.d	$a3, $s0, 56
	st.w	$a0, $a1, 8
	ld.w	$a0, $a2, 448
	sub.d	$a1, $a1, $a3
	ld.b	$a4, $fp, 3
	st.w	$a1, $a2, 296
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, 448
	addi.d	$a0, $a4, 11
	bstrpick.d	$a0, $a0, 7, 3
	st.b	$a0, $fp, 3
	b	.LBB17_40
.LBB17_34:                              # %vector.ph
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a4, $a2, 1
	bstrpick.d	$a2, $a4, 32, 3
	slli.d	$a5, $a2, 3
	sub.d	$s3, $s3, $a5
	slli.d	$t1, $a2, 5
	alsl.d	$a2, $a2, $t1, 4
	vrepli.b	$vr2, 0
	add.d	$a2, $a0, $a2
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vori.b	$vr1, $vr2, 0
	vinsgr2vr.w	$vr1, $t0, 0
	vori.b	$vr0, $vr2, 0
	vinsgr2vr.w	$vr0, $a7, 0
	vreplgr2vr.w	$vr4, $s1
	addi.d	$a0, $a0, 24
	vrepli.w	$vr5, 255
	vrepli.b	$vr7, 63
	vrepli.w	$vr8, 1
	move	$a6, $a5
	vori.b	$vr10, $vr2, 0
	vori.b	$vr9, $vr2, 0
	vori.b	$vr6, $vr2, 0
	.p2align	4, , 16
.LBB17_35:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a0, -17
	ld.b	$t0, $a0, -11
	ld.b	$t1, $a0, -5
	ld.b	$t2, $a0, 1
	vinsgr2vr.b	$vr11, $a7, 0
	vinsgr2vr.b	$vr11, $t0, 1
	vinsgr2vr.b	$vr11, $t1, 2
	vinsgr2vr.b	$vr11, $t2, 3
	ld.b	$a7, $a0, 7
	ld.b	$t0, $a0, 13
	ld.b	$t1, $a0, 19
	ld.b	$t2, $a0, 25
	vinsgr2vr.b	$vr12, $a7, 0
	vinsgr2vr.b	$vr12, $t0, 1
	vinsgr2vr.b	$vr12, $t1, 2
	vinsgr2vr.b	$vr12, $t2, 3
	vilvl.b	$vr11, $vr2, $vr11
	vilvl.h	$vr11, $vr2, $vr11
	vilvl.b	$vr12, $vr2, $vr12
	vilvl.h	$vr12, $vr2, $vr12
	vsub.w	$vr3, $vr3, $vr11
	vsub.w	$vr10, $vr10, $vr12
	vadd.w	$vr11, $vr4, $vr11
	vadd.w	$vr12, $vr4, $vr12
	vsrl.w	$vr11, $vr11, $vr4
	vsrl.w	$vr12, $vr12, $vr4
	vstelm.b	$vr11, $a0, -17, 0
	vstelm.b	$vr11, $a0, -11, 4
	vstelm.b	$vr11, $a0, -5, 8
	vstelm.b	$vr11, $a0, 1, 12
	vstelm.b	$vr12, $a0, 7, 0
	vstelm.b	$vr12, $a0, 13, 4
	vstelm.b	$vr12, $a0, 19, 8
	vstelm.b	$vr12, $a0, 25, 12
	vand.v	$vr11, $vr11, $vr5
	vand.v	$vr12, $vr12, $vr5
	vadd.w	$vr1, $vr11, $vr1
	vadd.w	$vr9, $vr12, $vr9
	ld.b	$a7, $a0, -18
	ld.b	$t0, $a0, -12
	ld.b	$t1, $a0, -6
	ld.b	$t2, $a0, 0
	vinsgr2vr.b	$vr11, $a7, 0
	vinsgr2vr.b	$vr11, $t0, 1
	vinsgr2vr.b	$vr11, $t1, 2
	vinsgr2vr.b	$vr11, $t2, 3
	ld.b	$a7, $a0, 6
	ld.b	$t0, $a0, 12
	ld.b	$t1, $a0, 18
	ld.b	$t2, $a0, 24
	vinsgr2vr.b	$vr12, $a7, 0
	vinsgr2vr.b	$vr12, $t0, 1
	vinsgr2vr.b	$vr12, $t1, 2
	vinsgr2vr.b	$vr12, $t2, 3
	vslt.bu	$vr11, $vr7, $vr11
	vilvl.b	$vr11, $vr11, $vr11
	vilvl.h	$vr11, $vr11, $vr11
	vand.v	$vr11, $vr11, $vr8
	vslli.w	$vr11, $vr11, 3
	vslt.bu	$vr12, $vr7, $vr12
	vilvl.b	$vr12, $vr12, $vr12
	vilvl.h	$vr12, $vr12, $vr12
	vand.v	$vr12, $vr12, $vr8
	vslli.w	$vr12, $vr12, 3
	vor.v	$vr0, $vr11, $vr0
	vor.v	$vr6, $vr12, $vr6
	addi.d	$a6, $a6, -8
	addi.d	$a0, $a0, 48
	bnez	$a6, .LBB17_35
# %bb.36:                               # %middle.block
	vadd.w	$vr2, $vr10, $vr3
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$a6, $vr2, 0
	vadd.w	$vr1, $vr9, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$t0, $vr1, 0
	vor.v	$vr0, $vr6, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	beq	$a4, $a5, .LBB17_39
.LBB17_37:                              # %scalar.ph.preheader
	addi.d	$a0, $a2, 7
	.p2align	4, , 16
.LBB17_38:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	sub.d	$a6, $a6, $a2
	add.d	$a2, $a2, $s1
	srl.w	$a2, $a2, $s1
	ld.bu	$a4, $a0, -1
	st.b	$a2, $a0, 0
	andi	$a2, $a2, 255
	add.d	$t0, $a2, $t0
	sltu	$a2, $a1, $a4
	slli.d	$a2, $a2, 3
	or	$a7, $a2, $a7
	addi.w	$s3, $s3, -1
	addi.d	$a0, $a0, 6
	bnez	$s3, .LBB17_38
.LBB17_39:                              # %Refresh.exit
	add.d	$a0, $a6, $s1
	srl.w	$a0, $a0, $s1
	add.d	$a0, $t0, $a0
	st.h	$a0, $fp, 2
	st.b	$a7, $fp, 1
.LBB17_40:                              # %._crit_edge._crit_edge
	sub.w	$a0, $fp, $a3
.LBB17_41:                              # %SpecialFreeUnit.exit
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB17_42:
	add.d	$a0, $s0, $a5
	ld.bu	$a0, $a0, 128
	slli.d	$a2, $a0, 3
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a0, $a4, $a0
	st.d	$a0, $s0, 88
	b	.LBB17_4
.LBB17_43:
	move	$a0, $zero
	addi.d	$a1, $a6, 12
	st.d	$a1, $s0, 88
	b	.LBB17_41
.Lfunc_end17:
	.size	CutOff, .Lfunc_end17-CutOff
                                        # -- End function
	.type	PPMD8_kExpEscape,@object        # @PPMD8_kExpEscape
	.section	.rodata,"a",@progbits
	.globl	PPMD8_kExpEscape
PPMD8_kExpEscape:
	.ascii	"\031\016\t\007\005\005\004\004\004\003\003\003\002\002\002\002"
	.size	PPMD8_kExpEscape, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
