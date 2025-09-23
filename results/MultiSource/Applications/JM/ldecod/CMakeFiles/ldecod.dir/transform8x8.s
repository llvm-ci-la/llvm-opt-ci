	.file	"transform8x8.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred8x8
.LCPI0_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
.LCPI0_1:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	4                               # 0x4
	.half	11                              # 0xb
	.half	5                               # 0x5
	.half	13                              # 0xd
	.half	6                               # 0x6
	.half	15                              # 0xf
	.text
	.globl	intrapred8x8
	.p2align	5
	.type	intrapred8x8,@function
intrapred8x8:                           # @intrapred8x8
# %bb.0:
	addi.d	$sp, $sp, -528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ld.w	$a2, $s1, 72
	ori	$a1, $a1, 1528
	ldx.d	$s6, $a0, $a1
	ld.w	$s3, $s1, 4
	slli.d	$a0, $a2, 2
	bstrpick.d	$a1, $s0, 31, 31
	add.w	$a1, $s0, $a1
	slli.d	$s5, $a1, 2
	ld.w	$a2, $s1, 68
	bstrins.d	$a1, $zero, 0, 0
	ldptr.d	$a3, $s1, 5544
	sub.w	$s7, $s0, $a1
	alsl.w	$a1, $a2, $a1, 2
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	alsl.w	$a0, $s7, $a0, 1
	slli.w	$s2, $s7, 3
	move	$fp, $s5
	bstrins.d	$fp, $zero, 2, 0
	ldx.bu	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(getNeighbour)
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.w	$a2, $fp, 0
	addi.d	$a0, $zero, -1
	alsl.w	$s4, $s7, $a0, 3
	addi.d	$a4, $sp, 192
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 1
	move	$a1, $s5
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 216
	addi.w	$a2, $a1, 0
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 2
	move	$a1, $s5
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 240
	addi.w	$a2, $a1, 0
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 3
	move	$a1, $s5
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 264
	addi.w	$a2, $a1, 0
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 4
	move	$a1, $s5
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 288
	addi.w	$a2, $a1, 0
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 5
	move	$a1, $s5
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 312
	addi.w	$a2, $a1, 0
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 6
	move	$a1, $s5
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 336
	addi.w	$a2, $a1, 0
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 7
	bstrins.d	$s5, $a0, 2, 0
	addi.d	$a4, $sp, 360
	addi.w	$a2, $s5, 0
	move	$a0, $s3
	move	$a1, $s4
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.w	$s5, $fp, -1
	move	$fp, $s2
	addi.d	$a4, $sp, 168
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 8
	alsl.w	$a1, $s7, $a0, 3
	addi.d	$a4, $sp, 144
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 120
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 144
	beqz	$a0, .LBB0_2
# %bb.1:
	addi.d	$a0, $s7, -1
	sltu	$a0, $zero, $a0
	bstrins.d	$s0, $zero, 0, 0
	addi.d	$a1, $s0, -2
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	move	$a0, $zero
.LBB0_3:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	st.w	$a0, $sp, 144
	beqz	$a1, .LBB0_9
# %bb.4:                                # %.preheader1380
	ld.w	$a1, $sp, 192
	beqz	$a1, .LBB0_10
# %bb.5:
	ld.w	$a1, $sp, 196
	ld.d	$a2, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $a2, $a1
	andi	$a1, $a1, 1
	ld.w	$a2, $sp, 216
	beqz	$a2, .LBB0_11
.LBB0_6:
	ld.w	$a2, $sp, 220
	ld.d	$a3, $s1, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a3, $a2
	ld.w	$a2, $sp, 240
	beqz	$a2, .LBB0_12
.LBB0_7:
	ld.w	$a2, $sp, 244
	ld.d	$a3, $s1, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	ld.w	$a2, $sp, 264
	beqz	$a2, .LBB0_13
.LBB0_8:
	ld.w	$a2, $sp, 268
	ld.d	$a5, $s1, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a5, $a2
	b	.LBB0_14
.LBB0_9:
	ld.w	$s4, $sp, 192
	ld.w	$s3, $sp, 168
	ld.w	$s0, $sp, 120
	bnez	$s3, .LBB0_33
	b	.LBB0_38
.LBB0_10:
	move	$a1, $zero
	ld.w	$a2, $sp, 216
	bnez	$a2, .LBB0_6
.LBB0_11:
	move	$a4, $zero
	ld.w	$a2, $sp, 240
	bnez	$a2, .LBB0_7
.LBB0_12:
	move	$a3, $zero
	ld.w	$a2, $sp, 264
	bnez	$a2, .LBB0_8
.LBB0_13:
	move	$a2, $zero
.LBB0_14:
	ld.w	$a5, $sp, 288
	and	$a4, $a4, $a1
	beqz	$a5, .LBB0_16
# %bb.15:
	ld.w	$a1, $sp, 292
	ld.d	$a5, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a5, $a1
	b	.LBB0_17
.LBB0_16:
	move	$a1, $zero
.LBB0_17:
	ld.w	$a5, $sp, 312
	and	$a4, $a3, $a4
	beqz	$a5, .LBB0_19
# %bb.18:
	ld.w	$a3, $sp, 316
	ld.d	$a5, $s1, 16
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a5, $a3
	b	.LBB0_20
.LBB0_19:
	move	$a3, $zero
.LBB0_20:
	ld.w	$a5, $sp, 336
	and	$a4, $a2, $a4
	beqz	$a5, .LBB0_22
# %bb.21:
	ld.w	$a2, $sp, 340
	ld.d	$a5, $s1, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a5, $a2
	b	.LBB0_23
.LBB0_22:
	move	$a2, $zero
.LBB0_23:
	ld.w	$a5, $sp, 360
	and	$a4, $a1, $a4
	beqz	$a5, .LBB0_25
# %bb.24:
	ld.w	$a1, $sp, 364
	ld.d	$a5, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a5, $a1
	b	.LBB0_26
.LBB0_25:
	move	$a1, $zero
.LBB0_26:
	ld.w	$a5, $sp, 168
	and	$a3, $a3, $a4
	beqz	$a5, .LBB0_29
# %bb.27:
	ld.w	$a4, $sp, 172
	ld.d	$a5, $s1, 16
	slli.d	$a4, $a4, 2
	ldx.w	$s3, $a5, $a4
	and	$a2, $a2, $a3
	beqz	$a0, .LBB0_30
.LBB0_28:
	ld.w	$a0, $sp, 148
	ld.d	$a3, $s1, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	b	.LBB0_31
.LBB0_29:
	move	$s3, $zero
	and	$a2, $a2, $a3
	bnez	$a0, .LBB0_28
.LBB0_30:
	move	$a0, $zero
.LBB0_31:
	ld.w	$a3, $sp, 120
	and	$s4, $a1, $a2
	beqz	$a3, .LBB0_37
# %bb.32:
	ld.w	$a1, $sp, 124
	ld.d	$a2, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$s0, $a2, $a1
	beqz	$s3, .LBB0_38
.LBB0_33:
	ld.w	$a1, $sp, 188
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 184
	ldx.d	$a1, $s6, $a1
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $a1, $a3
	alsl.d	$a1, $a2, $a1, 1
	st.h	$a3, $sp, 386
	ld.h	$a2, $a1, 2
	st.h	$a2, $sp, 388
	ld.h	$a2, $a1, 4
	st.h	$a2, $sp, 390
	ld.h	$a2, $a1, 6
	st.h	$a2, $sp, 392
	ld.h	$a2, $a1, 8
	st.h	$a2, $sp, 394
	ld.h	$a2, $a1, 10
	st.h	$a2, $sp, 396
	ld.h	$a2, $a1, 12
	st.h	$a2, $sp, 398
	ld.hu	$a1, $a1, 14
	st.h	$a1, $sp, 400
	beqz	$a0, .LBB0_39
.LBB0_34:
	ld.w	$a0, $sp, 164
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 160
	ldx.d	$a0, $s6, $a0
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.h	$a2, $sp, 402
	ld.h	$a1, $a0, 2
	st.h	$a1, $sp, 404
	ld.h	$a1, $a0, 4
	st.h	$a1, $sp, 406
	ld.h	$a1, $a0, 6
	st.h	$a1, $sp, 408
	ld.h	$a1, $a0, 8
	st.h	$a1, $sp, 410
	ld.h	$a1, $a0, 10
	st.h	$a1, $sp, 412
	ld.h	$a1, $a0, 12
	st.h	$a1, $sp, 414
	ld.hu	$a1, $a0, 14
	addi.d	$a0, $sp, 416
	st.h	$a1, $a0, 0
	beqz	$s4, .LBB0_40
.LBB0_35:
	ld.w	$a0, $sp, 212
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 208
	ldx.d	$a0, $s6, $a0
	ld.w	$a2, $sp, 236
	slli.d	$a1, $a1, 1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 232
	ldx.d	$a1, $s6, $a1
	ld.w	$a3, $sp, 260
	st.h	$a0, $sp, 418
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 256
	ldx.d	$a1, $s6, $a1
	ld.w	$a3, $sp, 284
	st.h	$a0, $sp, 420
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 280
	ldx.d	$a1, $s6, $a1
	ld.w	$a3, $sp, 308
	st.h	$a0, $sp, 422
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 304
	ldx.d	$a1, $s6, $a1
	ld.w	$a3, $sp, 332
	st.h	$a0, $sp, 424
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 328
	ldx.d	$a1, $s6, $a1
	ld.w	$a3, $sp, 356
	st.h	$a0, $sp, 426
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 352
	ldx.d	$a1, $s6, $a1
	ld.w	$a3, $sp, 380
	st.h	$a0, $sp, 428
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 376
	ldx.d	$a1, $s6, $a1
	st.h	$a0, $sp, 430
	slli.d	$a0, $a2, 1
	ldx.hu	$a0, $a1, $a0
	st.h	$a0, $sp, 432
	beqz	$s0, .LBB0_41
.LBB0_36:
	ld.w	$a0, $sp, 140
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 136
	ldx.d	$a0, $s6, $a0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	b	.LBB0_42
.LBB0_37:
	move	$s0, $zero
	bnez	$s3, .LBB0_33
.LBB0_38:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1796
	ldx.h	$a1, $s1, $a1
	st.h	$a1, $sp, 398
	st.h	$a1, $sp, 396
	st.h	$a1, $sp, 394
	st.h	$a1, $sp, 392
	st.h	$a1, $sp, 390
	st.h	$a1, $sp, 388
	st.h	$a1, $sp, 386
	st.h	$a1, $sp, 400
	bnez	$a0, .LBB0_34
.LBB0_39:
	addi.d	$a0, $sp, 402
	st.h	$a1, $sp, 416
	st.h	$a1, $sp, 414
	st.h	$a1, $sp, 412
	st.h	$a1, $sp, 410
	st.h	$a1, $sp, 408
	st.h	$a1, $sp, 406
	st.h	$a1, $sp, 404
	st.h	$a1, $a0, 0
	bnez	$s4, .LBB0_35
.LBB0_40:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.h	$a0, $s1, $a0
	st.h	$a0, $sp, 430
	st.h	$a0, $sp, 428
	st.h	$a0, $sp, 426
	st.h	$a0, $sp, 424
	st.h	$a0, $sp, 422
	st.h	$a0, $sp, 420
	st.h	$a0, $sp, 418
	st.h	$a0, $sp, 432
	bnez	$s0, .LBB0_36
.LBB0_41:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.h	$a0, $s1, $a0
.LBB0_42:
	st.h	$a0, $sp, 384
	addi.d	$a0, $sp, 384
	move	$a1, $s0
	move	$a2, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(LowPassForIntra8x8Pred)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_77
# %bb.43:
	addi.w	$ra, $fp, 1
	addi.w	$s5, $fp, 2
	addi.w	$s6, $fp, 3
	addi.w	$s7, $fp, 4
	addi.w	$s8, $fp, 5
	addi.w	$t8, $fp, 6
	addi.w	$s2, $fp, 7
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_44:
	bnez	$s3, .LBB0_46
# %bb.45:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_46:                               # %.loopexit.loopexit1388
	move	$s4, $zero
	addi.d	$a1, $s1, 104
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a2, $a0, 5
	add.d	$a2, $a1, $a2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a3, $a0, 5
	add.d	$a3, $a1, $a3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a4, $a0, 5
	add.d	$a4, $a1, $a4
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a5, $a0, 5
	add.d	$a5, $a1, $a5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a6, $a0, 5
	add.d	$a6, $a1, $a6
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a7, $a0, 5
	add.d	$a7, $a1, $a7
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t0, $a0, 5
	add.d	$t0, $a1, $t0
	vld	$vr0, $sp, 386
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slli.d	$t1, $a0, 5
	add.d	$a1, $a1, $t1
	slli.d	$t1, $fp, 1
	vstx	$vr0, $a2, $t1
	vstx	$vr0, $a3, $t1
	vstx	$vr0, $a4, $t1
	vstx	$vr0, $a5, $t1
	vstx	$vr0, $a6, $t1
	vstx	$vr0, $a7, $t1
	vstx	$vr0, $t0, $t1
	vstx	$vr0, $a1, $t1
	b	.LBB0_87
.LBB0_47:
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB0_50
# %bb.48:
	beqz	$s4, .LBB0_50
# %bb.49:
	bnez	$s3, .LBB0_51
.LBB0_50:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$s0, $ra
	move	$s2, $t8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t8, $s2
	move	$ra, $s0
.LBB0_51:
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a1, $sp, 428
	ld.hu	$a3, $sp, 432
	ld.hu	$a2, $sp, 430
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	addi.d	$a4, $a1, 2
	add.d	$a3, $a4, $a3
	alsl.d	$a3, $a2, $a3, 1
	srli.d	$a5, $a3, 2
	addi.d	$t4, $s1, 104
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a3, $a0, 5
	ld.hu	$a6, $sp, 426
	add.d	$t0, $t4, $a3
	slli.d	$t1, $fp, 1
	stx.h	$a5, $t0, $t1
	addi.d	$a5, $a6, 2
	add.d	$a2, $a5, $a2
	alsl.d	$a1, $a1, $a2, 1
	srli.d	$a1, $a1, 2
	slli.d	$s6, $ra, 1
	stx.h	$a1, $t0, $s6
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a7, $a0, 5
	ld.hu	$t5, $sp, 424
	add.d	$t3, $t4, $a7
	stx.h	$a1, $t3, $t1
	alsl.d	$a1, $a6, $a4, 1
	add.d	$a1, $a1, $t5
	srli.d	$a1, $a1, 2
	slli.d	$t7, $s5, 1
	stx.h	$a1, $t0, $t7
	stx.h	$a1, $t3, $s6
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a4, $a0, 5
	ld.hu	$a6, $sp, 422
	add.d	$t2, $t4, $a4
	stx.h	$a1, $t2, $t1
	alsl.d	$a1, $t5, $a5, 1
	add.d	$a1, $a1, $a6
	srli.d	$a4, $a1, 2
	move	$s7, $s5
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	slli.d	$s0, $s5, 1
	stx.h	$a4, $t0, $s0
	stx.h	$a4, $t3, $t7
	stx.h	$a4, $t2, $s6
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	ld.hu	$a7, $sp, 420
	add.d	$ra, $t4, $a1
	stx.h	$a4, $ra, $t1
	alsl.d	$a4, $a6, $t5, 1
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 2
	srli.d	$a5, $a4, 2
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	slli.d	$s4, $s8, 1
	stx.h	$a5, $t0, $s4
	stx.h	$a5, $t3, $s0
	stx.h	$a5, $t2, $t7
	stx.h	$a5, $ra, $s6
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a4, $a0, 5
	ld.hu	$t5, $sp, 418
	add.d	$a4, $t4, $a4
	stx.h	$a5, $a4, $t1
	alsl.d	$a5, $a7, $a6, 1
	add.d	$fp, $a5, $t5
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	slli.d	$s1, $a3, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a5, $a0, 5
	add.d	$a5, $t4, $a5
	alsl.d	$t6, $t5, $a7, 1
	slli.d	$s2, $t8, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a6, $a0, 5
	add.d	$a6, $t4, $a6
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $t0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $t8
	slli.d	$t8, $a0, 5
	add.d	$t8, $t4, $t8
	ld.hu	$s3, $sp, 384
	vinsgr2vr.h	$vr0, $t5, 0
	pcalau12i	$t4, %pc_hi20(.LCPI0_0)
	vld	$vr1, $t4, %pc_lo12(.LCPI0_0)
	pcalau12i	$t4, %pc_hi20(.LCPI0_1)
	vld	$vr2, $t4, %pc_lo12(.LCPI0_1)
	alsl.d	$a0, $a2, $t3, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vinsgr2vr.h	$vr0, $s3, 1
	add.d	$t6, $t6, $s3
	alsl.d	$a0, $a3, $t2, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$t6, $t6, 2
	srli.d	$s3, $t6, 2
	stx.h	$s3, $t0, $s2
	alsl.d	$t6, $s8, $ra, 1
	addi.d	$fp, $fp, 2
	srli.d	$s2, $fp, 2
	stx.h	$s2, $t0, $s1
	alsl.d	$t5, $s5, $a4, 1
	stx.h	$s3, $t3, $s1
	alsl.d	$fp, $s7, $a5, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$t4, $a0, $a6, 1
	stx.h	$s2, $t3, $s4
	alsl.d	$t3, $a1, $t3, 1
	stx.h	$s2, $t2, $s0
	stx.h	$s2, $ra, $t7
	stx.h	$s2, $a4, $s6
	stx.h	$s2, $a5, $t1
	alsl.d	$s2, $a2, $t2, 1
	stx.h	$s3, $t2, $s4
	alsl.d	$s1, $a3, $ra, 1
	stx.h	$s3, $ra, $s0
	alsl.d	$s0, $s8, $a4, 1
	stx.h	$s3, $a4, $t7
	alsl.d	$t7, $s5, $a5, 1
	alsl.d	$s4, $s7, $a6, 1
	alsl.d	$t2, $a1, $t2, 1
	stx.h	$s3, $a5, $s6
	alsl.d	$t0, $a2, $ra, 1
	vld	$vr3, $sp, 384
	stx.h	$s3, $a6, $t1
	alsl.d	$s3, $a3, $a4, 1
	vld	$vr4, $sp, 386
	vshuf.h	$vr1, $vr3, $vr0
	vrepli.b	$vr0, 0
	vshuf.h	$vr2, $vr0, $vr3
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.h	$vr5, $vr0, $vr3
	vilvh.h	$vr3, $vr0, $vr3
	vilvl.h	$vr6, $vr0, $vr4
	vilvh.h	$vr0, $vr0, $vr4
	vslli.w	$vr3, $vr3, 1
	vslli.w	$vr4, $vr5, 1
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr2, $vr2, $vr3
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr1, $vr6
	vaddi.wu	$vr1, $vr1, 2
	vaddi.wu	$vr0, $vr0, 2
	vsrli.w	$vr0, $vr0, 2
	vsrli.w	$vr1, $vr1, 2
	vpickev.h	$vr2, $vr0, $vr1
	vstx	$vr2, $t8, $t1
	alsl.d	$t1, $s8, $a5, 1
	alsl.d	$t8, $s5, $a6, 1
	alsl.d	$a7, $a1, $ra, 1
	alsl.d	$s5, $a2, $a4, 1
	alsl.d	$s6, $s8, $a6, 1
	alsl.d	$a4, $a1, $a4, 1
	alsl.d	$s7, $a3, $a5, 1
	alsl.d	$ra, $a3, $a6, 1
	alsl.d	$s8, $a2, $a5, 1
	alsl.d	$a5, $a1, $a5, 1
	alsl.d	$a0, $a2, $a6, 1
	alsl.d	$a6, $a1, $a6, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	vstelm.h	$vr1, $a1, 0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	vstelm.h	$vr1, $a1, 0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	vstelm.h	$vr1, $a1, 0, 0
	vstelm.h	$vr1, $t6, 0, 0
	vstelm.h	$vr1, $t5, 0, 0
	vstelm.h	$vr1, $fp, 0, 0
	vstelm.h	$vr1, $t4, 0, 0
	vstelm.h	$vr1, $t3, 0, 2
	vstelm.h	$vr1, $s2, 0, 2
	vstelm.h	$vr1, $s1, 0, 2
	vstelm.h	$vr1, $s0, 0, 2
	vstelm.h	$vr1, $t7, 0, 2
	vstelm.h	$vr1, $s4, 0, 2
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	vstelm.h	$vr1, $t2, 0, 4
	vstelm.h	$vr1, $t0, 0, 4
	vstelm.h	$vr1, $s3, 0, 4
	vstelm.h	$vr1, $t1, 0, 4
	vstelm.h	$vr1, $t8, 0, 4
	vstelm.h	$vr1, $a7, 0, 6
	vstelm.h	$vr1, $s5, 0, 6
	vstelm.h	$vr1, $s7, 0, 6
	vstelm.h	$vr1, $s6, 0, 6
	vstelm.h	$vr0, $a4, 0, 0
	vstelm.h	$vr0, $s8, 0, 0
	vstelm.h	$vr0, $ra, 0, 0
	vstelm.h	$vr0, $a5, 0, 2
	vstelm.h	$vr0, $a0, 0, 2
	vstelm.h	$vr0, $a6, 0, 4
	b	.LBB0_87
.LBB0_52:
	beqz	$s4, .LBB0_78
# %bb.53:
	beqz	$s3, .LBB0_78
# %bb.54:
	ld.hu	$a0, $sp, 386
	ld.hu	$a1, $sp, 388
	ld.hu	$a2, $sp, 390
	ld.hu	$a3, $sp, 392
	ld.hu	$a4, $sp, 394
	ld.hu	$a5, $sp, 396
	ld.hu	$a6, $sp, 398
	ld.hu	$a7, $sp, 400
	ld.hu	$t0, $sp, 418
	ld.hu	$t1, $sp, 420
	ld.hu	$t2, $sp, 422
	ld.hu	$t3, $sp, 424
	ld.hu	$t4, $sp, 426
	ld.hu	$t5, $sp, 428
	ld.hu	$t6, $sp, 430
	ld.hu	$t7, $sp, 432
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	add.d	$a0, $a0, $t0
	add.d	$a0, $a0, $t1
	add.d	$a0, $a0, $t2
	add.w	$a0, $a0, $t3
	add.d	$a0, $a0, $t4
	add.d	$a0, $a0, $t5
	add.d	$a0, $a0, $t6
	add.d	$a0, $a0, $t7
	addi.d	$a0, $a0, 8
	bstrpick.d	$a1, $a0, 31, 4
	b	.LBB0_86
.LBB0_55:
	bnez	$s3, .LBB0_57
# %bb.56:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$s0, $ra
	move	$s3, $t8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t8, $s3
	move	$ra, $s0
.LBB0_57:
	move	$s4, $zero
	ld.hu	$a2, $sp, 386
	ld.hu	$a3, $sp, 388
	addi.d	$a7, $s1, 104
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	add.d	$a4, $a7, $a1
	slli.d	$t3, $fp, 1
	slli.d	$a6, $ra, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	add.d	$a5, $a7, $a1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	add.d	$t4, $a7, $a1
	slli.d	$t2, $s6, 1
	vld	$vr0, $sp, 390
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	add.d	$a1, $a7, $a1
	vrepli.b	$vr1, 0
	vilvl.h	$vr2, $vr1, $vr0
	vaddi.wu	$vr2, $vr2, 2
	vpickve2gr.w	$t0, $vr2, 0
	add.d	$a2, $t0, $a2
	ld.hu	$t0, $sp, 390
	alsl.d	$a2, $a3, $a2, 1
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a4, $t3
	vpickve2gr.w	$a2, $vr2, 1
	add.d	$a3, $a2, $a3
	slli.d	$t5, $s7, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a2, $a0, 5
	add.d	$a2, $a7, $a2
	alsl.d	$t0, $t0, $a3, 1
	slli.d	$t6, $s8, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a3, $a0, 5
	add.d	$a3, $a7, $a3
	bstrpick.d	$t0, $t0, 18, 2
	stx.h	$t0, $a4, $a6
	slli.d	$t1, $t8, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a6, $a0, 5
	add.d	$a6, $a7, $a6
	stx.h	$t0, $a5, $t3
	slli.d	$t0, $s2, 1
	vld	$vr3, $sp, 392
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$t7, $a0, 5
	vld	$vr4, $sp, 394
	vilvh.h	$vr0, $vr1, $vr0
	vilvl.h	$vr5, $vr1, $vr3
	vilvh.h	$vr3, $vr1, $vr3
	vilvl.h	$vr6, $vr1, $vr4
	vilvh.h	$vr4, $vr1, $vr4
	vslli.w	$vr1, $vr3, 1
	vadd.w	$vr0, $vr0, $vr1
	vslli.w	$vr1, $vr5, 1
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr0, $vr4
	vaddi.wu	$vr0, $vr0, 2
	vadd.w	$vr1, $vr1, $vr6
	vsrli.w	$vr1, $vr1, 2
	vsrli.w	$vr0, $vr0, 2
	vpickev.h	$vr2, $vr0, $vr1
	vstx	$vr2, $t4, $t3
	ld.hu	$t3, $sp, 406
	ld.hu	$t4, $sp, 410
	add.d	$a7, $a7, $t7
	vpickve2gr.w	$t7, $vr4, 3
	alsl.d	$t3, $t7, $t3, 1
	add.d	$t3, $t3, $t4
	addi.d	$t3, $t3, 2
	bstrpick.d	$t3, $t3, 19, 2
	stx.h	$t3, $a1, $t0
	stx.h	$t3, $a2, $t1
	stx.h	$t3, $a7, $t2
	ld.hu	$t2, $sp, 412
	stx.h	$t3, $a3, $t6
	stx.h	$t3, $a6, $t5
	alsl.d	$t3, $t4, $t7, 1
	add.d	$t3, $t3, $t2
	addi.d	$t3, $t3, 2
	bstrpick.d	$t3, $t3, 19, 2
	stx.h	$t3, $a2, $t0
	stx.h	$t3, $a7, $t5
	ld.hu	$t5, $sp, 414
	stx.h	$t3, $a3, $t1
	stx.h	$t3, $a6, $t6
	alsl.d	$t3, $t2, $t4, 1
	add.d	$t3, $t3, $t5
	addi.d	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stx.h	$t3, $a7, $t6
	ld.hu	$t4, $sp, 416
	stx.h	$t3, $a3, $t0
	stx.h	$t3, $a6, $t1
	alsl.d	$t2, $t5, $t2, 1
	add.d	$t2, $t2, $t4
	addi.d	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	stx.h	$t2, $a7, $t1
	stx.h	$t2, $a6, $t0
	alsl.d	$t1, $t4, $t4, 1
	add.d	$t1, $t5, $t1
	addi.d	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stx.h	$t1, $a7, $t0
	alsl.d	$t0, $s5, $a4, 1
	vstelm.h	$vr1, $t0, 0, 0
	alsl.d	$t0, $ra, $a5, 1
	vstelm.h	$vr1, $t0, 0, 0
	alsl.d	$t0, $s6, $a4, 1
	vstelm.h	$vr1, $t0, 0, 2
	alsl.d	$t0, $s5, $a5, 1
	vstelm.h	$vr1, $t0, 0, 2
	alsl.d	$t0, $fp, $a1, 1
	vstelm.h	$vr1, $t0, 0, 2
	alsl.d	$t0, $s7, $a4, 1
	vstelm.h	$vr1, $t0, 0, 4
	alsl.d	$t0, $s6, $a5, 1
	vstelm.h	$vr1, $t0, 0, 4
	alsl.d	$t0, $ra, $a1, 1
	vstelm.h	$vr1, $t0, 0, 4
	alsl.d	$t0, $fp, $a2, 1
	vstelm.h	$vr1, $t0, 0, 4
	alsl.d	$t0, $s8, $a4, 1
	vstelm.h	$vr1, $t0, 0, 6
	alsl.d	$t0, $s7, $a5, 1
	vstelm.h	$vr1, $t0, 0, 6
	alsl.d	$t0, $s5, $a1, 1
	vstelm.h	$vr1, $t0, 0, 6
	alsl.d	$t0, $ra, $a2, 1
	vstelm.h	$vr1, $t0, 0, 6
	alsl.d	$t0, $fp, $a3, 1
	vstelm.h	$vr1, $t0, 0, 6
	alsl.d	$t0, $t8, $a4, 1
	vstelm.h	$vr0, $t0, 0, 0
	alsl.d	$t0, $s8, $a5, 1
	vstelm.h	$vr0, $t0, 0, 0
	alsl.d	$t0, $s6, $a1, 1
	vstelm.h	$vr0, $t0, 0, 0
	alsl.d	$t0, $s5, $a2, 1
	vstelm.h	$vr0, $t0, 0, 0
	alsl.d	$t0, $ra, $a3, 1
	vstelm.h	$vr0, $t0, 0, 0
	alsl.d	$t0, $fp, $a6, 1
	vstelm.h	$vr0, $t0, 0, 0
	alsl.d	$a4, $s2, $a4, 1
	vstelm.h	$vr0, $a4, 0, 2
	alsl.d	$a4, $s2, $a5, 1
	alsl.d	$a5, $t8, $a5, 1
	vstelm.h	$vr0, $a5, 0, 2
	alsl.d	$a5, $s7, $a1, 1
	vstelm.h	$vr0, $a5, 0, 2
	alsl.d	$a5, $s6, $a2, 1
	vstelm.h	$vr0, $a5, 0, 2
	alsl.d	$a5, $s5, $a3, 1
	vstelm.h	$vr0, $a5, 0, 2
	alsl.d	$a5, $ra, $a6, 1
	vstelm.h	$vr0, $a5, 0, 2
	alsl.d	$a5, $fp, $a7, 1
	vstelm.h	$vr0, $a5, 0, 2
	vstelm.h	$vr0, $a4, 0, 4
	alsl.d	$a4, $s8, $a1, 1
	vstelm.h	$vr0, $a4, 0, 4
	alsl.d	$a4, $s7, $a2, 1
	vstelm.h	$vr0, $a4, 0, 4
	alsl.d	$a4, $s6, $a3, 1
	vstelm.h	$vr0, $a4, 0, 4
	alsl.d	$a4, $s5, $a6, 1
	vstelm.h	$vr0, $a4, 0, 4
	alsl.d	$a4, $ra, $a7, 1
	vstelm.h	$vr0, $a4, 0, 4
	alsl.d	$a1, $t8, $a1, 1
	vstelm.h	$vr0, $a1, 0, 6
	alsl.d	$a1, $s8, $a2, 1
	vstelm.h	$vr0, $a1, 0, 6
	alsl.d	$a1, $s7, $a3, 1
	vstelm.h	$vr0, $a1, 0, 6
	alsl.d	$a1, $s6, $a6, 1
	vstelm.h	$vr0, $a1, 0, 6
	alsl.d	$a1, $s5, $a7, 1
	vstelm.h	$vr0, $a1, 0, 6
	b	.LBB0_87
.LBB0_58:
	bnez	$s3, .LBB0_60
# %bb.59:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$s0, $ra
	move	$s3, $t8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t8, $s3
	move	$ra, $s0
.LBB0_60:
	move	$s4, $zero
	ld.hu	$a2, $sp, 386
	addi.d	$a7, $s1, 104
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	add.d	$a1, $a7, $a1
	slli.d	$t0, $fp, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a3, $a0, 5
	vld	$vr3, $sp, 388
	add.d	$a3, $a7, $a3
	vld	$vr1, $sp, 390
	vrepli.b	$vr2, 0
	vilvl.h	$vr4, $vr2, $vr3
	vpickve2gr.w	$a4, $vr4, 0
	bstrpick.d	$a5, $a4, 15, 0
	or	$a6, $a5, $a2
	xor	$a5, $a5, $a2
	srli.d	$a5, $a5, 1
	sub.d	$a5, $a6, $a5
	stx.h	$a5, $a1, $t0
	vor.v	$vr0, $vr3, $vr1
	vxor.v	$vr5, $vr3, $vr1
	vsrli.h	$vr5, $vr5, 1
	vsub.h	$vr0, $vr0, $vr5
	vstx	$vr0, $a3, $t0
	vpickve2gr.w	$a3, $vr4, 1
	addi.d	$a6, $a3, 2
	add.d	$a2, $a6, $a2
	alsl.d	$a2, $a4, $a2, 1
	srli.d	$a2, $a2, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a5, $a0, 5
	add.d	$a5, $a7, $a5
	stx.h	$a2, $a5, $t0
	vpickve2gr.w	$a2, $vr4, 2
	addi.d	$t1, $a2, 2
	add.d	$a4, $t1, $a4
	alsl.d	$a3, $a3, $a4, 1
	slli.d	$t2, $ra, 1
	bstrpick.d	$a3, $a3, 18, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a4, $a0, 5
	add.d	$a4, $a7, $a4
	stx.h	$a3, $a4, $t0
	stx.h	$a3, $a5, $t2
	slli.d	$t3, $s5, 1
	alsl.d	$a2, $a2, $a6, 1
	vpickve2gr.w	$t4, $vr4, 3
	add.d	$a2, $a2, $t4
	bstrpick.d	$a2, $a2, 18, 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a3, $a0, 5
	add.d	$a6, $a7, $a3
	stx.h	$a2, $a6, $t0
	stx.h	$a2, $a4, $t2
	stx.h	$a2, $a5, $t3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a2, $a0, 5
	add.d	$a2, $a7, $a2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a3, $a0, 5
	add.d	$a3, $a7, $a3
	vilvh.h	$vr3, $vr2, $vr3
	alsl.d	$t1, $t4, $t1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$t5, $a0, 5
	add.d	$a7, $a7, $t5
	vpickve2gr.w	$t5, $vr3, 0
	add.d	$t1, $t1, $t5
	bstrpick.d	$t1, $t1, 18, 2
	stx.h	$t1, $a7, $t0
	slli.d	$t0, $s6, 1
	stx.h	$t1, $a6, $t2
	stx.h	$t1, $a4, $t3
	stx.h	$t1, $a5, $t0
	alsl.d	$t1, $t5, $t4, 1
	vpickve2gr.w	$t4, $vr3, 1
	add.d	$t1, $t1, $t4
	addi.d	$t1, $t1, 2
	bstrpick.d	$t1, $t1, 19, 2
	stx.h	$t1, $a7, $t2
	slli.d	$t2, $s7, 1
	stx.h	$t1, $a6, $t3
	stx.h	$t1, $a4, $t0
	stx.h	$t1, $a5, $t2
	alsl.d	$t1, $t4, $t5, 1
	vpickve2gr.w	$t5, $vr3, 2
	add.d	$t1, $t1, $t5
	addi.d	$t1, $t1, 2
	bstrpick.d	$t1, $t1, 19, 2
	stx.h	$t1, $a7, $t3
	slli.d	$t3, $s8, 1
	stx.h	$t1, $a6, $t0
	stx.h	$t1, $a4, $t2
	stx.h	$t1, $a5, $t3
	alsl.d	$t1, $t5, $t4, 1
	vpickve2gr.w	$t4, $vr3, 3
	add.d	$t1, $t1, $t4
	addi.d	$t1, $t1, 2
	bstrpick.d	$t1, $t1, 19, 2
	stx.h	$t1, $a7, $t0
	slli.d	$t0, $t8, 1
	vreplvei.h	$vr1, $vr1, 7
	vilvl.h	$vr1, $vr2, $vr1
	stx.h	$t1, $a6, $t2
	stx.h	$t1, $a4, $t3
	stx.h	$t1, $a5, $t0
	vpickve2gr.w	$t1, $vr1, 3
	alsl.d	$t5, $t4, $t5, 1
	add.d	$t5, $t5, $t1
	addi.d	$t5, $t5, 2
	bstrpick.d	$t5, $t5, 19, 2
	stx.h	$t5, $a7, $t2
	slli.d	$t2, $s2, 1
	stx.h	$t5, $a5, $t2
	ld.hu	$a5, $sp, 406
	stx.h	$t5, $a6, $t3
	stx.h	$t5, $a4, $t0
	alsl.d	$t5, $ra, $a1, 1
	alsl.d	$t4, $t1, $t4, 1
	add.d	$t4, $t4, $a5
	addi.d	$t4, $t4, 2
	bstrpick.d	$t4, $t4, 19, 2
	stx.h	$t4, $a7, $t3
	ld.hu	$t3, $sp, 408
	stx.h	$t4, $a6, $t0
	stx.h	$t4, $a4, $t2
	alsl.d	$a4, $a5, $t1, 1
	add.d	$a4, $a4, $t3
	addi.d	$a4, $a4, 2
	bstrpick.d	$a4, $a4, 19, 2
	stx.h	$a4, $a6, $t2
	ld.hu	$a6, $sp, 410
	alsl.d	$t4, $fp, $a2, 1
	stx.h	$a4, $a7, $t0
	alsl.d	$a4, $t3, $a5, 1
	add.d	$a4, $a4, $a6
	alsl.d	$a6, $s5, $a1, 1
	alsl.d	$t6, $fp, $a3, 1
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stx.h	$a4, $a7, $t2
	alsl.d	$a4, $ra, $a2, 1
	bstrpick.d	$a7, $t1, 15, 0
	or	$t1, $a7, $a5
	xor	$a7, $a7, $a5
	srli.d	$a7, $a7, 1
	sub.d	$a7, $t1, $a7
	alsl.d	$t1, $s6, $a1, 1
	alsl.d	$t7, $ra, $a3, 1
	stx.h	$a7, $a3, $t0
	alsl.d	$t0, $s5, $a2, 1
	stx.h	$a7, $a2, $t2
	alsl.d	$a7, $s7, $a1, 1
	move	$a0, $t8
	alsl.d	$t8, $s5, $a3, 1
	add.d	$a5, $a5, $t3
	alsl.d	$t3, $s6, $a2, 1
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a3, $t2
	alsl.d	$a5, $s8, $a1, 1
	alsl.d	$t2, $s6, $a3, 1
	alsl.d	$fp, $s7, $a2, 1
	alsl.d	$s0, $s2, $a1, 1
	alsl.d	$a1, $a0, $a1, 1
	alsl.d	$s1, $s7, $a3, 1
	alsl.d	$a3, $s8, $a3, 1
	alsl.d	$s2, $s8, $a2, 1
	alsl.d	$a2, $a0, $a2, 1
	vstelm.h	$vr0, $t5, 0, 0
	vstelm.h	$vr0, $t4, 0, 1
	vstelm.h	$vr0, $a6, 0, 1
	vstelm.h	$vr0, $t6, 0, 2
	vstelm.h	$vr0, $a4, 0, 2
	vstelm.h	$vr0, $t1, 0, 2
	vstelm.h	$vr0, $t7, 0, 3
	vstelm.h	$vr0, $t0, 0, 3
	vstelm.h	$vr0, $a7, 0, 3
	vstelm.h	$vr0, $t8, 0, 4
	vstelm.h	$vr0, $t3, 0, 4
	vstelm.h	$vr0, $a5, 0, 4
	vstelm.h	$vr0, $t2, 0, 5
	vstelm.h	$vr0, $fp, 0, 5
	vstelm.h	$vr0, $a1, 0, 5
	vstelm.h	$vr0, $s1, 0, 6
	vstelm.h	$vr0, $s2, 0, 6
	vstelm.h	$vr0, $s0, 0, 6
	vstelm.h	$vr0, $a3, 0, 7
	vstelm.h	$vr0, $a2, 0, 7
	b	.LBB0_87
.LBB0_61:
	bnez	$s4, .LBB0_63
# %bb.62:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %.loopexit.loopexit1389
	move	$s4, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	vld	$vr0, $sp, 418
	add.d	$a1, $s1, $a1
	alsl.d	$a1, $fp, $a1, 1
	ld.h	$a2, $sp, 420
	vreplvei.h	$vr0, $vr0, 0
	vst	$vr0, $a1, 104
	ld.h	$a3, $sp, 422
	vreplgr2vr.h	$vr0, $a2
	vst	$vr0, $a1, 136
	ld.h	$a2, $sp, 424
	vreplgr2vr.h	$vr0, $a3
	vst	$vr0, $a1, 168
	ld.h	$a3, $sp, 426
	vreplgr2vr.h	$vr0, $a2
	vst	$vr0, $a1, 200
	ld.h	$a2, $sp, 428
	vreplgr2vr.h	$vr0, $a3
	vst	$vr0, $a1, 232
	ld.h	$a3, $sp, 430
	vreplgr2vr.h	$vr0, $a2
	ld.h	$a2, $sp, 432
	vst	$vr0, $a1, 264
	vreplgr2vr.h	$vr0, $a3
	vst	$vr0, $a1, 296
	vreplgr2vr.h	$vr0, $a2
	vst	$vr0, $a1, 328
	b	.LBB0_87
.LBB0_64:
	beqz	$s0, .LBB0_67
# %bb.65:
	beqz	$s4, .LBB0_67
# %bb.66:
	bnez	$s3, .LBB0_68
.LBB0_67:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$s0, $ra
	move	$s3, $t8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t8, $s3
	move	$ra, $s0
.LBB0_68:
	ld.hu	$a1, $sp, 384
	ld.hu	$a2, $sp, 386
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	add.d	$a0, $a2, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	addi.d	$s3, $s1, 104
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	add.d	$a3, $s3, $a3
	slli.d	$t1, $s6, 1
	stx.h	$a0, $a3, $t1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a6, $s3, $a4
	slli.d	$a7, $s5, 1
	stx.h	$a0, $a6, $a7
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$t0, $s3, $a4
	slli.d	$a5, $ra, 1
	stx.h	$a0, $t0, $a5
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	ld.hu	$t7, $sp, 388
	add.d	$t2, $s3, $a4
	slli.d	$a4, $fp, 1
	stx.h	$a0, $t2, $a4
	add.d	$a0, $a2, $t7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t3, $s7, 1
	stx.h	$a0, $a3, $t3
	ld.hu	$fp, $sp, 390
	stx.h	$a0, $a6, $t1
	stx.h	$a0, $t0, $a7
	stx.h	$a0, $t2, $a5
	add.d	$a0, $t7, $fp
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t4, $s8, 1
	stx.h	$a0, $a3, $t4
	ld.hu	$s0, $sp, 392
	stx.h	$a0, $a6, $t3
	stx.h	$a0, $t0, $t1
	stx.h	$a0, $t2, $a7
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t5, $t8, 1
	stx.h	$a0, $a3, $t5
	ld.hu	$s1, $sp, 394
	stx.h	$a0, $a6, $t4
	stx.h	$a0, $t0, $t3
	stx.h	$a0, $t2, $t1
	add.d	$a0, $s0, $s1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t8, $s2, 1
	stx.h	$a0, $a3, $t8
	ld.hu	$s2, $sp, 396
	stx.h	$a0, $a6, $t5
	stx.h	$a0, $t0, $t4
	stx.h	$a0, $t2, $t3
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.hu	$s4, $sp, 398
	stx.h	$a0, $a6, $t8
	stx.h	$a0, $t0, $t5
	stx.h	$a0, $t2, $t4
	add.d	$a0, $s2, $s4
	addi.d	$a0, $a0, 1
	ld.hu	$s7, $sp, 400
	srli.d	$a0, $a0, 1
	stx.h	$a0, $t0, $t8
	stx.h	$a0, $t2, $t5
	add.d	$a0, $s4, $s7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $t2, $t8
	ld.hu	$s5, $sp, 418
	addi.d	$a0, $a2, 2
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 5
	add.d	$t2, $s3, $t2
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	slli.d	$t6, $t6, 5
	add.d	$t6, $s3, $t6
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	slli.d	$s6, $s6, 5
	add.d	$s6, $s3, $s6
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s8, $s8, 5
	add.d	$s3, $s3, $s8
	alsl.d	$s8, $a1, $a0, 1
	add.d	$s8, $s8, $s5
	srli.d	$s8, $s8, 2
	stx.h	$s8, $t2, $t1
	stx.h	$s8, $t6, $a7
	stx.h	$s8, $s6, $a5
	stx.h	$s8, $s3, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a2, $a2, $a1, 1
	add.d	$a2, $a2, $t7
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t2, $t3
	stx.h	$a2, $t6, $t1
	stx.h	$a2, $s6, $a7
	stx.h	$a2, $s3, $a5
	alsl.d	$a0, $t7, $a0, 1
	add.d	$a0, $a0, $fp
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t2, $t4
	stx.h	$a0, $t6, $t3
	stx.h	$a0, $s6, $t1
	stx.h	$a0, $s3, $a7
	alsl.d	$a0, $fp, $t7, 1
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t2, $t5
	stx.h	$a0, $t6, $t4
	stx.h	$a0, $s6, $t3
	stx.h	$a0, $s3, $t1
	alsl.d	$a0, $s0, $fp, 1
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t2, $t8
	stx.h	$a0, $t6, $t5
	stx.h	$a0, $s6, $t4
	stx.h	$a0, $s3, $t3
	alsl.d	$a0, $s1, $s0, 1
	add.d	$a0, $a0, $s2
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t6, $t8
	stx.h	$a0, $s6, $t5
	stx.h	$a0, $s3, $t4
	alsl.d	$a0, $s2, $s1, 1
	add.d	$a0, $a0, $s4
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $s6, $t8
	stx.h	$a0, $s3, $t5
	alsl.d	$a0, $s4, $s2, 1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	addi.d	$a0, $a0, 2
	ld.hu	$a2, $sp, 420
	srli.d	$a0, $a0, 2
	stx.h	$a0, $s3, $t8
	alsl.d	$a0, $s5, $a1, 1
	add.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $a3, $a7
	ld.hu	$a1, $sp, 422
	stx.h	$a0, $a6, $a5
	stx.h	$a0, $t0, $a4
	alsl.d	$a0, $a2, $s5, 1
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t2, $a7
	ld.hu	$a7, $sp, 424
	stx.h	$a0, $t6, $a5
	stx.h	$a0, $s6, $a4
	alsl.d	$a0, $a1, $a2, 1
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	ld.hu	$a2, $sp, 426
	stx.h	$a0, $a3, $a5
	stx.h	$a0, $a6, $a4
	alsl.d	$a0, $a7, $a1, 1
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	ld.hu	$a1, $sp, 428
	stx.h	$a0, $t2, $a5
	stx.h	$a0, $t6, $a4
	alsl.d	$a0, $a2, $a7, 1
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 2
	ld.hu	$a5, $sp, 430
	srli.d	$a0, $a0, 2
	stx.h	$a0, $a3, $a4
	alsl.d	$a0, $a1, $a2, 1
	add.d	$a0, $a0, $a5
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t2, $a4
	b	.LBB0_87
.LBB0_69:
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s2, $fp
	beqz	$s0, .LBB0_72
# %bb.70:
	beqz	$s4, .LBB0_72
# %bb.71:
	bnez	$s3, .LBB0_73
.LBB0_72:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$fp, $ra
	move	$s0, $t8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t8, $s0
	move	$ra, $fp
.LBB0_73:
	ld.hu	$a1, $sp, 418
	ld.hu	$a2, $sp, 384
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	add.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	addi.d	$fp, $s1, 104
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	add.d	$t1, $fp, $a3
	slli.d	$a3, $t8, 1
	stx.h	$a0, $t1, $a3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a7, $fp, $a4
	slli.d	$a6, $s7, 1
	stx.h	$a0, $a7, $a6
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a5, $fp, $a4
	slli.d	$t0, $s5, 1
	stx.h	$a0, $a5, $t0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	ld.hu	$t5, $sp, 420
	add.d	$a4, $fp, $a4
	slli.d	$t2, $s2, 1
	stx.h	$a0, $a4, $t2
	add.d	$a0, $a1, $t5
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	slli.d	$t3, $t3, 5
	add.d	$t3, $fp, $t3
	stx.h	$a0, $t3, $a3
	ld.hu	$t7, $sp, 422
	stx.h	$a0, $t1, $a6
	stx.h	$a0, $a7, $t0
	stx.h	$a0, $a5, $t2
	add.d	$a0, $t5, $t7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	slli.d	$t4, $t4, 5
	add.d	$t4, $fp, $t4
	stx.h	$a0, $t4, $a3
	ld.hu	$t8, $sp, 424
	stx.h	$a0, $t3, $a6
	stx.h	$a0, $t1, $t0
	stx.h	$a0, $a7, $t2
	add.d	$a0, $t7, $t8
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t6, $t6, 5
	add.d	$t6, $fp, $t6
	stx.h	$a0, $t6, $a3
	ld.hu	$s1, $sp, 426
	stx.h	$a0, $t4, $a6
	stx.h	$a0, $t3, $t0
	stx.h	$a0, $t1, $t2
	add.d	$a0, $t8, $s1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$s0, $s0, 5
	add.d	$fp, $fp, $s0
	stx.h	$a0, $fp, $a3
	ld.hu	$s2, $sp, 428
	stx.h	$a0, $t6, $a6
	stx.h	$a0, $t4, $t0
	stx.h	$a0, $t3, $t2
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.hu	$s3, $sp, 430
	stx.h	$a0, $fp, $a6
	stx.h	$a0, $t6, $t0
	stx.h	$a0, $t4, $t2
	add.d	$a0, $s2, $s3
	addi.d	$a0, $a0, 1
	ld.hu	$s7, $sp, 432
	srli.d	$a0, $a0, 1
	stx.h	$a0, $fp, $t0
	stx.h	$a0, $t6, $t2
	add.d	$a0, $s3, $s7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.hu	$s4, $sp, 386
	stx.h	$a0, $fp, $t2
	addi.d	$a0, $a1, 2
	alsl.d	$t2, $a2, $a0, 1
	add.d	$t2, $t2, $s4
	srli.d	$s8, $t2, 2
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 1
	stx.h	$s8, $t1, $t2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	slli.d	$s0, $s0, 1
	stx.h	$s8, $a7, $s0
	slli.d	$s5, $s6, 1
	stx.h	$s8, $a5, $s5
	slli.d	$s6, $ra, 1
	stx.h	$s8, $a4, $s6
	addi.d	$a2, $a2, 2
	alsl.d	$a1, $a1, $a2, 1
	add.d	$a1, $a1, $t5
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t3, $t2
	stx.h	$a1, $t1, $s0
	stx.h	$a1, $a7, $s5
	stx.h	$a1, $a5, $s6
	alsl.d	$a0, $t5, $a0, 1
	add.d	$a0, $a0, $t7
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t4, $t2
	stx.h	$a0, $t3, $s0
	stx.h	$a0, $t1, $s5
	stx.h	$a0, $a7, $s6
	alsl.d	$a0, $t7, $t5, 1
	add.d	$a0, $a0, $t8
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $t6, $t2
	stx.h	$a0, $t4, $s0
	stx.h	$a0, $t3, $s5
	stx.h	$a0, $t1, $s6
	alsl.d	$a0, $t8, $t7, 1
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $fp, $t2
	stx.h	$a0, $t6, $s0
	stx.h	$a0, $t4, $s5
	stx.h	$a0, $t3, $s6
	alsl.d	$a0, $s1, $t8, 1
	add.d	$a0, $a0, $s2
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $fp, $s0
	stx.h	$a0, $t6, $s5
	stx.h	$a0, $t4, $s6
	alsl.d	$a0, $s2, $s1, 1
	add.d	$a0, $a0, $s3
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $fp, $s5
	stx.h	$a0, $t6, $s6
	alsl.d	$a0, $s3, $s2, 1
	add.d	$a0, $a0, $s7
	addi.d	$a0, $a0, 2
	ld.hu	$a1, $sp, 388
	srli.d	$a0, $a0, 2
	stx.h	$a0, $fp, $s6
	alsl.d	$a0, $s4, $a2, 1
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	stx.h	$a0, $a7, $a3
	ld.hu	$a2, $sp, 390
	stx.h	$a0, $a5, $a6
	stx.h	$a0, $a4, $t0
	alsl.d	$a0, $a1, $s4, 1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $a7, $t2
	ld.hu	$a7, $sp, 392
	stx.h	$a0, $a5, $s0
	stx.h	$a0, $a4, $s5
	alsl.d	$a0, $a2, $a1, 1
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	ld.hu	$a1, $sp, 394
	stx.h	$a0, $a5, $a3
	stx.h	$a0, $a4, $a6
	alsl.d	$a0, $a7, $a2, 1
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	ld.hu	$a2, $sp, 396
	stx.h	$a0, $a5, $t2
	stx.h	$a0, $a4, $s0
	alsl.d	$a0, $a1, $a7, 1
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 2
	ld.hu	$a5, $sp, 398
	srli.d	$a0, $a0, 2
	stx.h	$a0, $a4, $a3
	alsl.d	$a0, $a2, $a1, 1
	add.d	$a0, $a0, $a5
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stx.h	$a0, $a4, $t2
	b	.LBB0_87
.LBB0_74:
	move	$s3, $s2
	bnez	$s4, .LBB0_76
# %bb.75:
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$s0, $ra
	move	$s2, $t8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t8, $s2
	move	$ra, $s0
.LBB0_76:
	ld.hu	$a1, $sp, 418
	ld.hu	$a2, $sp, 420
	move	$s4, $zero
	add.d	$a0, $a2, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	addi.d	$t4, $s1, 104
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	ld.hu	$a4, $sp, 422
	add.d	$a3, $t4, $a3
	slli.d	$t5, $fp, 1
	stx.h	$a0, $a3, $t5
	add.d	$a0, $a2, $a4
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t3, $s5, 1
	stx.h	$a0, $a3, $t3
	ld.hu	$a6, $sp, 424
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 5
	add.d	$a5, $t4, $a5
	stx.h	$a0, $a5, $t5
	add.d	$a0, $a4, $a6
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t6, $s7, 1
	stx.h	$a0, $a3, $t6
	stx.h	$a0, $a5, $t3
	ld.hu	$t0, $sp, 426
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 5
	add.d	$a7, $t4, $a7
	stx.h	$a0, $a7, $t5
	add.d	$a0, $a6, $t0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t8, $t8, 1
	stx.h	$a0, $a3, $t8
	stx.h	$a0, $a5, $t6
	stx.h	$a0, $a7, $t3
	ld.hu	$t2, $sp, 428
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 5
	add.d	$t1, $t4, $t1
	stx.h	$a0, $t1, $t5
	add.d	$a0, $t0, $t2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $a5, $t8
	stx.h	$a0, $a7, $t6
	stx.h	$a0, $t1, $t3
	ld.hu	$fp, $sp, 430
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	slli.d	$t7, $t7, 5
	add.d	$t7, $t4, $t7
	stx.h	$a0, $t7, $t5
	add.d	$a0, $t2, $fp
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $a7, $t8
	stx.h	$a0, $t1, $t6
	stx.h	$a0, $t7, $t3
	ld.hu	$s0, $sp, 432
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s1, $s1, 5
	add.d	$s1, $t4, $s1
	stx.h	$a0, $s1, $t5
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $t1, $t8
	stx.h	$a0, $t7, $t6
	stx.h	$a0, $s1, $t3
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s2, $s2, 5
	add.d	$s2, $t4, $s2
	stx.h	$a0, $s2, $t5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 5
	add.d	$a0, $t4, $a0
	vreplgr2vr.h	$vr0, $s0
	vstx	$vr0, $a0, $t5
	slli.d	$a0, $s3, 1
	stx.h	$s0, $s2, $a0
	stx.h	$s0, $s2, $t8
	slli.d	$t4, $s8, 1
	stx.h	$s0, $s2, $t4
	stx.h	$s0, $s2, $t6
	slli.d	$t5, $s6, 1
	stx.h	$s0, $s2, $t5
	stx.h	$s0, $s2, $t3
	stx.h	$s0, $s1, $a0
	stx.h	$s0, $s1, $t8
	stx.h	$s0, $s1, $t4
	stx.h	$s0, $s1, $t6
	stx.h	$s0, $t7, $a0
	stx.h	$s0, $t7, $t8
	alsl.d	$t3, $s0, $s0, 1
	addi.d	$t6, $fp, 2
	add.d	$t3, $t6, $t3
	srli.d	$t3, $t3, 2
	stx.h	$t3, $t1, $a0
	stx.h	$t3, $t7, $t4
	stx.h	$t3, $s1, $t5
	slli.d	$t8, $ra, 1
	stx.h	$t3, $s2, $t8
	alsl.d	$t3, $fp, $t2, 1
	add.d	$t3, $t3, $s0
	addi.d	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stx.h	$t3, $a7, $a0
	stx.h	$t3, $t1, $t4
	stx.h	$t3, $t7, $t5
	stx.h	$t3, $s1, $t8
	alsl.d	$t3, $t2, $t0, 1
	add.d	$t3, $t6, $t3
	srli.d	$t3, $t3, 2
	stx.h	$t3, $a5, $a0
	stx.h	$t3, $a7, $t4
	stx.h	$t3, $t1, $t5
	stx.h	$t3, $t7, $t8
	addi.d	$t3, $a6, 2
	alsl.d	$t6, $t0, $t3, 1
	add.d	$t2, $t6, $t2
	srli.d	$t2, $t2, 2
	stx.h	$t2, $a3, $a0
	stx.h	$t2, $a5, $t4
	stx.h	$t2, $a7, $t5
	stx.h	$t2, $t1, $t8
	addi.d	$a0, $a4, 2
	alsl.d	$a6, $a6, $a0, 1
	add.d	$a6, $a6, $t0
	srli.d	$a6, $a6, 2
	stx.h	$a6, $a3, $t4
	stx.h	$a6, $a5, $t5
	stx.h	$a6, $a7, $t8
	add.d	$a6, $t3, $a2
	alsl.d	$a4, $a4, $a6, 1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $a3, $t5
	stx.h	$a4, $a5, $t8
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	srli.d	$a0, $a0, 2
	stx.h	$a0, $a3, $t8
	b	.LBB0_87
.LBB0_77:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	b	.LBB0_87
.LBB0_78:
	beqz	$s4, .LBB0_81
# %bb.79:
	bnez	$s3, .LBB0_81
# %bb.80:
	ld.hu	$a0, $sp, 418
	ld.hu	$a1, $sp, 420
	ld.hu	$a2, $sp, 422
	ld.hu	$a3, $sp, 424
	ld.hu	$a4, $sp, 426
	ld.hu	$a5, $sp, 428
	ld.hu	$a6, $sp, 430
	ld.hu	$a7, $sp, 432
	b	.LBB0_84
.LBB0_81:
	bnez	$s4, .LBB0_85
# %bb.82:
	beqz	$s3, .LBB0_85
# %bb.83:
	ld.hu	$a0, $sp, 386
	ld.hu	$a1, $sp, 388
	ld.hu	$a2, $sp, 390
	ld.hu	$a3, $sp, 392
	ld.hu	$a4, $sp, 394
	ld.hu	$a5, $sp, 396
	ld.hu	$a6, $sp, 398
	ld.hu	$a7, $sp, 400
.LBB0_84:                               # %.preheader
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 4
	bstrpick.d	$a1, $a0, 31, 3
	b	.LBB0_86
.LBB0_85:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.w	$a1, $s1, $a0
.LBB0_86:                               # %.preheader
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$s4, $zero
	slli.d	$a2, $a0, 5
	add.d	$a2, $s1, $a2
	alsl.d	$a2, $fp, $a2, 1
	st.h	$a1, $a2, 104
	st.h	$a1, $a2, 106
	st.h	$a1, $a2, 108
	st.h	$a1, $a2, 110
	st.h	$a1, $a2, 112
	st.h	$a1, $a2, 114
	st.h	$a1, $a2, 116
	st.h	$a1, $a2, 118
	st.h	$a1, $a2, 136
	st.h	$a1, $a2, 138
	st.h	$a1, $a2, 140
	st.h	$a1, $a2, 142
	st.h	$a1, $a2, 144
	st.h	$a1, $a2, 146
	st.h	$a1, $a2, 148
	st.h	$a1, $a2, 150
	st.h	$a1, $a2, 168
	st.h	$a1, $a2, 170
	st.h	$a1, $a2, 172
	st.h	$a1, $a2, 174
	st.h	$a1, $a2, 176
	st.h	$a1, $a2, 178
	st.h	$a1, $a2, 180
	st.h	$a1, $a2, 182
	st.h	$a1, $a2, 200
	st.h	$a1, $a2, 202
	st.h	$a1, $a2, 204
	st.h	$a1, $a2, 206
	st.h	$a1, $a2, 208
	st.h	$a1, $a2, 210
	st.h	$a1, $a2, 212
	st.h	$a1, $a2, 214
	st.h	$a1, $a2, 232
	st.h	$a1, $a2, 234
	st.h	$a1, $a2, 236
	st.h	$a1, $a2, 238
	st.h	$a1, $a2, 240
	st.h	$a1, $a2, 242
	st.h	$a1, $a2, 244
	st.h	$a1, $a2, 246
	st.h	$a1, $a2, 264
	st.h	$a1, $a2, 266
	st.h	$a1, $a2, 268
	st.h	$a1, $a2, 270
	st.h	$a1, $a2, 272
	st.h	$a1, $a2, 274
	st.h	$a1, $a2, 276
	st.h	$a1, $a2, 278
	st.h	$a1, $a2, 296
	st.h	$a1, $a2, 298
	st.h	$a1, $a2, 300
	st.h	$a1, $a2, 302
	st.h	$a1, $a2, 304
	st.h	$a1, $a2, 306
	st.h	$a1, $a2, 308
	st.h	$a1, $a2, 310
	st.h	$a1, $a2, 328
	st.h	$a1, $a2, 330
	st.h	$a1, $a2, 332
	st.h	$a1, $a2, 334
	st.h	$a1, $a2, 336
	st.h	$a1, $a2, 338
	st.h	$a1, $a2, 340
	st.h	$a1, $a2, 342
.LBB0_87:                               # %.loopexit
	move	$a0, $s4
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.Lfunc_end0:
	.size	intrapred8x8, .Lfunc_end0-intrapred8x8
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_52-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_47-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_69-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_74-.LJTI0_0
                                        # -- End function
	.text
	.globl	LowPassForIntra8x8Pred          # -- Begin function LowPassForIntra8x8Pred
	.p2align	5
	.type	LowPassForIntra8x8Pred,@function
LowPassForIntra8x8Pred:                 # @LowPassForIntra8x8Pred
# %bb.0:
	addi.d	$sp, $sp, -64
	ld.h	$a4, $a0, 48
	vld	$vr0, $a0, 32
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 0
	st.h	$a4, $sp, 56
	vst	$vr0, $sp, 40
	vst	$vr1, $sp, 24
	vst	$vr2, $sp, 8
	beqz	$a2, .LBB1_7
# %bb.1:
	beqz	$a1, .LBB1_3
# %bb.2:
	ld.hu	$a5, $a0, 0
	ld.hu	$a6, $a0, 2
	ld.hu	$a4, $a0, 4
	alsl.d	$a5, $a6, $a5, 1
	add.d	$a5, $a5, $a4
	b	.LBB1_4
.LBB1_3:
	ld.hu	$a5, $a0, 2
	ld.hu	$a4, $a0, 4
	alsl.d	$a5, $a5, $a5, 1
	add.d	$a5, $a4, $a5
.LBB1_4:
	addi.d	$a6, $a5, 2
	move	$a5, $zero
	srli.d	$a6, $a6, 2
	st.h	$a6, $sp, 10
	addi.d	$a6, $sp, 12
	ori	$a7, $zero, 28
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a0, $a5
	ld.hu	$t1, $t0, 2
	ld.hu	$t0, $t0, 6
	alsl.d	$a4, $a4, $t1, 1
	add.d	$a4, $a4, $t0
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stx.h	$a4, $a6, $a5
	addi.d	$a5, $a5, 2
	move	$a4, $t0
	bne	$a5, $a7, .LBB1_5
# %bb.6:
	ld.hu	$a4, $a0, 32
	ld.hu	$a5, $a0, 30
	alsl.d	$a4, $a4, $a4, 1
	add.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	st.h	$a4, $sp, 40
.LBB1_7:
	beqz	$a1, .LBB1_12
# %bb.8:
	beqz	$a2, .LBB1_14
# %bb.9:
	beqz	$a3, .LBB1_14
# %bb.10:
	ld.hu	$a1, $a0, 34
	ld.hu	$a2, $a0, 0
	ld.hu	$a3, $a0, 2
	alsl.d	$a4, $a2, $a1, 1
	add.d	$a3, $a4, $a3
.LBB1_11:                               # %.thread61
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.h	$a3, $sp, 8
	b	.LBB1_17
.LBB1_12:
	beqz	$a3, .LBB1_19
# %bb.13:
	ld.hu	$a1, $a0, 34
	ld.hu	$a3, $a0, 36
	alsl.d	$a4, $a1, $a1, 1
	b	.LBB1_18
.LBB1_14:
	beqz	$a2, .LBB1_20
# %bb.15:                               # %.thread62
	ld.hu	$a2, $a0, 0
	ld.hu	$a1, $a0, 2
	alsl.d	$a4, $a2, $a2, 1
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 8
	beqz	$a3, .LBB1_19
# %bb.16:                               # %.thread62..thread61_crit_edge
	ld.hu	$a1, $a0, 34
.LBB1_17:                               # %.thread61
	ld.hu	$a3, $a0, 36
	alsl.d	$a4, $a1, $a2, 1
.LBB1_18:
	addi.d	$a2, $a3, 2
	add.d	$a4, $a2, $a4
	srli.d	$a4, $a4, 2
	st.h	$a4, $sp, 42
	ld.hu	$a4, $a0, 38
	alsl.d	$a1, $a3, $a1, 1
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	ld.hu	$a3, $a0, 40
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 44
	alsl.d	$a1, $a4, $a2, 1
	add.d	$a1, $a1, $a3
	ld.hu	$a2, $a0, 42
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 46
	alsl.d	$a1, $a3, $a4, 1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	ld.hu	$a4, $a0, 44
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 48
	alsl.d	$a1, $a2, $a3, 1
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	ld.hu	$a3, $a0, 46
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 50
	alsl.d	$a1, $a4, $a2, 1
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 2
	ld.hu	$a2, $a0, 48
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 52
	alsl.d	$a1, $a3, $a4, 1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 54
	add.d	$a1, $a3, $a2
	alsl.d	$a1, $a2, $a1, 1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.h	$a1, $sp, 56
.LBB1_19:                               # %.thread59
	ld.h	$a1, $sp, 56
	vld	$vr0, $sp, 40
	vld	$vr1, $sp, 24
	vld	$vr2, $sp, 8
	st.h	$a1, $a0, 48
	vst	$vr0, $a0, 32
	vst	$vr1, $a0, 16
	vst	$vr2, $a0, 0
	addi.d	$sp, $sp, 64
	ret
.LBB1_20:
	beqz	$a3, .LBB1_19
# %bb.21:
	ld.hu	$a2, $a0, 0
	ld.hu	$a1, $a0, 34
	alsl.d	$a3, $a2, $a2, 1
	add.d	$a3, $a1, $a3
	b	.LBB1_11
.Lfunc_end1:
	.size	LowPassForIntra8x8Pred, .Lfunc_end1-LowPassForIntra8x8Pred
                                        # -- End function
	.globl	itrans8x8                       # -- Begin function itrans8x8
	.p2align	5
	.type	itrans8x8,@function
itrans8x8:                              # @itrans8x8
# %bb.0:
	addi.d	$sp, $sp, -272
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1788
	ldx.w	$a3, $a0, $a3
	ld.w	$a4, $a0, 28
	sub.w	$a3, $zero, $a3
	bne	$a4, $a3, .LBB2_4
# %bb.1:
	ldptr.w	$a3, $a0, 5920
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB2_4
# %bb.2:                                # %.preheader139
	addi.w	$a3, $a2, 7
	addi.d	$a4, $a2, -1
	slli.d	$a5, $a2, 5
	alsl.d	$a5, $a1, $a5, 1
	add.d	$a5, $a5, $a0
	addi.d	$a5, $a5, 118
	slli.d	$a2, $a2, 6
	alsl.d	$a1, $a1, $a2, 2
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 1412
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, -28
	ld.hu	$a6, $a5, -14
	ldptr.w	$a7, $a0, 5900
	add.w	$a2, $a2, $a6
	srai.d	$a6, $a2, 63
	andn	$a2, $a2, $a6
	slt	$a6, $a2, $a7
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $a7, $a6
	ld.w	$a7, $a1, -24
	ld.hu	$t0, $a5, -12
	or	$a2, $a2, $a6
	st.w	$a2, $a1, -28
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a1, -20
	ld.hu	$t0, $a5, -10
	or	$a2, $a6, $a2
	st.w	$a2, $a1, -24
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a1, -16
	ld.hu	$t0, $a5, -8
	or	$a2, $a6, $a2
	st.w	$a2, $a1, -20
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a1, -12
	ld.hu	$t0, $a5, -6
	or	$a2, $a6, $a2
	st.w	$a2, $a1, -16
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a1, -8
	ld.hu	$t0, $a5, -4
	or	$a2, $a6, $a2
	st.w	$a2, $a1, -12
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a1, -4
	ld.hu	$t0, $a5, -2
	or	$a2, $a6, $a2
	st.w	$a2, $a1, -8
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a1, 0
	ld.hu	$t0, $a5, 0
	or	$a2, $a6, $a2
	st.w	$a2, $a1, -4
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	or	$a2, $a6, $a2
	st.w	$a2, $a1, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 32
	addi.d	$a1, $a1, 64
	blt	$a4, $a3, .LBB2_3
	b	.LBB2_10
.LBB2_4:                                # %.critedge
	slli.d	$a3, $a2, 6
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a3, $a3, $a0
	addi.d	$a3, $a3, 1604
	ori	$a4, $zero, 96
	addi.d	$a5, $sp, 16
	ori	$a6, $zero, 128
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a3, -220
	ld.w	$t0, $a3, -156
	ld.w	$t1, $a3, -92
	ld.w	$t2, $a3, -28
	vinsgr2vr.w	$vr0, $a7, 0
	vinsgr2vr.w	$vr0, $t0, 1
	vinsgr2vr.w	$vr0, $t1, 2
	vinsgr2vr.w	$vr0, $t2, 3
	ld.w	$a7, $a3, -204
	ld.w	$t0, $a3, -140
	ld.w	$t1, $a3, -76
	ld.w	$t2, $a3, -12
	vinsgr2vr.w	$vr1, $a7, 0
	vinsgr2vr.w	$vr1, $t0, 1
	vinsgr2vr.w	$vr1, $t1, 2
	vinsgr2vr.w	$vr1, $t2, 3
	vadd.w	$vr3, $vr1, $vr0
	vsub.w	$vr2, $vr0, $vr1
	ld.w	$a7, $a3, -212
	ld.w	$t0, $a3, -148
	ld.w	$t1, $a3, -84
	ld.w	$t2, $a3, -20
	vinsgr2vr.w	$vr0, $a7, 0
	vinsgr2vr.w	$vr0, $t0, 1
	vinsgr2vr.w	$vr0, $t1, 2
	vinsgr2vr.w	$vr0, $t2, 3
	vsrai.w	$vr1, $vr0, 1
	ld.w	$a7, $a3, -196
	ld.w	$t0, $a3, -132
	ld.w	$t1, $a3, -68
	ld.w	$t2, $a3, -4
	vinsgr2vr.w	$vr4, $a7, 0
	vinsgr2vr.w	$vr4, $t0, 1
	vinsgr2vr.w	$vr4, $t1, 2
	vinsgr2vr.w	$vr4, $t2, 3
	vsub.w	$vr5, $vr1, $vr4
	vsrai.w	$vr1, $vr4, 1
	vadd.w	$vr4, $vr1, $vr0
	vadd.w	$vr0, $vr4, $vr3
	vadd.w	$vr1, $vr5, $vr2
	vsub.w	$vr2, $vr2, $vr5
	vsub.w	$vr3, $vr3, $vr4
	ld.w	$a7, $a3, -208
	ld.w	$t0, $a3, -144
	ld.w	$t1, $a3, -80
	ld.w	$t2, $a3, -16
	vinsgr2vr.w	$vr4, $a7, 0
	vinsgr2vr.w	$vr4, $t0, 1
	vinsgr2vr.w	$vr4, $t1, 2
	vinsgr2vr.w	$vr4, $t2, 3
	ld.w	$a7, $a3, -200
	ld.w	$t0, $a3, -136
	ld.w	$t1, $a3, -72
	ld.w	$t2, $a3, -8
	vinsgr2vr.w	$vr5, $a7, 0
	vinsgr2vr.w	$vr5, $t0, 1
	vinsgr2vr.w	$vr5, $t1, 2
	vinsgr2vr.w	$vr5, $t2, 3
	ld.w	$a7, $a3, -192
	ld.w	$t0, $a3, -128
	ld.w	$t1, $a3, -64
	ld.w	$t2, $a3, 0
	vinsgr2vr.w	$vr6, $a7, 0
	vinsgr2vr.w	$vr6, $t0, 1
	vinsgr2vr.w	$vr6, $t1, 2
	vinsgr2vr.w	$vr6, $t2, 3
	vsrai.w	$vr7, $vr6, 1
	vadd.w	$vr8, $vr4, $vr6
	vadd.w	$vr7, $vr8, $vr7
	vsub.w	$vr7, $vr5, $vr7
	ld.w	$a7, $a3, -216
	ld.w	$t0, $a3, -152
	ld.w	$t1, $a3, -88
	ld.w	$t2, $a3, -24
	vinsgr2vr.w	$vr8, $a7, 0
	vinsgr2vr.w	$vr8, $t0, 1
	vinsgr2vr.w	$vr8, $t1, 2
	vinsgr2vr.w	$vr8, $t2, 3
	vsrai.w	$vr9, $vr4, 1
	vadd.w	$vr9, $vr9, $vr4
	vsub.w	$vr9, $vr6, $vr9
	vadd.w	$vr9, $vr9, $vr8
	vsrai.w	$vr10, $vr5, 1
	vadd.w	$vr6, $vr6, $vr5
	vadd.w	$vr6, $vr6, $vr10
	vsub.w	$vr6, $vr6, $vr8
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr4, $vr4, $vr8
	vsrai.w	$vr5, $vr8, 1
	vadd.w	$vr4, $vr4, $vr5
	vsrai.w	$vr5, $vr4, 2
	vadd.w	$vr5, $vr5, $vr7
	vsrai.w	$vr7, $vr7, 2
	vsub.w	$vr4, $vr4, $vr7
	vsrai.w	$vr7, $vr6, 2
	vadd.w	$vr7, $vr7, $vr9
	vsrai.w	$vr8, $vr9, 2
	vsub.w	$vr6, $vr8, $vr6
	vadd.w	$vr8, $vr4, $vr0
	add.d	$a7, $a5, $a4
	vst	$vr8, $a7, -96
	vadd.w	$vr8, $vr6, $vr1
	vst	$vr8, $a7, -64
	vadd.w	$vr8, $vr7, $vr2
	vst	$vr8, $a7, -32
	vadd.w	$vr8, $vr5, $vr3
	vstx	$vr8, $a4, $a5
	vsub.w	$vr3, $vr3, $vr5
	vst	$vr3, $a7, 32
	vsub.w	$vr2, $vr2, $vr7
	vst	$vr2, $a7, 64
	vsub.w	$vr1, $vr1, $vr6
	vst	$vr1, $a7, 96
	vsub.w	$vr0, $vr0, $vr4
	vst	$vr0, $a7, 128
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 256
	bne	$a4, $a6, .LBB2_5
# %bb.6:                                # %.preheader143
	move	$a4, $zero
	slli.d	$a3, $a2, 6
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a3, $a3, $a0
	addi.d	$a5, $a3, 1384
	addi.d	$a6, $sp, 80
	ori	$a7, $zero, 32
	.p2align	4, , 16
.LBB2_7:                                # %vector.body284
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, -64
	ld.w	$t1, $a6, -32
	ld.w	$t2, $a6, 0
	ld.w	$t3, $a6, 32
	vinsgr2vr.w	$vr0, $t0, 0
	vinsgr2vr.w	$vr0, $t1, 1
	vinsgr2vr.w	$vr0, $t2, 2
	vinsgr2vr.w	$vr0, $t3, 3
	ld.w	$t0, $a6, -48
	ld.w	$t1, $a6, -16
	ld.w	$t2, $a6, 16
	ld.w	$t3, $a6, 48
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vadd.w	$vr3, $vr1, $vr0
	vsub.w	$vr2, $vr0, $vr1
	ld.w	$t0, $a6, -56
	ld.w	$t1, $a6, -24
	ld.w	$t2, $a6, 8
	ld.w	$t3, $a6, 40
	vinsgr2vr.w	$vr0, $t0, 0
	vinsgr2vr.w	$vr0, $t1, 1
	vinsgr2vr.w	$vr0, $t2, 2
	vinsgr2vr.w	$vr0, $t3, 3
	vsrai.w	$vr1, $vr0, 1
	ld.w	$t0, $a6, -40
	ld.w	$t1, $a6, -8
	ld.w	$t2, $a6, 24
	ld.w	$t3, $a6, 56
	vinsgr2vr.w	$vr4, $t0, 0
	vinsgr2vr.w	$vr4, $t1, 1
	vinsgr2vr.w	$vr4, $t2, 2
	vinsgr2vr.w	$vr4, $t3, 3
	vsub.w	$vr5, $vr1, $vr4
	vsrai.w	$vr1, $vr4, 1
	vadd.w	$vr4, $vr1, $vr0
	vadd.w	$vr0, $vr4, $vr3
	vadd.w	$vr1, $vr5, $vr2
	vsub.w	$vr2, $vr2, $vr5
	vsub.w	$vr3, $vr3, $vr4
	ld.w	$t0, $a6, -52
	ld.w	$t1, $a6, -20
	ld.w	$t2, $a6, 12
	ld.w	$t3, $a6, 44
	vinsgr2vr.w	$vr4, $t0, 0
	vinsgr2vr.w	$vr4, $t1, 1
	vinsgr2vr.w	$vr4, $t2, 2
	vinsgr2vr.w	$vr4, $t3, 3
	ld.w	$t0, $a6, -44
	ld.w	$t1, $a6, -12
	ld.w	$t2, $a6, 20
	ld.w	$t3, $a6, 52
	vinsgr2vr.w	$vr5, $t0, 0
	vinsgr2vr.w	$vr5, $t1, 1
	vinsgr2vr.w	$vr5, $t2, 2
	vinsgr2vr.w	$vr5, $t3, 3
	ld.w	$t0, $a6, -36
	ld.w	$t1, $a6, -4
	ld.w	$t2, $a6, 28
	ld.w	$t3, $a6, 60
	vinsgr2vr.w	$vr6, $t0, 0
	vinsgr2vr.w	$vr6, $t1, 1
	vinsgr2vr.w	$vr6, $t2, 2
	vinsgr2vr.w	$vr6, $t3, 3
	vsrai.w	$vr7, $vr6, 1
	vadd.w	$vr8, $vr4, $vr6
	vadd.w	$vr7, $vr8, $vr7
	vsub.w	$vr7, $vr5, $vr7
	ld.w	$t0, $a6, -60
	ld.w	$t1, $a6, -28
	ld.w	$t2, $a6, 4
	ld.w	$t3, $a6, 36
	vinsgr2vr.w	$vr8, $t0, 0
	vinsgr2vr.w	$vr8, $t1, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t3, 3
	vsrai.w	$vr9, $vr4, 1
	vadd.w	$vr9, $vr9, $vr4
	vsub.w	$vr9, $vr6, $vr9
	vadd.w	$vr9, $vr9, $vr8
	vsrai.w	$vr10, $vr5, 1
	vadd.w	$vr6, $vr6, $vr5
	vadd.w	$vr6, $vr6, $vr10
	vsub.w	$vr6, $vr6, $vr8
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr4, $vr4, $vr8
	vsrai.w	$vr5, $vr8, 1
	vadd.w	$vr4, $vr4, $vr5
	vsrai.w	$vr5, $vr4, 2
	vadd.w	$vr5, $vr5, $vr7
	vsrai.w	$vr7, $vr7, 2
	vsub.w	$vr4, $vr4, $vr7
	vsrai.w	$vr7, $vr6, 2
	vadd.w	$vr7, $vr7, $vr9
	vsrai.w	$vr8, $vr9, 2
	vsub.w	$vr6, $vr8, $vr6
	vadd.w	$vr8, $vr4, $vr0
	add.d	$t0, $a5, $a4
	vstx	$vr8, $a5, $a4
	vadd.w	$vr8, $vr6, $vr1
	vst	$vr8, $t0, 64
	vadd.w	$vr8, $vr7, $vr2
	vst	$vr8, $t0, 128
	vadd.w	$vr8, $vr5, $vr3
	vst	$vr8, $t0, 192
	vsub.w	$vr3, $vr3, $vr5
	vst	$vr3, $t0, 256
	vsub.w	$vr2, $vr2, $vr7
	vst	$vr2, $t0, 320
	vsub.w	$vr1, $vr1, $vr6
	vst	$vr1, $t0, 384
	vsub.w	$vr0, $vr0, $vr4
	vst	$vr0, $t0, 448
	addi.d	$a4, $a4, 16
	addi.d	$a6, $a6, 128
	bne	$a4, $a7, .LBB2_7
# %bb.8:                                # %.preheader141
	addi.w	$a4, $a2, 7
	addi.d	$a5, $a2, -1
	slli.d	$a2, $a2, 5
	alsl.d	$a1, $a1, $a2, 1
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 118
	addi.d	$a2, $a3, 1412
	.p2align	4, , 16
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a1, -14
	ld.w	$a6, $a2, -28
	ldptr.w	$a7, $a0, 5900
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	addi.w	$a3, $a3, 32
	srai.d	$a6, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $a6, $a3
	slt	$a6, $a3, $a7
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $a7, $a6
	or	$a3, $a3, $a6
	ld.hu	$a6, $a1, -12
	ld.w	$a7, $a2, -24
	st.w	$a3, $a2, -28
	ldptr.w	$a3, $a0, 5900
	slli.d	$a6, $a6, 6
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 32
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	ld.hu	$a6, $a1, -10
	ld.w	$a7, $a2, -20
	st.w	$a3, $a2, -24
	ldptr.w	$a3, $a0, 5900
	slli.d	$a6, $a6, 6
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 32
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	ld.hu	$a6, $a1, -8
	ld.w	$a7, $a2, -16
	st.w	$a3, $a2, -20
	ldptr.w	$a3, $a0, 5900
	slli.d	$a6, $a6, 6
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 32
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	ld.hu	$a6, $a1, -6
	ld.w	$a7, $a2, -12
	st.w	$a3, $a2, -16
	ldptr.w	$a3, $a0, 5900
	slli.d	$a6, $a6, 6
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 32
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	ld.hu	$a6, $a1, -4
	ld.w	$a7, $a2, -8
	st.w	$a3, $a2, -12
	ldptr.w	$a3, $a0, 5900
	slli.d	$a6, $a6, 6
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 32
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	ld.hu	$a6, $a1, -2
	ld.w	$a7, $a2, -4
	st.w	$a3, $a2, -8
	ldptr.w	$a3, $a0, 5900
	slli.d	$a6, $a6, 6
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 32
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	ld.hu	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	st.w	$a3, $a2, -4
	ldptr.w	$a3, $a0, 5900
	slli.d	$a6, $a6, 6
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 32
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	st.w	$a3, $a2, 0
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 64
	blt	$a5, $a4, .LBB2_9
.LBB2_10:                               # %.loopexit
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end2:
	.size	itrans8x8, .Lfunc_end2-itrans8x8
                                        # -- End function
	.type	quant_coef8,@object             # @quant_coef8
	.section	.rodata,"a",@progbits
	.globl	quant_coef8
	.p2align	2, 0x0
quant_coef8:
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.size	quant_coef8, 1536

	.type	dequant_coef8,@object           # @dequant_coef8
	.globl	dequant_coef8
	.p2align	2, 0x0
dequant_coef8:
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.size	dequant_coef8, 1536

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"warning: Intra_8x8_Vertical prediction mode not allowed at mb %d\n"
	.size	.L.str, 66

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"warning: Intra_8x8_Horizontal prediction mode not allowed at mb %d\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"warning: Intra_8x8_Diagonal_Down_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.2, 76

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.3, 71

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"warning: Intra_8x8_Diagonal_Down_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.4, 77

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"warning: Intra_8x8_Vertical_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.5, 72

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"warning: Intra_8x8_Horizontal_Down prediction mode not allowed at mb %d\n"
	.size	.L.str.6, 73

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"warning: Intra_8x8_Horizontal_Up prediction mode not allowed at mb %d\n"
	.size	.L.str.7, 71

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error: illegal intra_4x4 prediction mode: %d\n"
	.size	.L.str.8, 46

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
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
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
	.type	cofAC8x8_intra,@object          # @cofAC8x8_intra
	.comm	cofAC8x8_intra,8,8
	.type	cofAC8x8_iintra,@object         # @cofAC8x8_iintra
	.comm	cofAC8x8_iintra,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
