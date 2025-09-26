	.file	"uudecode.c"
	.text
	.globl	skip_to_newline                 # -- Begin function skip_to_newline
	.p2align	5
	.type	skip_to_newline,@function
skip_to_newline:                        # @skip_to_newline
# %bb.0:
	add.d	$a0, $a0, $a1
	ori	$a2, $zero, 10
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	bne	$a3, $a2, .LBB0_1
# %bb.2:
	move	$a0, $a1
	ret
.Lfunc_end0:
	.size	skip_to_newline, .Lfunc_end0-skip_to_newline
                                        # -- End function
	.globl	decode_char                     # -- Begin function decode_char
	.p2align	5
	.type	decode_char,@function
decode_char:                            # @decode_char
# %bb.0:
	andi	$a0, $a0, 63
	xori	$a0, $a0, 32
	ret
.Lfunc_end1:
	.size	decode_char, .Lfunc_end1-decode_char
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function decode
.LCPI2_0:
	.word	36                              # 0x24
	.word	39                              # 0x27
	.word	42                              # 0x2a
	.word	45                              # 0x2d
.LCPI2_1:
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	30                              # 0x1e
	.word	33                              # 0x21
.LCPI2_2:
	.word	12                              # 0xc
	.word	15                              # 0xf
	.word	18                              # 0x12
	.word	21                              # 0x15
.LCPI2_3:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	9                               # 0x9
	.text
	.globl	decode
	.p2align	5
	.type	decode,@function
decode:                                 # @decode
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
	ldx.bu	$a5, $a0, $a1
	move	$a3, $zero
	ori	$a4, $zero, 32
	beq	$a5, $a4, .LBB2_19
# %bb.1:                                # %.lr.ph72.preheader
	addi.d	$a6, $a2, 3
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	addi.d	$fp, $a0, 4
	addi.d	$a6, $a0, 31
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	addi.d	$t0, $a2, 1
	ori	$t1, $zero, 10
	lu12i.w	$a6, 349525
	ori	$a6, $a6, 1366
	lu32i.d	$a6, 349525
	lu52i.d	$t2, $a6, 1365
	lu12i.w	$a6, -349526
	ori	$t3, $a6, 2731
	ori	$s0, $zero, 16
	ori	$t5, $zero, 2
	ori	$s1, $zero, 1
	vrepli.w	$vr0, 48
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_10 Depth 2
                                        #     Child Loop BB2_17 Depth 2
	andi	$a5, $a5, 63
	addi.w	$a1, $a1, 1
	beq	$a5, $a4, .LBB2_16
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	xori	$t7, $a5, 32
	mulh.du	$a5, $t7, $t2
	mul.d	$a6, $t7, $t3
	addi.d	$a6, $a6, -1
	bstrpick.d	$a6, $a6, 31, 0
	sltu	$a7, $a5, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	bltu	$a5, $s0, .LBB2_9
# %bb.4:                                # %vector.memcheck
                                        #   in Loop: Header=BB2_2 Depth=1
	add.d	$a6, $a2, $a3
	alsl.d	$a7, $a5, $fp, 2
	add.d	$a7, $a7, $a1
	bgeu	$a6, $a7, .LBB2_6
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB2_2 Depth=1
	alsl.d	$a6, $a5, $a5, 1
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	add.d	$a6, $a6, $a3
	add.d	$a7, $a0, $a1
	bltu	$a7, $a6, .LBB2_9
.LBB2_6:                                # %vector.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a6, $a5, 1
	andi	$a7, $a6, 15
	sltui	$t4, $a7, 1
	masknez	$a7, $a7, $t4
	maskeqz	$t4, $s0, $t4
	or	$a7, $t4, $a7
	sub.d	$a6, $a6, $a7
	alsl.d	$t4, $a6, $a1, 2
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a6, $a6, $a6, 1
	sub.d	$t7, $t7, $a6
	add.w	$fp, $a3, $a6
	vreplgr2vr.w	$vr4, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI2_0)
	pcalau12i	$a3, %pc_hi20(.LCPI2_1)
	vld	$vr2, $a3, %pc_lo12(.LCPI2_1)
	pcalau12i	$a3, %pc_hi20(.LCPI2_2)
	vld	$vr3, $a3, %pc_lo12(.LCPI2_2)
	pcalau12i	$a3, %pc_hi20(.LCPI2_3)
	vld	$vr5, $a3, %pc_lo12(.LCPI2_3)
	vadd.w	$vr1, $vr4, $vr1
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr4, $vr4, $vr5
	nor	$a3, $a5, $zero
	add.d	$a3, $a3, $a7
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a1, -31
	ld.b	$a6, $a1, -27
	ld.b	$a7, $a1, -23
	ld.b	$t4, $a1, -19
	ld.b	$t6, $a1, -15
	ld.b	$t8, $a1, -11
	ld.b	$s0, $a1, -7
	ld.b	$s1, $a1, -3
	ld.b	$s2, $a1, 1
	ld.b	$s3, $a1, 5
	ld.b	$s4, $a1, 9
	ld.b	$s5, $a1, 13
	ld.b	$s6, $a1, 17
	ld.b	$s7, $a1, 21
	ld.b	$s8, $a1, 25
	ld.b	$ra, $a1, 29
	vinsgr2vr.b	$vr5, $a5, 0
	vinsgr2vr.b	$vr5, $a6, 1
	vinsgr2vr.b	$vr5, $a7, 2
	vinsgr2vr.b	$vr5, $t4, 3
	vinsgr2vr.b	$vr5, $t6, 4
	vinsgr2vr.b	$vr5, $t8, 5
	vinsgr2vr.b	$vr5, $s0, 6
	vinsgr2vr.b	$vr5, $s1, 7
	vinsgr2vr.b	$vr5, $s2, 8
	vinsgr2vr.b	$vr5, $s3, 9
	vinsgr2vr.b	$vr5, $s4, 10
	vinsgr2vr.b	$vr5, $s5, 11
	vinsgr2vr.b	$vr5, $s6, 12
	vinsgr2vr.b	$vr5, $s7, 13
	vinsgr2vr.b	$vr5, $s8, 14
	vinsgr2vr.b	$vr5, $ra, 15
	vslli.b	$vr5, $vr5, 2
	ld.b	$a5, $a1, -30
	ld.b	$a6, $a1, -26
	ld.b	$a7, $a1, -22
	ld.b	$t4, $a1, -18
	ld.b	$t6, $a1, -14
	ld.b	$t8, $a1, -10
	ld.b	$s0, $a1, -6
	ld.b	$s1, $a1, -2
	ld.b	$s2, $a1, 2
	ld.b	$s3, $a1, 6
	ld.b	$s4, $a1, 10
	ld.b	$s5, $a1, 14
	ld.b	$s6, $a1, 18
	ld.b	$s7, $a1, 22
	ld.b	$s8, $a1, 26
	ld.b	$ra, $a1, 30
	vinsgr2vr.b	$vr6, $a5, 0
	vinsgr2vr.b	$vr6, $a6, 1
	vinsgr2vr.b	$vr6, $a7, 2
	vinsgr2vr.b	$vr6, $t4, 3
	vinsgr2vr.b	$vr6, $t6, 4
	vinsgr2vr.b	$vr6, $t8, 5
	vinsgr2vr.b	$vr6, $s0, 6
	vinsgr2vr.b	$vr6, $s1, 7
	vinsgr2vr.b	$vr6, $s2, 8
	vinsgr2vr.b	$vr6, $s3, 9
	vinsgr2vr.b	$vr6, $s4, 10
	vinsgr2vr.b	$vr6, $s5, 11
	vinsgr2vr.b	$vr6, $s6, 12
	vinsgr2vr.b	$vr6, $s7, 13
	vinsgr2vr.b	$vr6, $s8, 14
	vinsgr2vr.b	$vr6, $ra, 15
	vsrli.b	$vr6, $vr6, 4
	vandi.b	$vr6, $vr6, 3
	vor.v	$vr5, $vr6, $vr5
	vxori.b	$vr5, $vr5, 130
	vshuf4i.w	$vr6, $vr1, 50
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vshuf4i.w	$vr7, $vr1, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vshuf4i.w	$vr8, $vr2, 50
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr9, $vr2, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr10, $vr3, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr11, $vr3, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr12, $vr4, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr13, $vr4, 16
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr13, $vr13, 32
	vpickve2gr.d	$a5, $vr13, 0
	add.d	$s0, $a2, $a5
	vpickve2gr.d	$a5, $vr13, 1
	add.d	$s1, $a2, $a5
	vpickve2gr.d	$a5, $vr12, 0
	add.d	$s2, $a2, $a5
	vpickve2gr.d	$a5, $vr12, 1
	add.d	$s3, $a2, $a5
	vpickve2gr.d	$a5, $vr11, 0
	add.d	$s4, $a2, $a5
	vpickve2gr.d	$a5, $vr11, 1
	add.d	$s5, $a2, $a5
	vpickve2gr.d	$a5, $vr10, 0
	add.d	$s6, $a2, $a5
	vpickve2gr.d	$a5, $vr10, 1
	add.d	$s7, $a2, $a5
	vpickve2gr.d	$a5, $vr9, 0
	add.d	$s8, $a2, $a5
	vpickve2gr.d	$a5, $vr9, 1
	add.d	$ra, $a2, $a5
	vpickve2gr.d	$a5, $vr8, 0
	add.d	$t6, $a2, $a5
	vpickve2gr.d	$a5, $vr8, 1
	add.d	$a7, $a2, $a5
	vpickve2gr.d	$a5, $vr7, 0
	ld.b	$a6, $a1, -30
	add.d	$a5, $a2, $a5
	ld.b	$t4, $a1, -26
	ld.b	$t8, $a1, -22
	vinsgr2vr.b	$vr8, $a6, 0
	ld.b	$a6, $a1, -18
	vinsgr2vr.b	$vr8, $t4, 1
	ld.b	$t4, $a1, -14
	vinsgr2vr.b	$vr8, $t8, 2
	ld.b	$t8, $a1, -10
	vinsgr2vr.b	$vr8, $a6, 3
	ld.b	$a6, $a1, -6
	vinsgr2vr.b	$vr8, $t4, 4
	ld.b	$t4, $a1, -2
	vinsgr2vr.b	$vr8, $t8, 5
	ld.b	$t8, $a1, 2
	vinsgr2vr.b	$vr8, $a6, 6
	ld.b	$a6, $a1, 6
	vinsgr2vr.b	$vr8, $t4, 7
	ld.b	$t4, $a1, 10
	vinsgr2vr.b	$vr8, $t8, 8
	ld.b	$t8, $a1, 14
	vinsgr2vr.b	$vr8, $a6, 9
	ld.b	$a6, $a1, 18
	vinsgr2vr.b	$vr8, $t4, 10
	ld.b	$t4, $a1, 22
	vinsgr2vr.b	$vr8, $t8, 11
	ld.b	$t8, $a1, 26
	vinsgr2vr.b	$vr8, $a6, 12
	ld.b	$a6, $a1, 30
	vinsgr2vr.b	$vr8, $t4, 13
	vinsgr2vr.b	$vr8, $t8, 14
	ld.b	$t4, $a1, -29
	vinsgr2vr.b	$vr8, $a6, 15
	ld.b	$a6, $a1, -25
	ld.b	$t8, $a1, -21
	vinsgr2vr.b	$vr9, $t4, 0
	ld.b	$t4, $a1, -17
	vinsgr2vr.b	$vr9, $a6, 1
	ld.b	$a6, $a1, -13
	vinsgr2vr.b	$vr9, $t8, 2
	ld.b	$t8, $a1, -9
	vinsgr2vr.b	$vr9, $t4, 3
	ld.b	$t4, $a1, -5
	vinsgr2vr.b	$vr9, $a6, 4
	ld.b	$a6, $a1, -1
	vinsgr2vr.b	$vr9, $t8, 5
	ld.b	$t8, $a1, 3
	vinsgr2vr.b	$vr9, $t4, 6
	ld.b	$t4, $a1, 7
	vinsgr2vr.b	$vr9, $a6, 7
	ld.b	$a6, $a1, 11
	vinsgr2vr.b	$vr9, $t8, 8
	ld.b	$t8, $a1, 15
	vinsgr2vr.b	$vr9, $t4, 9
	ld.b	$t4, $a1, 19
	vinsgr2vr.b	$vr9, $a6, 10
	ld.b	$a6, $a1, 23
	vinsgr2vr.b	$vr9, $t8, 11
	ld.b	$t8, $a1, 27
	vinsgr2vr.b	$vr9, $t4, 12
	ld.b	$t4, $a1, 31
	vinsgr2vr.b	$vr9, $a6, 13
	vinsgr2vr.b	$vr9, $t8, 14
	ld.b	$a6, $a1, -29
	vinsgr2vr.b	$vr9, $t4, 15
	ld.b	$t4, $a1, -25
	ld.b	$t8, $a1, -21
	vinsgr2vr.b	$vr10, $a6, 0
	ld.b	$a6, $a1, -17
	vinsgr2vr.b	$vr10, $t4, 1
	ld.b	$t4, $a1, -13
	vinsgr2vr.b	$vr10, $t8, 2
	ld.b	$t8, $a1, -9
	vinsgr2vr.b	$vr10, $a6, 3
	ld.b	$a6, $a1, -5
	vinsgr2vr.b	$vr10, $t4, 4
	ld.b	$t4, $a1, -1
	vinsgr2vr.b	$vr10, $t8, 5
	ld.b	$t8, $a1, 3
	vinsgr2vr.b	$vr10, $a6, 6
	ld.b	$a6, $a1, 7
	vinsgr2vr.b	$vr10, $t4, 7
	ld.b	$t4, $a1, 11
	vinsgr2vr.b	$vr10, $t8, 8
	ld.b	$t8, $a1, 15
	vinsgr2vr.b	$vr10, $a6, 9
	ld.b	$a6, $a1, 19
	vinsgr2vr.b	$vr10, $t4, 10
	ld.b	$t4, $a1, 23
	vinsgr2vr.b	$vr10, $t8, 11
	ld.b	$t8, $a1, 27
	vinsgr2vr.b	$vr10, $a6, 12
	ld.b	$a6, $a1, 31
	vinsgr2vr.b	$vr10, $t4, 13
	vinsgr2vr.b	$vr10, $t8, 14
	ld.b	$t4, $a1, -28
	vinsgr2vr.b	$vr10, $a6, 15
	ld.b	$a6, $a1, -24
	ld.b	$t8, $a1, -20
	vinsgr2vr.b	$vr11, $t4, 0
	ld.b	$t4, $a1, -16
	vinsgr2vr.b	$vr11, $a6, 1
	ld.b	$a6, $a1, -12
	vinsgr2vr.b	$vr11, $t8, 2
	ld.b	$t8, $a1, -8
	vinsgr2vr.b	$vr11, $t4, 3
	ld.b	$t4, $a1, -4
	vinsgr2vr.b	$vr11, $a6, 4
	ld.b	$a6, $a1, 0
	vinsgr2vr.b	$vr11, $t8, 5
	ld.b	$t8, $a1, 4
	vinsgr2vr.b	$vr11, $t4, 6
	ld.b	$t4, $a1, 8
	vinsgr2vr.b	$vr11, $a6, 7
	ld.b	$a6, $a1, 12
	vinsgr2vr.b	$vr11, $t8, 8
	ld.b	$t8, $a1, 16
	vinsgr2vr.b	$vr11, $t4, 9
	ld.b	$t4, $a1, 20
	vinsgr2vr.b	$vr11, $a6, 10
	vpickve2gr.d	$a6, $vr7, 1
	vinsgr2vr.b	$vr11, $t8, 11
	ld.b	$t8, $a1, 24
	vinsgr2vr.b	$vr11, $t4, 12
	ld.b	$t4, $a1, 28
	add.d	$a6, $a2, $a6
	vinsgr2vr.b	$vr11, $t8, 13
	ld.b	$t8, $a1, 32
	vinsgr2vr.b	$vr11, $t4, 14
	vpickve2gr.d	$t4, $vr6, 0
	add.d	$t4, $a2, $t4
	vinsgr2vr.b	$vr11, $t8, 15
	vpickve2gr.d	$t8, $vr6, 1
	add.d	$t8, $a2, $t8
	vstelm.b	$vr5, $s0, 0, 0
	vstelm.b	$vr5, $s1, 0, 1
	vstelm.b	$vr5, $s2, 0, 2
	vstelm.b	$vr5, $s3, 0, 3
	vstelm.b	$vr5, $s4, 0, 4
	vstelm.b	$vr5, $s5, 0, 5
	vstelm.b	$vr5, $s6, 0, 6
	vstelm.b	$vr5, $s7, 0, 7
	vstelm.b	$vr5, $s8, 0, 8
	vstelm.b	$vr5, $ra, 0, 9
	vstelm.b	$vr5, $t6, 0, 10
	vstelm.b	$vr5, $a7, 0, 11
	vstelm.b	$vr5, $a5, 0, 12
	vstelm.b	$vr5, $a6, 0, 13
	vstelm.b	$vr5, $t4, 0, 14
	vstelm.b	$vr5, $t8, 0, 15
	vslli.b	$vr5, $vr8, 4
	vsrli.b	$vr6, $vr9, 2
	vandi.b	$vr6, $vr6, 15
	vor.v	$vr5, $vr6, $vr5
	vbitrevi.b	$vr5, $vr5, 3
	vstelm.b	$vr5, $s0, 1, 0
	vstelm.b	$vr5, $s1, 1, 1
	vstelm.b	$vr5, $s2, 1, 2
	vstelm.b	$vr5, $s3, 1, 3
	vstelm.b	$vr5, $s4, 1, 4
	vstelm.b	$vr5, $s5, 1, 5
	vstelm.b	$vr5, $s6, 1, 6
	vstelm.b	$vr5, $s7, 1, 7
	vstelm.b	$vr5, $s8, 1, 8
	vstelm.b	$vr5, $ra, 1, 9
	vstelm.b	$vr5, $t6, 1, 10
	vstelm.b	$vr5, $a7, 1, 11
	vstelm.b	$vr5, $a5, 1, 12
	vstelm.b	$vr5, $a6, 1, 13
	vstelm.b	$vr5, $t4, 1, 14
	vstelm.b	$vr5, $t8, 1, 15
	vslli.b	$vr5, $vr10, 6
	vandi.b	$vr6, $vr11, 63
	vor.v	$vr5, $vr6, $vr5
	vbitrevi.b	$vr5, $vr5, 5
	vstelm.b	$vr5, $s0, 2, 0
	vstelm.b	$vr5, $s1, 2, 1
	vstelm.b	$vr5, $s2, 2, 2
	vstelm.b	$vr5, $s3, 2, 3
	vstelm.b	$vr5, $s4, 2, 4
	vstelm.b	$vr5, $s5, 2, 5
	vstelm.b	$vr5, $s6, 2, 6
	vstelm.b	$vr5, $s7, 2, 7
	vstelm.b	$vr5, $s8, 2, 8
	vstelm.b	$vr5, $ra, 2, 9
	vstelm.b	$vr5, $t6, 2, 10
	vstelm.b	$vr5, $a7, 2, 11
	vstelm.b	$vr5, $a5, 2, 12
	vstelm.b	$vr5, $a6, 2, 13
	vstelm.b	$vr5, $t4, 2, 14
	vstelm.b	$vr5, $t8, 2, 15
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr1, $vr1, $vr0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB2_7
# %bb.8:                                #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ori	$s0, $zero, 16
	ori	$s1, $zero, 1
.LBB2_9:                                # %.lr.ph.preheader104
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a5, $zero
	addi.d	$a1, $a1, 2
	add.d	$a6, $t0, $a3
	.p2align	4, , 16
.LBB2_10:                               # %.lr.ph
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $a0, $a1
	ld.b	$t6, $a7, -1
	ld.b	$t8, $a7, -2
	add.w	$t4, $t7, $a5
	srli.d	$t6, $t6, 4
	bstrins.d	$t6, $t8, 63, 2
	addi.d	$t8, $zero, -126
	xor	$t6, $t6, $t8
	bgeu	$t5, $t4, .LBB2_13
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=2
	st.b	$t6, $a6, -1
	ldx.b	$t4, $a0, $a1
	ld.b	$t6, $a7, -1
	srli.d	$t4, $t4, 2
	bstrins.d	$t4, $t6, 63, 4
	xori	$t4, $t4, 8
	st.b	$t4, $a6, 0
	ldx.b	$t4, $a0, $a1
	ld.bu	$a7, $a7, 1
	bstrins.d	$a7, $t4, 63, 6
	xori	$a7, $a7, 32
	st.b	$a7, $a6, 1
	addi.d	$a1, $a1, 4
	addi.d	$a5, $a5, -3
	add.w	$a7, $t7, $a5
	addi.d	$a6, $a6, 3
	bnez	$a7, .LBB2_10
# %bb.12:                               # %._crit_edge.loopexit.loopexit
                                        #   in Loop: Header=BB2_2 Depth=1
	sub.w	$a3, $a3, $a5
	addi.w	$a1, $a1, -2
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_13:                               #   in Loop: Header=BB2_2 Depth=1
	sub.d	$a5, $a3, $a5
	addi.w	$a3, $a5, 1
	st.b	$t6, $a6, -1
	beq	$t4, $s1, .LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_2 Depth=1
	ldx.b	$a6, $a0, $a1
	ld.b	$a7, $a7, -1
	srli.d	$a6, $a6, 2
	bstrins.d	$a6, $a7, 63, 4
	xori	$a6, $a6, 8
	addi.w	$a5, $a5, 2
	stx.b	$a6, $a2, $a3
	move	$a3, $a5
.LBB2_15:                               # %.thread
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.w	$a1, $a1, 2
.LBB2_16:                               # %._crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	add.d	$a5, $a0, $a1
	.p2align	4, , 16
.LBB2_17:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, 0
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 1
	bne	$a6, $t1, .LBB2_17
# %bb.18:                               # %skip_to_newline.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	ldx.bu	$a5, $a0, $a1
	bne	$a5, $a4, .LBB2_2
.LBB2_19:                               # %.preheader
	slli.d	$a2, $a1, 32
	add.d	$a1, $a0, $a1
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	ori	$a5, $zero, 10
	.p2align	4, , 16
.LBB2_20:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a1, 0
	add.d	$a2, $a2, $a4
	addi.d	$a1, $a1, 1
	bne	$a6, $a5, .LBB2_20
# %bb.21:                               # %skip_to_newline.exit63
	srai.d	$a1, $a2, 32
	ldx.bu	$a2, $a0, $a1
	ori	$a4, $zero, 101
	bne	$a2, $a4, .LBB2_25
# %bb.22:
	add.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 110
	bne	$a1, $a2, .LBB2_25
# %bb.23:
	ld.bu	$a0, $a0, 2
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB2_25
# %bb.24:
	move	$a0, $a3
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
.LBB2_25:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	decode, .Lfunc_end2-decode
                                        # -- End function
	.globl	do_decode                       # -- Begin function do_decode
	.p2align	5
	.type	do_decode,@function
do_decode:                              # @do_decode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 12
	move	$a0, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 12
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(decode)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_2:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	do_decode, .Lfunc_end3-do_decode
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s2, $a1
	move	$s1, $a0
	lu12i.w	$a0, 2441
	ori	$s0, $a0, 1664
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$fp, $a0
	blt	$s1, $a1, .LBB4_3
# %bb.1:
	ld.d	$a0, $s2, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_29
# %bb.2:
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_3:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB4_30
.LBB4_4:
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 32
	ori	$s4, $zero, 0
	lu32i.d	$s4, 1
	ori	$s5, $zero, 10
	ori	$s8, $zero, 100
	lu12i.w	$a0, 349525
	ori	$s6, $a0, 1366
	lu12i.w	$a0, -349526
	ori	$s7, $a0, 2731
	.p2align	4, , 16
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_19 Depth 3
                                        #     Child Loop BB4_22 Depth 2
	addi.d	$a2, $sp, 132
	addi.d	$a3, $sp, 32
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB4_28
# %bb.6:                                # %do_decode.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 12
	ldx.bu	$a2, $fp, $a0
	bne	$a2, $s3, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	move	$a1, $zero
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph72.i.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph72.i
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_19 Depth 3
	andi	$a2, $a2, 63
	addi.w	$a0, $a0, 1
	beq	$a2, $s3, .LBB4_18
# %bb.10:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB4_9 Depth=2
	xori	$a2, $a2, 32
	mul.d	$a3, $a2, $s6
	srli.d	$a3, $a3, 32
	mul.d	$a4, $a2, $s7
	addi.w	$a4, $a4, -1
	sltu	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	bltu	$a3, $s2, .LBB4_13
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB4_9 Depth=2
	andi	$a3, $a3, 30
	alsl.w	$a0, $a3, $a0, 2
	alsl.d	$a4, $a3, $a3, 1
	sub.d	$a2, $a2, $a4
	add.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a3, $a3, -2
	bnez	$a3, .LBB4_12
.LBB4_13:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a3, $zero
	.p2align	4, , 16
.LBB4_14:                               # %.lr.ph.i
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$a4, $a2, $a3
	bgeu	$s2, $a4, .LBB4_17
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	addi.d	$a3, $a3, -3
	add.w	$a4, $a2, $a3
	addi.w	$a0, $a0, 4
	bnez	$a4, .LBB4_14
# %bb.16:                               # %._crit_edge.i.loopexit
                                        #   in Loop: Header=BB4_9 Depth=2
	sub.w	$a1, $a1, $a3
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %.thread.i
                                        #   in Loop: Header=BB4_9 Depth=2
	addi.d	$a2, $a4, -1
	sltui	$a2, $a2, 1
	sub.d	$a1, $a1, $a2
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 2
	addi.w	$a0, $a0, 4
.LBB4_18:                               # %._crit_edge.i
                                        #   in Loop: Header=BB4_9 Depth=2
	add.d	$a2, $fp, $a0
	.p2align	4, , 16
.LBB4_19:                               #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a2, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 1
	bne	$a3, $s5, .LBB4_19
# %bb.20:                               # %skip_to_newline.exit.i
                                        #   in Loop: Header=BB4_9 Depth=2
	ldx.bu	$a2, $fp, $a0
	bne	$a2, $s3, .LBB4_9
.LBB4_21:                               # %.preheader.i
                                        #   in Loop: Header=BB4_5 Depth=1
	slli.d	$a2, $a0, 32
	add.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB4_22:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	add.d	$a2, $a2, $s4
	addi.d	$a0, $a0, 1
	bne	$a3, $s5, .LBB4_22
# %bb.23:                               # %skip_to_newline.exit63.i
                                        #   in Loop: Header=BB4_5 Depth=1
	srai.d	$a0, $a2, 32
	ldx.bu	$a2, $fp, $a0
	ori	$a3, $zero, 101
	bne	$a2, $a3, .LBB4_28
# %bb.24:                               #   in Loop: Header=BB4_5 Depth=1
	add.d	$a0, $fp, $a0
	ld.bu	$a2, $a0, 1
	ori	$a3, $zero, 110
	bne	$a2, $a3, .LBB4_28
# %bb.25:                               #   in Loop: Header=BB4_5 Depth=1
	ld.bu	$a0, $a0, 2
	bne	$a0, $s8, .LBB4_28
# %bb.26:                               # %decode.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.w	$s1, $s1, 1
	bne	$s1, $s8, .LBB4_5
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_28:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_29:
	move	$a3, $a0
	addi.w	$s1, $s1, -1
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB4_4
.LBB4_30:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"begin %o %s \n"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Usage: uudecode [infile]"
	.size	.Lstr, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
