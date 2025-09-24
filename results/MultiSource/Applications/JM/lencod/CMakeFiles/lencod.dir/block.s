	.file	"block.c"
	.text
	.globl	intrapred_luma                  # -- Begin function intrapred_luma
	.p2align	5
	.type	intrapred_luma,@function
intrapred_luma:                         # @intrapred_luma
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
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$s8, $a1, 6440
	andi	$s3, $a0, 15
	andi	$s6, $s2, 15
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s7, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s7, 0
	ld.w	$s4, $a0, 12
	pcalau12i	$fp, %pc_hi20(getNeighbour)
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$s5, $s3, -1
	addi.d	$a4, $sp, 104
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a2, $s6, 1
	addi.d	$a4, $sp, 128
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a2, $s6, 2
	addi.d	$a4, $sp, 152
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a2, $s6, 3
	addi.d	$a4, $sp, 176
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$s6, $s6, -1
	addi.d	$a4, $sp, 80
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a1, $s3, 4
	addi.d	$a4, $sp, 56
	move	$a0, $s4
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 32
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 56
	beqz	$a0, .LBB0_2
# %bb.1:
	addi.d	$a0, $s3, -4
	sltu	$a0, $zero, $a0
	andi	$a1, $s2, 7
	addi.d	$a1, $a1, -4
	sltu	$a1, $zero, $a1
	or	$a5, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	move	$a5, $zero
.LBB0_3:
	st.w	$a5, $sp, 56
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 272
	beqz	$a0, .LBB0_9
# %bb.4:                                # %.preheader223
	ld.w	$a1, $sp, 104
	ld.d	$a0, $s7, 0
	beqz	$a1, .LBB0_10
# %bb.5:
	ld.w	$a1, $sp, 108
	ldptr.d	$a2, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $a2, $a1
	andi	$a1, $a1, 1
	ld.w	$a2, $sp, 128
	beqz	$a2, .LBB0_11
.LBB0_6:
	ld.w	$a2, $sp, 132
	ldptr.d	$a3, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	ld.w	$a2, $sp, 152
	beqz	$a2, .LBB0_12
.LBB0_7:
	ld.w	$a2, $sp, 156
	ldptr.d	$a4, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	ld.w	$a2, $sp, 176
	beqz	$a2, .LBB0_13
.LBB0_8:
	ld.w	$a2, $sp, 180
	ldptr.d	$a6, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a6, $a2
	b	.LBB0_14
.LBB0_9:
	ld.w	$a7, $sp, 104
	ld.w	$t2, $sp, 80
	ld.w	$a2, $sp, 32
	b	.LBB0_22
.LBB0_10:
	move	$a1, $zero
	ld.w	$a2, $sp, 128
	bnez	$a2, .LBB0_6
.LBB0_11:
	move	$a3, $zero
	ld.w	$a2, $sp, 152
	bnez	$a2, .LBB0_7
.LBB0_12:
	move	$a4, $zero
	ld.w	$a2, $sp, 176
	bnez	$a2, .LBB0_8
.LBB0_13:
	move	$a2, $zero
.LBB0_14:
	ld.w	$a6, $sp, 80
	and	$a1, $a3, $a1
	beqz	$a6, .LBB0_17
# %bb.15:
	ld.w	$a3, $sp, 84
	ldptr.d	$a6, $a0, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$t2, $a6, $a3
	and	$a1, $a4, $a1
	beqz	$a5, .LBB0_18
.LBB0_16:
	ld.w	$a3, $sp, 60
	ldptr.d	$a4, $a0, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a4, $a3
	b	.LBB0_19
.LBB0_17:
	move	$t2, $zero
	and	$a1, $a4, $a1
	bnez	$a5, .LBB0_16
.LBB0_18:
	move	$a5, $zero
.LBB0_19:
	ld.w	$a3, $sp, 32
	and	$a7, $a2, $a1
	beqz	$a3, .LBB0_21
# %bb.20:
	ld.w	$a1, $sp, 36
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	b	.LBB0_22
.LBB0_21:
	move	$a2, $zero
.LBB0_22:
	st.w	$a7, $s1, 0
	st.w	$t2, $s0, 0
	sltu	$a0, $zero, $t2
	sltu	$a1, $zero, $a7
	and	$a6, $a0, $a1
	sltu	$a0, $zero, $a2
	and	$a0, $a6, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$t2, .LBB0_24
# %bb.23:
	ld.w	$a0, $sp, 100
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s8, $a0
	ld.w	$a1, $sp, 96
	alsl.d	$t0, $a1, $a0, 1
	slli.d	$a1, $a1, 1
	ldx.hu	$a4, $a0, $a1
	ld.hu	$a3, $t0, 2
	ld.hu	$a1, $t0, 4
	ld.hu	$a0, $t0, 6
	b	.LBB0_25
.LBB0_24:
	ld.d	$a0, $s7, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3224
	ldx.h	$a0, $a0, $a1
	move	$a1, $a0
	move	$a3, $a0
	move	$a4, $a0
.LBB0_25:
	move	$t7, $a0
	move	$fp, $a0
	move	$s0, $a0
	move	$s1, $a0
	beqz	$a5, .LBB0_27
# %bb.26:
	ld.w	$a5, $sp, 76
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s8, $a5
	ld.w	$t0, $sp, 72
	alsl.d	$t1, $t0, $a5, 1
	slli.d	$t0, $t0, 1
	ldx.hu	$s1, $a5, $t0
	ld.hu	$s0, $t1, 2
	ld.hu	$fp, $t1, 4
	ld.hu	$t7, $t1, 6
.LBB0_27:
	beqz	$a7, .LBB0_30
# %bb.28:
	ld.w	$a5, $sp, 124
	ld.w	$t0, $sp, 120
	ld.w	$t1, $sp, 148
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s8, $a5
	slli.d	$t0, $t0, 1
	slli.d	$t1, $t1, 3
	ld.w	$t3, $sp, 144
	ldx.d	$t1, $s8, $t1
	ldx.hu	$t0, $a5, $t0
	ld.w	$a5, $sp, 172
	slli.d	$t3, $t3, 1
	ldx.hu	$t1, $t1, $t3
	ld.w	$t3, $sp, 196
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s8, $a5
	ld.w	$t4, $sp, 168
	slli.d	$t3, $t3, 3
	ld.w	$t5, $sp, 192
	ldx.d	$t6, $s8, $t3
	slli.d	$t3, $t4, 1
	ldx.hu	$t3, $a5, $t3
	slli.d	$a5, $t5, 1
	ldx.hu	$t4, $t6, $a5
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	beqz	$a2, .LBB0_31
.LBB0_29:
	ld.w	$a5, $sp, 52
	slli.d	$a5, $a5, 3
	ld.w	$t5, $sp, 48
	ldx.d	$a5, $s8, $a5
	slli.d	$t5, $t5, 1
	ldx.hu	$a2, $a5, $t5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a5, $s7, 0
	b	.LBB0_32
.LBB0_30:
	ld.d	$a5, $s7, 0
	lu12i.w	$t0, 3
	ori	$t0, $t0, 3224
	ldx.h	$t3, $a5, $t0
	move	$t1, $t3
	move	$t0, $t3
	move	$t4, $t3
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bnez	$a2, .LBB0_29
.LBB0_31:
	ld.d	$a5, $s7, 0
	lu12i.w	$t5, 3
	ori	$t5, $t5, 3224
	ldx.h	$a2, $a5, $t5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
.LBB0_32:
	lu12i.w	$t6, 15
	ori	$t6, $t6, 4095
	st.h	$t6, $a5, 720
	st.h	$t6, $a5, 1744
	ori	$t8, $zero, 2256
	stx.h	$t6, $a5, $t8
	ori	$t8, $zero, 2768
	stx.h	$t6, $a5, $t8
	ori	$t8, $zero, 3280
	stx.h	$t6, $a5, $t8
	ori	$t8, $zero, 3792
	stx.h	$t6, $a5, $t8
	lu12i.w	$t8, 1
	ori	$s2, $t8, 208
	stx.h	$t6, $a5, $s2
	beqz	$a6, .LBB0_34
# %bb.33:
	bstrpick.d	$s3, $a4, 15, 0
	bstrpick.d	$s4, $a3, 15, 0
	bstrpick.d	$s5, $a1, 15, 0
	bstrpick.d	$s6, $a0, 15, 0
	bstrpick.d	$s7, $t0, 15, 0
	bstrpick.d	$s8, $t1, 15, 0
	bstrpick.d	$ra, $t3, 15, 0
	bstrpick.d	$t5, $t4, 15, 0
	add.d	$s5, $s6, $s5
	add.d	$s4, $s5, $s4
	add.d	$s3, $s4, $s3
	add.d	$t5, $s3, $t5
	add.d	$t5, $t5, $ra
	add.d	$t5, $t5, $s8
	add.d	$t5, $t5, $s7
	addi.d	$t5, $t5, 4
	bstrpick.d	$s3, $t5, 31, 3
	b	.LBB0_42
.LBB0_34:
	bnez	$t2, .LBB0_37
# %bb.35:
	beqz	$a7, .LBB0_37
# %bb.36:
	bstrpick.d	$t5, $t0, 15, 0
	bstrpick.d	$s3, $t1, 15, 0
	bstrpick.d	$s4, $t3, 15, 0
	bstrpick.d	$s5, $t4, 15, 0
	b	.LBB0_40
.LBB0_37:
	beqz	$t2, .LBB0_41
# %bb.38:
	bnez	$a7, .LBB0_41
# %bb.39:
	bstrpick.d	$t5, $a4, 15, 0
	bstrpick.d	$s3, $a3, 15, 0
	bstrpick.d	$s4, $a1, 15, 0
	bstrpick.d	$s5, $a0, 15, 0
.LBB0_40:                               # %.preheader
	add.d	$s4, $s5, $s4
	add.d	$s3, $s4, $s3
	add.d	$t5, $s3, $t5
	addi.d	$t5, $t5, 2
	srli.d	$s3, $t5, 2
	b	.LBB0_42
.LBB0_41:
	lu12i.w	$t5, 3
	ori	$t5, $t5, 3224
	ldx.w	$s3, $a5, $t5
.LBB0_42:                               # %.preheader
	st.h	$s3, $a5, 1232
	st.h	$s3, $a5, 1234
	st.h	$s3, $a5, 1236
	st.h	$s3, $a5, 1238
	st.h	$s3, $a5, 1264
	st.h	$s3, $a5, 1266
	st.h	$s3, $a5, 1268
	st.h	$s3, $a5, 1270
	st.h	$s3, $a5, 1296
	st.h	$s3, $a5, 1298
	st.h	$s3, $a5, 1300
	st.h	$s3, $a5, 1302
	st.h	$s3, $a5, 1328
	st.h	$s3, $a5, 1330
	st.h	$s3, $a5, 1332
	st.h	$s3, $a5, 1334
	st.h	$a4, $a5, 208
	st.h	$a3, $a5, 210
	st.h	$a1, $a5, 212
	st.h	$a0, $a5, 214
	st.h	$a4, $a5, 304
	st.h	$a4, $a5, 272
	st.h	$a4, $a5, 240
	st.h	$a3, $a5, 306
	st.h	$a3, $a5, 274
	st.h	$a3, $a5, 242
	st.h	$a1, $a5, 308
	st.h	$a1, $a5, 276
	st.h	$a1, $a5, 244
	st.h	$a0, $a5, 310
	st.h	$a0, $a5, 278
	st.h	$a0, $a5, 246
	bnez	$t2, .LBB0_44
# %bb.43:
	st.h	$t6, $a5, 208
.LBB0_44:
	addi.d	$s3, $a5, 2047
	st.h	$t0, $a5, 726
	st.h	$t0, $a5, 724
	st.h	$t0, $a5, 722
	st.h	$t0, $a5, 720
	st.h	$t1, $a5, 758
	st.h	$t1, $a5, 756
	st.h	$t1, $a5, 754
	st.h	$t1, $a5, 752
	st.h	$t3, $a5, 790
	st.h	$t3, $a5, 788
	st.h	$t3, $a5, 786
	st.h	$t3, $a5, 784
	st.h	$t4, $a5, 822
	st.h	$t4, $a5, 820
	st.h	$t4, $a5, 818
	st.h	$t4, $a5, 816
	bnez	$a7, .LBB0_46
# %bb.45:
	st.h	$t6, $a5, 720
.LBB0_46:
	addi.d	$t6, $s3, 211
	beqz	$t2, .LBB0_48
# %bb.47:
	bstrpick.d	$t5, $a4, 15, 0
	bstrpick.d	$s4, $a1, 15, 0
	bstrpick.d	$s7, $a3, 15, 0
	addi.d	$s8, $s4, 2
	add.d	$t2, $s8, $t5
	alsl.d	$t2, $s7, $t2, 1
	srli.d	$t2, $t2, 2
	st.h	$t2, $a5, 1744
	bstrpick.d	$s5, $a0, 15, 0
	addi.d	$ra, $s5, 2
	add.d	$s3, $ra, $s7
	alsl.d	$s3, $s4, $s3, 1
	srli.d	$s3, $s3, 2
	st.h	$s3, $a5, 1776
	st.h	$s3, $a5, 1746
	bstrpick.d	$s6, $s1, 15, 0
	alsl.d	$s1, $s5, $s8, 1
	add.d	$s1, $s1, $s6
	srli.d	$s1, $s1, 2
	st.h	$s1, $a5, 1808
	st.h	$s1, $a5, 1778
	st.h	$s1, $a5, 1748
	bstrpick.d	$s8, $s0, 15, 0
	add.d	$s0, $ra, $s8
	alsl.d	$s0, $s6, $s0, 1
	srli.d	$s0, $s0, 2
	st.h	$s0, $a5, 1840
	st.h	$s0, $a5, 1810
	st.h	$s0, $a5, 1780
	st.h	$s0, $a5, 1750
	bstrpick.d	$fp, $fp, 15, 0
	add.d	$ra, $s6, $fp
	alsl.d	$ra, $s8, $ra, 1
	addi.d	$ra, $ra, 2
	srli.d	$ra, $ra, 2
	st.h	$ra, $a5, 1842
	st.h	$ra, $a5, 1812
	st.h	$ra, $a5, 1782
	bstrpick.d	$t7, $t7, 15, 0
	add.d	$a2, $s8, $t7
	alsl.d	$a2, $fp, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.h	$a2, $a5, 1844
	st.h	$a2, $a5, 1814
	alsl.d	$a2, $t7, $t7, 1
	add.d	$a2, $fp, $a2
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.h	$a2, $a5, 1846
	add.d	$a2, $s7, $t5
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t5, $zero, 3792
	stx.h	$a2, $a5, $t5
	add.d	$a2, $s4, $s7
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t5, $zero, 3856
	stx.h	$a2, $a5, $t5
	st.h	$a2, $t6, 1536
	add.d	$a2, $s5, $s4
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	st.h	$a2, $t6, 1600
	ori	$t5, $zero, 3796
	stx.h	$a2, $a5, $t5
	add.d	$a2, $s5, $s6
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t5, $zero, 3860
	stx.h	$a2, $a5, $t5
	st.h	$a2, $t6, 1540
	add.d	$a2, $s6, $s8
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	st.h	$a2, $t6, 1604
	ori	$a2, $zero, 3824
	stx.h	$t2, $a5, $a2
	ori	$a2, $zero, 3888
	stx.h	$s3, $a5, $a2
	st.h	$s3, $t6, 1568
	st.h	$s1, $t6, 1632
	ori	$a2, $zero, 3828
	stx.h	$s1, $a5, $a2
	ori	$a2, $zero, 3892
	stx.h	$s0, $a5, $a2
	st.h	$s0, $t6, 1572
	st.h	$ra, $t6, 1636
.LBB0_48:
	beqz	$a7, .LBB0_50
# %bb.49:
	bstrpick.d	$a2, $t0, 15, 0
	bstrpick.d	$a7, $t1, 15, 0
	add.d	$t2, $a7, $a2
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	stx.h	$t2, $a5, $s2
	bstrpick.d	$t2, $t3, 15, 0
	add.d	$a2, $t2, $a2
	alsl.d	$a2, $a7, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	ori	$t5, $zero, 2048
	stx.h	$a2, $t6, $t5
	add.d	$a2, $t2, $a7
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t5, $t8, 240
	stx.h	$a2, $a5, $t5
	ori	$t5, $t8, 212
	stx.h	$a2, $a5, $t5
	bstrpick.d	$a2, $t4, 15, 0
	addi.d	$t5, $a2, 2
	add.d	$a7, $t5, $a7
	alsl.d	$a7, $t2, $a7, 1
	srli.d	$a7, $a7, 2
	ori	$t7, $zero, 2080
	stx.h	$a7, $t6, $t7
	ori	$t7, $zero, 2052
	stx.h	$a7, $t6, $t7
	add.d	$a7, $t2, $a2
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	ori	$t7, $t8, 272
	stx.h	$a7, $a5, $t7
	ori	$t7, $t8, 244
	stx.h	$a7, $a5, $t7
	add.d	$a7, $t5, $t2
	alsl.d	$a2, $a2, $a7, 1
	srli.d	$a2, $a2, 2
	ori	$a7, $zero, 2112
	stx.h	$a2, $t6, $a7
	ori	$a7, $zero, 2084
	stx.h	$a2, $t6, $a7
	ori	$a2, $zero, 2148
	stx.h	$t4, $t6, $a2
	ori	$a2, $t8, 308
	stx.h	$t4, $a5, $a2
	ori	$a2, $zero, 2144
	stx.h	$t4, $t6, $a2
	ori	$a2, $zero, 2116
	stx.h	$t4, $t6, $a2
	ori	$a2, $t8, 276
	stx.h	$t4, $a5, $a2
	ori	$a2, $t8, 304
	stx.h	$t4, $a5, $a2
.LBB0_50:
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sltui	$a2, $a2, 1
	xori	$a6, $a6, 1
	or	$a2, $a6, $a2
	bnez	$a2, .LBB0_52
# %bb.51:
	bstrpick.d	$a2, $t4, 15, 0
	bstrpick.d	$a6, $t3, 15, 0
	bstrpick.d	$t1, $t1, 15, 0
	addi.d	$t3, $t1, 2
	add.d	$a7, $t3, $a2
	alsl.d	$a7, $a6, $a7, 1
	srli.d	$a7, $a7, 2
	ori	$t2, $zero, 2352
	stx.h	$a7, $a5, $t2
	bstrpick.d	$t2, $t0, 15, 0
	addi.d	$t5, $t2, 2
	add.d	$t0, $t5, $a6
	alsl.d	$t0, $t1, $t0, 1
	srli.d	$t0, $t0, 2
	st.h	$t0, $t6, 96
	ori	$t4, $zero, 2320
	stx.h	$t0, $a5, $t4
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$t4, $t4, 15, 0
	alsl.d	$t3, $t2, $t3, 1
	add.d	$t3, $t3, $t4
	srli.d	$t3, $t3, 2
	ori	$t7, $zero, 2356
	stx.h	$t3, $a5, $t7
	st.h	$t3, $t6, 64
	ori	$t7, $zero, 2288
	stx.h	$t3, $a5, $t7
	bstrpick.d	$t7, $a4, 15, 0
	add.d	$a4, $t5, $t7
	alsl.d	$a4, $t4, $a4, 1
	srli.d	$a4, $a4, 2
	st.h	$a4, $t6, 100
	ori	$t5, $zero, 2324
	stx.h	$a4, $a5, $t5
	st.h	$a4, $t6, 32
	ori	$t5, $zero, 2256
	stx.h	$a4, $a5, $t5
	bstrpick.d	$t5, $a3, 15, 0
	add.d	$a3, $t4, $t5
	alsl.d	$a3, $t7, $a3, 1
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.h	$a3, $t6, 68
	ori	$t8, $zero, 2292
	stx.h	$a3, $a5, $t8
	st.h	$a3, $t6, 0
	bstrpick.d	$t8, $a1, 15, 0
	add.d	$a1, $t7, $t8
	alsl.d	$a1, $t5, $a1, 1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.h	$a1, $t6, 36
	ori	$fp, $zero, 2260
	stx.h	$a1, $a5, $fp
	bstrpick.d	$a0, $a0, 15, 0
	add.d	$fp, $t5, $a0
	alsl.d	$fp, $t8, $fp, 1
	addi.d	$fp, $fp, 2
	srli.d	$fp, $fp, 2
	st.h	$fp, $t6, 4
	add.d	$s0, $t7, $t4
	addi.d	$s0, $s0, 1
	srli.d	$s0, $s0, 1
	st.h	$s0, $t6, 576
	ori	$s1, $zero, 2768
	stx.h	$s0, $a5, $s1
	add.d	$t7, $t5, $t7
	addi.d	$t7, $t7, 1
	srli.d	$t7, $t7, 1
	ori	$s0, $zero, 2836
	stx.h	$t7, $a5, $s0
	st.h	$t7, $t6, 512
	add.d	$t5, $t8, $t5
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	st.h	$t5, $t6, 580
	ori	$t7, $zero, 2772
	stx.h	$t5, $a5, $t7
	add.d	$a0, $t8, $a0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $t6, 516
	st.h	$a4, $t6, 608
	ori	$a0, $zero, 2800
	stx.h	$a4, $a5, $a0
	ori	$a0, $zero, 2868
	stx.h	$a3, $a5, $a0
	st.h	$a3, $t6, 544
	st.h	$a1, $t6, 612
	ori	$a0, $zero, 2804
	stx.h	$a1, $a5, $a0
	st.h	$fp, $t6, 548
	ori	$a0, $zero, 2832
	stx.h	$t3, $a5, $a0
	ori	$a0, $zero, 2864
	stx.h	$t0, $a5, $a0
	add.d	$a0, $t2, $t4
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$t4, $zero, 3316
	stx.h	$a0, $a5, $t4
	ori	$t4, $zero, 3280
	stx.h	$a0, $a5, $t4
	st.h	$a4, $t6, 1060
	st.h	$a4, $t6, 1024
	ori	$a0, $zero, 3284
	stx.h	$a3, $a5, $a0
	st.h	$a1, $t6, 1028
	add.d	$a0, $t1, $t2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $zero, 3348
	stx.h	$a0, $a5, $a1
	ori	$a1, $zero, 3312
	stx.h	$a0, $a5, $a1
	st.h	$t3, $t6, 1092
	st.h	$t3, $t6, 1056
	add.d	$a0, $a6, $t1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $zero, 3380
	stx.h	$a0, $a5, $a1
	ori	$a1, $zero, 3344
	stx.h	$a0, $a5, $a1
	st.h	$t0, $t6, 1124
	st.h	$t0, $t6, 1088
	add.d	$a0, $a6, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $zero, 3376
	stx.h	$a0, $a5, $a1
	st.h	$a7, $t6, 1120
.LBB0_52:
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	intrapred_luma, .Lfunc_end0-intrapred_luma
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred_luma_16x16
.LCPI1_0:
	.word	4294967293                      # 0xfffffffd
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI1_1:
	.word	4294967289                      # 0xfffffff9
	.word	4294967290                      # 0xfffffffa
	.word	4294967291                      # 0xfffffffb
	.word	4294967292                      # 0xfffffffc
.LCPI1_2:
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI1_3:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.text
	.globl	intrapred_luma_16x16
	.p2align	5
	.type	intrapred_luma_16x16,@function
intrapred_luma_16x16:                   # @intrapred_luma_16x16
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$s2, $a0, 6440
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s3, 0
	move	$s4, $zero
	ld.w	$fp, $a0, 12
	addi.w	$s0, $zero, -1
	pcalau12i	$s5, %pc_hi20(getNeighbour)
	addi.d	$s6, $sp, 16
	ori	$s7, $zero, 408
	move	$s1, $s0
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s5, %pc_lo12(getNeighbour)
	add.d	$a4, $s6, $s4
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	addi.d	$s4, $s4, 24
	addi.w	$s1, $s1, 1
	bne	$s4, $s7, .LBB1_1
# %bb.2:
	ld.d	$a5, $s5, %pc_lo12(getNeighbour)
	addi.w	$a2, $zero, -1
	addi.d	$a4, $sp, 424
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 272
	ld.w	$a0, $sp, 424
	beqz	$a1, .LBB1_5
# %bb.3:
	ld.d	$a1, $s3, 0
	beqz	$a0, .LBB1_6
# %bb.4:
	ld.w	$a0, $sp, 428
	ldptr.d	$a2, $a1, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	b	.LBB1_7
.LBB1_5:
	ld.w	$a3, $sp, 40
	ld.w	$a1, $sp, 16
	bnez	$a0, .LBB1_14
	b	.LBB1_17
.LBB1_6:
	move	$a0, $zero
.LBB1_7:
	move	$a2, $zero
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 16
	ori	$a5, $zero, 384
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_10 Depth=1
	ld.w	$a6, $a6, 28
	ldptr.d	$a7, $a1, 14240
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a7, $a6
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	addi.d	$a2, $a2, 24
	and	$a3, $a6, $a3
	beq	$a2, $a5, .LBB1_12
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a4, $a2
	ld.w	$a7, $a6, 24
	bnez	$a7, .LBB1_8
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	move	$a6, $zero
	b	.LBB1_9
.LBB1_12:
	ld.w	$a2, $sp, 16
	beqz	$a2, .LBB1_16
# %bb.13:
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	beqz	$a0, .LBB1_17
.LBB1_14:
	ld.w	$a2, $sp, 444
	ld.w	$a5, $sp, 440
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $s2, $a2
	alsl.d	$a6, $a5, $a4, 1
	slli.d	$a7, $a5, 1
	ldx.hu	$a2, $a4, $a7
	ld.hu	$a5, $a6, 2
	ld.hu	$t0, $a6, 4
	ld.hu	$t1, $a6, 6
	add.d	$a2, $a2, $a5
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t1
	ld.hu	$a5, $a6, 8
	ld.hu	$t0, $a6, 10
	ld.hu	$t1, $a6, 12
	ld.hu	$t2, $a6, 14
	add.d	$a2, $a2, $a5
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t1
	add.d	$a2, $a2, $t2
	ld.hu	$a5, $a6, 16
	ld.hu	$t0, $a6, 18
	ld.hu	$t1, $a6, 20
	ld.hu	$t2, $a6, 22
	add.d	$a2, $a2, $a5
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t1
	add.d	$a2, $a2, $t2
	ld.hu	$a5, $a6, 24
	ld.hu	$t0, $a6, 26
	ld.hu	$t1, $a6, 28
	ld.hu	$t2, $a6, 30
	add.d	$a2, $a2, $a5
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t1
	add.w	$a2, $a2, $t2
	bnez	$a3, .LBB1_19
# %bb.15:
	move	$a5, $zero
	vld	$vr0, $a6, 16
	vldx	$vr1, $a4, $a7
	addi.d	$a2, $a2, 8
	bstrpick.d	$a4, $a2, 31, 4
	vst	$vr0, $sp, 464
	vst	$vr1, $sp, 448
	b	.LBB1_23
.LBB1_16:
	move	$a1, $zero
	bnez	$a0, .LBB1_14
.LBB1_17:                               # %.thread125
	beqz	$a3, .LBB1_30
# %bb.18:
	move	$a2, $zero
.LBB1_19:                               # %.preheader137
	ld.w	$a3, $sp, 60
	ld.w	$a4, $sp, 56
	ld.w	$a5, $sp, 84
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 80
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 108
	ldx.hu	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 104
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 132
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 128
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 156
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 152
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 180
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 176
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 204
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 200
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 228
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 224
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 252
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 248
	ldx.d	$a5, $s2, $a5
	ld.w	$a7, $sp, 276
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 272
	ldx.d	$a5, $s2, $a5
	add.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 300
	slli.d	$a6, $a6, 1
	ldx.hu	$a5, $a5, $a6
	ld.w	$a6, $sp, 324
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s2, $a4
	ld.w	$a7, $sp, 296
	slli.d	$a6, $a6, 3
	ld.w	$t0, $sp, 320
	ldx.d	$a6, $s2, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a4, $a4, $a7
	slli.d	$a7, $t0, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a3, $a3, $a5
	add.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 348
	add.d	$a3, $a3, $a6
	ld.w	$a5, $sp, 344
	ld.w	$a6, $sp, 372
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s2, $a4
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 368
	ldx.d	$a6, $s2, $a6
	ldx.hu	$a4, $a4, $a5
	ld.w	$a5, $sp, 396
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	ld.w	$a7, $sp, 420
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s2, $a5
	ld.w	$t0, $sp, 392
	slli.d	$a7, $a7, 3
	ld.w	$t1, $sp, 416
	ldx.d	$a7, $s2, $a7
	slli.d	$t0, $t0, 1
	ldx.hu	$a5, $a5, $t0
	slli.d	$t0, $t1, 1
	ldx.hu	$a7, $a7, $t0
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $a6
	add.d	$a3, $a3, $a5
	add.w	$a3, $a3, $a7
	beqz	$a0, .LBB1_21
# %bb.20:                               # %.thread
	ld.w	$a4, $sp, 444
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s2, $a4
	ld.w	$a5, $sp, 440
	add.d	$a2, $a2, $a3
	alsl.d	$a3, $a5, $a4, 1
	slli.d	$a5, $a5, 1
	vldx	$vr0, $a4, $a5
	vld	$vr1, $a3, 16
	addi.d	$a2, $a2, 16
	bstrpick.d	$a4, $a2, 31, 5
	vst	$vr0, $sp, 448
	vst	$vr1, $sp, 464
	b	.LBB1_22
.LBB1_21:
	addi.d	$a2, $a3, 8
	bstrpick.d	$a4, $a2, 31, 4
.LBB1_22:                               # %vector.body
	ld.w	$a2, $sp, 60
	ld.w	$a3, $sp, 84
	slli.d	$a2, $a2, 3
	slli.d	$a3, $a3, 3
	ld.w	$a5, $sp, 56
	ld.w	$a6, $sp, 80
	ldx.d	$a2, $s2, $a2
	ldx.d	$a3, $s2, $a3
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a2, $a2, $a5
	ldx.h	$a3, $a3, $a6
	ld.w	$a5, $sp, 108
	ld.w	$a6, $sp, 132
	st.h	$a2, $sp, 480
	st.h	$a3, $sp, 482
	slli.d	$a2, $a5, 3
	slli.d	$a3, $a6, 3
	ld.w	$a5, $sp, 104
	ld.w	$a6, $sp, 128
	ldx.d	$a2, $s2, $a2
	ldx.d	$a3, $s2, $a3
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a2, $a2, $a5
	ldx.h	$a3, $a3, $a6
	ld.w	$a5, $sp, 156
	ld.w	$a6, $sp, 180
	st.h	$a2, $sp, 484
	st.h	$a3, $sp, 486
	slli.d	$a2, $a5, 3
	slli.d	$a3, $a6, 3
	ld.w	$a5, $sp, 152
	ld.w	$a6, $sp, 176
	ldx.d	$a2, $s2, $a2
	ldx.d	$a3, $s2, $a3
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a2, $a2, $a5
	ldx.h	$a3, $a3, $a6
	ld.w	$a5, $sp, 204
	ld.w	$a6, $sp, 228
	st.h	$a2, $sp, 488
	st.h	$a3, $sp, 490
	slli.d	$a2, $a5, 3
	slli.d	$a3, $a6, 3
	ld.w	$a5, $sp, 200
	ld.w	$a6, $sp, 224
	ldx.d	$a2, $s2, $a2
	ldx.d	$a3, $s2, $a3
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a2, $a2, $a5
	ldx.h	$a3, $a3, $a6
	ld.w	$a5, $sp, 252
	ld.w	$a6, $sp, 276
	st.h	$a2, $sp, 492
	st.h	$a3, $sp, 494
	slli.d	$a2, $a5, 3
	slli.d	$a3, $a6, 3
	ld.w	$a5, $sp, 248
	ld.w	$a6, $sp, 272
	ldx.d	$a2, $s2, $a2
	ldx.d	$a3, $s2, $a3
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a2, $a2, $a5
	ldx.h	$a3, $a3, $a6
	ld.w	$a5, $sp, 300
	ld.w	$a6, $sp, 324
	st.h	$a2, $sp, 496
	st.h	$a3, $sp, 498
	slli.d	$a2, $a5, 3
	slli.d	$a3, $a6, 3
	ld.w	$a5, $sp, 296
	ld.w	$a6, $sp, 320
	ldx.d	$a2, $s2, $a2
	ldx.d	$a3, $s2, $a3
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a2, $a2, $a5
	ldx.h	$a3, $a3, $a6
	ld.w	$a5, $sp, 348
	ld.w	$a6, $sp, 372
	st.h	$a2, $sp, 500
	st.h	$a3, $sp, 502
	slli.d	$a2, $a5, 3
	slli.d	$a3, $a6, 3
	ld.w	$a5, $sp, 344
	ld.w	$a6, $sp, 368
	ldx.d	$a2, $s2, $a2
	ldx.d	$a3, $s2, $a3
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ld.w	$a7, $sp, 396
	ld.w	$t0, $sp, 420
	ldx.h	$a2, $a2, $a5
	ldx.h	$a3, $a3, $a6
	slli.d	$a5, $a7, 3
	slli.d	$a6, $t0, 3
	ld.w	$a7, $sp, 392
	ldx.d	$a5, $s2, $a5
	ld.w	$t0, $sp, 416
	ldx.d	$a6, $s2, $a6
	slli.d	$a7, $a7, 1
	ldx.h	$a5, $a5, $a7
	slli.d	$a7, $t0, 1
	ldx.h	$a6, $a6, $a7
	st.h	$a2, $sp, 504
	st.h	$a3, $sp, 506
	st.h	$a5, $sp, 508
	st.h	$a6, $sp, 510
	ori	$a5, $zero, 1
.LBB1_23:                               # %.loopexit136
	ld.d	$a2, $s3, 0
	ori	$a6, $zero, 32
	lu12i.w	$a3, 1
	ori	$a7, $a3, 720
	addi.d	$t0, $sp, 448
	ori	$t1, $zero, 64
	.p2align	4, , 16
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 448
	vld	$vr1, $sp, 464
	vstx	$vr0, $a2, $a7
	add.d	$a2, $a2, $a7
	vst	$vr1, $a2, 16
	ld.d	$a2, $s3, 0
	ldx.h	$t2, $a6, $t0
	add.d	$t3, $a2, $a7
	st.h	$t2, $t3, 512
	st.h	$a4, $t3, 1024
	st.h	$t2, $t3, 514
	st.h	$a4, $t3, 1026
	st.h	$t2, $t3, 516
	st.h	$a4, $t3, 1028
	st.h	$t2, $t3, 518
	st.h	$a4, $t3, 1030
	st.h	$t2, $t3, 520
	st.h	$a4, $t3, 1032
	st.h	$t2, $t3, 522
	st.h	$a4, $t3, 1034
	st.h	$t2, $t3, 524
	st.h	$a4, $t3, 1036
	st.h	$t2, $t3, 526
	st.h	$a4, $t3, 1038
	st.h	$t2, $t3, 528
	st.h	$a4, $t3, 1040
	st.h	$t2, $t3, 530
	st.h	$a4, $t3, 1042
	st.h	$t2, $t3, 532
	st.h	$a4, $t3, 1044
	st.h	$t2, $t3, 534
	st.h	$a4, $t3, 1046
	st.h	$t2, $t3, 536
	st.h	$a4, $t3, 1048
	st.h	$t2, $t3, 538
	st.h	$a4, $t3, 1050
	st.h	$t2, $t3, 540
	st.h	$a4, $t3, 1052
	st.h	$t2, $t3, 542
	st.h	$a4, $t3, 1054
	addi.d	$a6, $a6, 2
	addi.d	$a7, $a7, 32
	bne	$a6, $t1, .LBB1_24
# %bb.25:
	sltui	$a0, $a0, 1
	xori	$a4, $a5, 1
	or	$a0, $a0, $a4
	bnez	$a0, .LBB1_29
# %bb.26:
	beqz	$a1, .LBB1_29
# %bb.27:                               # %.peel.next
	ld.w	$a0, $sp, 444
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s2, $a0
	ld.w	$a4, $sp, 440
	alsl.d	$a0, $a4, $a1, 1
	ld.hu	$a5, $a0, 16
	ld.hu	$a6, $a0, 12
	ld.w	$a7, $sp, 252
	sub.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 204
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s2, $a7
	ld.w	$t0, $sp, 248
	slli.d	$a6, $a6, 3
	ld.w	$t1, $sp, 200
	ldx.d	$a6, $s2, $a6
	slli.d	$t0, $t0, 1
	ldx.hu	$a7, $a7, $t0
	slli.d	$t0, $t1, 1
	ldx.hu	$a6, $a6, $t0
	ld.w	$t0, $sp, 276
	ld.hu	$t1, $a0, 18
	ld.w	$t2, $sp, 272
	ld.w	$t3, $sp, 180
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $s2, $t0
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 3
	ld.w	$t4, $sp, 176
	ldx.d	$t3, $s2, $t3
	ldx.hu	$t0, $t0, $t2
	ld.hu	$t2, $a0, 10
	slli.d	$t4, $t4, 1
	ldx.hu	$t3, $t3, $t4
	sub.d	$a6, $a7, $a6
	sub.d	$a7, $t1, $t2
	alsl.d	$a5, $a7, $a5, 1
	sub.d	$a7, $t0, $t3
	alsl.d	$a6, $a7, $a6, 1
	ld.w	$a7, $sp, 300
	ld.hu	$t0, $a0, 20
	ld.hu	$t1, $a0, 8
	ld.w	$t2, $sp, 156
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s2, $a7
	ld.w	$t3, $sp, 296
	slli.d	$t2, $t2, 3
	ld.w	$t4, $sp, 152
	ldx.d	$t2, $s2, $t2
	slli.d	$t3, $t3, 1
	ldx.hu	$a7, $a7, $t3
	slli.d	$t3, $t4, 1
	ldx.hu	$t2, $t2, $t3
	sub.d	$t0, $t0, $t1
	alsl.d	$t0, $t0, $t0, 1
	add.d	$a5, $t0, $a5
	sub.d	$a7, $a7, $t2
	alsl.d	$a7, $a7, $a7, 1
	ld.w	$t0, $sp, 324
	ld.hu	$t1, $a0, 22
	ld.w	$t2, $sp, 320
	ld.w	$t3, $sp, 132
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $s2, $t0
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 3
	ld.w	$t4, $sp, 128
	ldx.d	$t3, $s2, $t3
	ldx.hu	$t0, $t0, $t2
	ld.hu	$t2, $a0, 6
	slli.d	$t4, $t4, 1
	ldx.hu	$t3, $t3, $t4
	add.d	$a6, $a7, $a6
	sub.d	$a7, $t1, $t2
	alsl.d	$a5, $a7, $a5, 2
	sub.d	$a7, $t0, $t3
	alsl.d	$a6, $a7, $a6, 2
	ld.hu	$a7, $a0, 24
	ld.w	$t0, $sp, 348
	ld.hu	$t1, $a0, 4
	ld.w	$t2, $sp, 344
	ld.w	$t3, $sp, 108
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $s2, $t0
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 3
	ld.w	$t4, $sp, 104
	ldx.d	$t3, $s2, $t3
	ldx.hu	$t0, $t0, $t2
	ld.w	$t2, $sp, 36
	slli.d	$t4, $t4, 1
	ldx.hu	$t3, $t3, $t4
	sub.d	$a7, $a7, $t1
	alsl.d	$a7, $a7, $a7, 2
	add.d	$a7, $a7, $a5
	sub.d	$a5, $t0, $t3
	alsl.d	$a5, $a5, $a5, 2
	ld.w	$t0, $sp, 372
	add.d	$a6, $a5, $a6
	ld.hu	$a5, $a0, 26
	ld.hu	$t1, $a0, 2
	slli.d	$t0, $t0, 3
	ld.w	$t3, $sp, 368
	ldx.d	$t0, $s2, $t0
	ld.w	$t4, $sp, 84
	sub.d	$t1, $a5, $t1
	slli.d	$a5, $t3, 1
	ldx.hu	$t0, $t0, $a5
	slli.d	$a5, $t4, 3
	ld.w	$t3, $sp, 80
	ldx.d	$t4, $s2, $a5
	ld.w	$a5, $sp, 32
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t4, $t3
	ori	$t4, $zero, 6
	mul.d	$t1, $t1, $t4
	add.d	$a7, $t1, $a7
	sub.d	$t0, $t0, $t3
	ld.hu	$t1, $a0, 28
	slli.d	$a4, $a4, 1
	ldx.hu	$a1, $a1, $a4
	mul.d	$a4, $t0, $t4
	ld.w	$t0, $sp, 396
	add.d	$a4, $a4, $a6
	sub.d	$a1, $t1, $a1
	ld.w	$a6, $sp, 60
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $s2, $t0
	ld.w	$t1, $sp, 392
	slli.d	$a6, $a6, 3
	ld.w	$t3, $sp, 56
	ldx.d	$a6, $s2, $a6
	slli.d	$t1, $t1, 1
	ldx.hu	$t0, $t0, $t1
	slli.d	$t1, $t3, 1
	ldx.hu	$a6, $a6, $t1
	slli.d	$t1, $a1, 3
	sub.d	$a1, $t1, $a1
	add.w	$a1, $a1, $a7
	sub.d	$a6, $t0, $a6
	slli.d	$a7, $a6, 3
	ld.w	$t0, $sp, 420
	sub.d	$a6, $a7, $a6
	ld.hu	$a7, $a0, 30
	ldx.d	$a0, $s2, $t2
	slli.d	$t0, $t0, 3
	ld.w	$t1, $sp, 416
	ldx.d	$t0, $s2, $t0
	slli.d	$a5, $a5, 1
	ldx.hu	$a0, $a0, $a5
	slli.d	$a5, $t1, 1
	ldx.hu	$a5, $t0, $a5
	add.w	$a4, $a6, $a4
	sub.d	$a6, $a7, $a0
	alsl.d	$a1, $a6, $a1, 3
	sub.d	$a0, $a5, $a0
	alsl.d	$a0, $a0, $a4, 3
	alsl.d	$a1, $a1, $a1, 2
	addi.w	$a1, $a1, 32
	srai.d	$a1, $a1, 6
	alsl.d	$a0, $a0, $a0, 2
	addi.w	$a0, $a0, 32
	srai.d	$a0, $a0, 6
	add.d	$a4, $a5, $a7
	lu12i.w	$a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI1_0)
	ori	$a5, $a5, 3232
	add.d	$a5, $a2, $a5
	vreplgr2vr.w	$vr4, $a1
	vmul.w	$vr0, $vr4, $vr0
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_1)
	pcalau12i	$a1, %pc_hi20(.LCPI1_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_2)
	pcalau12i	$a1, %pc_hi20(.LCPI1_3)
	vld	$vr5, $a1, %pc_lo12(.LCPI1_3)
	vmul.w	$vr1, $vr4, $vr1
	vldrepl.w	$vr2, $a5, 0
	vmul.w	$vr3, $vr4, $vr3
	vmul.w	$vr4, $vr4, $vr5
	slli.d	$a1, $a0, 3
	sub.d	$a1, $a0, $a1
	alsl.d	$a1, $a4, $a1, 4
	addi.d	$a1, $a1, 16
	addi.w	$a4, $zero, -512
	ori	$a5, $a3, 2768
	ori	$a3, $a3, 2784
	.p2align	4, , 16
.LBB1_28:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	vreplgr2vr.w	$vr5, $a1
	add.d	$a6, $a2, $a4
	vadd.w	$vr6, $vr5, $vr0
	vadd.w	$vr7, $vr5, $vr1
	vsrai.w	$vr7, $vr7, 5
	vsrai.w	$vr6, $vr6, 5
	vmaxi.w	$vr6, $vr6, 0
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr7, $vr7, $vr2
	vmin.w	$vr6, $vr6, $vr2
	vpickev.h	$vr6, $vr6, $vr7
	vstx	$vr6, $a6, $a5
	vadd.w	$vr6, $vr5, $vr3
	vadd.w	$vr5, $vr5, $vr4
	vsrai.w	$vr5, $vr5, 5
	vsrai.w	$vr6, $vr6, 5
	vmaxi.w	$vr6, $vr6, 0
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr2
	vmin.w	$vr6, $vr6, $vr2
	vpickev.h	$vr5, $vr6, $vr5
	vstx	$vr5, $a6, $a3
	addi.d	$a4, $a4, 32
	add.d	$a1, $a1, $a0
	bnez	$a4, .LBB1_28
.LBB1_29:                               # %.loopexit
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB1_30:                               # %.thread122
	ld.d	$a2, $s3, 0
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3224
	ldx.w	$a4, $a2, $a3
	move	$a5, $zero
	b	.LBB1_23
.Lfunc_end1:
	.size	intrapred_luma_16x16, .Lfunc_end1-intrapred_luma_16x16
                                        # -- End function
	.globl	dct_luma_16x16                  # -- Begin function dct_luma_16x16
	.p2align	5
	.type	dct_luma_16x16,@function
dct_luma_16x16:                         # @dct_luma_16x16
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
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 12
	ldptr.d	$a1, $a3, 14224
	ori	$a2, $zero, 536
	mul.d	$a2, $a4, $a2
	add.d	$a6, $a1, $a2
	ldptr.d	$a4, $a3, 14168
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3164
	ldx.w	$a1, $a3, $a1
	ld.w	$a2, $a6, 8
	ld.d	$a4, $a4, 0
	sub.w	$a5, $zero, $a1
	move	$s3, $zero
	bne	$a2, $a5, .LBB2_2
# %bb.1:
	ldptr.w	$a5, $a3, 15540
	addi.d	$a5, $a5, -1
	sltui	$s3, $a5, 1
.LBB2_2:
	ld.d	$s0, $a4, 0
	ld.d	$s1, $a4, 8
	ld.w	$t3, $a6, 428
	pcalau12i	$a4, %got_pc_hi20(qp_per_matrix)
	ld.d	$a4, $a4, %got_pc_lo12(qp_per_matrix)
	ld.d	$a4, $a4, 0
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$s7, $a4, $a1
	pcalau12i	$a2, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a2, $a2, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a2, $a2, 0
	ldx.w	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(LevelScale4x4Luma)
	ld.d	$a2, $a2, %got_pc_lo12(LevelScale4x4Luma)
	ld.d	$a2, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $a2, $a1
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a2, $a2, %got_pc_lo12(InvLevelScale4x4Luma)
	ld.d	$a2, $a2, 0
	ld.d	$a2, $a2, 8
	ldx.d	$a1, $a2, $a1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(LevelOffset4x4Luma)
	ld.d	$a1, $a1, %got_pc_lo12(LevelOffset4x4Luma)
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 8
	slli.d	$a2, $s7, 3
	ldx.d	$a1, $a1, $a2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a2, $a3, 196
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a4, $a1, %pc_lo12(imgY_org)
	ld.w	$a1, $a3, 192
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a5, $a0, 9
	add.d	$a5, $a5, $a3
	lu12i.w	$a0, 1
	ori	$a6, $a0, 720
	add.d	$t4, $a5, $a6
	alsl.d	$a2, $a2, $a4, 3
	ori	$a4, $a0, 744
	add.d	$a4, $a5, $a4
	pcalau12i	$a5, %pc_hi20(dct_luma_16x16.M1)
	addi.d	$t8, $a5, %pc_lo12(dct_luma_16x16.M1)
	addi.d	$a5, $t8, 32
	slli.d	$a6, $a1, 1
	pcalau12i	$a7, %pc_hi20(dct_luma_16x16.M0)
	addi.d	$fp, $a7, %pc_lo12(dct_luma_16x16.M0)
	move	$a7, $zero
	vrepli.b	$vr0, 0
	ori	$t0, $zero, 16
	.p2align	4, , 16
.LBB2_3:                                # %vector.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a2, 0
	alsl.d	$t2, $a1, $t1, 1
	slli.d	$t5, $a7, 6
	bstrpick.d	$t5, $t5, 37, 8
	slli.d	$t5, $t5, 8
	ldx.d	$t1, $t1, $a6
	add.d	$t5, $fp, $t5
	andi	$t6, $a7, 3
	ld.d	$t7, $a4, -24
	vinsgr2vr.d	$vr1, $t1, 0
	slli.d	$t1, $t6, 4
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $t7, 0
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vstx	$vr1, $t5, $t1
	ld.d	$t1, $t2, 8
	ld.d	$t7, $a4, -16
	alsl.d	$t5, $t6, $t5, 4
	vinsgr2vr.d	$vr2, $t1, 0
	vilvl.h	$vr2, $vr0, $vr2
	vinsgr2vr.d	$vr3, $t7, 0
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr2, $vr2, $vr3
	vst	$vr2, $t5, 64
	ld.d	$t1, $t2, 16
	ld.d	$t6, $a4, -8
	vst	$vr1, $a5, -32
	vinsgr2vr.d	$vr1, $t1, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr3, $t6, 0
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr1, $vr1, $vr3
	vst	$vr1, $t5, 128
	ld.d	$t1, $t2, 24
	vst	$vr2, $a5, -16
	ld.d	$t2, $a4, 0
	vst	$vr1, $a5, 0
	vinsgr2vr.d	$vr1, $t1, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $t2, 0
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $a5, 16
	vst	$vr1, $t5, 192
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, 64
	addi.d	$a4, $a4, 32
	bne	$a7, $t0, .LBB2_3
# %bb.4:
	sltui	$a0, $t3, 1
	pcalau12i	$a1, %pc_hi20(FIELD_SCAN)
	addi.d	$a1, $a1, %pc_lo12(FIELD_SCAN)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(SNGL_SCAN)
	addi.d	$a2, $a2, %pc_lo12(SNGL_SCAN)
	maskeqz	$a0, $a2, $a0
	or	$t5, $a0, $a1
	addi.d	$t6, $s7, 15
	pcalau12i	$a0, %pc_hi20(dct_luma_16x16.M4)
	addi.d	$t7, $a0, %pc_lo12(dct_luma_16x16.M4)
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	beqz	$s3, .LBB2_11
# %bb.5:                                # %.preheader488.preheader
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 64
	ld.w	$a2, $fp, 128
	ld.w	$a4, $fp, 192
	st.w	$a0, $t7, 0
	st.w	$a1, $t7, 4
	st.w	$a2, $t7, 8
	st.w	$a4, $t7, 12
	ld.w	$a0, $fp, 256
	ld.w	$a1, $fp, 320
	ld.w	$a2, $fp, 384
	ld.w	$a4, $fp, 448
	st.w	$a0, $t7, 16
	st.w	$a1, $t7, 20
	st.w	$a2, $t7, 24
	st.w	$a4, $t7, 28
	ld.w	$a0, $fp, 512
	ld.w	$a1, $fp, 576
	ld.w	$a2, $fp, 640
	ld.w	$a4, $fp, 704
	st.w	$a0, $t7, 32
	st.w	$a1, $t7, 36
	st.w	$a2, $t7, 40
	st.w	$a4, $t7, 44
	ld.w	$a0, $fp, 768
	ld.w	$a1, $fp, 832
	ld.w	$a2, $fp, 896
	ld.w	$a4, $fp, 960
	st.w	$a0, $t7, 48
	st.w	$a1, $t7, 52
	st.w	$a2, $t7, 56
	st.w	$a4, $t7, 60
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a2, $a0, %got_pc_lo12(input)
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$a2, $a2, 0
	addi.d	$a6, $zero, -1
	ori	$a4, $zero, 2063
	ori	$a5, $zero, 32
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, 2
	beq	$a0, $a5, .LBB2_22
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	add.d	$a7, $t5, $a0
	ld.bu	$a7, $a7, 1
	ldx.bu	$t0, $t5, $a0
	alsl.d	$a7, $a7, $t7, 4
	slli.d	$t0, $t0, 2
	ldx.w	$a7, $a7, $t0
	ldptr.w	$t1, $a2, 4008
	srai.d	$t0, $a7, 31
	xor	$t2, $a7, $t0
	sub.w	$t0, $t2, $t0
	beqz	$t1, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB2_10
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=1
	ld.w	$t1, $a3, 36
	slti	$t1, $t1, 10
	sltu	$t2, $t0, $a4
	masknez	$t3, $a4, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	addi.d	$a6, $a6, 1
	beqz	$t0, .LBB2_6
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	slti	$a7, $a7, 0
	sub.d	$t1, $zero, $t0
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $t1, $a7
	or	$a7, $a7, $t0
	slli.d	$t0, $a1, 2
	stx.w	$a7, $s0, $t0
	stx.w	$a6, $s1, $t0
	addi.w	$a1, $a1, 1
	addi.d	$a6, $zero, -1
	b	.LBB2_6
.LBB2_11:                               # %.preheader499.preheader
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	move	$a6, $zero
	addi.d	$t3, $fp, 60
	.p2align	4, , 16
.LBB2_12:                               # %.preheader499
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_13:                               # %.preheader498
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s3, $t3, $s0
	ld.w	$a0, $s3, -60
	ld.w	$a1, $s3, -48
	ld.w	$a2, $s3, -56
	ld.w	$a4, $s3, -52
	add.d	$a5, $a1, $a0
	addi.w	$a6, $a5, 0
	add.d	$a7, $a4, $a2
	addi.w	$t0, $a7, 0
	sub.w	$s4, $a2, $a4
	sub.w	$s5, $a0, $a1
	add.d	$s2, $a7, $a5
	ld.w	$a0, $s3, -44
	ld.w	$a1, $s3, -32
	ld.w	$a2, $s3, -40
	ld.w	$a4, $s3, -36
	sub.d	$a5, $a6, $t0
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$t1, $s5, $s4, 1
	add.d	$a5, $a1, $a0
	add.d	$a7, $a4, $a2
	sub.d	$s6, $a2, $a4
	addi.w	$a4, $s6, 0
	sub.d	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	add.d	$a2, $a7, $a5
	sub.d	$t0, $a5, $a7
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$t2, $a1, $s6, 1
	ld.w	$a1, $s3, -28
	ld.w	$a5, $s3, -16
	ld.w	$a7, $s3, -24
	ld.w	$t8, $s3, -20
	slli.d	$a4, $a4, 1
	sub.d	$s7, $a0, $a4
	add.d	$a0, $a5, $a1
	add.d	$a4, $t8, $a7
	sub.d	$fp, $a7, $t8
	addi.w	$t8, $fp, 0
	sub.d	$a1, $a1, $a5
	addi.w	$a7, $a1, 0
	add.d	$s8, $a4, $a0
	sub.d	$ra, $a0, $a4
	slli.d	$a0, $t8, 1
	ld.w	$a4, $s3, -12
	ldx.w	$a5, $t3, $s0
	ld.w	$t8, $s3, -8
	ld.w	$t3, $s3, -4
	sub.d	$a1, $a1, $a0
	add.d	$a0, $a5, $a4
	addi.w	$t4, $a0, 0
	add.d	$a6, $t3, $t8
	sub.w	$t8, $t8, $t3
	addi.w	$t3, $a6, 0
	sub.w	$a4, $a4, $a5
	add.d	$a0, $a6, $a0
	sub.d	$a5, $t4, $t3
	add.d	$a6, $a0, $s2
	add.d	$t3, $s8, $a2
	add.d	$t4, $t3, $a6
	st.w	$t4, $s3, -60
	sub.d	$t4, $a2, $s8
	sub.d	$a6, $a6, $t3
	sub.d	$t3, $s2, $a0
	st.w	$a6, $s3, -28
	alsl.d	$a6, $t3, $t4, 1
	st.w	$a6, $s3, -44
	alsl.d	$a6, $a7, $fp, 1
	slli.d	$t4, $t4, 1
	sub.d	$t3, $t3, $t4
	alsl.d	$t4, $a4, $t8, 1
	st.w	$t3, $s3, -12
	add.d	$t3, $a6, $t2
	sub.d	$a6, $t2, $a6
	add.d	$s1, $t4, $t1
	sub.d	$t4, $t1, $t4
	add.d	$t1, $t3, $s1
	st.w	$t1, $s3, -56
	slli.d	$t1, $s4, 1
	sub.d	$t2, $s5, $t1
	sub.d	$t3, $s1, $t3
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t1, $t8, 1
	sub.d	$t1, $a4, $t1
	st.w	$t3, $s3, -24
	alsl.d	$t3, $t4, $a6, 1
	st.w	$t3, $s3, -40
	slli.d	$a6, $a6, 1
	sub.d	$a6, $t4, $a6
	st.w	$a6, $s3, -8
	add.d	$a6, $a5, $s1
	add.d	$t3, $ra, $t0
	add.d	$t4, $t3, $a6
	st.w	$t4, $s3, -52
	sub.d	$t4, $t0, $ra
	sub.d	$a6, $a6, $t3
	sub.d	$t3, $s1, $a5
	st.w	$a6, $s3, -20
	alsl.d	$a6, $t3, $t4, 1
	st.w	$a6, $s3, -36
	slli.d	$a6, $t4, 1
	sub.d	$a6, $t3, $a6
	st.w	$a6, $s3, -4
	add.d	$a6, $t1, $t2
	add.d	$t3, $a1, $s7
	add.d	$t4, $t3, $a6
	st.w	$t4, $s3, -48
	sub.d	$t4, $s7, $a1
	sub.d	$a6, $a6, $t3
	sub.d	$t3, $t2, $t1
	st.w	$a6, $s3, -16
	alsl.d	$a6, $t3, $t4, 1
	slli.d	$t4, $t4, 1
	sub.d	$t3, $t3, $t4
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	stx.w	$t3, $t4, $s0
	ori	$t4, $zero, 256
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s0, $s0, 64
	st.w	$a6, $s3, -32
	bne	$s0, $t4, .LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_12 Depth=1
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, 256
	ori	$t4, $zero, 4
	bne	$a6, $t4, .LBB2_12
# %bb.15:                               # %.preheader496
	alsl.w	$s0, $s5, $s4, 1
	alsl.w	$a6, $s3, $s6, 1
	alsl.w	$a7, $a7, $fp, 1
	alsl.w	$a4, $a4, $t8, 1
	st.w	$s2, $t7, 0
	st.w	$s1, $t7, 8
	st.w	$s0, $t7, 4
	st.w	$t2, $t7, 12
	st.w	$a2, $t7, 16
	st.w	$t0, $t7, 24
	st.w	$a6, $t7, 20
	st.w	$s7, $t7, 28
	st.w	$s8, $t7, 32
	st.w	$ra, $t7, 40
	st.w	$a7, $t7, 36
	st.w	$a1, $t7, 44
	st.w	$a0, $t7, 48
	st.w	$a5, $t7, 56
	st.w	$a4, $t7, 52
	st.w	$t1, $t7, 60
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $t3, 0
	ld.w	$a1, $t3, 64
	ld.w	$a2, $t3, 128
	ld.w	$a4, $t3, 192
	ld.w	$a5, $t3, 256
	ld.w	$a6, $t3, 320
	ld.w	$a7, $t3, 384
	ld.w	$t0, $t3, 448
	ld.w	$t1, $t3, 512
	ld.w	$t2, $t3, 576
	ld.w	$t8, $t3, 640
	ld.w	$fp, $t3, 704
	ld.w	$s0, $t3, 768
	ld.w	$s1, $t3, 832
	ld.w	$s2, $t3, 896
	ld.w	$s3, $t3, 960
	add.d	$s4, $a4, $a0
	add.d	$s5, $a2, $a1
	sub.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a4
	add.d	$s6, $s5, $s4
	sub.d	$a2, $s4, $s5
	add.d	$s4, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $t0, $a5
	add.d	$a4, $a7, $a6
	sub.d	$a6, $a6, $a7
	sub.d	$a5, $a5, $t0
	add.d	$a7, $a4, $a1
	sub.d	$t0, $a1, $a4
	add.d	$s5, $a6, $a5
	sub.d	$a1, $a5, $a6
	add.d	$a4, $fp, $t1
	add.d	$a5, $t8, $t2
	sub.d	$a6, $t2, $t8
	sub.d	$t1, $t1, $fp
	add.d	$t2, $a5, $a4
	sub.d	$a5, $a4, $a5
	add.d	$t8, $a6, $t1
	sub.d	$a4, $t1, $a6
	add.d	$a6, $s3, $s0
	add.d	$t1, $s2, $s1
	sub.d	$fp, $s1, $s2
	sub.d	$s0, $s0, $s3
	add.d	$s1, $t1, $a6
	sub.d	$a6, $a6, $t1
	add.d	$t1, $fp, $s0
	sub.d	$fp, $s0, $fp
	add.d	$s0, $s1, $s6
	add.d	$s2, $t2, $a7
	sub.d	$a7, $a7, $t2
	sub.d	$t2, $s6, $s1
	add.w	$s1, $s2, $s0
	srli.d	$s1, $s1, 1
	st.w	$s1, $t7, 0
	sub.w	$s0, $s0, $s2
	srli.d	$s0, $s0, 1
	st.w	$s0, $t7, 32
	add.w	$s0, $a7, $t2
	srli.d	$s0, $s0, 1
	st.w	$s0, $t7, 16
	sub.w	$a7, $t2, $a7
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 48
	add.d	$a7, $t1, $s4
	add.d	$t2, $t8, $s5
	sub.d	$t8, $s5, $t8
	sub.d	$t1, $s4, $t1
	add.w	$s0, $t2, $a7
	srli.d	$s0, $s0, 1
	st.w	$s0, $t7, 4
	sub.w	$a7, $a7, $t2
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 36
	add.w	$a7, $t8, $t1
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 20
	sub.w	$a7, $t1, $t8
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 52
	add.d	$a7, $a6, $a2
	add.d	$t1, $a5, $t0
	sub.d	$a5, $t0, $a5
	sub.d	$a2, $a2, $a6
	add.w	$a6, $t1, $a7
	srli.d	$a6, $a6, 1
	st.w	$a6, $t7, 8
	sub.w	$a6, $a7, $t1
	srli.d	$a6, $a6, 1
	st.w	$a6, $t7, 40
	add.w	$a6, $a5, $a2
	srli.d	$a6, $a6, 1
	st.w	$a6, $t7, 24
	sub.w	$a2, $a2, $a5
	srli.d	$a2, $a2, 1
	st.w	$a2, $t7, 56
	add.d	$a2, $fp, $a0
	add.d	$a5, $a4, $a1
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $a0, $fp
	add.w	$a0, $a5, $a2
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 12
	sub.w	$a0, $a2, $a5
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 44
	add.w	$a0, $a1, $a4
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 28
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	sub.w	$a1, $a4, $a1
	srli.d	$a1, $a1, 1
	st.w	$a1, $t7, 60
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a5, $a1, %got_pc_lo12(input)
	move	$a1, $zero
	move	$a4, $zero
	ld.d	$a5, $a5, 0
	addi.d	$t0, $zero, -1
	ori	$a6, $zero, 2063
	ori	$a7, $zero, 32
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_18 Depth=1
	srai.d	$t3, $fp, 31
	xor	$t4, $fp, $t3
	sub.d	$s0, $t4, $t3
	sub.d	$fp, $zero, $s0
	masknez	$t3, $s0, $t2
	maskeqz	$t4, $fp, $t2
	or	$t3, $t4, $t3
	slli.d	$t4, $a4, 2
	stx.w	$t3, $s2, $t4
	stx.w	$t0, $s3, $t4
	addi.w	$a4, $a4, 1
	addi.d	$t0, $zero, -1
.LBB2_17:                               # %._crit_edge
                                        #   in Loop: Header=BB2_18 Depth=1
	alsl.d	$t1, $t1, $t8, 2
	masknez	$t3, $s0, $t2
	maskeqz	$t2, $fp, $t2
	or	$t2, $t2, $t3
	addi.d	$a1, $a1, 2
	st.w	$t2, $t1, 0
	beq	$a1, $a7, .LBB2_23
.LBB2_18:                               # =>This Inner Loop Header: Depth=1
	add.d	$t1, $t5, $a1
	ld.bu	$t2, $t1, 1
	ldx.bu	$t1, $t5, $a1
	alsl.d	$t8, $t2, $t7, 4
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $t8, $t2
	srai.d	$t3, $t2, 31
	xor	$t4, $t2, $t3
	ld.w	$fp, $a0, 0
	ld.w	$s0, $a2, 0
	ldptr.w	$s1, $a5, 4008
	sub.d	$t3, $t4, $t3
	mul.d	$t3, $fp, $t3
	alsl.w	$t3, $s0, $t3, 1
	ld.d	$t4, $sp, 104                   # 8-byte Folded Reload
	sra.w	$fp, $t3, $t4
	bnez	$s1, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=1
	ld.w	$t3, $a3, 36
	slti	$t3, $t3, 10
	slt	$t4, $fp, $a6
	masknez	$s0, $a6, $t4
	maskeqz	$t4, $fp, $t4
	or	$t4, $t4, $s0
	maskeqz	$t4, $t4, $t3
	masknez	$t3, $fp, $t3
	or	$fp, $t4, $t3
.LBB2_20:                               #   in Loop: Header=BB2_18 Depth=1
	addi.d	$t0, $t0, 1
	slti	$t2, $t2, 0
	bnez	$fp, .LBB2_16
# %bb.21:                               #   in Loop: Header=BB2_18 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	b	.LBB2_17
.LBB2_22:
	slli.d	$a0, $a1, 2
	stx.w	$zero, $s0, $a0
	b	.LBB2_24
.LBB2_23:                               # %.preheader490
	slli.d	$a0, $a4, 2
	stx.w	$zero, $s2, $a0
	ld.w	$a0, $t7, 0
	ld.w	$a1, $t7, 8
	ld.w	$a2, $t7, 4
	ld.w	$a4, $t7, 12
	add.d	$a5, $a1, $a0
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a4
	add.d	$a4, $a4, $a2
	add.d	$a7, $a4, $a5
	st.w	$a7, $t7, 0
	add.d	$a2, $a1, $a0
	st.w	$a2, $t7, 4
	sub.d	$a0, $a0, $a1
	st.w	$a0, $t7, 8
	sub.d	$a0, $a5, $a4
	ld.w	$a1, $t7, 16
	ld.w	$a4, $t7, 24
	ld.w	$a5, $t7, 20
	ld.w	$a6, $t7, 28
	st.w	$a0, $t7, 12
	add.d	$a0, $a4, $a1
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $a5, $a6
	add.d	$a6, $a6, $a5
	add.d	$t1, $a6, $a0
	st.w	$t1, $t7, 16
	add.d	$a5, $a4, $a1
	st.w	$a5, $t7, 20
	sub.d	$a1, $a1, $a4
	st.w	$a1, $t7, 24
	sub.d	$a0, $a0, $a6
	ld.w	$a1, $t7, 32
	ld.w	$a4, $t7, 40
	ld.w	$a6, $t7, 36
	ld.w	$t0, $t7, 44
	st.w	$a0, $t7, 28
	add.d	$a0, $a4, $a1
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $a6, $t0
	add.d	$a6, $t0, $a6
	add.d	$t2, $a6, $a0
	st.w	$t2, $t7, 32
	add.d	$t0, $a4, $a1
	st.w	$t0, $t7, 36
	sub.d	$a4, $a1, $a4
	st.w	$a4, $t7, 40
	sub.d	$a0, $a0, $a6
	ld.w	$a1, $t7, 48
	ld.w	$a6, $t7, 56
	ld.w	$t3, $t7, 52
	ld.w	$t4, $t7, 60
	st.w	$a0, $t7, 44
	add.d	$a0, $a6, $a1
	sub.d	$a1, $a1, $a6
	sub.d	$a6, $t3, $t4
	add.d	$t3, $t4, $t3
	add.d	$t4, $t3, $a0
	st.w	$t4, $t7, 48
	add.d	$t8, $a6, $a1
	st.w	$t8, $t7, 52
	sub.d	$a6, $a1, $a6
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	st.w	$a6, $t7, 56
	sub.d	$a1, $a0, $t3
	st.w	$a1, $t7, 60
	ld.w	$a0, $fp, 0
	add.d	$t3, $t2, $a7
	sub.d	$a7, $a7, $t2
	sub.d	$t2, $t1, $t4
	add.d	$t1, $t4, $t1
	add.d	$t4, $t1, $t3
	mul.d	$t4, $a0, $t4
	sll.w	$t4, $t4, $s7
	addi.w	$t4, $t4, 32
	srli.d	$t4, $t4, 6
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	st.w	$t4, $fp, 0
	add.d	$t4, $t2, $a7
	mul.d	$t4, $a0, $t4
	sll.w	$t4, $t4, $s7
	addi.w	$t4, $t4, 32
	srli.d	$t4, $t4, 6
	st.w	$t4, $fp, 256
	sub.d	$a7, $a7, $t2
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $s7
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $fp, 512
	sub.d	$a7, $t3, $t1
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $s7
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $fp, 768
	add.d	$a7, $t0, $a2
	sub.d	$a2, $a2, $t0
	sub.d	$t0, $a5, $t8
	add.d	$a5, $t8, $a5
	add.d	$t1, $a5, $a7
	mul.d	$t1, $a0, $t1
	sll.w	$t1, $t1, $s7
	addi.w	$t1, $t1, 32
	srli.d	$t1, $t1, 6
	st.w	$t1, $fp, 64
	add.d	$t1, $t0, $a2
	mul.d	$t1, $a0, $t1
	sll.w	$t1, $t1, $s7
	addi.w	$t1, $t1, 32
	srli.d	$t1, $t1, 6
	st.w	$t1, $fp, 320
	sub.d	$a2, $a2, $t0
	mul.d	$a2, $a0, $a2
	sll.w	$a2, $a2, $s7
	addi.w	$a2, $a2, 32
	srli.d	$a2, $a2, 6
	st.w	$a2, $fp, 576
	sub.d	$a2, $a7, $a5
	mul.d	$a2, $a0, $a2
	sll.w	$a2, $a2, $s7
	addi.w	$a2, $a2, 32
	ld.w	$a5, $t7, 8
	srli.d	$a2, $a2, 6
	ld.w	$a7, $t7, 24
	st.w	$a2, $fp, 832
	add.d	$a2, $a4, $a5
	sub.d	$a4, $a5, $a4
	sub.d	$a5, $a7, $a6
	add.d	$a6, $a6, $a7
	add.d	$a7, $a6, $a2
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $s7
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $fp, 128
	add.d	$a7, $a5, $a4
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $s7
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $fp, 384
	sub.d	$a4, $a4, $a5
	mul.d	$a4, $a0, $a4
	sll.w	$a4, $a4, $s7
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $fp, 640
	sub.d	$a2, $a2, $a6
	mul.d	$a2, $a0, $a2
	sll.w	$a2, $a2, $s7
	addi.w	$a2, $a2, 32
	ld.w	$a4, $t7, 12
	ld.w	$a5, $t7, 44
	srli.d	$a2, $a2, 6
	ld.w	$a6, $t7, 28
	st.w	$a2, $fp, 896
	add.d	$a2, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a5, $a6, $a1
	add.d	$a1, $a1, $a6
	add.d	$a6, $a1, $a2
	mul.d	$a6, $a0, $a6
	sll.w	$a6, $a6, $s7
	addi.w	$a6, $a6, 32
	srli.d	$a6, $a6, 6
	st.w	$a6, $fp, 192
	add.d	$a6, $a5, $a4
	mul.d	$a6, $a0, $a6
	sll.w	$a6, $a6, $s7
	addi.w	$a6, $a6, 32
	srli.d	$a6, $a6, 6
	st.w	$a6, $fp, 448
	sub.d	$a4, $a4, $a5
	mul.d	$a4, $a0, $a4
	sll.w	$a4, $a4, $s7
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $fp, 704
	sub.d	$a1, $a2, $a1
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $s7
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	st.w	$a0, $fp, 960
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
.LBB2_24:
	move	$a4, $zero
	move	$a1, $zero
	ldptr.d	$t4, $a3, 14160
	ori	$a0, $zero, 1
	sll.w	$s1, $a0, $t6
	ori	$s2, $zero, 30
	ori	$t8, $zero, 4
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_25:                               #   in Loop: Header=BB2_26 Depth=1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	beq	$a4, $t8, .LBB2_46
.LBB2_26:                               # %.preheader486
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_31 Depth 3
	move	$s4, $zero
	slli.d	$a0, $a4, 8
	andi	$fp, $a4, 2
	slli.d	$a2, $a4, 1
	andi	$a2, $a2, 2
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	slli.d	$s6, $a4, 2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$s5, $a4, $a0
	slli.d	$s0, $a2, 3
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_28 Depth=2
	slli.d	$a0, $a5, 2
	stx.w	$zero, $a7, $a0
	addi.d	$s4, $s4, 1
	beq	$s4, $t8, .LBB2_25
.LBB2_28:                               # %.preheader485
                                        #   Parent Loop BB2_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_31 Depth 3
	slli.d	$a5, $s4, 6
	add.d	$ra, $s5, $a5
	vldx	$vr1, $s5, $a5
	vld	$vr2, $ra, 48
	vld	$vr3, $ra, 32
	vld	$vr4, $ra, 16
	vst	$vr1, $t7, 0
	vst	$vr2, $t7, 48
	vst	$vr3, $t7, 32
	vst	$vr4, $t7, 16
	bstrpick.d	$a0, $s4, 31, 1
	or	$a0, $a0, $fp
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t4, $a0
	andi	$a2, $s4, 1
	alsl.d	$a0, $a2, $a0, 3
	ldx.d	$a0, $a0, $s0
	ld.d	$a7, $a0, 0
	ld.d	$a4, $a0, 8
	slli.d	$a0, $s4, 4
	move	$a2, $zero
	beqz	$s3, .LBB2_35
# %bb.29:                               # %.preheader481.preheader
                                        #   in Loop: Header=BB2_28 Depth=2
	move	$a5, $zero
	addi.d	$a6, $zero, -1
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_30:                               #   in Loop: Header=BB2_31 Depth=3
	addi.d	$a2, $a2, 2
	beq	$a2, $s2, .LBB2_27
.LBB2_31:                               # %.preheader481
                                        #   Parent Loop BB2_26 Depth=1
                                        #     Parent Loop BB2_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t1, $t5, $a2
	ld.bu	$t0, $t1, 3
	ld.bu	$t1, $t1, 2
	alsl.d	$t2, $t0, $t7, 4
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $t2, $t1
	addi.d	$a6, $a6, 1
	beqz	$t2, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=3
	srai.d	$a1, $t2, 31
	xor	$t3, $t2, $a1
	sub.d	$a1, $t3, $a1
	slti	$t2, $t2, 0
	sub.d	$t3, $zero, $a1
	masknez	$a1, $a1, $t2
	maskeqz	$t2, $t3, $t2
	or	$a1, $t2, $a1
	slli.d	$t2, $a5, 2
	stx.w	$a1, $a7, $t2
	stx.w	$a6, $a4, $t2
	addi.w	$a5, $a5, 1
	addi.d	$a6, $zero, -1
	ori	$a1, $zero, 15
.LBB2_33:                               #   in Loop: Header=BB2_31 Depth=3
	ldptr.w	$t2, $a3, 15260
	beqz	$t2, .LBB2_30
# %bb.34:                               #   in Loop: Header=BB2_31 Depth=3
	ldptr.d	$t2, $a3, 14176
	ld.d	$t2, $t2, 16
	alsl.d	$t2, $s6, $t2, 3
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t2, $t0
	add.d	$t0, $t0, $a0
	stx.w	$zero, $t0, $t1
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_35:                               # %.preheader484.preheader
                                        #   in Loop: Header=BB2_28 Depth=2
	move	$t0, $zero
	addi.d	$a6, $zero, -1
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_36:                               #   in Loop: Header=BB2_38 Depth=3
	move	$t2, $zero
	move	$s0, $zero
.LBB2_37:                               # %._crit_edge717
                                        #   in Loop: Header=BB2_38 Depth=3
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$t3, $t3, $s3
	slti	$t4, $t8, 0
	ldx.w	$t3, $t3, $fp
	masknez	$t8, $s0, $t4
	maskeqz	$t2, $t2, $t4
	or	$t2, $t2, $t8
	mul.d	$t2, $t2, $t3
	sll.w	$t2, $t2, $s7
	addi.w	$t2, $t2, 8
	srli.d	$t2, $t2, 4
	addi.d	$a2, $a2, 2
	st.w	$t2, $t1, 0
	beq	$a2, $s2, .LBB2_45
.LBB2_38:                               # %.preheader484
                                        #   Parent Loop BB2_26 Depth=1
                                        #     Parent Loop BB2_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t1, $t5, $a2
	ld.bu	$t3, $t1, 3
	ld.bu	$t1, $t1, 2
	alsl.d	$t2, $t3, $t7, 4
	slli.d	$fp, $t1, 2
	ldx.w	$t8, $t2, $fp
	slli.d	$s3, $t3, 3
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$t3, $t3, $s3
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$t4, $t4, $s3
	srai.d	$s0, $t8, 31
	xor	$s5, $t8, $s0
	ldx.w	$t3, $t3, $fp
	ldx.w	$t4, $t4, $fp
	ldptr.w	$s8, $a3, 15260
	sub.d	$s0, $s5, $s0
	mul.d	$s5, $t3, $s0
	add.d	$t3, $t4, $s5
	sra.w	$s0, $t3, $t6
	beqz	$s8, .LBB2_43
# %bb.39:                               #   in Loop: Header=BB2_38 Depth=3
	beqz	$s0, .LBB2_41
# %bb.40:                               #   in Loop: Header=BB2_38 Depth=3
	pcalau12i	$t3, %got_pc_hi20(AdaptRndWeight)
	ld.d	$t3, $t3, %got_pc_lo12(AdaptRndWeight)
	ld.w	$t3, $t3, 0
	sll.w	$t4, $s0, $t6
	sub.d	$t4, $s5, $t4
	mul.d	$t3, $t3, $t4
	add.d	$t3, $t3, $s1
	ld.d	$t4, $sp, 104                   # 8-byte Folded Reload
	sra.w	$s5, $t3, $t4
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               #   in Loop: Header=BB2_38 Depth=3
	move	$s5, $zero
.LBB2_42:                               #   in Loop: Header=BB2_38 Depth=3
	ldptr.d	$t3, $a3, 14176
	ld.d	$t3, $t3, 16
	alsl.d	$t3, $s6, $t3, 3
	ldx.d	$t3, $t3, $s3
	add.d	$t3, $t3, $a0
	stx.w	$s5, $t3, $fp
.LBB2_43:                               #   in Loop: Header=BB2_38 Depth=3
	addi.d	$a6, $a6, 1
	alsl.d	$t1, $t1, $t2, 2
	beqz	$s0, .LBB2_36
# %bb.44:                               #   in Loop: Header=BB2_38 Depth=3
	slti	$a1, $t8, 0
	srai.d	$t2, $s0, 31
	xor	$t3, $s0, $t2
	sub.d	$s0, $t3, $t2
	sub.d	$t2, $zero, $s0
	masknez	$t3, $s0, $a1
	maskeqz	$a1, $t2, $a1
	or	$a1, $a1, $t3
	slli.d	$t3, $t0, 2
	stx.w	$a1, $a7, $t3
	stx.w	$a6, $a4, $t3
	ld.w	$t8, $t1, 0
	addi.w	$t0, $t0, 1
	addi.d	$a6, $zero, -1
	ori	$a1, $zero, 15
	b	.LBB2_37
	.p2align	4, , 16
.LBB2_45:                               # %.preheader482
                                        #   in Loop: Header=BB2_28 Depth=2
	slli.d	$a0, $t0, 2
	stx.w	$zero, $a7, $a0
	ld.w	$a0, $t7, 0
	ld.w	$a2, $t7, 8
	ld.w	$a4, $t7, 4
	ld.w	$a6, $t7, 12
	add.d	$t0, $a2, $a0
	sub.d	$a0, $a0, $a2
	srai.d	$a2, $a4, 1
	sub.d	$a2, $a2, $a6
	srai.d	$a6, $a6, 1
	add.d	$a6, $a6, $a4
	add.d	$a7, $a6, $t0
	st.w	$a7, $t7, 0
	add.d	$a4, $a2, $a0
	st.w	$a4, $t7, 4
	sub.d	$a0, $a0, $a2
	st.w	$a0, $t7, 8
	sub.d	$a2, $t0, $a6
	ld.w	$a6, $t7, 16
	ld.w	$t0, $t7, 24
	st.w	$a2, $t7, 12
	ld.w	$a2, $t7, 20
	ld.w	$t1, $t7, 28
	add.d	$t3, $t0, $a6
	sub.d	$a6, $a6, $t0
	srai.d	$t0, $a2, 1
	sub.d	$t0, $t0, $t1
	srai.d	$t1, $t1, 1
	add.d	$a2, $t1, $a2
	add.w	$t2, $a2, $t3
	st.w	$t2, $t7, 16
	add.w	$t1, $t0, $a6
	st.w	$t1, $t7, 20
	sub.w	$a6, $a6, $t0
	st.w	$a6, $t7, 24
	sub.w	$a2, $t3, $a2
	ld.w	$t0, $t7, 32
	ld.w	$t3, $t7, 40
	st.w	$a2, $t7, 28
	ld.w	$t4, $t7, 36
	ld.w	$t8, $t7, 44
	add.d	$fp, $t3, $t0
	sub.d	$t0, $t0, $t3
	srai.d	$t3, $t4, 1
	sub.d	$t3, $t3, $t8
	srai.d	$t8, $t8, 1
	add.d	$t4, $t8, $t4
	add.d	$t8, $t4, $fp
	st.w	$t8, $t7, 32
	add.d	$s0, $t3, $t0
	st.w	$s0, $t7, 36
	sub.d	$t3, $t0, $t3
	st.w	$t3, $t7, 40
	sub.d	$t0, $fp, $t4
	ld.w	$t4, $t7, 48
	ld.w	$fp, $t7, 56
	st.w	$t0, $t7, 44
	ld.w	$s3, $t7, 52
	ld.w	$s5, $t7, 60
	add.d	$s8, $fp, $t4
	sub.d	$t4, $t4, $fp
	srai.d	$fp, $s3, 1
	sub.d	$fp, $fp, $s5
	srai.d	$s5, $s5, 1
	add.d	$s3, $s5, $s3
	add.w	$s5, $s3, $s8
	st.w	$s5, $t7, 48
	add.w	$s7, $fp, $t4
	st.w	$s7, $t7, 52
	sub.w	$t4, $t4, $fp
	st.w	$t4, $t7, 56
	sub.w	$fp, $s8, $s3
	st.w	$fp, $t7, 60
	add.d	$s3, $t8, $a7
	sub.d	$a7, $a7, $t8
	srli.d	$t8, $t2, 1
	sub.d	$t8, $t8, $s5
	srli.d	$s5, $s5, 1
	add.d	$t2, $s5, $t2
	add.d	$s5, $t2, $s3
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	stx.w	$s5, $s8, $a5
	move	$s5, $s8
	add.d	$a5, $t8, $a7
	st.w	$a5, $ra, 16
	sub.d	$a5, $a7, $t8
	st.w	$a5, $ra, 32
	sub.d	$a5, $s3, $t2
	st.w	$a5, $ra, 48
	add.d	$a5, $s0, $a4
	sub.d	$a4, $a4, $s0
	srli.d	$a7, $t1, 1
	sub.d	$a7, $a7, $s7
	srli.d	$t2, $s7, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	add.d	$t1, $t2, $t1
	add.d	$t2, $t1, $a5
	st.w	$t2, $ra, 4
	add.d	$t2, $a7, $a4
	st.w	$t2, $ra, 20
	sub.d	$a4, $a4, $a7
	st.w	$a4, $ra, 36
	sub.d	$a4, $a5, $t1
	st.w	$a4, $ra, 52
	add.d	$a4, $t3, $a0
	sub.d	$a0, $a0, $t3
	srli.d	$a5, $a6, 1
	sub.d	$a5, $a5, $t4
	srli.d	$a7, $t4, 1
	add.d	$a6, $a7, $a6
	add.d	$a7, $a6, $a4
	st.w	$a7, $ra, 8
	add.d	$a7, $a5, $a0
	st.w	$a7, $ra, 24
	sub.d	$a0, $a0, $a5
	ld.w	$a5, $t7, 12
	st.w	$a0, $ra, 40
	sub.d	$a0, $a4, $a6
	st.w	$a0, $ra, 56
	add.d	$a0, $t0, $a5
	sub.d	$a4, $a5, $t0
	srli.d	$a5, $a2, 1
	sub.d	$a5, $a5, $fp
	srli.d	$a6, $fp, 1
	add.d	$a2, $a6, $a2
	add.d	$a6, $a2, $a0
	st.w	$a6, $ra, 12
	add.d	$a6, $a5, $a4
	st.w	$a6, $ra, 28
	sub.d	$a4, $a4, $a5
	st.w	$a4, $ra, 44
	sub.d	$a0, $a0, $a2
	st.w	$a0, $ra, 60
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ori	$t8, $zero, 4
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s4, $s4, 1
	bne	$s4, $t8, .LBB2_28
	b	.LBB2_25
.LBB2_46:                               # %.preheader479.preheader
	move	$a0, $zero
	ori	$a2, $zero, 1024
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_47:                               # %.preheader479
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a6, $a0
	vldx	$vr1, $a6, $a0
	add.d	$a5, $s0, $a0
	vld	$vr2, $a4, 16
	vld	$vr3, $a4, 32
	vstx	$vr1, $s0, $a0
	vld	$vr1, $a4, 48
	vst	$vr2, $a5, 64
	vst	$vr3, $a5, 128
	vld	$vr2, $a4, 64
	vst	$vr1, $a5, 192
	vld	$vr1, $a4, 80
	vld	$vr3, $a4, 96
	vst	$vr2, $a5, 16
	vld	$vr2, $a4, 112
	vst	$vr1, $a5, 80
	vst	$vr3, $a5, 144
	vld	$vr1, $a4, 128
	vst	$vr2, $a5, 208
	vld	$vr2, $a4, 144
	vld	$vr3, $a4, 160
	vst	$vr1, $a5, 32
	vld	$vr1, $a4, 176
	vst	$vr2, $a5, 96
	vst	$vr3, $a5, 160
	vld	$vr2, $a4, 192
	vst	$vr1, $a5, 224
	vld	$vr1, $a4, 208
	vld	$vr3, $a4, 224
	vst	$vr2, $a5, 48
	vld	$vr2, $a4, 240
	vst	$vr1, $a5, 112
	vst	$vr3, $a5, 176
	addi.d	$a0, $a0, 256
	vst	$vr2, $a5, 240
	bne	$a0, $a2, .LBB2_47
# %bb.48:
	ld.w	$a0, $a3, 20
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	ori	$a2, $zero, 3
	beqz	$s3, .LBB2_54
# %bb.49:
	bne	$a0, $a2, .LBB2_59
# %bb.50:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6440
	pcalau12i	$a2, %pc_hi20(lrec)
	ld.d	$a2, $a2, %pc_lo12(lrec)
	pcalau12i	$a4, %pc_hi20(dct_luma_16x16.M1)
	addi.d	$a4, $a4, %pc_lo12(dct_luma_16x16.M1)
	move	$a5, $zero
	addi.w	$a6, $zero, -16
	lu32i.d	$a6, 0
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB2_51:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_52 Depth 2
	ld.w	$t0, $a3, 180
	add.w	$t0, $t0, $a5
	slli.d	$t1, $t0, 3
	ldx.d	$t0, $a0, $t1
	ldx.d	$t1, $a2, $t1
	move	$t2, $zero
	move	$t3, $fp
	move	$t4, $a4
	.p2align	4, , 16
.LBB2_52:                               #   Parent Loop BB2_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t5, $t4, 0
	ld.h	$t6, $t3, 0
	ld.w	$t7, $a3, 176
	add.d	$t5, $t6, $t5
	add.d	$t6, $t2, $t7
	slli.d	$t7, $t6, 1
	stx.h	$t5, $t0, $t7
	slli.d	$t5, $t6, 2
	stx.w	$a6, $t1, $t5
	addi.d	$t2, $t2, 1
	addi.d	$t4, $t4, 4
	addi.d	$t3, $t3, 2
	bne	$t2, $a7, .LBB2_52
# %bb.53:                               #   in Loop: Header=BB2_51 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 64
	addi.d	$fp, $fp, 32
	bne	$a5, $a7, .LBB2_51
	b	.LBB2_61
.LBB2_54:
	bne	$a0, $a2, .LBB2_62
# %bb.55:                               # %.preheader474
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6440
	pcalau12i	$a2, %pc_hi20(lrec)
	ld.d	$a2, $a2, %pc_lo12(lrec)
	pcalau12i	$a4, %pc_hi20(dct_luma_16x16.M1)
	addi.d	$a4, $a4, %pc_lo12(dct_luma_16x16.M1)
	move	$a5, $zero
	addi.w	$a6, $zero, -16
	lu32i.d	$a6, 0
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB2_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_57 Depth 2
	ld.w	$t0, $a3, 180
	add.w	$t0, $t0, $a5
	slli.d	$t1, $t0, 3
	ldx.d	$t0, $a0, $t1
	ldx.d	$t1, $a2, $t1
	move	$t2, $zero
	move	$t3, $fp
	move	$t4, $a4
	.p2align	4, , 16
.LBB2_57:                               #   Parent Loop BB2_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t5, $t3, 0
	ld.w	$t6, $t4, 0
	ldptr.w	$t7, $a3, 15520
	slli.d	$t5, $t5, 6
	add.d	$t5, $t6, $t5
	addi.w	$t5, $t5, 32
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t7
	ld.w	$t8, $a3, 176
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t7, $t6
	or	$t5, $t5, $t6
	add.d	$t6, $t2, $t8
	slli.d	$t7, $t6, 1
	stx.h	$t5, $t0, $t7
	slli.d	$t5, $t6, 2
	stx.w	$a6, $t1, $t5
	addi.d	$t2, $t2, 1
	addi.d	$t4, $t4, 4
	addi.d	$t3, $t3, 2
	bne	$t2, $a7, .LBB2_57
# %bb.58:                               #   in Loop: Header=BB2_56 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 64
	addi.d	$fp, $fp, 32
	bne	$a5, $a7, .LBB2_56
	b	.LBB2_61
.LBB2_59:                               # %.preheader472
	ld.w	$a2, $a3, 180
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a4, $a0, 6440
	ld.w	$a0, $a3, 176
	alsl.d	$a2, $a2, $a4, 3
	slli.d	$a4, $a7, 9
	add.d	$a3, $a4, $a3
	lu12i.w	$a4, 1
	ori	$a4, $a4, 750
	add.d	$a3, $a3, $a4
	pcalau12i	$a4, %pc_hi20(dct_luma_16x16.M1+32)
	addi.d	$a4, $a4, %pc_lo12(dct_luma_16x16.M1+32)
	move	$a5, $zero
	slli.d	$a6, $a0, 1
	ori	$a7, $zero, 128
	.p2align	4, , 16
.LBB2_60:                               # =>This Inner Loop Header: Depth=1
	ld.h	$t0, $a4, -32
	ld.h	$t1, $a3, -30
	ldx.d	$t2, $a2, $a5
	add.d	$t0, $t1, $t0
	stx.h	$t0, $t2, $a6
	ld.h	$t1, $a4, -28
	ld.h	$t3, $a3, -28
	alsl.d	$t0, $a0, $t2, 1
	add.d	$t1, $t3, $t1
	st.h	$t1, $t0, 2
	ld.h	$t1, $a4, -24
	ld.h	$t2, $a3, -26
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 4
	ld.h	$t1, $a4, -20
	ld.h	$t2, $a3, -24
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 6
	ld.h	$t1, $a4, -16
	ld.h	$t2, $a3, -22
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 8
	ld.h	$t1, $a4, -12
	ld.h	$t2, $a3, -20
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 10
	ld.h	$t1, $a4, -8
	ld.h	$t2, $a3, -18
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 12
	ld.h	$t1, $a4, -4
	ld.h	$t2, $a3, -16
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 14
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a3, -14
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 16
	ld.h	$t1, $a4, 4
	ld.h	$t2, $a3, -12
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 18
	ld.h	$t1, $a4, 8
	ld.h	$t2, $a3, -10
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 20
	ld.h	$t1, $a4, 12
	ld.h	$t2, $a3, -8
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 22
	ld.h	$t1, $a4, 16
	ld.h	$t2, $a3, -6
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 24
	ld.h	$t1, $a4, 20
	ld.h	$t2, $a3, -4
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 26
	ld.h	$t1, $a4, 24
	ld.h	$t2, $a3, -2
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 28
	ld.h	$t1, $a4, 28
	ld.h	$t2, $a3, 0
	add.d	$t1, $t2, $t1
	st.h	$t1, $t0, 30
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 64
	bne	$a5, $a7, .LBB2_60
.LBB2_61:                               # %.loopexit
	move	$a0, $a1
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
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
.LBB2_62:                               # %.preheader476
	ld.w	$a5, $a3, 180
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3232
	ldx.w	$a0, $a3, $a0
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ldptr.d	$a6, $a2, 6440
	move	$a2, $zero
	ld.w	$a4, $a3, 176
	alsl.d	$a5, $a5, $a6, 3
	lu12i.w	$a6, -2
	ori	$a6, $a6, 3376
	alsl.d	$a6, $a4, $a6, 1
	slli.d	$a7, $a7, 9
	add.d	$a3, $a7, $a3
	vreplgr2vr.w	$vr1, $a0
	ori	$a7, $zero, 7
	ori	$t0, $zero, 32
	ori	$t1, $zero, 16
	vrepli.w	$vr2, 32
	move	$t2, $fp
	move	$t3, $s0
	b	.LBB2_65
	.p2align	4, , 16
.LBB2_63:                               # %vector.body777
                                        #   in Loop: Header=BB2_65 Depth=1
	add.d	$t5, $fp, $t5
	ld.d	$t6, $t5, 0
	slli.d	$t7, $a2, 6
	add.d	$t7, $s0, $t7
	vld	$vr3, $t7, 0
	vinsgr2vr.d	$vr4, $t6, 0
	vilvl.h	$vr4, $vr0, $vr4
	vslli.w	$vr4, $vr4, 6
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr3, $vr3, $vr2
	vsrai.w	$vr3, $vr3, 6
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr1
	vpickev.h	$vr3, $vr3, $vr3
	vstelm.d	$vr3, $t4, 0, 0
	ld.d	$t6, $t5, 8
	vld	$vr3, $t7, 16
	vinsgr2vr.d	$vr4, $t6, 0
	vilvl.h	$vr4, $vr0, $vr4
	vslli.w	$vr4, $vr4, 6
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr3, $vr3, $vr2
	vsrai.w	$vr3, $vr3, 6
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr1
	vpickev.h	$vr3, $vr3, $vr3
	vstelm.d	$vr3, $t4, 8, 0
	ld.d	$t6, $t5, 16
	vld	$vr3, $t7, 32
	vinsgr2vr.d	$vr4, $t6, 0
	vilvl.h	$vr4, $vr0, $vr4
	vslli.w	$vr4, $vr4, 6
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr3, $vr3, $vr2
	vsrai.w	$vr3, $vr3, 6
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr1
	vpickev.h	$vr3, $vr3, $vr3
	vstelm.d	$vr3, $t4, 16, 0
	ld.d	$t5, $t5, 24
	vld	$vr3, $t7, 48
	vinsgr2vr.d	$vr4, $t5, 0
	vilvl.h	$vr4, $vr0, $vr4
	vslli.w	$vr4, $vr4, 6
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr3, $vr3, $vr2
	vsrai.w	$vr3, $vr3, 6
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr1
	vpickev.h	$vr3, $vr3, $vr3
	vstelm.d	$vr3, $t4, 24, 0
.LBB2_64:                               # %middle.block782
                                        #   in Loop: Header=BB2_65 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$t3, $t3, 64
	addi.d	$t2, $t2, 32
	beq	$a2, $t1, .LBB2_61
.LBB2_65:                               # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_67 Depth 2
	slli.d	$t4, $a2, 3
	ldx.d	$t4, $a5, $t4
	slli.d	$t5, $a2, 5
	add.d	$t6, $a3, $t5
	sub.d	$t6, $a6, $t6
	add.d	$t6, $t6, $t4
	alsl.d	$t4, $a4, $t4, 1
	bltu	$a7, $t6, .LBB2_63
# %bb.66:                               # %scalar.ph775.preheader
                                        #   in Loop: Header=BB2_65 Depth=1
	move	$t5, $zero
	move	$t6, $t3
	.p2align	4, , 16
.LBB2_67:                               # %scalar.ph775
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.hu	$t7, $t2, $t5
	ld.w	$t8, $t6, 0
	slli.d	$t7, $t7, 6
	add.d	$t7, $t8, $t7
	addi.w	$t7, $t7, 32
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $a0
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $a0, $t8
	or	$t7, $t7, $t8
	stx.h	$t7, $t4, $t5
	addi.d	$t5, $t5, 2
	addi.d	$t6, $t6, 4
	bne	$t5, $t0, .LBB2_67
	b	.LBB2_64
.Lfunc_end2:
	.size	dct_luma_16x16, .Lfunc_end2-dct_luma_16x16
                                        # -- End function
	.globl	dct_luma                        # -- Begin function dct_luma
	.p2align	5
	.type	dct_luma,@function
dct_luma:                               # @dct_luma
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
	move	$t8, $a1
	move	$t7, $a0
	srli.d	$a0, $a0, 2
	srli.d	$a1, $a1, 2
	addi.w	$a4, $zero, -2
	lu52i.d	$a4, $a4, 511
	and	$a1, $a1, $a4
	srli.d	$a4, $t7, 3
	add.d	$a1, $a1, $a4
	bstrpick.d	$a4, $t8, 2, 2
	bstrins.d	$a0, $a4, 63, 1
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a5, $a4, 0
	ldptr.d	$a4, $a5, 14160
	slli.d	$a1, $a1, 3
	ldx.d	$a6, $a4, $a1
	ld.w	$a1, $a5, 12
	ldptr.d	$a4, $a5, 14224
	slli.d	$a7, $a0, 3
	ori	$a0, $zero, 536
	mul.d	$a0, $a1, $a0
	add.d	$a4, $a4, $a0
	lu12i.w	$s5, 3
	ori	$a0, $s5, 3164
	ldx.w	$a0, $a5, $a0
	ld.w	$a1, $a4, 8
	ldx.d	$a7, $a6, $a7
	sub.w	$t0, $zero, $a0
	move	$a6, $zero
	bne	$a1, $t0, .LBB3_2
# %bb.1:
	ldptr.w	$a6, $a5, 15540
	addi.d	$a6, $a6, -1
	sltui	$a6, $a6, 1
.LBB3_2:
	ld.d	$s7, $a7, 0
	ld.w	$a4, $a4, 428
	ld.d	$s1, $a7, 8
	sltui	$a4, $a4, 1
	pcalau12i	$a7, %pc_hi20(FIELD_SCAN)
	addi.d	$a7, $a7, %pc_lo12(FIELD_SCAN)
	masknez	$a7, $a7, $a4
	pcalau12i	$t0, %pc_hi20(SNGL_SCAN)
	addi.d	$t0, $t0, %pc_lo12(SNGL_SCAN)
	maskeqz	$a4, $t0, $a4
	or	$ra, $a4, $a7
	ori	$fp, $s5, 848
	add.d	$t0, $a5, $fp
	beqz	$a6, .LBB3_9
# %bb.3:                                # %.preheader
	move	$t1, $zero
	move	$a7, $zero
	move	$s0, $zero
	addi.d	$t3, $zero, -1
	ori	$t2, $zero, 32
	lu12i.w	$a0, 244
	ori	$t4, $a0, 575
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$t1, $t1, 2
	beq	$t1, $t2, .LBB3_21
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	add.d	$a0, $ra, $t1
	ld.bu	$t5, $a0, 1
	ldx.bu	$a0, $ra, $t1
	slli.d	$a1, $t5, 6
	add.d	$a6, $t0, $a1
	slli.d	$a1, $a0, 2
	ldptr.w	$a4, $a5, 15260
	ldx.w	$a1, $a6, $a1
	beqz	$a4, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	ldptr.d	$a4, $a5, 14176
	slli.d	$t6, $a3, 3
	ldx.d	$a4, $a4, $t6
	add.w	$t5, $t8, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$a4, $a4, $t5
	add.w	$t5, $t7, $a0
	slli.d	$t5, $t5, 2
	stx.w	$zero, $a4, $t5
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$t3, $t3, 1
	beqz	$a1, .LBB3_4
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a4, $a2, 0
	alsl.d	$a0, $a0, $a6, 2
	add.d	$a4, $a4, $t4
	st.w	$a4, $a2, 0
	ld.w	$a0, $a0, 0
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	slti	$a0, $a0, 0
	sub.d	$a4, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $a7, 2
	stx.w	$a0, $s7, $a1
	stx.w	$t3, $s1, $a1
	addi.w	$a7, $a7, 1
	addi.d	$t3, $zero, -1
	ori	$s0, $zero, 1
	b	.LBB3_4
.LBB3_9:                                # %.preheader235
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$t8, $sp, 200                   # 8-byte Folded Spill
	st.d	$t7, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(qp_per_matrix)
	ld.d	$a4, $a4, %got_pc_lo12(qp_per_matrix)
	ld.d	$a4, $a4, 0
	add.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$s8, $a4, $a0
	pcalau12i	$a1, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a1, $a1, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a1, $a1, 0
	ldx.w	$a0, $a1, $a0
	addi.d	$t2, $s8, 15
	pcalau12i	$a1, %got_pc_hi20(LevelScale4x4Luma)
	ld.d	$a1, $a1, %got_pc_lo12(LevelScale4x4Luma)
	ld.d	$a1, $a1, 0
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a4, $a3, 3
	ldx.d	$a1, $a1, $a4
	slli.d	$a0, $a0, 3
	ldx.d	$t3, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(LevelOffset4x4Luma)
	ld.d	$a1, $a1, %got_pc_lo12(LevelOffset4x4Luma)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $a4
	slli.d	$a6, $s8, 3
	ldx.d	$t4, $a1, $a6
	pcalau12i	$a1, %got_pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a1, $a1, %got_pc_lo12(InvLevelScale4x4Luma)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $a4
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	ldx.w	$a4, $a5, $fp
	ori	$a6, $s5, 860
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	ldx.w	$a6, $a5, $a6
	ori	$a7, $s5, 852
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	ldx.w	$a7, $a5, $a7
	ori	$t1, $s5, 856
	st.d	$t1, $sp, 120                   # 8-byte Folded Spill
	ldx.w	$t5, $a5, $t1
	ldx.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	add.w	$a0, $a6, $a4
	add.w	$a1, $t5, $a7
	sub.w	$a7, $a7, $t5
	sub.w	$a6, $a4, $a6
	add.d	$t7, $a1, $a0
	sub.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(dct_luma.m4)
	addi.d	$s6, $a1, %pc_lo12(dct_luma.m4)
	st.w	$a0, $s6, 8
	alsl.d	$a4, $a6, $a7, 1
	slli.d	$a0, $a7, 1
	ori	$a1, $s5, 912
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ldx.w	$a1, $a5, $a1
	ori	$a7, $s5, 924
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	ldx.w	$a7, $a5, $a7
	ori	$t1, $s5, 916
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$t5, $a5, $t1
	ori	$t1, $s5, 920
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ldx.w	$t6, $a5, $t1
	sub.d	$a0, $a6, $a0
	st.w	$a0, $s6, 12
	add.d	$a0, $a7, $a1
	add.d	$a6, $t6, $t5
	sub.d	$t5, $t5, $t6
	addi.w	$t8, $t5, 0
	sub.d	$a1, $a1, $a7
	addi.w	$a7, $a1, 0
	add.d	$s0, $a6, $a0
	sub.d	$t6, $a0, $a6
	alsl.d	$a6, $a7, $t5, 1
	ori	$a0, $s5, 976
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ldx.w	$a0, $a5, $a0
	ori	$a7, $s5, 988
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	ldx.w	$t5, $a5, $a7
	ori	$a7, $s5, 980
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	ldx.w	$fp, $a5, $a7
	ori	$a7, $s5, 984
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$s1, $a5, $a7
	slli.d	$a7, $t8, 1
	sub.d	$a7, $a1, $a7
	add.d	$a1, $t5, $a0
	add.d	$t8, $s1, $fp
	sub.d	$s1, $fp, $s1
	addi.w	$s2, $s1, 0
	sub.d	$a0, $a0, $t5
	addi.w	$t5, $a0, 0
	add.d	$s3, $t8, $a1
	sub.d	$fp, $a1, $t8
	alsl.d	$a1, $t5, $s1, 1
	slli.d	$t5, $s2, 1
	ori	$t1, $s5, 1040
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	ldx.w	$s1, $a5, $t1
	ori	$t1, $s5, 1044
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$s2, $a5, $t1
	ori	$t1, $s5, 1048
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$s4, $a5, $t1
	ori	$t1, $s5, 1052
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$s5, $a5, $t1
	sub.d	$t8, $a0, $t5
	add.w	$a0, $s4, $s2
	sub.w	$t5, $s2, $s4
	add.w	$s2, $s5, $s1
	sub.w	$s1, $s1, $s5
	add.d	$s4, $a0, $s2
	sub.d	$a0, $s2, $a0
	alsl.d	$s2, $s1, $t5, 1
	slli.d	$t5, $t5, 1
	sub.d	$t5, $s1, $t5
	add.d	$s1, $s3, $s0
	sub.d	$s0, $s0, $s3
	add.d	$s3, $s4, $t7
	sub.d	$t7, $t7, $s4
	add.d	$s4, $s1, $s3
	st.w	$s4, $s6, 0
	sub.d	$s1, $s3, $s1
	st.w	$s1, $s6, 32
	alsl.d	$s1, $t7, $s0, 1
	st.w	$s1, $s6, 16
	slli.d	$s0, $s0, 1
	sub.d	$t7, $t7, $s0
	st.w	$t7, $s6, 48
	add.d	$t7, $a1, $a6
	sub.d	$a1, $a6, $a1
	add.d	$a6, $s2, $a4
	sub.d	$a4, $a4, $s2
	add.d	$s0, $t7, $a6
	st.w	$s0, $s6, 4
	sub.d	$a6, $a6, $t7
	st.w	$a6, $s6, 36
	alsl.d	$a6, $a4, $a1, 1
	st.w	$a6, $s6, 20
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a4, $a1
	ld.w	$a4, $s6, 8
	st.w	$a1, $s6, 52
	add.d	$a1, $fp, $t6
	sub.d	$a6, $t6, $fp
	add.d	$t6, $a0, $a4
	sub.d	$a0, $a4, $a0
	add.d	$a4, $a1, $t6
	st.w	$a4, $s6, 8
	sub.d	$a1, $t6, $a1
	st.w	$a1, $s6, 40
	alsl.d	$a1, $a0, $a6, 1
	st.w	$a1, $s6, 24
	slli.d	$a1, $a6, 1
	sub.d	$a0, $a0, $a1
	ld.w	$a1, $s6, 12
	st.w	$a0, $s6, 56
	add.d	$a0, $t8, $a7
	sub.d	$a4, $a7, $t8
	add.d	$a6, $t5, $a1
	sub.d	$a1, $a1, $t5
	add.d	$a7, $a0, $a6
	st.w	$a7, $s6, 12
	sub.d	$a0, $a6, $a0
	st.w	$a0, $s6, 44
	alsl.d	$a0, $a1, $a4, 1
	st.w	$a0, $s6, 28
	slli.d	$a0, $a4, 1
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s6, 60
	addi.d	$a0, $s8, 16
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $t2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	move	$s0, $zero
	move	$fp, $zero
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s4, $zero, -1
	ori	$s2, $zero, 32
	lu12i.w	$a0, 244
	ori	$s3, $a0, 575
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_10:                               #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a4, $a2, 0
	add.d	$a1, $a4, $a1
	st.w	$a1, $a2, 0
	slti	$a1, $a6, 0
	srai.d	$a4, $a0, 31
	xor	$a0, $a0, $a4
	sub.d	$a0, $a0, $a4
	sub.d	$a4, $zero, $a0
	masknez	$a6, $a0, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a6
	slli.d	$a6, $fp, 2
	stx.w	$a1, $s7, $a6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	stx.w	$s4, $a1, $a6
	ld.w	$a1, $t7, 0
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a7
	addi.w	$fp, $fp, 1
	slti	$a1, $a1, 0
	ldx.w	$a6, $a6, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	mul.d	$a0, $a0, $a6
	sll.w	$a0, $a0, $s8
	addi.w	$a0, $a0, 8
	srai.d	$a0, $a0, 4
	addi.d	$s4, $zero, -1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	addi.d	$s0, $s0, 2
	st.w	$a0, $t7, 0
	beq	$s0, $s2, .LBB3_22
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	add.d	$a0, $ra, $s0
	ld.bu	$a1, $a0, 1
	ldx.bu	$t7, $ra, $s0
	alsl.d	$t5, $a1, $s6, 4
	slli.d	$s5, $t7, 2
	ldx.w	$a6, $t5, $s5
	slli.d	$a7, $a1, 3
	ldx.d	$a0, $t3, $a7
	ldx.d	$s1, $t4, $a7
	srai.d	$t1, $a6, 31
	xor	$a4, $a6, $t1
	ldx.w	$a0, $a0, $s5
	ldx.w	$t6, $s1, $s5
	ldptr.w	$t8, $a5, 15260
	sub.d	$a4, $a4, $t1
	mul.d	$s1, $a0, $a4
	add.d	$a0, $t6, $s1
	sra.w	$a0, $a0, $t2
	beqz	$t8, .LBB3_17
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	beqz	$a0, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_12 Depth=1
	pcalau12i	$a4, %got_pc_hi20(AdaptRndWeight)
	ld.d	$a4, $a4, %got_pc_lo12(AdaptRndWeight)
	ld.w	$a4, $a4, 0
	sll.w	$t1, $a0, $t2
	sub.d	$t1, $s1, $t1
	mul.d	$a4, $a4, $t1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sra.w	$s1, $a4, $a3
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_12 Depth=1
	move	$s1, $zero
.LBB3_16:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ldptr.d	$a4, $a5, 14176
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	slli.d	$t1, $a3, 3
	ldx.d	$a4, $a4, $t1
	add.w	$a1, $t6, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a4, $a1
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	add.w	$a4, $a4, $t7
	slli.d	$a4, $a4, 2
	stx.w	$s1, $a1, $a4
.LBB3_17:                               #   in Loop: Header=BB3_12 Depth=1
	addi.w	$s4, $s4, 1
	alsl.d	$t7, $t7, $t5, 2
	beqz	$a0, .LBB3_20
# %bb.18:                               #   in Loop: Header=BB3_12 Depth=1
	move	$a1, $s3
	ori	$a3, $zero, 1
	blt	$a3, $a0, .LBB3_10
# %bb.19:                               #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 4180
	pcalau12i	$a4, %pc_hi20(COEFF_COST)
	addi.d	$a4, $a4, %pc_lo12(COEFF_COST)
	alsl.d	$a1, $a1, $a4, 4
	ldx.bu	$a1, $a1, $s4
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_20:                               #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $zero
	b	.LBB3_11
.LBB3_21:                               # %.loopexit.loopexit
	slli.d	$a0, $a7, 2
	stx.w	$zero, $s7, $a0
	ld.w	$a0, $a5, 180
	ld.w	$a1, $a5, 176
	add.w	$a2, $t8, $a0
	add.w	$a4, $a1, $t7
	slli.d	$a0, $t8, 5
	add.d	$a3, $a5, $a0
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 6440
	ori	$a0, $s5, 336
	add.d	$a6, $a3, $a0
	ldx.h	$a7, $a5, $fp
	slli.d	$a0, $t7, 1
	ldx.h	$t0, $a6, $a0
	slli.d	$t1, $a2, 3
	ldx.d	$t6, $a1, $t1
	add.d	$t0, $t0, $a7
	slli.d	$a7, $a4, 1
	stx.h	$t0, $t6, $a7
	ori	$a4, $s5, 852
	ldx.h	$a4, $a5, $a4
	addi.d	$t0, $a0, 2
	ldx.h	$t1, $a6, $t0
	add.d	$a4, $t1, $a4
	addi.d	$t1, $a7, 2
	stx.h	$a4, $t6, $t1
	ori	$a4, $s5, 856
	ldx.h	$a4, $a5, $a4
	addi.d	$t2, $a0, 4
	ldx.h	$t3, $a6, $t2
	add.d	$a4, $t3, $a4
	addi.d	$t3, $a7, 4
	stx.h	$a4, $t6, $t3
	ori	$a4, $s5, 860
	ldx.h	$a4, $a5, $a4
	addi.d	$t4, $a0, 6
	ldx.h	$a6, $a6, $t4
	add.d	$a4, $a6, $a4
	addi.d	$t5, $a7, 6
	stx.h	$a4, $t6, $t5
	addi.w	$a4, $a2, 1
	ori	$a6, $s5, 368
	add.d	$a6, $a3, $a6
	slli.d	$a4, $a4, 3
	ori	$t6, $s5, 912
	ldx.h	$t6, $a5, $t6
	ldx.h	$t7, $a6, $a0
	ldx.d	$a4, $a1, $a4
	add.d	$t6, $t7, $t6
	stx.h	$t6, $a4, $a7
	ori	$t6, $s5, 916
	ldx.h	$t6, $a5, $t6
	ldx.h	$t7, $a6, $t0
	add.d	$t6, $t7, $t6
	stx.h	$t6, $a4, $t1
	ori	$t6, $s5, 920
	ldx.h	$t6, $a5, $t6
	ldx.h	$t7, $a6, $t2
	add.d	$t6, $t7, $t6
	stx.h	$t6, $a4, $t3
	ori	$t6, $s5, 924
	ldx.h	$t6, $a5, $t6
	ldx.h	$a6, $a6, $t4
	add.d	$a6, $a6, $t6
	stx.h	$a6, $a4, $t5
	addi.w	$a4, $a2, 2
	ori	$a6, $s5, 400
	add.d	$a6, $a3, $a6
	slli.d	$a4, $a4, 3
	ori	$t6, $s5, 976
	ldx.h	$t6, $a5, $t6
	ldx.h	$t7, $a6, $a0
	ldx.d	$a4, $a1, $a4
	add.d	$t6, $t7, $t6
	stx.h	$t6, $a4, $a7
	ori	$t6, $s5, 980
	ldx.h	$t6, $a5, $t6
	ldx.h	$t7, $a6, $t0
	add.d	$t6, $t7, $t6
	stx.h	$t6, $a4, $t1
	ori	$t6, $s5, 984
	ldx.h	$t6, $a5, $t6
	ldx.h	$t7, $a6, $t2
	add.d	$t6, $t7, $t6
	stx.h	$t6, $a4, $t3
	ori	$t6, $s5, 988
	ldx.h	$t6, $a5, $t6
	ldx.h	$a6, $a6, $t4
	add.d	$a6, $a6, $t6
	stx.h	$a6, $a4, $t5
	addi.w	$a2, $a2, 3
	ori	$a4, $s5, 432
	add.d	$a3, $a3, $a4
	slli.d	$a2, $a2, 3
	ori	$a4, $s5, 1040
	ldx.h	$a4, $a5, $a4
	ldx.h	$a0, $a3, $a0
	ldx.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a4
	stx.h	$a0, $a1, $a7
	ori	$a0, $s5, 1044
	ldx.h	$a0, $a5, $a0
	ldx.h	$a2, $a3, $t0
	add.d	$a0, $a2, $a0
	stx.h	$a0, $a1, $t1
	ori	$a0, $s5, 1048
	ldx.h	$a0, $a5, $a0
	ldx.h	$a2, $a3, $t2
	add.d	$a0, $a2, $a0
	stx.h	$a0, $a1, $t3
	ori	$a0, $s5, 1052
	ldx.h	$a0, $a5, $a0
	ldx.h	$a2, $a3, $t4
	add.d	$a0, $a2, $a0
	stx.h	$a0, $a1, $t5
	b	.LBB3_25
.LBB3_22:                               # %.preheader232
	slli.d	$a0, $fp, 2
	stx.w	$zero, $s7, $a0
	ld.w	$a3, $s6, 0
	ld.w	$a7, $s6, 8
	move	$a2, $zero
	ld.w	$a0, $s6, 4
	ld.w	$a1, $s6, 12
	add.d	$a4, $a7, $a3
	sub.d	$a3, $a3, $a7
	srli.d	$a6, $a0, 1
	sub.d	$a6, $a6, $a1
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	add.d	$a1, $a0, $a4
	st.w	$a1, $s6, 0
	add.d	$a1, $a6, $a3
	st.w	$a1, $s6, 4
	sub.d	$a1, $a3, $a6
	st.w	$a1, $s6, 8
	sub.d	$a0, $a4, $a0
	ld.w	$a1, $s6, 16
	ld.w	$a3, $s6, 24
	st.w	$a0, $s6, 12
	ld.w	$a0, $s6, 20
	ld.w	$a4, $s6, 28
	add.d	$a6, $a3, $a1
	sub.d	$a1, $a1, $a3
	srli.d	$a3, $a0, 1
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a4, 1
	add.d	$a0, $a4, $a0
	add.d	$a4, $a0, $a6
	st.w	$a4, $s6, 16
	add.d	$a4, $a3, $a1
	st.w	$a4, $s6, 20
	sub.d	$a1, $a1, $a3
	st.w	$a1, $s6, 24
	sub.d	$a0, $a6, $a0
	ld.w	$a1, $s6, 32
	ld.w	$a3, $s6, 40
	st.w	$a0, $s6, 28
	ld.w	$a0, $s6, 36
	ld.w	$a4, $s6, 44
	add.d	$a6, $a3, $a1
	sub.d	$a1, $a1, $a3
	srli.d	$a3, $a0, 1
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a4, 1
	add.d	$a0, $a4, $a0
	add.d	$a4, $a0, $a6
	st.w	$a4, $s6, 32
	add.d	$a4, $a3, $a1
	st.w	$a4, $s6, 36
	sub.d	$a1, $a1, $a3
	st.w	$a1, $s6, 40
	sub.d	$a0, $a6, $a0
	ld.w	$a1, $s6, 48
	ld.w	$a3, $s6, 56
	st.w	$a0, $s6, 44
	ld.w	$a0, $s6, 52
	ld.w	$a4, $s6, 60
	add.d	$a6, $a3, $a1
	sub.d	$a1, $a1, $a3
	srli.d	$a3, $a0, 1
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a4, 1
	add.d	$a0, $a4, $a0
	add.d	$a4, $a0, $a6
	st.w	$a4, $s6, 48
	add.d	$a4, $a3, $a1
	st.w	$a4, $s6, 52
	sub.d	$a1, $a1, $a3
	st.w	$a1, $s6, 56
	sub.d	$a0, $a6, $a0
	st.w	$a0, $s6, 60
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a0, $t6, 5
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 1
	add.d	$a0, $a0, $a5
	lu12i.w	$a1, 3
	ori	$a1, $a1, 432
	add.d	$a3, $a0, $a1
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB3_23:                               # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s6, $a2
	ldx.w	$a1, $s6, $a2
	ld.w	$a4, $a0, 32
	ld.w	$a7, $a0, 16
	ld.w	$a0, $a0, 48
	add.d	$t1, $a4, $a1
	sub.d	$a1, $a1, $a4
	srai.d	$a4, $a7, 1
	sub.d	$a4, $a4, $a0
	ld.hu	$t2, $a3, -96
	srai.d	$a0, $a0, 1
	add.d	$a0, $a0, $a7
	ldptr.w	$a7, $a5, 15520
	slli.d	$t2, $t2, 6
	addi.d	$t1, $t1, 32
	add.d	$t3, $t1, $a0
	add.w	$t2, $t3, $t2
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $a7
	maskeqz	$t2, $t2, $t3
	masknez	$a7, $a7, $t3
	or	$a7, $t2, $a7
	ld.hu	$t2, $a3, -64
	add.d	$t3, $t0, $a2
	stx.w	$a7, $t0, $a2
	ldptr.w	$a7, $a5, 15520
	slli.d	$t2, $t2, 6
	addi.d	$a1, $a1, 32
	add.d	$t4, $a1, $a4
	add.w	$t2, $t4, $t2
	srai.d	$t4, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t4, $t2
	slt	$t4, $t2, $a7
	maskeqz	$t2, $t2, $t4
	masknez	$a7, $a7, $t4
	ld.hu	$t4, $a3, -32
	or	$a7, $t2, $a7
	st.w	$a7, $t3, 64
	ldptr.w	$a7, $a5, 15520
	slli.d	$t2, $t4, 6
	sub.d	$a1, $a1, $a4
	add.w	$a1, $a1, $t2
	srai.d	$a4, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a4, $a1
	slt	$a4, $a1, $a7
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $a7, $a4
	ld.hu	$a7, $a3, 0
	or	$a1, $a1, $a4
	st.w	$a1, $t3, 128
	ldptr.w	$a1, $a5, 15520
	slli.d	$a4, $a7, 6
	sub.d	$a0, $t1, $a0
	add.w	$a0, $a0, $a4
	srai.d	$a4, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a4, $a0
	slt	$a4, $a0, $a1
	maskeqz	$a0, $a0, $a4
	masknez	$a1, $a1, $a4
	or	$a0, $a0, $a1
	st.w	$a0, $t3, 192
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 2
	bne	$a2, $a6, .LBB3_23
# %bb.24:                               # %.preheader230
	ld.w	$a0, $a5, 180
	ld.w	$a1, $a5, 176
	add.w	$a0, $t6, $a0
	add.w	$a1, $a1, $t5
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ldptr.d	$a2, $a2, 6440
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a2, $a3
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ldx.h	$a4, $a5, $a4
	slli.d	$a1, $a1, 1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ldx.h	$a6, $a5, $a6
	stx.h	$a4, $a3, $a1
	addi.d	$a4, $a1, 2
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ldx.h	$a7, $a5, $a7
	stx.h	$a6, $a3, $a4
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ldx.h	$a6, $a5, $a6
	addi.d	$t0, $a1, 4
	stx.h	$a7, $a3, $t0
	addi.d	$a7, $a1, 6
	stx.h	$a6, $a3, $a7
	addi.w	$a3, $a0, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a2, $a3
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ldx.h	$a6, $a5, $a6
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ldx.h	$t1, $a5, $t1
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	ldx.h	$t2, $a5, $t2
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	ldx.h	$t3, $a5, $t3
	stx.h	$a6, $a3, $a1
	stx.h	$t1, $a3, $a4
	stx.h	$t2, $a3, $t0
	stx.h	$t3, $a3, $a7
	addi.w	$a3, $a0, 2
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a2, $a3
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$a6, $a5, $a6
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ldx.h	$t1, $a5, $t1
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ldx.h	$t2, $a5, $t2
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ldx.h	$t3, $a5, $t3
	stx.h	$a6, $a3, $a1
	stx.h	$t1, $a3, $a4
	stx.h	$t2, $a3, $t0
	stx.h	$t3, $a3, $a7
	addi.w	$a0, $a0, 3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$a2, $a5, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$a3, $a5, $a3
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$a6, $a5, $a6
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	ldx.h	$a5, $a5, $t1
	stx.h	$a2, $a0, $a1
	stx.h	$a3, $a0, $a4
	stx.h	$a6, $a0, $t0
	stx.h	$a5, $a0, $a7
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
.LBB3_25:                               # %.loopexit
	move	$a0, $s0
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
.Lfunc_end3:
	.size	dct_luma, .Lfunc_end3-dct_luma
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dct_chroma
.LCPI4_0:
	.dword	8                               # 0x8
	.dword	12                              # 0xc
.LCPI4_1:
	.dword	0                               # 0x0
	.dword	4                               # 0x4
	.text
	.globl	dct_chroma
	.p2align	5
	.type	dct_chroma,@function
dct_chroma:                             # @dct_chroma
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$fp, $a1, 0
	ld.w	$a3, $fp, 12
	ldptr.d	$a1, $fp, 14224
	ori	$a2, $zero, 536
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.w	$a2, $a1, 72
	ldptr.d	$a4, $fp, 14168
	ori	$a1, $zero, 13
	bltu	$a1, $a2, .LBB4_2
# %bb.1:
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a2
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1536
	and	$a3, $a1, $a3
	ori	$a1, $zero, 1
	bnez	$a3, .LBB4_3
.LBB4_2:
	addi.d	$a1, $a2, -14
	sltui	$a1, $a1, 1
.LBB4_3:
	lu12i.w	$t7, 3
	ori	$a2, $t7, 3164
	ldx.w	$a2, $fp, $a2
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ldptr.w	$a5, $fp, 15536
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	sub.w	$a2, $zero, $a2
	alsl.d	$a4, $a0, $a4, 3
	bne	$a3, $a2, .LBB4_5
# %bb.4:
	ldptr.w	$a2, $fp, 15540
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
.LBB4_5:
	ld.d	$t1, $a4, 8
	pcalau12i	$a2, %got_pc_hi20(qp_per_matrix)
	ld.d	$a2, $a2, %got_pc_lo12(qp_per_matrix)
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.w	$a4, $a3, 12
	ori	$a3, $t7, 3168
	ldx.w	$a5, $fp, $a3
	ld.d	$a3, $a2, 0
	add.w	$a7, $a5, $a4
	slli.d	$a2, $a7, 2
	pcalau12i	$a4, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a4, $a4, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(LevelScale4x4Chroma)
	ld.d	$a5, $a5, %got_pc_lo12(LevelScale4x4Chroma)
	ld.d	$a5, $a5, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$t0, $a0, 3
	ldx.d	$a5, $a5, $t0
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(LevelOffset4x4Chroma)
	ld.d	$a1, $a1, %got_pc_lo12(LevelOffset4x4Chroma)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $t0
	pcalau12i	$a6, %got_pc_hi20(InvLevelScale4x4Chroma)
	ld.d	$a6, $a6, %got_pc_lo12(InvLevelScale4x4Chroma)
	ld.d	$a6, $a6, 0
	st.d	$t0, $sp, 232                   # 8-byte Folded Spill
	ldx.d	$a6, $a6, $t0
	ori	$t0, $zero, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $t0, .LBB4_7
# %bb.6:
	addi.w	$a7, $a7, 3
	slli.d	$a7, $a7, 2
	ldx.w	$s4, $a3, $a7
	ldx.w	$a0, $a4, $a7
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s6, $s4, 16
	b	.LBB4_8
.LBB4_7:
	move	$s4, $zero
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	ori	$s6, $zero, 1
.LBB4_8:
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a7, 428
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ldptr.w	$a0, $fp, 15528
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ldx.w	$a0, $a3, $a2
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$s2, $t1, 0
	ld.d	$s3, $t1, 8
	ldx.w	$a0, $a4, $a2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a2, $a5, $a0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ldx.d	$a0, $a6, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dct_chroma.m5)
	addi.d	$a0, $a0, %pc_lo12(dct_chroma.m5)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_16
# %bb.9:                                # %.preheader792
	ldptr.w	$a3, $fp, 15548
	blez	$a3, .LBB4_16
# %bb.10:                               # %.preheader791.lr.ph
	ori	$a0, $t7, 3256
	ldx.w	$a2, $fp, $a0
	move	$a0, $zero
	ori	$a1, $t7, 1052
	add.d	$a1, $fp, $a1
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 256
	bge	$a0, $a3, .LBB4_16
.LBB4_12:                               # %.preheader791
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	blez	$a2, .LBB4_11
# %bb.13:                               # %.preheader790.lr.ph
                                        #   in Loop: Header=BB4_12 Depth=1
	move	$a3, $zero
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_14:                               # %.preheader790
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a4, -204
	ld.w	$a5, $a4, -192
	ld.w	$a6, $a4, -200
	ld.w	$a7, $a4, -196
	add.w	$t0, $a5, $a2
	add.w	$t1, $a7, $a6
	sub.d	$a7, $a6, $a7
	sub.d	$a2, $a2, $a5
	add.d	$a6, $t1, $t0
	sub.d	$a5, $t0, $t1
	st.w	$a5, $a4, -196
	alsl.d	$a5, $a2, $a7, 1
	st.w	$a5, $a4, -200
	slli.d	$a5, $a7, 1
	ld.w	$a7, $a4, -140
	ld.w	$t0, $a4, -128
	ld.w	$t1, $a4, -136
	ld.w	$t2, $a4, -132
	sub.d	$a2, $a2, $a5
	st.w	$a2, $a4, -192
	add.d	$a5, $t0, $a7
	add.d	$t5, $t2, $t1
	sub.d	$t1, $t1, $t2
	sub.d	$a7, $a7, $t0
	add.d	$a2, $t5, $a5
	st.w	$a2, $a4, -140
	sub.d	$a5, $a5, $t5
	st.w	$a5, $a4, -132
	alsl.d	$a5, $a7, $t1, 1
	st.w	$a5, $a4, -136
	slli.d	$a5, $t1, 1
	ld.w	$t0, $a4, -76
	ld.w	$t1, $a4, -64
	ld.w	$t2, $a4, -72
	ld.w	$t5, $a4, -68
	sub.d	$a5, $a7, $a5
	st.w	$a5, $a4, -128
	add.d	$a5, $t1, $t0
	add.d	$a7, $t5, $t2
	sub.d	$t2, $t2, $t5
	sub.w	$t0, $t0, $t1
	add.d	$t1, $a7, $a5
	st.w	$t1, $a4, -76
	sub.d	$a7, $a5, $a7
	st.w	$a7, $a4, -68
	alsl.d	$a5, $t0, $t2, 1
	st.w	$a5, $a4, -72
	slli.d	$t2, $t2, 1
	ld.w	$t5, $a4, -12
	ld.w	$t8, $a4, 0
	ld.w	$s0, $a4, -8
	ld.w	$s1, $a4, -4
	sub.d	$t0, $t0, $t2
	st.w	$t0, $a4, -64
	add.w	$t0, $t8, $t5
	add.w	$t2, $s1, $s0
	add.d	$s7, $t2, $t0
	st.w	$s7, $a4, -12
	sub.d	$t0, $t0, $t2
	st.w	$t0, $a4, -4
	add.d	$t2, $s7, $a6
	add.d	$s8, $t1, $a2
	add.d	$ra, $s8, $t2
	st.w	$ra, $a4, -204
	sub.d	$t2, $t2, $s8
	st.w	$t2, $a4, -76
	ld.w	$t2, $a4, -136
	ld.w	$s8, $a4, -196
	ld.w	$ra, $a4, -132
	ld.w	$t6, $a4, -200
	add.d	$t7, $a5, $t2
	add.d	$t4, $t0, $s8
	add.d	$t3, $a7, $ra
	add.d	$s5, $t3, $t4
	st.w	$s5, $a4, -196
	sub.d	$t3, $t4, $t3
	st.w	$t3, $a4, -68
	sub.w	$t3, $s0, $s1
	sub.w	$t4, $t5, $t8
	alsl.d	$t5, $t4, $t3, 1
	st.w	$t5, $a4, -8
	sub.d	$a2, $a2, $t1
	sub.d	$a6, $a6, $s7
	alsl.d	$t1, $a6, $a2, 1
	st.w	$t1, $a4, -140
	add.d	$t1, $t5, $t6
	sub.d	$a5, $t2, $a5
	sub.d	$t2, $t6, $t5
	add.d	$t5, $t7, $t1
	st.w	$t5, $a4, -200
	sub.d	$t1, $t1, $t7
	st.w	$t1, $a4, -72
	alsl.d	$t1, $t2, $a5, 1
	st.w	$t1, $a4, -136
	sub.d	$a7, $ra, $a7
	sub.d	$t0, $s8, $t0
	vinsgr2vr.w	$vr0, $a2, 0
	vinsgr2vr.w	$vr0, $a5, 1
	vinsgr2vr.w	$vr0, $a7, 2
	vinsgr2vr.w	$vr0, $t3, 3
	vslli.w	$vr0, $vr0, 1
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $t2, 1
	vinsgr2vr.w	$vr1, $t0, 2
	vinsgr2vr.w	$vr1, $t4, 3
	vsub.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, -12
	ld.w	$a2, $a4, -192
	ld.w	$t1, $a4, 0
	ld.w	$a6, $a4, -128
	ld.w	$t2, $a4, -64
	alsl.d	$a5, $t0, $a7, 1
	st.w	$a5, $a4, -132
	add.d	$t0, $t1, $a2
	add.d	$a5, $t2, $a6
	sub.d	$a6, $a6, $t2
	sub.d	$a7, $a2, $t1
	add.d	$a2, $a5, $t0
	st.w	$a2, $a4, -192
	sub.d	$a2, $t0, $a5
	st.w	$a2, $a4, -64
	alsl.d	$a2, $a7, $a6, 1
	st.w	$a2, $a4, -128
	slli.d	$a2, $a6, 1
	sub.d	$a2, $a7, $a2
	st.w	$a2, $a4, 0
	ldptr.w	$a2, $fp, 15544
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	blt	$a3, $a2, .LBB4_14
# %bb.15:                               # %._crit_edge
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.w	$t0, $a4, 0
	lu12i.w	$t7, 3
	ori	$a3, $t7, 3260
	ldx.w	$a3, $fp, $a3
	st.w	$a5, $a4, 4
	st.w	$a6, $a4, 8
	st.w	$a7, $a4, 12
	b	.LBB4_11
.LBB4_16:                               # %.loopexit793
	pcalau12i	$a0, %pc_hi20(SNGL_SCAN)
	addi.d	$s0, $a0, %pc_lo12(SNGL_SCAN)
	ori	$a0, $zero, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	beq	$a3, $a0, .LBB4_54
# %bb.17:                               # %.loopexit793
	ori	$a0, $zero, 2
	beq	$a3, $a0, .LBB4_30
# %bb.18:                               # %.loopexit793
	ori	$a0, $zero, 3
	bne	$a3, $a0, .LBB4_59
# %bb.19:                               # %.preheader788
	pcalau12i	$a0, %pc_hi20(dct_chroma.m4)
	addi.d	$s4, $a0, %pc_lo12(dct_chroma.m4)
	ldptr.w	$a0, $fp, 15548
	blez	$a0, .LBB4_60
# %bb.20:                               # %.preheader787.lr.ph
	ldptr.w	$a1, $fp, 15544
	move	$a3, $zero
	lu12i.w	$a5, 3
	ori	$a2, $a5, 848
	add.d	$a4, $fp, $a2
	addi.d	$a2, $a1, -1
	srli.d	$a2, $a2, 2
	addi.d	$a6, $a2, 1
	bstrpick.d	$a2, $a6, 62, 2
	slli.d	$a7, $a2, 2
	slli.d	$t1, $a2, 4
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	pcalau12i	$a2, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI4_1)
	ori	$a2, $a5, 896
	add.d	$t5, $fp, $a2
	ori	$t8, $zero, 13
	move	$s1, $s4
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_21:                               # %._crit_edge809
                                        #   in Loop: Header=BB4_22 Depth=1
	addi.d	$a3, $a3, 4
	addi.d	$t5, $t5, 256
	addi.d	$a4, $a4, 256
	addi.d	$s1, $s1, 4
	bgeu	$a3, $a0, .LBB4_60
.LBB4_22:                               # %.preheader787
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	blez	$a1, .LBB4_21
# %bb.23:                               # %.lr.ph
                                        #   in Loop: Header=BB4_22 Depth=1
	bgeu	$a1, $t8, .LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_22 Depth=1
	move	$a2, $zero
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_25:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_22 Depth=1
	add.d	$a2, $s4, $a3
	move	$a5, $t5
	move	$t0, $a7
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB4_26:                               # %vector.body
                                        #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a5, -48
	ld.w	$t3, $a5, -32
	ld.w	$t4, $a5, -16
	ld.w	$t6, $a5, 0
	vsrli.d	$vr4, $vr3, 2
	vsrli.d	$vr5, $vr2, 2
	vpickve2gr.d	$t7, $vr5, 0
	slli.d	$t7, $t7, 4
	vpickve2gr.d	$s5, $vr5, 1
	slli.d	$s5, $s5, 4
	vpickve2gr.d	$s6, $vr4, 0
	slli.d	$s6, $s6, 4
	vpickve2gr.d	$s7, $vr4, 1
	slli.d	$s7, $s7, 4
	stx.w	$t2, $a2, $t7
	stx.w	$t3, $a2, $s5
	stx.w	$t4, $a2, $s6
	stx.w	$t6, $a2, $s7
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr3, $vr3, 16
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB4_22 Depth=1
	move	$a2, $t1
	beq	$a6, $a7, .LBB4_21
.LBB4_28:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_22 Depth=1
	slli.d	$t0, $a2, 2
	alsl.d	$a5, $a2, $a4, 2
	bstrins.d	$t0, $zero, 3, 0
	add.d	$t0, $s1, $t0
	.p2align	4, , 16
.LBB4_29:                               # %scalar.ph
                                        #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a5, 0
	st.w	$t2, $t0, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, 16
	blt	$a2, $a1, .LBB4_29
	b	.LBB4_21
.LBB4_30:                               # %.preheader780
	ldptr.w	$a0, $fp, 15548
	pcalau12i	$a1, %pc_hi20(dct_chroma.m3)
	addi.d	$s7, $a1, %pc_lo12(dct_chroma.m3)
	blez	$a0, .LBB4_41
# %bb.31:                               # %.preheader779.lr.ph
	ldptr.w	$a1, $fp, 15544
	move	$a3, $zero
	lu12i.w	$a5, 3
	ori	$a2, $a5, 848
	add.d	$a4, $fp, $a2
	addi.d	$a2, $a1, -1
	srli.d	$a2, $a2, 2
	addi.d	$a6, $a2, 1
	bstrpick.d	$a2, $a6, 62, 2
	slli.d	$a7, $a2, 2
	slli.d	$t1, $a2, 4
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	pcalau12i	$a2, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI4_1)
	ori	$a2, $a5, 896
	add.d	$t5, $fp, $a2
	ori	$t8, $zero, 13
	move	$s1, $s7
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_32:                               # %._crit_edge836
                                        #   in Loop: Header=BB4_33 Depth=1
	addi.d	$a3, $a3, 4
	addi.d	$t5, $t5, 256
	addi.d	$a4, $a4, 256
	addi.d	$s1, $s1, 4
	bgeu	$a3, $a0, .LBB4_41
.LBB4_33:                               # %.preheader779
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_37 Depth 2
                                        #     Child Loop BB4_40 Depth 2
	blez	$a1, .LBB4_32
# %bb.34:                               # %.lr.ph835
                                        #   in Loop: Header=BB4_33 Depth=1
	bgeu	$a1, $t8, .LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_33 Depth=1
	move	$a2, $zero
	b	.LBB4_39
	.p2align	4, , 16
.LBB4_36:                               # %vector.body1167.preheader
                                        #   in Loop: Header=BB4_33 Depth=1
	add.d	$a2, $s7, $a3
	move	$a5, $t5
	move	$t0, $a7
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB4_37:                               # %vector.body1167
                                        #   Parent Loop BB4_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a5, -48
	ld.w	$t3, $a5, -32
	ld.w	$t4, $a5, -16
	ld.w	$t6, $a5, 0
	vsrli.d	$vr4, $vr3, 2
	vsrli.d	$vr5, $vr2, 2
	vpickve2gr.d	$t7, $vr5, 0
	slli.d	$t7, $t7, 4
	vpickve2gr.d	$s5, $vr5, 1
	slli.d	$s5, $s5, 4
	vpickve2gr.d	$s8, $vr4, 0
	slli.d	$s8, $s8, 4
	vpickve2gr.d	$ra, $vr4, 1
	slli.d	$ra, $ra, 4
	stx.w	$t2, $a2, $t7
	stx.w	$t3, $a2, $s5
	stx.w	$t4, $a2, $s8
	stx.w	$t6, $a2, $ra
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr3, $vr3, 16
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_37
# %bb.38:                               # %middle.block1173
                                        #   in Loop: Header=BB4_33 Depth=1
	move	$a2, $t1
	beq	$a6, $a7, .LBB4_32
.LBB4_39:                               # %scalar.ph1162.preheader
                                        #   in Loop: Header=BB4_33 Depth=1
	slli.d	$t0, $a2, 2
	alsl.d	$a5, $a2, $a4, 2
	bstrins.d	$t0, $zero, 3, 0
	add.d	$t0, $s1, $t0
	.p2align	4, , 16
.LBB4_40:                               # %scalar.ph1162
                                        #   Parent Loop BB4_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a5, 0
	st.w	$t2, $t0, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, 16
	blt	$a2, $a1, .LBB4_40
	b	.LBB4_32
.LBB4_41:                               # %._crit_edge840
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_43
# %bb.42:                               # %.loopexit778
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s7, 16
	ld.w	$a2, $s7, 4
	ld.w	$a3, $s7, 20
	ld.w	$a4, $s7, 8
	ld.w	$a5, $s7, 24
	ld.w	$a6, $s7, 12
	ld.w	$a7, $s7, 28
	add.d	$t0, $a1, $a0
	add.d	$t1, $a3, $a2
	add.d	$t2, $a5, $a4
	add.d	$t3, $a7, $a6
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a3
	sub.d	$a2, $a4, $a5
	sub.d	$a3, $a6, $a7
	add.d	$a4, $t3, $t0
	add.d	$a5, $t2, $t1
	sub.d	$a6, $t1, $t2
	sub.d	$a7, $t0, $t3
	add.d	$t0, $a5, $a4
	pcalau12i	$t1, %pc_hi20(dct_chroma.m4)
	addi.d	$t1, $t1, %pc_lo12(dct_chroma.m4)
	st.w	$t0, $t1, 0
	sub.d	$a4, $a4, $a5
	st.w	$a4, $t1, 8
	add.d	$a4, $a6, $a7
	st.w	$a4, $t1, 4
	sub.d	$a4, $a7, $a6
	st.w	$a4, $t1, 12
	add.d	$a4, $a3, $a0
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a3
	add.d	$a2, $a5, $a4
	st.w	$a2, $t1, 16
	sub.d	$a2, $a4, $a5
	st.w	$a2, $t1, 24
	add.d	$a2, $a1, $a0
	st.w	$a2, $t1, 20
	sub.d	$a2, $a0, $a1
	st.w	$a2, $t1, 28
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.w	$a4, $a2, 0
	st.w	$a5, $a2, 4
	st.w	$a1, $a2, 8
	st.w	$a0, $a2, 12
.LBB4_43:
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a0, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a0, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 4080
	sll.w	$a4, $a2, $a0
	pcalau12i	$a0, %pc_hi20(SCAN_YUV422+1)
	addi.d	$a6, $a0, %pc_lo12(SCAN_YUV422+1)
	addi.d	$a7, $zero, -1
	ori	$t1, $zero, 7
	pcalau12i	$a0, %pc_hi20(dct_chroma.m4)
	addi.d	$a0, $a0, %pc_lo12(dct_chroma.m4)
	move	$s8, $zero
	move	$s1, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ori	$t4, $zero, 1
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_44:                               #   in Loop: Header=BB4_46 Depth=1
	beqz	$t1, .LBB4_76
.LBB4_45:                               # %.backedge.backedge
                                        #   in Loop: Header=BB4_46 Depth=1
	addi.d	$t1, $t1, -1
	addi.d	$a6, $a6, 2
.LBB4_46:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a6, 0
	ld.bu	$t5, $a6, -1
	slli.d	$t8, $a2, 2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_48
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	alsl.d	$a2, $t5, $s7, 4
	ldx.w	$a2, $a2, $t8
	srai.d	$a5, $a2, 31
	xor	$t0, $a2, $a5
	sub.w	$t0, $t0, $a5
	alsl.d	$a5, $t5, $a0, 4
	stx.w	$a2, $a5, $t8
	addi.d	$a7, $a7, 1
	bnez	$t0, .LBB4_49
	b	.LBB4_50
	.p2align	4, , 16
.LBB4_48:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a5, $a1, 0
	ld.d	$t0, $a3, 0
	alsl.d	$a2, $t5, $a0, 4
	ldx.w	$a2, $a2, $t8
	ld.d	$a5, $a5, 0
	ld.d	$t0, $t0, 0
	srai.d	$t2, $a2, 31
	ld.w	$a5, $a5, 0
	ld.w	$t0, $t0, 0
	xor	$t3, $a2, $t2
	sub.d	$t2, $t3, $t2
	mul.d	$a5, $a5, $t2
	alsl.w	$a5, $t0, $a5, 1
	sra.w	$t0, $a5, $s6
	addi.d	$a7, $a7, 1
	beqz	$t0, .LBB4_50
.LBB4_49:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $t2, 368
	or	$a5, $a5, $a4
	st.d	$a5, $t2, 368
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	slt	$a5, $t4, $t3
	ori	$t2, $zero, 1
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	masknez	$t2, $t4, $a5
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $t2
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	slti	$a5, $a2, 0
	srai.d	$t2, $t0, 31
	xor	$t3, $t0, $t2
	sub.d	$t2, $t3, $t2
	sub.d	$t3, $zero, $t2
	masknez	$t2, $t2, $a5
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $t2
	slli.d	$t2, $s1, 2
	stx.w	$a5, $s2, $t2
	stx.w	$a7, $s3, $t2
	addi.w	$s1, $s1, 1
	addi.d	$a7, $zero, -1
.LBB4_50:                               #   in Loop: Header=BB4_46 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	bnez	$a5, .LBB4_44
# %bb.51:                               # %.thread1084
                                        #   in Loop: Header=BB4_46 Depth=1
	slti	$a2, $a2, 0
	srai.d	$a5, $t0, 31
	xor	$t0, $t0, $a5
	sub.d	$a5, $t0, $a5
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $t0, $a2
	or	$a2, $a2, $a5
	alsl.d	$a5, $t5, $s7, 4
	stx.w	$a2, $a5, $t8
	bnez	$t1, .LBB4_45
# %bb.52:
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s2, $a1
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s7, 16
	ld.w	$a3, $s7, 4
	ld.w	$a4, $s7, 20
	add.d	$a5, $a2, $a1
	st.w	$a5, $a0, 0
	add.d	$t0, $a4, $a3
	ld.w	$t1, $s7, 8
	ld.w	$t2, $s7, 24
	ld.w	$t3, $s7, 12
	ld.w	$t4, $s7, 28
	st.w	$t0, $a0, 4
	add.d	$t6, $t2, $t1
	st.w	$t6, $a0, 8
	add.d	$t7, $t4, $t3
	st.w	$t7, $a0, 12
	sub.d	$a7, $a1, $a2
	st.w	$a7, $a0, 16
	sub.d	$a6, $a3, $a4
	st.w	$a6, $a0, 20
	sub.d	$t5, $t1, $t2
	st.w	$t5, $a0, 24
	sub.d	$t1, $t3, $t4
	st.w	$t1, $a0, 28
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s4, -4
	ori	$t3, $zero, 3
	sub.d	$a2, $t3, $s4
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ori	$a3, $zero, 1
	sll.w	$a3, $a3, $a2
	ori	$a2, $zero, 4
	ld.d	$a0, $a0, 0
	sub.d	$a4, $a2, $s4
	add.d	$a2, $t6, $a5
	sub.d	$a5, $a5, $t6
	ld.w	$t2, $a0, 0
	sub.d	$t4, $t0, $t7
	add.d	$t6, $t7, $t0
	add.d	$t0, $t6, $a2
	mul.d	$t2, $t2, $t0
	add.d	$t0, $t4, $a5
	sub.d	$a5, $a5, $t4
	sub.d	$a2, $a2, $t6
	blt	$t3, $s4, .LBB4_82
# %bb.53:
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	stptr.w	$t2, $fp, 13136
	ld.w	$t2, $a0, 0
	mul.d	$t0, $t2, $t0
	add.d	$t0, $t0, $a3
	sra.w	$t0, $t0, $a4
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $fp, 13392
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $fp, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	b	.LBB4_83
.LBB4_54:
	ldptr.w	$s5, $fp, 13136
	ldptr.w	$t1, $fp, 13152
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a5, $t2, 2
	lu12i.w	$a0, 240
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_77
# %bb.55:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a3, $a1, 0
	bstrpick.d	$a1, $a5, 31, 2
	slli.d	$a1, $a1, 2
	ldptr.w	$a7, $a3, 4008
	sll.w	$a0, $a0, $a1
	srai.d	$a1, $s5, 31
	xor	$a2, $s5, $a1
	sub.w	$a2, $a2, $a1
	bnez	$a7, .LBB4_57
# %bb.56:
	ld.w	$a1, $fp, 36
	slti	$a1, $a1, 4
	ori	$a4, $zero, 2063
	sltu	$a5, $a2, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a2, $a5
	or	$a4, $a5, $a4
	maskeqz	$a4, $a4, $a1
	masknez	$a1, $a2, $a1
	or	$a2, $a4, $a1
.LBB4_57:
	ldptr.w	$a4, $fp, 13392
	ldptr.w	$a1, $fp, 13408
	beqz	$a2, .LBB4_150
# %bb.58:
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $a6, 368
	move	$t5, $zero
	or	$a5, $a5, $a0
	st.d	$a5, $a6, 368
	ori	$t3, $zero, 1
	slti	$a5, $s5, 0
	sub.d	$a6, $zero, $a2
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $a6, $a5
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	slt	$a6, $t3, $t0
	or	$a2, $a5, $a2
	st.w	$a2, $s2, 0
	st.w	$zero, $s3, 0
	ori	$a2, $zero, 4008
	ldx.w	$a7, $a3, $a2
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	masknez	$a2, $t3, $a6
	maskeqz	$a5, $t0, $a6
	or	$a2, $a5, $a2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	b	.LBB4_151
.LBB4_59:
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	b	.LBB4_89
.LBB4_60:                               # %.preheader786
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_62
# %bb.61:                               # %.lr.ph818.preheader
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s4, 48
	ld.w	$a2, $s4, 16
	ld.w	$a3, $s4, 32
	add.d	$a4, $a1, $a0
	add.d	$a5, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a0, $a0, $a1
	add.d	$a7, $a5, $a4
	sub.d	$a1, $a4, $a5
	ld.w	$a3, $s4, 4
	ld.w	$a5, $s4, 52
	ld.w	$a6, $s4, 20
	ld.w	$t0, $s4, 36
	add.d	$a4, $a2, $a0
	sub.d	$a0, $a0, $a2
	add.d	$a2, $a5, $a3
	add.d	$t1, $t0, $a6
	sub.d	$a6, $a6, $t0
	sub.d	$a5, $a3, $a5
	add.d	$t0, $t1, $a2
	sub.d	$a3, $a2, $t1
	ld.w	$t1, $s4, 8
	ld.w	$t2, $s4, 56
	ld.w	$t3, $s4, 24
	ld.w	$t4, $s4, 40
	add.d	$t5, $a6, $a5
	sub.d	$a2, $a5, $a6
	add.d	$a5, $t2, $t1
	add.d	$a6, $t4, $t3
	sub.d	$t3, $t3, $t4
	sub.d	$t1, $t1, $t2
	add.d	$t2, $a6, $a5
	sub.d	$a5, $a5, $a6
	ld.w	$t4, $s4, 12
	ld.w	$t6, $s4, 60
	ld.w	$t7, $s4, 28
	ld.w	$t8, $s4, 44
	add.d	$s1, $t3, $t1
	sub.d	$a6, $t1, $t3
	add.d	$t1, $t6, $t4
	add.d	$t3, $t8, $t7
	sub.d	$t7, $t7, $t8
	sub.d	$t4, $t4, $t6
	add.d	$t6, $t3, $t1
	sub.d	$t1, $t1, $t3
	add.d	$t3, $t7, $t4
	sub.d	$t4, $t4, $t7
	add.d	$t7, $t6, $a7
	add.d	$t8, $t2, $t0
	sub.d	$t0, $t0, $t2
	sub.d	$a7, $a7, $t6
	add.w	$t2, $t8, $t7
	srli.d	$t2, $t2, 1
	st.w	$t2, $s4, 0
	sub.w	$t2, $t7, $t8
	srli.d	$t2, $t2, 1
	st.w	$t2, $s4, 8
	add.w	$t2, $t0, $a7
	srli.d	$t2, $t2, 1
	st.w	$t2, $s4, 4
	sub.w	$a7, $a7, $t0
	srli.d	$a7, $a7, 1
	st.w	$a7, $s4, 12
	add.d	$a7, $t3, $a4
	add.d	$t0, $s1, $t5
	sub.d	$t2, $t5, $s1
	sub.d	$a4, $a4, $t3
	add.w	$t3, $t0, $a7
	srli.d	$t3, $t3, 1
	st.w	$t3, $s4, 16
	sub.w	$a7, $a7, $t0
	srli.d	$a7, $a7, 1
	st.w	$a7, $s4, 24
	add.w	$a7, $t2, $a4
	srli.d	$a7, $a7, 1
	st.w	$a7, $s4, 20
	sub.w	$a4, $a4, $t2
	srli.d	$a4, $a4, 1
	st.w	$a4, $s4, 28
	add.d	$a4, $t1, $a1
	add.d	$a7, $a5, $a3
	sub.d	$a3, $a3, $a5
	sub.d	$a1, $a1, $t1
	add.w	$a5, $a7, $a4
	srli.d	$a5, $a5, 1
	st.w	$a5, $s4, 32
	sub.w	$a4, $a4, $a7
	srli.d	$a4, $a4, 1
	st.w	$a4, $s4, 40
	add.w	$a4, $a3, $a1
	srli.d	$a4, $a4, 1
	st.w	$a4, $s4, 36
	sub.w	$a1, $a1, $a3
	srli.d	$a1, $a1, 1
	st.w	$a1, $s4, 44
	add.d	$a1, $t4, $a0
	add.d	$a3, $a6, $a2
	sub.d	$a2, $a2, $a6
	sub.d	$a0, $a0, $t4
	add.w	$a4, $a3, $a1
	srli.d	$a4, $a4, 1
	st.w	$a4, $s4, 48
	sub.w	$a4, $a1, $a3
	srli.d	$a4, $a4, 1
	st.w	$a4, $s4, 56
	add.w	$a4, $a2, $a0
	srli.d	$a4, $a4, 1
	st.w	$a4, $s4, 52
	sub.w	$a4, $a0, $a2
	srli.d	$a4, $a4, 1
	st.w	$a4, $s4, 60
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.w	$a1, $a4, 0
	st.w	$a3, $a4, 4
	st.w	$a2, $a4, 8
	st.w	$a0, $a4, 12
.LBB4_62:                               # %.preheader784
	move	$a1, $zero
	move	$a0, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$a6, $a2, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 4
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	sll.d	$a7, $a5, $a2
	addi.d	$t1, $s0, 1
	addi.d	$t8, $zero, -1
	ori	$t5, $zero, 15
	lu12i.w	$t7, 3
	ori	$s1, $zero, 1
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_63:                               #   in Loop: Header=BB4_65 Depth=1
	beqz	$t5, .LBB4_81
.LBB4_64:                               # %.backedge1110.backedge
                                        #   in Loop: Header=BB4_65 Depth=1
	addi.d	$t5, $t5, -1
	addi.d	$t1, $t1, 2
.LBB4_65:                               # %.backedge1110
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $t1, -1
	ld.bu	$a5, $t1, 0
	alsl.d	$a2, $a2, $s4, 4
	slli.d	$t0, $a5, 2
	ldx.w	$a5, $a2, $t0
	srai.d	$t2, $a5, 31
	xor	$t3, $a5, $t2
	sub.w	$t2, $t3, $t2
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_67
# %bb.66:                               #   in Loop: Header=BB4_65 Depth=1
	ld.d	$t3, $a3, 0
	ld.d	$t4, $a4, 0
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	ld.w	$t3, $t3, 0
	ld.w	$t4, $t4, 0
	mul.d	$t2, $t3, $t2
	alsl.w	$t2, $t4, $t2, 1
	sra.w	$t2, $t2, $a6
.LBB4_67:                               #   in Loop: Header=BB4_65 Depth=1
	addi.d	$t8, $t8, 1
	slti	$a5, $a5, 0
	beqz	$t2, .LBB4_69
# %bb.68:                               #   in Loop: Header=BB4_65 Depth=1
	ld.d	$t4, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t3, $t4, 368
	or	$t3, $t3, $a7
	st.d	$t3, $t4, 368
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	slt	$t3, $s1, $t6
	ori	$t4, $zero, 1
	st.d	$t4, $sp, 88                    # 8-byte Folded Spill
	masknez	$t4, $s1, $t3
	maskeqz	$t3, $t6, $t3
	or	$t3, $t3, $t4
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	srai.d	$t3, $t2, 31
	xor	$t4, $t2, $t3
	sub.d	$t3, $t4, $t3
	sub.d	$t4, $zero, $t3
	masknez	$t3, $t3, $a5
	maskeqz	$t4, $t4, $a5
	or	$t3, $t4, $t3
	slli.d	$t4, $a0, 2
	stx.w	$t3, $s2, $t4
	stx.w	$t8, $s3, $t4
	addi.w	$a0, $a0, 1
	addi.d	$t8, $zero, -1
.LBB4_69:                               #   in Loop: Header=BB4_65 Depth=1
	addi.d	$a1, $a1, 1
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_63
# %bb.70:                               # %.thread1088
                                        #   in Loop: Header=BB4_65 Depth=1
	srai.d	$t3, $t2, 31
	xor	$t2, $t2, $t3
	sub.d	$t2, $t2, $t3
	sub.d	$t3, $zero, $t2
	masknez	$t2, $t2, $a5
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $t2
	stx.w	$a5, $a2, $t0
	bnez	$t5, .LBB4_64
# %bb.71:                               # %.preheader783.preheader
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	ld.w	$a1, $s4, 0
	ld.w	$a2, $s4, 32
	ld.w	$a3, $s4, 16
	ld.w	$a4, $s4, 48
	move	$a0, $zero
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a4
	add.d	$a3, $a4, $a3
	add.d	$a4, $a3, $a5
	st.w	$a4, $s4, 0
	add.d	$a4, $a2, $a1
	st.w	$a4, $s4, 16
	sub.d	$a1, $a1, $a2
	st.w	$a1, $s4, 32
	sub.d	$a1, $a5, $a3
	ld.w	$a2, $s4, 4
	ld.w	$a3, $s4, 36
	ld.w	$a4, $s4, 20
	ld.w	$a5, $s4, 52
	st.w	$a1, $s4, 48
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $s4, 4
	add.d	$a5, $a3, $a2
	st.w	$a5, $s4, 20
	sub.d	$a2, $a2, $a3
	st.w	$a2, $s4, 36
	sub.d	$a1, $a1, $a4
	ld.w	$a2, $s4, 8
	ld.w	$a3, $s4, 40
	ld.w	$a4, $s4, 24
	ld.w	$a5, $s4, 56
	st.w	$a1, $s4, 52
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $s4, 8
	add.d	$a5, $a3, $a2
	st.w	$a5, $s4, 24
	sub.d	$a2, $a2, $a3
	st.w	$a2, $s4, 40
	sub.d	$a1, $a1, $a4
	ld.w	$a2, $s4, 12
	ld.w	$a3, $s4, 44
	ld.w	$a4, $s4, 28
	ld.w	$a5, $s4, 60
	st.w	$a1, $s4, 56
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $s4, 12
	add.d	$a5, $a3, $a2
	st.w	$a5, $s4, 28
	sub.d	$a2, $a2, $a3
	st.w	$a2, $s4, 44
	sub.d	$a1, $a1, $a4
	st.w	$a1, $s4, 60
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a2, $a1, 3
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a7, -4
	ori	$a3, $t7, 1616
	add.d	$a3, $fp, $a3
	ori	$a4, $zero, 3
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a2
	sub.d	$a2, $a4, $a7
	ori	$a6, $zero, 1
	sll.w	$a2, $a6, $a2
	ld.d	$a6, $a5, 0
	ori	$a5, $zero, 4
	sub.d	$a7, $a5, $a7
	ori	$t1, $zero, 64
	b	.LBB4_74
	.p2align	4, , 16
.LBB4_72:                               #   in Loop: Header=BB4_74 Depth=1
	sll.w	$t3, $t8, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $t0, -768
	ld.w	$t3, $a6, 0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $t0, -512
	ld.w	$t3, $a6, 0
	mul.d	$t2, $t3, $t2
	sll.w	$t2, $t2, $a1
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.w	$t2, $t0, -256
	ld.w	$t0, $a6, 0
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $a1
.LBB4_73:                               #   in Loop: Header=BB4_74 Depth=1
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stx.w	$a5, $a3, $a0
	addi.d	$a0, $a0, 16
	beq	$a0, $t1, .LBB4_87
.LBB4_74:                               # =>This Inner Loop Header: Depth=1
	add.d	$a5, $s4, $a0
	ldx.w	$t0, $s4, $a0
	ld.w	$t2, $a5, 8
	ld.w	$t3, $a5, 4
	ld.w	$a5, $a5, 12
	add.d	$t4, $t2, $t0
	sub.d	$t2, $t0, $t2
	ld.w	$t0, $a6, 0
	sub.d	$t6, $t3, $a5
	add.d	$a5, $a5, $t3
	add.d	$t3, $a5, $t4
	mul.d	$t8, $t0, $t3
	add.d	$t0, $a3, $a0
	add.d	$t5, $t6, $t2
	sub.d	$t2, $t2, $t6
	sub.d	$a5, $t4, $a5
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	blt	$a4, $t3, .LBB4_72
# %bb.75:                               #   in Loop: Header=BB4_74 Depth=1
	add.d	$t3, $t8, $a2
	sra.w	$t3, $t3, $a7
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $t0, -768
	ld.w	$t3, $a6, 0
	mul.d	$t3, $t3, $t5
	add.d	$t3, $t3, $a2
	sra.w	$t3, $t3, $a7
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $t0, -512
	ld.w	$t3, $a6, 0
	mul.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a2
	sra.w	$t2, $t2, $a7
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.w	$t2, $t0, -256
	ld.w	$t0, $a6, 0
	mul.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a2
	sra.w	$a5, $a5, $a7
	b	.LBB4_73
.LBB4_76:
	slli.d	$a0, $s1, 2
	stx.w	$zero, $s2, $a0
	lu12i.w	$t7, 3
	b	.LBB4_87
.LBB4_77:
	ori	$a1, $t7, 1104
	ldx.w	$ra, $fp, $a1
	ori	$a1, $t7, 1120
	ldx.w	$s6, $fp, $a1
	add.d	$t8, $t1, $s5
	add.d	$t5, $s6, $ra
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	slli.d	$s4, $a1, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s4
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a2, $t0, 3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a2
	add.w	$a2, $t5, $t8
	add.d	$a4, $s5, $ra
	ld.d	$a7, $a1, 0
	ld.d	$a6, $a3, 0
	add.d	$a1, $t1, $s6
	sub.w	$a4, $a4, $a1
	addi.d	$a1, $t0, 16
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$s1, $a3, 0
	bstrpick.d	$a3, $a5, 31, 2
	slli.d	$a3, $a3, 2
	sll.w	$a0, $a0, $a3
	srai.d	$a3, $a2, 31
	xor	$a5, $a2, $a3
	ld.w	$t0, $a7, 0
	ld.w	$t2, $a6, 0
	ldptr.w	$s7, $s1, 4008
	sub.d	$a3, $a5, $a3
	mul.d	$a3, $t0, $a3
	alsl.w	$a3, $t2, $a3, 1
	sra.w	$a3, $a3, $a1
	bnez	$s7, .LBB4_79
# %bb.78:
	ld.w	$a5, $fp, 36
	slti	$a5, $a5, 4
	ori	$t0, $zero, 2063
	slt	$t2, $a3, $t0
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $a3, $t2
	or	$t0, $t2, $t0
	maskeqz	$t0, $t0, $a5
	masknez	$a3, $a3, $a5
	or	$a3, $t0, $a3
.LBB4_79:
	beqz	$a3, .LBB4_155
# %bb.80:
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $t0, 368
	move	$s8, $zero
	or	$a5, $a5, $a0
	st.d	$a5, $t0, 368
	ori	$t2, $zero, 1
	slti	$a2, $a2, 0
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	sub.d	$a5, $zero, $a3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a5, $a2
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	slt	$a5, $t2, $t0
	or	$a3, $a2, $a3
	st.w	$a3, $s2, 0
	st.w	$zero, $s3, 0
	ori	$a2, $zero, 4008
	ldx.w	$s7, $s1, $a2
	maskeqz	$a2, $t0, $a5
	ori	$t0, $zero, 1
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	masknez	$a5, $t2, $a5
	or	$a2, $a2, $a5
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	b	.LBB4_156
.LBB4_81:
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	b	.LBB4_87
.LBB4_82:
	sll.w	$t2, $t2, $a1
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	stptr.w	$t2, $fp, 13136
	ld.w	$t2, $a0, 0
	mul.d	$t0, $t2, $t0
	sll.w	$t0, $t0, $a1
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $fp, 13392
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $a1
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $fp, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $a1
.LBB4_83:
	lu12i.w	$t7, 3
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $fp, 13904
	add.d	$a2, $t5, $a7
	sub.d	$a5, $a7, $t5
	ld.w	$a7, $a0, 0
	sub.d	$t0, $a6, $t1
	add.d	$t1, $t1, $a6
	add.d	$a6, $t1, $a2
	mul.d	$a7, $a7, $a6
	ori	$t2, $zero, 4
	add.d	$a6, $t0, $a5
	sub.d	$a5, $a5, $t0
	sub.d	$a2, $a2, $t1
	bge	$s4, $t2, .LBB4_85
# %bb.84:
	add.d	$a1, $a7, $a3
	sra.w	$a1, $a1, $a4
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $fp, 13152
	ld.w	$a1, $a0, 0
	mul.d	$a1, $a1, $a6
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a4
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $fp, 13408
	ld.w	$a1, $a0, 0
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a4
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $fp, 13664
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	sra.w	$a0, $a0, $a4
	b	.LBB4_86
.LBB4_85:
	sll.w	$a3, $a7, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $fp, 13152
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a3, $a6
	sll.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $fp, 13408
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a3, $a5
	sll.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $fp, 13664
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a2
	sll.w	$a0, $a0, $a1
.LBB4_86:                               # %.loopexit777
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $fp, 13920
.LBB4_87:
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
.LBB4_88:                               # %.loopexit777
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB4_89:                               # %.loopexit777
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t3, $a0, 0
	ldptr.w	$a0, $t3, 15528
	ori	$a1, $zero, 1
	bge	$a1, $a0, .LBB4_116
# %bb.90:
	ori	$a0, $t7, 3240
	add.d	$a0, $t3, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
.LBB4_91:                               # %.preheader776.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sltui	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(FIELD_SCAN)
	addi.d	$a0, $a0, %pc_lo12(FIELD_SCAN)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	srai.d	$a1, $a1, 1
	masknez	$a0, $a0, $a2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	maskeqz	$a2, $s0, $a2
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	addi.d	$s5, $a4, 15
	mul.w	$a1, $a1, $t2
	or	$s6, $a2, $a0
	pcalau12i	$a0, %pc_hi20(hor_offset)
	addi.d	$a0, $a0, %pc_lo12(hor_offset)
	alsl.d	$a0, $a3, $a0, 4
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ver_offset)
	addi.d	$a0, $a0, %pc_lo12(ver_offset)
	alsl.d	$a0, $a3, $a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ldptr.d	$a0, $t3, 14160
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $t7, 848
	add.d	$s3, $t3, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a2, $a4, 16
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $s5
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(cbp_blk_chroma)
	addi.d	$a0, $a0, %pc_lo12(cbp_blk_chroma)
	move	$a2, $zero
	move	$t4, $zero
	move	$t7, $zero
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$fp, $zero, 30
	lu12i.w	$a0, 244
	ori	$s4, $a0, 575
	b	.LBB4_93
	.p2align	4, , 16
.LBB4_92:                               #   in Loop: Header=BB4_93 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	srai.d	$a1, $a0, 1
	bge	$a2, $a1, .LBB4_114
.LBB4_93:                               # %.preheader776
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_95 Depth 2
                                        #       Child Loop BB4_105 Depth 3
                                        #       Child Loop BB4_98 Depth 3
	move	$a3, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB4_95
	.p2align	4, , 16
.LBB4_94:                               # %.loopexit773
                                        #   in Loop: Header=BB4_95 Depth=2
	slli.d	$a0, $a1, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	stx.w	$zero, $a7, $a0
	ori	$a0, $zero, 4
	beq	$a3, $a0, .LBB4_92
.LBB4_95:                               #   Parent Loop BB4_93 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_105 Depth 3
                                        #       Child Loop BB4_98 Depth 3
	slli.d	$a0, $a3, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$t8, $a2, $a3
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.bu	$s0, $a2, $a3
	ld.d	$a7, $a0, 0
	ld.d	$a6, $a0, 8
	ori	$a0, $zero, 1
	sll.d	$t6, $a0, $a1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_102
# %bb.96:                               # %.preheader772.preheader
                                        #   in Loop: Header=BB4_95 Depth=2
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$a4, $zero, -1
	b	.LBB4_98
	.p2align	4, , 16
.LBB4_97:                               #   in Loop: Header=BB4_98 Depth=3
	addi.d	$a0, $a0, 2
	beq	$a0, $fp, .LBB4_94
.LBB4_98:                               # %.preheader772
                                        #   Parent Loop BB4_93 Depth=1
                                        #     Parent Loop BB4_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s6, $a0
	ld.bu	$a3, $a2, 3
	ld.bu	$a5, $a2, 2
	add.d	$t1, $a3, $s0
	slli.d	$a2, $t1, 6
	add.d	$a2, $s3, $a2
	add.d	$t0, $a5, $t8
	slli.d	$t2, $t0, 2
	ldptr.w	$a3, $t3, 15260
	ldx.w	$a5, $a2, $t2
	beqz	$a3, .LBB4_100
# %bb.99:                               #   in Loop: Header=BB4_98 Depth=3
	ldptr.d	$a3, $t3, 14192
	ld.d	$t5, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $t5
	ld.d	$t5, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $t5
	slli.d	$t1, $t1, 3
	ldx.d	$a3, $a3, $t1
	stx.w	$zero, $a3, $t2
.LBB4_100:                              #   in Loop: Header=BB4_98 Depth=3
	addi.d	$a4, $a4, 1
	beqz	$a5, .LBB4_97
# %bb.101:                              #   in Loop: Header=BB4_98 Depth=3
	alsl.d	$a2, $t0, $a2, 2
	srai.d	$a3, $a5, 31
	ld.d	$t1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t0, $t1, 368
	xor	$a5, $a5, $a3
	sub.d	$a3, $a5, $a3
	ld.w	$a2, $a2, 0
	or	$a5, $t0, $t6
	st.d	$a5, $t1, 368
	add.w	$t4, $t4, $s4
	slti	$a2, $a2, 0
	sub.d	$a5, $zero, $a3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a3
	slli.d	$a3, $a1, 2
	stx.w	$a2, $a7, $a3
	stx.w	$a4, $a6, $a3
	addi.w	$a1, $a1, 1
	addi.d	$a4, $zero, -1
	ori	$t7, $zero, 2
	b	.LBB4_97
	.p2align	4, , 16
.LBB4_102:                              # %.preheader774
                                        #   in Loop: Header=BB4_95 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$s1, $zero, -1
	b	.LBB4_105
	.p2align	4, , 16
.LBB4_103:                              #   in Loop: Header=BB4_105 Depth=3
	ld.w	$a3, $t0, 0
	slti	$a3, $a3, 0
	srai.d	$t1, $ra, 31
	xor	$t5, $ra, $t1
	sub.d	$t1, $t5, $t1
	sub.d	$t5, $zero, $t1
	masknez	$t7, $t1, $a3
	maskeqz	$a3, $t5, $a3
	or	$a3, $a3, $t7
	slli.d	$t7, $a1, 2
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $fp, 0
	stx.w	$a3, $a7, $t7
	stx.w	$s1, $a6, $t7
	ld.w	$a3, $t0, 0
	ldx.d	$t2, $fp, $t2
	add.w	$t4, $a5, $t4
	addi.w	$a1, $a1, 1
	slti	$a3, $a3, 0
	ldx.w	$a2, $t2, $a2
	masknez	$a5, $t1, $a3
	maskeqz	$a3, $t5, $a3
	or	$a3, $a3, $a5
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	sll.w	$a2, $a2, $a3
	addi.w	$a2, $a2, 8
	srai.d	$a2, $a2, 4
	addi.d	$s1, $zero, -1
	ori	$t7, $zero, 2
.LBB4_104:                              #   in Loop: Header=BB4_105 Depth=3
	addi.d	$a0, $a0, 2
	st.w	$a2, $t0, 0
	ori	$fp, $zero, 30
	beq	$a0, $fp, .LBB4_94
.LBB4_105:                              #   Parent Loop BB4_93 Depth=1
                                        #     Parent Loop BB4_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s6, $a0
	ld.bu	$t2, $a2, 3
	ld.bu	$a2, $a2, 2
	add.d	$s8, $t2, $s0
	slli.d	$a5, $s8, 6
	add.d	$t0, $s3, $a5
	add.d	$a5, $a2, $t8
	slli.d	$t1, $a5, 2
	ldx.w	$t5, $t0, $t1
	srai.d	$ra, $t5, 31
	slli.d	$t2, $t2, 3
	ldx.d	$s7, $a4, $t2
	ldx.d	$fp, $s2, $t2
	xor	$t5, $t5, $ra
	slli.d	$a2, $a2, 2
	ldx.w	$s7, $s7, $a2
	ldx.w	$fp, $fp, $a2
	ldptr.w	$a3, $t3, 15260
	sub.d	$t5, $t5, $ra
	mul.d	$t5, $s7, $t5
	add.d	$fp, $fp, $t5
	sra.w	$ra, $fp, $s5
	beqz	$a3, .LBB4_110
# %bb.106:                              #   in Loop: Header=BB4_105 Depth=3
	beqz	$ra, .LBB4_108
# %bb.107:                              #   in Loop: Header=BB4_105 Depth=3
	pcalau12i	$a3, %got_pc_hi20(AdaptRndCrWeight)
	ld.d	$a3, $a3, %got_pc_lo12(AdaptRndCrWeight)
	ld.w	$a3, $a3, 0
	sll.w	$fp, $ra, $s5
	sub.d	$t5, $t5, $fp
	mul.d	$a3, $a3, $t5
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t5
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	sra.w	$t5, $a3, $t5
	b	.LBB4_109
	.p2align	4, , 16
.LBB4_108:                              #   in Loop: Header=BB4_105 Depth=3
	move	$t5, $zero
.LBB4_109:                              #   in Loop: Header=BB4_105 Depth=3
	ldptr.d	$a3, $t3, 14192
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $fp
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $fp
	slli.d	$fp, $s8, 3
	ldx.d	$a3, $a3, $fp
	stx.w	$t5, $a3, $t1
.LBB4_110:                              #   in Loop: Header=BB4_105 Depth=3
	addi.w	$s1, $s1, 1
	alsl.d	$t0, $a5, $t0, 2
	beqz	$ra, .LBB4_113
# %bb.111:                              #   in Loop: Header=BB4_105 Depth=3
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $a5, 368
	or	$a3, $a3, $t6
	st.d	$a3, $a5, 368
	move	$a5, $s4
	ori	$a3, $zero, 1
	blt	$a3, $ra, .LBB4_103
# %bb.112:                              #   in Loop: Header=BB4_105 Depth=3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ldptr.w	$a3, $a3, 4180
	pcalau12i	$a5, %pc_hi20(COEFF_COST)
	addi.d	$a5, $a5, %pc_lo12(COEFF_COST)
	alsl.d	$a3, $a3, $a5, 4
	ldx.bu	$a5, $a3, $s1
	b	.LBB4_103
	.p2align	4, , 16
.LBB4_113:                              #   in Loop: Header=BB4_105 Depth=3
	move	$a2, $zero
	b	.LBB4_104
.LBB4_114:                              # %._crit_edge879
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_118
# %bb.115:
	lu12i.w	$t7, 3
	b	.LBB4_171
.LBB4_116:                              # %._crit_edge879.thread
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_171
# %bb.117:                              # %.thread
	ldptr.w	$t0, $t3, 15548
	bgtz	$t0, .LBB4_129
	b	.LBB4_185
.LBB4_118:
	addi.d	$a1, $t7, -2
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 3
	slt	$a4, $a3, $t4
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	masknez	$a5, $a6, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a5
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $a6, $a4
	or	$a1, $a1, $a4
	lu12i.w	$t7, 3
	blt	$a3, $t4, .LBB4_126
# %bb.119:
	blt	$a0, $a2, .LBB4_126
# %bb.120:                              # %.preheader771.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sltu	$a2, $zero, $a0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a0, $a3, 3
	pcalau12i	$a1, %pc_hi20(dct_chroma.cbpblk_pattern)
	addi.d	$a1, $a1, %pc_lo12(dct_chroma.cbpblk_pattern)
	ldx.d	$a1, $a1, $a0
	move	$a0, $zero
	addi.d	$a3, $a3, 1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	sll.w	$a3, $a4, $a3
	sll.d	$a3, $a1, $a3
	ldptr.d	$a1, $t3, 14160
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	nor	$a3, $a3, $zero
	ori	$a4, $zero, 3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	masknez	$a5, $a4, $a1
	ori	$a6, $zero, 1
	maskeqz	$a7, $a6, $a1
	or	$a5, $a7, $a5
	addi.d	$s2, $a1, 1
	masknez	$a6, $a6, $a1
	maskeqz	$a4, $a4, $a1
	or	$a4, $a4, $a6
	slli.d	$a6, $a2, 1
	ori	$a7, $zero, 2
	sub.d	$fp, $a7, $a1
	slli.d	$t8, $a1, 1
	addi.d	$s1, $a1, 2
	xori	$a7, $a1, 3
	slli.d	$t0, $a1, 2
	slli.d	$t1, $a1, 6
	slli.d	$t2, $a2, 2
	slli.d	$t4, $a5, 6
	slli.d	$t5, $a2, 6
	slli.d	$t6, $a4, 2
	slli.d	$t7, $s2, 2
	slli.d	$t8, $t8, 6
	slli.d	$fp, $fp, 2
	slli.d	$s0, $a6, 2
	slli.d	$s1, $s1, 6
	slli.d	$s2, $s2, 6
	slli.d	$s4, $a7, 2
	ori	$s5, $zero, 4
	b	.LBB4_122
	.p2align	4, , 16
.LBB4_121:                              #   in Loop: Header=BB4_122 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.d	$a0, $a0, 1
	srai.d	$a1, $a1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 4
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bge	$a0, $a1, .LBB4_127
.LBB4_122:                              # %.preheader771
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_124 Depth 2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.w	$a2, $a1, $a0
	slli.d	$a2, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	move	$s6, $zero
	b	.LBB4_124
	.p2align	4, , 16
.LBB4_123:                              #   in Loop: Header=BB4_124 Depth=2
	st.w	$zero, $s7, 0
	slli.d	$s8, $s8, 6
	add.d	$s8, $s3, $s8
	alsl.d	$a5, $a5, $s8, 2
	add.d	$s8, $a5, $t5
	stx.w	$zero, $s8, $t0
	st.w	$zero, $s7, 4
	add.d	$ra, $a5, $t1
	stx.w	$zero, $ra, $t2
	st.w	$zero, $s7, 8
	st.w	$zero, $a5, 128
	st.w	$zero, $s7, 12
	add.d	$a1, $a5, $t4
	stx.w	$zero, $a1, $t0
	st.w	$zero, $s7, 16
	stx.w	$zero, $s8, $t7
	st.w	$zero, $s7, 20
	slli.d	$s8, $a6, 6
	add.d	$s8, $a5, $s8
	stx.w	$zero, $s8, $t6
	st.w	$zero, $s7, 24
	stx.w	$zero, $a1, $t7
	st.w	$zero, $s7, 28
	add.d	$a1, $a5, $t8
	stx.w	$zero, $a1, $fp
	st.w	$zero, $s7, 32
	slli.d	$a1, $a4, 6
	add.d	$a1, $a5, $a1
	stx.w	$zero, $a1, $s0
	st.w	$zero, $s7, 36
	add.d	$a1, $a5, $s1
	stx.w	$zero, $a1, $fp
	st.w	$zero, $s7, 40
	slli.d	$s8, $a7, 6
	add.d	$s8, $a5, $s8
	st.w	$zero, $s8, 8
	st.w	$zero, $s7, 44
	st.w	$zero, $ra, 12
	st.w	$zero, $s7, 48
	add.d	$s8, $a5, $s2
	st.w	$zero, $s8, 12
	st.w	$zero, $s7, 52
	stx.w	$zero, $a1, $s4
	st.w	$zero, $s7, 56
	st.w	$zero, $a5, 204
	st.w	$zero, $s7, 60
	addi.d	$s6, $s6, 1
	addi.d	$a2, $a2, 8
	beq	$s6, $s5, .LBB4_121
.LBB4_124:                              #   Parent Loop BB4_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $a2, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.bu	$a5, $a1, $s6
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.bu	$s8, $a1, $s6
	ld.d	$s7, $s7, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bnez	$a1, .LBB4_123
# %bb.125:                              #   in Loop: Header=BB4_124 Depth=2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $a1, 368
	and	$ra, $ra, $a3
	st.d	$ra, $a1, 368
	b	.LBB4_123
.LBB4_126:
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB4_128
.LBB4_127:
	lu12i.w	$t7, 3
.LBB4_128:                              # %.thread
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ldptr.w	$t0, $t3, 15548
	blez	$t0, .LBB4_185
.LBB4_129:                              # %.preheader770.lr.ph
	move	$a3, $zero
	ori	$a0, $t7, 848
	add.d	$a0, $t3, $a0
	ori	$a1, $t7, 336
	add.d	$a5, $t3, $a1
	ori	$a1, $t7, 3256
	ldx.w	$a2, $t3, $a1
	ori	$a4, $t7, 1040
	add.d	$a6, $t3, $a4
	ori	$a7, $zero, 8
	b	.LBB4_131
	.p2align	4, , 16
.LBB4_130:                              #   in Loop: Header=BB4_131 Depth=1
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 128
	addi.d	$a6, $a6, 256
	bge	$a3, $t0, .LBB4_137
.LBB4_131:                              # %.preheader770
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_133 Depth 2
                                        #       Child Loop BB4_134 Depth 3
	blez	$a2, .LBB4_130
# %bb.132:                              # %.preheader769.lr.ph
                                        #   in Loop: Header=BB4_131 Depth=1
	move	$t0, $zero
	addi.d	$a2, $a3, 1
	addi.d	$a4, $a3, 2
	addi.d	$t5, $a3, 3
	slli.d	$t1, $a3, 6
	slli.d	$t2, $a2, 6
	slli.d	$t4, $a4, 6
	slli.d	$t5, $t5, 6
	move	$t6, $a6
	move	$t7, $a5
	.p2align	4, , 16
.LBB4_133:                              # %.preheader769
                                        #   Parent Loop BB4_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_134 Depth 3
	alsl.d	$a4, $t0, $a0, 2
	ldx.d	$a2, $a4, $t1
	add.d	$t8, $a4, $t1
	st.d	$a2, $s4, 0
	ld.d	$fp, $t8, 8
	alsl.d	$t8, $t0, $t3, 2
	st.d	$fp, $s4, 8
	ld.w	$s0, $s4, 4
	ld.w	$s1, $s4, 12
	add.d	$s2, $fp, $a2
	sub.d	$a2, $a2, $fp
	srli.d	$fp, $s0, 1
	sub.d	$fp, $fp, $s1
	srli.d	$s1, $s1, 1
	add.d	$s0, $s1, $s0
	add.d	$s1, $s0, $s2
	stx.w	$s1, $a4, $t1
	add.d	$s1, $fp, $a2
	add.d	$s3, $t8, $t1
	stptr.w	$s1, $s3, 13140
	sub.d	$a2, $a2, $fp
	stptr.w	$a2, $s3, 13144
	ldx.d	$a2, $a4, $t2
	sub.d	$fp, $s2, $s0
	stptr.w	$fp, $s3, 13148
	add.d	$fp, $a4, $t2
	st.d	$a2, $s4, 0
	ld.d	$fp, $fp, 8
	st.d	$fp, $s4, 8
	ld.w	$s0, $s4, 4
	ld.w	$s1, $s4, 12
	add.d	$s2, $fp, $a2
	sub.d	$a2, $a2, $fp
	srli.d	$fp, $s0, 1
	sub.d	$fp, $fp, $s1
	srli.d	$s1, $s1, 1
	add.d	$s0, $s1, $s0
	add.d	$s1, $s0, $s2
	stx.w	$s1, $a4, $t2
	add.d	$s1, $fp, $a2
	add.d	$s3, $t8, $t2
	stptr.w	$s1, $s3, 13140
	sub.d	$a2, $a2, $fp
	stptr.w	$a2, $s3, 13144
	ldx.d	$a2, $a4, $t4
	sub.d	$fp, $s2, $s0
	stptr.w	$fp, $s3, 13148
	add.d	$fp, $a4, $t4
	st.d	$a2, $s4, 0
	ld.d	$fp, $fp, 8
	st.d	$fp, $s4, 8
	ld.w	$s0, $s4, 4
	ld.w	$s1, $s4, 12
	add.d	$s2, $fp, $a2
	sub.d	$a2, $a2, $fp
	srli.d	$fp, $s0, 1
	sub.d	$fp, $fp, $s1
	srli.d	$s1, $s1, 1
	add.d	$s0, $s1, $s0
	add.d	$s1, $s0, $s2
	stx.w	$s1, $a4, $t4
	add.d	$s1, $fp, $a2
	add.d	$s3, $t8, $t4
	stptr.w	$s1, $s3, 13140
	sub.d	$a2, $a2, $fp
	stptr.w	$a2, $s3, 13144
	ldx.d	$a2, $a4, $t5
	sub.d	$fp, $s2, $s0
	stptr.w	$fp, $s3, 13148
	add.d	$fp, $a4, $t5
	st.d	$a2, $s4, 0
	ld.d	$s0, $fp, 8
	move	$fp, $zero
	st.d	$s0, $s4, 8
	ld.w	$s1, $s4, 4
	ld.w	$s2, $s4, 12
	add.d	$s3, $s0, $a2
	sub.d	$a2, $a2, $s0
	srli.d	$s0, $s1, 1
	sub.d	$s0, $s0, $s2
	srli.d	$s2, $s2, 1
	add.d	$s1, $s2, $s1
	add.d	$s2, $s1, $s3
	stx.w	$s2, $a4, $t5
	add.d	$a4, $s0, $a2
	add.d	$t8, $t8, $t5
	stptr.w	$a4, $t8, 13140
	sub.d	$a2, $a2, $s0
	stptr.w	$a2, $t8, 13144
	sub.d	$a2, $s3, $s1
	stptr.w	$a2, $t8, 13148
	move	$a4, $t6
	.p2align	4, , 16
.LBB4_134:                              # %.preheader768
                                        #   Parent Loop BB4_131 Depth=1
                                        #     Parent Loop BB4_133 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s0, $a4, -192
	ld.w	$s1, $a4, -64
	ld.w	$a2, $a4, -128
	ld.w	$t8, $a4, 0
	add.d	$s2, $s1, $s0
	sub.d	$s3, $s0, $s1
	srai.d	$s4, $a2, 1
	sub.d	$s4, $s4, $t8
	srai.d	$s5, $t8, 1
	ldx.hu	$s6, $t7, $fp
	add.d	$s5, $s5, $a2
	ldptr.w	$s7, $t3, 15524
	add.d	$s8, $t7, $fp
	slli.d	$s6, $s6, 6
	addi.d	$s2, $s2, 32
	add.d	$ra, $s2, $s5
	add.w	$s6, $ra, $s6
	srai.d	$ra, $s6, 6
	srai.d	$s6, $s6, 63
	andn	$s6, $ra, $s6
	slt	$ra, $s6, $s7
	maskeqz	$s6, $s6, $ra
	masknez	$s7, $s7, $ra
	ld.hu	$ra, $s8, 32
	or	$s6, $s6, $s7
	st.w	$s6, $a4, -192
	ldptr.w	$s6, $t3, 15524
	slli.d	$s7, $ra, 6
	addi.d	$s3, $s3, 32
	add.d	$ra, $s3, $s4
	add.w	$s7, $ra, $s7
	srai.d	$ra, $s7, 6
	srai.d	$s7, $s7, 63
	andn	$s7, $ra, $s7
	slt	$ra, $s7, $s6
	maskeqz	$s7, $s7, $ra
	masknez	$s6, $s6, $ra
	ld.hu	$ra, $s8, 64
	or	$s6, $s7, $s6
	st.w	$s6, $a4, -128
	ldptr.w	$s6, $t3, 15524
	slli.d	$s7, $ra, 6
	sub.d	$s3, $s3, $s4
	add.w	$s3, $s3, $s7
	srai.d	$s4, $s3, 6
	srai.d	$s3, $s3, 63
	andn	$s3, $s4, $s3
	slt	$s4, $s3, $s6
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $s6, $s4
	ld.hu	$s6, $s8, 96
	or	$s3, $s3, $s4
	st.w	$s3, $a4, -64
	ldptr.w	$s3, $t3, 15524
	slli.d	$s4, $s6, 6
	sub.d	$s2, $s2, $s5
	add.w	$s2, $s2, $s4
	srai.d	$s4, $s2, 6
	srai.d	$s2, $s2, 63
	andn	$s2, $s4, $s2
	slt	$s4, $s2, $s3
	maskeqz	$s2, $s2, $s4
	masknez	$s3, $s3, $s4
	or	$s2, $s2, $s3
	st.w	$s2, $a4, 0
	addi.d	$fp, $fp, 2
	addi.d	$a4, $a4, 4
	bne	$fp, $a7, .LBB4_134
# %bb.135:                              #   in Loop: Header=BB4_133 Depth=2
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	st.w	$s0, $s4, 0
	st.w	$a2, $s4, 4
	st.w	$s1, $s4, 8
	ldptr.w	$a2, $t3, 15544
	st.w	$t8, $s4, 12
	addi.d	$t0, $t0, 4
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 16
	blt	$t0, $a2, .LBB4_133
# %bb.136:                              # %._crit_edge906
                                        #   in Loop: Header=BB4_131 Depth=1
	lu12i.w	$t7, 3
	ori	$a4, $t7, 3260
	ldx.w	$t0, $t3, $a4
	b	.LBB4_130
.LBB4_137:                              # %.preheader766
	blez	$t0, .LBB4_185
# %bb.138:                              # %.lr.ph914
	ld.w	$a3, $t3, 188
	ldx.wu	$a1, $t3, $a1
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	move	$a4, $zero
	ld.d	$a5, $a2, 0
	addi.d	$a6, $a1, -1
	bstrpick.d	$a2, $a1, 16, 3
	slli.d	$a7, $a2, 3
	ori	$a2, $t7, 864
	add.d	$t1, $t3, $a2
	addi.w	$t2, $a1, 0
	ori	$t4, $zero, 12
	srli.d	$t5, $a6, 16
	b	.LBB4_140
	.p2align	4, , 16
.LBB4_139:                              # %._crit_edge912
                                        #   in Loop: Header=BB4_140 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$t1, $t1, 64
	addi.d	$a0, $a0, 64
	beq	$a4, $t0, .LBB4_185
.LBB4_140:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_148 Depth 2
                                        #     Child Loop BB4_144 Depth 2
	blez	$t2, .LBB4_139
# %bb.141:                              # %.lr.ph911
                                        #   in Loop: Header=BB4_140 Depth=1
	ldptr.d	$a2, $a5, 6472
	add.d	$t7, $a3, $a4
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $t6
	ld.w	$t6, $t3, 184
	slli.d	$t7, $t7, 48
	srai.d	$t7, $t7, 45
	ldx.d	$a2, $a2, $t7
	bgeu	$a1, $t4, .LBB4_145
# %bb.142:                              #   in Loop: Header=BB4_140 Depth=1
	move	$t8, $zero
.LBB4_143:                              # %scalar.ph1176.preheader
                                        #   in Loop: Header=BB4_140 Depth=1
	add.d	$t6, $t6, $t8
	alsl.d	$t7, $t8, $a0, 2
	sub.d	$t8, $a1, $t8
	.p2align	4, , 16
.LBB4_144:                              # %scalar.ph1176
                                        #   Parent Loop BB4_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$fp, $t7, 0
	slli.d	$s0, $t6, 48
	srai.d	$s0, $s0, 47
	stx.h	$fp, $a2, $s0
	addi.d	$t6, $t6, 1
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB4_144
	b	.LBB4_139
	.p2align	4, , 16
.LBB4_145:                              # %vector.scevcheck
                                        #   in Loop: Header=BB4_140 Depth=1
	slli.d	$t7, $t6, 48
	srai.d	$t7, $t7, 47
	add.d	$t8, $t6, $a6
	slli.d	$t8, $t8, 48
	srai.d	$fp, $t8, 47
	move	$t8, $zero
	blt	$fp, $t7, .LBB4_143
# %bb.146:                              # %vector.scevcheck
                                        #   in Loop: Header=BB4_140 Depth=1
	bnez	$t5, .LBB4_143
# %bb.147:                              # %vector.body1181.preheader
                                        #   in Loop: Header=BB4_140 Depth=1
	move	$t7, $t6
	move	$t8, $t1
	move	$fp, $a7
	.p2align	4, , 16
.LBB4_148:                              # %vector.body1181
                                        #   Parent Loop BB4_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t8, -16
	vld	$vr1, $t8, 0
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	slli.d	$s0, $t7, 48
	srai.d	$s0, $s0, 47
	vpackev.d	$vr0, $vr1, $vr0
	vstx	$vr0, $a2, $s0
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 8
	bnez	$fp, .LBB4_148
# %bb.149:                              # %middle.block1185
                                        #   in Loop: Header=BB4_140 Depth=1
	move	$t8, $a7
	beq	$a7, $a1, .LBB4_139
	b	.LBB4_143
.LBB4_150:
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ori	$t5, $zero, 1
.LBB4_151:
	srai.d	$a2, $t1, 31
	xor	$a5, $t1, $a2
	sub.w	$a2, $a5, $a2
	bnez	$a7, .LBB4_153
# %bb.152:
	ld.w	$a5, $fp, 36
	slti	$a5, $a5, 4
	ori	$a6, $zero, 2063
	sltu	$t0, $a2, $a6
	masknez	$a6, $a6, $t0
	maskeqz	$t0, $a2, $t0
	or	$a6, $t0, $a6
	maskeqz	$a6, $a6, $a5
	masknez	$a2, $a2, $a5
	or	$a2, $a6, $a2
.LBB4_153:
	beqz	$a2, .LBB4_160
# %bb.154:
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $a6, 368
	or	$a5, $a5, $a0
	st.d	$a5, $a6, 368
	ori	$a5, $zero, 1
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	slt	$a6, $a5, $a7
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	slti	$a5, $t1, 0
	sub.d	$a6, $zero, $a2
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $a6, $a5
	or	$a2, $a5, $a2
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a5, $a6, 2
	stx.w	$a2, $s2, $a5
	stx.w	$t5, $s3, $a5
	ori	$a2, $zero, 4008
	ldx.w	$a7, $a3, $a2
	addi.d	$a6, $a6, 1
	addi.d	$t5, $zero, -1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	b	.LBB4_161
.LBB4_155:
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$a3, $zero
	ori	$s8, $zero, 1
.LBB4_156:
	add.d	$a2, $t1, $ra
	sub.w	$ra, $t8, $t5
	srai.d	$a5, $a4, 31
	ld.w	$t0, $a7, 0
	ld.w	$t1, $a6, 0
	xor	$t2, $a4, $a5
	sub.d	$a5, $t2, $a5
	mul.d	$a5, $t0, $a5
	alsl.w	$a5, $t1, $a5, 1
	sra.w	$a5, $a5, $a1
	bnez	$s7, .LBB4_158
# %bb.157:
	ld.w	$t0, $fp, 36
	slti	$t0, $t0, 4
	ori	$t1, $zero, 2063
	slt	$t2, $a5, $t1
	masknez	$t1, $t1, $t2
	maskeqz	$t2, $a5, $t2
	or	$t1, $t2, $t1
	maskeqz	$t1, $t1, $t0
	masknez	$a5, $a5, $t0
	or	$a5, $t1, $a5
.LBB4_158:
	sub.d	$a2, $s5, $a2
	beqz	$a5, .LBB4_186
# %bb.159:
	ld.d	$t1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t0, $t1, 368
	or	$t0, $t0, $a0
	st.d	$t0, $t1, 368
	ori	$t0, $zero, 1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	slt	$t1, $t0, $t2
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $t2, $t1
	or	$t0, $t1, $t0
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	slti	$a4, $a4, 0
	srai.d	$t0, $a5, 31
	xor	$a5, $a5, $t0
	sub.d	$a5, $a5, $t0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t0, $a4
	or	$t1, $a4, $a5
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a4, $a5, 2
	stx.w	$t1, $s2, $a4
	stx.w	$s8, $s3, $a4
	ori	$a4, $zero, 4008
	ldx.w	$s7, $s1, $a4
	addi.d	$s5, $a5, 1
	addi.d	$s8, $zero, -1
	ori	$a4, $zero, 1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	b	.LBB4_187
.LBB4_160:
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
.LBB4_161:
	srai.d	$a2, $a4, 31
	xor	$a5, $a4, $a2
	sub.w	$a5, $a5, $a2
	bnez	$a7, .LBB4_163
# %bb.162:
	ld.w	$a2, $fp, 36
	slti	$a2, $a2, 4
	ori	$t0, $zero, 2063
	sltu	$t1, $a5, $t0
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $a5, $t1
	or	$t0, $t1, $t0
	maskeqz	$t0, $t0, $a2
	masknez	$a2, $a5, $a2
	or	$a5, $t0, $a2
.LBB4_163:
	addi.d	$a2, $t5, 1
	beqz	$a5, .LBB4_165
# %bb.164:
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a7, $t0, 368
	or	$a7, $a7, $a0
	st.d	$a7, $t0, 368
	ori	$t3, $zero, 1
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	slt	$a7, $t3, $t1
	ori	$t0, $zero, 1
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	masknez	$t0, $t3, $a7
	maskeqz	$t1, $t1, $a7
	slti	$a4, $a4, 0
	sub.d	$a7, $zero, $a5
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $a5
	slli.d	$a5, $a6, 2
	stx.w	$a4, $s2, $a5
	stx.w	$a2, $s3, $a5
	ori	$a2, $zero, 4008
	ldx.w	$a7, $a3, $a2
	or	$a2, $t1, $t0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	addi.d	$a2, $zero, -1
.LBB4_165:
	srai.d	$a3, $a1, 31
	xor	$a4, $a1, $a3
	sub.w	$a3, $a4, $a3
	bnez	$a7, .LBB4_167
# %bb.166:
	ld.w	$a4, $fp, 36
	slti	$a4, $a4, 4
	ori	$a5, $zero, 2063
	sltu	$a7, $a3, $a5
	masknez	$a5, $a5, $a7
	maskeqz	$a7, $a3, $a7
	or	$a5, $a7, $a5
	maskeqz	$a5, $a5, $a4
	masknez	$a3, $a3, $a4
	or	$a3, $a5, $a3
.LBB4_167:
	beqz	$a3, .LBB4_169
# %bb.168:
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 368
	addi.d	$a2, $a2, 1
	or	$a0, $a4, $a0
	st.d	$a0, $a5, 368
	ori	$a7, $zero, 1
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	slt	$a0, $a7, $a5
	ori	$a4, $zero, 1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	masknez	$a4, $a7, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slti	$a0, $a1, 0
	sub.d	$a1, $zero, $a3
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a1, $a6, 2
	stx.w	$a0, $s2, $a1
	stx.w	$a2, $s3, $a1
	addi.d	$a6, $a6, 1
.LBB4_169:                              # %.loopexit777.thread
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t3, $a0, 0
	slli.d	$a0, $a6, 2
	stx.w	$zero, $s2, $a0
	ldptr.w	$a0, $t3, 15528
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_171
# %bb.170:
	ori	$a0, $t7, 3240
	add.d	$a0, $t3, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB4_91
.LBB4_171:                              # %.preheader
	ldptr.w	$a0, $t3, 15548
	blez	$a0, .LBB4_185
# %bb.172:                              # %.lr.ph920
	ld.w	$a1, $t3, 188
	ori	$a2, $t7, 3256
	ldx.wu	$a3, $t3, $a2
	ori	$a2, $t7, 848
	add.d	$a4, $t3, $a2
	ori	$a2, $t7, 336
	add.d	$a5, $t3, $a2
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	move	$a6, $zero
	ld.d	$a7, $a2, 0
	addi.d	$t0, $a3, -1
	bstrpick.d	$a2, $a3, 16, 2
	slli.d	$t1, $a2, 2
	addi.w	$t2, $a3, 0
	lu12i.w	$a2, -4
	ori	$t4, $a2, 3760
	ori	$t5, $zero, 12
	ori	$t6, $zero, 8
	b	.LBB4_174
	.p2align	4, , 16
.LBB4_173:                              # %._crit_edge918
                                        #   in Loop: Header=BB4_174 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 64
	beq	$a6, $a0, .LBB4_185
.LBB4_174:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_183 Depth 2
                                        #     Child Loop BB4_178 Depth 2
	blez	$t2, .LBB4_173
# %bb.175:                              # %.lr.ph917
                                        #   in Loop: Header=BB4_174 Depth=1
	ldptr.d	$a2, $a7, 6472
	add.d	$t7, $a1, $a6
	ld.d	$t8, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$t8, $a2, $t8
	ld.w	$a2, $t3, 184
	slli.d	$t7, $t7, 48
	srai.d	$t7, $t7, 45
	ldx.d	$t7, $t8, $t7
	bgeu	$a3, $t5, .LBB4_179
.LBB4_176:                              #   in Loop: Header=BB4_174 Depth=1
	move	$s0, $zero
.LBB4_177:                              # %scalar.ph1192.preheader
                                        #   in Loop: Header=BB4_174 Depth=1
	add.d	$a2, $a2, $s0
	slli.d	$t8, $s0, 2
	slli.d	$fp, $s0, 1
	sub.d	$s0, $a3, $s0
	.p2align	4, , 16
.LBB4_178:                              # %scalar.ph1192
                                        #   Parent Loop BB4_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$s1, $a4, $t8
	ldx.h	$s2, $a5, $fp
	add.d	$s1, $s2, $s1
	slli.d	$s2, $a2, 48
	srai.d	$s2, $s2, 47
	stx.h	$s1, $t7, $s2
	addi.d	$a2, $a2, 1
	addi.d	$t8, $t8, 4
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 2
	bnez	$s0, .LBB4_178
	b	.LBB4_173
	.p2align	4, , 16
.LBB4_179:                              # %vector.scevcheck1188
                                        #   in Loop: Header=BB4_174 Depth=1
	slli.d	$t8, $a2, 48
	srai.d	$t8, $t8, 47
	add.d	$fp, $a2, $t0
	slli.d	$fp, $fp, 48
	srai.d	$fp, $fp, 47
	move	$s0, $zero
	blt	$fp, $t8, .LBB4_177
# %bb.180:                              # %vector.scevcheck1188
                                        #   in Loop: Header=BB4_174 Depth=1
	srli.d	$fp, $t0, 16
	bnez	$fp, .LBB4_177
# %bb.181:                              # %vector.memcheck
                                        #   in Loop: Header=BB4_174 Depth=1
	slli.d	$fp, $a6, 5
	add.d	$fp, $fp, $t3
	sub.d	$fp, $t4, $fp
	add.d	$fp, $fp, $t7
	add.d	$t8, $fp, $t8
	bltu	$t8, $t6, .LBB4_176
# %bb.182:                              # %vector.body1197.preheader
                                        #   in Loop: Header=BB4_174 Depth=1
	move	$t8, $a2
	move	$fp, $a4
	move	$s0, $a5
	move	$s1, $t1
	.p2align	4, , 16
.LBB4_183:                              # %vector.body1197
                                        #   Parent Loop BB4_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s0, 0
	vld	$vr0, $fp, 0
	vinsgr2vr.d	$vr1, $s2, 0
	vpickev.h	$vr0, $vr0, $vr0
	vadd.h	$vr0, $vr1, $vr0
	slli.d	$s2, $t8, 48
	srai.d	$s2, $s2, 47
	add.d	$s2, $t7, $s2
	vstelm.d	$vr0, $s2, 0, 0
	addi.d	$s1, $s1, -4
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 4
	bnez	$s1, .LBB4_183
# %bb.184:                              # %middle.block1202
                                        #   in Loop: Header=BB4_174 Depth=1
	move	$s0, $t1
	beq	$t1, $a3, .LBB4_173
	b	.LBB4_177
.LBB4_185:                              # %.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB4_186:
	move	$t1, $zero
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
.LBB4_187:
	add.w	$a4, $a2, $s6
	srai.d	$a2, $ra, 31
	ld.w	$a5, $a7, 0
	ld.w	$t0, $a6, 0
	xor	$t2, $ra, $a2
	sub.d	$a2, $t2, $a2
	mul.d	$a2, $a5, $a2
	alsl.w	$a2, $t0, $a2, 1
	sra.w	$a5, $a2, $a1
	bnez	$s7, .LBB4_189
# %bb.188:
	ld.w	$a2, $fp, 36
	slti	$a2, $a2, 4
	ori	$t0, $zero, 2063
	slt	$t2, $a5, $t0
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $a5, $t2
	or	$t0, $t2, $t0
	maskeqz	$t0, $t0, $a2
	masknez	$a2, $a5, $a2
	or	$a5, $t0, $a2
.LBB4_189:
	addi.d	$a2, $s8, 1
	beqz	$a5, .LBB4_191
# %bb.190:
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t0, $t2, 368
	or	$t0, $t0, $a0
	st.d	$t0, $t2, 368
	ori	$t4, $zero, 1
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	slt	$t0, $t4, $t3
	ori	$t2, $zero, 1
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	masknez	$t2, $t4, $t0
	maskeqz	$t0, $t3, $t0
	slti	$t3, $ra, 0
	srai.d	$t4, $a5, 31
	xor	$a5, $a5, $t4
	sub.d	$a5, $a5, $t4
	sub.d	$t4, $zero, $a5
	masknez	$a5, $a5, $t3
	maskeqz	$t3, $t4, $t3
	or	$t5, $t3, $a5
	slli.d	$a5, $s5, 2
	stx.w	$t5, $s2, $a5
	stx.w	$a2, $s3, $a5
	ori	$a2, $zero, 4008
	ldx.w	$s7, $s1, $a2
	or	$a2, $t0, $t2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	addi.d	$a2, $zero, -1
	b	.LBB4_192
.LBB4_191:
	move	$t5, $zero
.LBB4_192:
	lu12i.w	$t7, 3
	srai.d	$a5, $a4, 31
	ld.w	$a7, $a7, 0
	ld.w	$a6, $a6, 0
	xor	$t0, $a4, $a5
	sub.d	$a5, $t0, $a5
	mul.d	$a5, $a7, $a5
	alsl.w	$a5, $a6, $a5, 1
	sra.w	$a1, $a5, $a1
	bnez	$s7, .LBB4_194
# %bb.193:
	ld.w	$a5, $fp, 36
	slti	$a5, $a5, 4
	ori	$a6, $zero, 2063
	slt	$a7, $a1, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a1, $a7
	or	$a6, $a7, $a6
	maskeqz	$a6, $a6, $a5
	masknez	$a1, $a1, $a5
	or	$a1, $a6, $a1
.LBB4_194:
	beqz	$a1, .LBB4_196
# %bb.195:
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $a6, 368
	addi.d	$a2, $a2, 1
	or	$a0, $a5, $a0
	st.d	$a0, $a6, 368
	ori	$a7, $zero, 1
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	slt	$a0, $a7, $a6
	ori	$a5, $zero, 1
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	masknez	$a5, $a7, $a0
	maskeqz	$a0, $a6, $a0
	or	$a0, $a0, $a5
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slti	$a0, $a4, 0
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $s5, 2
	stx.w	$a0, $s2, $a1
	stx.w	$a2, $s3, $a1
	addi.d	$s5, $s5, 1
	b	.LBB4_197
.LBB4_196:
	move	$a0, $zero
.LBB4_197:
	slli.d	$a1, $s5, 2
	stx.w	$zero, $s2, $a1
	add.d	$a1, $t1, $a3
	add.d	$a2, $a0, $t5
	add.d	$a4, $a2, $a1
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	st.w	$a4, $a7, 0
	add.d	$a5, $a3, $t5
	add.d	$a6, $t1, $a0
	sub.d	$a5, $a5, $a6
	st.w	$a5, $a7, 4
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $s4
	move	$s4, $a7
	sub.d	$a1, $a1, $a2
	st.w	$a1, $a7, 8
	add.d	$a2, $t1, $t5
	ld.d	$a6, $a6, 0
	sub.d	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	st.w	$a0, $a7, 12
	ld.w	$a2, $a6, 0
	mul.d	$a3, $a2, $a4
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	sll.w	$a3, $a3, $a6
	srli.d	$a3, $a3, 5
	mul.d	$a4, $a2, $a5
	sll.w	$a4, $a4, $a6
	srli.d	$a4, $a4, 5
	mul.d	$a1, $a2, $a1
	sll.w	$a1, $a1, $a6
	srli.d	$a1, $a1, 5
	mul.d	$a0, $a2, $a0
	sll.w	$a0, $a0, $a6
	srli.d	$a0, $a0, 5
	stptr.w	$a3, $fp, 13136
	stptr.w	$a4, $fp, 13152
	stptr.w	$a1, $fp, 13392
	stptr.w	$a0, $fp, 13408
	b	.LBB4_88
.Lfunc_end4:
	.size	dct_chroma, .Lfunc_end4-dct_chroma
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_luma_sp
.LCPI5_0:
	.dword	0x3feb333333333333              # double 0.84999999999999998
	.text
	.globl	dct_luma_sp
	.p2align	5
	.type	dct_luma_sp,@function
dct_luma_sp:                            # @dct_luma_sp
# %bb.0:                                # %.preheader371
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 432                  # 8-byte Folded Spill
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	srli.d	$a0, $a0, 2
	srli.d	$a1, $a1, 2
	addi.w	$a2, $zero, -2
	lu52i.d	$a2, $a2, 511
	and	$a1, $a1, $a2
	srli.d	$a2, $fp, 3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $s0, 2, 2
	bstrins.d	$a0, $a2, 63, 1
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s3, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s3, 0
	ldptr.d	$a3, $a2, 14160
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	ld.w	$a3, $a2, 12
	ldptr.d	$a2, $a2, 14224
	ldx.d	$a0, $a1, $a0
	ori	$a1, $zero, 536
	mul.d	$a1, $a3, $a1
	add.d	$s8, $a2, $a1
	ld.w	$a1, $s8, 8
	ld.d	$a2, $a0, 0
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(qp_per_matrix)
	ld.d	$a0, $a0, %got_pc_lo12(qp_per_matrix)
	ld.w	$a1, $s8, 8
	ld.d	$a2, $a0, 0
	slli.d	$a0, $a1, 2
	ldx.w	$s1, $a2, $a0
	pcalau12i	$a1, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a1, $a1, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a1, $a1, 0
	ld.w	$a3, $s8, 20
	ldx.w	$a0, $a1, $a0
	slli.d	$a3, $a3, 2
	ld.d	$a4, $s3, 0
	ldx.w	$s7, $a2, $a3
	ldx.w	$a1, $a1, $a3
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	slli.d	$a2, $s0, 5
	add.d	$a2, $a4, $a2
	st.d	$fp, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a2, $fp, $a2, 1
	ldptr.d	$a3, $a2, 12624
	lu12i.w	$t3, 3
	ori	$s2, $t3, 848
	vldx	$vr1, $a4, $s2
	vinsgr2vr.d	$vr2, $a3, 0
	vrepli.b	$vr5, 0
	vilvl.h	$vr4, $vr5, $vr2
	vadd.w	$vr1, $vr1, $vr4
	ldptr.d	$a3, $a2, 12656
	ori	$t2, $t3, 912
	vldx	$vr2, $a4, $t2
	vstx	$vr1, $a4, $s2
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr3, $vr5, $vr1
	vadd.w	$vr1, $vr2, $vr3
	ldptr.d	$a3, $a2, 12688
	ori	$t1, $t3, 976
	vldx	$vr6, $a4, $t1
	vstx	$vr1, $a4, $t2
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr2, $vr5, $vr1
	vadd.w	$vr1, $vr6, $vr2
	ldptr.d	$a2, $a2, 12720
	vstx	$vr1, $a4, $t1
	ori	$t0, $t3, 1040
	vldx	$vr6, $a4, $t0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $s3, 0
	vilvl.h	$vr1, $vr5, $vr1
	vadd.w	$vr5, $vr6, $vr1
	vstx	$vr5, $a4, $t0
	ldx.w	$a3, $a2, $s2
	ori	$a4, $t3, 860
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ldx.w	$a4, $a2, $a4
	ori	$a5, $t3, 852
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $t3, 856
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	add.d	$a7, $a4, $a3
	sub.d	$a3, $a3, $a4
	add.d	$a4, $a6, $a5
	sub.d	$a5, $a5, $a6
	add.d	$a6, $a4, $a7
	stptr.w	$a6, $a2, 13136
	sub.d	$a4, $a7, $a4
	stptr.w	$a4, $a2, 13144
	alsl.d	$a4, $a3, $a5, 1
	stptr.w	$a4, $a2, 13140
	slli.d	$a4, $a5, 1
	sub.d	$a3, $a3, $a4
	ldx.w	$a4, $a2, $t2
	ori	$a5, $t3, 924
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $t3, 916
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	ori	$a7, $t3, 920
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	ldx.w	$a7, $a2, $a7
	stptr.w	$a3, $a2, 13148
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$a7, $a5, $a3
	stptr.w	$a7, $a2, 13200
	sub.d	$a3, $a3, $a5
	stptr.w	$a3, $a2, 13208
	alsl.d	$a3, $a4, $a6, 1
	stptr.w	$a3, $a2, 13204
	slli.d	$a3, $a6, 1
	sub.d	$a3, $a4, $a3
	ldx.w	$a4, $a2, $t1
	ori	$a5, $t3, 988
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $t3, 980
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	ori	$a7, $t3, 984
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a7, $a2, $a7
	stptr.w	$a3, $a2, 13212
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$a7, $a5, $a3
	stptr.w	$a7, $a2, 13264
	sub.d	$a3, $a3, $a5
	stptr.w	$a3, $a2, 13272
	alsl.d	$a3, $a4, $a6, 1
	stptr.w	$a3, $a2, 13268
	slli.d	$a3, $a6, 1
	sub.d	$a3, $a4, $a3
	ldx.w	$a4, $a2, $t0
	ori	$a5, $t3, 1052
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $t3, 1044
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	ori	$a7, $t3, 1048
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	ldx.w	$a7, $a2, $a7
	stptr.w	$a3, $a2, 13276
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$a7, $a5, $a3
	stptr.w	$a7, $a2, 13328
	sub.d	$a3, $a3, $a5
	stptr.w	$a3, $a2, 13336
	alsl.d	$a3, $a4, $a6, 1
	stptr.w	$a3, $a2, 13332
	ld.d	$a3, $s3, 0
	slli.d	$a5, $a6, 1
	sub.d	$a4, $a4, $a5
	stptr.w	$a4, $a2, 13340
	vldx	$vr5, $a3, $s2
	vldx	$vr6, $a3, $t2
	vldx	$vr7, $a3, $t1
	vldx	$vr8, $a3, $t0
	vsub.w	$vr9, $vr6, $vr7
	vsub.w	$vr10, $vr5, $vr8
	vadd.w	$vr5, $vr8, $vr5
	vadd.w	$vr6, $vr7, $vr6
	vadd.w	$vr7, $vr6, $vr5
	vstx	$vr7, $a3, $s2
	vsub.w	$vr5, $vr5, $vr6
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	vstx	$vr5, $a3, $t1
	vslli.w	$vr5, $vr10, 1
	vadd.w	$vr5, $vr5, $vr9
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	vstx	$vr5, $a3, $t2
	vslli.w	$vr5, $vr9, 1
	vsub.w	$vr5, $vr10, $vr5
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	vstx	$vr5, $a3, $t0
	vpickve2gr.w	$a2, $vr4, 0
	vpickve2gr.w	$a3, $vr4, 3
	add.d	$a4, $a3, $a2
	bstrpick.d	$a4, $a4, 16, 0
	sub.w	$a2, $a2, $a3
	vpickve2gr.w	$a3, $vr4, 1
	vpickve2gr.w	$a5, $vr4, 2
	add.d	$a6, $a5, $a3
	bstrpick.d	$a6, $a6, 16, 0
	sub.w	$a5, $a3, $a5
	add.d	$t0, $a6, $a4
	sub.d	$a3, $a4, $a6
	alsl.d	$a6, $a2, $a5, 1
	slli.d	$a4, $a5, 1
	sub.d	$a2, $a2, $a4
	vpickve2gr.w	$a4, $vr3, 0
	vpickve2gr.w	$a5, $vr3, 3
	add.d	$a7, $a5, $a4
	sub.d	$a4, $a4, $a5
	vpickve2gr.w	$a5, $vr3, 1
	vpickve2gr.w	$t1, $vr3, 2
	add.d	$t2, $t1, $a5
	sub.d	$t1, $a5, $t1
	add.d	$t3, $t2, $a7
	sub.d	$a5, $a7, $t2
	addi.w	$a7, $a4, 0
	alsl.d	$t2, $a7, $t1, 1
	addi.w	$a7, $t1, 0
	slli.d	$a7, $a7, 1
	sub.d	$a4, $a4, $a7
	vpickve2gr.w	$a7, $vr2, 0
	vpickve2gr.w	$t1, $vr2, 3
	add.d	$t4, $t1, $a7
	sub.d	$a7, $a7, $t1
	vpickve2gr.w	$t1, $vr2, 1
	vpickve2gr.w	$t5, $vr2, 2
	add.d	$t6, $t5, $t1
	sub.d	$t1, $t1, $t5
	add.d	$t5, $t6, $t4
	sub.d	$t4, $t4, $t6
	addi.w	$t6, $a7, 0
	alsl.d	$t6, $t6, $t1, 1
	addi.w	$t1, $t1, 0
	slli.d	$t1, $t1, 1
	sub.d	$a7, $a7, $t1
	vpickve2gr.w	$t1, $vr1, 0
	vpickve2gr.w	$t7, $vr1, 3
	add.d	$t8, $t7, $t1
	sub.w	$t1, $t1, $t7
	vpickve2gr.w	$t7, $vr1, 1
	vpickve2gr.w	$fp, $vr1, 2
	add.d	$s0, $fp, $t7
	sub.w	$t7, $t7, $fp
	bstrpick.d	$t8, $t8, 16, 0
	bstrpick.d	$fp, $s0, 16, 0
	add.d	$s0, $fp, $t8
	sub.d	$t8, $t8, $fp
	alsl.d	$fp, $t1, $t7, 1
	slli.d	$t7, $t7, 1
	sub.d	$t1, $t1, $t7
	add.d	$t7, $s0, $t0
	sub.d	$t0, $t0, $s0
	add.d	$s0, $t5, $t3
	sub.d	$t3, $t3, $t5
	add.d	$t5, $s0, $t7
	st.w	$t5, $sp, 368
	sub.d	$t5, $t7, $s0
	st.w	$t5, $sp, 376
	alsl.d	$t5, $t0, $t3, 1
	st.w	$t5, $sp, 372
	slli.d	$t3, $t3, 1
	sub.d	$t0, $t0, $t3
	st.w	$t0, $sp, 380
	add.d	$t0, $fp, $a6
	sub.d	$a6, $a6, $fp
	add.d	$t3, $t6, $t2
	sub.d	$t2, $t2, $t6
	add.d	$t5, $t3, $t0
	st.w	$t5, $sp, 384
	sub.d	$t0, $t0, $t3
	st.w	$t0, $sp, 392
	alsl.d	$t0, $a6, $t2, 1
	st.w	$t0, $sp, 388
	slli.d	$t0, $t2, 1
	sub.d	$a6, $a6, $t0
	st.w	$a6, $sp, 396
	add.d	$a6, $t8, $a3
	sub.d	$a3, $a3, $t8
	add.d	$t0, $t4, $a5
	sub.d	$a5, $a5, $t4
	add.d	$t2, $t0, $a6
	st.w	$t2, $sp, 400
	sub.d	$a6, $a6, $t0
	st.w	$a6, $sp, 408
	alsl.d	$a6, $a3, $a5, 1
	st.w	$a6, $sp, 404
	slli.d	$a5, $a5, 1
	sub.d	$a3, $a3, $a5
	st.w	$a3, $sp, 412
	add.d	$a3, $t1, $a2
	sub.d	$a2, $a2, $t1
	add.d	$a5, $a7, $a4
	sub.d	$a4, $a4, $a7
	add.d	$a6, $a5, $a3
	st.w	$a6, $sp, 416
	sub.d	$a3, $a3, $a5
	st.w	$a3, $sp, 424
	alsl.d	$a3, $a2, $a4, 1
	st.w	$a3, $sp, 420
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI5_0)
	slli.d	$a3, $a4, 1
	sub.d	$a2, $a2, $a3
	st.w	$a2, $sp, 428
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -1008
	fmul.d	$fs0, $fa0, $fa1
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	addi.d	$t1, $s1, 15
	addi.d	$t2, $s7, 15
	ori	$a4, $zero, 1
	sll.w	$a2, $a4, $t1
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2731
	mul.d	$a2, $a2, $a3
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$t3, $a2, $a3
	sll.w	$a2, $a4, $t2
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srai.d	$t4, $a2, 1
	slli.d	$a1, $a1, 6
	pcalau12i	$a2, %pc_hi20(quant_coef)
	addi.d	$a2, $a2, %pc_lo12(quant_coef)
	add.d	$t5, $a2, $a1
	addi.d	$t8, $zero, -1
	sll.w	$t6, $t8, $t2
	slli.d	$a3, $a0, 6
	add.d	$t7, $a2, $a3
	pcalau12i	$a0, %pc_hi20(dequant_coef)
	addi.d	$a2, $a0, %pc_lo12(dequant_coef)
	move	$s1, $zero
	move	$ra, $zero
	move	$a0, $zero
	add.d	$a3, $a2, $a3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $s3, 0
	lu12i.w	$a2, 244
	ori	$a2, $a2, 575
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s8, $sp, 192                   # 8-byte Folded Spill
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	st.d	$t2, $sp, 168                   # 8-byte Folded Spill
	st.d	$t3, $sp, 160                   # 8-byte Folded Spill
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	st.d	$t6, $sp, 136                   # 8-byte Folded Spill
	st.d	$t7, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_1:                                #   in Loop: Header=BB5_3 Depth=1
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	masknez	$a5, $a3, $a2
	move	$fp, $a6
	maskeqz	$a6, $a4, $a2
	or	$a5, $a6, $a5
	ld.w	$a6, $a1, 180
	pcalau12i	$a7, %pc_hi20(lrec)
	ld.d	$a7, $a7, %pc_lo12(lrec)
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	add.d	$t0, $t0, $s3
	add.w	$a6, $t0, $a6
	ld.w	$t0, $a1, 176
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	add.d	$a7, $a7, $s0
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a6, $a7
	move	$a6, $fp
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a5, 4
	ldx.w	$a5, $a5, $a6
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $s7
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	alsl.d	$a3, $s0, $a3, 2
	addi.d	$s1, $s1, 2
	stptr.w	$a2, $a3, 13136
	ori	$a2, $zero, 32
	beq	$s1, $a2, .LBB5_17
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s8, 428
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN)
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	add.d	$a3, $a2, $s1
	ldx.bu	$s0, $a2, $s1
	ld.bu	$a4, $a3, 1
	addi.d	$a2, $sp, 368
	alsl.d	$a2, $s0, $a2, 4
	slli.d	$a6, $a4, 2
	ldx.w	$s6, $a2, $a6
	addi.w	$t8, $t8, 1
	alsl.d	$a2, $s0, $t5, 4
	ldx.w	$a7, $a2, $a6
	srai.d	$a2, $s6, 31
	xor	$a3, $s6, $a2
	sub.d	$a2, $a3, $a2
	mul.d	$a2, $a2, $a7
	add.w	$a2, $a2, $t4
	and	$a2, $a2, $t6
	div.w	$a3, $a2, $a7
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	slli.d	$a2, $a4, 6
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $s0, $a2, 2
	ldx.w	$a2, $a2, $s2
	slti	$a4, $s6, 0
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	sub.d	$a5, $zero, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	add.w	$s5, $a3, $a2
	alsl.d	$a3, $s0, $t7, 4
	ldx.w	$a3, $a3, $a6
	srai.d	$a4, $s5, 31
	xor	$a5, $s5, $a4
	sub.d	$a4, $a5, $a4
	mul.d	$a4, $a4, $a3
	add.d	$a4, $a4, $t3
	sra.w	$s4, $a4, $t1
	sub.w	$fp, $a2, $s6
	srai.d	$a4, $fp, 31
	xor	$a5, $fp, $a4
	sub.d	$a4, $a5, $a4
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $t3
	sra.w	$s3, $a3, $t1
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a4, $s0, $a3, 4
	pcalau12i	$a3, %pc_hi20(A)
	addi.d	$a5, $a3, %pc_lo12(A)
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	beqz	$s3, .LBB5_7
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	beq	$s4, $s3, .LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	beqz	$s4, .LBB5_7
# %bb.6:                                # %.thread347
                                        #   in Loop: Header=BB5_3 Depth=1
	slti	$a0, $s5, 0
	srai.d	$a1, $s4, 31
	xor	$a3, $s4, $a1
	sub.w	$t0, $a3, $a1
	st.d	$t0, $sp, 256                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $t0
	ldx.w	$a3, $a4, $a6
	alsl.d	$a4, $s0, $a5, 4
	ldx.w	$a4, $a4, $a6
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $t0, $a0
	or	$a0, $a1, $a0
	mul.d	$s8, $a4, $a3
	mul.d	$a0, $s8, $a0
	ld.d	$s7, $sp, 312                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $s7
	srli.d	$a0, $a0, 6
	add.d	$a0, $s6, $a0
	sub.d	$a0, $a2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 364
	addi.d	$a3, $sp, 360
	move	$a0, $s4
	move	$a1, $t8
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	move	$s1, $t8
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$a6, $sp, 272                   # 8-byte Folded Spill
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 364
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $s0, $a0, 2
	ldx.w	$a0, $a0, $s2
	slti	$a1, $fp, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.w	$s2, $a3, $a2
	sub.d	$a2, $zero, $s2
	masknez	$a3, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	mul.d	$a1, $s8, $a1
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $s7
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	srli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s6
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 364
	addi.d	$a3, $sp, 360
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	move	$t8, $s1
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 364
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s2
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	fcmp.clt.d	$fcc1, $fs1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc1
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s3, $a0, $a1
	xor	$a0, $s3, $s4
	sltui	$a0, $a0, 1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s5, $a0
	or	$fp, $a0, $a1
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_3 Depth=1
	bne	$s4, $s3, .LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	move	$fp, $s5
	move	$s3, $s4
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	beqz	$s4, .LBB5_14
.LBB5_10:                               #   in Loop: Header=BB5_3 Depth=1
	beqz	$s3, .LBB5_14
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a1, $s3, .LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4180
	pcalau12i	$a1, %pc_hi20(COEFF_COST)
	addi.d	$a1, $a1, %pc_lo12(COEFF_COST)
	alsl.d	$a0, $a0, $a1, 4
	ldx.bu	$a0, $a0, $t8
.LBB5_13:                               #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a2, 0
	slti	$a0, $fp, 0
	srai.d	$a1, $s3, 31
	xor	$a2, $s3, $a1
	sub.d	$a1, $a2, $a1
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $ra, 2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	stx.w	$t8, $a2, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a6
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $s0, $a2, 4
	ldx.w	$a2, $a2, $a6
	addi.w	$ra, $ra, 1
	mul.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	srai.d	$a2, $a0, 6
	addi.d	$t8, $zero, -1
	ori	$a0, $zero, 1
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_14:                               #   in Loop: Header=BB5_3 Depth=1
	move	$a2, $zero
.LBB5_15:                               # %.thread
                                        #   in Loop: Header=BB5_3 Depth=1
	pcalau12i	$a3, %pc_hi20(si_frame_indicator)
	ld.w	$a3, $a3, %pc_lo12(si_frame_indicator)
	pcalau12i	$a4, %pc_hi20(sp2_frame_indicator)
	ld.w	$a4, $a4, %pc_lo12(sp2_frame_indicator)
	add.w	$a2, $a2, $s6
	or	$a4, $a3, $a4
	srai.d	$a3, $a2, 31
	xor	$a5, $a2, $a3
	sub.d	$a3, $a5, $a3
	mul.d	$a3, $a3, $a7
	add.d	$a3, $a3, $t4
	sra.w	$a3, $a3, $t2
	slti	$a2, $a2, 0
	beqz	$a4, .LBB5_1
# %bb.16:                               # %.thread._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	b	.LBB5_2
.LBB5_17:                               # %.preheader361
	slli.d	$a2, $ra, 2
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	stx.w	$zero, $a3, $a2
	ldx.w	$a2, $a1, $s2
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a3, $a1, $t7
	ldptr.w	$a4, $a1, 13140
	ldptr.w	$a5, $a1, 13148
	add.d	$a6, $a3, $a2
	sub.d	$a2, $a2, $a3
	srli.d	$a3, $a4, 1
	sub.d	$a3, $a3, $a5
	srli.d	$a5, $a5, 1
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a6
	stptr.w	$a5, $a1, 13136
	sub.d	$a4, $a6, $a4
	stptr.w	$a4, $a1, 13148
	add.d	$a4, $a3, $a2
	stptr.w	$a4, $a1, 13140
	sub.d	$a2, $a2, $a3
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $t3
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a4, $a1, $t8
	stptr.w	$a2, $a1, 13144
	ldptr.w	$a2, $a1, 13204
	ldptr.w	$a5, $a1, 13212
	add.d	$a6, $a4, $a3
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a2, 1
	sub.d	$a4, $a4, $a5
	srli.d	$a5, $a5, 1
	add.d	$a2, $a5, $a2
	add.d	$a5, $a2, $a6
	stptr.w	$a5, $a1, 13200
	sub.d	$a2, $a6, $a2
	stptr.w	$a2, $a1, 13212
	add.d	$a2, $a4, $a3
	stptr.w	$a2, $a1, 13204
	sub.d	$a2, $a3, $a4
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $t6
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a4, $a1, $fp
	stptr.w	$a2, $a1, 13208
	ldptr.w	$a2, $a1, 13268
	ldptr.w	$a5, $a1, 13276
	add.d	$a6, $a4, $a3
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a2, 1
	sub.d	$a4, $a4, $a5
	srli.d	$a5, $a5, 1
	add.d	$a2, $a5, $a2
	add.d	$a5, $a2, $a6
	stptr.w	$a5, $a1, 13264
	sub.d	$a2, $a6, $a2
	stptr.w	$a2, $a1, 13276
	add.d	$a2, $a4, $a3
	stptr.w	$a2, $a1, 13268
	sub.d	$a2, $a3, $a4
	ld.d	$t5, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $t5
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a4, $a1, $s0
	stptr.w	$a2, $a1, 13272
	ldptr.w	$a2, $a1, 13332
	ldptr.w	$a5, $a1, 13340
	add.d	$a6, $a4, $a3
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a2, 1
	sub.d	$a4, $a4, $a5
	srli.d	$a5, $a5, 1
	add.d	$a2, $a5, $a2
	add.d	$a5, $a2, $a6
	stptr.w	$a5, $a1, 13328
	sub.d	$a2, $a6, $a2
	stptr.w	$a2, $a1, 13340
	add.d	$a2, $a4, $a3
	stptr.w	$a2, $a1, 13332
	sub.d	$a2, $a3, $a4
	stptr.w	$a2, $a1, 13336
	addi.w	$a2, $zero, -16
	lu12i.w	$t4, 3
	.p2align	4, , 16
.LBB5_18:                               # %.preheader359
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a1, $a2
	ori	$a4, $t4, 864
	ldx.w	$a4, $a3, $a4
	ori	$a5, $t4, 992
	ldx.w	$a5, $a3, $a5
	ldptr.w	$a6, $a3, 13216
	ldptr.w	$a7, $a3, 13344
	add.d	$t0, $a5, $a4
	sub.d	$a4, $a4, $a5
	srli.d	$a5, $a6, 1
	sub.d	$a5, $a5, $a7
	srli.d	$a7, $a7, 1
	add.d	$a6, $a7, $a6
	ldptr.w	$a7, $a1, 15520
	addi.d	$t0, $t0, 32
	add.w	$t1, $t0, $a6
	srai.d	$t2, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t2, $t1
	slt	$t2, $t1, $a7
	maskeqz	$t1, $t1, $t2
	masknez	$a7, $a7, $t2
	or	$a7, $t1, $a7
	stptr.w	$a7, $a3, 13152
	ldptr.w	$a7, $a1, 15520
	sub.w	$a6, $t0, $a6
	srai.d	$t0, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $t0, $a6
	slt	$t0, $a6, $a7
	maskeqz	$a6, $a6, $t0
	masknez	$a7, $a7, $t0
	or	$a6, $a6, $a7
	stptr.w	$a6, $a3, 13344
	ldptr.w	$a6, $a1, 15520
	addi.d	$a4, $a4, 32
	add.w	$a7, $a4, $a5
	srai.d	$t0, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t0, $a7
	slt	$t0, $a7, $a6
	maskeqz	$a7, $a7, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $a7, $a6
	stptr.w	$a6, $a3, 13216
	ldptr.w	$a6, $a1, 15520
	sub.w	$a4, $a4, $a5
	srai.d	$a5, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $a6
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	addi.d	$a2, $a2, 4
	stptr.w	$a4, $a3, 13280
	bnez	$a2, .LBB5_18
# %bb.19:                               # %.preheader358
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a1, 180
	ldptr.d	$a2, $a2, 6440
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	ld.w	$a4, $a1, 176
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $a2, $a5
	ldx.h	$a6, $a1, $s2
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	add.w	$a4, $a7, $a4
	slli.d	$a7, $a4, 1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ldx.h	$t0, $a1, $t0
	stx.h	$a6, $a5, $a7
	addi.w	$a6, $a4, 1
	slli.d	$a6, $a6, 1
	stx.h	$t0, $a5, $a6
	ldx.h	$t0, $a1, $t7
	addi.w	$t1, $a4, 2
	slli.d	$t1, $t1, 1
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ldx.h	$t2, $a1, $t2
	stx.h	$t0, $a5, $t1
	addi.w	$a4, $a4, 3
	slli.d	$a4, $a4, 1
	stx.h	$t2, $a5, $a4
	addi.w	$a5, $a3, 1
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a2, $a5
	ldx.h	$t0, $a1, $t3
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$t2, $a1, $t2
	ldx.h	$t3, $a1, $t8
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ldx.h	$t4, $a1, $t4
	stx.h	$t0, $a5, $a7
	stx.h	$t2, $a5, $a6
	stx.h	$t3, $a5, $t1
	stx.h	$t4, $a5, $a4
	addi.w	$a5, $a3, 2
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a2, $a5
	ldx.h	$t0, $a1, $t6
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$t2, $a1, $t2
	ldx.h	$t3, $a1, $fp
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	ldx.h	$t4, $a1, $t4
	stx.h	$t0, $a5, $a7
	stx.h	$t2, $a5, $a6
	stx.h	$t3, $a5, $t1
	stx.h	$t4, $a5, $a4
	addi.w	$a3, $a3, 3
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ldx.h	$a3, $a1, $t5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$a5, $a1, $a5
	ldx.h	$t0, $a1, $s0
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$a1, $a1, $t2
	stx.h	$a3, $a2, $a7
	stx.h	$a5, $a2, $a6
	stx.h	$t0, $a2, $t1
	stx.h	$a1, $a2, $a4
	fld.d	$fs2, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.Lfunc_end5:
	.size	dct_luma_sp, .Lfunc_end5-dct_luma_sp
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_chroma_sp
.LCPI6_0:
	.dword	0x3feb333333333333              # double 0.84999999999999998
	.text
	.globl	dct_chroma_sp
	.p2align	5
	.type	dct_chroma_sp,@function
dct_chroma_sp:                          # @dct_chroma_sp
# %bb.0:
	addi.d	$sp, $sp, -784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 680                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 672                  # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$fp, $a1, %got_pc_lo12(img)
	ld.d	$a3, $fp, 0
	ld.w	$a1, $a3, 12
	ldptr.d	$a2, $a3, 14168
	ldptr.d	$a4, $a3, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$a2, $a2, 8
	add.d	$s0, $a4, $a1
	ld.w	$a0, $s0, 8
	ld.d	$a1, $a2, 0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $a2, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	move	$t1, $s0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	ld.d	$s8, $fp, 0
	lu12i.w	$a0, 3
	pcalau12i	$a2, %pc_hi20(active_pps)
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ori	$a3, $a0, 3168
	ldx.w	$a3, $s8, $a3
	ld.w	$a4, $s0, 8
	ld.w	$a5, $a2, 208
	fld.d	$fa2, $a1, %pc_lo12(.LCPI6_0)
	vldi	$vr1, -1008
	sub.w	$a3, $zero, $a3
	add.w	$a1, $a5, $a4
	slt	$a2, $a3, $a1
	masknez	$a4, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a7, $a1, $a4
	slti	$a1, $a7, 51
	maskeqz	$a6, $a7, $a1
	ld.w	$t2, $s0, 20
	ori	$a4, $zero, 51
	masknez	$a1, $a4, $a1
	or	$a1, $a6, $a1
	add.w	$a5, $t2, $a5
	slt	$a6, $a3, $a5
	masknez	$a3, $a3, $a6
	maskeqz	$a5, $a5, $a6
	or	$a6, $a5, $a3
	pcalau12i	$a3, %pc_hi20(QP_SCALE_CR)
	addi.d	$a5, $a3, %pc_lo12(QP_SCALE_CR)
	bltz	$a7, .LBB6_2
# %bb.1:
	ldx.bu	$a1, $a5, $a1
	ori	$a3, $zero, 171
	mul.d	$a3, $a1, $a3
	srli.d	$a2, $a3, 10
	b	.LBB6_3
.LBB6_2:                                # %.thread
	sub.d	$a3, $zero, $a1
	bstrpick.d	$a3, $a3, 31, 0
	lu12i.w	$a7, -349526
	ori	$a7, $a7, 2731
	lu32i.d	$a7, 0
	mul.d	$a3, $a3, $a7
	srli.d	$a3, $a3, 34
	sub.d	$a2, $zero, $a3
.LBB6_3:
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa2
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2731
	mul.d	$a7, $a1, $a3
	srli.d	$t0, $a7, 63
	srli.d	$a7, $a7, 32
	add.d	$a7, $a7, $t0
	slli.d	$t0, $a7, 2
	alsl.d	$a7, $a7, $t0, 1
	sub.w	$a1, $a1, $a7
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 15
	ori	$a7, $zero, 1
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	sll.w	$a7, $a7, $a1
	mul.d	$a7, $a7, $a3
	srli.d	$t0, $a7, 63
	srli.d	$a7, $a7, 32
	add.d	$a1, $a7, $t0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	bltz	$a6, .LBB6_5
# %bb.4:
	slti	$a2, $a6, 51
	maskeqz	$a6, $a6, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a6, $a2
	ldx.bu	$a1, $a5, $a2
	ori	$a4, $zero, 171
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	mul.d	$a4, $a1, $a4
	srli.d	$a1, $a4, 10
	b	.LBB6_6
.LBB6_5:
	st.d	$t2, $sp, 232                   # 8-byte Folded Spill
	mul.d	$a4, $t2, $a3
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a1, $a4, $a5
.LBB6_6:
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	fmul.d	$fs0, $fa0, $fa1
	ori	$a1, $a0, 848
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	add.d	$a6, $s8, $a1
	ori	$a7, $a0, 876
	add.d	$a7, $s8, $a7
	ori	$t0, $a0, 350
	add.d	$t0, $s8, $t0
	ori	$t1, $zero, 224
	addi.d	$t2, $sp, 400
	ori	$t3, $zero, 256
	.p2align	4, , 16
.LBB6_7:                                # %.preheader669
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t4, $t0, -14
	ld.w	$t5, $a7, -28
	add.d	$t6, $t2, $t1
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, -28
	st.w	$t4, $t6, -224
	ld.hu	$t4, $t0, -12
	ld.w	$t5, $a7, -24
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, -24
	st.w	$t4, $t6, -192
	ld.hu	$t4, $t0, -10
	ld.w	$t5, $a7, -20
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, -20
	st.w	$t4, $t6, -160
	ld.hu	$t4, $t0, -8
	ld.w	$t5, $a7, -16
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, -16
	st.w	$t4, $t6, -128
	ld.hu	$t4, $t0, -6
	ld.w	$t5, $a7, -12
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, -12
	st.w	$t4, $t6, -96
	ld.hu	$t4, $t0, -4
	ld.w	$t5, $a7, -8
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, -8
	st.w	$t4, $t6, -64
	ld.hu	$t4, $t0, -2
	ld.w	$t5, $a7, -4
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, -4
	st.w	$t4, $t6, -32
	ld.hu	$t4, $t0, 0
	ld.w	$t5, $a7, 0
	add.d	$t5, $t5, $t4
	st.w	$t5, $a7, 0
	stx.w	$t4, $t1, $t2
	addi.d	$t1, $t1, 4
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 32
	bne	$t1, $t3, .LBB6_7
# %bb.8:                                # %.preheader667.preheader
	move	$fp, $zero
	ori	$a2, $zero, 1
	ori	$a1, $a0, 976
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $a0, 912
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $a0, 1040
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_9:                                # %.preheader667
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	move	$s6, $zero
	slli.d	$a0, $fp, 6
	add.d	$t1, $a6, $a0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	add.d	$t4, $s8, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.d	$t5, $fp, 1
	slli.d	$a0, $t5, 6
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.d	$t7, $fp, 2
	slli.d	$a0, $t7, 6
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.d	$fp, $fp, 3
	slli.d	$fp, $fp, 6
	add.d	$a0, $a6, $fp
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB6_10:                               # %.preheader666
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s3, $s6, 2
	ldx.w	$s7, $t1, $s3
	addi.d	$s2, $s3, 12
	ldx.w	$ra, $t1, $s2
	addi.d	$s5, $s3, 4
	ldx.w	$a1, $t1, $s5
	addi.d	$s4, $s3, 8
	ldx.w	$a3, $t1, $s4
	move	$t0, $s8
	alsl.d	$s8, $s6, $s8, 2
	add.d	$s6, $ra, $s7
	sub.d	$s7, $s7, $ra
	add.d	$ra, $a3, $a1
	sub.d	$a1, $a1, $a3
	add.d	$a3, $ra, $s6
	stx.w	$a3, $t1, $s3
	sub.d	$a3, $s6, $ra
	ld.d	$t6, $sp, 368                   # 8-byte Folded Reload
	add.d	$s6, $s8, $t6
	stptr.w	$a3, $s6, 13144
	alsl.d	$a3, $s7, $a1, 1
	stptr.w	$a3, $s6, 13140
	slli.d	$a1, $a1, 1
	sub.d	$a1, $s7, $a1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s3
	ldx.w	$s7, $a0, $s2
	ldx.w	$ra, $a0, $s5
	ldx.w	$a2, $a0, $s4
	stptr.w	$a1, $s6, 13148
	add.d	$a1, $s7, $a3
	sub.d	$a3, $a3, $s7
	add.d	$s7, $a2, $ra
	sub.d	$a2, $ra, $a2
	add.d	$s6, $s7, $a1
	sub.d	$a1, $a1, $s7
	ld.d	$t7, $sp, 336                   # 8-byte Folded Reload
	add.d	$s7, $s8, $t7
	stptr.w	$a1, $s7, 13144
	alsl.d	$a1, $a3, $a2, 1
	stptr.w	$a1, $s7, 13140
	slli.d	$a1, $a2, 1
	sub.d	$a1, $a3, $a1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $s3
	ldx.w	$a3, $a0, $s2
	ldx.w	$ra, $a0, $s5
	ldx.w	$a5, $a0, $s4
	stptr.w	$a1, $s7, 13148
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	add.d	$a3, $a5, $ra
	sub.d	$a5, $ra, $a5
	add.d	$s7, $a3, $a1
	sub.d	$a1, $a1, $a3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	add.d	$a3, $s8, $s0
	stptr.w	$a1, $a3, 13144
	alsl.d	$a1, $a2, $a5, 1
	stptr.w	$a1, $a3, 13140
	slli.d	$a1, $a5, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a5, $a0, $s3
	ldx.w	$a7, $a0, $s2
	ldx.w	$a4, $a0, $s5
	ldx.w	$a0, $a0, $s4
	sub.d	$a1, $a2, $a1
	stptr.w	$a1, $a3, 13148
	add.w	$a1, $a7, $a5
	add.w	$a2, $a0, $a4
	add.d	$ra, $a2, $a1
	ldx.w	$a3, $t1, $s3
	sub.d	$a1, $a1, $a2
	add.d	$a2, $s8, $fp
	stptr.w	$a1, $a2, 13144
	add.d	$a1, $ra, $a3
	add.d	$s8, $s7, $s6
	add.d	$t4, $s8, $a1
	stx.w	$t4, $t1, $s3
	sub.d	$a1, $a1, $s8
	ld.d	$t5, $sp, 360                   # 8-byte Folded Reload
	stx.w	$a1, $t5, $s3
	add.d	$a1, $a6, $s5
	ldx.w	$t4, $a1, $t6
	ldx.w	$s8, $a1, $t7
	move	$t3, $a6
	ldx.w	$a6, $a1, $s0
	sub.d	$a5, $a5, $a7
	sub.d	$a0, $a4, $a0
	alsl.d	$a4, $a5, $a0, 1
	stptr.w	$a4, $a2, 13140
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a6, $s8
	add.d	$a4, $t3, $s4
	ldx.w	$a7, $a4, $t6
	add.d	$t2, $a1, $t4
	sub.d	$a1, $t4, $a1
	ldx.w	$t4, $a4, $fp
	sub.d	$a6, $s8, $a6
	add.d	$s8, $a2, $t2
	stx.w	$s8, $t1, $s5
	add.d	$s8, $t4, $a7
	sub.d	$a2, $t2, $a2
	ldx.w	$t2, $a4, $t7
	ldx.w	$a4, $a4, $s0
	stx.w	$a2, $t5, $s5
	alsl.d	$a2, $a1, $a6, 1
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	stx.w	$a2, $t8, $s5
	add.d	$a2, $a4, $t2
	add.d	$s5, $a2, $s8
	stx.w	$s5, $t1, $s4
	sub.d	$a2, $s8, $a2
	move	$s8, $t0
	stx.w	$a2, $t5, $s4
	sub.d	$a2, $a3, $ra
	sub.d	$a3, $s6, $s7
	alsl.d	$s5, $a2, $a3, 1
	stx.w	$s5, $t8, $s3
	sub.d	$a7, $a7, $t4
	sub.d	$a4, $t2, $a4
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a6, 1
	move	$a6, $t3
	vinsgr2vr.w	$vr0, $a4, 2
	vinsgr2vr.w	$vr0, $a0, 3
	vinsgr2vr.w	$vr1, $a2, 0
	alsl.d	$a0, $a7, $a4, 1
	vslli.w	$vr0, $vr0, 1
	vinsgr2vr.w	$vr1, $a1, 1
	vinsgr2vr.w	$vr1, $a7, 2
	vinsgr2vr.w	$vr1, $a5, 3
	vsub.w	$vr0, $vr1, $vr0
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	vstx	$vr0, $a5, $s3
	add.d	$a1, $t3, $s2
	ldx.w	$a2, $a1, $t6
	ldx.w	$a3, $a1, $fp
	ldx.w	$a4, $a1, $t7
	ldx.w	$a1, $a1, $s0
	stx.w	$a0, $t8, $s4
	add.d	$a0, $a3, $a2
	sub.d	$a2, $a2, $a3
	add.d	$a3, $a1, $a4
	sub.d	$a1, $a4, $a1
	add.d	$a4, $a3, $a0
	stx.w	$a4, $t1, $s2
	sub.d	$a0, $a0, $a3
	stx.w	$a0, $t5, $s2
	alsl.d	$a0, $a2, $a1, 1
	stx.w	$a0, $t8, $s2
	slli.d	$a0, $a1, 1
	sub.d	$a0, $a2, $a0
	stx.w	$a0, $a5, $s2
	andi	$a0, $s1, 1
	ori	$s6, $zero, 4
	move	$s1, $zero
	bnez	$a0, .LBB6_10
# %bb.11:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$fp, $zero, 4
	move	$a2, $zero
	bnez	$a0, .LBB6_9
# %bb.12:                               # %.preheader663.preheader
	move	$a7, $zero
	addi.d	$a6, $sp, 400
	ori	$t0, $zero, 1
	addi.d	$t1, $sp, 400
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s3, $sp, 528
	addi.d	$s5, $sp, 416
	.p2align	4, , 16
.LBB6_13:                               # %.preheader663
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_14 Depth 2
	move	$fp, $zero
	addi.d	$t2, $a7, 1
	addi.d	$t3, $a7, 2
	addi.d	$a0, $a7, 3
	slli.d	$t4, $a7, 2
	slli.d	$t5, $t2, 2
	slli.d	$t6, $t3, 2
	slli.d	$t7, $a0, 2
	ori	$t8, $zero, 1
	addi.d	$s2, $sp, 400
	.p2align	4, , 16
.LBB6_14:                               # %.preheader662
                                        #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a0, $fp, 5
	add.d	$a1, $t1, $a0
	addi.d	$fp, $a0, 96
	addi.d	$s1, $a0, 32
	addi.d	$s0, $a0, 64
	alsl.d	$a2, $a7, $s2, 2
	vldx	$vr0, $t1, $a0
	vldx	$vr1, $t1, $s1
	vldx	$vr2, $t1, $s0
	vldx	$vr3, $t1, $fp
	alsl.d	$a3, $t2, $s2, 2
	alsl.d	$a4, $t3, $s2, 2
	vsub.w	$vr4, $vr1, $vr2
	vsub.w	$vr5, $vr0, $vr3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr1, $vr0
	vpickve2gr.w	$a5, $vr2, 0
	vstelm.w	$vr2, $a2, 0, 0
	vpickve2gr.w	$s2, $vr2, 1
	vstelm.w	$vr2, $a3, 0, 1
	vpickve2gr.w	$a3, $vr2, 2
	vstelm.w	$vr2, $a4, 0, 2
	vpickve2gr.w	$a4, $vr2, 3
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a2, 64
	vslli.w	$vr0, $vr5, 1
	vadd.w	$vr0, $vr0, $vr4
	vst	$vr0, $a2, 32
	vslli.w	$vr0, $vr4, 1
	vsub.w	$vr0, $vr5, $vr0
	vst	$vr0, $a2, 96
	add.d	$a2, $a4, $a5
	sub.d	$a4, $a5, $a4
	add.d	$a5, $a3, $s2
	sub.d	$a3, $s2, $a3
	add.d	$s2, $a5, $a2
	stx.w	$s2, $t1, $a0
	sub.d	$a0, $a2, $a5
	st.w	$a0, $a1, 8
	alsl.d	$a0, $a4, $a3, 1
	st.w	$a0, $a1, 4
	slli.d	$a0, $a3, 1
	sub.d	$a0, $a4, $a0
	st.w	$a0, $a1, 12
	add.d	$a0, $a6, $s1
	ldx.w	$a1, $a0, $t4
	ldx.w	$a2, $a0, $t7
	ldx.w	$a3, $a0, $t5
	ldx.w	$a0, $a0, $t6
	add.d	$a4, $t1, $s1
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a0, $a3
	sub.d	$a0, $a3, $a0
	add.d	$a3, $a2, $a5
	stx.w	$a3, $t1, $s1
	sub.d	$a2, $a5, $a2
	st.w	$a2, $a4, 8
	alsl.d	$a2, $a1, $a0, 1
	st.w	$a2, $a4, 4
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	st.w	$a0, $a4, 12
	add.d	$a0, $a6, $s0
	ldx.w	$a1, $a0, $t4
	ldx.w	$a2, $a0, $t7
	ldx.w	$a3, $a0, $t5
	ldx.w	$a0, $a0, $t6
	add.d	$a4, $t1, $s0
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a0, $a3
	sub.d	$a0, $a3, $a0
	add.d	$a3, $a2, $a5
	stx.w	$a3, $t1, $s0
	sub.d	$a2, $a5, $a2
	st.w	$a2, $a4, 8
	alsl.d	$a2, $a1, $a0, 1
	st.w	$a2, $a4, 4
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	st.w	$a0, $a4, 12
	add.d	$a0, $a6, $fp
	ldx.w	$a1, $a0, $t4
	ldx.w	$a2, $a0, $t7
	ldx.w	$a3, $a0, $t5
	ldx.w	$a0, $a0, $t6
	add.d	$a4, $t1, $fp
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a0, $a3
	sub.d	$a0, $a3, $a0
	add.d	$a3, $a2, $a5
	stx.w	$a3, $t1, $fp
	sub.d	$a2, $a5, $a2
	st.w	$a2, $a4, 8
	alsl.d	$a2, $a1, $a0, 1
	st.w	$a2, $a4, 4
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	st.w	$a0, $a4, 12
	andi	$a0, $t8, 1
	ori	$fp, $zero, 4
	move	$s2, $s3
	move	$t8, $zero
	bnez	$a0, .LBB6_14
# %bb.15:                               #   in Loop: Header=BB6_13 Depth=1
	andi	$a0, $t0, 1
	ori	$a7, $zero, 4
	move	$t1, $s5
	move	$t0, $zero
	bnez	$a0, .LBB6_13
# %bb.16:
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	alsl.d	$a0, $a0, $a1, 1
	sub.w	$a0, $a2, $a0
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a1, $t1, 15
	ori	$a2, $zero, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	sll.w	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	ldx.w	$a3, $s8, $s4
	lu12i.w	$a6, 3
	ori	$a4, $a6, 864
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$a4, $s8, $a4
	ori	$a5, $a6, 1104
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a5, $s8, $a5
	ori	$a6, $a6, 1120
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$a6, $s8, $a6
	add.w	$t8, $a1, $a2
	srai.d	$a1, $t8, 1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	add.d	$a1, $a4, $a3
	add.d	$a2, $a6, $a5
	add.d	$a7, $a2, $a1
	st.w	$a7, $sp, 656
	add.d	$a7, $a3, $a5
	add.d	$t0, $a4, $a6
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 660
	sub.d	$a1, $a1, $a2
	st.w	$a1, $sp, 664
	add.d	$a1, $a4, $a5
	sub.d	$a1, $a3, $a1
	ld.w	$a2, $sp, 400
	ld.w	$a3, $sp, 528
	ld.w	$a4, $sp, 416
	ld.w	$a5, $sp, 544
	add.d	$a1, $a1, $a6
	st.w	$a1, $sp, 668
	add.d	$a1, $a3, $a2
	add.d	$a6, $a5, $a4
	add.d	$a7, $a6, $a1
	st.w	$a7, $sp, 384
	add.d	$a7, $a2, $a4
	add.d	$t0, $a3, $a5
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 388
	sub.d	$a1, $a1, $a6
	st.w	$a1, $sp, 392
	add.d	$a1, $a3, $a4
	sub.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a5
	st.w	$a1, $sp, 396
	slli.d	$a0, $a0, 6
	pcalau12i	$a1, %pc_hi20(quant_coef)
	addi.d	$a1, $a1, %pc_lo12(quant_coef)
	add.d	$a2, $a1, $a0
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ldx.w	$a7, $a1, $a0
	bstrins.d	$t8, $zero, 0, 0
	addi.d	$t0, $t1, 16
	addi.d	$ra, $zero, -1
	sll.w	$t1, $ra, $t0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 6
	ldx.w	$t4, $a1, $a2
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	slli.d	$s0, $a1, 1
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	addi.d	$s1, $t3, 16
	pcalau12i	$a1, %pc_hi20(dequant_coef)
	addi.d	$a1, $a1, %pc_lo12(dequant_coef)
	add.d	$a4, $a1, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	lu12i.w	$a3, 240
	sll.w	$a2, $a3, $a2
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a0
	addi.d	$a6, $sp, 656
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s3, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 352                 # 8-byte Folded Spill
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a4, $sp, 312                   # 8-byte Folded Spill
	move	$t5, $a1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$t8, $sp, 256                   # 8-byte Folded Spill
	st.d	$a7, $sp, 232                   # 8-byte Folded Spill
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	st.d	$t1, $sp, 216                   # 8-byte Folded Spill
	st.d	$t4, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_17:                               #   in Loop: Header=BB6_18 Depth=1
	addi.d	$s6, $s6, 2
	addi.d	$s5, $s5, 4
	addi.d	$s3, $s3, 4
	ori	$a0, $zero, 16
	beq	$s5, $a0, .LBB6_31
.LBB6_18:                               # =>This Inner Loop Header: Depth=1
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 384
	ldx.w	$fp, $s5, $a0
	addi.w	$ra, $ra, 1
	srai.d	$a0, $fp, 31
	xor	$a1, $fp, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a7
	add.w	$a0, $a0, $t8
	and	$a0, $a0, $t1
	div.w	$a0, $a0, $a7
	ldx.w	$s6, $s5, $a6
	slti	$a1, $fp, 0
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.d	$a0, $a0, $a2
	sub.d	$a2, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	add.w	$s8, $a0, $s6
	srai.d	$a0, $s8, 31
	xor	$a1, $s8, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $t4
	add.d	$a0, $a0, $s0
	sub.w	$s7, $s6, $fp
	srai.d	$a1, $s7, 31
	xor	$a2, $s7, $a1
	sub.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $t4
	add.d	$a1, $a1, $s0
	sra.w	$s3, $a1, $s1
	sra.w	$s2, $a0, $s1
	beqz	$s3, .LBB6_22
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=1
	beq	$s2, $s3, .LBB6_22
# %bb.20:                               #   in Loop: Header=BB6_18 Depth=1
	beqz	$s2, .LBB6_22
# %bb.21:                               #   in Loop: Header=BB6_18 Depth=1
	slti	$a0, $s8, 0
	srai.d	$a1, $s2, 31
	xor	$a2, $s2, $a1
	sub.w	$a3, $a2, $a1
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.w	$s4, $a2, 0
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$a0, $a1, $a0
	mul.d	$a0, $a0, $s4
	slli.d	$a0, $a0, 4
	sll.w	$a0, $a0, $t3
	srli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	sub.d	$a0, $s6, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 380
	addi.d	$a3, $sp, 376
	move	$a0, $s2
	move	$a1, $ra
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $ra
	pcaddu18i	$ra, %call36(levrun_linfo_c2x2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 380
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	slti	$a0, $s7, 0
	srai.d	$a1, $s3, 31
	xor	$a2, $s3, $a1
	sub.w	$s0, $a2, $a1
	sub.d	$a1, $zero, $s0
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	mul.d	$a0, $a0, $s4
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	sub.d	$a0, $s6, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 380
	addi.d	$a3, $sp, 376
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(levrun_linfo_c2x2)
	jirl	$ra, $ra, 0
	move	$ra, $s1
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 380
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	fcmp.clt.d	$fcc1, $fs1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc1
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a2
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	xor	$a1, $a0, $s2
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a2
	move	$s2, $a0
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_22:                               #   in Loop: Header=BB6_18 Depth=1
	beq	$s2, $s3, .LBB6_24
# %bb.23:                               #   in Loop: Header=BB6_18 Depth=1
	sltui	$a0, $s2, 1
	masknez	$s2, $s3, $a0
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$s8, $a0, $a1
.LBB6_24:                               #   in Loop: Header=BB6_18 Depth=1
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB6_27
# %bb.25:                               #   in Loop: Header=BB6_18 Depth=1
	beqz	$s2, .LBB6_28
.LBB6_26:                               #   in Loop: Header=BB6_18 Depth=1
	ld.d	$a0, $t2, 368
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	st.d	$a0, $t2, 368
	ori	$a4, $zero, 1
	slt	$a0, $a4, $a5
	slti	$a1, $s8, 0
	srai.d	$a2, $s2, 31
	xor	$a3, $s2, $a2
	sub.d	$a2, $a3, $a2
	sub.d	$a3, $zero, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	masknez	$a3, $a4, $a0
	or	$a1, $a1, $a2
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a2, $a6, 2
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	stx.w	$a1, $a4, $a2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	stx.w	$ra, $a4, $a2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	maskeqz	$a0, $a5, $a0
	or	$a5, $a0, $a3
	addi.w	$a6, $a6, 1
	st.d	$a6, $sp, 352                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $a2
	slli.d	$a0, $a0, 4
	sll.w	$a0, $a0, $t3
	srai.d	$a0, $a0, 5
	addi.d	$ra, $zero, -1
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_27:                               #   in Loop: Header=BB6_18 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 36
	slti	$a0, $a0, 4
	ori	$a2, $zero, 2063
	slt	$a1, $s2, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s2, $a0
	or	$s2, $a1, $a0
	bnez	$s2, .LBB6_26
.LBB6_28:                               #   in Loop: Header=BB6_18 Depth=1
	move	$a0, $zero
.LBB6_29:                               #   in Loop: Header=BB6_18 Depth=1
	add.w	$a0, $a0, $fp
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $a7
	add.d	$a1, $a1, $t8
	sra.w	$a1, $a1, $t0
	slti	$a0, $a0, 0
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $t5, 0
	pcalau12i	$t6, %pc_hi20(si_frame_indicator)
	ld.w	$a2, $t6, %pc_lo12(si_frame_indicator)
	pcalau12i	$t7, %pc_hi20(sp2_frame_indicator)
	ld.w	$a3, $t7, %pc_lo12(sp2_frame_indicator)
	mul.d	$a1, $a0, $a1
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a4
	addi.d	$a6, $sp, 656
	stx.w	$a1, $s5, $a6
	or	$a1, $a2, $a3
	pcalau12i	$a2, %pc_hi20(lrec_uv)
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bnez	$a1, .LBB6_17
# %bb.30:                               #   in Loop: Header=BB6_18 Depth=1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lrec_uv)
	ld.w	$a3, $a1, 188
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a4
	andi	$a4, $s3, 4
	add.w	$a3, $a3, $a4
	ld.w	$a1, $a1, 184
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	andi	$a3, $s6, 4
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	b	.LBB6_17
.LBB6_31:
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	move	$t8, $zero
	move	$a0, $zero
	ld.w	$a2, $sp, 656
	ld.w	$a3, $sp, 660
	ld.w	$a4, $sp, 664
	ld.w	$a5, $sp, 668
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	stx.w	$zero, $a6, $a1
	add.d	$a6, $a3, $a2
	add.d	$a7, $a5, $a4
	add.d	$t0, $a7, $a6
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bstrpick.d	$t1, $t0, 31, 31
	add.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 1
	stptr.w	$t0, $a1, 13136
	add.d	$t0, $a2, $a4
	add.d	$t1, $a3, $a5
	sub.d	$t0, $t0, $t1
	bstrpick.d	$t1, $t0, 31, 31
	add.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 1
	stptr.w	$t0, $a1, 13152
	sub.d	$a6, $a6, $a7
	bstrpick.d	$a7, $a6, 31, 31
	add.w	$a6, $a6, $a7
	srli.d	$a6, $a6, 1
	stptr.w	$a6, $a1, 13392
	add.w	$a3, $a3, $a4
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a5
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	stptr.w	$a2, $a1, 13408
	addi.d	$a2, $zero, -1
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	sll.w	$t1, $a2, $a7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s5, $sp, 400
	ori	$t4, $zero, 30
	ori	$a4, $zero, 1
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	st.d	$t7, $sp, 144                   # 8-byte Folded Spill
	st.d	$t1, $sp, 136                   # 8-byte Folded Spill
	b	.LBB6_33
	.p2align	4, , 16
.LBB6_32:                               #   in Loop: Header=BB6_33 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	andi	$a3, $a3, 1
	ori	$t8, $zero, 4
	move	$a4, $zero
	beqz	$a3, .LBB6_51
.LBB6_33:                               # %.preheader660
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_35 Depth 2
                                        #       Child Loop BB6_38 Depth 3
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	move	$ra, $zero
	srli.d	$a3, $t8, 1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a4, $zero, 1
	st.d	$t8, $sp, 200                   # 8-byte Folded Spill
	b	.LBB6_35
	.p2align	4, , 16
.LBB6_34:                               #   in Loop: Header=BB6_35 Depth=2
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	stx.w	$zero, $a4, $a3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	andi	$a3, $a3, 1
	ori	$ra, $zero, 4
	move	$a4, $zero
	beqz	$a3, .LBB6_32
.LBB6_35:                               #   Parent Loop BB6_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_38 Depth 3
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	ldptr.d	$a2, $a1, 14160
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 32
	alsl.d	$a2, $ra, $a2, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	move	$s1, $zero
	st.d	$zero, $sp, 336                 # 8-byte Folded Spill
	srli.d	$a3, $ra, 2
	ld.d	$a4, $a2, 0
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	addi.d	$s8, $zero, -1
	st.d	$ra, $sp, 208                   # 8-byte Folded Spill
	b	.LBB6_38
	.p2align	4, , 16
.LBB6_36:                               # %.thread610._crit_edge
                                        #   in Loop: Header=BB6_38 Depth=3
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
.LBB6_37:                               #   in Loop: Header=BB6_38 Depth=3
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $s2
	add.d	$a3, $a3, $t0
	sra.w	$a3, $a3, $a7
	slti	$a2, $a2, 0
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	alsl.d	$a5, $s0, $t5, 4
	ldx.w	$a5, $a5, $s7
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	mul.d	$a2, $a5, $a2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	sll.w	$a3, $a2, $a3
	add.d	$a2, $a1, $s4
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	add.d	$a4, $a2, $a4
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	slli.d	$a5, $a5, 2
	addi.d	$s1, $s1, 2
	stx.w	$a3, $a4, $a5
	beq	$s1, $t4, .LBB6_34
.LBB6_38:                               #   Parent Loop BB6_33 Depth=1
                                        #     Parent Loop BB6_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t2, 428
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN)
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	add.d	$a2, $a2, $s1
	ld.bu	$s0, $a2, 2
	ld.bu	$a6, $a2, 3
	addi.w	$s8, $s8, 1
	add.d	$a5, $ra, $s0
	slli.d	$a2, $a5, 5
	add.d	$a2, $s5, $a2
	add.w	$a3, $t8, $a6
	slli.d	$a4, $a3, 2
	ldx.w	$fp, $a2, $a4
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a2, $s0, $a2, 4
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	slli.d	$a6, $a6, 2
	ldx.w	$s1, $a2, $a6
	srai.d	$a2, $fp, 31
	xor	$a4, $fp, $a2
	sub.d	$a2, $a4, $a2
	mul.d	$a2, $a2, $s1
	add.w	$a2, $a2, $t0
	and	$a2, $a2, $t1
	st.d	$s1, $sp, 344                   # 8-byte Folded Spill
	div.w	$a2, $a2, $s1
	slli.d	$a3, $a3, 6
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a3
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a1, $a5, $a1, 2
	ldx.w	$a1, $a1, $s4
	slti	$a3, $fp, 0
	srai.d	$a4, $a2, 31
	xor	$a2, $a2, $a4
	sub.d	$a2, $a2, $a4
	sub.d	$a4, $zero, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	add.w	$s6, $a2, $a1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $s0, $a2, 4
	move	$s7, $a6
	ldx.w	$a2, $a2, $a6
	srai.d	$a3, $s6, 31
	xor	$a4, $s6, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $a2
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a6
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	sra.w	$s3, $a3, $a5
	sub.w	$s1, $a1, $fp
	srai.d	$a3, $s1, 31
	xor	$a4, $s1, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a2, $a3, $a2
	add.d	$a2, $a2, $a6
	sra.w	$s2, $a2, $a5
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a2, 4
	pcalau12i	$a2, %pc_hi20(A)
	addi.d	$a6, $a2, %pc_lo12(A)
	beqz	$s2, .LBB6_42
# %bb.39:                               #   in Loop: Header=BB6_38 Depth=3
	beq	$s3, $s2, .LBB6_42
# %bb.40:                               #   in Loop: Header=BB6_38 Depth=3
	beqz	$s3, .LBB6_42
# %bb.41:                               # %.thread614
                                        #   in Loop: Header=BB6_38 Depth=3
	slti	$a0, $s6, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.w	$a7, $a3, $a2
	st.d	$a7, $sp, 240                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a7
	ldx.w	$a3, $a5, $s7
	alsl.d	$a4, $s0, $a6, 4
	ldx.w	$a4, $a4, $s7
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a7, $a0
	or	$a0, $a2, $a0
	mul.d	$s5, $a4, $a3
	mul.d	$a0, $s5, $a0
	sll.w	$a0, $a0, $t3
	srli.d	$a0, $a0, 6
	add.d	$a0, $fp, $a0
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 380
	addi.d	$a3, $sp, 376
	move	$a0, $s3
	move	$a1, $s8
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	st.d	$a6, $sp, 248                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 380
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	ldx.w	$a0, $a0, $s4
	slti	$a1, $s1, 0
	srai.d	$a2, $s2, 31
	xor	$a3, $s2, $a2
	sub.w	$s4, $a3, $a2
	sub.d	$a2, $zero, $s4
	masknez	$a3, $s4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	mul.d	$a1, $s5, $a1
	addi.d	$s5, $sp, 400
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 6
	add.d	$a1, $a1, $fp
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 380
	addi.d	$a3, $sp, 376
	move	$a0, $s2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 380
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s4
	ori	$t4, $zero, 30
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	fcmp.clt.d	$fcc1, $fs1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc1
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a2
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s2, $a0, $a1
	xor	$a0, $s2, $s3
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s1, $a0, $a1
	b	.LBB6_46
	.p2align	4, , 16
.LBB6_42:                               #   in Loop: Header=BB6_38 Depth=3
	bne	$s3, $s2, .LBB6_44
# %bb.43:                               #   in Loop: Header=BB6_38 Depth=3
	move	$s2, $s3
	move	$s1, $s6
	b	.LBB6_45
	.p2align	4, , 16
.LBB6_44:                               #   in Loop: Header=BB6_38 Depth=3
	beqz	$s3, .LBB6_47
.LBB6_45:                               #   in Loop: Header=BB6_38 Depth=3
	beqz	$s2, .LBB6_47
.LBB6_46:                               #   in Loop: Header=BB6_38 Depth=3
	ld.d	$a0, $t2, 368
	slti	$a1, $s1, 0
	srai.d	$a2, $s2, 31
	xor	$a3, $s2, $a2
	sub.d	$a2, $a3, $a2
	sub.d	$a3, $zero, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	or	$a0, $a0, $a3
	or	$a1, $a1, $a2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	slli.d	$a2, $a4, 2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	stx.w	$a1, $a3, $a2
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	stx.w	$s8, $a3, $a2
	ldx.w	$a2, $a5, $s7
	alsl.d	$a3, $s0, $a6, 4
	ldx.w	$a3, $a3, $s7
	st.d	$a0, $t2, 368
	addi.w	$a4, $a4, 1
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	mul.d	$a0, $a2, $a1
	mul.d	$a0, $a0, $a3
	sll.w	$a0, $a0, $t3
	srai.d	$a1, $a0, 6
	addi.d	$s8, $zero, -1
	ori	$a0, $zero, 2
	b	.LBB6_48
	.p2align	4, , 16
.LBB6_47:                               #   in Loop: Header=BB6_38 Depth=3
	move	$a1, $zero
.LBB6_48:                               # %.thread610
                                        #   in Loop: Header=BB6_38 Depth=3
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.w	$a2, $t6, %pc_lo12(si_frame_indicator)
	ld.w	$a3, $t7, %pc_lo12(sp2_frame_indicator)
	or	$a3, $a2, $a3
	add.w	$a2, $a1, $fp
	bnez	$a3, .LBB6_36
# %bb.49:                               #   in Loop: Header=BB6_38 Depth=3
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	or	$a3, $fp, $s0
	andi	$a3, $a3, 3
	beqz	$a3, .LBB6_37
# %bb.50:                               #   in Loop: Header=BB6_38 Depth=3
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $s2
	add.d	$a3, $a3, $t0
	sra.w	$a3, $a3, $a7
	slti	$a4, $a2, 0
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	sub.d	$a5, $zero, $a3
	masknez	$a3, $a3, $a4
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(lrec_uv)
	maskeqz	$a4, $a5, $a4
	ld.w	$a5, $a1, 188
	or	$a3, $a4, $a3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a4, $a6, $a4
	add.d	$a6, $ra, $fp
	add.w	$a5, $a6, $a5
	ld.w	$a6, $a1, 184
	slli.d	$a5, $a5, 3
	ldx.d	$a4, $a4, $a5
	add.d	$a5, $t8, $s0
	add.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	stx.w	$a3, $a4, $a5
	b	.LBB6_37
.LBB6_51:                               # %.preheader659
	move	$a6, $zero
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	ori	$a5, $zero, 1
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB6_52:                               # %.preheader658
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_53 Depth 2
                                        #       Child Loop BB6_54 Depth 3
	move	$t4, $zero
	slli.d	$t2, $a6, 6
	add.d	$a6, $a2, $t2
	addi.d	$a7, $a6, 64
	addi.d	$t0, $a6, 128
	addi.d	$t1, $a6, 192
	add.d	$t2, $a3, $t2
	ori	$t3, $zero, 1
	.p2align	4, , 16
.LBB6_53:                               # %.preheader657
                                        #   Parent Loop BB6_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_54 Depth 3
	alsl.d	$t7, $t4, $a6, 2
	slli.d	$t5, $t4, 2
	ldx.w	$t8, $a6, $t5
	ld.w	$fp, $t7, 8
	move	$t6, $zero
	ld.w	$s0, $t7, 4
	ld.w	$s1, $t7, 12
	add.d	$s2, $fp, $t8
	sub.d	$t8, $t8, $fp
	srli.d	$fp, $s0, 1
	sub.d	$fp, $fp, $s1
	srli.d	$s1, $s1, 1
	add.d	$s0, $s1, $s0
	add.d	$s1, $s0, $s2
	stx.w	$s1, $a6, $t5
	sub.d	$s0, $s2, $s0
	st.w	$s0, $t7, 12
	add.d	$s0, $fp, $t8
	st.w	$s0, $t7, 4
	sub.d	$t8, $t8, $fp
	alsl.d	$fp, $t4, $a7, 2
	ldx.w	$s0, $a7, $t5
	ld.w	$s1, $fp, 8
	st.w	$t8, $t7, 8
	ld.w	$t7, $fp, 4
	ld.w	$t8, $fp, 12
	add.d	$s2, $s1, $s0
	sub.d	$s0, $s0, $s1
	srli.d	$s1, $t7, 1
	sub.d	$s1, $s1, $t8
	srli.d	$t8, $t8, 1
	add.d	$t7, $t8, $t7
	add.d	$t8, $t7, $s2
	stx.w	$t8, $a7, $t5
	sub.d	$t7, $s2, $t7
	st.w	$t7, $fp, 12
	add.d	$t7, $s1, $s0
	st.w	$t7, $fp, 4
	sub.d	$t7, $s0, $s1
	alsl.d	$t8, $t4, $t0, 2
	ldx.w	$s0, $t0, $t5
	ld.w	$s1, $t8, 8
	st.w	$t7, $fp, 8
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 12
	add.d	$s2, $s1, $s0
	sub.d	$s0, $s0, $s1
	srli.d	$s1, $t7, 1
	sub.d	$s1, $s1, $fp
	srli.d	$fp, $fp, 1
	add.d	$t7, $fp, $t7
	add.d	$fp, $t7, $s2
	stx.w	$fp, $t0, $t5
	sub.d	$t7, $s2, $t7
	st.w	$t7, $t8, 12
	add.d	$t7, $s1, $s0
	st.w	$t7, $t8, 4
	sub.d	$t7, $s0, $s1
	alsl.d	$fp, $t4, $t1, 2
	ldx.w	$s0, $t1, $t5
	ld.w	$s1, $fp, 8
	ld.w	$s2, $fp, 12
	ld.w	$s3, $fp, 4
	st.w	$t7, $t8, 8
	add.d	$t7, $s1, $s0
	srli.d	$t8, $s2, 1
	add.d	$t8, $t8, $s3
	add.d	$s4, $t8, $t7
	stx.w	$s4, $t1, $t5
	sub.d	$t5, $s0, $s1
	srli.d	$s0, $s3, 1
	sub.d	$s0, $s0, $s2
	sub.d	$t7, $t7, $t8
	st.w	$t7, $fp, 12
	add.d	$t7, $s0, $t5
	st.w	$t7, $fp, 4
	sub.d	$t5, $t5, $s0
	st.w	$t5, $fp, 8
	alsl.d	$t4, $t4, $t2, 2
	.p2align	4, , 16
.LBB6_54:                               # %.preheader654
                                        #   Parent Loop BB6_52 Depth=1
                                        #     Parent Loop BB6_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $t4, $t6
	ld.w	$t7, $t5, -192
	ld.w	$t8, $t5, -64
	ld.w	$fp, $t5, -128
	ldx.w	$s0, $t4, $t6
	add.d	$s1, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $fp, 1
	sub.d	$t8, $t8, $s0
	srli.d	$s0, $s0, 1
	add.d	$fp, $s0, $fp
	ldptr.w	$s0, $a1, 15524
	addi.d	$s1, $s1, 32
	add.w	$s2, $s1, $fp
	srai.d	$s3, $s2, 6
	srai.d	$s2, $s2, 63
	andn	$s2, $s3, $s2
	slt	$s3, $s2, $s0
	maskeqz	$s2, $s2, $s3
	masknez	$s0, $s0, $s3
	or	$s0, $s2, $s0
	st.w	$s0, $t5, -192
	ldptr.w	$s0, $a1, 15524
	sub.w	$fp, $s1, $fp
	srai.d	$s1, $fp, 6
	srai.d	$fp, $fp, 63
	andn	$fp, $s1, $fp
	slt	$s1, $fp, $s0
	maskeqz	$fp, $fp, $s1
	masknez	$s0, $s0, $s1
	or	$fp, $fp, $s0
	stx.w	$fp, $t4, $t6
	ldptr.w	$fp, $a1, 15524
	addi.d	$t7, $t7, 32
	add.w	$s0, $t7, $t8
	srai.d	$s1, $s0, 6
	srai.d	$s0, $s0, 63
	andn	$s0, $s1, $s0
	slt	$s1, $s0, $fp
	maskeqz	$s0, $s0, $s1
	masknez	$fp, $fp, $s1
	or	$fp, $s0, $fp
	st.w	$fp, $t5, -128
	ldptr.w	$fp, $a1, 15524
	sub.w	$t7, $t7, $t8
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $fp
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $fp, $t8
	or	$t7, $t7, $t8
	addi.d	$t6, $t6, 4
	st.w	$t7, $t5, -64
	bne	$t6, $a4, .LBB6_54
# %bb.55:                               #   in Loop: Header=BB6_53 Depth=2
	andi	$t5, $t3, 1
	ori	$t4, $zero, 4
	move	$t3, $zero
	bnez	$t5, .LBB6_53
# %bb.56:                               #   in Loop: Header=BB6_52 Depth=1
	andi	$a7, $a5, 1
	ori	$a6, $zero, 4
	move	$a5, $zero
	bnez	$a7, .LBB6_52
# %bb.57:                               # %.preheader
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ldptr.d	$a2, $a2, 6472
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	ld.w	$a4, $a1, 188
	ld.w	$a5, $a1, 184
	alsl.d	$a3, $a4, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a2, $a4
	slli.d	$a2, $a5, 1
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	vldx	$vr0, $a1, $a5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	vldx	$vr1, $a1, $a5
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	vldx	$vr2, $a1, $a5
	lu12i.w	$a6, 3
	ori	$a5, $a6, 928
	vldx	$vr3, $a1, $a5
	ld.d	$a5, $a3, 8
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a4, $a2
	vpickev.h	$vr0, $vr3, $vr2
	vstx	$vr0, $a5, $a2
	ld.d	$a4, $a3, 16
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	vldx	$vr0, $a1, $a5
	ori	$a5, $a6, 992
	vldx	$vr1, $a1, $a5
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	vldx	$vr2, $a1, $a5
	ori	$a5, $a6, 1056
	vldx	$vr3, $a1, $a5
	ld.d	$a5, $a3, 24
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a4, $a2
	vpickev.h	$vr0, $vr3, $vr2
	vstx	$vr0, $a5, $a2
	ld.d	$a4, $a3, 32
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	vldx	$vr0, $a1, $a5
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	vldx	$vr1, $a1, $a5
	ori	$a5, $a6, 1168
	vldx	$vr2, $a1, $a5
	ori	$a5, $a6, 1184
	vldx	$vr3, $a1, $a5
	ld.d	$a5, $a3, 40
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a4, $a2
	vpickev.h	$vr0, $vr3, $vr2
	vstx	$vr0, $a5, $a2
	ld.d	$a4, $a3, 48
	ori	$a5, $a6, 1232
	vldx	$vr0, $a1, $a5
	ori	$a5, $a6, 1248
	vldx	$vr1, $a1, $a5
	ori	$a5, $a6, 1296
	vldx	$vr2, $a1, $a5
	ori	$a5, $a6, 1312
	vldx	$vr3, $a1, $a5
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a4, $a2
	ld.d	$a1, $a3, 56
	vpickev.h	$vr0, $vr3, $vr2
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 2
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	vstx	$vr0, $a1, $a2
	fld.d	$fs2, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 688                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.Lfunc_end6:
	.size	dct_chroma_sp, .Lfunc_end6-dct_chroma_sp
                                        # -- End function
	.globl	copyblock_sp                    # -- Begin function copyblock_sp
	.p2align	5
	.type	copyblock_sp,@function
copyblock_sp:                           # @copyblock_sp
# %bb.0:                                # %.preheader149
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 12
	ldptr.d	$a4, $a2, 14224
	ori	$a5, $zero, 536
	mul.d	$a3, $a3, $a5
	add.d	$a3, $a4, $a3
	ld.w	$a4, $a3, 20
	slli.d	$a3, $a1, 5
	add.d	$a5, $a2, $a3
	lu12i.w	$a3, 3
	ori	$a6, $a3, 336
	add.d	$a6, $a5, $a6
	slli.d	$a7, $a0, 1
	ldx.hu	$t0, $a6, $a7
	addi.d	$t1, $a7, 2
	ldx.hu	$t2, $a6, $t1
	addi.d	$t3, $a7, 4
	ldx.hu	$t4, $a6, $t3
	addi.d	$t5, $a7, 6
	ldx.hu	$a6, $a6, $t5
	ori	$t6, $a3, 368
	add.d	$t6, $a5, $t6
	ldx.hu	$t7, $t6, $a7
	ldx.hu	$t8, $t6, $t1
	ldx.hu	$fp, $t6, $t3
	ldx.hu	$t6, $t6, $t5
	ori	$s0, $a3, 400
	add.d	$s0, $a5, $s0
	ldx.hu	$s1, $s0, $a7
	ldx.hu	$s2, $s0, $t1
	ldx.hu	$s3, $s0, $t3
	ldx.hu	$s0, $s0, $t5
	ori	$s4, $a3, 432
	add.d	$a5, $a5, $s4
	ldx.hu	$s4, $a5, $a7
	ldx.hu	$t1, $a5, $t1
	ldx.hu	$t3, $a5, $t3
	ldx.hu	$t5, $a5, $t5
	add.d	$a5, $a6, $t0
	sub.d	$a6, $t0, $a6
	add.d	$a7, $t4, $t2
	sub.d	$t0, $t2, $t4
	add.d	$t2, $a7, $a5
	sub.d	$a7, $a5, $a7
	alsl.d	$t4, $a6, $t0, 1
	slli.d	$a5, $t0, 1
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t6, $t7
	sub.d	$t0, $t7, $t6
	add.d	$t6, $fp, $t8
	sub.d	$t7, $t8, $fp
	add.d	$t8, $t6, $a6
	sub.d	$t6, $a6, $t6
	alsl.d	$fp, $t0, $t7, 1
	slli.d	$a6, $t7, 1
	sub.d	$a6, $t0, $a6
	add.d	$t0, $s0, $s1
	sub.d	$t7, $s1, $s0
	add.d	$s0, $s3, $s2
	sub.d	$s1, $s2, $s3
	add.d	$s2, $s0, $t0
	sub.d	$t0, $t0, $s0
	alsl.d	$s0, $t7, $s1, 1
	slli.d	$s1, $s1, 1
	sub.d	$t7, $t7, $s1
	add.d	$s1, $t5, $s4
	sub.d	$t5, $s4, $t5
	add.d	$s3, $t3, $t1
	sub.d	$t1, $t1, $t3
	add.d	$t3, $s3, $s1
	sub.d	$s1, $s1, $s3
	alsl.d	$s3, $t5, $t1, 1
	slli.d	$t1, $t1, 1
	sub.d	$t1, $t5, $t1
	add.d	$t5, $t3, $t2
	sub.d	$t2, $t2, $t3
	add.d	$t3, $s2, $t8
	sub.d	$t8, $t8, $s2
	add.d	$s2, $t3, $t5
	st.w	$s2, $sp, 8
	sub.d	$t3, $t5, $t3
	st.w	$t3, $sp, 16
	alsl.d	$t3, $t2, $t8, 1
	st.w	$t3, $sp, 12
	slli.d	$t3, $t8, 1
	sub.d	$t2, $t2, $t3
	st.w	$t2, $sp, 20
	add.d	$t2, $s3, $t4
	sub.d	$t3, $t4, $s3
	add.d	$t4, $s0, $fp
	sub.d	$t5, $fp, $s0
	add.d	$t8, $t4, $t2
	st.w	$t8, $sp, 24
	sub.d	$t2, $t2, $t4
	st.w	$t2, $sp, 32
	alsl.d	$t2, $t3, $t5, 1
	st.w	$t2, $sp, 28
	slli.d	$t2, $t5, 1
	sub.d	$t2, $t3, $t2
	st.w	$t2, $sp, 36
	add.d	$t2, $s1, $a7
	sub.d	$a7, $a7, $s1
	add.d	$t3, $t0, $t6
	sub.d	$t0, $t6, $t0
	add.d	$t4, $t3, $t2
	st.w	$t4, $sp, 40
	sub.d	$t2, $t2, $t3
	st.w	$t2, $sp, 48
	alsl.d	$t2, $a7, $t0, 1
	st.w	$t2, $sp, 44
	slli.d	$t0, $t0, 1
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 52
	add.d	$a7, $t1, $a5
	sub.d	$a5, $a5, $t1
	add.d	$t0, $t7, $a6
	sub.d	$a6, $a6, $t7
	add.d	$t1, $t0, $a7
	st.w	$t1, $sp, 56
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 64
	alsl.d	$a7, $a5, $a6, 1
	st.w	$a7, $sp, 60
	slli.d	$a6, $a6, 1
	sub.d	$a5, $a5, $a6
	st.w	$a5, $sp, 68
	lu12i.w	$a5, 174762
	ori	$a5, $a5, 2731
	mul.d	$a5, $a4, $a5
	srli.d	$a6, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a6
	slli.d	$a6, $a5, 2
	alsl.d	$a6, $a5, $a6, 1
	sub.w	$t4, $a4, $a6
	addi.d	$a6, $a5, 15
	ori	$a4, $zero, 1
	sll.w	$a4, $a4, $a6
	bstrpick.d	$a7, $a4, 31, 31
	add.w	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	addi.d	$t0, $a0, 1
	addi.d	$t1, $a0, 2
	addi.d	$t2, $a0, 3
	ori	$a4, $a3, 860
	add.d	$t3, $a2, $a4
	slli.d	$t6, $t4, 6
	pcalau12i	$t4, %pc_hi20(dequant_coef)
	addi.d	$t4, $t4, %pc_lo12(dequant_coef)
	add.d	$t4, $t6, $t4
	addi.d	$t4, $t4, 48
	pcalau12i	$t5, %pc_hi20(quant_coef)
	addi.d	$t7, $t5, %pc_lo12(quant_coef)
	move	$t5, $zero
	add.d	$t6, $t6, $t7
	addi.d	$t6, $t6, 16
	addi.d	$t7, $sp, 8
	ori	$t8, $zero, 16
	move	$fp, $a1
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                #   in Loop: Header=BB7_2 Depth=1
	addi.d	$t5, $t5, 4
	addi.d	$fp, $fp, 1
	addi.d	$t3, $t3, 64
	beq	$t5, $t8, .LBB7_10
.LBB7_2:                                # %.preheader143
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s1, $t6, $t5
	add.d	$s4, $t4, $t5
	ldx.w	$s2, $t5, $t7
	pcalau12i	$s0, %pc_hi20(lrec)
	ld.d	$s0, $s0, %pc_lo12(lrec)
	ld.w	$s3, $s1, -16
	srai.d	$s5, $s2, 31
	xor	$s6, $s2, $s5
	sub.d	$s5, $s6, $s5
	mul.d	$s3, $s5, $s3
	add.d	$s3, $s3, $a7
	sra.w	$s3, $s3, $a6
	slti	$s2, $s2, 0
	srai.d	$s5, $s3, 31
	xor	$s3, $s3, $s5
	sub.d	$s3, $s3, $s5
	sub.d	$s5, $zero, $s3
	ld.w	$s6, $s4, -48
	masknez	$s3, $s3, $s2
	maskeqz	$s2, $s5, $s2
	or	$s5, $s2, $s3
	mul.d	$s2, $s5, $s6
	sll.w	$s2, $s2, $a5
	st.w	$s2, $t3, -12
	pcalau12i	$s2, %pc_hi20(si_frame_indicator)
	ld.w	$s6, $s2, %pc_lo12(si_frame_indicator)
	pcalau12i	$s3, %pc_hi20(sp2_frame_indicator)
	ld.w	$s7, $s3, %pc_lo12(sp2_frame_indicator)
	or	$s6, $s6, $s7
	bnez	$s6, .LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s6, $a2, 180
	add.w	$s6, $fp, $s6
	ld.w	$s7, $a2, 176
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $s0, $s6
	add.w	$s7, $a0, $s7
	slli.d	$s7, $s7, 2
	stx.w	$s5, $s6, $s7
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	add.d	$s5, $t7, $t5
	ld.w	$s6, $s5, 16
	ldx.w	$s7, $t6, $t5
	srai.d	$s8, $s6, 31
	xor	$ra, $s6, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$s7, $s8, $s7
	add.d	$s7, $s7, $a7
	sra.w	$s7, $s7, $a6
	slti	$s6, $s6, 0
	srai.d	$s8, $s7, 31
	xor	$s7, $s7, $s8
	sub.d	$s7, $s7, $s8
	sub.d	$s8, $zero, $s7
	ld.w	$ra, $s4, -32
	masknez	$s7, $s7, $s6
	maskeqz	$s6, $s8, $s6
	or	$s6, $s6, $s7
	mul.d	$s7, $s6, $ra
	sll.w	$s7, $s7, $a5
	st.w	$s7, $t3, -8
	ld.w	$s7, $s2, %pc_lo12(si_frame_indicator)
	ld.w	$s8, $s3, %pc_lo12(sp2_frame_indicator)
	or	$s7, $s7, $s8
	bnez	$s7, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s7, $a2, 180
	add.w	$s7, $fp, $s7
	ld.w	$s8, $a2, 176
	slli.d	$s7, $s7, 3
	ldx.d	$s7, $s0, $s7
	add.w	$s8, $t0, $s8
	slli.d	$s8, $s8, 2
	stx.w	$s6, $s7, $s8
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s6, $s5, 32
	ld.w	$s7, $s1, 16
	srai.d	$s8, $s6, 31
	xor	$ra, $s6, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$s7, $s8, $s7
	add.d	$s7, $s7, $a7
	sra.w	$s7, $s7, $a6
	slti	$s6, $s6, 0
	srai.d	$s8, $s7, 31
	xor	$s7, $s7, $s8
	sub.d	$s7, $s7, $s8
	sub.d	$s8, $zero, $s7
	ld.w	$ra, $s4, -16
	masknez	$s4, $s7, $s6
	maskeqz	$s6, $s8, $s6
	or	$s4, $s6, $s4
	mul.d	$s6, $s4, $ra
	sll.w	$s6, $s6, $a5
	st.w	$s6, $t3, -4
	ld.w	$s6, $s2, %pc_lo12(si_frame_indicator)
	ld.w	$s7, $s3, %pc_lo12(sp2_frame_indicator)
	or	$s6, $s6, $s7
	bnez	$s6, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s6, $a2, 180
	add.w	$s6, $fp, $s6
	ld.w	$s7, $a2, 176
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $s0, $s6
	add.w	$s7, $t1, $s7
	slli.d	$s7, $s7, 2
	stx.w	$s4, $s6, $s7
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s4, $s5, 48
	ld.w	$s1, $s1, 32
	srai.d	$s5, $s4, 31
	xor	$s6, $s4, $s5
	sub.d	$s5, $s6, $s5
	mul.d	$s1, $s5, $s1
	add.d	$s1, $s1, $a7
	sra.w	$s1, $s1, $a6
	slti	$s4, $s4, 0
	srai.d	$s5, $s1, 31
	xor	$s1, $s1, $s5
	sub.d	$s1, $s1, $s5
	sub.d	$s5, $zero, $s1
	ldx.w	$s6, $t4, $t5
	masknez	$s1, $s1, $s4
	maskeqz	$s4, $s5, $s4
	or	$s1, $s4, $s1
	mul.d	$s4, $s1, $s6
	sll.w	$s4, $s4, $a5
	st.w	$s4, $t3, 0
	ld.w	$s2, $s2, %pc_lo12(si_frame_indicator)
	ld.w	$s3, $s3, %pc_lo12(sp2_frame_indicator)
	or	$s2, $s2, $s3
	bnez	$s2, .LBB7_1
# %bb.9:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s2, $a2, 180
	add.w	$s2, $fp, $s2
	ld.w	$s3, $a2, 176
	slli.d	$s2, $s2, 3
	ldx.d	$s0, $s0, $s2
	add.w	$s2, $t2, $s3
	slli.d	$s2, $s2, 2
	stx.w	$s1, $s0, $s2
	b	.LBB7_1
.LBB7_10:                               # %.preheader142
	ori	$a7, $a3, 848
	ldx.w	$a6, $a2, $a7
	ori	$a5, $a3, 856
	ldx.w	$t0, $a2, $a5
	ldptr.w	$t1, $a2, 13140
	ldptr.w	$t2, $a2, 13148
	add.d	$t3, $t0, $a6
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $t1, 1
	sub.d	$t0, $t0, $t2
	srli.d	$t2, $t2, 1
	add.d	$t1, $t2, $t1
	add.d	$t2, $t1, $t3
	stptr.w	$t2, $a2, 13136
	sub.d	$t1, $t3, $t1
	stptr.w	$t1, $a2, 13148
	add.d	$t1, $t0, $a6
	stptr.w	$t1, $a2, 13140
	sub.d	$t1, $a6, $t0
	ori	$t0, $a3, 912
	ldx.w	$t2, $a2, $t0
	ori	$a6, $a3, 920
	ldx.w	$t3, $a2, $a6
	stptr.w	$t1, $a2, 13144
	ldptr.w	$t1, $a2, 13204
	ldptr.w	$t4, $a2, 13212
	add.d	$t5, $t3, $t2
	sub.d	$t2, $t2, $t3
	srli.d	$t3, $t1, 1
	sub.d	$t3, $t3, $t4
	srli.d	$t4, $t4, 1
	add.d	$t1, $t4, $t1
	add.d	$t4, $t1, $t5
	stptr.w	$t4, $a2, 13200
	sub.d	$t1, $t5, $t1
	stptr.w	$t1, $a2, 13212
	add.d	$t1, $t3, $t2
	stptr.w	$t1, $a2, 13204
	sub.d	$t3, $t2, $t3
	ori	$t2, $a3, 976
	ldx.w	$t4, $a2, $t2
	ori	$t1, $a3, 984
	ldx.w	$t5, $a2, $t1
	stptr.w	$t3, $a2, 13208
	ldptr.w	$t3, $a2, 13268
	ldptr.w	$t6, $a2, 13276
	add.d	$t7, $t5, $t4
	sub.d	$t4, $t4, $t5
	srli.d	$t5, $t3, 1
	sub.d	$t5, $t5, $t6
	srli.d	$t6, $t6, 1
	add.d	$t3, $t6, $t3
	add.d	$t6, $t3, $t7
	stptr.w	$t6, $a2, 13264
	sub.d	$t3, $t7, $t3
	stptr.w	$t3, $a2, 13276
	add.d	$t3, $t5, $t4
	stptr.w	$t3, $a2, 13268
	sub.d	$t5, $t4, $t5
	ori	$t4, $a3, 1040
	ldx.w	$t6, $a2, $t4
	ori	$t3, $a3, 1048
	ldx.w	$t7, $a2, $t3
	stptr.w	$t5, $a2, 13272
	ldptr.w	$t5, $a2, 13332
	ldptr.w	$t8, $a2, 13340
	add.d	$fp, $t7, $t6
	sub.d	$t6, $t6, $t7
	srli.d	$t7, $t5, 1
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $t8, 1
	add.d	$t5, $t8, $t5
	add.d	$t8, $t5, $fp
	stptr.w	$t8, $a2, 13328
	sub.d	$t5, $fp, $t5
	stptr.w	$t5, $a2, 13340
	add.d	$t5, $t7, $t6
	stptr.w	$t5, $a2, 13332
	sub.d	$t5, $t6, $t7
	stptr.w	$t5, $a2, 13336
	addi.w	$t5, $zero, -16
	.p2align	4, , 16
.LBB7_11:                               # %.preheader139
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t6, $a2, $t5
	ori	$t7, $a3, 864
	ldx.w	$t7, $t6, $t7
	ori	$t8, $a3, 992
	ldx.w	$t8, $t6, $t8
	ldptr.w	$fp, $t6, 13216
	ldptr.w	$s0, $t6, 13344
	add.d	$s1, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $fp, 1
	sub.d	$t8, $t8, $s0
	srli.d	$s0, $s0, 1
	add.d	$fp, $s0, $fp
	ldptr.w	$s0, $a2, 15520
	addi.d	$s1, $s1, 32
	add.w	$s2, $s1, $fp
	srai.d	$s3, $s2, 6
	srai.d	$s2, $s2, 63
	andn	$s2, $s3, $s2
	slt	$s3, $s2, $s0
	maskeqz	$s2, $s2, $s3
	masknez	$s0, $s0, $s3
	or	$s0, $s2, $s0
	stptr.w	$s0, $t6, 13152
	ldptr.w	$s0, $a2, 15520
	sub.w	$fp, $s1, $fp
	srai.d	$s1, $fp, 6
	srai.d	$fp, $fp, 63
	andn	$fp, $s1, $fp
	slt	$s1, $fp, $s0
	maskeqz	$fp, $fp, $s1
	masknez	$s0, $s0, $s1
	or	$fp, $fp, $s0
	stptr.w	$fp, $t6, 13344
	ldptr.w	$fp, $a2, 15520
	addi.d	$t7, $t7, 32
	add.w	$s0, $t7, $t8
	srai.d	$s1, $s0, 6
	srai.d	$s0, $s0, 63
	andn	$s0, $s1, $s0
	slt	$s1, $s0, $fp
	maskeqz	$s0, $s0, $s1
	masknez	$fp, $fp, $s1
	or	$fp, $s0, $fp
	stptr.w	$fp, $t6, 13216
	ldptr.w	$fp, $a2, 15520
	sub.w	$t7, $t7, $t8
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $fp
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $fp, $t8
	or	$t7, $t7, $t8
	addi.d	$t5, $t5, 4
	stptr.w	$t7, $t6, 13280
	bnez	$t5, .LBB7_11
# %bb.12:                               # %.preheader138
	pcalau12i	$t5, %got_pc_hi20(enc_picture)
	ld.d	$t5, $t5, %got_pc_lo12(enc_picture)
	ld.d	$t5, $t5, 0
	ld.w	$t6, $a2, 180
	ld.w	$t7, $a2, 176
	ldptr.d	$t5, $t5, 6440
	add.w	$a1, $a1, $t6
	add.w	$t6, $a0, $t7
	slli.d	$a0, $a1, 3
	ldx.d	$t7, $t5, $a0
	ldx.h	$a7, $a2, $a7
	slli.d	$a0, $t6, 1
	ori	$t8, $a3, 852
	ldx.h	$t8, $a2, $t8
	stx.h	$a7, $t7, $a0
	addi.w	$a7, $t6, 1
	slli.d	$a7, $a7, 1
	stx.h	$t8, $t7, $a7
	ldx.h	$a5, $a2, $a5
	addi.w	$t8, $t6, 2
	slli.d	$t8, $t8, 1
	ldx.h	$a4, $a2, $a4
	stx.h	$a5, $t7, $t8
	addi.w	$a5, $t6, 3
	slli.d	$a5, $a5, 1
	stx.h	$a4, $t7, $a5
	addi.w	$a4, $a1, 1
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $t5, $a4
	ldx.h	$t0, $a2, $t0
	ori	$t6, $a3, 916
	ldx.h	$t6, $a2, $t6
	ldx.h	$a6, $a2, $a6
	ori	$t7, $a3, 924
	ldx.h	$t7, $a2, $t7
	stx.h	$t0, $a4, $a0
	stx.h	$t6, $a4, $a7
	stx.h	$a6, $a4, $t8
	stx.h	$t7, $a4, $a5
	addi.w	$a4, $a1, 2
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $t5, $a4
	ldx.h	$a6, $a2, $t2
	ori	$t0, $a3, 980
	ldx.h	$t0, $a2, $t0
	ldx.h	$t1, $a2, $t1
	ori	$t2, $a3, 988
	ldx.h	$t2, $a2, $t2
	stx.h	$a6, $a4, $a0
	stx.h	$t0, $a4, $a7
	stx.h	$t1, $a4, $t8
	stx.h	$t2, $a4, $a5
	addi.w	$a1, $a1, 3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $t5, $a1
	ldx.h	$a4, $a2, $t4
	ori	$a6, $a3, 1044
	ldx.h	$a6, $a2, $a6
	ldx.h	$t0, $a2, $t3
	ori	$a3, $a3, 1052
	ldx.h	$a2, $a2, $a3
	stx.h	$a4, $a1, $a0
	stx.h	$a6, $a1, $a7
	stx.h	$t0, $a1, $t8
	stx.h	$a2, $a1, $a5
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end7:
	.size	copyblock_sp, .Lfunc_end7-copyblock_sp
                                        # -- End function
	.globl	writeIPCMBytes                  # -- Begin function writeIPCMBytes
	.p2align	5
	.type	writeIPCMBytes,@function
writeIPCMBytes:                         # @writeIPCMBytes
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	lu12i.w	$a0, 3
	ori	$s4, $a0, 3156
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s2, $a0, %got_pc_lo12(enc_picture)
	move	$s0, $zero
	move	$s5, $zero
	ori	$s6, $zero, 16
	.p2align	4, , 16
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2 Depth 2
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 180
	move	$s7, $zero
	add.w	$a0, $a0, $s5
	slli.d	$s8, $a0, 3
	ori	$s3, $zero, 16
	.p2align	4, , 16
.LBB8_2:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	ldptr.d	$a0, $a0, 6440
	ld.w	$a2, $a1, 176
	ldx.d	$a0, $a0, $s8
	ldx.w	$a1, $a1, $s4
	add.d	$a2, $s7, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a0, $a0, $a2
	st.w	$a1, $sp, 28
	add.w	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	addi.d	$s7, $s7, 1
	bnez	$s3, .LBB8_2
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	addi.w	$s5, $s5, 1
	bne	$s5, $s6, .LBB8_1
# %bb.4:                                # %.preheader26
	ld.d	$a0, $s1, 0
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB8_16
# %bb.5:                                # %.lr.ph35.preheader
	move	$s4, $zero
	lu12i.w	$a1, 3
	ori	$s3, $a1, 3160
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %._crit_edge
                                        #   in Loop: Header=BB8_7 Depth=1
	ldptr.w	$a1, $a0, 15548
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB8_10
.LBB8_7:                                # %.lr.ph35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
	ldptr.w	$a1, $a0, 15544
	blez	$a1, .LBB8_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB8_7 Depth=1
	ld.w	$a1, $a0, 188
	move	$s5, $zero
	move	$s6, $zero
	add.w	$a1, $a1, $s4
	slli.d	$s7, $a1, 3
	.p2align	4, , 16
.LBB8_9:                                #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	ldptr.d	$a1, $a1, 6472
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 184
	ldx.d	$a1, $a1, $s7
	ldx.w	$a0, $a0, $s3
	add.d	$a2, $s5, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a1, $a1, $a2
	st.w	$a0, $sp, 28
	add.w	$s0, $a0, $s0
	st.w	$a1, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s6, $s6, 1
	addi.d	$s5, $s5, 1
	blt	$s6, $a1, .LBB8_9
	b	.LBB8_6
.LBB8_10:                               # %._crit_edge36
	blez	$a1, .LBB8_16
# %bb.11:                               # %.lr.ph35.1.preheader
	move	$s4, $zero
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_12:                               # %._crit_edge.1
                                        #   in Loop: Header=BB8_13 Depth=1
	ldptr.w	$a1, $a0, 15548
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB8_16
.LBB8_13:                               # %.lr.ph35.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
	ldptr.w	$a1, $a0, 15544
	blez	$a1, .LBB8_12
# %bb.14:                               # %.lr.ph.1
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.w	$a1, $a0, 188
	move	$s5, $zero
	move	$s6, $zero
	add.w	$a1, $a1, $s4
	slli.d	$s7, $a1, 3
	.p2align	4, , 16
.LBB8_15:                               #   Parent Loop BB8_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	ldptr.d	$a1, $a1, 6472
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 184
	ldx.d	$a1, $a1, $s7
	ldx.w	$a0, $a0, $s3
	add.d	$a2, $s5, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a1, $a1, $a2
	st.w	$a0, $sp, 28
	add.w	$s0, $a0, $s0
	st.w	$a1, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s6, $s6, 1
	addi.d	$s5, $s5, 1
	blt	$s6, $a1, .LBB8_15
	b	.LBB8_12
.LBB8_16:                               # %._crit_edge36.1
	move	$a0, $s0
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
.Lfunc_end8:
	.size	writeIPCMBytes, .Lfunc_end8-writeIPCMBytes
                                        # -- End function
	.globl	writePCMByteAlign               # -- Begin function writePCMByteAlign
	.p2align	5
	.type	writePCMByteAlign,@function
writePCMByteAlign:                      # @writePCMByteAlign
# %bb.0:
	ld.w	$a2, $a0, 4
	ori	$a1, $zero, 7
	blt	$a1, $a2, .LBB9_2
# %bb.1:
	ld.b	$a3, $a0, 8
	ori	$a4, $zero, 8
	sub.w	$a1, $a4, $a2
	sll.w	$a3, $a3, $a2
	ori	$a5, $zero, 255
	srl.w	$a5, $a5, $a1
	or	$a3, $a3, $a5
	st.b	$a3, $a0, 8
	pcalau12i	$a5, %got_pc_hi20(stats)
	ld.d	$a5, $a5, %got_pc_lo12(stats)
	ld.d	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a6, $a6, 0
	ld.w	$a6, $a6, 20
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a6, $a5, 1960
	ld.w	$a7, $a0, 0
	add.d	$a2, $a6, $a2
	ld.d	$a6, $a0, 32
	st.d	$a2, $a5, 1960
	addi.d	$a2, $a7, 1
	st.w	$a2, $a0, 0
	stx.b	$a3, $a6, $a7
	st.w	$a4, $a0, 4
	move	$a0, $a1
	ret
.LBB9_2:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	writePCMByteAlign, .Lfunc_end9-writePCMByteAlign
                                        # -- End function
	.globl	dct_luma_sp2                    # -- Begin function dct_luma_sp2
	.p2align	5
	.type	dct_luma_sp2,@function
dct_luma_sp2:                           # @dct_luma_sp2
# %bb.0:                                # %.preheader188
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
	srli.d	$a3, $a0, 2
	srli.d	$a4, $a1, 2
	addi.w	$a5, $zero, -2
	lu52i.d	$a5, $a5, 511
	and	$a4, $a4, $a5
	srli.d	$a5, $a0, 3
	add.d	$a5, $a4, $a5
	bstrpick.d	$a4, $a1, 2, 2
	bstrins.d	$a3, $a4, 63, 1
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a4, $a4, 0
	ld.w	$t1, $a4, 180
	pcalau12i	$a6, %pc_hi20(lrec)
	ld.d	$a6, $a6, %pc_lo12(lrec)
	ld.w	$a7, $a4, 176
	add.w	$t0, $t1, $a1
	slli.d	$t4, $t0, 3
	ldx.d	$t0, $a6, $t4
	add.w	$a7, $a0, $a7
	slli.d	$t2, $a7, 2
	ldx.w	$t3, $t0, $t2
	ldptr.d	$t5, $a4, 14160
	slli.d	$a5, $a5, 3
	addi.w	$t6, $a7, 1
	stptr.w	$t3, $a4, 13136
	slli.d	$t3, $t6, 2
	ldx.w	$t0, $t0, $t3
	ldx.d	$a5, $t5, $a5
	ldx.d	$t5, $a6, $t4
	addi.w	$t6, $a7, 2
	stptr.w	$t0, $a4, 13140
	slli.d	$t0, $t6, 2
	ldx.w	$t5, $t5, $t0
	slli.d	$a3, $a3, 3
	ldx.d	$t4, $a6, $t4
	addi.w	$a7, $a7, 3
	stptr.w	$t5, $a4, 13144
	slli.d	$a7, $a7, 2
	ldx.w	$t4, $t4, $a7
	addi.d	$t8, $a1, 1
	add.w	$t5, $t1, $t8
	slli.d	$t5, $t5, 3
	ldx.d	$t6, $a6, $t5
	ldx.d	$a3, $a5, $a3
	lu12i.w	$s5, 3
	stptr.w	$t4, $a4, 13148
	ldx.w	$a5, $t6, $t2
	ldx.d	$t4, $a6, $t5
	ori	$t6, $s5, 336
	add.d	$t7, $a4, $t6
	stptr.w	$a5, $a4, 13200
	ldx.w	$a5, $t4, $t3
	ldx.d	$t4, $a6, $t5
	slli.d	$t6, $a1, 5
	add.d	$fp, $t7, $t6
	stptr.w	$a5, $a4, 13204
	ldx.w	$a5, $t4, $t0
	ldx.d	$t4, $a6, $t5
	alsl.d	$s0, $a0, $fp, 1
	slli.d	$t6, $a0, 1
	stptr.w	$a5, $a4, 13208
	ldx.w	$a5, $t4, $a7
	addi.d	$s1, $a1, 2
	add.w	$t4, $t1, $s1
	slli.d	$s2, $t4, 3
	ldx.d	$s3, $a6, $s2
	ldx.hu	$t5, $fp, $t6
	ld.hu	$t4, $s0, 2
	stptr.w	$a5, $a4, 13212
	ldx.w	$a5, $s3, $t2
	ldx.d	$fp, $a6, $s2
	st.w	$t5, $sp, 24
	st.w	$t4, $sp, 40
	stptr.w	$a5, $a4, 13264
	ldx.w	$a5, $fp, $t3
	ldx.d	$s3, $a6, $s2
	ld.hu	$fp, $s0, 4
	ld.hu	$s0, $s0, 6
	stptr.w	$a5, $a4, 13268
	ldx.w	$a5, $s3, $t0
	ldx.d	$s2, $a6, $s2
	st.w	$fp, $sp, 56
	st.w	$s0, $sp, 72
	stptr.w	$a5, $a4, 13272
	ldx.w	$a5, $s2, $a7
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s2, $a1, 3
	add.w	$t1, $t1, $s2
	slli.d	$s3, $t1, 3
	ldx.d	$t1, $a6, $s3
	slli.d	$t8, $t8, 5
	add.d	$t8, $t7, $t8
	stptr.w	$a5, $a4, 13276
	ldx.w	$a5, $t1, $t2
	alsl.d	$t2, $a0, $t8, 1
	ldx.d	$s4, $a6, $s3
	ldx.hu	$t1, $t8, $t6
	stptr.w	$a5, $a4, 13328
	ld.hu	$t8, $t2, 2
	ldx.w	$a5, $s4, $t3
	ld.hu	$t3, $t2, 4
	ld.hu	$s4, $t2, 6
	st.w	$t1, $sp, 28
	st.w	$t8, $sp, 44
	st.w	$t3, $sp, 60
	st.w	$s4, $sp, 76
	slli.d	$t2, $s1, 5
	add.d	$t2, $t7, $t2
	slli.d	$s1, $s2, 5
	add.d	$t7, $t7, $s1
	ldx.d	$s1, $a6, $s3
	stptr.w	$a5, $a4, 13332
	alsl.d	$a5, $a0, $t2, 1
	ldx.hu	$s2, $t2, $t6
	ldx.w	$t0, $s1, $t0
	ld.hu	$s1, $a5, 2
	ldx.d	$a6, $a6, $s3
	ld.hu	$s3, $a5, 4
	ld.hu	$a5, $a5, 6
	st.w	$s2, $sp, 32
	st.w	$s1, $sp, 48
	st.w	$s3, $sp, 64
	st.w	$a5, $sp, 80
	ldx.hu	$t6, $t7, $t6
	alsl.d	$t2, $a0, $t7, 1
	stptr.w	$t0, $a4, 13336
	ld.hu	$t0, $t2, 2
	ldx.w	$a6, $a6, $a7
	ld.hu	$a7, $t2, 4
	st.w	$t6, $sp, 36
	ld.hu	$t7, $t2, 6
	st.w	$t0, $sp, 52
	st.w	$a7, $sp, 68
	stptr.w	$a6, $a4, 13340
	st.w	$t7, $sp, 84
	add.d	$a6, $s0, $t5
	sub.d	$t2, $t5, $s0
	add.d	$t5, $fp, $t4
	sub.d	$t4, $t4, $fp
	add.d	$fp, $t5, $a6
	sub.d	$a6, $a6, $t5
	alsl.d	$t5, $t2, $t4, 1
	slli.d	$t4, $t4, 1
	sub.d	$t2, $t2, $t4
	add.d	$t4, $s4, $t1
	sub.d	$t1, $t1, $s4
	add.d	$s0, $t3, $t8
	sub.d	$t3, $t8, $t3
	add.d	$t8, $s0, $t4
	sub.d	$s0, $t4, $s0
	alsl.d	$s4, $t1, $t3, 1
	slli.d	$t3, $t3, 1
	sub.d	$t3, $t1, $t3
	add.d	$t1, $a5, $s2
	sub.d	$a5, $s2, $a5
	add.d	$t4, $s3, $s1
	sub.d	$s1, $s1, $s3
	add.d	$s2, $t4, $t1
	sub.d	$t1, $t1, $t4
	alsl.d	$s3, $a5, $s1, 1
	slli.d	$t4, $s1, 1
	sub.d	$t4, $a5, $t4
	add.d	$a5, $t7, $t6
	sub.d	$t6, $t6, $t7
	add.d	$t7, $a7, $t0
	sub.d	$a7, $t0, $a7
	add.d	$t0, $t7, $a5
	sub.d	$a5, $a5, $t7
	alsl.d	$t7, $t6, $a7, 1
	slli.d	$a7, $a7, 1
	sub.d	$t6, $t6, $a7
	add.d	$a7, $t0, $fp
	sub.d	$t0, $fp, $t0
	add.d	$fp, $s2, $t8
	sub.d	$t8, $t8, $s2
	add.d	$s1, $fp, $a7
	st.w	$s1, $sp, 24
	sub.d	$a7, $a7, $fp
	st.w	$a7, $sp, 32
	alsl.d	$a7, $t0, $t8, 1
	st.w	$a7, $sp, 28
	slli.d	$a7, $t8, 1
	sub.d	$a7, $t0, $a7
	st.w	$a7, $sp, 36
	add.d	$a7, $t7, $t5
	sub.d	$t0, $t5, $t7
	add.d	$t5, $s3, $s4
	sub.d	$t7, $s4, $s3
	add.d	$t8, $t5, $a7
	st.w	$t8, $sp, 40
	sub.d	$a7, $a7, $t5
	st.w	$a7, $sp, 48
	alsl.d	$a7, $t0, $t7, 1
	st.w	$a7, $sp, 44
	slli.d	$a7, $t7, 1
	sub.d	$a7, $t0, $a7
	st.w	$a6, $sp, 56
	st.w	$a7, $sp, 52
	add.d	$t5, $a5, $a6
	sub.d	$a5, $a6, $a5
	add.d	$a6, $t1, $s0
	sub.d	$t7, $s0, $t1
	add.d	$a7, $a6, $t5
	st.w	$a7, $sp, 56
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a3, 8
	sub.d	$a3, $t5, $a6
	ori	$a1, $s5, 848
	st.w	$a3, $sp, 64
	alsl.d	$a3, $a5, $t7, 1
	st.w	$a3, $sp, 60
	add.d	$t1, $a4, $a1
	slli.d	$a3, $t7, 1
	sub.d	$a3, $a5, $a3
	ld.w	$a5, $a4, 40
	st.w	$t2, $sp, 72
	st.w	$a3, $sp, 68
	add.d	$a3, $t6, $t2
	sub.d	$t2, $t2, $t6
	add.d	$t5, $t4, $t3
	sub.d	$t3, $t3, $t4
	add.d	$t4, $t5, $a3
	st.w	$t4, $sp, 72
	sub.d	$a3, $a3, $t5
	st.w	$a3, $sp, 80
	alsl.d	$a3, $t2, $t3, 1
	st.w	$a3, $sp, 76
	slli.d	$a3, $t3, 1
	sub.d	$a3, $t2, $a3
	st.w	$a3, $sp, 84
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2731
	mul.d	$a3, $a5, $a3
	srli.d	$t2, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$t2, $a3, $t2
	addi.d	$t3, $t2, 15
	slli.d	$a3, $t2, 2
	alsl.d	$a3, $t2, $a3, 1
	sub.w	$a3, $a5, $a3
	ori	$t4, $zero, 1
	sll.w	$a5, $t4, $t3
	bstrpick.d	$t5, $a5, 31, 31
	add.w	$a5, $a5, $t5
	srai.d	$t5, $a5, 1
	slli.d	$a3, $a3, 6
	pcalau12i	$a5, %pc_hi20(quant_coef)
	addi.d	$a5, $a5, %pc_lo12(quant_coef)
	add.d	$t6, $a5, $a3
	pcalau12i	$a5, %pc_hi20(dequant_coef)
	addi.d	$a5, $a5, %pc_lo12(dequant_coef)
	add.d	$t7, $a5, $a3
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a5, $a3, %got_pc_lo12(input)
	move	$fp, $zero
	move	$t8, $zero
	move	$a3, $zero
	ld.d	$s0, $a5, 0
	addi.d	$s3, $zero, -1
	addi.d	$s1, $sp, 24
	ori	$s2, $zero, 32
	lu12i.w	$a5, 244
	ori	$a5, $a5, 575
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_1:                               #   in Loop: Header=BB10_3 Depth=1
	ld.w	$a6, $a2, 0
	add.d	$a6, $a6, $s4
	st.w	$a6, $a2, 0
	slti	$a6, $ra, 0
	sub.d	$s4, $zero, $a3
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $s4, $a6
	or	$a3, $a6, $a3
	slli.d	$a6, $t8, 2
	stx.w	$a3, $a7, $a6
	stx.w	$s3, $t0, $a6
	addi.w	$t8, $t8, 1
	addi.d	$s3, $zero, -1
	ori	$a3, $zero, 1
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	alsl.d	$a6, $s5, $t7, 4
	ldx.w	$a6, $a6, $s6
	alsl.d	$s4, $s5, $s7, 2
	mul.d	$a6, $a6, $s8
	sll.w	$a6, $a6, $t2
	addi.d	$fp, $fp, 2
	st.w	$a6, $s4, 0
	beq	$fp, $s2, .LBB10_10
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	ldptr.w	$s4, $a4, 15312
	pcalau12i	$s5, %pc_hi20(FIELD_SCAN)
	addi.d	$s5, $s5, %pc_lo12(FIELD_SCAN)
	bnez	$s4, .LBB10_7
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	pcalau12i	$s4, %pc_hi20(mb_adaptive)
	ld.w	$s4, $s4, %pc_lo12(mb_adaptive)
	beqz	$s4, .LBB10_6
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	ldptr.w	$s4, $a4, 14464
	bnez	$s4, .LBB10_7
.LBB10_6:                               #   in Loop: Header=BB10_3 Depth=1
	pcalau12i	$s4, %pc_hi20(SNGL_SCAN)
	addi.d	$s5, $s4, %pc_lo12(SNGL_SCAN)
.LBB10_7:                               #   in Loop: Header=BB10_3 Depth=1
	add.d	$s4, $s5, $fp
	ldx.bu	$s5, $s5, $fp
	ld.bu	$s4, $s4, 1
	alsl.d	$s7, $s5, $s1, 4
	slli.d	$s6, $s4, 2
	ldx.w	$ra, $s7, $s6
	alsl.d	$s7, $s5, $t6, 4
	ldx.w	$s7, $s7, $s6
	srai.d	$s8, $ra, 31
	xor	$a6, $ra, $s8
	sub.d	$a6, $a6, $s8
	mul.d	$a6, $a6, $s7
	add.d	$a6, $a6, $t5
	sra.w	$a6, $a6, $t3
	slli.d	$s4, $s4, 6
	add.d	$s7, $t1, $s4
	slli.d	$s4, $s5, 2
	ldx.w	$s8, $s7, $s4
	slti	$s4, $ra, 0
	srai.d	$ra, $a6, 31
	xor	$a6, $a6, $ra
	sub.d	$a6, $a6, $ra
	sub.d	$ra, $zero, $a6
	maskeqz	$a6, $a6, $s4
	masknez	$s4, $ra, $s4
	or	$a6, $a6, $s4
	add.w	$ra, $a6, $s8
	addi.w	$s3, $s3, 1
	beqz	$ra, .LBB10_2
# %bb.8:                                #   in Loop: Header=BB10_3 Depth=1
	srai.d	$a3, $ra, 31
	xor	$a6, $ra, $a3
	sub.w	$a3, $a6, $a3
	move	$s4, $a5
	bltu	$t4, $a3, .LBB10_1
# %bb.9:                                #   in Loop: Header=BB10_3 Depth=1
	ldptr.w	$a6, $s0, 4180
	pcalau12i	$s4, %pc_hi20(COEFF_COST)
	addi.d	$s4, $s4, %pc_lo12(COEFF_COST)
	alsl.d	$a6, $a6, $s4, 4
	ldx.bu	$s4, $a6, $s3
	b	.LBB10_1
.LBB10_10:                              # %.preheader182
	slli.d	$a2, $t8, 2
	stx.w	$zero, $a7, $a2
	ldx.w	$a5, $a4, $a1
	lu12i.w	$t8, 3
	ori	$a2, $t8, 856
	ldx.w	$a6, $a4, $a2
	ldptr.w	$a7, $a4, 13140
	ldptr.w	$t0, $a4, 13148
	add.d	$t1, $a6, $a5
	sub.d	$a5, $a5, $a6
	srli.d	$a6, $a7, 1
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $t0, 1
	add.d	$a7, $t0, $a7
	add.d	$t0, $a7, $t1
	stptr.w	$t0, $a4, 13136
	sub.d	$a7, $t1, $a7
	stptr.w	$a7, $a4, 13148
	add.d	$a7, $a6, $a5
	stptr.w	$a7, $a4, 13140
	sub.d	$a5, $a5, $a6
	ori	$t1, $t8, 912
	ldx.w	$a6, $a4, $t1
	ori	$a7, $t8, 920
	ldx.w	$t0, $a4, $a7
	stptr.w	$a5, $a4, 13144
	ldptr.w	$a5, $a4, 13204
	ldptr.w	$t2, $a4, 13212
	add.d	$t3, $t0, $a6
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $a5, 1
	sub.d	$t0, $t0, $t2
	srli.d	$t2, $t2, 1
	add.d	$a5, $t2, $a5
	add.d	$t2, $a5, $t3
	stptr.w	$t2, $a4, 13200
	sub.d	$a5, $t3, $a5
	stptr.w	$a5, $a4, 13212
	add.d	$a5, $t0, $a6
	stptr.w	$a5, $a4, 13204
	sub.d	$a5, $a6, $t0
	ori	$t3, $t8, 976
	ldx.w	$a6, $a4, $t3
	ori	$t0, $t8, 984
	ldx.w	$t2, $a4, $t0
	stptr.w	$a5, $a4, 13208
	ldptr.w	$a5, $a4, 13268
	ldptr.w	$t4, $a4, 13276
	add.d	$t5, $t2, $a6
	sub.d	$a6, $a6, $t2
	srli.d	$t2, $a5, 1
	sub.d	$t2, $t2, $t4
	srli.d	$t4, $t4, 1
	add.d	$a5, $t4, $a5
	add.d	$t4, $a5, $t5
	stptr.w	$t4, $a4, 13264
	sub.d	$a5, $t5, $a5
	stptr.w	$a5, $a4, 13276
	add.d	$a5, $t2, $a6
	stptr.w	$a5, $a4, 13268
	sub.d	$a5, $a6, $t2
	ori	$t4, $t8, 1040
	ldx.w	$a6, $a4, $t4
	ori	$t2, $t8, 1048
	ldx.w	$t5, $a4, $t2
	stptr.w	$a5, $a4, 13272
	ldptr.w	$a5, $a4, 13332
	ldptr.w	$t6, $a4, 13340
	add.d	$t7, $t5, $a6
	sub.d	$a6, $a6, $t5
	srli.d	$t5, $a5, 1
	sub.d	$t5, $t5, $t6
	srli.d	$t6, $t6, 1
	add.d	$a5, $t6, $a5
	add.d	$t6, $a5, $t7
	stptr.w	$t6, $a4, 13328
	sub.d	$a5, $t7, $a5
	stptr.w	$a5, $a4, 13340
	add.d	$a5, $t5, $a6
	stptr.w	$a5, $a4, 13332
	sub.d	$a5, $a6, $t5
	vldx	$vr0, $a4, $a1
	vldx	$vr1, $a4, $t3
	stptr.w	$a5, $a4, 13336
	vldx	$vr2, $a4, $t1
	vldx	$vr3, $a4, $t4
	vadd.w	$vr4, $vr1, $vr0
	vsub.w	$vr0, $vr0, $vr1
	vsrai.w	$vr1, $vr2, 1
	vsub.w	$vr1, $vr1, $vr3
	vsrai.w	$vr3, $vr3, 1
	vadd.w	$vr2, $vr3, $vr2
	vrepli.w	$vr3, 32
	vadd.w	$vr4, $vr4, $vr3
	vadd.w	$vr5, $vr4, $vr2
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vrepli.w	$vr6, 255
	vmin.w	$vr5, $vr5, $vr6
	vstx	$vr5, $a4, $a1
	vsub.w	$vr2, $vr4, $vr2
	vsrai.w	$vr2, $vr2, 6
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr6
	vstx	$vr2, $a4, $t4
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr0, $vr1
	vsrai.w	$vr2, $vr2, 6
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr6
	vstx	$vr2, $a4, $t1
	vsub.w	$vr0, $vr0, $vr1
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr6
	vstx	$vr0, $a4, $t3
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a4, 180
	ld.w	$t5, $a4, 176
	ldptr.d	$a5, $a5, 6440
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	add.w	$t6, $t6, $a6
	add.w	$t5, $a0, $t5
	ldx.h	$t7, $a4, $a1
	slli.d	$a0, $t6, 3
	ldx.d	$a0, $a5, $a0
	addi.w	$a1, $t6, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a5, $a1
	addi.w	$a6, $t6, 2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a5, $a6
	addi.w	$t6, $t6, 3
	slli.d	$t6, $t6, 3
	ldx.d	$a5, $a5, $t6
	slli.d	$t6, $t5, 1
	ldx.h	$t1, $a4, $t1
	ldx.h	$t3, $a4, $t3
	ldx.h	$t4, $a4, $t4
	stx.h	$t7, $a0, $t6
	stx.h	$t1, $a1, $t6
	stx.h	$t3, $a6, $t6
	stx.h	$t4, $a5, $t6
	addi.w	$t1, $t5, 1
	ori	$t3, $t8, 852
	ldx.h	$t3, $a4, $t3
	slli.d	$t1, $t1, 1
	ori	$t4, $t8, 916
	ldx.h	$t4, $a4, $t4
	ori	$t6, $t8, 980
	ldx.h	$t6, $a4, $t6
	ori	$t7, $t8, 1044
	ldx.h	$t7, $a4, $t7
	stx.h	$t3, $a0, $t1
	stx.h	$t4, $a1, $t1
	stx.h	$t6, $a6, $t1
	stx.h	$t7, $a5, $t1
	addi.w	$t1, $t5, 2
	ldx.h	$a2, $a4, $a2
	slli.d	$t1, $t1, 1
	ldx.h	$a7, $a4, $a7
	ldx.h	$t0, $a4, $t0
	ldx.h	$t2, $a4, $t2
	stx.h	$a2, $a0, $t1
	stx.h	$a7, $a1, $t1
	stx.h	$t0, $a6, $t1
	stx.h	$t2, $a5, $t1
	addi.w	$a2, $t5, 3
	ori	$a7, $t8, 860
	ldx.h	$a7, $a4, $a7
	slli.d	$a2, $a2, 1
	ori	$t0, $t8, 924
	ldx.h	$t0, $a4, $t0
	ori	$t1, $t8, 988
	ldx.h	$t1, $a4, $t1
	ori	$t2, $t8, 1052
	ldx.h	$a4, $a4, $t2
	stx.h	$a7, $a0, $a2
	stx.h	$t0, $a1, $a2
	stx.h	$t1, $a6, $a2
	stx.h	$a4, $a5, $a2
	move	$a0, $a3
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
	ret
.Lfunc_end10:
	.size	dct_luma_sp2, .Lfunc_end10-dct_luma_sp2
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dct_chroma_sp2
.LCPI11_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.text
	.globl	dct_chroma_sp2
	.p2align	5
	.type	dct_chroma_sp2,@function
dct_chroma_sp2:                         # @dct_chroma_sp2
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	addi.d	$t8, $sp, 232
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ldptr.d	$a4, $a2, 14168
	ldptr.d	$a7, $a2, 14224
	ld.w	$a3, $a2, 12
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$a4, $a0, $a4, 3
	ld.w	$t3, $a2, 40
	ld.d	$a6, $a4, 8
	ori	$a4, $zero, 536
	mul.d	$a3, $a3, $a4
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bltz	$t3, .LBB11_2
# %bb.1:
	pcalau12i	$a4, %pc_hi20(QP_SCALE_CR)
	addi.d	$a4, $a4, %pc_lo12(QP_SCALE_CR)
	ldx.bu	$t3, $a4, $t3
	ori	$a4, $zero, 171
	mul.d	$a4, $t3, $a4
	srli.d	$t1, $a4, 10
	b	.LBB11_3
.LBB11_2:                               # %.thread
	sub.d	$a4, $zero, $t3
	bstrpick.d	$a4, $a4, 31, 0
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 34
	sub.d	$t1, $zero, $a4
.LBB11_3:
	move	$a4, $zero
	addi.d	$t5, $sp, 104
	add.d	$t2, $a7, $a3
	ld.d	$a0, $a6, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(lrec_uv)
	ld.d	$a3, $a3, %pc_lo12(lrec_uv)
	ld.d	$a0, $a6, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$t4, $sp, 120
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a3, $a3, $a0
	lu12i.w	$a0, 3
	ori	$ra, $a0, 848
	add.d	$a1, $a2, $ra
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $a0, 876
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	add.d	$a5, $a2, $a1
	ori	$a1, $a0, 350
	add.d	$a6, $a2, $a1
	ori	$t6, $zero, 8
	.p2align	4, , 16
.LBB11_4:                               # %.preheader337
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $a6, -14
	st.w	$a1, $t8, -128
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ld.w	$a7, $a2, 184
	ldx.d	$a1, $a3, $a1
	slli.d	$a7, $a7, 2
	ldx.w	$a1, $a1, $a7
	ld.hu	$a7, $a6, -12
	st.w	$a1, $a5, -28
	st.w	$a7, $t8, -96
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ld.w	$a7, $a2, 184
	alsl.d	$a1, $a7, $a1, 2
	ld.w	$a1, $a1, 4
	ld.hu	$a7, $a6, -10
	st.w	$a1, $a5, -24
	st.w	$a7, $t8, -64
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ld.w	$a7, $a2, 184
	alsl.d	$a1, $a7, $a1, 2
	ld.w	$a1, $a1, 8
	ld.hu	$a7, $a6, -8
	st.w	$a1, $a5, -20
	st.w	$a7, $t8, -32
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ld.w	$a7, $a2, 184
	alsl.d	$a1, $a7, $a1, 2
	ld.w	$a1, $a1, 12
	ld.hu	$a7, $a6, -6
	st.w	$a1, $a5, -16
	st.w	$a7, $t8, 0
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ld.w	$a7, $a2, 184
	alsl.d	$a1, $a7, $a1, 2
	ld.w	$a1, $a1, 16
	ld.hu	$a7, $a6, -4
	st.w	$a1, $a5, -12
	st.w	$a7, $t8, 32
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ld.w	$a7, $a2, 184
	alsl.d	$a1, $a7, $a1, 2
	ld.w	$a1, $a1, 20
	ld.hu	$a7, $a6, -2
	st.w	$a1, $a5, -8
	st.w	$a7, $t8, 64
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ld.w	$a7, $a2, 184
	alsl.d	$a1, $a7, $a1, 2
	ld.w	$a1, $a1, 24
	ld.hu	$a7, $a6, 0
	st.w	$a1, $a5, -4
	st.w	$a7, $t8, 96
	ld.w	$a1, $a2, 188
	add.d	$a1, $a4, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	ld.w	$a7, $a2, 184
	alsl.d	$a1, $a7, $a1, 2
	ld.w	$a1, $a1, 28
	st.w	$a1, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$t8, $t8, 4
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 32
	bne	$a4, $t6, .LBB11_4
# %bb.5:                                # %.preheader335.preheader
	move	$a5, $zero
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB11_6:                               # %.preheader335
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
	move	$a1, $zero
	addi.d	$a6, $a5, 1
	addi.d	$t8, $a5, 2
	addi.d	$a3, $a5, 3
	addi.d	$fp, $sp, 104
	slli.d	$s0, $a5, 2
	slli.d	$s1, $a6, 2
	slli.d	$s2, $t8, 2
	slli.d	$s3, $a3, 2
	ori	$s4, $zero, 1
	addi.d	$a7, $sp, 104
	addi.d	$a0, $sp, 232
	.p2align	4, , 16
.LBB11_7:                               # %.preheader334
                                        #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $a1, 5
	add.d	$t7, $t5, $t0
	addi.d	$a3, $t0, 96
	addi.d	$a1, $t0, 32
	addi.d	$t6, $t0, 64
	alsl.d	$s5, $a5, $a7, 2
	vldx	$vr0, $t5, $t0
	vldx	$vr1, $t5, $a1
	vldx	$vr2, $t5, $t6
	vldx	$vr3, $t5, $a3
	alsl.d	$s6, $a6, $a7, 2
	alsl.d	$a7, $t8, $a7, 2
	vsub.w	$vr4, $vr1, $vr2
	vsub.w	$vr5, $vr0, $vr3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr1, $vr0
	vpickve2gr.w	$s7, $vr2, 0
	vstelm.w	$vr2, $s5, 0, 0
	vpickve2gr.w	$s8, $vr2, 1
	vstelm.w	$vr2, $s6, 0, 1
	vpickve2gr.w	$s6, $vr2, 2
	vstelm.w	$vr2, $a7, 0, 2
	vpickve2gr.w	$a7, $vr2, 3
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 64
	vslli.w	$vr0, $vr5, 1
	vadd.w	$vr0, $vr0, $vr4
	vst	$vr0, $s5, 32
	vslli.w	$vr0, $vr4, 1
	vsub.w	$vr0, $vr5, $vr0
	vst	$vr0, $s5, 96
	add.d	$s5, $a7, $s7
	sub.d	$a7, $s7, $a7
	add.d	$s7, $s6, $s8
	sub.d	$s6, $s8, $s6
	add.d	$s8, $s7, $s5
	stx.w	$s8, $t5, $t0
	sub.d	$t0, $s5, $s7
	st.w	$t0, $t7, 8
	alsl.d	$t0, $a7, $s6, 1
	st.w	$t0, $t7, 4
	slli.d	$t0, $s6, 1
	sub.d	$a7, $a7, $t0
	st.w	$a7, $t7, 12
	add.d	$a7, $fp, $a1
	ldx.w	$t0, $a7, $s0
	ldx.w	$t7, $a7, $s3
	ldx.w	$s5, $a7, $s1
	ldx.w	$a7, $a7, $s2
	add.d	$s6, $t5, $a1
	add.d	$s7, $t7, $t0
	sub.d	$t0, $t0, $t7
	add.d	$t7, $a7, $s5
	sub.d	$a7, $s5, $a7
	add.d	$s5, $t7, $s7
	stx.w	$s5, $t5, $a1
	sub.d	$a1, $s7, $t7
	st.w	$a1, $s6, 8
	alsl.d	$a1, $t0, $a7, 1
	st.w	$a1, $s6, 4
	slli.d	$a1, $a7, 1
	sub.d	$a1, $t0, $a1
	st.w	$a1, $s6, 12
	add.d	$a1, $fp, $t6
	ldx.w	$a7, $a1, $s0
	ldx.w	$t0, $a1, $s3
	ldx.w	$t7, $a1, $s1
	ldx.w	$a1, $a1, $s2
	add.d	$s5, $t5, $t6
	add.d	$s6, $t0, $a7
	sub.d	$a7, $a7, $t0
	add.d	$t0, $a1, $t7
	sub.d	$a1, $t7, $a1
	add.d	$t7, $t0, $s6
	stx.w	$t7, $t5, $t6
	sub.d	$t0, $s6, $t0
	st.w	$t0, $s5, 8
	alsl.d	$t0, $a7, $a1, 1
	st.w	$t0, $s5, 4
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a7, $a1
	st.w	$a1, $s5, 12
	add.d	$a1, $fp, $a3
	ldx.w	$a7, $a1, $s0
	ldx.w	$t0, $a1, $s3
	ldx.w	$t6, $a1, $s1
	ldx.w	$a1, $a1, $s2
	add.d	$t7, $t5, $a3
	add.d	$s5, $t0, $a7
	sub.d	$a7, $a7, $t0
	add.d	$t0, $a1, $t6
	sub.d	$a1, $t6, $a1
	add.d	$t6, $t0, $s5
	stx.w	$t6, $t5, $a3
	sub.d	$a3, $s5, $t0
	st.w	$a3, $t7, 8
	alsl.d	$a3, $a7, $a1, 1
	st.w	$a3, $t7, 4
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a7, $a1
	st.w	$a1, $t7, 12
	andi	$a3, $s4, 1
	ori	$a1, $zero, 4
	move	$a7, $a0
	move	$s4, $zero
	bnez	$a3, .LBB11_7
# %bb.8:                                #   in Loop: Header=BB11_6 Depth=1
	andi	$a1, $a4, 1
	ori	$a5, $zero, 4
	move	$t5, $t4
	move	$a4, $zero
	bnez	$a1, .LBB11_6
# %bb.9:
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	mul.d	$a1, $t3, $a1
	srli.d	$a3, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a3
	slli.d	$a3, $a1, 2
	alsl.d	$a1, $a1, $a3, 1
	sub.w	$a1, $t3, $a1
	addi.d	$t8, $t1, 15
	ori	$t3, $zero, 1
	sll.w	$a3, $t3, $t8
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$fp, $a3, $a4
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $ra
	lu12i.w	$a7, 3
	ori	$a0, $a7, 1104
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$t4, $a2, $a0
	ori	$a0, $a7, 864
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$s7, $a2, $a0
	ld.w	$a3, $sp, 104
	ld.w	$a4, $sp, 232
	ld.w	$a6, $sp, 120
	ld.w	$t6, $sp, 248
	ori	$a0, $a7, 1120
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ldx.w	$s1, $a2, $a0
	add.d	$a7, $a4, $a3
	add.d	$t0, $t6, $a6
	add.w	$s6, $t0, $a7
	add.d	$t5, $a3, $a6
	add.d	$t7, $a4, $t6
	sub.w	$t7, $t5, $t7
	sub.w	$t5, $a7, $t0
	add.d	$a4, $a4, $a6
	sub.d	$a3, $a3, $a4
	slli.d	$s2, $a1, 6
	pcalau12i	$a1, %pc_hi20(quant_coef)
	addi.d	$s3, $a1, %pc_lo12(quant_coef)
	ldx.w	$s8, $s3, $s2
	move	$ra, $fp
	bstrins.d	$ra, $zero, 0, 0
	addi.d	$a4, $t1, 16
	pcalau12i	$a1, %pc_hi20(dequant_coef)
	addi.d	$s5, $a1, %pc_lo12(dequant_coef)
	ldx.w	$s4, $s5, $s2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s0, $a0, 2
	bstrpick.d	$a1, $s0, 31, 2
	slli.d	$a6, $a1, 2
	srai.d	$a1, $s6, 31
	xor	$a7, $s6, $a1
	sub.d	$a1, $a7, $a1
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a1, $ra
	sra.w	$a1, $a1, $a4
	slti	$a7, $s6, 0
	srai.d	$t0, $a1, 31
	xor	$a1, $a1, $t0
	sub.d	$a1, $a1, $t0
	sub.d	$t0, $zero, $a1
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $t0, $a7
	lu12i.w	$t0, 240
	or	$a1, $a1, $a7
	add.w	$a1, $a1, $a5
	sll.w	$a6, $t0, $a6
	beqz	$a1, .LBB11_11
# %bb.10:
	move	$t3, $zero
	ld.d	$a7, $t2, 368
	srai.d	$t0, $a1, 31
	xor	$s6, $a1, $t0
	sub.d	$t0, $s6, $t0
	or	$a7, $a7, $a6
	st.d	$a7, $t2, 368
	ori	$s6, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slt	$a7, $s6, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a7, $s6, $a7
	or	$a0, $a0, $a7
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slti	$a0, $a1, 0
	sub.d	$a1, $zero, $t0
	masknez	$a7, $t0, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a7
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	b	.LBB11_12
.LBB11_11:
	move	$s6, $zero
.LBB11_12:
	srai.d	$a0, $t7, 31
	xor	$a1, $t7, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a0, $ra
	sra.w	$a0, $a0, $a4
	slti	$a1, $t7, 0
	srai.d	$a7, $a0, 31
	xor	$a0, $a0, $a7
	sub.d	$a0, $a0, $a7
	sub.d	$a7, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a7, $a1
	or	$a0, $a0, $a1
	add.w	$a1, $a0, $t4
	add.w	$a3, $a3, $t6
	beqz	$a1, .LBB11_14
# %bb.13:
	ld.d	$a0, $t2, 368
	srai.d	$a7, $a1, 31
	xor	$t0, $a1, $a7
	sub.d	$a7, $t0, $a7
	or	$a0, $a0, $a6
	st.d	$a0, $t2, 368
	ori	$a0, $zero, 1
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	slt	$t0, $a0, $t6
	masknez	$a0, $a0, $t0
	maskeqz	$t0, $t6, $t0
	or	$t6, $t0, $a0
	slti	$a0, $a1, 0
	sub.d	$a1, $zero, $a7
	masknez	$a7, $a7, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a7
	slli.d	$a1, $s6, 2
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	stx.w	$a0, $t7, $a1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	stx.w	$t3, $a0, $a1
	addi.d	$s6, $s6, 1
	addi.d	$t3, $zero, -1
	b	.LBB11_15
.LBB11_14:
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
.LBB11_15:
	mul.d	$a5, $s4, $a5
	mul.d	$t4, $s4, $t4
	srai.d	$a0, $t5, 31
	xor	$a1, $t5, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a0, $ra
	sra.w	$a0, $a0, $a4
	slti	$a1, $t5, 0
	srai.d	$a7, $a0, 31
	xor	$a0, $a0, $a7
	sub.d	$a0, $a0, $a7
	sub.d	$a7, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a7, $a1
	or	$a0, $a0, $a1
	add.w	$a7, $a0, $s7
	addi.d	$a1, $t3, 1
	beqz	$a7, .LBB11_17
# %bb.16:
	ld.d	$a0, $t2, 368
	srai.d	$t0, $a7, 31
	xor	$t3, $a7, $t0
	sub.d	$t0, $t3, $t0
	or	$a0, $a0, $a6
	st.d	$a0, $t2, 368
	ori	$a0, $zero, 1
	slt	$t3, $a0, $t6
	masknez	$a0, $a0, $t3
	maskeqz	$t3, $t6, $t3
	or	$t6, $t3, $a0
	slti	$a0, $a7, 0
	sub.d	$a7, $zero, $t0
	masknez	$t0, $t0, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $t0
	slli.d	$a7, $s6, 2
	stx.w	$a0, $t7, $a7
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	stx.w	$a1, $a0, $a7
	addi.d	$s6, $s6, 1
	addi.d	$a1, $zero, -1
.LBB11_17:
	sll.w	$a5, $a5, $t1
	sll.w	$t3, $t4, $t1
	mul.d	$a0, $s4, $s7
	srai.d	$a7, $a3, 31
	xor	$t0, $a3, $a7
	sub.d	$a7, $t0, $a7
	mul.d	$a7, $a7, $s8
	add.d	$a7, $a7, $ra
	sra.w	$a4, $a7, $a4
	slti	$a3, $a3, 0
	srai.d	$a7, $a4, 31
	xor	$a4, $a4, $a7
	sub.d	$a4, $a4, $a7
	sub.d	$a7, $zero, $a4
	maskeqz	$a4, $a4, $a3
	masknez	$a3, $a7, $a3
	or	$a3, $a4, $a3
	add.w	$a4, $a3, $s1
	sll.w	$a3, $a0, $t1
	beqz	$a4, .LBB11_19
# %bb.18:
	srai.d	$a0, $a4, 31
	ld.d	$a7, $t2, 368
	xor	$t0, $a4, $a0
	sub.d	$a0, $t0, $a0
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $a6
	st.d	$a6, $t2, 368
	ori	$a6, $zero, 1
	slt	$a7, $a6, $t6
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $t6, $a7
	or	$a6, $a7, $a6
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	slti	$a4, $a4, 0
	sub.d	$a6, $zero, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a6, $a4
	or	$a0, $a4, $a0
	slli.d	$a4, $s6, 2
	stx.w	$a0, $t7, $a4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	stx.w	$a1, $a0, $a4
	addi.d	$s6, $s6, 1
	b	.LBB11_20
.LBB11_19:
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
.LBB11_20:
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	move	$t0, $zero
	move	$t6, $zero
	add.d	$s3, $s3, $s2
	add.d	$s2, $s5, $s2
	mul.d	$a0, $s4, $s1
	sll.w	$a0, $a0, $t1
	slli.d	$a1, $s6, 2
	stx.w	$zero, $t7, $a1
	add.d	$a1, $t3, $a5
	add.d	$a4, $a0, $a3
	add.d	$a6, $a4, $a1
	bstrpick.d	$a7, $a6, 31, 31
	add.w	$a6, $a6, $a7
	srli.d	$a6, $a6, 1
	stptr.w	$a6, $a2, 13136
	add.d	$a6, $a5, $a3
	add.d	$a7, $t3, $a0
	sub.d	$a6, $a6, $a7
	bstrpick.d	$a7, $a6, 31, 31
	add.w	$a6, $a6, $a7
	srli.d	$a6, $a6, 1
	stptr.w	$a6, $a2, 13392
	srai.d	$t7, $fp, 1
	sub.d	$a1, $a1, $a4
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a1, $a1, $a4
	srli.d	$a1, $a1, 1
	stptr.w	$a1, $a2, 13152
	add.w	$a1, $t3, $a3
	sub.d	$a1, $a5, $a1
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	ldptr.d	$a3, $a2, 14160
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	stptr.w	$a0, $a2, 13408
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 3
	ld.d	$a0, $a0, 32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$fp, $zero, 30
	ori	$a1, $zero, 1
	b	.LBB11_22
	.p2align	4, , 16
.LBB11_21:                              #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$t0, $zero, 4
	move	$a1, $zero
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB11_32
.LBB11_22:                              # %.preheader332
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_24 Depth 2
                                        #       Child Loop BB11_26 Depth 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $zero
	srli.d	$a0, $t0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$t3, $t0, $t4, 2
	addi.d	$a3, $sp, 104
	ori	$t4, $zero, 1
	b	.LBB11_24
	.p2align	4, , 16
.LBB11_23:                              #   in Loop: Header=BB11_24 Depth=2
	slli.d	$a0, $s1, 2
	stx.w	$zero, $t5, $a0
	andi	$a0, $t4, 1
	ori	$a1, $zero, 4
	addi.d	$a3, $sp, 232
	move	$t4, $zero
	move	$t0, $a5
	beqz	$a0, .LBB11_21
.LBB11_24:                              #   Parent Loop BB11_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_26 Depth 3
	srli.d	$a0, $a1, 2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $a0, $a4
	slli.d	$a6, $a0, 3
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a6, $a4, $a6
	move	$s4, $zero
	move	$s1, $zero
	ld.d	$t5, $a6, 0
	ld.d	$s5, $a6, 8
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	or	$a0, $a0, $a4
	ori	$a4, $zero, 1
	sll.d	$s6, $a4, $a0
	move	$a5, $t0
	alsl.d	$s8, $t0, $a3, 2
	slli.d	$a0, $a1, 6
	add.d	$ra, $t3, $a0
	addi.d	$a3, $zero, -1
	b	.LBB11_26
	.p2align	4, , 16
.LBB11_25:                              #   in Loop: Header=BB11_26 Depth=3
	alsl.d	$a0, $s0, $s2, 4
	ldx.w	$a0, $a0, $a7
	alsl.d	$a1, $a1, $a6, 2
	mul.d	$a0, $a0, $t0
	sll.w	$a0, $a0, $t1
	addi.d	$s4, $s4, 2
	st.w	$a0, $a1, 0
	beq	$s4, $fp, .LBB11_23
.LBB11_26:                              #   Parent Loop BB11_22 Depth=1
                                        #     Parent Loop BB11_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldptr.w	$a0, $a2, 15312
	pcalau12i	$a1, %pc_hi20(FIELD_SCAN)
	addi.d	$a1, $a1, %pc_lo12(FIELD_SCAN)
	bnez	$a0, .LBB11_30
# %bb.27:                               #   in Loop: Header=BB11_26 Depth=3
	pcalau12i	$a0, %pc_hi20(mb_adaptive)
	ld.w	$a0, $a0, %pc_lo12(mb_adaptive)
	beqz	$a0, .LBB11_29
# %bb.28:                               #   in Loop: Header=BB11_26 Depth=3
	ldptr.w	$a0, $a2, 14464
	bnez	$a0, .LBB11_30
.LBB11_29:                              #   in Loop: Header=BB11_26 Depth=3
	pcalau12i	$a0, %pc_hi20(SNGL_SCAN)
	addi.d	$a1, $a0, %pc_lo12(SNGL_SCAN)
.LBB11_30:                              #   in Loop: Header=BB11_26 Depth=3
	add.d	$a0, $a1, $s4
	ld.bu	$a1, $a0, 2
	ld.bu	$s0, $a0, 3
	slli.d	$a0, $a1, 5
	add.d	$a0, $s8, $a0
	slli.d	$a6, $s0, 2
	ldx.w	$a0, $a0, $a6
	alsl.d	$a6, $s0, $s3, 4
	slli.d	$a7, $a1, 2
	ldx.w	$a6, $a6, $a7
	srai.d	$t0, $a0, 31
	xor	$a4, $a0, $t0
	sub.d	$a4, $a4, $t0
	mul.d	$a4, $a4, $a6
	add.d	$a4, $a4, $t7
	sra.w	$a4, $a4, $t8
	slli.d	$a6, $s0, 6
	add.d	$a6, $ra, $a6
	ldx.w	$t0, $a6, $a7
	slti	$a0, $a0, 0
	srai.d	$s7, $a4, 31
	xor	$a4, $a4, $s7
	sub.d	$a4, $a4, $s7
	sub.d	$s7, $zero, $a4
	maskeqz	$a4, $a4, $a0
	masknez	$a0, $s7, $a0
	or	$a0, $a4, $a0
	add.w	$a0, $a0, $t0
	addi.d	$a3, $a3, 1
	beqz	$a0, .LBB11_25
# %bb.31:                               #   in Loop: Header=BB11_26 Depth=3
	ld.d	$a4, $t2, 368
	srai.d	$t6, $a0, 31
	xor	$s7, $a0, $t6
	sub.d	$t6, $s7, $t6
	or	$a4, $a4, $s6
	st.d	$a4, $t2, 368
	slti	$a0, $a0, 0
	sub.d	$a4, $zero, $t6
	masknez	$t6, $t6, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $t6
	slli.d	$a4, $s1, 2
	stx.w	$a0, $t5, $a4
	stx.w	$a3, $s5, $a4
	addi.w	$s1, $s1, 1
	addi.d	$a3, $zero, -1
	ori	$t6, $zero, 2
	b	.LBB11_25
.LBB11_32:                              # %.preheader330.preheader
	move	$a4, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI11_0)
	ori	$a0, $zero, 1
	vrepli.w	$vr1, 32
	vrepli.w	$vr2, 255
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_33:                              # %.preheader330
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_34 Depth 2
	move	$a1, $zero
	alsl.d	$a5, $a4, $t4, 2
	slli.d	$a6, $a4, 2
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB11_34:                              # %vector.body503
                                        #   Parent Loop BB11_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $a1, 6
	add.d	$a3, $a5, $a1
	vldx	$vr3, $a5, $a1
	vld	$vr4, $a3, 128
	vld	$vr5, $a3, 64
	vld	$vr6, $a3, 192
	vadd.w	$vr7, $vr4, $vr3
	vsub.w	$vr3, $vr3, $vr4
	vsrai.w	$vr4, $vr5, 1
	vsub.w	$vr4, $vr4, $vr6
	vsrai.w	$vr6, $vr6, 1
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr6, $vr5, $vr7
	vstx	$vr6, $a5, $a1
	vsub.w	$vr5, $vr7, $vr5
	vst	$vr5, $a3, 192
	vadd.w	$vr5, $vr4, $vr3
	vst	$vr5, $a3, 64
	vsub.w	$vr3, $vr3, $vr4
	vst	$vr3, $a3, 128
	add.d	$t1, $t4, $a1
	alsl.d	$a3, $a4, $t1, 2
	ldx.w	$a1, $t1, $a6
	ld.w	$a7, $a3, 64
	ld.w	$t2, $a3, 128
	ld.w	$t3, $a3, 192
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t2, 2
	vinsgr2vr.w	$vr3, $t3, 3
	ld.w	$a1, $a3, 4
	ld.w	$a7, $a3, 68
	ld.w	$t2, $a3, 132
	ld.w	$t3, $a3, 196
	vinsgr2vr.w	$vr4, $a1, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t2, 2
	vinsgr2vr.w	$vr4, $t3, 3
	ld.w	$a1, $a3, 8
	ld.w	$a7, $a3, 72
	ld.w	$t2, $a3, 136
	ld.w	$t3, $a3, 200
	vinsgr2vr.w	$vr5, $a1, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $t2, 2
	vinsgr2vr.w	$vr5, $t3, 3
	ld.w	$a1, $a3, 12
	ld.w	$a7, $a3, 76
	ld.w	$t2, $a3, 140
	ld.w	$t3, $a3, 204
	vinsgr2vr.w	$vr6, $a1, 0
	vinsgr2vr.w	$vr6, $a7, 1
	vinsgr2vr.w	$vr6, $t2, 2
	vinsgr2vr.w	$vr6, $t3, 3
	vadd.w	$vr7, $vr5, $vr3
	vsub.w	$vr3, $vr3, $vr5
	vsrai.w	$vr5, $vr4, 1
	vsub.w	$vr5, $vr5, $vr6
	vsrai.w	$vr6, $vr6, 1
	vadd.w	$vr4, $vr6, $vr4
	vadd.w	$vr6, $vr7, $vr1
	vadd.w	$vr7, $vr6, $vr4
	vsrai.w	$vr7, $vr7, 6
	vmaxi.w	$vr7, $vr7, 0
	vmin.w	$vr7, $vr7, $vr2
	vstelm.w	$vr7, $a3, 64, 1
	vstelm.w	$vr7, $a3, 128, 2
	vstelm.w	$vr7, $a3, 192, 3
	vsub.w	$vr4, $vr6, $vr4
	vsrai.w	$vr4, $vr4, 6
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr2
	vstelm.w	$vr4, $a3, 76, 1
	vstelm.w	$vr4, $a3, 140, 2
	vstelm.w	$vr4, $a3, 204, 3
	vadd.w	$vr3, $vr3, $vr1
	vadd.w	$vr6, $vr3, $vr5
	vsrai.w	$vr6, $vr6, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr2
	vstelm.w	$vr6, $a3, 68, 1
	vstelm.w	$vr6, $a3, 132, 2
	vstelm.w	$vr6, $a3, 196, 3
	vsub.w	$vr3, $vr3, $vr5
	vsrai.w	$vr3, $vr3, 6
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr2
	vpackev.w	$vr5, $vr6, $vr7
	vpackev.d	$vr5, $vr3, $vr5
	vori.b	$vr6, $vr0, 0
	vshuf.w	$vr6, $vr4, $vr5
	vstx	$vr6, $t1, $a6
	vstelm.w	$vr3, $a3, 72, 1
	vstelm.w	$vr3, $a3, 136, 2
	vstelm.w	$vr3, $a3, 200, 3
	andi	$a3, $t0, 1
	ori	$a1, $zero, 4
	move	$t0, $zero
	bnez	$a3, .LBB11_34
# %bb.35:                               #   in Loop: Header=BB11_33 Depth=1
	andi	$a1, $a0, 1
	ori	$a4, $zero, 4
	move	$a0, $zero
	bnez	$a1, .LBB11_33
# %bb.36:                               # %.preheader325
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a1, $a2, 188
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a4, $a0, $a3
	ld.w	$t4, $a2, 184
	slli.d	$a6, $a1, 3
	ldx.d	$t0, $a4, $a6
	ldx.h	$a3, $a2, $t5
	alsl.d	$a5, $a1, $a4, 3
	alsl.d	$a1, $t4, $t0, 1
	slli.d	$a0, $t4, 1
	stx.h	$a3, $t0, $a0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$a7, $a2, $a3
	ld.d	$a3, $a5, 32
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$t1, $a2, $t1
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	ldx.h	$t2, $a2, $t2
	st.h	$a7, $a1, 8
	alsl.d	$a1, $t4, $a3, 1
	stx.h	$t1, $a3, $a0
	st.h	$t2, $a1, 8
	lu12i.w	$s0, 3
	ori	$a1, $s0, 912
	ld.d	$a7, $a5, 8
	ldx.h	$a1, $a2, $a1
	ori	$t1, $s0, 1168
	ldx.h	$t1, $a2, $t1
	alsl.d	$t2, $t4, $a7, 1
	stx.h	$a1, $a7, $a0
	ld.d	$t3, $a5, 40
	st.h	$t1, $t2, 8
	ori	$a1, $s0, 928
	ldx.h	$a1, $a2, $a1
	alsl.d	$t2, $t4, $t3, 1
	ori	$t1, $s0, 1184
	ldx.h	$t5, $a2, $t1
	ori	$t7, $s0, 976
	ld.d	$t1, $a5, 16
	ldx.h	$t7, $a2, $t7
	stx.h	$a1, $t3, $a0
	st.h	$t5, $t2, 8
	alsl.d	$a1, $t4, $t1, 1
	stx.h	$t7, $t1, $a0
	ori	$t2, $s0, 1232
	ldx.h	$t5, $a2, $t2
	ori	$t2, $s0, 992
	ldx.h	$t7, $a2, $t2
	ld.d	$t2, $a5, 48
	ori	$t8, $s0, 1248
	ldx.h	$t8, $a2, $t8
	st.h	$t5, $a1, 8
	alsl.d	$a1, $t4, $t2, 1
	stx.h	$t7, $t2, $a0
	st.h	$t8, $a1, 8
	ori	$a1, $s0, 1040
	ld.d	$t7, $a5, 24
	ldx.h	$a1, $a2, $a1
	ori	$t5, $s0, 1296
	ldx.h	$t8, $a2, $t5
	alsl.d	$fp, $t4, $t7, 1
	stx.h	$a1, $t7, $a0
	ld.d	$t5, $a5, 56
	st.h	$t8, $fp, 8
	ori	$a1, $s0, 1056
	ldx.h	$a1, $a2, $a1
	alsl.d	$t4, $t4, $t5, 1
	ori	$t8, $s0, 1312
	ldx.h	$t8, $a2, $t8
	stx.h	$a1, $t5, $a0
	ori	$a1, $s0, 852
	ldx.h	$fp, $a2, $a1
	st.h	$t8, $t4, 8
	addi.d	$a1, $a0, 2
	add.d	$t4, $t0, $a1
	stx.h	$fp, $t0, $a1
	ori	$t0, $s0, 1108
	ldx.h	$t0, $a2, $t0
	ori	$t8, $s0, 868
	ldx.h	$t8, $a2, $t8
	ori	$fp, $s0, 1124
	ldx.h	$fp, $a2, $fp
	st.h	$t0, $t4, 8
	add.d	$t0, $a3, $a1
	stx.h	$t8, $a3, $a1
	st.h	$fp, $t0, 8
	ori	$a3, $s0, 916
	ldx.h	$a3, $a2, $a3
	add.d	$t0, $a7, $a1
	ori	$t4, $s0, 1172
	ldx.h	$t4, $a2, $t4
	ori	$t8, $s0, 932
	ldx.h	$t8, $a2, $t8
	stx.h	$a3, $a7, $a1
	st.h	$t4, $t0, 8
	add.d	$a3, $t3, $a1
	stx.h	$t8, $t3, $a1
	ori	$a7, $s0, 1188
	ldx.h	$a7, $a2, $a7
	ori	$t0, $s0, 980
	ldx.h	$t0, $a2, $t0
	ori	$t3, $s0, 1236
	ldx.h	$t3, $a2, $t3
	st.h	$a7, $a3, 8
	add.d	$a3, $t1, $a1
	stx.h	$t0, $t1, $a1
	st.h	$t3, $a3, 8
	ori	$a3, $s0, 996
	ldx.h	$a3, $a2, $a3
	add.d	$a7, $t2, $a1
	ori	$t0, $s0, 1252
	ldx.h	$t0, $a2, $t0
	ori	$t1, $s0, 1044
	ldx.h	$t1, $a2, $t1
	stx.h	$a3, $t2, $a1
	st.h	$t0, $a7, 8
	add.d	$a3, $t7, $a1
	stx.h	$t1, $t7, $a1
	ori	$a7, $s0, 1300
	ldx.h	$a7, $a2, $a7
	ori	$t0, $s0, 1060
	ldx.h	$t0, $a2, $t0
	ori	$t1, $s0, 1316
	ldx.h	$t1, $a2, $t1
	st.h	$a7, $a3, 8
	add.d	$a3, $t5, $a1
	stx.h	$t0, $t5, $a1
	st.h	$t1, $a3, 8
	ori	$a1, $s0, 856
	ldx.h	$a1, $a2, $a1
	ldx.d	$a3, $a4, $a6
	addi.d	$t0, $a0, 4
	ori	$a4, $s0, 1112
	ldx.h	$a4, $a2, $a4
	add.d	$a6, $a3, $t0
	stx.h	$a1, $a3, $t0
	ld.d	$a7, $a5, 32
	st.h	$a4, $a6, 8
	ori	$a1, $s0, 872
	ldx.h	$a1, $a2, $a1
	add.d	$a6, $a7, $t0
	ori	$a4, $s0, 1128
	ldx.h	$t1, $a2, $a4
	ori	$t2, $s0, 920
	ld.d	$a4, $a5, 8
	ldx.h	$t2, $a2, $t2
	stx.h	$a1, $a7, $t0
	st.h	$t1, $a6, 8
	add.d	$a1, $a4, $t0
	stx.h	$t2, $a4, $t0
	ori	$a6, $s0, 1176
	ldx.h	$t1, $a2, $a6
	ori	$a6, $s0, 936
	ldx.h	$t2, $a2, $a6
	ld.d	$a6, $a5, 40
	ori	$t3, $s0, 1192
	ldx.h	$t3, $a2, $t3
	st.h	$t1, $a1, 8
	add.d	$a1, $a6, $t0
	stx.h	$t2, $a6, $t0
	st.h	$t3, $a1, 8
	ori	$a1, $s0, 984
	ld.d	$t3, $a5, 16
	ldx.h	$a1, $a2, $a1
	ori	$t1, $s0, 1240
	ldx.h	$t2, $a2, $t1
	add.d	$t4, $t3, $t0
	stx.h	$a1, $t3, $t0
	ld.d	$t1, $a5, 48
	st.h	$t2, $t4, 8
	ori	$a1, $s0, 1000
	ldx.h	$a1, $a2, $a1
	add.d	$t4, $t1, $t0
	ori	$t2, $s0, 1256
	ldx.h	$t5, $a2, $t2
	ori	$t7, $s0, 1048
	ld.d	$t2, $a5, 24
	ldx.h	$t7, $a2, $t7
	stx.h	$a1, $t1, $t0
	st.h	$t5, $t4, 8
	add.d	$a1, $t2, $t0
	stx.h	$t7, $t2, $t0
	ori	$t4, $s0, 1304
	ldx.h	$t4, $a2, $t4
	ori	$t5, $s0, 1064
	ldx.h	$t5, $a2, $t5
	ld.d	$a5, $a5, 56
	ori	$t7, $s0, 1320
	ldx.h	$t7, $a2, $t7
	st.h	$t4, $a1, 8
	add.d	$a1, $a5, $t0
	stx.h	$t5, $a5, $t0
	st.h	$t7, $a1, 8
	ori	$a1, $s0, 860
	ldx.h	$a1, $a2, $a1
	addi.d	$a0, $a0, 6
	ori	$t0, $s0, 1116
	ldx.h	$t0, $a2, $t0
	add.d	$t4, $a3, $a0
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ldx.h	$t5, $a2, $t5
	stx.h	$a1, $a3, $a0
	st.h	$t0, $t4, 8
	add.d	$a1, $a7, $a0
	stx.h	$t5, $a7, $a0
	ori	$a3, $s0, 1132
	ldx.h	$a3, $a2, $a3
	ori	$a7, $s0, 924
	ldx.h	$a7, $a2, $a7
	ori	$t0, $s0, 1180
	ldx.h	$t0, $a2, $t0
	st.h	$a3, $a1, 8
	add.d	$a1, $a4, $a0
	stx.h	$a7, $a4, $a0
	st.h	$t0, $a1, 8
	ori	$a1, $s0, 940
	ldx.h	$a1, $a2, $a1
	add.d	$a3, $a6, $a0
	ori	$a4, $s0, 1196
	ldx.h	$a4, $a2, $a4
	ori	$a7, $s0, 988
	ldx.h	$a7, $a2, $a7
	stx.h	$a1, $a6, $a0
	st.h	$a4, $a3, 8
	add.d	$a1, $t3, $a0
	stx.h	$a7, $t3, $a0
	ori	$a3, $s0, 1244
	ldx.h	$a3, $a2, $a3
	ori	$a4, $s0, 1004
	ldx.h	$a4, $a2, $a4
	ori	$a6, $s0, 1260
	ldx.h	$a6, $a2, $a6
	st.h	$a3, $a1, 8
	add.d	$a1, $t1, $a0
	stx.h	$a4, $t1, $a0
	st.h	$a6, $a1, 8
	ori	$a1, $s0, 1052
	ldx.h	$a1, $a2, $a1
	add.d	$a3, $t2, $a0
	ori	$a4, $s0, 1308
	ldx.h	$a4, $a2, $a4
	ori	$a6, $s0, 1068
	ldx.h	$a6, $a2, $a6
	stx.h	$a1, $t2, $a0
	st.h	$a4, $a3, 8
	add.d	$a1, $a5, $a0
	stx.h	$a6, $a5, $a0
	ori	$a0, $s0, 1324
	ldx.h	$a2, $a2, $a0
	addi.d	$a0, $t6, -2
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 2
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	st.h	$a2, $a1, 8
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.Lfunc_end11:
	.size	dct_chroma_sp2, .Lfunc_end11-dct_chroma_sp2
                                        # -- End function
	.type	SNGL_SCAN,@object               # @SNGL_SCAN
	.section	.rodata,"a",@progbits
	.globl	SNGL_SCAN
SNGL_SCAN:
	.space	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.space	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\001\003"
	.space	2,2
	.ascii	"\003\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.space	2,3
	.size	SNGL_SCAN, 32

	.type	FIELD_SCAN,@object              # @FIELD_SCAN
	.globl	FIELD_SCAN
FIELD_SCAN:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.asciz	"\002"
	.ascii	"\002\001"
	.space	2,2
	.ascii	"\002\003"
	.asciz	"\003"
	.ascii	"\003\001"
	.ascii	"\003\002"
	.space	2,3
	.size	FIELD_SCAN, 32

	.type	COEFF_COST,@object              # @COEFF_COST
	.globl	COEFF_COST
COEFF_COST:
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.space	10
	.space	16,9
	.size	COEFF_COST, 32

	.type	COEFF_BIT_COST,@object          # @COEFF_BIT_COST
	.globl	COEFF_BIT_COST
COEFF_BIT_COST:
	.ascii	"\003\005\007\t\t\013\013\013\013\r\r\r\r\r\r\r"
	.ascii	"\005\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r"
	.ascii	"\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r\017"
	.ascii	"\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r\017"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\003\005\007\007\007\t\t\t\t\013\013\r\r\r\r\017"
	.ascii	"\005\t\t\013\013\r\r\r\r\017\017\017\017\017\017\017"
	.ascii	"\007\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\t\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\t\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.space	16
	.space	16
	.ascii	"\003\007\t\t\013\r\r\017\017\017\017\021\021\021\021\021"
	.ascii	"\005\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021"
	.ascii	"\005\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.size	COEFF_BIT_COST, 768

	.type	SCAN_YUV422,@object             # @SCAN_YUV422
	.globl	SCAN_YUV422
SCAN_YUV422:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.size	SCAN_YUV422, 16

	.type	hor_offset,@object              # @hor_offset
	.globl	hor_offset
hor_offset:
	.space	16
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	hor_offset, 64

	.type	ver_offset,@object              # @ver_offset
	.globl	ver_offset
ver_offset:
	.space	16
	.ascii	"\000\000\004\004"
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	ver_offset, 64

	.type	quant_coef,@object              # @quant_coef
	.globl	quant_coef
	.p2align	2, 0x0
quant_coef:
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.size	quant_coef, 384

	.type	dequant_coef,@object            # @dequant_coef
	.globl	dequant_coef
	.p2align	2, 0x0
dequant_coef:
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.size	dequant_coef, 384

	.type	QP_SCALE_CR,@object             # @QP_SCALE_CR
	.globl	QP_SCALE_CR
QP_SCALE_CR:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''"
	.size	QP_SCALE_CR, 52

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	dct_luma_16x16.M1,@object       # @dct_luma_16x16.M1
	.local	dct_luma_16x16.M1
	.comm	dct_luma_16x16.M1,1024,4
	.type	dct_luma_16x16.M4,@object       # @dct_luma_16x16.M4
	.local	dct_luma_16x16.M4
	.comm	dct_luma_16x16.M4,64,8
	.type	dct_luma_16x16.M0,@object       # @dct_luma_16x16.M0
	.local	dct_luma_16x16.M0
	.comm	dct_luma_16x16.M0,1024,4
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	dct_luma.m4,@object             # @dct_luma.m4
	.local	dct_luma.m4
	.comm	dct_luma.m4,64,4
	.type	dct_chroma.m5,@object           # @dct_chroma.m5
	.local	dct_chroma.m5
	.comm	dct_chroma.m5,16,8
	.type	dct_chroma.cbpblk_pattern,@object # @dct_chroma.cbpblk_pattern
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
dct_chroma.cbpblk_pattern:
	.dword	0                               # 0x0
	.dword	983040                          # 0xf0000
	.dword	16711680                        # 0xff0000
	.dword	4294901760                      # 0xffff0000
	.size	dct_chroma.cbpblk_pattern, 32

	.type	dct_chroma.m3,@object           # @dct_chroma.m3
	.local	dct_chroma.m3
	.comm	dct_chroma.m3,64,4
	.type	dct_chroma.m4,@object           # @dct_chroma.m4
	.local	dct_chroma.m4
	.comm	dct_chroma.m4,64,4
	.type	cbp_blk_chroma,@object          # @cbp_blk_chroma
cbp_blk_chroma:
	.ascii	"\020\021\022\023"
	.ascii	"\024\025\026\027"
	.ascii	"\030\031\032\033"
	.ascii	"\034\035\036\037"
	.ascii	" !\"#"
	.ascii	"$%&'"
	.ascii	"()*+"
	.ascii	",-./"
	.size	cbp_blk_chroma, 32

	.type	A,@object                       # @A
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
A:
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.size	A, 64

	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
