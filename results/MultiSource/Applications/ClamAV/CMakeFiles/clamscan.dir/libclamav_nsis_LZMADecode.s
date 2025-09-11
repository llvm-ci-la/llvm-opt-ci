	.file	"libclamav_nsis_LZMADecode.c"
	.text
	.globl	lzmaInit                        # -- Begin function lzmaInit
	.p2align	5
	.type	lzmaInit,@function
lzmaInit:                               # @lzmaInit
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a2, $zero, 152
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 1
	vst	$vr0, $fp, 116
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 144
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	lzmaInit, .Lfunc_end0-lzmaInit
                                        # -- End function
	.globl	lzmaDecode                      # -- Begin function lzmaDecode
	.p2align	5
	.type	lzmaDecode,@function
lzmaDecode:                             # @lzmaDecode
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
	ld.w	$a3, $a0, 0
	ld.w	$a1, $a0, 4
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.w	$s2, $a0, 8
	ld.w	$a5, $a0, 12
	ld.w	$a1, $a0, 16
	ld.w	$t7, $a0, 20
	ld.d	$a6, $a0, 24
	ld.w	$a2, $a0, 32
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$t3, $a0, 36
	ld.d	$s5, $a0, 40
	ld.w	$s7, $a0, 48
	ld.w	$t4, $a0, 52
	ld.bu	$fp, $a0, 56
	ld.w	$a2, $a0, 58
	ld.h	$a4, $a0, 62
	ld.w	$a7, $a0, 112
	ld.bu	$t6, $a0, 57
	st.w	$a2, $sp, 224
	addi.w	$a2, $zero, -1
	st.h	$a4, $sp, 228
	beq	$a7, $a2, .LBB1_139
# %bb.1:                                # %.preheader.preheader
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	ld.d	$t2, $a0, 160
	ld.d	$t5, $a0, 152
	ld.w	$s3, $a0, 148
	ld.w	$s4, $a0, 144
	ld.w	$s6, $a0, 140
	ld.w	$a2, $a0, 136
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 132
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 128
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 124
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 120
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.w	$t0, $a0, 116
	ld.w	$a2, $a0, 108
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.w	$t8, $a0, 104
	ld.w	$ra, $a0, 100
	ld.w	$a2, $a0, 96
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.w	$s0, $a0, 92
	ld.w	$a2, $a0, 88
	ld.w	$a4, $a0, 84
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a4, $a0, 80
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s1, $a0, 72
	ld.d	$s8, $a0, 64
	addi.d	$a4, $a0, 58
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
.LBB1_2:                                # %.preheader.outer.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_4 Depth 3
                                        #         Child Loop BB1_5 Depth 4
                                        #           Child Loop BB1_33 Depth 5
                                        #         Child Loop BB1_66 Depth 4
                                        #       Child Loop BB1_115 Depth 3
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
.LBB1_3:                                # %.preheader.outer.outer
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
                                        #         Child Loop BB1_5 Depth 4
                                        #           Child Loop BB1_33 Depth 5
                                        #         Child Loop BB1_66 Depth 4
                                        #       Child Loop BB1_115 Depth 3
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
.LBB1_4:                                # %.preheader.outer501.outer
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_5 Depth 4
                                        #           Child Loop BB1_33 Depth 5
                                        #         Child Loop BB1_66 Depth 4
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a4, $t2, 2047
	addi.d	$a5, $a4, 1645
	ori	$a6, $zero, 8
	sub.d	$a6, $a6, $ra
	ori	$a7, $zero, 28
	bltu	$a7, $a3, .LBB1_149
.LBB1_5:                                # %.preheader.outer501
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_4 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_33 Depth 5
	slli.d	$a7, $a3, 2
	pcalau12i	$t0, %pc_hi20(.LJTI1_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI1_0)
	ldx.w	$a7, $t0, $a7
	add.d	$a7, $t0, $a7
	jr	$a7
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=4
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	bnez	$a3, .LBB1_60
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=4
	ori	$a3, $zero, 4
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	bge	$t8, $a3, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=4
	move	$t8, $zero
	b	.LBB1_12
.LBB1_9:                                #   in Loop: Header=BB1_5 Depth=4
	ori	$a3, $zero, 9
	bltu	$a3, $t8, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=4
	addi.w	$t8, $t8, -3
	b	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=4
	addi.w	$t8, $t8, -6
.LBB1_12:                               #   in Loop: Header=BB1_5 Depth=4
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	and	$a3, $a3, $t4
	sll.w	$a3, $a3, $ra
	srl.w	$a7, $fp, $a6
	add.d	$a3, $a3, $a7
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a3, $a3, 9
	add.d	$s8, $a5, $a3
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	beqz	$a3, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_5 Depth=4
	sub.d	$a2, $s6, $t0
	addi.w	$a3, $a2, 0
	addi.w	$a7, $t7, 0
	sltu	$a3, $a3, $a7
	masknez	$a3, $t7, $a3
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$t6, $t5, $a2
	ori	$s0, $zero, 1
	b	.LBB1_21
.LBB1_14:                               #   in Loop: Header=BB1_5 Depth=4
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB1_15:                               #   in Loop: Header=BB1_5 Depth=4
	addi.w	$a3, $s0, 0
	slli.d	$a7, $a3, 1
	ldx.hu	$a7, $s8, $a7
	alsl.d	$s1, $a3, $s8, 1
	bstrpick.d	$a3, $s4, 31, 11
	mul.d	$a3, $a3, $a7
	addi.w	$t0, $a3, 0
	slli.d	$s0, $s0, 1
	bgeu	$s3, $t0, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_5 Depth=4
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $a7
	bstrpick.d	$t0, $t0, 31, 5
	add.d	$a7, $a7, $t0
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s4, $a3
	beqz	$t0, .LBB1_18
	b	.LBB1_20
.LBB1_17:                               #   in Loop: Header=BB1_5 Depth=4
	sub.w	$s3, $s3, $a3
	sub.w	$a3, $s4, $a3
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	ori	$s0, $s0, 1
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s4, $a3
	bnez	$t0, .LBB1_20
.LBB1_18:                               # %.loopexit541
                                        #   in Loop: Header=BB1_5 Depth=4
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_147
# %bb.19:                               #   in Loop: Header=BB1_5 Depth=4
	slli.d	$s4, $s4, 8
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $t0, 0
	slli.w	$a7, $s3, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s3, $a7, $a3
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
.LBB1_20:                               #   in Loop: Header=BB1_5 Depth=4
	addi.w	$a3, $s0, 0
	ori	$a7, $zero, 256
	blt	$a3, $a7, .LBB1_15
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_21:                               #   in Loop: Header=BB1_5 Depth=4
	bstrpick.d	$a2, $t6, 7, 7
	slli.d	$a3, $a2, 9
	add.d	$a3, $s8, $a3
	addi.w	$a7, $s0, 0
	alsl.d	$a3, $a7, $a3, 1
	ld.hu	$a7, $a3, 512
	slli.d	$t6, $t6, 1
	addi.d	$s1, $a3, 512
	bstrpick.d	$a3, $s4, 31, 11
	mul.d	$a3, $a3, $a7
	addi.w	$t0, $a3, 0
	slli.d	$s0, $s0, 1
	bgeu	$s3, $t0, .LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_5 Depth=4
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $a7
	bstrpick.d	$t0, $t0, 31, 5
	add.d	$a7, $a7, $t0
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s4, $a3
	beqz	$t0, .LBB1_25
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_5 Depth=4
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $t0, 0
	addi.w	$a7, $a2, 0
	bne	$a7, $a3, .LBB1_33
	b	.LBB1_27
.LBB1_24:                               #   in Loop: Header=BB1_5 Depth=4
	sub.w	$s3, $s3, $a3
	sub.w	$a3, $s4, $a3
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	ori	$s0, $s0, 1
	ori	$t0, $zero, 1
	st.d	$t0, $sp, 200                   # 8-byte Folded Spill
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s4, $a3
	bnez	$t0, .LBB1_23
.LBB1_25:                               # %.loopexit539
                                        #   in Loop: Header=BB1_5 Depth=4
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_148
# %bb.26:                               #   in Loop: Header=BB1_5 Depth=4
	slli.d	$s4, $s4, 8
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $t0, 0
	slli.w	$a7, $s3, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s3, $a7, $a3
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $t0, 0
	addi.w	$a7, $a2, 0
	bne	$a7, $a3, .LBB1_33
.LBB1_27:                               #   in Loop: Header=BB1_5 Depth=4
	addi.w	$a3, $s0, 0
	ori	$a7, $zero, 256
	move	$a2, $t0
	blt	$a3, $a7, .LBB1_21
.LBB1_28:                               # %.loopexit492
                                        #   in Loop: Header=BB1_5 Depth=4
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
.LBB1_29:                               #   in Loop: Header=BB1_5 Depth=4
	andi	$fp, $s0, 255
.LBB1_30:                               # %.loopexit542
                                        #   in Loop: Header=BB1_5 Depth=4
	beqz	$s7, .LBB1_140
# %bb.31:                               #   in Loop: Header=BB1_5 Depth=4
	addi.w	$t4, $t4, 1
	st.b	$fp, $s5, 0
	addi.d	$s5, $s5, 1
	addi.w	$s7, $s7, -1
	bstrpick.d	$a3, $s6, 31, 0
	stx.b	$fp, $t5, $a3
	addi.w	$a3, $s6, 1
	addi.w	$a7, $t7, 0
	mod.wu	$s6, $a3, $a7
	ori	$a3, $zero, 2
	ori	$a7, $zero, 28
	bgeu	$a7, $a3, .LBB1_5
	b	.LBB1_149
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=5
	sub.w	$s4, $s4, $t0
	sub.w	$s3, $s3, $t0
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	ori	$s0, $s0, 1
	alsl.d	$s1, $a3, $s8, 1
	bstrpick.d	$a3, $s4, 31, 24
	st.h	$a7, $s1, 0
	beqz	$a3, .LBB1_36
.LBB1_33:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_4 Depth=3
                                        #         Parent Loop BB1_5 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	addi.w	$a3, $s0, 0
	ori	$a7, $zero, 255
	blt	$a7, $a3, .LBB1_28
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=5
	slli.d	$a7, $a3, 1
	ldx.hu	$a7, $s8, $a7
	bstrpick.d	$t0, $s4, 31, 11
	mul.d	$t0, $t0, $a7
	addi.w	$t1, $t0, 0
	slli.d	$s0, $s0, 1
	bgeu	$s3, $t1, .LBB1_32
# %bb.35:                               #   in Loop: Header=BB1_33 Depth=5
	ori	$t1, $zero, 2048
	sub.d	$t1, $t1, $a7
	bstrpick.d	$t1, $t1, 31, 5
	add.d	$a7, $a7, $t1
	move	$s4, $t0
	alsl.d	$s1, $a3, $s8, 1
	bstrpick.d	$a3, $s4, 31, 24
	st.h	$a7, $s1, 0
	bnez	$a3, .LBB1_33
.LBB1_36:                               # %.loopexit493
                                        #   in Loop: Header=BB1_5 Depth=4
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_141
# %bb.37:                               #   in Loop: Header=BB1_5 Depth=4
	slli.d	$s4, $s4, 8
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $t0, 0
	slli.w	$a7, $s3, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s3, $a7, $a3
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	b	.LBB1_33
.LBB1_38:                               # %.loopexit1895
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB1_61
# %bb.39:                               #   in Loop: Header=BB1_4 Depth=3
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 408
	ori	$a3, $zero, 8
	b	.LBB1_75
.LBB1_40:                               # %.loopexit2326
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.w	$a3, $s0, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	move	$a3, $s2
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_4
.LBB1_41:                               # %.loopexit538.loopexit
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_80
.LBB1_42:                               # %.loopexit544.loopexit
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_87
.LBB1_43:                               # %.loopexit537.loopexit
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_93
.LBB1_44:                               # %.loopexit1946
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	sltui	$a3, $a3, 1
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	masknez	$a5, $t0, $a3
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a6, $a7, $a3
	masknez	$a7, $a7, $a3
	or	$a5, $a6, $a5
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a7
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_82
.LBB1_45:                               # %.loopexit536.loopexit
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	b	.LBB1_90
.LBB1_46:                               # %.loopexit1825
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	beqz	$a3, .LBB1_158
# %bb.47:                               #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a2, $a6, 0
	ori	$a3, $zero, 225
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB1_149
# %bb.48:                               #   in Loop: Header=BB1_4 Depth=3
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	andi	$a3, $a2, 255
	ori	$a4, $zero, 109
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 8
	sub.d	$a4, $a2, $a3
	bstrpick.d	$a4, $a4, 7, 1
	add.d	$a3, $a4, $a3
	srli.d	$a5, $a3, 5
	alsl.d	$a3, $a5, $a5, 2
	alsl.d	$a3, $a3, $a3, 3
	sub.d	$a2, $a2, $a3
	andi	$a3, $a2, 255
	ori	$a4, $zero, 57
	mul.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 9
	alsl.d	$a3, $a4, $a4, 3
	sub.d	$a2, $a2, $a3
	andi	$ra, $a2, 255
	add.d	$a3, $ra, $a5
	ori	$a2, $zero, 1536
	sll.w	$a2, $a2, $a3
	addi.d	$a2, $a2, 2047
	addi.w	$a2, $a2, 1645
	addi.w	$s2, $zero, -1
	bne	$a2, $a1, .LBB1_62
# %bb.49:                               #   in Loop: Header=BB1_4 Depth=3
	move	$a7, $a1
	b	.LBB1_65
.LBB1_50:                               # %.loopexit1912
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_74
# %bb.51:                               #   in Loop: Header=BB1_4 Depth=3
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 432
	ori	$a3, $zero, 10
	b	.LBB1_75
.LBB1_52:                               #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_77
# %bb.53:                               #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_82
.LBB1_54:                               # %.loopexit1929
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_81
# %bb.55:                               #   in Loop: Header=BB1_4 Depth=3
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 456
	ori	$a3, $zero, 11
	b	.LBB1_75
.LBB1_56:                               # %.loopexit2211
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_132
# %bb.57:                               #   in Loop: Header=BB1_4 Depth=3
	addi.d	$s1, $s8, 2
	ori	$a3, $zero, 19
	b	.LBB1_75
.LBB1_58:                               # %.loopexit4584
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	bnez	$s7, .LBB1_79
	b	.LBB1_157
.LBB1_59:                               # %.loopexit2195
                                        #   in Loop: Header=BB1_4 Depth=3
	ori	$a3, $zero, 18
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	move	$s1, $s8
	b	.LBB1_76
.LBB1_60:                               #   in Loop: Header=BB1_4 Depth=3
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 384
	ori	$a3, $zero, 7
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	b	.LBB1_76
.LBB1_61:                               #   in Loop: Header=BB1_4 Depth=3
	slti	$a3, $t8, 7
	ori	$a4, $zero, 10
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 7
	maskeqz	$a3, $a5, $a3
	or	$t8, $a3, $a4
	addi.d	$s1, $t2, 1636
	ori	$a3, $zero, 18
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ori	$s2, $zero, 22
	move	$s8, $s1
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	move	$a5, $t0
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	b	.LBB1_83
.LBB1_62:                               #   in Loop: Header=BB1_4 Depth=3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	st.d	$t7, $sp, 152                   # 8-byte Folded Spill
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 200                   # 8-byte Folded Spill
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	beqz	$t2, .LBB1_64
# %bb.63:                               #   in Loop: Header=BB1_4 Depth=3
	move	$a0, $t2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
.LBB1_64:                               #   in Loop: Header=BB1_4 Depth=3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	move	$t2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	beqz	$t2, .LBB1_146
.LBB1_65:                               # %vector.ph
                                        #   in Loop: Header=BB1_4 Depth=3
	move	$a1, $zero
	sll.w	$a2, $s2, $a5
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	sll.w	$a2, $s2, $a4
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ori	$a2, $zero, 768
	sll.w	$a2, $a2, $a3
	ori	$a3, $zero, 3676
	alsl.d	$a2, $a2, $a3, 1
	add.d	$a3, $t2, $a2
	.p2align	4, , 16
.LBB1_66:                               # %vector.body
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ori	$a4, $zero, 1024
	vreplgr2vr.h	$vr0, $a4
	vstx	$vr0, $a3, $a1
	addi.d	$a1, $a1, -16
	add.d	$a4, $a2, $a1
	addi.w	$a5, $zero, -4
	bne	$a4, $a5, .LBB1_66
# %bb.67:                               # %scalar.ph
                                        #   in Loop: Header=BB1_4 Depth=3
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	move	$a2, $zero
	lu12i.w	$a1, 16384
	ori	$a1, $a1, 1024
	st.w	$a1, $t2, 8
	bstrins.d	$a1, $a1, 58, 32
	st.d	$a1, $t2, 0
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	ori	$a1, $zero, 4
	addi.w	$a5, $a5, -1
	blt	$a2, $a1, .LBB1_89
.LBB1_68:                               #   in Loop: Header=BB1_4 Depth=3
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a1, $t7, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	beq	$a2, $a1, .LBB1_72
# %bb.69:                               #   in Loop: Header=BB1_4 Depth=3
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$t5, .LBB1_71
# %bb.70:                               #   in Loop: Header=BB1_4 Depth=3
	move	$a0, $t5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_71:                               #   in Loop: Header=BB1_4 Depth=3
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	bstrpick.d	$a0, $s2, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$t5, $a0
	move	$t7, $s2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	beqz	$t5, .LBB1_149
.LBB1_72:                               #   in Loop: Header=BB1_4 Depth=3
	addi.d	$a1, $t7, -1
	bstrpick.d	$a1, $a1, 31, 0
	stx.b	$zero, $t5, $a1
	ori	$a2, $zero, 5
	addi.w	$a1, $a2, 0
	addi.d	$a2, $a2, -1
	bnez	$a1, .LBB1_92
.LBB1_73:                               #   in Loop: Header=BB1_4 Depth=3
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	move	$a1, $a7
	b	.LBB1_80
.LBB1_74:                               #   in Loop: Header=BB1_4 Depth=3
	slli.w	$a3, $t8, 4
	alsl.d	$a3, $a3, $t2, 1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 0
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$s1, $a3, 480
	ori	$a3, $zero, 9
.LBB1_75:                               # %.loopexit543.loopexit
                                        #   in Loop: Header=BB1_4 Depth=3
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
.LBB1_76:                               # %.loopexit543.loopexit
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_83
.LBB1_77:                               #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	beqz	$t4, .LBB1_149
# %bb.78:                               #   in Loop: Header=BB1_4 Depth=3
	slti	$a3, $t8, 7
	ori	$a4, $zero, 11
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 9
	maskeqz	$a3, $a5, $a3
	or	$t8, $a3, $a4
	beqz	$s7, .LBB1_157
.LBB1_79:                               # %.preheader.peel.next
                                        #   in Loop: Header=BB1_4 Depth=3
	sub.d	$a3, $s6, $t0
	addi.w	$a4, $a3, 0
	addi.w	$a5, $t7, 0
	sltu	$a4, $a4, $a5
	masknez	$a4, $t7, $a4
	add.d	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$fp, $t5, $a3
	bstrpick.d	$a3, $s6, 31, 0
	stx.b	$fp, $t5, $a3
	st.b	$fp, $s5, 0
	addi.w	$a3, $s6, 1
	mod.wu	$s6, $a3, $a5
	addi.w	$t4, $t4, 1
	addi.d	$s5, $s5, 1
	addi.w	$s7, $s7, -1
.LBB1_80:                               # %.loopexit538
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a4, $a3, $t4
	slli.w	$a3, $t8, 4
	alsl.d	$a3, $a3, $t2, 1
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a4, $a4, 0
	alsl.d	$s1, $a4, $a3, 1
	ori	$a3, $zero, 6
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_83
.LBB1_81:                               #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
.LBB1_82:                               # %.loopexit545
                                        #   in Loop: Header=BB1_4 Depth=3
	addi.d	$s1, $a4, 617
	ori	$a4, $zero, 18
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ori	$s2, $zero, 21
	move	$s8, $s1
	move	$t0, $a3
	move	$a4, $a6
	.p2align	4, , 16
.LBB1_83:                               # %.loopexit543
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.hu	$a3, $s1, 0
	bstrpick.d	$a6, $s4, 31, 11
	mul.d	$a7, $a6, $a3
	addi.w	$a6, $a7, 0
	bgeu	$s3, $a6, .LBB1_85
# %bb.84:                               #   in Loop: Header=BB1_4 Depth=3
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ori	$a6, $zero, 2048
	sub.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 5
	add.d	$a3, $a3, $a6
	b	.LBB1_86
.LBB1_85:                               #   in Loop: Header=BB1_4 Depth=3
	sub.w	$s3, $s3, $a7
	sub.w	$a7, $s4, $a7
	srli.d	$a6, $a3, 5
	sub.d	$a3, $a3, $a6
	ori	$a6, $zero, 1
	st.d	$a6, $sp, 200                   # 8-byte Folded Spill
.LBB1_86:                               #   in Loop: Header=BB1_4 Depth=3
	bstrpick.d	$a6, $a7, 31, 24
	st.h	$a3, $s1, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	move	$s4, $a7
	bnez	$a6, .LBB1_4
.LBB1_87:                               # %.loopexit544
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_151
# %bb.88:                               #   in Loop: Header=BB1_4 Depth=3
	slli.d	$s4, $s4, 8
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $a7, 0
	slli.w	$a6, $s3, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a7, $a7, 1
	or	$s3, $a6, $a3
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	b	.LBB1_4
.LBB1_89:                               #   in Loop: Header=BB1_4 Depth=3
	move	$a1, $a7
.LBB1_90:                               # %.loopexit536
                                        #   in Loop: Header=BB1_4 Depth=3
	beqz	$a5, .LBB1_155
# %bb.91:                               #   in Loop: Header=BB1_4 Depth=3
	ld.bu	$a3, $a6, 0
	slli.d	$a4, $a2, 3
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	sll.w	$a3, $a3, $a4
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	or	$a4, $a3, $a4
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a2, $a2, 1
	move	$a7, $a1
	addi.d	$a6, $a6, 1
	ori	$a1, $zero, 4
	addi.w	$a5, $a5, -1
	bge	$a2, $a1, .LBB1_68
	b	.LBB1_89
.LBB1_92:                               #   in Loop: Header=BB1_4 Depth=3
	move	$a1, $a7
.LBB1_93:                               # %.loopexit537
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	beqz	$a5, .LBB1_152
# %bb.94:                               #   in Loop: Header=BB1_4 Depth=3
	ld.bu	$a3, $a6, 0
	slli.w	$a4, $s3, 8
	addi.w	$a5, $a5, -1
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	or	$s3, $a4, $a3
	move	$a7, $a1
	addi.w	$a1, $a2, 0
	addi.d	$a2, $a2, -1
	bnez	$a1, .LBB1_92
	b	.LBB1_73
.LBB1_95:                               # %.loopexit2026
                                        #   in Loop: Header=BB1_3 Depth=2
	addi.w	$a5, $s0, 0
	ori	$a4, $zero, 4
	blt	$a5, $a4, .LBB1_102
# %bb.96:                               #   in Loop: Header=BB1_3 Depth=2
	bstrpick.d	$a2, $s0, 31, 1
	addi.d	$a4, $a2, -1
	ori	$a6, $zero, 1
	bstrins.d	$s0, $a6, 63, 1
	ori	$a7, $zero, 13
	sll.w	$t0, $s0, $a4
	move	$s0, $zero
	bltu	$a7, $a5, .LBB1_103
# %bb.97:                               #   in Loop: Header=BB1_3 Depth=2
	move	$a2, $zero
	bstrpick.d	$a7, $t0, 31, 0
	alsl.d	$a7, $a7, $t2, 1
	slli.d	$a5, $a5, 1
	sub.d	$a5, $a7, $a5
	addi.d	$s8, $a5, 1374
	addi.w	$a5, $a4, 0
	bge	$a2, $a5, .LBB1_110
	b	.LBB1_118
.LBB1_98:                               # %.loopexit1962
                                        #   in Loop: Header=BB1_3 Depth=2
	slti	$a4, $t8, 7
	ori	$a5, $zero, 11
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 8
	maskeqz	$a4, $a6, $a4
	or	$t8, $a4, $a5
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_112
.LBB1_99:                               # %.preheader494.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_115
.LBB1_100:                              # %.loopexit497.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_106
.LBB1_101:                              # %.loopexit498.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	b	.LBB1_121
.LBB1_102:                              #   in Loop: Header=BB1_3 Depth=2
	move	$a5, $s0
	b	.LBB1_111
.LBB1_103:                              #   in Loop: Header=BB1_3 Depth=2
	addi.w	$a2, $a2, -5
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
.LBB1_104:                              #   in Loop: Header=BB1_3 Depth=2
	blez	$a2, .LBB1_109
# %bb.105:                              #   in Loop: Header=BB1_3 Depth=2
	bstrpick.d	$a4, $s4, 31, 1
	slli.d	$a5, $s0, 1
	sltu	$a6, $s3, $a4
	xori	$a6, $a6, 1
	or	$s0, $a5, $a6
	maskeqz	$a6, $a4, $a6
	bstrpick.d	$a5, $s4, 31, 25
	sub.w	$s3, $s3, $a6
	move	$s4, $a4
	bnez	$a5, .LBB1_108
.LBB1_106:                              # %.loopexit497
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_156
# %bb.107:                              #   in Loop: Header=BB1_3 Depth=2
	slli.d	$a4, $s4, 8
	ld.bu	$a5, $a7, 0
	slli.w	$a6, $s3, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a7, $a7, 1
	or	$s3, $a6, $a5
.LBB1_108:                              #   in Loop: Header=BB1_3 Depth=2
	addi.w	$a2, $a2, -1
	move	$s4, $a4
	b	.LBB1_104
.LBB1_109:                              #   in Loop: Header=BB1_3 Depth=2
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	move	$a2, $zero
	alsl.w	$t0, $s0, $t0, 4
	addi.d	$s8, $t2, 1604
	ori	$a6, $zero, 1
	ori	$a4, $zero, 4
	move	$s0, $zero
	addi.w	$a5, $a4, 0
	blt	$a2, $a5, .LBB1_118
.LBB1_110:                              #   in Loop: Header=BB1_3 Depth=2
	add.d	$a5, $t0, $s0
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
.LBB1_111:                              #   in Loop: Header=BB1_3 Depth=2
	addi.w	$t0, $a5, 1
.LBB1_112:                              #   in Loop: Header=BB1_3 Depth=2
	beqz	$t0, .LBB1_154
# %bb.113:                              #   in Loop: Header=BB1_3 Depth=2
	bltu	$t4, $t0, .LBB1_149
# %bb.114:                              #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a7, $a7, 2
	add.w	$t4, $t4, $a7
	.p2align	4, , 16
.LBB1_115:                              #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a4, $a7
	beqz	$s7, .LBB1_142
# %bb.116:                              #   in Loop: Header=BB1_115 Depth=3
	sub.d	$a3, $s6, $t0
	addi.w	$a5, $a3, 0
	addi.w	$a6, $t7, 0
	sltu	$a5, $a5, $a6
	masknez	$a5, $t7, $a5
	add.d	$a3, $a5, $a3
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$fp, $t5, $a3
	bstrpick.d	$a3, $s6, 31, 0
	stx.b	$fp, $t5, $a3
	addi.w	$a3, $s6, 1
	mod.wu	$s6, $a3, $a6
	st.b	$fp, $s5, 0
	addi.d	$s5, $s5, 1
	addi.w	$s7, $s7, -1
	ori	$a3, $zero, 1
	addi.w	$a7, $a4, -1
	blt	$a3, $a4, .LBB1_115
# %bb.117:                              #   in Loop: Header=BB1_3 Depth=2
	ori	$a3, $zero, 2
	b	.LBB1_3
.LBB1_118:                              #   in Loop: Header=BB1_3 Depth=2
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a5, $a6, 1
	ldx.hu	$a7, $s8, $a5
	bstrpick.d	$a5, $s4, 31, 11
	mul.d	$a5, $a5, $a7
	addi.w	$t0, $a5, 0
	alsl.d	$s1, $a6, $s8, 1
	bgeu	$s3, $t0, .LBB1_120
# %bb.119:                              #   in Loop: Header=BB1_3 Depth=2
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $a7
	bstrpick.d	$t0, $t0, 31, 5
	add.d	$a7, $a7, $t0
	slli.w	$t0, $a6, 1
	bstrpick.d	$a6, $a5, 31, 24
	st.h	$a7, $s1, 0
	move	$s4, $a5
	bnez	$a6, .LBB1_123
	b	.LBB1_121
.LBB1_120:                              #   in Loop: Header=BB1_3 Depth=2
	ori	$t0, $zero, 1
	sll.w	$t0, $t0, $a2
	or	$s0, $t0, $s0
	sub.w	$s3, $s3, $a5
	sub.w	$a5, $s4, $a5
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	slli.d	$a6, $a6, 1
	addi.w	$t0, $a6, 1
	bstrpick.d	$a6, $a5, 31, 24
	st.h	$a7, $s1, 0
	move	$s4, $a5
	bnez	$a6, .LBB1_123
.LBB1_121:                              # %.loopexit498
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_153
# %bb.122:                              #   in Loop: Header=BB1_3 Depth=2
	slli.d	$a5, $s4, 8
	move	$t0, $a6
	ld.bu	$a6, $a6, 0
	slli.w	$a7, $s3, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s3, $a7, $a6
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
.LBB1_123:                              #   in Loop: Header=BB1_3 Depth=2
	addi.w	$a2, $a2, 1
	move	$a6, $t0
	move	$s4, $a5
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a5, $a4, 0
	blt	$a2, $a5, .LBB1_118
	b	.LBB1_110
.LBB1_124:                              # %.loopexit1996
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	slti	$a2, $a7, 3
	ori	$a3, $zero, 3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $a3
	slli.w	$a2, $a2, 6
	alsl.d	$a2, $a2, $t2, 1
	addi.d	$s8, $a2, 864
	ori	$a2, $zero, 25
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 6
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a2, $zero, 6
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_128
.LBB1_125:                              # %.loopexit2229
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	beqz	$a2, .LBB1_130
# %bb.126:                              #   in Loop: Header=BB1_2 Depth=1
	addi.d	$s8, $s8, 516
	ori	$a2, $zero, 20
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 8
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a7, $zero, 16
	ori	$a2, $zero, 8
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_128
.LBB1_127:                              # %.loopexit499.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
.LBB1_128:                              #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	sll.w	$a3, $a3, $a4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.w	$s0, $a4, $a3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB1_2
.LBB1_129:                              # %.loopexit500.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_136
.LBB1_130:                              #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.w	$a2, $a2, 3
	alsl.d	$a2, $a2, $s8, 1
	addi.d	$s8, $a2, 260
	ori	$a2, $zero, 20
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 3
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a7, $zero, 8
.LBB1_131:                              # %.loopexit499
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a2, $zero, 3
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_128
.LBB1_132:                              #   in Loop: Header=BB1_2 Depth=1
	move	$a7, $zero
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.w	$a2, $a2, 3
	alsl.d	$a2, $a2, $s8, 1
	addi.d	$s8, $a2, 4
	ori	$a2, $zero, 20
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 3
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	b	.LBB1_131
	.p2align	4, , 16
.LBB1_133:                              #   in Loop: Header=BB1_2 Depth=1
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a3, $t1, 1
	ldx.hu	$a4, $s8, $a3
	alsl.d	$s1, $t1, $s8, 1
	bstrpick.d	$a3, $s4, 31, 11
	mul.d	$a3, $a3, $a4
	addi.w	$a5, $a3, 0
	slli.w	$t1, $t1, 1
	bgeu	$s3, $a5, .LBB1_135
# %bb.134:                              #   in Loop: Header=BB1_2 Depth=1
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	ori	$a5, $zero, 2048
	sub.d	$a5, $a5, $a4
	bstrpick.d	$a5, $a5, 31, 5
	add.d	$a5, $a4, $a5
	bstrpick.d	$a4, $a3, 31, 24
	st.h	$a5, $s1, 0
	move	$s4, $a3
	bnez	$a4, .LBB1_138
	b	.LBB1_136
.LBB1_135:                              #   in Loop: Header=BB1_2 Depth=1
	sub.w	$s3, $s3, $a3
	sub.w	$a3, $s4, $a3
	srli.d	$a5, $a4, 5
	sub.d	$a5, $a4, $a5
	ori	$t1, $t1, 1
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a3, 31, 24
	st.h	$a5, $s1, 0
	move	$s4, $a3
	bnez	$a4, .LBB1_138
.LBB1_136:                              # %.loopexit500
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_150
# %bb.137:                              #   in Loop: Header=BB1_2 Depth=1
	slli.d	$a3, $s4, 8
	ld.bu	$a4, $a6, 0
	slli.w	$a5, $s3, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	or	$s3, $a5, $a4
.LBB1_138:                              #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a2, $a2, -1
	move	$s4, $a3
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_128
.LBB1_139:
	ori	$s2, $zero, 1
	b	.LBB1_146
.LBB1_140:
	move	$a6, $s2
	move	$s7, $zero
	ori	$a3, $zero, 26
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_144
.LBB1_141:
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 14
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_145
.LBB1_142:
	move	$a6, $s2
	move	$s7, $zero
	ori	$a3, $zero, 28
.LBB1_143:                              # %.loopexit495
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
.LBB1_144:                              # %.loopexit495
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
.LBB1_145:                              # %.loopexit495
	ld.w	$a4, $sp, 224
	ld.h	$a5, $sp, 228
	move	$s2, $zero
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	st.w	$a4, $a7, 0
	st.h	$a5, $a7, 4
	st.w	$a3, $a0, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.w	$a3, $a0, 4
	st.w	$a6, $a0, 8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a3, $a0, 12
	st.w	$a1, $a0, 16
	st.w	$t7, $a0, 20
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $a0, 24
	st.w	$t1, $a0, 32
	st.w	$t3, $a0, 36
	st.d	$s5, $a0, 40
	st.w	$s7, $a0, 48
	st.w	$t4, $a0, 52
	st.b	$fp, $a0, 56
	st.b	$t6, $a0, 57
	st.d	$s8, $a0, 64
	st.d	$s1, $a0, 72
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a1, $a0, 80
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a1, $a0, 84
	st.w	$a2, $a0, 88
	st.w	$s0, $a0, 92
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.w	$a1, $a0, 96
	st.w	$ra, $a0, 100
	st.w	$t8, $a0, 104
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.w	$a1, $a0, 108
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a0, 112
	st.w	$t0, $a0, 116
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $a0, 120
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.w	$a1, $a0, 124
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a0, 128
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a1, $a0, 132
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.w	$a1, $a0, 136
	st.w	$s6, $a0, 140
	st.w	$s4, $a0, 144
	st.w	$s3, $a0, 148
	st.d	$t5, $a0, 152
	st.d	$t2, $a0, 160
.LBB1_146:                              # %.loopexit470
	move	$a0, $s2
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
.LBB1_147:
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 15
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_145
.LBB1_148:
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 13
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_145
.LBB1_149:                              # %.loopexit470.loopexit
	addi.w	$s2, $zero, -1
	b	.LBB1_146
.LBB1_150:
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 24
	b	.LBB1_145
.LBB1_151:
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 5
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	b	.LBB1_145
.LBB1_152:
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 3
	b	.LBB1_145
.LBB1_153:
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 16
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_145
.LBB1_154:
	move	$a6, $s2
	move	$t0, $zero
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_143
.LBB1_155:
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 1
	b	.LBB1_145
.LBB1_156:
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$t1, $zero
	ori	$a3, $zero, 12
	b	.LBB1_145
.LBB1_157:
	move	$a6, $s2
	move	$s7, $zero
	ori	$a3, $zero, 27
	b	.LBB1_144
.LBB1_158:
	move	$a6, $s2
	move	$t1, $zero
	move	$a3, $zero
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_145
.Lfunc_end1:
	.size	lzmaDecode, .Lfunc_end1-lzmaDecode
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_46-.LJTI1_0
	.word	.LBB1_45-.LJTI1_0
	.word	.LBB1_41-.LJTI1_0
	.word	.LBB1_43-.LJTI1_0
	.word	.LBB1_76-.LJTI1_0
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_50-.LJTI1_0
	.word	.LBB1_52-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
	.word	.LBB1_100-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
	.word	.LBB1_101-.LJTI1_0
	.word	.LBB1_59-.LJTI1_0
	.word	.LBB1_56-.LJTI1_0
	.word	.LBB1_125-.LJTI1_0
	.word	.LBB1_40-.LJTI1_0
	.word	.LBB1_98-.LJTI1_0
	.word	.LBB1_124-.LJTI1_0
	.word	.LBB1_127-.LJTI1_0
	.word	.LBB1_129-.LJTI1_0
	.word	.LBB1_95-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_58-.LJTI1_0
	.word	.LBB1_99-.LJTI1_0
                                        # -- End function
	.text
	.globl	lzmaShutdown                    # -- Begin function lzmaShutdown
	.p2align	5
	.type	lzmaShutdown,@function
lzmaShutdown:                           # @lzmaShutdown
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 152
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	ld.d	$s0, $fp, 152
	beqz	$a0, .LBB2_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_2:
	addi.d	$s1, $fp, 152
	beqz	$s0, .LBB2_4
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_4:
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 152
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 0
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end2:
	.size	lzmaShutdown, .Lfunc_end2-lzmaShutdown
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
