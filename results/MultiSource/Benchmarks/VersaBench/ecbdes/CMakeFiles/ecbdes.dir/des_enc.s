	.file	"des_enc.c"
	.text
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	5
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a4, $a0, 8
	ld.d	$a5, $a0, 0
	srli.d	$a3, $a4, 4
	xor	$a6, $a3, $a5
	lu12i.w	$a3, 61680
	ori	$a3, $a3, 3855
	and	$a6, $a6, $a3
	xor	$a5, $a6, $a5
	slli.d	$a6, $a6, 4
	xor	$a4, $a6, $a4
	srli.d	$a6, $a5, 16
	xor	$a6, $a6, $a4
	bstrpick.d	$a6, $a6, 15, 0
	xor	$a7, $a6, $a4
	slli.d	$a4, $a6, 16
	xor	$a5, $a4, $a5
	srli.d	$a4, $a7, 2
	xor	$a6, $a4, $a5
	lu12i.w	$a4, 209715
	ori	$a4, $a4, 819
	and	$a6, $a6, $a4
	xor	$t0, $a6, $a5
	slli.d	$a5, $a6, 2
	xor	$a6, $a5, $a7
	srli.d	$a5, $t0, 8
	xor	$a7, $a5, $a6
	lu12i.w	$a5, 4080
	ori	$a5, $a5, 255
	and	$a7, $a7, $a5
	xor	$t1, $a7, $a6
	slli.d	$a6, $a7, 8
	xor	$a7, $a6, $t0
	srli.d	$a6, $t1, 1
	xor	$t0, $a6, $a7
	lu12i.w	$a6, 349525
	ori	$a6, $a6, 1365
	and	$t0, $t0, $a6
	xor	$a7, $t0, $a7
	slli.d	$t0, $t0, 1
	xor	$t0, $t0, $t1
	srli.d	$t1, $a7, 29
	alsl.wu	$a7, $a7, $t1, 3
	srli.d	$t1, $t0, 29
	alsl.wu	$t0, $t0, $t1, 3
	beqz	$a2, .LBB0_3
# %bb.1:                                # %.preheader220.preheader
	addi.d	$a1, $a1, 32
	addi.w	$a2, $zero, -8
	pcalau12i	$t1, %got_pc_hi20(des_SPtrans)
	ld.d	$t1, $t1, %got_pc_lo12(des_SPtrans)
	addi.d	$t2, $t1, 1024
	addi.d	$t3, $t1, 2047
	addi.d	$t4, $t3, 1
	addi.d	$t5, $t3, 1025
	addi.d	$t6, $t1, 512
	addi.d	$t7, $t1, 1536
	addi.d	$t8, $t3, 513
	ori	$fp, $zero, 24
	.p2align	4, , 16
.LBB0_2:                                # %.preheader220
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a1, -32
	ld.d	$s1, $a1, -24
	xor	$s0, $s0, $a7
	xor	$s1, $s1, $a7
	srli.d	$s2, $s1, 4
	slli.d	$s3, $s1, 28
	add.d	$s2, $s2, $s3
	slli.d	$s3, $s0, 1
	andi	$s3, $s3, 504
	ldx.d	$s3, $t1, $s3
	srli.d	$s4, $s0, 7
	andi	$s4, $s4, 504
	ldx.d	$s4, $t2, $s4
	srli.d	$s5, $s0, 15
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s0, $s0, 23
	andi	$s0, $s0, 504
	ldx.d	$s6, $t5, $s0
	srli.d	$s0, $s1, 3
	andi	$s0, $s0, 504
	ldx.d	$s7, $t6, $s0
	srli.d	$s0, $s1, 11
	andi	$s0, $s0, 504
	ldx.d	$s8, $t7, $s0
	srli.d	$s0, $s1, 19
	andi	$s0, $s0, 504
	ldx.d	$s1, $t8, $s0
	srli.d	$s0, $s2, 23
	andi	$s2, $s0, 504
	addi.d	$s0, $t3, 1537
	ldx.d	$s2, $s0, $s2
	xor	$t0, $s3, $t0
	xor	$t0, $t0, $s4
	xor	$t0, $t0, $s5
	xor	$t0, $t0, $s6
	xor	$t0, $t0, $s7
	xor	$t0, $t0, $s8
	ld.d	$s3, $a1, -16
	ld.d	$s4, $a1, -8
	xor	$t0, $t0, $s1
	xor	$t0, $t0, $s2
	xor	$s1, $t0, $s3
	xor	$s2, $t0, $s4
	srli.d	$s3, $s2, 4
	slli.d	$s4, $s2, 28
	add.d	$s3, $s3, $s4
	slli.d	$s4, $s1, 1
	andi	$s4, $s4, 504
	ldx.d	$s4, $t1, $s4
	srli.d	$s5, $s1, 7
	andi	$s5, $s5, 504
	ldx.d	$s5, $t2, $s5
	srli.d	$s6, $s1, 15
	andi	$s6, $s6, 504
	ldx.d	$s6, $t4, $s6
	srli.d	$s1, $s1, 23
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	srli.d	$s7, $s2, 3
	andi	$s7, $s7, 504
	ldx.d	$s7, $t6, $s7
	srli.d	$s8, $s2, 11
	andi	$s8, $s8, 504
	ldx.d	$s8, $t7, $s8
	srli.d	$s2, $s2, 19
	andi	$s2, $s2, 504
	ldx.d	$s2, $t8, $s2
	srli.d	$s3, $s3, 23
	andi	$s3, $s3, 504
	ldx.d	$s3, $s0, $s3
	xor	$s4, $s4, $s5
	xor	$s4, $s4, $s6
	xor	$s1, $s4, $s1
	xor	$s1, $s1, $s7
	xor	$s1, $s1, $s8
	xor	$s1, $s1, $s2
	ld.d	$s2, $a1, 0
	ld.d	$s4, $a1, 8
	xor	$s1, $s1, $s3
	xor	$a7, $s1, $a7
	xor	$s1, $a7, $s2
	xor	$s2, $a7, $s4
	srli.d	$s3, $s2, 4
	slli.d	$s4, $s2, 28
	add.d	$s3, $s3, $s4
	slli.d	$s4, $s1, 1
	andi	$s4, $s4, 504
	ldx.d	$s4, $t1, $s4
	srli.d	$s5, $s1, 7
	andi	$s5, $s5, 504
	ldx.d	$s5, $t2, $s5
	srli.d	$s6, $s1, 15
	andi	$s6, $s6, 504
	ldx.d	$s6, $t4, $s6
	srli.d	$s1, $s1, 23
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	srli.d	$s7, $s2, 3
	andi	$s7, $s7, 504
	ldx.d	$s7, $t6, $s7
	srli.d	$s8, $s2, 11
	andi	$s8, $s8, 504
	ldx.d	$s8, $t7, $s8
	srli.d	$s2, $s2, 19
	andi	$s2, $s2, 504
	ldx.d	$s2, $t8, $s2
	srli.d	$s3, $s3, 23
	andi	$s3, $s3, 504
	ldx.d	$s3, $s0, $s3
	xor	$s4, $s4, $s5
	xor	$s4, $s4, $s6
	xor	$s1, $s4, $s1
	xor	$s1, $s1, $s7
	xor	$s1, $s1, $s8
	xor	$s1, $s1, $s2
	ld.d	$s2, $a1, 16
	ld.d	$s4, $a1, 24
	xor	$s1, $s1, $s3
	xor	$t0, $s1, $t0
	xor	$s1, $t0, $s2
	xor	$s2, $t0, $s4
	srli.d	$s3, $s2, 4
	slli.d	$s4, $s2, 28
	add.d	$s3, $s3, $s4
	slli.d	$s4, $s1, 1
	andi	$s4, $s4, 504
	ldx.d	$s4, $t1, $s4
	srli.d	$s5, $s1, 7
	andi	$s5, $s5, 504
	ldx.d	$s5, $t2, $s5
	srli.d	$s6, $s1, 15
	andi	$s6, $s6, 504
	ldx.d	$s6, $t4, $s6
	srli.d	$s1, $s1, 23
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	srli.d	$s7, $s2, 3
	andi	$s7, $s7, 504
	ldx.d	$s7, $t6, $s7
	srli.d	$s8, $s2, 11
	andi	$s8, $s8, 504
	ldx.d	$s8, $t7, $s8
	srli.d	$s2, $s2, 19
	andi	$s2, $s2, 504
	ldx.d	$s2, $t8, $s2
	srli.d	$s3, $s3, 23
	andi	$s3, $s3, 504
	ldx.d	$s0, $s0, $s3
	xor	$s3, $s4, $s5
	xor	$s3, $s3, $s6
	xor	$s1, $s3, $s1
	xor	$s1, $s1, $s7
	xor	$s1, $s1, $s8
	xor	$s1, $s1, $s2
	xor	$s0, $s1, $s0
	xor	$a7, $s0, $a7
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 64
	bltu	$a2, $fp, .LBB0_2
	b	.LBB0_5
.LBB0_3:                                # %.preheader.preheader
	addi.d	$a1, $a1, 248
	ori	$a2, $zero, 38
	pcalau12i	$t1, %got_pc_hi20(des_SPtrans)
	ld.d	$t1, $t1, %got_pc_lo12(des_SPtrans)
	addi.d	$t2, $t1, 1024
	addi.d	$t3, $t1, 2047
	addi.d	$t4, $t3, 1
	addi.d	$t5, $t3, 1025
	addi.d	$t6, $t1, 512
	addi.d	$t7, $t1, 1536
	addi.d	$t8, $t3, 513
	ori	$fp, $zero, 8
	.p2align	4, , 16
.LBB0_4:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a1, -8
	ld.d	$s1, $a1, 0
	xor	$s0, $s0, $a7
	xor	$s1, $s1, $a7
	srli.d	$s2, $s1, 4
	slli.d	$s3, $s1, 28
	add.d	$s2, $s2, $s3
	slli.d	$s3, $s0, 1
	andi	$s3, $s3, 504
	ldx.d	$s3, $t1, $s3
	srli.d	$s4, $s0, 7
	andi	$s4, $s4, 504
	ldx.d	$s4, $t2, $s4
	srli.d	$s5, $s0, 15
	andi	$s5, $s5, 504
	ldx.d	$s5, $t4, $s5
	srli.d	$s0, $s0, 23
	andi	$s0, $s0, 504
	ldx.d	$s6, $t5, $s0
	srli.d	$s0, $s1, 3
	andi	$s0, $s0, 504
	ldx.d	$s7, $t6, $s0
	srli.d	$s0, $s1, 11
	andi	$s0, $s0, 504
	ldx.d	$s8, $t7, $s0
	srli.d	$s0, $s1, 19
	andi	$s0, $s0, 504
	ldx.d	$s1, $t8, $s0
	srli.d	$s0, $s2, 23
	andi	$s2, $s0, 504
	addi.d	$s0, $t3, 1537
	ldx.d	$s2, $s0, $s2
	xor	$t0, $s3, $t0
	xor	$t0, $t0, $s4
	xor	$t0, $t0, $s5
	xor	$t0, $t0, $s6
	xor	$t0, $t0, $s7
	xor	$t0, $t0, $s8
	ld.d	$s3, $a1, -24
	ld.d	$s4, $a1, -16
	xor	$t0, $t0, $s1
	xor	$t0, $t0, $s2
	xor	$s1, $t0, $s3
	xor	$s2, $t0, $s4
	srli.d	$s3, $s2, 4
	slli.d	$s4, $s2, 28
	add.d	$s3, $s3, $s4
	slli.d	$s4, $s1, 1
	andi	$s4, $s4, 504
	ldx.d	$s4, $t1, $s4
	srli.d	$s5, $s1, 7
	andi	$s5, $s5, 504
	ldx.d	$s5, $t2, $s5
	srli.d	$s6, $s1, 15
	andi	$s6, $s6, 504
	ldx.d	$s6, $t4, $s6
	srli.d	$s1, $s1, 23
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	srli.d	$s7, $s2, 3
	andi	$s7, $s7, 504
	ldx.d	$s7, $t6, $s7
	srli.d	$s8, $s2, 11
	andi	$s8, $s8, 504
	ldx.d	$s8, $t7, $s8
	srli.d	$s2, $s2, 19
	andi	$s2, $s2, 504
	ldx.d	$s2, $t8, $s2
	srli.d	$s3, $s3, 23
	andi	$s3, $s3, 504
	ldx.d	$s3, $s0, $s3
	xor	$s4, $s4, $s5
	xor	$s4, $s4, $s6
	xor	$s1, $s4, $s1
	xor	$s1, $s1, $s7
	xor	$s1, $s1, $s8
	xor	$s1, $s1, $s2
	ld.d	$s2, $a1, -40
	ld.d	$s4, $a1, -32
	xor	$s1, $s1, $s3
	xor	$a7, $s1, $a7
	xor	$s1, $a7, $s2
	xor	$s2, $a7, $s4
	srli.d	$s3, $s2, 4
	slli.d	$s4, $s2, 28
	add.d	$s3, $s3, $s4
	slli.d	$s4, $s1, 1
	andi	$s4, $s4, 504
	ldx.d	$s4, $t1, $s4
	srli.d	$s5, $s1, 7
	andi	$s5, $s5, 504
	ldx.d	$s5, $t2, $s5
	srli.d	$s6, $s1, 15
	andi	$s6, $s6, 504
	ldx.d	$s6, $t4, $s6
	srli.d	$s1, $s1, 23
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	srli.d	$s7, $s2, 3
	andi	$s7, $s7, 504
	ldx.d	$s7, $t6, $s7
	srli.d	$s8, $s2, 11
	andi	$s8, $s8, 504
	ldx.d	$s8, $t7, $s8
	srli.d	$s2, $s2, 19
	andi	$s2, $s2, 504
	ldx.d	$s2, $t8, $s2
	srli.d	$s3, $s3, 23
	andi	$s3, $s3, 504
	ldx.d	$s3, $s0, $s3
	xor	$s4, $s4, $s5
	xor	$s4, $s4, $s6
	xor	$s1, $s4, $s1
	xor	$s1, $s1, $s7
	xor	$s1, $s1, $s8
	xor	$s1, $s1, $s2
	ld.d	$s2, $a1, -56
	ld.d	$s4, $a1, -48
	xor	$s1, $s1, $s3
	xor	$t0, $s1, $t0
	xor	$s1, $t0, $s2
	xor	$s2, $t0, $s4
	srli.d	$s3, $s2, 4
	slli.d	$s4, $s2, 28
	add.d	$s3, $s3, $s4
	slli.d	$s4, $s1, 1
	andi	$s4, $s4, 504
	ldx.d	$s4, $t1, $s4
	srli.d	$s5, $s1, 7
	andi	$s5, $s5, 504
	ldx.d	$s5, $t2, $s5
	srli.d	$s6, $s1, 15
	andi	$s6, $s6, 504
	ldx.d	$s6, $t4, $s6
	srli.d	$s1, $s1, 23
	andi	$s1, $s1, 504
	ldx.d	$s1, $t5, $s1
	srli.d	$s7, $s2, 3
	andi	$s7, $s7, 504
	ldx.d	$s7, $t6, $s7
	srli.d	$s8, $s2, 11
	andi	$s8, $s8, 504
	ldx.d	$s8, $t7, $s8
	srli.d	$s2, $s2, 19
	andi	$s2, $s2, 504
	ldx.d	$s2, $t8, $s2
	srli.d	$s3, $s3, 23
	andi	$s3, $s3, 504
	ldx.d	$s0, $s0, $s3
	xor	$s3, $s4, $s5
	xor	$s3, $s3, $s6
	xor	$s1, $s3, $s1
	xor	$s1, $s1, $s7
	xor	$s1, $s1, $s8
	xor	$s1, $s1, $s2
	xor	$s0, $s1, $s0
	xor	$a7, $s0, $a7
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, -64
	bltu	$fp, $a2, .LBB0_4
.LBB0_5:                                # %.loopexit
	srli.d	$a1, $t0, 3
	slli.d	$a2, $t0, 29
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 0
	srli.d	$t0, $a7, 3
	slli.d	$a7, $a7, 29
	add.d	$a7, $t0, $a7
	bstrpick.d	$t0, $a7, 31, 0
	srli.d	$a7, $a7, 1
	xor	$a1, $a7, $a1
	and	$a1, $a1, $a6
	xor	$a2, $a1, $a2
	slli.d	$a1, $a1, 1
	xor	$a1, $a1, $t0
	srli.d	$a6, $a2, 8
	xor	$a6, $a6, $a1
	and	$a5, $a6, $a5
	xor	$a1, $a5, $a1
	slli.d	$a5, $a5, 8
	xor	$a2, $a5, $a2
	srli.d	$a5, $a1, 2
	xor	$a5, $a5, $a2
	and	$a4, $a5, $a4
	xor	$a2, $a4, $a2
	slli.d	$a4, $a4, 2
	xor	$a1, $a4, $a1
	srli.d	$a4, $a2, 16
	bstrpick.d	$a5, $a1, 15, 0
	xor	$a4, $a5, $a4
	xor	$a1, $a4, $a1
	slli.d	$a4, $a4, 16
	xor	$a2, $a4, $a2
	srli.d	$a4, $a1, 4
	xor	$a4, $a4, $a2
	and	$a3, $a4, $a3
	xor	$a2, $a3, $a2
	slli.d	$a3, $a3, 4
	xor	$a1, $a3, $a1
	st.d	$a2, $a0, 0
	st.d	$a1, $a0, 8
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
                                        # -- End function
	.globl	des_encrypt2                    # -- Begin function des_encrypt2
	.p2align	5
	.type	des_encrypt2,@function
des_encrypt2:                           # @des_encrypt2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 8
	srli.d	$a5, $a3, 29
	alsl.wu	$a3, $a3, $a5, 3
	srli.d	$a5, $a4, 29
	alsl.wu	$a4, $a4, $a5, 3
	beqz	$a2, .LBB1_3
# %bb.1:                                # %.preheader158.preheader
	addi.d	$a1, $a1, 32
	addi.w	$a2, $zero, -8
	pcalau12i	$a5, %got_pc_hi20(des_SPtrans)
	ld.d	$a5, $a5, %got_pc_lo12(des_SPtrans)
	addi.d	$a6, $a5, 1024
	addi.d	$t4, $a5, 2047
	addi.d	$a7, $t4, 1
	addi.d	$t0, $t4, 1025
	addi.d	$t1, $a5, 512
	addi.d	$t2, $a5, 1536
	addi.d	$t3, $t4, 513
	addi.d	$t4, $t4, 1537
	ori	$t5, $zero, 24
	.p2align	4, , 16
.LBB1_2:                                # %.preheader158
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $a1, -32
	ld.d	$t7, $a1, -24
	xor	$t6, $t6, $a3
	xor	$t7, $t7, $a3
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$a4, $fp, $a4
	xor	$a4, $a4, $s0
	xor	$a4, $a4, $s1
	xor	$a4, $a4, $t6
	xor	$a4, $a4, $s2
	xor	$a4, $a4, $s3
	ld.d	$t6, $a1, -16
	ld.d	$fp, $a1, -8
	xor	$a4, $a4, $t7
	xor	$a4, $a4, $t8
	xor	$t6, $a4, $t6
	xor	$t7, $a4, $fp
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t6, $fp, $t6
	xor	$t6, $t6, $s2
	xor	$t6, $t6, $s3
	xor	$t6, $t6, $t7
	ld.d	$t7, $a1, 0
	ld.d	$fp, $a1, 8
	xor	$t6, $t6, $t8
	xor	$a3, $t6, $a3
	xor	$t6, $a3, $t7
	xor	$t7, $a3, $fp
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t6, $fp, $t6
	xor	$t6, $t6, $s2
	xor	$t6, $t6, $s3
	xor	$t6, $t6, $t7
	ld.d	$t7, $a1, 16
	ld.d	$fp, $a1, 24
	xor	$t6, $t6, $t8
	xor	$a4, $t6, $a4
	xor	$t6, $a4, $t7
	xor	$t7, $a4, $fp
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t6, $fp, $t6
	xor	$t6, $t6, $s2
	xor	$t6, $t6, $s3
	xor	$t6, $t6, $t7
	xor	$t6, $t6, $t8
	xor	$a3, $t6, $a3
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 64
	bltu	$a2, $t5, .LBB1_2
	b	.LBB1_5
.LBB1_3:                                # %.preheader.preheader
	addi.d	$a1, $a1, 248
	ori	$a2, $zero, 38
	pcalau12i	$a5, %got_pc_hi20(des_SPtrans)
	ld.d	$a5, $a5, %got_pc_lo12(des_SPtrans)
	addi.d	$a6, $a5, 1024
	addi.d	$t4, $a5, 2047
	addi.d	$a7, $t4, 1
	addi.d	$t0, $t4, 1025
	addi.d	$t1, $a5, 512
	addi.d	$t2, $a5, 1536
	addi.d	$t3, $t4, 513
	addi.d	$t4, $t4, 1537
	ori	$t5, $zero, 8
	.p2align	4, , 16
.LBB1_4:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $a1, -8
	ld.d	$t7, $a1, 0
	xor	$t6, $t6, $a3
	xor	$t7, $t7, $a3
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$a4, $fp, $a4
	xor	$a4, $a4, $s0
	xor	$a4, $a4, $s1
	xor	$a4, $a4, $t6
	xor	$a4, $a4, $s2
	xor	$a4, $a4, $s3
	ld.d	$t6, $a1, -24
	ld.d	$fp, $a1, -16
	xor	$a4, $a4, $t7
	xor	$a4, $a4, $t8
	xor	$t6, $a4, $t6
	xor	$t7, $a4, $fp
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t6, $fp, $t6
	xor	$t6, $t6, $s2
	xor	$t6, $t6, $s3
	xor	$t6, $t6, $t7
	ld.d	$t7, $a1, -40
	ld.d	$fp, $a1, -32
	xor	$t6, $t6, $t8
	xor	$a3, $t6, $a3
	xor	$t6, $a3, $t7
	xor	$t7, $a3, $fp
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t6, $fp, $t6
	xor	$t6, $t6, $s2
	xor	$t6, $t6, $s3
	xor	$t6, $t6, $t7
	ld.d	$t7, $a1, -56
	ld.d	$fp, $a1, -48
	xor	$t6, $t6, $t8
	xor	$a4, $t6, $a4
	xor	$t6, $a4, $t7
	xor	$t7, $a4, $fp
	srli.d	$t8, $t7, 4
	slli.d	$fp, $t7, 28
	add.d	$t8, $t8, $fp
	slli.d	$fp, $t6, 1
	andi	$fp, $fp, 504
	ldx.d	$fp, $a5, $fp
	srli.d	$s0, $t6, 7
	andi	$s0, $s0, 504
	ldx.d	$s0, $a6, $s0
	srli.d	$s1, $t6, 15
	andi	$s1, $s1, 504
	ldx.d	$s1, $a7, $s1
	srli.d	$t6, $t6, 23
	andi	$t6, $t6, 504
	ldx.d	$t6, $t0, $t6
	srli.d	$s2, $t7, 3
	andi	$s2, $s2, 504
	ldx.d	$s2, $t1, $s2
	srli.d	$s3, $t7, 11
	andi	$s3, $s3, 504
	ldx.d	$s3, $t2, $s3
	srli.d	$t7, $t7, 19
	andi	$t7, $t7, 504
	ldx.d	$t7, $t3, $t7
	srli.d	$t8, $t8, 23
	andi	$t8, $t8, 504
	ldx.d	$t8, $t4, $t8
	xor	$fp, $fp, $s0
	xor	$fp, $fp, $s1
	xor	$t6, $fp, $t6
	xor	$t6, $t6, $s2
	xor	$t6, $t6, $s3
	xor	$t6, $t6, $t7
	xor	$t6, $t6, $t8
	xor	$a3, $t6, $a3
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, -64
	bltu	$t5, $a2, .LBB1_4
.LBB1_5:                                # %.loopexit.loopexit180
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr0, $a3, 1
	vsrli.d	$vr1, $vr0, 3
	vslli.d	$vr0, $vr0, 29
	vadd.d	$vr0, $vr1, $vr0
	vldi	$vr1, -1777
	vand.v	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	des_encrypt2, .Lfunc_end1-des_encrypt2
                                        # -- End function
	.globl	des_encrypt3                    # -- Begin function des_encrypt3
	.p2align	5
	.type	des_encrypt3,@function
des_encrypt3:                           # @des_encrypt3
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a4, $fp, 0
	move	$s0, $a3
	move	$s1, $a2
	srli.d	$a2, $a0, 4
	xor	$a2, $a2, $a4
	lu12i.w	$a3, 61680
	ori	$s2, $a3, 3855
	and	$a2, $a2, $s2
	xor	$a3, $a2, $a4
	slli.d	$a2, $a2, 4
	xor	$a0, $a2, $a0
	srli.d	$a2, $a3, 16
	xor	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 15, 0
	xor	$a0, $a2, $a0
	slli.d	$a2, $a2, 16
	xor	$a2, $a2, $a3
	srli.d	$a3, $a0, 2
	xor	$a3, $a3, $a2
	lu12i.w	$a4, 209715
	ori	$s3, $a4, 819
	and	$a3, $a3, $s3
	xor	$a2, $a3, $a2
	slli.d	$a3, $a3, 2
	xor	$a0, $a3, $a0
	srli.d	$a3, $a2, 8
	xor	$a3, $a3, $a0
	lu12i.w	$a4, 4080
	ori	$s4, $a4, 255
	and	$a3, $a3, $s4
	xor	$a0, $a3, $a0
	slli.d	$a3, $a3, 8
	xor	$a2, $a3, $a2
	srli.d	$a3, $a0, 1
	xor	$a3, $a3, $a2
	lu12i.w	$a4, 349525
	ori	$s5, $a4, 1365
	and	$a3, $a3, $s5
	xor	$a2, $a3, $a2
	slli.d	$a3, $a3, 1
	xor	$a0, $a3, $a0
	st.d	$a2, $fp, 0
	st.d	$a0, $fp, 8
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(des_encrypt2)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(des_encrypt2)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(des_encrypt2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	srli.d	$a2, $a0, 1
	xor	$a2, $a2, $a1
	and	$a2, $a2, $s5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 1
	xor	$a0, $a2, $a0
	srli.d	$a2, $a1, 8
	xor	$a2, $a2, $a0
	and	$a2, $a2, $s4
	xor	$a0, $a2, $a0
	slli.d	$a2, $a2, 8
	xor	$a1, $a2, $a1
	srli.d	$a2, $a0, 2
	xor	$a2, $a2, $a1
	and	$a2, $a2, $s3
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 2
	xor	$a0, $a2, $a0
	srli.d	$a2, $a1, 16
	xor	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 15, 0
	xor	$a0, $a2, $a0
	slli.d	$a2, $a2, 16
	xor	$a1, $a2, $a1
	srli.d	$a2, $a0, 4
	xor	$a2, $a2, $a1
	and	$a2, $a2, $s2
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 4
	xor	$a0, $a2, $a0
	st.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
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
.Lfunc_end2:
	.size	des_encrypt3, .Lfunc_end2-des_encrypt3
                                        # -- End function
	.globl	des_decrypt3                    # -- Begin function des_decrypt3
	.p2align	5
	.type	des_decrypt3,@function
des_decrypt3:                           # @des_decrypt3
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a4, $fp, 0
	move	$s1, $a2
	move	$s0, $a1
	srli.d	$a1, $a0, 4
	xor	$a1, $a1, $a4
	lu12i.w	$a2, 61680
	ori	$s2, $a2, 3855
	and	$a1, $a1, $s2
	xor	$a2, $a1, $a4
	slli.d	$a1, $a1, 4
	xor	$a0, $a1, $a0
	srli.d	$a1, $a2, 16
	xor	$a1, $a1, $a0
	bstrpick.d	$a1, $a1, 15, 0
	xor	$a0, $a1, $a0
	slli.d	$a1, $a1, 16
	xor	$a1, $a1, $a2
	srli.d	$a2, $a0, 2
	xor	$a2, $a2, $a1
	lu12i.w	$a4, 209715
	ori	$s3, $a4, 819
	and	$a2, $a2, $s3
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 2
	xor	$a0, $a2, $a0
	srli.d	$a2, $a1, 8
	xor	$a2, $a2, $a0
	lu12i.w	$a4, 4080
	ori	$s4, $a4, 255
	and	$a2, $a2, $s4
	xor	$a0, $a2, $a0
	slli.d	$a2, $a2, 8
	xor	$a1, $a2, $a1
	srli.d	$a2, $a0, 1
	xor	$a2, $a2, $a1
	lu12i.w	$a4, 349525
	ori	$s5, $a4, 1365
	and	$a2, $a2, $s5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 1
	xor	$a0, $a2, $a0
	st.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	move	$a1, $a3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(des_encrypt2)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(des_encrypt2)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(des_encrypt2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	srli.d	$a2, $a0, 1
	xor	$a2, $a2, $a1
	and	$a2, $a2, $s5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 1
	xor	$a0, $a2, $a0
	srli.d	$a2, $a1, 8
	xor	$a2, $a2, $a0
	and	$a2, $a2, $s4
	xor	$a0, $a2, $a0
	slli.d	$a2, $a2, 8
	xor	$a1, $a2, $a1
	srli.d	$a2, $a0, 2
	xor	$a2, $a2, $a1
	and	$a2, $a2, $s3
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 2
	xor	$a0, $a2, $a0
	srli.d	$a2, $a1, 16
	xor	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 15, 0
	xor	$a0, $a2, $a0
	slli.d	$a2, $a2, 16
	xor	$a1, $a2, $a1
	srli.d	$a2, $a0, 4
	xor	$a2, $a2, $a1
	and	$a2, $a2, $s2
	xor	$a1, $a2, $a1
	slli.d	$a2, $a2, 4
	xor	$a0, $a2, $a0
	st.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
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
.Lfunc_end3:
	.size	des_decrypt3, .Lfunc_end3-des_decrypt3
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
