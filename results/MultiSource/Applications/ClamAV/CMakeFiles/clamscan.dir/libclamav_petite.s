	.file	"libclamav_petite.c"
	.text
	.globl	petite_inflate2x_1to9           # -- Begin function petite_inflate2x_1to9
	.p2align	5
	.type	petite_inflate2x_1to9,@function
petite_inflate2x_1to9:                  # @petite_inflate2x_1to9
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 400
	move	$s4, $a2
	move	$s1, $a0
	bstrpick.d	$t0, $a1, 31, 0
	ori	$a0, $zero, 2
	sub.d	$t2, $s1, $t0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	bne	$t1, $a0, .LBB0_2
# %bb.1:
	ori	$t3, $zero, 53
	ori	$t4, $zero, 853
	ori	$a0, $zero, 440
	b	.LBB0_4
.LBB0_2:
	ori	$a0, $zero, 1
	bne	$t1, $a0, .LBB0_5
# %bb.3:
	ori	$t3, $zero, 52
	ori	$t4, $zero, 803
	ori	$a0, $zero, 376
.LBB0_4:                                # %.sink.split
	addi.d	$a1, $a4, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 2
	ldx.wu	$a1, $a3, $a1
	add.d	$a1, $t2, $a1
	add.d	$s7, $a1, $a0
	ori	$a1, $zero, 4
	ori	$a0, $zero, 1
	bgeu	$s4, $a1, .LBB0_6
	b	.LBB0_209
.LBB0_5:
	move	$s7, $zero
	ori	$t3, $zero, 53
	ori	$t4, $zero, 853
	ori	$a1, $zero, 4
	ori	$a0, $zero, 1
	bltu	$s4, $a1, .LBB0_209
.LBB0_6:
	bltu	$s7, $s1, .LBB0_209
# %bb.7:                                # %.lr.ph1278
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$t2, $sp, 280                   # 8-byte Folded Spill
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 31, 0
	add.d	$s2, $s1, $a0
	nor	$a1, $t0, $zero
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$s3, $s2, -1
	sub.d	$a0, $zero, $t4
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$t4, $sp, 184                   # 8-byte Folded Spill
	add.d	$a0, $t3, $t4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $t3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 31, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$zero, $sp, 304                 # 8-byte Folded Spill
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$fp, $zero
	move	$t8, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s5, $zero
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3999
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a0, 411116
	ori	$a0, $a0, 51
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 112817
	ori	$a0, $a0, 2187
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 476906
	ori	$a0, $a0, 1321
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -403866
	ori	$a0, $a0, 426
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -456439
	ori	$a0, $a0, 144
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	addi.d	$a0, $s7, 4
	bltu	$s2, $a0, .LBB0_141
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	ld.w	$s8, $s7, 0
	beqz	$s8, .LBB0_143
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	bltz	$s8, .LBB0_97
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	ori	$a0, $zero, 8
	bltu	$s4, $a0, .LBB0_139
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $s7, 12
	bltu	$s2, $a0, .LBB0_139
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	ori	$a0, $zero, 95
	blt	$a0, $s5, .LBB0_149
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	st.d	$t8, $sp, 272                   # 8-byte Folded Spill
	ld.w	$s2, $s7, 4
	ld.wu	$s4, $s7, 8
	addi.w	$s6, $s5, 1
	slli.d	$a0, $s6, 5
	alsl.d	$a1, $s6, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_139
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	move	$s0, $a0
	addi.d	$ra, $s7, 16
	slli.d	$a0, $s5, 5
	alsl.d	$a0, $s5, $a0, 2
	add.d	$fp, $s0, $a0
	stx.w	$s4, $s0, $a0
	st.w	$s2, $fp, 12
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $s4
	slt	$a1, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 4
	st.w	$zero, $fp, 8
	beqz	$s2, .LBB0_106
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	addi.w	$a0, $s4, 0
	ori	$t7, $zero, 32
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	bnez	$t8, .LBB0_23
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_23
# %bb.18:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 36
	beqz	$a2, .LBB0_23
.LBB0_20:                               # %.lr.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	bgeu	$a3, $a0, .LBB0_19
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	ld.w	$a4, $a1, 4
	add.w	$a4, $a4, $a3
	bgeu	$a0, $a4, .LBB0_19
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	st.w	$a3, $fp, 0
	ld.w	$a1, $a1, 0
	add.d	$a2, $s4, $s2
	sub.d	$a1, $a2, $a1
	st.w	$a1, $fp, 12
	.p2align	4, , 16
.LBB0_23:                               # %.loopexit1104
                                        #   in Loop: Header=BB0_8 Depth=1
	ori	$s7, $zero, 1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	bltu	$s8, $a1, .LBB0_140
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bgeu	$s8, $a2, .LBB0_140
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	bltu	$a0, $a1, .LBB0_140
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_140
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a5, $a0, $s8
	ld.b	$a1, $a5, 0
	add.d	$a2, $a0, $s4
	addi.d	$a3, $a2, 1
	addi.w	$a0, $s2, -1
	st.b	$a1, $a2, 0
	beqz	$a0, .LBB0_107
# %bb.28:                               # %.lr.ph1264.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$a6, $zero
	move	$t1, $zero
	bstrpick.d	$a1, $s2, 31, 16
	sltui	$a4, $a1, 1
	bstrpick.d	$a1, $s2, 31, 18
	sltui	$a7, $a1, 1
	lu12i.w	$a2, 7
	ori	$a1, $a2, 3327
	masknez	$a1, $a1, $a7
	ori	$a2, $a2, 3711
	maskeqz	$a2, $a2, $a7
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1279
	masknez	$a2, $a2, $a7
	ori	$t0, $zero, 1663
	maskeqz	$t0, $t0, $a7
	or	$a2, $t0, $a2
	masknez	$a1, $a1, $a4
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	maskeqz	$t0, $t0, $a4
	or	$a1, $t0, $a1
	masknez	$a2, $a2, $a4
	ori	$t0, $zero, 927
	maskeqz	$t0, $t0, $a4
	or	$a2, $t0, $a2
	ori	$t0, $zero, 8
	sub.d	$a7, $t0, $a7
	masknez	$a7, $a7, $a4
	ori	$t0, $zero, 5
	maskeqz	$a4, $t0, $a4
	or	$a4, $a4, $a7
	addi.d	$a5, $a5, 1
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_29:                               # %.lr.ph1264
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	andi	$a7, $t1, 127
	beqz	$a7, .LBB0_36
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a7, $t1, 1
	ext.w.b	$t0, $t1
	bltz	$t0, .LBB0_39
.LBB0_31:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_140
# %bb.32:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t2, $a5, 1
	bltu	$s2, $t2, .LBB0_140
# %bb.33:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a3, $s1, .LBB0_140
# %bb.34:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $a3, 1
	bltu	$s2, $t0, .LBB0_140
# %bb.35:                               #   in Loop: Header=BB0_29 Depth=2
	ld.b	$a5, $a5, 0
	xor	$a5, $a5, $a0
	st.b	$a5, $a3, 0
	addi.w	$a0, $a0, -1
	move	$a3, $t0
	move	$t1, $a7
	move	$a5, $t2
	bnez	$a0, .LBB0_29
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_36:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_140
# %bb.37:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$a5, $s3, .LBB0_140
# %bb.38:                               #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t1, $a5, 0
	slli.d	$a7, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	ext.w.b	$t0, $t1
	bgez	$t0, .LBB0_31
.LBB0_39:                               # %.preheader1102.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$t1, $zero, 1
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_42 Depth=3
	slli.d	$a7, $t2, 1
.LBB0_41:                               # %doubledl.exit908
                                        #   in Loop: Header=BB0_42 Depth=3
	bstrpick.d	$t0, $t0, 7, 7
	slli.w	$t1, $t1, 1
	ext.w.b	$t2, $t2
	or	$t1, $t1, $t0
	bgez	$t2, .LBB0_50
.LBB0_42:                               # %.preheader1102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t0, $a7, 127
	beqz	$t0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=3
	slli.d	$t2, $a7, 1
	move	$t0, $a7
	andi	$a7, $t2, 127
	bnez	$a7, .LBB0_40
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.45:                               #   in Loop: Header=BB0_42 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.46:                               #   in Loop: Header=BB0_42 Depth=3
	ld.bu	$t0, $a5, 0
	slli.d	$a7, $t0, 1
	addi.d	$t2, $a7, 1
	addi.d	$a5, $a5, 1
	andi	$a7, $t2, 127
	bnez	$a7, .LBB0_40
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.48:                               #   in Loop: Header=BB0_42 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.49:                               #   in Loop: Header=BB0_42 Depth=3
	ld.bu	$t2, $a5, 0
	slli.d	$a7, $t2, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	b	.LBB0_41
.LBB0_50:                               #   in Loop: Header=BB0_29 Depth=2
	ori	$t0, $zero, 3
	blt	$t1, $t0, .LBB0_58
# %bb.51:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $t1, -3
	move	$a6, $a4
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=3
	slli.d	$t1, $a7, 1
.LBB0_53:                               # %doubledl.exit915
                                        #   in Loop: Header=BB0_54 Depth=3
	bstrpick.d	$a7, $a7, 7, 7
	slli.w	$t0, $t0, 1
	addi.w	$a6, $a6, -1
	or	$t0, $t0, $a7
	move	$a7, $t1
	beqz	$a6, .LBB0_61
.LBB0_54:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t1, $a7, 127
	bnez	$t1, .LBB0_52
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.57:                               #   in Loop: Header=BB0_54 Depth=3
	ld.bu	$a7, $a5, 0
	slli.d	$t1, $a7, 1
	addi.d	$t1, $t1, 1
	addi.d	$a5, $a5, 1
	b	.LBB0_53
.LBB0_58:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t0, $zero
	addi.d	$t2, $zero, -4
	alsl.w	$t2, $t1, $t2, 1
	move	$t1, $a7
	andi	$a7, $t1, 127
	beqz	$a7, .LBB0_62
.LBB0_59:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$t3, $t1, 1
	andi	$a7, $t3, 127
	beqz	$a7, .LBB0_65
.LBB0_60:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a7, $t3, 1
	b	.LBB0_68
.LBB0_61:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t2, $zero
	nor	$a6, $t0, $zero
	slt	$a7, $a2, $t0
	slt	$t0, $a1, $t0
	add.d	$a7, $a7, $t0
	addi.d	$t0, $a7, 1
	andi	$a7, $t1, 127
	bnez	$a7, .LBB0_59
.LBB0_62:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_137
# %bb.63:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$a5, $s3, .LBB0_137
# %bb.64:                               #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t1, $a5, 0
	slli.d	$a7, $t1, 1
	addi.d	$t3, $a7, 1
	addi.d	$a5, $a5, 1
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_60
.LBB0_65:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_137
# %bb.66:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$a5, $s3, .LBB0_137
# %bb.67:                               #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t3, $a5, 0
	slli.d	$a7, $t3, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
.LBB0_68:                               # %doubledl.exit929
                                        #   in Loop: Header=BB0_29 Depth=2
	bstrpick.d	$t1, $t1, 7, 7
	bstrpick.d	$t3, $t3, 7, 7
	add.d	$t1, $t2, $t1
	slli.w	$t1, $t1, 1
	or	$t1, $t1, $t3
	bnez	$t1, .LBB0_81
# %bb.69:                               # %.preheader1101.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$t1, $zero, 1
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_70:                               #   in Loop: Header=BB0_72 Depth=3
	slli.d	$a7, $t3, 1
.LBB0_71:                               # %doubledl.exit943
                                        #   in Loop: Header=BB0_72 Depth=3
	bstrpick.d	$t2, $t2, 7, 7
	slli.d	$t1, $t1, 1
	ext.w.b	$t3, $t3
	or	$t1, $t1, $t2
	bgez	$t3, .LBB0_80
.LBB0_72:                               # %.preheader1101
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t2, $a7, 127
	beqz	$t2, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=3
	slli.d	$t3, $a7, 1
	move	$t2, $a7
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_70
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.75:                               #   in Loop: Header=BB0_72 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.76:                               #   in Loop: Header=BB0_72 Depth=3
	ld.bu	$t2, $a5, 0
	slli.d	$a7, $t2, 1
	addi.d	$t3, $a7, 1
	addi.d	$a5, $a5, 1
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_70
.LBB0_77:                               #   in Loop: Header=BB0_72 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.78:                               #   in Loop: Header=BB0_72 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.79:                               #   in Loop: Header=BB0_72 Depth=3
	ld.bu	$t3, $a5, 0
	slli.d	$a7, $t3, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	b	.LBB0_71
.LBB0_80:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t1, $t1, 2
.LBB0_81:                               #   in Loop: Header=BB0_29 Depth=2
	add.w	$t2, $t1, $t0
	blez	$t2, .LBB0_137
# %bb.82:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$s4, $t2, .LBB0_137
# %bb.83:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a3, $s1, .LBB0_137
# %bb.84:                               #   in Loop: Header=BB0_29 Depth=2
	add.d	$t0, $a3, $t2
	bltu	$s2, $t0, .LBB0_137
# %bb.85:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s1, $t0, .LBB0_137
# %bb.86:                               #   in Loop: Header=BB0_29 Depth=2
	addi.w	$t1, $a6, 0
	add.d	$t0, $a3, $t1
	bltu	$t0, $s1, .LBB0_137
# %bb.87:                               #   in Loop: Header=BB0_29 Depth=2
	add.d	$t0, $t0, $t2
	bltu	$s2, $t0, .LBB0_137
# %bb.88:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s1, $t0, .LBB0_137
# %bb.89:                               # %.lr.ph1257.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	sub.w	$a0, $a0, $t2
	bltu	$t2, $t7, .LBB0_94
# %bb.90:                               # %.lr.ph1257.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $t1, 31
	bltu	$t0, $t7, .LBB0_94
# %bb.91:                               # %vector.ph
                                        #   in Loop: Header=BB0_29 Depth=2
	bstrpick.d	$t0, $t2, 30, 5
	slli.d	$t4, $t0, 5
	sub.d	$t3, $t2, $t4
	add.d	$t0, $a3, $t4
	move	$t5, $t4
	.p2align	4, , 16
.LBB0_92:                               # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a3, $t1
	vldx	$vr0, $a3, $t1
	vld	$vr1, $t6, 16
	vst	$vr0, $a3, 0
	vst	$vr1, $a3, 16
	addi.d	$t5, $t5, -32
	addi.d	$a3, $a3, 32
	bnez	$t5, .LBB0_92
# %bb.93:                               # %middle.block
                                        #   in Loop: Header=BB0_29 Depth=2
	bne	$t4, $t2, .LBB0_95
	b	.LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t3, $t2
	move	$t0, $a3
	.p2align	4, , 16
.LBB0_95:                               # %.lr.ph1257
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a3, $t0, $t1
	addi.w	$t3, $t3, -1
	st.b	$a3, $t0, 0
	addi.d	$t0, $t0, 1
	bnez	$t3, .LBB0_95
.LBB0_96:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t2, $a5
	move	$a3, $t0
	move	$t1, $a7
	move	$a5, $t2
	bnez	$a0, .LBB0_29
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	bltu	$s4, $a0, .LBB0_139
# %bb.98:                               #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a6, $s7, 12
	bltu	$s2, $a6, .LBB0_139
# %bb.99:                               #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $zero, -1
	alsl.w	$a0, $s8, $a0, 2
	bgeu	$a0, $s4, .LBB0_139
# %bb.100:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s7, 4
	slli.d	$a2, $s8, 2
	addi.d	$a1, $a2, -4
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	blt	$a0, $a5, .LBB0_139
# %bb.101:                              #   in Loop: Header=BB0_8 Depth=1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a3, $a2, $a5
	add.d	$a3, $a3, $a0
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	blt	$a4, $a3, .LBB0_139
# %bb.102:                              #   in Loop: Header=BB0_8 Depth=1
	blez	$a3, .LBB0_139
# %bb.103:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a4, $s7, 8
	sub.d	$a3, $a4, $a1
	blt	$a3, $a5, .LBB0_139
# %bb.104:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	bgeu	$a1, $a5, .LBB0_139
# %bb.105:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $a4, 4
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a0
	add.d	$a0, $a4, $a3
	move	$s0, $a6
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	move	$ra, $s0
	move	$t8, $zero
	move	$s6, $s5
	move	$s0, $fp
	b	.LBB0_136
.LBB0_106:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	b	.LBB0_136
.LBB0_107:                              #   in Loop: Header=BB0_8 Depth=1
	move	$t0, $a3
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_108:                              # %._crit_edge
                                        #   in Loop: Header=BB0_8 Depth=1
	beqz	$s6, .LBB0_135
# %bb.109:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $fp, 12
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a1
	addi.d	$a2, $a1, 84
	bgeu	$a2, $s1, .LBB0_117
.LBB0_111:                              # %.thread1023
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_135
# %bb.112:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 84
	bltu	$a1, $s1, .LBB0_135
# %bb.113:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a2, $a1, 8
	bltu	$s2, $a2, .LBB0_135
# %bb.114:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a2, .LBB0_135
# %bb.115:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_135
# %bb.116:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $a0, 88
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_122
	b	.LBB0_134
.LBB0_117:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a3, $a1, 92
	bltu	$s2, $a3, .LBB0_111
# %bb.118:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a3, .LBB0_111
# %bb.119:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB0_111
# %bb.120:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a1, $a1, 88
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_111
# %bb.121:                              #   in Loop: Header=BB0_8 Depth=1
	move	$s2, $zero
.LBB0_122:                              # %.thread1031
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$s8, $t0, $a0
	sub.d	$a0, $s8, $s2
	addi.d	$a0, $a0, 7
	bltu	$a0, $s1, .LBB0_134
# %bb.123:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $a0, 8
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_134
# %bb.124:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a1, .LBB0_134
# %bb.125:                              #   in Loop: Header=BB0_8 Depth=1
	st.d	$ra, $sp, 32                    # 8-byte Folded Spill
	sub.d	$s4, $zero, $s2
	ld.w	$s7, $a0, 0
	add.d	$a0, $s8, $s4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 11
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 437
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_129
# %bb.126:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	xor	$a0, $a0, $s7
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $s8, 15
	add.d	$a0, $a0, $s4
	bgeu	$a0, $s1, .LBB0_130
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_133
.LBB0_129:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_133
.LBB0_130:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $a0, 437
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_133
# %bb.131:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a1, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 289
	ld.w	$a3, $a1, 448
	xor	$a0, $s7, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	xor	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	xor	$a0, $a3, $a0
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
.LBB0_133:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $fp, 12
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a1, $s2, $a1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 12
.LBB0_134:                              # %.thread1028
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_135:                              # %.thread1028
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.w	$t8, $t8, 1
.LBB0_136:                              # %.thread1036
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$s7, $ra
	move	$fp, $s0
	move	$s5, $s6
	bgeu	$ra, $s1, .LBB0_8
	b	.LBB0_142
.LBB0_137:
	move	$fp, $s0
.LBB0_138:                              # %.thread1058.sink.split
	ori	$s7, $zero, 1
	b	.LBB0_208
.LBB0_139:
	ori	$s7, $zero, 1
	ori	$a0, $zero, 1
	bnez	$fp, .LBB0_208
	b	.LBB0_209
.LBB0_140:
	move	$fp, $s0
	b	.LBB0_208
.LBB0_141:
	move	$s0, $fp
.LBB0_142:                              # %._crit_edge1279
	ori	$s7, $zero, 1
	move	$fp, $s0
	ori	$a0, $zero, 1
	bnez	$s0, .LBB0_208
	b	.LBB0_209
.LBB0_143:
	ori	$a0, $zero, 1
	blez	$s5, .LBB0_209
# %bb.144:                              # %.preheader1098
	ori	$a0, $zero, 1
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 144                   # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_150
.LBB0_145:                              # %._crit_edge1290
	beqz	$t6, .LBB0_158
# %bb.146:
	ori	$a1, $zero, 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 5
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB0_198
# %bb.147:                              # %.preheader
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB0_174
.LBB0_148:                              # %.critedge
	ld.w	$s0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_199
.LBB0_149:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_216
.LBB0_150:                              # %.preheader1097.us.preheader
	addi.w	$a0, $s5, -1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $fp, 36
	b	.LBB0_152
	.p2align	4, , 16
.LBB0_151:                              # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB0_152 Depth=1
	beqz	$a6, .LBB0_156
.LBB0_152:                              # %.preheader1097.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
	ld.w	$a3, $fp, 0
	move	$a6, $zero
	move	$a4, $a1
	move	$a5, $a2
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              #   in Loop: Header=BB0_154 Depth=2
	ld.w	$a6, $a5, -24
	ld.w	$t0, $a5, 12
	ld.w	$t1, $a5, 4
	ld.w	$t2, $a5, -32
	st.w	$a7, $a5, -36
	st.w	$t0, $a5, -24
	st.w	$t1, $a5, -32
	st.w	$a3, $a5, 0
	st.w	$a6, $a5, 12
	st.w	$t2, $a5, 4
	ori	$a6, $zero, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 36
	beqz	$a4, .LBB0_151
.LBB0_154:                              #   Parent Loop BB0_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	bltu	$a7, $a3, .LBB0_153
# %bb.155:                              #   in Loop: Header=BB0_154 Depth=2
	move	$a3, $a7
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 36
	bnez	$a4, .LBB0_154
	b	.LBB0_151
.LBB0_156:                              # %.lr.ph1289.preheader
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	masknez	$a3, $a1, $a2
	ld.w	$a1, $fp, 0
	maskeqz	$a0, $a0, $a2
	ori	$a2, $zero, 5
	or	$a0, $a0, $a3
	bge	$s5, $a2, .LBB0_159
# %bb.157:
	move	$a2, $zero
	b	.LBB0_170
.LBB0_158:
	move	$s0, $zero
	b	.LBB0_200
.LBB0_159:                              # %vector.ph1791
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	vinsgr2vr.w	$vr1, $a1, 3
	addi.d	$a3, $fp, 72
	vrepli.b	$vr0, -1
	move	$a4, $a2
	b	.LBB0_161
.LBB0_160:                              # %pred.store.continue1801
                                        #   in Loop: Header=BB0_161 Depth=1
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 144
	beqz	$a4, .LBB0_169
.LBB0_161:                              # %vector.body1794
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a3, -68
	ld.w	$a5, $a3, -32
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 40
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	ld.w	$a5, $a3, -36
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a3, 36
	ld.w	$a1, $a3, 72
	vbsrl.v	$vr2, $vr1, 12
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr1, $a6, 1
	vinsgr2vr.w	$vr1, $a7, 2
	vbsll.v	$vr4, $vr1, 4
	vinsgr2vr.w	$vr1, $a1, 3
	vor.v	$vr2, $vr4, $vr2
	vsub.w	$vr2, $vr1, $vr2
	vseq.w	$vr3, $vr3, $vr2
	vxor.v	$vr3, $vr3, $vr0
	vpickve2gr.w	$a5, $vr3, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_165
# %bb.162:                              # %pred.store.if
                                        #   in Loop: Header=BB0_161 Depth=1
	vstelm.w	$vr2, $a3, -68, 0
	vpickve2gr.w	$a5, $vr3, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_166
.LBB0_163:                              # %pred.store.continue1797
                                        #   in Loop: Header=BB0_161 Depth=1
	vpickve2gr.w	$a5, $vr3, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_167
.LBB0_164:                              # %pred.store.if1798
                                        #   in Loop: Header=BB0_161 Depth=1
	vstelm.w	$vr2, $a3, 4, 2
	vpickve2gr.w	$a5, $vr3, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_160
	b	.LBB0_168
.LBB0_165:                              # %pred.store.continue
                                        #   in Loop: Header=BB0_161 Depth=1
	vpickve2gr.w	$a5, $vr3, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_163
.LBB0_166:                              # %pred.store.if1796
                                        #   in Loop: Header=BB0_161 Depth=1
	vstelm.w	$vr2, $a3, -32, 1
	vpickve2gr.w	$a5, $vr3, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_164
.LBB0_167:                              # %pred.store.continue1799
                                        #   in Loop: Header=BB0_161 Depth=1
	vpickve2gr.w	$a5, $vr3, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB0_160
.LBB0_168:                              # %pred.store.if1800
                                        #   in Loop: Header=BB0_161 Depth=1
	vstelm.w	$vr2, $a3, 40, 3
	b	.LBB0_160
.LBB0_169:                              # %middle.block1803
	beq	$a2, $a0, .LBB0_145
.LBB0_170:                              # %.lr.ph1289.preheader1819
	alsl.d	$a3, $a2, $a2, 3
	slli.d	$a3, $a3, 2
	add.d	$a3, $a3, $fp
	addi.d	$a3, $a3, 36
	sub.d	$a0, $a0, $a2
	b	.LBB0_172
	.p2align	4, , 16
.LBB0_171:                              #   in Loop: Header=BB0_172 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 36
	beqz	$a0, .LBB0_145
.LBB0_172:                              # %.lr.ph1289
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.w	$a1, $a3, 0
	ld.w	$a4, $a3, -32
	sub.w	$a2, $a1, $a2
	beq	$a4, $a2, .LBB0_171
# %bb.173:                              #   in Loop: Header=BB0_172 Depth=1
	st.w	$a2, $a3, -32
	b	.LBB0_171
.LBB0_174:                              # %.lr.ph1328
	add.w	$a2, $a0, $t4
	bstrpick.d	$a6, $a3, 31, 0
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.d	$t0, $a4, $a6
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_189
# %bb.175:                              # %.lr.ph1328.split.us.preheader
	move	$a5, $zero
	addi.d	$a3, $a4, 4
	add.d	$a4, $a3, $a6
	lu12i.w	$a6, -262399
	ori	$a6, $a6, 823
.LBB0_176:                              # %.lr.ph1328.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_183 Depth 2
	addi.d	$a7, $t0, 4
	bltu	$s2, $a7, .LBB0_148
# %bb.177:                              #   in Loop: Header=BB0_176 Depth=1
	ld.w	$t0, $t0, 0
	beqz	$t0, .LBB0_198
# %bb.178:                              #   in Loop: Header=BB0_176 Depth=1
	blt	$t0, $t5, .LBB0_148
# %bb.179:                              # %.lr.ph1297.us.preheader
                                        #   in Loop: Header=BB0_176 Depth=1
	add.d	$t0, $a3, $t0
	move	$t1, $t0
	b	.LBB0_183
.LBB0_180:                              #   in Loop: Header=BB0_183 Depth=2
	addi.w	$a5, $a5, -1
.LBB0_181:                              #   in Loop: Header=BB0_183 Depth=2
	move	$t2, $a2
	move	$a2, $a6
.LBB0_182:                              #   in Loop: Header=BB0_183 Depth=2
	ld.w	$t3, $a1, 0
	add.w	$t3, $t3, $t4
	sltu	$t3, $t3, $a2
	sltu	$a2, $a2, $t2
	sub.d	$a2, $t6, $a2
	sub.d	$a2, $a2, $t3
	rotri.w	$t6, $a2, 3
	addi.d	$t1, $t1, 4
	move	$a2, $t2
	bltu	$t0, $s1, .LBB0_148
.LBB0_183:                              # %.lr.ph1297.us
                                        #   Parent Loop BB0_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $t1, .LBB0_148
# %bb.184:                              #   in Loop: Header=BB0_183 Depth=2
	ld.w	$t2, $t1, -4
	beqz	$t2, .LBB0_188
# %bb.185:                              #   in Loop: Header=BB0_183 Depth=2
	bltz	$t2, .LBB0_181
# %bb.186:                              #   in Loop: Header=BB0_183 Depth=2
	bgtz	$a5, .LBB0_180
# %bb.187:                              #   in Loop: Header=BB0_183 Depth=2
	addi.w	$t2, $a2, 5
	andi	$a5, $t2, 7
	b	.LBB0_182
.LBB0_188:                              # %.critedge7.us
                                        #   in Loop: Header=BB0_176 Depth=1
	move	$t0, $a7
	bgeu	$a4, $s1, .LBB0_176
	b	.LBB0_148
.LBB0_189:                              # %.lr.ph1328.split
	lu12i.w	$a3, -262399
	ori	$a3, $a3, 823
	sltu	$a2, $a3, $a2
	sub.d	$a2, $zero, $a2
	addi.d	$a4, $a4, 4
	add.d	$a5, $a4, $a6
.LBB0_190:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_194 Depth 2
	addi.d	$a6, $t0, 4
	bltu	$s2, $a6, .LBB0_148
# %bb.191:                              #   in Loop: Header=BB0_190 Depth=1
	ld.w	$a7, $t0, 0
	beqz	$a7, .LBB0_198
# %bb.192:                              #   in Loop: Header=BB0_190 Depth=1
	blt	$a7, $t5, .LBB0_148
# %bb.193:                              # %.lr.ph1297.preheader
                                        #   in Loop: Header=BB0_190 Depth=1
	add.d	$a7, $a4, $a7
	move	$t0, $a7
.LBB0_194:                              # %.lr.ph1297
                                        #   Parent Loop BB0_190 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $t0, .LBB0_148
# %bb.195:                              #   in Loop: Header=BB0_194 Depth=2
	ld.w	$t1, $t0, -4
	beqz	$t1, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_194 Depth=2
	ld.w	$t1, $a1, 0
	add.w	$t1, $t1, $t4
	sltu	$t1, $t1, $a3
	add.d	$t2, $t6, $a2
	sub.d	$t1, $t2, $t1
	rotri.w	$t6, $t1, 3
	addi.d	$t0, $t0, 4
	bgeu	$a7, $s1, .LBB0_194
	b	.LBB0_148
.LBB0_197:                              # %.critedge7
                                        #   in Loop: Header=BB0_190 Depth=1
	move	$t0, $a6
	bgeu	$a5, $s1, .LBB0_190
	b	.LBB0_148
.LBB0_198:                              # %.critedge.thread
	add.w	$s0, $t6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
.LBB0_199:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_200:
	ld.wu	$a2, $fp, 12
	ori	$s2, $zero, 1
	addi.w	$a0, $a2, -1
	st.w	$zero, $fp, 8
	bgeu	$a0, $s4, .LBB0_203
# %bb.201:
	addi.w	$a0, $a2, 0
	bltu	$s4, $a0, .LBB0_203
# %bb.202:
	ld.wu	$a0, $fp, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB0_203:
	bne	$s5, $s2, .LBB0_210
.LBB0_204:                              # %.lr.ph1352.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a0, $a1, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$s4, $a0, $a1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s2, $a0, %pc_lo12(.L.str.3)
	move	$s6, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB0_205:                              # %.lr.ph1352
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $s6
	ldx.w	$a2, $fp, $s6
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	ld.w	$a5, $a0, 12
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 36
	addi.w	$s3, $s3, 1
	bne	$s4, $s6, .LBB0_205
# %bb.206:                              # %._crit_edge1353
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s5
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	move	$a4, $s0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_215
# %bb.207:
	move	$s7, $zero
.LBB0_208:                              # %.thread1058.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
.LBB0_209:                              # %.thread1058
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB0_210:                              # %.lr.ph1348.peel.next.preheader
	slt	$a0, $s2, $s5
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	addi.d	$s2, $fp, 48
	addi.d	$s3, $a0, -1
	b	.LBB0_212
	.p2align	4, , 16
.LBB0_211:                              #   in Loop: Header=BB0_212 Depth=1
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 36
	beqz	$s3, .LBB0_204
.LBB0_212:                              # %.lr.ph1348.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, -40
	ld.w	$a1, $s2, -36
	ld.wu	$a2, $s2, 0
	add.w	$a0, $a1, $a0
	addi.w	$a1, $a2, -1
	st.w	$a0, $s2, -4
	bgeu	$a1, $s4, .LBB0_211
# %bb.213:                              #   in Loop: Header=BB0_212 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $a2, $a0
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	bltu	$a3, $a1, .LBB0_211
# %bb.214:                              #   in Loop: Header=BB0_212 Depth=1
	ld.wu	$a1, $s2, -12
	add.d	$a0, $s1, $a0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB0_211
.LBB0_215:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
.LBB0_216:                              # %.thread1058.sink.split.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_138
.Lfunc_end0:
	.size	petite_inflate2x_1to9, .Lfunc_end0-petite_inflate2x_1to9
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Petite: Old EP: %x\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Petite: In troubles while attempting to decrypt old EP, using bogus %x\n"
	.size	.L.str.1, 72

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Petite: Sections dump:\n"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Petite: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\n"
	.size	.L.str.3, 55

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Petite: Rebuilding failed\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Petite: maximum number of sections exceeded, giving up.\n"
	.size	.L.str.5, 57

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Petite: Found petite code in sect%d(%x). Let's strip it.\n"
	.size	.L.str.6, 58

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Petite: Encrypted EP: %x | Array of imports: %x\n"
	.size	.L.str.7, 49

	.section	".note.GNU-stack","",@progbits
	.addrsig
