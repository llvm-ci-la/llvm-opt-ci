	.file	"zlib_deflate.c"
	.text
	.globl	deflateInit_                    # -- Begin function deflateInit_
	.p2align	5
	.type	deflateInit_,@function
deflateInit_:                           # @deflateInit_
# %bb.0:
	move	$a7, $a3
	move	$a6, $a2
	ori	$a2, $zero, 8
	ori	$a3, $zero, 15
	ori	$a4, $zero, 8
	move	$a5, $zero
	pcaddu18i	$t8, %call36(deflateInit2_)
	jr	$t8
.Lfunc_end0:
	.size	deflateInit_, .Lfunc_end0-deflateInit_
                                        # -- End function
	.globl	deflateInit2_                   # -- Begin function deflateInit2_
	.p2align	5
	.type	deflateInit2_,@function
deflateInit2_:                          # @deflateInit2_
# %bb.0:
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
	move	$t0, $a0
	addi.w	$a0, $zero, -6
	beqz	$a6, .LBB1_26
# %bb.1:
	ori	$t1, $zero, 112
	bne	$a7, $t1, .LBB1_26
# %bb.2:
	ld.bu	$a6, $a6, 0
	ori	$a7, $zero, 49
	bne	$a6, $a7, .LBB1_26
# %bb.3:
	addi.w	$a0, $zero, -2
	beqz	$t0, .LBB1_26
# %bb.4:
	ld.d	$a6, $t0, 64
	st.d	$zero, $t0, 48
	beqz	$a6, .LBB1_9
# %bb.5:
	ld.d	$a7, $t0, 72
	beqz	$a7, .LBB1_10
.LBB1_6:
	bltz	$a3, .LBB1_11
.LBB1_7:
	ori	$a7, $zero, 16
	bltu	$a3, $a7, .LBB1_13
# %bb.8:
	addi.w	$a3, $a3, -16
	ori	$s6, $zero, 2
	b	.LBB1_12
.LBB1_9:
	pcalau12i	$a6, %got_pc_hi20(zcalloc)
	ld.d	$a6, $a6, %got_pc_lo12(zcalloc)
	st.d	$a6, $t0, 64
	st.d	$zero, $t0, 80
	ld.d	$a7, $t0, 72
	bnez	$a7, .LBB1_6
.LBB1_10:
	pcalau12i	$a7, %got_pc_hi20(zcfree)
	ld.d	$a7, $a7, %got_pc_lo12(zcfree)
	st.d	$a7, $t0, 72
	bgez	$a3, .LBB1_7
.LBB1_11:
	move	$s6, $zero
	sub.w	$a3, $zero, $a3
.LBB1_12:
	ori	$a7, $zero, 1
	ori	$t1, $zero, 4
	bgeu	$t1, $a5, .LBB1_14
	b	.LBB1_26
.LBB1_13:
	move	$a7, $zero
	ori	$s6, $zero, 1
	ori	$t1, $zero, 4
	bltu	$t1, $a5, .LBB1_26
.LBB1_14:
	addi.d	$t1, $a1, 1
	sltui	$t1, $t1, 1
	ori	$t2, $zero, 6
	masknez	$a1, $a1, $t1
	maskeqz	$t1, $t2, $t1
	or	$s1, $t1, $a1
	ori	$a1, $zero, 9
	bltu	$a1, $s1, .LBB1_26
# %bb.15:
	ori	$a1, $zero, 8
	bne	$a2, $a1, .LBB1_26
# %bb.16:
	addi.w	$a1, $a4, -10
	addi.w	$a2, $zero, -9
	bltu	$a1, $a2, .LBB1_26
# %bb.17:
	addi.w	$a1, $a3, -16
	addi.w	$a2, $zero, -8
	bltu	$a1, $a2, .LBB1_26
# %bb.18:
	addi.d	$a1, $a3, -8
	sltui	$s5, $a1, 1
	and	$a1, $s5, $a7
	bnez	$a1, .LBB1_26
# %bb.19:
	move	$s2, $a3
	move	$s7, $a4
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $t0
	ld.d	$a0, $t0, 80
	lu12i.w	$s4, 1
	ori	$a2, $s4, 1856
	ori	$a1, $zero, 1
	ori	$s8, $zero, 1
	jirl	$ra, $a6, 0
	move	$s0, $a0
	addi.w	$a0, $zero, -4
	beqz	$s0, .LBB1_26
# %bb.20:
	move	$s3, $a0
	masknez	$a0, $s2, $s5
	ori	$a1, $zero, 9
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
	st.d	$s0, $fp, 56
	st.d	$fp, $s0, 0
	ori	$a1, $zero, 42
	st.w	$a1, $s0, 8
	st.w	$s6, $s0, 48
	st.d	$zero, $s0, 56
	st.w	$a0, $s0, 84
	sll.w	$a1, $s8, $a0
	st.w	$a1, $s0, 80
	addi.d	$a0, $a1, -1
	st.w	$a0, $s0, 88
	addi.d	$a0, $s7, 7
	st.w	$a0, $s0, 136
	ori	$a0, $zero, 128
	sll.w	$a0, $a0, $s7
	st.w	$a0, $s0, 132
	addi.d	$a0, $a0, -1
	st.w	$a0, $s0, 140
	addi.d	$a0, $s7, 9
	andi	$a2, $a0, 255
	ori	$a3, $zero, 171
	ld.d	$a4, $fp, 64
	ld.d	$a0, $fp, 80
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 9
	st.w	$a2, $s0, 144
	ori	$a2, $zero, 2
	jirl	$ra, $a4, 0
	ld.d	$a4, $fp, 64
	ld.d	$a3, $fp, 80
	ld.w	$a1, $s0, 80
	st.d	$a0, $s0, 96
	ori	$a2, $zero, 2
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$a4, $fp, 64
	ld.d	$a3, $fp, 80
	ld.w	$a1, $s0, 132
	st.d	$a0, $s0, 112
	ori	$a2, $zero, 2
	move	$a0, $a3
	jirl	$ra, $a4, 0
	st.d	$a0, $s0, 120
	stptr.d	$zero, $s0, 5944
	ld.d	$a3, $fp, 64
	ld.d	$a0, $fp, 80
	ori	$a1, $zero, 64
	sll.w	$a1, $a1, $s7
	stptr.w	$a1, $s0, 5896
	ori	$a2, $zero, 4
	jirl	$ra, $a3, 0
	ori	$a1, $s4, 1800
	ldx.wu	$a1, $s0, $a1
	ld.d	$a2, $s0, 96
	st.d	$a0, $s0, 16
	slli.d	$a3, $a1, 2
	st.d	$a3, $s0, 24
	beqz	$a2, .LBB1_25
# %bb.21:
	ld.d	$a2, $s0, 112
	beqz	$a2, .LBB1_25
# %bb.22:
	ld.d	$a2, $s0, 120
	beqz	$a2, .LBB1_25
# %bb.23:
	beqz	$a0, .LBB1_25
# %bb.24:
	bstrpick.d	$a2, $a1, 31, 1
	alsl.d	$a2, $a2, $a0, 1
	stptr.d	$a2, $s0, 5904
	alsl.d	$a1, $a1, $a1, 1
	add.d	$a0, $a0, $a1
	stptr.d	$a0, $s0, 5888
	st.w	$s1, $s0, 196
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s0, 200
	ori	$a0, $zero, 8
	st.b	$a0, $s0, 72
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(deflateReset)
	jr	$t8
.LBB1_25:
	ori	$a0, $zero, 666
	st.w	$a0, $s0, 8
	pcalau12i	$a0, %got_pc_hi20(z_errmsg)
	ld.d	$a0, $a0, %got_pc_lo12(z_errmsg)
	ld.d	$a1, $a0, 48
	st.d	$a1, $fp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(deflateEnd)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB1_26:
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
.Lfunc_end1:
	.size	deflateInit2_, .Lfunc_end1-deflateInit2_
                                        # -- End function
	.globl	deflateEnd                      # -- Begin function deflateEnd
	.p2align	5
	.type	deflateEnd,@function
deflateEnd:                             # @deflateEnd
# %bb.0:
	addi.w	$a2, $zero, -2
	beqz	$a0, .LBB2_17
# %bb.1:
	ld.d	$a1, $a0, 64
	beqz	$a1, .LBB2_17
# %bb.2:
	ld.d	$a3, $a0, 72
	beqz	$a3, .LBB2_17
# %bb.3:
	ld.d	$a1, $a0, 56
	beqz	$a1, .LBB2_17
# %bb.4:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a4, $a1, 0
	bne	$a4, $a0, .LBB2_16
# %bb.5:
	ld.w	$fp, $a1, 8
	addi.d	$a4, $fp, -57
	ori	$a5, $zero, 56
	bltu	$a5, $a4, .LBB2_18
# %bb.6:
	ori	$a5, $zero, 1
	sll.d	$a4, $a5, $a4
	lu12i.w	$a5, 17
	ori	$a5, $a5, 1
	lu32i.d	$a5, 16388
	lu52i.d	$a5, $a5, 16
	and	$a4, $a4, $a5
	beqz	$a4, .LBB2_18
.LBB2_7:                                # %deflateStateCheck.exit
	ld.d	$a2, $a1, 16
	move	$s0, $a0
	beqz	$a2, .LBB2_9
# %bb.8:
	ld.d	$a0, $a0, 80
	move	$a1, $a2
	jirl	$ra, $a3, 0
	move	$a0, $s0
	ld.d	$a1, $s0, 56
	ld.d	$a3, $s0, 72
.LBB2_9:
	ld.d	$a2, $a1, 120
	beqz	$a2, .LBB2_11
# %bb.10:
	ld.d	$a0, $a0, 80
	move	$a1, $a2
	jirl	$ra, $a3, 0
	move	$a0, $s0
	ld.d	$a1, $s0, 56
	ld.d	$a3, $s0, 72
.LBB2_11:
	ld.d	$a2, $a1, 112
	beqz	$a2, .LBB2_13
# %bb.12:
	ld.d	$a0, $a0, 80
	move	$a1, $a2
	jirl	$ra, $a3, 0
	move	$a0, $s0
	ld.d	$a1, $s0, 56
	ld.d	$a3, $s0, 72
.LBB2_13:
	ld.d	$a2, $a1, 96
	beqz	$a2, .LBB2_15
# %bb.14:
	ld.d	$a0, $a0, 80
	move	$a1, $a2
	jirl	$ra, $a3, 0
	move	$a0, $s0
	ld.d	$a3, $s0, 72
	ld.d	$a1, $s0, 56
.LBB2_15:
	ld.d	$a2, $a0, 80
	move	$s0, $a0
	move	$a0, $a2
	jirl	$ra, $a3, 0
	st.d	$zero, $s0, 56
	addi.d	$a0, $fp, -113
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -3
	maskeqz	$a2, $a1, $a0
.LBB2_16:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB2_17:                               # %deflateStateCheck.exit.thread
	move	$a0, $a2
	ret
.LBB2_18:
	ori	$a4, $zero, 666
	beq	$fp, $a4, .LBB2_7
# %bb.19:
	ori	$a4, $zero, 42
	beq	$fp, $a4, .LBB2_7
	b	.LBB2_16
.Lfunc_end2:
	.size	deflateEnd, .Lfunc_end2-deflateEnd
                                        # -- End function
	.globl	deflateReset                    # -- Begin function deflateReset
	.p2align	5
	.type	deflateReset,@function
deflateReset:                           # @deflateReset
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(deflateResetKeep)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_2
# %bb.1:
	ld.d	$s0, $fp, 56
	ld.wu	$a1, $s0, 80
	ld.w	$a2, $s0, 132
	slli.d	$a1, $a1, 1
	st.d	$a1, $s0, 104
	ld.d	$a1, $s0, 120
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 1
	stx.h	$zero, $a1, $a2
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $s0, 196
	pcalau12i	$a2, %pc_hi20(configuration_table)
	addi.d	$a2, $a2, %pc_lo12(configuration_table)
	alsl.d	$a3, $a1, $a2, 4
	slli.d	$a1, $a1, 4
	ld.hu	$a4, $a3, 2
	ldx.hu	$a1, $a2, $a1
	ld.hu	$a2, $a3, 4
	ld.hu	$a3, $a3, 6
	st.w	$a4, $s0, 192
	st.w	$a1, $s0, 204
	st.w	$a2, $s0, 208
	st.w	$a3, $s0, 188
	st.d	$zero, $s0, 152
	ori	$a1, $zero, 0
	lu32i.d	$a1, 2
	st.d	$a1, $s0, 180
	stptr.w	$zero, $s0, 5932
	ori	$a1, $zero, 2
	st.w	$a1, $s0, 160
	st.d	$zero, $s0, 168
	st.w	$zero, $s0, 128
.LBB3_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	deflateReset, .Lfunc_end3-deflateReset
                                        # -- End function
	.globl	deflateSetDictionary            # -- Begin function deflateSetDictionary
	.p2align	5
	.type	deflateSetDictionary,@function
deflateSetDictionary:                   # @deflateSetDictionary
# %bb.0:
	addi.w	$a3, $zero, -2
	beqz	$a0, .LBB4_6
# %bb.1:
	ld.d	$a4, $a0, 64
	beqz	$a4, .LBB4_6
# %bb.2:
	ld.d	$a4, $a0, 72
	beqz	$a4, .LBB4_6
# %bb.3:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 56
	beqz	$fp, .LBB4_5
# %bb.4:
	ld.d	$a4, $fp, 0
	beq	$a4, $a0, .LBB4_7
.LBB4_5:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB4_6:                                # %deflateStateCheck.exit.thread
	move	$a0, $a3
	ret
.LBB4_7:
	ld.w	$a4, $fp, 8
	addi.d	$a5, $a4, -57
	ori	$a6, $zero, 56
	bltu	$a6, $a5, .LBB4_15
# %bb.8:
	ori	$a6, $zero, 1
	sll.d	$a5, $a6, $a5
	lu12i.w	$a6, 17
	ori	$a6, $a6, 1
	lu32i.d	$a6, 16388
	lu52i.d	$a6, $a6, 16
	and	$a5, $a5, $a6
	beqz	$a5, .LBB4_15
.LBB4_9:                                # %deflateStateCheck.exit
	beqz	$a1, .LBB4_5
# %bb.10:
	ld.w	$s2, $fp, 48
	ori	$a5, $zero, 2
	beq	$s2, $a5, .LBB4_5
# %bb.11:
	ori	$a5, $zero, 1
	bne	$s2, $a5, .LBB4_17
# %bb.12:
	ori	$a5, $zero, 42
	bne	$a4, $a5, .LBB4_5
# %bb.13:
	ld.w	$a4, $fp, 180
	bnez	$a4, .LBB4_5
# %bb.14:                               # %.thread90.thread
	ld.d	$a3, $a0, 96
	move	$s3, $a0
	move	$a0, $a3
	move	$s0, $a1
	move	$s1, $a2
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	move	$a1, $s0
	ld.w	$a4, $fp, 80
	move	$a3, $a0
	move	$a0, $s3
	st.d	$a3, $s3, 96
	st.w	$zero, $fp, 48
	bgeu	$s1, $a4, .LBB4_21
	b	.LBB4_22
.LBB4_15:
	ori	$a5, $zero, 666
	beq	$a4, $a5, .LBB4_9
# %bb.16:
	ori	$a5, $zero, 42
	bne	$a4, $a5, .LBB4_5
	b	.LBB4_9
.LBB4_17:                               # %.thread
	ld.w	$a4, $fp, 180
	bnez	$a4, .LBB4_5
# %bb.18:                               # %.thread90
	ld.w	$a4, $fp, 80
	st.w	$zero, $fp, 48
	bltu	$a2, $a4, .LBB4_22
# %bb.19:
	bnez	$s2, .LBB4_21
# %bb.20:
	ld.w	$a4, $fp, 132
	ld.d	$a3, $fp, 120
	addi.d	$a4, $a4, -1
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 1
	stx.h	$zero, $a3, $a4
	move	$s0, $a0
	move	$a0, $a3
	move	$s1, $a1
	move	$a1, $zero
	move	$s3, $a2
	move	$a2, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$a1, $s1
	move	$a0, $s0
	ld.w	$a4, $fp, 80
	st.w	$zero, $fp, 172
	st.d	$zero, $fp, 152
	stptr.w	$zero, $fp, 5932
.LBB4_21:                               # %.thread103
	sub.d	$a2, $a2, $a4
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a1, $a1, $a2
	move	$a2, $a4
.LBB4_22:
	ld.w	$s0, $a0, 8
	ld.d	$s1, $a0, 0
	st.w	$a2, $a0, 8
	move	$s3, $a0
	st.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_window)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB4_27
# %bb.23:                               # %.lr.ph
	ori	$s4, $zero, 2
.LBB4_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_25 Depth 2
	ld.w	$a1, $fp, 172
	ld.w	$a2, $fp, 144
	ld.d	$a3, $fp, 96
	ld.w	$a4, $fp, 140
	ld.d	$a5, $fp, 120
	ld.d	$a6, $fp, 112
	ld.w	$a7, $fp, 88
	ld.w	$t0, $fp, 128
	addi.d	$a0, $a0, -2
	.p2align	4, , 16
.LBB4_25:                               #   Parent Loop BB4_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $a1, 2
	bstrpick.d	$t1, $t1, 31, 0
	ldx.bu	$t1, $a3, $t1
	sll.w	$t0, $t0, $a2
	xor	$t0, $t0, $t1
	and	$t0, $t0, $a4
	st.w	$t0, $fp, 128
	bstrpick.d	$t1, $t0, 31, 0
	slli.d	$t1, $t1, 1
	ldx.h	$t2, $a5, $t1
	and	$t3, $a7, $a1
	bstrpick.d	$t3, $t3, 31, 0
	slli.d	$t3, $t3, 1
	stx.h	$t2, $a6, $t3
	stx.h	$a1, $a5, $t1
	addi.w	$a0, $a0, -1
	addi.w	$a1, $a1, 1
	bnez	$a0, .LBB4_25
# %bb.26:                               #   in Loop: Header=BB4_24 Depth=1
	st.w	$a1, $fp, 172
	st.w	$s4, $fp, 180
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_window)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	bltu	$s4, $a0, .LBB4_24
.LBB4_27:                               # %._crit_edge
	ld.w	$a1, $fp, 172
	move	$a3, $zero
	add.d	$a1, $a1, $a0
	st.w	$a1, $fp, 172
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $fp, 152
	stptr.w	$a0, $fp, 5932
	ori	$a0, $zero, 0
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 180
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 160
	st.w	$zero, $fp, 168
	st.d	$s1, $s3, 0
	st.w	$s0, $s3, 8
	st.w	$s2, $fp, 48
	b	.LBB4_5
.Lfunc_end4:
	.size	deflateSetDictionary, .Lfunc_end4-deflateSetDictionary
                                        # -- End function
	.p2align	5                               # -- Begin function fill_window
	.type	fill_window,@function
fill_window:                            # @fill_window
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
	move	$fp, $a0
	ld.wu	$s3, $a0, 80
	addi.d	$s4, $s3, -262
	ld.w	$a1, $a0, 180
	lu12i.w	$a0, 1
	ori	$s5, $a0, 1836
	ori	$s7, $zero, 2
	ori	$s6, $zero, 7
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_15 Depth 2
                                        #     Child Loop BB5_24 Depth 2
                                        #     Child Loop BB5_21 Depth 2
                                        #     Child Loop BB5_29 Depth 2
                                        #     Child Loop BB5_41 Depth 2
	ld.w	$a0, $fp, 172
	ld.d	$a2, $fp, 104
	ld.w	$a3, $fp, 80
	bstrpick.d	$a1, $a1, 31, 0
	bstrpick.d	$a4, $a0, 31, 0
	add.d	$a1, $a1, $a4
	add.w	$a3, $s4, $a3
	sub.d	$s0, $a2, $a1
	bltu	$a0, $a3, .LBB5_31
# %bb.2:                                # %iter.check134
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $fp, 96
	add.d	$a1, $a0, $s3
	sub.d	$a2, $s3, $s0
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 176
	ld.w	$a1, $fp, 172
	sub.d	$a0, $a0, $s3
	ld.d	$a2, $fp, 152
	st.w	$a0, $fp, 176
	sub.w	$a0, $a1, $s3
	st.w	$a0, $fp, 172
	sub.d	$a2, $a2, $s3
	ld.wu	$a4, $fp, 132
	ld.d	$a5, $fp, 120
	ld.wu	$a1, $fp, 80
	st.d	$a2, $fp, 152
	addi.w	$a6, $a4, -1
	alsl.d	$a2, $a4, $a5, 1
	bgeu	$a6, $s6, .LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	move	$a6, $a4
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_4:                                # %vector.main.loop.iter.check136
                                        #   in Loop: Header=BB5_1 Depth=1
	bstrpick.d	$a3, $a6, 31, 0
	addi.d	$a3, $a3, 1
	vreplgr2vr.w	$vr0, $a1
	ori	$a7, $zero, 15
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	bgeu	$a6, $a7, .LBB5_9
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	move	$a7, $zero
.LBB5_6:                                # %vec.epilog.ph156
                                        #   in Loop: Header=BB5_1 Depth=1
	bstrpick.d	$a6, $a3, 32, 3
	slli.d	$t0, $a6, 3
	slli.d	$a6, $a6, 4
	sub.d	$a2, $a2, $a6
	sub.d	$a6, $a4, $t0
	sub.d	$t1, $a7, $t0
	slli.d	$a4, $a4, 1
	slli.d	$a7, $a7, 1
	sub.d	$a4, $a4, $a7
	add.d	$a4, $a5, $a4
	addi.d	$a4, $a4, -16
	.p2align	4, , 16
.LBB5_7:                                # %vec.epilog.vector.body165
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a4, 0
	vilvh.h	$vr2, $vr4, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vmax.wu	$vr1, $vr1, $vr0
	vsub.w	$vr1, $vr1, $vr0
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vpickev.h	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$t1, $t1, 8
	addi.d	$a4, $a4, -16
	bnez	$t1, .LBB5_7
# %bb.8:                                # %vec.epilog.middle.block173
                                        #   in Loop: Header=BB5_1 Depth=1
	bne	$a3, $t0, .LBB5_14
	b	.LBB5_16
.LBB5_9:                                # %vector.ph137
                                        #   in Loop: Header=BB5_1 Depth=1
	bstrpick.d	$a6, $a3, 32, 4
	slli.d	$a7, $a6, 4
	alsl.d	$a6, $a4, $a5, 1
	addi.d	$a6, $a6, -16
	move	$t0, $a7
	.p2align	4, , 16
.LBB5_10:                               # %vector.body142
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a6, 0
	vld	$vr2, $a6, -16
	vilvh.h	$vr3, $vr4, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vmax.wu	$vr1, $vr1, $vr0
	vsub.w	$vr1, $vr1, $vr0
	vmax.wu	$vr3, $vr3, $vr0
	vsub.w	$vr3, $vr3, $vr0
	vpickev.h	$vr1, $vr3, $vr1
	vst	$vr1, $a6, 0
	vilvh.h	$vr1, $vr4, $vr2
	vilvl.h	$vr2, $vr4, $vr2
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vmax.wu	$vr1, $vr1, $vr0
	vsub.w	$vr1, $vr1, $vr0
	vpickev.h	$vr1, $vr1, $vr2
	vst	$vr1, $a6, -16
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, -32
	bnez	$t0, .LBB5_10
# %bb.11:                               # %middle.block152
                                        #   in Loop: Header=BB5_1 Depth=1
	beq	$a3, $a7, .LBB5_16
# %bb.12:                               # %vec.epilog.iter.check157
                                        #   in Loop: Header=BB5_1 Depth=1
	andi	$a6, $a3, 8
	bnez	$a6, .LBB5_6
# %bb.13:                               #   in Loop: Header=BB5_1 Depth=1
	slli.d	$a3, $a7, 1
	sub.d	$a2, $a2, $a3
	sub.d	$a6, $a4, $a7
	.p2align	4, , 16
.LBB5_14:                               # %vec.epilog.scalar.ph155.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	addi.d	$a2, $a2, -2
	.p2align	4, , 16
.LBB5_15:                               # %vec.epilog.scalar.ph155
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a3, $a2, 0
	sub.d	$a4, $a3, $a1
	sltu	$a3, $a3, $a4
	masknez	$a3, $a4, $a3
	st.h	$a3, $a2, 0
	addi.w	$a6, $a6, -1
	addi.d	$a2, $a2, -2
	bnez	$a6, .LBB5_15
.LBB5_16:                               # %iter.check
                                        #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a4, $fp, 112
	addi.w	$a5, $a1, -1
	alsl.d	$a2, $a1, $a4, 1
	bgeu	$a5, $s6, .LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_1 Depth=1
	move	$a5, $a1
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_18:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB5_1 Depth=1
	bstrpick.d	$a3, $a5, 31, 0
	addi.d	$a3, $a3, 1
	ori	$a6, $zero, 15
	bgeu	$a5, $a6, .LBB5_23
# %bb.19:                               #   in Loop: Header=BB5_1 Depth=1
	move	$a6, $zero
.LBB5_20:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB5_1 Depth=1
	bstrpick.d	$a5, $a3, 32, 3
	slli.d	$a7, $a5, 3
	slli.d	$a5, $a5, 4
	sub.d	$a2, $a2, $a5
	sub.d	$a5, $a1, $a7
	vreplgr2vr.w	$vr0, $a1
	sub.d	$t0, $a6, $a7
	slli.d	$t1, $a1, 1
	slli.d	$a6, $a6, 1
	sub.d	$a6, $t1, $a6
	add.d	$a4, $a4, $a6
	addi.d	$a4, $a4, -16
	.p2align	4, , 16
.LBB5_21:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a4, 0
	vilvh.h	$vr2, $vr4, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vmax.wu	$vr1, $vr1, $vr0
	vsub.w	$vr1, $vr1, $vr0
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vpickev.h	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, -16
	bnez	$t0, .LBB5_21
# %bb.22:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB5_1 Depth=1
	bne	$a3, $a7, .LBB5_28
	b	.LBB5_30
.LBB5_23:                               # %vector.ph
                                        #   in Loop: Header=BB5_1 Depth=1
	bstrpick.d	$a5, $a3, 32, 4
	slli.d	$a6, $a5, 4
	vreplgr2vr.w	$vr0, $a1
	alsl.d	$a5, $a1, $a4, 1
	addi.d	$a5, $a5, -16
	move	$a7, $a6
	.p2align	4, , 16
.LBB5_24:                               # %vector.body
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a5, 0
	vld	$vr2, $a5, -16
	vilvh.h	$vr3, $vr4, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vmax.wu	$vr1, $vr1, $vr0
	vsub.w	$vr1, $vr1, $vr0
	vmax.wu	$vr3, $vr3, $vr0
	vsub.w	$vr3, $vr3, $vr0
	vpickev.h	$vr1, $vr3, $vr1
	vst	$vr1, $a5, 0
	vilvh.h	$vr1, $vr4, $vr2
	vilvl.h	$vr2, $vr4, $vr2
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vmax.wu	$vr1, $vr1, $vr0
	vsub.w	$vr1, $vr1, $vr0
	vpickev.h	$vr1, $vr1, $vr2
	vst	$vr1, $a5, -16
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, -32
	bnez	$a7, .LBB5_24
# %bb.25:                               # %middle.block
                                        #   in Loop: Header=BB5_1 Depth=1
	beq	$a3, $a6, .LBB5_30
# %bb.26:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB5_1 Depth=1
	andi	$a5, $a3, 8
	bnez	$a5, .LBB5_20
# %bb.27:                               #   in Loop: Header=BB5_1 Depth=1
	slli.d	$a3, $a6, 1
	sub.d	$a2, $a2, $a3
	sub.d	$a5, $a1, $a6
	.p2align	4, , 16
.LBB5_28:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	addi.d	$a2, $a2, -2
	.p2align	4, , 16
.LBB5_29:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a3, $a2, 0
	sub.d	$a4, $a3, $a1
	sltu	$a3, $a3, $a4
	masknez	$a3, $a4, $a3
	st.h	$a3, $a2, 0
	addi.w	$a5, $a5, -1
	addi.d	$a2, $a2, -2
	bnez	$a5, .LBB5_29
.LBB5_30:                               # %slide_hash.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	add.d	$s0, $s3, $s0
.LBB5_31:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$s8, $fp, 0
	ld.w	$a2, $s8, 8
	beqz	$a2, .LBB5_45
# %bb.32:                               #   in Loop: Header=BB5_1 Depth=1
	ld.wu	$a1, $fp, 180
	addi.w	$a3, $s0, 0
	sltu	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$s0, $a4, $a5
	beqz	$a3, .LBB5_39
# %bb.33:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a3, $fp, 96
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $a3, $a0
	add.d	$s2, $a0, $a1
	ld.d	$a1, $s8, 0
	sub.d	$a0, $a2, $s0
	st.w	$a0, $s8, 8
	bstrpick.d	$s1, $s0, 31, 0
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 56
	ld.w	$a0, $a0, 48
	beq	$a0, $s7, .LBB5_36
# %bb.34:                               #   in Loop: Header=BB5_1 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_38
# %bb.35:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $s8, 96
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	b	.LBB5_37
	.p2align	4, , 16
.LBB5_36:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $s8, 96
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
.LBB5_37:                               #   in Loop: Header=BB5_1 Depth=1
	st.d	$a0, $s8, 96
.LBB5_38:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a2, $s8, 16
	add.d	$a0, $a0, $s1
	ld.w	$a1, $fp, 180
	st.d	$a0, $s8, 0
	add.d	$a0, $a2, $s1
	st.d	$a0, $s8, 16
.LBB5_39:                               # %read_buf.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	ldx.w	$a0, $fp, $s5
	add.w	$a1, $a1, $s0
	add.w	$a2, $a0, $a1
	st.w	$a1, $fp, 180
	ori	$a3, $zero, 3
	bltu	$a2, $a3, .LBB5_43
# %bb.40:                               #   in Loop: Header=BB5_1 Depth=1
	ld.w	$a3, $fp, 172
	ld.d	$a2, $fp, 96
	sub.d	$a5, $a3, $a0
	addi.w	$a3, $a5, 0
	bstrpick.d	$a4, $a3, 31, 0
	ldx.bu	$a6, $a2, $a4
	st.w	$a6, $fp, 128
	ld.wu	$a4, $fp, 144
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	ldx.bu	$a7, $a2, $a5
	ld.w	$a5, $fp, 140
	sll.w	$a6, $a6, $a4
	xor	$a6, $a6, $a7
	and	$a6, $a6, $a5
	st.w	$a6, $fp, 128
	.p2align	4, , 16
.LBB5_41:                               #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_43
# %bb.42:                               #   in Loop: Header=BB5_41 Depth=2
	addi.d	$a7, $a3, 2
	bstrpick.d	$a7, $a7, 31, 0
	ldx.bu	$a7, $a2, $a7
	sll.w	$a6, $a6, $a4
	xor	$a6, $a6, $a7
	and	$a6, $a6, $a5
	st.w	$a6, $fp, 128
	ld.d	$a7, $fp, 120
	bstrpick.d	$t0, $a6, 31, 0
	ld.w	$t1, $fp, 88
	slli.d	$t0, $t0, 1
	ldx.h	$t2, $a7, $t0
	ld.d	$t3, $fp, 112
	and	$t1, $t1, $a3
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t1, $t1, 1
	stx.h	$t2, $t3, $t1
	stx.h	$a3, $a7, $t0
	addi.w	$a3, $a3, 1
	addi.w	$a0, $a0, -1
	add.w	$a7, $a1, $a0
	stptr.w	$a0, $fp, 5932
	bltu	$s7, $a7, .LBB5_41
.LBB5_43:                               # %.loopexit
                                        #   in Loop: Header=BB5_1 Depth=1
	ori	$a0, $zero, 261
	bltu	$a0, $a1, .LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_1 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB5_1
.LBB5_45:                               # %.critedge
	ldptr.d	$a0, $fp, 5944
	ld.d	$a1, $fp, 104
	bgeu	$a0, $a1, .LBB5_51
# %bb.46:
	ld.wu	$a2, $fp, 172
	ld.wu	$a3, $fp, 180
	add.d	$s1, $a3, $a2
	bgeu	$a0, $s1, .LBB5_48
# %bb.47:
	sub.d	$a0, $a1, $s1
	sltui	$a1, $a0, 258
	maskeqz	$a0, $a0, $a1
	ld.d	$a2, $fp, 96
	ori	$a3, $zero, 258
	masknez	$a1, $a3, $a1
	or	$s0, $a0, $a1
	add.d	$a0, $a2, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $s1
	b	.LBB5_50
.LBB5_48:
	addi.d	$a2, $s1, 258
	bgeu	$a0, $a2, .LBB5_51
# %bb.49:
	sub.d	$a2, $a2, $a0
	sub.d	$a1, $a1, $a0
	sltu	$a3, $a2, $a1
	ld.d	$a4, $fp, 96
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$s0, $a2, $a1
	add.d	$a0, $a4, $a0
	bstrpick.d	$a2, $s0, 31, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 5944
	add.d	$a0, $a0, $s0
.LBB5_50:                               # %.sink.split
	stptr.d	$a0, $fp, 5944
.LBB5_51:
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
.Lfunc_end5:
	.size	fill_window, .Lfunc_end5-fill_window
                                        # -- End function
	.globl	deflateGetDictionary            # -- Begin function deflateGetDictionary
	.p2align	5
	.type	deflateGetDictionary,@function
deflateGetDictionary:                   # @deflateGetDictionary
# %bb.0:
	move	$a3, $a0
	addi.w	$a0, $zero, -2
	beqz	$a3, .LBB6_13
# %bb.1:
	ld.d	$a4, $a3, 64
	beqz	$a4, .LBB6_13
# %bb.2:
	ld.d	$a4, $a3, 72
	beqz	$a4, .LBB6_13
# %bb.3:
	ld.d	$a4, $a3, 56
	beqz	$a4, .LBB6_13
# %bb.4:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a5, $a4, 0
	bne	$a5, $a3, .LBB6_12
# %bb.5:
	ld.w	$a3, $a4, 8
	addi.d	$a5, $a3, -57
	ori	$a6, $zero, 56
	bltu	$a6, $a5, .LBB6_14
# %bb.6:
	ori	$a6, $zero, 1
	sll.d	$a5, $a6, $a5
	lu12i.w	$a6, 17
	ori	$a6, $a6, 1
	lu32i.d	$a6, 16388
	lu52i.d	$a6, $a6, 16
	and	$a5, $a5, $a6
	beqz	$a5, .LBB6_14
.LBB6_7:                                # %deflateStateCheck.exit
	ld.wu	$a0, $a4, 172
	ld.wu	$a3, $a4, 180
	ld.w	$a5, $a4, 80
	add.w	$a6, $a3, $a0
	sltu	$a7, $a6, $a5
	maskeqz	$a6, $a6, $a7
	masknez	$a5, $a5, $a7
	or	$fp, $a6, $a5
	beqz	$a1, .LBB6_10
# %bb.8:                                # %deflateStateCheck.exit
	beqz	$fp, .LBB6_10
# %bb.9:
	ld.d	$a4, $a4, 96
	add.d	$a0, $a4, $a0
	add.d	$a0, $a0, $a3
	bstrpick.d	$a3, $fp, 31, 0
	sub.d	$a4, $a0, $a3
	move	$a0, $a1
	move	$a1, $a4
	move	$s0, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a2, $s0
.LBB6_10:
	move	$a0, $zero
	beqz	$a2, .LBB6_12
# %bb.11:
	st.w	$fp, $a2, 0
.LBB6_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB6_13:                               # %deflateStateCheck.exit.thread
	ret
.LBB6_14:
	ori	$a5, $zero, 666
	beq	$a3, $a5, .LBB6_7
# %bb.15:
	ori	$a5, $zero, 42
	beq	$a3, $a5, .LBB6_7
	b	.LBB6_12
.Lfunc_end6:
	.size	deflateGetDictionary, .Lfunc_end6-deflateGetDictionary
                                        # -- End function
	.globl	deflateResetKeep                # -- Begin function deflateResetKeep
	.p2align	5
	.type	deflateResetKeep,@function
deflateResetKeep:                       # @deflateResetKeep
# %bb.0:
	addi.w	$a1, $zero, -2
	beqz	$a0, .LBB7_14
# %bb.1:
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB7_14
# %bb.2:
	ld.d	$a2, $a0, 72
	beqz	$a2, .LBB7_14
# %bb.3:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 56
	beqz	$fp, .LBB7_13
# %bb.4:
	ld.d	$a2, $fp, 0
	bne	$a2, $a0, .LBB7_13
# %bb.5:
	ld.w	$a2, $fp, 8
	addi.d	$a3, $a2, -57
	ori	$a4, $zero, 56
	bltu	$a4, $a3, .LBB7_15
# %bb.6:
	ori	$a4, $zero, 1
	sll.d	$a3, $a4, $a3
	lu12i.w	$a4, 17
	ori	$a4, $a4, 1
	lu32i.d	$a4, 16388
	lu52i.d	$a4, $a4, 16
	and	$a3, $a3, $a4
	beqz	$a3, .LBB7_15
.LBB7_7:                                # %deflateStateCheck.exit
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	ld.d	$a3, $fp, 16
	ld.w	$a1, $fp, 48
	ori	$a2, $zero, 2
	st.w	$a2, $a0, 88
	st.d	$zero, $fp, 40
	st.d	$a3, $fp, 32
	bgez	$a1, .LBB7_9
# %bb.8:
	sub.w	$a1, $zero, $a1
	st.w	$a1, $fp, 48
.LBB7_9:
	move	$s0, $a0
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	sltui	$a3, $a1, 1
	ori	$a4, $zero, 42
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 113
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 57
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	st.w	$a0, $fp, 8
	move	$a0, $zero
	bne	$a1, $a2, .LBB7_11
# %bb.10:
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	b	.LBB7_12
.LBB7_11:
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
.LBB7_12:
	st.d	$a0, $s0, 96
	st.w	$zero, $fp, 76
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_init)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB7_13:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB7_14:                               # %deflateStateCheck.exit.thread
	move	$a0, $a1
	ret
.LBB7_15:
	ori	$a3, $zero, 666
	beq	$a2, $a3, .LBB7_7
# %bb.16:
	ori	$a3, $zero, 42
	beq	$a2, $a3, .LBB7_7
	b	.LBB7_13
.Lfunc_end7:
	.size	deflateResetKeep, .Lfunc_end7-deflateResetKeep
                                        # -- End function
	.globl	deflateSetHeader                # -- Begin function deflateSetHeader
	.p2align	5
	.type	deflateSetHeader,@function
deflateSetHeader:                       # @deflateSetHeader
# %bb.0:
	move	$a2, $a0
	addi.w	$a0, $zero, -2
	beqz	$a2, .LBB8_5
# %bb.1:
	ld.d	$a3, $a2, 64
	beqz	$a3, .LBB8_5
# %bb.2:
	ld.d	$a3, $a2, 72
	beqz	$a3, .LBB8_5
# %bb.3:
	ld.d	$a3, $a2, 56
	beqz	$a3, .LBB8_5
# %bb.4:
	ld.d	$a4, $a3, 0
	beq	$a4, $a2, .LBB8_6
.LBB8_5:                                # %deflateStateCheck.exit.thread
	ret
.LBB8_6:
	ld.w	$a2, $a3, 8
	addi.d	$a4, $a2, -57
	ori	$a5, $zero, 56
	bltu	$a5, $a4, .LBB8_10
# %bb.7:
	ori	$a5, $zero, 1
	sll.d	$a4, $a5, $a4
	lu12i.w	$a5, 17
	ori	$a5, $a5, 1
	lu32i.d	$a5, 16388
	lu52i.d	$a5, $a5, 16
	and	$a4, $a4, $a5
	beqz	$a4, .LBB8_10
.LBB8_8:                                # %deflateStateCheck.exit
	ld.w	$a2, $a3, 48
	ori	$a4, $zero, 2
	bne	$a2, $a4, .LBB8_5
# %bb.9:
	move	$a0, $zero
	st.d	$a1, $a3, 56
	ret
.LBB8_10:
	ori	$a4, $zero, 666
	beq	$a2, $a4, .LBB8_8
# %bb.11:
	ori	$a4, $zero, 42
	bne	$a2, $a4, .LBB8_5
	b	.LBB8_8
.Lfunc_end8:
	.size	deflateSetHeader, .Lfunc_end8-deflateSetHeader
                                        # -- End function
	.globl	deflatePending                  # -- Begin function deflatePending
	.p2align	5
	.type	deflatePending,@function
deflatePending:                         # @deflatePending
# %bb.0:
	move	$a3, $a0
	addi.w	$a0, $zero, -2
	beqz	$a3, .LBB9_5
# %bb.1:
	ld.d	$a4, $a3, 64
	beqz	$a4, .LBB9_5
# %bb.2:
	ld.d	$a4, $a3, 72
	beqz	$a4, .LBB9_5
# %bb.3:
	ld.d	$a4, $a3, 56
	beqz	$a4, .LBB9_5
# %bb.4:
	ld.d	$a5, $a4, 0
	beq	$a5, $a3, .LBB9_6
.LBB9_5:                                # %deflateStateCheck.exit.thread
	ret
.LBB9_6:
	ld.w	$a3, $a4, 8
	addi.d	$a5, $a3, -57
	ori	$a6, $zero, 56
	bltu	$a6, $a5, .LBB9_12
# %bb.7:
	ori	$a6, $zero, 1
	sll.d	$a5, $a6, $a5
	lu12i.w	$a6, 17
	ori	$a6, $a6, 1
	lu32i.d	$a6, 16388
	lu52i.d	$a6, $a6, 16
	and	$a5, $a5, $a6
	beqz	$a5, .LBB9_12
.LBB9_8:                                # %deflateStateCheck.exit
	beqz	$a1, .LBB9_10
# %bb.9:
	ld.d	$a0, $a4, 40
	st.w	$a0, $a1, 0
.LBB9_10:
	beqz	$a2, .LBB9_14
# %bb.11:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1844
	ldx.w	$a1, $a4, $a0
	move	$a0, $zero
	st.w	$a1, $a2, 0
	ret
.LBB9_12:
	ori	$a5, $zero, 666
	beq	$a3, $a5, .LBB9_8
# %bb.13:
	ori	$a5, $zero, 42
	bne	$a3, $a5, .LBB9_5
	b	.LBB9_8
.LBB9_14:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	deflatePending, .Lfunc_end9-deflatePending
                                        # -- End function
	.globl	deflatePrime                    # -- Begin function deflatePrime
	.p2align	5
	.type	deflatePrime,@function
deflatePrime:                           # @deflatePrime
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB10_11
# %bb.1:
	move	$fp, $a2
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB10_11
# %bb.2:
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB10_11
# %bb.3:
	ld.d	$s1, $a1, 56
	beqz	$s1, .LBB10_11
# %bb.4:
	ld.d	$a2, $s1, 0
	bne	$a2, $a1, .LBB10_11
# %bb.5:
	ld.w	$a1, $s1, 8
	addi.d	$a2, $a1, -57
	ori	$a3, $zero, 56
	bltu	$a3, $a2, .LBB10_12
# %bb.6:
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	lu12i.w	$a3, 17
	ori	$a3, $a3, 1
	lu32i.d	$a3, 16388
	lu52i.d	$a3, $a3, 16
	and	$a2, $a2, $a3
	beqz	$a2, .LBB10_12
.LBB10_7:                               # %deflateStateCheck.exit
	ld.d	$a0, $s1, 32
	ldptr.d	$a1, $s1, 5904
	addi.d	$a0, $a0, 2
	bgeu	$a1, $a0, .LBB10_9
# %bb.8:
	addi.w	$a0, $zero, -5
	b	.LBB10_11
.LBB10_9:                               # %.preheader
	lu12i.w	$a0, 1
	ori	$s2, $a0, 1844
	ori	$s3, $zero, 16
	addi.d	$s4, $zero, -1
	ori	$s5, $a0, 1840
	.p2align	4, , 16
.LBB10_10:                              # =>This Inner Loop Header: Depth=1
	ldx.wu	$a0, $s1, $s2
	sub.w	$a1, $s3, $a0
	slt	$a2, $a1, $s0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s0, $a2
	or	$s6, $a1, $a2
	ldx.h	$a1, $s1, $s5
	sll.w	$a2, $s4, $s6
	andn	$a2, $fp, $a2
	sll.w	$a2, $a2, $a0
	or	$a1, $a1, $a2
	stx.h	$a1, $s1, $s5
	add.d	$a0, $s6, $a0
	stptr.w	$a0, $s1, 5940
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	sub.w	$s0, $s0, $s6
	sra.w	$fp, $fp, $s6
	bnez	$s0, .LBB10_10
.LBB10_11:                              # %deflateStateCheck.exit.thread
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB10_12:
	ori	$a2, $zero, 666
	beq	$a1, $a2, .LBB10_7
# %bb.13:
	ori	$a2, $zero, 42
	beq	$a1, $a2, .LBB10_7
	b	.LBB10_11
.Lfunc_end10:
	.size	deflatePrime, .Lfunc_end10-deflatePrime
                                        # -- End function
	.globl	deflateParams                   # -- Begin function deflateParams
	.p2align	5
	.type	deflateParams,@function
deflateParams:                          # @deflateParams
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	addi.w	$a0, $zero, -2
	beqz	$s0, .LBB11_5
# %bb.1:
	ld.d	$a4, $s0, 64
	beqz	$a4, .LBB11_5
# %bb.2:
	ld.d	$a4, $s0, 72
	beqz	$a4, .LBB11_5
# %bb.3:
	ld.d	$fp, $s0, 56
	beqz	$fp, .LBB11_5
# %bb.4:
	ld.d	$a4, $fp, 0
	beq	$a4, $s0, .LBB11_6
.LBB11_5:                               # %deflateStateCheck.exit.thread
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_6:
	ld.w	$a4, $fp, 8
	addi.d	$a5, $a4, -57
	ori	$a6, $zero, 56
	bltu	$a6, $a5, .LBB11_20
# %bb.7:
	ori	$a6, $zero, 1
	sll.d	$a5, $a6, $a5
	lu12i.w	$a6, 17
	ori	$a6, $a6, 1
	lu32i.d	$a6, 16388
	lu52i.d	$a6, $a6, 16
	and	$a5, $a5, $a6
	beqz	$a5, .LBB11_20
.LBB11_8:                               # %deflateStateCheck.exit
	ori	$a4, $zero, 4
	bltu	$a4, $a2, .LBB11_5
# %bb.9:                                # %deflateStateCheck.exit
	addi.d	$a4, $a1, 1
	sltui	$a4, $a4, 1
	masknez	$a1, $a1, $a4
	ori	$a5, $zero, 6
	maskeqz	$a4, $a5, $a4
	or	$s1, $a4, $a1
	ori	$a1, $zero, 9
	bltu	$a1, $s1, .LBB11_5
# %bb.10:
	ld.w	$a0, $fp, 200
	bne	$a2, $a0, .LBB11_12
# %bb.11:
	ld.w	$a0, $fp, 196
	pcalau12i	$a1, %pc_hi20(configuration_table)
	addi.d	$a1, $a1, %pc_lo12(configuration_table)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	alsl.d	$a1, $s1, $a1, 4
	ld.d	$a1, $a1, 8
	beq	$a0, $a1, .LBB11_15
.LBB11_12:
	ldptr.d	$a0, $fp, 5944
	beqz	$a0, .LBB11_15
# %bb.13:
	ori	$a1, $zero, 5
	move	$a0, $s0
	move	$s2, $a2
	pcaddu18i	$ra, %call36(deflate)
	jirl	$ra, $ra, 0
	addi.w	$a3, $zero, -2
	move	$a1, $a0
	move	$a0, $a3
	beq	$a1, $a3, .LBB11_5
# %bb.14:
	move	$a2, $s2
	ld.w	$a0, $s0, 32
	beqz	$a0, .LBB11_22
.LBB11_15:
	ld.w	$a0, $fp, 196
	beq	$a0, $s1, .LBB11_26
# %bb.16:
	bnez	$a0, .LBB11_25
# %bb.17:
	ldptr.w	$a0, $fp, 5928
	beqz	$a0, .LBB11_25
# %bb.18:
	move	$s0, $a2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_23
# %bb.19:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(slide_hash)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 132
	ld.d	$a0, $fp, 120
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	b	.LBB11_24
.LBB11_20:
	ori	$a5, $zero, 666
	beq	$a4, $a5, .LBB11_8
# %bb.21:
	ori	$a5, $zero, 42
	bne	$a4, $a5, .LBB11_5
	b	.LBB11_8
.LBB11_22:
	addi.w	$a0, $zero, -5
	b	.LBB11_5
.LBB11_23:
	ld.w	$a1, $fp, 132
	ld.d	$a0, $fp, 120
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 1
	stx.h	$zero, $a0, $a2
.LBB11_24:
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $fp, 5928
	move	$a2, $s0
.LBB11_25:
	st.w	$s1, $fp, 196
	pcalau12i	$a0, %pc_hi20(configuration_table)
	addi.d	$a0, $a0, %pc_lo12(configuration_table)
	alsl.d	$a1, $s1, $a0, 4
	slli.d	$a3, $s1, 4
	ld.hu	$a4, $a1, 2
	ldx.hu	$a0, $a0, $a3
	ld.hu	$a3, $a1, 4
	ld.hu	$a1, $a1, 6
	st.w	$a4, $fp, 192
	st.w	$a0, $fp, 204
	st.w	$a3, $fp, 208
	st.w	$a1, $fp, 188
.LBB11_26:
	move	$a0, $zero
	st.w	$a2, $fp, 200
	b	.LBB11_5
.Lfunc_end11:
	.size	deflateParams, .Lfunc_end11-deflateParams
                                        # -- End function
	.globl	deflate                         # -- Begin function deflate
	.p2align	5
	.type	deflate,@function
deflate:                                # @deflate
# %bb.0:
	addi.w	$a2, $zero, -2
	beqz	$a0, .LBB12_145
# %bb.1:
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB12_145
# %bb.2:
	ld.d	$a3, $a0, 72
	beqz	$a3, .LBB12_145
# %bb.3:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 56
	beqz	$fp, .LBB12_144
# %bb.4:
	ld.d	$a3, $fp, 0
	bne	$a3, $a0, .LBB12_144
# %bb.5:
	ld.w	$a3, $fp, 8
	addi.d	$a4, $a3, -57
	ori	$a5, $zero, 56
	bltu	$a5, $a4, .LBB12_14
# %bb.6:
	ori	$a5, $zero, 1
	sll.d	$a4, $a5, $a4
	lu12i.w	$a5, 17
	ori	$a5, $a5, 1
	lu32i.d	$a5, 16388
	lu52i.d	$a5, $a5, 16
	and	$a4, $a4, $a5
	beqz	$a4, .LBB12_14
.LBB12_7:                               # %deflateStateCheck.exit
	ori	$a4, $zero, 5
	bltu	$a4, $a1, .LBB12_144
# %bb.8:
	ld.d	$a4, $a0, 24
	beqz	$a4, .LBB12_13
# %bb.9:
	ld.w	$a4, $a0, 8
	beqz	$a4, .LBB12_11
# %bb.10:
	ld.d	$a5, $a0, 0
	beqz	$a5, .LBB12_13
.LBB12_11:
	ori	$a5, $zero, 4
	beq	$a1, $a5, .LBB12_16
# %bb.12:
	ori	$a5, $zero, 666
	bne	$a3, $a5, .LBB12_16
.LBB12_13:
	pcalau12i	$a1, %got_pc_hi20(z_errmsg)
	ld.d	$a1, $a1, %got_pc_lo12(z_errmsg)
	ld.d	$a1, $a1, 32
	st.d	$a1, $a0, 48
	b	.LBB12_144
.LBB12_14:
	ori	$a4, $zero, 666
	beq	$a3, $a4, .LBB12_7
# %bb.15:
	ori	$a4, $zero, 42
	beq	$a3, $a4, .LBB12_7
	b	.LBB12_144
.LBB12_16:
	ld.w	$a2, $a0, 32
	beqz	$a2, .LBB12_46
# %bb.17:
	ld.d	$a2, $fp, 40
	ld.w	$a5, $fp, 76
	st.w	$a1, $fp, 76
	move	$s0, $a0
	move	$s4, $a1
	beqz	$a2, .LBB12_23
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a2, $fp, 40
	ld.w	$a1, $s0, 32
	addi.w	$a3, $a2, 0
	sltu	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a1, $a4
	or	$s2, $a4, $a3
	beqz	$s2, .LBB12_21
# %bb.19:
	ld.d	$a0, $a0, 24
	ld.d	$a1, $fp, 32
	bstrpick.d	$s1, $s2, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $s0, 24
	ld.d	$a2, $fp, 32
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 24
	ld.d	$a1, $s0, 40
	add.d	$a2, $a2, $s1
	st.d	$a2, $fp, 32
	ld.w	$a2, $s0, 32
	add.d	$a1, $a1, $s1
	ld.d	$a3, $fp, 40
	st.d	$a1, $s0, 40
	sub.w	$a1, $a2, $s2
	st.w	$a1, $s0, 32
	sub.d	$a2, $a3, $s1
	st.d	$a2, $fp, 40
	bne	$a3, $s1, .LBB12_21
# %bb.20:
	ld.d	$a3, $fp, 16
	move	$a2, $zero
	st.d	$a3, $fp, 32
.LBB12_21:                              # %flush_pending.exit
	beqz	$a1, .LBB12_143
# %bb.22:                               # %flush_pending.exit._crit_edge
	ld.w	$a3, $fp, 8
	move	$a1, $s4
	b	.LBB12_25
.LBB12_23:
	beqz	$a4, .LBB12_44
# %bb.24:
	move	$a2, $zero
.LBB12_25:
	ori	$a4, $zero, 42
	beq	$a3, $a4, .LBB12_28
# %bb.26:
	ori	$a2, $zero, 666
	bne	$a3, $a2, .LBB12_35
# %bb.27:
	ld.w	$a2, $a0, 8
	bnez	$a2, .LBB12_46
	b	.LBB12_117
.LBB12_28:
	ld.w	$a1, $fp, 84
	slli.d	$a1, $a1, 12
	ld.w	$a3, $fp, 200
	lu12i.w	$a4, -8
	ori	$a4, $a4, 2048
	ori	$a5, $zero, 1
	add.w	$a1, $a1, $a4
	blt	$a5, $a3, .LBB12_30
# %bb.29:
	ld.w	$a4, $fp, 196
	ori	$a3, $zero, 2
	bge	$a4, $a3, .LBB12_122
.LBB12_30:
	move	$a3, $zero
.LBB12_31:
	ld.w	$a4, $fp, 172
	or	$a1, $a3, $a1
	sltui	$a3, $a4, 1
	ori	$a4, $a1, 32
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	bstrpick.d	$a3, $a1, 31, 0
	lu12i.w	$a4, 33825
	ori	$a4, $a4, 133
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	sub.d	$a4, $a1, $a3
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 4
	slli.d	$a4, $a3, 5
	sub.d	$a3, $a3, $a4
	add.d	$a3, $a1, $a3
	ld.d	$a4, $fp, 16
	addi.d	$a5, $a2, 1
	st.d	$a5, $fp, 40
	srli.d	$a5, $a1, 8
	stx.b	$a5, $a4, $a2
	ld.d	$a2, $fp, 40
	or	$a1, $a3, $a1
	ld.d	$a3, $fp, 16
	xori	$a1, $a1, 31
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.w	$a1, $fp, 172
	beqz	$a1, .LBB12_33
# %bb.32:
	ld.d	$a1, $a0, 96
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a4, $a1, 24
	addi.d	$a5, $a2, 1
	st.d	$a5, $fp, 40
	stx.b	$a4, $a3, $a2
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $a0, 96
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a4, $a1, 8
	addi.d	$a5, $a2, 1
	st.d	$a5, $fp, 40
	stx.b	$a4, $a3, $a2
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
.LBB12_33:
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 96
	ori	$a0, $zero, 113
	st.w	$a0, $fp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(flush_pending)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB12_143
# %bb.34:                               # %..critedgethread-pre-split_crit_edge
	ld.w	$a3, $fp, 8
	move	$a0, $s0
	move	$a1, $s4
.LBB12_35:                              # %.critedge
	ori	$a2, $zero, 57
	bne	$a3, $a2, .LBB12_51
# %bb.36:
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 40
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 96
	ld.d	$a1, $fp, 16
	addi.d	$a3, $a2, 1
	st.d	$a3, $fp, 40
	ori	$a3, $zero, 31
	stx.b	$a3, $a1, $a2
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	ori	$a3, $zero, 139
	stx.b	$a3, $a2, $a1
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	ori	$a3, $zero, 8
	stx.b	$a3, $a2, $a1
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB12_47
# %bb.37:
	ld.w	$a2, $a1, 0
	ld.w	$a3, $a1, 68
	sltu	$a2, $zero, $a2
	ld.d	$a4, $a1, 24
	sltu	$a3, $zero, $a3
	slli.d	$a3, $a3, 1
	or	$a2, $a3, $a2
	sltu	$a3, $zero, $a4
	ld.d	$a4, $a1, 40
	slli.d	$a3, $a3, 2
	or	$a2, $a2, $a3
	ld.d	$a1, $a1, 56
	sltu	$a3, $zero, $a4
	slli.d	$a3, $a3, 3
	or	$a2, $a2, $a3
	sltu	$a1, $zero, $a1
	ld.d	$a3, $fp, 40
	slli.d	$a1, $a1, 4
	ld.d	$a4, $fp, 16
	or	$a1, $a2, $a1
	addi.d	$a2, $a3, 1
	st.d	$a2, $fp, 40
	stx.b	$a1, $a4, $a3
	ld.d	$a1, $fp, 56
	ld.d	$a2, $fp, 40
	ld.d	$a1, $a1, 8
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 56
	ld.d	$a1, $a1, 8
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 8
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 56
	ld.d	$a1, $a1, 8
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 56
	ld.d	$a1, $a1, 8
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 24
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.w	$a2, $fp, 196
	ori	$a3, $zero, 9
	ori	$a1, $zero, 2
	beq	$a2, $a3, .LBB12_39
# %bb.38:
	ld.w	$a1, $fp, 200
	ori	$a3, $zero, 1
	slt	$a1, $a3, $a1
	slti	$a2, $a2, 2
	or	$a1, $a2, $a1
	slli.d	$a1, $a1, 2
.LBB12_39:
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 56
	ld.d	$a2, $fp, 40
	ld.b	$a1, $a1, 20
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 56
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB12_41
# %bb.40:
	ld.d	$a2, $fp, 40
	ld.b	$a1, $a1, 32
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 56
	ld.d	$a2, $fp, 40
	ld.b	$a1, $a1, 33
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 56
.LBB12_41:
	ld.w	$a1, $a1, 68
	beqz	$a1, .LBB12_43
# %bb.42:
	ld.d	$a0, $a0, 96
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 40
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 96
.LBB12_43:                              # %.thread444
	st.d	$zero, $fp, 64
	ori	$a1, $zero, 69
	st.w	$a1, $fp, 8
	b	.LBB12_53
.LBB12_44:
	ori	$a4, $zero, 4
	move	$a2, $zero
	beq	$a1, $a4, .LBB12_25
# %bb.45:
	addi.d	$a6, $a1, -5
	sltui	$a6, $a6, 1
	addi.d	$a7, $zero, -9
	maskeqz	$a6, $a7, $a6
	alsl.w	$a6, $a1, $a6, 1
	slt	$a4, $a4, $a5
	maskeqz	$a4, $a7, $a4
	alsl.w	$a4, $a5, $a4, 1
	blt	$a4, $a6, .LBB12_25
.LBB12_46:
	pcalau12i	$a1, %got_pc_hi20(z_errmsg)
	ld.d	$a1, $a1, %got_pc_lo12(z_errmsg)
	ld.d	$a1, $a1, 56
	st.d	$a1, $a0, 48
	addi.w	$a2, $zero, -5
	b	.LBB12_144
.LBB12_47:
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	stx.b	$zero, $a2, $a1
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	stx.b	$zero, $a2, $a1
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	stx.b	$zero, $a2, $a1
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	stx.b	$zero, $a2, $a1
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	stx.b	$zero, $a2, $a1
	ld.w	$a2, $fp, 196
	ori	$a3, $zero, 9
	ori	$a1, $zero, 2
	beq	$a2, $a3, .LBB12_49
# %bb.48:
	ld.w	$a1, $fp, 200
	ori	$a3, $zero, 1
	slt	$a1, $a3, $a1
	slti	$a2, $a2, 2
	or	$a1, $a2, $a1
	slli.d	$a1, $a1, 2
.LBB12_49:
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	ori	$a3, $zero, 3
	stx.b	$a3, $a2, $a1
	ori	$a1, $zero, 113
	st.w	$a1, $fp, 8
	pcaddu18i	$ra, %call36(flush_pending)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB12_143
# %bb.50:                               # %._crit_edge471
	ld.w	$a3, $fp, 8
	move	$a0, $s0
	move	$a1, $s4
.LBB12_51:
	addi.d	$a2, $a3, -69
	ori	$a3, $zero, 34
	bltu	$a3, $a2, .LBB12_116
# %bb.52:
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI12_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI12_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB12_53:
	ld.d	$a2, $fp, 56
	ld.d	$a1, $a2, 24
	beqz	$a1, .LBB12_76
# %bb.54:
	ld.hu	$a3, $a2, 32
	ld.d	$a2, $fp, 64
	ld.d	$s1, $fp, 40
	ld.d	$a0, $fp, 24
	sub.w	$s3, $a3, $a2
	bstrpick.d	$s2, $s3, 31, 0
	add.d	$a3, $s1, $s2
	bgeu	$a0, $a3, .LBB12_72
# %bb.55:                               # %.lr.ph
	ld.d	$a3, $fp, 16
	sub.d	$s5, $a0, $s1
	add.d	$a0, $a3, $s1
	add.d	$a1, $a1, $a2
	bstrpick.d	$s2, $s5, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	ld.d	$a0, $fp, 56
	ld.d	$a2, $fp, 24
	ld.w	$a0, $a0, 68
	st.d	$a2, $fp, 40
	beqz	$a0, .LBB12_58
# %bb.56:                               # %.lr.ph
	bgeu	$s1, $a2, .LBB12_58
# %bb.57:
	ld.d	$a3, $fp, 16
	ld.d	$a0, $a1, 96
	add.d	$a1, $a3, $s1
	sub.w	$a2, $a2, $s1
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	st.d	$a0, $s0, 96
.LBB12_58:
	ld.d	$a0, $fp, 64
	ld.d	$s1, $a1, 56
	add.d	$a0, $a0, $s2
	st.d	$a0, $fp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 40
	ld.w	$a2, $s0, 32
	sltu	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$s6, $a2, $a1
	beqz	$s6, .LBB12_61
# %bb.59:
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s6, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s1, 32
	add.d	$a1, $a1, $s2
	st.d	$a1, $s0, 24
	ld.d	$a1, $s0, 40
	add.d	$a2, $a2, $s2
	st.d	$a2, $s1, 32
	ld.w	$a2, $s0, 32
	add.d	$a1, $a1, $s2
	ld.d	$a3, $s1, 40
	st.d	$a1, $s0, 40
	sub.d	$a1, $a2, $s6
	st.w	$a1, $s0, 32
	sub.d	$a0, $a3, $s2
	st.d	$a0, $s1, 40
	bne	$a3, $s2, .LBB12_61
# %bb.60:
	ld.d	$a0, $s1, 16
	st.d	$a0, $s1, 32
.LBB12_61:                              # %flush_pending.exit435.peel
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB12_143
# %bb.62:
	ld.d	$s1, $fp, 24
	sub.w	$s5, $s3, $s5
	bstrpick.d	$s2, $s5, 31, 0
	bgeu	$s1, $s2, .LBB12_71
.LBB12_63:                              # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ld.d	$a1, $a0, 24
	ld.d	$a2, $fp, 64
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a2, $fp, 24
	ld.w	$a0, $a0, 68
	st.d	$a2, $fp, 40
	move	$a1, $s0
	beqz	$a0, .LBB12_66
# %bb.64:                               # %.peel.next
                                        #   in Loop: Header=BB12_63 Depth=1
	beqz	$a2, .LBB12_66
# %bb.65:                               #   in Loop: Header=BB12_63 Depth=1
	ld.d	$a0, $a1, 96
	ld.d	$a1, $fp, 16
	addi.w	$a2, $a2, 0
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	st.d	$a0, $s0, 96
.LBB12_66:                              #   in Loop: Header=BB12_63 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$s2, $a1, 56
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 40
	ld.w	$a2, $s0, 32
	sltu	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$s6, $a2, $a1
	beqz	$s6, .LBB12_69
# %bb.67:                               #   in Loop: Header=BB12_63 Depth=1
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s2, 32
	bstrpick.d	$s3, $s6, 31, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s2, 32
	add.d	$a1, $a1, $s3
	st.d	$a1, $s0, 24
	ld.d	$a1, $s0, 40
	add.d	$a2, $a2, $s3
	st.d	$a2, $s2, 32
	ld.w	$a2, $s0, 32
	add.d	$a1, $a1, $s3
	ld.d	$a3, $s2, 40
	st.d	$a1, $s0, 40
	sub.d	$a1, $a2, $s6
	st.w	$a1, $s0, 32
	sub.d	$a0, $a3, $s3
	st.d	$a0, $s2, 40
	bne	$a3, $s3, .LBB12_69
# %bb.68:                               #   in Loop: Header=BB12_63 Depth=1
	ld.d	$a0, $s2, 16
	st.d	$a0, $s2, 32
.LBB12_69:                              # %flush_pending.exit435
                                        #   in Loop: Header=BB12_63 Depth=1
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB12_143
# %bb.70:                               #   in Loop: Header=BB12_63 Depth=1
	sub.w	$s5, $s5, $s1
	ld.d	$s1, $fp, 24
	bstrpick.d	$s2, $s5, 31, 0
	bltu	$s1, $s2, .LBB12_63
.LBB12_71:                              # %._crit_edge.loopexit
	ld.d	$a0, $fp, 56
	ld.d	$a1, $a0, 24
	ld.d	$a2, $fp, 64
	move	$s1, $zero
.LBB12_72:                              # %._crit_edge
	ld.d	$a0, $fp, 16
	add.d	$a0, $a0, $s1
	add.d	$a1, $a1, $a2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 40
	ld.w	$a3, $a0, 68
	add.d	$a2, $a1, $s2
	st.d	$a2, $fp, 40
	move	$a0, $s0
	beqz	$a3, .LBB12_75
# %bb.73:                               # %._crit_edge
	bgeu	$s1, $a2, .LBB12_75
# %bb.74:
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, 96
	add.d	$a1, $a1, $s1
	sub.w	$a2, $a2, $s1
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 96
.LBB12_75:
	st.d	$zero, $fp, 64
.LBB12_76:                              # %.thread449
	ori	$a1, $zero, 73
	st.w	$a1, $fp, 8
.LBB12_77:
	ld.d	$a1, $fp, 56
	ld.d	$a1, $a1, 40
	beqz	$a1, .LBB12_93
# %bb.78:
	ld.d	$a2, $fp, 40
	b	.LBB12_80
.LBB12_79:                              #   in Loop: Header=BB12_80 Depth=1
	ld.d	$a4, $fp, 64
	ld.d	$a1, $a1, 40
	addi.d	$a5, $a4, 1
	st.d	$a5, $fp, 64
	ldx.bu	$a1, $a1, $a4
	ld.d	$a4, $fp, 16
	addi.d	$a5, $a3, 1
	st.d	$a5, $fp, 40
	stx.b	$a1, $a4, $a3
	beqz	$a1, .LBB12_89
.LBB12_80:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 40
	ld.d	$a4, $fp, 24
	ld.d	$a1, $fp, 56
	bne	$a3, $a4, .LBB12_79
# %bb.81:                               #   in Loop: Header=BB12_80 Depth=1
	ld.w	$a1, $a1, 68
	beqz	$a1, .LBB12_84
# %bb.82:                               #   in Loop: Header=BB12_80 Depth=1
	bgeu	$a2, $a3, .LBB12_84
# %bb.83:                               #   in Loop: Header=BB12_80 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, 96
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 96
.LBB12_84:                              #   in Loop: Header=BB12_80 Depth=1
	ld.d	$s1, $a0, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.w	$a1, $s1, 40
	ld.w	$a2, $s0, 32
	sltu	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$s3, $a2, $a1
	beqz	$s3, .LBB12_87
# %bb.85:                               #   in Loop: Header=BB12_80 Depth=1
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s3, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s1, 32
	add.d	$a1, $a1, $s2
	st.d	$a1, $s0, 24
	ld.d	$a1, $s0, 40
	add.d	$a2, $a2, $s2
	st.d	$a2, $s1, 32
	ld.w	$a2, $s0, 32
	add.d	$a1, $a1, $s2
	ld.d	$a3, $s1, 40
	st.d	$a1, $s0, 40
	sub.d	$a1, $a2, $s3
	st.w	$a1, $s0, 32
	sub.d	$a1, $a3, $s2
	st.d	$a1, $s1, 40
	bne	$a3, $s2, .LBB12_87
# %bb.86:                               #   in Loop: Header=BB12_80 Depth=1
	ld.d	$a1, $s1, 16
	st.d	$a1, $s1, 32
.LBB12_87:                              # %flush_pending.exit437
                                        #   in Loop: Header=BB12_80 Depth=1
	ld.d	$a1, $fp, 40
	bnez	$a1, .LBB12_143
# %bb.88:                               # %flush_pending.exit437._crit_edge
                                        #   in Loop: Header=BB12_80 Depth=1
	ld.d	$a1, $fp, 56
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB12_79
.LBB12_89:
	ld.d	$a1, $fp, 56
	ld.w	$a1, $a1, 68
	beqz	$a1, .LBB12_92
# %bb.90:
	ld.d	$a3, $fp, 40
	bgeu	$a2, $a3, .LBB12_92
# %bb.91:
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, 96
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 96
.LBB12_92:
	st.d	$zero, $fp, 64
.LBB12_93:                              # %.thread450
	ori	$a1, $zero, 91
	st.w	$a1, $fp, 8
.LBB12_94:
	ld.d	$a1, $fp, 56
	ld.d	$a1, $a1, 56
	beqz	$a1, .LBB12_109
# %bb.95:
	ld.d	$a2, $fp, 40
	b	.LBB12_97
.LBB12_96:                              #   in Loop: Header=BB12_97 Depth=1
	ld.d	$a4, $fp, 64
	ld.d	$a1, $a1, 56
	addi.d	$a5, $a4, 1
	st.d	$a5, $fp, 64
	ldx.bu	$a1, $a1, $a4
	ld.d	$a4, $fp, 16
	addi.d	$a5, $a3, 1
	st.d	$a5, $fp, 40
	stx.b	$a1, $a4, $a3
	beqz	$a1, .LBB12_106
.LBB12_97:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 40
	ld.d	$a4, $fp, 24
	ld.d	$a1, $fp, 56
	bne	$a3, $a4, .LBB12_96
# %bb.98:                               #   in Loop: Header=BB12_97 Depth=1
	ld.w	$a1, $a1, 68
	beqz	$a1, .LBB12_101
# %bb.99:                               #   in Loop: Header=BB12_97 Depth=1
	bgeu	$a2, $a3, .LBB12_101
# %bb.100:                              #   in Loop: Header=BB12_97 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, 96
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 96
.LBB12_101:                             #   in Loop: Header=BB12_97 Depth=1
	ld.d	$s1, $a0, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.w	$a1, $s1, 40
	ld.w	$a2, $s0, 32
	sltu	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$s3, $a2, $a1
	beqz	$s3, .LBB12_104
# %bb.102:                              #   in Loop: Header=BB12_97 Depth=1
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s3, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s1, 32
	add.d	$a1, $a1, $s2
	st.d	$a1, $s0, 24
	ld.d	$a1, $s0, 40
	add.d	$a2, $a2, $s2
	st.d	$a2, $s1, 32
	ld.w	$a2, $s0, 32
	add.d	$a1, $a1, $s2
	ld.d	$a3, $s1, 40
	st.d	$a1, $s0, 40
	sub.d	$a1, $a2, $s3
	st.w	$a1, $s0, 32
	sub.d	$a1, $a3, $s2
	st.d	$a1, $s1, 40
	bne	$a3, $s2, .LBB12_104
# %bb.103:                              #   in Loop: Header=BB12_97 Depth=1
	ld.d	$a1, $s1, 16
	st.d	$a1, $s1, 32
.LBB12_104:                             # %flush_pending.exit439
                                        #   in Loop: Header=BB12_97 Depth=1
	ld.d	$a1, $fp, 40
	bnez	$a1, .LBB12_143
# %bb.105:                              # %flush_pending.exit439._crit_edge
                                        #   in Loop: Header=BB12_97 Depth=1
	ld.d	$a1, $fp, 56
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB12_96
.LBB12_106:
	ld.d	$a1, $fp, 56
	ld.w	$a1, $a1, 68
	beqz	$a1, .LBB12_109
# %bb.107:
	ld.d	$a3, $fp, 40
	bgeu	$a2, $a3, .LBB12_109
# %bb.108:
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, 96
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	st.d	$a1, $s0, 96
.LBB12_109:                             # %.thread453
	ori	$a1, $zero, 103
	st.w	$a1, $fp, 8
.LBB12_110:
	ld.d	$a1, $fp, 56
	ld.w	$a1, $a1, 68
	beqz	$a1, .LBB12_115
# %bb.111:
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a1, 2
	bgeu	$a2, $a3, .LBB12_114
# %bb.112:
	pcaddu18i	$ra, %call36(flush_pending)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB12_143
# %bb.113:
	move	$a1, $zero
	move	$a0, $s0
.LBB12_114:
	ld.d	$a2, $a0, 96
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a1, 1
	st.d	$a4, $fp, 40
	stx.b	$a2, $a3, $a1
	ld.d	$a0, $a0, 96
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 16
	srli.d	$a0, $a0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	stx.b	$a0, $a2, $a1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 96
.LBB12_115:
	ori	$a0, $zero, 113
	st.w	$a0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flush_pending)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a2, $fp, 40
	move	$a1, $s4
	bnez	$a2, .LBB12_143
.LBB12_116:
	ld.w	$a2, $a0, 8
	bnez	$a2, .LBB12_118
.LBB12_117:                             # %.thread509
	ld.w	$a2, $fp, 180
	beqz	$a2, .LBB12_125
.LBB12_118:
	ld.w	$a0, $fp, 196
	beqz	$a0, .LBB12_124
# %bb.119:
	ld.w	$a2, $fp, 200
	ori	$a3, $zero, 3
	beq	$a2, $a3, .LBB12_127
# %bb.120:
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB12_128
# %bb.121:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(deflate_huff)
	jirl	$ra, $ra, 0
	b	.LBB12_129
.LBB12_122:
	ori	$a5, $zero, 6
	ori	$a3, $zero, 64
	bltu	$a4, $a5, .LBB12_31
# %bb.123:
	addi.d	$a3, $a4, -6
	sltui	$a3, $a3, 1
	ori	$a4, $zero, 192
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 128
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	b	.LBB12_31
.LBB12_124:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(deflate_stored)
	jirl	$ra, $ra, 0
	b	.LBB12_129
.LBB12_125:
	beqz	$a1, .LBB12_142
# %bb.126:
	ld.w	$a2, $fp, 8
	ori	$a3, $zero, 666
	bne	$a2, $a3, .LBB12_118
	b	.LBB12_141
.LBB12_127:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(deflate_rle)
	jirl	$ra, $ra, 0
	b	.LBB12_129
.LBB12_128:
	pcalau12i	$a2, %pc_hi20(configuration_table)
	addi.d	$a2, $a2, %pc_lo12(configuration_table)
	alsl.d	$a0, $a0, $a2, 4
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB12_129:
	move	$a2, $a0
	move	$a1, $a0
	bstrins.d	$a1, $zero, 0, 0
	ori	$a3, $zero, 2
	move	$a0, $s0
	bne	$a1, $a3, .LBB12_131
# %bb.130:
	ori	$a1, $zero, 666
	st.w	$a1, $fp, 8
.LBB12_131:
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 1
	beqz	$a3, .LBB12_136
# %bb.132:
	move	$a1, $s4
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB12_141
# %bb.133:
	ori	$a0, $zero, 5
	beq	$a1, $a0, .LBB12_140
# %bb.134:
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB12_137
# %bb.135:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_align)
	jirl	$ra, $ra, 0
	b	.LBB12_140
.LBB12_136:
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB12_142
	b	.LBB12_143
.LBB12_137:
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_stored_block)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bne	$s4, $a0, .LBB12_140
# %bb.138:
	ld.w	$a1, $fp, 132
	ld.d	$a0, $fp, 120
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 1
	stx.h	$zero, $a0, $a2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	bnez	$a0, .LBB12_140
# %bb.139:
	st.w	$zero, $fp, 172
	st.d	$zero, $fp, 152
	stptr.w	$zero, $fp, 5932
.LBB12_140:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flush_pending)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.w	$a2, $s0, 32
	move	$a1, $s4
	beqz	$a2, .LBB12_143
.LBB12_141:
	ori	$a2, $zero, 4
	beq	$a1, $a2, .LBB12_146
.LBB12_142:
	move	$a2, $zero
	b	.LBB12_144
.LBB12_143:
	move	$a2, $zero
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 76
.LBB12_144:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB12_145:                             # %.critedge433
	move	$a0, $a2
	ret
.LBB12_146:
	ld.w	$a2, $fp, 48
	blez	$a2, .LBB12_149
# %bb.147:
	ld.d	$a1, $a0, 96
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB12_150
# %bb.148:
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $a0, 96
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 8
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $a0, 96
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $a0, 96
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 24
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $fp, 40
	ld.d	$a2, $a0, 16
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a1, 1
	st.d	$a4, $fp, 40
	stx.b	$a2, $a3, $a1
	ld.d	$a1, $a0, 16
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 8
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $a0, 16
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $a0, 16
	srli.d	$a1, $a1, 24
	b	.LBB12_151
.LBB12_149:
	ori	$a2, $zero, 1
	b	.LBB12_144
.LBB12_150:
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a4, $a1, 24
	addi.d	$a5, $a2, 1
	st.d	$a5, $fp, 40
	stx.b	$a4, $a3, $a2
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	ld.d	$a1, $a0, 96
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	srli.d	$a4, $a1, 8
	addi.d	$a5, $a2, 1
	st.d	$a5, $fp, 40
	stx.b	$a4, $a3, $a2
.LBB12_151:
	ld.d	$a2, $fp, 40
	ld.d	$a3, $fp, 16
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	stx.b	$a1, $a3, $a2
	pcaddu18i	$ra, %call36(flush_pending)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	blez	$a0, .LBB12_153
# %bb.152:
	sub.d	$a0, $zero, $a0
	st.w	$a0, $fp, 48
.LBB12_153:
	ld.d	$a0, $fp, 40
	sltui	$a2, $a0, 1
	b	.LBB12_144
.Lfunc_end12:
	.size	deflate, .Lfunc_end12-deflate
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI12_0:
	.word	.LBB12_53-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_77-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_94-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_116-.LJTI12_0
	.word	.LBB12_110-.LJTI12_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function slide_hash
	.type	slide_hash,@function
slide_hash:                             # @slide_hash
# %bb.0:                                # %iter.check
	ld.wu	$a4, $a0, 132
	ld.d	$a5, $a0, 120
	ld.wu	$a1, $a0, 80
	addi.w	$a6, $a4, -1
	ori	$a3, $zero, 7
	alsl.d	$a2, $a4, $a5, 1
	bgeu	$a6, $a3, .LBB13_2
# %bb.1:
	move	$a6, $a4
	b	.LBB13_12
.LBB13_2:                               # %vector.main.loop.iter.check
	bstrpick.d	$a3, $a6, 31, 0
	addi.d	$a3, $a3, 1
	ori	$a7, $zero, 15
	vreplgr2vr.w	$vr0, $a1
	vrepli.b	$vr1, 0
	bgeu	$a6, $a7, .LBB13_7
# %bb.3:
	move	$a7, $zero
.LBB13_4:                               # %vec.epilog.ph
	bstrpick.d	$a6, $a3, 32, 3
	slli.d	$t0, $a6, 3
	slli.d	$a6, $a6, 4
	sub.d	$a2, $a2, $a6
	sub.d	$a6, $a4, $t0
	sub.d	$t1, $a7, $t0
	slli.d	$a4, $a4, 1
	slli.d	$a7, $a7, 1
	sub.d	$a4, $a4, $a7
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, -16
	.p2align	4, , 16
.LBB13_5:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vilvh.h	$vr3, $vr1, $vr2
	vilvl.h	$vr2, $vr1, $vr2
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vmax.wu	$vr3, $vr3, $vr0
	vsub.w	$vr3, $vr3, $vr0
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $a4, 0
	addi.d	$t1, $t1, 8
	addi.d	$a4, $a4, -16
	bnez	$t1, .LBB13_5
# %bb.6:                                # %vec.epilog.middle.block
	bne	$a3, $t0, .LBB13_12
	b	.LBB13_14
.LBB13_7:                               # %vector.ph
	bstrpick.d	$a6, $a3, 32, 4
	slli.d	$a7, $a6, 4
	alsl.d	$a6, $a4, $a5, 1
	addi.d	$a6, $a6, -16
	move	$t0, $a7
	.p2align	4, , 16
.LBB13_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $a6, -16
	vilvh.h	$vr4, $vr1, $vr2
	vilvl.h	$vr2, $vr1, $vr2
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vmax.wu	$vr4, $vr4, $vr0
	vsub.w	$vr4, $vr4, $vr0
	vpickev.h	$vr2, $vr4, $vr2
	vst	$vr2, $a6, 0
	vilvh.h	$vr2, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vmax.wu	$vr3, $vr3, $vr0
	vsub.w	$vr3, $vr3, $vr0
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vpickev.h	$vr2, $vr2, $vr3
	vst	$vr2, $a6, -16
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, -32
	bnez	$t0, .LBB13_8
# %bb.9:                                # %middle.block
	beq	$a3, $a7, .LBB13_14
# %bb.10:                               # %vec.epilog.iter.check
	andi	$a6, $a3, 8
	bnez	$a6, .LBB13_4
# %bb.11:
	slli.d	$a3, $a7, 1
	sub.d	$a2, $a2, $a3
	sub.d	$a6, $a4, $a7
.LBB13_12:                              # %vec.epilog.scalar.ph.preheader
	addi.d	$a2, $a2, -2
	.p2align	4, , 16
.LBB13_13:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a2, 0
	sub.d	$a4, $a3, $a1
	sltu	$a3, $a3, $a4
	masknez	$a3, $a4, $a3
	st.h	$a3, $a2, 0
	addi.w	$a6, $a6, -1
	addi.d	$a2, $a2, -2
	bnez	$a6, .LBB13_13
.LBB13_14:                              # %iter.check45
	ld.d	$a3, $a0, 112
	addi.w	$a4, $a1, -1
	ori	$a2, $zero, 7
	alsl.d	$a0, $a1, $a3, 1
	bgeu	$a4, $a2, .LBB13_16
# %bb.15:
	move	$a4, $a1
	b	.LBB13_26
.LBB13_16:                              # %vector.main.loop.iter.check47
	bstrpick.d	$a2, $a4, 31, 0
	ori	$a5, $zero, 15
	addi.d	$a2, $a2, 1
	bgeu	$a4, $a5, .LBB13_21
# %bb.17:
	move	$a5, $zero
.LBB13_18:                              # %vec.epilog.ph67
	bstrpick.d	$a4, $a2, 32, 3
	slli.d	$a6, $a4, 3
	slli.d	$a4, $a4, 4
	sub.d	$a0, $a0, $a4
	sub.d	$a4, $a1, $a6
	vreplgr2vr.w	$vr0, $a1
	sub.d	$a7, $a5, $a6
	slli.d	$t0, $a1, 1
	slli.d	$a5, $a5, 1
	sub.d	$a5, $t0, $a5
	add.d	$a3, $a5, $a3
	addi.d	$a3, $a3, -16
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB13_19:                              # %vec.epilog.vector.body76
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, 0
	vilvh.h	$vr3, $vr1, $vr2
	vilvl.h	$vr2, $vr1, $vr2
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vmax.wu	$vr3, $vr3, $vr0
	vsub.w	$vr3, $vr3, $vr0
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $a3, 0
	addi.d	$a7, $a7, 8
	addi.d	$a3, $a3, -16
	bnez	$a7, .LBB13_19
# %bb.20:                               # %vec.epilog.middle.block84
	bne	$a2, $a6, .LBB13_26
	b	.LBB13_28
.LBB13_21:                              # %vector.ph48
	bstrpick.d	$a4, $a2, 32, 4
	slli.d	$a5, $a4, 4
	vreplgr2vr.w	$vr0, $a1
	alsl.d	$a4, $a1, $a3, 1
	addi.d	$a4, $a4, -16
	vrepli.b	$vr1, 0
	move	$a6, $a5
	.p2align	4, , 16
.LBB13_22:                              # %vector.body53
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vld	$vr3, $a4, -16
	vilvh.h	$vr4, $vr1, $vr2
	vilvl.h	$vr2, $vr1, $vr2
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vmax.wu	$vr4, $vr4, $vr0
	vsub.w	$vr4, $vr4, $vr0
	vpickev.h	$vr2, $vr4, $vr2
	vst	$vr2, $a4, 0
	vilvh.h	$vr2, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vmax.wu	$vr3, $vr3, $vr0
	vsub.w	$vr3, $vr3, $vr0
	vmax.wu	$vr2, $vr2, $vr0
	vsub.w	$vr2, $vr2, $vr0
	vpickev.h	$vr2, $vr2, $vr3
	vst	$vr2, $a4, -16
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, -32
	bnez	$a6, .LBB13_22
# %bb.23:                               # %middle.block63
	beq	$a2, $a5, .LBB13_28
# %bb.24:                               # %vec.epilog.iter.check68
	andi	$a4, $a2, 8
	bnez	$a4, .LBB13_18
# %bb.25:
	slli.d	$a2, $a5, 1
	sub.d	$a0, $a0, $a2
	sub.d	$a4, $a1, $a5
.LBB13_26:                              # %vec.epilog.scalar.ph66.preheader
	addi.d	$a0, $a0, -2
	.p2align	4, , 16
.LBB13_27:                              # %vec.epilog.scalar.ph66
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a0, 0
	sub.d	$a3, $a2, $a1
	sltu	$a2, $a2, $a3
	masknez	$a2, $a3, $a2
	st.h	$a2, $a0, 0
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, -2
	bnez	$a4, .LBB13_27
.LBB13_28:                              # %.loopexit
	ret
.Lfunc_end13:
	.size	slide_hash, .Lfunc_end13-slide_hash
                                        # -- End function
	.globl	deflateTune                     # -- Begin function deflateTune
	.p2align	5
	.type	deflateTune,@function
deflateTune:                            # @deflateTune
# %bb.0:
	move	$a5, $a0
	addi.w	$a0, $zero, -2
	beqz	$a5, .LBB14_5
# %bb.1:
	ld.d	$a6, $a5, 64
	beqz	$a6, .LBB14_5
# %bb.2:
	ld.d	$a6, $a5, 72
	beqz	$a6, .LBB14_5
# %bb.3:
	ld.d	$a6, $a5, 56
	beqz	$a6, .LBB14_5
# %bb.4:
	ld.d	$a7, $a6, 0
	beq	$a7, $a5, .LBB14_6
.LBB14_5:                               # %deflateStateCheck.exit.thread
	ret
.LBB14_6:
	ld.w	$a5, $a6, 8
	addi.d	$a7, $a5, -57
	ori	$t0, $zero, 56
	bltu	$t0, $a7, .LBB14_9
# %bb.7:
	ori	$t0, $zero, 1
	sll.d	$a7, $t0, $a7
	lu12i.w	$t0, 17
	ori	$t0, $t0, 1
	lu32i.d	$t0, 16388
	lu52i.d	$t0, $t0, 16
	and	$a7, $a7, $t0
	beqz	$a7, .LBB14_9
.LBB14_8:                               # %deflateStateCheck.exit
	move	$a0, $zero
	st.w	$a1, $a6, 204
	st.w	$a2, $a6, 192
	st.w	$a3, $a6, 208
	st.w	$a4, $a6, 188
	ret
.LBB14_9:
	ori	$a7, $zero, 666
	beq	$a5, $a7, .LBB14_8
# %bb.10:
	ori	$a7, $zero, 42
	bne	$a5, $a7, .LBB14_5
	b	.LBB14_8
.Lfunc_end14:
	.size	deflateTune, .Lfunc_end14-deflateTune
                                        # -- End function
	.globl	deflateBound                    # -- Begin function deflateBound
	.p2align	5
	.type	deflateBound,@function
deflateBound:                           # @deflateBound
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.d	$fp, $a1, 7
	srli.d	$a2, $fp, 3
	add.d	$a2, $a2, $a1
	addi.d	$a3, $a1, 63
	srli.d	$a3, $a3, 6
	add.d	$s0, $a2, $a3
	beqz	$a0, .LBB15_5
# %bb.1:
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB15_5
# %bb.2:
	ld.d	$a2, $a0, 72
	beqz	$a2, .LBB15_5
# %bb.3:
	ld.d	$s1, $a0, 56
	beqz	$s1, .LBB15_5
# %bb.4:
	ld.d	$a2, $s1, 0
	beq	$a2, $a0, .LBB15_7
.LBB15_5:
	addi.d	$a0, $s0, 11
.LBB15_6:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB15_7:
	ld.w	$a0, $s1, 8
	addi.d	$a2, $a0, -57
	ori	$a3, $zero, 56
	bltu	$a3, $a2, .LBB15_13
# %bb.8:
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	lu12i.w	$a3, 17
	ori	$a3, $a3, 1
	lu32i.d	$a3, 16388
	lu52i.d	$a3, $a3, 16
	and	$a2, $a2, $a3
	beqz	$a2, .LBB15_13
.LBB15_9:                               # %deflateStateCheck.exit
	ld.w	$a0, $s1, 48
	beqz	$a0, .LBB15_27
# %bb.10:                               # %deflateStateCheck.exit
	ori	$a2, $zero, 2
	beq	$a0, $a2, .LBB15_15
# %bb.11:                               # %deflateStateCheck.exit
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB15_18
# %bb.12:
	ld.w	$a0, $s1, 172
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 10
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 6
	maskeqz	$a0, $a3, $a0
	b	.LBB15_26
.LBB15_13:
	ori	$a2, $zero, 42
	beq	$a0, $a2, .LBB15_9
# %bb.14:
	ori	$a2, $zero, 666
	bne	$a0, $a2, .LBB15_5
	b	.LBB15_9
.LBB15_15:
	ld.d	$s2, $s1, 56
	beqz	$s2, .LBB15_19
# %bb.16:
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB15_20
# %bb.17:
	ld.w	$a0, $s2, 32
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s3, $a0, 18
	b	.LBB15_21
.LBB15_18:
	ori	$a0, $zero, 6
	b	.LBB15_27
.LBB15_19:
	ori	$a0, $zero, 18
	b	.LBB15_27
.LBB15_20:
	ori	$s3, $zero, 18
.LBB15_21:
	move	$s4, $a1
	ld.d	$a0, $s2, 40
	beqz	$a0, .LBB15_23
# %bb.22:                               # %.preheader49.preheader
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s3
	addi.d	$s3, $a0, 1
.LBB15_23:                              # %.loopexit50
	ld.d	$a0, $s2, 56
	beqz	$a0, .LBB15_25
# %bb.24:                               # %.preheader.preheader
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s3
	addi.d	$s3, $a0, 1
.LBB15_25:                              # %.loopexit
	move	$a1, $s4
	ld.w	$a0, $s2, 68
	sltui	$a0, $a0, 1
	addi.d	$a2, $s3, 2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s3, $a0
.LBB15_26:
	or	$a0, $a0, $a2
.LBB15_27:
	ld.w	$a3, $s1, 84
	ori	$a2, $zero, 15
	bne	$a3, $a2, .LBB15_30
# %bb.28:
	ld.w	$a3, $s1, 136
	bne	$a3, $a2, .LBB15_30
# %bb.29:
	srli.d	$a2, $a1, 12
	srli.d	$a3, $a1, 14
	srli.d	$a1, $a1, 25
	add.d	$a2, $fp, $a2
	add.d	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	b	.LBB15_31
.LBB15_30:
	addi.d	$a1, $s0, 5
.LBB15_31:
	add.d	$a0, $a1, $a0
	b	.LBB15_6
.Lfunc_end15:
	.size	deflateBound, .Lfunc_end15-deflateBound
                                        # -- End function
	.p2align	5                               # -- Begin function flush_pending
	.type	flush_pending,@function
flush_pending:                          # @flush_pending
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$fp, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $s0, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s2, $a1, $a0
	beqz	$s2, .LBB16_3
# %bb.1:
	ld.d	$a0, $s0, 24
	ld.d	$a1, $fp, 32
	bstrpick.d	$s1, $s2, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	ld.d	$a1, $fp, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s0, 24
	ld.d	$a0, $s0, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 32
	ld.w	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $fp, 40
	st.d	$a0, $s0, 40
	sub.d	$a0, $a1, $s2
	st.w	$a0, $s0, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $fp, 40
	bne	$a2, $s1, .LBB16_3
# %bb.2:
	ld.d	$a0, $fp, 16
	st.d	$a0, $fp, 32
.LBB16_3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	flush_pending, .Lfunc_end16-flush_pending
                                        # -- End function
	.p2align	5                               # -- Begin function deflate_stored
	.type	deflate_stored,@function
deflate_stored:                         # @deflate_stored
# %bb.0:
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
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	ld.wu	$a2, $fp, 80
	addi.d	$a0, $a0, -5
	sltu	$a4, $a0, $a2
	ld.d	$a3, $fp, 0
	masknez	$a2, $a2, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a2
	ld.w	$a2, $a3, 8
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1844
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a1, -4
	sltu	$a1, $zero, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB17_6
.LBB17_1:                               #   in Loop: Header=BB17_6 Depth=1
	ld.d	$a0, $s0, 96
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
.LBB17_2:                               #   in Loop: Header=BB17_6 Depth=1
	st.d	$a0, $s0, 96
.LBB17_3:                               #   in Loop: Header=BB17_6 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 16
	add.d	$a0, $a0, $s3
	st.d	$a0, $s0, 0
	add.d	$a0, $a1, $s3
	st.d	$a0, $s0, 16
	ld.d	$s0, $fp, 0
	ld.d	$s2, $s0, 24
.LBB17_4:                               # %read_buf.exit
                                        #   in Loop: Header=BB17_6 Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	ld.w	$a1, $s0, 32
	add.d	$a2, $s2, $a0
	ld.d	$a3, $s0, 40
	st.d	$a2, $s0, 24
	sub.d	$a1, $a1, $s5
	st.w	$a1, $s0, 32
	add.d	$a0, $a3, $a0
	st.d	$a0, $s0, 40
.LBB17_5:                               #   in Loop: Header=BB17_6 Depth=1
	bnez	$s1, .LBB17_21
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a2, $fp, $a1
	ld.w	$a1, $a0, 32
	addi.w	$a2, $a2, 42
	srai.d	$a2, $a2, 3
	bltu	$a1, $a2, .LBB17_22
# %bb.7:                                #   in Loop: Header=BB17_6 Depth=1
	ld.w	$s7, $fp, 172
	ld.w	$s0, $fp, 152
	ld.wu	$a3, $a0, 8
	sub.w	$a2, $a1, $a2
	sub.w	$s4, $s7, $s0
	bstrpick.d	$a1, $s4, 31, 0
	add.d	$a1, $a1, $a3
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	sltu	$a4, $a1, $a5
	add.w	$a1, $s4, $a3
	maskeqz	$a3, $a1, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	sltu	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	masknez	$a2, $a2, $a4
	or	$s5, $a3, $a2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bgeu	$s5, $a2, .LBB17_11
# %bb.8:                                #   in Loop: Header=BB17_6 Depth=1
	sltui	$a2, $s5, 1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	and	$a2, $a3, $a2
	bnez	$a2, .LBB17_22
# %bb.9:                                #   in Loop: Header=BB17_6 Depth=1
	bne	$s5, $a1, .LBB17_22
# %bb.10:                               #   in Loop: Header=BB17_6 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	beqz	$a2, .LBB17_22
.LBB17_11:                              #   in Loop: Header=BB17_6 Depth=1
	xor	$a0, $s5, $a1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	and	$s1, $a1, $a0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_tr_stored_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 40
	add.d	$a0, $a0, $a1
	st.b	$s5, $a0, -4
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 40
	srli.d	$a2, $s5, 8
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, -3
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 40
	nor	$a2, $s5, $zero
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, -2
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 40
	srli.d	$a2, $a2, 8
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, -1
	ld.d	$s6, $fp, 0
	ld.d	$s2, $s6, 56
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 40
	ld.w	$a1, $s6, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s8, $a1, $a0
	beqz	$s8, .LBB17_14
# %bb.12:                               #   in Loop: Header=BB17_6 Depth=1
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s2, 32
	bstrpick.d	$s3, $s8, 31, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s2, 32
	add.d	$a0, $a0, $s3
	st.d	$a0, $s6, 24
	ld.d	$a0, $s6, 40
	add.d	$a1, $a1, $s3
	st.d	$a1, $s2, 32
	ld.w	$a1, $s6, 32
	add.d	$a0, $a0, $s3
	ld.d	$a2, $s2, 40
	st.d	$a0, $s6, 40
	sub.d	$a0, $a1, $s8
	st.w	$a0, $s6, 32
	sub.d	$a0, $a2, $s3
	st.d	$a0, $s2, 40
	bne	$a2, $s3, .LBB17_14
# %bb.13:                               #   in Loop: Header=BB17_6 Depth=1
	ld.d	$a0, $s2, 16
	st.d	$a0, $s2, 32
.LBB17_14:                              # %flush_pending.exit
                                        #   in Loop: Header=BB17_6 Depth=1
	beq	$s7, $s0, .LBB17_16
# %bb.15:                               #   in Loop: Header=BB17_6 Depth=1
	sltu	$a0, $s4, $s5
	masknez	$a1, $s5, $a0
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 96
	ld.d	$a4, $fp, 152
	maskeqz	$a5, $s4, $a0
	ld.d	$a0, $a2, 24
	or	$s0, $a5, $a1
	add.d	$a1, $a3, $a4
	bstrpick.d	$s2, $s0, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	ld.w	$a2, $a0, 32
	add.d	$a1, $a1, $s2
	st.d	$a1, $a0, 24
	ld.d	$a1, $a0, 40
	sub.d	$a2, $a2, $s0
	ld.d	$a3, $fp, 152
	st.w	$a2, $a0, 32
	add.d	$a1, $a1, $s2
	st.d	$a1, $a0, 40
	add.d	$a0, $a3, $s2
	st.d	$a0, $fp, 152
	sub.w	$s5, $s5, $s0
.LBB17_16:                              #   in Loop: Header=BB17_6 Depth=1
	beqz	$s5, .LBB17_5
# %bb.17:                               #   in Loop: Header=BB17_6 Depth=1
	ld.d	$s0, $fp, 0
	ld.w	$a0, $s0, 8
	ld.d	$s2, $s0, 24
	beqz	$a0, .LBB17_4
# %bb.18:                               #   in Loop: Header=BB17_6 Depth=1
	sltu	$a1, $a0, $s5
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$s4, $a1, $a2
	ld.d	$a1, $s0, 0
	sub.d	$a0, $a0, $s4
	st.w	$a0, $s0, 8
	bstrpick.d	$s3, $s4, 31, 0
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	ld.w	$a0, $a0, 48
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB17_1
# %bb.19:                               #   in Loop: Header=BB17_6 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB17_3
# %bb.20:                               #   in Loop: Header=BB17_6 Depth=1
	ld.d	$a0, $s0, 96
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	b	.LBB17_2
.LBB17_21:                              # %._crit_edge
	ld.d	$a0, $fp, 0
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB17_22:                              # %split
	ld.w	$a2, $a0, 8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a1, $a2, .LBB17_24
# %bb.23:                               # %._crit_edge264
	ld.wu	$a2, $fp, 172
	move	$a1, $a2
	ldptr.d	$a0, $fp, 5944
	bltu	$a0, $a2, .LBB17_31
	b	.LBB17_32
.LBB17_24:
	move	$a3, $a1
	ld.w	$a1, $fp, 80
	sub.w	$s0, $a3, $a2
	bstrpick.d	$a2, $a1, 31, 0
	bgeu	$s0, $a1, .LBB17_29
# %bb.25:
	ld.d	$a0, $fp, 104
	ld.wu	$a3, $fp, 172
	sub.d	$a0, $a0, $a3
	bstrpick.d	$s1, $s0, 31, 0
	bltu	$s1, $a0, .LBB17_28
# %bb.26:
	ld.d	$a0, $fp, 96
	sub.d	$a3, $a3, $a1
	st.w	$a3, $fp, 172
	add.d	$a1, $a0, $a2
	bstrpick.d	$a2, $a3, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 5928
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB17_28
# %bb.27:
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $fp, 5928
.LBB17_28:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 96
	ld.wu	$a2, $fp, 172
	ld.d	$a3, $a0, 0
	add.d	$a0, $a1, $a2
	sub.d	$a1, $a3, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 172
	ld.w	$a0, $fp, 80
	add.w	$a1, $a1, $s0
	st.w	$a1, $fp, 172
	b	.LBB17_30
.LBB17_29:
	ld.d	$a1, $a0, 0
	ld.d	$a0, $fp, 96
	ori	$a3, $zero, 2
	stptr.w	$a3, $fp, 5928
	sub.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 80
	st.w	$a0, $fp, 172
	move	$a1, $a0
.LBB17_30:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1836
	ldx.w	$a3, $fp, $a2
	bstrpick.d	$a2, $a1, 31, 0
	st.d	$a2, $fp, 152
	sub.w	$a0, $a0, $a3
	sltu	$a4, $s0, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $s0, $a4
	or	$a0, $a4, $a0
	add.d	$a0, $a0, $a3
	stptr.w	$a0, $fp, 5932
	ldptr.d	$a0, $fp, 5944
	bgeu	$a0, $a2, .LBB17_32
.LBB17_31:
	stptr.d	$a2, $fp, 5944
.LBB17_32:
	ori	$a0, $zero, 3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	beqz	$a3, .LBB17_62
# %bb.33:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bstrins.d	$a0, $zero, 2, 2
	beqz	$a0, .LBB17_36
# %bb.34:
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB17_36
# %bb.35:
	ld.d	$a3, $fp, 152
	ori	$a0, $zero, 1
	beq	$a3, $a2, .LBB17_62
.LBB17_36:
	ld.d	$s0, $fp, 0
	ld.d	$a3, $fp, 104
	ld.w	$a0, $s0, 8
	nor	$a2, $a2, $zero
	add.w	$s1, $a3, $a2
	bgeu	$s1, $a0, .LBB17_41
# %bb.37:
	ld.d	$a3, $fp, 152
	ld.wu	$a2, $fp, 80
	blt	$a3, $a2, .LBB17_41
# %bb.38:
	sub.d	$a3, $a3, $a2
	ld.d	$a0, $fp, 96
	st.d	$a3, $fp, 152
	sub.d	$a3, $a1, $a2
	st.w	$a3, $fp, 172
	add.d	$a1, $a0, $a2
	bstrpick.d	$a2, $a3, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 5928
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB17_40
# %bb.39:
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $fp, 5928
.LBB17_40:
	ld.d	$s0, $fp, 0
	ld.w	$a2, $fp, 80
	ld.w	$a0, $s0, 8
	ld.w	$a1, $fp, 172
	add.w	$s1, $a2, $s1
.LBB17_41:
	sltu	$a2, $s1, $a0
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a3
	beqz	$s1, .LBB17_48
# %bb.42:
	ld.d	$a2, $fp, 96
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s3, $a2, $a1
	ld.d	$a1, $s0, 0
	sub.d	$a0, $a0, $s1
	st.w	$a0, $s0, 8
	bstrpick.d	$s2, $s1, 31, 0
	move	$a0, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	ld.w	$a0, $a0, 48
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB17_45
# %bb.43:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB17_47
# %bb.44:
	ld.d	$a0, $s0, 96
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	b	.LBB17_46
.LBB17_45:
	ld.d	$a0, $s0, 96
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
.LBB17_46:                              # %read_buf.exit250
	st.d	$a0, $s0, 96
.LBB17_47:                              # %read_buf.exit250
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 16
	add.d	$a0, $a0, $s2
	ld.w	$a2, $fp, 172
	st.d	$a0, $s0, 0
	add.d	$a0, $a1, $s2
	st.d	$a0, $s0, 16
	add.w	$a1, $a2, $s1
	st.w	$a1, $fp, 172
.LBB17_48:
	ldptr.d	$a2, $fp, 5944
	bstrpick.d	$a0, $a1, 31, 0
	bgeu	$a2, $a0, .LBB17_50
# %bb.49:
	stptr.d	$a0, $fp, 5944
.LBB17_50:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	ld.d	$a2, $fp, 24
	addi.w	$a0, $a0, 42
	bstrpick.d	$a0, $a0, 34, 3
	sub.d	$a0, $a2, $a0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a4
	ld.w	$a3, $fp, 80
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a4, $a2
	or	$a4, $a0, $a2
	sltu	$a0, $a3, $a4
	ld.d	$a2, $fp, 152
	maskeqz	$a3, $a3, $a0
	masknez	$a0, $a4, $a0
	or	$a0, $a3, $a0
	sub.w	$a3, $a1, $a2
	bgeu	$a3, $a0, .LBB17_55
# %bb.51:
	move	$a0, $zero
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	beqz	$a5, .LBB17_62
# %bb.52:
	addi.w	$a5, $a2, 0
	addi.w	$a1, $a1, 0
	xor	$a1, $a1, $a5
	sltu	$a1, $zero, $a1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	or	$a1, $a5, $a1
	beqz	$a1, .LBB17_62
# %bb.53:
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB17_55
# %bb.54:
	move	$a0, $zero
	b	.LBB17_62
.LBB17_55:
	addi.w	$a0, $a4, 0
	sltu	$a1, $a3, $a0
	masknez	$a4, $a0, $a1
	maskeqz	$a1, $a3, $a1
	ori	$a5, $zero, 4
	or	$s2, $a1, $a4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a5, .LBB17_57
# %bb.56:
	ld.d	$a1, $fp, 0
	ld.w	$a1, $a1, 8
	beqz	$a1, .LBB17_63
.LBB17_57:
	move	$s0, $zero
.LBB17_58:
	ld.d	$a0, $fp, 96
	add.d	$a1, $a0, $a2
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_tr_stored_block)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 0
	ld.d	$a0, $fp, 152
	ld.d	$s1, $s3, 56
	add.d	$a0, $a0, $s2
	st.d	$a0, $fp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s3, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s2, $a1, $a0
	beqz	$s2, .LBB17_61
# %bb.59:
	ld.d	$a0, $s3, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$fp, $s2, 31, 0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	ld.d	$a1, $s1, 32
	add.d	$a0, $a0, $fp
	st.d	$a0, $s3, 24
	ld.d	$a0, $s3, 40
	add.d	$a1, $a1, $fp
	st.d	$a1, $s1, 32
	ld.w	$a1, $s3, 32
	add.d	$a0, $a0, $fp
	ld.d	$a2, $s1, 40
	st.d	$a0, $s3, 40
	sub.d	$a0, $a1, $s2
	st.w	$a0, $s3, 32
	sub.d	$a0, $a2, $fp
	st.d	$a0, $s1, 40
	bne	$a2, $fp, .LBB17_61
# %bb.60:
	ld.d	$a0, $s1, 16
	st.d	$a0, $s1, 32
.LBB17_61:                              # %flush_pending.exit252
	slli.d	$a0, $s0, 1
.LBB17_62:
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
.LBB17_63:
	sltu	$a0, $a0, $a3
	xori	$s0, $a0, 1
	b	.LBB17_58
.Lfunc_end17:
	.size	deflate_stored, .Lfunc_end17-deflate_stored
                                        # -- End function
	.p2align	5                               # -- Begin function deflate_huff
	.type	deflate_huff,@function
deflate_huff:                           # @deflate_huff
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s3, $a0, 212
	lu12i.w	$a0, 1
	ori	$s4, $a0, 1804
	ori	$s5, $a0, 1800
	b	.LBB18_2
	.p2align	4, , 16
.LBB18_1:                               # %flush_pending.exit
                                        #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB18_29
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 180
	bnez	$a0, .LBB18_4
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_window)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	beqz	$a0, .LBB18_11
.LBB18_4:                               #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $fp, 96
	ld.wu	$a1, $fp, 172
	ldx.wu	$a2, $fp, $s4
	st.w	$zero, $fp, 160
	ldptr.d	$a3, $fp, 5904
	ldx.bu	$a0, $a0, $a1
	slli.d	$a1, $a2, 1
	ldptr.d	$a4, $fp, 5888
	stx.h	$zero, $a3, $a1
	addi.d	$a1, $a2, 1
	stptr.w	$a1, $fp, 5900
	stx.b	$a0, $a4, $a2
	slli.d	$a0, $a0, 2
	ldx.h	$a1, $s3, $a0
	addi.d	$a1, $a1, 1
	stx.h	$a1, $s3, $a0
	ldx.w	$a0, $fp, $s5
	ld.w	$a1, $fp, 180
	ldptr.w	$a2, $fp, 5900
	ld.w	$a3, $fp, 172
	addi.w	$a4, $a0, -1
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 180
	addi.w	$a0, $a3, 1
	st.w	$a0, $fp, 172
	bne	$a2, $a4, .LBB18_2
# %bb.5:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a2, $fp, 152
	bltz	$a2, .LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB18_8
.LBB18_7:                               #   in Loop: Header=BB18_2 Depth=1
	move	$a1, $zero
.LBB18_8:                               #   in Loop: Header=BB18_2 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	sub.d	$a2, $a0, $a2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s1, $s6, 56
	st.d	$a0, $fp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s6, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s7, $a1, $a0
	beqz	$s7, .LBB18_1
# %bb.9:                                #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s7, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s1, 32
	add.d	$a0, $a0, $s2
	st.d	$a0, $s6, 24
	ld.d	$a0, $s6, 40
	add.d	$a1, $a1, $s2
	st.d	$a1, $s1, 32
	ld.w	$a1, $s6, 32
	add.d	$a0, $a0, $s2
	ld.d	$a2, $s1, 40
	st.d	$a0, $s6, 40
	sub.d	$a0, $a1, $s7
	st.w	$a0, $s6, 32
	sub.d	$a0, $a2, $s2
	st.d	$a0, $s1, 40
	bne	$a2, $s2, .LBB18_1
# %bb.10:                               #   in Loop: Header=BB18_2 Depth=1
	ld.d	$a0, $s1, 16
	st.d	$a0, $s1, 32
	b	.LBB18_1
.LBB18_11:
	beqz	$s0, .LBB18_29
# %bb.12:
	ori	$a0, $zero, 4
	stptr.w	$zero, $fp, 5932
	bne	$s0, $a0, .LBB18_15
# %bb.13:
	ld.d	$a0, $fp, 152
	bltz	$a0, .LBB18_18
# %bb.14:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a2, $a0, 31, 0
	add.d	$a1, $a1, $a2
	b	.LBB18_19
.LBB18_15:
	ldptr.w	$a0, $fp, 5900
	beqz	$a0, .LBB18_28
# %bb.16:
	ld.d	$a0, $fp, 152
	bltz	$a0, .LBB18_23
# %bb.17:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a2, $a0, 31, 0
	add.d	$a1, $a1, $a2
	b	.LBB18_24
.LBB18_18:
	move	$a1, $zero
.LBB18_19:
	ld.wu	$a2, $fp, 172
	sub.d	$a2, $a2, $a0
	ori	$a3, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB18_22
# %bb.20:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB18_22
# %bb.21:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB18_22:                              # %flush_pending.exit57
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 3
	b	.LBB18_30
.LBB18_23:
	move	$a1, $zero
.LBB18_24:
	ld.wu	$a2, $fp, 172
	sub.d	$a2, $a2, $a0
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB18_27
# %bb.25:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB18_27
# %bb.26:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB18_27:                              # %flush_pending.exit59
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB18_29
.LBB18_28:
	ori	$a0, $zero, 1
	b	.LBB18_30
.LBB18_29:
	move	$a0, $zero
.LBB18_30:                              # %.loopexit
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end18:
	.size	deflate_huff, .Lfunc_end18-deflate_huff
                                        # -- End function
	.p2align	5                               # -- Begin function deflate_rle
	.type	deflate_rle,@function
deflate_rle:                            # @deflate_rle
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
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s3, $a0, 212
	addi.d	$a0, $a0, 1240
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 457
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s6, $zero, 259
	lu12i.w	$s4, 1
	ori	$s5, $s4, 1804
	pcalau12i	$a0, %got_pc_hi20(_length_code)
	ld.d	$a0, $a0, %got_pc_lo12(_length_code)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB19_2
	.p2align	4, , 16
.LBB19_1:                               # %flush_pending.exit
                                        #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB19_57
.LBB19_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_13 Depth 2
	ld.w	$a1, $fp, 180
	bgeu	$a1, $s6, .LBB19_8
# %bb.3:                                #   in Loop: Header=BB19_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_window)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 180
	bnez	$s0, .LBB19_5
# %bb.4:                                #   in Loop: Header=BB19_2 Depth=1
	bltu	$a1, $s6, .LBB19_57
.LBB19_5:                               #   in Loop: Header=BB19_2 Depth=1
	beqz	$a1, .LBB19_40
# %bb.6:                                #   in Loop: Header=BB19_2 Depth=1
	ld.wu	$a0, $fp, 172
	st.w	$zero, $fp, 160
	ori	$a2, $zero, 3
	bltu	$a1, $a2, .LBB19_23
# %bb.7:                                #   in Loop: Header=BB19_2 Depth=1
	bnez	$a0, .LBB19_9
	b	.LBB19_23
	.p2align	4, , 16
.LBB19_8:                               # %.thread
                                        #   in Loop: Header=BB19_2 Depth=1
	ld.wu	$a0, $fp, 172
	st.w	$zero, $fp, 160
	beqz	$a0, .LBB19_23
.LBB19_9:                               #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a2, $fp, 96
	add.d	$a3, $a2, $a0
	ld.bu	$a4, $a3, -1
	ldx.bu	$a2, $a2, $a0
	bne	$a4, $a2, .LBB19_23
# %bb.10:                               #   in Loop: Header=BB19_2 Depth=1
	ld.bu	$a2, $a3, 1
	bne	$a4, $a2, .LBB19_23
# %bb.11:                               #   in Loop: Header=BB19_2 Depth=1
	ld.bu	$a2, $a3, 2
	bne	$a4, $a2, .LBB19_23
# %bb.12:                               #   in Loop: Header=BB19_2 Depth=1
	move	$a5, $zero
	addi.d	$a2, $a3, 258
.LBB19_13:                              #   Parent Loop BB19_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a3, $a5
	ld.bu	$a7, $a6, 3
	bne	$a4, $a7, .LBB19_31
# %bb.14:                               #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a7, $a6, 4
	bne	$a4, $a7, .LBB19_32
# %bb.15:                               #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a7, $a6, 5
	bne	$a4, $a7, .LBB19_33
# %bb.16:                               #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a7, $a6, 6
	bne	$a4, $a7, .LBB19_34
# %bb.17:                               #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a7, $a6, 7
	bne	$a4, $a7, .LBB19_35
# %bb.18:                               #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a7, $a6, 8
	bne	$a4, $a7, .LBB19_36
# %bb.19:                               #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a7, $a6, 9
	bne	$a4, $a7, .LBB19_37
# %bb.20:                               #   in Loop: Header=BB19_13 Depth=2
	ld.bu	$a7, $a6, 10
	addi.d	$a6, $a5, 8
	bne	$a4, $a7, .LBB19_22
# %bb.21:                               #   in Loop: Header=BB19_13 Depth=2
	addi.d	$a7, $a5, 2
	move	$a5, $a6
	ori	$t0, $zero, 250
	bltu	$a7, $t0, .LBB19_13
.LBB19_22:                              # %thread-pre-split133.split.loop.exit
                                        #   in Loop: Header=BB19_2 Depth=1
	add.d	$a3, $a3, $a6
	addi.d	$a3, $a3, 2
	b	.LBB19_38
	.p2align	4, , 16
.LBB19_23:                              # %.thread135.sink.split
                                        #   in Loop: Header=BB19_2 Depth=1
	ldx.w	$a2, $fp, $s5
.LBB19_24:                              # %.thread135
                                        #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a1, $fp, 96
	ldx.bu	$a0, $a1, $a0
	ldptr.d	$a1, $fp, 5904
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a4, $a3, 1
	ldptr.d	$a5, $fp, 5888
	stx.h	$zero, $a1, $a4
	addi.d	$a1, $a2, 1
	stptr.w	$a1, $fp, 5900
	stx.b	$a0, $a5, $a3
	slli.d	$a0, $a0, 2
	ldx.h	$a1, $s3, $a0
	addi.d	$a1, $a1, 1
	stx.h	$a1, $s3, $a0
	ori	$a0, $s4, 1800
	ldx.w	$a0, $fp, $a0
	ld.w	$a1, $fp, 180
	ldptr.w	$a2, $fp, 5900
	ld.w	$a3, $fp, 172
	addi.w	$a4, $a0, -1
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 180
	addi.w	$a0, $a3, 1
	st.w	$a0, $fp, 172
	bne	$a2, $a4, .LBB19_2
.LBB19_25:                              #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a2, $fp, 152
	bltz	$a2, .LBB19_27
# %bb.26:                               #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB19_28
.LBB19_27:                              #   in Loop: Header=BB19_2 Depth=1
	move	$a1, $zero
.LBB19_28:                              #   in Loop: Header=BB19_2 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	sub.d	$a2, $a0, $a2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s1, $s8, 56
	st.d	$a0, $fp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s8, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s7, $a1, $a0
	beqz	$s7, .LBB19_1
# %bb.29:                               #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s7, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s1, 32
	add.d	$a0, $a0, $s2
	st.d	$a0, $s8, 24
	ld.d	$a0, $s8, 40
	add.d	$a1, $a1, $s2
	st.d	$a1, $s1, 32
	ld.w	$a1, $s8, 32
	add.d	$a0, $a0, $s2
	ld.d	$a2, $s1, 40
	st.d	$a0, $s8, 40
	sub.d	$a0, $a1, $s7
	st.w	$a0, $s8, 32
	sub.d	$a0, $a2, $s2
	st.d	$a0, $s1, 40
	bne	$a2, $s2, .LBB19_1
# %bb.30:                               #   in Loop: Header=BB19_2 Depth=1
	ld.d	$a0, $s1, 16
	st.d	$a0, $s1, 32
	b	.LBB19_1
.LBB19_31:                              # %thread-pre-split133.split.loop.exit188
                                        #   in Loop: Header=BB19_2 Depth=1
	addi.d	$a3, $a6, 3
	b	.LBB19_38
.LBB19_32:                              # %thread-pre-split133.split.loop.exit186
                                        #   in Loop: Header=BB19_2 Depth=1
	addi.d	$a3, $a6, 4
	b	.LBB19_38
.LBB19_33:                              # %thread-pre-split133.split.loop.exit184
                                        #   in Loop: Header=BB19_2 Depth=1
	addi.d	$a3, $a6, 5
	b	.LBB19_38
.LBB19_34:                              # %thread-pre-split133.split.loop.exit182
                                        #   in Loop: Header=BB19_2 Depth=1
	addi.d	$a3, $a6, 6
	b	.LBB19_38
.LBB19_35:                              # %thread-pre-split133.split.loop.exit180
                                        #   in Loop: Header=BB19_2 Depth=1
	addi.d	$a3, $a6, 7
	b	.LBB19_38
.LBB19_36:                              # %thread-pre-split133.split.loop.exit178
                                        #   in Loop: Header=BB19_2 Depth=1
	addi.d	$a3, $a6, 8
	b	.LBB19_38
.LBB19_37:                              # %thread-pre-split133.split.loop.exit176
                                        #   in Loop: Header=BB19_2 Depth=1
	addi.d	$a3, $a6, 9
.LBB19_38:                              # %thread-pre-split133
                                        #   in Loop: Header=BB19_2 Depth=1
	sub.d	$a2, $a3, $a2
	addi.w	$a2, $a2, 258
	sltu	$a3, $a2, $a1
	maskeqz	$a4, $a2, $a3
	ldx.wu	$a2, $fp, $s5
	masknez	$a1, $a1, $a3
	or	$a1, $a4, $a1
	st.w	$a1, $fp, 160
	ori	$a3, $zero, 3
	bltu	$a1, $a3, .LBB19_24
# %bb.39:                               #   in Loop: Header=BB19_2 Depth=1
	ldptr.d	$a0, $fp, 5904
	addi.d	$a1, $a1, -3
	slli.d	$a3, $a2, 1
	ldptr.d	$a4, $fp, 5888
	ori	$a5, $zero, 1
	stx.h	$a5, $a0, $a3
	addi.d	$a0, $a2, 1
	stptr.w	$a0, $fp, 5900
	stx.b	$a1, $a4, $a2
	andi	$a0, $a1, 255
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.h	$a1, $a2, $a0
	addi.d	$a1, $a1, 1
	stx.h	$a1, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_dist_code)
	ld.d	$a0, $a0, %got_pc_lo12(_dist_code)
	ld.bu	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$a1, $a4, $a0
	addi.d	$a1, $a1, 1
	ld.w	$a2, $fp, 160
	ld.w	$a3, $fp, 180
	stx.h	$a1, $a4, $a0
	ori	$a0, $s4, 1800
	ldx.w	$a0, $fp, $a0
	sub.d	$a1, $a3, $a2
	ld.w	$a3, $fp, 172
	st.w	$a1, $fp, 180
	ldptr.w	$a1, $fp, 5900
	addi.w	$a4, $a0, -1
	add.w	$a0, $a3, $a2
	st.w	$a0, $fp, 172
	st.w	$zero, $fp, 160
	bne	$a1, $a4, .LBB19_2
	b	.LBB19_25
.LBB19_40:
	ori	$a0, $zero, 4
	stptr.w	$zero, $fp, 5932
	bne	$s0, $a0, .LBB19_43
# %bb.41:
	ld.d	$a0, $fp, 152
	bltz	$a0, .LBB19_46
# %bb.42:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a2, $a0, 31, 0
	add.d	$a1, $a1, $a2
	b	.LBB19_47
.LBB19_43:
	ldptr.w	$a0, $fp, 5900
	beqz	$a0, .LBB19_56
# %bb.44:
	ld.d	$a0, $fp, 152
	bltz	$a0, .LBB19_51
# %bb.45:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a2, $a0, 31, 0
	add.d	$a1, $a1, $a2
	b	.LBB19_52
.LBB19_46:
	move	$a1, $zero
.LBB19_47:
	ld.wu	$a2, $fp, 172
	sub.d	$a2, $a2, $a0
	ori	$a3, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB19_50
# %bb.48:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB19_50
# %bb.49:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB19_50:                              # %flush_pending.exit130
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 3
	b	.LBB19_58
.LBB19_51:
	move	$a1, $zero
.LBB19_52:
	ld.wu	$a2, $fp, 172
	sub.d	$a2, $a2, $a0
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB19_55
# %bb.53:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB19_55
# %bb.54:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB19_55:                              # %flush_pending.exit132
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB19_57
.LBB19_56:
	ori	$a0, $zero, 1
	b	.LBB19_58
.LBB19_57:
	move	$a0, $zero
.LBB19_58:                              # %.loopexit
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
.Lfunc_end19:
	.size	deflate_rle, .Lfunc_end19-deflate_rle
                                        # -- End function
	.globl	deflateCopy                     # -- Begin function deflateCopy
	.p2align	5
	.type	deflateCopy,@function
deflateCopy:                            # @deflateCopy
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB20_5
# %bb.1:
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB20_5
# %bb.2:
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB20_5
# %bb.3:
	ld.d	$fp, $a1, 56
	beqz	$fp, .LBB20_5
# %bb.4:
	ld.d	$a2, $fp, 0
	beq	$a2, $a1, .LBB20_6
.LBB20_5:                               # %deflateStateCheck.exit.thread
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB20_6:
	ld.w	$a2, $fp, 8
	addi.d	$a4, $a2, -57
	ori	$a5, $zero, 56
	bltu	$a5, $a4, .LBB20_15
# %bb.7:
	ori	$a5, $zero, 1
	sll.d	$a4, $a5, $a4
	lu12i.w	$a5, 17
	ori	$a5, $a5, 1
	lu32i.d	$a5, 16388
	lu52i.d	$a5, $a5, 16
	and	$a4, $a4, $a5
	beqz	$a4, .LBB20_15
.LBB20_8:                               # %deflateStateCheck.exit
	beqz	$s0, .LBB20_5
# %bb.9:
	ori	$a2, $zero, 112
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 64
	move	$s1, $s0
	ld.d	$a0, $s0, 80
	lu12i.w	$s3, 1
	ori	$s2, $s3, 1856
	ori	$a1, $zero, 1
	move	$a2, $s2
	jirl	$ra, $a3, 0
	move	$s0, $a0
	addi.w	$a0, $zero, -4
	beqz	$s0, .LBB20_5
# %bb.10:
	move	$s4, $a0
	st.d	$s0, $s1, 56
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 64
	ld.d	$a0, $s1, 80
	ld.w	$a1, $s0, 80
	st.d	$s1, $s0, 0
	ori	$a2, $zero, 2
	jirl	$ra, $a3, 0
	ld.d	$a4, $s1, 64
	ld.d	$a3, $s1, 80
	ld.w	$a1, $s0, 80
	st.d	$a0, $s0, 96
	ori	$a2, $zero, 2
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$a4, $s1, 64
	ld.d	$a3, $s1, 80
	ld.w	$a1, $s0, 132
	st.d	$a0, $s0, 112
	ori	$a2, $zero, 2
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$a4, $s1, 64
	ld.d	$a3, $s1, 80
	ldptr.w	$a1, $s0, 5896
	st.d	$a0, $s0, 120
	ori	$a2, $zero, 4
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$a3, $s0, 96
	st.d	$a0, $s0, 16
	beqz	$a3, .LBB20_17
# %bb.11:
	ld.d	$a1, $s0, 112
	beqz	$a1, .LBB20_17
# %bb.12:
	ld.d	$a1, $s0, 120
	beqz	$a1, .LBB20_17
# %bb.13:
	beqz	$a0, .LBB20_17
# %bb.14:
	ld.w	$a2, $s0, 80
	ld.d	$a1, $fp, 96
	slli.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 1
	slli.d	$a2, $a2, 1
	move	$s1, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 112
	ld.wu	$a2, $s0, 80
	ld.d	$a1, $fp, 112
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 120
	ld.wu	$a2, $s0, 132
	ld.d	$a1, $fp, 120
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$a1, $fp, 16
	ld.wu	$a2, $s0, 24
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$a1, $fp, 32
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s0, 16
	ori	$a4, $s3, 1800
	ldx.wu	$a4, $s0, $a4
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a3, $a1
	st.d	$a1, $s0, 32
	bstrpick.d	$a1, $a4, 31, 1
	alsl.d	$a1, $a1, $s1, 1
	stptr.d	$a1, $s0, 5904
	alsl.d	$a1, $a4, $a4, 1
	add.d	$a1, $a3, $a1
	stptr.d	$a1, $s0, 5888
	addi.d	$a1, $s0, 212
	stptr.d	$a1, $s0, 2904
	addi.d	$a1, $s0, 2047
	addi.d	$a2, $a1, 457
	stptr.d	$a2, $s0, 2928
	addi.d	$a1, $a1, 701
	stptr.d	$a1, $s0, 2952
	b	.LBB20_5
.LBB20_15:
	ori	$a4, $zero, 666
	beq	$a2, $a4, .LBB20_8
# %bb.16:
	ori	$a4, $zero, 42
	bne	$a2, $a4, .LBB20_5
	b	.LBB20_8
.LBB20_17:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(deflateEnd)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB20_5
.Lfunc_end20:
	.size	deflateCopy, .Lfunc_end20-deflateCopy
                                        # -- End function
	.p2align	5                               # -- Begin function deflate_fast
	.type	deflate_fast,@function
deflate_fast:                           # @deflate_fast
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
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$s3, $a0, 212
	addi.d	$s4, $a0, 1240
	addi.d	$a0, $a0, 2047
	addi.d	$s5, $a0, 457
	ori	$s1, $zero, 261
	ori	$s2, $zero, 3
	lu12i.w	$a0, 1
	ori	$s7, $a0, 1804
	pcalau12i	$a1, %got_pc_hi20(_length_code)
	ld.d	$a1, $a1, %got_pc_lo12(_length_code)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(_dist_code)
	ld.d	$a1, $a1, %got_pc_lo12(_dist_code)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s0, $a0, 1800
	b	.LBB21_2
	.p2align	4, , 16
.LBB21_1:                               # %flush_pending.exit
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	ori	$s1, $zero, 261
	ori	$s2, $zero, 3
	beqz	$a0, .LBB21_44
.LBB21_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_16 Depth 2
	ld.w	$a0, $fp, 180
	bltu	$s1, $a0, .LBB21_7
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_window)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bnez	$a1, .LBB21_5
# %bb.4:                                #   in Loop: Header=BB21_2 Depth=1
	ori	$a1, $zero, 262
	bltu	$a0, $a1, .LBB21_44
.LBB21_5:                               #   in Loop: Header=BB21_2 Depth=1
	beqz	$a0, .LBB21_27
# %bb.6:                                #   in Loop: Header=BB21_2 Depth=1
	bltu	$a0, $s2, .LBB21_9
.LBB21_7:                               # %.thread
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a0, $fp, 172
	ld.w	$a1, $fp, 128
	ld.d	$a2, $fp, 96
	ld.wu	$a3, $fp, 144
	addi.d	$a4, $a0, 2
	bstrpick.d	$a4, $a4, 31, 0
	ldx.bu	$a2, $a2, $a4
	ld.w	$a4, $fp, 140
	sll.w	$a1, $a1, $a3
	xor	$a1, $a1, $a2
	and	$a1, $a1, $a4
	st.w	$a1, $fp, 128
	ld.d	$a2, $fp, 120
	bstrpick.d	$a1, $a1, 31, 0
	ld.w	$a3, $fp, 88
	slli.d	$a4, $a1, 1
	ldx.hu	$a1, $a2, $a4
	ld.d	$a5, $fp, 112
	and	$a3, $a3, $a0
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 1
	stx.h	$a1, $a5, $a3
	stx.h	$a0, $a2, $a4
	beqz	$a1, .LBB21_9
# %bb.8:                                #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a2, $fp, 80
	sub.w	$a0, $a0, $a1
	addi.w	$a2, $a2, -262
	bgeu	$a2, $a0, .LBB21_19
.LBB21_9:                               # %.thread149thread-pre-split
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a0, $fp, 160
	bltu	$a0, $s2, .LBB21_20
.LBB21_10:                              #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a1, $fp, 172
	ld.w	$a2, $fp, 176
	ldx.wu	$a3, $fp, $s7
	ldptr.d	$a4, $fp, 5904
	sub.w	$a1, $a1, $a2
	slli.d	$a2, $a3, 1
	stx.h	$a1, $a4, $a2
	ldptr.d	$a2, $fp, 5888
	addi.d	$a0, $a0, -3
	addi.d	$a4, $a3, 1
	stptr.w	$a4, $fp, 5900
	stx.b	$a0, $a2, $a3
	andi	$a0, $a0, 255
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $a0, 2
	ldx.h	$a3, $s4, $a2
	addi.d	$a0, $a1, -1
	bstrpick.d	$a1, $a0, 15, 0
	addi.d	$a3, $a3, 1
	stx.h	$a3, $s4, $a2
	ori	$a2, $zero, 255
	bltu	$a2, $a1, .LBB21_12
# %bb.11:                               #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	b	.LBB21_13
	.p2align	4, , 16
.LBB21_12:                              #   in Loop: Header=BB21_2 Depth=1
	bstrpick.d	$a0, $a0, 15, 7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 256
.LBB21_13:                              #   in Loop: Header=BB21_2 Depth=1
	ld.bu	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ldx.h	$a1, $s5, $a0
	addi.d	$a1, $a1, 1
	stx.h	$a1, $s5, $a0
	ldx.w	$a1, $fp, $s0
	ld.w	$a2, $fp, 160
	ld.w	$a3, $fp, 180
	ld.w	$a4, $fp, 192
	ldx.w	$a0, $fp, $s7
	addi.w	$a1, $a1, -1
	sub.w	$a3, $a3, $a2
	st.w	$a3, $fp, 180
	bltu	$a4, $a2, .LBB21_18
# %bb.14:                               #   in Loop: Header=BB21_2 Depth=1
	bltu	$a3, $s2, .LBB21_18
# %bb.15:                               #   in Loop: Header=BB21_2 Depth=1
	addi.d	$t1, $a2, -1
	ld.w	$a3, $fp, 144
	ld.d	$a4, $fp, 96
	ld.w	$a5, $fp, 140
	ld.d	$a6, $fp, 120
	ld.d	$a7, $fp, 112
	ld.w	$t0, $fp, 88
	ld.w	$t3, $fp, 172
	ld.w	$t2, $fp, 128
	st.w	$t1, $fp, 160
	addi.d	$t1, $a2, -2
	addi.w	$a2, $t3, 1
	.p2align	4, , 16
.LBB21_16:                              #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $fp, 172
	addi.d	$t3, $a2, 2
	bstrpick.d	$t3, $t3, 31, 0
	ldx.bu	$t3, $a4, $t3
	sll.w	$t2, $t2, $a3
	xor	$t2, $t2, $t3
	and	$t2, $t2, $a5
	st.w	$t2, $fp, 128
	bstrpick.d	$t3, $t2, 31, 0
	slli.d	$t3, $t3, 1
	ldx.h	$t4, $a6, $t3
	and	$t5, $t0, $a2
	bstrpick.d	$t5, $t5, 31, 0
	slli.d	$t5, $t5, 1
	stx.h	$t4, $a7, $t5
	stx.h	$a2, $a6, $t3
	st.w	$t1, $fp, 160
	addi.w	$t1, $t1, -1
	addi.w	$t3, $zero, -1
	addi.w	$a2, $a2, 1
	bne	$t1, $t3, .LBB21_16
# %bb.17:                               #   in Loop: Header=BB21_2 Depth=1
	st.w	$a2, $fp, 172
	bne	$a0, $a1, .LBB21_2
	b	.LBB21_21
	.p2align	4, , 16
.LBB21_18:                              #   in Loop: Header=BB21_2 Depth=1
	ld.w	$a3, $fp, 172
	add.d	$a3, $a3, $a2
	addi.w	$a2, $a3, 0
	ld.d	$a4, $fp, 96
	st.w	$a3, $fp, 172
	st.w	$zero, $fp, 160
	bstrpick.d	$a5, $a2, 31, 0
	ldx.bu	$a5, $a4, $a5
	st.w	$a5, $fp, 128
	ld.wu	$a6, $fp, 144
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a3, $a4, $a3
	ld.w	$a4, $fp, 140
	sll.w	$a5, $a5, $a6
	xor	$a3, $a5, $a3
	and	$a3, $a3, $a4
	st.w	$a3, $fp, 128
	bne	$a0, $a1, .LBB21_2
	b	.LBB21_21
	.p2align	4, , 16
.LBB21_19:                              #   in Loop: Header=BB21_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(longest_match)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 160
	bgeu	$a0, $s2, .LBB21_10
.LBB21_20:                              #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 96
	ld.wu	$a1, $fp, 172
	ldx.wu	$a2, $fp, $s7
	ldptr.d	$a3, $fp, 5904
	ldx.bu	$a0, $a0, $a1
	slli.d	$a1, $a2, 1
	ldptr.d	$a4, $fp, 5888
	stx.h	$zero, $a3, $a1
	addi.d	$a1, $a2, 1
	stptr.w	$a1, $fp, 5900
	stx.b	$a0, $a4, $a2
	slli.d	$a0, $a0, 2
	ldx.h	$a1, $s3, $a0
	addi.d	$a1, $a1, 1
	stx.h	$a1, $s3, $a0
	ldx.w	$a0, $fp, $s0
	ld.w	$a1, $fp, 180
	ldptr.w	$a3, $fp, 5900
	ld.w	$a2, $fp, 172
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 180
	addi.w	$a2, $a2, 1
	st.w	$a2, $fp, 172
	bne	$a3, $a0, .LBB21_2
.LBB21_21:                              #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 152
	bltz	$a0, .LBB21_23
# %bb.22:                               #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a0, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB21_24
.LBB21_23:                              #   in Loop: Header=BB21_2 Depth=1
	move	$a1, $zero
.LBB21_24:                              #   in Loop: Header=BB21_2 Depth=1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $a2, $a0
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s1, $s6, 56
	st.d	$a0, $fp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s6, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s8, $a1, $a0
	beqz	$s8, .LBB21_1
# %bb.25:                               #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s8, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s1, 32
	add.d	$a0, $a0, $s2
	st.d	$a0, $s6, 24
	ld.d	$a0, $s6, 40
	add.d	$a1, $a1, $s2
	st.d	$a1, $s1, 32
	ld.w	$a1, $s6, 32
	add.d	$a0, $a0, $s2
	ld.d	$a2, $s1, 40
	st.d	$a0, $s6, 40
	sub.d	$a0, $a1, $s8
	st.w	$a0, $s6, 32
	sub.d	$a0, $a2, $s2
	st.d	$a0, $s1, 40
	bne	$a2, $s2, .LBB21_1
# %bb.26:                               #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $s1, 16
	st.d	$a0, $s1, 32
	b	.LBB21_1
.LBB21_27:
	ld.w	$a1, $fp, 172
	bstrpick.d	$a0, $a1, 31, 0
	sltui	$a2, $a1, 2
	ori	$a3, $zero, 2
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	ori	$a2, $zero, 4
	stptr.w	$a1, $fp, 5932
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB21_30
# %bb.28:
	ld.d	$a2, $fp, 152
	bltz	$a2, .LBB21_33
# %bb.29:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB21_34
.LBB21_30:
	ldptr.w	$a1, $fp, 5900
	beqz	$a1, .LBB21_43
# %bb.31:
	ld.d	$a2, $fp, 152
	bltz	$a2, .LBB21_38
# %bb.32:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB21_39
.LBB21_33:
	move	$a1, $zero
.LBB21_34:
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB21_37
# %bb.35:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB21_37
# %bb.36:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB21_37:                              # %flush_pending.exit146
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 3
	b	.LBB21_45
.LBB21_38:
	move	$a1, $zero
.LBB21_39:
	sub.d	$a2, $a0, $a2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB21_42
# %bb.40:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB21_42
# %bb.41:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB21_42:                              # %flush_pending.exit148
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB21_44
.LBB21_43:
	ori	$a0, $zero, 1
	b	.LBB21_45
.LBB21_44:
	move	$a0, $zero
.LBB21_45:                              # %.loopexit
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
.Lfunc_end21:
	.size	deflate_fast, .Lfunc_end21-deflate_fast
                                        # -- End function
	.p2align	5                               # -- Begin function deflate_slow
	.type	deflate_slow,@function
deflate_slow:                           # @deflate_slow
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
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$s5, $a0, 1240
	addi.d	$a0, $a0, 2047
	addi.d	$s6, $a0, 457
	addi.d	$a0, $fp, 212
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 262
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s4, $a0, 1804
	ori	$s0, $a0, 1800
	b	.LBB22_2
	.p2align	4, , 16
.LBB22_1:                               # %flush_pending.exit184
                                        #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 172
	ld.w	$a2, $fp, 180
	ld.w	$a0, $a0, 32
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 172
	addi.d	$a1, $a2, -1
	st.w	$a1, $fp, 180
	beqz	$a0, .LBB22_63
.LBB22_2:                               # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_29 Depth 2
	ld.w	$a0, $fp, 180
	bgeu	$a0, $s7, .LBB22_8
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fill_window)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 180
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB22_5
# %bb.4:                                #   in Loop: Header=BB22_2 Depth=1
	bltu	$a1, $s7, .LBB22_63
.LBB22_5:                               #   in Loop: Header=BB22_2 Depth=1
	beqz	$a1, .LBB22_44
# %bb.6:                                #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a2, $fp, 160
	ld.w	$a0, $fp, 176
	ori	$a3, $zero, 2
	bltu	$a3, $a1, .LBB22_9
# %bb.7:                                # %.thread189
                                        #   in Loop: Header=BB22_2 Depth=1
	st.w	$a2, $fp, 184
	st.w	$a0, $fp, 164
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 160
	b	.LBB22_18
	.p2align	4, , 16
.LBB22_8:                               # %..thread_crit_edge
                                        #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a2, $fp, 160
	ld.w	$a0, $fp, 176
.LBB22_9:                               # %.thread
                                        #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a3, $fp, 172
	ld.w	$a1, $fp, 128
	ld.d	$a4, $fp, 96
	ld.wu	$a5, $fp, 144
	addi.d	$a6, $a3, 2
	bstrpick.d	$a6, $a6, 31, 0
	ldx.bu	$a4, $a4, $a6
	ld.w	$a6, $fp, 140
	sll.w	$a1, $a1, $a5
	xor	$a1, $a1, $a4
	and	$a1, $a1, $a6
	st.w	$a1, $fp, 128
	ld.d	$a4, $fp, 120
	bstrpick.d	$a1, $a1, 31, 0
	ld.w	$a5, $fp, 88
	slli.d	$a6, $a1, 1
	ldx.hu	$a1, $a4, $a6
	ld.d	$a7, $fp, 112
	and	$a5, $a5, $a3
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 1
	stx.h	$a1, $a7, $a5
	stx.h	$a3, $a4, $a6
	st.w	$a2, $fp, 184
	st.w	$a0, $fp, 164
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 160
	beqz	$a1, .LBB22_18
# %bb.10:                               #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a4, $fp, 192
	ori	$a0, $zero, 2
	bgeu	$a2, $a4, .LBB22_17
# %bb.11:                               #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a2, $fp, 80
	sub.w	$a3, $a3, $a1
	addi.w	$a2, $a2, -262
	bltu	$a2, $a3, .LBB22_17
# %bb.12:                               #   in Loop: Header=BB22_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(longest_match)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 160
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB22_17
# %bb.13:                               #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a1, $fp, 200
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB22_15
.LBB22_14:                              #   in Loop: Header=BB22_2 Depth=1
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 160
	b	.LBB22_17
.LBB22_15:                              #   in Loop: Header=BB22_2 Depth=1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB22_17
# %bb.16:                               #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a0, $fp, 172
	ld.w	$a1, $fp, 176
	sub.w	$a1, $a0, $a1
	ori	$a0, $zero, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB22_14
	.p2align	4, , 16
.LBB22_17:                              # %thread-pre-split
                                        #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a2, $fp, 184
.LBB22_18:                              #   in Loop: Header=BB22_2 Depth=1
	ori	$a1, $zero, 3
	bltu	$a2, $a1, .LBB22_22
# %bb.19:                               #   in Loop: Header=BB22_2 Depth=1
	bltu	$a2, $a0, .LBB22_22
# %bb.20:                               #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a0, $fp, 172
	ld.w	$a3, $fp, 164
	ld.w	$a1, $fp, 180
	ldx.wu	$a4, $fp, $s4
	ldptr.d	$a5, $fp, 5904
	nor	$a3, $a3, $zero
	add.w	$a3, $a0, $a3
	slli.d	$a6, $a4, 1
	stx.h	$a3, $a5, $a6
	ldptr.d	$a5, $fp, 5888
	addi.d	$a6, $a2, -3
	addi.d	$a2, $a4, 1
	stptr.w	$a2, $fp, 5900
	stx.b	$a6, $a5, $a4
	addi.d	$a3, $a3, -1
	bstrpick.d	$a2, $a3, 15, 0
	andi	$a4, $a6, 255
	pcalau12i	$a5, %got_pc_hi20(_length_code)
	ld.d	$a5, $a5, %got_pc_lo12(_length_code)
	ldx.bu	$a4, $a5, $a4
	slli.d	$a4, $a4, 2
	ldx.h	$a5, $s5, $a4
	addi.d	$a5, $a5, 1
	stx.h	$a5, $s5, $a4
	ori	$a4, $zero, 255
	bltu	$a4, $a2, .LBB22_26
# %bb.21:                               #   in Loop: Header=BB22_2 Depth=1
	pcalau12i	$a3, %got_pc_hi20(_dist_code)
	ld.d	$a3, $a3, %got_pc_lo12(_dist_code)
	add.d	$a2, $a3, $a2
	b	.LBB22_27
	.p2align	4, , 16
.LBB22_22:                              #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a0, $fp, 168
	beqz	$a0, .LBB22_34
# %bb.23:                               #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a0, $fp, 172
	ld.d	$a1, $fp, 96
	addi.d	$a0, $a0, -1
	ldx.wu	$a2, $fp, $s4
	bstrpick.d	$a0, $a0, 31, 0
	ldptr.d	$a3, $fp, 5904
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 1
	ldptr.d	$a4, $fp, 5888
	stx.h	$zero, $a3, $a1
	addi.d	$a1, $a2, 1
	stptr.w	$a1, $fp, 5900
	stx.b	$a0, $a4, $a2
	slli.d	$a0, $a0, 2
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$a1, $a4, $a0
	ldx.w	$a2, $fp, $s0
	ldptr.w	$a3, $fp, 5900
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, -1
	stx.h	$a1, $a4, $a0
	bne	$a3, $a2, .LBB22_1
# %bb.24:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a0, $fp, 152
	bltz	$a0, .LBB22_40
# %bb.25:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a1, $fp, 96
	bstrpick.d	$a2, $a0, 31, 0
	add.d	$a1, $a1, $a2
	b	.LBB22_41
	.p2align	4, , 16
.LBB22_26:                              #   in Loop: Header=BB22_2 Depth=1
	bstrpick.d	$a2, $a3, 15, 7
	pcalau12i	$a3, %got_pc_hi20(_dist_code)
	ld.d	$a3, $a3, %got_pc_lo12(_dist_code)
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 256
.LBB22_27:                              #   in Loop: Header=BB22_2 Depth=1
	ld.bu	$a2, $a2, 0
	slli.d	$a2, $a2, 2
	ldx.h	$a3, $s6, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a4, $fp, 184
	ld.w	$a5, $fp, 180
	addi.d	$a1, $a3, 1
	stx.h	$a1, $s6, $a2
	ldx.w	$a1, $fp, $s4
	sub.d	$a2, $a5, $a4
	addi.d	$a2, $a2, 1
	st.w	$a2, $fp, 180
	addi.d	$a2, $a4, -2
	st.w	$a2, $fp, 184
	ld.w	$a5, $fp, 172
	ldx.w	$a2, $fp, $s0
	addi.w	$a3, $a0, -3
	addi.d	$a4, $a4, -3
	addi.w	$a0, $a5, 1
	b	.LBB22_29
	.p2align	4, , 16
.LBB22_28:                              #   in Loop: Header=BB22_29 Depth=2
	st.w	$a4, $fp, 184
	addi.w	$a4, $a4, -1
	addi.w	$a5, $zero, -1
	addi.w	$a0, $a0, 1
	beq	$a4, $a5, .LBB22_31
.LBB22_29:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a0, $fp, 172
	bltu	$a3, $a0, .LBB22_28
# %bb.30:                               #   in Loop: Header=BB22_29 Depth=2
	ld.w	$a5, $fp, 128
	ld.d	$a6, $fp, 96
	ld.wu	$a7, $fp, 144
	addi.d	$t0, $a0, 2
	bstrpick.d	$t0, $t0, 31, 0
	ldx.bu	$a6, $a6, $t0
	ld.w	$t0, $fp, 140
	sll.w	$a5, $a5, $a7
	xor	$a5, $a5, $a6
	and	$a5, $a5, $t0
	st.w	$a5, $fp, 128
	ld.d	$a6, $fp, 120
	bstrpick.d	$a5, $a5, 31, 0
	ld.w	$a7, $fp, 88
	slli.d	$a5, $a5, 1
	ldx.h	$t0, $a6, $a5
	ld.d	$t1, $fp, 112
	and	$a7, $a7, $a0
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 1
	stx.h	$t0, $t1, $a7
	stx.h	$a0, $a6, $a5
	b	.LBB22_28
	.p2align	4, , 16
.LBB22_31:                              #   in Loop: Header=BB22_2 Depth=1
	addi.w	$a2, $a2, -1
	st.w	$zero, $fp, 168
	ori	$a3, $zero, 2
	st.w	$a3, $fp, 160
	st.w	$a0, $fp, 172
	bne	$a1, $a2, .LBB22_2
# %bb.32:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a2, $fp, 152
	bltz	$a2, .LBB22_35
# %bb.33:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB22_36
.LBB22_34:                              #   in Loop: Header=BB22_2 Depth=1
	ld.w	$a0, $fp, 172
	ld.w	$a1, $fp, 180
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 168
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 172
	addi.d	$a0, $a1, -1
	st.w	$a0, $fp, 180
	b	.LBB22_2
.LBB22_35:                              #   in Loop: Header=BB22_2 Depth=1
	move	$a1, $zero
.LBB22_36:                              #   in Loop: Header=BB22_2 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	sub.d	$a2, $a0, $a2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s1, $s8, 56
	st.d	$a0, $fp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s8, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB22_39
# %bb.37:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s3, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s1, 32
	add.d	$a0, $a0, $s2
	st.d	$a0, $s8, 24
	ld.d	$a0, $s8, 40
	add.d	$a1, $a1, $s2
	st.d	$a1, $s1, 32
	ld.w	$a1, $s8, 32
	add.d	$a0, $a0, $s2
	ld.d	$a2, $s1, 40
	st.d	$a0, $s8, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s8, 32
	sub.d	$a0, $a2, $s2
	st.d	$a0, $s1, 40
	bne	$a2, $s2, .LBB22_39
# %bb.38:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a0, $s1, 16
	st.d	$a0, $s1, 32
.LBB22_39:                              # %flush_pending.exit
                                        #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB22_2
	b	.LBB22_63
.LBB22_40:                              #   in Loop: Header=BB22_2 Depth=1
	move	$a1, $zero
.LBB22_41:                              #   in Loop: Header=BB22_2 Depth=1
	ld.wu	$a2, $fp, 172
	sub.d	$a2, $a2, $a0
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s1, $s8, 56
	st.d	$a0, $fp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s8, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB22_1
# %bb.42:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s1, 32
	bstrpick.d	$s2, $s3, 31, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s1, 32
	add.d	$a0, $a0, $s2
	st.d	$a0, $s8, 24
	ld.d	$a0, $s8, 40
	add.d	$a1, $a1, $s2
	st.d	$a1, $s1, 32
	ld.w	$a1, $s8, 32
	add.d	$a0, $a0, $s2
	ld.d	$a2, $s1, 40
	st.d	$a0, $s8, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s8, 32
	sub.d	$a0, $a2, $s2
	st.d	$a0, $s1, 40
	bne	$a2, $s2, .LBB22_1
# %bb.43:                               #   in Loop: Header=BB22_2 Depth=1
	ld.d	$a0, $s1, 16
	st.d	$a0, $s1, 32
	b	.LBB22_1
.LBB22_44:
	ld.w	$a0, $fp, 168
	beqz	$a0, .LBB22_46
# %bb.45:
	ld.w	$a0, $fp, 172
	ld.d	$a1, $fp, 96
	addi.d	$a0, $a0, -1
	ldx.wu	$a2, $fp, $s4
	bstrpick.d	$a0, $a0, 31, 0
	ldptr.d	$a3, $fp, 5904
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 1
	ldptr.d	$a4, $fp, 5888
	stx.h	$zero, $a3, $a1
	addi.d	$a1, $a2, 1
	stptr.w	$a1, $fp, 5900
	stx.b	$a0, $a4, $a2
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$a1, $a2, $a0
	addi.d	$a1, $a1, 1
	stx.h	$a1, $a2, $a0
	st.w	$zero, $fp, 168
.LBB22_46:
	ld.w	$a1, $fp, 172
	bstrpick.d	$a0, $a1, 31, 0
	sltui	$a2, $a1, 2
	ori	$a3, $zero, 2
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	ori	$a2, $zero, 4
	stptr.w	$a1, $fp, 5932
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB22_49
# %bb.47:
	ld.d	$a2, $fp, 152
	bltz	$a2, .LBB22_52
# %bb.48:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB22_53
.LBB22_49:
	ldptr.w	$a1, $fp, 5900
	beqz	$a1, .LBB22_62
# %bb.50:
	ld.d	$a2, $fp, 152
	bltz	$a2, .LBB22_57
# %bb.51:
	ld.d	$a1, $fp, 96
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	b	.LBB22_58
.LBB22_52:
	move	$a1, $zero
.LBB22_53:
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB22_56
# %bb.54:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB22_56
# %bb.55:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB22_56:                              # %flush_pending.exit186
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 3
	b	.LBB22_64
.LBB22_57:
	move	$a1, $zero
.LBB22_58:
	sub.d	$a2, $a0, $a2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_tr_flush_block)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	ld.wu	$a0, $fp, 172
	ld.d	$s0, $s2, 56
	st.d	$a0, $fp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_tr_flush_bits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s2, 32
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a0
	beqz	$s3, .LBB22_61
# %bb.59:
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	bstrpick.d	$s1, $s3, 31, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s0, 32
	add.d	$a0, $a0, $s1
	st.d	$a0, $s2, 24
	ld.d	$a0, $s2, 40
	add.d	$a1, $a1, $s1
	st.d	$a1, $s0, 32
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $s1
	ld.d	$a2, $s0, 40
	st.d	$a0, $s2, 40
	sub.d	$a0, $a1, $s3
	st.w	$a0, $s2, 32
	sub.d	$a0, $a2, $s1
	st.d	$a0, $s0, 40
	bne	$a2, $s1, .LBB22_61
# %bb.60:
	ld.d	$a0, $s0, 16
	st.d	$a0, $s0, 32
.LBB22_61:                              # %flush_pending.exit188
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB22_63
.LBB22_62:
	ori	$a0, $zero, 1
	b	.LBB22_64
.LBB22_63:
	move	$a0, $zero
.LBB22_64:                              # %.loopexit
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
.Lfunc_end22:
	.size	deflate_slow, .Lfunc_end22-deflate_slow
                                        # -- End function
	.p2align	5                               # -- Begin function longest_match
	.type	longest_match,@function
longest_match:                          # @longest_match
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a5, $a0, 172
	ld.d	$a2, $a0, 96
	ld.wu	$t3, $a0, 188
	bstrpick.d	$a3, $a5, 31, 0
	ld.w	$a6, $a0, 80
	add.d	$a3, $a2, $a3
	ld.w	$a4, $a0, 184
	ld.w	$t4, $a0, 208
	addi.w	$a6, $a6, -262
	sub.d	$a6, $a5, $a6
	sltu	$a5, $a5, $a6
	masknez	$t8, $a6, $a5
	ld.d	$a5, $a0, 112
	ld.w	$a6, $a0, 88
	addi.d	$a7, $a3, 258
	ld.w	$t0, $a0, 204
	add.d	$t1, $a3, $a4
	ld.bu	$t1, $t1, -1
	ldx.bu	$t2, $a3, $a4
	sltu	$t5, $a4, $t0
	srli.d	$t6, $t3, 2
	ld.w	$t0, $a0, 180
	masknez	$t6, $t6, $t5
	maskeqz	$t3, $t3, $t5
	or	$t3, $t3, $t6
	sltu	$t5, $t4, $t0
	masknez	$t6, $t0, $t5
	maskeqz	$t4, $t4, $t5
	or	$t4, $t4, $t6
	addi.d	$t5, $a2, 5
	ori	$t6, $zero, 250
	ori	$t7, $zero, 0
	lu32i.d	$t7, 257
	addi.w	$t8, $t8, 0
	.p2align	4, , 16
.LBB23_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
	add.d	$fp, $a2, $a1
	ldx.bu	$s0, $fp, $a4
	bne	$s0, $t2, .LBB23_26
# %bb.2:                                #   in Loop: Header=BB23_1 Depth=1
	add.d	$s0, $fp, $a4
	ld.bu	$s0, $s0, -1
	bne	$s0, $t1, .LBB23_26
# %bb.3:                                #   in Loop: Header=BB23_1 Depth=1
	ld.bu	$s0, $fp, 0
	ld.bu	$s1, $a3, 0
	bne	$s0, $s1, .LBB23_26
# %bb.4:                                #   in Loop: Header=BB23_1 Depth=1
	ld.bu	$fp, $fp, 1
	ld.bu	$s0, $a3, 1
	bne	$fp, $s0, .LBB23_26
# %bb.5:                                #   in Loop: Header=BB23_1 Depth=1
	move	$s0, $zero
	add.d	$fp, $t5, $a1
.LBB23_6:                               #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s1, $a3, $s0
	ld.bu	$s3, $s1, 3
	add.d	$s2, $fp, $s0
	ld.bu	$s4, $s2, -2
	bne	$s3, $s4, .LBB23_16
# %bb.7:                                #   in Loop: Header=BB23_6 Depth=2
	ld.bu	$s3, $s1, 4
	ld.bu	$s4, $s2, -1
	bne	$s3, $s4, .LBB23_17
# %bb.8:                                #   in Loop: Header=BB23_6 Depth=2
	ld.bu	$s3, $s1, 5
	ldx.bu	$s4, $fp, $s0
	bne	$s3, $s4, .LBB23_18
# %bb.9:                                #   in Loop: Header=BB23_6 Depth=2
	ld.bu	$s3, $s1, 6
	ld.bu	$s4, $s2, 1
	bne	$s3, $s4, .LBB23_19
# %bb.10:                               #   in Loop: Header=BB23_6 Depth=2
	ld.bu	$s3, $s1, 7
	ld.bu	$s4, $s2, 2
	bne	$s3, $s4, .LBB23_20
# %bb.11:                               #   in Loop: Header=BB23_6 Depth=2
	ld.bu	$s3, $s1, 8
	ld.bu	$s4, $s2, 3
	bne	$s3, $s4, .LBB23_21
# %bb.12:                               #   in Loop: Header=BB23_6 Depth=2
	ld.bu	$s3, $s1, 9
	ld.bu	$s4, $s2, 4
	bne	$s3, $s4, .LBB23_22
# %bb.13:                               #   in Loop: Header=BB23_6 Depth=2
	ld.bu	$s3, $s1, 10
	ld.bu	$s2, $s2, 5
	addi.d	$s1, $s0, 8
	bne	$s3, $s2, .LBB23_15
# %bb.14:                               #   in Loop: Header=BB23_6 Depth=2
	addi.d	$s2, $s0, 2
	move	$s0, $s1
	bltu	$s2, $t6, .LBB23_6
.LBB23_15:                              # %.critedge.split.loop.exit155
                                        #   in Loop: Header=BB23_1 Depth=1
	add.d	$fp, $a3, $s1
	addi.d	$fp, $fp, 2
	b	.LBB23_23
.LBB23_16:                              # %.critedge.split.loop.exit
                                        #   in Loop: Header=BB23_1 Depth=1
	addi.d	$fp, $s1, 3
	b	.LBB23_23
.LBB23_17:                              # %.critedge.split.loop.exit143
                                        #   in Loop: Header=BB23_1 Depth=1
	addi.d	$fp, $s1, 4
	b	.LBB23_23
.LBB23_18:                              # %.critedge.split.loop.exit145
                                        #   in Loop: Header=BB23_1 Depth=1
	addi.d	$fp, $s1, 5
	b	.LBB23_23
.LBB23_19:                              # %.critedge.split.loop.exit147
                                        #   in Loop: Header=BB23_1 Depth=1
	addi.d	$fp, $s1, 6
	b	.LBB23_23
.LBB23_20:                              # %.critedge.split.loop.exit149
                                        #   in Loop: Header=BB23_1 Depth=1
	addi.d	$fp, $s1, 7
	b	.LBB23_23
.LBB23_21:                              # %.critedge.split.loop.exit151
                                        #   in Loop: Header=BB23_1 Depth=1
	addi.d	$fp, $s1, 8
	b	.LBB23_23
.LBB23_22:                              # %.critedge.split.loop.exit153
                                        #   in Loop: Header=BB23_1 Depth=1
	addi.d	$fp, $s1, 9
.LBB23_23:                              # %.critedge
                                        #   in Loop: Header=BB23_1 Depth=1
	sub.d	$s0, $fp, $a7
	addi.w	$fp, $s0, 258
	bge	$a4, $fp, .LBB23_26
# %bb.24:                               #   in Loop: Header=BB23_1 Depth=1
	st.w	$a1, $a0, 176
	bge	$fp, $t4, .LBB23_29
# %bb.25:                               #   in Loop: Header=BB23_1 Depth=1
	slli.d	$a4, $s0, 32
	add.d	$a4, $a4, $t7
	srai.d	$a4, $a4, 32
	ldx.bu	$t1, $a3, $a4
	ldx.bu	$t2, $a3, $fp
	move	$a4, $fp
	.p2align	4, , 16
.LBB23_26:                              #   in Loop: Header=BB23_1 Depth=1
	and	$a1, $a1, $a6
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a5, $a1
	bgeu	$t8, $a1, .LBB23_28
# %bb.27:                               #   in Loop: Header=BB23_1 Depth=1
	addi.w	$t3, $t3, -1
	bnez	$t3, .LBB23_1
.LBB23_28:                              # %.critedge2
	sltu	$a0, $a4, $t0
	masknez	$a1, $t0, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB23_29:
	move	$a4, $fp
	b	.LBB23_28
.Lfunc_end23:
	.size	longest_match, .Lfunc_end23-longest_match
                                        # -- End function
	.type	deflate_copyright,@object       # @deflate_copyright
	.section	.rodata,"a",@progbits
	.globl	deflate_copyright
deflate_copyright:
	.asciz	" deflate 1.2.11 Copyright 1995-2017 Jean-loup Gailly and Mark Adler "
	.size	deflate_copyright, 69

	.type	configuration_table,@object     # @configuration_table
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
configuration_table:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.dword	deflate_stored
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	8                               # 0x8
	.half	4                               # 0x4
	.dword	deflate_fast
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	16                              # 0x10
	.half	8                               # 0x8
	.dword	deflate_fast
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	32                              # 0x20
	.half	32                              # 0x20
	.dword	deflate_fast
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	16                              # 0x10
	.half	16                              # 0x10
	.dword	deflate_slow
	.half	8                               # 0x8
	.half	16                              # 0x10
	.half	32                              # 0x20
	.half	32                              # 0x20
	.dword	deflate_slow
	.half	8                               # 0x8
	.half	16                              # 0x10
	.half	128                             # 0x80
	.half	128                             # 0x80
	.dword	deflate_slow
	.half	8                               # 0x8
	.half	32                              # 0x20
	.half	128                             # 0x80
	.half	256                             # 0x100
	.dword	deflate_slow
	.half	32                              # 0x20
	.half	128                             # 0x80
	.half	258                             # 0x102
	.half	1024                            # 0x400
	.dword	deflate_slow
	.half	32                              # 0x20
	.half	258                             # 0x102
	.half	258                             # 0x102
	.half	4096                            # 0x1000
	.dword	deflate_slow
	.size	configuration_table, 160

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zcalloc
	.addrsig_sym zcfree
	.addrsig_sym deflate_stored
	.addrsig_sym deflate_fast
	.addrsig_sym deflate_slow
