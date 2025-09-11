	.file	"block.c"
	.text
	.globl	intrapred                       # -- Begin function intrapred
	.p2align	5
	.type	intrapred,@function
intrapred:                              # @intrapred
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ldptr.d	$a1, $s1, 5544
	ld.d	$a0, $a0, 0
	lu12i.w	$a2, 77
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ori	$a2, $a2, 1528
	ldx.d	$s2, $a0, $a2
	ld.w	$s6, $s1, 4
	ldx.bu	$s5, $a1, $a3
	pcalau12i	$s3, %pc_hi20(getNeighbour)
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.w	$s7, $s0, -1
	addi.d	$a4, $sp, 168
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $fp
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$s4, $fp, 1
	addi.d	$a4, $sp, 192
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a2, $fp, 2
	addi.d	$a4, $sp, 216
	move	$a0, $s6
	move	$a1, $s7
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a2, $fp, 3
	addi.d	$a4, $sp, 240
	move	$a0, $s6
	move	$a1, $s7
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.w	$s8, $fp, -1
	addi.d	$a4, $sp, 144
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s8
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.w	$a1, $s0, 4
	addi.d	$a4, $sp, 120
	move	$a0, $s6
	move	$a2, $s8
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 96
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 120
	beqz	$a0, .LBB0_2
# %bb.1:
	addi.d	$a0, $s0, -4
	sltu	$a0, $zero, $a0
	move	$a1, $fp
	bstrins.d	$a1, $zero, 3, 3
	addi.d	$a1, $a1, -4
	sltu	$a1, $zero, $a1
	or	$a3, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	move	$a3, $zero
.LBB0_3:
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 1148
	st.w	$a3, $sp, 120
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_12
# %bb.4:                                # %.preheader589
	ld.w	$a0, $sp, 168
	beqz	$a0, .LBB0_14
# %bb.5:
	ld.w	$a0, $sp, 172
	ld.d	$a1, $s1, 16
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ld.w	$a1, $sp, 192
	beqz	$a1, .LBB0_15
.LBB0_6:
	ld.w	$a1, $sp, 196
	ld.d	$a2, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a2, $a1
	ld.w	$a1, $sp, 216
	beqz	$a1, .LBB0_16
.LBB0_7:
	ld.w	$a1, $sp, 220
	ld.d	$a4, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $a4, $a1
	ld.w	$a1, $sp, 240
	beqz	$a1, .LBB0_17
.LBB0_8:
	ld.w	$a1, $sp, 244
	ld.d	$a5, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a5, $a1
	ld.w	$a5, $sp, 144
	and	$a2, $a2, $a0
	beqz	$a5, .LBB0_18
.LBB0_9:
	ld.w	$a0, $sp, 148
	ld.d	$a5, $s1, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a5, $a0
	and	$a2, $a4, $a2
	beqz	$a3, .LBB0_19
.LBB0_10:
	ld.w	$a3, $sp, 124
	ld.d	$a4, $s1, 16
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 96
	and	$a1, $a1, $a2
	beqz	$a4, .LBB0_20
.LBB0_11:
	ld.w	$a2, $sp, 100
	ld.d	$a4, $s1, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a4, $a2
	bnez	$a0, .LBB0_13
	b	.LBB0_21
.LBB0_12:
	ld.w	$a1, $sp, 168
	ld.w	$a0, $sp, 144
	ld.w	$a2, $sp, 96
	beqz	$a0, .LBB0_21
.LBB0_13:
	ld.w	$a4, $sp, 164
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s2, $a4
	ld.w	$a5, $sp, 160
	alsl.d	$a6, $a5, $a4, 1
	slli.d	$a5, $a5, 1
	ldx.hu	$t1, $a4, $a5
	ld.hu	$t8, $a6, 2
	ld.hu	$t7, $a6, 4
	ld.hu	$s6, $a6, 6
	b	.LBB0_22
.LBB0_14:
	move	$a0, $zero
	ld.w	$a1, $sp, 192
	bnez	$a1, .LBB0_6
.LBB0_15:
	move	$a2, $zero
	ld.w	$a1, $sp, 216
	bnez	$a1, .LBB0_7
.LBB0_16:
	move	$a4, $zero
	ld.w	$a1, $sp, 240
	bnez	$a1, .LBB0_8
.LBB0_17:
	move	$a1, $zero
	ld.w	$a5, $sp, 144
	and	$a2, $a2, $a0
	bnez	$a5, .LBB0_9
.LBB0_18:
	move	$a0, $zero
	and	$a2, $a4, $a2
	bnez	$a3, .LBB0_10
.LBB0_19:
	move	$a3, $zero
	ld.w	$a4, $sp, 96
	and	$a1, $a1, $a2
	bnez	$a4, .LBB0_11
.LBB0_20:
	move	$a2, $zero
	bnez	$a0, .LBB0_13
.LBB0_21:
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1796
	ldx.h	$s6, $s1, $a4
	move	$t7, $s6
	move	$t8, $s6
	move	$t1, $s6
.LBB0_22:
	move	$s3, $s6
	move	$t4, $s6
	move	$t3, $s6
	move	$s8, $s6
	beqz	$a3, .LBB0_24
# %bb.23:
	ld.w	$a3, $sp, 140
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a4, $sp, 136
	alsl.d	$a5, $a4, $a3, 1
	slli.d	$a4, $a4, 1
	ldx.hu	$s3, $a3, $a4
	ld.hu	$t4, $a5, 2
	ld.hu	$t3, $a5, 4
	ld.hu	$s8, $a5, 6
.LBB0_24:
	beqz	$a1, .LBB0_31
# %bb.25:
	ld.w	$a3, $sp, 188
	ld.w	$a4, $sp, 184
	ld.w	$a5, $sp, 212
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 208
	ldx.d	$a5, $s2, $a5
	ldx.hu	$s7, $a3, $a4
	ld.w	$a3, $sp, 236
	slli.d	$a4, $a6, 1
	ldx.hu	$t0, $a5, $a4
	ld.w	$a4, $sp, 260
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a5, $sp, 232
	slli.d	$a4, $a4, 3
	ld.w	$a6, $sp, 256
	ldx.d	$a4, $s2, $a4
	slli.d	$a5, $a5, 1
	ldx.hu	$a7, $a3, $a5
	slli.d	$a3, $a6, 1
	ldx.hu	$a6, $a4, $a3
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_32
.LBB0_26:
	ld.w	$a3, $sp, 116
	slli.d	$a3, $a3, 3
	ld.w	$a4, $sp, 112
	ldx.d	$a3, $s2, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a3, $a4
	ori	$a3, $zero, 8
	bltu	$a3, $s5, .LBB0_33
.LBB0_27:
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$t0, $s0, 1
	addi.w	$t3, $s0, 2
	addi.w	$t5, $s0, 3
	addi.w	$ra, $s4, 0
	addi.w	$t4, $a5, 0
	addi.w	$t6, $t2, 0
	slli.d	$a3, $s5, 2
	pcalau12i	$a4, %pc_hi20(.LJTI0_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI0_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB0_28:
	bnez	$a0, .LBB0_30
# %bb.29:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
.LBB0_30:                               # %.preheader585
	ld.w	$a0, $sp, 164
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $sp, 160
	addi.d	$a2, $s1, 104
	alsl.d	$a3, $a1, $a0, 1
	slli.d	$a1, $a1, 1
	ldx.h	$a4, $a0, $a1
	slli.d	$a5, $fp, 5
	add.d	$a5, $a2, $a5
	slli.d	$a6, $s0, 1
	stx.h	$a4, $a5, $a6
	ld.h	$a4, $a3, 2
	addi.d	$a7, $a6, 2
	stx.h	$a4, $a5, $a7
	ld.h	$a4, $a3, 4
	addi.d	$t0, $a6, 4
	stx.h	$a4, $a5, $t0
	ld.h	$a4, $a3, 6
	addi.d	$t1, $a6, 6
	stx.h	$a4, $a5, $t1
	ldx.h	$a4, $a0, $a1
	slli.d	$a5, $s4, 5
	add.d	$a5, $a2, $a5
	stx.h	$a4, $a5, $a6
	ld.h	$a4, $a3, 2
	stx.h	$a4, $a5, $a7
	ld.h	$a4, $a3, 4
	stx.h	$a4, $a5, $t0
	ld.h	$a4, $a3, 6
	stx.h	$a4, $a5, $t1
	ldx.h	$a4, $a0, $a1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 5
	add.d	$a5, $a2, $a5
	stx.h	$a4, $a5, $a6
	ld.h	$a4, $a3, 2
	stx.h	$a4, $a5, $a7
	ld.h	$a4, $a3, 4
	stx.h	$a4, $a5, $t0
	ld.h	$a4, $a3, 6
	stx.h	$a4, $a5, $t1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $t2, 5
	add.d	$a1, $a2, $a1
	stx.h	$a0, $a1, $a6
	ld.h	$a0, $a3, 2
	stx.h	$a0, $a1, $a7
	ld.h	$a0, $a3, 4
	stx.h	$a0, $a1, $t0
	ld.h	$a2, $a3, 6
	move	$a0, $zero
	stx.h	$a2, $a1, $t1
	b	.LBB0_73
.LBB0_31:
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1796
	ldx.h	$s7, $s1, $a3
	move	$t0, $s7
	move	$a7, $s7
	move	$a6, $s7
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	bnez	$a2, .LBB0_26
.LBB0_32:
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1796
	ldx.h	$a4, $s1, $a3
	ori	$a3, $zero, 8
	bgeu	$a3, $s5, .LBB0_27
.LBB0_33:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_73
.LBB0_34:
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_37
# %bb.35:
	beqz	$a1, .LBB0_37
# %bb.36:
	bnez	$a2, .LBB0_38
.LBB0_37:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $t7
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $t8
	st.d	$ra, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $t4
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t0
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	move	$s8, $a6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a6, $s8
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	move	$t0, $s4
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	move	$t4, $s2
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	move	$t8, $s5
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	move	$t7, $s3
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
.LBB0_38:
	move	$a0, $zero
	bstrpick.d	$a1, $a6, 15, 0
	bstrpick.d	$a2, $a7, 15, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 15, 0
	addi.d	$a4, $a3, 2
	add.d	$a1, $a4, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	addi.d	$a5, $s1, 104
	slli.d	$a6, $t6, 5
	add.d	$a6, $a5, $a6
	slli.d	$a7, $s0, 1
	stx.h	$a1, $a6, $a7
	bstrpick.d	$a1, $s7, 15, 0
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $t0, 1
	stx.h	$a2, $a6, $a3
	slli.d	$t0, $t4, 5
	add.d	$t0, $a5, $t0
	stx.h	$a2, $t0, $a7
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 15, 0
	alsl.d	$a4, $a1, $a4, 1
	add.d	$a4, $a4, $a2
	srli.d	$a4, $a4, 2
	slli.d	$t1, $t3, 1
	stx.h	$a4, $a6, $t1
	stx.h	$a4, $t0, $a3
	slli.d	$t2, $ra, 5
	add.d	$t2, $a5, $t2
	stx.h	$a4, $t2, $a7
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 15, 0
	addi.d	$t3, $a4, 2
	add.d	$a1, $t3, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	slli.d	$t4, $t5, 1
	stx.h	$a1, $a6, $t4
	stx.h	$a1, $t0, $t1
	stx.h	$a1, $t2, $a3
	slli.d	$a6, $fp, 5
	add.d	$a5, $a5, $a6
	stx.h	$a1, $a5, $a7
	bstrpick.d	$a1, $t8, 15, 0
	addi.d	$a6, $a1, 2
	alsl.d	$a4, $a4, $a6, 1
	add.d	$a2, $a4, $a2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t0, $t4
	stx.h	$a2, $t2, $t1
	stx.h	$a2, $a5, $a3
	bstrpick.d	$a2, $t7, 15, 0
	add.d	$a3, $t3, $a2
	alsl.d	$a1, $a1, $a3, 1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t2, $t4
	stx.h	$a1, $a5, $t1
	bstrpick.d	$a1, $s6, 15, 0
	add.d	$a1, $a6, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a5, $t4
	b	.LBB0_73
.LBB0_39:
	move	$t0, $a6
	beqz	$a0, .LBB0_64
# %bb.40:
	beqz	$a1, .LBB0_64
# %bb.41:
	bstrpick.d	$a0, $t1, 15, 0
	bstrpick.d	$a1, $t8, 15, 0
	bstrpick.d	$a2, $t7, 15, 0
	bstrpick.d	$a3, $s6, 15, 0
	bstrpick.d	$a4, $s7, 15, 0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 15, 0
	bstrpick.d	$a6, $a7, 15, 0
	bstrpick.d	$a7, $t0, 15, 0
	add.d	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 4
	bstrpick.d	$a1, $a0, 31, 3
	b	.LBB0_72
.LBB0_42:
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	bnez	$a0, .LBB0_44
# %bb.43:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	move	$s4, $t7
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $t8
	st.d	$ra, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $t4
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	move	$s5, $t1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t1, $s5
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	move	$t4, $s2
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	move	$t8, $s7
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
.LBB0_44:
	move	$a0, $zero
	bstrpick.d	$a1, $t1, 15, 0
	bstrpick.d	$a2, $t7, 15, 0
	bstrpick.d	$a3, $t8, 15, 0
	addi.d	$a4, $a2, 2
	add.d	$a1, $a4, $a1
	alsl.d	$a1, $a3, $a1, 1
	srli.d	$a1, $a1, 2
	addi.d	$a5, $s1, 104
	slli.d	$a6, $fp, 5
	add.d	$a6, $a5, $a6
	slli.d	$a7, $s0, 1
	stx.h	$a1, $a6, $a7
	bstrpick.d	$a1, $s6, 15, 0
	addi.d	$t0, $a1, 2
	add.d	$a3, $t0, $a3
	alsl.d	$a2, $a2, $a3, 1
	srli.d	$a2, $a2, 2
	slli.d	$a3, $ra, 5
	add.d	$a3, $a5, $a3
	stx.h	$a2, $a3, $a7
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 1
	stx.h	$a2, $a6, $t1
	bstrpick.d	$a2, $s3, 15, 0
	alsl.d	$a1, $a1, $a4, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	slli.d	$a4, $t4, 5
	add.d	$a4, $a5, $a4
	stx.h	$a1, $a4, $a7
	stx.h	$a1, $a3, $t1
	slli.d	$t2, $t3, 1
	stx.h	$a1, $a6, $t2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	add.d	$t0, $t0, $a1
	alsl.d	$t0, $a2, $t0, 1
	srli.d	$t0, $t0, 2
	slli.d	$t3, $t6, 5
	add.d	$a5, $a5, $t3
	stx.h	$t0, $a5, $a7
	stx.h	$t0, $a4, $t1
	stx.h	$t0, $a3, $t2
	slli.d	$a7, $t5, 1
	stx.h	$t0, $a6, $a7
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a6, $a6, 15, 0
	add.d	$a2, $a2, $a6
	alsl.d	$a2, $a1, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a5, $t1
	stx.h	$a2, $a4, $t2
	stx.h	$a2, $a3, $a7
	bstrpick.d	$a2, $s8, 15, 0
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $a6, $a1, 1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a5, $t2
	stx.h	$a1, $a4, $a7
	alsl.d	$a1, $a2, $a2, 1
	add.d	$a1, $a6, $a1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a5, $a7
	b	.LBB0_73
.LBB0_45:
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	bnez	$a0, .LBB0_47
# %bb.46:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	move	$s4, $t7
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $t8
	move	$s8, $ra
	move	$s2, $t4
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	move	$s5, $t1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t1, $s5
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	move	$t4, $s2
	move	$ra, $s8
	move	$t8, $s7
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
.LBB0_47:
	move	$a0, $zero
	bstrpick.d	$a1, $t1, 15, 0
	bstrpick.d	$a2, $t8, 15, 0
	add.d	$a3, $a2, $a1
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $s1, 104
	slli.d	$a5, $fp, 5
	add.d	$a5, $a4, $a5
	slli.d	$a6, $s0, 1
	stx.h	$a3, $a5, $a6
	bstrpick.d	$a3, $t7, 15, 0
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	slli.d	$t0, $t4, 5
	add.d	$t0, $a4, $t0
	stx.h	$a7, $t0, $a6
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 1
	stx.h	$a7, $a5, $t1
	bstrpick.d	$a7, $s6, 15, 0
	add.d	$t2, $a7, $a3
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	stx.h	$t2, $t0, $t1
	slli.d	$t3, $t3, 1
	stx.h	$t2, $a5, $t3
	bstrpick.d	$t2, $s3, 15, 0
	add.d	$t4, $a7, $t2
	addi.d	$t4, $t4, 1
	srli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 1
	stx.h	$t4, $a5, $t5
	stx.h	$t4, $t0, $t3
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 15, 0
	add.d	$t4, $t2, $a5
	addi.d	$t4, $t4, 1
	srli.d	$t4, $t4, 1
	stx.h	$t4, $t0, $t5
	addi.d	$t0, $a3, 2
	add.d	$a1, $t0, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	slli.d	$t4, $ra, 5
	add.d	$t4, $a4, $t4
	stx.h	$a1, $t4, $a6
	addi.d	$a1, $a7, 2
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $a3, $a2, 1
	srli.d	$a2, $a2, 2
	slli.d	$a3, $t6, 5
	add.d	$a3, $a4, $a3
	stx.h	$a2, $a3, $a6
	stx.h	$a2, $t4, $t1
	alsl.d	$a2, $a7, $t0, 1
	add.d	$a2, $a2, $t2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a3, $t1
	stx.h	$a2, $t4, $t3
	alsl.d	$a1, $t2, $a1, 1
	add.d	$a1, $a1, $a5
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $t3
	stx.h	$a1, $t4, $t5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	alsl.d	$a2, $a5, $t2, 1
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $t5
	b	.LBB0_73
.LBB0_48:
	bnez	$a1, .LBB0_50
# %bb.49:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
.LBB0_50:                               # %.preheader587
	ld.w	$a0, $sp, 188
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 184
	ldx.d	$a3, $s2, $a0
	addi.d	$a0, $s1, 104
	slli.d	$a4, $a1, 1
	ldx.h	$a5, $a3, $a4
	slli.d	$a1, $fp, 5
	add.d	$a6, $a0, $a1
	slli.d	$a1, $s0, 1
	stx.h	$a5, $a6, $a1
	addi.d	$a2, $a1, 2
	stx.h	$a5, $a6, $a2
	ldx.h	$a5, $a3, $a4
	ld.w	$a4, $sp, 212
	addi.d	$a3, $a1, 4
	stx.h	$a5, $a6, $a3
	slli.d	$a4, $a4, 3
	ld.w	$a7, $sp, 208
	ldx.d	$t0, $s2, $a4
	addi.d	$a4, $a1, 6
	stx.h	$a5, $a6, $a4
	slli.d	$a5, $a7, 1
	ldx.h	$a6, $t0, $a5
	slli.d	$a7, $s4, 5
	add.d	$a7, $a0, $a7
	ld.w	$t1, $sp, 236
	stx.h	$a6, $a7, $a1
	stx.h	$a6, $a7, $a2
	ldx.h	$a5, $t0, $a5
	slli.d	$a6, $t1, 3
	ld.w	$t0, $sp, 232
	ldx.d	$a6, $s2, $a6
	stx.h	$a5, $a7, $a3
	stx.h	$a5, $a7, $a4
	slli.d	$a5, $t0, 1
	ldx.h	$a7, $a6, $a5
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t0, $t0, 5
	add.d	$t0, $a0, $t0
	ld.w	$t1, $sp, 260
	stx.h	$a7, $t0, $a1
	stx.h	$a7, $t0, $a2
	ldx.h	$a5, $a6, $a5
	slli.d	$a6, $t1, 3
	ld.w	$a7, $sp, 256
	ldx.d	$a6, $s2, $a6
	stx.h	$a5, $t0, $a3
	stx.h	$a5, $t0, $a4
	slli.d	$a5, $a7, 1
	ldx.h	$a7, $a6, $a5
	slli.d	$t0, $t2, 5
	add.d	$t0, $a0, $t0
	stx.h	$a7, $t0, $a1
	stx.h	$a7, $t0, $a2
	ldx.h	$a1, $a6, $a5
	move	$a0, $zero
	stx.h	$a1, $t0, $a3
	stx.h	$a1, $t0, $a4
	b	.LBB0_73
.LBB0_51:
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_54
# %bb.52:
	beqz	$a1, .LBB0_54
# %bb.53:
	bnez	$a2, .LBB0_55
.LBB0_54:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $t7
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $t8
	move	$s8, $ra
	move	$s2, $t4
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t1
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	move	$t1, $s4
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	move	$t4, $s2
	move	$ra, $s8
	move	$t8, $s5
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	move	$t7, $s3
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
.LBB0_55:
	move	$a0, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a4, $t1, 15, 0
	add.d	$a2, $a4, $a1
	addi.d	$a2, $a2, 1
	srli.d	$a5, $a2, 1
	addi.d	$a6, $s1, 104
	slli.d	$a2, $t4, 5
	add.d	$a3, $a6, $a2
	slli.d	$a7, $t0, 1
	stx.h	$a5, $a3, $a7
	slli.d	$a2, $fp, 5
	add.d	$t0, $a6, $a2
	slli.d	$a2, $s0, 1
	stx.h	$a5, $t0, $a2
	bstrpick.d	$a5, $t8, 15, 0
	add.d	$t1, $a5, $a4
	addi.d	$t1, $t1, 1
	srli.d	$t1, $t1, 1
	slli.d	$t2, $t3, 1
	stx.h	$t1, $a3, $t2
	stx.h	$t1, $t0, $a7
	bstrpick.d	$t1, $t7, 15, 0
	slli.d	$t3, $t5, 1
	bstrpick.d	$t4, $s6, 15, 0
	add.d	$t5, $t1, $t4
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	stx.h	$t5, $t0, $t3
	add.d	$t5, $t1, $a5
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	stx.h	$t5, $t0, $t2
	stx.h	$t5, $a3, $t3
	bstrpick.d	$t0, $s7, 15, 0
	addi.d	$t5, $a4, 2
	slli.d	$t6, $t6, 5
	add.d	$t6, $a6, $t6
	slli.d	$t7, $ra, 5
	add.d	$a6, $a6, $t7
	add.d	$t7, $t5, $t0
	alsl.d	$t7, $a1, $t7, 1
	srli.d	$t7, $t7, 2
	stx.h	$t7, $t6, $a7
	stx.h	$t7, $a6, $a2
	addi.d	$t7, $a5, 2
	alsl.d	$a4, $a4, $t7, 1
	add.d	$a4, $a4, $a1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $t6, $t2
	stx.h	$a4, $a6, $a7
	add.d	$a4, $t5, $t1
	alsl.d	$a4, $a5, $a4, 1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $t6, $t3
	stx.h	$a4, $a6, $t2
	add.d	$a4, $t7, $t4
	alsl.d	$a4, $t1, $a4, 1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $a6, $t3
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 15, 0
	alsl.d	$a1, $t0, $a1, 1
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $a2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	alsl.d	$a3, $a4, $t0, 1
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t6, $a2
	b	.LBB0_73
.LBB0_56:
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_59
# %bb.57:
	beqz	$a1, .LBB0_59
# %bb.58:
	bnez	$a2, .LBB0_60
.LBB0_59:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$s2, $t6
	move	$s3, $t7
	move	$s4, $t5
	move	$s5, $t8
	move	$s6, $ra
	move	$s8, $t3
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	move	$t3, $s8
	move	$ra, $s6
	move	$t8, $s5
	move	$t5, $s4
	move	$t7, $s3
	move	$t6, $s2
.LBB0_60:
	move	$a0, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a2, $s7, 15, 0
	add.d	$a3, $a2, $a1
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $s1, 104
	slli.d	$a5, $ra, 5
	add.d	$a5, $a4, $a5
	slli.d	$a6, $t3, 1
	stx.h	$a3, $a5, $a6
	slli.d	$a7, $fp, 5
	add.d	$a7, $a4, $a7
	slli.d	$t0, $s0, 1
	stx.h	$a3, $a7, $t0
	bstrpick.d	$a3, $t1, 15, 0
	addi.d	$t1, $a3, 2
	add.d	$t2, $t1, $a2
	alsl.d	$t2, $a1, $t2, 1
	srli.d	$t2, $t2, 2
	slli.d	$t3, $t5, 1
	stx.h	$t2, $a5, $t3
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t4, $t4, 1
	stx.h	$t2, $a7, $t4
	bstrpick.d	$t2, $t8, 15, 0
	add.d	$t5, $a1, $t2
	alsl.d	$a3, $a3, $t5, 1
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stx.h	$a3, $a7, $a6
	bstrpick.d	$a3, $t7, 15, 0
	add.d	$a3, $t1, $a3
	alsl.d	$a3, $t2, $a3, 1
	srli.d	$a3, $a3, 2
	stx.h	$a3, $a7, $t3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 15, 0
	add.d	$a7, $a2, $a3
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 5
	add.d	$t1, $a4, $t1
	stx.h	$a7, $t1, $a6
	stx.h	$a7, $a5, $t0
	addi.d	$a7, $a3, 2
	alsl.d	$t2, $a2, $a7, 1
	add.d	$a1, $t2, $a1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t1, $t3
	stx.h	$a1, $a5, $t4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	add.d	$a5, $a3, $a1
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	slli.d	$t2, $t6, 5
	add.d	$a4, $a4, $t2
	stx.h	$a5, $a4, $a6
	stx.h	$a5, $t1, $t0
	alsl.d	$a2, $a3, $a2, 1
	add.d	$a2, $a2, $a1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a4, $t3
	stx.h	$a2, $t1, $t4
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a3, $a1, $a2
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	stx.h	$a3, $a4, $t0
	alsl.d	$a1, $a1, $a7, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a4, $t4
	b	.LBB0_73
.LBB0_61:
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	bnez	$a1, .LBB0_63
# %bb.62:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$s2, $t6
	move	$s3, $t5
	move	$s4, $ra
	move	$s5, $t4
	move	$s6, $t3
	move	$s8, $t0
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	move	$t0, $s8
	move	$t3, $s6
	move	$t4, $s5
	move	$ra, $s4
	move	$t5, $s3
	move	$t6, $s2
.LBB0_63:
	move	$a0, $zero
	bstrpick.d	$a1, $s7, 15, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a3, $a2, $a1
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $s1, 104
	slli.d	$a5, $fp, 5
	add.d	$a5, $a4, $a5
	slli.d	$a6, $s0, 1
	stx.h	$a3, $a5, $a6
	bstrpick.d	$a3, $a7, 15, 0
	addi.d	$a7, $a3, 2
	add.d	$a1, $a7, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	slli.d	$t0, $t0, 1
	stx.h	$a1, $a5, $t0
	add.d	$a1, $a2, $a3
	addi.d	$a1, $a1, 1
	srli.d	$a1, $a1, 1
	slli.d	$t1, $ra, 5
	add.d	$t1, $a4, $t1
	stx.h	$a1, $t1, $a6
	slli.d	$t2, $t3, 1
	stx.h	$a1, $a5, $t2
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a1, $t7, 15, 0
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	slli.d	$t3, $t5, 1
	stx.h	$a2, $a5, $t3
	stx.h	$a2, $t1, $t0
	add.d	$a2, $a3, $a1
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	slli.d	$a3, $t4, 5
	add.d	$a3, $a4, $a3
	stx.h	$a2, $a3, $a6
	stx.h	$a2, $t1, $t2
	add.d	$a2, $a7, $a1
	alsl.d	$a1, $a1, $a2, 1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $t0
	stx.h	$a1, $t1, $t3
	slli.d	$a1, $t6, 5
	add.d	$a1, $a4, $a1
	stx.h	$t7, $a1, $t3
	stx.h	$t7, $a1, $t2
	stx.h	$t7, $a3, $t2
	stx.h	$t7, $a1, $a6
	stx.h	$t7, $a1, $t0
	stx.h	$t7, $a3, $t3
	b	.LBB0_73
.LBB0_64:
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_67
# %bb.65:
	beqz	$a1, .LBB0_67
# %bb.66:
	bstrpick.d	$a0, $s7, 15, 0
	bstrpick.d	$a1, $a2, 15, 0
	bstrpick.d	$a2, $a7, 15, 0
	bstrpick.d	$a3, $t0, 15, 0
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	b	.LBB0_70
.LBB0_67:
	beqz	$a0, .LBB0_71
# %bb.68:
	bnez	$a1, .LBB0_71
# %bb.69:
	bstrpick.d	$a0, $t1, 15, 0
	bstrpick.d	$a1, $t8, 15, 0
	bstrpick.d	$a2, $t7, 15, 0
	bstrpick.d	$a3, $s6, 15, 0
	add.d	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
.LBB0_70:                               # %.preheader
	addi.d	$a0, $a0, 2
	srli.d	$a1, $a0, 2
	b	.LBB0_72
.LBB0_71:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.w	$a1, $s1, $a0
.LBB0_72:                               # %.preheader
	move	$a0, $zero
	addi.d	$a2, $s1, 104
	slli.d	$a3, $fp, 5
	add.d	$a3, $a2, $a3
	slli.d	$a4, $s0, 1
	stx.h	$a1, $a3, $a4
	addi.d	$a5, $a4, 2
	stx.h	$a1, $a3, $a5
	addi.d	$a6, $a4, 4
	stx.h	$a1, $a3, $a6
	addi.d	$a7, $a4, 6
	stx.h	$a1, $a3, $a7
	slli.d	$a3, $s4, 5
	add.d	$a3, $a2, $a3
	stx.h	$a1, $a3, $a4
	stx.h	$a1, $a3, $a5
	stx.h	$a1, $a3, $a6
	stx.h	$a1, $a3, $a7
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	add.d	$a3, $a2, $a3
	stx.h	$a1, $a3, $a4
	stx.h	$a1, $a3, $a5
	stx.h	$a1, $a3, $a6
	stx.h	$a1, $a3, $a7
	slli.d	$a3, $t2, 5
	add.d	$a2, $a2, $a3
	stx.h	$a1, $a2, $a4
	stx.h	$a1, $a2, $a5
	stx.h	$a1, $a2, $a6
	stx.h	$a1, $a2, $a7
.LBB0_73:                               # %.loopexit
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end0:
	.size	intrapred, .Lfunc_end0-intrapred
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
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
	addi.d	$sp, $sp, -1216
	st.d	$ra, $sp, 1208                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1144                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1136                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1128                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1120                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1112                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1104                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1096                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1088                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1080                 # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1528
	ldx.d	$s3, $a0, $a1
	ld.w	$s1, $fp, 4
	pcalau12i	$s4, %pc_hi20(getNeighbour)
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.w	$s2, $zero, -1
	addi.d	$a4, $sp, 648
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 672
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 720
	ori	$a2, $zero, 2
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 744
	ori	$a2, $zero, 3
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 768
	ori	$a2, $zero, 4
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 792
	ori	$a2, $zero, 5
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 816
	ori	$a2, $zero, 6
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 840
	ori	$a2, $zero, 7
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 864
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 888
	ori	$a2, $zero, 9
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 912
	ori	$a2, $zero, 10
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 936
	ori	$a2, $zero, 11
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 960
	ori	$a2, $zero, 12
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 984
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 1008
	ori	$a2, $zero, 14
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 1032
	ori	$a2, $zero, 15
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 1056
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1148
	ld.w	$a0, $sp, 1056
	beqz	$a1, .LBB1_25
# %bb.1:
	beqz	$a0, .LBB1_27
# %bb.2:
	ld.w	$a0, $sp, 1060
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $sp, 672
	beqz	$a1, .LBB1_28
.LBB1_3:
	ld.w	$a1, $sp, 676
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $a2, $a1
	andi	$a1, $a1, 1
	ld.w	$a2, $sp, 696
	beqz	$a2, .LBB1_29
.LBB1_4:
	ld.w	$a2, $sp, 700
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 720
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_30
.LBB1_5:
	ld.w	$a2, $sp, 724
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 744
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_31
.LBB1_6:
	ld.w	$a2, $sp, 748
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 768
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_32
.LBB1_7:
	ld.w	$a2, $sp, 772
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 792
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_33
.LBB1_8:
	ld.w	$a2, $sp, 796
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 816
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_34
.LBB1_9:
	ld.w	$a2, $sp, 820
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 840
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_35
.LBB1_10:
	ld.w	$a2, $sp, 844
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 864
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_36
.LBB1_11:
	ld.w	$a2, $sp, 868
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 888
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_37
.LBB1_12:
	ld.w	$a2, $sp, 892
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 912
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_38
.LBB1_13:
	ld.w	$a2, $sp, 916
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 936
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_39
.LBB1_14:
	ld.w	$a2, $sp, 940
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 960
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_40
.LBB1_15:
	ld.w	$a2, $sp, 964
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 984
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_41
.LBB1_16:
	ld.w	$a2, $sp, 988
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 1008
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_42
.LBB1_17:
	ld.w	$a2, $sp, 1012
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 1032
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_43
.LBB1_18:
	ld.w	$a2, $sp, 1036
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 648
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_44
.LBB1_19:
	ld.w	$a2, $sp, 652
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ori	$a3, $zero, 3
	bltu	$a3, $s0, .LBB1_26
.LBB1_20:
	slli.d	$a3, $s0, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB1_21:
	bnez	$a0, .LBB1_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_23:
	ld.w	$a0, $sp, 1076
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $s3, $a0
	ld.w	$a3, $sp, 1072
	move	$a0, $zero
	addi.d	$a1, $fp, 104
	alsl.d	$a2, $a3, $a2, 1
	ori	$a3, $zero, 512
	.p2align	4, , 16
.LBB1_24:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a2, 0
	stx.h	$a4, $a1, $a0
	ld.h	$a4, $a2, 2
	add.d	$a5, $a1, $a0
	st.h	$a4, $a5, 2
	ld.h	$a4, $a2, 4
	st.h	$a4, $a5, 4
	ld.h	$a4, $a2, 6
	st.h	$a4, $a5, 6
	ld.h	$a4, $a2, 8
	st.h	$a4, $a5, 8
	ld.h	$a4, $a2, 10
	st.h	$a4, $a5, 10
	ld.h	$a4, $a2, 12
	st.h	$a4, $a5, 12
	ld.h	$a4, $a2, 14
	st.h	$a4, $a5, 14
	ld.h	$a4, $a2, 16
	st.h	$a4, $a5, 16
	ld.h	$a4, $a2, 18
	st.h	$a4, $a5, 18
	ld.h	$a4, $a2, 20
	st.h	$a4, $a5, 20
	ld.h	$a4, $a2, 22
	st.h	$a4, $a5, 22
	ld.h	$a4, $a2, 24
	st.h	$a4, $a5, 24
	ld.h	$a4, $a2, 26
	st.h	$a4, $a5, 26
	ld.h	$a4, $a2, 28
	st.h	$a4, $a5, 28
	ld.h	$a4, $a2, 30
	addi.d	$a0, $a0, 32
	st.h	$a4, $a5, 30
	bne	$a0, $a3, .LBB1_24
	b	.LBB1_58
.LBB1_25:
	ld.w	$a1, $sp, 672
	ld.w	$a2, $sp, 648
	ori	$a3, $zero, 3
	bgeu	$a3, $s0, .LBB1_20
.LBB1_26:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_94
.LBB1_27:
	move	$a0, $zero
	ld.w	$a1, $sp, 672
	bnez	$a1, .LBB1_3
.LBB1_28:
	move	$a1, $zero
	ld.w	$a2, $sp, 696
	bnez	$a2, .LBB1_4
.LBB1_29:
	move	$a2, $zero
	ld.w	$a3, $sp, 720
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_5
.LBB1_30:
	move	$a2, $zero
	ld.w	$a3, $sp, 744
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_6
.LBB1_31:
	move	$a2, $zero
	ld.w	$a3, $sp, 768
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_7
.LBB1_32:
	move	$a2, $zero
	ld.w	$a3, $sp, 792
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_8
.LBB1_33:
	move	$a2, $zero
	ld.w	$a3, $sp, 816
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_9
.LBB1_34:
	move	$a2, $zero
	ld.w	$a3, $sp, 840
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_10
.LBB1_35:
	move	$a2, $zero
	ld.w	$a3, $sp, 864
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_11
.LBB1_36:
	move	$a2, $zero
	ld.w	$a3, $sp, 888
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_12
.LBB1_37:
	move	$a2, $zero
	ld.w	$a3, $sp, 912
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_13
.LBB1_38:
	move	$a2, $zero
	ld.w	$a3, $sp, 936
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_14
.LBB1_39:
	move	$a2, $zero
	ld.w	$a3, $sp, 960
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_15
.LBB1_40:
	move	$a2, $zero
	ld.w	$a3, $sp, 984
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_16
.LBB1_41:
	move	$a2, $zero
	ld.w	$a3, $sp, 1008
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_17
.LBB1_42:
	move	$a2, $zero
	ld.w	$a3, $sp, 1032
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_18
.LBB1_43:
	move	$a2, $zero
	ld.w	$a3, $sp, 648
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_19
.LBB1_44:
	move	$a2, $zero
	ori	$a3, $zero, 3
	bgeu	$a3, $s0, .LBB1_20
	b	.LBB1_26
.LBB1_45:                               # %.preheader155
	ld.w	$a2, $sp, 1076
	ld.w	$a3, $sp, 1072
	alsl.d	$a4, $a2, $s3, 3
	beqz	$a1, .LBB1_59
# %bb.46:                               # %.preheader155.split.preheader
	beqz	$a0, .LBB1_62
# %bb.47:
	ld.d	$a2, $a4, 0
	ld.w	$a5, $sp, 692
	alsl.d	$a6, $a3, $a2, 1
	slli.d	$a7, $a3, 1
	ldx.hu	$a2, $a2, $a7
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s3, $a5
	ld.w	$a7, $sp, 688
	ld.hu	$a6, $a6, 2
	alsl.d	$a5, $a7, $a5, 1
	add.d	$a2, $a2, $a6
	b	.LBB1_63
.LBB1_48:
	beqz	$a0, .LBB1_51
# %bb.49:
	beqz	$a2, .LBB1_51
# %bb.50:
	bnez	$a1, .LBB1_52
.LBB1_51:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_52:                               # %vector.ph
	ld.w	$a1, $sp, 1076
	move	$a0, $zero
	ld.w	$a2, $sp, 668
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s3, $a1
	ld.w	$a3, $sp, 1072
	slli.d	$a2, $a2, 3
	ld.w	$a4, $sp, 664
	ldx.d	$a2, $s3, $a2
	alsl.d	$a5, $a3, $a1, 1
	ld.hu	$t4, $a5, 30
	slli.d	$a4, $a4, 1
	ldx.hu	$t6, $a2, $a4
	slli.d	$a2, $a3, 1
	ld.hu	$a3, $a5, 28
	ldx.hu	$a1, $a1, $a2
	sub.d	$a2, $t4, $t6
	ld.hu	$a4, $a5, 26
	ld.hu	$a6, $a5, 2
	sub.d	$a1, $a3, $a1
	slli.d	$a3, $a1, 3
	sub.d	$a1, $a3, $a1
	sub.d	$a3, $a4, $a6
	ori	$t3, $zero, 6
	ld.hu	$a4, $a5, 24
	ld.hu	$a6, $a5, 4
	ld.hu	$a7, $a5, 22
	ld.hu	$t0, $a5, 6
	mul.d	$a3, $a3, $t3
	sub.d	$a4, $a4, $a6
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a6, $a7, $t0
	ld.hu	$a7, $a5, 20
	ld.hu	$t0, $a5, 8
	ld.hu	$t1, $a5, 18
	ld.hu	$t2, $a5, 10
	ld.hu	$t5, $a5, 16
	ld.hu	$a5, $a5, 12
	sub.d	$a7, $a7, $t0
	alsl.d	$a7, $a7, $a7, 1
	sub.d	$t0, $t1, $t2
	sub.d	$a5, $t5, $a5
	alsl.d	$a5, $t0, $a5, 1
	add.d	$a5, $a7, $a5
	alsl.d	$a5, $a6, $a5, 2
	add.d	$a4, $a4, $a5
	add.d	$a3, $a3, $a4
	add.w	$a1, $a1, $a3
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a1, $a1, $a1, 2
	addi.w	$a1, $a1, 32
	srai.d	$t0, $a1, 6
	slli.d	$a3, $t0, 3
	sub.d	$a4, $a3, $t0
	mul.d	$a1, $t0, $t3
	slli.d	$a5, $t0, 2
	slli.d	$a2, $t0, 1
	ld.w	$t2, $sp, 1052
	alsl.d	$a6, $t0, $t0, 1
	sub.d	$t1, $zero, $a6
	alsl.d	$a7, $t0, $t0, 2
	slli.d	$t2, $t2, 3
	ld.w	$t5, $sp, 1048
	ldx.d	$t7, $s3, $t2
	sub.d	$t2, $zero, $a7
	ld.w	$t8, $sp, 1028
	slli.d	$t5, $t5, 1
	ldx.hu	$t7, $t7, $t5
	ld.w	$t5, $sp, 692
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s3, $t8
	ld.w	$s0, $sp, 1024
	slli.d	$t5, $t5, 3
	ld.w	$s1, $sp, 688
	ldx.d	$t5, $s3, $t5
	slli.d	$s0, $s0, 1
	ldx.hu	$t8, $t8, $s0
	slli.d	$s0, $s1, 1
	ldx.hu	$s0, $t5, $s0
	add.d	$t5, $t7, $t4
	ld.w	$s1, $sp, 1004
	sub.d	$t4, $t7, $t6
	sub.d	$t6, $t8, $s0
	ld.w	$t7, $sp, 716
	slli.d	$t8, $s1, 3
	ldx.d	$t8, $s3, $t8
	ld.w	$s0, $sp, 1000
	slli.d	$t7, $t7, 3
	ld.w	$s1, $sp, 712
	ldx.d	$t7, $s3, $t7
	slli.d	$s0, $s0, 1
	ldx.hu	$t8, $t8, $s0
	slli.d	$s0, $s1, 1
	ldx.hu	$t7, $t7, $s0
	slli.d	$s0, $t6, 3
	sub.d	$t6, $s0, $t6
	ld.w	$s0, $sp, 980
	sub.d	$t7, $t8, $t7
	ld.w	$t8, $sp, 976
	ld.w	$s1, $sp, 740
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s3, $s0
	slli.d	$t8, $t8, 1
	slli.d	$s1, $s1, 3
	ld.w	$s2, $sp, 736
	ldx.d	$s1, $s3, $s1
	ldx.hu	$t8, $s0, $t8
	ld.w	$s0, $sp, 956
	slli.d	$s2, $s2, 1
	ldx.hu	$s1, $s1, $s2
	ld.w	$s2, $sp, 764
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s3, $s0
	ld.w	$s4, $sp, 952
	slli.d	$s2, $s2, 3
	ld.w	$s5, $sp, 760
	ldx.d	$s2, $s3, $s2
	slli.d	$s4, $s4, 1
	ldx.hu	$s0, $s0, $s4
	slli.d	$s4, $s5, 1
	ldx.hu	$s2, $s2, $s4
	mul.d	$t3, $t7, $t3
	sub.d	$t7, $t8, $s1
	ld.w	$t8, $sp, 932
	sub.d	$s0, $s0, $s2
	ld.w	$s1, $sp, 928
	ld.w	$s2, $sp, 788
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s3, $t8
	slli.d	$s1, $s1, 1
	slli.d	$s2, $s2, 3
	ld.w	$s4, $sp, 784
	ldx.d	$s2, $s3, $s2
	ldx.hu	$t8, $t8, $s1
	ld.w	$s1, $sp, 908
	slli.d	$s4, $s4, 1
	ldx.hu	$s2, $s2, $s4
	ld.w	$s4, $sp, 812
	slli.d	$s1, $s1, 3
	ldx.d	$s1, $s3, $s1
	ld.w	$s5, $sp, 904
	slli.d	$s4, $s4, 3
	ld.w	$s6, $sp, 808
	ldx.d	$s4, $s3, $s4
	slli.d	$s5, $s5, 1
	ldx.hu	$s1, $s1, $s5
	slli.d	$s5, $s6, 1
	ldx.hu	$s4, $s4, $s5
	ld.w	$s5, $sp, 884
	addi.d	$s6, $zero, -6
	sub.d	$t8, $t8, $s2
	sub.d	$s1, $s1, $s4
	slli.d	$s2, $s5, 3
	ld.w	$s4, $sp, 880
	ldx.d	$s2, $s3, $s2
	ld.w	$s5, $sp, 836
	mul.d	$s6, $t0, $s6
	slli.d	$s4, $s4, 1
	ldx.hu	$s2, $s2, $s4
	slli.d	$s4, $s5, 3
	ldx.d	$s3, $s3, $s4
	ld.w	$s4, $sp, 832
	sub.d	$s5, $t0, $a3
	slli.d	$t5, $t5, 4
	addi.d	$t5, $t5, 16
	slli.d	$s4, $s4, 1
	ldx.hu	$s3, $s3, $s4
	lu12i.w	$s4, 1
	ori	$s4, $s4, 1804
	add.d	$s4, $fp, $s4
	alsl.d	$t7, $t7, $t7, 2
	alsl.d	$t8, $t8, $t8, 1
	sub.d	$s2, $s2, $s3
	alsl.d	$s1, $s1, $s2, 1
	add.d	$t8, $t8, $s1
	alsl.d	$t8, $s0, $t8, 2
	add.d	$t7, $t7, $t8
	add.d	$t3, $t3, $t7
	add.w	$t3, $t6, $t3
	alsl.d	$t3, $t4, $t3, 3
	alsl.d	$t3, $t3, $t3, 2
	addi.w	$t3, $t3, 32
	srai.d	$t3, $t3, 6
	vreplgr2vr.w	$vr0, $t0
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $t3
	vst	$vr0, $sp, 464                  # 16-byte Folded Spill
	vldrepl.w	$vr2, $s4, 0
	vreplgr2vr.w	$vr0, $t5
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $s5
	vst	$vr0, $sp, 432                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $s6
	vst	$vr0, $sp, 416                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $t2
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a5
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $t1
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a2
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a6
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a7
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	vreplgr2vr.w	$vr0, $a1
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr19, $a1, %pc_lo12(.LCPI1_0)
	addi.d	$a1, $fp, 120
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
	add.d	$a3, $a1, $a0
	vst	$vr17, $a3, -16
	vst	$vr23, $a3, 16
	vst	$vr30, $a3, 48
	vst	$vr8, $a3, 80
	vstx	$vr10, $a1, $a0
	vst	$vr14, $a3, 32
	vst	$vr15, $a3, 64
	vst	$vr16, $a3, 96
	addi.d	$a0, $a0, 128
	vaddi.wu	$vr19, $vr19, 4
	bne	$a0, $a2, .LBB1_53
	b	.LBB1_58
.LBB1_54:
	bnez	$a1, .LBB1_56
# %bb.55:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_56:
	addi.d	$a0, $fp, 134
	ori	$a1, $zero, 44
	addi.d	$a2, $sp, 648
	ori	$a3, $zero, 428
	.p2align	4, , 16
.LBB1_57:                               # %.preheader151
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a1, $a2
	add.d	$a5, $a2, $a1
	slli.d	$a4, $a4, 3
	ld.w	$a5, $a5, -4
	ldx.d	$a4, $s3, $a4
	slli.d	$a5, $a5, 1
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a0, -30
	st.h	$a6, $a0, -28
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a0, -26
	st.h	$a6, $a0, -24
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a0, -22
	st.h	$a6, $a0, -20
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a0, -18
	st.h	$a6, $a0, -16
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a0, -14
	st.h	$a6, $a0, -12
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a0, -10
	st.h	$a6, $a0, -8
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a0, -6
	st.h	$a6, $a0, -4
	ldx.h	$a4, $a4, $a5
	st.h	$a4, $a0, -2
	st.h	$a4, $a0, 0
	addi.d	$a1, $a1, 24
	addi.d	$a0, $a0, 32
	bne	$a1, $a3, .LBB1_57
.LBB1_58:
	move	$a0, $zero
	b	.LBB1_94
.LBB1_59:                               # %.preheader155.split.us
	beqz	$a0, .LBB1_95
# %bb.60:                               # %.preheader155.split.us.split
	ld.d	$a2, $a4, 0
	alsl.d	$a4, $a3, $a2, 1
	slli.d	$a3, $a3, 1
	vldx	$vr0, $a2, $a3
	vld	$vr1, $a4, 16
	move	$a3, $zero
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
	or	$a4, $a0, $a1
	bnez	$a4, .LBB1_92
.LBB1_61:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.w	$a1, $fp, $a0
	b	.LBB1_93
.LBB1_62:                               # %.preheader155.split.1.thread
	ld.w	$a2, $sp, 692
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $s3, $a2
	ld.w	$a6, $sp, 688
	move	$a2, $zero
	alsl.d	$a5, $a6, $a5, 1
.LBB1_63:                               # %.preheader155.split.2
	ld.w	$a6, $sp, 716
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 712
	ldx.d	$a6, $s3, $a6
	ld.hu	$a5, $a5, 0
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_65
# %bb.64:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 4
	add.d	$a2, $a2, $a6
.LBB1_65:                               # %.preheader155.split.3
	ld.w	$a6, $sp, 740
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 736
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_67
# %bb.66:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 6
	add.d	$a2, $a2, $a6
.LBB1_67:                               # %.preheader155.split.4
	ld.w	$a6, $sp, 764
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 760
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_69
# %bb.68:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 8
	add.d	$a2, $a2, $a6
.LBB1_69:                               # %.preheader155.split.5
	ld.w	$a6, $sp, 788
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 784
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_71
# %bb.70:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 10
	add.d	$a2, $a2, $a6
.LBB1_71:                               # %.preheader155.split.6
	ld.w	$a6, $sp, 812
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 808
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_73
# %bb.72:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 12
	add.d	$a2, $a2, $a6
.LBB1_73:                               # %.preheader155.split.7
	ld.w	$a6, $sp, 836
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 832
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_75
# %bb.74:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 14
	add.d	$a2, $a2, $a6
.LBB1_75:                               # %.preheader155.split.8
	ld.w	$a6, $sp, 860
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 856
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_77
# %bb.76:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 16
	add.d	$a2, $a2, $a6
.LBB1_77:                               # %.preheader155.split.9
	ld.w	$a6, $sp, 884
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 880
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_79
# %bb.78:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 18
	add.d	$a2, $a2, $a6
.LBB1_79:                               # %.preheader155.split.10
	ld.w	$a6, $sp, 908
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 904
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_81
# %bb.80:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 20
	add.d	$a2, $a2, $a6
.LBB1_81:                               # %.preheader155.split.11
	ld.w	$a6, $sp, 932
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 928
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_83
# %bb.82:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 22
	add.d	$a2, $a2, $a6
.LBB1_83:                               # %.preheader155.split.12
	ld.w	$a6, $sp, 956
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 952
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_85
# %bb.84:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 24
	add.d	$a2, $a2, $a6
.LBB1_85:                               # %.preheader155.split.13
	ld.w	$a6, $sp, 980
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 976
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_87
# %bb.86:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 26
	add.d	$a2, $a2, $a6
.LBB1_87:                               # %.preheader155.split.14
	ld.w	$a6, $sp, 1004
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 1000
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_89
# %bb.88:
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 28
	add.d	$a2, $a2, $a6
.LBB1_89:                               # %.preheader155.split.15
	ld.w	$a6, $sp, 1028
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 1024
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_91
# %bb.90:
	ld.d	$a4, $a4, 0
	alsl.d	$a3, $a3, $a4, 1
	ld.hu	$a3, $a3, 30
	add.d	$a2, $a2, $a3
.LBB1_91:                               # %.split.us.loopexit181
	ld.w	$a3, $sp, 1052
	slli.d	$a3, $a3, 3
	ld.w	$a4, $sp, 1048
	ldx.d	$a3, $s3, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a3, $a3, $a4
	add.d	$a3, $a5, $a3
	or	$a4, $a0, $a1
	beqz	$a4, .LBB1_61
.LBB1_92:
	sltui	$a4, $a0, 1
	sltu	$a0, $zero, $a0
	sltu	$a1, $zero, $a1
	add.d	$a5, $a3, $a2
	addi.d	$a5, $a5, 16
	bstrpick.d	$a5, $a5, 31, 5
	maskeqz	$a5, $a5, $a1
	maskeqz	$a0, $a5, $a0
	addi.d	$a3, $a3, 8
	srli.d	$a3, $a3, 4
	maskeqz	$a3, $a3, $a1
	masknez	$a5, $a0, $a1
	or	$a3, $a3, $a5
	maskeqz	$a3, $a3, $a4
	masknez	$a0, $a0, $a4
	or	$a0, $a3, $a0
	addi.d	$a2, $a2, 8
	bstrpick.d	$a2, $a2, 31, 4
	maskeqz	$a3, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a4
	or	$a1, $a3, $a0
.LBB1_93:                               # %vector.body257
	move	$a0, $zero
	vreplgr2vr.h	$vr0, $a1
	vst	$vr0, $fp, 104
	vst	$vr0, $fp, 136
	vst	$vr0, $fp, 168
	vst	$vr0, $fp, 200
	vst	$vr0, $fp, 232
	vst	$vr0, $fp, 264
	vst	$vr0, $fp, 296
	vst	$vr0, $fp, 328
	vst	$vr0, $fp, 360
	vst	$vr0, $fp, 392
	vst	$vr0, $fp, 424
	vst	$vr0, $fp, 456
	vst	$vr0, $fp, 488
	vst	$vr0, $fp, 520
	vst	$vr0, $fp, 552
	vst	$vr0, $fp, 584
	vst	$vr0, $fp, 120
	vst	$vr0, $fp, 152
	vst	$vr0, $fp, 184
	vst	$vr0, $fp, 216
	vst	$vr0, $fp, 248
	vst	$vr0, $fp, 280
	vst	$vr0, $fp, 312
	vst	$vr0, $fp, 344
	vst	$vr0, $fp, 376
	vst	$vr0, $fp, 408
	vst	$vr0, $fp, 440
	vst	$vr0, $fp, 472
	vst	$vr0, $fp, 504
	vst	$vr0, $fp, 536
	vst	$vr0, $fp, 568
	vst	$vr0, $fp, 600
.LBB1_94:                               # %.loopexit
	fld.d	$fs7, $sp, 1080                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1088                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1096                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1104                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1112                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1128                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1136                 # 8-byte Folded Reload
	ld.d	$s6, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1208                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1216
	ret
.LBB1_95:
	move	$a3, $zero
	move	$a2, $zero
	or	$a4, $a0, $a1
	bnez	$a4, .LBB1_92
	b	.LBB1_61
.Lfunc_end1:
	.size	intrapred_luma_16x16, .Lfunc_end1-intrapred_luma_16x16
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_45-.LJTI1_0
	.word	.LBB1_48-.LJTI1_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred_chroma
.LCPI2_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI2_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_2:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	1                               # 0x1
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	15                              # 0xf
.LCPI2_3:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI2_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	intrapred_chroma
	.p2align	5
	.type	intrapred_chroma,@function
intrapred_chroma:                       # @intrapred_chroma
# %bb.0:
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1536
	ld.wu	$a2, $fp, 4
	add.d	$a3, $a0, $a1
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 116
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s1, $a2, 0
	ldptr.d	$s0, $fp, 5600
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1840
	ldx.w	$s5, $fp, $a0
	ldptr.w	$a0, $fp, 5932
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 408
	mul.d	$s8, $a2, $a0
	pcalau12i	$s7, %pc_hi20(getNeighbour)
	bltz	$s5, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s5, 1
	bstrpick.d	$s6, $a0, 31, 0
	addi.w	$s2, $zero, -1
	addi.d	$s3, $sp, 56
	move	$s4, $s2
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s7, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s4
	move	$a4, $s3
	jirl	$ra, $a5, 0
	addi.w	$s4, $s4, 1
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 24
	bnez	$s6, .LBB2_2
.LBB2_3:                                # %._crit_edge
	ld.d	$a5, $s7, %pc_lo12(getNeighbour)
	add.d	$s2, $s0, $s8
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 464
	move	$a0, $s1
	move	$a1, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1148
	ld.w	$a0, $sp, 464
	beqz	$a1, .LBB2_6
# %bb.4:
	beqz	$a0, .LBB2_7
# %bb.5:
	ld.w	$a0, $sp, 468
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	b	.LBB2_8
.LBB2_6:
	ld.w	$a1, $sp, 80
	ld.w	$a3, $sp, 56
	move	$a2, $a1
	ld.w	$a4, $s2, 352
	ori	$a5, $zero, 3
	bgeu	$a5, $a4, .LBB2_21
	b	.LBB2_52
.LBB2_7:
	move	$a0, $zero
.LBB2_8:
	bstrpick.d	$a1, $s5, 31, 31
	add.w	$a1, $s5, $a1
	srai.d	$a3, $a1, 1
	ori	$a1, $zero, 1
	ori	$a5, $zero, 2
	bstrpick.d	$a4, $a3, 31, 0
	ori	$a2, $zero, 1
	blt	$s5, $a5, .LBB2_14
# %bb.9:                                # %.lr.ph464
	ori	$a2, $zero, 1
	addi.d	$a5, $sp, 84
	move	$a6, $a4
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_10:                               #   in Loop: Header=BB2_12 Depth=1
	ld.w	$a7, $a5, 0
	ld.d	$t0, $fp, 16
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $t0, $a7
.LBB2_11:                               #   in Loop: Header=BB2_12 Depth=1
	and	$a2, $a7, $a2
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 24
	beqz	$a6, .LBB2_14
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -4
	bnez	$a7, .LBB2_10
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	move	$a7, $zero
	b	.LBB2_11
.LBB2_14:                               # %.preheader458
	blez	$s5, .LBB2_19
# %bb.15:                               # %.lr.ph468
	slli.d	$a1, $a4, 4
	alsl.d	$a1, $a4, $a1, 3
	addi.d	$a4, $sp, 56
	add.d	$a1, $a1, $a4
	addi.d	$a4, $a1, 28
	ori	$a1, $zero, 1
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a5, $a4, 0
	ld.d	$a6, $fp, 16
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a6, $a5
	and	$a1, $a5, $a1
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 24
	bge	$a3, $s5, .LBB2_19
.LBB2_17:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, -4
	bnez	$a5, .LBB2_16
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=1
	move	$a5, $zero
	and	$a1, $a5, $a1
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 24
	blt	$a3, $s5, .LBB2_17
.LBB2_19:                               # %._crit_edge469
	ld.w	$a3, $sp, 56
	beqz	$a3, .LBB2_51
# %bb.20:
	ld.w	$a3, $sp, 60
	ld.d	$a4, $fp, 16
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $s2, 352
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_52
.LBB2_21:
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI2_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI2_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB2_22:                               # %.preheader457
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1828
	ldx.wu	$a3, $fp, $a3
	addi.w	$a4, $a3, 0
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB2_190
# %bb.23:                               # %.preheader456.lr.ph
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	addi.w	$t2, $a4, -1
	srli.d	$a4, $a3, 31
	add.w	$a3, $a3, $a4
	srai.d	$a5, $a3, 1
	slli.d	$t1, $t2, 5
	pcalau12i	$a4, %got_pc_hi20(subblk_offset_y)
	ld.d	$a3, $a4, %got_pc_lo12(subblk_offset_y)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	add.d	$a7, $a3, $t1
	pcalau12i	$a6, %got_pc_hi20(subblk_offset_x)
	ld.d	$a4, $a6, %got_pc_lo12(subblk_offset_x)
	lu12i.w	$a3, 1
	ori	$t0, $a3, 1800
	ldx.w	$t0, $fp, $t0
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	add.d	$t1, $a4, $t1
	slli.d	$t3, $t2, 6
	pcalau12i	$t2, %pc_hi20(.L__const.intrapred_chroma.block_pos)
	addi.d	$t4, $t2, %pc_lo12(.L__const.intrapred_chroma.block_pos)
	move	$t2, $zero
	add.d	$t3, $t4, $t3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$t4, $a3, $a4, 3
	ld.w	$t5, $sp, 484
	ld.w	$t6, $sp, 480
	addi.d	$t7, $sp, 488
	ori	$t8, $zero, 3
	ori	$s0, $zero, 4
	addi.d	$s1, $sp, 56
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_25 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 4
	addi.d	$t7, $t7, 16
	addi.d	$t3, $t3, 16
	beq	$t2, $a5, .LBB2_124
.LBB2_25:                               # %.preheader456
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_32 Depth 2
	move	$s2, $zero
	move	$s3, $t3
	move	$s4, $t7
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_32 Depth=2
	beqz	$a1, .LBB2_41
.LBB2_27:                               #   in Loop: Header=BB2_32 Depth=2
	slli.d	$a3, $s5, 4
	alsl.d	$a3, $s5, $a3, 3
	add.d	$a3, $s1, $a3
	ld.w	$a4, $a3, 44
	ld.d	$a6, $t4, 0
	ld.w	$s5, $a3, 40
	ld.w	$s6, $a3, 68
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a6, $a4
	slli.d	$s5, $s5, 1
	slli.d	$s6, $s6, 3
	ld.w	$s7, $a3, 64
	ldx.d	$s6, $a6, $s6
	ldx.hu	$a4, $a4, $s5
	ld.w	$s5, $a3, 92
	slli.d	$s7, $s7, 1
	ldx.hu	$s6, $s6, $s7
	ld.w	$s7, $a3, 116
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $a6, $s5
	ld.w	$s8, $a3, 88
	slli.d	$s7, $s7, 3
	ld.w	$a3, $a3, 112
	ldx.d	$a6, $a6, $s7
	slli.d	$s7, $s8, 1
	ldx.hu	$s5, $s5, $s7
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a6, $a3
	add.d	$a4, $a4, $s6
.LBB2_28:                               # %.thread393.sink.split
                                        #   in Loop: Header=BB2_32 Depth=2
	add.d	$a4, $a4, $s5
	add.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 2
.LBB2_29:                               # %.thread393.sink.split
                                        #   in Loop: Header=BB2_32 Depth=2
	srli.d	$s5, $a3, 2
.LBB2_30:                               # %.thread393.sink.split
                                        #   in Loop: Header=BB2_32 Depth=2
	st.w	$s5, $s4, 0
.LBB2_31:                               # %.thread393
                                        #   in Loop: Header=BB2_32 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	beq	$s2, $s0, .LBB2_24
.LBB2_32:                               #   Parent Loop BB2_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$s5, $a7, $s2
	ld.w	$s6, $s3, 0
	ldx.bu	$s7, $t1, $s2
	st.w	$t0, $s4, 0
	bltu	$t8, $s6, .LBB2_31
# %bb.33:                               #   in Loop: Header=BB2_32 Depth=2
	slli.d	$s6, $s6, 2
	pcalau12i	$s8, %pc_hi20(.LJTI2_1)
	addi.d	$s8, $s8, %pc_lo12(.LJTI2_1)
	ldx.w	$s6, $s8, $s6
	add.d	$s6, $s8, $s6
	jr	$s6
.LBB2_34:                               #   in Loop: Header=BB2_32 Depth=2
	beqz	$a0, .LBB2_47
# %bb.35:                               # %.preheader445
                                        #   in Loop: Header=BB2_32 Depth=2
	ld.d	$s6, $t4, 0
	slli.d	$s8, $t5, 3
	ldx.d	$s8, $s6, $s8
	alsl.d	$ra, $t6, $s8, 1
	slli.d	$a4, $s7, 1
	ldx.hu	$a4, $ra, $a4
	alsl.d	$s7, $s7, $s8, 1
	alsl.d	$s7, $t6, $s7, 1
	ld.hu	$s8, $s7, 2
	ld.hu	$ra, $s7, 4
	ld.hu	$s7, $s7, 6
	add.d	$a4, $a4, $s8
	add.d	$a4, $a4, $ra
	add.d	$s7, $a4, $s7
	bnez	$a2, .LBB2_49
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_36:                               #   in Loop: Header=BB2_32 Depth=2
	beqz	$a0, .LBB2_43
# %bb.37:                               # %.preheader455
                                        #   in Loop: Header=BB2_32 Depth=2
	ld.d	$s6, $t4, 0
	slli.d	$a3, $t5, 3
	ldx.d	$a3, $s6, $a3
	alsl.d	$a4, $t6, $a3, 1
	slli.d	$a6, $s7, 1
	ldx.hu	$a4, $a4, $a6
	alsl.d	$a3, $s7, $a3, 1
	alsl.d	$a3, $t6, $a3, 1
	ld.hu	$a6, $a3, 2
	ld.hu	$s7, $a3, 4
	ld.hu	$a3, $a3, 6
	add.d	$a4, $a4, $a6
	add.d	$a4, $a4, $s7
	add.d	$s7, $a4, $a3
	bnez	$a1, .LBB2_45
.LBB2_38:                               # %.thread390
                                        #   in Loop: Header=BB2_32 Depth=2
	addi.d	$a3, $s7, 2
	b	.LBB2_29
.LBB2_39:                               #   in Loop: Header=BB2_32 Depth=2
	bnez	$a0, .LBB2_42
# %bb.40:                               #   in Loop: Header=BB2_32 Depth=2
	bnez	$a2, .LBB2_27
	b	.LBB2_31
.LBB2_41:                               #   in Loop: Header=BB2_32 Depth=2
	beqz	$a0, .LBB2_31
.LBB2_42:                               #   in Loop: Header=BB2_32 Depth=2
	ld.d	$a3, $t4, 0
	slli.d	$a4, $t5, 3
	ldx.d	$a3, $a3, $a4
	alsl.d	$a4, $t6, $a3, 1
	slli.d	$a6, $s7, 1
	ldx.hu	$a4, $a4, $a6
	alsl.d	$a3, $s7, $a3, 1
	alsl.d	$a3, $t6, $a3, 1
	ld.hu	$a6, $a3, 2
	ld.hu	$s5, $a3, 4
	ld.hu	$a3, $a3, 6
	add.d	$a4, $a4, $a6
	b	.LBB2_28
.LBB2_43:                               # %.thread424
                                        #   in Loop: Header=BB2_32 Depth=2
	beqz	$a1, .LBB2_31
# %bb.44:                               # %.thread424..preheader454_crit_edge
                                        #   in Loop: Header=BB2_32 Depth=2
	ld.d	$s6, $t4, 0
	move	$s7, $zero
.LBB2_45:                               # %.preheader454
                                        #   in Loop: Header=BB2_32 Depth=2
	slli.d	$a3, $s5, 4
	alsl.d	$a3, $s5, $a3, 3
	add.d	$a3, $s1, $a3
	ld.w	$a4, $a3, 44
	ld.w	$a6, $a3, 40
	ld.w	$s5, $a3, 68
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s6, $a4
	slli.d	$a6, $a6, 1
	slli.d	$s5, $s5, 3
	ld.w	$s8, $a3, 64
	ldx.d	$s5, $s6, $s5
	ldx.hu	$a4, $a4, $a6
	ld.w	$a6, $a3, 92
	slli.d	$s8, $s8, 1
	ldx.hu	$s5, $s5, $s8
	ld.w	$s8, $a3, 116
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s6, $a6
	ld.w	$ra, $a3, 88
	slli.d	$s8, $s8, 3
	ld.w	$a3, $a3, 112
	ldx.d	$s6, $s6, $s8
	slli.d	$s8, $ra, 1
	ldx.hu	$a6, $a6, $s8
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $s6, $a3
	add.d	$a4, $a4, $s5
	add.d	$a4, $a4, $a6
	add.d	$s5, $a4, $a3
	beqz	$a0, .LBB2_50
.LBB2_46:                               #   in Loop: Header=BB2_32 Depth=2
	add.d	$a3, $s7, $s5
	addi.d	$a3, $a3, 4
	srli.d	$s5, $a3, 3
	b	.LBB2_30
.LBB2_47:                               # %.thread418
                                        #   in Loop: Header=BB2_32 Depth=2
	beqz	$a2, .LBB2_31
# %bb.48:                               # %.thread418..preheader444_crit_edge
                                        #   in Loop: Header=BB2_32 Depth=2
	ld.d	$s6, $t4, 0
	move	$s7, $zero
.LBB2_49:                               # %.preheader444
                                        #   in Loop: Header=BB2_32 Depth=2
	slli.d	$a4, $s5, 4
	alsl.d	$a4, $s5, $a4, 3
	add.d	$a4, $s1, $a4
	ld.w	$s5, $a4, 44
	ld.w	$s8, $a4, 40
	ld.w	$ra, $a4, 68
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $s6, $s5
	slli.d	$s8, $s8, 1
	slli.d	$ra, $ra, 3
	ld.w	$a6, $a4, 64
	ldx.d	$ra, $s6, $ra
	ldx.hu	$s5, $s5, $s8
	ld.w	$s8, $a4, 92
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $ra, $a6
	ld.w	$ra, $a4, 116
	slli.d	$s8, $s8, 3
	ldx.d	$s8, $s6, $s8
	ld.w	$a3, $a4, 88
	slli.d	$ra, $ra, 3
	ld.w	$a4, $a4, 112
	ldx.d	$s6, $s6, $ra
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $s8, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $s6, $a4
	add.d	$a6, $s5, $a6
	add.d	$a3, $a6, $a3
	add.d	$s5, $a3, $a4
	bnez	$a0, .LBB2_46
.LBB2_50:                               #   in Loop: Header=BB2_32 Depth=2
	addi.d	$a3, $s5, 2
	b	.LBB2_29
.LBB2_51:
	move	$a3, $zero
	ld.w	$a4, $s2, 352
	ori	$a5, $zero, 3
	bgeu	$a5, $a4, .LBB2_21
.LBB2_52:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB2_190
.LBB2_53:
	bnez	$a0, .LBB2_55
# %bb.54:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_55:
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	blt	$s5, $a0, .LBB2_190
# %bb.56:
	ori	$a0, $zero, 1
	bge	$a0, $a1, .LBB2_190
# %bb.57:                               # %.lr.ph496.us
	move	$a6, $zero
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	ld.w	$a1, $sp, 484
	ld.d	$a5, $a2, 0
	ld.w	$a3, $sp, 480
	bstrpick.d	$a7, $s5, 31, 31
	slli.d	$a4, $a1, 3
	ldx.d	$a1, $a5, $a4
	add.w	$a5, $s5, $a7
	srai.d	$a7, $a5, 1
	addi.d	$a5, $fp, 104
	alsl.d	$t0, $a3, $a1, 1
	bstrpick.d	$a1, $a7, 31, 0
	bstrpick.d	$t1, $a7, 29, 1
	slli.d	$t1, $t1, 1
	addi.d	$t2, $fp, 136
	ori	$t3, $zero, 2
	move	$t4, $a5
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_58:                               # %._crit_edge493.us.us
                                        #   in Loop: Header=BB2_59 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$t2, $t2, 2
	addi.d	$t4, $t4, 2
	beq	$a6, $a0, .LBB2_99
.LBB2_59:                               # %.lr.ph492.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_62 Depth 2
                                        #     Child Loop BB2_65 Depth 2
	slli.d	$t5, $a6, 1
	ldx.hu	$t5, $t0, $t5
	bgeu	$a7, $t3, .LBB2_61
# %bb.60:                               #   in Loop: Header=BB2_59 Depth=1
	move	$t7, $zero
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_61:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_59 Depth=1
	move	$t6, $t1
	move	$t7, $t2
	.p2align	4, , 16
.LBB2_62:                               # %vector.body
                                        #   Parent Loop BB2_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t5, $t7, -32
	st.h	$t5, $t7, 0
	addi.d	$t6, $t6, -2
	addi.d	$t7, $t7, 64
	bnez	$t6, .LBB2_62
# %bb.63:                               # %middle.block
                                        #   in Loop: Header=BB2_59 Depth=1
	move	$t7, $t1
	beq	$t1, $a1, .LBB2_58
.LBB2_64:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_59 Depth=1
	slli.d	$t6, $t7, 5
	add.d	$t6, $t4, $t6
	sub.d	$t7, $a1, $t7
	.p2align	4, , 16
.LBB2_65:                               # %scalar.ph
                                        #   Parent Loop BB2_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t5, $t6, 0
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB2_65
	b	.LBB2_58
.LBB2_66:
	beqz	$a3, .LBB2_70
# %bb.67:
	beqz	$a2, .LBB2_70
# %bb.68:
	beqz	$a1, .LBB2_70
# %bb.69:
	bnez	$a0, .LBB2_71
.LBB2_70:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_71:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 484
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a0
	ld.w	$a5, $sp, 480
	ld.w	$a0, $sp, 76
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	add.w	$a1, $a5, $s4
	slli.d	$a0, $a0, 3
	ld.w	$a4, $sp, 72
	ldx.d	$a0, $a2, $a0
	alsl.d	$a1, $a1, $a3, 1
	ld.hu	$a1, $a1, -2
	slli.d	$a4, $a4, 1
	ldx.hu	$a6, $a0, $a4
	bstrpick.d	$a0, $s4, 31, 31
	add.w	$a0, $s4, $a0
	srai.d	$a0, $a0, 1
	sub.d	$a4, $a1, $a6
	ori	$a7, $zero, 4
	mul.d	$a4, $a4, $a0
	blt	$s4, $a7, .LBB2_76
# %bb.72:                               # %.lr.ph524
	add.w	$a5, $a5, $a0
	ori	$t0, $zero, 2
	slt	$t1, $t0, $a0
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $a0, $t1
	or	$t0, $t1, $t0
	addi.d	$t0, $t0, -1
	ori	$t1, $zero, 18
	bstrpick.d	$t0, $t0, 31, 0
	bge	$s4, $t1, .LBB2_126
# %bb.73:
	move	$t1, $zero
.LBB2_74:                               # %scalar.ph885.preheader
	slli.d	$t2, $t1, 1
	alsl.d	$t2, $a5, $t2, 1
	add.d	$t2, $a3, $t2
	sub.d	$a5, $a5, $t1
	addi.w	$a5, $a5, -2
	sub.d	$t0, $t0, $t1
	addi.d	$t1, $t1, 1
	.p2align	4, , 16
.LBB2_75:                               # %scalar.ph885
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t3, $t2, 0
	slli.d	$t4, $a5, 1
	ldx.hu	$t4, $a3, $t4
	sub.d	$t3, $t3, $t4
	mul.d	$t3, $t3, $t1
	add.d	$a4, $t3, $a4
	addi.d	$t2, $t2, 2
	addi.w	$a5, $a5, -1
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 1
	bnez	$t0, .LBB2_75
.LBB2_76:                               # %._crit_edge525
	slli.d	$a3, $s5, 4
	alsl.d	$a3, $s5, $a3, 3
	addi.d	$a5, $sp, 56
	add.d	$a3, $a5, $a3
	ld.w	$a5, $a3, 20
	slli.d	$a5, $a5, 3
	ld.w	$a3, $a3, 16
	ldx.d	$a5, $a2, $a5
	slli.d	$a3, $a3, 1
	ldx.hu	$a5, $a5, $a3
	bstrpick.d	$a3, $s5, 31, 31
	add.w	$a3, $s5, $a3
	srai.d	$a3, $a3, 1
	sub.d	$a6, $a5, $a6
	mul.d	$a6, $a6, $a3
	blt	$s5, $a7, .LBB2_136
# %bb.77:                               # %.lr.ph530
	addi.d	$a7, $a3, -1
	ori	$t0, $zero, 1
	slt	$t1, $t0, $a7
	masknez	$t0, $t0, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t0
	ori	$t1, $zero, 6
	bstrpick.d	$t0, $a3, 31, 0
	bge	$s5, $t1, .LBB2_131
# %bb.78:
	move	$t1, $zero
	b	.LBB2_134
.LBB2_79:
	beqz	$a2, .LBB2_81
# %bb.80:
	bnez	$a1, .LBB2_82
.LBB2_81:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_82:
	ori	$a0, $zero, 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	blt	$s5, $a0, .LBB2_190
# %bb.83:                               # %.split510.us
	blt	$a2, $a0, .LBB2_190
# %bb.84:                               # %.lr.ph504.us.us.preheader
	move	$a3, $zero
	bstrpick.d	$a0, $s5, 31, 31
	add.w	$a0, $s5, $a0
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 3
	bstrpick.d	$a1, $a2, 31, 31
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 1
	addi.d	$t2, $fp, 104
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t3, $a4, 0
	bstrpick.d	$t0, $a0, 31, 0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a4, $a2, 29, 4
	slli.d	$a4, $a4, 4
	andi	$a5, $a2, 8
	bstrpick.d	$a6, $a2, 29, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $fp, 120
	sub.d	$t4, $zero, $a6
	addi.d	$t5, $sp, 56
	ori	$t6, $zero, 8
	ori	$t7, $zero, 16
	move	$t8, $t2
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_85:                               # %..loopexit441_crit_edge.us.us
                                        #   in Loop: Header=BB2_86 Depth=1
	addi.d	$a7, $a7, 32
	addi.d	$t8, $t8, 32
	beq	$a3, $t0, .LBB2_147
.LBB2_86:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_94 Depth 2
                                        #     Child Loop BB2_91 Depth 2
                                        #     Child Loop BB2_98 Depth 2
	addi.d	$a3, $a3, 1
	slli.d	$t1, $a3, 4
	alsl.d	$t1, $a3, $t1, 3
	add.d	$t1, $t5, $t1
	ld.w	$s0, $t1, 20
	slli.d	$s0, $s0, 3
	ld.w	$t1, $t1, 16
	ldx.d	$s0, $t3, $s0
	slli.d	$t1, $t1, 1
	ldx.hu	$s0, $s0, $t1
	bgeu	$a2, $t6, .LBB2_88
# %bb.87:                               #   in Loop: Header=BB2_86 Depth=1
	move	$t1, $zero
	b	.LBB2_97
	.p2align	4, , 16
.LBB2_88:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_86 Depth=1
	vreplgr2vr.h	$vr0, $s0
	bgeu	$a2, $t7, .LBB2_93
# %bb.89:                               #   in Loop: Header=BB2_86 Depth=1
	move	$s1, $zero
.LBB2_90:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB2_86 Depth=1
	add.d	$t1, $t4, $s1
	alsl.d	$s1, $s1, $t8, 1
	.p2align	4, , 16
.LBB2_91:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB2_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s1, 0
	addi.d	$t1, $t1, 8
	addi.d	$s1, $s1, 16
	bnez	$t1, .LBB2_91
# %bb.92:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_86 Depth=1
	move	$t1, $a6
	beq	$a6, $a1, .LBB2_85
	b	.LBB2_97
	.p2align	4, , 16
.LBB2_93:                               # %vector.ph769
                                        #   in Loop: Header=BB2_86 Depth=1
	move	$t1, $a7
	move	$s1, $a4
	.p2align	4, , 16
.LBB2_94:                               # %vector.body772
                                        #   Parent Loop BB2_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	addi.d	$s1, $s1, -16
	addi.d	$t1, $t1, 32
	bnez	$s1, .LBB2_94
# %bb.95:                               # %middle.block775
                                        #   in Loop: Header=BB2_86 Depth=1
	beq	$a4, $a1, .LBB2_85
# %bb.96:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_86 Depth=1
	move	$s1, $a4
	move	$t1, $a4
	bnez	$a5, .LBB2_90
	.p2align	4, , 16
.LBB2_97:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB2_86 Depth=1
	slli.d	$s1, $t1, 1
	sub.d	$t1, $a1, $t1
	.p2align	4, , 16
.LBB2_98:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB2_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.h	$s0, $t8, $s1
	addi.d	$t1, $t1, -1
	addi.d	$s1, $s1, 2
	bnez	$t1, .LBB2_98
	b	.LBB2_85
.LBB2_99:                               # %.lr.ph496.us.1
	ld.d	$t0, $a2, 0
	slli.d	$a6, $a0, 1
	ldx.d	$t0, $t0, $a4
	ori	$t1, $zero, 1
	slt	$t2, $t1, $a7
	masknez	$t1, $t1, $t2
	maskeqz	$t2, $a7, $t2
	or	$t1, $t2, $t1
	alsl.d	$t2, $a3, $t0, 1
	bstrpick.d	$t0, $t1, 29, 1
	slli.d	$t3, $t0, 1
	alsl.d	$t0, $a0, $fp, 1
	addi.d	$t4, $t0, 136
	addi.d	$t5, $t0, 104
	ori	$t6, $zero, 4
	move	$t7, $a0
	b	.LBB2_101
	.p2align	4, , 16
.LBB2_100:                              # %._crit_edge493.us.us.1
                                        #   in Loop: Header=BB2_101 Depth=1
	addi.d	$t7, $t7, 1
	addi.d	$t4, $t4, 2
	addi.d	$t5, $t5, 2
	bge	$t7, $a6, .LBB2_108
.LBB2_101:                              # %.lr.ph492.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_104 Depth 2
                                        #     Child Loop BB2_107 Depth 2
	slli.d	$t8, $t7, 1
	ldx.hu	$t8, $t2, $t8
	bge	$s5, $t6, .LBB2_103
# %bb.102:                              #   in Loop: Header=BB2_101 Depth=1
	move	$s1, $zero
	b	.LBB2_106
	.p2align	4, , 16
.LBB2_103:                              # %vector.body734.preheader
                                        #   in Loop: Header=BB2_101 Depth=1
	move	$s0, $t3
	move	$s1, $t4
	.p2align	4, , 16
.LBB2_104:                              # %vector.body734
                                        #   Parent Loop BB2_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t8, $s1, -32
	st.h	$t8, $s1, 0
	addi.d	$s0, $s0, -2
	addi.d	$s1, $s1, 64
	bnez	$s0, .LBB2_104
# %bb.105:                              # %middle.block737
                                        #   in Loop: Header=BB2_101 Depth=1
	move	$s1, $t3
	beq	$t3, $t1, .LBB2_100
.LBB2_106:                              # %scalar.ph729.preheader
                                        #   in Loop: Header=BB2_101 Depth=1
	sub.d	$s0, $t1, $s1
	slli.d	$s1, $s1, 5
	add.d	$s1, $t5, $s1
	.p2align	4, , 16
.LBB2_107:                              # %scalar.ph729
                                        #   Parent Loop BB2_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t8, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 32
	bnez	$s0, .LBB2_107
	b	.LBB2_100
.LBB2_108:                              # %.split500.us
	ld.d	$t1, $a2, 0
	ldx.d	$t2, $t1, $a4
	move	$t3, $zero
	slli.d	$t1, $a7, 1
	alsl.d	$t4, $a3, $t2, 1
	addi.d	$t2, $a7, 1
	slt	$t5, $t2, $t1
	masknez	$t2, $t2, $t5
	maskeqz	$t5, $t1, $t5
	or	$t2, $t5, $t2
	nor	$a7, $a7, $zero
	add.w	$a7, $t2, $a7
	bstrpick.d	$t2, $a7, 31, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t5, $t2, 32, 1
	slli.d	$t7, $t5, 1
	alsl.d	$t8, $t5, $a1, 1
	slli.d	$t6, $a1, 5
	add.d	$fp, $t6, $fp
	addi.d	$fp, $fp, 136
	b	.LBB2_110
	.p2align	4, , 16
.LBB2_109:                              # %._crit_edge493.us.us.1618
                                        #   in Loop: Header=BB2_110 Depth=1
	addi.d	$t3, $t3, 1
	addi.d	$fp, $fp, 2
	addi.d	$a5, $a5, 2
	beq	$t3, $a0, .LBB2_116
.LBB2_110:                              # %.lr.ph492.us.us.1613
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_112 Depth 2
                                        #     Child Loop BB2_115 Depth 2
	slli.d	$s0, $t3, 1
	ldx.hu	$s0, $t4, $s0
	move	$s1, $a1
	beqz	$a7, .LBB2_114
# %bb.111:                              # %vector.body746.preheader
                                        #   in Loop: Header=BB2_110 Depth=1
	move	$s1, $fp
	move	$s2, $t7
	.p2align	4, , 16
.LBB2_112:                              # %vector.body746
                                        #   Parent Loop BB2_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$s0, $s1, -32
	st.h	$s0, $s1, 0
	addi.d	$s2, $s2, -2
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB2_112
# %bb.113:                              # %middle.block749
                                        #   in Loop: Header=BB2_110 Depth=1
	move	$s1, $t8
	beq	$t2, $t7, .LBB2_109
.LBB2_114:                              # %scalar.ph741.preheader
                                        #   in Loop: Header=BB2_110 Depth=1
	slli.d	$s2, $s1, 5
	add.d	$s2, $a5, $s2
	.p2align	4, , 16
.LBB2_115:                              # %scalar.ph741
                                        #   Parent Loop BB2_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$s0, $s2, 0
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 32
	blt	$s1, $t1, .LBB2_115
	b	.LBB2_109
.LBB2_116:                              # %.lr.ph496.us.1.1
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $a4
	alsl.d	$a2, $a3, $a2, 1
	slli.d	$a3, $t5, 1
	alsl.d	$a4, $t5, $a1, 1
	add.d	$a5, $t0, $t6
	addi.d	$a5, $a5, 136
	addi.d	$t0, $t0, 104
	b	.LBB2_118
	.p2align	4, , 16
.LBB2_117:                              # %._crit_edge493.us.us.1.1
                                        #   in Loop: Header=BB2_118 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 2
	addi.d	$t0, $t0, 2
	bge	$a0, $a6, .LBB2_190
.LBB2_118:                              # %.lr.ph492.us.us.1.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_120 Depth 2
                                        #     Child Loop BB2_123 Depth 2
	slli.d	$t3, $a0, 1
	ldx.hu	$t3, $a2, $t3
	move	$t4, $a1
	beqz	$a7, .LBB2_122
# %bb.119:                              # %vector.body758.preheader
                                        #   in Loop: Header=BB2_118 Depth=1
	move	$t4, $a5
	move	$t5, $a3
	.p2align	4, , 16
.LBB2_120:                              # %vector.body758
                                        #   Parent Loop BB2_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t3, $t4, -32
	st.h	$t3, $t4, 0
	addi.d	$t5, $t5, -2
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB2_120
# %bb.121:                              # %middle.block762
                                        #   in Loop: Header=BB2_118 Depth=1
	move	$t4, $a4
	beq	$t2, $a3, .LBB2_117
.LBB2_122:                              # %scalar.ph753.preheader
                                        #   in Loop: Header=BB2_118 Depth=1
	slli.d	$t5, $t4, 5
	add.d	$t5, $t0, $t5
	.p2align	4, , 16
.LBB2_123:                              # %scalar.ph753
                                        #   Parent Loop BB2_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t3, $t5, 0
	addi.w	$t4, $t4, 1
	addi.d	$t5, $t5, 32
	blt	$t4, $t1, .LBB2_123
	b	.LBB2_117
.LBB2_124:                              # %.preheader438.lr.ph
	addi.d	$a0, $fp, 104
	bstrpick.d	$a1, $a5, 31, 0
	addi.d	$a2, $sp, 496
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a5, $a3, 3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_125:                              # %.preheader438
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, -1
	ld.bu	$a6, $a5, -3
	ld.h	$a7, $a2, -8
	slli.d	$a4, $a4, 5
	add.d	$a4, $a0, $a4
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a4, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a4, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a4, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a4, $t2
	addi.d	$t3, $a4, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a4, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a4, $a4, 96
	stx.h	$a7, $a4, $a6
	stx.h	$a7, $a4, $t0
	stx.h	$a7, $a4, $t1
	stx.h	$a7, $a4, $t2
	ld.bu	$a4, $a3, 0
	ld.bu	$a6, $a5, -2
	ld.h	$a7, $a2, -4
	slli.d	$a4, $a4, 5
	add.d	$a4, $a0, $a4
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a4, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a4, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a4, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a4, $t2
	addi.d	$t3, $a4, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a4, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a4, $a4, 96
	stx.h	$a7, $a4, $a6
	stx.h	$a7, $a4, $t0
	stx.h	$a7, $a4, $t1
	stx.h	$a7, $a4, $t2
	ld.bu	$a4, $a3, 1
	ld.bu	$a6, $a5, -1
	ld.h	$a7, $a2, 0
	slli.d	$a4, $a4, 5
	add.d	$a4, $a0, $a4
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a4, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a4, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a4, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a4, $t2
	addi.d	$t3, $a4, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a4, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a4, $a4, 96
	stx.h	$a7, $a4, $a6
	stx.h	$a7, $a4, $t0
	stx.h	$a7, $a4, $t1
	stx.h	$a7, $a4, $t2
	ld.bu	$a4, $a3, 2
	ld.bu	$a6, $a5, 0
	ld.h	$a7, $a2, 4
	slli.d	$a4, $a4, 5
	add.d	$a4, $a0, $a4
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a4, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a4, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a4, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a4, $t2
	addi.d	$t3, $a4, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a4, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a4, $a4, 96
	stx.h	$a7, $a4, $a6
	stx.h	$a7, $a4, $t0
	stx.h	$a7, $a4, $t1
	stx.h	$a7, $a4, $t2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB2_125
	b	.LBB2_190
.LBB2_126:                              # %vector.scevcheck
	addi.w	$t2, $a5, -2
	addi.d	$t3, $t0, -1
	sub.w	$t4, $t2, $t3
	move	$t1, $zero
	blt	$t2, $t4, .LBB2_74
# %bb.127:                              # %vector.scevcheck
	srli.d	$t3, $t3, 32
	bnez	$t3, .LBB2_74
# %bb.128:                              # %vector.ph887
	bstrpick.d	$t1, $t0, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$t1, $t1, 3
	vori.b	$vr1, $vr0, 0
	pcalau12i	$t3, %pc_hi20(.LCPI2_0)
	vld	$vr2, $t3, %pc_lo12(.LCPI2_0)
	pcalau12i	$t3, %pc_hi20(.LCPI2_1)
	vld	$vr3, $t3, %pc_lo12(.LCPI2_1)
	pcalau12i	$t3, %pc_hi20(.LCPI2_2)
	vld	$vr4, $t3, %pc_lo12(.LCPI2_2)
	vinsgr2vr.w	$vr1, $a4, 0
	alsl.d	$a4, $a5, $a3, 1
	addi.d	$a4, $a4, 8
	move	$t3, $t1
	vori.b	$vr5, $vr0, 0
	.p2align	4, , 16
.LBB2_129:                              # %vector.body890
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $a4, -8
	ld.d	$t5, $a4, 0
	vinsgr2vr.d	$vr6, $t4, 0
	vinsgr2vr.d	$vr7, $t5, 0
	alsl.d	$t4, $t2, $a3, 1
	ld.d	$t5, $t4, -6
	ld.d	$t4, $t4, -14
	vilvl.h	$vr6, $vr0, $vr6
	vilvl.h	$vr7, $vr0, $vr7
	vinsgr2vr.d	$vr8, $t5, 0
	vinsgr2vr.d	$vr9, $t4, 0
	vori.b	$vr10, $vr4, 0
	vshuf.h	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr4, 0
	vshuf.h	$vr8, $vr0, $vr9
	vsub.w	$vr6, $vr6, $vr10
	vsub.w	$vr7, $vr7, $vr8
	vpickev.w	$vr8, $vr2, $vr3
	vaddi.wu	$vr9, $vr8, 1
	vaddi.wu	$vr8, $vr8, 5
	vmadd.w	$vr1, $vr6, $vr9
	vmadd.w	$vr5, $vr7, $vr8
	vaddi.du	$vr3, $vr3, 8
	vaddi.du	$vr2, $vr2, 8
	addi.d	$t3, $t3, -8
	addi.d	$a4, $a4, 16
	addi.w	$t2, $t2, -8
	bnez	$t3, .LBB2_129
# %bb.130:                              # %middle.block898
	vadd.w	$vr0, $vr5, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	bne	$t1, $t0, .LBB2_74
	b	.LBB2_76
.LBB2_131:                              # %vector.ph903
	move	$t2, $zero
	bstrpick.d	$t1, $a7, 30, 1
	slli.d	$t1, $t1, 1
	ori	$t4, $zero, 24
	mul.d	$t3, $t0, $t4
	addi.d	$t5, $sp, 56
	add.d	$t3, $t3, $t5
	addi.d	$t3, $t3, 68
	mul.d	$t4, $a3, $t4
	add.d	$t4, $t4, $t5
	addi.d	$t4, $t4, -32
	ori	$t5, $zero, 2
	move	$t6, $t1
	.p2align	4, , 16
.LBB2_132:                              # %vector.body906
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t7, $t3, -24
	ld.w	$t8, $t3, 0
	slli.d	$t7, $t7, 3
	slli.d	$t8, $t8, 3
	ld.w	$s0, $t3, -28
	ld.w	$s1, $t3, -4
	ldx.d	$t7, $a2, $t7
	ldx.d	$t8, $a2, $t8
	slli.d	$s0, $s0, 1
	slli.d	$s1, $s1, 1
	ld.w	$s2, $t4, 28
	ld.w	$s3, $t4, 4
	ldx.hu	$t7, $t7, $s0
	ldx.hu	$t8, $t8, $s1
	slli.d	$s0, $s2, 3
	slli.d	$s1, $s3, 3
	ld.w	$s2, $t4, 24
	ld.w	$s3, $t4, 0
	ldx.d	$s0, $a2, $s0
	ldx.d	$s1, $a2, $s1
	slli.d	$s2, $s2, 1
	slli.d	$s3, $s3, 1
	ldx.hu	$s0, $s0, $s2
	ldx.hu	$s1, $s1, $s3
	sub.d	$t7, $t7, $s0
	sub.d	$t8, $t8, $s1
	addi.d	$s0, $t5, -1
	mul.d	$t7, $t7, $s0
	mul.d	$t8, $t8, $t5
	add.d	$a6, $t7, $a6
	add.d	$t2, $t8, $t2
	addi.d	$t5, $t5, 2
	addi.d	$t6, $t6, -2
	addi.d	$t3, $t3, 48
	addi.d	$t4, $t4, -48
	bnez	$t6, .LBB2_132
# %bb.133:                              # %middle.block911
	add.d	$a6, $t2, $a6
	beq	$t1, $a7, .LBB2_136
.LBB2_134:                              # %scalar.ph901.preheader
	addi.d	$t2, $t1, 1
	ori	$t3, $zero, 24
	mul.d	$t4, $t1, $t3
	mul.d	$t0, $t0, $t3
	add.d	$t0, $t4, $t0
	addi.d	$t5, $sp, 56
	add.d	$t0, $t0, $t5
	addi.d	$t0, $t0, 44
	sub.d	$a7, $a7, $t1
	mul.d	$t1, $a3, $t3
	sub.d	$t1, $t1, $t4
	add.d	$t1, $t1, $t5
	addi.d	$t1, $t1, -4
	.p2align	4, , 16
.LBB2_135:                              # %scalar.ph901
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a2, $t3
	ld.w	$t5, $t0, -4
	slli.d	$t4, $t4, 3
	ld.w	$t6, $t1, -4
	ldx.d	$t4, $a2, $t4
	slli.d	$t5, $t5, 1
	ldx.hu	$t3, $t3, $t5
	slli.d	$t5, $t6, 1
	ldx.hu	$t4, $t4, $t5
	sub.d	$t3, $t3, $t4
	mul.d	$t3, $t3, $t2
	add.d	$a6, $t3, $a6
	addi.d	$t2, $t2, 1
	addi.d	$t0, $t0, 24
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, -24
	bnez	$a7, .LBB2_135
.LBB2_136:                              # %._crit_edge531
	blez	$s5, .LBB2_190
# %bb.137:                              # %.preheader.lr.ph
	blez	$s4, .LBB2_190
# %bb.138:                              # %.preheader.lr.ph.split.us
	move	$a2, $zero
	addi.d	$a7, $s4, -8
	sltui	$a7, $a7, 1
	ori	$t0, $zero, 5
	masknez	$t1, $t0, $a7
	ori	$t2, $zero, 17
	maskeqz	$t3, $t2, $a7
	or	$t1, $t3, $t1
	mul.d	$a4, $a4, $t1
	alsl.w	$a4, $s4, $a4, 1
	ori	$t1, $zero, 6
	sub.d	$a7, $t1, $a7
	sra.w	$a4, $a4, $a7
	addi.d	$a7, $s5, -8
	sltui	$a7, $a7, 1
	masknez	$t0, $t0, $a7
	maskeqz	$t2, $t2, $a7
	or	$t0, $t2, $t0
	mul.d	$a6, $a6, $t0
	alsl.w	$a6, $s5, $a6, 1
	sub.d	$a7, $t1, $a7
	sra.w	$a6, $a6, $a7
	add.d	$a1, $a5, $a1
	slli.d	$t1, $a1, 4
	addi.d	$a1, $t1, 16
	addi.d	$a5, $fp, 104
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1808
	ldx.w	$a7, $fp, $a7
	bstrpick.d	$t0, $s4, 30, 3
	slli.d	$t0, $t0, 3
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $a7
	ori	$t2, $zero, 1
	sub.d	$t3, $t2, $a3
	mul.d	$t3, $a6, $t3
	add.d	$t1, $t3, $t1
	addi.d	$t1, $t1, 16
	sub.d	$a0, $t2, $a0
	ori	$t2, $zero, 8
	b	.LBB2_140
	.p2align	4, , 16
.LBB2_139:                              # %._crit_edge535.us
                                        #   in Loop: Header=BB2_140 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a5, 32
	add.d	$t1, $t1, $a6
	beq	$a2, $s5, .LBB2_190
.LBB2_140:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_143 Depth 2
                                        #     Child Loop BB2_146 Depth 2
	bgeu	$s4, $t2, .LBB2_142
# %bb.141:                              #   in Loop: Header=BB2_140 Depth=1
	move	$t5, $zero
	b	.LBB2_145
	.p2align	4, , 16
.LBB2_142:                              # %vector.ph918
                                        #   in Loop: Header=BB2_140 Depth=1
	sub.d	$t3, $a2, $a3
	addi.d	$t3, $t3, 1
	pcalau12i	$t4, %pc_hi20(.LCPI2_3)
	vld	$vr3, $t4, %pc_lo12(.LCPI2_3)
	pcalau12i	$t4, %pc_hi20(.LCPI2_4)
	vld	$vr4, $t4, %pc_lo12(.LCPI2_4)
	mul.d	$t3, $t3, $a6
	add.d	$t3, $a1, $t3
	vreplgr2vr.w	$vr5, $t3
	move	$t3, $a5
	move	$t4, $t0
	.p2align	4, , 16
.LBB2_143:                              # %vector.body929
                                        #   Parent Loop BB2_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vsub.w	$vr6, $vr3, $vr0
	vsub.w	$vr7, $vr4, $vr0
	vaddi.wu	$vr7, $vr7, 1
	vaddi.wu	$vr6, $vr6, 1
	vori.b	$vr8, $vr5, 0
	vmadd.w	$vr8, $vr6, $vr1
	vori.b	$vr6, $vr5, 0
	vmadd.w	$vr6, $vr7, $vr1
	vsrai.w	$vr6, $vr6, 5
	vsrai.w	$vr7, $vr8, 5
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr2
	vmin.w	$vr7, $vr7, $vr2
	vpickev.h	$vr6, $vr7, $vr6
	vst	$vr6, $t3, 0
	vaddi.wu	$vr4, $vr4, 8
	vaddi.wu	$vr3, $vr3, 8
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 16
	bnez	$t4, .LBB2_143
# %bb.144:                              # %middle.block934
                                        #   in Loop: Header=BB2_140 Depth=1
	move	$t5, $t0
	beq	$t0, $s4, .LBB2_139
.LBB2_145:                              # %scalar.ph916.preheader
                                        #   in Loop: Header=BB2_140 Depth=1
	add.d	$t3, $a0, $t5
	mul.d	$t3, $a4, $t3
	add.w	$t3, $t1, $t3
	slli.d	$t4, $t5, 1
	sub.d	$t5, $s4, $t5
	.p2align	4, , 16
.LBB2_146:                              # %scalar.ph916
                                        #   Parent Loop BB2_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$t6, $t3, 5
	srai.d	$t7, $t3, 63
	andn	$t6, $t6, $t7
	slt	$t7, $t6, $a7
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a7, $t7
	or	$t6, $t6, $t7
	stx.h	$t6, $a5, $t4
	add.w	$t3, $t3, $a4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB2_146
	b	.LBB2_139
.LBB2_147:                              # %._crit_edge508.us
	move	$t6, $zero
	slli.d	$a3, $a2, 1
	ori	$a4, $zero, 1
	slt	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$t7, $a5, $a4
	addi.d	$a4, $a2, 1
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a4, $a5, $a4
	nor	$a5, $a2, $zero
	add.w	$a4, $a4, $a5
	bstrpick.d	$a5, $a4, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$t4, $a5, 32, 4
	slli.d	$t8, $t4, 4
	alsl.d	$s0, $t4, $a2, 4
	andi	$a6, $a5, 8
	bstrpick.d	$t5, $a5, 32, 3
	slli.d	$a7, $t5, 3
	alsl.d	$s1, $t5, $a2, 3
	alsl.d	$t1, $a1, $fp, 1
	addi.d	$s2, $t1, 120
	addi.d	$s3, $t1, 104
	sub.d	$s4, $zero, $a7
	addi.d	$s5, $sp, 56
	ori	$s6, $zero, 7
	ori	$s7, $zero, 15
	b	.LBB2_149
	.p2align	4, , 16
.LBB2_148:                              # %..loopexit441_crit_edge.us.us.1
                                        #   in Loop: Header=BB2_149 Depth=1
	addi.d	$s2, $s2, 32
	addi.d	$s3, $s3, 32
	addi.d	$t2, $t2, 32
	beq	$t6, $t7, .LBB2_161
.LBB2_149:                              # %iter.check789
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_156 Depth 2
                                        #     Child Loop BB2_153 Depth 2
                                        #     Child Loop BB2_160 Depth 2
	addi.d	$t6, $t6, 1
	slli.d	$t1, $t6, 4
	alsl.d	$t1, $t6, $t1, 3
	add.d	$t1, $s5, $t1
	ld.w	$s8, $t1, 20
	slli.d	$s8, $s8, 3
	ld.w	$t1, $t1, 16
	ldx.d	$s8, $t3, $s8
	slli.d	$t1, $t1, 1
	ldx.hu	$s8, $s8, $t1
	move	$ra, $a2
	bltu	$a4, $s6, .LBB2_159
# %bb.150:                              # %vector.main.loop.iter.check791
                                        #   in Loop: Header=BB2_149 Depth=1
	vreplgr2vr.h	$vr0, $s8
	bgeu	$a4, $s7, .LBB2_155
# %bb.151:                              #   in Loop: Header=BB2_149 Depth=1
	move	$t1, $zero
.LBB2_152:                              # %vec.epilog.ph804
                                        #   in Loop: Header=BB2_149 Depth=1
	alsl.d	$ra, $t1, $s3, 1
	add.d	$t1, $s4, $t1
	.p2align	4, , 16
.LBB2_153:                              # %vec.epilog.vector.body812
                                        #   Parent Loop BB2_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $ra, 0
	addi.d	$t1, $t1, 8
	addi.d	$ra, $ra, 16
	bnez	$t1, .LBB2_153
# %bb.154:                              # %vec.epilog.middle.block816
                                        #   in Loop: Header=BB2_149 Depth=1
	move	$ra, $s1
	beq	$a5, $a7, .LBB2_148
	b	.LBB2_159
	.p2align	4, , 16
.LBB2_155:                              # %vector.ph792
                                        #   in Loop: Header=BB2_149 Depth=1
	move	$ra, $t8
	move	$t1, $s2
	.p2align	4, , 16
.LBB2_156:                              # %vector.body797
                                        #   Parent Loop BB2_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	addi.d	$ra, $ra, -16
	addi.d	$t1, $t1, 32
	bnez	$ra, .LBB2_156
# %bb.157:                              # %middle.block800
                                        #   in Loop: Header=BB2_149 Depth=1
	beq	$a5, $t8, .LBB2_148
# %bb.158:                              # %vec.epilog.iter.check805
                                        #   in Loop: Header=BB2_149 Depth=1
	move	$t1, $t8
	move	$ra, $s0
	bnez	$a6, .LBB2_152
	.p2align	4, , 16
.LBB2_159:                              # %vec.epilog.scalar.ph803.preheader
                                        #   in Loop: Header=BB2_149 Depth=1
	alsl.d	$t1, $ra, $t2, 1
	.p2align	4, , 16
.LBB2_160:                              # %vec.epilog.scalar.ph803
                                        #   Parent Loop BB2_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$s8, $t1, 0
	addi.w	$ra, $ra, 1
	addi.d	$t1, $t1, 2
	blt	$ra, $a3, .LBB2_160
	b	.LBB2_148
.LBB2_161:                              # %.split515.us
	slli.d	$t2, $a0, 1
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	bstrpick.d	$t3, $a1, 29, 4
	slli.d	$t3, $t3, 4
	andi	$t6, $a1, 8
	bstrpick.d	$t7, $a1, 29, 3
	slli.d	$t7, $t7, 3
	slli.d	$t0, $t0, 5
	add.d	$t0, $t0, $fp
	addi.d	$t8, $t0, 120
	sub.d	$fp, $zero, $t7
	addi.d	$s0, $t0, 104
	addi.d	$s1, $sp, 56
	ori	$s2, $zero, 8
	ori	$s3, $zero, 16
	move	$s4, $a0
	b	.LBB2_163
	.p2align	4, , 16
.LBB2_162:                              # %..loopexit441_crit_edge.us.us.1639
                                        #   in Loop: Header=BB2_163 Depth=1
	addi.w	$s5, $s4, 0
	addi.d	$t8, $t8, 32
	addi.d	$s0, $s0, 32
	bge	$s5, $t2, .LBB2_176
.LBB2_163:                              # %iter.check822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_171 Depth 2
                                        #     Child Loop BB2_168 Depth 2
                                        #     Child Loop BB2_175 Depth 2
	addi.d	$s4, $s4, 1
	slli.d	$s5, $s4, 4
	alsl.d	$s5, $s4, $s5, 3
	add.d	$s5, $s1, $s5
	ld.w	$s6, $s5, 20
	slli.d	$s6, $s6, 3
	ld.w	$s5, $s5, 16
	ldx.d	$s6, $t1, $s6
	slli.d	$s5, $s5, 1
	ldx.hu	$s5, $s6, $s5
	bgeu	$a2, $s2, .LBB2_165
# %bb.164:                              #   in Loop: Header=BB2_163 Depth=1
	move	$s7, $zero
	b	.LBB2_174
	.p2align	4, , 16
.LBB2_165:                              # %vector.main.loop.iter.check824
                                        #   in Loop: Header=BB2_163 Depth=1
	vreplgr2vr.h	$vr0, $s5
	bgeu	$a2, $s3, .LBB2_170
# %bb.166:                              #   in Loop: Header=BB2_163 Depth=1
	move	$s8, $zero
.LBB2_167:                              # %vec.epilog.ph837
                                        #   in Loop: Header=BB2_163 Depth=1
	add.d	$s6, $fp, $s8
	alsl.d	$s7, $s8, $s0, 1
	.p2align	4, , 16
.LBB2_168:                              # %vec.epilog.vector.body845
                                        #   Parent Loop BB2_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s7, 0
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 16
	bnez	$s6, .LBB2_168
# %bb.169:                              # %vec.epilog.middle.block848
                                        #   in Loop: Header=BB2_163 Depth=1
	move	$s7, $t7
	beq	$t7, $a1, .LBB2_162
	b	.LBB2_174
	.p2align	4, , 16
.LBB2_170:                              # %vector.ph825
                                        #   in Loop: Header=BB2_163 Depth=1
	move	$s6, $t8
	move	$s7, $t3
	.p2align	4, , 16
.LBB2_171:                              # %vector.body830
                                        #   Parent Loop BB2_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s6, -16
	vst	$vr0, $s6, 0
	addi.d	$s7, $s7, -16
	addi.d	$s6, $s6, 32
	bnez	$s7, .LBB2_171
# %bb.172:                              # %middle.block833
                                        #   in Loop: Header=BB2_163 Depth=1
	beq	$t3, $a1, .LBB2_162
# %bb.173:                              # %vec.epilog.iter.check838
                                        #   in Loop: Header=BB2_163 Depth=1
	move	$s8, $t3
	move	$s7, $t3
	bnez	$t6, .LBB2_167
	.p2align	4, , 16
.LBB2_174:                              # %vec.epilog.scalar.ph836.preheader
                                        #   in Loop: Header=BB2_163 Depth=1
	sub.d	$s6, $a1, $s7
	slli.d	$s7, $s7, 1
	.p2align	4, , 16
.LBB2_175:                              # %vec.epilog.scalar.ph836
                                        #   Parent Loop BB2_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.h	$s5, $s0, $s7
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 2
	bnez	$s6, .LBB2_175
	b	.LBB2_162
.LBB2_176:                              # %._crit_edge508.us.1641
	slli.d	$a2, $t4, 4
	alsl.d	$t3, $t4, $a1, 4
	alsl.d	$t4, $t5, $a1, 3
	alsl.d	$t6, $a1, $t0, 1
	addi.d	$t5, $t6, 120
	addi.d	$t6, $t6, 104
	move	$t7, $a5
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t7, $zero, $t7
	addi.d	$t0, $t0, 104
	addi.d	$t8, $sp, 56
	ori	$fp, $zero, 7
	ori	$s0, $zero, 15
	b	.LBB2_178
	.p2align	4, , 16
.LBB2_177:                              # %..loopexit441_crit_edge.us.us.1.1
                                        #   in Loop: Header=BB2_178 Depth=1
	addi.w	$s1, $a0, 0
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	addi.d	$t0, $t0, 32
	bge	$s1, $t2, .LBB2_190
.LBB2_178:                              # %iter.check854
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_185 Depth 2
                                        #     Child Loop BB2_182 Depth 2
                                        #     Child Loop BB2_189 Depth 2
	addi.d	$a0, $a0, 1
	slli.d	$s1, $a0, 4
	alsl.d	$s1, $a0, $s1, 3
	add.d	$s1, $t8, $s1
	ld.w	$s2, $s1, 20
	slli.d	$s2, $s2, 3
	ld.w	$s1, $s1, 16
	ldx.d	$s2, $t1, $s2
	slli.d	$s1, $s1, 1
	ldx.hu	$s1, $s2, $s1
	move	$s2, $a1
	bltu	$a4, $fp, .LBB2_188
# %bb.179:                              # %vector.main.loop.iter.check856
                                        #   in Loop: Header=BB2_178 Depth=1
	vreplgr2vr.h	$vr0, $s1
	bgeu	$a4, $s0, .LBB2_184
# %bb.180:                              #   in Loop: Header=BB2_178 Depth=1
	move	$s3, $zero
.LBB2_181:                              # %vec.epilog.ph869
                                        #   in Loop: Header=BB2_178 Depth=1
	alsl.d	$s2, $s3, $t6, 1
	add.d	$s3, $t7, $s3
	.p2align	4, , 16
.LBB2_182:                              # %vec.epilog.vector.body877
                                        #   Parent Loop BB2_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s2, 0
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 16
	bnez	$s3, .LBB2_182
# %bb.183:                              # %vec.epilog.middle.block881
                                        #   in Loop: Header=BB2_178 Depth=1
	move	$s2, $t4
	beq	$a5, $a7, .LBB2_177
	b	.LBB2_188
	.p2align	4, , 16
.LBB2_184:                              # %vector.ph857
                                        #   in Loop: Header=BB2_178 Depth=1
	move	$s2, $a2
	move	$s3, $t5
	.p2align	4, , 16
.LBB2_185:                              # %vector.body862
                                        #   Parent Loop BB2_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s3, -16
	vst	$vr0, $s3, 0
	addi.d	$s2, $s2, -16
	addi.d	$s3, $s3, 32
	bnez	$s2, .LBB2_185
# %bb.186:                              # %middle.block865
                                        #   in Loop: Header=BB2_178 Depth=1
	beq	$a5, $a2, .LBB2_177
# %bb.187:                              # %vec.epilog.iter.check870
                                        #   in Loop: Header=BB2_178 Depth=1
	move	$s3, $a2
	move	$s2, $t3
	bnez	$a6, .LBB2_181
	.p2align	4, , 16
.LBB2_188:                              # %vec.epilog.scalar.ph868.preheader
                                        #   in Loop: Header=BB2_178 Depth=1
	alsl.d	$s3, $s2, $t0, 1
	.p2align	4, , 16
.LBB2_189:                              # %vec.epilog.scalar.ph868
                                        #   Parent Loop BB2_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$s1, $s3, 0
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 2
	blt	$s2, $a3, .LBB2_189
	b	.LBB2_177
.LBB2_190:                              # %.loopexit
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.Lfunc_end2:
	.size	intrapred_chroma, .Lfunc_end2-intrapred_chroma
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_22-.LJTI2_0
	.word	.LBB2_79-.LJTI2_0
	.word	.LBB2_53-.LJTI2_0
	.word	.LBB2_66-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_34-.LJTI2_1
	.word	.LBB2_39-.LJTI2_1
	.word	.LBB2_26-.LJTI2_1
	.word	.LBB2_36-.LJTI2_1
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function itrans
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
	.text
	.globl	itrans
	.p2align	5
	.type	itrans,@function
itrans:                                 # @itrans
# %bb.0:
	lu12i.w	$a6, 1
	ori	$a7, $a6, 1788
	ldx.w	$a7, $a0, $a7
	ld.w	$t0, $a0, 28
	sub.w	$a7, $zero, $a7
	bne	$t0, $a7, .LBB3_3
# %bb.1:
	ldptr.w	$a7, $a0, 5920
	sltui	$a5, $a5, 1
	ori	$t0, $a6, 1808
	masknez	$t0, $t0, $a5
	ori	$a6, $a6, 1804
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $t0
	ldx.w	$a5, $a0, $a5
	ori	$a6, $zero, 1
	bne	$a7, $a6, .LBB3_4
# %bb.2:                                # %.preheader105
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	add.d	$a3, $a0, $a3
	slli.d	$a4, $a4, 6
	slli.d	$a2, $a2, 5
	add.d	$a2, $a0, $a2
	alsl.d	$a1, $a1, $a2, 1
	ld.d	$a2, $a1, 104
	add.d	$a3, $a3, $a4
	ori	$a4, $zero, 2408
	vldx	$vr0, $a3, $a4
	vinsgr2vr.d	$vr1, $a2, 0
	vrepli.b	$vr2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, 0
	vreplgr2vr.w	$vr1, $a5
	vmin.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 136
	ori	$a4, $zero, 2424
	vldx	$vr3, $a3, $a4
	vst	$vr0, $a0, 1384
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 168
	ori	$a4, $zero, 2440
	vldx	$vr3, $a3, $a4
	vst	$vr0, $a0, 1448
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a1, 200
	ori	$a2, $zero, 2456
	vldx	$vr3, $a3, $a2
	vst	$vr0, $a0, 1512
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 1576
	ret
.LBB3_3:
	sltui	$a5, $a5, 1
	ori	$a7, $a6, 1808
	masknez	$a7, $a7, $a5
	ori	$a6, $a6, 1804
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.w	$a5, $a0, $a5
.LBB3_4:                                # %.preheader108
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	add.d	$a3, $a0, $a3
	slli.d	$a4, $a4, 6
	add.d	$t1, $a3, $a4
	ori	$a3, $zero, 2408
	ldx.w	$a3, $t1, $a3
	ori	$a4, $zero, 2416
	ldx.w	$a4, $t1, $a4
	ldptr.w	$a6, $t1, 2412
	ldptr.w	$a7, $t1, 2420
	add.d	$t0, $a4, $a3
	sub.d	$a4, $a3, $a4
	srli.d	$a3, $a6, 1
	sub.d	$t2, $a3, $a7
	srli.d	$a3, $a7, 1
	add.d	$a6, $a3, $a6
	add.d	$a3, $a6, $t0
	sub.d	$a6, $t0, $a6
	st.w	$a6, $a0, 1396
	add.d	$a6, $t2, $a4
	st.w	$a6, $a0, 1388
	sub.d	$a4, $a4, $t2
	ori	$a6, $zero, 2424
	ldx.w	$a6, $t1, $a6
	ori	$a7, $zero, 2432
	ldx.w	$a7, $t1, $a7
	st.w	$a4, $a0, 1392
	ldptr.w	$a4, $t1, 2428
	ldptr.w	$t0, $t1, 2436
	add.d	$t2, $a7, $a6
	sub.d	$a7, $a6, $a7
	srli.d	$a6, $a4, 1
	sub.d	$t3, $a6, $t0
	srli.d	$a6, $t0, 1
	add.d	$a6, $a6, $a4
	add.d	$a4, $a6, $t2
	sub.d	$a6, $t2, $a6
	st.w	$a6, $a0, 1460
	add.d	$a6, $t3, $a7
	st.w	$a6, $a0, 1452
	sub.d	$a7, $a7, $t3
	ori	$t0, $zero, 2440
	ldx.w	$t0, $t1, $t0
	ori	$t2, $zero, 2448
	ldx.w	$t2, $t1, $t2
	st.w	$a7, $a0, 1456
	ldptr.w	$a7, $t1, 2444
	ldptr.w	$t3, $t1, 2452
	add.d	$t4, $t2, $t0
	sub.d	$t2, $t0, $t2
	srli.d	$t0, $a7, 1
	sub.d	$t5, $t0, $t3
	srli.d	$t0, $t3, 1
	add.d	$t0, $t0, $a7
	add.d	$a7, $t0, $t4
	sub.d	$t0, $t4, $t0
	st.w	$t0, $a0, 1524
	add.d	$t0, $t5, $t2
	sub.d	$t2, $t2, $t5
	ori	$t3, $zero, 2456
	ldx.w	$t3, $t1, $t3
	ori	$t4, $zero, 2464
	ldx.w	$t4, $t1, $t4
	st.w	$t2, $a0, 1520
	ldptr.w	$t2, $t1, 2460
	ldptr.w	$t1, $t1, 2468
	add.d	$t5, $t4, $t3
	sub.d	$t3, $t3, $t4
	srli.d	$t4, $t2, 1
	sub.d	$t4, $t4, $t1
	srli.d	$t1, $t1, 1
	add.d	$t2, $t1, $t2
	add.d	$t1, $t2, $t5
	sub.d	$t2, $t5, $t2
	st.w	$t2, $a0, 1588
	add.d	$t2, $t4, $t3
	sub.d	$t3, $t3, $t4
	st.w	$t3, $a0, 1584
	ld.d	$t3, $a0, 1388
	slli.d	$a2, $a2, 5
	add.d	$a2, $a0, $a2
	alsl.d	$a1, $a1, $a2, 1
	vinsgr2vr.d	$vr0, $t3, 0
	ld.d	$a2, $a0, 1452
	ld.d	$t3, $a0, 1520
	ld.d	$t4, $a0, 1584
	ld.w	$t5, $a0, 1388
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr2, $t3, 0
	vinsgr2vr.d	$vr3, $t4, 0
	vreplvei.d	$vr4, $vr2, 0
	vinsgr2vr.w	$vr4, $a7, 0
	vinsgr2vr.w	$vr4, $t0, 1
	vshuf4i.w	$vr5, $vr0, 16
	vinsgr2vr.w	$vr5, $a3, 0
	vreplvei.d	$vr0, $vr3, 0
	vinsgr2vr.w	$vr0, $t1, 0
	vinsgr2vr.w	$vr0, $t2, 1
	ld.d	$a2, $a1, 104
	vsrai.w	$vr6, $vr0, 1
	vshuf4i.w	$vr7, $vr1, 16
	vinsgr2vr.w	$vr7, $a4, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vrepli.b	$vr0, 0
	vilvl.h	$vr1, $vr0, $vr1
	ld.d	$a2, $a0, 1392
	ld.d	$t3, $a0, 1456
	vslli.w	$vr8, $vr1, 6
	vreplgr2vr.w	$vr1, $a5
	vinsgr2vr.d	$vr9, $a2, 0
	vinsgr2vr.d	$vr10, $t3, 0
	vinsgr2vr.w	$vr11, $a4, 0
	vinsgr2vr.w	$vr11, $a6, 1
	vpackev.d	$vr11, $vr10, $vr11
	vsrai.w	$vr11, $vr11, 1
	vinsgr2vr.w	$vr12, $a3, 0
	vinsgr2vr.w	$vr12, $t5, 1
	vpackev.d	$vr12, $vr9, $vr12
	vinsgr2vr.w	$vr13, $a7, 0
	vinsgr2vr.w	$vr13, $t0, 1
	vpackev.d	$vr2, $vr2, $vr13
	vsub.w	$vr2, $vr12, $vr2
	vinsgr2vr.w	$vr12, $t1, 0
	vinsgr2vr.w	$vr12, $t2, 1
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr13, $a2, %pc_lo12(.LCPI3_0)
	vpackev.d	$vr3, $vr3, $vr12
	vsub.w	$vr3, $vr11, $vr3
	vrepli.w	$vr11, 32
	vadd.w	$vr2, $vr2, $vr11
	vori.b	$vr12, $vr13, 0
	vshuf.w	$vr12, $vr9, $vr5
	vadd.w	$vr4, $vr4, $vr12
	vshuf.w	$vr13, $vr10, $vr7
	vadd.w	$vr5, $vr6, $vr13
	vadd.w	$vr4, $vr4, $vr11
	vadd.w	$vr6, $vr4, $vr5
	vadd.w	$vr6, $vr6, $vr8
	vsrai.w	$vr6, $vr6, 6
	ld.d	$a2, $a1, 136
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr1
	vst	$vr6, $a0, 1384
	vinsgr2vr.d	$vr6, $a2, 0
	vilvl.h	$vr6, $vr0, $vr6
	vslli.w	$vr6, $vr6, 6
	vadd.w	$vr7, $vr2, $vr3
	vadd.w	$vr6, $vr7, $vr6
	vsrai.w	$vr6, $vr6, 6
	ld.d	$a2, $a1, 168
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr1
	vst	$vr6, $a0, 1448
	vinsgr2vr.d	$vr6, $a2, 0
	vilvl.h	$vr6, $vr0, $vr6
	vslli.w	$vr6, $vr6, 6
	vsub.w	$vr2, $vr2, $vr3
	vadd.w	$vr2, $vr2, $vr6
	vsrai.w	$vr2, $vr2, 6
	ld.d	$a1, $a1, 200
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr1
	vst	$vr2, $a0, 1512
	vinsgr2vr.d	$vr2, $a1, 0
	vilvl.h	$vr0, $vr0, $vr2
	vslli.w	$vr0, $vr0, 6
	vsub.w	$vr2, $vr4, $vr5
	vadd.w	$vr0, $vr2, $vr0
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 1576
	ret
.Lfunc_end3:
	.size	itrans, .Lfunc_end3-itrans
                                        # -- End function
	.globl	AssignQuantParam                # -- Begin function AssignQuantParam
	.p2align	5
	.type	AssignQuantParam,@function
AssignQuantParam:                       # @AssignQuantParam
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a2, $a0, 20
	ld.w	$a3, $a1, 36
	pcalau12i	$a0, %pc_hi20(qmatrix)
	addi.d	$a0, $a0, %pc_lo12(qmatrix)
	beqz	$a2, .LBB4_7
# %bb.1:
	bnez	$a3, .LBB4_8
# %bb.2:
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(quant_intra_default)
	addi.d	$a2, $a2, %pc_lo12(quant_intra_default)
	ld.w	$a3, $fp, 24
	bnez	$a3, .LBB4_27
.LBB4_3:
	move	$a3, $a2
	bnez	$a1, .LBB4_28
# %bb.4:
	ld.w	$a3, $fp, 28
	beqz	$a3, .LBB4_29
.LBB4_5:
	ld.w	$a3, $fp, 956
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 120
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $fp, 32
	st.d	$a3, $a0, 8
	beqz	$a4, .LBB4_30
.LBB4_6:
	ld.w	$a3, $fp, 960
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 184
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a2
	b	.LBB4_31
.LBB4_7:
	beqz	$a3, .LBB4_45
.LBB4_8:                                # %.thread
	ld.w	$a3, $a1, 40
	beqz	$a3, .LBB4_22
# %bb.9:
	ld.w	$a3, $a1, 968
	addi.d	$a4, $a1, 72
	sltui	$a3, $a3, 1
	pcalau12i	$a5, %pc_hi20(quant_intra_default)
	addi.d	$a5, $a5, %pc_lo12(quant_intra_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $a1, 44
	st.d	$a3, $a0, 0
	beqz	$a4, .LBB4_11
.LBB4_10:
	ld.w	$a3, $a1, 972
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 136
	pcalau12i	$a5, %pc_hi20(quant_intra_default)
	addi.d	$a5, $a5, %pc_lo12(quant_intra_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_11:
	ld.w	$a4, $a1, 48
	st.d	$a3, $a0, 8
	beqz	$a4, .LBB4_13
# %bb.12:
	ld.w	$a3, $a1, 976
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 200
	pcalau12i	$a5, %pc_hi20(quant_intra_default)
	addi.d	$a5, $a5, %pc_lo12(quant_intra_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_13:
	ld.w	$a4, $a1, 52
	st.d	$a3, $a0, 16
	beqz	$a4, .LBB4_23
# %bb.14:
	ld.w	$a3, $a1, 980
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 264
	pcalau12i	$a5, %pc_hi20(quant_inter_default)
	addi.d	$a5, $a5, %pc_lo12(quant_inter_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $a1, 56
	st.d	$a3, $a0, 24
	beqz	$a4, .LBB4_16
.LBB4_15:
	ld.w	$a3, $a1, 984
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 328
	pcalau12i	$a5, %pc_hi20(quant_inter_default)
	addi.d	$a5, $a5, %pc_lo12(quant_inter_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_16:
	ld.w	$a4, $a1, 60
	st.d	$a3, $a0, 32
	beqz	$a4, .LBB4_18
# %bb.17:
	ld.w	$a3, $a1, 988
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 392
	pcalau12i	$a5, %pc_hi20(quant_inter_default)
	addi.d	$a5, $a5, %pc_lo12(quant_inter_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_18:
	ld.w	$a4, $a1, 64
	st.d	$a3, $a0, 40
	beqz	$a4, .LBB4_20
# %bb.19:
	ld.w	$a3, $a1, 992
	beqz	$a3, .LBB4_24
.LBB4_20:
	pcalau12i	$a3, %pc_hi20(quant8_intra_default)
	addi.d	$a3, $a3, %pc_lo12(quant8_intra_default)
	ld.w	$a4, $a1, 68
	st.d	$a3, $a0, 48
	beqz	$a4, .LBB4_25
.LBB4_21:
	ld.w	$a3, $a1, 996
	sltui	$a3, $a3, 1
	addi.d	$a1, $a1, 712
	pcalau12i	$a4, %pc_hi20(quant8_inter_default)
	addi.d	$a4, $a4, %pc_lo12(quant8_inter_default)
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	st.d	$a1, $a0, 56
	bnez	$a2, .LBB4_26
	b	.LBB4_49
.LBB4_22:
	pcalau12i	$a3, %pc_hi20(quant_intra_default)
	addi.d	$a3, $a3, %pc_lo12(quant_intra_default)
	ld.w	$a4, $a1, 44
	st.d	$a3, $a0, 0
	bnez	$a4, .LBB4_10
	b	.LBB4_11
.LBB4_23:
	pcalau12i	$a3, %pc_hi20(quant_inter_default)
	addi.d	$a3, $a3, %pc_lo12(quant_inter_default)
	ld.w	$a4, $a1, 56
	st.d	$a3, $a0, 24
	bnez	$a4, .LBB4_15
	b	.LBB4_16
.LBB4_24:
	addi.d	$a3, $a1, 456
	ld.w	$a4, $a1, 68
	st.d	$a3, $a0, 48
	bnez	$a4, .LBB4_21
.LBB4_25:
	pcalau12i	$a1, %pc_hi20(quant8_inter_default)
	addi.d	$a1, $a1, %pc_lo12(quant8_inter_default)
	st.d	$a1, $a0, 56
	beqz	$a2, .LBB4_49
.LBB4_26:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(quant_intra_default)
	addi.d	$a2, $a2, %pc_lo12(quant_intra_default)
	ld.w	$a3, $fp, 24
	beqz	$a3, .LBB4_3
.LBB4_27:
	ld.w	$a3, $fp, 952
	addi.d	$a4, $fp, 56
	sltui	$a3, $a3, 1
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_28:                               # %.sink.split
	st.d	$a3, $a0, 0
	ld.w	$a3, $fp, 28
	bnez	$a3, .LBB4_5
.LBB4_29:
	ld.d	$a3, $a0, 0
	ld.w	$a4, $fp, 32
	st.d	$a3, $a0, 8
	bnez	$a4, .LBB4_6
.LBB4_30:
	ld.d	$a3, $a0, 8
.LBB4_31:
	pcalau12i	$a2, %pc_hi20(quant_inter_default)
	addi.d	$a2, $a2, %pc_lo12(quant_inter_default)
	ld.w	$a4, $fp, 36
	st.d	$a3, $a0, 16
	beqz	$a4, .LBB4_33
# %bb.32:
	ld.w	$a3, $fp, 964
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 248
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	b	.LBB4_34
.LBB4_33:
	move	$a3, $a2
	beqz	$a1, .LBB4_35
.LBB4_34:                               # %.sink.split117
	st.d	$a3, $a0, 24
.LBB4_35:
	ld.w	$a3, $fp, 40
	beqz	$a3, .LBB4_40
# %bb.36:
	ld.w	$a3, $fp, 968
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 312
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $fp, 44
	st.d	$a3, $a0, 32
	beqz	$a4, .LBB4_41
.LBB4_37:
	ld.w	$a3, $fp, 972
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 376
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.w	$a3, $fp, 48
	st.d	$a2, $a0, 40
	beqz	$a3, .LBB4_42
.LBB4_38:
	ld.w	$a2, $fp, 976
	addi.d	$a3, $fp, 440
	sltui	$a2, $a2, 1
	pcalau12i	$a4, %pc_hi20(quant8_intra_default)
	addi.d	$a4, $a4, %pc_lo12(quant8_intra_default)
	ld.w	$a5, $fp, 52
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	st.d	$a2, $a0, 48
	bnez	$a5, .LBB4_47
# %bb.39:
	bnez	$a1, .LBB4_44
	b	.LBB4_49
.LBB4_40:
	ld.d	$a3, $a0, 24
	ld.w	$a4, $fp, 44
	st.d	$a3, $a0, 32
	bnez	$a4, .LBB4_37
.LBB4_41:
	ld.d	$a2, $a0, 32
	ld.w	$a3, $fp, 48
	st.d	$a2, $a0, 40
	bnez	$a3, .LBB4_38
.LBB4_42:
	beqz	$a1, .LBB4_46
# %bb.43:                               # %.thread107
	pcalau12i	$a1, %pc_hi20(quant8_intra_default)
	addi.d	$a1, $a1, %pc_lo12(quant8_intra_default)
	ld.w	$a2, $fp, 52
	st.d	$a1, $a0, 48
	bnez	$a2, .LBB4_47
.LBB4_44:
	pcalau12i	$a1, %pc_hi20(quant8_inter_default)
	addi.d	$a1, $a1, %pc_lo12(quant8_inter_default)
	b	.LBB4_48
.LBB4_45:                               # %.preheader.preheader
	pcalau12i	$a1, %pc_hi20(quant_org)
	addi.d	$a1, $a1, %pc_lo12(quant_org)
	st.d	$a1, $a0, 0
	st.d	$a1, $a0, 8
	st.d	$a1, $a0, 16
	st.d	$a1, $a0, 24
	st.d	$a1, $a0, 32
	st.d	$a1, $a0, 40
	pcalau12i	$a1, %pc_hi20(quant8_org)
	addi.d	$a1, $a1, %pc_lo12(quant8_org)
	st.d	$a1, $a0, 48
	b	.LBB4_48
.LBB4_46:                               # %.thread104
	ld.w	$a1, $fp, 52
	beqz	$a1, .LBB4_49
.LBB4_47:
	ld.w	$a1, $fp, 980
	sltui	$a1, $a1, 1
	addi.d	$a2, $fp, 696
	pcalau12i	$a3, %pc_hi20(quant8_inter_default)
	addi.d	$a3, $a3, %pc_lo12(quant8_inter_default)
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
.LBB4_48:                               # %.loopexit.sink.split
	st.d	$a1, $a0, 56
.LBB4_49:                               # %.loopexit
	pcaddu18i	$ra, %call36(CalculateQuantParam)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB4_51
# %bb.50:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(CalculateQuant8Param)
	jr	$t8
.LBB4_51:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	AssignQuantParam, .Lfunc_end4-AssignQuantParam
                                        # -- End function
	.globl	CalculateQuantParam             # -- Begin function CalculateQuantParam
	.p2align	5
	.type	CalculateQuantParam,@function
CalculateQuantParam:                    # @CalculateQuantParam
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(qmatrix)
	addi.d	$a5, $a0, %pc_lo12(qmatrix)
	ld.d	$a0, $a5, 0
	ld.d	$a1, $a5, 8
	ld.d	$a2, $a5, 16
	ld.d	$a3, $a5, 24
	ld.d	$a4, $a5, 32
	ld.d	$a5, $a5, 40
	pcalau12i	$a6, %got_pc_hi20(dequant_coef)
	ld.d	$a6, $a6, %got_pc_lo12(dequant_coef)
	pcalau12i	$a7, %pc_hi20(InvLevelScale4x4Luma_Intra)
	addi.d	$a7, $a7, %pc_lo12(InvLevelScale4x4Luma_Intra)
	pcalau12i	$t0, %pc_hi20(InvLevelScale4x4Chroma_Intra)
	addi.d	$t0, $t0, %pc_lo12(InvLevelScale4x4Chroma_Intra)
	pcalau12i	$t1, %pc_hi20(InvLevelScale4x4Luma_Inter)
	addi.d	$t1, $t1, %pc_lo12(InvLevelScale4x4Luma_Inter)
	pcalau12i	$t2, %pc_hi20(InvLevelScale4x4Chroma_Inter)
	addi.d	$t2, $t2, %pc_lo12(InvLevelScale4x4Chroma_Inter)
	move	$t3, $zero
	ori	$t4, $zero, 384
	.p2align	4, , 16
.LBB5_1:                                # %.preheader52
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t8, $a6, $t3
	ld.w	$t5, $a0, 0
	mul.d	$t5, $t5, $t8
	stx.w	$t5, $a7, $t3
	ld.w	$t5, $a1, 0
	mul.d	$t5, $t5, $t8
	stx.w	$t5, $t0, $t3
	ld.w	$t6, $a2, 0
	add.d	$t5, $t0, $t3
	mul.d	$t6, $t6, $t8
	st.w	$t6, $t5, 384
	ld.w	$t6, $a3, 0
	mul.d	$t6, $t6, $t8
	stx.w	$t6, $t1, $t3
	ld.w	$t6, $a4, 0
	mul.d	$t6, $t6, $t8
	stx.w	$t6, $t2, $t3
	ld.w	$fp, $a5, 0
	add.d	$t7, $a6, $t3
	add.d	$t6, $t2, $t3
	mul.d	$t8, $fp, $t8
	st.w	$t8, $t6, 384
	ld.w	$s0, $t7, 4
	ld.w	$fp, $a0, 16
	add.d	$t8, $a7, $t3
	mul.d	$fp, $fp, $s0
	st.w	$fp, $t8, 16
	ld.w	$fp, $a1, 16
	mul.d	$fp, $fp, $s0
	st.w	$fp, $t5, 16
	ld.w	$fp, $a2, 16
	mul.d	$fp, $fp, $s0
	st.w	$fp, $t5, 400
	ld.w	$s1, $a3, 16
	add.d	$fp, $t1, $t3
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 16
	ld.w	$s1, $a4, 16
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 16
	ld.w	$s1, $a5, 16
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 400
	ld.w	$s0, $t7, 8
	ld.w	$s1, $a0, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 32
	ld.w	$s1, $a1, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 32
	ld.w	$s1, $a2, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 416
	ld.w	$s1, $a3, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 32
	ld.w	$s1, $a4, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 32
	ld.w	$s1, $a5, 32
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 416
	ld.w	$s0, $t7, 12
	ld.w	$s1, $a0, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 48
	ld.w	$s1, $a1, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 48
	ld.w	$s1, $a2, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 432
	ld.w	$s1, $a3, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 48
	ld.w	$s1, $a4, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 48
	ld.w	$s1, $a5, 48
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 432
	ld.w	$s0, $t7, 16
	ld.w	$s1, $a0, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 4
	ld.w	$s1, $a1, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 4
	ld.w	$s1, $a2, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 388
	ld.w	$s1, $a3, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 4
	ld.w	$s1, $a4, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 4
	ld.w	$s1, $a5, 4
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 388
	ld.w	$s0, $t7, 20
	ld.w	$s1, $a0, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 20
	ld.w	$s1, $a1, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 20
	ld.w	$s1, $a2, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 404
	ld.w	$s1, $a3, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 20
	ld.w	$s1, $a4, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 20
	ld.w	$s1, $a5, 20
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 404
	ld.w	$s0, $t7, 24
	ld.w	$s1, $a0, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 36
	ld.w	$s1, $a1, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 36
	ld.w	$s1, $a2, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 420
	ld.w	$s1, $a3, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 36
	ld.w	$s1, $a4, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 36
	ld.w	$s1, $a5, 36
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 420
	ld.w	$s0, $t7, 28
	ld.w	$s1, $a0, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 52
	ld.w	$s1, $a1, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 52
	ld.w	$s1, $a2, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 436
	ld.w	$s1, $a3, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 52
	ld.w	$s1, $a4, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 52
	ld.w	$s1, $a5, 52
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 436
	ld.w	$s0, $t7, 32
	ld.w	$s1, $a0, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 8
	ld.w	$s1, $a1, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 8
	ld.w	$s1, $a2, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 392
	ld.w	$s1, $a3, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 8
	ld.w	$s1, $a4, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 8
	ld.w	$s1, $a5, 8
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 392
	ld.w	$s0, $t7, 36
	ld.w	$s1, $a0, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 24
	ld.w	$s1, $a1, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 24
	ld.w	$s1, $a2, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 408
	ld.w	$s1, $a3, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 24
	ld.w	$s1, $a4, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 24
	ld.w	$s1, $a5, 24
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 408
	ld.w	$s0, $t7, 40
	ld.w	$s1, $a0, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 40
	ld.w	$s1, $a1, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 40
	ld.w	$s1, $a2, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 424
	ld.w	$s1, $a3, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 40
	ld.w	$s1, $a4, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 40
	ld.w	$s1, $a5, 40
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 424
	ld.w	$s0, $t7, 44
	ld.w	$s1, $a0, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 56
	ld.w	$s1, $a1, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 56
	ld.w	$s1, $a2, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 440
	ld.w	$s1, $a3, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 56
	ld.w	$s1, $a4, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 56
	ld.w	$s1, $a5, 56
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 440
	ld.w	$s0, $t7, 48
	ld.w	$s1, $a0, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 12
	ld.w	$s1, $a1, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 12
	ld.w	$s1, $a2, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 396
	ld.w	$s1, $a3, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 12
	ld.w	$s1, $a4, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 12
	ld.w	$s1, $a5, 12
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 396
	ld.w	$s0, $t7, 52
	ld.w	$s1, $a0, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 28
	ld.w	$s1, $a1, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 28
	ld.w	$s1, $a2, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 412
	ld.w	$s1, $a3, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 28
	ld.w	$s1, $a4, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 28
	ld.w	$s1, $a5, 28
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 412
	ld.w	$s0, $t7, 56
	ld.w	$s1, $a0, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 44
	ld.w	$s1, $a1, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 44
	ld.w	$s1, $a2, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 428
	ld.w	$s1, $a3, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 44
	ld.w	$s1, $a4, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 44
	ld.w	$s1, $a5, 44
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 428
	ld.w	$t7, $t7, 60
	ld.w	$s0, $a0, 60
	mul.d	$s0, $s0, $t7
	st.w	$s0, $t8, 60
	ld.w	$t8, $a1, 60
	mul.d	$t8, $t8, $t7
	st.w	$t8, $t5, 60
	ld.w	$t8, $a2, 60
	mul.d	$t8, $t8, $t7
	st.w	$t8, $t5, 444
	ld.w	$t5, $a3, 60
	mul.d	$t5, $t5, $t7
	st.w	$t5, $fp, 60
	ld.w	$t5, $a4, 60
	mul.d	$t5, $t5, $t7
	st.w	$t5, $t6, 60
	ld.w	$t5, $a5, 60
	mul.d	$t5, $t5, $t7
	addi.d	$t3, $t3, 64
	st.w	$t5, $t6, 444
	bne	$t3, $t4, .LBB5_1
# %bb.2:
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	CalculateQuantParam, .Lfunc_end5-CalculateQuantParam
                                        # -- End function
	.globl	itrans_2                        # -- Begin function itrans_2
	.p2align	5
	.type	itrans_2,@function
itrans_2:                               # @itrans_2
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a0, 28
	lu12i.w	$a7, 1
	ori	$a2, $a7, 1788
	ori	$a1, $zero, 2408
	ldx.w	$a3, $a0, $a1
	ori	$t3, $zero, 3176
	ldx.w	$t0, $a0, $t3
	ori	$a4, $zero, 3944
	ldx.w	$t1, $a0, $a4
	ori	$a1, $a7, 616
	ldx.w	$t2, $a0, $a1
	ldx.w	$a6, $a0, $a2
	add.d	$a2, $t1, $a3
	sub.d	$a3, $a3, $t1
	sub.d	$t1, $t0, $t2
	add.d	$t0, $t2, $t0
	add.d	$t6, $t0, $a2
	stptr.w	$t6, $a0, 2408
	add.d	$t2, $t1, $a3
	stptr.w	$t2, $a0, 3176
	sub.d	$a3, $a3, $t1
	stptr.w	$a3, $a0, 3944
	sub.d	$a3, $a2, $t0
	ori	$a2, $zero, 2472
	ldx.w	$t0, $a0, $a2
	ori	$a2, $zero, 3240
	ldx.w	$t2, $a0, $a2
	ori	$t1, $zero, 4008
	ldx.w	$t4, $a0, $t1
	ori	$a2, $a7, 680
	ldx.w	$t5, $a0, $a2
	stptr.w	$a3, $a0, 4712
	add.d	$a3, $t4, $t0
	sub.d	$t0, $t0, $t4
	sub.d	$t4, $t2, $t5
	add.d	$t2, $t5, $t2
	add.d	$t8, $t2, $a3
	stptr.w	$t8, $a0, 2472
	add.d	$t5, $t4, $t0
	stptr.w	$t5, $a0, 3240
	sub.d	$t0, $t0, $t4
	stptr.w	$t0, $a0, 4008
	sub.d	$t0, $a3, $t2
	ori	$a3, $zero, 2536
	ldx.w	$t4, $a0, $a3
	ori	$a3, $zero, 3304
	ldx.w	$t7, $a0, $a3
	ori	$t2, $zero, 4072
	ldx.w	$fp, $a0, $t2
	ori	$a3, $a7, 744
	ldx.w	$s0, $a0, $a3
	stptr.w	$t0, $a0, 4776
	add.d	$t0, $fp, $t4
	sub.d	$t4, $t4, $fp
	sub.d	$fp, $t7, $s0
	add.d	$s1, $s0, $t7
	add.d	$s0, $s1, $t0
	stptr.w	$s0, $a0, 2536
	add.d	$t7, $fp, $t4
	stptr.w	$t7, $a0, 3304
	sub.d	$t4, $t4, $fp
	stptr.w	$t4, $a0, 4072
	sub.d	$t4, $t0, $s1
	ori	$t0, $zero, 2600
	ldx.w	$fp, $a0, $t0
	ori	$t0, $zero, 3368
	ldx.w	$s1, $a0, $t0
	ori	$t0, $a7, 40
	ldx.w	$s2, $a0, $t0
	ori	$t0, $a7, 808
	ldx.w	$a7, $a0, $t0
	stptr.w	$t4, $a0, 4840
	add.d	$s3, $s2, $fp
	sub.d	$t4, $fp, $s2
	sub.d	$s2, $s1, $a7
	add.d	$a7, $a7, $s1
	add.d	$s1, $a7, $s3
	stptr.w	$s1, $a0, 2600
	add.d	$fp, $s2, $t4
	stptr.w	$fp, $a0, 3368
	sub.d	$t4, $t4, $s2
	stptr.w	$t4, $a0, 4136
	sub.d	$a7, $s3, $a7
	stptr.w	$a7, $a0, 4904
	add.w	$a6, $a6, $a5
	lu12i.w	$a5, 174762
	ori	$a5, $a5, 2731
	mul.d	$a5, $a6, $a5
	srli.d	$a7, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a7
	slli.d	$a7, $a5, 2
	alsl.d	$a7, $a5, $a7, 1
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 6
	pcalau12i	$a7, %pc_hi20(InvLevelScale4x4Luma_Intra)
	addi.d	$a7, $a7, %pc_lo12(InvLevelScale4x4Luma_Intra)
	ldx.w	$s2, $a7, $a6
	add.d	$s3, $s0, $t6
	add.d	$s4, $s1, $t8
	add.d	$s5, $s4, $s3
	mul.d	$s2, $s5, $s2
	sll.w	$s2, $s2, $a5
	addi.w	$s2, $s2, 32
	srli.d	$s2, $s2, 6
	stptr.w	$s2, $a0, 2408
	ldx.w	$s2, $a7, $a6
	sub.d	$t6, $t6, $s0
	sub.d	$t8, $t8, $s1
	add.d	$s0, $t8, $t6
	mul.d	$s0, $s2, $s0
	sll.w	$s0, $s0, $a5
	addi.w	$s0, $s0, 32
	srli.d	$s0, $s0, 6
	stptr.w	$s0, $a0, 2472
	ldx.w	$s0, $a7, $a6
	sub.d	$t6, $t6, $t8
	mul.d	$t6, $s0, $t6
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 2536
	ldx.w	$t6, $a7, $a6
	sub.d	$t8, $s3, $s4
	mul.d	$t6, $t6, $t8
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	ldx.w	$t3, $a0, $t3
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 2600
	ldx.w	$t6, $a7, $a6
	add.d	$t8, $t7, $t3
	add.d	$s0, $fp, $t5
	add.d	$s1, $s0, $t8
	mul.d	$t6, $s1, $t6
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 3176
	ldx.w	$t6, $a7, $a6
	sub.d	$t3, $t3, $t7
	sub.d	$t5, $t5, $fp
	add.d	$t7, $t5, $t3
	mul.d	$t6, $t6, $t7
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 3240
	ldx.w	$t6, $a7, $a6
	sub.d	$t3, $t3, $t5
	mul.d	$t3, $t6, $t3
	sll.w	$t3, $t3, $a5
	addi.w	$t3, $t3, 32
	srli.d	$t3, $t3, 6
	stptr.w	$t3, $a0, 3304
	ldx.w	$t3, $a7, $a6
	sub.d	$t5, $t8, $s0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a5
	addi.w	$t3, $t3, 32
	srli.d	$t3, $t3, 6
	ldx.w	$a4, $a0, $a4
	ldx.w	$t2, $a0, $t2
	ldx.w	$t1, $a0, $t1
	stptr.w	$t3, $a0, 3368
	ldx.w	$t3, $a7, $a6
	add.d	$t5, $t2, $a4
	add.d	$t6, $t4, $t1
	add.d	$t7, $t6, $t5
	mul.d	$t3, $t7, $t3
	sll.w	$t3, $t3, $a5
	addi.w	$t3, $t3, 32
	srli.d	$t3, $t3, 6
	stptr.w	$t3, $a0, 3944
	ldx.w	$t3, $a7, $a6
	sub.d	$a4, $a4, $t2
	sub.d	$t1, $t1, $t4
	add.d	$t2, $t1, $a4
	mul.d	$t2, $t3, $t2
	sll.w	$t2, $t2, $a5
	addi.w	$t2, $t2, 32
	srli.d	$t2, $t2, 6
	stptr.w	$t2, $a0, 4008
	ldx.w	$t2, $a7, $a6
	sub.d	$a4, $a4, $t1
	mul.d	$a4, $t2, $a4
	sll.w	$a4, $a4, $a5
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	stptr.w	$a4, $a0, 4072
	ldx.w	$a4, $a7, $a6
	sub.d	$t1, $t5, $t6
	mul.d	$a4, $a4, $t1
	sll.w	$a4, $a4, $a5
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	ldx.w	$a1, $a0, $a1
	ldx.w	$a2, $a0, $a2
	ldx.w	$a3, $a0, $a3
	ldx.w	$t0, $a0, $t0
	stptr.w	$a4, $a0, 4136
	ldx.w	$a4, $a7, $a6
	add.d	$t1, $a3, $a1
	add.d	$t2, $t0, $a2
	add.d	$t3, $t2, $t1
	mul.d	$a4, $t3, $a4
	sll.w	$a4, $a4, $a5
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	stptr.w	$a4, $a0, 4712
	ldx.w	$a4, $a7, $a6
	sub.d	$a1, $a1, $a3
	sub.d	$a2, $a2, $t0
	add.d	$a3, $a2, $a1
	mul.d	$a3, $a4, $a3
	sll.w	$a3, $a3, $a5
	addi.w	$a3, $a3, 32
	srli.d	$a3, $a3, 6
	stptr.w	$a3, $a0, 4776
	ldx.w	$a3, $a7, $a6
	sub.d	$a1, $a1, $a2
	mul.d	$a1, $a3, $a1
	sll.w	$a1, $a1, $a5
	addi.w	$a1, $a1, 32
	srli.d	$a1, $a1, 6
	stptr.w	$a1, $a0, 4840
	ldx.w	$a1, $a7, $a6
	sub.d	$a2, $t1, $t2
	mul.d	$a1, $a1, $a2
	sll.w	$a1, $a1, $a5
	addi.w	$a1, $a1, 32
	srli.d	$a1, $a1, 6
	stptr.w	$a1, $a0, 4904
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	itrans_2, .Lfunc_end6-itrans_2
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function itrans_sp
.LCPI7_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
	.text
	.globl	itrans_sp
	.p2align	5
	.type	itrans_sp,@function
itrans_sp:                              # @itrans_sp
# %bb.0:                                # %.preheader199
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
	ld.w	$a6, $a0, 28
	ld.w	$a5, $a0, 32
	ld.w	$a7, $a0, 44
	slli.d	$a2, $a2, 5
	add.d	$a2, $a0, $a2
	addi.d	$t0, $a2, 104
	slli.d	$t1, $a1, 1
	ldx.hu	$t2, $t0, $t1
	addi.d	$t3, $t1, 2
	ldx.hu	$t4, $t0, $t3
	addi.d	$t5, $t1, 4
	ldx.hu	$t6, $t0, $t5
	addi.d	$t7, $t1, 6
	ldx.hu	$t0, $t0, $t7
	addi.d	$a1, $sp, 72
	addi.d	$t8, $a2, 136
	ldx.hu	$fp, $t8, $t1
	ldx.hu	$s0, $t8, $t3
	ldx.hu	$s1, $t8, $t5
	ldx.hu	$t8, $t8, $t7
	addi.d	$s2, $a2, 168
	ldx.hu	$s3, $s2, $t1
	ldx.hu	$s4, $s2, $t3
	ldx.hu	$s5, $s2, $t5
	ldx.hu	$s2, $s2, $t7
	addi.d	$a2, $a2, 200
	ldx.hu	$s6, $a2, $t1
	ldx.hu	$t3, $a2, $t3
	ldx.hu	$t5, $a2, $t5
	ldx.hu	$t7, $a2, $t7
	add.d	$a2, $t0, $t2
	sub.d	$t0, $t2, $t0
	add.d	$t1, $t6, $t4
	sub.d	$t2, $t4, $t6
	add.d	$t4, $t1, $a2
	sub.d	$t1, $a2, $t1
	alsl.d	$t6, $t0, $t2, 1
	slli.d	$a2, $t2, 1
	sub.d	$a2, $t0, $a2
	add.d	$t0, $t8, $fp
	sub.d	$t2, $fp, $t8
	add.d	$t8, $s1, $s0
	sub.d	$fp, $s0, $s1
	add.d	$s0, $t8, $t0
	sub.d	$t8, $t0, $t8
	alsl.d	$s1, $t2, $fp, 1
	slli.d	$t0, $fp, 1
	sub.d	$t0, $t2, $t0
	add.d	$t2, $s2, $s3
	sub.d	$fp, $s3, $s2
	add.d	$s2, $s5, $s4
	sub.d	$s3, $s4, $s5
	add.d	$s4, $s2, $t2
	sub.d	$t2, $t2, $s2
	alsl.d	$s2, $fp, $s3, 1
	slli.d	$s3, $s3, 1
	sub.d	$fp, $fp, $s3
	add.d	$s3, $t7, $s6
	sub.d	$t7, $s6, $t7
	add.d	$s5, $t5, $t3
	sub.d	$t3, $t3, $t5
	add.d	$t5, $s5, $s3
	sub.d	$s3, $s3, $s5
	alsl.d	$s5, $t7, $t3, 1
	slli.d	$t3, $t3, 1
	sub.d	$t3, $t7, $t3
	add.d	$t7, $t5, $t4
	sub.d	$t4, $t4, $t5
	add.d	$t5, $s4, $s0
	sub.d	$s0, $s0, $s4
	add.d	$s4, $t5, $t7
	st.w	$s4, $sp, 24
	sub.d	$t5, $t7, $t5
	st.w	$t5, $sp, 32
	alsl.d	$t5, $t4, $s0, 1
	st.w	$t5, $sp, 28
	slli.d	$t5, $s0, 1
	sub.d	$t4, $t4, $t5
	st.w	$t4, $sp, 36
	add.d	$t4, $s5, $t6
	sub.d	$t5, $t6, $s5
	add.d	$t6, $s2, $s1
	sub.d	$t7, $s1, $s2
	add.d	$s0, $t6, $t4
	st.w	$s0, $sp, 40
	sub.d	$t4, $t4, $t6
	st.w	$t4, $sp, 48
	alsl.d	$t4, $t5, $t7, 1
	st.w	$t4, $sp, 44
	slli.d	$t4, $t7, 1
	sub.d	$t4, $t5, $t4
	st.w	$t4, $sp, 52
	add.d	$t4, $s3, $t1
	sub.d	$t1, $t1, $s3
	add.d	$t5, $t2, $t8
	sub.d	$t2, $t8, $t2
	add.d	$t6, $t5, $t4
	st.w	$t6, $sp, 56
	sub.d	$t4, $t4, $t5
	st.w	$t4, $sp, 64
	alsl.d	$t4, $t1, $t2, 1
	st.w	$t4, $sp, 60
	slli.d	$t2, $t2, 1
	sub.d	$t1, $t1, $t2
	st.w	$t1, $sp, 68
	add.d	$t1, $t3, $a2
	sub.d	$a2, $a2, $t3
	add.d	$t2, $fp, $t0
	sub.d	$t0, $t0, $fp
	add.d	$t3, $t2, $t1
	st.w	$t3, $sp, 72
	sub.d	$t1, $t1, $t2
	st.w	$t1, $sp, 80
	alsl.d	$t1, $a2, $t0, 1
	st.w	$t1, $sp, 76
	slli.d	$t0, $t0, 1
	sub.d	$a2, $a2, $t0
	st.w	$a2, $sp, 84
	lu12i.w	$a2, 174762
	ori	$a2, $a2, 2731
	mul.d	$t0, $a6, $a2
	srli.d	$t1, $t0, 63
	srli.d	$t0, $t0, 32
	add.d	$t0, $t0, $t1
	ori	$t1, $zero, 6
	mul.d	$t2, $t0, $t1
	sub.w	$t2, $a6, $t2
	mul.d	$a2, $a5, $a2
	srli.d	$a6, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a6
	mul.d	$a6, $a2, $t1
	sub.w	$t3, $a5, $a6
	addi.d	$a5, $a2, 15
	ori	$a6, $zero, 1
	sll.w	$a6, $a6, $a5
	bstrpick.d	$t1, $a6, 31, 31
	add.w	$a6, $a6, $t1
	srai.d	$a6, $a6, 1
	addi.d	$a7, $a7, -4
	sltui	$t1, $a7, 1
	masknez	$a7, $t0, $t1
	maskeqz	$t0, $a2, $t1
	or	$a7, $t0, $a7
	masknez	$t0, $t2, $t1
	maskeqz	$t1, $t3, $t1
	or	$t0, $t1, $t0
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	slli.d	$a4, $a4, 6
	add.d	$a3, $a3, $a4
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	add.d	$a4, $a3, $a0
	addi.d	$t1, $a4, 2047
	addi.d	$a4, $t1, 361
	slli.d	$t0, $t0, 6
	pcalau12i	$t2, %got_pc_hi20(dequant_coef)
	ld.d	$t2, $t2, %got_pc_lo12(dequant_coef)
	add.d	$t0, $t2, $t0
	addi.d	$t1, $t1, 373
	slli.d	$t3, $t3, 6
	addi.d	$t5, $t3, 48
	add.d	$t2, $t2, $t5
	pcalau12i	$t3, %pc_hi20(quant_coef)
	addi.d	$t6, $t3, %pc_lo12(quant_coef)
	move	$t3, $zero
	move	$t4, $zero
	add.d	$t5, $t6, $t5
	addi.d	$t6, $sp, 24
	ori	$t7, $zero, 4
	ori	$t8, $zero, 16
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_1:                                #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$a3, $a1, $t3
	ldx.w	$s0, $t5, $t3
	srai.d	$s1, $a3, 31
	xor	$s2, $a3, $s1
	sub.d	$s1, $s2, $s1
	mul.d	$s0, $s1, $s0
	add.d	$s0, $s0, $a6
	sra.w	$s0, $s0, $a5
	slti	$a3, $a3, 0
	srai.d	$s1, $s0, 31
	xor	$s0, $s0, $s1
	sub.d	$s0, $s0, $s1
	sub.d	$s1, $zero, $s0
	masknez	$s0, $s0, $a3
	maskeqz	$a3, $s1, $a3
	or	$a3, $a3, $s0
	add.w	$a3, $a3, $fp
	ldx.w	$fp, $t2, $t3
	srai.d	$s0, $a3, 31
	xor	$s1, $a3, $s0
	sub.d	$s0, $s1, $s0
	mul.d	$fp, $s0, $fp
	sll.w	$fp, $fp, $a2
	slti	$a3, $a3, 0
	srai.d	$s0, $fp, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	sub.d	$s0, $zero, $fp
	masknez	$fp, $fp, $a3
	maskeqz	$a3, $s0, $a3
	or	$fp, $a3, $fp
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	st.w	$fp, $t1, 0
	addi.d	$t4, $t4, 1
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, 16
	beq	$t3, $t8, .LBB7_19
.LBB7_3:                                # %.preheader193
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$s3, $t4, $a4, 4
	add.d	$s1, $t5, $t3
	ld.w	$fp, $t1, -12
	ldx.w	$s7, $t0, $t3
	add.d	$s0, $t2, $t3
	ld.w	$s4, $a0, 36
	sra.w	$fp, $fp, $a7
	div.w	$s5, $fp, $s7
	add.d	$s2, $a1, $t3
	add.d	$fp, $t0, $t3
	beqz	$s4, .LBB7_5
# %bb.4:                                # %.preheader193._crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s6, $t3, $t6
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$s8, $a0, 44
	ldx.w	$s6, $t3, $t6
	bne	$s8, $t7, .LBB7_13
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$s7, $s1, -48
	srai.d	$s8, $s6, 31
	xor	$ra, $s6, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$s7, $s8, $s7
	add.d	$s7, $s7, $a6
	sra.w	$s7, $s7, $a5
	slti	$s6, $s6, 0
	srai.d	$s8, $s7, 31
	xor	$s7, $s7, $s8
	sub.d	$s7, $s7, $s8
	sub.d	$s8, $zero, $s7
	masknez	$s7, $s7, $s6
	maskeqz	$s6, $s8, $s6
	or	$s6, $s6, $s7
	add.w	$s5, $s6, $s5
	ld.w	$s6, $s0, -48
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	sll.w	$s6, $s6, $a2
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	st.w	$s5, $t1, -12
	ld.w	$s5, $t1, -8
	ld.w	$s7, $fp, 16
	sra.w	$s5, $s5, $a7
	div.w	$s6, $s5, $s7
	st.w	$s6, $t1, -8
	beqz	$s4, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s5, $t1, -8
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s5, $s3, 4
	ld.w	$s8, $a0, 44
	bne	$s8, $t7, .LBB7_14
.LBB7_9:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$s7, $s2, -32
	ld.w	$s8, $s1, -32
	srai.d	$ra, $s7, 31
	xor	$a3, $s7, $ra
	sub.d	$a3, $a3, $ra
	mul.d	$a3, $a3, $s8
	add.d	$a3, $a3, $a6
	sra.w	$a3, $a3, $a5
	slti	$s7, $s7, 0
	srai.d	$s8, $a3, 31
	xor	$a3, $a3, $s8
	sub.d	$a3, $a3, $s8
	sub.d	$s8, $zero, $a3
	masknez	$a3, $a3, $s7
	maskeqz	$s7, $s8, $s7
	or	$a3, $s7, $a3
	add.w	$a3, $a3, $s6
	ld.w	$s6, $s0, -32
	srai.d	$s7, $a3, 31
	xor	$s8, $a3, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	sll.w	$s6, $s6, $a2
	slti	$a3, $a3, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	masknez	$s6, $s6, $a3
	maskeqz	$a3, $s7, $a3
	or	$a3, $a3, $s6
	st.w	$a3, $s5, 0
	ld.w	$a3, $t1, -4
	ld.w	$s6, $fp, 32
	sra.w	$a3, $a3, $a7
	div.w	$s5, $a3, $s6
	st.w	$s5, $t1, -4
	beqz	$s4, .LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s3, $t1, -4
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s3, $s3, 8
	ld.w	$a3, $a0, 44
	bne	$a3, $t7, .LBB7_15
	.p2align	4, , 16
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a3, $s2, -16
	ld.w	$s1, $s1, -16
	srai.d	$s2, $a3, 31
	xor	$s4, $a3, $s2
	sub.d	$s2, $s4, $s2
	mul.d	$s1, $s2, $s1
	add.d	$s1, $s1, $a6
	sra.w	$s1, $s1, $a5
	slti	$a3, $a3, 0
	srai.d	$s2, $s1, 31
	xor	$s1, $s1, $s2
	sub.d	$s1, $s1, $s2
	sub.d	$s2, $zero, $s1
	masknez	$s1, $s1, $a3
	maskeqz	$a3, $s2, $a3
	or	$a3, $a3, $s1
	add.w	$a3, $a3, $s5
	ld.w	$s0, $s0, -16
	srai.d	$s1, $a3, 31
	xor	$s2, $a3, $s1
	sub.d	$s1, $s2, $s1
	mul.d	$s0, $s1, $s0
	sll.w	$s0, $s0, $a2
	slti	$a3, $a3, 0
	srai.d	$s1, $s0, 31
	xor	$s0, $s0, $s1
	sub.d	$s0, $s0, $s1
	sub.d	$s1, $zero, $s0
	masknez	$s0, $s0, $a3
	maskeqz	$a3, $s1, $a3
	or	$s0, $a3, $s0
	b	.LBB7_16
.LBB7_13:                               # %.thread
                                        #   in Loop: Header=BB7_3 Depth=1
	mul.d	$s5, $s5, $s7
	pcalau12i	$s7, %pc_hi20(A)
	addi.d	$s7, $s7, %pc_lo12(A)
	ldx.w	$s7, $s7, $t3
	mul.d	$s5, $s5, $s7
	sll.w	$s5, $s5, $a7
	srli.d	$s5, $s5, 6
	add.w	$s5, $s5, $s6
	ld.w	$s6, $s1, -48
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
	ld.w	$s8, $s0, -48
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	mul.d	$s5, $s5, $s8
	sll.w	$s5, $s5, $a2
	st.w	$s5, $t1, -12
	ld.w	$s6, $t1, -8
	ld.w	$s7, $fp, 16
	addi.d	$s5, $t1, -8
	sra.w	$s6, $s6, $a7
	div.w	$s6, $s6, $s7
	st.w	$s6, $t1, -8
	ld.w	$s8, $a0, 44
	beq	$s8, $t7, .LBB7_9
.LBB7_14:                               # %.thread360
                                        #   in Loop: Header=BB7_3 Depth=1
	mul.d	$s3, $s6, $s7
	pcalau12i	$s4, %pc_hi20(A)
	addi.d	$s4, $s4, %pc_lo12(A)
	add.d	$s4, $s4, $t3
	ld.w	$s4, $s4, 16
	ld.w	$s6, $s2, -32
	mul.d	$s3, $s3, $s4
	sll.w	$s3, $s3, $a7
	srli.d	$s3, $s3, 6
	add.w	$s3, $s3, $s6
	ld.w	$s4, $s1, -32
	srai.d	$s6, $s3, 31
	xor	$s7, $s3, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$s4, $s6, $s4
	add.d	$s4, $s4, $a6
	sra.w	$s4, $s4, $a5
	slti	$s3, $s3, 0
	srai.d	$s6, $s4, 31
	xor	$s4, $s4, $s6
	sub.d	$s4, $s4, $s6
	sub.d	$s6, $zero, $s4
	ld.w	$s7, $s0, -32
	masknez	$s4, $s4, $s3
	maskeqz	$s3, $s6, $s3
	or	$s3, $s3, $s4
	mul.d	$s3, $s3, $s7
	sll.w	$s3, $s3, $a2
	st.w	$s3, $s5, 0
	ld.w	$s4, $t1, -4
	ld.w	$s6, $fp, 32
	addi.d	$s3, $t1, -4
	sra.w	$s4, $s4, $a7
	div.w	$s5, $s4, $s6
	st.w	$s5, $t1, -4
	ld.w	$a3, $a0, 44
	beq	$a3, $t7, .LBB7_12
.LBB7_15:                               #   in Loop: Header=BB7_3 Depth=1
	mul.d	$a3, $s5, $s6
	pcalau12i	$s4, %pc_hi20(A)
	addi.d	$s4, $s4, %pc_lo12(A)
	add.d	$s4, $s4, $t3
	ld.w	$s4, $s4, 32
	ld.w	$s2, $s2, -16
	mul.d	$a3, $a3, $s4
	sll.w	$a3, $a3, $a7
	srli.d	$a3, $a3, 6
	add.w	$a3, $a3, $s2
	ld.w	$s1, $s1, -16
	srai.d	$s2, $a3, 31
	xor	$s4, $a3, $s2
	sub.d	$s2, $s4, $s2
	mul.d	$s1, $s2, $s1
	add.d	$s1, $s1, $a6
	sra.w	$s1, $s1, $a5
	slti	$a3, $a3, 0
	srai.d	$s2, $s1, 31
	xor	$s1, $s1, $s2
	sub.d	$s1, $s1, $s2
	sub.d	$s2, $zero, $s1
	ld.w	$s0, $s0, -16
	masknez	$s1, $s1, $a3
	maskeqz	$a3, $s2, $a3
	or	$a3, $a3, $s1
	mul.d	$a3, $a3, $s0
	sll.w	$s0, $a3, $a2
.LBB7_16:                               #   in Loop: Header=BB7_3 Depth=1
	st.w	$s0, $s3, 0
	ld.w	$a3, $t1, 0
	ld.w	$s0, $fp, 48
	sra.w	$a3, $a3, $a7
	div.w	$fp, $a3, $s0
	st.w	$fp, $t1, 0
	ld.w	$a3, $a0, 36
	bnez	$a3, .LBB7_1
# %bb.17:                               #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a3, $a0, 44
	beq	$a3, $t7, .LBB7_1
# %bb.18:                               #   in Loop: Header=BB7_3 Depth=1
	mul.d	$a3, $fp, $s0
	pcalau12i	$fp, %pc_hi20(A)
	addi.d	$fp, $fp, %pc_lo12(A)
	add.d	$fp, $fp, $t3
	ld.w	$fp, $fp, 48
	ldx.w	$s0, $a1, $t3
	mul.d	$a3, $a3, $fp
	sll.w	$a3, $a3, $a7
	srli.d	$a3, $a3, 6
	add.w	$a3, $a3, $s0
	ldx.w	$fp, $t5, $t3
	srai.d	$s0, $a3, 31
	xor	$s1, $a3, $s0
	sub.d	$s0, $s1, $s0
	mul.d	$fp, $s0, $fp
	add.d	$fp, $fp, $a6
	sra.w	$fp, $fp, $a5
	slti	$a3, $a3, 0
	srai.d	$s0, $fp, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	sub.d	$s0, $zero, $fp
	ldx.w	$s1, $t2, $t3
	masknez	$fp, $fp, $a3
	maskeqz	$a3, $s0, $a3
	or	$a3, $a3, $fp
	mul.d	$a3, $a3, $s1
	sll.w	$fp, $a3, $a2
	b	.LBB7_2
.LBB7_19:                               # %.preheader192
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a4, $a0, $a1
	ori	$a1, $zero, 2408
	ldx.w	$a1, $a4, $a1
	ori	$a2, $zero, 2416
	ldx.w	$a2, $a4, $a2
	ldptr.w	$a3, $a4, 2412
	ldptr.w	$a5, $a4, 2420
	add.d	$a6, $a2, $a1
	sub.d	$a2, $a1, $a2
	srli.d	$a1, $a3, 1
	sub.d	$a7, $a1, $a5
	srli.d	$a1, $a5, 1
	add.d	$a3, $a1, $a3
	add.d	$a1, $a3, $a6
	st.w	$a1, $a0, 1384
	sub.d	$a3, $a6, $a3
	st.w	$a3, $a0, 1396
	add.d	$a3, $a7, $a2
	st.w	$a3, $a0, 1388
	sub.d	$a2, $a2, $a7
	st.w	$a2, $a0, 1392
	ori	$a2, $zero, 2424
	ldx.w	$a2, $a4, $a2
	ori	$a3, $zero, 2432
	ldx.w	$a3, $a4, $a3
	ldptr.w	$a5, $a4, 2428
	ldptr.w	$a6, $a4, 2436
	add.d	$a7, $a3, $a2
	sub.d	$t0, $a2, $a3
	srli.d	$a2, $a5, 1
	sub.d	$t1, $a2, $a6
	srli.d	$a2, $a6, 1
	add.d	$a3, $a2, $a5
	add.d	$a2, $a3, $a7
	st.w	$a2, $a0, 1448
	sub.d	$a3, $a7, $a3
	st.w	$a3, $a0, 1460
	add.d	$a3, $t1, $t0
	st.w	$a3, $a0, 1452
	sub.d	$a5, $t0, $t1
	st.w	$a5, $a0, 1456
	ori	$a5, $zero, 2440
	ldx.w	$a5, $a4, $a5
	ori	$a6, $zero, 2448
	ldx.w	$a6, $a4, $a6
	ldptr.w	$a7, $a4, 2444
	ldptr.w	$t0, $a4, 2452
	add.d	$t1, $a6, $a5
	sub.d	$a5, $a5, $a6
	srli.d	$a6, $a7, 1
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $t0, 1
	add.d	$a7, $t0, $a7
	add.d	$t0, $a7, $t1
	st.w	$t0, $a0, 1512
	sub.d	$a7, $t1, $a7
	st.w	$a7, $a0, 1524
	add.d	$t1, $a6, $a5
	st.w	$t1, $a0, 1516
	sub.d	$a5, $a5, $a6
	st.w	$a5, $a0, 1520
	ori	$a6, $zero, 2456
	ldx.w	$a6, $a4, $a6
	ori	$t2, $zero, 2464
	ldx.w	$t2, $a4, $t2
	ldptr.w	$t3, $a4, 2460
	ldptr.w	$a4, $a4, 2468
	add.d	$t4, $t2, $a6
	sub.d	$a6, $a6, $t2
	srli.d	$t2, $t3, 1
	sub.d	$t2, $t2, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $t3
	add.d	$t3, $a4, $t4
	sub.d	$a4, $t4, $a4
	st.w	$a4, $a0, 1588
	add.d	$t4, $t2, $a6
	sub.d	$a6, $a6, $t2
	lu12i.w	$t2, 1
	ld.d	$t5, $a0, 1388
	ori	$t2, $t2, 1804
	ld.d	$t6, $a0, 1456
	ldx.w	$t2, $a0, $t2
	vinsgr2vr.d	$vr0, $t5, 0
	ld.w	$t5, $a0, 1388
	vinsgr2vr.d	$vr1, $t6, 0
	vinsgr2vr.w	$vr2, $t0, 0
	vinsgr2vr.w	$vr2, $t1, 1
	vinsgr2vr.w	$vr2, $a5, 2
	vinsgr2vr.w	$vr2, $a7, 3
	vshuf4i.w	$vr0, $vr0, 16
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr3, $t3, 0
	vinsgr2vr.w	$vr3, $t4, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a4, 3
	vsrai.w	$vr4, $vr3, 1
	vreplvei.d	$vr5, $vr1, 0
	vinsgr2vr.w	$vr5, $a2, 0
	ld.d	$a4, $a0, 1392
	vinsgr2vr.w	$vr5, $a3, 1
	vadd.w	$vr4, $vr4, $vr5
	vreplgr2vr.w	$vr5, $t2
	vinsgr2vr.d	$vr6, $a4, 0
	vinsgr2vr.w	$vr7, $a1, 0
	vinsgr2vr.w	$vr7, $t5, 1
	vpackev.d	$vr7, $vr6, $vr7
	vsub.w	$vr7, $vr7, $vr2
	vinsgr2vr.w	$vr8, $a2, 0
	vinsgr2vr.w	$vr8, $a3, 1
	vpackev.d	$vr1, $vr1, $vr8
	vsrai.w	$vr1, $vr1, 1
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr8, $a1, %pc_lo12(.LCPI7_0)
	vsub.w	$vr1, $vr1, $vr3
	vrepli.w	$vr3, 32
	vadd.w	$vr7, $vr7, $vr3
	vshuf.w	$vr8, $vr6, $vr0
	vadd.w	$vr0, $vr2, $vr8
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr0, $vr4
	vsrai.w	$vr2, $vr2, 6
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr5
	vst	$vr2, $a0, 1384
	vsub.w	$vr0, $vr0, $vr4
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr5
	vst	$vr0, $a0, 1576
	vadd.w	$vr0, $vr7, $vr1
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr5
	vst	$vr0, $a0, 1448
	vsub.w	$vr0, $vr7, $vr1
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr5
	vst	$vr0, $a0, 1512
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
.Lfunc_end7:
	.size	itrans_sp, .Lfunc_end7-itrans_sp
                                        # -- End function
	.globl	copyblock_sp                    # -- Begin function copyblock_sp
	.p2align	5
	.type	copyblock_sp,@function
copyblock_sp:                           # @copyblock_sp
# %bb.0:                                # %.preheader148
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$a6, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $a0
	ld.w	$a5, $a0, 32
	slli.d	$a3, $a2, 5
	add.d	$a3, $a0, $a3
	addi.d	$a4, $a3, 104
	slli.d	$a6, $a6, 1
	ldx.hu	$a7, $a4, $a6
	addi.d	$t0, $a6, 2
	ldx.hu	$t1, $a4, $t0
	addi.d	$t2, $a6, 4
	ldx.hu	$t3, $a4, $t2
	addi.d	$t4, $a6, 6
	ldx.hu	$a4, $a4, $t4
	addi.d	$t5, $a3, 136
	ldx.hu	$t6, $t5, $a6
	ldx.hu	$t7, $t5, $t0
	ldx.hu	$t8, $t5, $t2
	ldx.hu	$t5, $t5, $t4
	addi.d	$fp, $a3, 168
	ldx.hu	$s0, $fp, $a6
	ldx.hu	$s1, $fp, $t0
	ldx.hu	$s2, $fp, $t2
	ldx.hu	$fp, $fp, $t4
	addi.d	$a3, $a3, 200
	ldx.hu	$a6, $a3, $a6
	ldx.hu	$t0, $a3, $t0
	ldx.hu	$t2, $a3, $t2
	ldx.hu	$t4, $a3, $t4
	add.d	$a3, $a4, $a7
	sub.d	$a4, $a7, $a4
	add.d	$a7, $t3, $t1
	sub.d	$t1, $t1, $t3
	add.d	$t3, $a7, $a3
	sub.d	$a7, $a3, $a7
	alsl.d	$s4, $a4, $t1, 1
	slli.d	$a3, $t1, 1
	sub.d	$a3, $a4, $a3
	add.d	$a4, $t5, $t6
	sub.d	$t1, $t6, $t5
	add.d	$t5, $t8, $t7
	sub.d	$t6, $t7, $t8
	add.d	$t7, $t5, $a4
	sub.d	$a4, $a4, $t5
	alsl.d	$t5, $t1, $t6, 1
	slli.d	$t6, $t6, 1
	sub.d	$t8, $t1, $t6
	add.d	$t1, $fp, $s0
	sub.d	$t6, $s0, $fp
	add.d	$fp, $s2, $s1
	sub.d	$s0, $s1, $s2
	add.d	$s1, $fp, $t1
	sub.d	$fp, $t1, $fp
	alsl.d	$s2, $t6, $s0, 1
	slli.d	$t1, $s0, 1
	sub.d	$s5, $t6, $t1
	add.d	$t1, $t4, $a6
	sub.d	$a6, $a6, $t4
	add.d	$t4, $t2, $t0
	sub.d	$t0, $t0, $t2
	add.d	$t2, $t4, $t1
	sub.d	$t6, $t1, $t4
	alsl.d	$s6, $a6, $t0, 1
	slli.d	$t0, $t0, 1
	sub.d	$t0, $a6, $t0
	add.d	$a6, $t2, $t3
	sub.d	$t2, $t3, $t2
	add.d	$t3, $s1, $t7
	sub.d	$t4, $t7, $s1
	add.d	$t1, $t3, $a6
	sub.w	$s3, $a6, $t3
	alsl.d	$s7, $t2, $t4, 1
	addi.w	$s0, $s7, 0
	slli.d	$a6, $t4, 1
	sub.w	$t4, $t2, $a6
	add.d	$a6, $s6, $s4
	sub.d	$t2, $s4, $s6
	add.d	$t3, $s2, $t5
	sub.d	$t7, $t5, $s2
	add.w	$t5, $t3, $a6
	sub.w	$s1, $a6, $t3
	alsl.d	$a6, $t2, $t7, 1
	addi.w	$s2, $a6, 0
	slli.d	$a6, $t7, 1
	sub.w	$t3, $t2, $a6
	add.d	$a6, $t6, $a7
	sub.d	$a7, $a7, $t6
	add.d	$t2, $fp, $a4
	sub.d	$a4, $a4, $fp
	add.w	$t6, $t2, $a6
	sub.w	$fp, $a6, $t2
	alsl.d	$s6, $a7, $a4, 1
	addi.w	$s4, $s6, 0
	slli.d	$a4, $a4, 1
	sub.w	$a6, $a7, $a4
	add.d	$a4, $t0, $a3
	sub.d	$a3, $a3, $t0
	add.d	$a7, $s5, $t8
	sub.d	$t0, $t8, $s5
	add.w	$t7, $a7, $a4
	sub.w	$t8, $a4, $a7
	alsl.d	$a4, $a3, $t0, 1
	addi.w	$s5, $a4, 0
	slli.d	$a4, $t0, 1
	sub.w	$a4, $a3, $a4
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2731
	mul.d	$a3, $a5, $a3
	srli.d	$a7, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a7
	slli.d	$a7, $a3, 2
	alsl.d	$a7, $a3, $a7, 1
	sub.w	$a7, $a5, $a7
	addi.d	$a5, $a3, 15
	ori	$t0, $zero, 1
	sll.w	$t0, $t0, $a5
	bstrpick.d	$t2, $t0, 31, 31
	add.w	$t0, $t0, $t2
	srai.d	$t0, $t0, 1
	slli.d	$s8, $a7, 6
	pcalau12i	$a7, %pc_hi20(quant_coef)
	addi.d	$a7, $a7, %pc_lo12(quant_coef)
	add.d	$t2, $a7, $s8
	pcalau12i	$ra, %got_pc_hi20(dequant_coef)
	ld.d	$ra, $ra, %got_pc_lo12(dequant_coef)
	ldx.w	$a0, $a7, $s8
	add.d	$a7, $ra, $s8
	mul.d	$a0, $t1, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	ldx.w	$t1, $ra, $s8
	srai.d	$s8, $a0, 31
	xor	$a0, $a0, $s8
	sub.d	$a0, $a0, $s8
	mul.d	$a0, $a0, $t1
	sll.w	$t1, $a0, $a3
	ld.w	$a0, $t2, 16
	srai.d	$s8, $t5, 31
	xor	$ra, $t5, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$a0, $s8, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$t5, $t5, 0
	srai.d	$s8, $a0, 31
	xor	$a0, $a0, $s8
	sub.d	$a0, $a0, $s8
	sub.d	$s8, $zero, $a0
	ld.w	$ra, $a7, 16
	masknez	$a0, $a0, $t5
	maskeqz	$t5, $s8, $t5
	or	$a0, $t5, $a0
	mul.d	$a0, $a0, $ra
	sll.w	$t5, $a0, $a3
	ld.w	$a0, $t2, 32
	srai.d	$s8, $t6, 31
	xor	$ra, $t6, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$a0, $s8, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$t6, $t6, 0
	srai.d	$s8, $a0, 31
	xor	$a0, $a0, $s8
	sub.d	$a0, $a0, $s8
	sub.d	$s8, $zero, $a0
	ld.w	$ra, $a7, 32
	masknez	$a0, $a0, $t6
	maskeqz	$t6, $s8, $t6
	or	$a0, $t6, $a0
	mul.d	$a0, $a0, $ra
	sll.w	$t6, $a0, $a3
	ld.w	$a0, $t2, 48
	srai.d	$s8, $t7, 31
	xor	$ra, $t7, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$a0, $s8, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$t7, $t7, 0
	srai.d	$s8, $a0, 31
	xor	$a0, $a0, $s8
	sub.d	$a0, $a0, $s8
	sub.d	$s8, $zero, $a0
	ld.w	$ra, $a7, 48
	masknez	$a0, $a0, $t7
	maskeqz	$t7, $s8, $t7
	or	$a0, $t7, $a0
	mul.d	$a0, $a0, $ra
	sll.w	$t7, $a0, $a3
	ld.w	$a0, $t2, 4
	srai.d	$s8, $s0, 31
	xor	$s7, $s7, $s8
	sub.d	$s7, $s7, $s8
	mul.d	$a0, $s7, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$s0, $s0, 0
	srai.d	$s7, $a0, 31
	xor	$a0, $a0, $s7
	sub.d	$a0, $a0, $s7
	sub.d	$s7, $zero, $a0
	ld.w	$s8, $a7, 4
	masknez	$a0, $a0, $s0
	maskeqz	$s0, $s7, $s0
	or	$a0, $s0, $a0
	mul.d	$a0, $a0, $s8
	sll.w	$s0, $a0, $a3
	ld.w	$a0, $t2, 20
	srai.d	$s7, $s2, 31
	xor	$s8, $s2, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$a0, $s7, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$s2, $s2, 0
	srai.d	$s7, $a0, 31
	xor	$a0, $a0, $s7
	sub.d	$a0, $a0, $s7
	sub.d	$s7, $zero, $a0
	ld.w	$s8, $a7, 20
	masknez	$a0, $a0, $s2
	maskeqz	$s2, $s7, $s2
	or	$a0, $s2, $a0
	mul.d	$a0, $a0, $s8
	sll.w	$s2, $a0, $a3
	ld.w	$a0, $t2, 36
	srai.d	$s7, $s4, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$s4, $s4, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 36
	masknez	$a0, $a0, $s4
	maskeqz	$s4, $s6, $s4
	or	$a0, $s4, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$s4, $a0, $a3
	ld.w	$a0, $t2, 52
	srai.d	$s6, $s5, 31
	xor	$s7, $s5, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$s5, $s5, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 52
	masknez	$a0, $a0, $s5
	maskeqz	$s5, $s6, $s5
	or	$a0, $s5, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$s5, $a0, $a3
	ld.w	$a0, $t2, 8
	srai.d	$s6, $s3, 31
	xor	$s7, $s3, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$s3, $s3, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 8
	masknez	$a0, $a0, $s3
	maskeqz	$s3, $s6, $s3
	or	$a0, $s3, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$s3, $a0, $a3
	ld.w	$a0, $t2, 24
	srai.d	$s6, $s1, 31
	xor	$s7, $s1, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$s1, $s1, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 24
	masknez	$a0, $a0, $s1
	maskeqz	$s1, $s6, $s1
	or	$a0, $s1, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$s1, $a0, $a3
	ld.w	$a0, $t2, 40
	srai.d	$s6, $fp, 31
	xor	$s7, $fp, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$fp, $fp, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 40
	masknez	$a0, $a0, $fp
	maskeqz	$fp, $s6, $fp
	or	$a0, $fp, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$fp, $a0, $a3
	st.w	$fp, $a1, 1520
	ld.w	$a0, $t2, 56
	srai.d	$s6, $t8, 31
	xor	$s7, $t8, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$t8, $t8, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 56
	masknez	$a0, $a0, $t8
	maskeqz	$t8, $s6, $t8
	or	$a0, $t8, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$t8, $a0, $a3
	ld.w	$a0, $t2, 12
	srai.d	$s6, $t4, 31
	xor	$s7, $t4, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$t4, $t4, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 12
	masknez	$a0, $a0, $t4
	maskeqz	$t4, $s6, $t4
	or	$a0, $t4, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$t4, $a0, $a3
	ld.w	$a0, $t2, 28
	srai.d	$s6, $t3, 31
	xor	$s7, $t3, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$t3, $t3, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 28
	masknez	$a0, $a0, $t3
	maskeqz	$t3, $s6, $t3
	or	$a0, $t3, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$t3, $a0, $a3
	ld.w	$a0, $t2, 44
	srai.d	$s6, $a6, 31
	xor	$s7, $a6, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$a0, $s6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$a6, $a6, 0
	srai.d	$s6, $a0, 31
	xor	$a0, $a0, $s6
	sub.d	$a0, $a0, $s6
	sub.d	$s6, $zero, $a0
	ld.w	$s7, $a7, 44
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $s6, $a6
	or	$a0, $a6, $a0
	mul.d	$a0, $a0, $s7
	sll.w	$s6, $a0, $a3
	ld.w	$a0, $t2, 60
	srai.d	$a6, $a4, 31
	xor	$t2, $a4, $a6
	sub.d	$a6, $t2, $a6
	mul.d	$a0, $a6, $a0
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $a5
	slti	$a4, $a4, 0
	srai.d	$a5, $a0, 31
	xor	$a0, $a0, $a5
	sub.d	$a0, $a0, $a5
	sub.d	$a5, $zero, $a0
	ld.w	$a6, $a7, 60
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a5, $a4
	or	$a0, $a4, $a0
	mul.d	$a0, $a0, $a6
	sll.w	$a0, $a0, $a3
	add.d	$a3, $t6, $t1
	sub.d	$a4, $t1, $t6
	srli.d	$a5, $t5, 1
	sub.d	$a5, $a5, $t7
	srai.d	$a6, $t7, 1
	add.d	$a6, $a6, $t5
	add.d	$t7, $a6, $a3
	sub.d	$a3, $a3, $a6
	st.w	$a3, $a1, 1396
	add.d	$t2, $a5, $a4
	sub.d	$a6, $a4, $a5
	add.d	$a3, $s4, $s0
	sub.d	$a4, $s0, $s4
	srai.d	$a5, $s2, 1
	sub.d	$a5, $a5, $s5
	srli.d	$a7, $s5, 1
	add.d	$a7, $a7, $s2
	add.w	$s0, $a7, $a3
	sub.d	$a3, $a3, $a7
	st.w	$a3, $a1, 1460
	add.w	$t5, $a5, $a4
	sub.w	$a7, $a4, $a5
	st.w	$a7, $a1, 1456
	add.d	$a3, $fp, $s3
	sub.d	$a4, $s3, $fp
	srai.d	$a5, $s1, 1
	sub.d	$a5, $a5, $t8
	srai.d	$t0, $t8, 1
	add.d	$t0, $t0, $s1
	add.d	$t8, $t0, $a3
	sub.d	$a3, $a3, $t0
	st.w	$a3, $a1, 1524
	add.d	$t6, $a5, $a4
	sub.d	$t0, $a4, $a5
	add.d	$a4, $s6, $t4
	sub.d	$a5, $t4, $s6
	srli.d	$t1, $t3, 1
	sub.d	$t1, $t1, $a0
	srli.d	$a0, $a0, 1
	add.d	$a0, $a0, $t3
	add.w	$t3, $a0, $a4
	sub.w	$a4, $a4, $a0
	st.w	$a4, $a1, 1588
	add.w	$a0, $t1, $a5
	sub.w	$t1, $a5, $t1
	add.d	$t4, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$a5, $s0, 1
	sub.d	$t8, $a5, $t3
	srli.d	$a5, $t3, 1
	add.d	$t3, $a5, $s0
	ldptr.w	$a5, $a1, 5900
	addi.d	$t4, $t4, 32
	add.w	$fp, $t4, $t3
	srai.d	$s0, $fp, 6
	srai.d	$fp, $fp, 63
	andn	$fp, $s0, $fp
	slt	$s0, $fp, $a5
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $a5, $s0
	or	$fp, $fp, $s0
	st.w	$fp, $a1, 1384
	sub.w	$t3, $t4, $t3
	srai.d	$t4, $t3, 6
	srai.d	$t3, $t3, 63
	andn	$t3, $t4, $t3
	slt	$t4, $t3, $a5
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	st.w	$t3, $a1, 1576
	addi.d	$t3, $t7, 32
	add.w	$t4, $t3, $t8
	srai.d	$t7, $t4, 6
	srai.d	$t4, $t4, 63
	andn	$t4, $t7, $t4
	slt	$t7, $t4, $a5
	maskeqz	$t4, $t4, $t7
	masknez	$t7, $a5, $t7
	or	$t4, $t4, $t7
	st.w	$t4, $a1, 1448
	sub.w	$t3, $t3, $t8
	srai.d	$t4, $t3, 6
	srai.d	$t3, $t3, 63
	andn	$t3, $t4, $t3
	slt	$t4, $t3, $a5
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	st.w	$t3, $a1, 1512
	add.d	$t3, $t6, $t2
	sub.d	$t2, $t2, $t6
	srli.d	$t4, $t5, 1
	sub.d	$t4, $t4, $a0
	srli.d	$a0, $a0, 1
	add.d	$a0, $a0, $t5
	addi.d	$t3, $t3, 32
	add.w	$t5, $t3, $a0
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $a5
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a5, $t6
	or	$t5, $t5, $t6
	st.w	$t5, $a1, 1388
	sub.w	$a0, $t3, $a0
	srai.d	$t3, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $t3, $a0
	slt	$t3, $a0, $a5
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $a5, $t3
	or	$a0, $a0, $t3
	st.w	$a0, $a1, 1580
	addi.d	$a0, $t2, 32
	add.w	$t2, $a0, $t4
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $a5
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a5, $t3
	or	$t2, $t2, $t3
	st.w	$t2, $a1, 1452
	sub.w	$a0, $a0, $t4
	srai.d	$t2, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $t2, $a0
	slt	$t2, $a0, $a5
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a5, $t2
	or	$a0, $a0, $t2
	st.w	$a0, $a1, 1516
	bstrpick.d	$a0, $a6, 31, 0
	add.d	$a6, $t0, $a0
	sub.d	$a0, $a0, $t0
	srli.d	$t0, $a7, 1
	sub.d	$t0, $t0, $t1
	srli.d	$t1, $t1, 1
	add.d	$a7, $t1, $a7
	addi.d	$t1, $a6, 32
	add.w	$a6, $t1, $a7
	srai.d	$t2, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $t2, $a6
	slt	$t2, $a6, $a5
	maskeqz	$a6, $a6, $t2
	masknez	$t2, $a5, $t2
	or	$a6, $a6, $t2
	st.w	$a6, $a1, 1392
	sub.w	$a7, $t1, $a7
	srai.d	$t1, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t1, $a7
	slt	$t1, $a7, $a5
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a5, $t1
	or	$a7, $a7, $t1
	st.w	$a7, $a1, 1584
	addi.d	$a0, $a0, 32
	add.w	$a7, $a0, $t0
	srai.d	$t1, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t1, $a7
	slt	$t1, $a7, $a5
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a5, $t1
	or	$a7, $a7, $t1
	st.w	$a7, $a1, 1456
	sub.w	$a0, $a0, $t0
	srai.d	$t0, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $t0, $a0
	slt	$t0, $a0, $a5
	maskeqz	$a0, $a0, $t0
	masknez	$a5, $a5, $t0
	ld.w	$t0, $a1, 1396
	or	$a0, $a0, $a5
	ld.w	$a5, $a1, 1460
	st.w	$a0, $a1, 1520
	add.d	$a0, $a3, $t0
	sub.d	$t0, $t0, $a3
	srli.d	$a3, $a5, 1
	sub.d	$t1, $a3, $a4
	srli.d	$a3, $a4, 1
	add.d	$a3, $a3, $a5
	ldptr.w	$a5, $a1, 5900
	addi.d	$a0, $a0, 32
	add.w	$a4, $a0, $a3
	srai.d	$t2, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t2, $a4
	slt	$t2, $a4, $a5
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $a5, $t2
	or	$a4, $a4, $t2
	st.w	$a4, $a1, 1396
	sub.w	$a0, $a0, $a3
	srai.d	$a3, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a3, $a0
	slt	$a3, $a0, $a5
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a5, $a3
	or	$a3, $a0, $a3
	st.w	$a3, $a1, 1588
	addi.d	$a0, $t0, 32
	add.w	$t0, $a0, $t1
	srai.d	$t2, $t0, 6
	srai.d	$t0, $t0, 63
	andn	$t0, $t2, $t0
	slt	$t2, $t0, $a5
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $a5, $t2
	or	$t0, $t0, $t2
	st.w	$t0, $a1, 1460
	sub.w	$a0, $a0, $t1
	srai.d	$t1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $t1, $a0
	slt	$t1, $a0, $a5
	maskeqz	$a0, $a0, $t1
	masknez	$a5, $a5, $t1
	or	$a5, $a0, $a5
	st.w	$a5, $a1, 1524
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ld.w	$t1, $a1, 80
	lu12i.w	$t2, 77
	ori	$t2, $t2, 1528
	ldx.d	$a0, $a0, $t2
	add.w	$a2, $a2, $t1
	ld.w	$t1, $a1, 84
	slli.d	$t2, $a2, 3
	ldx.d	$t2, $a0, $t2
	ld.h	$t3, $a1, 1384
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	add.w	$t1, $t4, $t1
	slli.d	$t4, $t1, 1
	ld.h	$t5, $a1, 1388
	stx.h	$t3, $t2, $t4
	addi.w	$t3, $t1, 1
	slli.d	$t3, $t3, 1
	stx.h	$t5, $t2, $t3
	addi.w	$t5, $t1, 2
	slli.d	$t5, $t5, 1
	stx.h	$a6, $t2, $t5
	addi.w	$a6, $t1, 3
	addi.w	$t1, $a2, 1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	ld.h	$t6, $a1, 1448
	ld.h	$t7, $a1, 1452
	slli.d	$a6, $a6, 1
	stx.h	$a4, $t2, $a6
	stx.h	$t6, $t1, $t4
	stx.h	$t7, $t1, $t3
	stx.h	$a7, $t1, $t5
	addi.w	$a4, $a2, 2
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	ld.h	$a7, $a1, 1512
	ld.h	$t2, $a1, 1516
	ld.h	$t6, $a1, 1520
	stx.h	$t0, $t1, $a6
	stx.h	$a7, $a4, $t4
	stx.h	$t2, $a4, $t3
	stx.h	$t6, $a4, $t5
	addi.w	$a2, $a2, 3
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.h	$a2, $a1, 1576
	ld.h	$a7, $a1, 1580
	ld.h	$a1, $a1, 1584
	stx.h	$a5, $a4, $a6
	stx.h	$a2, $a0, $t4
	stx.h	$a7, $a0, $t3
	stx.h	$a1, $a0, $t5
	stx.h	$a3, $a0, $a6
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
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
.Lfunc_end8:
	.size	copyblock_sp, .Lfunc_end8-copyblock_sp
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function itrans_sp_chroma
.LCPI9_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	3                               # 0x3
	.text
	.globl	itrans_sp_chroma
	.p2align	5
	.type	itrans_sp_chroma,@function
itrans_sp_chroma:                       # @itrans_sp_chroma
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	ld.w	$t1, $a0, 28
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	bltz	$t1, .LBB9_2
# %bb.1:
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$t1, $a2, $t1
.LBB9_2:                                # %.thread
	ld.w	$t2, $a0, 32
	addi.d	$t0, $sp, 56
	bltz	$t2, .LBB9_4
# %bb.3:                                # %.thread260
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.b	$a3, $a2, $t2
	andi	$t2, $a3, 255
	ori	$a2, $zero, 171
	mul.d	$a2, $t2, $a2
	srli.d	$a2, $a2, 10
	slli.d	$a4, $a2, 2
	alsl.d	$a4, $a2, $a4, 1
	sub.d	$a3, $a3, $a4
	andi	$a1, $a3, 255
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a3, $a2, 15
	lu12i.w	$a4, 8
	ld.w	$a7, $a0, 44
	sll.w	$a4, $a4, $a2
	srai.d	$a4, $a4, 1
	b	.LBB9_5
.LBB9_4:
	sub.d	$a2, $zero, $t2
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	lu32i.d	$a3, 0
	mul.d	$a2, $a2, $a3
	srli.d	$a3, $a2, 34
	sub.d	$a2, $zero, $a3
	slli.d	$a4, $a3, 2
	alsl.d	$a4, $a3, $a4, 1
	add.w	$a1, $a4, $t2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a4, $zero, 15
	sub.d	$a3, $a4, $a3
	ori	$a4, $zero, 1
	ld.w	$a7, $a0, 44
	sll.w	$a4, $a4, $a3
	bstrpick.d	$a4, $a4, 31, 1
.LBB9_5:                                # %.preheader284
	addi.d	$a5, $a0, 44
	addi.d	$a7, $a7, -4
	sltui	$a1, $a7, 1
	masknez	$t1, $t1, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$t2, $t2, $a1
	or	$a1, $t2, $t1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$t2, $a0, 104
	move	$fp, $zero
	ld.hu	$t3, $a0, 106
	st.w	$t2, $sp, 40
	addi.d	$t2, $sp, 72
	ld.hu	$t4, $a0, 108
	st.w	$t3, $sp, 72
	addi.d	$t3, $sp, 104
	ld.hu	$t5, $a0, 110
	st.w	$t4, $sp, 104
	addi.d	$t4, $sp, 136
	ld.hu	$t6, $a0, 112
	st.w	$t5, $sp, 136
	addi.d	$t5, $sp, 168
	ld.hu	$t7, $a0, 114
	st.w	$t6, $sp, 168
	addi.d	$t6, $sp, 200
	ld.hu	$t8, $a0, 116
	st.w	$t7, $sp, 200
	ld.hu	$s0, $a0, 118
	addi.d	$t7, $sp, 232
	st.w	$t8, $sp, 232
	addi.d	$t8, $sp, 264
	st.w	$s0, $sp, 264
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 104
	ld.hu	$s0, $a0, 136
	ld.hu	$s1, $a0, 138
	ld.hu	$s2, $a0, 140
	ld.hu	$s3, $a0, 142
	st.w	$s0, $sp, 44
	st.w	$s1, $sp, 76
	st.w	$s2, $sp, 108
	st.w	$s3, $sp, 140
	ld.hu	$s0, $a0, 144
	ld.hu	$s1, $a0, 146
	ld.hu	$s2, $a0, 148
	ld.hu	$s3, $a0, 150
	st.w	$s0, $sp, 172
	st.w	$s1, $sp, 204
	st.w	$s2, $sp, 236
	st.w	$s3, $sp, 268
	vst	$vr0, $a0, 136
	ld.hu	$s0, $a0, 168
	ld.hu	$s1, $a0, 170
	ld.hu	$s2, $a0, 172
	ld.hu	$s3, $a0, 174
	st.w	$s0, $sp, 48
	st.w	$s1, $sp, 80
	st.w	$s2, $sp, 112
	st.w	$s3, $sp, 144
	ld.hu	$s0, $a0, 176
	ld.hu	$s1, $a0, 178
	ld.hu	$s2, $a0, 180
	ld.hu	$s3, $a0, 182
	st.w	$s0, $sp, 176
	st.w	$s1, $sp, 208
	st.w	$s2, $sp, 240
	st.w	$s3, $sp, 272
	vst	$vr0, $a0, 168
	ld.hu	$s0, $a0, 200
	ld.hu	$s1, $a0, 202
	ld.hu	$s2, $a0, 204
	ld.hu	$s3, $a0, 206
	st.w	$s0, $sp, 52
	st.w	$s1, $sp, 84
	st.w	$s2, $sp, 116
	st.w	$s3, $sp, 148
	ld.hu	$s0, $a0, 208
	ld.hu	$s1, $a0, 210
	ld.hu	$s2, $a0, 212
	ld.hu	$s3, $a0, 214
	st.w	$s0, $sp, 180
	st.w	$s1, $sp, 212
	st.w	$s2, $sp, 244
	st.w	$s3, $sp, 276
	vst	$vr0, $a0, 200
	ld.hu	$s0, $a0, 232
	ld.hu	$s1, $a0, 234
	ld.hu	$s2, $a0, 236
	ld.hu	$s3, $a0, 238
	st.w	$s0, $sp, 56
	st.w	$s1, $sp, 88
	st.w	$s2, $sp, 120
	st.w	$s3, $sp, 152
	ld.hu	$s0, $a0, 240
	ld.hu	$s1, $a0, 242
	ld.hu	$s2, $a0, 244
	ld.hu	$s3, $a0, 246
	st.w	$s0, $sp, 184
	st.w	$s1, $sp, 216
	st.w	$s2, $sp, 248
	st.w	$s3, $sp, 280
	vst	$vr0, $a0, 232
	ld.hu	$s0, $a0, 264
	ld.hu	$s1, $a0, 266
	ld.hu	$s2, $a0, 268
	ld.hu	$s3, $a0, 270
	st.w	$s0, $sp, 60
	st.w	$s1, $sp, 92
	st.w	$s2, $sp, 124
	st.w	$s3, $sp, 156
	ld.hu	$s0, $a0, 272
	ld.hu	$s1, $a0, 274
	ld.hu	$s2, $a0, 276
	ld.hu	$s3, $a0, 278
	st.w	$s0, $sp, 188
	st.w	$s1, $sp, 220
	st.w	$s2, $sp, 252
	st.w	$s3, $sp, 284
	vst	$vr0, $a0, 264
	ld.hu	$s0, $a0, 296
	ld.hu	$s1, $a0, 298
	ld.hu	$s2, $a0, 300
	ld.hu	$s3, $a0, 302
	st.w	$s0, $sp, 64
	st.w	$s1, $sp, 96
	st.w	$s2, $sp, 128
	st.w	$s3, $sp, 160
	ld.hu	$s0, $a0, 304
	ld.hu	$s1, $a0, 306
	ld.hu	$s2, $a0, 308
	ld.hu	$s3, $a0, 310
	st.w	$s0, $sp, 192
	st.w	$s1, $sp, 224
	st.w	$s2, $sp, 256
	st.w	$s3, $sp, 288
	vst	$vr0, $a0, 296
	ld.hu	$s0, $a0, 328
	ld.hu	$s1, $a0, 330
	ld.hu	$s2, $a0, 332
	ld.hu	$s3, $a0, 334
	st.w	$s0, $sp, 68
	st.w	$s1, $sp, 100
	st.w	$s2, $sp, 132
	st.w	$s3, $sp, 164
	ld.hu	$s0, $a0, 336
	ld.hu	$s1, $a0, 338
	ld.hu	$s2, $a0, 340
	ld.hu	$s3, $a0, 342
	st.w	$s0, $sp, 196
	st.w	$s1, $sp, 228
	st.w	$s2, $sp, 260
	st.w	$s3, $sp, 292
	vst	$vr0, $a0, 328
	addi.d	$s0, $sp, 40
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 40
	addi.d	$s6, $sp, 40
	.p2align	4, , 16
.LBB9_6:                                # %.preheader282
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$s4, $fp, 2
	addi.d	$s3, $s4, 4
	add.d	$s7, $s0, $s3
	vld	$vr1, $s2, 0
	vld	$vr2, $s2, 32
	vld	$vr3, $s2, 64
	vld	$vr4, $s2, 96
	addi.d	$s5, $s4, 8
	add.d	$s8, $s0, $s5
	vsub.w	$vr5, $vr2, $vr3
	vsub.w	$vr6, $vr1, $vr4
	vadd.w	$vr1, $vr4, $vr1
	vadd.w	$vr2, $vr3, $vr2
	vadd.w	$vr3, $vr2, $vr1
	vstelm.w	$vr3, $s6, 0, 0
	vpickve2gr.w	$ra, $vr3, 1
	vstelm.w	$vr3, $s7, 0, 1
	vpickve2gr.w	$a6, $vr3, 2
	vstelm.w	$vr3, $s8, 0, 2
	vpickve2gr.w	$s8, $vr3, 3
	vsub.w	$vr1, $vr1, $vr2
	vstx	$vr1, $t3, $s4
	vslli.w	$vr1, $vr6, 1
	vadd.w	$vr1, $vr1, $vr5
	vstx	$vr1, $t2, $s4
	ld.w	$s6, $s6, 0
	vslli.w	$vr1, $vr5, 1
	vsub.w	$vr1, $vr6, $vr1
	vstx	$vr1, $t4, $s4
	add.d	$s7, $s8, $s6
	sub.d	$s6, $s6, $s8
	add.d	$s8, $a6, $ra
	sub.d	$a6, $ra, $a6
	sub.d	$ra, $s7, $s8
	st.w	$ra, $s2, 8
	alsl.d	$ra, $s6, $a6, 1
	st.w	$ra, $s2, 4
	slli.d	$a6, $a6, 1
	sub.d	$a6, $s6, $a6
	st.w	$a6, $s2, 12
	ldx.w	$a6, $t2, $s4
	addi.d	$s6, $s4, 12
	ldx.w	$ra, $t2, $s6
	ldx.w	$a1, $t2, $s3
	ldx.w	$t1, $t2, $s5
	add.d	$a7, $ra, $a6
	sub.d	$a6, $a6, $ra
	add.d	$ra, $t1, $a1
	sub.d	$a1, $a1, $t1
	add.d	$t1, $ra, $a7
	st.w	$t1, $s2, 32
	sub.d	$a7, $a7, $ra
	st.w	$a7, $s2, 40
	alsl.d	$a7, $a6, $a1, 1
	st.w	$a7, $s2, 36
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a6, $a1
	st.w	$a1, $s2, 44
	ldx.w	$a1, $t3, $s4
	ldx.w	$a6, $t3, $s6
	ldx.w	$a7, $t3, $s3
	ldx.w	$t1, $t3, $s5
	add.d	$ra, $a6, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a6, $t1, $a7
	sub.d	$a7, $a7, $t1
	add.d	$t1, $a6, $ra
	st.w	$t1, $s2, 64
	sub.d	$a6, $ra, $a6
	st.w	$a6, $s2, 72
	alsl.d	$a6, $a1, $a7, 1
	st.w	$a6, $s2, 68
	slli.d	$a6, $a7, 1
	sub.d	$a1, $a1, $a6
	st.w	$a1, $s2, 76
	ldx.w	$a1, $t4, $s4
	ldx.w	$a6, $t4, $s6
	ldx.w	$a7, $t4, $s3
	ldx.w	$t1, $t4, $s5
	add.d	$ra, $a6, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a6, $t1, $a7
	sub.d	$a7, $a7, $t1
	add.d	$t1, $a6, $ra
	st.w	$t1, $s2, 96
	sub.d	$a6, $ra, $a6
	st.w	$a6, $s2, 104
	alsl.d	$a6, $a1, $a7, 1
	st.w	$a6, $s2, 100
	slli.d	$a6, $a7, 1
	sub.d	$a1, $a1, $a6
	st.w	$a1, $s2, 108
	alsl.d	$a1, $fp, $t5, 2
	vld	$vr1, $s2, 128
	vld	$vr2, $s2, 160
	vld	$vr3, $s2, 192
	vld	$vr4, $s2, 224
	add.d	$a6, $t5, $s3
	add.d	$a7, $t5, $s5
	vsub.w	$vr5, $vr2, $vr3
	vsub.w	$vr6, $vr1, $vr4
	vadd.w	$vr1, $vr4, $vr1
	vadd.w	$vr2, $vr3, $vr2
	vadd.w	$vr3, $vr2, $vr1
	vpickve2gr.w	$t1, $vr3, 0
	vstelm.w	$vr3, $a1, 0, 0
	vpickve2gr.w	$a1, $vr3, 1
	vstelm.w	$vr3, $a6, 0, 1
	vpickve2gr.w	$a6, $vr3, 2
	vstelm.w	$vr3, $a7, 0, 2
	vpickve2gr.w	$a7, $vr3, 3
	vsub.w	$vr1, $vr1, $vr2
	vstx	$vr1, $t7, $s4
	vslli.w	$vr1, $vr6, 1
	vadd.w	$vr1, $vr1, $vr5
	vstx	$vr1, $t6, $s4
	vslli.w	$vr1, $vr5, 1
	vsub.w	$vr1, $vr6, $vr1
	vstx	$vr1, $t8, $s4
	add.d	$fp, $a7, $t1
	sub.d	$a7, $t1, $a7
	add.d	$t1, $a6, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a6, $t1, $fp
	st.w	$a6, $s2, 128
	sub.d	$a6, $fp, $t1
	st.w	$a6, $s2, 136
	alsl.d	$a6, $a7, $a1, 1
	st.w	$a6, $s2, 132
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a7, $a1
	st.w	$a1, $s2, 140
	ldx.w	$a1, $t6, $s4
	ldx.w	$a6, $t6, $s6
	ldx.w	$a7, $t6, $s3
	ldx.w	$t1, $t6, $s5
	add.d	$fp, $a6, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a6, $t1, $a7
	sub.d	$a7, $a7, $t1
	add.d	$t1, $a6, $fp
	st.w	$t1, $s2, 160
	sub.d	$a6, $fp, $a6
	st.w	$a6, $s2, 168
	alsl.d	$a6, $a1, $a7, 1
	st.w	$a6, $s2, 164
	slli.d	$a6, $a7, 1
	sub.d	$a1, $a1, $a6
	st.w	$a1, $s2, 172
	ldx.w	$a1, $t7, $s4
	ldx.w	$a6, $t7, $s6
	ldx.w	$a7, $t7, $s3
	ldx.w	$t1, $t7, $s5
	add.d	$fp, $s8, $s7
	add.d	$s7, $a6, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a6, $t1, $a7
	sub.d	$a7, $a7, $t1
	add.d	$t1, $a6, $s7
	st.w	$t1, $s2, 192
	sub.d	$a6, $s7, $a6
	st.w	$a6, $s2, 200
	alsl.d	$a6, $a1, $a7, 1
	st.w	$a6, $s2, 196
	slli.d	$a6, $a7, 1
	sub.d	$a1, $a1, $a6
	st.w	$a1, $s2, 204
	ldx.w	$a1, $t8, $s4
	ldx.w	$a6, $t8, $s6
	ldx.w	$a7, $t8, $s3
	ldx.w	$t1, $t8, $s5
	st.w	$fp, $s2, 0
	add.d	$fp, $a6, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a6, $t1, $a7
	sub.d	$a7, $a7, $t1
	add.d	$t1, $a6, $fp
	st.w	$t1, $s2, 224
	sub.d	$a6, $fp, $a6
	st.w	$a6, $s2, 232
	alsl.d	$a6, $a1, $a7, 1
	st.w	$a6, $s2, 228
	slli.d	$a6, $a7, 1
	sub.d	$a1, $a1, $a6
	st.w	$a1, $s2, 236
	andi	$a1, $s1, 1
	ori	$fp, $zero, 4
	move	$s2, $t0
	move	$s6, $t0
	move	$s1, $zero
	bnez	$a1, .LBB9_6
# %bb.7:
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a1, $a7, $a1
	srli.d	$a6, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$t0, $a1, $a6
	slli.d	$a1, $t0, 2
	alsl.d	$a1, $t0, $a1, 1
	sub.w	$a1, $a7, $a1
	ld.w	$a6, $sp, 56
	ld.w	$a7, $sp, 168
	ld.w	$t1, $sp, 40
	ld.w	$t2, $sp, 184
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $a7, 1
	vshuf4i.w	$vr1, $vr1, 4
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $a7, 0
	vadd.w	$vr1, $vr1, $vr2
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $a7, 1
	vshuf4i.w	$vr2, $vr2, 80
	vinsgr2vr.w	$vr0, $a6, 1
	vinsgr2vr.w	$vr0, $t2, 2
	vinsgr2vr.w	$vr0, $t1, 3
	vadd.w	$vr2, $vr2, $vr0
	vinsgr2vr.w	$vr0, $t1, 0
	vsub.w	$vr3, $vr0, $vr1
	vinsgr2vr.w	$vr0, $t2, 1
	vshuf4i.w	$vr0, $vr0, 64
	vadd.w	$vr1, $vr0, $vr1
	vshuf4i.d	$vr3, $vr1, 12
	pcalau12i	$a6, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI9_0)
	ld.w	$a6, $a0, 36
	vadd.w	$vr3, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vshuf.w	$vr0, $vr1, $vr3
	sltui	$a6, $a6, 1
	slli.d	$t6, $a4, 1
	addi.d	$t5, $a2, 16
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	slli.d	$t1, $a7, 6
	pcalau12i	$a7, %got_pc_hi20(dequant_coef)
	ld.d	$t2, $a7, %got_pc_lo12(dequant_coef)
	add.d	$t4, $t2, $t1
	pcalau12i	$a7, %pc_hi20(quant_coef)
	addi.d	$t3, $a7, %pc_lo12(quant_coef)
	add.d	$t7, $t3, $t1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	andn	$a7, $a6, $a7
	slli.d	$a6, $a1, 6
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a1, 1
	bnez	$a7, .LBB9_9
# %bb.8:                                # %.split301.us
	slli.d	$a7, $a1, 8
	add.d	$a7, $a0, $a7
	vneg.w	$vr1, $vr0
	ori	$t8, $zero, 2664
	ldx.w	$t8, $a7, $t8
	ori	$fp, $zero, 2728
	ldx.w	$fp, $a7, $fp
	ori	$s0, $zero, 3432
	ldx.w	$s0, $a7, $s0
	ori	$s1, $zero, 3496
	ldx.w	$a7, $a7, $s1
	vldrepl.w	$vr2, $t7, 0
	vmax.w	$vr1, $vr0, $vr1
	vslti.w	$vr0, $vr0, 0
	vreplgr2vr.w	$vr3, $t6
	vmadd.w	$vr3, $vr1, $vr2
	vreplgr2vr.w	$vr1, $t5
	vsra.w	$vr1, $vr3, $vr1
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vneg.w	$vr2, $vr1
	vbitsel.v	$vr0, $vr1, $vr2, $vr0
	vinsgr2vr.w	$vr1, $a7, 0
	vinsgr2vr.w	$vr1, $fp, 1
	vldrepl.w	$vr2, $t4, 0
	vinsgr2vr.w	$vr1, $s0, 2
	vinsgr2vr.w	$vr1, $t8, 3
	vadd.w	$vr0, $vr0, $vr1
	vmul.w	$vr0, $vr0, $vr2
	b	.LBB9_10
.LBB9_9:                                # %.split301
	ldx.w	$a7, $t2, $a6
	slli.d	$a7, $a7, 4
	slli.d	$t8, $a1, 8
	add.d	$t8, $a0, $t8
	ori	$fp, $zero, 2664
	ori	$s0, $zero, 2728
	ldx.w	$s0, $t8, $s0
	ori	$s1, $zero, 3496
	ldx.w	$s1, $t8, $s1
	ori	$s2, $zero, 3432
	ldx.w	$s2, $t8, $s2
	ldx.w	$t8, $t8, $fp
	vinsgr2vr.w	$vr1, $s1, 0
	vinsgr2vr.w	$vr1, $s0, 1
	vinsgr2vr.w	$vr1, $s2, 2
	vinsgr2vr.w	$vr1, $t8, 3
	vreplgr2vr.w	$vr2, $a7
	vmul.w	$vr1, $vr1, $vr2
	vreplgr2vr.w	$vr2, $t0
	vsll.w	$vr1, $vr1, $vr2
	vsrai.w	$vr1, $vr1, 5
	vadd.w	$vr0, $vr1, $vr0
	vldrepl.w	$vr1, $t7, 0
	vneg.w	$vr2, $vr0
	vmax.w	$vr2, $vr0, $vr2
	vreplgr2vr.w	$vr3, $t6
	vmadd.w	$vr3, $vr2, $vr1
	vreplgr2vr.w	$vr1, $t5
	vsra.w	$vr1, $vr3, $vr1
	vslti.w	$vr0, $vr0, 0
	vneg.w	$vr2, $vr1
	vldrepl.w	$vr3, $t4, 0
	vmax.w	$vr1, $vr1, $vr2
	vneg.w	$vr2, $vr1
	vbitsel.v	$vr0, $vr1, $vr2, $vr0
	vmul.w	$vr0, $vr0, $vr3
.LBB9_10:                               # %.preheader278
	add.d	$a6, $t2, $a6
	addi.d	$t1, $t1, 12
	add.d	$a7, $t2, $t1
	add.d	$t1, $t3, $t1
	slli.d	$a1, $a1, 8
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$t3, $a1, $a0
	addi.d	$t3, $t3, 2047
	addi.d	$t3, $t3, 665
	ori	$t5, $zero, 1
	ori	$t4, $zero, 4
	pcalau12i	$t6, %pc_hi20(A)
	addi.d	$t6, $t6, %pc_lo12(A)
	move	$fp, $zero
	ori	$t7, $zero, 64
	b	.LBB9_12
	.p2align	4, , 16
.LBB9_11:                               #   in Loop: Header=BB9_12 Depth=1
	andi	$a1, $t5, 1
	ori	$fp, $zero, 1
	move	$t5, $zero
	beqz	$a1, .LBB9_33
.LBB9_12:                               # %.preheader277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_14 Depth 2
                                        #       Child Loop BB9_17 Depth 3
	move	$s3, $zero
	addi.d	$a1, $sp, 48
	alsl.d	$t8, $fp, $a1, 4
	slli.d	$fp, $fp, 6
	add.d	$fp, $t3, $fp
	ori	$s0, $zero, 1
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_13:                               #   in Loop: Header=BB9_14 Depth=2
	andi	$a1, $s0, 1
	ori	$s3, $zero, 1
	move	$s0, $zero
	beqz	$a1, .LBB9_11
.LBB9_14:                               # %.preheader276
                                        #   Parent Loop BB9_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_17 Depth 3
	move	$s1, $zero
	slli.d	$s2, $s3, 7
	add.d	$s2, $t8, $s2
	alsl.d	$s3, $s3, $s3, 1
	slli.d	$s3, $s3, 8
	add.d	$s3, $fp, $s3
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_15:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s2, 4
	ldx.w	$t2, $t1, $s1
	srai.d	$s5, $a1, 31
	xor	$s6, $a1, $s5
	sub.d	$s5, $s6, $s5
	mul.d	$t2, $s5, $t2
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s5, $t2, 31
	xor	$t2, $t2, $s5
	sub.d	$t2, $t2, $s5
	sub.d	$s5, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $t2
	add.d	$s4, $a1, $s4
.LBB9_16:                               #   in Loop: Header=BB9_17 Depth=3
	ldx.w	$a1, $a7, $s1
	mul.d	$a1, $s4, $a1
	sll.w	$a1, $a1, $a2
	st.w	$a1, $s3, 0
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 32
	addi.d	$s3, $s3, 4
	beq	$s1, $t7, .LBB9_13
.LBB9_17:                               # %.preheader
                                        #   Parent Loop BB9_12 Depth=1
                                        #     Parent Loop BB9_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s3, -48
	ldx.w	$ra, $a6, $s1
	sra.w	$s4, $s4, $t0
	div.w	$s7, $s4, $ra
	st.w	$s7, $s3, -48
	ld.w	$s6, $a0, 36
	add.d	$s5, $t1, $s1
	add.d	$s4, $a7, $s1
	beqz	$s6, .LBB9_19
# %bb.18:                               # %.preheader._crit_edge
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$s8, $s5, -12
	ld.w	$s6, $s4, -12
	b	.LBB9_20
	.p2align	4, , 16
.LBB9_19:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	ld.w	$s8, $s5, -12
	ld.w	$s6, $s4, -12
	bne	$a1, $t4, .LBB9_30
.LBB9_20:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s2, -8
	srai.d	$ra, $a1, 31
	xor	$t2, $a1, $ra
	sub.d	$t2, $t2, $ra
	mul.d	$t2, $t2, $s8
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s8, $t2, 31
	xor	$t2, $t2, $s8
	sub.d	$t2, $t2, $s8
	sub.d	$s8, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $t2
	add.d	$a1, $a1, $s7
.LBB9_21:                               #   in Loop: Header=BB9_17 Depth=3
	mul.d	$s6, $a1, $s6
	sll.w	$a1, $s6, $a2
	st.w	$a1, $s3, -48
	ld.w	$a1, $s3, -32
	add.d	$s6, $a6, $s1
	ld.w	$s8, $s6, 4
	sra.w	$a1, $a1, $t0
	div.w	$s7, $a1, $s8
	st.w	$s7, $s3, -32
	ld.w	$a1, $a0, 36
	bnez	$a1, .LBB9_23
# %bb.22:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	bne	$a1, $t4, .LBB9_31
.LBB9_23:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s2, -4
	ld.w	$t2, $s5, -8
	srai.d	$s8, $a1, 31
	xor	$ra, $a1, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$t2, $s8, $t2
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s8, $t2, 31
	xor	$t2, $t2, $s8
	sub.d	$t2, $t2, $s8
	sub.d	$s8, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $t2
	add.d	$s7, $a1, $s7
.LBB9_24:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s4, -8
	mul.d	$a1, $s7, $a1
	sll.w	$a1, $a1, $a2
	st.w	$a1, $s3, -32
	ld.w	$a1, $s3, -16
	ld.w	$s8, $s6, 8
	sra.w	$a1, $a1, $t0
	div.w	$s7, $a1, $s8
	st.w	$s7, $s3, -16
	ld.w	$a1, $a0, 36
	bnez	$a1, .LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	bne	$a1, $t4, .LBB9_32
.LBB9_26:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s2, 0
	ld.w	$t2, $s5, -4
	srai.d	$s5, $a1, 31
	xor	$s8, $a1, $s5
	sub.d	$s5, $s8, $s5
	mul.d	$t2, $s5, $t2
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s5, $t2, 31
	xor	$t2, $t2, $s5
	sub.d	$t2, $t2, $s5
	sub.d	$s5, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $t2
	add.d	$s5, $a1, $s7
.LBB9_27:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s4, -4
	mul.d	$a1, $s5, $a1
	sll.w	$a1, $a1, $a2
	st.w	$a1, $s3, -16
	ld.w	$a1, $s3, 0
	ld.w	$s5, $s6, 12
	sra.w	$a1, $a1, $t0
	div.w	$s4, $a1, $s5
	st.w	$s4, $s3, 0
	ld.w	$a1, $a0, 36
	bnez	$a1, .LBB9_15
# %bb.28:                               #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	beq	$a1, $t4, .LBB9_15
# %bb.29:                               #   in Loop: Header=BB9_17 Depth=3
	add.d	$a1, $t6, $s1
	ld.w	$a1, $a1, 12
	mul.d	$t2, $s4, $s5
	ld.w	$s4, $s2, 4
	mul.d	$a1, $t2, $a1
	sll.w	$a1, $a1, $t0
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $s4
	ldx.w	$t2, $t1, $s1
	srai.d	$s4, $a1, 31
	xor	$s5, $a1, $s4
	sub.d	$s4, $s5, $s4
	mul.d	$t2, $s4, $t2
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s4, $t2, 31
	xor	$t2, $t2, $s4
	sub.d	$t2, $t2, $s4
	sub.d	$s4, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $t2
	b	.LBB9_16
.LBB9_30:                               #   in Loop: Header=BB9_17 Depth=3
	ldx.w	$a1, $t6, $s1
	mul.d	$t2, $s7, $ra
	ld.w	$s7, $s2, -8
	mul.d	$a1, $t2, $a1
	sll.w	$a1, $a1, $t0
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $s7
	srai.d	$t2, $a1, 31
	xor	$s7, $a1, $t2
	sub.d	$t2, $s7, $t2
	mul.d	$t2, $t2, $s8
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s7, $t2, 31
	xor	$t2, $t2, $s7
	sub.d	$t2, $t2, $s7
	sub.d	$s7, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $t2
	b	.LBB9_21
.LBB9_31:                               #   in Loop: Header=BB9_17 Depth=3
	add.d	$a1, $t6, $s1
	ld.w	$a1, $a1, 4
	mul.d	$t2, $s7, $s8
	ld.w	$s7, $s2, -4
	mul.d	$a1, $t2, $a1
	sll.w	$a1, $a1, $t0
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $s7
	ld.w	$t2, $s5, -8
	srai.d	$s7, $a1, 31
	xor	$s8, $a1, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$t2, $s7, $t2
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s7, $t2, 31
	xor	$t2, $t2, $s7
	sub.d	$t2, $t2, $s7
	sub.d	$s7, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $t2
	b	.LBB9_24
.LBB9_32:                               #   in Loop: Header=BB9_17 Depth=3
	add.d	$a1, $t6, $s1
	ld.w	$a1, $a1, 8
	mul.d	$t2, $s7, $s8
	ld.w	$s7, $s2, 0
	mul.d	$a1, $t2, $a1
	sll.w	$a1, $a1, $t0
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $s7
	ld.w	$t2, $s5, -4
	srai.d	$s5, $a1, 31
	xor	$s7, $a1, $s5
	sub.d	$s5, $s7, $s5
	mul.d	$t2, $s5, $t2
	add.d	$t2, $t2, $a4
	sra.w	$t2, $t2, $a3
	slti	$a1, $a1, 0
	srai.d	$s5, $t2, 31
	xor	$t2, $t2, $s5
	sub.d	$t2, $t2, $s5
	sub.d	$s5, $zero, $t2
	masknez	$t2, $t2, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $t2
	b	.LBB9_27
.LBB9_33:
	vpickve2gr.w	$a1, $vr0, 3
	sll.w	$a1, $a1, $a2
	vpickve2gr.w	$a3, $vr0, 2
	sll.w	$a3, $a3, $a2
	vpickve2gr.w	$a4, $vr0, 1
	sll.w	$a4, $a4, $a2
	vpickve2gr.w	$a5, $vr0, 0
	sll.w	$a2, $a5, $a2
	add.d	$a5, $a3, $a1
	add.d	$a6, $a2, $a4
	add.w	$a7, $a6, $a5
	srli.d	$a7, $a7, 1
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	stptr.w	$a7, $a0, 2664
	add.d	$a7, $a1, $a4
	add.d	$t0, $a3, $a2
	sub.w	$a7, $a7, $t0
	srli.d	$a7, $a7, 1
	stptr.w	$a7, $a0, 3432
	sub.w	$a5, $a5, $a6
	srli.d	$a5, $a5, 1
	stptr.w	$a5, $a0, 2728
	add.d	$a3, $a3, $a4
	sub.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 3496
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end9:
	.size	itrans_sp_chroma, .Lfunc_end9-itrans_sp_chroma
                                        # -- End function
	.type	quant_intra_default,@object     # @quant_intra_default
	.data
	.globl	quant_intra_default
	.p2align	2, 0x0
quant_intra_default:
	.word	6                               # 0x6
	.word	13                              # 0xd
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	13                              # 0xd
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	37                              # 0x25
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	37                              # 0x25
	.word	42                              # 0x2a
	.size	quant_intra_default, 64

	.type	quant_inter_default,@object     # @quant_inter_default
	.globl	quant_inter_default
	.p2align	2, 0x0
quant_inter_default:
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	14                              # 0xe
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	30                              # 0x1e
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	30                              # 0x1e
	.word	34                              # 0x22
	.size	quant_inter_default, 64

	.type	quant8_intra_default,@object    # @quant8_intra_default
	.globl	quant8_intra_default
	.p2align	2, 0x0
quant8_intra_default:
	.word	6                               # 0x6
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	38                              # 0x26
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	42                              # 0x2a
	.size	quant8_intra_default, 256

	.type	quant8_inter_default,@object    # @quant8_inter_default
	.globl	quant8_inter_default
	.p2align	2, 0x0
quant8_inter_default:
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	15                              # 0xf
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	35                              # 0x23
	.size	quant8_inter_default, 256

	.type	quant_org,@object               # @quant_org
	.globl	quant_org
	.p2align	2, 0x0
quant_org:
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	quant_org, 64

	.type	quant8_org,@object              # @quant8_org
	.globl	quant8_org
	.p2align	2, 0x0
quant8_org:
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	quant8_org, 256

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"warning: Intra_4x4_Vertical prediction mode not allowed at mb %d\n"
	.size	.L.str, 66

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"warning: Intra_4x4_Horizontal prediction mode not allowed at mb %d\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"warning: Intra_4x4_Diagonal_Down_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.2, 77

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"warning: Intra_4x4_Diagonal_Down_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.3, 76

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"warning: Intra_4x4_Vertical_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.4, 72

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.5, 71

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"warning: Intra_4x4_Horizontal_Up prediction mode not allowed at mb %d\n"
	.size	.L.str.6, 71

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"warning: Intra_4x4_Horizontal_Down prediction mode not allowed at mb %d\n"
	.size	.L.str.7, 73

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error: illegal intra_4x4 prediction mode: %d\n"
	.size	.L.str.8, 46

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"invalid 16x16 intra pred Mode VERT_PRED_16"
	.size	.L.str.9, 43

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"invalid 16x16 intra pred Mode HOR_PRED_16"
	.size	.L.str.10, 42

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"invalid 16x16 intra pred Mode PLANE_16"
	.size	.L.str.11, 39

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"illegal 16x16 intra prediction mode input: %d\n"
	.size	.L.str.12, 47

	.type	.L__const.intrapred_chroma.block_pos,@object # @__const.intrapred_chroma.block_pos
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.intrapred_chroma.block_pos:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	.L__const.intrapred_chroma.block_pos, 192

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"unexpected PLANE_8 chroma intra prediction mode"
	.size	.L.str.13, 48

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"unexpected HOR_PRED_8 chroma intra prediction mode"
	.size	.L.str.14, 51

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"unexpected VERT_PRED_8 chroma intra prediction mode"
	.size	.L.str.15, 52

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"illegal chroma intra prediction mode"
	.size	.L.str.16, 37

	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	quant_coef,@object              # @quant_coef
	.section	.rodata,"a",@progbits
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

	.type	A,@object                       # @A
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

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym quant_intra_default
	.addrsig_sym quant_inter_default
	.addrsig_sym quant8_intra_default
	.addrsig_sym quant8_inter_default
	.addrsig_sym quant_org
	.addrsig_sym quant8_org
