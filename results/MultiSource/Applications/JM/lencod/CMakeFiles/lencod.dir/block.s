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
	beqz	$a0, .LBB0_12
# %bb.4:                                # %.preheader223
	ld.w	$a1, $sp, 104
	ld.d	$a0, $s7, 0
	beqz	$a1, .LBB0_13
# %bb.5:
	ld.w	$a1, $sp, 108
	ldptr.d	$a2, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $a2, $a1
	andi	$a1, $a1, 1
	ld.w	$a2, $sp, 128
	beqz	$a2, .LBB0_14
.LBB0_6:
	ld.w	$a2, $sp, 132
	ldptr.d	$a3, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	ld.w	$a2, $sp, 152
	beqz	$a2, .LBB0_15
.LBB0_7:
	ld.w	$a2, $sp, 156
	ldptr.d	$a4, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	ld.w	$a2, $sp, 176
	beqz	$a2, .LBB0_16
.LBB0_8:
	ld.w	$a2, $sp, 180
	ldptr.d	$a6, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a6, $a2
	ld.w	$a6, $sp, 80
	and	$a1, $a3, $a1
	beqz	$a6, .LBB0_17
.LBB0_9:
	ld.w	$a3, $sp, 84
	ldptr.d	$a6, $a0, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$t2, $a6, $a3
	and	$a1, $a4, $a1
	beqz	$a5, .LBB0_18
.LBB0_10:
	ld.w	$a3, $sp, 60
	ldptr.d	$a4, $a0, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a4, $a3
	ld.w	$a3, $sp, 32
	and	$a7, $a2, $a1
	beqz	$a3, .LBB0_19
.LBB0_11:
	ld.w	$a1, $sp, 36
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	b	.LBB0_20
.LBB0_12:
	ld.w	$a7, $sp, 104
	ld.w	$t2, $sp, 80
	ld.w	$a2, $sp, 32
	b	.LBB0_20
.LBB0_13:
	move	$a1, $zero
	ld.w	$a2, $sp, 128
	bnez	$a2, .LBB0_6
.LBB0_14:
	move	$a3, $zero
	ld.w	$a2, $sp, 152
	bnez	$a2, .LBB0_7
.LBB0_15:
	move	$a4, $zero
	ld.w	$a2, $sp, 176
	bnez	$a2, .LBB0_8
.LBB0_16:
	move	$a2, $zero
	ld.w	$a6, $sp, 80
	and	$a1, $a3, $a1
	bnez	$a6, .LBB0_9
.LBB0_17:
	move	$t2, $zero
	and	$a1, $a4, $a1
	bnez	$a5, .LBB0_10
.LBB0_18:
	move	$a5, $zero
	ld.w	$a3, $sp, 32
	and	$a7, $a2, $a1
	bnez	$a3, .LBB0_11
.LBB0_19:
	move	$a2, $zero
.LBB0_20:
	st.w	$a7, $s1, 0
	st.w	$t2, $s0, 0
	sltu	$a0, $zero, $t2
	sltu	$a1, $zero, $a7
	and	$a6, $a0, $a1
	sltu	$a0, $zero, $a2
	and	$a0, $a6, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$t2, .LBB0_22
# %bb.21:
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
	b	.LBB0_23
.LBB0_22:
	ld.d	$a0, $s7, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3224
	ldx.h	$a0, $a0, $a1
	move	$a1, $a0
	move	$a3, $a0
	move	$a4, $a0
.LBB0_23:
	move	$t7, $a0
	move	$fp, $a0
	move	$s0, $a0
	move	$s1, $a0
	beqz	$a5, .LBB0_25
# %bb.24:
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
.LBB0_25:
	beqz	$a7, .LBB0_28
# %bb.26:
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
	beqz	$a2, .LBB0_29
.LBB0_27:
	ld.w	$a5, $sp, 52
	slli.d	$a5, $a5, 3
	ld.w	$t5, $sp, 48
	ldx.d	$a5, $s8, $a5
	slli.d	$t5, $t5, 1
	ldx.hu	$a2, $a5, $t5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a5, $s7, 0
	b	.LBB0_30
.LBB0_28:
	ld.d	$a5, $s7, 0
	lu12i.w	$t0, 3
	ori	$t0, $t0, 3224
	ldx.h	$t3, $a5, $t0
	move	$t1, $t3
	move	$t0, $t3
	move	$t4, $t3
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bnez	$a2, .LBB0_27
.LBB0_29:
	ld.d	$a5, $s7, 0
	lu12i.w	$t5, 3
	ori	$t5, $t5, 3224
	ldx.h	$a2, $a5, $t5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
.LBB0_30:
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
	beqz	$a6, .LBB0_32
# %bb.31:
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
	b	.LBB0_40
.LBB0_32:
	bnez	$t2, .LBB0_35
# %bb.33:
	beqz	$a7, .LBB0_35
# %bb.34:
	bstrpick.d	$t5, $t0, 15, 0
	bstrpick.d	$s3, $t1, 15, 0
	bstrpick.d	$s4, $t3, 15, 0
	bstrpick.d	$s5, $t4, 15, 0
	b	.LBB0_38
.LBB0_35:
	beqz	$t2, .LBB0_39
# %bb.36:
	bnez	$a7, .LBB0_39
# %bb.37:
	bstrpick.d	$t5, $a4, 15, 0
	bstrpick.d	$s3, $a3, 15, 0
	bstrpick.d	$s4, $a1, 15, 0
	bstrpick.d	$s5, $a0, 15, 0
.LBB0_38:                               # %.preheader
	add.d	$s4, $s5, $s4
	add.d	$s3, $s4, $s3
	add.d	$t5, $s3, $t5
	addi.d	$t5, $t5, 2
	srli.d	$s3, $t5, 2
	b	.LBB0_40
.LBB0_39:
	lu12i.w	$t5, 3
	ori	$t5, $t5, 3224
	ldx.w	$s3, $a5, $t5
.LBB0_40:                               # %.preheader
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
	bnez	$t2, .LBB0_42
# %bb.41:
	st.h	$t6, $a5, 208
.LBB0_42:
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
	bnez	$a7, .LBB0_44
# %bb.43:
	st.h	$t6, $a5, 720
.LBB0_44:
	addi.d	$t6, $s3, 211
	beqz	$t2, .LBB0_46
# %bb.45:
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
.LBB0_46:
	beqz	$a7, .LBB0_48
# %bb.47:
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
.LBB0_48:
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sltui	$a2, $a2, 1
	xori	$a6, $a6, 1
	or	$a2, $a6, $a2
	bnez	$a2, .LBB0_50
# %bb.49:
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
.LBB0_50:
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
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI1_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI1_4:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	8                               # 0x8
.LCPI1_5:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	9                               # 0x9
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_6:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	9                               # 0x9
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_7:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_8:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	9                               # 0x9
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_9:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	9                               # 0x9
	.half	65535                           # 0xffff
.LCPI1_10:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	9                               # 0x9
.LCPI1_11:
	.half	2                               # 0x2
	.half	10                              # 0xa
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_12:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI1_13:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	10                              # 0xa
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_14:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI1_15:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	10                              # 0xa
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_16:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI1_17:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	10                              # 0xa
.LCPI1_18:
	.half	3                               # 0x3
	.half	11                              # 0xb
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_19:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	11                              # 0xb
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_20:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_21:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	11                              # 0xb
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_22:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	11                              # 0xb
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_23:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	11                              # 0xb
	.half	65535                           # 0xffff
.LCPI1_24:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	11                              # 0xb
	.text
	.globl	intrapred_luma_16x16
	.p2align	5
	.type	intrapred_luma_16x16,@function
intrapred_luma_16x16:                   # @intrapred_luma_16x16
# %bb.0:
	addi.d	$sp, $sp, -1248
	st.d	$ra, $sp, 1240                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1176                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1168                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1160                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1152                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1144                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1136                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1128                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1120                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1112                 # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$s1, $a0, 6440
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.w	$fp, $a0, 12
	pcalau12i	$s3, %pc_hi20(getNeighbour)
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.w	$s0, $zero, -1
	addi.d	$a4, $sp, 648
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 672
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 720
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 744
	ori	$a2, $zero, 3
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 768
	ori	$a2, $zero, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 792
	ori	$a2, $zero, 5
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 816
	ori	$a2, $zero, 6
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 840
	ori	$a2, $zero, 7
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 864
	ori	$a2, $zero, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 888
	ori	$a2, $zero, 9
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 912
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 936
	ori	$a2, $zero, 11
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 960
	ori	$a2, $zero, 12
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 984
	ori	$a2, $zero, 13
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 1008
	ori	$a2, $zero, 14
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 1032
	ori	$a2, $zero, 15
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 1056
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 272
	ld.w	$a0, $sp, 1056
	beqz	$a1, .LBB1_22
# %bb.1:
	ld.d	$a1, $s2, 0
	beqz	$a0, .LBB1_27
# %bb.2:
	ld.w	$a0, $sp, 1060
	ldptr.d	$a2, $a1, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	ld.w	$a2, $sp, 672
	beqz	$a2, .LBB1_28
.LBB1_3:
	ld.w	$a2, $sp, 676
	ldptr.d	$a3, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.wu	$a2, $a3, $a2
	andi	$a2, $a2, 1
	ld.w	$a3, $sp, 696
	beqz	$a3, .LBB1_29
.LBB1_4:
	ld.w	$a3, $sp, 700
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 720
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_30
.LBB1_5:
	ld.w	$a3, $sp, 724
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 744
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_31
.LBB1_6:
	ld.w	$a3, $sp, 748
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 768
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_32
.LBB1_7:
	ld.w	$a3, $sp, 772
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 792
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_33
.LBB1_8:
	ld.w	$a3, $sp, 796
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 816
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_34
.LBB1_9:
	ld.w	$a3, $sp, 820
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 840
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_35
.LBB1_10:
	ld.w	$a3, $sp, 844
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 864
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_36
.LBB1_11:
	ld.w	$a3, $sp, 868
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 888
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_37
.LBB1_12:
	ld.w	$a3, $sp, 892
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 912
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_38
.LBB1_13:
	ld.w	$a3, $sp, 916
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 936
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_39
.LBB1_14:
	ld.w	$a3, $sp, 940
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 960
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_40
.LBB1_15:
	ld.w	$a3, $sp, 964
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 984
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_41
.LBB1_16:
	ld.w	$a3, $sp, 988
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 1008
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_42
.LBB1_17:
	ld.w	$a3, $sp, 1012
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 1032
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_43
.LBB1_18:
	ld.w	$a3, $sp, 1036
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 648
	and	$a3, $a3, $a2
	beqz	$a4, .LBB1_44
.LBB1_19:
	ld.w	$a2, $sp, 652
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	beqz	$a0, .LBB1_23
.LBB1_20:
	ld.w	$a2, $sp, 1076
	ld.w	$a5, $sp, 1072
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $s1, $a2
	alsl.d	$a6, $a5, $a4, 1
	slli.d	$a5, $a5, 1
	vldx	$vr0, $a4, $a5
	vld	$vr1, $a6, 16
	vrepli.b	$vr2, 0
	vilvl.h	$vr3, $vr2, $vr0
	vilvl.h	$vr4, $vr2, $vr1
	vilvh.h	$vr0, $vr2, $vr0
	vilvh.h	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr1, $vr3, $vr4
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	bnez	$a3, .LBB1_25
# %bb.21:
	vld	$vr0, $a6, 16
	move	$a3, $zero
	vldx	$vr1, $a4, $a5
	vst	$vr0, $sp, 1096
	addi.d	$a2, $a2, 8
	bstrpick.d	$a2, $a2, 31, 4
	vst	$vr1, $sp, 1080
	b	.LBB1_48
.LBB1_22:
	ld.w	$a3, $sp, 672
	ld.w	$a1, $sp, 648
	bnez	$a0, .LBB1_20
.LBB1_23:                               # %.thread125
	beqz	$a3, .LBB1_47
# %bb.24:
	move	$a2, $zero
.LBB1_25:                               # %.preheader137
	ld.w	$a3, $sp, 692
	ld.w	$a4, $sp, 688
	ld.w	$a5, $sp, 716
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s1, $a3
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 712
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 740
	ldx.hu	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 736
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 764
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 760
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 788
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 784
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 812
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 808
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 836
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 832
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 860
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 856
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 884
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 880
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 908
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 904
	ldx.d	$a5, $s1, $a5
	add.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 932
	slli.d	$a6, $a6, 1
	ldx.hu	$a5, $a5, $a6
	ld.w	$a6, $sp, 956
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	ld.w	$a7, $sp, 928
	slli.d	$a6, $a6, 3
	ld.w	$t0, $sp, 952
	ldx.d	$a6, $s1, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a4, $a4, $a7
	slli.d	$a7, $t0, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a3, $a3, $a5
	add.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 980
	add.d	$a3, $a3, $a6
	ld.w	$a5, $sp, 976
	ld.w	$a6, $sp, 1004
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 1000
	ldx.d	$a6, $s1, $a6
	ldx.hu	$a4, $a4, $a5
	ld.w	$a5, $sp, 1028
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	ld.w	$a7, $sp, 1052
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ld.w	$t0, $sp, 1024
	slli.d	$a7, $a7, 3
	ld.w	$t1, $sp, 1048
	ldx.d	$a7, $s1, $a7
	slli.d	$t0, $t0, 1
	ldx.hu	$a5, $a5, $t0
	slli.d	$t0, $t1, 1
	ldx.hu	$a7, $a7, $t0
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $a6
	add.d	$a3, $a3, $a5
	add.w	$a3, $a3, $a7
	beqz	$a0, .LBB1_45
# %bb.26:                               # %.thread
	ld.w	$a4, $sp, 1076
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	ld.w	$a5, $sp, 1072
	add.d	$a2, $a2, $a3
	alsl.d	$a3, $a5, $a4, 1
	slli.d	$a5, $a5, 1
	vldx	$vr0, $a4, $a5
	vld	$vr1, $a3, 16
	addi.d	$a2, $a2, 16
	bstrpick.d	$a2, $a2, 31, 5
	vst	$vr0, $sp, 1080
	vst	$vr1, $sp, 1096
	b	.LBB1_46
.LBB1_27:
	move	$a0, $zero
	ld.w	$a2, $sp, 672
	bnez	$a2, .LBB1_3
.LBB1_28:
	move	$a2, $zero
	ld.w	$a3, $sp, 696
	bnez	$a3, .LBB1_4
.LBB1_29:
	move	$a3, $zero
	ld.w	$a4, $sp, 720
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_5
.LBB1_30:
	move	$a3, $zero
	ld.w	$a4, $sp, 744
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_6
.LBB1_31:
	move	$a3, $zero
	ld.w	$a4, $sp, 768
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_7
.LBB1_32:
	move	$a3, $zero
	ld.w	$a4, $sp, 792
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_8
.LBB1_33:
	move	$a3, $zero
	ld.w	$a4, $sp, 816
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_9
.LBB1_34:
	move	$a3, $zero
	ld.w	$a4, $sp, 840
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_10
.LBB1_35:
	move	$a3, $zero
	ld.w	$a4, $sp, 864
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_11
.LBB1_36:
	move	$a3, $zero
	ld.w	$a4, $sp, 888
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_12
.LBB1_37:
	move	$a3, $zero
	ld.w	$a4, $sp, 912
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_13
.LBB1_38:
	move	$a3, $zero
	ld.w	$a4, $sp, 936
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_14
.LBB1_39:
	move	$a3, $zero
	ld.w	$a4, $sp, 960
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_15
.LBB1_40:
	move	$a3, $zero
	ld.w	$a4, $sp, 984
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_16
.LBB1_41:
	move	$a3, $zero
	ld.w	$a4, $sp, 1008
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_17
.LBB1_42:
	move	$a3, $zero
	ld.w	$a4, $sp, 1032
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_18
.LBB1_43:
	move	$a3, $zero
	ld.w	$a4, $sp, 648
	and	$a3, $a3, $a2
	bnez	$a4, .LBB1_19
.LBB1_44:
	move	$a1, $zero
	bnez	$a0, .LBB1_20
	b	.LBB1_23
.LBB1_45:
	addi.d	$a2, $a3, 8
	bstrpick.d	$a2, $a2, 31, 4
.LBB1_46:                               # %.preheader135
	ld.w	$a3, $sp, 692
	ld.w	$a4, $sp, 688
	ld.w	$a5, $sp, 716
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s1, $a3
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 712
	ldx.d	$a5, $s1, $a5
	ldx.hu	$s3, $a3, $a4
	ld.w	$a3, $sp, 740
	slli.d	$a4, $a6, 1
	ldx.hu	$s0, $a5, $a4
	ld.w	$a4, $sp, 736
	slli.d	$a3, $a3, 3
	ld.w	$a5, $sp, 764
	ldx.d	$a3, $s1, $a3
	slli.d	$a4, $a4, 1
	ld.w	$a6, $sp, 760
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ldx.hu	$fp, $a3, $a4
	slli.d	$a3, $a6, 1
	ld.w	$a4, $sp, 788
	ldx.hu	$t8, $a5, $a3
	ld.w	$a3, $sp, 784
	ld.w	$a5, $sp, 812
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	slli.d	$a3, $a3, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 808
	ldx.d	$a5, $s1, $a5
	ldx.hu	$t7, $a4, $a3
	ld.w	$a3, $sp, 836
	slli.d	$a4, $a6, 1
	ldx.hu	$t6, $a5, $a4
	ld.w	$a4, $sp, 832
	slli.d	$a3, $a3, 3
	ld.w	$a5, $sp, 860
	ldx.d	$a3, $s1, $a3
	slli.d	$a4, $a4, 1
	ld.w	$a6, $sp, 856
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ldx.hu	$t5, $a3, $a4
	slli.d	$a3, $a6, 1
	ld.w	$a4, $sp, 884
	ldx.hu	$t4, $a5, $a3
	ld.w	$a3, $sp, 880
	ld.w	$a5, $sp, 908
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	slli.d	$a3, $a3, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 904
	ldx.d	$a5, $s1, $a5
	ldx.hu	$t3, $a4, $a3
	ld.w	$a3, $sp, 932
	slli.d	$a4, $a6, 1
	ldx.hu	$t2, $a5, $a4
	ld.w	$a4, $sp, 928
	slli.d	$a3, $a3, 3
	ld.w	$a5, $sp, 956
	ldx.d	$a3, $s1, $a3
	slli.d	$a4, $a4, 1
	ld.w	$a6, $sp, 952
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ldx.hu	$t1, $a3, $a4
	slli.d	$a3, $a6, 1
	ld.w	$a4, $sp, 980
	ldx.hu	$t0, $a5, $a3
	ld.w	$a3, $sp, 976
	ld.w	$a5, $sp, 1004
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	slli.d	$a3, $a3, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 1000
	ldx.d	$a5, $s1, $a5
	ldx.hu	$a7, $a4, $a3
	ld.w	$a3, $sp, 1028
	slli.d	$a4, $a6, 1
	ldx.hu	$a6, $a5, $a4
	ld.w	$a4, $sp, 1052
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s1, $a3
	ld.w	$a5, $sp, 1024
	slli.d	$a4, $a4, 3
	ld.w	$s4, $sp, 1048
	ldx.d	$a4, $s1, $a4
	slli.d	$a5, $a5, 1
	ldx.hu	$a5, $a3, $a5
	slli.d	$a3, $s4, 1
	ldx.hu	$a4, $a4, $a3
	ori	$a3, $zero, 1
	b	.LBB1_49
.LBB1_47:                               # %.thread122
	ld.d	$a2, $s2, 0
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3224
	ldx.w	$a2, $a2, $a3
	move	$a3, $zero
.LBB1_48:                               # %.loopexit136
                                        # implicit-def: $r8
                                        # implicit-def: $r9
                                        # implicit-def: $r10
                                        # implicit-def: $r11
                                        # implicit-def: $r12
                                        # implicit-def: $r13
                                        # implicit-def: $r14
                                        # implicit-def: $r15
                                        # implicit-def: $r16
                                        # implicit-def: $r17
                                        # implicit-def: $r18
                                        # implicit-def: $r19
                                        # implicit-def: $r20
                                        # implicit-def: $r22
                                        # implicit-def: $r23
                                        # implicit-def: $r26
.LBB1_49:                               # %.loopexit136
	vreplgr2vr.h	$vr0, $a2
	ld.d	$s4, $s2, 0
	vld	$vr1, $sp, 1080
	lu12i.w	$a2, 1
	vld	$vr2, $sp, 1096
	ori	$s5, $a2, 720
	vstx	$vr1, $s4, $s5
	ori	$s5, $a2, 736
	vstx	$vr2, $s4, $s5
	vreplgr2vr.h	$vr3, $s3
	ori	$s3, $a2, 1232
	vstx	$vr3, $s4, $s3
	ori	$s3, $a2, 1744
	vstx	$vr0, $s4, $s3
	ori	$s3, $a2, 1248
	vstx	$vr3, $s4, $s3
	ori	$s3, $a2, 1760
	vstx	$vr0, $s4, $s3
	ori	$s3, $a2, 768
	vstx	$vr2, $s4, $s3
	ori	$s3, $a2, 752
	vstx	$vr1, $s4, $s3
	vreplgr2vr.h	$vr3, $s0
	ori	$s0, $a2, 1264
	vstx	$vr3, $s4, $s0
	ori	$s0, $a2, 1776
	vstx	$vr0, $s4, $s0
	ori	$s0, $a2, 1280
	vstx	$vr3, $s4, $s0
	ori	$s0, $a2, 1792
	vstx	$vr0, $s4, $s0
	ori	$s0, $a2, 800
	vstx	$vr2, $s4, $s0
	ori	$s0, $a2, 784
	ld.d	$s3, $s2, 0
	vstx	$vr1, $s4, $s0
	vreplgr2vr.h	$vr1, $fp
	ori	$fp, $a2, 1296
	vstx	$vr1, $s3, $fp
	ori	$fp, $a2, 1808
	vstx	$vr0, $s3, $fp
	ori	$fp, $a2, 1312
	vstx	$vr1, $s3, $fp
	ori	$fp, $a2, 1824
	vld	$vr1, $sp, 1096
	vstx	$vr0, $s3, $fp
	ori	$fp, $a2, 832
	vld	$vr2, $sp, 1080
	vstx	$vr1, $s3, $fp
	ori	$fp, $a2, 816
	ld.d	$s0, $s2, 0
	vstx	$vr2, $s3, $fp
	vreplgr2vr.h	$vr1, $t8
	ori	$t8, $a2, 1328
	vstx	$vr1, $s0, $t8
	ori	$t8, $a2, 1840
	vstx	$vr0, $s0, $t8
	ori	$t8, $a2, 1344
	vstx	$vr1, $s0, $t8
	ori	$t8, $a2, 1856
	vld	$vr1, $sp, 1096
	vstx	$vr0, $s0, $t8
	ori	$t8, $a2, 864
	vld	$vr2, $sp, 1080
	vstx	$vr1, $s0, $t8
	ori	$t8, $a2, 848
	ld.d	$fp, $s2, 0
	vstx	$vr2, $s0, $t8
	vreplgr2vr.h	$vr1, $t7
	ori	$t7, $a2, 1360
	vstx	$vr1, $fp, $t7
	ori	$t7, $a2, 1872
	vstx	$vr0, $fp, $t7
	ori	$t7, $a2, 1376
	vstx	$vr1, $fp, $t7
	ori	$t7, $a2, 1888
	vld	$vr1, $sp, 1096
	vstx	$vr0, $fp, $t7
	ori	$t7, $a2, 896
	vld	$vr2, $sp, 1080
	vstx	$vr1, $fp, $t7
	ori	$t7, $a2, 880
	ld.d	$t8, $s2, 0
	vstx	$vr2, $fp, $t7
	vreplgr2vr.h	$vr1, $t6
	ori	$t6, $a2, 1392
	vstx	$vr1, $t8, $t6
	ori	$t6, $a2, 1904
	vstx	$vr0, $t8, $t6
	ori	$t6, $a2, 1408
	vstx	$vr1, $t8, $t6
	ori	$t6, $a2, 1920
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t8, $t6
	ori	$t6, $a2, 928
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t8, $t6
	ori	$t6, $a2, 912
	ld.d	$t7, $s2, 0
	vstx	$vr2, $t8, $t6
	vreplgr2vr.h	$vr1, $t5
	ori	$t5, $a2, 1424
	vstx	$vr1, $t7, $t5
	ori	$t5, $a2, 1936
	vstx	$vr0, $t7, $t5
	ori	$t5, $a2, 1440
	vstx	$vr1, $t7, $t5
	ori	$t5, $a2, 1952
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t7, $t5
	ori	$t5, $a2, 960
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t7, $t5
	ori	$t5, $a2, 944
	ld.d	$t6, $s2, 0
	vstx	$vr2, $t7, $t5
	vreplgr2vr.h	$vr1, $t4
	ori	$t4, $a2, 1456
	vstx	$vr1, $t6, $t4
	ori	$t4, $a2, 1968
	vstx	$vr0, $t6, $t4
	ori	$t4, $a2, 1472
	vstx	$vr1, $t6, $t4
	ori	$t4, $a2, 1984
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t6, $t4
	ori	$t4, $a2, 992
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t6, $t4
	ori	$t4, $a2, 976
	ld.d	$t5, $s2, 0
	vstx	$vr2, $t6, $t4
	vreplgr2vr.h	$vr1, $t3
	ori	$t3, $a2, 1488
	vstx	$vr1, $t5, $t3
	ori	$t3, $a2, 2000
	vstx	$vr0, $t5, $t3
	ori	$t3, $a2, 1504
	vstx	$vr1, $t5, $t3
	ori	$t3, $a2, 2016
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t5, $t3
	ori	$t3, $a2, 1024
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t5, $t3
	ori	$t3, $a2, 1008
	ld.d	$t4, $s2, 0
	vstx	$vr2, $t5, $t3
	vreplgr2vr.h	$vr1, $t2
	ori	$t2, $a2, 1520
	vstx	$vr1, $t4, $t2
	ori	$t2, $a2, 2032
	vstx	$vr0, $t4, $t2
	ori	$t2, $a2, 1536
	vstx	$vr1, $t4, $t2
	ori	$t2, $a2, 2048
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t4, $t2
	ori	$t2, $a2, 1056
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t4, $t2
	ori	$t2, $a2, 1040
	ld.d	$t3, $s2, 0
	vstx	$vr2, $t4, $t2
	vreplgr2vr.h	$vr1, $t1
	ori	$t1, $a2, 1552
	vstx	$vr1, $t3, $t1
	ori	$t1, $a2, 2064
	vstx	$vr0, $t3, $t1
	ori	$t1, $a2, 1568
	vstx	$vr1, $t3, $t1
	ori	$t1, $a2, 2080
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t3, $t1
	ori	$t1, $a2, 1088
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t3, $t1
	ori	$t1, $a2, 1072
	ld.d	$t2, $s2, 0
	vstx	$vr2, $t3, $t1
	vreplgr2vr.h	$vr1, $t0
	ori	$t0, $a2, 1584
	vstx	$vr1, $t2, $t0
	ori	$t0, $a2, 2096
	vstx	$vr0, $t2, $t0
	ori	$t0, $a2, 1600
	vstx	$vr1, $t2, $t0
	ori	$t0, $a2, 2112
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t2, $t0
	ori	$t0, $a2, 1120
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t2, $t0
	ori	$t0, $a2, 1104
	ld.d	$t1, $s2, 0
	vstx	$vr2, $t2, $t0
	vreplgr2vr.h	$vr1, $a7
	ori	$a7, $a2, 1616
	vstx	$vr1, $t1, $a7
	ori	$a7, $a2, 2128
	vstx	$vr0, $t1, $a7
	ori	$a7, $a2, 1632
	vstx	$vr1, $t1, $a7
	ori	$a7, $a2, 2144
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t1, $a7
	ori	$a7, $a2, 1152
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t1, $a7
	ori	$a7, $a2, 1136
	ld.d	$t0, $s2, 0
	vstx	$vr2, $t1, $a7
	vreplgr2vr.h	$vr1, $a6
	ori	$a6, $a2, 1648
	vstx	$vr1, $t0, $a6
	ori	$a6, $a2, 2160
	vstx	$vr0, $t0, $a6
	ori	$a6, $a2, 1664
	vstx	$vr1, $t0, $a6
	ori	$a6, $a2, 2176
	vld	$vr1, $sp, 1096
	vstx	$vr0, $t0, $a6
	ori	$a6, $a2, 1184
	vld	$vr2, $sp, 1080
	vstx	$vr1, $t0, $a6
	ori	$a6, $a2, 1168
	ld.d	$a7, $s2, 0
	vstx	$vr2, $t0, $a6
	vreplgr2vr.h	$vr1, $a5
	ori	$a5, $a2, 1680
	vstx	$vr1, $a7, $a5
	ori	$a5, $a2, 2192
	vstx	$vr0, $a7, $a5
	ori	$a5, $a2, 1696
	vstx	$vr1, $a7, $a5
	ori	$a5, $a2, 2208
	vld	$vr1, $sp, 1096
	vstx	$vr0, $a7, $a5
	ori	$a5, $a2, 1216
	vld	$vr2, $sp, 1080
	vstx	$vr1, $a7, $a5
	ori	$a6, $a2, 1200
	ld.d	$a5, $s2, 0
	vstx	$vr2, $a7, $a6
	vreplgr2vr.h	$vr1, $a4
	ori	$a4, $a2, 1712
	vstx	$vr1, $a5, $a4
	ori	$a4, $a2, 2224
	vstx	$vr0, $a5, $a4
	ori	$a4, $a2, 1728
	vstx	$vr1, $a5, $a4
	ori	$a4, $a2, 2240
	vstx	$vr0, $a5, $a4
	beqz	$a0, .LBB1_54
# %bb.50:                               # %.loopexit136
	beqz	$a3, .LBB1_54
# %bb.51:                               # %.loopexit136
	beqz	$a1, .LBB1_54
# %bb.52:                               # %vector.ph
	move	$a0, $zero
	ld.w	$a3, $sp, 1076
	ori	$a1, $a2, 2256
	add.d	$a1, $a5, $a1
	ld.w	$a2, $sp, 668
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s1, $a3
	ld.w	$a4, $sp, 1072
	slli.d	$a2, $a2, 3
	ld.w	$a6, $sp, 664
	ldx.d	$a2, $s1, $a2
	alsl.d	$a7, $a4, $a3, 1
	ld.hu	$t3, $a7, 30
	slli.d	$a6, $a6, 1
	ldx.hu	$t4, $a2, $a6
	slli.d	$a2, $a4, 1
	ld.hu	$a4, $a7, 28
	ldx.hu	$a2, $a3, $a2
	sub.d	$a3, $t3, $t4
	ld.hu	$a6, $a7, 26
	ld.hu	$t0, $a7, 2
	sub.d	$a2, $a4, $a2
	slli.d	$a4, $a2, 3
	sub.d	$a2, $a4, $a2
	sub.d	$a4, $a6, $t0
	ori	$t6, $zero, 6
	ld.hu	$a6, $a7, 24
	ld.hu	$t0, $a7, 4
	ld.hu	$t1, $a7, 22
	ld.hu	$t2, $a7, 6
	mul.d	$a4, $a4, $t6
	sub.d	$a6, $a6, $t0
	alsl.d	$a6, $a6, $a6, 2
	sub.d	$t0, $t1, $t2
	ld.hu	$t1, $a7, 20
	ld.hu	$t2, $a7, 8
	ld.hu	$t5, $a7, 18
	ld.hu	$t7, $a7, 10
	ld.hu	$t8, $a7, 16
	ld.hu	$a7, $a7, 12
	sub.d	$t1, $t1, $t2
	alsl.d	$t1, $t1, $t1, 1
	sub.d	$t2, $t5, $t7
	sub.d	$a7, $t8, $a7
	alsl.d	$a7, $t2, $a7, 1
	add.d	$a7, $t1, $a7
	alsl.d	$a7, $t0, $a7, 2
	add.d	$a6, $a6, $a7
	add.d	$a4, $a4, $a6
	add.w	$a2, $a2, $a4
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a2, $a2, $a2, 2
	addi.w	$a2, $a2, 32
	srai.d	$a6, $a2, 6
	ld.w	$a7, $sp, 1052
	slli.d	$a3, $a6, 3
	sub.d	$a4, $a3, $a6
	mul.d	$a2, $a6, $t6
	slli.d	$a7, $a7, 3
	ld.w	$t1, $sp, 1048
	ldx.d	$t2, $s1, $a7
	slli.d	$t0, $a6, 2
	slli.d	$a7, $a6, 1
	slli.d	$t1, $t1, 1
	ldx.hu	$t5, $t2, $t1
	alsl.d	$t1, $a6, $a6, 1
	sub.d	$t2, $zero, $t1
	ld.w	$t7, $sp, 1028
	add.d	$t3, $t5, $t3
	lu12i.w	$t8, 3
	ld.w	$fp, $sp, 692
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $s1, $t7
	ld.w	$s0, $sp, 1024
	slli.d	$fp, $fp, 3
	ld.w	$s2, $sp, 688
	ldx.d	$fp, $s1, $fp
	slli.d	$s0, $s0, 1
	ldx.hu	$t7, $t7, $s0
	slli.d	$s0, $s2, 1
	ldx.hu	$fp, $fp, $s0
	ori	$t8, $t8, 3232
	add.d	$a5, $a5, $t8
	sub.d	$t4, $t5, $t4
	sub.d	$t5, $t7, $fp
	slli.d	$t7, $t5, 3
	ld.w	$t8, $sp, 1004
	sub.d	$t5, $t7, $t5
	ld.w	$t7, $sp, 1000
	ld.w	$fp, $sp, 716
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s1, $t8
	slli.d	$t7, $t7, 1
	slli.d	$fp, $fp, 3
	ld.w	$s0, $sp, 712
	ldx.d	$fp, $s1, $fp
	ldx.hu	$t7, $t8, $t7
	ld.w	$t8, $sp, 980
	slli.d	$s0, $s0, 1
	ldx.hu	$fp, $fp, $s0
	ld.w	$s0, $sp, 740
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s1, $t8
	ld.w	$s2, $sp, 976
	slli.d	$s0, $s0, 3
	ld.w	$s3, $sp, 736
	ldx.d	$s0, $s1, $s0
	slli.d	$s2, $s2, 1
	ldx.hu	$t8, $t8, $s2
	slli.d	$s2, $s3, 1
	ldx.hu	$s0, $s0, $s2
	sub.d	$t7, $t7, $fp
	mul.d	$t6, $t7, $t6
	ld.w	$fp, $sp, 956
	sub.d	$t7, $t8, $s0
	ld.w	$t8, $sp, 952
	ld.w	$s0, $sp, 764
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $s1, $fp
	slli.d	$t8, $t8, 1
	slli.d	$s0, $s0, 3
	ld.w	$s2, $sp, 760
	ldx.d	$s0, $s1, $s0
	ldx.hu	$t8, $fp, $t8
	ld.w	$fp, $sp, 932
	slli.d	$s2, $s2, 1
	ldx.hu	$s0, $s0, $s2
	ld.w	$s2, $sp, 928
	slli.d	$fp, $fp, 3
	ld.w	$s3, $sp, 788
	ldx.d	$fp, $s1, $fp
	slli.d	$s2, $s2, 1
	ld.w	$s4, $sp, 784
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $s1, $s3
	ldx.hu	$fp, $fp, $s2
	slli.d	$s2, $s4, 1
	ld.w	$s4, $sp, 908
	ldx.hu	$s2, $s3, $s2
	ld.w	$s3, $sp, 904
	ld.w	$s5, $sp, 812
	slli.d	$s4, $s4, 3
	ldx.d	$s4, $s1, $s4
	slli.d	$s3, $s3, 1
	slli.d	$s5, $s5, 3
	ld.w	$s6, $sp, 808
	ldx.d	$s5, $s1, $s5
	ldx.hu	$s3, $s4, $s3
	alsl.d	$s4, $a6, $a6, 2
	slli.d	$s6, $s6, 1
	ldx.hu	$s5, $s5, $s6
	ld.w	$s6, $sp, 884
	sub.d	$t8, $t8, $s0
	sub.d	$fp, $fp, $s2
	sub.d	$s0, $s3, $s5
	slli.d	$s2, $s6, 3
	ld.w	$s3, $sp, 880
	ldx.d	$s2, $s1, $s2
	ld.w	$s5, $sp, 836
	sub.d	$s6, $zero, $s4
	slli.d	$s3, $s3, 1
	ldx.hu	$s2, $s2, $s3
	slli.d	$s3, $s5, 3
	ld.w	$s5, $sp, 832
	ldx.d	$s1, $s1, $s3
	addi.d	$s3, $zero, -6
	mul.d	$s3, $a6, $s3
	slli.d	$s5, $s5, 1
	ldx.hu	$s1, $s1, $s5
	sub.d	$s5, $a6, $a3
	slli.d	$t3, $t3, 4
	addi.d	$t3, $t3, 16
	alsl.d	$t7, $t7, $t7, 2
	alsl.d	$fp, $fp, $fp, 1
	sub.d	$s1, $s2, $s1
	alsl.d	$s0, $s0, $s1, 1
	add.d	$fp, $fp, $s0
	alsl.d	$t8, $t8, $fp, 2
	add.d	$t7, $t7, $t8
	add.d	$t6, $t6, $t7
	add.w	$t5, $t5, $t6
	alsl.d	$t4, $t4, $t5, 3
	alsl.d	$t4, $t4, $t4, 2
	addi.w	$t4, $t4, 32
	srai.d	$t4, $t4, 6
	vreplgr2vr.w	$vr0, $a6
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $t4
	vst	$vr0, $sp, 464                  # 16-byte Folded Spill
	vldrepl.w	$vr2, $a5, 0
	vreplgr2vr.w	$vr0, $t3
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $s5
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $s3
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $s6
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $t0
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $t2
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a7
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $t1
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $s4
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a2
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	vld	$vr19, $a2, %pc_lo12(.LCPI1_0)
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_1)
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_2)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_2)
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_3)
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_5)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_5)
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_6)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_6)
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_7)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_7)
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_8)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_8)
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_9)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_9)
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_10)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_10)
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_11)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_11)
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_12)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_12)
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_13)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_13)
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_14)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_14)
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_15)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_15)
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_16)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_16)
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_17)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_17)
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI1_18)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_18)
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(.LCPI1_19)
	pcalau12i	$a6, %pc_hi20(.LCPI1_20)
	pcalau12i	$a7, %pc_hi20(.LCPI1_21)
	pcalau12i	$t0, %pc_hi20(.LCPI1_22)
	pcalau12i	$t1, %pc_hi20(.LCPI1_23)
	pcalau12i	$t2, %pc_hi20(.LCPI1_24)
	ori	$a2, $zero, 512
	vld	$vr0, $a5, %pc_lo12(.LCPI1_19)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vld	$vr0, $a6, %pc_lo12(.LCPI1_20)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vld	$vr0, $a7, %pc_lo12(.LCPI1_21)
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vld	$vr0, $t0, %pc_lo12(.LCPI1_22)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vld	$vr0, $t1, %pc_lo12(.LCPI1_23)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vld	$vr0, $t2, %pc_lo12(.LCPI1_24)
	vst	$vr0, $sp, 496                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a4
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a3
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vrepli.w	$vr0, -7
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB1_53:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr8, $vr19, $vr0
	vld	$vr10, $sp, 448                 # 16-byte Folded Reload
	vld	$vr9, $sp, 464                  # 16-byte Folded Reload
	vmadd.w	$vr10, $vr8, $vr9
	vld	$vr8, $sp, 432                  # 16-byte Folded Reload
	vadd.w	$vr8, $vr10, $vr8
	vsrai.w	$vr8, $vr8, 5
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr8, $vr8, $vr2
	vpickev.h	$vr23, $vr8, $vr8
	vld	$vr8, $sp, 416                  # 16-byte Folded Reload
	vadd.w	$vr8, $vr10, $vr8
	vsrai.w	$vr8, $vr8, 5
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr8, $vr8, $vr2
	vpickev.h	$vr30, $vr8, $vr8
	vld	$vr8, $sp, 400                  # 16-byte Folded Reload
	vadd.w	$vr8, $vr10, $vr8
	vsrai.w	$vr8, $vr8, 5
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr8, $vr8, $vr2
	vpickev.h	$vr17, $vr8, $vr8
	vld	$vr0, $sp, 624                  # 16-byte Folded Reload
	vsub.w	$vr8, $vr10, $vr0
	vsrai.w	$vr8, $vr8, 5
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr8, $vr8, $vr2
	vpickev.h	$vr8, $vr8, $vr8
	vld	$vr9, $sp, 384                  # 16-byte Folded Reload
	vadd.w	$vr9, $vr10, $vr9
	vsrai.w	$vr9, $vr9, 5
	vmaxi.w	$vr9, $vr9, 0
	vmin.w	$vr9, $vr9, $vr2
	vpickev.h	$vr9, $vr9, $vr9
	vld	$vr22, $sp, 368                 # 16-byte Folded Reload
	vsub.w	$vr14, $vr10, $vr22
	vsrai.w	$vr14, $vr14, 5
	vmaxi.w	$vr14, $vr14, 0
	vmin.w	$vr14, $vr14, $vr2
	vpickev.h	$vr14, $vr14, $vr14
	vld	$vr20, $sp, 480                 # 16-byte Folded Reload
	vsub.w	$vr15, $vr10, $vr20
	vsrai.w	$vr15, $vr15, 5
	vmaxi.w	$vr15, $vr15, 0
	vmin.w	$vr15, $vr15, $vr2
	vpickev.h	$vr15, $vr15, $vr15
	vpackev.h	$vr16, $vr30, $vr23
	vld	$vr4, $sp, 224                  # 16-byte Folded Reload
	vori.b	$vr24, $vr4, 0
	vshuf.h	$vr24, $vr30, $vr23
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vori.b	$vr31, $vr0, 0
	vshuf.h	$vr31, $vr30, $vr23
	vpackod.h	$vr23, $vr30, $vr23
	vld	$vr27, $sp, 288                 # 16-byte Folded Reload
	vori.b	$vr30, $vr27, 0
	vshuf.h	$vr30, $vr17, $vr23
	vld	$vr5, $sp, 208                  # 16-byte Folded Reload
	vori.b	$vr25, $vr5, 0
	vshuf.w	$vr25, $vr17, $vr24
	vld	$vr1, $sp, 128                  # 16-byte Folded Reload
	vori.b	$vr24, $vr1, 0
	vshuf.h	$vr24, $vr17, $vr31
	vsrai.w	$vr23, $vr10, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vpickev.h	$vr31, $vr23, $vr23
	vpackev.w	$vr16, $vr17, $vr16
	vld	$vr12, $sp, 304                 # 16-byte Folded Reload
	vori.b	$vr17, $vr12, 0
	vshuf.h	$vr17, $vr8, $vr16
	vpackev.d	$vr16, $vr9, $vr17
	vld	$vr17, $sp, 608                 # 16-byte Folded Reload
	vshuf.h	$vr17, $vr14, $vr16
	vld	$vr16, $sp, 592                 # 16-byte Folded Reload
	vshuf.w	$vr16, $vr15, $vr17
	vld	$vr17, $sp, 576                 # 16-byte Folded Reload
	vshuf.h	$vr17, $vr31, $vr16
	vld	$vr28, $sp, 272                 # 16-byte Folded Reload
	vori.b	$vr16, $vr28, 0
	vshuf.h	$vr16, $vr8, $vr30
	vld	$vr29, $sp, 256                 # 16-byte Folded Reload
	vori.b	$vr23, $vr29, 0
	vshuf.h	$vr23, $vr9, $vr16
	vld	$vr18, $sp, 240                 # 16-byte Folded Reload
	vori.b	$vr16, $vr18, 0
	vshuf.h	$vr16, $vr14, $vr23
	vld	$vr30, $sp, 560                 # 16-byte Folded Reload
	vshuf.h	$vr30, $vr15, $vr16
	vld	$vr23, $sp, 544                 # 16-byte Folded Reload
	vshuf.h	$vr23, $vr31, $vr30
	vld	$vr6, $sp, 192                  # 16-byte Folded Reload
	vori.b	$vr16, $vr6, 0
	vshuf.h	$vr16, $vr8, $vr25
	vld	$vr3, $sp, 176                  # 16-byte Folded Reload
	vori.b	$vr25, $vr3, 0
	vshuf.w	$vr25, $vr9, $vr16
	vld	$vr7, $sp, 160                  # 16-byte Folded Reload
	vori.b	$vr16, $vr7, 0
	vshuf.h	$vr16, $vr14, $vr25
	vld	$vr25, $sp, 528                 # 16-byte Folded Reload
	vshuf.w	$vr25, $vr15, $vr16
	vld	$vr30, $sp, 512                 # 16-byte Folded Reload
	vshuf.h	$vr30, $vr31, $vr25
	vld	$vr13, $sp, 112                 # 16-byte Folded Reload
	vori.b	$vr16, $vr13, 0
	vshuf.h	$vr16, $vr8, $vr24
	vld	$vr26, $sp, 96                  # 16-byte Folded Reload
	vori.b	$vr8, $vr26, 0
	vshuf.h	$vr8, $vr9, $vr16
	vld	$vr21, $sp, 80                  # 16-byte Folded Reload
	vori.b	$vr9, $vr21, 0
	vshuf.h	$vr9, $vr14, $vr8
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vori.b	$vr14, $vr11, 0
	vshuf.h	$vr14, $vr15, $vr9
	vld	$vr8, $sp, 496                  # 16-byte Folded Reload
	vshuf.h	$vr8, $vr31, $vr14
	vadd.w	$vr9, $vr10, $vr20
	vsrai.w	$vr9, $vr9, 5
	vmaxi.w	$vr9, $vr9, 0
	vmin.w	$vr9, $vr9, $vr2
	vpickev.h	$vr14, $vr9, $vr9
	vadd.w	$vr9, $vr10, $vr22
	vsrai.w	$vr9, $vr9, 5
	vmaxi.w	$vr9, $vr9, 0
	vmin.w	$vr9, $vr9, $vr2
	vpickev.h	$vr15, $vr9, $vr9
	vld	$vr9, $sp, 352                  # 16-byte Folded Reload
	vadd.w	$vr9, $vr10, $vr9
	vsrai.w	$vr9, $vr9, 5
	vmaxi.w	$vr9, $vr9, 0
	vmin.w	$vr9, $vr9, $vr2
	vpickev.h	$vr9, $vr9, $vr9
	vpackev.h	$vr16, $vr15, $vr14
	vshuf.h	$vr4, $vr15, $vr14
	vshuf.h	$vr0, $vr15, $vr14
	vpackod.h	$vr14, $vr15, $vr14
	vshuf.h	$vr27, $vr9, $vr14
	vshuf.w	$vr5, $vr9, $vr4
	vshuf.h	$vr1, $vr9, $vr0
	vld	$vr0, $sp, 624                  # 16-byte Folded Reload
	vadd.w	$vr25, $vr10, $vr0
	vsrai.w	$vr25, $vr25, 5
	vmaxi.w	$vr25, $vr25, 0
	vmin.w	$vr25, $vr25, $vr2
	vpickev.h	$vr25, $vr25, $vr25
	vpackev.w	$vr9, $vr9, $vr16
	vshuf.h	$vr12, $vr25, $vr9
	vshuf.h	$vr28, $vr25, $vr27
	vshuf.h	$vr6, $vr25, $vr5
	vshuf.h	$vr13, $vr25, $vr1
	vld	$vr20, $sp, 336                 # 16-byte Folded Reload
	vadd.w	$vr24, $vr10, $vr20
	vsrai.w	$vr24, $vr24, 5
	vmaxi.w	$vr24, $vr24, 0
	vmin.w	$vr24, $vr24, $vr2
	vpickev.h	$vr24, $vr24, $vr24
	vshuf.h	$vr29, $vr24, $vr28
	vshuf.w	$vr3, $vr24, $vr6
	vshuf.h	$vr26, $vr24, $vr13
	vld	$vr14, $sp, 320                 # 16-byte Folded Reload
	vadd.w	$vr14, $vr10, $vr14
	vsrai.w	$vr14, $vr14, 5
	vmaxi.w	$vr14, $vr14, 0
	vmin.w	$vr14, $vr14, $vr2
	vpickev.h	$vr14, $vr14, $vr14
	vpackev.d	$vr16, $vr24, $vr12
	vld	$vr24, $sp, 608                 # 16-byte Folded Reload
	vshuf.h	$vr24, $vr14, $vr16
	vshuf.h	$vr18, $vr14, $vr29
	vshuf.h	$vr7, $vr14, $vr3
	vshuf.h	$vr21, $vr14, $vr26
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vadd.w	$vr14, $vr10, $vr0
	vsrai.w	$vr14, $vr14, 5
	vmaxi.w	$vr14, $vr14, 0
	vmin.w	$vr14, $vr14, $vr2
	vpickev.h	$vr14, $vr14, $vr14
	vld	$vr15, $sp, 592                 # 16-byte Folded Reload
	vshuf.w	$vr15, $vr14, $vr24
	vld	$vr24, $sp, 560                 # 16-byte Folded Reload
	vshuf.h	$vr24, $vr14, $vr18
	vld	$vr16, $sp, 528                 # 16-byte Folded Reload
	vshuf.w	$vr16, $vr14, $vr7
	vshuf.h	$vr11, $vr14, $vr21
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vadd.w	$vr9, $vr10, $vr0
	vsrai.w	$vr9, $vr9, 5
	vmaxi.w	$vr9, $vr9, 0
	vmin.w	$vr9, $vr9, $vr2
	vpickev.h	$vr9, $vr9, $vr9
	vld	$vr10, $sp, 576                 # 16-byte Folded Reload
	vshuf.h	$vr10, $vr9, $vr15
	vld	$vr14, $sp, 544                 # 16-byte Folded Reload
	vshuf.h	$vr14, $vr9, $vr24
	vld	$vr15, $sp, 512                 # 16-byte Folded Reload
	vshuf.h	$vr15, $vr9, $vr16
	vld	$vr16, $sp, 496                 # 16-byte Folded Reload
	vshuf.h	$vr16, $vr9, $vr11
	vstx	$vr17, $a1, $a0
	add.d	$a3, $a1, $a0
	vst	$vr23, $a3, 32
	vst	$vr30, $a3, 64
	vst	$vr8, $a3, 96
	vst	$vr10, $a3, 16
	vst	$vr14, $a3, 48
	vst	$vr15, $a3, 80
	vst	$vr16, $a3, 112
	addi.d	$a0, $a0, 128
	vaddi.wu	$vr19, $vr19, 4
	bne	$a0, $a2, .LBB1_53
.LBB1_54:                               # %.loopexit
	fld.d	$fs7, $sp, 1112                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1128                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1136                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1144                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1152                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1160                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1168                 # 8-byte Folded Reload
	ld.d	$s6, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1240                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1248
	ret
.Lfunc_end1:
	.size	intrapred_luma_16x16, .Lfunc_end1-intrapred_luma_16x16
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dct_luma_16x16
.LCPI2_0:
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI2_1:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI2_2:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI2_3:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	6                               # 0x6
.LCPI2_4:
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	6                               # 0x6
	.text
	.globl	dct_luma_16x16
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
	ld.d	$a2, $a1, 0
	ld.w	$a4, $a2, 12
	ldptr.d	$a1, $a2, 14224
	ori	$a3, $zero, 536
	mul.d	$a3, $a4, $a3
	add.d	$a6, $a1, $a3
	ldptr.d	$a1, $a2, 14168
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3164
	ldx.w	$a3, $a2, $a3
	ld.w	$a4, $a6, 8
	ld.d	$a5, $a1, 0
	sub.w	$a1, $zero, $a3
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	bne	$a4, $a1, .LBB2_2
# %bb.1:
	ldptr.w	$a1, $a2, 15540
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
.LBB2_2:
	ld.d	$a1, $a5, 0
	ld.d	$fp, $a5, 8
	ld.w	$t1, $a6, 428
	pcalau12i	$a5, %got_pc_hi20(qp_per_matrix)
	ld.d	$a5, $a5, %got_pc_lo12(qp_per_matrix)
	ld.d	$a5, $a5, 0
	add.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a5, $a3
	pcalau12i	$a4, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a4, $a4, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a4, $a4, 0
	ldx.w	$a3, $a4, $a3
	pcalau12i	$a4, %got_pc_hi20(LevelScale4x4Luma)
	ld.d	$a4, $a4, %got_pc_lo12(LevelScale4x4Luma)
	ld.d	$a4, $a4, 0
	ld.d	$a4, $a4, 8
	slli.d	$a3, $a3, 3
	ldx.d	$t2, $a4, $a3
	pcalau12i	$a4, %got_pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a4, $a4, %got_pc_lo12(InvLevelScale4x4Luma)
	ld.d	$a4, $a4, 0
	ld.d	$a4, $a4, 8
	ldx.d	$t3, $a4, $a3
	pcalau12i	$a3, %got_pc_hi20(LevelOffset4x4Luma)
	ld.d	$a3, $a3, %got_pc_lo12(LevelOffset4x4Luma)
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 8
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a4, $a5, 3
	ldx.d	$t4, $a3, $a4
	ld.w	$a4, $a2, 196
	pcalau12i	$a3, %pc_hi20(imgY_org)
	ld.d	$a5, $a3, %pc_lo12(imgY_org)
	ld.w	$a3, $a2, 192
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a6, $a0, 9
	add.d	$a6, $a6, $a2
	lu12i.w	$t0, 1
	ori	$a7, $t0, 720
	add.d	$a0, $a6, $a7
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a4, $a4, $a5, 3
	ori	$a5, $t0, 736
	add.d	$a5, $a6, $a5
	pcalau12i	$a6, %pc_hi20(dct_luma_16x16.M1)
	addi.d	$a0, $a6, %pc_lo12(dct_luma_16x16.M1)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a6, $a0, 32
	pcalau12i	$a7, %pc_hi20(dct_luma_16x16.M0)
	addi.d	$s7, $a7, %pc_lo12(dct_luma_16x16.M0)
	move	$a7, $zero
	slli.d	$t0, $a3, 1
	vrepli.b	$vr0, 0
	ori	$t5, $zero, 16
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	andi	$t6, $a7, 3
	ld.d	$t7, $a4, 0
	slli.d	$t8, $a7, 6
	bstrpick.d	$t8, $t8, 37, 8
	slli.d	$t8, $t8, 8
	add.d	$t8, $s7, $t8
	alsl.d	$s0, $t6, $t8, 4
	vldx	$vr1, $t7, $t0
	slli.d	$t6, $t6, 4
	vld	$vr2, $a5, -16
	alsl.d	$t7, $a3, $t7, 1
	vilvl.h	$vr3, $vr0, $vr1
	vilvh.h	$vr1, $vr0, $vr1
	vilvl.h	$vr4, $vr0, $vr2
	vilvh.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vsub.w	$vr2, $vr3, $vr4
	vstx	$vr2, $t8, $t6
	vst	$vr1, $a6, -16
	vld	$vr3, $t7, 16
	vst	$vr2, $a6, -32
	vld	$vr2, $a5, 0
	vst	$vr1, $s0, 64
	vilvl.h	$vr1, $vr0, $vr3
	vilvh.h	$vr3, $vr0, $vr3
	vilvl.h	$vr4, $vr0, $vr2
	vilvh.h	$vr2, $vr0, $vr2
	vsub.w	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr4
	vst	$vr1, $s0, 128
	vst	$vr2, $a6, 16
	vst	$vr1, $a6, 0
	vst	$vr2, $s0, 192
	addi.d	$a7, $a7, 1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 64
	bne	$a7, $t5, .LBB2_3
# %bb.4:
	sltui	$a0, $t1, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN)
	maskeqz	$a0, $a4, $a0
	or	$t5, $a0, $a3
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$t6, $t1, 15
	pcalau12i	$a0, %pc_hi20(dct_luma_16x16.M4)
	addi.d	$t7, $a0, %pc_lo12(dct_luma_16x16.M4)
	addi.d	$a0, $t1, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_11
# %bb.5:                                # %.preheader494.preheader
	ld.w	$a0, $s7, 0
	ld.w	$a3, $s7, 64
	ld.w	$a4, $s7, 128
	ld.w	$a5, $s7, 192
	st.w	$a0, $t7, 0
	st.w	$a3, $t7, 4
	st.w	$a4, $t7, 8
	st.w	$a5, $t7, 12
	ld.w	$a0, $s7, 256
	ld.w	$a3, $s7, 320
	ld.w	$a4, $s7, 384
	ld.w	$a5, $s7, 448
	st.w	$a0, $t7, 16
	st.w	$a3, $t7, 20
	st.w	$a4, $t7, 24
	st.w	$a5, $t7, 28
	ld.w	$a0, $s7, 512
	ld.w	$a3, $s7, 576
	ld.w	$a4, $s7, 640
	ld.w	$a5, $s7, 704
	st.w	$a0, $t7, 32
	st.w	$a3, $t7, 36
	st.w	$a4, $t7, 40
	st.w	$a5, $t7, 44
	ld.w	$a0, $s7, 768
	ld.w	$a3, $s7, 832
	ld.w	$a4, $s7, 896
	ld.w	$a5, $s7, 960
	st.w	$a0, $t7, 48
	st.w	$a3, $t7, 52
	st.w	$a4, $t7, 56
	st.w	$a5, $t7, 60
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a4, $a0, %got_pc_lo12(input)
	move	$a0, $zero
	move	$a3, $zero
	ld.d	$a4, $a4, 0
	addi.d	$a7, $zero, -1
	ori	$a5, $zero, 2063
	ori	$a6, $zero, 32
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, 2
	beq	$a0, $a6, .LBB2_20
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	add.d	$t0, $t5, $a0
	ld.bu	$t0, $t0, 1
	ldx.bu	$t8, $t5, $a0
	alsl.d	$t0, $t0, $t7, 4
	slli.d	$t8, $t8, 2
	ldx.w	$t0, $t0, $t8
	ldptr.w	$t8, $a4, 4008
	srai.d	$s0, $t0, 31
	xor	$s1, $t0, $s0
	sub.w	$s0, $s1, $s0
	beqz	$t8, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a7, $a7, 1
	bnez	$s0, .LBB2_10
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=1
	ld.w	$t8, $a2, 36
	slti	$t8, $t8, 10
	sltu	$s1, $s0, $a5
	masknez	$s2, $a5, $s1
	maskeqz	$s1, $s0, $s1
	or	$s1, $s1, $s2
	maskeqz	$s1, $s1, $t8
	masknez	$t8, $s0, $t8
	or	$s0, $s1, $t8
	addi.d	$a7, $a7, 1
	beqz	$s0, .LBB2_6
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	slti	$t0, $t0, 0
	sub.d	$t8, $zero, $s0
	masknez	$s0, $s0, $t0
	maskeqz	$t0, $t8, $t0
	or	$t0, $t0, $s0
	slli.d	$t8, $a3, 2
	stx.w	$t0, $a1, $t8
	stx.w	$a7, $fp, $t8
	addi.w	$a3, $a3, 1
	addi.d	$a7, $zero, -1
	b	.LBB2_6
.LBB2_11:                               # %.preheader505.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_2)
	move	$s0, $zero
	ori	$s1, $zero, 1024
	.p2align	4, , 16
.LBB2_12:                               # %.preheader505
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s2, $s7, $s0
	vldx	$vr3, $s7, $s0
	vld	$vr4, $s2, 16
	vshuf4i.w	$vr5, $vr3, 27
	vshuf4i.w	$vr6, $vr4, 27
	vadd.w	$vr7, $vr4, $vr6
	vadd.w	$vr8, $vr3, $vr5
	vsub.w	$vr6, $vr4, $vr6
	vsub.w	$vr5, $vr3, $vr5
	vori.b	$vr9, $vr0, 0
	vshuf.w	$vr9, $vr5, $vr8
	vori.b	$vr8, $vr0, 0
	vshuf.w	$vr8, $vr6, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr5, $vr3
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr6, $vr4
	vshuf4i.w	$vr3, $vr3, 16
	vshuf4i.w	$vr4, $vr4, 16
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr3, $vr7, $vr3
	vslli.w	$vr5, $vr5, 1
	vslli.w	$vr6, $vr7, 1
	vori.b	$vr7, $vr2, 0
	vshuf.w	$vr7, $vr6, $vr3
	vori.b	$vr3, $vr2, 0
	vshuf.w	$vr3, $vr5, $vr4
	vadd.w	$vr4, $vr8, $vr3
	vadd.w	$vr5, $vr9, $vr7
	vld	$vr6, $s2, 48
	vld	$vr10, $s2, 32
	vsub.w	$vr3, $vr8, $vr3
	vsub.w	$vr7, $vr9, $vr7
	vshuf4i.w	$vr8, $vr6, 27
	vshuf4i.w	$vr9, $vr10, 27
	vadd.w	$vr11, $vr10, $vr9
	vadd.w	$vr12, $vr6, $vr8
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr6, $vr8
	vori.b	$vr13, $vr0, 0
	vshuf.w	$vr13, $vr8, $vr12
	vori.b	$vr12, $vr0, 0
	vshuf.w	$vr12, $vr9, $vr11
	vori.b	$vr11, $vr1, 0
	vshuf.w	$vr11, $vr8, $vr6
	vori.b	$vr8, $vr1, 0
	vshuf.w	$vr8, $vr9, $vr10
	vshuf4i.w	$vr6, $vr6, 16
	vshuf4i.w	$vr9, $vr10, 16
	vadd.w	$vr9, $vr8, $vr9
	vadd.w	$vr6, $vr11, $vr6
	vslli.w	$vr8, $vr8, 1
	vslli.w	$vr10, $vr11, 1
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr10, $vr6
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr8, $vr9
	vadd.w	$vr8, $vr12, $vr6
	vadd.w	$vr9, $vr13, $vr11
	vsub.w	$vr6, $vr12, $vr6
	vsub.w	$vr10, $vr13, $vr11
	vshuf4i.d	$vr9, $vr10, 12
	vshuf4i.d	$vr5, $vr7, 12
	vadd.w	$vr7, $vr9, $vr5
	vshuf4i.d	$vr8, $vr6, 12
	vshuf4i.d	$vr4, $vr3, 12
	vadd.w	$vr3, $vr8, $vr4
	vadd.w	$vr6, $vr3, $vr7
	vstx	$vr6, $s7, $s0
	vsub.w	$vr3, $vr7, $vr3
	vst	$vr3, $s2, 32
	vsub.w	$vr3, $vr4, $vr8
	vsub.w	$vr4, $vr5, $vr9
	vslli.w	$vr5, $vr4, 1
	vadd.w	$vr5, $vr3, $vr5
	vst	$vr5, $s2, 16
	vslli.w	$vr3, $vr3, 1
	vld	$vr5, $s2, 64
	vld	$vr6, $s2, 80
	vsub.w	$vr3, $vr4, $vr3
	vst	$vr3, $s2, 48
	vshuf4i.w	$vr3, $vr5, 27
	vshuf4i.w	$vr4, $vr6, 27
	vadd.w	$vr7, $vr6, $vr4
	vadd.w	$vr8, $vr5, $vr3
	vsub.w	$vr4, $vr6, $vr4
	vsub.w	$vr3, $vr5, $vr3
	vori.b	$vr9, $vr0, 0
	vshuf.w	$vr9, $vr3, $vr8
	vori.b	$vr8, $vr0, 0
	vshuf.w	$vr8, $vr4, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr3, $vr5
	vori.b	$vr3, $vr1, 0
	vshuf.w	$vr3, $vr4, $vr6
	vshuf4i.w	$vr4, $vr5, 16
	vshuf4i.w	$vr5, $vr6, 16
	vadd.w	$vr5, $vr3, $vr5
	vadd.w	$vr4, $vr7, $vr4
	vslli.w	$vr3, $vr3, 1
	vslli.w	$vr6, $vr7, 1
	vori.b	$vr7, $vr2, 0
	vshuf.w	$vr7, $vr6, $vr4
	vori.b	$vr4, $vr2, 0
	vshuf.w	$vr4, $vr3, $vr5
	vadd.w	$vr3, $vr8, $vr4
	vadd.w	$vr5, $vr9, $vr7
	vld	$vr6, $s2, 112
	vld	$vr10, $s2, 96
	vsub.w	$vr4, $vr8, $vr4
	vsub.w	$vr7, $vr9, $vr7
	vshuf4i.w	$vr8, $vr6, 27
	vshuf4i.w	$vr9, $vr10, 27
	vadd.w	$vr11, $vr10, $vr9
	vadd.w	$vr12, $vr6, $vr8
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr6, $vr8
	vori.b	$vr13, $vr0, 0
	vshuf.w	$vr13, $vr8, $vr12
	vori.b	$vr12, $vr0, 0
	vshuf.w	$vr12, $vr9, $vr11
	vori.b	$vr11, $vr1, 0
	vshuf.w	$vr11, $vr8, $vr6
	vori.b	$vr8, $vr1, 0
	vshuf.w	$vr8, $vr9, $vr10
	vshuf4i.w	$vr6, $vr6, 16
	vshuf4i.w	$vr9, $vr10, 16
	vadd.w	$vr9, $vr8, $vr9
	vadd.w	$vr6, $vr11, $vr6
	vslli.w	$vr8, $vr8, 1
	vslli.w	$vr10, $vr11, 1
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr10, $vr6
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr8, $vr9
	vadd.w	$vr8, $vr12, $vr6
	vadd.w	$vr9, $vr13, $vr11
	vsub.w	$vr6, $vr12, $vr6
	vsub.w	$vr10, $vr13, $vr11
	vshuf4i.d	$vr9, $vr10, 12
	vshuf4i.d	$vr5, $vr7, 12
	vadd.w	$vr7, $vr9, $vr5
	vshuf4i.d	$vr8, $vr6, 12
	vshuf4i.d	$vr3, $vr4, 12
	vadd.w	$vr4, $vr8, $vr3
	vadd.w	$vr6, $vr4, $vr7
	vst	$vr6, $s2, 64
	vsub.w	$vr4, $vr7, $vr4
	vst	$vr4, $s2, 96
	vsub.w	$vr3, $vr3, $vr8
	vsub.w	$vr4, $vr5, $vr9
	vslli.w	$vr5, $vr4, 1
	vadd.w	$vr5, $vr3, $vr5
	vst	$vr5, $s2, 80
	vslli.w	$vr3, $vr3, 1
	vld	$vr5, $s2, 128
	vld	$vr6, $s2, 144
	vsub.w	$vr3, $vr4, $vr3
	vst	$vr3, $s2, 112
	vshuf4i.w	$vr3, $vr5, 27
	vshuf4i.w	$vr4, $vr6, 27
	vadd.w	$vr7, $vr6, $vr4
	vadd.w	$vr8, $vr5, $vr3
	vsub.w	$vr4, $vr6, $vr4
	vsub.w	$vr3, $vr5, $vr3
	vori.b	$vr9, $vr0, 0
	vshuf.w	$vr9, $vr3, $vr8
	vori.b	$vr8, $vr0, 0
	vshuf.w	$vr8, $vr4, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr3, $vr5
	vori.b	$vr3, $vr1, 0
	vshuf.w	$vr3, $vr4, $vr6
	vshuf4i.w	$vr4, $vr5, 16
	vshuf4i.w	$vr5, $vr6, 16
	vadd.w	$vr5, $vr3, $vr5
	vadd.w	$vr4, $vr7, $vr4
	vslli.w	$vr3, $vr3, 1
	vslli.w	$vr6, $vr7, 1
	vori.b	$vr7, $vr2, 0
	vshuf.w	$vr7, $vr6, $vr4
	vori.b	$vr4, $vr2, 0
	vshuf.w	$vr4, $vr3, $vr5
	vadd.w	$vr3, $vr8, $vr4
	vadd.w	$vr5, $vr9, $vr7
	vld	$vr6, $s2, 176
	vld	$vr10, $s2, 160
	vsub.w	$vr4, $vr8, $vr4
	vsub.w	$vr7, $vr9, $vr7
	vshuf4i.w	$vr8, $vr6, 27
	vshuf4i.w	$vr9, $vr10, 27
	vadd.w	$vr11, $vr10, $vr9
	vadd.w	$vr12, $vr6, $vr8
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr6, $vr8
	vori.b	$vr13, $vr0, 0
	vshuf.w	$vr13, $vr8, $vr12
	vori.b	$vr12, $vr0, 0
	vshuf.w	$vr12, $vr9, $vr11
	vori.b	$vr11, $vr1, 0
	vshuf.w	$vr11, $vr8, $vr6
	vori.b	$vr8, $vr1, 0
	vshuf.w	$vr8, $vr9, $vr10
	vshuf4i.w	$vr6, $vr6, 16
	vshuf4i.w	$vr9, $vr10, 16
	vadd.w	$vr9, $vr8, $vr9
	vadd.w	$vr6, $vr11, $vr6
	vslli.w	$vr8, $vr8, 1
	vslli.w	$vr10, $vr11, 1
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr10, $vr6
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr8, $vr9
	vadd.w	$vr8, $vr12, $vr6
	vadd.w	$vr9, $vr13, $vr11
	vsub.w	$vr6, $vr12, $vr6
	vsub.w	$vr10, $vr13, $vr11
	vshuf4i.d	$vr9, $vr10, 12
	vshuf4i.d	$vr5, $vr7, 12
	vadd.w	$vr7, $vr9, $vr5
	vshuf4i.d	$vr8, $vr6, 12
	vshuf4i.d	$vr3, $vr4, 12
	vadd.w	$vr4, $vr8, $vr3
	vadd.w	$vr6, $vr4, $vr7
	vst	$vr6, $s2, 128
	vsub.w	$vr4, $vr7, $vr4
	vst	$vr4, $s2, 160
	vsub.w	$vr3, $vr3, $vr8
	vsub.w	$vr4, $vr5, $vr9
	vslli.w	$vr5, $vr4, 1
	vadd.w	$vr5, $vr3, $vr5
	vst	$vr5, $s2, 144
	vslli.w	$vr3, $vr3, 1
	vld	$vr5, $s2, 192
	vld	$vr6, $s2, 208
	vsub.w	$vr3, $vr4, $vr3
	vst	$vr3, $s2, 176
	vshuf4i.w	$vr3, $vr5, 27
	vshuf4i.w	$vr4, $vr6, 27
	vadd.w	$vr7, $vr6, $vr4
	vadd.w	$vr8, $vr5, $vr3
	vsub.w	$vr4, $vr6, $vr4
	vsub.w	$vr3, $vr5, $vr3
	vori.b	$vr9, $vr0, 0
	vshuf.w	$vr9, $vr3, $vr8
	vori.b	$vr8, $vr0, 0
	vshuf.w	$vr8, $vr4, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr3, $vr5
	vori.b	$vr3, $vr1, 0
	vshuf.w	$vr3, $vr4, $vr6
	vshuf4i.w	$vr4, $vr5, 16
	vshuf4i.w	$vr5, $vr6, 16
	vadd.w	$vr5, $vr3, $vr5
	vadd.w	$vr4, $vr7, $vr4
	vslli.w	$vr3, $vr3, 1
	vslli.w	$vr6, $vr7, 1
	vori.b	$vr7, $vr2, 0
	vshuf.w	$vr7, $vr6, $vr4
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr3, $vr5
	vadd.w	$vr3, $vr8, $vr6
	vadd.w	$vr4, $vr9, $vr7
	vld	$vr5, $s2, 240
	vld	$vr10, $s2, 224
	vsub.w	$vr8, $vr8, $vr6
	vsub.w	$vr7, $vr9, $vr7
	vshuf4i.w	$vr6, $vr5, 27
	vshuf4i.w	$vr9, $vr10, 27
	vadd.w	$vr11, $vr10, $vr9
	vadd.w	$vr12, $vr5, $vr6
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr6, $vr5, $vr6
	vori.b	$vr13, $vr0, 0
	vshuf.w	$vr13, $vr6, $vr12
	vori.b	$vr12, $vr0, 0
	vshuf.w	$vr12, $vr9, $vr11
	vori.b	$vr11, $vr1, 0
	vshuf.w	$vr11, $vr6, $vr5
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr9, $vr10
	vshuf4i.w	$vr5, $vr5, 16
	vshuf4i.w	$vr9, $vr10, 16
	vadd.w	$vr9, $vr6, $vr9
	vadd.w	$vr5, $vr11, $vr5
	vslli.w	$vr6, $vr6, 1
	vslli.w	$vr10, $vr11, 1
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr10, $vr5
	vori.b	$vr10, $vr2, 0
	vshuf.w	$vr10, $vr6, $vr9
	vadd.w	$vr6, $vr12, $vr10
	vadd.w	$vr5, $vr13, $vr11
	vsub.w	$vr9, $vr12, $vr10
	vsub.w	$vr10, $vr13, $vr11
	vshuf4i.d	$vr5, $vr10, 12
	vshuf4i.d	$vr4, $vr7, 12
	vadd.w	$vr7, $vr5, $vr4
	vshuf4i.d	$vr6, $vr9, 12
	vshuf4i.d	$vr3, $vr8, 12
	vadd.w	$vr8, $vr6, $vr3
	vadd.w	$vr9, $vr8, $vr7
	vst	$vr9, $s2, 192
	vsub.w	$vr7, $vr7, $vr8
	vst	$vr7, $s2, 224
	vsub.w	$vr7, $vr3, $vr6
	vsub.w	$vr8, $vr4, $vr5
	vslli.w	$vr9, $vr8, 1
	vadd.w	$vr9, $vr7, $vr9
	vst	$vr9, $s2, 208
	vslli.w	$vr7, $vr7, 1
	vsub.w	$vr7, $vr8, $vr7
	addi.d	$s0, $s0, 256
	vst	$vr7, $s2, 240
	bne	$s0, $s1, .LBB2_12
# %bb.13:                               # %.preheader502
	vst	$vr4, $t7, 0
	vst	$vr3, $t7, 16
	vst	$vr6, $t7, 32
	vst	$vr5, $t7, 48
	ld.w	$a0, $s7, 0
	ld.w	$a3, $s7, 64
	ld.w	$a4, $s7, 128
	ld.w	$a5, $s7, 192
	ld.w	$a6, $s7, 256
	ld.w	$a7, $s7, 320
	ld.w	$t0, $s7, 384
	ld.w	$t8, $s7, 448
	ld.w	$s0, $s7, 512
	ld.w	$s1, $s7, 576
	ld.w	$s2, $s7, 640
	ld.w	$s3, $s7, 704
	ld.w	$s4, $s7, 768
	ld.w	$s5, $s7, 832
	ld.w	$s6, $s7, 896
	ld.w	$s7, $s7, 960
	add.d	$s8, $a5, $a0
	add.d	$ra, $a4, $a3
	sub.d	$a3, $a3, $a4
	sub.d	$a0, $a0, $a5
	add.d	$a4, $ra, $s8
	sub.d	$s8, $s8, $ra
	add.d	$ra, $a3, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	add.d	$a3, $t8, $a6
	add.d	$a5, $t0, $a7
	sub.d	$a7, $a7, $t0
	sub.d	$a6, $a6, $t8
	add.d	$t0, $a5, $a3
	sub.d	$t8, $a3, $a5
	add.d	$a0, $a7, $a6
	sub.d	$a3, $a6, $a7
	add.d	$a5, $s3, $s0
	add.d	$a6, $s2, $s1
	sub.d	$a7, $s1, $s2
	sub.d	$s0, $s0, $s3
	add.d	$s1, $a6, $a5
	sub.d	$a6, $a5, $a6
	add.d	$s2, $a7, $s0
	sub.d	$a5, $s0, $a7
	add.d	$a7, $s7, $s4
	add.d	$s0, $s6, $s5
	sub.d	$s3, $s5, $s6
	sub.d	$s4, $s4, $s7
	add.d	$s5, $s0, $a7
	sub.d	$a7, $a7, $s0
	add.d	$s0, $s3, $s4
	sub.d	$s3, $s4, $s3
	add.d	$s4, $s5, $a4
	add.d	$s6, $s1, $t0
	sub.d	$t0, $t0, $s1
	sub.d	$a4, $a4, $s5
	add.w	$s1, $s6, $s4
	srli.d	$s1, $s1, 1
	st.w	$s1, $t7, 0
	sub.w	$s1, $s4, $s6
	srli.d	$s1, $s1, 1
	st.w	$s1, $t7, 32
	add.w	$s1, $t0, $a4
	srli.d	$s1, $s1, 1
	st.w	$s1, $t7, 16
	sub.w	$a4, $a4, $t0
	srli.d	$a4, $a4, 1
	st.w	$a4, $t7, 48
	add.d	$a4, $s0, $ra
	add.d	$t0, $s2, $a0
	sub.d	$a0, $a0, $s2
	sub.d	$s0, $ra, $s0
	add.w	$s1, $t0, $a4
	srli.d	$s1, $s1, 1
	st.w	$s1, $t7, 4
	sub.w	$a4, $a4, $t0
	srli.d	$a4, $a4, 1
	st.w	$a4, $t7, 36
	add.w	$a4, $a0, $s0
	srli.d	$a4, $a4, 1
	st.w	$a4, $t7, 20
	sub.w	$a0, $s0, $a0
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 52
	add.d	$a0, $a7, $s8
	add.d	$a4, $a6, $t8
	sub.d	$a6, $t8, $a6
	sub.d	$a7, $s8, $a7
	add.w	$t0, $a4, $a0
	srli.d	$t0, $t0, 1
	st.w	$t0, $t7, 8
	sub.w	$a0, $a0, $a4
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 40
	add.w	$a0, $a6, $a7
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 24
	sub.w	$a0, $a7, $a6
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 56
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $s3, $a6
	add.d	$a4, $a5, $a3
	sub.d	$a5, $a3, $a5
	sub.d	$a6, $a6, $s3
	add.w	$a3, $a4, $a0
	srli.d	$a3, $a3, 1
	st.w	$a3, $t7, 12
	sub.w	$a0, $a0, $a4
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 44
	add.w	$a0, $a5, $a6
	srli.d	$a0, $a0, 1
	st.w	$a0, $t7, 28
	ld.d	$a0, $t2, 0
	ld.d	$a3, $t4, 0
	sub.w	$a4, $a6, $a5
	srli.d	$a4, $a4, 1
	st.w	$a4, $t7, 60
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a6, $a4, %got_pc_lo12(input)
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a6, $a6, 0
	addi.d	$s0, $zero, -1
	ori	$a7, $zero, 2063
	ori	$t0, $zero, 32
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %.split462
                                        #   in Loop: Header=BB2_15 Depth=1
	slti	$t8, $s3, 0
	srai.d	$s3, $s4, 31
	xor	$s4, $s4, $s3
	sub.d	$s3, $s4, $s3
	sub.d	$s4, $zero, $s3
	masknez	$s3, $s3, $t8
	maskeqz	$t8, $s4, $t8
	or	$s3, $t8, $s3
	slli.d	$t8, $a5, 2
	stx.w	$s3, $a1, $t8
	stx.w	$s0, $fp, $t8
	addi.w	$a5, $a5, 1
	addi.d	$s0, $zero, -1
	alsl.d	$t8, $s1, $s2, 2
	addi.d	$a4, $a4, 2
	st.w	$s3, $t8, 0
	beq	$a4, $t0, .LBB2_19
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	add.d	$t8, $t5, $a4
	ld.bu	$t8, $t8, 1
	ldx.bu	$s1, $t5, $a4
	alsl.d	$s2, $t8, $t7, 4
	slli.d	$t8, $s1, 2
	ldx.w	$s3, $s2, $t8
	srai.d	$t8, $s3, 31
	xor	$s4, $s3, $t8
	ld.w	$s5, $a0, 0
	ld.w	$s6, $a3, 0
	ldptr.w	$s7, $a6, 4008
	sub.d	$t8, $s4, $t8
	mul.d	$t8, $s5, $t8
	alsl.w	$t8, $s6, $t8, 1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	sra.w	$s4, $t8, $s4
	beqz	$s7, .LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	addi.d	$s0, $s0, 1
	bnez	$s4, .LBB2_14
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_15 Depth=1
	ld.w	$t8, $a2, 36
	slti	$t8, $t8, 10
	slt	$s5, $s4, $a7
	masknez	$s6, $a7, $s5
	maskeqz	$s5, $s4, $s5
	or	$s5, $s5, $s6
	maskeqz	$s5, $s5, $t8
	masknez	$t8, $s4, $t8
	or	$s4, $s5, $t8
	addi.d	$s0, $s0, 1
	bnez	$s4, .LBB2_14
.LBB2_18:                               #   in Loop: Header=BB2_15 Depth=1
	move	$s3, $zero
	alsl.d	$t8, $s1, $s2, 2
	addi.d	$a4, $a4, 2
	st.w	$s3, $t8, 0
	bne	$a4, $t0, .LBB2_15
.LBB2_19:                               # %.preheader496
	slli.d	$a0, $a5, 2
	stx.w	$zero, $a1, $a0
	vld	$vr1, $t7, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vshuf4i.w	$vr2, $vr1, 78
	vadd.w	$vr3, $vr1, $vr2
	vsub.w	$vr5, $vr1, $vr2
	vori.b	$vr2, $vr0, 0
	vshuf.w	$vr2, $vr3, $vr5
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr4, $a0, %pc_lo12(.LCPI2_4)
	vshuf4i.d	$vr5, $vr3, 12
	vadd.w	$vr1, $vr5, $vr2
	vld	$vr3, $t7, 16
	vsub.w	$vr2, $vr5, $vr2
	vori.b	$vr5, $vr4, 0
	vshuf.w	$vr5, $vr2, $vr1
	vst	$vr5, $t7, 0
	vshuf4i.w	$vr2, $vr3, 78
	vadd.w	$vr5, $vr3, $vr2
	vsub.w	$vr2, $vr3, $vr2
	vori.b	$vr6, $vr0, 0
	vshuf.w	$vr6, $vr5, $vr2
	vshuf4i.d	$vr2, $vr5, 12
	vadd.w	$vr3, $vr2, $vr6
	vld	$vr5, $t7, 32
	vsub.w	$vr2, $vr2, $vr6
	vori.b	$vr6, $vr4, 0
	vshuf.w	$vr6, $vr2, $vr3
	vst	$vr6, $t7, 16
	vshuf4i.w	$vr2, $vr5, 78
	vadd.w	$vr6, $vr5, $vr2
	vsub.w	$vr2, $vr5, $vr2
	vori.b	$vr5, $vr0, 0
	vshuf.w	$vr5, $vr6, $vr2
	vshuf4i.d	$vr2, $vr6, 12
	vadd.w	$vr6, $vr2, $vr5
	vld	$vr7, $t7, 48
	vsub.w	$vr2, $vr2, $vr5
	vori.b	$vr5, $vr4, 0
	vshuf.w	$vr5, $vr2, $vr6
	vst	$vr5, $t7, 32
	vshuf4i.w	$vr5, $vr7, 78
	vadd.w	$vr8, $vr7, $vr5
	vsub.w	$vr5, $vr7, $vr5
	vshuf.w	$vr0, $vr8, $vr5
	vshuf4i.d	$vr5, $vr8, 12
	vadd.w	$vr7, $vr5, $vr0
	ld.d	$a0, $t3, 0
	vsub.w	$vr0, $vr5, $vr0
	vshuf.w	$vr4, $vr0, $vr7
	vst	$vr4, $t7, 48
	ld.w	$a1, $a0, 0
	vpickve2gr.w	$a0, $vr1, 3
	vpickve2gr.w	$a3, $vr6, 3
	add.d	$a4, $a3, $a0
	sub.d	$a0, $a0, $a3
	vpickve2gr.w	$a3, $vr3, 3
	vpickve2gr.w	$a5, $vr7, 3
	sub.d	$a6, $a3, $a5
	add.d	$a3, $a5, $a3
	add.d	$a5, $a3, $a4
	mul.d	$a5, $a1, $a5
	sll.w	$a5, $a5, $t1
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	st.w	$a5, $s7, 0
	add.d	$a5, $a6, $a0
	mul.d	$a5, $a1, $a5
	sll.w	$a5, $a5, $t1
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	st.w	$a5, $s7, 256
	sub.d	$a0, $a0, $a6
	mul.d	$a0, $a1, $a0
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	st.w	$a0, $s7, 512
	sub.d	$a0, $a4, $a3
	mul.d	$a0, $a1, $a0
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	st.w	$a0, $s7, 768
	vpickve2gr.w	$a0, $vr1, 1
	vpickve2gr.w	$a3, $vr6, 1
	add.d	$a4, $a3, $a0
	sub.d	$a0, $a0, $a3
	vpickve2gr.w	$a3, $vr3, 1
	vpickve2gr.w	$a5, $vr7, 1
	sub.d	$a6, $a3, $a5
	add.d	$a3, $a5, $a3
	add.d	$a5, $a3, $a4
	mul.d	$a5, $a1, $a5
	sll.w	$a5, $a5, $t1
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	st.w	$a5, $s7, 64
	add.d	$a5, $a6, $a0
	mul.d	$a5, $a1, $a5
	sll.w	$a5, $a5, $t1
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	st.w	$a5, $s7, 320
	sub.d	$a0, $a0, $a6
	mul.d	$a0, $a1, $a0
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	st.w	$a0, $s7, 576
	sub.d	$a0, $a4, $a3
	mul.d	$a0, $a1, $a0
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	ld.w	$a3, $t7, 8
	st.w	$a0, $s7, 832
	vpickve2gr.w	$a0, $vr2, 0
	ld.w	$a4, $t7, 24
	add.d	$a5, $a0, $a3
	sub.d	$a0, $a3, $a0
	vpickve2gr.w	$a3, $vr0, 0
	sub.d	$a6, $a4, $a3
	add.d	$a3, $a3, $a4
	add.d	$a4, $a3, $a5
	mul.d	$a4, $a1, $a4
	sll.w	$a4, $a4, $t1
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $s7, 128
	add.d	$a4, $a6, $a0
	mul.d	$a4, $a1, $a4
	sll.w	$a4, $a4, $t1
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $s7, 384
	sub.d	$a0, $a0, $a6
	mul.d	$a0, $a1, $a0
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	st.w	$a0, $s7, 640
	sub.d	$a0, $a5, $a3
	mul.d	$a0, $a1, $a0
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	ld.w	$a3, $t7, 12
	ld.w	$a4, $t7, 44
	srli.d	$a0, $a0, 6
	st.w	$a0, $s7, 896
	ld.w	$a0, $t7, 28
	add.d	$a5, $a4, $a3
	sub.d	$a3, $a3, $a4
	vpickve2gr.w	$a4, $vr0, 2
	sub.d	$a6, $a0, $a4
	add.d	$a0, $a4, $a0
	add.d	$a4, $a0, $a5
	mul.d	$a4, $a1, $a4
	sll.w	$a4, $a4, $t1
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $s7, 192
	add.d	$a4, $a6, $a3
	mul.d	$a4, $a1, $a4
	sll.w	$a4, $a4, $t1
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $s7, 448
	sub.d	$a3, $a3, $a6
	mul.d	$a3, $a1, $a3
	sll.w	$a3, $a3, $t1
	addi.w	$a3, $a3, 32
	srli.d	$a3, $a3, 6
	st.w	$a3, $s7, 704
	sub.d	$a0, $a5, $a0
	mul.d	$a0, $a1, $a0
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	st.w	$a0, $s7, 960
	b	.LBB2_21
.LBB2_20:
	slli.d	$a0, $a3, 2
	stx.w	$zero, $a1, $a0
.LBB2_21:
	move	$a1, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ldptr.d	$a0, $a2, 14160
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $t6
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$s2, $zero, 30
	b	.LBB2_24
	.p2align	4, , 16
.LBB2_22:                               # %.split579.us.loopexit
                                        #   in Loop: Header=BB2_24 Depth=1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a3, $a5, 2
	stx.w	$zero, $a0, $a3
.LBB2_23:                               # %.split579.us
                                        #   in Loop: Header=BB2_24 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB2_61
.LBB2_24:                               # %.preheader492
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_33 Depth 2
                                        #       Child Loop BB2_36 Depth 3
                                        #     Child Loop BB2_27 Depth 2
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_51 Depth 2
                                        #     Child Loop BB2_57 Depth 2
	slli.d	$a0, $a1, 8
	andi	$s1, $a1, 2
	slli.d	$a3, $a1, 1
	andi	$s5, $a3, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$s4, $a1, 2
	add.d	$s7, $s7, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_31
# %bb.25:                               # %.preheader491.us.preheader
                                        #   in Loop: Header=BB2_24 Depth=1
	vld	$vr0, $s7, 48
	vld	$vr1, $s7, 32
	vld	$vr2, $s7, 16
	vld	$vr3, $s7, 0
	vst	$vr0, $t7, 48
	vst	$vr1, $t7, 32
	vst	$vr2, $t7, 16
	vst	$vr3, $t7, 0
	slli.d	$a0, $s1, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	slli.d	$a5, $s5, 3
	ldx.d	$a4, $a0, $a5
	ld.d	$a3, $a4, 0
	ld.d	$a4, $a4, 8
	move	$a6, $zero
	move	$a7, $zero
	addi.d	$t0, $zero, -1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=2
	addi.d	$a6, $a6, 2
	beq	$a6, $s2, .LBB2_43
.LBB2_27:                               #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t5, $a6
	ld.bu	$fp, $t8, 3
	ld.bu	$t8, $t8, 2
	alsl.d	$s3, $fp, $t7, 4
	slli.d	$s0, $t8, 2
	ldx.w	$t8, $s3, $s0
	addi.d	$t0, $t0, 1
	beqz	$t8, .LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=2
	srai.d	$a1, $t8, 31
	xor	$s3, $t8, $a1
	sub.d	$a1, $s3, $a1
	slti	$t8, $t8, 0
	sub.d	$s3, $zero, $a1
	masknez	$a1, $a1, $t8
	maskeqz	$t8, $s3, $t8
	or	$a1, $t8, $a1
	slli.d	$t8, $a7, 2
	stx.w	$a1, $a3, $t8
	stx.w	$t0, $a4, $t8
	addi.w	$a7, $a7, 1
	addi.d	$t0, $zero, -1
	ori	$a1, $zero, 15
.LBB2_29:                               #   in Loop: Header=BB2_27 Depth=2
	ldptr.w	$t8, $a2, 15260
	beqz	$t8, .LBB2_26
# %bb.30:                               #   in Loop: Header=BB2_27 Depth=2
	ldptr.d	$t8, $a2, 14176
	ld.d	$t8, $t8, 16
	alsl.d	$t8, $s4, $t8, 3
	slli.d	$fp, $fp, 3
	ldx.d	$t8, $t8, $fp
	stx.w	$zero, $t8, $s0
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_31:                               # %.preheader491.preheader
                                        #   in Loop: Header=BB2_24 Depth=1
	move	$s8, $zero
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB2_33
	.p2align	4, , 16
.LBB2_32:                               # %.preheader488
                                        #   in Loop: Header=BB2_33 Depth=2
	slli.d	$a0, $a4, 2
	stx.w	$zero, $a6, $a0
	ld.w	$a0, $t7, 0
	ld.w	$a1, $t7, 8
	ld.w	$a3, $t7, 4
	ld.w	$a4, $t7, 12
	add.d	$a5, $a1, $a0
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a3, 1
	sub.d	$a1, $a1, $a4
	srai.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	add.d	$a7, $a3, $a5
	st.w	$a7, $t7, 0
	add.d	$a4, $a1, $a0
	st.w	$a4, $t7, 4
	sub.d	$a0, $a0, $a1
	st.w	$a0, $t7, 8
	sub.d	$a1, $a5, $a3
	ld.w	$a3, $t7, 16
	ld.w	$a5, $t7, 24
	st.w	$a1, $t7, 12
	ld.w	$a1, $t7, 20
	ld.w	$a6, $t7, 28
	add.d	$t0, $a5, $a3
	sub.d	$a3, $a3, $a5
	srai.d	$a5, $a1, 1
	sub.d	$a5, $a5, $a6
	srai.d	$a6, $a6, 1
	add.d	$a1, $a6, $a1
	add.w	$s3, $a1, $t0
	st.w	$s3, $t7, 16
	add.w	$fp, $a5, $a3
	st.w	$fp, $t7, 20
	sub.w	$a6, $a3, $a5
	st.w	$a6, $t7, 24
	sub.w	$a3, $t0, $a1
	ld.w	$a1, $t7, 32
	ld.w	$a5, $t7, 40
	st.w	$a3, $t7, 28
	ld.w	$t0, $t7, 36
	ld.w	$t8, $t7, 44
	add.d	$s0, $a5, $a1
	sub.d	$a1, $a1, $a5
	srai.d	$a5, $t0, 1
	sub.d	$a5, $a5, $t8
	srai.d	$t8, $t8, 1
	add.d	$t0, $t8, $t0
	add.d	$t8, $t0, $s0
	st.w	$t8, $t7, 32
	add.d	$s1, $a5, $a1
	st.w	$s1, $t7, 36
	sub.d	$a1, $a1, $a5
	st.w	$a1, $t7, 40
	sub.d	$t0, $s0, $t0
	ld.w	$a5, $t7, 48
	ld.w	$s0, $t7, 56
	st.w	$t0, $t7, 44
	ld.w	$s5, $t7, 52
	ld.w	$s6, $t7, 60
	add.d	$s7, $s0, $a5
	sub.d	$a5, $a5, $s0
	srai.d	$s0, $s5, 1
	sub.d	$s0, $s0, $s6
	srai.d	$s6, $s6, 1
	add.d	$s5, $s6, $s5
	add.w	$s6, $s5, $s7
	st.w	$s6, $t7, 48
	add.w	$t1, $s0, $a5
	st.w	$t1, $t7, 52
	sub.w	$a5, $a5, $s0
	st.w	$a5, $t7, 56
	sub.w	$s0, $s7, $s5
	st.w	$s0, $t7, 60
	add.d	$s5, $t8, $a7
	sub.d	$a7, $a7, $t8
	srli.d	$t8, $s3, 1
	sub.d	$t8, $t8, $s6
	srli.d	$s6, $s6, 1
	add.d	$s3, $s6, $s3
	add.d	$s6, $s3, $s5
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	move	$s2, $t5
	move	$t5, $t4
	move	$t4, $t3
	move	$t3, $t2
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	stx.w	$s6, $s7, $t2
	move	$t2, $t3
	move	$t3, $t4
	move	$t4, $t5
	move	$t5, $s2
	ori	$s2, $zero, 30
	add.d	$s6, $t8, $a7
	st.w	$s6, $ra, 16
	sub.d	$a7, $a7, $t8
	st.w	$a7, $ra, 32
	sub.d	$a7, $s5, $s3
	st.w	$a7, $ra, 48
	add.d	$a7, $s1, $a4
	sub.d	$a4, $a4, $s1
	srli.d	$t8, $fp, 1
	sub.d	$t8, $t8, $t1
	srli.d	$t1, $t1, 1
	add.d	$t1, $t1, $fp
	add.d	$fp, $t1, $a7
	st.w	$fp, $ra, 4
	add.d	$fp, $t8, $a4
	st.w	$fp, $ra, 20
	sub.d	$a4, $a4, $t8
	st.w	$a4, $ra, 36
	sub.d	$a4, $a7, $t1
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a4, $ra, 52
	add.d	$a4, $a1, $a0
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a6, 1
	sub.d	$a1, $a1, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a5, $a6
	add.d	$a6, $a5, $a4
	st.w	$a6, $ra, 8
	add.d	$a6, $a1, $a0
	st.w	$a6, $ra, 24
	sub.d	$a0, $a0, $a1
	ld.w	$a1, $t7, 12
	st.w	$a0, $ra, 40
	sub.d	$a0, $a4, $a5
	st.w	$a0, $ra, 56
	add.d	$a0, $t0, $a1
	sub.d	$a1, $a1, $t0
	srli.d	$a4, $a3, 1
	sub.d	$a4, $a4, $s0
	srli.d	$a5, $s0, 1
	add.d	$a3, $a5, $a3
	add.d	$a5, $a3, $a0
	st.w	$a5, $ra, 12
	add.d	$a5, $a4, $a1
	st.w	$a5, $ra, 28
	sub.d	$a1, $a1, $a4
	st.w	$a1, $ra, 44
	sub.d	$a0, $a0, $a3
	addi.d	$s8, $s8, 1
	st.w	$a0, $ra, 60
	ori	$a0, $zero, 4
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB2_23
.LBB2_33:                               # %.preheader491
                                        #   Parent Loop BB2_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_36 Depth 3
	slli.d	$a0, $s8, 6
	add.d	$ra, $s7, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vldx	$vr0, $s7, $a0
	vld	$vr1, $ra, 48
	vld	$vr2, $ra, 32
	vld	$vr3, $ra, 16
	vst	$vr0, $t7, 0
	vst	$vr1, $t7, 48
	vst	$vr2, $t7, 32
	vst	$vr3, $t7, 16
	bstrpick.d	$a0, $s8, 31, 1
	or	$a0, $a0, $s1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	andi	$a3, $s8, 1
	or	$a3, $a3, $s5
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a0, 8
	move	$a0, $zero
	move	$a4, $zero
	slli.d	$a3, $s8, 4
	addi.d	$t0, $zero, -1
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_34:                               # %.split465
                                        #   in Loop: Header=BB2_36 Depth=3
	slti	$a1, $s6, 0
	srai.d	$a5, $s5, 31
	xor	$t8, $s5, $a5
	sub.d	$a5, $t8, $a5
	sub.d	$t8, $zero, $a5
	masknez	$s1, $a5, $a1
	maskeqz	$a1, $t8, $a1
	or	$a1, $a1, $s1
	slli.d	$s1, $a4, 2
	stx.w	$a1, $a6, $s1
	stx.w	$t0, $a7, $s1
	ld.w	$a1, $s0, 0
	addi.w	$a4, $a4, 1
	slti	$a1, $a1, 0
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $t8, $a1
	or	$s5, $a1, $a5
	addi.d	$t0, $zero, -1
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
.LBB2_35:                               # %.split463
                                        #   in Loop: Header=BB2_36 Depth=3
	ldx.d	$a1, $t3, $fp
	ldx.w	$a1, $a1, $s3
	mul.d	$a1, $a1, $s5
	sll.w	$a1, $a1, $t1
	addi.w	$a1, $a1, 8
	srli.d	$a1, $a1, 4
	addi.d	$a0, $a0, 2
	st.w	$a1, $s0, 0
	beq	$a0, $s2, .LBB2_32
.LBB2_36:                               #   Parent Loop BB2_24 Depth=1
                                        #     Parent Loop BB2_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $t5, $a0
	ld.bu	$fp, $t8, 3
	ld.bu	$s0, $t8, 2
	alsl.d	$s7, $fp, $t7, 4
	slli.d	$s3, $s0, 2
	ldx.w	$s6, $s7, $s3
	slli.d	$fp, $fp, 3
	ldx.d	$t8, $t2, $fp
	ldx.d	$s5, $t4, $fp
	srai.d	$a5, $s6, 31
	xor	$a1, $s6, $a5
	ldx.w	$t8, $t8, $s3
	ldx.w	$s5, $s5, $s3
	ldptr.w	$s1, $a2, 15260
	sub.d	$a1, $a1, $a5
	mul.d	$t8, $t8, $a1
	add.d	$a1, $s5, $t8
	sra.w	$s5, $a1, $t6
	beqz	$s1, .LBB2_41
# %bb.37:                               #   in Loop: Header=BB2_36 Depth=3
	beqz	$s5, .LBB2_39
# %bb.38:                               #   in Loop: Header=BB2_36 Depth=3
	pcalau12i	$a1, %got_pc_hi20(AdaptRndWeight)
	ld.d	$a1, $a1, %got_pc_lo12(AdaptRndWeight)
	ld.w	$a1, $a1, 0
	sll.w	$a5, $s5, $t6
	sub.d	$a5, $t8, $a5
	mul.d	$a1, $a1, $a5
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a5
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	sra.w	$t8, $a1, $a5
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_36 Depth=3
	move	$t8, $zero
.LBB2_40:                               #   in Loop: Header=BB2_36 Depth=3
	ldptr.d	$a1, $a2, 14176
	ld.d	$a1, $a1, 16
	alsl.d	$a1, $s4, $a1, 3
	ldx.d	$a1, $a1, $fp
	add.d	$a1, $a1, $a3
	stx.w	$t8, $a1, $s3
.LBB2_41:                               #   in Loop: Header=BB2_36 Depth=3
	addi.d	$t0, $t0, 1
	alsl.d	$s0, $s0, $s7, 2
	bnez	$s5, .LBB2_34
# %bb.42:                               #   in Loop: Header=BB2_36 Depth=3
	move	$s5, $zero
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_43:                               # %.preheader491.us.1
                                        #   in Loop: Header=BB2_24 Depth=1
	slli.d	$a4, $a7, 2
	stx.w	$zero, $a3, $a4
	vld	$vr0, $s7, 112
	vld	$vr1, $s7, 96
	vld	$vr2, $s7, 80
	vld	$vr3, $s7, 64
	vst	$vr0, $t7, 48
	vst	$vr1, $t7, 32
	vst	$vr2, $t7, 16
	vst	$vr3, $t7, 0
	ori	$a3, $s5, 1
	slli.d	$s7, $a3, 3
	ldx.d	$a3, $a0, $s7
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a3, 8
	move	$a4, $zero
	move	$a6, $zero
	addi.d	$a7, $zero, -1
	b	.LBB2_45
	.p2align	4, , 16
.LBB2_44:                               #   in Loop: Header=BB2_45 Depth=2
	addi.d	$a4, $a4, 2
	beq	$a4, $s2, .LBB2_49
.LBB2_45:                               #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $t5, $a4
	ld.bu	$fp, $t0, 3
	ld.bu	$t0, $t0, 2
	alsl.d	$t8, $fp, $t7, 4
	slli.d	$s0, $t0, 2
	ldx.w	$t8, $t8, $s0
	addi.d	$a7, $a7, 1
	beqz	$t8, .LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_45 Depth=2
	srai.d	$a1, $t8, 31
	xor	$s0, $t8, $a1
	sub.d	$a1, $s0, $a1
	slti	$t8, $t8, 0
	sub.d	$s0, $zero, $a1
	masknez	$a1, $a1, $t8
	maskeqz	$t8, $s0, $t8
	or	$a1, $t8, $a1
	slli.d	$t8, $a6, 2
	stx.w	$a1, $a0, $t8
	stx.w	$a7, $a3, $t8
	addi.w	$a6, $a6, 1
	addi.d	$a7, $zero, -1
	ori	$a1, $zero, 15
.LBB2_47:                               #   in Loop: Header=BB2_45 Depth=2
	ldptr.w	$t8, $a2, 15260
	beqz	$t8, .LBB2_44
# %bb.48:                               #   in Loop: Header=BB2_45 Depth=2
	ldptr.d	$t8, $a2, 14176
	ld.d	$t8, $t8, 16
	alsl.d	$t8, $s4, $t8, 3
	slli.d	$fp, $fp, 3
	ldx.d	$t8, $t8, $fp
	alsl.d	$t0, $t0, $t8, 2
	st.w	$zero, $t0, 16
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_49:                               # %.preheader491.us.2
                                        #   in Loop: Header=BB2_24 Depth=1
	slli.d	$a3, $a6, 2
	stx.w	$zero, $a0, $a3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	vld	$vr0, $a0, 176
	vld	$vr1, $a0, 160
	vld	$vr2, $a0, 144
	vld	$vr3, $a0, 128
	vst	$vr0, $t7, 48
	vst	$vr1, $t7, 32
	vst	$vr2, $t7, 16
	vst	$vr3, $t7, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	ld.d	$a0, $a0, 8
	ldx.d	$a4, $a0, $a5
	ld.d	$a3, $a4, 0
	ld.d	$a4, $a4, 8
	move	$a5, $zero
	move	$a6, $zero
	addi.d	$a7, $zero, -1
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_50:                               #   in Loop: Header=BB2_51 Depth=2
	addi.d	$a5, $a5, 2
	beq	$a5, $s2, .LBB2_55
.LBB2_51:                               #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $t5, $a5
	ld.bu	$fp, $t0, 3
	ld.bu	$t0, $t0, 2
	alsl.d	$t8, $fp, $t7, 4
	slli.d	$s0, $t0, 2
	ldx.w	$t8, $t8, $s0
	addi.d	$a7, $a7, 1
	beqz	$t8, .LBB2_53
# %bb.52:                               #   in Loop: Header=BB2_51 Depth=2
	srai.d	$a1, $t8, 31
	xor	$s0, $t8, $a1
	sub.d	$a1, $s0, $a1
	slti	$t8, $t8, 0
	sub.d	$s0, $zero, $a1
	masknez	$a1, $a1, $t8
	maskeqz	$t8, $s0, $t8
	or	$a1, $t8, $a1
	slli.d	$t8, $a6, 2
	stx.w	$a1, $a3, $t8
	stx.w	$a7, $a4, $t8
	addi.w	$a6, $a6, 1
	addi.d	$a7, $zero, -1
	ori	$a1, $zero, 15
.LBB2_53:                               #   in Loop: Header=BB2_51 Depth=2
	ldptr.w	$t8, $a2, 15260
	beqz	$t8, .LBB2_50
# %bb.54:                               #   in Loop: Header=BB2_51 Depth=2
	ldptr.d	$t8, $a2, 14176
	ld.d	$t8, $t8, 16
	alsl.d	$t8, $s4, $t8, 3
	slli.d	$fp, $fp, 3
	ldx.d	$t8, $t8, $fp
	alsl.d	$t0, $t0, $t8, 2
	st.w	$zero, $t0, 32
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_55:                               # %.preheader491.us.3
                                        #   in Loop: Header=BB2_24 Depth=1
	slli.d	$a4, $a6, 2
	stx.w	$zero, $a3, $a4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	vld	$vr0, $a3, 240
	vld	$vr1, $a3, 224
	vld	$vr2, $a3, 208
	vld	$vr3, $a3, 192
	vst	$vr0, $t7, 48
	vst	$vr1, $t7, 32
	vst	$vr2, $t7, 16
	vst	$vr3, $t7, 0
	ldx.d	$a3, $a0, $s7
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a3, 8
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $zero, -1
	b	.LBB2_57
	.p2align	4, , 16
.LBB2_56:                               #   in Loop: Header=BB2_57 Depth=2
	addi.d	$a4, $a4, 2
	beq	$a4, $s2, .LBB2_22
.LBB2_57:                               #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $t5, $a4
	ld.bu	$t0, $a7, 3
	ld.bu	$a7, $a7, 2
	alsl.d	$t8, $t0, $t7, 4
	slli.d	$fp, $a7, 2
	ldx.w	$t8, $t8, $fp
	addi.d	$a6, $a6, 1
	beqz	$t8, .LBB2_59
# %bb.58:                               #   in Loop: Header=BB2_57 Depth=2
	srai.d	$a1, $t8, 31
	xor	$fp, $t8, $a1
	sub.d	$a1, $fp, $a1
	slti	$t8, $t8, 0
	sub.d	$fp, $zero, $a1
	masknez	$a1, $a1, $t8
	maskeqz	$t8, $fp, $t8
	or	$a1, $t8, $a1
	slli.d	$t8, $a5, 2
	stx.w	$a1, $a0, $t8
	stx.w	$a6, $a3, $t8
	addi.w	$a5, $a5, 1
	addi.d	$a6, $zero, -1
	ori	$a1, $zero, 15
.LBB2_59:                               #   in Loop: Header=BB2_57 Depth=2
	ldptr.w	$t8, $a2, 15260
	beqz	$t8, .LBB2_56
# %bb.60:                               #   in Loop: Header=BB2_57 Depth=2
	ldptr.d	$t8, $a2, 14176
	ld.d	$t8, $t8, 16
	alsl.d	$t8, $s4, $t8, 3
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t8, $t0
	alsl.d	$a7, $a7, $t0, 2
	st.w	$zero, $a7, 48
	b	.LBB2_56
.LBB2_61:                               # %.preheader486
	vld	$vr0, $s7, 16
	vld	$vr1, $s7, 32
	vld	$vr2, $s7, 48
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	vst	$vr0, $t7, 64
	vst	$vr1, $t7, 128
	vst	$vr2, $t7, 192
	vld	$vr0, $s7, 64
	vld	$vr1, $s7, 80
	vld	$vr2, $s7, 96
	vld	$vr3, $s7, 112
	vst	$vr0, $t7, 16
	vst	$vr1, $t7, 80
	vst	$vr2, $t7, 144
	vst	$vr3, $t7, 208
	vld	$vr0, $s7, 128
	vld	$vr1, $s7, 144
	vld	$vr2, $s7, 160
	vld	$vr3, $s7, 176
	vst	$vr0, $t7, 32
	vst	$vr1, $t7, 96
	vst	$vr2, $t7, 160
	vst	$vr3, $t7, 224
	vld	$vr0, $s7, 192
	vld	$vr1, $s7, 208
	vld	$vr2, $s7, 224
	vld	$vr3, $s7, 240
	vst	$vr0, $t7, 48
	vst	$vr1, $t7, 112
	vst	$vr2, $t7, 176
	vst	$vr3, $t7, 240
	vld	$vr0, $s7, 256
	vld	$vr1, $s7, 272
	vld	$vr2, $s7, 288
	vld	$vr3, $s7, 304
	vst	$vr0, $t7, 256
	vst	$vr1, $t7, 320
	vst	$vr2, $t7, 384
	vst	$vr3, $t7, 448
	vld	$vr0, $s7, 320
	vld	$vr1, $s7, 336
	vld	$vr2, $s7, 352
	vld	$vr3, $s7, 368
	vst	$vr0, $t7, 272
	vst	$vr1, $t7, 336
	vst	$vr2, $t7, 400
	vst	$vr3, $t7, 464
	vld	$vr0, $s7, 384
	vld	$vr1, $s7, 400
	vld	$vr2, $s7, 416
	vld	$vr3, $s7, 432
	vst	$vr0, $t7, 288
	vst	$vr1, $t7, 352
	vst	$vr2, $t7, 416
	vst	$vr3, $t7, 480
	vld	$vr0, $s7, 448
	vld	$vr1, $s7, 464
	vld	$vr2, $s7, 480
	vld	$vr3, $s7, 496
	vst	$vr0, $t7, 304
	vst	$vr1, $t7, 368
	vst	$vr2, $t7, 432
	vst	$vr3, $t7, 496
	vld	$vr0, $s7, 512
	vld	$vr1, $s7, 528
	vld	$vr2, $s7, 544
	vld	$vr3, $s7, 560
	vst	$vr0, $t7, 512
	vst	$vr1, $t7, 576
	vst	$vr2, $t7, 640
	vst	$vr3, $t7, 704
	vld	$vr0, $s7, 576
	vld	$vr1, $s7, 592
	vld	$vr2, $s7, 608
	vld	$vr3, $s7, 624
	vst	$vr0, $t7, 528
	vst	$vr1, $t7, 592
	vst	$vr2, $t7, 656
	vst	$vr3, $t7, 720
	vld	$vr0, $s7, 640
	vld	$vr1, $s7, 656
	vld	$vr2, $s7, 672
	vld	$vr3, $s7, 688
	vst	$vr0, $t7, 544
	vst	$vr1, $t7, 608
	vst	$vr2, $t7, 672
	vst	$vr3, $t7, 736
	vld	$vr0, $s7, 704
	vld	$vr1, $s7, 720
	vld	$vr2, $s7, 736
	vld	$vr3, $s7, 752
	vst	$vr0, $t7, 560
	vst	$vr1, $t7, 624
	vst	$vr2, $t7, 688
	vst	$vr3, $t7, 752
	vld	$vr0, $s7, 768
	vld	$vr1, $s7, 784
	vld	$vr2, $s7, 800
	vld	$vr3, $s7, 816
	vst	$vr0, $t7, 768
	vst	$vr1, $t7, 832
	vst	$vr2, $t7, 896
	vst	$vr3, $t7, 960
	vld	$vr0, $s7, 832
	vld	$vr1, $s7, 848
	vld	$vr2, $s7, 864
	vld	$vr3, $s7, 880
	vst	$vr0, $t7, 784
	vst	$vr1, $t7, 848
	vst	$vr2, $t7, 912
	vst	$vr3, $t7, 976
	vld	$vr0, $s7, 896
	vld	$vr1, $s7, 912
	vld	$vr2, $s7, 928
	vld	$vr3, $s7, 944
	vst	$vr0, $t7, 800
	vst	$vr1, $t7, 864
	vst	$vr2, $t7, 928
	vst	$vr3, $t7, 992
	vld	$vr0, $s7, 960
	vld	$vr1, $s7, 976
	vld	$vr2, $s7, 992
	vld	$vr3, $s7, 1008
	vst	$vr0, $t7, 816
	vst	$vr1, $t7, 880
	vst	$vr2, $t7, 944
	vst	$vr3, $t7, 1008
	vld	$vr0, $s7, 0
	ld.w	$a0, $a2, 20
	vst	$vr0, $t7, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_65
# %bb.62:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_70
# %bb.63:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a3, $a0, 6440
	pcalau12i	$a0, %pc_hi20(lrec)
	ld.d	$a4, $a0, %pc_lo12(lrec)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 9
	add.d	$a0, $a0, $a2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 750
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(dct_luma_16x16.M1+32)
	addi.d	$a5, $a1, %pc_lo12(dct_luma_16x16.M1+32)
	move	$a6, $zero
	addi.w	$a7, $zero, -16
	lu32i.d	$a7, 0
	ori	$t0, $zero, 16
	.p2align	4, , 16
.LBB2_64:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a2, 180
	add.d	$a1, $a6, $a1
	slli.d	$a1, $a1, 3
	ld.h	$t3, $a5, -32
	ld.h	$t4, $a0, -30
	ld.w	$t5, $a2, 176
	ldx.d	$t2, $a3, $a1
	ldx.d	$t1, $a4, $a1
	add.d	$a1, $t4, $t3
	slli.d	$t3, $t5, 1
	stx.h	$a1, $t2, $t3
	slli.d	$a1, $t5, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, -28
	ld.h	$t3, $a0, -28
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 1
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, -24
	ld.h	$t3, $a0, -26
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 2
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, -20
	ld.h	$t3, $a0, -24
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 3
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, -16
	ld.h	$t3, $a0, -22
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 4
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, -12
	ld.h	$t3, $a0, -20
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 5
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, -8
	ld.h	$t3, $a0, -18
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 6
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, -4
	ld.h	$t3, $a0, -16
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 7
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 0
	ld.h	$t3, $a0, -14
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 8
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 4
	ld.h	$t3, $a0, -12
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 9
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 8
	ld.h	$t3, $a0, -10
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 10
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 12
	ld.h	$t3, $a0, -8
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 11
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 16
	ld.h	$t3, $a0, -6
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 12
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 20
	ld.h	$t3, $a0, -4
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 13
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 24
	ld.h	$t3, $a0, -2
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 14
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a5, 28
	ld.h	$t3, $a0, 0
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 15
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, 64
	bne	$a6, $t0, .LBB2_64
	b	.LBB2_74
.LBB2_65:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_72
# %bb.66:                               # %.preheader480
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	ldptr.d	$a3, $a1, 6440
	pcalau12i	$a1, %pc_hi20(lrec)
	ld.d	$a4, $a1, %pc_lo12(lrec)
	addi.w	$a5, $zero, -16
	lu32i.d	$a5, 0
	ori	$a6, $zero, 16
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_67:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_68 Depth 2
	ld.w	$a1, $a2, 180
	add.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a7, $a3, $a1
	ldx.d	$t0, $a4, $a1
	move	$t1, $zero
	move	$t2, $t8
	move	$t3, $t7
	.p2align	4, , 16
.LBB2_68:                               #   Parent Loop BB2_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $t2, 0
	ld.w	$t4, $t3, 0
	ldptr.w	$t5, $a2, 15520
	slli.d	$a1, $a1, 6
	add.d	$a1, $t4, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t4, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t4, $a1
	slt	$t4, $a1, $t5
	ld.w	$t6, $a2, 176
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $t5, $t4
	or	$a1, $a1, $t4
	add.d	$t4, $t1, $t6
	slli.d	$t5, $t4, 1
	stx.h	$a1, $a7, $t5
	slli.d	$a1, $t4, 2
	stx.w	$a5, $t0, $a1
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 2
	bne	$t1, $a6, .LBB2_68
# %bb.69:                               #   in Loop: Header=BB2_67 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 32
	bne	$a0, $a6, .LBB2_67
	b	.LBB2_74
.LBB2_70:                               # %.preheader478
	ld.w	$a1, $a2, 180
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a3, $a0, 6440
	ld.w	$a0, $a2, 176
	alsl.d	$a3, $a1, $a3, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 9
	add.d	$a1, $a1, $a2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 750
	add.d	$a2, $a1, $a2
	pcalau12i	$a1, %pc_hi20(dct_luma_16x16.M1+32)
	addi.d	$a4, $a1, %pc_lo12(dct_luma_16x16.M1+32)
	move	$a5, $zero
	slli.d	$a6, $a0, 1
	ori	$a7, $zero, 128
	.p2align	4, , 16
.LBB2_71:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $a4, -32
	ld.h	$t0, $a2, -30
	ldx.d	$t1, $a3, $a5
	add.d	$a1, $t0, $a1
	stx.h	$a1, $t1, $a6
	ld.h	$a1, $a4, -28
	ld.h	$t2, $a2, -28
	alsl.d	$t0, $a0, $t1, 1
	add.d	$a1, $t2, $a1
	st.h	$a1, $t0, 2
	ld.h	$a1, $a4, -24
	ld.h	$t1, $a2, -26
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 4
	ld.h	$a1, $a4, -20
	ld.h	$t1, $a2, -24
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 6
	ld.h	$a1, $a4, -16
	ld.h	$t1, $a2, -22
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 8
	ld.h	$a1, $a4, -12
	ld.h	$t1, $a2, -20
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 10
	ld.h	$a1, $a4, -8
	ld.h	$t1, $a2, -18
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 12
	ld.h	$a1, $a4, -4
	ld.h	$t1, $a2, -16
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 14
	ld.h	$a1, $a4, 0
	ld.h	$t1, $a2, -14
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 16
	ld.h	$a1, $a4, 4
	ld.h	$t1, $a2, -12
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 18
	ld.h	$a1, $a4, 8
	ld.h	$t1, $a2, -10
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 20
	ld.h	$a1, $a4, 12
	ld.h	$t1, $a2, -8
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 22
	ld.h	$a1, $a4, 16
	ld.h	$t1, $a2, -6
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 24
	ld.h	$a1, $a4, 20
	ld.h	$t1, $a2, -4
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 26
	ld.h	$a1, $a4, 24
	ld.h	$t1, $a2, -2
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 28
	ld.h	$a1, $a4, 28
	ld.h	$t1, $a2, 0
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 30
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, 64
	bne	$a5, $a7, .LBB2_71
	b	.LBB2_74
.LBB2_72:                               # %.preheader482
	ld.w	$a0, $a2, 180
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3232
	ldx.w	$a4, $a2, $a1
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 6440
	move	$a5, $zero
	ld.w	$a7, $a2, 176
	alsl.d	$t0, $a0, $a1, 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 9
	add.d	$a0, $a0, $a2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 750
	add.d	$a0, $a0, $a1
	addi.d	$a2, $t7, 32
	slli.d	$a3, $a7, 1
	ori	$a6, $zero, 128
	.p2align	4, , 16
.LBB2_73:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $a0, -30
	ld.w	$t1, $a2, -32
	ldx.d	$t2, $t0, $a5
	slli.d	$a1, $a1, 6
	add.d	$a1, $t1, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t1, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t1, $a1
	slt	$t1, $a1, $a4
	maskeqz	$a1, $a1, $t1
	masknez	$t1, $a4, $t1
	or	$a1, $a1, $t1
	stx.h	$a1, $t2, $a3
	ld.hu	$a1, $a0, -28
	ld.w	$t3, $a2, -28
	alsl.d	$t1, $a7, $t2, 1
	slli.d	$a1, $a1, 6
	add.d	$a1, $t3, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 2
	ld.hu	$a1, $a0, -26
	ld.w	$t2, $a2, -24
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 4
	ld.hu	$a1, $a0, -24
	ld.w	$t2, $a2, -20
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 6
	ld.hu	$a1, $a0, -22
	ld.w	$t2, $a2, -16
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 8
	ld.hu	$a1, $a0, -20
	ld.w	$t2, $a2, -12
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 10
	ld.hu	$a1, $a0, -18
	ld.w	$t2, $a2, -8
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 12
	ld.hu	$a1, $a0, -16
	ld.w	$t2, $a2, -4
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 14
	ld.hu	$a1, $a0, -14
	ld.w	$t2, $a2, 0
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 16
	ld.hu	$a1, $a0, -12
	ld.w	$t2, $a2, 4
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 18
	ld.hu	$a1, $a0, -10
	ld.w	$t2, $a2, 8
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 20
	ld.hu	$a1, $a0, -8
	ld.w	$t2, $a2, 12
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 22
	ld.hu	$a1, $a0, -6
	ld.w	$t2, $a2, 16
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 24
	ld.hu	$a1, $a0, -4
	ld.w	$t2, $a2, 20
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 26
	ld.hu	$a1, $a0, -2
	ld.w	$t2, $a2, 24
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 28
	ld.hu	$a1, $a0, 0
	ld.w	$t2, $a2, 28
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a4
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a4, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 30
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 32
	addi.d	$a2, $a2, 64
	bne	$a5, $a6, .LBB2_73
.LBB2_74:                               # %.loopexit
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	dct_luma_16x16, .Lfunc_end2-dct_luma_16x16
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dct_luma
.LCPI3_0:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	4                               # 0x4
.LCPI3_1:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI3_2:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI3_3:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI3_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
	.text
	.globl	dct_luma
	.p2align	5
	.type	dct_luma,@function
dct_luma:                               # @dct_luma
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$t8, $a0
	srli.d	$a0, $a0, 2
	srli.d	$a4, $a1, 2
	addi.w	$a5, $zero, -2
	lu52i.d	$a5, $a5, 511
	and	$a4, $a4, $a5
	srli.d	$a5, $t8, 3
	add.d	$a4, $a4, $a5
	bstrpick.d	$a5, $a1, 2, 2
	bstrins.d	$a0, $a5, 63, 1
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	ld.d	$a5, $a5, 0
	ldptr.d	$a6, $a5, 14160
	slli.d	$a4, $a4, 3
	ldx.d	$t0, $a6, $a4
	ld.w	$a4, $a5, 12
	ldptr.d	$a6, $a5, 14224
	slli.d	$a0, $a0, 3
	ori	$a7, $zero, 536
	mul.d	$a4, $a4, $a7
	add.d	$a7, $a6, $a4
	lu12i.w	$s5, 3
	ori	$a4, $s5, 3164
	ldx.w	$a4, $a5, $a4
	ld.w	$a6, $a7, 8
	ldx.d	$t1, $t0, $a0
	sub.w	$a0, $zero, $a4
	move	$t0, $zero
	bne	$a6, $a0, .LBB3_2
# %bb.1:
	ldptr.w	$a0, $a5, 15540
	addi.d	$a0, $a0, -1
	sltui	$t0, $a0, 1
.LBB3_2:
	ld.d	$s1, $t1, 0
	ld.w	$a0, $a7, 428
	ld.d	$s2, $t1, 8
	sltui	$a0, $a0, 1
	pcalau12i	$a7, %pc_hi20(FIELD_SCAN)
	addi.d	$a7, $a7, %pc_lo12(FIELD_SCAN)
	masknez	$a7, $a7, $a0
	pcalau12i	$t1, %pc_hi20(SNGL_SCAN)
	addi.d	$t1, $t1, %pc_lo12(SNGL_SCAN)
	maskeqz	$a0, $t1, $a0
	or	$s3, $a0, $a7
	ori	$s0, $s5, 848
	beqz	$t0, .LBB3_9
# %bb.3:                                # %.preheader
	move	$t1, $zero
	move	$t0, $zero
	move	$a4, $zero
	add.d	$t2, $a5, $s0
	addi.d	$t4, $zero, -1
	ori	$t3, $zero, 32
	lu12i.w	$a0, 244
	ori	$t5, $a0, 575
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$t1, $t1, 2
	beq	$t1, $t3, .LBB3_21
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s3, $t1
	ld.bu	$t7, $a0, 1
	ldx.bu	$a6, $s3, $t1
	slli.d	$a0, $t7, 6
	add.d	$t6, $t2, $a0
	slli.d	$a0, $a6, 2
	ldptr.w	$a1, $a5, 15260
	ldx.w	$a7, $t6, $a0
	beqz	$a1, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	ldptr.d	$a0, $a5, 14176
	slli.d	$a1, $a3, 3
	ldx.d	$a0, $a0, $a1
	add.w	$a1, $fp, $t7
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	add.w	$a1, $t8, $a6
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a0, $a1
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$t4, $t4, 1
	beqz	$a7, .LBB3_4
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a0, $a2, 0
	alsl.d	$a1, $a6, $t6, 2
	add.d	$a0, $a0, $t5
	st.w	$a0, $a2, 0
	ld.w	$a0, $a1, 0
	srai.d	$a1, $a7, 31
	xor	$a4, $a7, $a1
	sub.d	$a1, $a4, $a1
	slti	$a0, $a0, 0
	sub.d	$a4, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $t0, 2
	stx.w	$a0, $s1, $a1
	stx.w	$t4, $s2, $a1
	addi.w	$t0, $t0, 1
	addi.d	$t4, $zero, -1
	ori	$a4, $zero, 1
	b	.LBB3_4
.LBB3_9:                                # %.preheader235
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$t8, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(qp_per_matrix)
	ld.d	$a0, $a0, %got_pc_lo12(qp_per_matrix)
	ld.d	$a0, $a0, 0
	add.w	$a4, $a4, $a6
	slli.d	$a4, $a4, 2
	ldx.w	$a1, $a0, $a4
	pcalau12i	$a6, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a6, $a6, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a6, $a6, 0
	ldx.w	$a4, $a6, $a4
	addi.d	$s6, $a1, 15
	pcalau12i	$a6, %got_pc_hi20(LevelScale4x4Luma)
	ld.d	$a6, $a6, %got_pc_lo12(LevelScale4x4Luma)
	ld.d	$a6, $a6, 0
	slli.d	$a7, $a3, 3
	ldx.d	$a6, $a6, $a7
	slli.d	$a4, $a4, 3
	ldx.d	$s7, $a6, $a4
	pcalau12i	$a6, %got_pc_hi20(LevelOffset4x4Luma)
	ld.d	$a6, $a6, %got_pc_lo12(LevelOffset4x4Luma)
	ld.d	$a6, $a6, 0
	ldx.d	$a6, $a6, $a7
	slli.d	$t0, $a1, 3
	ldx.d	$s8, $a6, $t0
	pcalau12i	$a6, %got_pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a6, $a6, %got_pc_lo12(InvLevelScale4x4Luma)
	ld.d	$a6, $a6, 0
	ldx.d	$a6, $a6, $a7
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ldx.w	$a7, $a5, $s0
	ori	$t0, $s5, 860
	ldx.w	$t0, $a5, $t0
	ori	$a0, $s5, 852
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ldx.w	$t1, $a5, $a0
	ori	$a0, $s5, 856
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$t2, $a5, $a0
	ldx.d	$a0, $a6, $a4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	add.w	$a4, $t0, $a7
	add.w	$a6, $t2, $t1
	sub.w	$t1, $t1, $t2
	sub.w	$a7, $a7, $t0
	add.d	$t2, $a6, $a4
	sub.d	$a4, $a4, $a6
	pcalau12i	$a6, %pc_hi20(dct_luma.m4)
	addi.d	$s4, $a6, %pc_lo12(dct_luma.m4)
	st.w	$a4, $s4, 8
	alsl.d	$a4, $a7, $t1, 1
	slli.d	$a6, $t1, 1
	ori	$a0, $s5, 912
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ldx.w	$t0, $a5, $a0
	ori	$t1, $s5, 924
	ldx.w	$t1, $a5, $t1
	ori	$a0, $s5, 916
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ldx.w	$t3, $a5, $a0
	ori	$a0, $s5, 920
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ldx.w	$t4, $a5, $a0
	sub.d	$a6, $a7, $a6
	st.w	$a6, $s4, 12
	add.d	$a6, $t1, $t0
	add.d	$a7, $t4, $t3
	sub.d	$t3, $t3, $t4
	addi.w	$t4, $t3, 0
	sub.d	$t0, $t0, $t1
	addi.w	$t5, $t0, 0
	add.d	$t6, $a7, $a6
	sub.d	$t1, $a6, $a7
	alsl.d	$a6, $t5, $t3, 1
	ori	$a0, $s5, 976
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a7, $a5, $a0
	ori	$t3, $s5, 988
	ldx.w	$t3, $a5, $t3
	ori	$a0, $s5, 980
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ldx.w	$t5, $a5, $a0
	ori	$a0, $s5, 984
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$t7, $a5, $a0
	slli.d	$t4, $t4, 1
	sub.d	$t0, $t0, $t4
	add.d	$t4, $t3, $a7
	add.d	$t8, $t7, $t5
	sub.d	$t5, $t5, $t7
	addi.w	$t7, $t5, 0
	sub.d	$a7, $a7, $t3
	addi.w	$fp, $a7, 0
	add.d	$s0, $t8, $t4
	sub.d	$t3, $t4, $t8
	alsl.d	$t4, $fp, $t5, 1
	slli.d	$t5, $t7, 1
	ori	$a0, $s5, 1040
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$t7, $a5, $a0
	ori	$a0, $s5, 1044
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$t8, $a5, $a0
	ori	$a0, $s5, 1048
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ldx.w	$fp, $a5, $a0
	ori	$s5, $s5, 1052
	ldx.w	$s5, $a5, $s5
	sub.d	$a7, $a7, $t5
	add.w	$t5, $fp, $t8
	sub.w	$t8, $t8, $fp
	add.w	$fp, $s5, $t7
	sub.w	$t7, $t7, $s5
	add.d	$s5, $t5, $fp
	sub.d	$t5, $fp, $t5
	alsl.d	$fp, $t7, $t8, 1
	slli.d	$t8, $t8, 1
	sub.d	$t7, $t7, $t8
	add.d	$t8, $s0, $t6
	sub.d	$t6, $t6, $s0
	add.d	$s0, $s5, $t2
	sub.d	$t2, $t2, $s5
	add.d	$s5, $t8, $s0
	st.w	$s5, $s4, 0
	sub.d	$t8, $s0, $t8
	st.w	$t8, $s4, 32
	alsl.d	$t8, $t2, $t6, 1
	st.w	$t8, $s4, 16
	slli.d	$t6, $t6, 1
	sub.d	$t2, $t2, $t6
	st.w	$t2, $s4, 48
	add.d	$t2, $t4, $a6
	sub.d	$a6, $a6, $t4
	add.d	$t4, $fp, $a4
	sub.d	$a4, $a4, $fp
	add.d	$t6, $t2, $t4
	st.w	$t6, $s4, 4
	sub.d	$t2, $t4, $t2
	st.w	$t2, $s4, 36
	alsl.d	$t2, $a4, $a6, 1
	st.w	$t2, $s4, 20
	slli.d	$a6, $a6, 1
	sub.d	$a4, $a4, $a6
	ld.w	$a6, $s4, 8
	st.w	$a4, $s4, 52
	add.d	$a4, $t3, $t1
	sub.d	$t1, $t1, $t3
	add.d	$t2, $t5, $a6
	sub.d	$a6, $a6, $t5
	add.d	$t3, $a4, $t2
	st.w	$t3, $s4, 8
	sub.d	$a4, $t2, $a4
	st.w	$a4, $s4, 40
	alsl.d	$a4, $a6, $t1, 1
	st.w	$a4, $s4, 24
	slli.d	$a4, $t1, 1
	sub.d	$a4, $a6, $a4
	ld.w	$a6, $s4, 12
	st.w	$a4, $s4, 56
	add.d	$a4, $a7, $t0
	sub.d	$a7, $t0, $a7
	add.d	$t0, $t7, $a6
	sub.d	$a6, $a6, $t7
	add.d	$t1, $a4, $t0
	st.w	$t1, $s4, 12
	sub.d	$a4, $t0, $a4
	st.w	$a4, $s4, 44
	alsl.d	$a4, $a6, $a7, 1
	st.w	$a4, $s4, 28
	slli.d	$a4, $a7, 1
	sub.d	$a4, $a6, $a4
	st.w	$a4, $s4, 60
	move	$t3, $a1
	addi.d	$a0, $a1, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $s6
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a6, $a4, %got_pc_lo12(input)
	move	$t6, $zero
	move	$t4, $zero
	move	$a4, $zero
	ld.d	$a0, $a6, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$t2, $zero, -1
	ori	$fp, $zero, 32
	lu12i.w	$a6, 244
	ori	$s0, $a6, 575
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               #   in Loop: Header=BB3_11 Depth=1
	ld.w	$a0, $a2, 0
	add.d	$a0, $a0, $a4
	st.w	$a0, $a2, 0
	slti	$a0, $a6, 0
	srai.d	$a1, $ra, 31
	xor	$a4, $ra, $a1
	sub.d	$a1, $a4, $a1
	sub.d	$a4, $zero, $a1
	masknez	$a6, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a6
	slli.d	$a6, $t4, 2
	stx.w	$a0, $s1, $a6
	stx.w	$t2, $s2, $a6
	ld.w	$a0, $a7, 0
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $t8
	addi.w	$t4, $t4, 1
	slti	$a0, $a0, 0
	ldx.w	$a6, $a6, $t5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a0, $a0, $a6
	sll.w	$a0, $a0, $t3
	addi.w	$a0, $a0, 8
	srai.d	$a6, $a0, 4
	addi.d	$t2, $zero, -1
	ori	$a4, $zero, 1
	addi.d	$t6, $t6, 2
	st.w	$a6, $a7, 0
	beq	$t6, $fp, .LBB3_20
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s3, $t6
	ld.bu	$t7, $a6, 1
	ldx.bu	$a7, $s3, $t6
	alsl.d	$t1, $t7, $s4, 4
	slli.d	$t5, $a7, 2
	ldx.w	$a6, $t1, $t5
	slli.d	$t8, $t7, 3
	ldx.d	$s5, $s7, $t8
	ldx.d	$ra, $s8, $t8
	srai.d	$a0, $a6, 31
	xor	$a1, $a6, $a0
	ldx.w	$s5, $s5, $t5
	ldx.w	$ra, $ra, $t5
	ldptr.w	$t0, $a5, 15260
	sub.d	$a0, $a1, $a0
	mul.d	$s5, $s5, $a0
	add.d	$a0, $ra, $s5
	sra.w	$ra, $a0, $s6
	beqz	$t0, .LBB3_16
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	beqz	$ra, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=1
	pcalau12i	$a0, %got_pc_hi20(AdaptRndWeight)
	ld.d	$a0, $a0, %got_pc_lo12(AdaptRndWeight)
	ld.w	$a0, $a0, 0
	sll.w	$a1, $ra, $s6
	sub.d	$a1, $s5, $a1
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sra.w	$s5, $a0, $a1
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               #   in Loop: Header=BB3_11 Depth=1
	move	$s5, $zero
.LBB3_15:                               #   in Loop: Header=BB3_11 Depth=1
	ldptr.d	$a0, $a5, 14176
	slli.d	$a1, $a3, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$a1, $a1, $t7
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a7
	slli.d	$a1, $a1, 2
	stx.w	$s5, $a0, $a1
.LBB3_16:                               #   in Loop: Header=BB3_11 Depth=1
	addi.w	$t2, $t2, 1
	alsl.d	$a7, $a7, $t1, 2
	beqz	$ra, .LBB3_19
# %bb.17:                               #   in Loop: Header=BB3_11 Depth=1
	move	$a4, $s0
	ori	$a0, $zero, 1
	blt	$a0, $ra, .LBB3_10
# %bb.18:                               #   in Loop: Header=BB3_11 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 4180
	pcalau12i	$a1, %pc_hi20(COEFF_COST)
	addi.d	$a1, $a1, %pc_lo12(COEFF_COST)
	alsl.d	$a0, $a0, $a1, 4
	ldx.bu	$a4, $a0, $t2
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_19:                               #   in Loop: Header=BB3_11 Depth=1
	move	$a6, $zero
	addi.d	$t6, $t6, 2
	st.w	$a6, $a7, 0
	bne	$t6, $fp, .LBB3_11
.LBB3_20:                               # %.preheader232
	slli.d	$a0, $t4, 2
	stx.w	$zero, $s1, $a0
	vld	$vr0, $s4, 0
	vld	$vr1, $s4, 16
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr2, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr3, $a0, %pc_lo12(.LCPI3_1)
	vshuf.w	$vr2, $vr1, $vr0
	vpickev.w	$vr4, $vr1, $vr0
	vsub.w	$vr5, $vr2, $vr4
	vadd.w	$vr2, $vr2, $vr4
	vori.b	$vr4, $vr3, 0
	vshuf.w	$vr4, $vr5, $vr2
	vpickve2gr.w	$a0, $vr2, 2
	vpickod.w	$vr0, $vr1, $vr0
	vsrai.w	$vr1, $vr0, 1
	vshuf4i.w	$vr1, $vr1, 177
	vsub.w	$vr2, $vr1, $vr0
	vadd.w	$vr0, $vr1, $vr0
	vshuf.w	$vr3, $vr2, $vr0
	vpickve2gr.w	$a1, $vr0, 2
	vadd.w	$vr0, $vr3, $vr4
	vstelm.w	$vr0, $s4, 0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI3_2)
	vld	$vr1, $a2, %pc_lo12(.LCPI3_2)
	vstelm.w	$vr0, $s4, 4, 1
	vsub.w	$vr2, $vr4, $vr3
	add.d	$a3, $a1, $a0
	vshuf.w	$vr1, $vr0, $vr2
	vst	$vr1, $s4, 8
	vstelm.w	$vr2, $s4, 24, 3
	sub.d	$a0, $a0, $a1
	ld.w	$a1, $s4, 32
	ld.w	$a2, $s4, 40
	st.w	$a0, $s4, 28
	ld.w	$a0, $s4, 36
	ld.w	$a6, $s4, 44
	add.d	$a7, $a2, $a1
	sub.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 1
	sub.d	$a2, $a2, $a6
	srli.d	$a6, $a6, 1
	add.d	$a0, $a6, $a0
	add.d	$t0, $a0, $a7
	st.w	$t0, $s4, 32
	add.d	$t1, $a2, $a1
	st.w	$t1, $s4, 36
	sub.d	$a1, $a1, $a2
	st.w	$a1, $s4, 40
	sub.d	$a0, $a7, $a0
	ld.w	$a1, $s4, 48
	ld.w	$a2, $s4, 56
	st.w	$a0, $s4, 44
	ld.w	$a0, $s4, 52
	ld.w	$a6, $s4, 60
	add.d	$a7, $a2, $a1
	sub.d	$a1, $a1, $a2
	srli.d	$a2, $a0, 1
	sub.d	$a2, $a2, $a6
	srli.d	$a6, $a6, 1
	add.d	$a0, $a6, $a0
	add.d	$t2, $a0, $a7
	st.w	$t2, $s4, 48
	add.d	$t3, $a2, $a1
	st.w	$t3, $s4, 52
	sub.d	$a1, $a1, $a2
	st.w	$a1, $s4, 56
	sub.d	$a0, $a7, $a0
	st.w	$a0, $s4, 60
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a0, $t5, 5
	add.d	$a0, $a5, $a0
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a2, $t4, $a0, 1
	ld.d	$a0, $s4, 4
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3232
	ldx.w	$a1, $a5, $a1
	ld.d	$a6, $s4, 20
	vinsgr2vr.d	$vr1, $a0, 0
	ld.d	$a0, $s4, 40
	ld.w	$a7, $s4, 4
	vinsgr2vr.d	$vr2, $a6, 0
	ld.w	$a6, $s4, 20
	vreplgr2vr.d	$vr3, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI3_3)
	ld.d	$a0, $s4, 56
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vshuf.w	$vr4, $vr1, $vr0
	vinsgr2vr.d	$vr5, $a0, 0
	vreplvei.d	$vr1, $vr5, 0
	vinsgr2vr.w	$vr1, $t2, 0
	vinsgr2vr.w	$vr1, $t3, 1
	ldptr.d	$a0, $a2, 12624
	vsrai.w	$vr6, $vr1, 1
	vshuf4i.w	$vr7, $vr2, 16
	vinsgr2vr.w	$vr7, $a3, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vrepli.b	$vr2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vslli.w	$vr8, $vr1, 6
	vreplgr2vr.w	$vr1, $a1
	vld	$vr9, $s4, 8
	vld	$vr10, $s4, 24
	vld	$vr11, $s4, 40
	vinsgr2vr.w	$vr12, $a3, 0
	vinsgr2vr.w	$vr12, $a6, 1
	vpackev.d	$vr12, $vr10, $vr12
	vsrai.w	$vr12, $vr12, 1
	vinsgr2vr.w	$vr0, $a7, 1
	vpackev.d	$vr0, $vr9, $vr0
	vinsgr2vr.w	$vr13, $t0, 0
	vinsgr2vr.w	$vr13, $t1, 1
	vpackev.d	$vr11, $vr11, $vr13
	vsub.w	$vr0, $vr0, $vr11
	vinsgr2vr.w	$vr11, $t2, 0
	vinsgr2vr.w	$vr11, $t3, 1
	pcalau12i	$a0, %pc_hi20(.LCPI3_4)
	vld	$vr13, $a0, %pc_lo12(.LCPI3_4)
	vpackev.d	$vr5, $vr5, $vr11
	vsub.w	$vr5, $vr12, $vr5
	vrepli.w	$vr11, 32
	vadd.w	$vr0, $vr0, $vr11
	vori.b	$vr12, $vr13, 0
	vshuf.w	$vr12, $vr9, $vr4
	vadd.w	$vr3, $vr3, $vr12
	vshuf.w	$vr13, $vr10, $vr7
	vadd.w	$vr6, $vr6, $vr13
	vadd.w	$vr7, $vr3, $vr11
	vadd.w	$vr3, $vr7, $vr6
	vadd.w	$vr3, $vr3, $vr8
	vsrai.w	$vr3, $vr3, 6
	ldptr.d	$a0, $a2, 12656
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr4, $vr3, $vr1
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	vstx	$vr4, $a5, $a6
	vinsgr2vr.d	$vr3, $a0, 0
	vilvl.h	$vr3, $vr2, $vr3
	vslli.w	$vr3, $vr3, 6
	vadd.w	$vr8, $vr0, $vr5
	vadd.w	$vr3, $vr8, $vr3
	vsrai.w	$vr3, $vr3, 6
	ldptr.d	$a0, $a2, 12688
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	vstx	$vr3, $a5, $t2
	vinsgr2vr.d	$vr8, $a0, 0
	vilvl.h	$vr8, $vr2, $vr8
	vslli.w	$vr8, $vr8, 6
	vsub.w	$vr0, $vr0, $vr5
	vadd.w	$vr0, $vr0, $vr8
	vsrai.w	$vr0, $vr0, 6
	ldptr.d	$a0, $a2, 12720
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	vstx	$vr0, $a5, $t6
	vinsgr2vr.d	$vr5, $a0, 0
	vilvl.h	$vr2, $vr2, $vr5
	vslli.w	$vr2, $vr2, 6
	vsub.w	$vr5, $vr7, $vr6
	vadd.w	$vr2, $vr5, $vr2
	vsrai.w	$vr2, $vr2, 6
	vmaxi.w	$vr2, $vr2, 0
	ld.w	$a0, $a5, 180
	ld.w	$a1, $a5, 176
	vmin.w	$vr1, $vr2, $vr1
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	vstx	$vr1, $a5, $t7
	add.w	$a0, $t5, $a0
	add.w	$a1, $a1, $t4
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ldptr.d	$a2, $a2, 6440
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a2, $a3
	ldx.h	$a6, $a5, $a6
	slli.d	$a1, $a1, 1
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ldx.h	$a7, $a5, $a7
	stx.h	$a6, $a3, $a1
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ldx.h	$a6, $a5, $a6
	addi.d	$t0, $a1, 2
	stx.h	$a7, $a3, $t0
	addi.d	$a7, $a1, 4
	stx.h	$a6, $a3, $a7
	addi.d	$a6, $a1, 6
	add.d	$a3, $a3, $a6
	addi.w	$t1, $a0, 1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a2, $t1
	ldx.h	$t2, $a5, $t2
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$t3, $a5, $t3
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ldx.h	$t4, $a5, $t4
	vstelm.h	$vr4, $a3, 0, 6
	stx.h	$t2, $t1, $a1
	stx.h	$t3, $t1, $t0
	stx.h	$t4, $t1, $a7
	add.d	$a3, $t1, $a6
	addi.w	$t1, $a0, 2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a2, $t1
	ldx.h	$t2, $a5, $t6
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$t3, $a5, $t3
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	ldx.h	$t4, $a5, $t4
	vstelm.h	$vr3, $a3, 0, 6
	stx.h	$t2, $t1, $a1
	stx.h	$t3, $t1, $t0
	stx.h	$t4, $t1, $a7
	add.d	$a3, $t1, $a6
	addi.w	$a0, $a0, 3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ldx.h	$a2, $a5, $t7
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$t1, $a5, $t1
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	ldx.h	$a5, $a5, $t2
	vstelm.h	$vr0, $a3, 0, 6
	stx.h	$a2, $a0, $a1
	stx.h	$t1, $a0, $t0
	stx.h	$a5, $a0, $a7
	add.d	$a0, $a0, $a6
	vstelm.h	$vr1, $a0, 0, 6
	b	.LBB3_22
.LBB3_21:                               # %.loopexit.loopexit
	slli.d	$a0, $t0, 2
	stx.w	$zero, $s1, $a0
	ld.w	$a0, $a5, 180
	ld.w	$a1, $a5, 176
	add.w	$a2, $fp, $a0
	add.w	$a6, $a1, $t8
	slli.d	$a0, $fp, 5
	add.d	$a3, $a5, $a0
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 6440
	ori	$a0, $s5, 336
	add.d	$a7, $a3, $a0
	ldx.h	$t0, $a5, $s0
	slli.d	$a0, $t8, 1
	ldx.h	$t1, $a7, $a0
	slli.d	$t2, $a2, 3
	ldx.d	$t6, $a1, $t2
	add.d	$t0, $t1, $t0
	slli.d	$a6, $a6, 1
	stx.h	$t0, $t6, $a6
	ori	$t0, $s5, 852
	ldx.h	$t1, $a5, $t0
	addi.d	$t0, $a0, 2
	ldx.h	$t2, $a7, $t0
	add.d	$t2, $t2, $t1
	addi.d	$t1, $a6, 2
	stx.h	$t2, $t6, $t1
	ori	$t2, $s5, 856
	ldx.h	$t3, $a5, $t2
	addi.d	$t2, $a0, 4
	ldx.h	$t4, $a7, $t2
	add.d	$t4, $t4, $t3
	addi.d	$t3, $a6, 4
	stx.h	$t4, $t6, $t3
	ori	$t4, $s5, 860
	ldx.h	$t5, $a5, $t4
	addi.d	$t4, $a0, 6
	ldx.h	$a7, $a7, $t4
	add.d	$a7, $a7, $t5
	addi.d	$t5, $a6, 6
	stx.h	$a7, $t6, $t5
	addi.w	$a7, $a2, 1
	ori	$t6, $s5, 368
	add.d	$t6, $a3, $t6
	slli.d	$a7, $a7, 3
	ori	$t7, $s5, 912
	ldx.h	$t7, $a5, $t7
	ldx.h	$t8, $t6, $a0
	ldx.d	$a7, $a1, $a7
	add.d	$t7, $t8, $t7
	stx.h	$t7, $a7, $a6
	ori	$t7, $s5, 916
	ldx.h	$t7, $a5, $t7
	ldx.h	$t8, $t6, $t0
	add.d	$t7, $t8, $t7
	stx.h	$t7, $a7, $t1
	ori	$t7, $s5, 920
	ldx.h	$t7, $a5, $t7
	ldx.h	$t8, $t6, $t2
	add.d	$t7, $t8, $t7
	stx.h	$t7, $a7, $t3
	ori	$t7, $s5, 924
	ldx.h	$t7, $a5, $t7
	ldx.h	$t6, $t6, $t4
	add.d	$t6, $t6, $t7
	stx.h	$t6, $a7, $t5
	addi.w	$a7, $a2, 2
	ori	$t6, $s5, 400
	add.d	$t6, $a3, $t6
	slli.d	$a7, $a7, 3
	ori	$t7, $s5, 976
	ldx.h	$t7, $a5, $t7
	ldx.h	$t8, $t6, $a0
	ldx.d	$a7, $a1, $a7
	add.d	$t7, $t8, $t7
	stx.h	$t7, $a7, $a6
	ori	$t7, $s5, 980
	ldx.h	$t7, $a5, $t7
	ldx.h	$t8, $t6, $t0
	add.d	$t7, $t8, $t7
	stx.h	$t7, $a7, $t1
	ori	$t7, $s5, 984
	ldx.h	$t7, $a5, $t7
	ldx.h	$t8, $t6, $t2
	add.d	$t7, $t8, $t7
	stx.h	$t7, $a7, $t3
	ori	$t7, $s5, 988
	ldx.h	$t7, $a5, $t7
	ldx.h	$t6, $t6, $t4
	add.d	$t6, $t6, $t7
	stx.h	$t6, $a7, $t5
	addi.w	$a2, $a2, 3
	ori	$a7, $s5, 432
	add.d	$a3, $a3, $a7
	slli.d	$a2, $a2, 3
	ori	$a7, $s5, 1040
	ldx.h	$a7, $a5, $a7
	ldx.h	$a0, $a3, $a0
	ldx.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a7
	stx.h	$a0, $a1, $a6
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
.LBB3_22:                               # %.loopexit
	move	$a0, $a4
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
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
.LCPI4_2:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	5                               # 0x5
.LCPI4_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	6                               # 0x6
.LCPI4_4:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	3                               # 0x3
.LCPI4_5:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI4_6:
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	7                               # 0x7
.LCPI4_7:
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	0                               # 0x0
.LCPI4_8:
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	3                               # 0x3
.LCPI4_9:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	1                               # 0x1
	.word	6                               # 0x6
.LCPI4_10:
	.word	2                               # 0x2
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	4294967295                      # 0xffffffff
.LCPI4_11:
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	3                               # 0x3
.LCPI4_12:
	.word	4294967295                      # 0xffffffff
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI4_13:
	.word	4294967295                      # 0xffffffff
	.word	6                               # 0x6
	.word	2                               # 0x2
	.word	4294967295                      # 0xffffffff
.LCPI4_14:
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	3                               # 0x3
.LCPI4_15:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	6                               # 0x6
.LCPI4_16:
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	3                               # 0x3
.LCPI4_17:
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	0                               # 0x0
.LCPI4_18:
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4                               # 0x4
.LCPI4_19:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	0                               # 0x0
.LCPI4_20:
	.word	2                               # 0x2
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	5                               # 0x5
.LCPI4_21:
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	4                               # 0x4
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
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$t1, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	ld.w	$a0, $s0, 12
	ldptr.d	$a1, $s0, 14224
	ori	$a2, $zero, 536
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 72
	ldptr.d	$a1, $s0, 14168
	ori	$a0, $zero, 13
	bltu	$a0, $a2, .LBB4_2
# %bb.1:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a2
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1536
	and	$a3, $a0, $a3
	ori	$a0, $zero, 1
	bnez	$a3, .LBB4_3
.LBB4_2:
	addi.d	$a0, $a2, -14
	sltui	$a0, $a0, 1
.LBB4_3:
	lu12i.w	$a4, 3
	ori	$a2, $a4, 3164
	ldx.w	$a2, $s0, $a2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ldptr.w	$a5, $s0, 15536
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	move	$ra, $zero
	sub.w	$a2, $zero, $a2
	alsl.d	$a1, $t1, $a1, 3
	bne	$a3, $a2, .LBB4_5
# %bb.4:
	ldptr.w	$a2, $s0, 15540
	addi.d	$a2, $a2, -1
	sltui	$ra, $a2, 1
.LBB4_5:
	ld.d	$a2, $a1, 8
	pcalau12i	$a1, %got_pc_hi20(qp_per_matrix)
	ld.d	$a1, $a1, %got_pc_lo12(qp_per_matrix)
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $t1, $a3, 2
	ld.w	$a3, $a3, 12
	ori	$a4, $a4, 3168
	ldx.w	$a5, $s0, $a4
	ld.d	$a4, $a1, 0
	add.w	$a1, $a5, $a3
	slli.d	$a3, $a1, 2
	pcalau12i	$a5, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a5, $a5, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(LevelScale4x4Chroma)
	ld.d	$a6, $a6, %got_pc_lo12(LevelScale4x4Chroma)
	ld.d	$a6, $a6, 0
	slli.d	$t0, $t1, 3
	ldx.d	$a6, $a6, $t0
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(LevelOffset4x4Chroma)
	ld.d	$a0, $a0, %got_pc_lo12(LevelOffset4x4Chroma)
	ld.d	$a0, $a0, 0
	ldx.d	$a7, $a0, $t0
	pcalau12i	$a0, %got_pc_hi20(InvLevelScale4x4Chroma)
	ld.d	$a0, $a0, %got_pc_lo12(InvLevelScale4x4Chroma)
	ld.d	$a0, $a0, 0
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	ldx.d	$t0, $a0, $t0
	ori	$a0, $zero, 2
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	bne	$t2, $a0, .LBB4_7
# %bb.6:
	addi.w	$a0, $a1, 3
	slli.d	$a0, $a0, 2
	ldx.w	$s4, $a4, $a0
	ldx.w	$a0, $a5, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $s4, 16
	b	.LBB4_8
.LBB4_7:
	move	$s4, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ori	$a1, $zero, 1
.LBB4_8:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 428
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ldptr.w	$a0, $s0, 15528
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ldx.w	$a0, $a4, $a3
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s2, $a2, 0
	ld.d	$s3, $a2, 8
	ldx.w	$a0, $a5, $a3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a2, $a6, $a0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ldx.d	$a2, $a7, $a0
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ldx.d	$a0, $t0, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(dct_chroma.m5)
	addi.d	$s5, $a2, %pc_lo12(dct_chroma.m5)
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$ra, $sp, 128                   # 8-byte Folded Spill
	bnez	$ra, .LBB4_16
# %bb.9:                                # %.preheader792
	ldptr.w	$a4, $s0, 15548
	blez	$a4, .LBB4_16
# %bb.10:                               # %.preheader791.lr.ph
	lu12i.w	$a0, 3
	ori	$a2, $a0, 3256
	ldx.w	$a2, $s0, $a2
	move	$a3, $zero
	ori	$a5, $a0, 1052
	add.d	$a6, $s0, $a5
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=1
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 256
	bge	$a3, $a4, .LBB4_16
.LBB4_12:                               # %.preheader791
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	blez	$a2, .LBB4_11
# %bb.13:                               # %.preheader790.lr.ph
                                        #   in Loop: Header=BB4_12 Depth=1
	move	$a7, $zero
	move	$t1, $a6
	.p2align	4, , 16
.LBB4_14:                               # %.preheader790
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $t1, -204
	ld.w	$a4, $t1, -192
	ld.w	$a5, $t1, -200
	ld.w	$t0, $t1, -196
	add.w	$t2, $a4, $a2
	add.w	$t3, $t0, $a5
	sub.d	$a5, $a5, $t0
	sub.d	$a4, $a2, $a4
	add.d	$a2, $t3, $t2
	sub.d	$t0, $t2, $t3
	st.w	$t0, $t1, -196
	alsl.d	$t0, $a4, $a5, 1
	st.w	$t0, $t1, -200
	slli.d	$a5, $a5, 1
	ld.w	$t0, $t1, -140
	ld.w	$t2, $t1, -128
	ld.w	$t3, $t1, -136
	ld.w	$t6, $t1, -132
	sub.d	$a4, $a4, $a5
	st.w	$a4, $t1, -192
	add.d	$a5, $t2, $t0
	add.d	$fp, $t6, $t3
	sub.d	$t3, $t3, $t6
	sub.d	$t0, $t0, $t2
	add.d	$a4, $fp, $a5
	st.w	$a4, $t1, -140
	sub.d	$a5, $a5, $fp
	st.w	$a5, $t1, -132
	alsl.d	$a5, $t0, $t3, 1
	st.w	$a5, $t1, -136
	slli.d	$a5, $t3, 1
	ld.w	$t2, $t1, -76
	ld.w	$t3, $t1, -64
	ld.w	$t6, $t1, -72
	ld.w	$fp, $t1, -68
	sub.d	$a5, $t0, $a5
	st.w	$a5, $t1, -128
	add.d	$a5, $t3, $t2
	add.d	$t0, $fp, $t6
	sub.d	$t6, $t6, $fp
	sub.w	$t2, $t2, $t3
	add.d	$t3, $t0, $a5
	st.w	$t3, $t1, -76
	sub.d	$t0, $a5, $t0
	st.w	$t0, $t1, -68
	alsl.d	$a5, $t2, $t6, 1
	st.w	$a5, $t1, -72
	slli.d	$t6, $t6, 1
	ld.w	$fp, $t1, -12
	ld.w	$s1, $t1, 0
	ld.w	$s5, $t1, -8
	ld.w	$s6, $t1, -4
	sub.d	$t2, $t2, $t6
	st.w	$t2, $t1, -64
	add.w	$t2, $s1, $fp
	add.w	$t6, $s6, $s5
	add.d	$s7, $t6, $t2
	st.w	$s7, $t1, -12
	sub.d	$t2, $t2, $t6
	st.w	$t2, $t1, -4
	add.d	$t6, $s7, $a2
	add.d	$s8, $t3, $a4
	add.d	$ra, $s8, $t6
	st.w	$ra, $t1, -204
	sub.d	$t6, $t6, $s8
	st.w	$t6, $t1, -76
	ld.w	$t6, $t1, -136
	ld.w	$s8, $t1, -196
	ld.w	$ra, $t1, -132
	ld.w	$t7, $t1, -200
	add.d	$t8, $a5, $t6
	add.d	$t5, $t2, $s8
	add.d	$t4, $t0, $ra
	add.d	$a0, $t4, $t5
	st.w	$a0, $t1, -196
	sub.d	$a0, $t5, $t4
	st.w	$a0, $t1, -68
	sub.w	$a0, $s5, $s6
	sub.w	$t4, $fp, $s1
	alsl.d	$t5, $t4, $a0, 1
	st.w	$t5, $t1, -8
	sub.d	$a4, $a4, $t3
	sub.d	$a2, $a2, $s7
	alsl.d	$t3, $a2, $a4, 1
	st.w	$t3, $t1, -140
	add.d	$t3, $t5, $t7
	sub.d	$a5, $t6, $a5
	sub.d	$t5, $t7, $t5
	add.d	$t6, $t8, $t3
	st.w	$t6, $t1, -200
	sub.d	$t3, $t3, $t8
	st.w	$t3, $t1, -72
	alsl.d	$t3, $t5, $a5, 1
	st.w	$t3, $t1, -136
	sub.d	$t0, $ra, $t0
	sub.d	$t2, $s8, $t2
	vinsgr2vr.w	$vr0, $a4, 0
	vinsgr2vr.w	$vr0, $a5, 1
	vinsgr2vr.w	$vr0, $t0, 2
	vinsgr2vr.w	$vr0, $a0, 3
	vslli.w	$vr0, $vr0, 1
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $t5, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t4, 3
	vsub.w	$vr0, $vr1, $vr0
	vst	$vr0, $t1, -12
	ld.w	$a0, $t1, -192
	ld.w	$a2, $t1, 0
	ld.w	$t3, $t1, -128
	ld.w	$t4, $t1, -64
	alsl.d	$a4, $t2, $t0, 1
	st.w	$a4, $t1, -132
	add.d	$a4, $a2, $a0
	add.d	$a5, $t4, $t3
	sub.d	$t0, $t3, $t4
	sub.d	$t2, $a0, $a2
	add.d	$a0, $a5, $a4
	st.w	$a0, $t1, -192
	sub.d	$a0, $a4, $a5
	st.w	$a0, $t1, -64
	alsl.d	$a0, $t2, $t0, 1
	st.w	$a0, $t1, -128
	slli.d	$a0, $t0, 1
	sub.d	$a0, $t2, $a0
	st.w	$a0, $t1, 0
	ldptr.w	$a2, $s0, 15544
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 16
	blt	$a7, $a2, .LBB4_14
# %bb.15:                               # %._crit_edge
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	st.w	$a4, $s5, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3260
	ldx.w	$a4, $s0, $a0
	st.w	$a5, $s5, 4
	st.w	$t0, $s5, 8
	st.w	$t2, $s5, 12
	ld.d	$ra, $sp, 128                   # 8-byte Folded Reload
	b	.LBB4_11
.LBB4_16:                               # %.loopexit793
	pcalau12i	$a0, %pc_hi20(SNGL_SCAN)
	addi.d	$s1, $a0, %pc_lo12(SNGL_SCAN)
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	beq	$a4, $a0, .LBB4_54
# %bb.17:                               # %.loopexit793
	ori	$a0, $zero, 2
	beq	$a4, $a0, .LBB4_30
# %bb.18:                               # %.loopexit793
	ori	$a0, $zero, 3
	bne	$a4, $a0, .LBB4_69
# %bb.19:                               # %.preheader788
	pcalau12i	$a0, %pc_hi20(dct_chroma.m4)
	addi.d	$a0, $a0, %pc_lo12(dct_chroma.m4)
	ldptr.w	$a1, $s0, 15548
	blez	$a1, .LBB4_70
# %bb.20:                               # %.preheader787.lr.ph
	ldptr.w	$a3, $s0, 15544
	blez	$a3, .LBB4_70
# %bb.21:                               # %.preheader787.us.preheader
	move	$a4, $zero
	lu12i.w	$a5, 3
	ori	$a2, $a5, 848
	add.d	$a6, $s0, $a2
	addi.d	$a2, $a3, -1
	srli.d	$a2, $a2, 2
	addi.d	$a7, $a2, 1
	bstrpick.d	$a2, $a7, 62, 2
	slli.d	$t1, $a2, 2
	slli.d	$t3, $a2, 4
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	pcalau12i	$a2, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI4_1)
	ori	$a2, $a5, 896
	add.d	$t6, $s0, $a2
	ori	$fp, $zero, 13
	move	$s4, $a0
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_22:                               # %._crit_edge809.us
                                        #   in Loop: Header=BB4_23 Depth=1
	addi.d	$a4, $a4, 4
	addi.d	$t6, $t6, 256
	addi.d	$s4, $s4, 4
	addi.d	$a6, $a6, 256
	bgeu	$a4, $a1, .LBB4_70
.LBB4_23:                               # %.preheader787.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	bgeu	$a3, $fp, .LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	move	$a2, $zero
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_25:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_23 Depth=1
	add.d	$a2, $a0, $a4
	move	$a5, $t6
	move	$t0, $t1
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB4_26:                               # %vector.body
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a5, -48
	ld.w	$t4, $a5, -32
	ld.w	$t5, $a5, -16
	ld.w	$t7, $a5, 0
	vsrli.d	$vr4, $vr3, 2
	vsrli.d	$vr5, $vr2, 2
	vpickve2gr.d	$t8, $vr5, 0
	slli.d	$t8, $t8, 4
	vpickve2gr.d	$s5, $vr5, 1
	slli.d	$s5, $s5, 4
	vpickve2gr.d	$s6, $vr4, 0
	slli.d	$s6, $s6, 4
	vpickve2gr.d	$s7, $vr4, 1
	slli.d	$s7, $s7, 4
	stx.w	$t2, $a2, $t8
	stx.w	$t4, $a2, $s5
	stx.w	$t5, $a2, $s6
	stx.w	$t7, $a2, $s7
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr3, $vr3, 16
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB4_23 Depth=1
	move	$a2, $t3
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	beq	$a7, $t1, .LBB4_22
.LBB4_28:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_23 Depth=1
	slli.d	$a5, $a2, 2
	bstrins.d	$a5, $zero, 3, 0
	add.d	$a5, $s4, $a5
	alsl.d	$t0, $a2, $a6, 2
	.p2align	4, , 16
.LBB4_29:                               # %scalar.ph
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	st.w	$t2, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, 16
	bltu	$a2, $a3, .LBB4_29
	b	.LBB4_22
.LBB4_30:                               # %.preheader780
	ldptr.w	$a4, $s0, 15548
	pcalau12i	$a0, %pc_hi20(dct_chroma.m3)
	addi.d	$a3, $a0, %pc_lo12(dct_chroma.m3)
	blez	$a4, .LBB4_41
# %bb.31:                               # %.preheader779.lr.ph
	ldptr.w	$a6, $s0, 15544
	blez	$a6, .LBB4_41
# %bb.32:                               # %.preheader779.us.preheader
	move	$a7, $zero
	lu12i.w	$a2, 3
	ori	$a0, $a2, 848
	add.d	$t1, $s0, $a0
	addi.d	$a0, $a6, -1
	srli.d	$a0, $a0, 2
	addi.d	$t3, $a0, 1
	bstrpick.d	$a0, $t3, 62, 2
	slli.d	$t6, $a0, 2
	slli.d	$fp, $a0, 4
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI4_1)
	ori	$a0, $a2, 896
	add.d	$s5, $s0, $a0
	ori	$s6, $zero, 13
	move	$s7, $a3
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               # %._crit_edge842.us
                                        #   in Loop: Header=BB4_34 Depth=1
	addi.d	$a7, $a7, 4
	addi.d	$s5, $s5, 256
	addi.d	$s7, $s7, 4
	addi.d	$t1, $t1, 256
	bgeu	$a7, $a4, .LBB4_41
.LBB4_34:                               # %.preheader779.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_37 Depth 2
                                        #     Child Loop BB4_40 Depth 2
	bgeu	$a6, $s6, .LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_34 Depth=1
	move	$a2, $zero
	b	.LBB4_39
	.p2align	4, , 16
.LBB4_36:                               # %vector.body1247.preheader
                                        #   in Loop: Header=BB4_34 Depth=1
	add.d	$a2, $a3, $a7
	move	$a5, $s5
	move	$t0, $t6
	vori.b	$vr2, $vr1, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB4_37:                               # %vector.body1247
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $a5, -48
	ld.w	$t2, $a5, -32
	ld.w	$t4, $a5, -16
	ld.w	$t5, $a5, 0
	vsrli.d	$vr4, $vr3, 2
	vsrli.d	$vr5, $vr2, 2
	vpickve2gr.d	$t7, $vr5, 0
	slli.d	$t7, $t7, 4
	vpickve2gr.d	$t8, $vr5, 1
	slli.d	$t8, $t8, 4
	vpickve2gr.d	$s8, $vr4, 0
	slli.d	$s8, $s8, 4
	vpickve2gr.d	$ra, $vr4, 1
	slli.d	$ra, $ra, 4
	stx.w	$a0, $a2, $t7
	stx.w	$t2, $a2, $t8
	stx.w	$t4, $a2, $s8
	stx.w	$t5, $a2, $ra
	vaddi.du	$vr2, $vr2, 16
	vaddi.du	$vr3, $vr3, 16
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_37
# %bb.38:                               # %middle.block1253
                                        #   in Loop: Header=BB4_34 Depth=1
	move	$a2, $fp
	ld.d	$ra, $sp, 128                   # 8-byte Folded Reload
	beq	$t3, $t6, .LBB4_33
.LBB4_39:                               # %scalar.ph1242.preheader
                                        #   in Loop: Header=BB4_34 Depth=1
	slli.d	$a0, $a2, 2
	bstrins.d	$a0, $zero, 3, 0
	add.d	$a5, $s7, $a0
	alsl.d	$t0, $a2, $t1, 2
	.p2align	4, , 16
.LBB4_40:                               # %scalar.ph1242
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $t0, 0
	st.w	$a0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, 16
	bltu	$a2, $a6, .LBB4_40
	b	.LBB4_33
.LBB4_41:                               # %._crit_edge844
	bnez	$ra, .LBB4_43
# %bb.42:                               # %.loopexit778
	vld	$vr0, $a3, 16
	vld	$vr1, $a3, 0
	vld	$vr2, $a3, 12
	vbsrl.v	$vr3, $vr0, 12
	vbsll.v	$vr4, $vr1, 4
	pcalau12i	$a0, %pc_hi20(.LCPI4_15)
	vld	$vr5, $a0, %pc_lo12(.LCPI4_15)
	vor.v	$vr3, $vr4, $vr3
	vadd.w	$vr4, $vr3, $vr2
	vsub.w	$vr2, $vr3, $vr2
	vshuf.w	$vr5, $vr2, $vr4
	vshuf4i.d	$vr4, $vr2, 12
	vadd.w	$vr2, $vr1, $vr0
	vsub.w	$vr0, $vr1, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI4_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI4_4)
	vadd.w	$vr3, $vr4, $vr5
	pcalau12i	$a0, %pc_hi20(.LCPI4_16)
	vld	$vr6, $a0, %pc_lo12(.LCPI4_16)
	pcalau12i	$a0, %pc_hi20(.LCPI4_17)
	vld	$vr7, $a0, %pc_lo12(.LCPI4_17)
	vsub.w	$vr4, $vr4, $vr5
	vshuf.w	$vr1, $vr2, $vr0
	vshuf.w	$vr6, $vr4, $vr3
	vshuf.w	$vr7, $vr2, $vr0
	vadd.w	$vr0, $vr1, $vr7
	vsub.w	$vr1, $vr1, $vr7
	vshuf4i.d	$vr1, $vr0, 12
	vadd.w	$vr0, $vr1, $vr6
	pcalau12i	$a0, %pc_hi20(dct_chroma.m4)
	addi.d	$a0, $a0, %pc_lo12(dct_chroma.m4)
	vstelm.w	$vr0, $a0, 0, 2
	vstelm.w	$vr0, $a0, 4, 1
	vsub.w	$vr2, $vr1, $vr6
	vstelm.w	$vr2, $a0, 24, 3
	pcalau12i	$a2, %pc_hi20(.LCPI4_18)
	vld	$vr3, $a2, %pc_lo12(.LCPI4_18)
	vsub.w	$vr4, $vr6, $vr1
	pcalau12i	$a2, %pc_hi20(.LCPI4_19)
	vld	$vr5, $a2, %pc_lo12(.LCPI4_19)
	vshuf.w	$vr3, $vr0, $vr4
	vst	$vr3, $a0, 8
	vstelm.w	$vr2, $a0, 28, 0
	vshuf.w	$vr5, $vr6, $vr1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	vst	$vr5, $a0, 0
.LBB4_43:
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a0, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a7, $s4, $a0, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 4080
	sll.w	$t3, $a2, $a0
	pcalau12i	$a0, %pc_hi20(SCAN_YUV422+1)
	addi.d	$s5, $a0, %pc_lo12(SCAN_YUV422+1)
	addi.d	$a4, $zero, -1
	ori	$s6, $zero, 7
	pcalau12i	$a0, %pc_hi20(dct_chroma.m4)
	addi.d	$t1, $a0, %pc_lo12(dct_chroma.m4)
	move	$s8, $zero
	move	$s7, $zero
	move	$t4, $zero
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_44:                               #   in Loop: Header=BB4_46 Depth=1
	beqz	$s6, .LBB4_83
.LBB4_45:                               # %.backedge.backedge
                                        #   in Loop: Header=BB4_46 Depth=1
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 2
.LBB4_46:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s5, 0
	ld.bu	$t6, $s5, -1
	slli.d	$fp, $a0, 2
	beqz	$ra, .LBB4_48
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	alsl.d	$a0, $t6, $a3, 4
	ldx.w	$a2, $a0, $fp
	srai.d	$a0, $a2, 31
	xor	$a5, $a2, $a0
	sub.w	$t0, $a5, $a0
	alsl.d	$a0, $t6, $t1, 4
	stx.w	$a2, $a0, $fp
	addi.d	$a4, $a4, 1
	bnez	$t0, .LBB4_49
	b	.LBB4_50
	.p2align	4, , 16
.LBB4_48:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a0, $a6, 0
	ld.d	$a5, $a7, 0
	alsl.d	$a2, $t6, $t1, 4
	ldx.w	$a2, $a2, $fp
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a5, 0
	srai.d	$t0, $a2, 31
	ld.w	$a0, $a0, 0
	ld.w	$a5, $a5, 0
	xor	$t2, $a2, $t0
	sub.d	$t0, $t2, $t0
	mul.d	$a0, $a0, $t0
	alsl.w	$a0, $a5, $a0, 1
	sra.w	$t0, $a0, $a1
	addi.d	$a4, $a4, 1
	beqz	$t0, .LBB4_50
.LBB4_49:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 368
	or	$a0, $a0, $t3
	st.d	$a0, $a5, 368
	ori	$t4, $zero, 1
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $t4, $t2
	masknez	$a5, $t4, $a0
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $a5
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slti	$a0, $a2, 0
	srai.d	$a5, $t0, 31
	xor	$t2, $t0, $a5
	sub.d	$a5, $t2, $a5
	sub.d	$t2, $zero, $a5
	masknez	$a5, $a5, $a0
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $a5
	slli.d	$a5, $s7, 2
	stx.w	$a0, $s2, $a5
	stx.w	$a4, $s3, $a5
	addi.w	$s7, $s7, 1
	addi.d	$a4, $zero, -1
.LBB4_50:                               #   in Loop: Header=BB4_46 Depth=1
	addi.d	$s8, $s8, 1
	bnez	$ra, .LBB4_44
# %bb.51:                               # %.thread1161
                                        #   in Loop: Header=BB4_46 Depth=1
	slti	$a0, $a2, 0
	srai.d	$a2, $t0, 31
	xor	$a5, $t0, $a2
	sub.d	$a2, $a5, $a2
	sub.d	$a5, $zero, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a2
	alsl.d	$a2, $t6, $a3, 4
	stx.w	$a0, $a2, $fp
	bnez	$s6, .LBB4_45
# %bb.52:
	slli.d	$a0, $s7, 2
	stx.w	$zero, $s2, $a0
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, 16
	vadd.w	$vr2, $vr1, $vr0
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t1, 16
	vst	$vr2, $t1, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a2, $a0, 3
	addi.d	$a0, $s4, -4
	ori	$t0, $zero, 3
	sub.d	$a1, $t0, $s4
	ori	$a3, $zero, 1
	sll.w	$a1, $a3, $a1
	ori	$a3, $zero, 4
	sub.d	$a4, $a3, $s4
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	vpickve2gr.w	$a5, $vr2, 0
	vpickve2gr.w	$a6, $vr2, 2
	add.d	$t1, $a6, $a5
	ld.d	$a3, $a2, 0
	sub.d	$a2, $a5, $a6
	vpickve2gr.w	$a5, $vr2, 1
	vpickve2gr.w	$a6, $vr2, 3
	ld.w	$a7, $a3, 0
	sub.d	$t2, $a5, $a6
	add.d	$t3, $a6, $a5
	add.d	$a5, $t3, $t1
	mul.d	$a7, $a7, $a5
	add.d	$a6, $t2, $a2
	sub.d	$a5, $a2, $t2
	sub.d	$a2, $t1, $t3
	blt	$t0, $s4, .LBB4_89
# %bb.53:
	add.d	$a7, $a7, $a1
	sra.w	$a7, $a7, $a4
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	stptr.w	$a7, $s0, 13136
	ld.w	$a7, $a3, 0
	mul.d	$a6, $a7, $a6
	add.d	$a6, $a6, $a1
	sra.w	$a6, $a6, $a4
	addi.w	$a6, $a6, 2
	srli.d	$a6, $a6, 2
	stptr.w	$a6, $s0, 13392
	ld.w	$a6, $a3, 0
	mul.d	$a5, $a6, $a5
	add.d	$a5, $a5, $a1
	sra.w	$a5, $a5, $a4
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a3, 0
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a1
	sra.w	$a2, $a2, $a4
	b	.LBB4_90
.LBB4_54:
	ldptr.w	$s5, $s0, 13136
	ldptr.w	$t3, $s0, 13152
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a4, $a0, 2
	lu12i.w	$a1, 240
	beqz	$ra, .LBB4_84
# %bb.55:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a3, $a0, 0
	bstrpick.d	$a0, $a4, 31, 2
	slli.d	$a0, $a0, 2
	ldptr.w	$a4, $a3, 4008
	sll.w	$a0, $a1, $a0
	srai.d	$a1, $s5, 31
	xor	$a2, $s5, $a1
	sub.w	$a2, $a2, $a1
	bnez	$a4, .LBB4_57
# %bb.56:
	ld.w	$a1, $s0, 36
	slti	$a1, $a1, 4
	ori	$a5, $zero, 2063
	sltu	$a6, $a2, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a2, $a6
	or	$a5, $a6, $a5
	maskeqz	$a5, $a5, $a1
	masknez	$a1, $a2, $a1
	or	$a2, $a5, $a1
.LBB4_57:
	ldptr.w	$a6, $s0, 13392
	ldptr.w	$a1, $s0, 13408
	beqz	$a2, .LBB4_105
# %bb.58:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 368
	move	$t1, $zero
	or	$a4, $a4, $a0
	st.d	$a4, $a5, 368
	ori	$t4, $zero, 1
	slti	$a4, $s5, 0
	sub.d	$a5, $zero, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	slt	$a5, $t4, $a7
	or	$a2, $a4, $a2
	st.w	$a2, $s2, 0
	st.w	$zero, $s3, 0
	ori	$a2, $zero, 4008
	ldx.w	$a4, $a3, $a2
	masknez	$a2, $t4, $a5
	maskeqz	$a5, $a7, $a5
	or	$a2, $a5, $a2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	srai.d	$a2, $t3, 31
	xor	$a5, $t3, $a2
	sub.w	$a2, $a5, $a2
	bnez	$a4, .LBB4_60
.LBB4_59:
	ld.w	$a5, $s0, 36
	slti	$a5, $a5, 4
	ori	$a7, $zero, 2063
	sltu	$t0, $a2, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $a2, $t0
	or	$a7, $t0, $a7
	maskeqz	$a7, $a7, $a5
	masknez	$a2, $a2, $a5
	or	$a2, $a7, $a2
.LBB4_60:
	beqz	$a2, .LBB4_106
# %bb.61:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 368
	or	$a4, $a4, $a0
	st.d	$a4, $a5, 368
	ori	$a4, $zero, 1
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	slt	$a5, $a4, $a7
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a7, $a5
	or	$a4, $a5, $a4
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	slti	$a4, $t3, 0
	sub.d	$a5, $zero, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a2, $a4, $a2
	slli.d	$a4, $t4, 2
	stx.w	$a2, $s2, $a4
	stx.w	$t1, $s3, $a4
	ori	$a2, $zero, 4008
	ldx.w	$a4, $a3, $a2
	addi.d	$a7, $t4, 1
	addi.d	$t1, $zero, -1
	ori	$t4, $zero, 1
	srai.d	$a2, $a6, 31
	xor	$a5, $a6, $a2
	sub.w	$a5, $a5, $a2
	bnez	$a4, .LBB4_63
.LBB4_62:
	ld.w	$a2, $s0, 36
	slti	$a2, $a2, 4
	ori	$t0, $zero, 2063
	sltu	$t2, $a5, $t0
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $a5, $t2
	or	$t0, $t2, $t0
	maskeqz	$t0, $t0, $a2
	masknez	$a2, $a5, $a2
	or	$a5, $t0, $a2
.LBB4_63:
	addi.d	$a2, $t1, 1
	beqz	$a5, .LBB4_65
# %bb.64:
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $t0, 368
	or	$a4, $a4, $a0
	st.d	$a4, $t0, 368
	ori	$t4, $zero, 1
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	slt	$a4, $t4, $t1
	masknez	$t0, $t4, $a4
	maskeqz	$t1, $t1, $a4
	slti	$a4, $a6, 0
	sub.d	$a6, $zero, $a5
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	slli.d	$a5, $a7, 2
	stx.w	$a4, $s2, $a5
	stx.w	$a2, $s3, $a5
	ori	$a2, $zero, 4008
	ldx.w	$a4, $a3, $a2
	or	$a2, $t1, $t0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a7, $a7, 1
	addi.d	$a2, $zero, -1
.LBB4_65:
	srai.d	$a3, $a1, 31
	xor	$a5, $a1, $a3
	sub.w	$a3, $a5, $a3
	bnez	$a4, .LBB4_67
# %bb.66:
	ld.w	$a4, $s0, 36
	slti	$a4, $a4, 4
	ori	$a5, $zero, 2063
	sltu	$a6, $a3, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a3, $a6
	or	$a5, $a6, $a5
	maskeqz	$a5, $a5, $a4
	masknez	$a3, $a3, $a4
	or	$a3, $a5, $a3
.LBB4_67:
	beqz	$a3, .LBB4_107
# %bb.68:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 368
	addi.d	$a2, $a2, 1
	or	$a0, $a4, $a0
	st.d	$a0, $a5, 368
	ori	$a6, $zero, 1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a6, $a5
	ori	$a4, $zero, 1
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	masknez	$a4, $a6, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slti	$a0, $a1, 0
	sub.d	$a1, $zero, $a3
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a1, $a7, 2
	stx.w	$a0, $s2, $a1
	stx.w	$a2, $s3, $a1
	addi.d	$a7, $a7, 1
	b	.LBB4_108
.LBB4_69:
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	lu12i.w	$s3, 3
	b	.LBB4_127
.LBB4_70:                               # %.preheader786
	bnez	$ra, .LBB4_72
# %bb.71:                               # %.lr.ph820.split.preheader
	vld	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_2)
	vld	$vr2, $a0, 48
	vori.b	$vr4, $vr1, 0
	vshuf.w	$vr4, $vr0, $vr2
	vshuf.w	$vr1, $vr2, $vr0
	vadd.w	$vr3, $vr4, $vr1
	vsub.w	$vr1, $vr4, $vr1
	vld	$vr4, $a0, 32
	vld	$vr5, $a0, 16
	vshuf4i.d	$vr3, $vr1, 12
	vld	$vr6, $a0, 28
	vbsrl.v	$vr1, $vr4, 12
	vbsll.v	$vr7, $vr5, 4
	vor.v	$vr7, $vr7, $vr1
	vadd.w	$vr8, $vr7, $vr6
	pcalau12i	$a1, %pc_hi20(.LCPI4_3)
	vld	$vr9, $a1, %pc_lo12(.LCPI4_3)
	pcalau12i	$a1, %pc_hi20(.LCPI4_4)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_4)
	vsub.w	$vr6, $vr7, $vr6
	vshuf.w	$vr9, $vr6, $vr8
	vadd.w	$vr6, $vr5, $vr4
	vsub.w	$vr4, $vr5, $vr4
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr6, $vr4
	vadd.w	$vr4, $vr0, $vr2
	vsub.w	$vr0, $vr0, $vr2
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr4, $vr0
	vsub.w	$vr2, $vr3, $vr9
	vsub.w	$vr4, $vr6, $vr5
	vshuf4i.w	$vr7, $vr4, 27
	pcalau12i	$a1, %pc_hi20(.LCPI4_5)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_5)
	vshuf4i.w	$vr8, $vr2, 177
	vadd.w	$vr10, $vr2, $vr8
	vsub.w	$vr2, $vr2, $vr8
	vshuf.w	$vr0, $vr2, $vr10
	vadd.w	$vr8, $vr7, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI4_6)
	vld	$vr2, $a1, %pc_lo12(.LCPI4_6)
	pcalau12i	$a1, %pc_hi20(.LCPI4_7)
	vld	$vr11, $a1, %pc_lo12(.LCPI4_7)
	vsub.w	$vr4, $vr7, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI4_8)
	vld	$vr7, $a1, %pc_lo12(.LCPI4_8)
	vshuf.w	$vr2, $vr4, $vr8
	vori.b	$vr4, $vr11, 0
	vshuf.w	$vr4, $vr9, $vr5
	vshuf.w	$vr11, $vr3, $vr6
	vadd.w	$vr4, $vr4, $vr11
	vori.b	$vr11, $vr7, 0
	vshuf.w	$vr11, $vr9, $vr5
	vshuf.w	$vr7, $vr3, $vr6
	vadd.w	$vr3, $vr11, $vr7
	vadd.w	$vr5, $vr3, $vr4
	vpickve2gr.w	$a1, $vr5, 1
	vpickve2gr.w	$a2, $vr5, 0
	add.w	$a1, $a2, $a1
	srli.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.LCPI4_9)
	vld	$vr6, $a2, %pc_lo12(.LCPI4_9)
	pcalau12i	$a2, %pc_hi20(.LCPI4_10)
	vld	$vr7, $a2, %pc_lo12(.LCPI4_10)
	st.w	$a1, $a0, 0
	vsub.w	$vr3, $vr4, $vr3
	vshuf.w	$vr6, $vr5, $vr3
	vshuf.w	$vr7, $vr5, $vr3
	vilvl.w	$vr4, $vr8, $vr7
	vreplvei.w	$vr8, $vr10, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_11)
	vld	$vr9, $a1, %pc_lo12(.LCPI4_11)
	pcalau12i	$a1, %pc_hi20(.LCPI4_12)
	vld	$vr10, $a1, %pc_lo12(.LCPI4_12)
	pcalau12i	$a1, %pc_hi20(.LCPI4_13)
	vld	$vr11, $a1, %pc_lo12(.LCPI4_13)
	vshuf.w	$vr9, $vr3, $vr8
	vpackod.w	$vr8, $vr5, $vr3
	vshuf.w	$vr10, $vr5, $vr3
	vshuf.w	$vr11, $vr5, $vr3
	vadd.w	$vr3, $vr4, $vr9
	vadd.w	$vr4, $vr6, $vr8
	vsub.w	$vr5, $vr7, $vr11
	vsub.w	$vr6, $vr6, $vr10
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr6, $vr4
	vshuf.w	$vr1, $vr5, $vr3
	vsrai.w	$vr1, $vr1, 1
	vsrai.w	$vr3, $vr7, 1
	vst	$vr3, $a0, 4
	vst	$vr1, $a0, 20
	vadd.w	$vr1, $vr2, $vr0
	vpickve2gr.w	$a1, $vr1, 1
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 36
	vsub.w	$vr3, $vr2, $vr0
	vpickve2gr.w	$a1, $vr3, 2
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 56
	vsub.w	$vr4, $vr0, $vr2
	vshuf4i.d	$vr4, $vr1, 12
	vsrai.w	$vr1, $vr4, 1
	vst	$vr1, $a0, 40
	pcalau12i	$a1, %pc_hi20(.LCPI4_14)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_14)
	vpickve2gr.w	$a1, $vr3, 3
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 60
	vshuf.w	$vr1, $vr0, $vr2
	vst	$vr1, $s5, 0
.LBB4_72:                               # %.preheader784
	move	$a3, $zero
	move	$a1, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a5, 3
	addi.d	$a7, $a2, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 4
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	sll.d	$t1, $a5, $a2
	addi.d	$t3, $s1, 1
	addi.d	$fp, $zero, -1
	ori	$t6, $zero, 15
	ori	$t8, $zero, 1
	b	.LBB4_75
	.p2align	4, , 16
.LBB4_73:                               #   in Loop: Header=BB4_75 Depth=1
	beqz	$t6, .LBB4_88
.LBB4_74:                               # %.backedge1187.backedge
                                        #   in Loop: Header=BB4_75 Depth=1
	addi.d	$t6, $t6, -1
	addi.d	$t3, $t3, 2
.LBB4_75:                               # %.backedge1187
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $t3, -1
	ld.bu	$a5, $t3, 0
	alsl.d	$a2, $a2, $a0, 4
	slli.d	$t0, $a5, 2
	ldx.w	$a5, $a2, $t0
	srai.d	$t2, $a5, 31
	xor	$t4, $a5, $t2
	sub.w	$t2, $t4, $t2
	bnez	$ra, .LBB4_77
# %bb.76:                               #   in Loop: Header=BB4_75 Depth=1
	ld.d	$t4, $a4, 0
	ld.d	$t5, $a6, 0
	ld.d	$t4, $t4, 0
	ld.d	$t5, $t5, 0
	ld.w	$t4, $t4, 0
	ld.w	$t5, $t5, 0
	mul.d	$t2, $t4, $t2
	alsl.w	$t2, $t5, $t2, 1
	sra.w	$t2, $t2, $a7
.LBB4_77:                               #   in Loop: Header=BB4_75 Depth=1
	addi.d	$fp, $fp, 1
	slti	$a5, $a5, 0
	beqz	$t2, .LBB4_79
# %bb.78:                               #   in Loop: Header=BB4_75 Depth=1
	ld.d	$t5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $t5, 368
	or	$t4, $t4, $t1
	st.d	$t4, $t5, 368
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	slt	$t4, $t8, $t7
	ori	$t5, $zero, 1
	st.d	$t5, $sp, 64                    # 8-byte Folded Spill
	masknez	$t5, $t8, $t4
	maskeqz	$t4, $t7, $t4
	or	$t4, $t4, $t5
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	srai.d	$t4, $t2, 31
	xor	$t5, $t2, $t4
	sub.d	$t4, $t5, $t4
	sub.d	$t5, $zero, $t4
	masknez	$t4, $t4, $a5
	maskeqz	$t5, $t5, $a5
	or	$t4, $t5, $t4
	slli.d	$t5, $a1, 2
	stx.w	$t4, $s2, $t5
	stx.w	$fp, $s3, $t5
	addi.w	$a1, $a1, 1
	addi.d	$fp, $zero, -1
.LBB4_79:                               #   in Loop: Header=BB4_75 Depth=1
	addi.d	$a3, $a3, 1
	bnez	$ra, .LBB4_73
# %bb.80:                               # %.thread1165
                                        #   in Loop: Header=BB4_75 Depth=1
	srai.d	$t4, $t2, 31
	xor	$t2, $t2, $t4
	sub.d	$t2, $t2, $t4
	sub.d	$t4, $zero, $t2
	masknez	$t2, $t2, $a5
	maskeqz	$a5, $t4, $a5
	or	$a5, $a5, $t2
	stx.w	$a5, $a2, $t0
	bnez	$t6, .LBB4_74
# %bb.81:                               # %.preheader783.preheader
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s2, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 32
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a0, 48
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	sub.d	$a6, $a3, $a4
	add.d	$a3, $a4, $a3
	add.d	$a2, $a3, $a5
	st.w	$a2, $a0, 0
	add.d	$s7, $a6, $a1
	st.w	$s7, $a0, 16
	sub.d	$s3, $a1, $a6
	st.w	$s3, $a0, 32
	sub.d	$a1, $a5, $a3
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 36
	ld.w	$a5, $a0, 20
	ld.w	$a6, $a0, 52
	st.w	$a1, $a0, 48
	add.d	$a7, $a4, $a3
	sub.d	$a3, $a3, $a4
	sub.d	$t1, $a5, $a6
	add.d	$a5, $a6, $a5
	add.d	$t0, $a5, $a7
	st.w	$t0, $a0, 4
	add.d	$a4, $t1, $a3
	st.w	$a4, $a0, 20
	sub.d	$s4, $a3, $t1
	st.w	$s4, $a0, 36
	sub.d	$a3, $a7, $a5
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 40
	ld.w	$a7, $a0, 24
	ld.w	$t1, $a0, 56
	st.w	$a3, $a0, 52
	add.d	$t2, $a6, $a5
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $a7, $t1
	add.d	$a7, $t1, $a7
	add.d	$t4, $a7, $t2
	st.w	$t4, $a0, 8
	add.d	$t6, $a6, $a5
	st.w	$t6, $a0, 24
	sub.d	$s5, $a5, $a6
	st.w	$s5, $a0, 40
	sub.d	$t1, $t2, $a7
	ld.w	$a5, $a0, 12
	ld.w	$a6, $a0, 44
	ld.w	$a7, $a0, 28
	ld.w	$t2, $a0, 60
	st.w	$t1, $a0, 56
	add.d	$t3, $a6, $a5
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $a7, $t2
	add.d	$a7, $t2, $a7
	add.d	$t2, $a7, $t3
	st.w	$t2, $a0, 12
	add.d	$fp, $a6, $a5
	st.w	$fp, $a0, 28
	sub.d	$s6, $a5, $a6
	st.w	$s6, $a0, 44
	sub.d	$s2, $t3, $a7
	st.w	$s2, $a0, 60
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a6, $s8, -4
	ori	$t5, $zero, 3
	sub.d	$a5, $t5, $s8
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a7, $a0
	ori	$a7, $zero, 1
	sll.w	$a7, $a7, $a5
	ori	$a5, $zero, 4
	ld.d	$a0, $a0, 0
	sub.d	$t3, $a5, $s8
	add.d	$t7, $t4, $a2
	sub.d	$a2, $a2, $t4
	ld.w	$a5, $a0, 0
	sub.d	$t4, $t0, $t2
	add.d	$t8, $t2, $t0
	add.d	$t0, $t8, $t7
	mul.d	$t2, $a5, $t0
	add.d	$t0, $t4, $a2
	sub.d	$a5, $a2, $t4
	sub.d	$a2, $t7, $t8
	blt	$t5, $s8, .LBB4_94
# %bb.82:
	add.d	$t2, $t2, $a7
	sra.w	$t2, $t2, $t3
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	stptr.w	$t2, $s0, 13136
	ld.w	$t2, $a0, 0
	mul.d	$t0, $t2, $t0
	add.d	$t0, $t0, $a7
	sra.w	$t0, $t0, $t3
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $s0, 13392
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a7
	sra.w	$a5, $a5, $t3
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t3
	b	.LBB4_95
.LBB4_83:
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s7, 2
	stx.w	$zero, $s2, $a0
	lu12i.w	$s3, 3
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_126
.LBB4_84:
	lu12i.w	$a2, 3
	ori	$a0, $a2, 1104
	ldx.w	$ra, $s0, $a0
	ori	$a0, $a2, 1120
	ldx.w	$s6, $s0, $a0
	add.d	$fp, $t3, $s5
	add.d	$t6, $s6, $ra
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a2, $t0, 3
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a2
	add.w	$a2, $t6, $fp
	add.d	$a6, $s5, $ra
	ld.d	$t1, $a3, 0
	ld.d	$a7, $a5, 0
	add.d	$a3, $t3, $s6
	sub.w	$s8, $a6, $a3
	addi.d	$a3, $t0, 16
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$s4, $a5, 0
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	sll.w	$a1, $a1, $a4
	srai.d	$a4, $a2, 31
	xor	$a5, $a2, $a4
	ld.w	$a6, $t1, 0
	ld.w	$t0, $a7, 0
	ldptr.w	$s7, $s4, 4008
	sub.d	$a4, $a5, $a4
	mul.d	$a4, $a6, $a4
	alsl.w	$a4, $t0, $a4, 1
	sra.w	$a5, $a4, $a3
	bnez	$s7, .LBB4_86
# %bb.85:
	ld.w	$a4, $s0, 36
	slti	$a4, $a4, 4
	ori	$a6, $zero, 2063
	slt	$t0, $a5, $a6
	masknez	$a6, $a6, $t0
	maskeqz	$t0, $a5, $t0
	or	$a6, $t0, $a6
	maskeqz	$a6, $a6, $a4
	masknez	$a4, $a5, $a4
	or	$a5, $a6, $a4
.LBB4_86:
	beqz	$a5, .LBB4_109
# %bb.87:
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $t0, 368
	move	$a4, $zero
	or	$a6, $a6, $a1
	st.d	$a6, $t0, 368
	ori	$t4, $zero, 1
	slti	$a2, $a2, 0
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $zero, $a5
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $a6, $a2
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	slt	$t0, $t4, $t2
	or	$a6, $a2, $a5
	st.w	$a6, $s2, 0
	st.w	$zero, $s3, 0
	ori	$a2, $zero, 4008
	ldx.w	$s7, $s4, $a2
	maskeqz	$a2, $t2, $t0
	masknez	$a5, $t4, $t0
	or	$a2, $a2, $a5
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	b	.LBB4_110
.LBB4_88:
	slli.d	$a0, $a1, 2
	stx.w	$zero, $s2, $a0
	lu12i.w	$s3, 3
	b	.LBB4_126
.LBB4_89:
	sll.w	$a7, $a7, $a0
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	stptr.w	$a7, $s0, 13136
	ld.w	$a7, $a3, 0
	mul.d	$a6, $a7, $a6
	sll.w	$a6, $a6, $a0
	addi.w	$a6, $a6, 2
	srli.d	$a6, $a6, 2
	stptr.w	$a6, $s0, 13392
	ld.w	$a6, $a3, 0
	mul.d	$a5, $a6, $a5
	sll.w	$a5, $a5, $a0
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a3, 0
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $a0
.LBB4_90:
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13904
	vpickve2gr.w	$a2, $vr0, 0
	vpickve2gr.w	$a5, $vr0, 2
	add.d	$t0, $a5, $a2
	sub.d	$a2, $a2, $a5
	vpickve2gr.w	$a5, $vr0, 1
	vpickve2gr.w	$a6, $vr0, 3
	ld.w	$a7, $a3, 0
	sub.d	$t1, $a5, $a6
	add.d	$t2, $a6, $a5
	add.d	$a5, $t2, $t0
	mul.d	$a7, $a7, $a5
	ori	$t3, $zero, 4
	add.d	$a6, $t1, $a2
	sub.d	$a5, $a2, $t1
	sub.d	$a2, $t0, $t2
	lu12i.w	$s3, 3
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	bge	$s4, $t3, .LBB4_92
# %bb.91:
	add.d	$a0, $a7, $a1
	sra.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $s0, 13152
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $s0, 13408
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $s0, 13664
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a4
	b	.LBB4_93
.LBB4_92:
	sll.w	$a1, $a7, $a0
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $s0, 13152
	ld.w	$a1, $a3, 0
	mul.d	$a1, $a1, $a6
	sll.w	$a1, $a1, $a0
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $s0, 13408
	ld.w	$a1, $a3, 0
	mul.d	$a1, $a1, $a5
	sll.w	$a1, $a1, $a0
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $s0, 13664
	ld.w	$a1, $a3, 0
	mul.d	$a1, $a1, $a2
	sll.w	$a0, $a1, $a0
.LBB4_93:                               # %.loopexit777
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $s0, 13920
	b	.LBB4_126
.LBB4_94:
	sll.w	$t2, $t2, $a6
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	stptr.w	$t2, $s0, 13136
	ld.w	$t2, $a0, 0
	mul.d	$t0, $t2, $t0
	sll.w	$t0, $t0, $a6
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $s0, 13392
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $a6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $a6
.LBB4_95:
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13904
	add.d	$a2, $t6, $s7
	sub.d	$t2, $s7, $t6
	ld.w	$a5, $a0, 0
	sub.d	$t4, $a4, $fp
	add.d	$t5, $fp, $a4
	add.d	$a4, $t5, $a2
	mul.d	$t0, $a5, $a4
	ori	$t6, $zero, 4
	add.d	$a5, $t4, $t2
	sub.d	$a4, $t2, $t4
	sub.d	$a2, $a2, $t5
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	bge	$t2, $t6, .LBB4_97
# %bb.96:
	add.d	$t0, $t0, $a7
	sra.w	$t0, $t0, $t3
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $s0, 13152
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a7
	sra.w	$a5, $a5, $t3
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13408
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a7
	sra.w	$a4, $a4, $t3
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13664
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t3
	b	.LBB4_98
.LBB4_97:
	sll.w	$t0, $t0, $a6
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $s0, 13152
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $a6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13408
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	sll.w	$a4, $a4, $a6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13664
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	sll.w	$a2, $a2, $a6
.LBB4_98:
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13920
	add.d	$a2, $s5, $s3
	sub.d	$a4, $s3, $s5
	ld.w	$a5, $a0, 0
	sub.d	$t2, $s4, $s6
	add.d	$t4, $s6, $s4
	add.d	$t0, $t4, $a2
	mul.d	$t0, $a5, $t0
	ori	$t5, $zero, 4
	add.d	$a5, $t2, $a4
	sub.d	$a4, $a4, $t2
	sub.d	$a2, $a2, $t4
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	bge	$t2, $t5, .LBB4_100
# %bb.99:
	add.d	$t0, $t0, $a7
	sra.w	$t0, $t0, $t3
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $s0, 13168
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a7
	sra.w	$a5, $a5, $t3
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13424
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a7
	sra.w	$a4, $a4, $t3
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13680
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t3
	b	.LBB4_101
.LBB4_100:
	sll.w	$t0, $t0, $a6
	addi.w	$t0, $t0, 2
	srli.d	$t0, $t0, 2
	stptr.w	$t0, $s0, 13168
	ld.w	$t0, $a0, 0
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $a6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13424
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	sll.w	$a4, $a4, $a6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13680
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	sll.w	$a2, $a2, $a6
.LBB4_101:
	lu12i.w	$s3, 3
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13936
	add.d	$a5, $t1, $a1
	sub.d	$a1, $a1, $t1
	ld.w	$a2, $a0, 0
	sub.d	$t0, $a3, $s2
	add.d	$t1, $s2, $a3
	add.d	$a3, $t1, $a5
	mul.d	$a4, $a2, $a3
	ori	$t2, $zero, 4
	add.d	$a3, $t0, $a1
	sub.d	$a2, $a1, $t0
	sub.d	$a1, $a5, $t1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	bge	$a5, $t2, .LBB4_103
# %bb.102:
	add.d	$a4, $a4, $a7
	sra.w	$a4, $a4, $t3
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13184
	ld.w	$a4, $a0, 0
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a7
	sra.w	$a3, $a3, $t3
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $s0, 13440
	ld.w	$a3, $a0, 0
	mul.d	$a2, $a3, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t3
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13696
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a7
	sra.w	$a0, $a0, $t3
	b	.LBB4_104
.LBB4_103:
	sll.w	$a4, $a4, $a6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13184
	ld.w	$a4, $a0, 0
	mul.d	$a3, $a4, $a3
	sll.w	$a3, $a3, $a6
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $s0, 13440
	ld.w	$a3, $a0, 0
	mul.d	$a2, $a3, $a2
	sll.w	$a2, $a2, $a6
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13696
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $a6
.LBB4_104:                              # %.loopexit777
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $s0, 13952
	b	.LBB4_126
.LBB4_105:
	move	$t4, $zero
	ori	$t1, $zero, 1
	srai.d	$a2, $t3, 31
	xor	$a5, $t3, $a2
	sub.w	$a2, $a5, $a2
	bnez	$a4, .LBB4_60
	b	.LBB4_59
.LBB4_106:
	move	$a7, $t4
	srai.d	$a2, $a6, 31
	xor	$a5, $a6, $a2
	sub.w	$a5, $a5, $a2
	bnez	$a4, .LBB4_63
	b	.LBB4_62
.LBB4_107:
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
.LBB4_108:                              # %.loopexit777.thread
	lu12i.w	$s3, 3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t4, $a0, 0
	slli.d	$a0, $a7, 2
	stx.w	$zero, $s2, $a0
	ldptr.w	$a0, $t4, 15528
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB4_128
	b	.LBB4_172
.LBB4_109:
	move	$t4, $zero
	move	$a6, $zero
	ori	$a4, $zero, 1
.LBB4_110:
	add.d	$a2, $t3, $ra
	sub.w	$ra, $fp, $t6
	srai.d	$a5, $s8, 31
	ld.w	$t0, $t1, 0
	ld.w	$t2, $a7, 0
	xor	$t3, $s8, $a5
	sub.d	$a5, $t3, $a5
	mul.d	$a5, $t0, $a5
	alsl.w	$a5, $t2, $a5, 1
	sra.w	$a5, $a5, $a3
	bnez	$s7, .LBB4_112
# %bb.111:
	ld.w	$t0, $s0, 36
	slti	$t0, $t0, 4
	ori	$t2, $zero, 2063
	slt	$t3, $a5, $t2
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $a5, $t3
	or	$t2, $t3, $t2
	maskeqz	$t2, $t2, $t0
	masknez	$a5, $a5, $t0
	or	$a5, $t2, $a5
.LBB4_112:
	sub.d	$a2, $s5, $a2
	beqz	$a5, .LBB4_114
# %bb.113:
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $t2, 368
	or	$t0, $t0, $a1
	st.d	$t0, $t2, 368
	ori	$t0, $zero, 1
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	slt	$t2, $t0, $t3
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $t3, $t2
	or	$t0, $t2, $t0
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	slti	$t0, $s8, 0
	srai.d	$t2, $a5, 31
	xor	$a5, $a5, $t2
	sub.d	$a5, $a5, $t2
	sub.d	$t2, $zero, $a5
	masknez	$a5, $a5, $t0
	maskeqz	$t0, $t2, $t0
	or	$t3, $t0, $a5
	slli.d	$a5, $t4, 2
	stx.w	$t3, $s2, $a5
	stx.w	$a4, $s3, $a5
	ori	$a4, $zero, 4008
	ldx.w	$s7, $s4, $a4
	addi.d	$s5, $t4, 1
	addi.d	$a4, $zero, -1
	ori	$t4, $zero, 1
	b	.LBB4_115
.LBB4_114:
	move	$t3, $zero
	move	$s5, $t4
.LBB4_115:
	add.w	$s6, $a2, $s6
	srai.d	$a2, $ra, 31
	ld.w	$a5, $t1, 0
	ld.w	$t0, $a7, 0
	xor	$t2, $ra, $a2
	sub.d	$a2, $t2, $a2
	mul.d	$a2, $a5, $a2
	alsl.w	$a2, $t0, $a2, 1
	sra.w	$a5, $a2, $a3
	bnez	$s7, .LBB4_117
# %bb.116:
	ld.w	$a2, $s0, 36
	slti	$a2, $a2, 4
	ori	$t0, $zero, 2063
	slt	$t2, $a5, $t0
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $a5, $t2
	or	$t0, $t2, $t0
	maskeqz	$t0, $t0, $a2
	masknez	$a2, $a5, $a2
	or	$a5, $t0, $a2
.LBB4_117:
	addi.d	$a2, $a4, 1
	beqz	$a5, .LBB4_119
# %bb.118:
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $t0, 368
	or	$a4, $a4, $a1
	st.d	$a4, $t0, 368
	ori	$t0, $zero, 1
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	slt	$a4, $t0, $t2
	ori	$t5, $zero, 1
	masknez	$t0, $t0, $a4
	maskeqz	$t2, $t2, $a4
	slti	$a4, $ra, 0
	srai.d	$t4, $a5, 31
	xor	$a5, $a5, $t4
	sub.d	$a5, $a5, $t4
	sub.d	$t4, $zero, $a5
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t4, $a4
	or	$a4, $a4, $a5
	slli.d	$a5, $s5, 2
	stx.w	$a4, $s2, $a5
	stx.w	$a2, $s3, $a5
	ori	$a2, $zero, 4008
	ldx.w	$s7, $s4, $a2
	or	$a2, $t2, $t0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	addi.d	$a2, $zero, -1
	b	.LBB4_120
.LBB4_119:
	move	$t5, $t4
	move	$a4, $zero
.LBB4_120:
	ld.d	$ra, $sp, 128                   # 8-byte Folded Reload
	srai.d	$a5, $s6, 31
	ld.w	$t0, $t1, 0
	ld.w	$a7, $a7, 0
	xor	$t1, $s6, $a5
	sub.d	$a5, $t1, $a5
	mul.d	$a5, $t0, $a5
	alsl.w	$a5, $a7, $a5, 1
	sra.w	$a3, $a5, $a3
	bnez	$s7, .LBB4_122
# %bb.121:
	ld.w	$a5, $s0, 36
	slti	$a5, $a5, 4
	ori	$a7, $zero, 2063
	slt	$t0, $a3, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $a3, $t0
	or	$a7, $t0, $a7
	maskeqz	$a7, $a7, $a5
	masknez	$a3, $a3, $a5
	or	$a3, $a7, $a3
.LBB4_122:
	beqz	$a3, .LBB4_124
# %bb.123:
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $a7, 368
	addi.d	$a2, $a2, 1
	or	$a1, $a5, $a1
	st.d	$a1, $a7, 368
	ori	$t5, $zero, 1
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	slt	$a1, $t5, $a7
	masknez	$a5, $t5, $a1
	maskeqz	$a1, $a7, $a1
	or	$a1, $a1, $a5
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slti	$a1, $s6, 0
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	sub.d	$a5, $zero, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	slli.d	$a3, $s5, 2
	stx.w	$a1, $s2, $a3
	stx.w	$a2, $s3, $a3
	addi.d	$s5, $s5, 1
	b	.LBB4_125
.LBB4_124:
	move	$a1, $zero
.LBB4_125:
	lu12i.w	$s3, 3
	st.d	$t5, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a2, $s5, 2
	stx.w	$zero, $s2, $a2
	add.d	$a2, $t3, $a6
	add.d	$a3, $a1, $a4
	add.d	$a5, $a3, $a2
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	st.w	$a5, $s5, 0
	add.d	$a7, $a6, $a4
	add.d	$t0, $t3, $a1
	sub.d	$a7, $a7, $t0
	st.w	$a7, $s5, 4
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $t0, $a0
	sub.d	$a2, $a2, $a3
	st.w	$a2, $s5, 8
	add.d	$a3, $t3, $a4
	ld.d	$a0, $a0, 0
	sub.d	$a3, $a6, $a3
	add.d	$a1, $a3, $a1
	st.w	$a1, $s5, 12
	ld.w	$a0, $a0, 0
	mul.d	$a3, $a0, $a5
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	sll.w	$a3, $a3, $a5
	srli.d	$a3, $a3, 5
	mul.d	$a4, $a0, $a7
	sll.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 5
	mul.d	$a2, $a0, $a2
	sll.w	$a2, $a2, $a5
	srli.d	$a2, $a2, 5
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $a5
	srli.d	$a0, $a0, 5
	stptr.w	$a3, $s0, 13136
	stptr.w	$a4, $s0, 13152
	stptr.w	$a2, $s0, 13392
	stptr.w	$a0, $s0, 13408
.LBB4_126:                              # %.loopexit777
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
.LBB4_127:                              # %.loopexit777
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t4, $a0, 0
	ldptr.w	$a0, $t4, 15528
	ori	$a1, $zero, 1
	bge	$a1, $a0, .LBB4_171
.LBB4_128:
	ori	$a0, $s3, 3240
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sltui	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(FIELD_SCAN)
	addi.d	$a0, $a0, %pc_lo12(FIELD_SCAN)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	srai.d	$a1, $a1, 1
	masknez	$a0, $a0, $a2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	maskeqz	$a2, $s1, $a2
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	addi.d	$s5, $a5, 15
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	mul.w	$a1, $a1, $a3
	or	$s6, $a2, $a0
	pcalau12i	$a0, %pc_hi20(hor_offset)
	addi.d	$a0, $a0, %pc_lo12(hor_offset)
	alsl.d	$a0, $a4, $a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ver_offset)
	addi.d	$a0, $a0, %pc_lo12(ver_offset)
	alsl.d	$a0, $a4, $a0, 4
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ldptr.d	$a0, $t4, 14160
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$a3, $a1, 4
	ori	$a0, $s3, 848
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a2, $a5, 16
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $s5
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(cbp_blk_chroma)
	addi.d	$a0, $a0, %pc_lo12(cbp_blk_chroma)
	move	$a2, $zero
	move	$t5, $zero
	move	$s3, $zero
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 244
	ori	$a0, $a0, 575
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	b	.LBB4_131
	.p2align	4, , 16
.LBB4_129:                              # %.loopexit773.us.3
                                        #   in Loop: Header=BB4_131 Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$zero, $a0, $a2
.LBB4_130:                              # %.split.us
                                        #   in Loop: Header=BB4_131 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	srai.d	$a1, $a0, 1
	ld.d	$ra, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB4_169
.LBB4_131:                              # %.preheader776
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_140 Depth 2
                                        #       Child Loop BB4_142 Depth 3
                                        #     Child Loop BB4_134 Depth 2
                                        #     Child Loop BB4_153 Depth 2
                                        #     Child Loop BB4_159 Depth 2
                                        #     Child Loop BB4_165 Depth 2
	add.w	$a0, $a3, $a2
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s4, $a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s0, $a2, $a0, 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$s1, $a2, $a0, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$s2, $a2, $a0, 2
	beqz	$ra, .LBB4_138
# %bb.132:                              # %.preheader772.us.preheader
                                        #   in Loop: Header=BB4_131 Depth=1
	ld.d	$a2, $s4, 0
	ld.bu	$a3, $s0, 0
	ld.bu	$a4, $s1, 0
	ld.bu	$a6, $s2, 0
	ld.d	$a0, $a2, 0
	ld.d	$a7, $a2, 8
	move	$t7, $zero
	move	$t3, $zero
	ori	$a1, $zero, 1
	sll.d	$a2, $a1, $a3
	addi.d	$t2, $zero, -1
	lu12i.w	$t6, 244
	b	.LBB4_134
	.p2align	4, , 16
.LBB4_133:                              #   in Loop: Header=BB4_134 Depth=2
	addi.d	$t7, $t7, 2
	ori	$a1, $zero, 30
	beq	$t7, $a1, .LBB4_151
.LBB4_134:                              #   Parent Loop BB4_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s6, $t7
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t8, $a5, $a6
	slli.d	$a5, $t8, 6
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$t0, $a1, $a5
	add.d	$t1, $a3, $a4
	slli.d	$fp, $t1, 2
	ldptr.w	$a3, $t4, 15260
	ldx.w	$a5, $t0, $fp
	beqz	$a3, .LBB4_136
# %bb.135:                              #   in Loop: Header=BB4_134 Depth=2
	ldptr.d	$a3, $t4, 14192
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	slli.d	$t8, $t8, 3
	ldx.d	$a3, $a3, $t8
	stx.w	$zero, $a3, $fp
.LBB4_136:                              #   in Loop: Header=BB4_134 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$a5, .LBB4_133
# %bb.137:                              #   in Loop: Header=BB4_134 Depth=2
	alsl.d	$a3, $t1, $t0, 2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 368
	srai.d	$t1, $a5, 31
	xor	$a5, $a5, $t1
	sub.d	$a5, $a5, $t1
	or	$t0, $t0, $a2
	ld.w	$a3, $a3, 0
	st.d	$t0, $a1, 368
	ori	$t0, $t6, 575
	add.w	$t5, $t5, $t0
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $t3, 2
	stx.w	$a3, $a0, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$t3, $t3, 1
	addi.d	$t2, $zero, -1
	ori	$s3, $zero, 2
	b	.LBB4_133
	.p2align	4, , 16
.LBB4_138:                              # %.preheader776.split
                                        #   in Loop: Header=BB4_131 Depth=1
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $a0, 0
	move	$a0, $zero
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	b	.LBB4_140
	.p2align	4, , 16
.LBB4_139:                              # %.loopexit775
                                        #   in Loop: Header=BB4_140 Depth=2
	slli.d	$a1, $t8, 2
	addi.d	$a0, $a0, 1
	stx.w	$zero, $fp, $a1
	ori	$a1, $zero, 4
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_130
.LBB4_140:                              # %.preheader774
                                        #   Parent Loop BB4_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_142 Depth 3
	slli.d	$a2, $a0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	ldx.bu	$a3, $s0, $a0
	ldx.bu	$t7, $s1, $a0
	ldx.bu	$a6, $s2, $a0
	ld.d	$fp, $a2, 0
	ld.d	$s2, $a2, 8
	ori	$a1, $zero, 1
	sll.d	$a7, $a1, $a3
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$t3, $a2, 0
	move	$s0, $zero
	move	$t8, $zero
	addi.d	$a4, $zero, -1
	b	.LBB4_142
	.p2align	4, , 16
.LBB4_141:                              #   in Loop: Header=BB4_142 Depth=3
	ld.w	$a1, $t0, 0
	slti	$a1, $a1, 0
	srai.d	$a3, $ra, 31
	xor	$t1, $ra, $a3
	sub.d	$a3, $t1, $a3
	sub.d	$t1, $zero, $a3
	masknez	$t6, $a3, $a1
	maskeqz	$a1, $t1, $a1
	or	$a1, $a1, $t6
	slli.d	$t6, $t8, 2
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $s1, 0
	stx.w	$a1, $fp, $t6
	stx.w	$a4, $s2, $t6
	ld.w	$a1, $t0, 0
	ldx.d	$a2, $s1, $a2
	add.w	$t5, $a5, $t5
	addi.w	$t8, $t8, 1
	slti	$a1, $a1, 0
	ldx.w	$a2, $a2, $t2
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $t1, $a1
	or	$a1, $a1, $a3
	mul.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	addi.w	$a1, $a1, 8
	srai.d	$a2, $a1, 4
	addi.d	$a4, $zero, -1
	ori	$s3, $zero, 2
	addi.d	$s0, $s0, 2
	st.w	$a2, $t0, 0
	ori	$a1, $zero, 30
	beq	$s0, $a1, .LBB4_139
.LBB4_142:                              #   Parent Loop BB4_131 Depth=1
                                        #     Parent Loop BB4_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s6, $s0
	ld.bu	$a3, $a2, 3
	ld.bu	$t2, $a2, 2
	add.d	$s8, $a3, $a6
	slli.d	$a2, $s8, 6
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$t0, $a1, $a2
	add.d	$a5, $t2, $t7
	slli.d	$t1, $a5, 2
	ldx.w	$ra, $t0, $t1
	srai.d	$t6, $ra, 31
	slli.d	$a2, $a3, 3
	ldx.d	$a3, $s4, $a2
	ldx.d	$s1, $s7, $a2
	xor	$ra, $ra, $t6
	slli.d	$t2, $t2, 2
	ldx.w	$a3, $a3, $t2
	ldx.w	$s1, $s1, $t2
	ldptr.w	$a1, $t4, 15260
	sub.d	$t6, $ra, $t6
	mul.d	$a3, $a3, $t6
	add.d	$t6, $s1, $a3
	sra.w	$ra, $t6, $s5
	beqz	$a1, .LBB4_147
# %bb.143:                              #   in Loop: Header=BB4_142 Depth=3
	beqz	$ra, .LBB4_145
# %bb.144:                              #   in Loop: Header=BB4_142 Depth=3
	pcalau12i	$a1, %got_pc_hi20(AdaptRndCrWeight)
	ld.d	$a1, $a1, %got_pc_lo12(AdaptRndCrWeight)
	ld.w	$a1, $a1, 0
	sll.w	$t6, $ra, $s5
	sub.d	$a3, $a3, $t6
	mul.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	sra.w	$a3, $a1, $a3
	b	.LBB4_146
	.p2align	4, , 16
.LBB4_145:                              #   in Loop: Header=BB4_142 Depth=3
	move	$a3, $zero
.LBB4_146:                              #   in Loop: Header=BB4_142 Depth=3
	ldptr.d	$a1, $t4, 14192
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $t6
	ld.d	$t6, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $t6
	slli.d	$t6, $s8, 3
	ldx.d	$a1, $a1, $t6
	stx.w	$a3, $a1, $t1
.LBB4_147:                              #   in Loop: Header=BB4_142 Depth=3
	addi.w	$a4, $a4, 1
	alsl.d	$t0, $a5, $t0, 2
	beqz	$ra, .LBB4_150
# %bb.148:                              #   in Loop: Header=BB4_142 Depth=3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 368
	or	$a1, $a1, $a7
	st.d	$a1, $a3, 368
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a1, $ra, .LBB4_141
# %bb.149:                              #   in Loop: Header=BB4_142 Depth=3
	ldptr.w	$a1, $t3, 4180
	pcalau12i	$a3, %pc_hi20(COEFF_COST)
	addi.d	$a3, $a3, %pc_lo12(COEFF_COST)
	alsl.d	$a1, $a1, $a3, 4
	ldx.bu	$a5, $a1, $a4
	b	.LBB4_141
	.p2align	4, , 16
.LBB4_150:                              #   in Loop: Header=BB4_142 Depth=3
	move	$a2, $zero
	addi.d	$s0, $s0, 2
	st.w	$a2, $t0, 0
	ori	$a1, $zero, 30
	bne	$s0, $a1, .LBB4_142
	b	.LBB4_139
	.p2align	4, , 16
.LBB4_151:                              # %.loopexit773.us
                                        #   in Loop: Header=BB4_131 Depth=1
	slli.d	$a2, $t3, 2
	stx.w	$zero, $a0, $a2
	ld.d	$a2, $s4, 8
	ld.bu	$a3, $s0, 1
	ld.bu	$a4, $s1, 1
	ld.bu	$a6, $s2, 1
	ld.d	$a0, $a2, 0
	ld.d	$a7, $a2, 8
	move	$t7, $zero
	move	$t3, $zero
	ori	$a1, $zero, 1
	sll.d	$a2, $a1, $a3
	addi.d	$t2, $zero, -1
	b	.LBB4_153
	.p2align	4, , 16
.LBB4_152:                              #   in Loop: Header=BB4_153 Depth=2
	addi.d	$t7, $t7, 2
	ori	$a1, $zero, 30
	beq	$t7, $a1, .LBB4_157
.LBB4_153:                              #   Parent Loop BB4_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s6, $t7
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t8, $a5, $a6
	slli.d	$a5, $t8, 6
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$t0, $a1, $a5
	add.d	$t1, $a3, $a4
	slli.d	$fp, $t1, 2
	ldptr.w	$a3, $t4, 15260
	ldx.w	$a5, $t0, $fp
	beqz	$a3, .LBB4_155
# %bb.154:                              #   in Loop: Header=BB4_153 Depth=2
	ldptr.d	$a3, $t4, 14192
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	slli.d	$t8, $t8, 3
	ldx.d	$a3, $a3, $t8
	stx.w	$zero, $a3, $fp
.LBB4_155:                              #   in Loop: Header=BB4_153 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$a5, .LBB4_152
# %bb.156:                              #   in Loop: Header=BB4_153 Depth=2
	alsl.d	$a3, $t1, $t0, 2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 368
	srai.d	$t1, $a5, 31
	xor	$a5, $a5, $t1
	sub.d	$a5, $a5, $t1
	or	$t0, $t0, $a2
	ld.w	$a3, $a3, 0
	st.d	$t0, $a1, 368
	ori	$t0, $t6, 575
	add.w	$t5, $t5, $t0
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $t3, 2
	stx.w	$a3, $a0, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$t3, $t3, 1
	addi.d	$t2, $zero, -1
	ori	$s3, $zero, 2
	b	.LBB4_152
	.p2align	4, , 16
.LBB4_157:                              # %.loopexit773.us.1
                                        #   in Loop: Header=BB4_131 Depth=1
	slli.d	$a2, $t3, 2
	stx.w	$zero, $a0, $a2
	ld.d	$a2, $s4, 16
	ld.bu	$a3, $s0, 2
	ld.bu	$a4, $s1, 2
	ld.bu	$a6, $s2, 2
	ld.d	$a0, $a2, 0
	ld.d	$a7, $a2, 8
	move	$t7, $zero
	move	$t3, $zero
	ori	$a1, $zero, 1
	sll.d	$a2, $a1, $a3
	addi.d	$t2, $zero, -1
	b	.LBB4_159
	.p2align	4, , 16
.LBB4_158:                              #   in Loop: Header=BB4_159 Depth=2
	addi.d	$t7, $t7, 2
	ori	$a1, $zero, 30
	beq	$t7, $a1, .LBB4_163
.LBB4_159:                              #   Parent Loop BB4_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s6, $t7
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t8, $a5, $a6
	slli.d	$a5, $t8, 6
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$t0, $a1, $a5
	add.d	$t1, $a3, $a4
	slli.d	$fp, $t1, 2
	ldptr.w	$a3, $t4, 15260
	ldx.w	$a5, $t0, $fp
	beqz	$a3, .LBB4_161
# %bb.160:                              #   in Loop: Header=BB4_159 Depth=2
	ldptr.d	$a3, $t4, 14192
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	slli.d	$t8, $t8, 3
	ldx.d	$a3, $a3, $t8
	stx.w	$zero, $a3, $fp
.LBB4_161:                              #   in Loop: Header=BB4_159 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$a5, .LBB4_158
# %bb.162:                              #   in Loop: Header=BB4_159 Depth=2
	alsl.d	$a3, $t1, $t0, 2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 368
	srai.d	$t1, $a5, 31
	xor	$a5, $a5, $t1
	sub.d	$a5, $a5, $t1
	or	$t0, $t0, $a2
	ld.w	$a3, $a3, 0
	st.d	$t0, $a1, 368
	ori	$t0, $t6, 575
	add.w	$t5, $t5, $t0
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $t3, 2
	stx.w	$a3, $a0, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$t3, $t3, 1
	addi.d	$t2, $zero, -1
	ori	$s3, $zero, 2
	b	.LBB4_158
	.p2align	4, , 16
.LBB4_163:                              # %.loopexit773.us.2
                                        #   in Loop: Header=BB4_131 Depth=1
	slli.d	$a2, $t3, 2
	stx.w	$zero, $a0, $a2
	ld.d	$a2, $s4, 24
	ld.bu	$a3, $s0, 3
	ld.bu	$a4, $s1, 3
	ld.bu	$a6, $s2, 3
	ld.d	$a0, $a2, 0
	ld.d	$a7, $a2, 8
	move	$t3, $zero
	move	$a2, $zero
	ori	$a1, $zero, 1
	sll.d	$t7, $a1, $a3
	addi.d	$t2, $zero, -1
	b	.LBB4_165
	.p2align	4, , 16
.LBB4_164:                              #   in Loop: Header=BB4_165 Depth=2
	addi.d	$t3, $t3, 2
	ori	$a1, $zero, 30
	beq	$t3, $a1, .LBB4_129
.LBB4_165:                              #   Parent Loop BB4_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s6, $t3
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t8, $a5, $a6
	slli.d	$a5, $t8, 6
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a5, $a1, $a5
	add.d	$t1, $a3, $a4
	slli.d	$fp, $t1, 2
	ldptr.w	$a3, $t4, 15260
	ldx.w	$t0, $a5, $fp
	beqz	$a3, .LBB4_167
# %bb.166:                              #   in Loop: Header=BB4_165 Depth=2
	ldptr.d	$a3, $t4, 14192
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a1
	slli.d	$t8, $t8, 3
	ldx.d	$a3, $a3, $t8
	stx.w	$zero, $a3, $fp
.LBB4_167:                              #   in Loop: Header=BB4_165 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$t0, .LBB4_164
# %bb.168:                              #   in Loop: Header=BB4_165 Depth=2
	alsl.d	$a3, $t1, $a5, 2
	srai.d	$a5, $t0, 31
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $a1, 368
	xor	$t0, $t0, $a5
	sub.d	$a5, $t0, $a5
	ld.w	$a3, $a3, 0
	or	$t0, $t1, $t7
	st.d	$t0, $a1, 368
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.w	$t5, $t5, $a1
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $a2, 2
	stx.w	$a3, $a0, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$a2, $a2, 1
	addi.d	$t2, $zero, -1
	ori	$s3, $zero, 2
	b	.LBB4_164
.LBB4_169:                              # %._crit_edge887
	beqz	$ra, .LBB4_186
# %bb.170:
	lu12i.w	$s3, 3
	b	.LBB4_172
.LBB4_171:                              # %._crit_edge887.thread
	beqz	$ra, .LBB4_195
.LBB4_172:                              # %.preheader
	ldptr.w	$a0, $t4, 15548
	blez	$a0, .LBB4_215
# %bb.173:                              # %.lr.ph930
	ld.w	$a1, $t4, 188
	ori	$a2, $s3, 3256
	ldx.wu	$a3, $t4, $a2
	ori	$a2, $s3, 848
	add.d	$a4, $t4, $a2
	ori	$a2, $s3, 336
	add.d	$a5, $t4, $a2
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	move	$a6, $zero
	ld.d	$a7, $a2, 0
	addi.d	$t0, $a3, -1
	bstrpick.d	$a2, $a3, 16, 2
	slli.d	$t1, $a2, 2
	addi.w	$t2, $a3, 0
	lu12i.w	$a2, -4
	ori	$t3, $a2, 3760
	ori	$t5, $zero, 12
	ori	$t6, $zero, 8
	b	.LBB4_175
	.p2align	4, , 16
.LBB4_174:                              # %._crit_edge928
                                        #   in Loop: Header=BB4_175 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 64
	beq	$a6, $a0, .LBB4_215
.LBB4_175:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_184 Depth 2
                                        #     Child Loop BB4_179 Depth 2
	blez	$t2, .LBB4_174
# %bb.176:                              # %.lr.ph927
                                        #   in Loop: Header=BB4_175 Depth=1
	ldptr.d	$a2, $a7, 6472
	add.d	$t7, $a1, $a6
	ld.d	$t8, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$t8, $a2, $t8
	ld.w	$a2, $t4, 184
	slli.d	$t7, $t7, 48
	srai.d	$t7, $t7, 45
	ldx.d	$t7, $t8, $t7
	bgeu	$a3, $t5, .LBB4_180
.LBB4_177:                              #   in Loop: Header=BB4_175 Depth=1
	move	$s0, $zero
.LBB4_178:                              # %scalar.ph1272.preheader
                                        #   in Loop: Header=BB4_175 Depth=1
	add.d	$a2, $a2, $s0
	slli.d	$t8, $s0, 2
	slli.d	$fp, $s0, 1
	sub.d	$s0, $a3, $s0
	.p2align	4, , 16
.LBB4_179:                              # %scalar.ph1272
                                        #   Parent Loop BB4_175 Depth=1
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
	bnez	$s0, .LBB4_179
	b	.LBB4_174
	.p2align	4, , 16
.LBB4_180:                              # %vector.scevcheck1268
                                        #   in Loop: Header=BB4_175 Depth=1
	slli.d	$t8, $a2, 48
	srai.d	$t8, $t8, 47
	add.d	$fp, $a2, $t0
	slli.d	$fp, $fp, 48
	srai.d	$fp, $fp, 47
	move	$s0, $zero
	blt	$fp, $t8, .LBB4_178
# %bb.181:                              # %vector.scevcheck1268
                                        #   in Loop: Header=BB4_175 Depth=1
	srli.d	$fp, $t0, 16
	bnez	$fp, .LBB4_178
# %bb.182:                              # %vector.memcheck
                                        #   in Loop: Header=BB4_175 Depth=1
	slli.d	$fp, $a6, 5
	add.d	$fp, $fp, $t4
	sub.d	$fp, $t3, $fp
	add.d	$fp, $fp, $t7
	add.d	$t8, $fp, $t8
	bltu	$t8, $t6, .LBB4_177
# %bb.183:                              # %vector.body1277.preheader
                                        #   in Loop: Header=BB4_175 Depth=1
	move	$t8, $a2
	move	$fp, $a4
	move	$s0, $a5
	move	$s1, $t1
	.p2align	4, , 16
.LBB4_184:                              # %vector.body1277
                                        #   Parent Loop BB4_175 Depth=1
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
	bnez	$s1, .LBB4_184
# %bb.185:                              # %middle.block1282
                                        #   in Loop: Header=BB4_175 Depth=1
	move	$s0, $t1
	beq	$t1, $a3, .LBB4_174
	b	.LBB4_178
.LBB4_186:
	addi.d	$a1, $s3, -2
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 3
	slt	$a4, $a3, $t5
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	masknez	$a5, $a6, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a5
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $a6, $a4
	or	$a1, $a1, $a4
	blt	$a3, $t5, .LBB4_193
# %bb.187:
	blt	$a0, $a2, .LBB4_193
# %bb.188:                              # %.preheader771.lr.ph
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
	ldptr.d	$a1, $t4, 14160
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	nor	$a1, $a3, $zero
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a4, $zero, 3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	masknez	$a5, $a4, $a1
	ori	$a6, $zero, 1
	maskeqz	$a7, $a6, $a1
	or	$a5, $a7, $a5
	addi.d	$fp, $a1, 1
	masknez	$a6, $a6, $a1
	maskeqz	$a4, $a4, $a1
	or	$a4, $a4, $a6
	slli.d	$s1, $a2, 1
	ori	$a6, $zero, 2
	sub.d	$s2, $a6, $a1
	slli.d	$s0, $a1, 1
	addi.d	$s4, $a1, 2
	xori	$s7, $a1, 3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a6, $a3, 3
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a7, $a3, 1
	slli.d	$a3, $a2, 6
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	slli.d	$t1, $a1, 2
	slli.d	$a1, $a1, 6
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a1, $a2, 2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a1, $a5, 6
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$t6, $fp, 2
	slli.d	$a1, $s1, 6
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $a4, 2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a1, $s0, 6
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	slli.d	$s2, $s2, 2
	slli.d	$a1, $s1, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $s4, 6
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a1, $s7, 6
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a1, $fp, 6
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a1, $s7, 2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a1, $a4, 6
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	b	.LBB4_191
	.p2align	4, , 16
.LBB4_189:                              # %.preheader771.split
                                        #   in Loop: Header=BB4_191 Depth=1
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 0
	ld.bu	$a3, $a6, -3
	ld.bu	$a4, $a7, -1
	st.w	$zero, $a2, 0
	slli.d	$a3, $a3, 6
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	alsl.d	$a3, $a4, $a3, 2
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	add.d	$a4, $a3, $t2
	stx.w	$zero, $a4, $t1
	st.w	$zero, $a2, 4
	ld.d	$t3, $sp, 192                   # 8-byte Folded Reload
	add.d	$a5, $a3, $t3
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a3, 128
	st.w	$zero, $a2, 12
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	add.d	$fp, $a3, $t7
	stx.w	$zero, $fp, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a4, $t6
	st.w	$zero, $a2, 20
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	add.d	$a4, $a3, $t8
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	stx.w	$zero, $a4, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $fp, $t6
	st.w	$zero, $a2, 28
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a4, $a3, $s3
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 32
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	add.d	$a4, $a3, $t0
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	stx.w	$zero, $a4, $s4
	st.w	$zero, $a2, 36
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	add.d	$a4, $a3, $s5
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 40
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	add.d	$fp, $a3, $s6
	st.w	$zero, $fp, 8
	st.w	$zero, $a2, 44
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 48
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	add.d	$a5, $a3, $s7
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 52
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	stx.w	$zero, $a4, $s8
	ld.d	$a4, $ra, 8
	st.w	$zero, $a2, 56
	st.w	$zero, $a3, 204
	st.w	$zero, $a2, 60
	ld.d	$a2, $a4, 0
	ld.bu	$a3, $a6, -2
	ld.bu	$a4, $a7, 0
	st.w	$zero, $a2, 0
	slli.d	$a3, $a3, 6
	add.d	$a3, $a1, $a3
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a4, $a3, $t2
	stx.w	$zero, $a4, $t1
	st.w	$zero, $a2, 4
	add.d	$a5, $a3, $t3
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a3, 128
	st.w	$zero, $a2, 12
	add.d	$fp, $a3, $t7
	stx.w	$zero, $fp, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a4, $t6
	st.w	$zero, $a2, 20
	add.d	$a4, $a3, $t8
	stx.w	$zero, $a4, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $fp, $t6
	st.w	$zero, $a2, 28
	add.d	$a4, $a3, $s3
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 32
	add.d	$a4, $a3, $t0
	stx.w	$zero, $a4, $s4
	st.w	$zero, $a2, 36
	add.d	$a4, $a3, $s5
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 40
	add.d	$fp, $a3, $s6
	st.w	$zero, $fp, 8
	st.w	$zero, $a2, 44
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 48
	add.d	$a5, $a3, $s7
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 52
	stx.w	$zero, $a4, $s8
	ld.d	$a4, $ra, 16
	st.w	$zero, $a2, 56
	st.w	$zero, $a3, 204
	st.w	$zero, $a2, 60
	ld.d	$a2, $a4, 0
	ld.bu	$a3, $a6, -1
	ld.bu	$a4, $a7, 1
	st.w	$zero, $a2, 0
	slli.d	$a3, $a3, 6
	add.d	$a3, $a1, $a3
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a4, $a3, $t2
	stx.w	$zero, $a4, $t1
	st.w	$zero, $a2, 4
	add.d	$a5, $a3, $t3
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a3, 128
	st.w	$zero, $a2, 12
	add.d	$fp, $a3, $t7
	stx.w	$zero, $fp, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a4, $t6
	st.w	$zero, $a2, 20
	add.d	$a4, $a3, $t8
	stx.w	$zero, $a4, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $fp, $t6
	st.w	$zero, $a2, 28
	add.d	$a4, $a3, $s3
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 32
	add.d	$a4, $a3, $t0
	stx.w	$zero, $a4, $s4
	st.w	$zero, $a2, 36
	add.d	$a4, $a3, $s5
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 40
	add.d	$fp, $a3, $s6
	st.w	$zero, $fp, 8
	st.w	$zero, $a2, 44
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 48
	add.d	$a5, $a3, $s7
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 52
	stx.w	$zero, $a4, $s8
	ld.d	$a4, $ra, 24
	st.w	$zero, $a2, 56
	st.w	$zero, $a3, 204
	st.w	$zero, $a2, 60
	ld.d	$a2, $a4, 0
	ld.bu	$a3, $a6, 0
	ld.bu	$a4, $a7, 2
	st.w	$zero, $a2, 0
	slli.d	$a3, $a3, 6
	add.d	$a3, $a1, $a3
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a4, $a3, $t2
	stx.w	$zero, $a4, $t1
	st.w	$zero, $a2, 4
	add.d	$a5, $a3, $t3
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a3, 128
	st.w	$zero, $a2, 12
	add.d	$fp, $a3, $t7
	stx.w	$zero, $fp, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a4, $t6
	st.w	$zero, $a2, 20
	add.d	$a4, $a3, $t8
	stx.w	$zero, $a4, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $fp, $t6
	st.w	$zero, $a2, 28
	add.d	$a4, $a3, $s3
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 32
	add.d	$a4, $a3, $t0
.LBB4_190:                              # %.split896.us
                                        #   in Loop: Header=BB4_191 Depth=1
	stx.w	$zero, $a4, $s4
	st.w	$zero, $a2, 36
	add.d	$a4, $a3, $s5
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 40
	add.d	$fp, $a3, $s6
	st.w	$zero, $fp, 8
	st.w	$zero, $a2, 44
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 48
	add.d	$a5, $a3, $s7
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 52
	stx.w	$zero, $a4, $s8
	st.w	$zero, $a2, 56
	st.w	$zero, $a3, 204
	st.w	$zero, $a2, 60
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	addi.d	$a0, $a0, 1
	srai.d	$a2, $a2, 1
	addi.w	$s1, $s1, 1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	bge	$a0, $a2, .LBB4_194
.LBB4_191:                              # %.preheader771
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $s1, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$ra, $a1, $a2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB4_189
# %bb.192:                              # %.split896.us.loopexit
                                        #   in Loop: Header=BB4_191 Depth=1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 368
	ld.d	$a4, $ra, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	and	$fp, $a2, $a3
	ld.d	$a2, $a4, 0
	ld.bu	$a4, $a6, -3
	ld.bu	$a5, $a7, -1
	st.d	$fp, $a1, 368
	st.w	$zero, $a2, 0
	slli.d	$a4, $a4, 6
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a4, $t0, $a4
	alsl.d	$a4, $a5, $a4, 2
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	add.d	$a5, $a4, $t2
	stx.w	$zero, $a5, $t1
	st.w	$zero, $a2, 4
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 192                   # 8-byte Folded Reload
	add.d	$s1, $a4, $t3
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	stx.w	$zero, $s1, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a4, 128
	st.w	$zero, $a2, 12
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	add.d	$a3, $a4, $t7
	stx.w	$zero, $a3, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a5, $t6
	st.w	$zero, $a2, 20
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	add.d	$a5, $a4, $t8
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	stx.w	$zero, $a5, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $a3, $t6
	st.w	$zero, $a2, 28
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a3, $a4, $s3
	stx.w	$zero, $a3, $s2
	st.w	$zero, $a2, 32
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	stx.w	$zero, $a3, $s4
	st.w	$zero, $a2, 36
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	add.d	$a3, $a4, $s5
	stx.w	$zero, $a3, $s2
	st.w	$zero, $a2, 40
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	add.d	$a5, $a4, $s6
	st.w	$zero, $a5, 8
	st.w	$zero, $a2, 44
	st.w	$zero, $s1, 12
	st.w	$zero, $a2, 48
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	add.d	$a5, $a4, $s7
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 52
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	stx.w	$zero, $a3, $s8
	ld.d	$a3, $ra, 8
	st.w	$zero, $a2, 56
	st.w	$zero, $a4, 204
	st.w	$zero, $a2, 60
	ld.d	$a2, $a3, 0
	ld.bu	$a3, $a6, -2
	ld.bu	$a4, $a7, 0
	st.d	$fp, $a1, 368
	st.w	$zero, $a2, 0
	slli.d	$a3, $a3, 6
	add.d	$a3, $t0, $a3
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a4, $a3, $t2
	stx.w	$zero, $a4, $t1
	st.w	$zero, $a2, 4
	add.d	$a5, $a3, $t3
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a3, 128
	st.w	$zero, $a2, 12
	add.d	$s1, $a3, $t7
	stx.w	$zero, $s1, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a4, $t6
	st.w	$zero, $a2, 20
	add.d	$a4, $a3, $t8
	stx.w	$zero, $a4, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $s1, $t6
	st.w	$zero, $a2, 28
	add.d	$a4, $a3, $s3
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 32
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	add.d	$a4, $a3, $a0
	stx.w	$zero, $a4, $s4
	st.w	$zero, $a2, 36
	add.d	$a4, $a3, $s5
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 40
	add.d	$s1, $a3, $s6
	st.w	$zero, $s1, 8
	st.w	$zero, $a2, 44
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 48
	add.d	$a5, $a3, $s7
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 52
	stx.w	$zero, $a4, $s8
	ld.d	$a4, $ra, 16
	st.w	$zero, $a2, 56
	st.w	$zero, $a3, 204
	st.w	$zero, $a2, 60
	ld.d	$a2, $a4, 0
	ld.bu	$a3, $a6, -1
	ld.bu	$a4, $a7, 1
	st.d	$fp, $a1, 368
	st.w	$zero, $a2, 0
	slli.d	$a3, $a3, 6
	add.d	$a3, $t0, $a3
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a4, $a3, $t2
	stx.w	$zero, $a4, $t1
	st.w	$zero, $a2, 4
	add.d	$a5, $a3, $t3
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a3, 128
	st.w	$zero, $a2, 12
	add.d	$s1, $a3, $t7
	stx.w	$zero, $s1, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a4, $t6
	st.w	$zero, $a2, 20
	add.d	$a4, $a3, $t8
	stx.w	$zero, $a4, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $s1, $t6
	st.w	$zero, $a2, 28
	add.d	$a4, $a3, $s3
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 32
	add.d	$a4, $a3, $a0
	stx.w	$zero, $a4, $s4
	st.w	$zero, $a2, 36
	add.d	$a4, $a3, $s5
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 40
	add.d	$s1, $a3, $s6
	st.w	$zero, $s1, 8
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	st.w	$zero, $a2, 44
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 48
	add.d	$a5, $a3, $s7
	st.w	$zero, $a5, 12
	st.w	$zero, $a2, 52
	stx.w	$zero, $a4, $s8
	ld.d	$a4, $ra, 24
	st.w	$zero, $a2, 56
	st.w	$zero, $a3, 204
	st.w	$zero, $a2, 60
	ld.d	$a2, $a4, 0
	ld.bu	$a3, $a6, 0
	ld.bu	$a4, $a7, 2
	st.d	$fp, $a1, 368
	st.w	$zero, $a2, 0
	slli.d	$a3, $a3, 6
	add.d	$a3, $t0, $a3
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a4, $a3, $t2
	stx.w	$zero, $a4, $t1
	st.w	$zero, $a2, 4
	add.d	$a5, $a3, $t3
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 8
	st.w	$zero, $a3, 128
	st.w	$zero, $a2, 12
	add.d	$fp, $a3, $t7
	stx.w	$zero, $fp, $t1
	st.w	$zero, $a2, 16
	stx.w	$zero, $a4, $t6
	st.w	$zero, $a2, 20
	add.d	$a4, $a3, $t8
	stx.w	$zero, $a4, $s0
	st.w	$zero, $a2, 24
	stx.w	$zero, $fp, $t6
	st.w	$zero, $a2, 28
	add.d	$a4, $a3, $s3
	stx.w	$zero, $a4, $s2
	st.w	$zero, $a2, 32
	add.d	$a4, $a3, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB4_190
.LBB4_193:
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
.LBB4_194:
	lu12i.w	$s3, 3
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
.LBB4_195:                              # %.thread
	ldptr.w	$a7, $t4, 15548
	blez	$a7, .LBB4_215
# %bb.196:                              # %.preheader770.lr.ph
	move	$a3, $zero
	ori	$a0, $s3, 848
	ori	$a1, $s3, 3256
	ldx.w	$a4, $t4, $a1
	pcalau12i	$a2, %pc_hi20(.LCPI4_20)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_20)
	pcalau12i	$a2, %pc_hi20(.LCPI4_15)
	vld	$vr1, $a2, %pc_lo12(.LCPI4_15)
	pcalau12i	$a2, %pc_hi20(.LCPI4_21)
	vld	$vr2, $a2, %pc_lo12(.LCPI4_21)
	add.d	$a5, $t4, $a0
	ori	$a2, $s3, 438
	add.d	$a6, $t4, $a2
	b	.LBB4_198
	.p2align	4, , 16
.LBB4_197:                              #   in Loop: Header=BB4_198 Depth=1
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 256
	addi.d	$a6, $a6, 128
	bge	$a3, $a7, .LBB4_202
.LBB4_198:                              # %.preheader770
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_200 Depth 2
	blez	$a4, .LBB4_197
# %bb.199:                              # %.preheader769.lr.ph
                                        #   in Loop: Header=BB4_198 Depth=1
	move	$a7, $zero
	move	$t0, $a6
	move	$t1, $a5
	.p2align	4, , 16
.LBB4_200:                              # %.preheader769
                                        #   Parent Loop BB4_198 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t1, 0
	vst	$vr3, $s5, 0
	vld	$vr3, $s5, 0
	vsrai.w	$vr4, $vr3, 1
	vori.b	$vr5, $vr0, 0
	vshuf.w	$vr5, $vr4, $vr3
	vadd.w	$vr4, $vr5, $vr3
	vsub.w	$vr3, $vr5, $vr3
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr3, $vr4
	vshuf4i.d	$vr4, $vr3, 12
	vadd.w	$vr3, $vr4, $vr5
	vld	$vr6, $t1, 64
	vsub.w	$vr4, $vr4, $vr5
	vori.b	$vr5, $vr2, 0
	vshuf.w	$vr5, $vr4, $vr3
	vst	$vr5, $t1, 0
	vst	$vr6, $s5, 0
	vld	$vr3, $s5, 0
	vsrai.w	$vr4, $vr3, 1
	vori.b	$vr5, $vr0, 0
	vshuf.w	$vr5, $vr4, $vr3
	vadd.w	$vr4, $vr5, $vr3
	vsub.w	$vr3, $vr5, $vr3
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr3, $vr4
	vshuf4i.d	$vr4, $vr3, 12
	vadd.w	$vr3, $vr4, $vr5
	vld	$vr6, $t1, 128
	vsub.w	$vr4, $vr4, $vr5
	vori.b	$vr5, $vr2, 0
	vshuf.w	$vr5, $vr4, $vr3
	vst	$vr5, $t1, 64
	vst	$vr6, $s5, 0
	vld	$vr3, $s5, 0
	vsrai.w	$vr4, $vr3, 1
	vori.b	$vr5, $vr0, 0
	vshuf.w	$vr5, $vr4, $vr3
	vadd.w	$vr4, $vr5, $vr3
	vsub.w	$vr3, $vr5, $vr3
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr3, $vr4
	vshuf4i.d	$vr4, $vr3, 12
	vadd.w	$vr3, $vr4, $vr5
	vld	$vr6, $t1, 192
	vsub.w	$vr4, $vr4, $vr5
	vori.b	$vr5, $vr2, 0
	vshuf.w	$vr5, $vr4, $vr3
	vst	$vr5, $t1, 128
	vst	$vr6, $s5, 0
	vld	$vr3, $s5, 0
	vsrai.w	$vr4, $vr3, 1
	vori.b	$vr5, $vr0, 0
	vshuf.w	$vr5, $vr4, $vr3
	vadd.w	$vr4, $vr5, $vr3
	vsub.w	$vr3, $vr5, $vr3
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr3, $vr4
	vshuf4i.d	$vr4, $vr3, 12
	vadd.w	$vr3, $vr4, $vr5
	vsub.w	$vr4, $vr4, $vr5
	vori.b	$vr5, $vr2, 0
	vshuf.w	$vr5, $vr4, $vr3
	ld.w	$a2, $t1, 0
	ld.w	$a4, $t1, 128
	vst	$vr5, $t1, 192
	ld.w	$t2, $t1, 64
	ld.w	$t3, $t1, 192
	add.d	$t5, $a4, $a2
	sub.d	$a2, $a2, $a4
	srai.d	$a4, $t2, 1
	sub.d	$a4, $a4, $t3
	ld.hu	$t6, $t0, -102
	srai.d	$t3, $t3, 1
	add.d	$t2, $t3, $t2
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t6, 6
	addi.d	$t5, $t5, 32
	add.d	$t7, $t5, $t2
	add.w	$t6, $t7, $t6
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t3
	maskeqz	$t6, $t6, $t7
	masknez	$t3, $t3, $t7
	ld.hu	$t7, $t0, -70
	or	$t3, $t6, $t3
	st.w	$t3, $t1, 0
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t7, 6
	addi.d	$a2, $a2, 32
	add.d	$t7, $a2, $a4
	add.w	$t6, $t7, $t6
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t3
	maskeqz	$t6, $t6, $t7
	masknez	$t3, $t3, $t7
	ld.hu	$t7, $t0, -38
	or	$t3, $t6, $t3
	st.w	$t3, $t1, 64
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t7, 6
	sub.d	$a2, $a2, $a4
	add.w	$a2, $a2, $t6
	srai.d	$a4, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $a4, $a2
	slt	$a4, $a2, $t3
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $t3, $a4
	ld.hu	$t3, $t0, -6
	or	$a2, $a2, $a4
	st.w	$a2, $t1, 128
	ldptr.w	$a2, $t4, 15524
	slli.d	$a4, $t3, 6
	sub.d	$t2, $t5, $t2
	add.w	$a4, $t2, $a4
	srai.d	$t2, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t2, $a4
	slt	$t2, $a4, $a2
	maskeqz	$a4, $a4, $t2
	masknez	$a2, $a2, $t2
	or	$a2, $a4, $a2
	ld.w	$a4, $t1, 4
	ld.w	$t2, $t1, 132
	st.w	$a2, $t1, 192
	ld.w	$a2, $t1, 68
	ld.w	$t3, $t1, 196
	add.d	$t5, $t2, $a4
	sub.d	$a4, $a4, $t2
	srai.d	$t2, $a2, 1
	sub.d	$t2, $t2, $t3
	ld.hu	$t6, $t0, -100
	srai.d	$t3, $t3, 1
	add.d	$a2, $t3, $a2
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t6, 6
	addi.d	$t5, $t5, 32
	add.d	$t7, $t5, $a2
	add.w	$t6, $t7, $t6
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t3
	maskeqz	$t6, $t6, $t7
	masknez	$t3, $t3, $t7
	ld.hu	$t7, $t0, -68
	or	$t3, $t6, $t3
	st.w	$t3, $t1, 4
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t7, 6
	addi.d	$a4, $a4, 32
	add.d	$t7, $a4, $t2
	add.w	$t6, $t7, $t6
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t3
	maskeqz	$t6, $t6, $t7
	masknez	$t3, $t3, $t7
	ld.hu	$t7, $t0, -36
	or	$t3, $t6, $t3
	st.w	$t3, $t1, 68
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t7, 6
	sub.d	$a4, $a4, $t2
	add.w	$a4, $a4, $t6
	srai.d	$t2, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t2, $a4
	slt	$t2, $a4, $t3
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $t3, $t2
	ld.hu	$t3, $t0, -4
	or	$a4, $a4, $t2
	st.w	$a4, $t1, 132
	ldptr.w	$a4, $t4, 15524
	slli.d	$t2, $t3, 6
	sub.d	$a2, $t5, $a2
	add.w	$a2, $a2, $t2
	srai.d	$t2, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $t2, $a2
	slt	$t2, $a2, $a4
	maskeqz	$a2, $a2, $t2
	masknez	$a4, $a4, $t2
	or	$a2, $a2, $a4
	ld.w	$a4, $t1, 8
	ld.w	$t2, $t1, 136
	st.w	$a2, $t1, 196
	ld.w	$a2, $t1, 72
	ld.w	$t3, $t1, 200
	add.d	$t5, $t2, $a4
	sub.d	$a4, $a4, $t2
	srai.d	$t2, $a2, 1
	sub.d	$t2, $t2, $t3
	ld.hu	$t6, $t0, -98
	srai.d	$t3, $t3, 1
	add.d	$a2, $t3, $a2
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t6, 6
	addi.d	$t5, $t5, 32
	add.d	$t7, $t5, $a2
	add.w	$t6, $t7, $t6
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t3
	maskeqz	$t6, $t6, $t7
	masknez	$t3, $t3, $t7
	ld.hu	$t7, $t0, -66
	or	$t3, $t6, $t3
	st.w	$t3, $t1, 8
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t7, 6
	addi.d	$a4, $a4, 32
	add.d	$t7, $a4, $t2
	add.w	$t6, $t7, $t6
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t3
	maskeqz	$t6, $t6, $t7
	masknez	$t3, $t3, $t7
	ld.hu	$t7, $t0, -34
	or	$t3, $t6, $t3
	st.w	$t3, $t1, 72
	ldptr.w	$t3, $t4, 15524
	slli.d	$t6, $t7, 6
	sub.d	$a4, $a4, $t2
	add.w	$a4, $a4, $t6
	srai.d	$t2, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t2, $a4
	slt	$t2, $a4, $t3
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $t3, $t2
	ld.hu	$t3, $t0, -2
	or	$a4, $a4, $t2
	st.w	$a4, $t1, 136
	ldptr.w	$a4, $t4, 15524
	slli.d	$t2, $t3, 6
	sub.d	$a2, $t5, $a2
	add.w	$a2, $a2, $t2
	srai.d	$t2, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $t2, $a2
	slt	$t2, $a2, $a4
	maskeqz	$a2, $a2, $t2
	masknez	$a4, $a4, $t2
	or	$a2, $a2, $a4
	ld.w	$a4, $t1, 12
	ld.w	$t2, $t1, 140
	st.w	$a2, $t1, 200
	ld.w	$t3, $t1, 76
	ld.w	$a2, $t1, 204
	add.d	$t5, $t2, $a4
	sub.d	$t6, $a4, $t2
	srai.d	$t7, $t3, 1
	sub.d	$t7, $t7, $a2
	ld.hu	$t8, $t0, -96
	srai.d	$fp, $a2, 1
	add.d	$fp, $fp, $t3
	ldptr.w	$s0, $t4, 15524
	slli.d	$t8, $t8, 6
	addi.d	$t5, $t5, 32
	add.d	$s1, $t5, $fp
	add.w	$t8, $s1, $t8
	srai.d	$s1, $t8, 6
	srai.d	$t8, $t8, 63
	andn	$t8, $s1, $t8
	slt	$s1, $t8, $s0
	maskeqz	$t8, $t8, $s1
	masknez	$s0, $s0, $s1
	ld.hu	$s1, $t0, -64
	or	$t8, $t8, $s0
	st.w	$t8, $t1, 12
	ldptr.w	$t8, $t4, 15524
	slli.d	$s0, $s1, 6
	addi.d	$t6, $t6, 32
	add.d	$s1, $t6, $t7
	add.w	$s0, $s1, $s0
	srai.d	$s1, $s0, 6
	srai.d	$s0, $s0, 63
	andn	$s0, $s1, $s0
	slt	$s1, $s0, $t8
	maskeqz	$s0, $s0, $s1
	masknez	$t8, $t8, $s1
	ld.hu	$s1, $t0, -32
	or	$t8, $s0, $t8
	st.w	$t8, $t1, 76
	ldptr.w	$t8, $t4, 15524
	slli.d	$s0, $s1, 6
	sub.d	$t6, $t6, $t7
	add.w	$t6, $t6, $s0
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t8
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $t8, $t7
	ld.hu	$t8, $t0, 0
	or	$t6, $t6, $t7
	st.w	$t6, $t1, 140
	ldptr.w	$t6, $t4, 15524
	slli.d	$t7, $t8, 6
	sub.d	$t5, $t5, $fp
	add.w	$t5, $t5, $t7
	srai.d	$t7, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t7, $t5
	slt	$t7, $t5, $t6
	maskeqz	$t5, $t5, $t7
	masknez	$t6, $t6, $t7
	or	$t5, $t5, $t6
	st.w	$t5, $t1, 204
	st.w	$a4, $s5, 0
	st.w	$t3, $s5, 4
	st.w	$t2, $s5, 8
	ldptr.w	$a4, $t4, 15544
	st.w	$a2, $s5, 12
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 8
	blt	$a7, $a4, .LBB4_200
# %bb.201:                              # %._crit_edge916
                                        #   in Loop: Header=BB4_198 Depth=1
	ori	$a2, $s3, 3260
	ldx.w	$a7, $t4, $a2
	b	.LBB4_197
.LBB4_202:                              # %.preheader766
	blez	$a7, .LBB4_215
# %bb.203:                              # %.lr.ph924
	ld.w	$a3, $t4, 188
	ldx.wu	$a1, $t4, $a1
	add.d	$a0, $t4, $a0
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	move	$a4, $zero
	ld.d	$a5, $a2, 0
	addi.d	$a6, $a1, -1
	bstrpick.d	$a2, $a1, 16, 3
	slli.d	$t0, $a2, 3
	ori	$a2, $s3, 864
	add.d	$t1, $t4, $a2
	addi.w	$t2, $a1, 0
	ori	$t3, $zero, 12
	srli.d	$t5, $a6, 16
	b	.LBB4_205
	.p2align	4, , 16
.LBB4_204:                              # %._crit_edge922
                                        #   in Loop: Header=BB4_205 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$t1, $t1, 64
	addi.d	$a0, $a0, 64
	beq	$a4, $a7, .LBB4_215
.LBB4_205:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_213 Depth 2
                                        #     Child Loop BB4_209 Depth 2
	blez	$t2, .LBB4_204
# %bb.206:                              # %.lr.ph921
                                        #   in Loop: Header=BB4_205 Depth=1
	ldptr.d	$a2, $a5, 6472
	add.d	$t7, $a3, $a4
	ld.d	$t6, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $t6
	ld.w	$t6, $t4, 184
	slli.d	$t7, $t7, 48
	srai.d	$t7, $t7, 45
	ldx.d	$a2, $a2, $t7
	bgeu	$a1, $t3, .LBB4_210
# %bb.207:                              #   in Loop: Header=BB4_205 Depth=1
	move	$t8, $zero
.LBB4_208:                              # %scalar.ph1256.preheader
                                        #   in Loop: Header=BB4_205 Depth=1
	add.d	$t6, $t6, $t8
	alsl.d	$t7, $t8, $a0, 2
	sub.d	$t8, $a1, $t8
	.p2align	4, , 16
.LBB4_209:                              # %scalar.ph1256
                                        #   Parent Loop BB4_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$fp, $t7, 0
	slli.d	$s0, $t6, 48
	srai.d	$s0, $s0, 47
	stx.h	$fp, $a2, $s0
	addi.d	$t6, $t6, 1
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB4_209
	b	.LBB4_204
	.p2align	4, , 16
.LBB4_210:                              # %vector.scevcheck
                                        #   in Loop: Header=BB4_205 Depth=1
	slli.d	$t7, $t6, 48
	srai.d	$t7, $t7, 47
	add.d	$t8, $t6, $a6
	slli.d	$t8, $t8, 48
	srai.d	$fp, $t8, 47
	move	$t8, $zero
	blt	$fp, $t7, .LBB4_208
# %bb.211:                              # %vector.scevcheck
                                        #   in Loop: Header=BB4_205 Depth=1
	bnez	$t5, .LBB4_208
# %bb.212:                              # %vector.body1261.preheader
                                        #   in Loop: Header=BB4_205 Depth=1
	move	$t7, $t6
	move	$t8, $t1
	move	$fp, $t0
	.p2align	4, , 16
.LBB4_213:                              # %vector.body1261
                                        #   Parent Loop BB4_205 Depth=1
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
	bnez	$fp, .LBB4_213
# %bb.214:                              # %middle.block1265
                                        #   in Loop: Header=BB4_205 Depth=1
	move	$t8, $t0
	beq	$t0, $a1, .LBB4_204
	b	.LBB4_208
.LBB4_215:                              # %.loopexit
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	dct_chroma, .Lfunc_end4-dct_chroma
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dct_luma_sp
.LCPI5_0:
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI5_1:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI5_2:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_3:
	.dword	0x3feb333333333333              # double 0.84999999999999998
	.text
	.globl	dct_luma_sp
	.p2align	5
	.type	dct_luma_sp,@function
dct_luma_sp:                            # @dct_luma_sp
# %bb.0:                                # %.preheader371
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
	fst.d	$fs0, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 336                  # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
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
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s2, 0
	ldptr.d	$a3, $a2, 14160
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	ld.w	$a3, $a2, 12
	ldptr.d	$a2, $a2, 14224
	ldx.d	$a0, $a1, $a0
	ori	$a1, $zero, 536
	mul.d	$a1, $a3, $a1
	add.d	$s7, $a2, $a1
	ld.w	$a1, $s7, 8
	ld.d	$a2, $a0, 0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(qp_per_matrix)
	ld.d	$a0, $a0, %got_pc_lo12(qp_per_matrix)
	ld.w	$a1, $s7, 8
	ld.d	$a2, $a0, 0
	slli.d	$a0, $a1, 2
	ldx.w	$s1, $a2, $a0
	pcalau12i	$a1, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a1, $a1, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a1, $a1, 0
	ld.w	$a3, $s7, 20
	ldx.w	$a0, $a1, $a0
	slli.d	$a3, $a3, 2
	ld.d	$a4, $s2, 0
	ldx.w	$ra, $a2, $a3
	ldx.w	$a1, $a1, $a3
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a2, $s0, 5
	add.d	$a2, $a4, $a2
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a2, $fp, $a2, 1
	ldptr.d	$a3, $a2, 12624
	lu12i.w	$a5, 3
	ori	$t0, $a5, 848
	vldx	$vr1, $a4, $t0
	vinsgr2vr.d	$vr2, $a3, 0
	vrepli.b	$vr5, 0
	vilvl.h	$vr4, $vr5, $vr2
	vadd.w	$vr1, $vr1, $vr4
	ldptr.d	$a3, $a2, 12656
	ori	$a7, $a5, 912
	vldx	$vr2, $a4, $a7
	vstx	$vr1, $a4, $t0
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr3, $vr5, $vr1
	vadd.w	$vr1, $vr2, $vr3
	ldptr.d	$a3, $a2, 12688
	ori	$a6, $a5, 976
	vldx	$vr6, $a4, $a6
	vstx	$vr1, $a4, $a7
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr2, $vr5, $vr1
	vadd.w	$vr1, $vr6, $vr2
	ldptr.d	$a2, $a2, 12720
	vstx	$vr1, $a4, $a6
	ori	$a5, $a5, 1040
	vldx	$vr6, $a4, $a5
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $s2, 0
	vilvl.h	$vr1, $vr5, $vr1
	vadd.w	$vr5, $vr6, $vr1
	vstx	$vr5, $a4, $a5
	vldx	$vr8, $a2, $t0
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr5, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	vld	$vr6, $a3, %pc_lo12(.LCPI5_1)
	vshuf4i.w	$vr7, $vr8, 27
	vadd.w	$vr9, $vr8, $vr7
	vsub.w	$vr10, $vr8, $vr7
	vori.b	$vr11, $vr5, 0
	vshuf.w	$vr11, $vr10, $vr9
	vori.b	$vr9, $vr6, 0
	pcalau12i	$a3, %pc_hi20(.LCPI5_2)
	vld	$vr7, $a3, %pc_lo12(.LCPI5_2)
	vshuf.w	$vr9, $vr10, $vr8
	vshuf4i.w	$vr8, $vr8, 16
	vadd.w	$vr8, $vr9, $vr8
	vslli.w	$vr9, $vr9, 1
	vori.b	$vr10, $vr7, 0
	vshuf.w	$vr10, $vr9, $vr8
	vadd.w	$vr8, $vr11, $vr10
	vldx	$vr9, $a2, $a7
	vsub.w	$vr10, $vr11, $vr10
	vshuf4i.d	$vr8, $vr10, 12
	vstx	$vr8, $a2, $t0
	vshuf4i.w	$vr8, $vr9, 27
	vadd.w	$vr10, $vr9, $vr8
	vsub.w	$vr8, $vr9, $vr8
	vori.b	$vr11, $vr5, 0
	vshuf.w	$vr11, $vr8, $vr10
	vori.b	$vr10, $vr6, 0
	vshuf.w	$vr10, $vr8, $vr9
	vshuf4i.w	$vr8, $vr9, 16
	vadd.w	$vr8, $vr10, $vr8
	vslli.w	$vr9, $vr10, 1
	vori.b	$vr10, $vr7, 0
	vshuf.w	$vr10, $vr9, $vr8
	vadd.w	$vr8, $vr11, $vr10
	vldx	$vr9, $a2, $a6
	vsub.w	$vr10, $vr11, $vr10
	vshuf4i.d	$vr8, $vr10, 12
	vstx	$vr8, $a2, $a7
	vshuf4i.w	$vr8, $vr9, 27
	vadd.w	$vr10, $vr9, $vr8
	vsub.w	$vr8, $vr9, $vr8
	vori.b	$vr11, $vr5, 0
	vshuf.w	$vr11, $vr8, $vr10
	vori.b	$vr10, $vr6, 0
	vshuf.w	$vr10, $vr8, $vr9
	vshuf4i.w	$vr8, $vr9, 16
	vadd.w	$vr8, $vr10, $vr8
	vslli.w	$vr9, $vr10, 1
	vori.b	$vr10, $vr7, 0
	vshuf.w	$vr10, $vr9, $vr8
	vadd.w	$vr8, $vr11, $vr10
	vldx	$vr9, $a2, $a5
	vsub.w	$vr10, $vr11, $vr10
	vshuf4i.d	$vr8, $vr10, 12
	vstx	$vr8, $a2, $a6
	vshuf4i.w	$vr8, $vr9, 27
	vadd.w	$vr10, $vr9, $vr8
	vsub.w	$vr8, $vr9, $vr8
	vshuf.w	$vr5, $vr8, $vr10
	vshuf.w	$vr6, $vr8, $vr9
	vshuf4i.w	$vr8, $vr9, 16
	vadd.w	$vr8, $vr6, $vr8
	vslli.w	$vr6, $vr6, 1
	vshuf.w	$vr7, $vr6, $vr8
	vadd.w	$vr6, $vr5, $vr7
	ld.d	$a3, $s2, 0
	vsub.w	$vr5, $vr5, $vr7
	vshuf4i.d	$vr6, $vr5, 12
	vstx	$vr6, $a2, $a5
	vldx	$vr5, $a3, $t0
	vldx	$vr6, $a3, $a7
	vldx	$vr7, $a3, $a6
	vldx	$vr8, $a3, $a5
	vsub.w	$vr9, $vr6, $vr7
	vsub.w	$vr10, $vr5, $vr8
	vadd.w	$vr5, $vr8, $vr5
	vadd.w	$vr6, $vr7, $vr6
	vadd.w	$vr7, $vr6, $vr5
	st.d	$t0, $sp, 232                   # 8-byte Folded Spill
	vstx	$vr7, $a3, $t0
	vsub.w	$vr5, $vr5, $vr6
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	vstx	$vr5, $a3, $a6
	vslli.w	$vr5, $vr10, 1
	vadd.w	$vr5, $vr5, $vr9
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	vstx	$vr5, $a3, $a7
	vslli.w	$vr5, $vr9, 1
	vsub.w	$vr5, $vr10, $vr5
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	vstx	$vr5, $a3, $a5
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
	addi.w	$t1, $a4, 0
	vpickve2gr.w	$a5, $vr3, 1
	vpickve2gr.w	$t2, $vr3, 2
	add.d	$t3, $t2, $a5
	sub.d	$t2, $a5, $t2
	addi.w	$t4, $t2, 0
	add.d	$t5, $t3, $a7
	sub.d	$a5, $a7, $t3
	alsl.d	$t1, $t1, $t2, 1
	slli.d	$a7, $t4, 1
	sub.d	$a4, $a4, $a7
	vpickve2gr.w	$a7, $vr2, 0
	vpickve2gr.w	$t2, $vr2, 3
	add.d	$t3, $t2, $a7
	sub.d	$a7, $a7, $t2
	addi.w	$t2, $a7, 0
	vpickve2gr.w	$t4, $vr2, 1
	vpickve2gr.w	$t6, $vr2, 2
	add.d	$t7, $t6, $t4
	sub.d	$t4, $t4, $t6
	addi.w	$t6, $t4, 0
	add.d	$t8, $t7, $t3
	sub.d	$t3, $t3, $t7
	alsl.d	$t2, $t2, $t4, 1
	slli.d	$t4, $t6, 1
	sub.d	$a7, $a7, $t4
	vpickve2gr.w	$t4, $vr1, 0
	vpickve2gr.w	$t6, $vr1, 3
	add.d	$t7, $t6, $t4
	bstrpick.d	$t7, $t7, 16, 0
	sub.w	$t4, $t4, $t6
	vpickve2gr.w	$t6, $vr1, 1
	vpickve2gr.w	$fp, $vr1, 2
	add.d	$s0, $fp, $t6
	bstrpick.d	$s0, $s0, 16, 0
	sub.w	$t6, $t6, $fp
	add.d	$fp, $s0, $t7
	sub.d	$t7, $t7, $s0
	alsl.d	$s0, $t4, $t6, 1
	slli.d	$t6, $t6, 1
	sub.d	$t4, $t4, $t6
	add.d	$t6, $fp, $t0
	sub.d	$t0, $t0, $fp
	add.d	$fp, $t8, $t5
	sub.d	$t5, $t5, $t8
	add.d	$t8, $fp, $t6
	st.w	$t8, $sp, 272
	sub.d	$t6, $t6, $fp
	st.w	$t6, $sp, 280
	alsl.d	$t6, $t0, $t5, 1
	st.w	$t6, $sp, 276
	slli.d	$t5, $t5, 1
	sub.d	$t0, $t0, $t5
	st.w	$t0, $sp, 284
	add.d	$t0, $s0, $a6
	sub.d	$a6, $a6, $s0
	add.d	$t5, $t2, $t1
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t5, $t0
	st.w	$t2, $sp, 288
	sub.d	$t0, $t0, $t5
	st.w	$t0, $sp, 296
	alsl.d	$t0, $a6, $t1, 1
	st.w	$t0, $sp, 292
	slli.d	$t0, $t1, 1
	sub.d	$a6, $a6, $t0
	st.w	$a6, $sp, 300
	add.d	$a6, $t7, $a3
	sub.d	$a3, $a3, $t7
	add.d	$t0, $t3, $a5
	sub.d	$a5, $a5, $t3
	add.d	$t1, $t0, $a6
	st.w	$t1, $sp, 304
	sub.d	$a6, $a6, $t0
	st.w	$a6, $sp, 312
	alsl.d	$a6, $a3, $a5, 1
	st.w	$a6, $sp, 308
	slli.d	$a5, $a5, 1
	sub.d	$a3, $a3, $a5
	st.w	$a3, $sp, 316
	add.d	$a3, $t4, $a2
	sub.d	$a2, $a2, $t4
	add.d	$a5, $a7, $a4
	sub.d	$a4, $a4, $a7
	add.d	$a6, $a5, $a3
	st.w	$a6, $sp, 320
	sub.d	$a3, $a3, $a5
	st.w	$a3, $sp, 328
	alsl.d	$a3, $a2, $a4, 1
	st.w	$a3, $sp, 324
	pcalau12i	$a3, %pc_hi20(.LCPI5_3)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI5_3)
	slli.d	$a3, $a4, 1
	sub.d	$a2, $a2, $a3
	st.w	$a2, $sp, 332
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -1008
	fmul.d	$fs0, $fa0, $fa1
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$t1, $s1, 15
	addi.d	$t2, $ra, 15
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
	move	$fp, $zero
	move	$s1, $zero
	move	$a0, $zero
	add.d	$a3, $a2, $a3
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $s2, 0
	lu12i.w	$a2, 244
	ori	$a2, $a2, 575
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	st.d	$t2, $sp, 72                    # 8-byte Folded Spill
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t7, $sp, 32                    # 8-byte Folded Spill
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_1:                                #   in Loop: Header=BB5_3 Depth=1
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	masknez	$a5, $a3, $a2
	move	$s3, $a6
	maskeqz	$a6, $a4, $a2
	or	$a5, $a6, $a5
	ld.w	$a6, $a1, 180
	pcalau12i	$a7, %pc_hi20(lrec)
	ld.d	$a7, $a7, %pc_lo12(lrec)
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	add.d	$t0, $t0, $s4
	add.w	$a6, $t0, $a6
	ld.w	$t0, $a1, 176
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	add.d	$a7, $a7, $s0
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a6, $a7
	move	$a6, $s3
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a5, 4
	ldx.w	$a5, $a5, $a6
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $ra
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	alsl.d	$a3, $s0, $a3, 2
	addi.d	$fp, $fp, 2
	stptr.w	$a2, $a3, 13136
	ori	$a2, $zero, 32
	beq	$fp, $a2, .LBB5_17
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s7, 428
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN)
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	add.d	$a3, $a2, $fp
	ldx.bu	$s0, $a2, $fp
	ld.bu	$a4, $a3, 1
	addi.d	$a2, $sp, 272
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
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	slli.d	$a2, $a4, 6
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $s0, $a2, 2
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a4
	slti	$a4, $s6, 0
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	sub.d	$a5, $zero, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	add.w	$s8, $a3, $a2
	alsl.d	$a3, $s0, $t7, 4
	ldx.w	$a3, $a3, $a6
	srai.d	$a4, $s8, 31
	xor	$a5, $s8, $a4
	sub.d	$a4, $a5, $a4
	mul.d	$a4, $a4, $a3
	add.d	$a4, $a4, $t3
	sra.w	$s4, $a4, $t1
	sub.w	$s5, $a2, $s6
	srai.d	$a4, $s5, 31
	xor	$a5, $s5, $a4
	sub.d	$a4, $a5, $a4
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $t3
	sra.w	$s3, $a3, $t1
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a4, $s0, $a3, 4
	pcalau12i	$a3, %pc_hi20(A)
	addi.d	$a5, $a3, %pc_lo12(A)
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	beqz	$s3, .LBB5_7
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	beq	$s4, $s3, .LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	beqz	$s4, .LBB5_7
# %bb.6:                                # %.thread347
                                        #   in Loop: Header=BB5_3 Depth=1
	slti	$a0, $s8, 0
	srai.d	$a1, $s4, 31
	xor	$a3, $s4, $a1
	sub.w	$t0, $a3, $a1
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $t0
	ldx.w	$a3, $a4, $a6
	alsl.d	$a4, $s0, $a5, 4
	ldx.w	$a4, $a4, $a6
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $t0, $a0
	or	$a0, $a1, $a0
	mul.d	$s7, $a4, $a3
	mul.d	$a0, $s7, $a0
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $fp
	srli.d	$a0, $a0, 6
	add.d	$a0, $s6, $a0
	sub.d	$a0, $a2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 264
	move	$a0, $s4
	move	$a1, $t8
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	move	$s1, $t8
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 268
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $s2, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $s0, $a0, 2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	slti	$a1, $s5, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.w	$s2, $a3, $a2
	sub.d	$a2, $zero, $s2
	masknez	$a3, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	mul.d	$a1, $s7, $a1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	sll.w	$a1, $a1, $fp
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	srli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s6
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 264
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	move	$t8, $s1
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 268
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s2
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
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
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s8, $a0
	or	$s5, $a0, $a1
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_3 Depth=1
	bne	$s4, $s3, .LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	move	$s5, $s8
	move	$s3, $s4
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	beqz	$s4, .LBB5_14
.LBB5_10:                               #   in Loop: Header=BB5_3 Depth=1
	beqz	$s3, .LBB5_14
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
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
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a2, 0
	slti	$a0, $s5, 0
	srai.d	$a1, $s3, 31
	xor	$a2, $s3, $a1
	sub.d	$a1, $a2, $a1
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	stx.w	$t8, $a2, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a6
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $s0, $a2, 4
	ldx.w	$a2, $a2, $a6
	addi.w	$s1, $s1, 1
	mul.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	ld.d	$a1, $s2, 0
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
	slli.d	$a2, $s1, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	stx.w	$zero, $a3, $a2
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $s7
	move	$s3, $s2
	lu12i.w	$s2, 3
	ori	$a2, $s2, 856
	ldx.w	$a4, $a1, $a2
	ldptr.w	$a5, $a1, 13140
	ldptr.w	$a6, $a1, 13148
	add.d	$a7, $a4, $a3
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a5, 1
	sub.d	$a4, $a4, $a6
	srli.d	$a6, $a6, 1
	add.d	$a5, $a6, $a5
	add.d	$a6, $a5, $a7
	sub.d	$a5, $a7, $a5
	stptr.w	$a5, $a1, 13148
	add.d	$a7, $a4, $a3
	sub.d	$a4, $a3, $a4
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a5, $a1, $s6
	ori	$a3, $s2, 920
	ldx.w	$t0, $a1, $a3
	stptr.w	$a4, $a1, 13144
	ldptr.w	$a4, $a1, 13204
	ldptr.w	$t1, $a1, 13212
	add.d	$t2, $t0, $a5
	sub.d	$a5, $a5, $t0
	srli.d	$t0, $a4, 1
	sub.d	$t3, $t0, $t1
	srli.d	$t0, $t1, 1
	add.d	$a4, $t0, $a4
	add.d	$t0, $a4, $t2
	sub.d	$a4, $t2, $a4
	stptr.w	$a4, $a1, 13212
	add.d	$t1, $t3, $a5
	sub.d	$a5, $a5, $t3
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$t2, $a1, $s5
	ori	$a4, $s2, 984
	ldx.w	$t3, $a1, $a4
	stptr.w	$a5, $a1, 13208
	ldptr.w	$a5, $a1, 13268
	ldptr.w	$t4, $a1, 13276
	add.d	$t5, $t3, $t2
	sub.d	$t2, $t2, $t3
	srli.d	$t3, $a5, 1
	sub.d	$t3, $t3, $t4
	srli.d	$t4, $t4, 1
	add.d	$a5, $t4, $a5
	add.d	$t4, $a5, $t5
	sub.d	$t5, $t5, $a5
	stptr.w	$t5, $a1, 13276
	add.d	$t6, $t3, $t2
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$t7, $a1, $s4
	ori	$a5, $s2, 1048
	ldx.w	$t8, $a1, $a5
	sub.d	$t2, $t2, $t3
	ldptr.w	$t3, $a1, 13332
	ldptr.w	$fp, $a1, 13340
	add.d	$s0, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $t3, 1
	sub.d	$t8, $t8, $fp
	srli.d	$fp, $fp, 1
	add.d	$t3, $fp, $t3
	add.d	$fp, $t3, $s0
	sub.d	$t3, $s0, $t3
	stptr.w	$t3, $a1, 13340
	add.d	$s0, $t8, $t7
	sub.d	$t7, $t7, $t8
	ori	$t8, $s2, 3232
	ldx.w	$t8, $a1, $t8
	ldptr.d	$s1, $a1, 13144
	vinsgr2vr.w	$vr0, $t4, 0
	vinsgr2vr.w	$vr0, $t6, 1
	vinsgr2vr.w	$vr0, $t2, 2
	vinsgr2vr.w	$vr0, $t5, 3
	vreplgr2vr.d	$vr1, $s1
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $a7, 1
	vadd.w	$vr1, $vr0, $vr1
	vinsgr2vr.w	$vr2, $fp, 0
	vinsgr2vr.w	$vr2, $s0, 1
	ldptr.d	$t2, $a1, 13208
	vinsgr2vr.w	$vr2, $t7, 2
	vinsgr2vr.w	$vr2, $t3, 3
	vsrai.w	$vr3, $vr2, 1
	vinsgr2vr.d	$vr4, $t2, 0
	vreplvei.d	$vr5, $vr4, 0
	vinsgr2vr.w	$vr5, $t0, 0
	vinsgr2vr.w	$vr5, $t1, 1
	vadd.w	$vr3, $vr3, $vr5
	vrepli.w	$vr5, 32
	vadd.w	$vr1, $vr1, $vr5
	vadd.w	$vr6, $vr1, $vr3
	vsrai.w	$vr6, $vr6, 6
	vmaxi.w	$vr6, $vr6, 0
	vreplgr2vr.w	$vr7, $t8
	vmin.w	$vr6, $vr6, $vr7
	vsub.w	$vr1, $vr1, $vr3
	vsrai.w	$vr1, $vr1, 6
	ldptr.d	$t2, $a1, 13144
	vmaxi.w	$vr1, $vr1, 0
	vmin.w	$vr1, $vr1, $vr7
	vstx	$vr1, $a1, $s4
	vinsgr2vr.d	$vr1, $t2, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vpackev.d	$vr1, $vr1, $vr3
	vsub.w	$vr0, $vr1, $vr0
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vpackev.d	$vr1, $vr4, $vr1
	vsrai.w	$vr1, $vr1, 1
	vsub.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr0, $vr5
	vstx	$vr6, $a1, $s7
	vadd.w	$vr2, $vr0, $vr1
	vsrai.w	$vr2, $vr2, 6
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr7
	vstx	$vr2, $a1, $s6
	vsub.w	$vr0, $vr0, $vr1
	vsrai.w	$vr0, $vr0, 6
	ld.d	$a6, $s3, 0
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr7
	vstx	$vr0, $a1, $s5
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ld.w	$t0, $a6, 180
	ld.w	$t1, $a6, 176
	ldptr.d	$a7, $a1, 6440
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.w	$t2, $a1, $t0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.w	$t1, $a1, $t1
	slli.d	$a1, $t2, 3
	ldx.d	$t3, $a7, $a1
	ldx.h	$t0, $a6, $s7
	slli.d	$a1, $t1, 1
	ori	$t4, $s2, 852
	ldx.h	$t4, $a6, $t4
	stx.h	$t0, $t3, $a1
	addi.w	$t0, $t1, 1
	slli.d	$t0, $t0, 1
	stx.h	$t4, $t3, $t0
	ldx.h	$a2, $a6, $a2
	addi.w	$t4, $t1, 2
	slli.d	$t4, $t4, 1
	ori	$t5, $s2, 860
	ldx.h	$t5, $a6, $t5
	stx.h	$a2, $t3, $t4
	addi.w	$a2, $t1, 3
	slli.d	$a2, $a2, 1
	stx.h	$t5, $t3, $a2
	addi.w	$t1, $t2, 1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a7, $t1
	ldx.h	$t3, $a6, $s6
	ori	$t5, $s2, 916
	ldx.h	$t5, $a6, $t5
	ldx.h	$a3, $a6, $a3
	ori	$t6, $s2, 924
	ldx.h	$t6, $a6, $t6
	stx.h	$t3, $t1, $a1
	stx.h	$t5, $t1, $t0
	stx.h	$a3, $t1, $t4
	stx.h	$t6, $t1, $a2
	addi.w	$a3, $t2, 2
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a7, $a3
	ldx.h	$t1, $a6, $s5
	ori	$t3, $s2, 980
	ldx.h	$t3, $a6, $t3
	ldx.h	$a4, $a6, $a4
	ori	$t5, $s2, 988
	ldx.h	$t5, $a6, $t5
	stx.h	$t1, $a3, $a1
	stx.h	$t3, $a3, $t0
	stx.h	$a4, $a3, $t4
	stx.h	$t5, $a3, $a2
	addi.w	$a3, $t2, 3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a7, $a3
	ldx.h	$a4, $a6, $s4
	ori	$a7, $s2, 1044
	ldx.h	$a7, $a6, $a7
	ldx.h	$a5, $a6, $a5
	ori	$t1, $s2, 1052
	ldx.h	$a6, $a6, $t1
	stx.h	$a4, $a3, $a1
	stx.h	$a7, $a3, $t0
	stx.h	$a5, $a3, $t4
	stx.h	$a6, $a3, $a2
	fld.d	$fs2, $sp, 336                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 352                  # 8-byte Folded Reload
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
.Lfunc_end5:
	.size	dct_luma_sp, .Lfunc_end5-dct_luma_sp
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_chroma_sp
.LCPI6_0:
	.dword	0x3feb333333333333              # double 0.84999999999999998
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI6_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI6_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI6_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI6_5:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI6_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI6_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI6_8:
	.word	2                               # 0x2
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	5                               # 0x5
.LCPI6_9:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	6                               # 0x6
.LCPI6_10:
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	4                               # 0x4
	.text
	.globl	dct_chroma_sp
	.p2align	5
	.type	dct_chroma_sp,@function
dct_chroma_sp:                          # @dct_chroma_sp
# %bb.0:
	addi.d	$sp, $sp, -928
	st.d	$ra, $sp, 920                   # 8-byte Folded Spill
	st.d	$fp, $sp, 912                   # 8-byte Folded Spill
	st.d	$s0, $sp, 904                   # 8-byte Folded Spill
	st.d	$s1, $sp, 896                   # 8-byte Folded Spill
	st.d	$s2, $sp, 888                   # 8-byte Folded Spill
	st.d	$s3, $sp, 880                   # 8-byte Folded Spill
	st.d	$s4, $sp, 872                   # 8-byte Folded Spill
	st.d	$s5, $sp, 864                   # 8-byte Folded Spill
	st.d	$s6, $sp, 856                   # 8-byte Folded Spill
	st.d	$s7, $sp, 848                   # 8-byte Folded Spill
	st.d	$s8, $sp, 840                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 832                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 824                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 816                  # 8-byte Folded Spill
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$fp, $a1, %got_pc_lo12(img)
	ld.d	$a3, $fp, 0
	ld.w	$a1, $a3, 12
	ldptr.d	$a2, $a3, 14168
	ldptr.d	$a4, $a3, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$a2, $a2, 8
	add.d	$s0, $a4, $a1
	ld.w	$a0, $s0, 8
	ld.d	$a1, $a2, 0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $a2, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	ld.d	$s5, $fp, 0
	lu12i.w	$a6, 3
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a2, $a6, 3168
	ldx.w	$a2, $s5, $a2
	ld.w	$a3, $s0, 8
	ld.w	$a1, $a1, 208
	fld.d	$fa2, $a0, %pc_lo12(.LCPI6_0)
	vldi	$vr1, -1008
	sub.w	$a2, $zero, $a2
	add.w	$a0, $a1, $a3
	slt	$a3, $a2, $a0
	masknez	$a4, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a4, $a0, $a4
	slti	$a3, $a4, 51
	maskeqz	$a5, $a4, $a3
	ld.w	$t0, $s0, 20
	ori	$a0, $zero, 51
	masknez	$a3, $a0, $a3
	or	$a3, $a5, $a3
	add.w	$a1, $t0, $a1
	slt	$a5, $a2, $a1
	masknez	$a2, $a2, $a5
	maskeqz	$a1, $a1, $a5
	or	$a2, $a1, $a2
	pcalau12i	$a1, %pc_hi20(QP_SCALE_CR)
	addi.d	$a1, $a1, %pc_lo12(QP_SCALE_CR)
	bltz	$a4, .LBB6_2
# %bb.1:
	ldx.bu	$a3, $a1, $a3
	ori	$a4, $zero, 171
	mul.d	$a4, $a3, $a4
	srli.d	$a7, $a4, 10
	b	.LBB6_3
.LBB6_2:                                # %.thread
	sub.d	$a4, $zero, $a3
	bstrpick.d	$a4, $a4, 31, 0
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 34
	sub.d	$a7, $zero, $a4
.LBB6_3:
	fmul.d	$fa0, $fa0, $fa2
	lu12i.w	$a4, 174762
	ori	$t1, $a4, 2731
	mul.d	$a4, $a3, $t1
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a5
	slli.d	$a5, $a4, 2
	alsl.d	$a4, $a4, $a5, 1
	sub.w	$a3, $a3, $a4
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a4, $a7, 15
	ori	$a3, $zero, 1
	st.d	$a4, $sp, 424                   # 8-byte Folded Spill
	sll.w	$a3, $a3, $a4
	mul.d	$a3, $a3, $t1
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	bltz	$a2, .LBB6_5
# %bb.4:
	slti	$a3, $a2, 51
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	ldx.bu	$t0, $a1, $a0
	ori	$a0, $zero, 171
	mul.d	$a0, $t0, $a0
	srli.d	$a0, $a0, 10
	b	.LBB6_6
.LBB6_5:
	mul.d	$a0, $t0, $t1
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
.LBB6_6:                                # %.preheader669
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 456                   # 8-byte Folded Spill
	move	$t6, $zero
	ldptr.d	$a0, $s5, 12624
	fmul.d	$fs0, $fa0, $fa1
	ori	$a2, $a6, 848
	vldx	$vr1, $s5, $a2
	vinsgr2vr.d	$vr2, $a0, 0
	vrepli.b	$vr0, 0
	vilvl.h	$vr9, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr9
	ldptr.d	$a0, $s5, 12632
	ori	$a1, $a6, 864
	vldx	$vr2, $s5, $a1
	vstx	$vr1, $s5, $a2
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr7, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr7
	ldptr.d	$a0, $s5, 12656
	ori	$a3, $a6, 912
	vldx	$vr2, $s5, $a3
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	vstx	$vr1, $s5, $a1
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr11, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr11
	ldptr.d	$a0, $s5, 12664
	ori	$a1, $a6, 928
	vldx	$vr2, $s5, $a1
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	vstx	$vr1, $s5, $a3
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr8, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr8
	ldptr.d	$a0, $s5, 12688
	ori	$a3, $a6, 976
	vldx	$vr2, $s5, $a3
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	vstx	$vr1, $s5, $a1
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr12, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr12
	ldptr.d	$a0, $s5, 12696
	ori	$a1, $a6, 992
	vldx	$vr2, $s5, $a1
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	vstx	$vr1, $s5, $a3
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr10, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr10
	ldptr.d	$a0, $s5, 12720
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	vstx	$vr1, $s5, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_1)
	vinsgr2vr.d	$vr2, $a0, 0
	vilvl.h	$vr13, $vr0, $vr2
	vpackev.w	$vr2, $vr11, $vr9
	vpackev.d	$vr3, $vr12, $vr2
	vori.b	$vr4, $vr1, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI6_2)
	pcalau12i	$a0, %pc_hi20(.LCPI6_3)
	vld	$vr17, $a0, %pc_lo12(.LCPI6_3)
	vshuf.w	$vr4, $vr13, $vr3
	vst	$vr4, $sp, 544
	vpackod.w	$vr3, $vr11, $vr9
	vori.b	$vr4, $vr2, 0
	vshuf.w	$vr4, $vr12, $vr3
	vori.b	$vr3, $vr17, 0
	vshuf.w	$vr3, $vr13, $vr4
	vst	$vr3, $sp, 576
	pcalau12i	$a0, %pc_hi20(.LCPI6_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI6_4)
	vilvh.w	$vr4, $vr11, $vr9
	ori	$a1, $a6, 1040
	vldx	$vr5, $s5, $a1
	vshuf4i.d	$vr4, $vr12, 12
	vori.b	$vr6, $vr3, 0
	vshuf.w	$vr6, $vr13, $vr4
	vst	$vr6, $sp, 608
	vadd.w	$vr14, $vr5, $vr13
	pcalau12i	$a0, %pc_hi20(.LCPI6_5)
	vld	$vr4, $a0, %pc_lo12(.LCPI6_5)
	pcalau12i	$a0, %pc_hi20(.LCPI6_6)
	vld	$vr5, $a0, %pc_lo12(.LCPI6_6)
	pcalau12i	$a0, %pc_hi20(.LCPI6_7)
	vld	$vr6, $a0, %pc_lo12(.LCPI6_7)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	vstx	$vr14, $s5, $a1
	vori.b	$vr14, $vr4, 0
	vshuf.w	$vr14, $vr11, $vr9
	vori.b	$vr9, $vr5, 0
	ldptr.d	$a0, $s5, 12728
	vshuf.w	$vr9, $vr12, $vr14
	vori.b	$vr11, $vr6, 0
	vshuf.w	$vr11, $vr13, $vr9
	vst	$vr11, $sp, 640
	vinsgr2vr.d	$vr9, $a0, 0
	vilvl.h	$vr9, $vr0, $vr9
	vpackev.w	$vr11, $vr8, $vr7
	vpackev.d	$vr11, $vr10, $vr11
	vori.b	$vr12, $vr1, 0
	vshuf.w	$vr12, $vr9, $vr11
	vst	$vr12, $sp, 672
	vpackod.w	$vr11, $vr8, $vr7
	vori.b	$vr12, $vr2, 0
	vshuf.w	$vr12, $vr10, $vr11
	vori.b	$vr11, $vr17, 0
	vshuf.w	$vr11, $vr9, $vr12
	vst	$vr11, $sp, 704
	vilvh.w	$vr11, $vr8, $vr7
	ori	$s7, $a6, 1056
	vldx	$vr12, $s5, $s7
	vshuf4i.d	$vr11, $vr10, 12
	vori.b	$vr13, $vr3, 0
	vshuf.w	$vr13, $vr9, $vr11
	vst	$vr13, $sp, 736
	vadd.w	$vr11, $vr12, $vr9
	vstx	$vr11, $s5, $s7
	vori.b	$vr11, $vr4, 0
	vshuf.w	$vr11, $vr8, $vr7
	vori.b	$vr7, $vr5, 0
	vshuf.w	$vr7, $vr10, $vr11
	vori.b	$vr8, $vr6, 0
	vshuf.w	$vr8, $vr9, $vr7
	ldptr.d	$a0, $s5, 12752
	ori	$a1, $a6, 1104
	vldx	$vr7, $s5, $a1
	vst	$vr8, $sp, 768
	vinsgr2vr.d	$vr8, $a0, 0
	vilvl.h	$vr9, $vr0, $vr8
	vadd.w	$vr7, $vr7, $vr9
	ldptr.d	$a0, $s5, 12760
	ori	$a3, $a6, 1120
	vldx	$vr8, $s5, $a3
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	vstx	$vr7, $s5, $a1
	vinsgr2vr.d	$vr7, $a0, 0
	vilvl.h	$vr7, $vr0, $vr7
	vadd.w	$vr8, $vr8, $vr7
	ldptr.d	$a0, $s5, 12784
	ori	$a1, $a6, 1168
	vldx	$vr10, $s5, $a1
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	vstx	$vr8, $s5, $a3
	vinsgr2vr.d	$vr8, $a0, 0
	vilvl.h	$vr11, $vr0, $vr8
	vadd.w	$vr8, $vr10, $vr11
	ldptr.d	$a0, $s5, 12792
	ori	$a3, $a6, 1184
	vldx	$vr10, $s5, $a3
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	vstx	$vr8, $s5, $a1
	vinsgr2vr.d	$vr8, $a0, 0
	vilvl.h	$vr8, $vr0, $vr8
	vadd.w	$vr10, $vr10, $vr8
	ldptr.d	$a0, $s5, 12816
	ori	$a1, $a6, 1232
	vldx	$vr12, $s5, $a1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	vstx	$vr10, $s5, $a3
	vinsgr2vr.d	$vr10, $a0, 0
	vilvl.h	$vr10, $vr0, $vr10
	vadd.w	$vr12, $vr12, $vr10
	ldptr.d	$a0, $s5, 12824
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	vstx	$vr12, $s5, $a1
	ori	$a1, $a6, 1248
	vldx	$vr12, $s5, $a1
	vinsgr2vr.d	$vr13, $a0, 0
	ldptr.d	$a0, $s5, 12848
	vilvl.h	$vr13, $vr0, $vr13
	vadd.w	$vr12, $vr12, $vr13
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	vstx	$vr12, $s5, $a1
	vinsgr2vr.d	$vr12, $a0, 0
	vilvl.h	$vr12, $vr0, $vr12
	vpackev.w	$vr14, $vr11, $vr9
	vpackev.d	$vr14, $vr10, $vr14
	vori.b	$vr15, $vr1, 0
	vshuf.w	$vr15, $vr12, $vr14
	vst	$vr15, $sp, 560
	vpackod.w	$vr14, $vr11, $vr9
	vori.b	$vr15, $vr2, 0
	vshuf.w	$vr15, $vr10, $vr14
	vori.b	$vr14, $vr17, 0
	vshuf.w	$vr14, $vr12, $vr15
	vst	$vr14, $sp, 592
	vilvh.w	$vr14, $vr11, $vr9
	vshuf4i.d	$vr14, $vr10, 12
	vori.b	$vr15, $vr3, 0
	ori	$a0, $a6, 1296
	vldx	$vr16, $s5, $a0
	vshuf.w	$vr15, $vr12, $vr14
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	add.d	$a1, $s5, $a2
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	vst	$vr15, $sp, 624
	vadd.w	$vr14, $vr16, $vr12
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vstx	$vr14, $s5, $a0
	vori.b	$vr14, $vr4, 0
	vshuf.w	$vr14, $vr11, $vr9
	vori.b	$vr9, $vr5, 0
	ldptr.d	$a0, $s5, 12856
	vshuf.w	$vr9, $vr10, $vr14
	vori.b	$vr10, $vr6, 0
	vshuf.w	$vr10, $vr12, $vr9
	vst	$vr10, $sp, 656
	vinsgr2vr.d	$vr9, $a0, 0
	vilvl.h	$vr0, $vr0, $vr9
	vpackev.w	$vr9, $vr8, $vr7
	vpackev.d	$vr9, $vr13, $vr9
	vshuf.w	$vr1, $vr0, $vr9
	vst	$vr1, $sp, 688
	vpackod.w	$vr1, $vr8, $vr7
	vshuf.w	$vr2, $vr13, $vr1
	vst	$vr17, $sp, 112                 # 16-byte Folded Spill
	vori.b	$vr1, $vr17, 0
	vshuf.w	$vr1, $vr0, $vr2
	vst	$vr1, $sp, 720
	vilvh.w	$vr1, $vr8, $vr7
	ori	$a0, $a6, 1312
	vldx	$vr2, $s5, $a0
	vshuf4i.d	$vr1, $vr13, 12
	vshuf.w	$vr3, $vr0, $vr1
	vst	$vr3, $sp, 752
	vadd.w	$vr1, $vr2, $vr0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vstx	$vr1, $s5, $a0
	vshuf.w	$vr4, $vr8, $vr7
	vshuf.w	$vr5, $vr13, $vr4
	vshuf.w	$vr6, $vr0, $vr5
	vst	$vr6, $sp, 784
	ori	$a0, $a6, 852
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ori	$a0, $a6, 856
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $a6, 860
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 16
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ori	$a0, $a6, 868
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ori	$a1, $a6, 872
	ori	$a0, $a6, 876
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s5, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s5, $sp, 296                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_7:                                # %.preheader667
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	slli.d	$fp, $t6, 6
	addi.d	$s0, $fp, 192
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	add.d	$s4, $s8, $s0
	addi.d	$t8, $fp, 128
	add.d	$s6, $s8, $t8
	addi.d	$s1, $fp, 64
	add.d	$a1, $s8, $s1
	add.d	$t7, $s8, $fp
	ldx.w	$a0, $s8, $fp
	ld.w	$a2, $t7, 12
	ld.w	$a3, $t7, 4
	ld.w	$a4, $t7, 8
	add.d	$t6, $s5, $fp
	add.d	$a5, $a2, $a0
	sub.d	$a0, $a0, $a2
	add.d	$a2, $a4, $a3
	sub.d	$a3, $a3, $a4
	add.d	$a4, $a2, $a5
	stx.w	$a4, $s8, $fp
	sub.d	$a2, $a5, $a2
	stptr.w	$a2, $t6, 13144
	alsl.d	$a2, $a0, $a3, 1
	stptr.w	$a2, $t6, 13140
	slli.d	$a2, $a3, 1
	sub.d	$a0, $a0, $a2
	ldx.w	$a2, $s8, $s1
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a1, 4
	ld.w	$a5, $a1, 8
	stptr.w	$a0, $t6, 13148
	add.d	$a0, $a3, $a2
	sub.d	$a3, $a2, $a3
	add.d	$a6, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a2, $a6, $a0
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a6
	add.d	$a5, $s5, $s1
	stptr.w	$a0, $a5, 13144
	alsl.d	$a0, $a3, $a4, 1
	stptr.w	$a0, $a5, 13140
	slli.d	$a0, $a4, 1
	sub.d	$a0, $a3, $a0
	ldx.w	$a3, $s8, $t8
	ld.w	$a4, $s6, 12
	ld.w	$a6, $s6, 4
	ld.w	$a7, $s6, 8
	stptr.w	$a0, $a5, 13148
	add.d	$a0, $a4, $a3
	sub.d	$a4, $a3, $a4
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$s7, $a5, $a0
	sub.d	$a0, $a0, $a5
	add.d	$a5, $s5, $t8
	stptr.w	$a0, $a5, 13144
	alsl.d	$a0, $a4, $a6, 1
	stptr.w	$a0, $a5, 13140
	slli.d	$a0, $a6, 1
	ldx.w	$a6, $s8, $s0
	ld.w	$a7, $s4, 12
	ld.w	$t0, $s4, 4
	ld.w	$t1, $s4, 8
	sub.d	$a0, $a4, $a0
	stptr.w	$a0, $a5, 13148
	add.w	$a0, $a7, $a6
	add.w	$a4, $t1, $t0
	add.d	$s2, $a4, $a0
	ldx.w	$s3, $s8, $fp
	sub.d	$a4, $a0, $a4
	add.d	$a0, $s5, $s0
	stptr.w	$a4, $a0, 13144
	add.d	$a2, $s2, $s3
	st.d	$a2, $sp, 480                   # 8-byte Folded Spill
	sub.d	$ra, $a6, $a7
	sub.d	$a4, $t0, $t1
	alsl.d	$a5, $ra, $a4, 1
	ld.w	$a6, $t7, 16
	ld.w	$a7, $t7, 28
	ld.w	$t0, $t7, 20
	ld.w	$t1, $t7, 24
	stptr.w	$a5, $a0, 13140
	add.d	$a3, $a7, $a6
	st.d	$a3, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a0, $a6, $a7
	add.d	$a6, $t1, $t0
	st.d	$a6, $sp, 496                   # 8-byte Folded Spill
	sub.d	$a5, $t0, $t1
	sub.d	$a6, $a3, $a6
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	add.d	$a7, $s5, $fp
	stptr.w	$a6, $a7, 13144
	alsl.d	$a6, $a0, $a5, 1
	stptr.w	$a6, $a7, 13140
	slli.d	$a5, $a5, 1
	sub.d	$a0, $a0, $a5
	ld.w	$a5, $a1, 16
	ld.w	$a6, $a1, 28
	ld.w	$t0, $a1, 20
	ld.w	$t1, $a1, 24
	stptr.w	$a0, $a7, 13148
	add.d	$a3, $a6, $a5
	sub.d	$a0, $a5, $a6
	add.d	$a1, $t1, $t0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	sub.d	$a5, $t0, $t1
	sub.d	$a6, $a3, $a1
	add.d	$a7, $s5, $s1
	stptr.w	$a6, $a7, 13144
	alsl.d	$a6, $a0, $a5, 1
	stptr.w	$a6, $a7, 13140
	slli.d	$a5, $a5, 1
	sub.d	$a0, $a0, $a5
	ld.w	$a5, $s6, 16
	ld.w	$a6, $s6, 28
	ld.w	$t0, $s6, 20
	ld.w	$t1, $s6, 24
	stptr.w	$a0, $a7, 13148
	add.d	$t4, $a6, $a5
	sub.d	$a0, $a5, $a6
	add.d	$t5, $t1, $t0
	sub.d	$a5, $t0, $t1
	sub.d	$a6, $t4, $t5
	add.d	$a7, $s5, $t8
	stptr.w	$a6, $a7, 13144
	alsl.d	$a6, $a0, $a5, 1
	stptr.w	$a6, $a7, 13140
	slli.d	$a5, $a5, 1
	ld.w	$t0, $s4, 16
	ld.w	$t1, $s4, 28
	ld.w	$t2, $s4, 20
	ld.w	$t3, $s4, 24
	sub.d	$a0, $a0, $a5
	stptr.w	$a0, $a7, 13148
	add.w	$a6, $t1, $t0
	add.w	$a1, $t3, $t2
	sub.d	$a5, $a6, $a1
	add.d	$a7, $s5, $s0
	stptr.w	$a5, $a7, 13144
	ld.d	$s5, $sp, 504                   # 8-byte Folded Reload
	move	$s6, $s7
	add.d	$s4, $s7, $s5
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	sub.d	$a0, $t0, $t1
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a5, $t1, $fp
	sub.d	$s7, $t2, $t3
	alsl.d	$t0, $a0, $s7, 1
	stptr.w	$t0, $a7, 13140
	ldx.w	$a7, $t1, $s0
	ldx.w	$t0, $t1, $s1
	ldx.w	$t1, $t1, $t8
	add.d	$t2, $s4, $a2
	stx.w	$t2, $s8, $fp
	add.d	$a2, $a7, $a5
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	add.d	$t2, $t1, $t0
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	add.d	$t2, $t2, $a2
	st.w	$t2, $t7, 8
	sub.d	$a2, $s3, $s2
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ldx.w	$t2, $s2, $fp
	ldx.w	$t3, $s2, $s0
	ldx.w	$s3, $s2, $s1
	ldx.w	$s4, $s2, $t8
	sub.d	$s5, $s5, $s6
	st.d	$s5, $sp, 376                   # 8-byte Folded Spill
	add.d	$s2, $t3, $t2
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	sub.d	$t2, $t2, $t3
	st.d	$t2, $sp, 368                   # 8-byte Folded Spill
	add.d	$a0, $s4, $s3
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	sub.d	$t3, $s3, $s4
	st.d	$t3, $sp, 400                   # 8-byte Folded Spill
	sub.d	$a5, $a5, $a7
	st.d	$a5, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a7, $t0, $t1
	st.d	$a7, $sp, 504                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr0, $s5, 0
	vinsgr2vr.w	$vr0, $t3, 1
	vinsgr2vr.w	$vr0, $a7, 2
	vinsgr2vr.w	$vr0, $a4, 3
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $t2, 1
	vinsgr2vr.w	$vr1, $a5, 2
	vinsgr2vr.w	$vr1, $ra, 3
	vslli.w	$vr0, $vr0, 1
	vsub.w	$vr0, $vr1, $vr0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	vstx	$vr0, $t6, $a2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $fp
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	ldx.w	$ra, $a2, $s0
	ldx.w	$s8, $a2, $s1
	ldx.w	$s6, $a2, $t8
	add.d	$a2, $a0, $s2
	st.w	$a2, $t7, 4
	add.d	$s5, $ra, $a4
	add.d	$s4, $s6, $s8
	add.d	$a2, $s4, $s5
	st.w	$a2, $t7, 12
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	st.w	$a2, $t7, 16
	ld.w	$a2, $t7, 16
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	add.d	$t1, $a0, $a3
	add.d	$t2, $t5, $t4
	add.d	$a0, $a1, $a6
	add.d	$s3, $a0, $a2
	add.d	$s2, $t2, $t1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a7, $a1, $fp
	ldx.w	$a6, $a1, $s0
	ldx.w	$a5, $a1, $s1
	ldx.w	$a4, $a1, $t8
	add.d	$t0, $s2, $s3
	st.w	$t0, $t7, 16
	add.d	$t5, $a6, $a7
	add.d	$t4, $a4, $a5
	add.d	$t0, $t4, $t5
	st.w	$t0, $t7, 24
	sub.d	$t3, $a2, $a0
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ldx.w	$a0, $a3, $fp
	ldx.w	$a2, $a3, $s0
	ldx.w	$a1, $a3, $s1
	ldx.w	$a3, $a3, $t8
	sub.d	$t0, $t1, $t2
	add.d	$t1, $a2, $a0
	sub.d	$t2, $a0, $a2
	add.d	$a2, $a3, $a1
	sub.d	$a3, $a1, $a3
	sub.d	$a1, $a7, $a6
	sub.d	$a0, $a5, $a4
	vinsgr2vr.w	$vr0, $t0, 0
	vinsgr2vr.w	$vr0, $a3, 1
	vinsgr2vr.w	$vr0, $a0, 2
	vinsgr2vr.w	$vr0, $s7, 3
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	vinsgr2vr.w	$vr1, $t3, 0
	vinsgr2vr.w	$vr1, $t2, 1
	vinsgr2vr.w	$vr1, $a1, 2
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	vinsgr2vr.w	$vr1, $a4, 3
	vslli.w	$vr0, $vr0, 1
	vsub.w	$vr0, $vr1, $vr0
	vstx	$vr0, $t6, $s7
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a4, $a7, $fp
	ldx.w	$a5, $a7, $s0
	ldx.w	$a6, $a7, $s1
	ldx.w	$a7, $a7, $t8
	add.d	$t8, $a2, $t1
	st.w	$t8, $t7, 20
	add.d	$t8, $a5, $a4
	add.d	$fp, $a7, $a6
	add.d	$s0, $fp, $t8
	st.w	$s0, $t7, 28
	ld.d	$t7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	sub.d	$t7, $t7, $s0
	stptr.w	$t7, $t6, 13264
	ld.d	$t7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 416                   # 8-byte Folded Reload
	sub.d	$t7, $s0, $t7
	stptr.w	$t7, $t6, 13272
	ld.d	$t7, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$t7, $s0, $t7, 1
	stptr.w	$t7, $t6, 13200
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	sub.d	$t7, $s0, $t7
	stptr.w	$t7, $t6, 13268
	ld.d	$t7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t7, $s0, $t7, 1
	stptr.w	$t7, $t6, 13204
	ld.d	$t7, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t7, $s0, $t7, 1
	stptr.w	$t7, $t6, 13208
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	sub.d	$t7, $t7, $ra
	sub.d	$s0, $s8, $s6
	sub.d	$s1, $s5, $s4
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
	stptr.w	$s1, $t6, 13276
	alsl.d	$s1, $t7, $s0, 1
	stptr.w	$s1, $t6, 13212
	slli.d	$s0, $s0, 1
	sub.d	$t7, $t7, $s0
	stptr.w	$t7, $t6, 13340
	sub.d	$t7, $s3, $s2
	stptr.w	$t7, $t6, 13280
	sub.d	$t4, $t5, $t4
	stptr.w	$t4, $t6, 13288
	alsl.d	$t0, $t3, $t0, 1
	stptr.w	$t0, $t6, 13216
	sub.d	$a2, $t1, $a2
	stptr.w	$a2, $t6, 13284
	alsl.d	$a2, $t2, $a3, 1
	stptr.w	$a2, $t6, 13220
	alsl.d	$a0, $a1, $a0, 1
	stptr.w	$a0, $t6, 13224
	sub.d	$a0, $a4, $a5
	sub.d	$a1, $a6, $a7
	sub.d	$a2, $t8, $fp
	stptr.w	$a2, $t6, 13292
	alsl.d	$a2, $a0, $a1, 1
	stptr.w	$a2, $t6, 13228
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	stptr.w	$a0, $t6, 13356
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$t6, $zero, 4
	move	$a1, $zero
	bnez	$a0, .LBB6_7
# %bb.8:                                # %.preheader663.preheader
	move	$a2, $zero
	addi.d	$a5, $sp, 608
	addi.d	$a6, $sp, 576
	addi.d	$a7, $sp, 640
	addi.d	$t0, $sp, 672
	addi.d	$t1, $sp, 736
	addi.d	$t2, $sp, 704
	addi.d	$t3, $sp, 768
	addi.d	$t4, $sp, 544
	ori	$t5, $zero, 1
	addi.d	$t6, $sp, 544
	addi.d	$a0, $sp, 544
	addi.d	$s4, $sp, 560
	.p2align	4, , 16
.LBB6_9:                                # %.preheader663
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$t8, $a2, 2
	addi.d	$t7, $t8, 4
	add.d	$a1, $t4, $t7
	vld	$vr0, $t6, 0
	vld	$vr1, $t6, 32
	vld	$vr2, $t6, 64
	vld	$vr3, $t6, 96
	addi.d	$fp, $t8, 8
	add.d	$a3, $t4, $fp
	vsub.w	$vr4, $vr1, $vr2
	vsub.w	$vr5, $vr0, $vr3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr1, $vr0
	vstelm.w	$vr2, $a0, 0, 0
	vpickve2gr.w	$s1, $vr2, 1
	vstelm.w	$vr2, $a1, 0, 1
	vpickve2gr.w	$a1, $vr2, 2
	vstelm.w	$vr2, $a3, 0, 2
	vpickve2gr.w	$a3, $vr2, 3
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a5, $t8
	vslli.w	$vr0, $vr5, 1
	vadd.w	$vr0, $vr0, $vr4
	vstx	$vr0, $a6, $t8
	ld.w	$a0, $a0, 0
	vslli.w	$vr0, $vr4, 1
	vsub.w	$vr0, $vr5, $vr0
	vstx	$vr0, $a7, $t8
	add.d	$a4, $a3, $a0
	sub.d	$a0, $a0, $a3
	add.d	$s0, $a1, $s1
	sub.d	$a1, $s1, $a1
	sub.d	$a3, $a4, $s0
	st.w	$a3, $t6, 8
	alsl.d	$a3, $a0, $a1, 1
	st.w	$a3, $t6, 4
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $t6, 12
	ldx.w	$a0, $a6, $t8
	addi.d	$a1, $t8, 12
	ldx.w	$a3, $a6, $a1
	ldx.w	$s1, $a6, $t7
	ldx.w	$s2, $a6, $fp
	add.d	$s3, $a3, $a0
	sub.d	$a0, $a0, $a3
	add.d	$a3, $s2, $s1
	sub.d	$s1, $s1, $s2
	add.d	$s2, $a3, $s3
	st.w	$s2, $t6, 32
	sub.d	$a3, $s3, $a3
	st.w	$a3, $t6, 40
	alsl.d	$a3, $a0, $s1, 1
	st.w	$a3, $t6, 36
	slli.d	$a3, $s1, 1
	sub.d	$a0, $a0, $a3
	st.w	$a0, $t6, 44
	ldx.w	$a0, $a5, $t8
	ldx.w	$a3, $a5, $a1
	ldx.w	$s1, $a5, $t7
	ldx.w	$s2, $a5, $fp
	add.d	$s3, $a3, $a0
	sub.d	$a0, $a0, $a3
	add.d	$a3, $s2, $s1
	sub.d	$s1, $s1, $s2
	add.d	$s2, $a3, $s3
	st.w	$s2, $t6, 64
	sub.d	$a3, $s3, $a3
	st.w	$a3, $t6, 72
	alsl.d	$a3, $a0, $s1, 1
	st.w	$a3, $t6, 68
	slli.d	$a3, $s1, 1
	sub.d	$a0, $a0, $a3
	st.w	$a0, $t6, 76
	ldx.w	$a0, $a7, $t8
	ldx.w	$a3, $a7, $a1
	ldx.w	$s1, $a7, $t7
	ldx.w	$s2, $a7, $fp
	add.d	$s3, $a3, $a0
	sub.d	$a0, $a0, $a3
	add.d	$a3, $s2, $s1
	sub.d	$s1, $s1, $s2
	add.d	$s2, $a3, $s3
	st.w	$s2, $t6, 96
	sub.d	$a3, $s3, $a3
	st.w	$a3, $t6, 104
	alsl.d	$a3, $a0, $s1, 1
	st.w	$a3, $t6, 100
	slli.d	$a3, $s1, 1
	sub.d	$a0, $a0, $a3
	st.w	$a0, $t6, 108
	alsl.d	$a0, $a2, $t0, 2
	vld	$vr0, $t6, 128
	vld	$vr1, $t6, 160
	vld	$vr2, $t6, 192
	vld	$vr3, $t6, 224
	add.d	$a2, $t0, $t7
	add.d	$a3, $t0, $fp
	vsub.w	$vr4, $vr1, $vr2
	vsub.w	$vr5, $vr0, $vr3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr1, $vr0
	vpickve2gr.w	$s1, $vr2, 0
	vstelm.w	$vr2, $a0, 0, 0
	vpickve2gr.w	$a0, $vr2, 1
	vstelm.w	$vr2, $a2, 0, 1
	vpickve2gr.w	$a2, $vr2, 2
	vstelm.w	$vr2, $a3, 0, 2
	vpickve2gr.w	$a3, $vr2, 3
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $t1, $t8
	vslli.w	$vr0, $vr5, 1
	vadd.w	$vr0, $vr0, $vr4
	vstx	$vr0, $t2, $t8
	vslli.w	$vr0, $vr4, 1
	vsub.w	$vr0, $vr5, $vr0
	vstx	$vr0, $t3, $t8
	add.d	$s2, $a3, $s1
	sub.d	$a3, $s1, $a3
	add.d	$s1, $a2, $a0
	sub.d	$a0, $a0, $a2
	add.d	$a2, $s1, $s2
	st.w	$a2, $t6, 128
	sub.d	$a2, $s2, $s1
	st.w	$a2, $t6, 136
	alsl.d	$a2, $a3, $a0, 1
	st.w	$a2, $t6, 132
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a3, $a0
	st.w	$a0, $t6, 140
	ldx.w	$a0, $t2, $t8
	ldx.w	$a2, $t2, $a1
	ldx.w	$a3, $t2, $t7
	ldx.w	$s1, $t2, $fp
	add.d	$s2, $a2, $a0
	sub.d	$a0, $a0, $a2
	add.d	$a2, $s1, $a3
	sub.d	$a3, $a3, $s1
	add.d	$s1, $a2, $s2
	st.w	$s1, $t6, 160
	sub.d	$a2, $s2, $a2
	st.w	$a2, $t6, 168
	alsl.d	$a2, $a0, $a3, 1
	st.w	$a2, $t6, 164
	slli.d	$a2, $a3, 1
	sub.d	$a0, $a0, $a2
	st.w	$a0, $t6, 172
	ldx.w	$a0, $t1, $t8
	ldx.w	$a2, $t1, $a1
	ldx.w	$a3, $t1, $t7
	ldx.w	$s1, $t1, $fp
	add.d	$a4, $s0, $a4
	add.d	$s0, $a2, $a0
	sub.d	$a0, $a0, $a2
	add.d	$a2, $s1, $a3
	sub.d	$a3, $a3, $s1
	add.d	$s1, $a2, $s0
	st.w	$s1, $t6, 192
	sub.d	$a2, $s0, $a2
	st.w	$a2, $t6, 200
	alsl.d	$a2, $a0, $a3, 1
	st.w	$a2, $t6, 196
	slli.d	$a2, $a3, 1
	sub.d	$a0, $a0, $a2
	st.w	$a0, $t6, 204
	ldx.w	$a0, $t3, $t8
	ldx.w	$a1, $t3, $a1
	ldx.w	$a2, $t3, $t7
	ldx.w	$a3, $t3, $fp
	st.w	$a4, $t6, 0
	add.d	$a4, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	add.d	$a3, $a1, $a4
	st.w	$a3, $t6, 224
	sub.d	$a1, $a4, $a1
	st.w	$a1, $t6, 232
	alsl.d	$a1, $a0, $a2, 1
	st.w	$a1, $t6, 228
	slli.d	$a1, $a2, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $t6, 236
	andi	$a1, $t5, 1
	ori	$a2, $zero, 4
	move	$t6, $s4
	move	$a0, $s4
	move	$t5, $zero
	bnez	$a1, .LBB6_9
# %bb.10:
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	alsl.d	$a0, $a0, $a1, 1
	sub.w	$a0, $a2, $a0
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a1, $t1, 15
	ori	$a2, $zero, 1
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	sll.w	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$a3, $s5, $a3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a4, $s5, $a4
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a5, $s5, $a5
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a6, $s5, $a6
	add.w	$t7, $a1, $a2
	srai.d	$a1, $t7, 1
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	add.d	$a1, $a4, $a3
	add.d	$a2, $a6, $a5
	add.d	$a7, $a2, $a1
	st.w	$a7, $sp, 800
	add.d	$a7, $a3, $a5
	add.d	$t0, $a4, $a6
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 804
	sub.d	$a1, $a1, $a2
	st.w	$a1, $sp, 808
	add.d	$a1, $a4, $a5
	sub.d	$a1, $a3, $a1
	ld.w	$a2, $sp, 544
	ld.w	$a3, $sp, 672
	ld.w	$a4, $sp, 560
	ld.w	$a5, $sp, 688
	add.d	$a1, $a1, $a6
	st.w	$a1, $sp, 812
	add.d	$a1, $a3, $a2
	add.d	$a6, $a5, $a4
	add.d	$a7, $a6, $a1
	st.w	$a7, $sp, 528
	add.d	$a7, $a2, $a4
	add.d	$t0, $a3, $a5
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 532
	sub.d	$a1, $a1, $a6
	st.w	$a1, $sp, 536
	add.d	$a1, $a3, $a4
	sub.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a5
	st.w	$a1, $sp, 540
	slli.d	$a0, $a0, 6
	pcalau12i	$a1, %pc_hi20(quant_coef)
	addi.d	$a1, $a1, %pc_lo12(quant_coef)
	add.d	$a2, $a1, $a0
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	ldx.w	$t0, $a1, $a0
	bstrins.d	$t7, $zero, 0, 0
	addi.d	$t1, $t1, 16
	addi.d	$a6, $zero, -1
	sll.w	$t8, $a6, $t1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 6
	ldx.w	$s1, $a1, $a2
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	addi.d	$a1, $t2, 16
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(dequant_coef)
	addi.d	$a1, $a1, %pc_lo12(dequant_coef)
	add.d	$t3, $a1, $a2
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	lu12i.w	$a3, 240
	sll.w	$a2, $a3, $a2
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	add.d	$t4, $a1, $a0
	addi.d	$s2, $sp, 800
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	move	$s0, $zero
	move	$fp, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 496                 # 8-byte Folded Spill
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	st.d	$t3, $sp, 320                   # 8-byte Folded Spill
	st.d	$t4, $sp, 312                   # 8-byte Folded Spill
	st.d	$t7, $sp, 392                   # 8-byte Folded Spill
	st.d	$t0, $sp, 384                   # 8-byte Folded Spill
	st.d	$t1, $sp, 376                   # 8-byte Folded Spill
	st.d	$t8, $sp, 368                   # 8-byte Folded Spill
	st.d	$s1, $sp, 360                   # 8-byte Folded Spill
	b	.LBB6_12
	.p2align	4, , 16
.LBB6_11:                               #   in Loop: Header=BB6_12 Depth=1
	addi.d	$s3, $s3, 2
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	ori	$a0, $zero, 16
	beq	$s0, $a0, .LBB6_25
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	st.d	$s3, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 528
	ldx.w	$fp, $s0, $a0
	addi.w	$a6, $a6, 1
	srai.d	$a0, $fp, 31
	xor	$a1, $fp, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $t0
	add.w	$a0, $a0, $t7
	and	$a0, $a0, $t8
	div.w	$a0, $a0, $t0
	ldx.w	$s5, $s0, $s2
	slti	$a1, $fp, 0
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.d	$a0, $a0, $a2
	sub.d	$a2, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	add.w	$s8, $a0, $s5
	srai.d	$a0, $s8, 31
	xor	$a1, $s8, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	sub.w	$s7, $s5, $fp
	srai.d	$a1, $s7, 31
	xor	$a2, $s7, $a1
	sub.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a1, $a3
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	sra.w	$s3, $a1, $a2
	sra.w	$s2, $a0, $a2
	beqz	$s3, .LBB6_16
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=1
	beq	$s2, $s3, .LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_12 Depth=1
	beqz	$s2, .LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_12 Depth=1
	slti	$a0, $s8, 0
	srai.d	$a1, $s2, 31
	xor	$a2, $s2, $a1
	sub.w	$a2, $a2, $a1
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a2
	ld.w	$s4, $t3, 0
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	mul.d	$a0, $a0, $s4
	slli.d	$a0, $a0, 4
	sll.w	$a0, $a0, $t2
	srli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	sub.d	$a0, $s5, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 524
	addi.d	$a3, $sp, 520
	move	$a0, $s2
	move	$a1, $a6
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	move	$s1, $a6
	pcaddu18i	$ra, %call36(levrun_linfo_c2x2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 524
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	slti	$a0, $s7, 0
	srai.d	$a1, $s3, 31
	xor	$a2, $s3, $a1
	sub.w	$s6, $a2, $a1
	sub.d	$a1, $zero, $s6
	masknez	$a2, $s6, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	mul.d	$a0, $a0, $s4
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	sub.d	$a0, $s5, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 524
	addi.d	$a3, $sp, 520
	move	$a0, $s3
	move	$s5, $s1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(levrun_linfo_c2x2)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 524
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s6
	ld.d	$s1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
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
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_16:                               #   in Loop: Header=BB6_12 Depth=1
	move	$s5, $a6
	beq	$s2, $s3, .LBB6_18
# %bb.17:                               #   in Loop: Header=BB6_12 Depth=1
	sltui	$a0, $s2, 1
	masknez	$s2, $s3, $a0
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$s8, $a0, $a1
.LBB6_18:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 504                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_21
# %bb.19:                               #   in Loop: Header=BB6_12 Depth=1
	beqz	$s2, .LBB6_22
.LBB6_20:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$a0, $s6, 368
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	st.d	$a0, $s6, 368
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
	ld.d	$a6, $sp, 496                   # 8-byte Folded Reload
	slli.d	$a2, $a6, 2
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	stx.w	$a1, $a4, $a2
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	stx.w	$s5, $a4, $a2
	ld.w	$a2, $t3, 0
	maskeqz	$a0, $a5, $a0
	or	$a5, $a0, $a3
	addi.w	$a6, $a6, 1
	st.d	$a6, $sp, 496                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $a2
	slli.d	$a0, $a0, 4
	sll.w	$a0, $a0, $t2
	srai.d	$a0, $a0, 5
	addi.d	$a6, $zero, -1
	b	.LBB6_23
	.p2align	4, , 16
.LBB6_21:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$a0, $s4, 0
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
	bnez	$s2, .LBB6_20
.LBB6_22:                               #   in Loop: Header=BB6_12 Depth=1
	move	$a0, $zero
	move	$a6, $s5
.LBB6_23:                               #   in Loop: Header=BB6_12 Depth=1
	add.w	$a0, $a0, $fp
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a1, $t7
	sra.w	$a1, $a1, $t1
	slti	$a0, $a0, 0
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $t4, 0
	pcalau12i	$t5, %pc_hi20(si_frame_indicator)
	ld.w	$a2, $t5, %pc_lo12(si_frame_indicator)
	pcalau12i	$t6, %pc_hi20(sp2_frame_indicator)
	ld.w	$a3, $t6, %pc_lo12(sp2_frame_indicator)
	mul.d	$a1, $a0, $a1
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a4
	addi.d	$s2, $sp, 800
	stx.w	$a1, $s0, $s2
	or	$a1, $a2, $a3
	pcalau12i	$a2, %pc_hi20(lrec_uv)
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_11
# %bb.24:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lrec_uv)
	ld.w	$a3, $a1, 188
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a4
	andi	$a4, $fp, 4
	add.w	$a3, $a3, $a4
	ld.w	$a1, $a1, 184
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	andi	$a3, $s3, 4
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	b	.LBB6_11
.LBB6_25:
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	move	$t7, $zero
	move	$a0, $zero
	ld.w	$a2, $sp, 800
	ld.w	$a3, $sp, 804
	ld.w	$a4, $sp, 808
	ld.w	$a5, $sp, 812
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	stx.w	$zero, $a6, $a1
	add.d	$a6, $a3, $a2
	add.d	$a7, $a5, $a4
	add.d	$t0, $a7, $a6
	ld.d	$a1, $s4, 0
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
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	sll.w	$t8, $a2, $t0
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	st.d	$t6, $sp, 280                   # 8-byte Folded Spill
	st.d	$t8, $sp, 272                   # 8-byte Folded Spill
	b	.LBB6_27
	.p2align	4, , 16
.LBB6_26:                               #   in Loop: Header=BB6_27 Depth=1
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	andi	$a3, $a3, 1
	ori	$t7, $zero, 4
	move	$a4, $zero
	beqz	$a3, .LBB6_45
.LBB6_27:                               # %.preheader660
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
                                        #       Child Loop BB6_32 Depth 3
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	move	$s1, $zero
	srli.d	$a3, $t7, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	st.d	$t7, $sp, 344                   # 8-byte Folded Spill
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               #   in Loop: Header=BB6_29 Depth=2
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	stx.w	$zero, $a4, $a3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	andi	$a3, $a3, 1
	ori	$s1, $zero, 4
	move	$a4, $zero
	beqz	$a3, .LBB6_26
.LBB6_29:                               #   Parent Loop BB6_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_32 Depth 3
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	ldptr.d	$a2, $a1, 14160
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 32
	alsl.d	$a2, $s1, $a2, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	move	$s2, $zero
	st.d	$zero, $sp, 480                 # 8-byte Folded Spill
	srli.d	$a3, $s1, 2
	ld.d	$a4, $a2, 0
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	addi.d	$s7, $zero, -1
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_30:                               # %.thread610._crit_edge
                                        #   in Loop: Header=BB6_32 Depth=3
	ld.d	$a1, $s4, 0
.LBB6_31:                               #   in Loop: Header=BB6_32 Depth=3
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $s3
	add.d	$a3, $a3, $t1
	sra.w	$a3, $a3, $t0
	slti	$a2, $a2, 0
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	alsl.d	$a5, $fp, $t4, 4
	ldx.w	$a5, $a5, $s0
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	mul.d	$a2, $a5, $a2
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	sll.w	$a3, $a2, $a3
	add.d	$a2, $a1, $a7
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	add.d	$a4, $a2, $a4
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	slli.d	$a5, $a5, 2
	addi.d	$s2, $s2, 2
	stx.w	$a3, $a4, $a5
	ori	$a3, $zero, 30
	beq	$s2, $a3, .LBB6_28
.LBB6_32:                               #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $s6, 428
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN)
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.d	$s2, $sp, 496                   # 8-byte Folded Spill
	add.d	$a2, $a2, $s2
	ld.bu	$fp, $a2, 2
	ld.bu	$a6, $a2, 3
	addi.w	$s7, $s7, 1
	add.d	$a5, $s1, $fp
	slli.d	$a2, $a5, 5
	addi.d	$a3, $sp, 544
	add.d	$a2, $a3, $a2
	add.w	$a3, $t7, $a6
	slli.d	$a4, $a3, 2
	ldx.w	$s8, $a2, $a4
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 4
	st.d	$a6, $sp, 472                   # 8-byte Folded Spill
	slli.d	$a6, $a6, 2
	ldx.w	$s0, $a2, $a6
	srai.d	$a2, $s8, 31
	xor	$a4, $s8, $a2
	sub.d	$a2, $a4, $a2
	mul.d	$a2, $a2, $s0
	add.w	$a2, $a2, $t1
	and	$a2, $a2, $t8
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	div.w	$a2, $a2, $s0
	slli.d	$a3, $a3, 6
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a3
	st.d	$a5, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$a1, $a5, $a1, 2
	ldx.w	$a1, $a1, $a7
	slti	$a3, $s8, 0
	srai.d	$a4, $a2, 31
	xor	$a2, $a2, $a4
	sub.d	$a2, $a2, $a4
	sub.d	$a4, $zero, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	add.w	$s5, $a2, $a1
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 4
	move	$s0, $a6
	ldx.w	$a2, $a2, $a6
	srai.d	$a3, $s5, 31
	xor	$a4, $s5, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $a2
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a6
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	sra.w	$s3, $a3, $a5
	sub.w	$s1, $a1, $s8
	srai.d	$a3, $s1, 31
	xor	$a4, $s1, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a2, $a3, $a2
	add.d	$a2, $a2, $a6
	sra.w	$s2, $a2, $a5
	alsl.d	$a5, $fp, $t3, 4
	pcalau12i	$a2, %pc_hi20(A)
	addi.d	$a6, $a2, %pc_lo12(A)
	beqz	$s2, .LBB6_36
# %bb.33:                               #   in Loop: Header=BB6_32 Depth=3
	beq	$s3, $s2, .LBB6_36
# %bb.34:                               #   in Loop: Header=BB6_32 Depth=3
	beqz	$s3, .LBB6_36
# %bb.35:                               # %.thread614
                                        #   in Loop: Header=BB6_32 Depth=3
	slti	$a0, $s5, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.w	$a7, $a3, $a2
	st.d	$a7, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a7
	ldx.w	$a3, $a5, $s0
	alsl.d	$a4, $fp, $a6, 4
	ldx.w	$a4, $a4, $s0
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a7, $a0
	or	$a0, $a2, $a0
	mul.d	$s6, $a4, $a3
	mul.d	$a0, $s6, $a0
	sll.w	$a0, $a0, $t2
	srli.d	$a0, $a0, 6
	add.d	$a0, $s8, $a0
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 524
	addi.d	$a3, $sp, 520
	move	$a0, $s3
	move	$a1, $s7
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 524
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $s4, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	slti	$a1, $s1, 0
	srai.d	$a2, $s2, 31
	xor	$a3, $s2, $a2
	sub.w	$s4, $a3, $a2
	sub.d	$a2, $zero, $s4
	masknez	$a3, $s4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	mul.d	$a1, $s6, $a1
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s8
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 524
	addi.d	$a3, $sp, 520
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 524
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s4
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
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
	maskeqz	$a0, $s5, $a0
	or	$s1, $a0, $a1
	b	.LBB6_40
	.p2align	4, , 16
.LBB6_36:                               #   in Loop: Header=BB6_32 Depth=3
	bne	$s3, $s2, .LBB6_38
# %bb.37:                               #   in Loop: Header=BB6_32 Depth=3
	move	$s2, $s3
	move	$s1, $s5
	b	.LBB6_39
	.p2align	4, , 16
.LBB6_38:                               #   in Loop: Header=BB6_32 Depth=3
	beqz	$s3, .LBB6_41
.LBB6_39:                               #   in Loop: Header=BB6_32 Depth=3
	beqz	$s2, .LBB6_41
.LBB6_40:                               #   in Loop: Header=BB6_32 Depth=3
	ld.d	$a0, $s6, 368
	slti	$a1, $s1, 0
	srai.d	$a2, $s2, 31
	xor	$a3, $s2, $a2
	sub.d	$a2, $a3, $a2
	sub.d	$a3, $zero, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	or	$a0, $a0, $a3
	or	$a1, $a1, $a2
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	slli.d	$a2, $a4, 2
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	stx.w	$a1, $a3, $a2
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	stx.w	$s7, $a3, $a2
	ldx.w	$a2, $a5, $s0
	alsl.d	$a3, $fp, $a6, 4
	ldx.w	$a3, $a3, $s0
	st.d	$a0, $s6, 368
	addi.w	$a4, $a4, 1
	st.d	$a4, $sp, 480                   # 8-byte Folded Spill
	mul.d	$a0, $a2, $a1
	mul.d	$a0, $a0, $a3
	sll.w	$a0, $a0, $t2
	srai.d	$a1, $a0, 6
	addi.d	$s7, $zero, -1
	ori	$a0, $zero, 2
	b	.LBB6_42
	.p2align	4, , 16
.LBB6_41:                               #   in Loop: Header=BB6_32 Depth=3
	move	$a1, $zero
.LBB6_42:                               # %.thread610
                                        #   in Loop: Header=BB6_32 Depth=3
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	ld.w	$a2, $t5, %pc_lo12(si_frame_indicator)
	ld.w	$a3, $t6, %pc_lo12(sp2_frame_indicator)
	or	$a3, $a2, $a3
	add.w	$a2, $a1, $s8
	bnez	$a3, .LBB6_30
# %bb.43:                               #   in Loop: Header=BB6_32 Depth=3
	ld.d	$a1, $s4, 0
	ld.d	$s5, $sp, 472                   # 8-byte Folded Reload
	or	$a3, $s5, $fp
	andi	$a3, $a3, 3
	beqz	$a3, .LBB6_31
# %bb.44:                               #   in Loop: Header=BB6_32 Depth=3
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $s3
	add.d	$a3, $a3, $t1
	sra.w	$a3, $a3, $t0
	slti	$a4, $a2, 0
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	sub.d	$a5, $zero, $a3
	masknez	$a3, $a3, $a4
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(lrec_uv)
	maskeqz	$a4, $a5, $a4
	ld.w	$a5, $a1, 188
	or	$a3, $a4, $a3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a4, $a6, $a4
	add.d	$a6, $s1, $s5
	add.w	$a5, $a6, $a5
	ld.w	$a6, $a1, 184
	slli.d	$a5, $a5, 3
	ldx.d	$a4, $a4, $a5
	add.d	$a5, $t7, $fp
	add.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	stx.w	$a3, $a4, $a5
	b	.LBB6_31
.LBB6_45:                               # %.preheader659
	move	$t2, $zero
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a1, $a4
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	add.d	$a5, $a1, $a5
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	add.d	$a6, $a1, $a6
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	add.d	$a7, $a1, $a7
	pcalau12i	$t0, %pc_hi20(.LCPI6_8)
	vld	$vr0, $t0, %pc_lo12(.LCPI6_8)
	pcalau12i	$t0, %pc_hi20(.LCPI6_9)
	vld	$vr1, $t0, %pc_lo12(.LCPI6_9)
	pcalau12i	$t0, %pc_hi20(.LCPI6_10)
	vld	$vr2, $t0, %pc_lo12(.LCPI6_10)
	ori	$t1, $zero, 1
	lu12i.w	$t0, 3
	ori	$t0, $t0, 3236
	vrepli.w	$vr3, 32
	vld	$vr12, $sp, 112                 # 16-byte Folded Reload
	.p2align	4, , 16
.LBB6_46:                               # %.preheader658
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$t5, $t2, 6
	addi.d	$t3, $t5, 192
	add.d	$t6, $a2, $t3
	addi.d	$t2, $t5, 128
	add.d	$t7, $a2, $t2
	vldx	$vr4, $a2, $t5
	addi.d	$t4, $t5, 64
	add.d	$t8, $a2, $t4
	add.d	$fp, $a2, $t5
	vsrai.w	$vr5, $vr4, 1
	vori.b	$vr6, $vr0, 0
	vshuf.w	$vr6, $vr5, $vr4
	vadd.w	$vr5, $vr6, $vr4
	vsub.w	$vr4, $vr6, $vr4
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr4, $vr5
	vshuf4i.d	$vr5, $vr4, 12
	vldx	$vr7, $a2, $t4
	vadd.w	$vr8, $vr5, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vori.b	$vr4, $vr2, 0
	vshuf.w	$vr4, $vr5, $vr8
	vsrai.w	$vr5, $vr7, 1
	vori.b	$vr6, $vr0, 0
	vshuf.w	$vr6, $vr5, $vr7
	vadd.w	$vr5, $vr6, $vr7
	vsub.w	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr6, $vr5
	vshuf4i.d	$vr5, $vr6, 12
	vldx	$vr6, $a2, $t2
	vadd.w	$vr8, $vr5, $vr7
	vsub.w	$vr5, $vr5, $vr7
	vori.b	$vr7, $vr2, 0
	vshuf.w	$vr7, $vr5, $vr8
	vsrai.w	$vr5, $vr6, 1
	vori.b	$vr8, $vr0, 0
	vshuf.w	$vr8, $vr5, $vr6
	vadd.w	$vr5, $vr8, $vr6
	vsub.w	$vr6, $vr8, $vr6
	vori.b	$vr8, $vr1, 0
	vshuf.w	$vr8, $vr6, $vr5
	vshuf4i.d	$vr5, $vr6, 12
	vadd.w	$vr6, $vr5, $vr8
	vsub.w	$vr5, $vr5, $vr8
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr6
	ldx.w	$s0, $a2, $t3
	ld.w	$s1, $t6, 8
	vstx	$vr8, $a2, $t2
	ld.w	$s2, $t6, 4
	ld.w	$s3, $t6, 12
	add.d	$s4, $s1, $s0
	sub.d	$s0, $s0, $s1
	srli.d	$s1, $s2, 1
	sub.d	$s1, $s1, $s3
	srli.d	$s3, $s3, 1
	add.d	$s2, $s3, $s2
	add.d	$s3, $s1, $s0
	st.w	$s3, $t6, 4
	add.d	$s3, $s2, $s4
	sub.d	$s0, $s0, $s1
	st.w	$s0, $t6, 8
	ldx.d	$s0, $a3, $t3
	sub.d	$s1, $s4, $s2
	st.w	$s1, $t6, 12
	ldx.w	$s1, $a1, $t0
	vinsgr2vr.d	$vr5, $s0, 0
	ldx.w	$s0, $a3, $t3
	vadd.w	$vr6, $vr8, $vr4
	vshuf4i.w	$vr5, $vr5, 16
	ldx.d	$s2, $a4, $t3
	vinsgr2vr.w	$vr5, $s3, 0
	vadd.w	$vr6, $vr6, $vr3
	vreplgr2vr.w	$vr9, $s1
	vinsgr2vr.d	$vr10, $s2, 0
	vori.b	$vr11, $vr12, 0
	vshuf.w	$vr11, $vr10, $vr5
	vsrai.w	$vr5, $vr11, 1
	vadd.w	$vr5, $vr5, $vr7
	vsub.w	$vr4, $vr4, $vr8
	vsrai.w	$vr7, $vr7, 1
	vinsgr2vr.w	$vr8, $s3, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vpackev.d	$vr8, $vr10, $vr8
	vsub.w	$vr7, $vr7, $vr8
	vadd.w	$vr4, $vr4, $vr3
	vadd.w	$vr8, $vr6, $vr5
	vsrai.w	$vr8, $vr8, 6
	vmaxi.w	$vr8, $vr8, 0
	vmin.w	$vr8, $vr8, $vr9
	vstx	$vr8, $a2, $t5
	vsub.w	$vr5, $vr6, $vr5
	vsrai.w	$vr5, $vr5, 6
	vinsgr2vr.w	$vr6, $s1, 0
	vinsgr2vr.w	$vr6, $s1, 1
	vinsgr2vr.w	$vr6, $s1, 2
	vmaxi.w	$vr5, $vr5, 0
	vori.b	$vr8, $vr6, 0
	vinsgr2vr.w	$vr8, $s1, 3
	vmin.w	$vr5, $vr5, $vr8
	vstx	$vr5, $a2, $t3
	vadd.w	$vr5, $vr4, $vr7
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr8
	vstx	$vr5, $a2, $t4
	ldx.w	$s0, $a1, $t0
	vsub.w	$vr4, $vr4, $vr7
	vsrai.w	$vr4, $vr4, 6
	vmaxi.w	$vr4, $vr4, 0
	vld	$vr5, $fp, 16
	vinsgr2vr.w	$vr6, $s0, 3
	vmin.w	$vr4, $vr4, $vr6
	vstx	$vr4, $a2, $t2
	vsrai.w	$vr4, $vr5, 1
	vori.b	$vr6, $vr0, 0
	vshuf.w	$vr6, $vr4, $vr5
	vadd.w	$vr4, $vr6, $vr5
	vsub.w	$vr5, $vr6, $vr5
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr4
	vshuf4i.d	$vr4, $vr5, 12
	vadd.w	$vr5, $vr4, $vr6
	vld	$vr7, $t8, 16
	vsub.w	$vr4, $vr4, $vr6
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr4, $vr5
	vst	$vr6, $fp, 16
	vsrai.w	$vr4, $vr7, 1
	vori.b	$vr5, $vr0, 0
	vshuf.w	$vr5, $vr4, $vr7
	vadd.w	$vr4, $vr5, $vr7
	vsub.w	$vr5, $vr5, $vr7
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr4
	vshuf4i.d	$vr4, $vr5, 12
	vadd.w	$vr5, $vr4, $vr6
	vld	$vr7, $t7, 16
	vsub.w	$vr4, $vr4, $vr6
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr4, $vr5
	vst	$vr6, $t8, 16
	vsrai.w	$vr4, $vr7, 1
	vori.b	$vr5, $vr0, 0
	vshuf.w	$vr5, $vr4, $vr7
	vadd.w	$vr4, $vr5, $vr7
	vsub.w	$vr5, $vr5, $vr7
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr4
	vshuf4i.d	$vr4, $vr5, 12
	vadd.w	$vr5, $vr4, $vr6
	vsub.w	$vr4, $vr4, $vr6
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr4, $vr5
	ld.w	$t8, $t6, 16
	ld.w	$fp, $t6, 24
	vst	$vr6, $t7, 16
	ld.w	$t7, $t6, 20
	ld.w	$s0, $t6, 28
	add.d	$s1, $fp, $t8
	sub.d	$t8, $t8, $fp
	srli.d	$fp, $t7, 1
	sub.d	$fp, $fp, $s0
	srli.d	$s0, $s0, 1
	add.d	$t7, $s0, $t7
	add.d	$s0, $t7, $s1
	sub.d	$t7, $s1, $t7
	st.w	$t7, $t6, 28
	add.d	$t7, $fp, $t8
	st.w	$t7, $t6, 20
	sub.d	$t7, $t8, $fp
	st.w	$t7, $t6, 24
	ldx.w	$t6, $a1, $t0
	ldx.d	$t7, $a6, $t3
	vldx	$vr4, $a5, $t5
	vldx	$vr5, $a5, $t2
	vldx	$vr6, $a5, $t4
	vinsgr2vr.d	$vr7, $t7, 0
	ldx.w	$t7, $a6, $t3
	vadd.w	$vr8, $vr5, $vr4
	vshuf4i.w	$vr7, $vr7, 16
	ldx.d	$t8, $a7, $t3
	vinsgr2vr.w	$vr7, $s0, 0
	vadd.w	$vr8, $vr8, $vr3
	vreplgr2vr.w	$vr9, $t6
	vinsgr2vr.d	$vr10, $t8, 0
	vori.b	$vr11, $vr12, 0
	vshuf.w	$vr11, $vr10, $vr7
	vsrai.w	$vr7, $vr11, 1
	vadd.w	$vr7, $vr7, $vr6
	vsub.w	$vr4, $vr4, $vr5
	vsrai.w	$vr5, $vr6, 1
	vinsgr2vr.w	$vr6, $s0, 0
	vinsgr2vr.w	$vr6, $t7, 1
	vpackev.d	$vr6, $vr10, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vadd.w	$vr4, $vr4, $vr3
	vadd.w	$vr6, $vr8, $vr7
	vsrai.w	$vr6, $vr6, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr9
	vstx	$vr6, $a5, $t5
	vsub.w	$vr6, $vr8, $vr7
	vsrai.w	$vr6, $vr6, 6
	vinsgr2vr.w	$vr7, $t6, 0
	vinsgr2vr.w	$vr7, $t6, 1
	vinsgr2vr.w	$vr7, $t6, 2
	vmaxi.w	$vr6, $vr6, 0
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.w	$vr8, $t6, 3
	vmin.w	$vr6, $vr6, $vr8
	vstx	$vr6, $a5, $t3
	vadd.w	$vr6, $vr4, $vr5
	vsrai.w	$vr6, $vr6, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr8
	vstx	$vr6, $a5, $t4
	ldx.w	$t3, $a1, $t0
	vsub.w	$vr4, $vr4, $vr5
	vsrai.w	$vr4, $vr4, 6
	vmaxi.w	$vr4, $vr4, 0
	vinsgr2vr.w	$vr7, $t3, 3
	vmin.w	$vr4, $vr4, $vr7
	vstx	$vr4, $a5, $t2
	andi	$t3, $t1, 1
	ori	$t2, $zero, 4
	move	$t1, $zero
	bnez	$t3, .LBB6_46
# %bb.47:                               # %.preheader653
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 6472
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $a2, 188
	ld.w	$a4, $a2, 184
	alsl.d	$a5, $a3, $a1, 3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	slli.d	$a1, $a4, 1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	vldx	$vr0, $a2, $a4
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	vldx	$vr1, $a2, $a4
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	vldx	$vr2, $a2, $a4
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	vldx	$vr3, $a2, $a4
	ld.d	$a4, $a5, 8
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a1
	vpickev.h	$vr0, $vr3, $vr2
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a5, 16
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	vldx	$vr0, $a2, $a4
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	vldx	$vr1, $a2, $a4
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	vldx	$vr2, $a2, $a4
	vldx	$vr3, $a2, $ra
	ld.d	$a4, $a5, 24
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a1
	vpickev.h	$vr0, $vr3, $vr2
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a5, 32
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	vldx	$vr0, $a2, $a4
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	vldx	$vr1, $a2, $a4
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	vldx	$vr2, $a2, $a4
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	vldx	$vr3, $a2, $a4
	ld.d	$a4, $a5, 40
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a1
	vpickev.h	$vr0, $vr3, $vr2
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	vldx	$vr0, $a2, $a3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	vldx	$vr1, $a2, $a3
	ld.d	$a3, $a5, 48
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	vldx	$vr2, $a2, $a4
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	vldx	$vr3, $a2, $a4
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a1
	ld.d	$a2, $a5, 56
	vpickev.h	$vr0, $vr3, $vr2
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 2
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	vstx	$vr0, $a2, $a1
	fld.d	$fs2, $sp, 816                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 824                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 832                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 912                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 920                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 928
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
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 12
	ldptr.d	$a4, $a2, 14224
	ori	$a5, $zero, 536
	mul.d	$a3, $a3, $a5
	add.d	$a3, $a4, $a3
	ld.w	$a5, $a3, 20
	slli.d	$a3, $a1, 5
	add.d	$a4, $a2, $a3
	lu12i.w	$a3, 3
	ori	$a6, $a3, 336
	add.d	$a6, $a4, $a6
	slli.d	$a7, $a0, 1
	ldx.hu	$t0, $a6, $a7
	addi.d	$t1, $a7, 2
	ldx.hu	$t2, $a6, $t1
	addi.d	$t3, $a7, 4
	ldx.hu	$t4, $a6, $t3
	addi.d	$t5, $a7, 6
	ldx.hu	$a6, $a6, $t5
	ori	$t6, $a3, 368
	add.d	$t6, $a4, $t6
	ldx.hu	$t7, $t6, $a7
	ldx.hu	$t8, $t6, $t1
	ldx.hu	$fp, $t6, $t3
	ldx.hu	$t6, $t6, $t5
	ori	$s0, $a3, 400
	add.d	$s0, $a4, $s0
	ldx.hu	$s1, $s0, $a7
	ldx.hu	$s2, $s0, $t1
	ldx.hu	$s3, $s0, $t3
	ldx.hu	$s0, $s0, $t5
	ori	$s4, $a3, 432
	add.d	$a4, $a4, $s4
	ldx.hu	$s4, $a4, $a7
	ldx.hu	$t1, $a4, $t1
	ldx.hu	$t3, $a4, $t3
	ldx.hu	$t5, $a4, $t5
	add.d	$a4, $a6, $t0
	sub.d	$a6, $t0, $a6
	add.d	$a7, $t4, $t2
	sub.d	$t0, $t2, $t4
	add.d	$t2, $a7, $a4
	sub.d	$a7, $a4, $a7
	alsl.d	$t4, $a6, $t0, 1
	slli.d	$a4, $t0, 1
	sub.d	$a4, $a6, $a4
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
	st.w	$s2, $sp, 16
	sub.d	$t3, $t5, $t3
	st.w	$t3, $sp, 24
	alsl.d	$t3, $t2, $t8, 1
	st.w	$t3, $sp, 20
	slli.d	$t3, $t8, 1
	sub.d	$t2, $t2, $t3
	st.w	$t2, $sp, 28
	add.d	$t2, $s3, $t4
	sub.d	$t3, $t4, $s3
	add.d	$t4, $s0, $fp
	sub.d	$t5, $fp, $s0
	add.d	$t8, $t4, $t2
	st.w	$t8, $sp, 32
	sub.d	$t2, $t2, $t4
	st.w	$t2, $sp, 40
	alsl.d	$t2, $t3, $t5, 1
	st.w	$t2, $sp, 36
	slli.d	$t2, $t5, 1
	sub.d	$t2, $t3, $t2
	st.w	$t2, $sp, 44
	add.d	$t2, $s1, $a7
	sub.d	$a7, $a7, $s1
	add.d	$t3, $t0, $t6
	sub.d	$t0, $t6, $t0
	add.d	$t4, $t3, $t2
	st.w	$t4, $sp, 48
	sub.d	$t2, $t2, $t3
	st.w	$t2, $sp, 56
	alsl.d	$t2, $a7, $t0, 1
	st.w	$t2, $sp, 52
	slli.d	$t0, $t0, 1
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 60
	add.d	$a7, $t1, $a4
	sub.d	$a4, $a4, $t1
	add.d	$t0, $t7, $a6
	sub.d	$a6, $a6, $t7
	add.d	$t1, $t0, $a7
	st.w	$t1, $sp, 64
	sub.d	$a7, $a7, $t0
	st.w	$a7, $sp, 72
	alsl.d	$a7, $a4, $a6, 1
	st.w	$a7, $sp, 68
	slli.d	$a6, $a6, 1
	sub.d	$a4, $a4, $a6
	st.w	$a4, $sp, 76
	lu12i.w	$a4, 174762
	ori	$a4, $a4, 2731
	mul.d	$a4, $a5, $a4
	srli.d	$a6, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a6
	slli.d	$a6, $a4, 2
	alsl.d	$a6, $a4, $a6, 1
	sub.w	$t3, $a5, $a6
	addi.d	$a5, $a4, 15
	ori	$a6, $zero, 1
	sll.w	$a6, $a6, $a5
	bstrpick.d	$a7, $a6, 31, 31
	add.w	$a6, $a6, $a7
	srai.d	$a6, $a6, 1
	addi.d	$a7, $a0, 1
	addi.d	$t0, $a0, 2
	addi.d	$t1, $a0, 3
	ori	$t2, $a3, 860
	add.d	$t2, $a2, $t2
	slli.d	$t5, $t3, 6
	pcalau12i	$t3, %pc_hi20(dequant_coef)
	addi.d	$t3, $t3, %pc_lo12(dequant_coef)
	add.d	$t3, $t5, $t3
	addi.d	$t3, $t3, 48
	pcalau12i	$t4, %pc_hi20(quant_coef)
	addi.d	$t6, $t4, %pc_lo12(quant_coef)
	move	$t4, $zero
	add.d	$t5, $t5, $t6
	addi.d	$t5, $t5, 16
	addi.d	$t6, $sp, 16
	ori	$t7, $zero, 16
	move	$t8, $a1
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                #   in Loop: Header=BB7_2 Depth=1
	addi.d	$t4, $t4, 4
	addi.d	$t8, $t8, 1
	addi.d	$t2, $t2, 64
	beq	$t4, $t7, .LBB7_10
.LBB7_2:                                # %.preheader143
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s0, $t5, $t4
	add.d	$s3, $t3, $t4
	ldx.w	$s1, $t4, $t6
	pcalau12i	$fp, %pc_hi20(lrec)
	ld.d	$fp, $fp, %pc_lo12(lrec)
	ld.w	$s2, $s0, -16
	srai.d	$s4, $s1, 31
	xor	$s5, $s1, $s4
	sub.d	$s4, $s5, $s4
	mul.d	$s2, $s4, $s2
	add.d	$s2, $s2, $a6
	sra.w	$s2, $s2, $a5
	slti	$s1, $s1, 0
	srai.d	$s4, $s2, 31
	xor	$s2, $s2, $s4
	sub.d	$s2, $s2, $s4
	sub.d	$s4, $zero, $s2
	ld.w	$s5, $s3, -48
	masknez	$s2, $s2, $s1
	maskeqz	$s1, $s4, $s1
	or	$s4, $s1, $s2
	mul.d	$s1, $s4, $s5
	sll.w	$s1, $s1, $a4
	st.w	$s1, $t2, -12
	pcalau12i	$s1, %pc_hi20(si_frame_indicator)
	ld.w	$s5, $s1, %pc_lo12(si_frame_indicator)
	pcalau12i	$s2, %pc_hi20(sp2_frame_indicator)
	ld.w	$s6, $s2, %pc_lo12(sp2_frame_indicator)
	or	$s5, $s5, $s6
	bnez	$s5, .LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s5, $a2, 180
	add.w	$s5, $t8, $s5
	ld.w	$s6, $a2, 176
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $fp, $s5
	add.w	$s6, $a0, $s6
	slli.d	$s6, $s6, 2
	stx.w	$s4, $s5, $s6
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	add.d	$s4, $t6, $t4
	ld.w	$s5, $s4, 16
	ldx.w	$s6, $t5, $t4
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $a6
	sra.w	$s6, $s6, $a5
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $s3, -32
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	mul.d	$s6, $s5, $s8
	sll.w	$s6, $s6, $a4
	st.w	$s6, $t2, -8
	ld.w	$s6, $s1, %pc_lo12(si_frame_indicator)
	ld.w	$s7, $s2, %pc_lo12(sp2_frame_indicator)
	or	$s6, $s6, $s7
	bnez	$s6, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s6, $a2, 180
	add.w	$s6, $t8, $s6
	ld.w	$s7, $a2, 176
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $fp, $s6
	add.w	$s7, $a7, $s7
	slli.d	$s7, $s7, 2
	stx.w	$s5, $s6, $s7
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s5, $s4, 32
	ld.w	$s6, $s0, 16
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $a6
	sra.w	$s6, $s6, $a5
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $s3, -16
	masknez	$s3, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s3, $s5, $s3
	mul.d	$s5, $s3, $s8
	sll.w	$s5, $s5, $a4
	st.w	$s5, $t2, -4
	ld.w	$s5, $s1, %pc_lo12(si_frame_indicator)
	ld.w	$s6, $s2, %pc_lo12(sp2_frame_indicator)
	or	$s5, $s5, $s6
	bnez	$s5, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s5, $a2, 180
	add.w	$s5, $t8, $s5
	ld.w	$s6, $a2, 176
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $fp, $s5
	add.w	$s6, $t0, $s6
	slli.d	$s6, $s6, 2
	stx.w	$s3, $s5, $s6
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s3, $s4, 48
	ld.w	$s0, $s0, 32
	srai.d	$s4, $s3, 31
	xor	$s5, $s3, $s4
	sub.d	$s4, $s5, $s4
	mul.d	$s0, $s4, $s0
	add.d	$s0, $s0, $a6
	sra.w	$s0, $s0, $a5
	slti	$s3, $s3, 0
	srai.d	$s4, $s0, 31
	xor	$s0, $s0, $s4
	sub.d	$s0, $s0, $s4
	sub.d	$s4, $zero, $s0
	ldx.w	$s5, $t3, $t4
	masknez	$s0, $s0, $s3
	maskeqz	$s3, $s4, $s3
	or	$s0, $s3, $s0
	mul.d	$s3, $s0, $s5
	sll.w	$s3, $s3, $a4
	st.w	$s3, $t2, 0
	ld.w	$s1, $s1, %pc_lo12(si_frame_indicator)
	ld.w	$s2, $s2, %pc_lo12(sp2_frame_indicator)
	or	$s1, $s1, $s2
	bnez	$s1, .LBB7_1
# %bb.9:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s1, $a2, 180
	add.w	$s1, $t8, $s1
	ld.w	$s2, $a2, 176
	slli.d	$s1, $s1, 3
	ldx.d	$fp, $fp, $s1
	add.w	$s1, $t1, $s2
	slli.d	$s1, $s1, 2
	stx.w	$s0, $fp, $s1
	b	.LBB7_1
.LBB7_10:                               # %.preheader142
	ori	$a4, $a3, 848
	ldx.w	$a5, $a2, $a4
	ori	$a6, $a3, 856
	ldx.w	$a6, $a2, $a6
	ldptr.w	$a7, $a2, 13140
	ldptr.w	$t0, $a2, 13148
	add.d	$t2, $a6, $a5
	sub.d	$a5, $a5, $a6
	srli.d	$a6, $a7, 1
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $t0, 1
	add.d	$a7, $t0, $a7
	add.d	$t1, $a7, $t2
	sub.d	$a7, $t2, $a7
	stptr.w	$a7, $a2, 13148
	add.d	$t2, $a6, $a5
	sub.d	$a6, $a5, $a6
	ori	$a5, $a3, 912
	ldx.w	$a7, $a2, $a5
	ori	$t0, $a3, 920
	ldx.w	$t0, $a2, $t0
	stptr.w	$a6, $a2, 13144
	ldptr.w	$a6, $a2, 13204
	ldptr.w	$t3, $a2, 13212
	add.d	$t4, $t0, $a7
	sub.d	$a7, $a7, $t0
	srli.d	$t0, $a6, 1
	sub.d	$t0, $t0, $t3
	srli.d	$t3, $t3, 1
	add.d	$a6, $t3, $a6
	add.d	$t3, $a6, $t4
	sub.d	$a6, $t4, $a6
	stptr.w	$a6, $a2, 13212
	add.d	$t4, $t0, $a7
	sub.d	$a7, $a7, $t0
	ori	$a6, $a3, 976
	ldx.w	$t0, $a2, $a6
	ori	$t5, $a3, 984
	ldx.w	$t5, $a2, $t5
	stptr.w	$a7, $a2, 13208
	ldptr.w	$a7, $a2, 13268
	ldptr.w	$t6, $a2, 13276
	add.d	$t7, $t5, $t0
	sub.d	$t5, $t0, $t5
	srli.d	$t0, $a7, 1
	sub.d	$t8, $t0, $t6
	srli.d	$t0, $t6, 1
	add.d	$a7, $t0, $a7
	add.d	$t6, $a7, $t7
	sub.d	$t7, $t7, $a7
	stptr.w	$t7, $a2, 13276
	add.d	$fp, $t8, $t5
	ori	$t0, $a3, 1040
	ldx.w	$s0, $a2, $t0
	ori	$a7, $a3, 1048
	ldx.w	$s1, $a2, $a7
	sub.d	$t5, $t5, $t8
	ldptr.w	$t8, $a2, 13332
	ldptr.w	$s2, $a2, 13340
	add.d	$s3, $s1, $s0
	sub.d	$s0, $s0, $s1
	srli.d	$s1, $t8, 1
	sub.d	$s1, $s1, $s2
	srli.d	$s2, $s2, 1
	add.d	$t8, $s2, $t8
	add.d	$s2, $t8, $s3
	sub.d	$t8, $s3, $t8
	stptr.w	$t8, $a2, 13340
	add.d	$s3, $s1, $s0
	sub.d	$s0, $s0, $s1
	ori	$s1, $a3, 3232
	ldx.w	$s1, $a2, $s1
	ldptr.d	$s4, $a2, 13144
	vinsgr2vr.w	$vr2, $t6, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $t5, 2
	vinsgr2vr.w	$vr2, $t7, 3
	vreplgr2vr.d	$vr0, $s4
	vinsgr2vr.w	$vr0, $t1, 0
	vinsgr2vr.w	$vr0, $t2, 1
	vadd.w	$vr0, $vr2, $vr0
	vinsgr2vr.w	$vr3, $s2, 0
	vinsgr2vr.w	$vr3, $s3, 1
	ldptr.d	$t5, $a2, 13208
	vinsgr2vr.w	$vr3, $s0, 2
	vinsgr2vr.w	$vr3, $t8, 3
	vsrai.w	$vr1, $vr3, 1
	vinsgr2vr.d	$vr4, $t5, 0
	vreplvei.d	$vr5, $vr4, 0
	vinsgr2vr.w	$vr5, $t3, 0
	vinsgr2vr.w	$vr5, $t4, 1
	vadd.w	$vr5, $vr1, $vr5
	vrepli.w	$vr6, 32
	vadd.w	$vr0, $vr0, $vr6
	vadd.w	$vr1, $vr0, $vr5
	vsrai.w	$vr1, $vr1, 6
	vmaxi.w	$vr1, $vr1, 0
	vreplgr2vr.w	$vr7, $s1
	vmin.w	$vr1, $vr1, $vr7
	vsub.w	$vr0, $vr0, $vr5
	vsrai.w	$vr0, $vr0, 6
	ldptr.d	$t5, $a2, 13144
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr7
	vstx	$vr0, $a2, $t0
	vinsgr2vr.d	$vr5, $t5, 0
	vinsgr2vr.w	$vr8, $t1, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vpackev.d	$vr5, $vr5, $vr8
	vsub.w	$vr2, $vr5, $vr2
	vinsgr2vr.w	$vr5, $t3, 0
	vinsgr2vr.w	$vr5, $t4, 1
	vpackev.d	$vr4, $vr4, $vr5
	vsrai.w	$vr4, $vr4, 1
	vsub.w	$vr3, $vr4, $vr3
	vadd.w	$vr2, $vr2, $vr6
	vstx	$vr1, $a2, $a4
	vadd.w	$vr4, $vr2, $vr3
	vsrai.w	$vr4, $vr4, 6
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr7
	vstx	$vr4, $a2, $a5
	vsub.w	$vr2, $vr2, $vr3
	vsrai.w	$vr2, $vr2, 6
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr7
	vstx	$vr2, $a2, $a6
	pcalau12i	$t1, %got_pc_hi20(enc_picture)
	ld.d	$t1, $t1, %got_pc_lo12(enc_picture)
	ld.d	$t1, $t1, 0
	ld.w	$t2, $a2, 180
	ld.w	$t3, $a2, 176
	ldptr.d	$t1, $t1, 6440
	add.w	$a1, $a1, $t2
	add.w	$a0, $a0, $t3
	slli.d	$t2, $a1, 3
	ldx.d	$t2, $t1, $t2
	ldx.h	$a4, $a2, $a4
	slli.d	$t3, $a0, 1
	ori	$t4, $a3, 852
	ldx.h	$t4, $a2, $t4
	stx.h	$a4, $t2, $t3
	addi.w	$a4, $a0, 1
	slli.d	$a4, $a4, 1
	stx.h	$t4, $t2, $a4
	addi.w	$t4, $a0, 2
	alsl.d	$t5, $t4, $t2, 1
	vstelm.h	$vr1, $t5, 0, 4
	addi.w	$a0, $a0, 3
	alsl.d	$t2, $a0, $t2, 1
	addi.w	$t5, $a1, 1
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $t1, $t5
	ldx.h	$a5, $a2, $a5
	ori	$t6, $a3, 916
	ldx.h	$t6, $a2, $t6
	vstelm.h	$vr1, $t2, 0, 6
	slli.d	$t2, $t4, 1
	stx.h	$a5, $t5, $t3
	stx.h	$t6, $t5, $a4
	alsl.d	$a5, $t4, $t5, 1
	vstelm.h	$vr4, $a5, 0, 4
	addi.w	$a5, $a1, 2
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $t1, $a5
	ldx.h	$a6, $a2, $a6
	ori	$t6, $a3, 980
	ldx.h	$t6, $a2, $t6
	alsl.d	$t5, $a0, $t5, 1
	vstelm.h	$vr4, $t5, 0, 6
	stx.h	$a6, $a5, $t3
	stx.h	$t6, $a5, $a4
	alsl.d	$a6, $t4, $a5, 1
	vstelm.h	$vr2, $a6, 0, 4
	alsl.d	$a5, $a0, $a5, 1
	addi.w	$a1, $a1, 3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $t1, $a1
	ldx.h	$a6, $a2, $t0
	ori	$a3, $a3, 1044
	ldx.h	$a3, $a2, $a3
	ldx.h	$a2, $a2, $a7
	vstelm.h	$vr2, $a5, 0, 6
	stx.h	$a6, $a1, $t3
	stx.h	$a3, $a1, $a4
	stx.h	$a2, $a1, $t2
	alsl.d	$a0, $a0, $a1, 1
	vstelm.h	$vr0, $a0, 0, 6
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
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
	ori	$s4, $zero, 16
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	lu12i.w	$s3, 3
	ori	$s5, $s3, 3156
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s2, $a0, %got_pc_lo12(enc_picture)
	move	$s6, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a0, 180
	ldptr.d	$a1, $a1, 6440
	add.d	$a2, $s6, $a2
	slli.d	$s7, $a2, 3
	ld.w	$a2, $a0, 176
	ldx.d	$a1, $a1, $s7
	ldx.w	$a0, $a0, $s5
	slli.d	$a2, $a2, 1
	ldx.hu	$a1, $a1, $a2
	st.w	$a0, $sp, 28
	add.d	$s0, $a0, $s0
	st.w	$a1, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 2
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 4
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 6
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 8
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 10
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 12
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 14
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 16
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 18
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 20
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 22
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 24
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 26
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 28
	st.w	$a1, $sp, 28
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s5
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 30
	st.w	$a1, $sp, 28
	add.w	$s0, $a1, $s0
	st.w	$a0, $sp, 36
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	addi.d	$s6, $s6, 1
	bnez	$s4, .LBB8_1
# %bb.2:                                # %.preheader26
	ld.d	$a0, $s1, 0
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB8_16
# %bb.3:                                # %.lr.ph35
	ldptr.w	$a1, $a0, 15544
	blez	$a1, .LBB8_10
# %bb.4:                                # %.lr.ph35.split.preheader
	move	$s4, $zero
	ori	$s5, $s3, 3160
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_5:                                # %._crit_edge
                                        #   in Loop: Header=BB8_6 Depth=1
	ldptr.w	$a1, $a0, 15548
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB8_9
.LBB8_6:                                # %.lr.ph35.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
	ldptr.w	$a1, $a0, 15544
	blez	$a1, .LBB8_5
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a1, $a0, 188
	move	$s6, $zero
	move	$s7, $zero
	add.w	$a1, $a1, $s4
	slli.d	$s8, $a1, 3
	.p2align	4, , 16
.LBB8_8:                                #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	ldptr.d	$a1, $a1, 6472
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 184
	ldx.d	$a1, $a1, $s8
	ldx.w	$a0, $a0, $s5
	add.d	$a2, $s6, $a2
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
	addi.w	$s7, $s7, 1
	addi.d	$s6, $s6, 1
	blt	$s7, $a1, .LBB8_8
	b	.LBB8_5
.LBB8_9:                                # %._crit_edge36
	blez	$a1, .LBB8_16
.LBB8_10:                               # %.lr.ph35.1
	ldptr.w	$a1, $a0, 15544
	blez	$a1, .LBB8_16
# %bb.11:                               # %.lr.ph35.split.1.preheader
	move	$s4, $zero
	ori	$s3, $s3, 3160
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_12:                               # %._crit_edge.1
                                        #   in Loop: Header=BB8_13 Depth=1
	ldptr.w	$a1, $a0, 15548
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB8_16
.LBB8_13:                               # %.lr.ph35.split.1
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
.LBB8_16:                               # %.split.us
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
	ld.w	$t3, $a4, 180
	pcalau12i	$a6, %pc_hi20(lrec)
	ld.d	$a6, $a6, %pc_lo12(lrec)
	add.w	$a7, $a1, $t3
	ld.w	$t4, $a4, 176
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a6, $a7
	add.w	$t0, $a0, $t4
	slli.d	$t5, $t0, 2
	ldx.w	$t0, $a7, $t5
	stptr.w	$t0, $a4, 13136
	addi.d	$t2, $a0, 1
	add.w	$t0, $t2, $t4
	slli.d	$t6, $t0, 2
	ldx.w	$t0, $a7, $t6
	stptr.w	$t0, $a4, 13140
	addi.d	$t1, $a0, 2
	add.w	$t0, $t1, $t4
	slli.d	$t7, $t0, 2
	ldx.w	$t0, $a7, $t7
	stptr.w	$t0, $a4, 13144
	addi.d	$t0, $a0, 3
	add.w	$t4, $t0, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t8, $a7, $t4
	addi.d	$a7, $a1, 1
	add.w	$t3, $t3, $a7
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a6, $t3
	stptr.w	$t8, $a4, 13148
	ldx.w	$t5, $t3, $t5
	stptr.w	$t5, $a4, 13200
	ldx.w	$t5, $t3, $t6
	ldptr.d	$t6, $a4, 14160
	stptr.w	$t5, $a4, 13204
	ldx.w	$t5, $t3, $t7
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $t6, $a5
	ld.w	$t6, $a4, 180
	stptr.w	$t5, $a4, 13208
	ldx.w	$t4, $t3, $t4
	addi.d	$t3, $a1, 2
	add.w	$t5, $t6, $t3
	ld.w	$t7, $a4, 176
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a6, $t5
	stptr.w	$t4, $a4, 13212
	add.w	$t4, $a0, $t7
	slli.d	$t4, $t4, 2
	ldx.w	$t8, $t5, $t4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	stptr.w	$t8, $a4, 13264
	add.w	$a5, $t2, $t7
	slli.d	$a5, $a5, 2
	ldx.w	$t2, $t5, $a5
	lu12i.w	$s6, 3
	ori	$t8, $s6, 336
	add.d	$t8, $a4, $t8
	stptr.w	$t2, $a4, 13268
	add.w	$t1, $t1, $t7
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $t5, $t1
	slli.d	$fp, $a1, 5
	add.d	$fp, $t8, $fp
	slli.d	$s0, $a0, 1
	stptr.w	$t2, $a4, 13272
	add.w	$t0, $t0, $t7
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $t5, $t0
	addi.d	$t5, $a1, 3
	add.w	$t6, $t6, $t5
	slli.d	$t6, $t6, 3
	ldx.d	$a6, $a6, $t6
	ldx.hu	$t6, $fp, $s0
	addi.d	$t7, $s0, 2
	stptr.w	$t2, $a4, 13276
	ldx.w	$t2, $a6, $t4
	ldx.hu	$t4, $fp, $t7
	addi.d	$s1, $s0, 4
	ldx.hu	$s2, $fp, $s1
	stptr.w	$t2, $a4, 13328
	ldx.w	$a5, $a6, $a5
	addi.d	$t2, $s0, 6
	ldx.hu	$fp, $fp, $t2
	slli.d	$a7, $a7, 5
	stptr.w	$a5, $a4, 13332
	ldx.w	$a5, $a6, $t1
	add.d	$a7, $t8, $a7
	ldx.hu	$t1, $a7, $s0
	ldx.hu	$s3, $a7, $t7
	stptr.w	$a5, $a4, 13336
	ldx.hu	$a5, $a7, $s1
	ldx.hu	$a7, $a7, $t2
	slli.d	$t3, $t3, 5
	add.d	$t3, $t8, $t3
	ldx.w	$a6, $a6, $t0
	ldx.hu	$t0, $t3, $s0
	slli.d	$t5, $t5, 5
	add.d	$t5, $t8, $t5
	ldx.hu	$t8, $t3, $t7
	stptr.w	$a6, $a4, 13340
	ldx.hu	$s4, $t3, $s1
	ldx.hu	$s5, $t3, $t2
	ldx.hu	$s0, $t5, $s0
	ldx.hu	$t7, $t5, $t7
	ldx.hu	$s1, $t5, $s1
	ldx.hu	$t5, $t5, $t2
	add.d	$a6, $fp, $t6
	sub.d	$t2, $t6, $fp
	add.d	$t3, $s2, $t4
	sub.d	$t4, $t4, $s2
	add.d	$t6, $t3, $a6
	sub.d	$a6, $a6, $t3
	alsl.d	$fp, $t2, $t4, 1
	slli.d	$t3, $t4, 1
	sub.d	$t2, $t2, $t3
	add.d	$t3, $a7, $t1
	sub.d	$a7, $t1, $a7
	add.d	$t1, $a5, $s3
	sub.d	$a5, $s3, $a5
	add.d	$s2, $t1, $t3
	sub.d	$t1, $t3, $t1
	alsl.d	$s3, $a7, $a5, 1
	slli.d	$a5, $a5, 1
	sub.d	$t3, $a7, $a5
	add.d	$a5, $s5, $t0
	sub.d	$a7, $t0, $s5
	add.d	$t0, $s4, $t8
	sub.d	$t4, $t8, $s4
	add.d	$t8, $t0, $a5
	sub.d	$a5, $a5, $t0
	alsl.d	$t0, $a7, $t4, 1
	slli.d	$t4, $t4, 1
	sub.d	$t4, $a7, $t4
	add.d	$a7, $t5, $s0
	sub.d	$t5, $s0, $t5
	add.d	$s0, $s1, $t7
	sub.d	$t7, $t7, $s1
	add.d	$s1, $s0, $a7
	sub.d	$a7, $a7, $s0
	alsl.d	$s0, $t5, $t7, 1
	slli.d	$t7, $t7, 1
	sub.d	$t5, $t5, $t7
	add.d	$t7, $s1, $t6
	sub.d	$t6, $t6, $s1
	add.d	$s1, $t8, $s2
	sub.d	$t8, $s2, $t8
	add.d	$s2, $s1, $t7
	st.w	$s2, $sp, 24
	sub.d	$t7, $t7, $s1
	st.w	$t7, $sp, 32
	alsl.d	$t7, $t6, $t8, 1
	st.w	$t7, $sp, 28
	slli.d	$t7, $t8, 1
	sub.d	$t6, $t6, $t7
	st.w	$t6, $sp, 36
	add.d	$t6, $s0, $fp
	sub.d	$t7, $fp, $s0
	add.d	$t8, $t0, $s3
	sub.d	$t0, $s3, $t0
	add.d	$fp, $t8, $t6
	st.w	$fp, $sp, 40
	sub.d	$t6, $t6, $t8
	st.w	$t6, $sp, 48
	alsl.d	$t6, $t7, $t0, 1
	st.w	$t6, $sp, 44
	slli.d	$t0, $t0, 1
	sub.d	$t0, $t7, $t0
	st.w	$t0, $sp, 52
	add.d	$t6, $a7, $a6
	sub.d	$t7, $a6, $a7
	add.d	$a6, $a5, $t1
	sub.d	$a5, $t1, $a5
	add.d	$a7, $a6, $t6
	st.w	$a7, $sp, 56
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a3, 8
	sub.d	$a3, $t6, $a6
	ld.w	$t6, $a4, 40
	st.w	$a3, $sp, 64
	alsl.d	$a3, $t7, $a5, 1
	st.w	$a3, $sp, 60
	ori	$a6, $s6, 848
	slli.d	$a3, $a5, 1
	sub.d	$a3, $t7, $a3
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	add.d	$t1, $a4, $a6
	st.w	$a3, $sp, 68
	add.d	$a3, $t5, $t2
	sub.d	$a5, $t2, $t5
	add.d	$t2, $t4, $t3
	sub.d	$t3, $t3, $t4
	add.d	$t4, $t2, $a3
	st.w	$t4, $sp, 72
	sub.d	$a3, $a3, $t2
	st.w	$a3, $sp, 80
	alsl.d	$a3, $a5, $t3, 1
	st.w	$a3, $sp, 76
	slli.d	$a3, $t3, 1
	sub.d	$a3, $a5, $a3
	st.w	$a3, $sp, 84
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2731
	mul.d	$a3, $t6, $a3
	srli.d	$a5, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$t2, $a3, $a5
	addi.d	$t3, $t2, 15
	slli.d	$a3, $t2, 2
	alsl.d	$a3, $t2, $a3, 1
	sub.w	$a3, $t6, $a3
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
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a5, $a4, $a2
	lu12i.w	$ra, 3
	ori	$a6, $ra, 856
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	ldx.w	$a6, $a4, $a6
	ldptr.w	$a7, $a4, 13140
	ldptr.w	$t0, $a4, 13148
	add.d	$t1, $a6, $a5
	sub.d	$a5, $a5, $a6
	srli.d	$a6, $a7, 1
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $t0, 1
	add.d	$a7, $t0, $a7
	add.d	$t5, $a7, $t1
	sub.d	$a7, $t1, $a7
	stptr.w	$a7, $a4, 13148
	add.d	$t6, $a6, $a5
	sub.d	$a5, $a5, $a6
	ori	$t1, $ra, 912
	ldx.w	$a6, $a4, $t1
	ori	$a7, $ra, 920
	ldx.w	$t0, $a4, $a7
	stptr.w	$a5, $a4, 13144
	ldptr.w	$a5, $a4, 13204
	ldptr.w	$t2, $a4, 13212
	add.d	$t3, $t0, $a6
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $a5, 1
	sub.d	$t4, $t0, $t2
	srli.d	$t0, $t2, 1
	add.d	$a5, $t0, $a5
	add.d	$t8, $a5, $t3
	sub.d	$t7, $t3, $a5
	add.d	$fp, $t4, $a6
	ori	$t3, $ra, 976
	ldx.w	$a5, $a4, $t3
	ori	$t0, $ra, 984
	ldx.w	$t2, $a4, $t0
	sub.d	$s0, $a6, $t4
	ldptr.w	$a6, $a4, 13268
	ldptr.w	$t4, $a4, 13276
	add.d	$s1, $t2, $a5
	sub.d	$a5, $a5, $t2
	srli.d	$t2, $a6, 1
	sub.d	$s2, $t2, $t4
	srli.d	$t2, $t4, 1
	add.d	$a6, $t2, $a6
	add.d	$s3, $a6, $s1
	sub.d	$a6, $s1, $a6
	add.d	$s1, $s2, $a5
	ori	$t4, $ra, 1040
	ldx.w	$s4, $a4, $t4
	ori	$t2, $ra, 1048
	ldx.w	$s5, $a4, $t2
	sub.d	$a5, $a5, $s2
	ldptr.w	$s2, $a4, 13332
	ldptr.w	$s6, $a4, 13340
	add.d	$s7, $s5, $s4
	sub.d	$s4, $s4, $s5
	srli.d	$s5, $s2, 1
	sub.d	$s5, $s5, $s6
	srli.d	$s6, $s6, 1
	add.d	$s2, $s6, $s2
	add.d	$s6, $s2, $s7
	sub.d	$s2, $s7, $s2
	add.d	$s7, $s5, $s4
	ldptr.d	$s8, $a4, 13144
	sub.d	$s4, $s4, $s5
	stptr.w	$t7, $a4, 13212
	stptr.w	$a6, $a4, 13276
	vinsgr2vr.d	$vr2, $s8, 0
	vinsgr2vr.w	$vr3, $s3, 0
	vinsgr2vr.w	$vr3, $s1, 1
	vinsgr2vr.w	$vr3, $a5, 2
	vinsgr2vr.w	$vr3, $a6, 3
	vreplvei.d	$vr0, $vr2, 0
	vinsgr2vr.w	$vr0, $t5, 0
	vinsgr2vr.w	$vr0, $t6, 1
	vadd.w	$vr0, $vr3, $vr0
	vinsgr2vr.w	$vr4, $s6, 0
	vinsgr2vr.w	$vr4, $s7, 1
	vinsgr2vr.w	$vr4, $s4, 2
	vinsgr2vr.w	$vr4, $s2, 3
	vsrai.w	$vr1, $vr4, 1
	vinsgr2vr.w	$vr5, $t8, 0
	vinsgr2vr.w	$vr5, $fp, 1
	vinsgr2vr.w	$vr5, $s0, 2
	vinsgr2vr.w	$vr5, $t7, 3
	vadd.w	$vr6, $vr1, $vr5
	vrepli.w	$vr7, 32
	vadd.w	$vr0, $vr0, $vr7
	vadd.w	$vr1, $vr0, $vr6
	vsrai.w	$vr1, $vr1, 6
	vmaxi.w	$vr1, $vr1, 0
	vrepli.w	$vr8, 255
	vmin.w	$vr1, $vr1, $vr8
	vsub.w	$vr0, $vr0, $vr6
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr8
	vstx	$vr0, $a4, $t4
	vsrai.w	$vr5, $vr5, 1
	vsub.w	$vr4, $vr5, $vr4
	vinsgr2vr.w	$vr5, $t5, 0
	vinsgr2vr.w	$vr5, $t6, 1
	vpackev.d	$vr2, $vr2, $vr5
	vsub.w	$vr2, $vr2, $vr3
	vadd.w	$vr3, $vr2, $vr7
	vstx	$vr1, $a4, $a2
	vadd.w	$vr2, $vr3, $vr4
	vsrai.w	$vr2, $vr2, 6
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr8
	vstx	$vr2, $a4, $t1
	vsub.w	$vr3, $vr3, $vr4
	vsrai.w	$vr3, $vr3, 6
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr8
	vstx	$vr3, $a4, $t3
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a4, 180
	ld.w	$t5, $a4, 176
	ldptr.d	$a5, $a5, 6440
	add.w	$a1, $a1, $a6
	add.w	$a0, $a0, $t5
	ldx.h	$a6, $a4, $a2
	slli.d	$t5, $a1, 3
	ldx.d	$t5, $a5, $t5
	addi.w	$t6, $a1, 1
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a5, $t6
	addi.w	$t7, $a1, 2
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $a5, $t7
	addi.w	$a1, $a1, 3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a5, $a1
	slli.d	$a5, $a0, 1
	ldx.h	$t1, $a4, $t1
	ldx.h	$t3, $a4, $t3
	ldx.h	$t4, $a4, $t4
	stx.h	$a6, $t5, $a5
	stx.h	$t1, $t6, $a5
	stx.h	$t3, $t7, $a5
	stx.h	$t4, $a1, $a5
	addi.w	$a5, $a0, 1
	ori	$a6, $ra, 852
	ldx.h	$a6, $a4, $a6
	slli.d	$a5, $a5, 1
	ori	$t1, $ra, 916
	ldx.h	$t1, $a4, $t1
	ori	$t3, $ra, 980
	ldx.h	$t3, $a4, $t3
	ori	$t4, $ra, 1044
	ldx.h	$t4, $a4, $t4
	stx.h	$a6, $t5, $a5
	stx.h	$t1, $t6, $a5
	stx.h	$t3, $t7, $a5
	stx.h	$t4, $a1, $a5
	addi.w	$a5, $a0, 2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ldx.h	$a2, $a4, $a2
	slli.d	$a5, $a5, 1
	ldx.h	$a6, $a4, $a7
	ldx.h	$a7, $a4, $t0
	ldx.h	$a4, $a4, $t2
	stx.h	$a2, $t5, $a5
	stx.h	$a6, $t6, $a5
	stx.h	$a7, $t7, $a5
	stx.h	$a4, $a1, $a5
	addi.w	$a0, $a0, 3
	alsl.d	$a2, $a0, $t5, 1
	vstelm.h	$vr1, $a2, 0, 6
	alsl.d	$a2, $a0, $t6, 1
	vstelm.h	$vr2, $a2, 0, 6
	alsl.d	$a2, $a0, $t7, 1
	vstelm.h	$vr3, $a2, 0, 6
	alsl.d	$a0, $a0, $a1, 1
	vstelm.h	$vr0, $a0, 0, 6
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
	.word	7                               # 0x7
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI11_1:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI11_2:
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	0                               # 0x0
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
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ldptr.d	$a3, $a2, 14168
	ldptr.d	$a7, $a2, 14224
	ld.w	$a4, $a2, 12
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$a3, $a0, $a3, 3
	ld.w	$t1, $a2, 40
	ld.d	$a3, $a3, 8
	ori	$a5, $zero, 536
	mul.d	$a5, $a4, $a5
	addi.d	$t2, $sp, 120
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	bltz	$t1, .LBB11_2
# %bb.1:
	pcalau12i	$a4, %pc_hi20(QP_SCALE_CR)
	addi.d	$a4, $a4, %pc_lo12(QP_SCALE_CR)
	ldx.bu	$t1, $a4, $t1
	ori	$a4, $zero, 171
	mul.d	$a4, $t1, $a4
	srli.d	$t0, $a4, 10
	b	.LBB11_3
.LBB11_2:                               # %.thread
	sub.d	$a4, $zero, $t1
	bstrpick.d	$a4, $a4, 31, 0
	lu12i.w	$a6, -349526
	ori	$a6, $a6, 2731
	lu32i.d	$a6, 0
	mul.d	$a4, $a4, $a6
	srli.d	$a4, $a4, 34
	sub.d	$t0, $zero, $a4
.LBB11_3:
	move	$a4, $zero
	addi.d	$s5, $sp, 104
	add.d	$t4, $a7, $a5
	pcalau12i	$a1, %pc_hi20(lrec_uv)
	ld.d	$a5, $a1, %pc_lo12(lrec_uv)
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a5, $a5, $a0
	lu12i.w	$a0, 3
	ori	$a1, $a0, 848
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.d	$a7, $a2, $a1
	addi.d	$a6, $sp, 232
	ori	$a1, $a0, 876
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$t3, $a2, $a1
	ori	$a3, $a0, 350
	add.d	$t7, $a2, $a3
	ori	$t5, $zero, 8
	.p2align	4, , 16
.LBB11_4:                               # %.preheader337
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $t7, -14
	st.w	$a3, $a6, -128
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ld.w	$t6, $a2, 184
	ldx.d	$a3, $a5, $a3
	slli.d	$t6, $t6, 2
	ldx.w	$a3, $a3, $t6
	ld.hu	$t6, $t7, -12
	st.w	$a3, $t3, -28
	st.w	$t6, $a6, -96
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.w	$t6, $a2, 184
	alsl.d	$a3, $t6, $a3, 2
	ld.w	$a3, $a3, 4
	ld.hu	$t6, $t7, -10
	st.w	$a3, $t3, -24
	st.w	$t6, $a6, -64
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.w	$t6, $a2, 184
	alsl.d	$a3, $t6, $a3, 2
	ld.w	$a3, $a3, 8
	ld.hu	$t6, $t7, -8
	st.w	$a3, $t3, -20
	st.w	$t6, $a6, -32
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.w	$t6, $a2, 184
	alsl.d	$a3, $t6, $a3, 2
	ld.w	$a3, $a3, 12
	ld.hu	$t6, $t7, -6
	st.w	$a3, $t3, -16
	st.w	$t6, $a6, 0
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.w	$t6, $a2, 184
	alsl.d	$a3, $t6, $a3, 2
	ld.w	$a3, $a3, 16
	ld.hu	$t6, $t7, -4
	st.w	$a3, $t3, -12
	st.w	$t6, $a6, 32
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.w	$t6, $a2, 184
	alsl.d	$a3, $t6, $a3, 2
	ld.w	$a3, $a3, 20
	ld.hu	$t6, $t7, -2
	st.w	$a3, $t3, -8
	st.w	$t6, $a6, 64
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.w	$t6, $a2, 184
	alsl.d	$a3, $t6, $a3, 2
	ld.w	$a3, $a3, 24
	ld.hu	$t6, $t7, 0
	st.w	$a3, $t3, -4
	st.w	$t6, $a6, 96
	ld.w	$a3, $a2, 188
	add.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.w	$t6, $a2, 184
	alsl.d	$a3, $t6, $a3, 2
	ld.w	$a3, $a3, 28
	st.w	$a3, $t3, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 4
	addi.d	$t3, $t3, 64
	addi.d	$t7, $t7, 32
	bne	$a4, $t5, .LBB11_4
# %bb.5:                                # %.preheader335.preheader
	move	$ra, $zero
	addi.d	$t3, $sp, 168
	addi.d	$t7, $sp, 136
	addi.d	$t8, $sp, 200
	addi.d	$fp, $sp, 232
	addi.d	$s0, $sp, 296
	addi.d	$s1, $sp, 264
	addi.d	$s2, $sp, 328
	addi.d	$s3, $sp, 104
	ori	$a4, $zero, 1
	addi.d	$s4, $sp, 104
	.p2align	4, , 16
.LBB11_6:                               # %.preheader335
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$s7, $ra, 2
	addi.d	$s6, $s7, 4
	add.d	$a3, $s3, $s6
	vld	$vr0, $s4, 0
	vld	$vr1, $s4, 32
	vld	$vr2, $s4, 64
	vld	$vr3, $s4, 96
	addi.d	$s8, $s7, 8
	add.d	$a5, $s3, $s8
	vsub.w	$vr4, $vr1, $vr2
	vsub.w	$vr5, $vr0, $vr3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr1, $vr0
	vstelm.w	$vr2, $s5, 0, 0
	vpickve2gr.w	$t5, $vr2, 1
	vstelm.w	$vr2, $a3, 0, 1
	vpickve2gr.w	$a3, $vr2, 2
	vstelm.w	$vr2, $a5, 0, 2
	vpickve2gr.w	$a5, $vr2, 3
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $t3, $s7
	vslli.w	$vr0, $vr5, 1
	vadd.w	$vr0, $vr0, $vr4
	vstx	$vr0, $t7, $s7
	ld.w	$t6, $s5, 0
	vslli.w	$vr0, $vr4, 1
	vsub.w	$vr0, $vr5, $vr0
	vstx	$vr0, $t8, $s7
	add.d	$a6, $a5, $t6
	sub.d	$a5, $t6, $a5
	add.d	$s5, $a3, $t5
	sub.d	$a3, $t5, $a3
	sub.d	$t5, $a6, $s5
	st.w	$t5, $s4, 8
	alsl.d	$t5, $a5, $a3, 1
	st.w	$t5, $s4, 4
	slli.d	$a3, $a3, 1
	sub.d	$a3, $a5, $a3
	st.w	$a3, $s4, 12
	ldx.w	$a3, $t7, $s7
	addi.d	$a5, $s7, 12
	ldx.w	$t5, $t7, $a5
	ldx.w	$t6, $t7, $s6
	ldx.w	$a1, $t7, $s8
	add.d	$a0, $t5, $a3
	sub.d	$a3, $a3, $t5
	add.d	$t5, $a1, $t6
	sub.d	$a1, $t6, $a1
	add.d	$t6, $t5, $a0
	st.w	$t6, $s4, 32
	sub.d	$a0, $a0, $t5
	st.w	$a0, $s4, 40
	alsl.d	$a0, $a3, $a1, 1
	st.w	$a0, $s4, 36
	slli.d	$a0, $a1, 1
	sub.d	$a0, $a3, $a0
	st.w	$a0, $s4, 44
	ldx.w	$a0, $t3, $s7
	ldx.w	$a1, $t3, $a5
	ldx.w	$a3, $t3, $s6
	ldx.w	$t5, $t3, $s8
	add.d	$t6, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $t5, $a3
	sub.d	$a3, $a3, $t5
	add.d	$t5, $a1, $t6
	st.w	$t5, $s4, 64
	sub.d	$a1, $t6, $a1
	st.w	$a1, $s4, 72
	alsl.d	$a1, $a0, $a3, 1
	st.w	$a1, $s4, 68
	slli.d	$a1, $a3, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s4, 76
	ldx.w	$a0, $t8, $s7
	ldx.w	$a1, $t8, $a5
	ldx.w	$a3, $t8, $s6
	ldx.w	$t5, $t8, $s8
	add.d	$t6, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $t5, $a3
	sub.d	$a3, $a3, $t5
	add.d	$t5, $a1, $t6
	st.w	$t5, $s4, 96
	sub.d	$a1, $t6, $a1
	st.w	$a1, $s4, 104
	alsl.d	$a1, $a0, $a3, 1
	st.w	$a1, $s4, 100
	slli.d	$a1, $a3, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s4, 108
	alsl.d	$a0, $ra, $fp, 2
	vld	$vr0, $s4, 128
	vld	$vr1, $s4, 160
	vld	$vr2, $s4, 192
	vld	$vr3, $s4, 224
	add.d	$a1, $fp, $s6
	add.d	$a3, $fp, $s8
	vsub.w	$vr4, $vr1, $vr2
	vsub.w	$vr5, $vr0, $vr3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr2, $vr1, $vr0
	vpickve2gr.w	$t5, $vr2, 0
	vstelm.w	$vr2, $a0, 0, 0
	vpickve2gr.w	$a0, $vr2, 1
	vstelm.w	$vr2, $a1, 0, 1
	vpickve2gr.w	$a1, $vr2, 2
	vstelm.w	$vr2, $a3, 0, 2
	vpickve2gr.w	$a3, $vr2, 3
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s0, $s7
	vslli.w	$vr0, $vr5, 1
	vadd.w	$vr0, $vr0, $vr4
	vstx	$vr0, $s1, $s7
	vslli.w	$vr0, $vr4, 1
	vsub.w	$vr0, $vr5, $vr0
	vstx	$vr0, $s2, $s7
	add.d	$t6, $a3, $t5
	sub.d	$a3, $t5, $a3
	add.d	$t5, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $t5, $t6
	st.w	$a1, $s4, 128
	sub.d	$a1, $t6, $t5
	st.w	$a1, $s4, 136
	alsl.d	$a1, $a3, $a0, 1
	st.w	$a1, $s4, 132
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a3, $a0
	st.w	$a0, $s4, 140
	ldx.w	$a0, $s1, $s7
	ldx.w	$a1, $s1, $a5
	ldx.w	$a3, $s1, $s6
	ldx.w	$t5, $s1, $s8
	add.d	$t6, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $t5, $a3
	sub.d	$a3, $a3, $t5
	add.d	$t5, $a1, $t6
	st.w	$t5, $s4, 160
	sub.d	$a1, $t6, $a1
	st.w	$a1, $s4, 168
	alsl.d	$a1, $a0, $a3, 1
	st.w	$a1, $s4, 164
	slli.d	$a1, $a3, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s4, 172
	ldx.w	$a0, $s0, $s7
	ldx.w	$a1, $s0, $a5
	ldx.w	$a3, $s0, $s6
	ldx.w	$t5, $s0, $s8
	add.d	$a6, $s5, $a6
	add.d	$t6, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $t5, $a3
	sub.d	$a3, $a3, $t5
	add.d	$t5, $a1, $t6
	st.w	$t5, $s4, 192
	sub.d	$a1, $t6, $a1
	st.w	$a1, $s4, 200
	alsl.d	$a1, $a0, $a3, 1
	st.w	$a1, $s4, 196
	slli.d	$a1, $a3, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s4, 204
	ldx.w	$a0, $s2, $s7
	ldx.w	$a1, $s2, $a5
	ldx.w	$a3, $s2, $s6
	ldx.w	$a5, $s2, $s8
	st.w	$a6, $s4, 0
	add.d	$a6, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $a5, $a3
	sub.d	$a3, $a3, $a5
	add.d	$a5, $a1, $a6
	st.w	$a5, $s4, 224
	sub.d	$a1, $a6, $a1
	st.w	$a1, $s4, 232
	alsl.d	$a1, $a0, $a3, 1
	st.w	$a1, $s4, 228
	slli.d	$a1, $a3, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s4, 236
	andi	$a0, $a4, 1
	ori	$ra, $zero, 4
	move	$s4, $t2
	move	$s5, $t2
	move	$a4, $zero
	bnez	$a0, .LBB11_6
# %bb.7:
	lu12i.w	$a0, 174762
	ori	$a0, $a0, 2731
	mul.d	$a0, $t1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	alsl.d	$a0, $a0, $a1, 1
	sub.w	$a0, $t1, $a0
	addi.d	$t7, $t0, 15
	ori	$a6, $zero, 1
	sll.w	$a1, $a6, $t7
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$s7, $a1, $a3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a5, $a2, $a1
	lu12i.w	$t3, 3
	ori	$a1, $t3, 1104
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$t1, $a2, $a1
	ori	$a1, $t3, 864
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$a4, $a2, $a1
	ld.w	$a1, $sp, 104
	ld.w	$a3, $sp, 232
	ld.w	$t5, $sp, 120
	ld.w	$t2, $sp, 248
	ori	$t3, $t3, 1120
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$s3, $a2, $t3
	add.d	$t3, $a3, $a1
	add.d	$fp, $t2, $t5
	add.w	$s6, $fp, $t3
	add.d	$t6, $a1, $t5
	add.d	$s0, $a3, $t2
	sub.w	$t6, $t6, $s0
	sub.w	$t3, $t3, $fp
	add.d	$a3, $a3, $t5
	sub.d	$t5, $a1, $a3
	slli.d	$s0, $a0, 6
	pcalau12i	$a0, %pc_hi20(quant_coef)
	addi.d	$fp, $a0, %pc_lo12(quant_coef)
	ldx.w	$s2, $fp, $s0
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	bstrins.d	$s7, $zero, 0, 0
	addi.d	$s8, $t0, 16
	pcalau12i	$a0, %pc_hi20(dequant_coef)
	addi.d	$s5, $a0, %pc_lo12(dequant_coef)
	ldx.w	$s4, $s5, $s0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s1, $a0, 2
	bstrpick.d	$a0, $s1, 31, 2
	slli.d	$a0, $a0, 2
	srai.d	$a1, $s6, 31
	xor	$a3, $s6, $a1
	sub.d	$a1, $a3, $a1
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a1, $s7
	sra.w	$a1, $a1, $s8
	slti	$a3, $s6, 0
	srai.d	$s6, $a1, 31
	xor	$a1, $a1, $s6
	sub.d	$a1, $a1, $s6
	sub.d	$s6, $zero, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s6, $a3
	lu12i.w	$s6, 240
	or	$a1, $a1, $a3
	add.w	$a3, $a1, $a5
	sll.w	$ra, $s6, $a0
	beqz	$a3, .LBB11_9
# %bb.8:
	move	$a6, $zero
	ld.d	$a0, $t4, 368
	srai.d	$a1, $a3, 31
	xor	$s6, $a3, $a1
	sub.d	$a1, $s6, $a1
	or	$a0, $a0, $ra
	st.d	$a0, $t4, 368
	ori	$s6, $zero, 1
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	slt	$a0, $s6, $t8
	maskeqz	$t8, $t8, $a0
	masknez	$a0, $s6, $a0
	or	$a0, $t8, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slti	$a0, $a3, 0
	sub.d	$a3, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $t8, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	b	.LBB11_10
.LBB11_9:
	move	$s6, $zero
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
.LBB11_10:
	srai.d	$a0, $t6, 31
	xor	$a1, $t6, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $s2
	add.d	$a0, $a0, $s7
	sra.w	$a0, $a0, $s8
	slti	$a1, $t6, 0
	srai.d	$a3, $a0, 31
	xor	$a0, $a0, $a3
	sub.d	$a0, $a0, $a3
	sub.d	$a3, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	add.w	$a3, $a0, $t1
	add.w	$t2, $t5, $t2
	beqz	$a3, .LBB11_12
# %bb.11:
	ld.d	$a0, $t4, 368
	srai.d	$a1, $a3, 31
	xor	$t5, $a3, $a1
	sub.d	$a1, $t5, $a1
	or	$a0, $a0, $ra
	st.d	$a0, $t4, 368
	ori	$a0, $zero, 1
	ld.d	$t6, $sp, 64                    # 8-byte Folded Reload
	slt	$t5, $a0, $t6
	masknez	$a0, $a0, $t5
	maskeqz	$t5, $t6, $t5
	or	$t6, $t5, $a0
	slti	$a0, $a3, 0
	sub.d	$a3, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $s6, 2
	stx.w	$a0, $t8, $a1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	stx.w	$a6, $a0, $a1
	addi.d	$s6, $s6, 1
	addi.d	$a6, $zero, -1
	b	.LBB11_13
.LBB11_12:
	ld.d	$t6, $sp, 64                    # 8-byte Folded Reload
.LBB11_13:
	mul.d	$a5, $s4, $a5
	mul.d	$t5, $s4, $t1
	srai.d	$a0, $t3, 31
	xor	$a1, $t3, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $s2
	add.d	$a0, $a0, $s7
	sra.w	$a0, $a0, $s8
	slti	$a1, $t3, 0
	srai.d	$a3, $a0, 31
	xor	$a0, $a0, $a3
	sub.d	$a0, $a0, $a3
	sub.d	$a3, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	add.w	$a3, $a0, $a4
	addi.d	$t1, $a6, 1
	beqz	$a3, .LBB11_15
# %bb.14:
	ld.d	$a0, $t4, 368
	srai.d	$a1, $a3, 31
	xor	$a6, $a3, $a1
	sub.d	$a1, $a6, $a1
	or	$a0, $a0, $ra
	st.d	$a0, $t4, 368
	ori	$a0, $zero, 1
	slt	$a6, $a0, $t6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $t6, $a6
	or	$t6, $a6, $a0
	slti	$a0, $a3, 0
	sub.d	$a3, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $s6, 2
	stx.w	$a0, $t8, $a1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	stx.w	$t1, $a0, $a1
	addi.d	$s6, $s6, 1
	addi.d	$t1, $zero, -1
.LBB11_15:
	sll.w	$a5, $a5, $t0
	sll.w	$a6, $t5, $t0
	mul.d	$a0, $s4, $a4
	srai.d	$a1, $t2, 31
	xor	$a3, $t2, $a1
	sub.d	$a1, $a3, $a1
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a1, $s7
	sra.w	$a1, $a1, $s8
	slti	$a3, $t2, 0
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $zero, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	add.w	$a3, $a1, $s3
	sll.w	$a4, $a0, $t0
	beqz	$a3, .LBB11_17
# %bb.16:
	srai.d	$a0, $a3, 31
	ld.d	$a1, $t4, 368
	xor	$t2, $a3, $a0
	sub.d	$a0, $t2, $a0
	addi.d	$t1, $t1, 1
	or	$a1, $a1, $ra
	st.d	$a1, $t4, 368
	ori	$a1, $zero, 1
	slt	$t2, $a1, $t6
	masknez	$a1, $a1, $t2
	maskeqz	$t2, $t6, $t2
	or	$a1, $t2, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slti	$a1, $a3, 0
	sub.d	$a3, $zero, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slli.d	$a1, $s6, 2
	stx.w	$a0, $t8, $a1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	stx.w	$t1, $a0, $a1
	addi.d	$s6, $s6, 1
	b	.LBB11_18
.LBB11_17:
	st.d	$t6, $sp, 64                    # 8-byte Folded Spill
.LBB11_18:
	move	$s2, $zero
	move	$t5, $zero
	add.d	$fp, $fp, $s0
	add.d	$s0, $s5, $s0
	mul.d	$a0, $s4, $s3
	sll.w	$a0, $a0, $t0
	slli.d	$a1, $s6, 2
	stx.w	$zero, $t8, $a1
	add.d	$a1, $a6, $a5
	add.d	$a3, $a0, $a4
	add.d	$t1, $a3, $a1
	bstrpick.d	$t2, $t1, 31, 31
	add.w	$t1, $t1, $t2
	srli.d	$t1, $t1, 1
	stptr.w	$t1, $a2, 13136
	add.d	$t1, $a5, $a4
	add.d	$t2, $a6, $a0
	sub.d	$t1, $t1, $t2
	bstrpick.d	$t2, $t1, 31, 31
	add.w	$t1, $t1, $t2
	srli.d	$t1, $t1, 1
	stptr.w	$t1, $a2, 13392
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	srai.d	$t6, $t1, 1
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srli.d	$a1, $a1, 1
	stptr.w	$a1, $a2, 13152
	add.w	$a1, $a6, $a4
	sub.d	$a1, $a5, $a1
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	ldptr.d	$a3, $a2, 14160
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	stptr.w	$a0, $a2, 13408
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 3
	ld.d	$s7, $a0, 32
	addi.d	$s8, $s1, 16
	addi.d	$s3, $sp, 104
	ori	$s4, $zero, 30
	ori	$a1, $zero, 1
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	b	.LBB11_20
	.p2align	4, , 16
.LBB11_19:                              #   in Loop: Header=BB11_20 Depth=1
	slli.d	$a0, $a6, 2
	stx.w	$zero, $a4, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s2, $zero, 4
	move	$a1, $zero
	beqz	$a0, .LBB11_36
.LBB11_20:                              # %.preheader332
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_22 Depth 2
                                        #     Child Loop BB11_30 Depth 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 2
	ldx.d	$a0, $s7, $a0
	move	$t1, $zero
	move	$a4, $zero
	srli.d	$a1, $s2, 1
	ld.d	$a5, $a0, 0
	ld.d	$t3, $a0, 8
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	or	$a0, $a1, $s8
	ori	$a1, $zero, 1
	sll.d	$s6, $a1, $a0
	alsl.d	$s7, $s2, $s3, 2
	alsl.d	$s8, $s2, $a7, 2
	addi.d	$t2, $zero, -1
	b	.LBB11_22
	.p2align	4, , 16
.LBB11_21:                              #   in Loop: Header=BB11_22 Depth=2
	alsl.d	$a6, $ra, $s0, 4
	ldx.w	$a3, $a6, $a3
	alsl.d	$a0, $a1, $a0, 2
	mul.d	$a1, $a3, $s1
	sll.w	$a1, $a1, $t0
	addi.d	$t1, $t1, 2
	st.w	$a1, $a0, 0
	beq	$t1, $s4, .LBB11_28
.LBB11_22:                              #   Parent Loop BB11_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.w	$a1, $a2, 15312
	pcalau12i	$a0, %pc_hi20(FIELD_SCAN)
	addi.d	$a0, $a0, %pc_lo12(FIELD_SCAN)
	bnez	$a1, .LBB11_26
# %bb.23:                               #   in Loop: Header=BB11_22 Depth=2
	pcalau12i	$a1, %pc_hi20(mb_adaptive)
	ld.w	$a1, $a1, %pc_lo12(mb_adaptive)
	beqz	$a1, .LBB11_25
# %bb.24:                               #   in Loop: Header=BB11_22 Depth=2
	ldptr.w	$a1, $a2, 14464
	bnez	$a1, .LBB11_26
.LBB11_25:                              #   in Loop: Header=BB11_22 Depth=2
	pcalau12i	$a0, %pc_hi20(SNGL_SCAN)
	addi.d	$a0, $a0, %pc_lo12(SNGL_SCAN)
.LBB11_26:                              #   in Loop: Header=BB11_22 Depth=2
	add.d	$a0, $a0, $t1
	ld.bu	$a1, $a0, 2
	ld.bu	$ra, $a0, 3
	slli.d	$a0, $a1, 5
	add.d	$a0, $s7, $a0
	slli.d	$a3, $ra, 2
	ldx.w	$t8, $a0, $a3
	alsl.d	$a0, $ra, $fp, 4
	slli.d	$a3, $a1, 2
	ldx.w	$a0, $a0, $a3
	srai.d	$s1, $t8, 31
	xor	$s5, $t8, $s1
	sub.d	$s1, $s5, $s1
	mul.d	$a0, $s1, $a0
	add.d	$a0, $a0, $t6
	sra.w	$s5, $a0, $t7
	slli.d	$a0, $ra, 6
	add.d	$a0, $s8, $a0
	ldx.w	$s1, $a0, $a3
	slti	$t8, $t8, 0
	srai.d	$a6, $s5, 31
	xor	$s5, $s5, $a6
	sub.d	$a6, $s5, $a6
	sub.d	$s5, $zero, $a6
	maskeqz	$a6, $a6, $t8
	masknez	$t8, $s5, $t8
	or	$a6, $a6, $t8
	add.w	$t8, $a6, $s1
	addi.d	$t2, $t2, 1
	beqz	$t8, .LBB11_21
# %bb.27:                               #   in Loop: Header=BB11_22 Depth=2
	ld.d	$a6, $t4, 368
	srai.d	$t5, $t8, 31
	xor	$s5, $t8, $t5
	sub.d	$t5, $s5, $t5
	or	$a6, $a6, $s6
	st.d	$a6, $t4, 368
	slti	$a6, $t8, 0
	sub.d	$t8, $zero, $t5
	masknez	$t5, $t5, $a6
	maskeqz	$a6, $t8, $a6
	or	$a6, $a6, $t5
	slli.d	$t5, $a4, 2
	stx.w	$a6, $a5, $t5
	stx.w	$t2, $t3, $t5
	addi.w	$a4, $a4, 1
	addi.d	$t2, $zero, -1
	ori	$t5, $zero, 2
	b	.LBB11_21
	.p2align	4, , 16
.LBB11_28:                              #   in Loop: Header=BB11_20 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 3
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a1, $s7, $a1
	move	$t1, $zero
	move	$a6, $zero
	slli.d	$a3, $a4, 2
	stx.w	$zero, $a5, $a3
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a1, 8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	or	$a0, $a0, $s8
	ori	$a1, $zero, 1
	sll.d	$t3, $a1, $a0
	addi.d	$s6, $zero, -1
	b	.LBB11_30
	.p2align	4, , 16
.LBB11_29:                              #   in Loop: Header=BB11_30 Depth=2
	alsl.d	$a1, $a1, $s0, 4
	ldx.w	$a1, $a1, $t2
	addi.d	$a0, $a0, 256
	mul.d	$a1, $a1, $a3
	sll.w	$a1, $a1, $t0
	addi.d	$t1, $t1, 2
	st.w	$a1, $a0, 0
	beq	$t1, $s4, .LBB11_19
.LBB11_30:                              #   Parent Loop BB11_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.w	$a1, $a2, 15312
	pcalau12i	$a0, %pc_hi20(FIELD_SCAN)
	addi.d	$a0, $a0, %pc_lo12(FIELD_SCAN)
	bnez	$a1, .LBB11_34
# %bb.31:                               #   in Loop: Header=BB11_30 Depth=2
	pcalau12i	$a1, %pc_hi20(mb_adaptive)
	ld.w	$a1, $a1, %pc_lo12(mb_adaptive)
	beqz	$a1, .LBB11_33
# %bb.32:                               #   in Loop: Header=BB11_30 Depth=2
	ldptr.w	$a1, $a2, 14464
	bnez	$a1, .LBB11_34
.LBB11_33:                              #   in Loop: Header=BB11_30 Depth=2
	pcalau12i	$a0, %pc_hi20(SNGL_SCAN)
	addi.d	$a0, $a0, %pc_lo12(SNGL_SCAN)
.LBB11_34:                              #   in Loop: Header=BB11_30 Depth=2
	add.d	$a0, $a0, $t1
	ld.bu	$a3, $a0, 2
	ld.bu	$a1, $a0, 3
	slli.d	$a0, $a3, 5
	add.d	$a0, $s3, $a0
	alsl.d	$a0, $s2, $a0, 2
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$t8, $a0, 128
	alsl.d	$a0, $a1, $fp, 4
	slli.d	$t2, $a3, 2
	ldx.w	$a0, $a0, $t2
	srai.d	$s1, $t8, 31
	xor	$s5, $t8, $s1
	sub.d	$s1, $s5, $s1
	mul.d	$a0, $s1, $a0
	add.d	$a0, $a0, $t6
	sra.w	$s1, $a0, $t7
	slli.d	$a0, $a1, 6
	add.d	$a0, $a7, $a0
	alsl.d	$a0, $s2, $a0, 2
	alsl.d	$a0, $a3, $a0, 2
	ld.w	$a3, $a0, 256
	slti	$t8, $t8, 0
	srai.d	$s5, $s1, 31
	xor	$s1, $s1, $s5
	sub.d	$s1, $s1, $s5
	sub.d	$s5, $zero, $s1
	maskeqz	$s1, $s1, $t8
	masknez	$t8, $s5, $t8
	or	$t8, $s1, $t8
	add.w	$t8, $t8, $a3
	addi.d	$s6, $s6, 1
	beqz	$t8, .LBB11_29
# %bb.35:                               #   in Loop: Header=BB11_30 Depth=2
	ld.d	$t5, $t4, 368
	srai.d	$s1, $t8, 31
	xor	$s5, $t8, $s1
	sub.d	$s1, $s5, $s1
	or	$t5, $t5, $t3
	st.d	$t5, $t4, 368
	slti	$t5, $t8, 0
	sub.d	$t8, $zero, $s1
	masknez	$s1, $s1, $t5
	maskeqz	$t5, $t8, $t5
	or	$t5, $t5, $s1
	slli.d	$t8, $a6, 2
	stx.w	$t5, $a4, $t8
	stx.w	$s6, $a5, $t8
	addi.w	$a6, $a6, 1
	addi.d	$s6, $zero, -1
	ori	$t5, $zero, 2
	b	.LBB11_29
.LBB11_36:                              # %.preheader330.preheader
	move	$a1, $zero
	lu12i.w	$a0, 3
	ori	$t7, $a0, 912
	add.d	$fp, $a2, $t7
	ori	$t4, $a0, 976
	add.d	$s0, $a2, $t4
	ori	$a3, $a0, 1040
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	add.d	$s1, $a2, $a3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$s2, $a2, $a3
	ori	$t8, $a0, 1168
	add.d	$s3, $a2, $t8
	ori	$t6, $a0, 1232
	add.d	$s4, $a2, $t6
	ori	$t0, $a0, 1296
	add.d	$s5, $a2, $t0
	pcalau12i	$a3, %pc_hi20(.LCPI11_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI11_0)
	pcalau12i	$a3, %pc_hi20(.LCPI11_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI11_1)
	pcalau12i	$a3, %pc_hi20(.LCPI11_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI11_2)
	ori	$s6, $zero, 1
	vrepli.w	$vr3, 32
	vrepli.w	$vr4, 255
	.p2align	4, , 16
.LBB11_37:                              # %.preheader330
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$s7, $a1, 2
	addi.d	$ra, $s7, 8
	add.d	$a6, $a7, $ra
	addi.d	$s8, $s7, 4
	alsl.d	$a5, $a1, $a7, 2
	vldx	$vr5, $a7, $s7
	vld	$vr6, $a5, 128
	vld	$vr7, $a5, 64
	vld	$vr8, $a5, 192
	add.d	$t1, $a7, $s8
	vsub.w	$vr9, $vr5, $vr6
	vsrai.w	$vr10, $vr7, 1
	vsub.w	$vr10, $vr10, $vr8
	vadd.w	$vr5, $vr6, $vr5
	vsrai.w	$vr6, $vr8, 1
	vadd.w	$vr6, $vr6, $vr7
	vadd.w	$vr7, $vr6, $vr5
	vpickve2gr.w	$a1, $vr7, 0
	vstelm.w	$vr7, $a5, 0, 0
	vstelm.w	$vr7, $t1, 0, 1
	vpickve2gr.w	$a3, $vr7, 2
	vstelm.w	$vr7, $a6, 0, 2
	vsub.w	$vr5, $vr5, $vr6
	vst	$vr5, $a5, 192
	vadd.w	$vr5, $vr10, $vr9
	vst	$vr5, $a5, 64
	vsub.w	$vr5, $vr9, $vr10
	vst	$vr5, $a5, 128
	add.d	$a4, $a3, $a1
	sub.d	$a1, $a1, $a3
	vreplvei.w	$vr5, $vr7, 3
	vpackod.w	$vr5, $vr7, $vr5
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a1, 2
	vinsgr2vr.w	$vr5, $a4, 3
	vori.b	$vr6, $vr3, 0
	vextrins.w	$vr6, $vr7, 1
	vori.b	$vr8, $vr0, 0
	vshuf.w	$vr8, $vr7, $vr6
	vadd.w	$vr6, $vr5, $vr8
	vsub.w	$vr5, $vr5, $vr8
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr5, $vr6
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr6
	vadd.w	$vr5, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	vstx	$vr5, $a7, $s7
	ldx.w	$a1, $fp, $s7
	ldx.w	$a3, $fp, $ra
	addi.d	$a4, $s7, 12
	ldx.w	$t2, $fp, $a4
	ldx.w	$t3, $fp, $s8
	add.d	$a0, $a3, $a1
	sub.d	$a1, $a1, $a3
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a1, 2
	vinsgr2vr.w	$vr5, $a0, 3
	vori.b	$vr6, $vr3, 0
	vinsgr2vr.w	$vr6, $t3, 0
	vinsgr2vr.w	$vr6, $t2, 1
	vadd.w	$vr7, $vr5, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr7
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr7
	vadd.w	$vr5, $vr6, $vr8
	vsub.w	$vr6, $vr7, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	ldx.w	$a0, $s0, $s7
	ldx.w	$a1, $s0, $ra
	vstx	$vr5, $fp, $s7
	ldx.w	$a3, $s0, $a4
	ldx.w	$t2, $s0, $s8
	add.d	$t3, $a1, $a0
	sub.d	$a0, $a0, $a1
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $t2, 1
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a0, 2
	vinsgr2vr.w	$vr5, $t3, 3
	vori.b	$vr6, $vr3, 0
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr6, $a3, 1
	vadd.w	$vr7, $vr5, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr7
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr7
	vadd.w	$vr5, $vr6, $vr8
	vsub.w	$vr6, $vr7, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	ldx.w	$a0, $s1, $s7
	ldx.w	$a1, $s1, $ra
	vstx	$vr5, $s0, $s7
	ldx.w	$a3, $s1, $a4
	ldx.w	$t2, $s1, $s8
	add.d	$t3, $a1, $a0
	sub.d	$a0, $a0, $a1
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $t2, 1
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a0, 2
	vinsgr2vr.w	$vr5, $t3, 3
	vori.b	$vr6, $vr3, 0
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr6, $a3, 1
	vadd.w	$vr7, $vr5, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr7
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr7
	vadd.w	$vr5, $vr6, $vr8
	vsub.w	$vr6, $vr7, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	vld	$vr6, $a5, 256
	vld	$vr7, $a5, 384
	vld	$vr8, $a5, 320
	vld	$vr9, $a5, 448
	vstx	$vr5, $s1, $s7
	vsub.w	$vr5, $vr6, $vr7
	vsrai.w	$vr10, $vr8, 1
	vsub.w	$vr10, $vr10, $vr9
	vadd.w	$vr6, $vr7, $vr6
	vsrai.w	$vr7, $vr9, 1
	vadd.w	$vr7, $vr7, $vr8
	vadd.w	$vr8, $vr7, $vr6
	vstelm.w	$vr8, $a5, 256, 0
	vstelm.w	$vr8, $t1, 256, 1
	vstelm.w	$vr8, $a6, 256, 2
	vsub.w	$vr6, $vr6, $vr7
	vst	$vr6, $a5, 448
	vadd.w	$vr6, $vr10, $vr5
	vst	$vr6, $a5, 320
	ldx.w	$a0, $s2, $s7
	ldx.w	$a1, $s2, $ra
	vsub.w	$vr5, $vr5, $vr10
	vst	$vr5, $a5, 384
	ldx.w	$a3, $s2, $s8
	add.d	$a5, $a1, $a0
	sub.d	$a0, $a0, $a1
	vreplvei.w	$vr5, $vr8, 3
	vinsgr2vr.w	$vr5, $a3, 1
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a0, 2
	vinsgr2vr.w	$vr5, $a5, 3
	vori.b	$vr6, $vr3, 0
	vinsgr2vr.w	$vr6, $a3, 0
	vori.b	$vr7, $vr0, 0
	vshuf.w	$vr7, $vr8, $vr6
	vadd.w	$vr6, $vr5, $vr7
	vsub.w	$vr5, $vr5, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr5, $vr6
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr6
	vadd.w	$vr5, $vr7, $vr8
	vsub.w	$vr6, $vr6, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	ldx.w	$a0, $s3, $s7
	ldx.w	$a1, $s3, $ra
	vstx	$vr5, $s2, $s7
	ldx.w	$a3, $s3, $a4
	ldx.w	$a5, $s3, $s8
	add.d	$a6, $a1, $a0
	sub.d	$a0, $a0, $a1
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $a5, 1
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a0, 2
	vinsgr2vr.w	$vr5, $a6, 3
	vori.b	$vr6, $vr3, 0
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a3, 1
	vadd.w	$vr7, $vr5, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr7
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr7
	vadd.w	$vr5, $vr6, $vr8
	vsub.w	$vr6, $vr7, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	ldx.w	$a0, $s4, $s7
	ldx.w	$a1, $s4, $ra
	vstx	$vr5, $s3, $s7
	ldx.w	$a3, $s4, $a4
	ldx.w	$a5, $s4, $s8
	add.d	$a6, $a1, $a0
	sub.d	$a0, $a0, $a1
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $a5, 1
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a0, 2
	vinsgr2vr.w	$vr5, $a6, 3
	vori.b	$vr6, $vr3, 0
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a3, 1
	vadd.w	$vr7, $vr5, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr7
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr7
	vadd.w	$vr5, $vr6, $vr8
	vsub.w	$vr6, $vr7, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	ldx.w	$a0, $s5, $s7
	ldx.w	$a1, $s5, $ra
	vstx	$vr5, $s4, $s7
	ldx.w	$a3, $s5, $a4
	ldx.w	$a4, $s5, $s8
	add.d	$a5, $a1, $a0
	sub.d	$a0, $a0, $a1
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $a4, 1
	vsrai.w	$vr5, $vr5, 1
	vinsgr2vr.w	$vr5, $a0, 2
	vinsgr2vr.w	$vr5, $a5, 3
	vori.b	$vr6, $vr3, 0
	vinsgr2vr.w	$vr6, $a4, 0
	vinsgr2vr.w	$vr6, $a3, 1
	vadd.w	$vr7, $vr5, $vr6
	vsub.w	$vr5, $vr5, $vr6
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr7
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr5, $vr7
	vadd.w	$vr5, $vr6, $vr8
	vsub.w	$vr6, $vr7, $vr8
	vshuf4i.d	$vr5, $vr6, 12
	vsrai.w	$vr5, $vr5, 6
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr4
	vstx	$vr5, $s5, $s7
	andi	$a0, $s6, 1
	ori	$a1, $zero, 4
	move	$s6, $zero
	bnez	$a0, .LBB11_37
# %bb.38:                               # %.preheader325
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a1, $a2, 188
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a4, $a0, $a3
	ld.w	$fp, $a2, 184
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.h	$a0, $a2, $a0
	slli.d	$a7, $a1, 3
	ldx.d	$t2, $a4, $a7
	alsl.d	$a6, $a1, $a4, 3
	slli.d	$a5, $fp, 1
	stx.h	$a0, $t2, $a5
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.h	$a0, $a2, $a0
	ld.d	$t1, $a6, 32
	alsl.d	$a1, $fp, $t2, 1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$a3, $a2, $a3
	st.h	$a0, $a1, 8
	alsl.d	$a0, $fp, $t1, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$t3, $a2, $a1
	stx.h	$a3, $t1, $a5
	ld.d	$a1, $a6, 8
	ldx.h	$a3, $a2, $t7
	st.h	$t3, $a0, 8
	ldx.h	$a0, $a2, $t8
	alsl.d	$t3, $fp, $a1, 1
	stx.h	$a3, $a1, $a5
	ld.d	$t7, $a6, 40
	st.h	$a0, $t3, 8
	lu12i.w	$s0, 3
	ori	$a0, $s0, 928
	ldx.h	$a0, $a2, $a0
	alsl.d	$a3, $fp, $t7, 1
	ori	$t3, $s0, 1184
	ldx.h	$t8, $a2, $t3
	stx.h	$a0, $t7, $a5
	ld.d	$t3, $a6, 16
	ldx.h	$a0, $a2, $t4
	st.h	$t8, $a3, 8
	ldx.h	$a3, $a2, $t6
	alsl.d	$t6, $fp, $t3, 1
	stx.h	$a0, $t3, $a5
	ld.d	$t4, $a6, 48
	st.h	$a3, $t6, 8
	ori	$a0, $s0, 992
	ldx.h	$a0, $a2, $a0
	alsl.d	$a3, $fp, $t4, 1
	ori	$t6, $s0, 1248
	ldx.h	$t8, $a2, $t6
	stx.h	$a0, $t4, $a5
	ld.d	$t6, $a6, 24
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ldx.h	$a0, $a2, $a0
	st.h	$t8, $a3, 8
	ldx.h	$a3, $a2, $t0
	alsl.d	$t0, $fp, $t6, 1
	stx.h	$a0, $t6, $a5
	ld.d	$a0, $a6, 56
	st.h	$a3, $t0, 8
	ori	$a3, $s0, 1056
	ldx.h	$a3, $a2, $a3
	alsl.d	$t0, $fp, $a0, 1
	ori	$t8, $s0, 1312
	ldx.h	$t8, $a2, $t8
	stx.h	$a3, $a0, $a5
	ori	$a3, $s0, 852
	ldx.h	$a3, $a2, $a3
	st.h	$t8, $t0, 8
	addi.d	$t0, $a5, 2
	add.d	$t8, $t2, $t0
	stx.h	$a3, $t2, $t0
	ori	$a3, $s0, 1108
	ldx.h	$a3, $a2, $a3
	ori	$t2, $s0, 868
	ldx.h	$t2, $a2, $t2
	ori	$fp, $s0, 1124
	ldx.h	$fp, $a2, $fp
	st.h	$a3, $t8, 8
	add.d	$a3, $t1, $t0
	stx.h	$t2, $t1, $t0
	st.h	$fp, $a3, 8
	ori	$a3, $s0, 916
	ldx.h	$a3, $a2, $a3
	add.d	$t1, $a1, $t0
	ori	$t2, $s0, 1172
	ldx.h	$t2, $a2, $t2
	ori	$t8, $s0, 932
	ldx.h	$t8, $a2, $t8
	stx.h	$a3, $a1, $t0
	st.h	$t2, $t1, 8
	add.d	$a1, $t7, $t0
	stx.h	$t8, $t7, $t0
	ori	$a3, $s0, 1188
	ldx.h	$a3, $a2, $a3
	ori	$t1, $s0, 980
	ldx.h	$t1, $a2, $t1
	ori	$t2, $s0, 1236
	ldx.h	$t2, $a2, $t2
	st.h	$a3, $a1, 8
	add.d	$a1, $t3, $t0
	stx.h	$t1, $t3, $t0
	st.h	$t2, $a1, 8
	ori	$a1, $s0, 996
	ldx.h	$a1, $a2, $a1
	add.d	$a3, $t4, $t0
	ori	$t1, $s0, 1252
	ldx.h	$t1, $a2, $t1
	ori	$t2, $s0, 1044
	ldx.h	$t2, $a2, $t2
	stx.h	$a1, $t4, $t0
	st.h	$t1, $a3, 8
	add.d	$a1, $t6, $t0
	stx.h	$t2, $t6, $t0
	ori	$a3, $s0, 1300
	ldx.h	$a3, $a2, $a3
	ori	$t1, $s0, 1060
	ldx.h	$t1, $a2, $t1
	ori	$t2, $s0, 1316
	ldx.h	$t2, $a2, $t2
	st.h	$a3, $a1, 8
	add.d	$a1, $a0, $t0
	stx.h	$t1, $a0, $t0
	st.h	$t2, $a1, 8
	ori	$a0, $s0, 856
	ldx.h	$a1, $a2, $a0
	ldx.d	$a0, $a4, $a7
	addi.d	$t0, $a5, 4
	ori	$a3, $s0, 1112
	ldx.h	$a3, $a2, $a3
	add.d	$a4, $a0, $t0
	stx.h	$a1, $a0, $t0
	ld.d	$a7, $a6, 32
	st.h	$a3, $a4, 8
	ori	$a1, $s0, 872
	ldx.h	$a3, $a2, $a1
	add.d	$a4, $a7, $t0
	ori	$a1, $s0, 1128
	ldx.h	$t1, $a2, $a1
	ori	$t2, $s0, 920
	ld.d	$a1, $a6, 8
	ldx.h	$t2, $a2, $t2
	stx.h	$a3, $a7, $t0
	st.h	$t1, $a4, 8
	add.d	$a3, $a1, $t0
	stx.h	$t2, $a1, $t0
	ori	$a4, $s0, 1176
	ldx.h	$t1, $a2, $a4
	ori	$a4, $s0, 936
	ldx.h	$t2, $a2, $a4
	ld.d	$a4, $a6, 40
	ori	$t3, $s0, 1192
	ldx.h	$t3, $a2, $t3
	st.h	$t1, $a3, 8
	add.d	$a3, $a4, $t0
	stx.h	$t2, $a4, $t0
	st.h	$t3, $a3, 8
	ori	$a3, $s0, 984
	ld.d	$t3, $a6, 16
	ldx.h	$a3, $a2, $a3
	ori	$t1, $s0, 1240
	ldx.h	$t2, $a2, $t1
	add.d	$t4, $t3, $t0
	stx.h	$a3, $t3, $t0
	ld.d	$t1, $a6, 48
	st.h	$t2, $t4, 8
	ori	$a3, $s0, 1000
	ldx.h	$a3, $a2, $a3
	add.d	$t4, $t1, $t0
	ori	$t2, $s0, 1256
	ldx.h	$t6, $a2, $t2
	ori	$t7, $s0, 1048
	ld.d	$t2, $a6, 24
	ldx.h	$t7, $a2, $t7
	stx.h	$a3, $t1, $t0
	st.h	$t6, $t4, 8
	add.d	$a3, $t2, $t0
	stx.h	$t7, $t2, $t0
	ori	$t4, $s0, 1304
	ldx.h	$t4, $a2, $t4
	ori	$t6, $s0, 1064
	ldx.h	$t6, $a2, $t6
	ld.d	$a6, $a6, 56
	ori	$t7, $s0, 1320
	ldx.h	$t7, $a2, $t7
	st.h	$t4, $a3, 8
	add.d	$a3, $a6, $t0
	stx.h	$t6, $a6, $t0
	st.h	$t7, $a3, 8
	ori	$a3, $s0, 860
	ldx.h	$a3, $a2, $a3
	addi.d	$a5, $a5, 6
	ori	$t0, $s0, 1116
	ldx.h	$t0, $a2, $t0
	add.d	$t4, $a0, $a5
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$t6, $a2, $t6
	stx.h	$a3, $a0, $a5
	st.h	$t0, $t4, 8
	add.d	$a0, $a7, $a5
	stx.h	$t6, $a7, $a5
	ori	$a3, $s0, 1132
	ldx.h	$a3, $a2, $a3
	ori	$a7, $s0, 924
	ldx.h	$a7, $a2, $a7
	ori	$t0, $s0, 1180
	ldx.h	$t0, $a2, $t0
	st.h	$a3, $a0, 8
	add.d	$a0, $a1, $a5
	stx.h	$a7, $a1, $a5
	st.h	$t0, $a0, 8
	ori	$a0, $s0, 940
	ldx.h	$a0, $a2, $a0
	add.d	$a1, $a4, $a5
	ori	$a3, $s0, 1196
	ldx.h	$a3, $a2, $a3
	ori	$a7, $s0, 988
	ldx.h	$a7, $a2, $a7
	stx.h	$a0, $a4, $a5
	st.h	$a3, $a1, 8
	add.d	$a0, $t3, $a5
	stx.h	$a7, $t3, $a5
	ori	$a1, $s0, 1244
	ldx.h	$a1, $a2, $a1
	ori	$a3, $s0, 1004
	ldx.h	$a3, $a2, $a3
	ori	$a4, $s0, 1260
	ldx.h	$a4, $a2, $a4
	st.h	$a1, $a0, 8
	add.d	$a0, $t1, $a5
	stx.h	$a3, $t1, $a5
	st.h	$a4, $a0, 8
	ori	$a0, $s0, 1052
	ldx.h	$a0, $a2, $a0
	add.d	$a1, $t2, $a5
	ori	$a3, $s0, 1308
	ldx.h	$a3, $a2, $a3
	ori	$a4, $s0, 1068
	ldx.h	$a4, $a2, $a4
	stx.h	$a0, $t2, $a5
	st.h	$a3, $a1, 8
	add.d	$a1, $a6, $a5
	stx.h	$a4, $a6, $a5
	ori	$a0, $s0, 1324
	ldx.h	$a2, $a2, $a0
	addi.d	$a0, $t5, -2
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
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
	.comm	dct_luma_16x16.M1,1024,8
	.type	dct_luma_16x16.M4,@object       # @dct_luma_16x16.M4
	.local	dct_luma_16x16.M4
	.comm	dct_luma_16x16.M4,64,32
	.type	dct_luma_16x16.M0,@object       # @dct_luma_16x16.M0
	.local	dct_luma_16x16.M0
	.comm	dct_luma_16x16.M0,1024,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	dct_luma.m4,@object             # @dct_luma.m4
	.local	dct_luma.m4
	.comm	dct_luma.m4,64,32
	.type	dct_chroma.m5,@object           # @dct_chroma.m5
	.local	dct_chroma.m5
	.comm	dct_chroma.m5,16,16
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
	.comm	dct_chroma.m3,64,32
	.type	dct_chroma.m4,@object           # @dct_chroma.m4
	.local	dct_chroma.m4
	.comm	dct_chroma.m4,64,32
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
