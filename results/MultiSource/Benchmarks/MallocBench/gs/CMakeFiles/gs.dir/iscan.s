	.file	"iscan.c"
	.text
	.globl	dynamic_grow                    # -- Begin function dynamic_grow
	.p2align	5
	.type	dynamic_grow,@function
dynamic_grow:                           # @dynamic_grow
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$a0, $a0, 20
	ld.w	$a1, $fp, 16
	addi.w	$a3, $a0, 0
	mul.d	$a2, $a0, $a1
	addi.w	$a4, $a2, 0
	ld.d	$s1, $fp, 8
	ld.d	$s0, $fp, 0
	sltui	$a5, $a4, 10
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a6, 524287
	ori	$a6, $a6, 4094
	sltu	$a4, $a6, $a4
	slli.d	$a2, $a2, 1
	masknez	$a2, $a2, $a4
	addi.w	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a2, $a4, $a2
	masknez	$a2, $a2, $a5
	ld.w	$a4, $fp, 24
	ori	$a6, $zero, 20
	maskeqz	$a5, $a6, $a5
	or	$s2, $a5, $a2
	div.du	$s3, $s2, $a0
	beqz	$a4, .LBB0_3
# %bb.1:
	addi.w	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a4, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB0_6
# %bb.2:
	st.w	$s3, $fp, 16
	add.d	$a1, $a0, $s2
	st.d	$a1, $fp, 32
	b	.LBB0_5
.LBB0_3:
	st.w	$s3, $fp, 16
	addi.w	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 20
	st.d	$a0, $fp, 0
	mul.d	$a1, $s3, $a1
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 32
	ori	$s3, $zero, 1
	st.w	$s3, $fp, 24
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB0_6
# %bb.4:
	bstrpick.d	$a2, $s2, 31, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.w	$s3, $fp, 24
.LBB0_5:
	sub.d	$a1, $s1, $s0
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 1
	b	.LBB0_7
.LBB0_6:
	move	$a0, $zero
.LBB0_7:                                # %.critedge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	dynamic_grow, .Lfunc_end0-dynamic_grow
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function scan_init
.LCPI1_0:
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.text
	.globl	scan_init
	.p2align	5
	.type	scan_init,@function
scan_init:                              # @scan_init
# %bb.0:                                # %.preheader29.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a1, %pc_hi20(left_bracket)
	addi.d	$a2, $a1, %pc_lo12(left_bracket)
	ori	$a1, $zero, 1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(name_ref)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(right_bracket)
	addi.d	$a2, $a1, %pc_lo12(right_bracket)
	ori	$a1, $zero, 1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(name_ref)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(empty_name)
	addi.d	$a2, $a1, %pc_lo12(empty_name)
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(name_ref)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(scan_char_array)
	addi.d	$fp, $a0, %pc_lo12(scan_char_array)
	ori	$a0, $zero, 103
	st.b	$a0, $fp, 0
	addi.d	$a0, $fp, 2
	ori	$a1, $zero, 100
	ori	$a2, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 101
	st.b	$a0, $fp, 33
	st.b	$a0, $fp, 27
	st.b	$a0, $fp, 1
	lu12i.w	$a1, 415318
	ori	$a1, $a1, 1381
	st.w	$a1, $fp, 10
	st.b	$a0, $fp, 14
	lu12i.w	$a0, 6
	ori	$a0, $a0, 1638
	st.h	$a0, $fp, 41
	ori	$a0, $zero, 102
	st.b	$a0, $fp, 61
	st.b	$a0, $fp, 63
	st.b	$a0, $fp, 92
	st.b	$a0, $fp, 94
	st.b	$a0, $fp, 124
	st.b	$a0, $fp, 126
	st.b	$a0, $fp, 48
	st.b	$a0, $fp, 38
	lu12i.w	$a0, 12320
	ori	$a0, $a0, 256
	lu32i.d	$a0, 394500
	lu52i.d	$a0, $a0, 112
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	st.d	$a0, $fp, 49
	ori	$a0, $zero, 2312
	st.h	$a0, $fp, 57
	vst	$vr0, $fp, 98
	vst	$vr0, $fp, 66
	ori	$a0, $zero, 26
	st.b	$a0, $fp, 114
	lu12i.w	$a0, 1
	ori	$a1, $a0, 2842
	st.h	$a1, $fp, 82
	ori	$a0, $a0, 3099
	st.h	$a0, $fp, 115
	ori	$a0, $zero, 28
	st.b	$a0, $fp, 84
	ori	$a0, $zero, 29
	st.b	$a0, $fp, 117
	lu12i.w	$a0, 131569
	ori	$a0, $a0, 3613
	st.w	$a0, $fp, 85
	lu12i.w	$a0, 135681
	ori	$a0, $a0, 3870
	st.w	$a0, $fp, 118
	lu12i.w	$a0, 2
	ori	$a1, $a0, 545
	st.h	$a1, $fp, 89
	ori	$a0, $a0, 802
	st.h	$a0, $fp, 122
	ori	$a0, $zero, 35
	st.b	$a0, $fp, 91
	pcalau12i	$a0, %pc_hi20(array_packing)
	st.w	$zero, $a0, %pc_lo12(array_packing)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	scan_init, .Lfunc_end1-scan_init
                                        # -- End function
	.globl	scan_token                      # -- Begin function scan_token
	.p2align	5
	.type	scan_token,@function
scan_token:                             # @scan_token
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
	move	$s2, $a2
	move	$s0, $a0
	move	$s5, $zero
	move	$s7, $zero
	ori	$s8, $zero, 126
	ori	$s6, $zero, 101
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$fp, $zero, 31
	ori	$s4, $zero, 14
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r24
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB2_3
.LBB2_1:                                #   in Loop: Header=BB2_3 Depth=1
	sub.d	$a1, $s2, $s5
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s2, $a0, $a1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $a0
	move	$s5, $s7
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ori	$fp, $zero, 31
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s2, $s2, 16
	.p2align	4, , 16
.LBB2_3:                                # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_25 Depth 2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	bgeu	$s8, $a0, .LBB2_6
	b	.LBB2_83
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	addi.d	$a0, $a0, 1
	bltu	$s8, $a0, .LBB2_83
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
	.p2align	4, , 16
.LBB2_7:                                # %.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	bgeu	$s4, $a0, .LBB2_10
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	addi.d	$a0, $a0, 1
	bltu	$s4, $a0, .LBB2_7
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_11:                               # %.thread294
                                        #   in Loop: Header=BB2_3 Depth=1
	sltui	$a0, $s7, 1
	addi.w	$a1, $zero, -18
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s5, $a0, $a1
	bnez	$s7, .LBB2_76
	b	.LBB2_121
.LBB2_12:                               # %.loopexit338.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
.LBB2_13:                               # %.loopexit338
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s4, $s0, 0
	ld.d	$fp, $s0, 8
	move	$s3, $zero
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB2_14:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s4, $s3
	addi.d	$s7, $a2, 1
	bgeu	$s7, $fp, .LBB2_21
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=2
	ld.bu	$s5, $s7, 0
	pcalau12i	$a2, %pc_hi20(scan_char_array)
	addi.d	$a2, $a2, %pc_lo12(scan_char_array)
	add.d	$a2, $a2, $s5
	ld.bu	$a3, $a2, 1
	addi.d	$s3, $s3, 1
	addi.d	$a0, $a0, 2
	addi.w	$a1, $a1, 1
	bltu	$a3, $s6, .LBB2_14
# %bb.16:                               #   in Loop: Header=BB2_3 Depth=1
	add.d	$s3, $s4, $s3
	st.d	$s3, $s0, 0
	ld.bu	$a0, $a2, 1
	beq	$a0, $s6, .LBB2_32
.LBB2_17:                               # %.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB2_41
# %bb.18:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 13
	bne	$s5, $a0, .LBB2_41
	b	.LBB2_33
.LBB2_19:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_35
# %bb.20:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB2_36
	b	.LBB2_3
.LBB2_21:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $s0, 0
	sltui	$a2, $a1, 10
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	sltu	$a1, $a3, $a1
	bstrpick.d	$a0, $a0, 32, 1
	slli.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	addi.w	$s8, $zero, -1
	maskeqz	$a1, $s8, $a1
	or	$a0, $a1, $a0
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 20
	maskeqz	$a1, $a1, $a2
	or	$s1, $a1, $a0
	addi.w	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	addi.w	$s2, $zero, -25
	beqz	$a0, .LBB2_119
# %bb.22:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $a0
	addi.d	$s3, $s3, 1
	add.d	$s6, $a0, $s1
	bstrpick.d	$a2, $s1, 31, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	add.d	$s3, $s5, $a0
	move	$s4, $s5
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_23:                               #   in Loop: Header=BB2_25 Depth=2
	sub.d	$a1, $s6, $s4
	add.d	$s6, $a0, $s1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s3, $a0, $a1
	move	$s4, $a0
.LBB2_24:                               #   in Loop: Header=BB2_25 Depth=2
	addi.d	$a0, $s3, 1
	st.b	$s5, $s3, 0
	move	$s3, $a0
.LBB2_25:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$s5, $a0, 1
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_25 Depth=2
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$s5, $a0
.LBB2_28:                               #   in Loop: Header=BB2_25 Depth=2
	pcalau12i	$a0, %pc_hi20(scan_char_array)
	addi.d	$a0, $a0, %pc_lo12(scan_char_array)
	add.d	$a0, $a0, $s5
	ld.bu	$a0, $a0, 1
	ori	$a1, $zero, 100
	bltu	$a1, $a0, .LBB2_31
# %bb.29:                               #   in Loop: Header=BB2_25 Depth=2
	bne	$s3, $s6, .LBB2_24
# %bb.30:                               #   in Loop: Header=BB2_25 Depth=2
	addi.w	$a1, $s1, 0
	sltui	$a0, $a1, 10
	bstrpick.d	$a2, $s1, 31, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	sltu	$a3, $a3, $a1
	slli.d	$a2, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s8, $a3
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 20
	maskeqz	$a0, $a3, $a0
	or	$s1, $a0, $a2
	addi.w	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a4, $a0, %pc_lo12(.L.str)
	ori	$a3, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_23
	b	.LBB2_119
.LBB2_31:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$s8, $zero, 126
	ori	$s6, $zero, 101
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $s6, .LBB2_17
.LBB2_32:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 13
	bne	$s5, $a0, .LBB2_41
.LBB2_33:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_38
# %bb.34:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB2_39
	b	.LBB2_41
.LBB2_35:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB2_3
.LBB2_36:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB2_3
# %bb.37:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 0
	b	.LBB2_3
.LBB2_38:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB2_41
.LBB2_39:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB2_41
# %bb.40:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 0
.LBB2_41:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_43
# %bb.42:                               # %._crit_edge
                                        #   in Loop: Header=BB2_3 Depth=1
	sub.w	$s5, $s3, $s4
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	b	.LBB2_45
.LBB2_43:                               #   in Loop: Header=BB2_3 Depth=1
	sub.w	$s5, $s3, $s4
	addi.d	$a0, $sp, 96
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(sread_string)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	move	$s3, $s2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(scan_number)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -18
	bne	$a0, $a1, .LBB2_48
# %bb.44:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$s2, $s3
	move	$s3, $a0
.LBB2_45:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(name_ref)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bltu	$s7, $fp, .LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_3 Depth=1
	addi.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
.LBB2_47:                               # %.thread314
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ori	$fp, $zero, 31
	ori	$s4, $zero, 14
	b	.LBB2_51
.LBB2_48:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bltu	$s7, $fp, .LBB2_50
# %bb.49:                               #   in Loop: Header=BB2_3 Depth=1
	addi.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
.LBB2_50:                               # %.thread311
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ori	$fp, $zero, 31
	ori	$s4, $zero, 14
	move	$s5, $s2
	move	$s2, $s3
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB2_51:                               # %.thread314
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB2_52:                               # %.thread314
                                        #   in Loop: Header=BB2_3 Depth=1
	bltz	$s5, .LBB2_121
# %bb.53:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 2
	beq	$a3, $a0, .LBB2_57
# %bb.54:                               #   in Loop: Header=BB2_3 Depth=1
	bnez	$a3, .LBB2_75
# %bb.55:                               #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s2, 8
	andi	$a1, $a0, 252
	ori	$a2, $zero, 28
	bne	$a1, $a2, .LBB2_75
# %bb.56:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $a0, 1
	st.h	$a0, $s2, 8
	bnez	$s7, .LBB2_76
	b	.LBB2_121
.LBB2_57:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(dsp)
	ld.d	$a0, $a0, %got_pc_lo12(dsp)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(dstack)
	ld.d	$a0, $a0, %got_pc_lo12(dstack)
	addi.d	$a3, $sp, 96
	move	$a2, $s2
	pcaddu18i	$ra, %call36(dict_lookup)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB2_123
# %bb.58:                               # %.thread319
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 96
	vld	$vr0, $a0, 0
	vst	$vr0, $s2, 0
	bnez	$s7, .LBB2_76
	b	.LBB2_121
.LBB2_59:                               #   in Loop: Header=BB2_3 Depth=1
	beqz	$s7, .LBB2_92
# %bb.60:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s2
	bgeu	$fp, $a0, .LBB2_93
	b	.LBB2_112
.LBB2_61:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_84
# %bb.62:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB2_85
.LBB2_63:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(right_bracket)
	addi.d	$a0, $a0, %pc_lo12(right_bracket)
	b	.LBB2_72
.LBB2_64:                               #   in Loop: Header=BB2_3 Depth=1
	beqz	$s7, .LBB2_120
# %bb.65:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	add.d	$s4, $s3, $s7
	ld.hu	$s7, $s4, -6
	sub.d	$s3, $s2, $s4
	srli.d	$fp, $s3, 4
	addi.d	$s2, $s4, -16
	addi.w	$s5, $fp, 0
	bnez	$s7, .LBB2_88
# %bb.66:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_88
# %bb.67:                               #   in Loop: Header=BB2_3 Depth=1
	bstrpick.d	$a0, $s3, 35, 4
	slli.d	$a2, $a0, 4
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a4, $a0, %pc_lo12(.L.str.4)
	ori	$a3, $zero, 16
	move	$a0, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(alloc_shrink)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_122
# %bb.68:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(array_packing)
	ld.w	$a0, $a0, %pc_lo12(array_packing)
	st.d	$s5, $s2, 0
	beqz	$a0, .LBB2_90
.LBB2_69:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 555
	b	.LBB2_91
.LBB2_70:                               #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(scan_string)
	jirl	$ra, $ra, 0
	b	.LBB2_74
.LBB2_71:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(left_bracket)
	addi.d	$a0, $a0, %pc_lo12(left_bracket)
.LBB2_72:                               # %.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a1, $s2, 8
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ori	$a0, $a1, 1
	st.h	$a0, $s2, 8
	bnez	$s7, .LBB2_76
	b	.LBB2_121
.LBB2_73:                               #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(scan_hex_string)
	jirl	$ra, $ra, 0
.LBB2_74:                               # %.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $a0
.LBB2_75:                               # %.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	beqz	$s7, .LBB2_121
.LBB2_76:                               # %.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	bltz	$s5, .LBB2_121
# %bb.77:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s2
	bltu	$fp, $a0, .LBB2_2
# %bb.78:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	move	$s7, $s5
	move	$s5, $s3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	slli.w	$a0, $a4, 4
	sltui	$a1, $a0, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	sltu	$a0, $a2, $a0
	slli.d	$a2, $a4, 5
	bstrpick.d	$a2, $a2, 32, 5
	slli.d	$a2, $a2, 5
	masknez	$a2, $a2, $a0
	addi.w	$a3, $zero, -1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 20
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	srli.d	$fp, $s3, 4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	addi.w	$a2, $fp, 0
	beqz	$a0, .LBB2_81
# %bb.79:                               #   in Loop: Header=BB2_3 Depth=1
	addi.w	$a1, $a4, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a4, $a0, %pc_lo12(.L.str)
	ori	$a3, $zero, 16
	move	$a0, $s5
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.80:                               #   in Loop: Header=BB2_3 Depth=1
	add.d	$a1, $a0, $s3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB2_1
.LBB2_81:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 16
	move	$a0, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.82:                               #   in Loop: Header=BB2_3 Depth=1
	bstrpick.d	$a2, $s3, 31, 0
	bstrins.d	$s3, $zero, 3, 0
	add.d	$a1, $a0, $s3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	ori	$s4, $zero, 14
	b	.LBB2_1
.LBB2_83:                               # %.loopexit338.loopexit988
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB2_13
.LBB2_84:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB2_85:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB2_98
# %bb.86:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_96
# %bb.87:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB2_97
.LBB2_88:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 16
	move	$a0, $s5
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.89:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $a0
	sltui	$s6, $s7, 1
	bstrpick.d	$a0, $s3, 35, 4
	slli.d	$a2, $a0, 4
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	masknez	$a0, $s2, $s6
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s6
	ori	$s6, $zero, 101
	or	$s2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(array_packing)
	ld.w	$a0, $a0, %pc_lo12(array_packing)
	st.d	$s5, $s2, 0
	bnez	$a0, .LBB2_69
.LBB2_90:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 771
.LBB2_91:                               # %.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	st.h	$a0, $s2, 8
	st.h	$fp, $s2, 10
	ori	$fp, $zero, 31
	ori	$s4, $zero, 14
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	bnez	$s7, .LBB2_76
	b	.LBB2_121
.LBB2_92:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a0, $a0, 0
	addi.d	$s3, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(ostop)
	ld.d	$a1, $a1, %got_pc_lo12(ostop)
	ld.d	$a1, $a1, 0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	addi.d	$a2, $a1, 16
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	sub.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s2, $s3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s2
	bltu	$fp, $a0, .LBB2_112
.LBB2_93:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	slli.w	$a0, $a4, 4
	sltui	$a1, $a0, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	sltu	$a0, $a2, $a0
	slli.d	$a2, $a4, 5
	bstrpick.d	$a2, $a2, 32, 5
	slli.d	$a2, $a2, 5
	masknez	$a2, $a2, $a0
	addi.w	$a3, $zero, -1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 20
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	srli.d	$fp, $s3, 4
	beqz	$a0, .LBB2_109
# %bb.94:                               #   in Loop: Header=BB2_3 Depth=1
	addi.w	$a1, $a4, 0
	addi.w	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a4, $a0, %pc_lo12(.L.str)
	ori	$a3, $zero, 16
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.95:                               #   in Loop: Header=BB2_3 Depth=1
	add.d	$a1, $a0, $s3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	b	.LBB2_111
.LBB2_96:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB2_97:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a3, $zero, 2
.LBB2_98:                               #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a1, %pc_hi20(scan_char_array)
	addi.d	$a1, $a1, %pc_lo12(scan_char_array)
	add.d	$a1, $a1, $a0
	ld.bu	$a1, $a1, 1
	beq	$a1, $s6, .LBB2_105
# %bb.99:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 102
	beq	$a1, $a2, .LBB2_102
# %bb.100:                              #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 103
	bne	$a1, $a0, .LBB2_108
# %bb.101:                              #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(empty_name)
	vld	$vr0, $a0, %pc_lo12(empty_name)
	vst	$vr0, $s2, 0
	b	.LBB2_52
.LBB2_102:                              #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 93
	beq	$a0, $a1, .LBB2_113
# %bb.103:                              #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 91
	bne	$a0, $a1, .LBB2_114
# %bb.104:                              #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(left_bracket)
	vld	$vr0, $a0, %pc_lo12(left_bracket)
	vst	$vr0, $s2, 0
	b	.LBB2_52
.LBB2_105:                              #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a1, %pc_hi20(empty_name)
	vld	$vr0, $a1, %pc_lo12(empty_name)
	vst	$vr0, $s2, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB2_52
# %bb.106:                              #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB2_115
# %bb.107:                              #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB2_116
.LBB2_108:                              #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_13
.LBB2_109:                              #   in Loop: Header=BB2_3 Depth=1
	addi.w	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.110:                              #   in Loop: Header=BB2_3 Depth=1
	bstrpick.d	$a2, $s3, 31, 0
	bstrins.d	$s3, $zero, 3, 0
	add.d	$a1, $a0, $s3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	ori	$s4, $zero, 14
.LBB2_111:                              #   in Loop: Header=BB2_3 Depth=1
	sub.d	$a1, $s2, $s3
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s2, $a0, $a1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $a0
	ori	$fp, $zero, 31
.LBB2_112:                              #   in Loop: Header=BB2_3 Depth=1
	st.h	$s7, $s2, 10
	addi.d	$s2, $s2, 16
	sub.w	$s7, $s2, $s3
	b	.LBB2_3
.LBB2_113:                              #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(right_bracket)
	vld	$vr0, $a0, %pc_lo12(right_bracket)
	vst	$vr0, $s2, 0
	b	.LBB2_52
.LBB2_114:                              #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(empty_name)
	vld	$vr0, $a0, %pc_lo12(empty_name)
	vst	$vr0, $s2, 0
	b	.LBB2_118
.LBB2_115:                              #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	jirl	$ra, $a1, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB2_116:                              #   in Loop: Header=BB2_3 Depth=1
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB2_52
# %bb.117:                              #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB2_52
.LBB2_118:                              #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 0
	b	.LBB2_52
.LBB2_119:
	move	$s5, $s2
	b	.LBB2_121
.LBB2_120:                              # %dynamic_grow.exit.thread.loopexit
	addi.w	$s5, $zero, -18
.LBB2_121:                              # %dynamic_grow.exit.thread
	move	$a0, $s5
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
.LBB2_122:
	addi.w	$s5, $zero, -25
	b	.LBB2_121
.LBB2_123:
	addi.w	$s5, $zero, -21
	b	.LBB2_121
.Lfunc_end2:
	.size	scan_token, .Lfunc_end2-scan_token
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_11-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_70-.LJTI2_0
	.word	.LBB2_120-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_61-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_120-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_71-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_63-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_59-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_64-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_11-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_3-.LJTI2_1
	.word	.LBB2_7-.LJTI2_1
	.word	.LBB2_3-.LJTI2_1
	.word	.LBB2_19-.LJTI2_1
                                        # -- End function
	.text
	.globl	scan_hex_string                 # -- Begin function scan_hex_string
	.p2align	5
	.type	scan_hex_string,@function
scan_hex_string:                        # @scan_hex_string
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
	move	$s5, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 100
	ori	$a1, $zero, 1
	ori	$s2, $zero, 100
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -25
	beqz	$a0, .LBB3_25
# %bb.1:                                # %.preheader71
	move	$s1, $a0
	addi.d	$a0, $a0, 100
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(scan_char_array)
	addi.d	$s8, $a0, %pc_lo12(scan_char_array)
	ori	$s6, $zero, 15
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s4, $zero, 101
	move	$fp, $s1
	.p2align	4, , 16
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 8
	bgeu	$a0, $a1, .LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s3, 0
	ld.bu	$a0, $a0, 1
	add.d	$a1, $s8, $a0
	ld.bu	$s7, $a1, 1
	bgeu	$s6, $s7, .LBB3_6
.LBB3_4:                                #   in Loop: Header=BB3_2 Depth=1
	beq	$s7, $s4, .LBB3_2
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a1, $s3, 40
	move	$a0, $s3
	jirl	$ra, $a1, 0
	add.d	$a1, $s8, $a0
	ld.bu	$s7, $a1, 1
	bltu	$s6, $s7, .LBB3_4
.LBB3_6:                                # %.preheader.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_7:                                # %.preheader
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 8
	bgeu	$a0, $a1, .LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $s3, 0
	ld.bu	$a0, $a0, 1
	add.d	$a1, $s8, $a0
	ld.bu	$s5, $a1, 1
	bltu	$s6, $s5, .LBB3_10
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_9:                                #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a1, $s3, 40
	move	$a0, $s3
	jirl	$ra, $a1, 0
	add.d	$a1, $s8, $a0
	ld.bu	$s5, $a1, 1
	bgeu	$s6, $s5, .LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_7 Depth=2
	beq	$s5, $s4, .LBB3_7
	b	.LBB3_16
.LBB3_11:                               #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bne	$fp, $a0, .LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_2 Depth=1
	addi.w	$a1, $s2, 0
	sltui	$a0, $a1, 10
	bstrpick.d	$a2, $s2, 31, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sltu	$a3, $a3, $a1
	slli.d	$a2, $a2, 1
	masknez	$a2, $a2, $a3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 20
	maskeqz	$a0, $a3, $a0
	or	$s2, $a0, $a2
	addi.w	$a2, $s2, 0
	ori	$a3, $zero, 1
	move	$a0, $s1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.13:                               #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $s1
	add.d	$a2, $a0, $s2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$fp, $a0, $a1
	move	$s1, $a0
.LBB3_14:                               #   in Loop: Header=BB3_2 Depth=1
	slli.d	$a0, $s7, 4
	or	$a0, $s5, $a0
	addi.d	$a1, $fp, 1
	st.b	$a0, $fp, 0
	move	$fp, $a1
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	b	.LBB3_2
.LBB3_15:
	ori	$a1, $zero, 62
	bne	$a0, $a1, .LBB3_19
	b	.LBB3_23
.LBB3_16:
	ori	$a1, $zero, 62
	bne	$a0, $a1, .LBB3_19
# %bb.17:
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	beq	$fp, $s3, .LBB3_20
# %bb.18:
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	b	.LBB3_22
.LBB3_19:
	addi.w	$s0, $zero, -18
	b	.LBB3_25
.LBB3_20:
	addi.w	$a1, $s2, 0
	sltui	$a0, $a1, 10
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sltu	$a2, $a2, $a1
	slli.w	$a3, $s2, 1
	masknez	$a3, $a3, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 20
	maskeqz	$a0, $a3, $a0
	or	$s2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a4, $a0, %pc_lo12(.L.str)
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_25
# %bb.21:
	sub.d	$a1, $s3, $s1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$fp, $a0, $a1
	move	$s1, $a0
.LBB3_22:
	slli.d	$a0, $s7, 4
	addi.d	$a1, $fp, 1
	st.b	$a0, $fp, 0
	move	$fp, $a1
.LBB3_23:
	sub.w	$s3, $fp, $s1
	addi.w	$a1, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a4, $a0, %pc_lo12(.L.str.6)
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(alloc_shrink)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.24:
	move	$s0, $zero
	st.d	$a0, $s5, 0
	ori	$a0, $zero, 822
	st.h	$a0, $s5, 8
	st.h	$s3, $s5, 10
.LBB3_25:                               # %mk_string.exit
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
.Lfunc_end3:
	.size	scan_hex_string, .Lfunc_end3-scan_hex_string
                                        # -- End function
	.globl	scan_string                     # -- Begin function scan_string
	.p2align	5
	.type	scan_string,@function
scan_string:                            # @scan_string
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
	move	$fp, $a2
	move	$s3, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 100
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -25
	beqz	$a0, .LBB4_57
# %bb.1:                                # %.preheader
	move	$s1, $a0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s5, $a0, 100
	lu12i.w	$a0, 524287
	ori	$s6, $zero, 100
	beqz	$s3, .LBB4_15
# %bb.2:                                # %.split.us.preheader
	addi.w	$a1, $zero, -18
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 40
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	move	$fp, $zero
	move	$s7, $s1
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	addi.w	$fp, $fp, 1
	beq	$s7, $s5, .LBB4_13
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a0, $s7, 1
	st.b	$s4, $s7, 0
	move	$s7, $a0
.LBB4_5:                                # %.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s2, 8
	bgeu	$a0, $a1, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s2, 0
	ld.bu	$s4, $a0, 1
	bne	$s4, $s8, .LBB4_8
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $s2, 40
	move	$a0, $s2
	jirl	$ra, $a1, 0
	move	$s4, $a0
	beq	$s4, $s8, .LBB4_3
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	ori	$a0, $zero, 41
	beq	$s4, $a0, .LBB4_11
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	beq	$s4, $s0, .LBB4_56
# %bb.10:                               # %.thread.us
                                        #   in Loop: Header=BB4_5 Depth=1
	bne	$s7, $s5, .LBB4_4
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	blez	$fp, .LBB4_54
# %bb.12:                               #   in Loop: Header=BB4_5 Depth=1
	addi.w	$fp, $fp, -1
	bne	$s7, $s5, .LBB4_4
.LBB4_13:                               #   in Loop: Header=BB4_5 Depth=1
	addi.w	$a1, $s6, 0
	sltui	$a0, $a1, 10
	bstrpick.d	$a2, $s6, 31, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sltu	$a3, $a3, $a1
	slli.d	$a2, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 20
	maskeqz	$a0, $a3, $a0
	or	$s6, $a0, $a2
	addi.w	$a2, $s6, 0
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_53
# %bb.14:                               #   in Loop: Header=BB4_5 Depth=1
	sub.d	$a1, $s5, $s1
	add.d	$s5, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s7, $a0, $a1
	move	$s1, $a0
	b	.LBB4_4
.LBB4_15:                               # %.split.outer.preheader
	ori	$s4, $zero, 92
	ori	$s3, $zero, 68
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$fp, $a1, %pc_lo12(.LJTI4_0)
	move	$s8, $zero
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s7, $s1
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               #   in Loop: Header=BB4_17 Depth=1
	addi.d	$a1, $s7, 1
	st.b	$a0, $s7, 0
	move	$s7, $a1
.LBB4_17:                               # %.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s2, 8
	bgeu	$a0, $a1, .LBB4_23
# %bb.18:                               #   in Loop: Header=BB4_17 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s2, 0
	ld.bu	$a0, $a0, 1
	beq	$a0, $s4, .LBB4_24
.LBB4_19:                               #   in Loop: Header=BB4_17 Depth=1
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB4_52
# %bb.20:                               #   in Loop: Header=BB4_17 Depth=1
	ori	$a1, $zero, 41
	beq	$a0, $a1, .LBB4_45
# %bb.21:                               #   in Loop: Header=BB4_17 Depth=1
	ori	$a1, $zero, 40
	bne	$a0, $a1, .LBB4_42
# %bb.22:                               #   in Loop: Header=BB4_17 Depth=1
	addi.w	$s8, $s8, 1
	ori	$a0, $zero, 40
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_23:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a1, $s2, 40
	move	$a0, $s2
	jirl	$ra, $a1, 0
	bne	$a0, $s4, .LBB4_19
.LBB4_24:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s2, 8
	bgeu	$a0, $a1, .LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_17 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s2, 0
	ld.bu	$a1, $a0, 1
	ori	$a0, $zero, 10
	beq	$a1, $a0, .LBB4_17
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_26:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a1, $s2, 40
	move	$a0, $s2
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a0, $zero, 10
	beq	$a1, $a0, .LBB4_17
.LBB4_27:                               #   in Loop: Header=BB4_17 Depth=1
	addi.d	$s0, $a1, -48
	bltu	$s3, $s0, .LBB4_51
# %bb.28:                               #   in Loop: Header=BB4_17 Depth=1
	slli.d	$a2, $s0, 2
	ldx.w	$a2, $fp, $a2
	add.d	$a2, $fp, $a2
	jr	$a2
.LBB4_29:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s2, 8
	bgeu	$a0, $a1, .LBB4_31
# %bb.30:                               #   in Loop: Header=BB4_17 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s2, 0
	ld.bu	$s3, $a0, 1
	b	.LBB4_32
.LBB4_31:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a1, $s2, 40
	move	$a0, $s2
	jirl	$ra, $a1, 0
	move	$s3, $a0
.LBB4_32:                               #   in Loop: Header=BB4_17 Depth=1
	move	$a1, $s3
	bstrins.d	$a1, $zero, 2, 0
	addi.w	$a0, $s0, 0
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB4_39
# %bb.33:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
	bgeu	$a1, $a2, .LBB4_35
# %bb.34:                               #   in Loop: Header=BB4_17 Depth=1
	addi.d	$a2, $a1, 1
	st.d	$a2, $s2, 0
	ld.bu	$a1, $a1, 1
	b	.LBB4_36
.LBB4_35:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a1, $s2, 40
	move	$s0, $a0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB4_36:                               #   in Loop: Header=BB4_17 Depth=1
	alsl.d	$a0, $a0, $s3, 3
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	addi.w	$a0, $a0, -48
	ori	$a3, $zero, 48
	bne	$a2, $a3, .LBB4_38
# %bb.37:                               #   in Loop: Header=BB4_17 Depth=1
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, -48
	b	.LBB4_41
.LBB4_38:                               #   in Loop: Header=BB4_17 Depth=1
	move	$s3, $a1
.LBB4_39:                               #   in Loop: Header=BB4_17 Depth=1
	addi.w	$a1, $zero, -1
	beq	$s3, $a1, .LBB4_52
# %bb.40:                               #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a1, $s2, 0
	addi.d	$a1, $a1, -1
	st.d	$a1, $s2, 0
.LBB4_41:                               # %.thread
                                        #   in Loop: Header=BB4_17 Depth=1
	ori	$s3, $zero, 68
.LBB4_42:                               # %.thread
                                        #   in Loop: Header=BB4_17 Depth=1
	bne	$s7, $s5, .LBB4_16
# %bb.43:                               #   in Loop: Header=BB4_17 Depth=1
	move	$s0, $a0
	addi.w	$a1, $s6, 0
	sltui	$a0, $a1, 10
	bstrpick.d	$a2, $s6, 31, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sltu	$a3, $a3, $a1
	slli.d	$a2, $a2, 1
	masknez	$a2, $a2, $a3
	addi.w	$a4, $zero, -1
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 20
	maskeqz	$a0, $a3, $a0
	or	$s6, $a0, $a2
	addi.w	$a2, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a4, $a0, %pc_lo12(.L.str)
	ori	$a3, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(alloc_grow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_53
# %bb.44:                               #   in Loop: Header=BB4_17 Depth=1
	sub.d	$a1, $s5, $s1
	add.d	$s5, $a0, $s6
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s7, $a0, $a1
	move	$s1, $a0
	move	$a0, $s0
	b	.LBB4_16
.LBB4_45:                               #   in Loop: Header=BB4_17 Depth=1
	blez	$s8, .LBB4_54
# %bb.46:                               #   in Loop: Header=BB4_17 Depth=1
	addi.w	$s8, $s8, -1
	ori	$a0, $zero, 41
	b	.LBB4_42
.LBB4_47:                               #   in Loop: Header=BB4_17 Depth=1
	ori	$a0, $zero, 9
	b	.LBB4_42
.LBB4_48:                               #   in Loop: Header=BB4_17 Depth=1
	ori	$a0, $zero, 12
	b	.LBB4_42
.LBB4_49:                               #   in Loop: Header=BB4_17 Depth=1
	ori	$a0, $zero, 8
	b	.LBB4_42
.LBB4_50:                               #   in Loop: Header=BB4_17 Depth=1
	ori	$a0, $zero, 13
	b	.LBB4_42
.LBB4_51:                               # %.thread.loopexit
                                        #   in Loop: Header=BB4_17 Depth=1
	move	$a0, $a1
	b	.LBB4_42
.LBB4_52:                               # %mk_string.exit.loopexit
	addi.w	$a2, $zero, -18
	b	.LBB4_57
.LBB4_53:
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB4_57
.LBB4_54:                               # %.split98.us
	sub.w	$s2, $s7, $s1
	addi.w	$a1, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a4, $a0, %pc_lo12(.L.str.6)
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(alloc_shrink)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_57
# %bb.55:
	move	$a2, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 822
	st.h	$a0, $a1, 8
	st.h	$s2, $a1, 10
	b	.LBB4_57
.LBB4_56:
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
.LBB4_57:                               # %mk_string.exit
	move	$a0, $a2
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
.Lfunc_end4:
	.size	scan_string, .Lfunc_end4-scan_string
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_49-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_48-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_42-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_50-.LJTI4_0
	.word	.LBB4_51-.LJTI4_0
	.word	.LBB4_47-.LJTI4_0
                                        # -- End function
	.text
	.globl	scan_number                     # -- Begin function scan_number
	.p2align	5
	.type	scan_number,@function
scan_number:                            # @scan_number
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 8
	move	$fp, $a1
	bgeu	$a0, $a2, .LBB5_5
# %bb.1:
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$s3, $a0, 1
	ori	$a0, $zero, 45
	beq	$s3, $a0, .LBB5_6
.LBB5_2:
	ori	$a0, $zero, 43
	bne	$s3, $a0, .LBB5_8
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_9
# %bb.4:
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$s3, $a0, 1
	b	.LBB5_10
.LBB5_5:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$s3, $a0
	ori	$a0, $zero, 45
	bne	$s3, $a0, .LBB5_2
.LBB5_6:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_11
# %bb.7:
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$s3, $a0, 1
	b	.LBB5_12
.LBB5_8:
	move	$s7, $zero
	move	$s4, $zero
	b	.LBB5_13
.LBB5_9:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$s3, $a0
.LBB5_10:
	move	$s4, $zero
	ori	$s7, $zero, 1
	b	.LBB5_13
.LBB5_11:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$s3, $a0
.LBB5_12:
	ori	$s7, $zero, 1
	ori	$s4, $zero, 1
.LBB5_13:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a1, $a0, 0
	slli.d	$a0, $s3, 1
	ldx.hu	$a0, $a1, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB5_17
# %bb.14:
	ori	$a0, $zero, 46
	addi.w	$s2, $zero, -18
	bne	$s3, $a0, .LBB5_129
# %bb.15:
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s0, 8
	bgeu	$a0, $a2, .LBB5_48
# %bb.16:
	addi.d	$a2, $a0, 1
	st.d	$a2, $s0, 0
	ld.bu	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	ldx.hu	$a1, $a1, $a2
	slli.d	$a1, $a1, 52
	bltz	$a1, .LBB5_49
	b	.LBB5_129
.LBB5_17:
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $fp
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(scan_char_array)
	addi.d	$s3, $a1, %pc_lo12(scan_char_array)
	move	$s5, $zero
	ori	$s8, $zero, 10
	lu12i.w	$a1, 52428
	ori	$s6, $a1, 3276
	ori	$fp, $zero, 7
	b	.LBB5_19
	.p2align	4, , 16
.LBB5_18:                               #   in Loop: Header=BB5_19 Depth=1
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s5, 3
	alsl.d	$a1, $s5, $a1, 1
	add.w	$s5, $a1, $s2
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_21
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	add.d	$a1, $s3, $a0
	ld.bu	$s2, $a1, 1
	bltu	$s2, $s8, .LBB5_22
	b	.LBB5_30
	.p2align	4, , 16
.LBB5_21:                               #   in Loop: Header=BB5_19 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	add.d	$a1, $s3, $a0
	ld.bu	$s2, $a1, 1
	bgeu	$s2, $s8, .LBB5_30
.LBB5_22:                               #   in Loop: Header=BB5_19 Depth=1
	blt	$s5, $s6, .LBB5_18
# %bb.23:                               #   in Loop: Header=BB5_19 Depth=1
	bne	$s5, $s6, .LBB5_25
# %bb.24:                               #   in Loop: Header=BB5_19 Depth=1
	bgeu	$fp, $s2, .LBB5_18
.LBB5_25:
	bstrpick.d	$a0, $s5, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	vldi	$vr1, -988
	ori	$fp, $zero, 10
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_26:                               #   in Loop: Header=BB5_28 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	vldi	$vr1, -988
.LBB5_27:                               #   in Loop: Header=BB5_28 Depth=1
	andi	$a1, $s2, 255
	add.d	$a2, $s3, $a0
	ld.bu	$s2, $a2, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmadd.d	$fs0, $fs0, $fa1, $fa0
	bgeu	$s2, $fp, .LBB5_41
.LBB5_28:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_26
# %bb.29:                               #   in Loop: Header=BB5_28 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB5_27
.LBB5_30:
	ld.d	$a1, $s0, 0
	addi.w	$s8, $zero, -1
	beq	$a0, $s8, .LBB5_32
# %bb.31:
	addi.d	$a1, $a1, -1
	st.d	$a1, $s0, 0
.LBB5_32:
	move	$fp, $s4
	ld.d	$a0, $s0, 8
	bgeu	$a1, $a0, .LBB5_38
# %bb.33:
	addi.d	$a0, $a1, 1
	st.d	$a0, $s0, 0
	ld.bu	$a0, $a1, 1
	beq	$a0, $s8, .LBB5_39
.LBB5_34:
	ori	$a1, $zero, 35
	addi.w	$s2, $zero, -18
	beq	$a0, $a1, .LBB5_50
# %bb.35:
	ori	$a1, $zero, 46
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB5_129
# %bb.36:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_65
# %bb.37:
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB5_66
.LBB5_38:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s8, .LBB5_34
.LBB5_39:
	move	$s1, $s5
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
.LBB5_40:
	move	$s2, $zero
	sub.d	$a0, $zero, $s1
	masknez	$a1, $s1, $s3
	maskeqz	$a0, $a0, $s3
	or	$a0, $a0, $a1
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 20
	b	.LBB5_128
.LBB5_41:
	ld.d	$a1, $s0, 0
	addi.w	$fp, $zero, -1
	beq	$a0, $fp, .LBB5_43
# %bb.42:
	addi.d	$a1, $a1, -1
	st.d	$a1, $s0, 0
.LBB5_43:
	ld.d	$a0, $s0, 8
	bgeu	$a1, $a0, .LBB5_63
# %bb.44:
	addi.d	$a0, $a1, 1
	st.d	$a0, $s0, 0
	ld.bu	$a0, $a1, 1
	beq	$a0, $fp, .LBB5_64
.LBB5_45:
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB5_115
# %bb.46:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_82
# %bb.47:
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$s2, $a0, 1
	b	.LBB5_83
.LBB5_48:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a1, $s1, 0
	slli.d	$a2, $a0, 1
	ldx.hu	$a1, $a1, $a2
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB5_129
.LBB5_49:
	move	$s5, $zero
	b	.LBB5_66
.LBB5_50:
	addi.w	$a0, $s5, -37
	sltui	$a0, $a0, -35
	or	$a0, $s7, $a0
	bnez	$a0, .LBB5_129
# %bb.51:
	ori	$a0, $zero, 10
	ori	$s7, $zero, 7
	beq	$s5, $a0, .LBB5_53
# %bb.52:
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	div.wu	$s6, $a0, $s5
	mul.w	$a1, $s6, $s5
	xor	$s7, $a1, $a0
.LBB5_53:
	move	$s1, $zero
	addi.w	$fp, $zero, -13
	b	.LBB5_55
	.p2align	4, , 16
.LBB5_54:                               #   in Loop: Header=BB5_55 Depth=1
	mul.d	$a0, $s1, $s5
	add.w	$s1, $a0, $a1
.LBB5_55:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_57
# %bb.56:                               #   in Loop: Header=BB5_55 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB5_58
	.p2align	4, , 16
.LBB5_57:                               #   in Loop: Header=BB5_55 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB5_58:                               #   in Loop: Header=BB5_55 Depth=1
	add.d	$a1, $s3, $a0
	ld.bu	$a1, $a1, 1
	bge	$a1, $s5, .LBB5_78
# %bb.59:                               #   in Loop: Header=BB5_55 Depth=1
	blt	$s1, $s6, .LBB5_54
# %bb.60:                               #   in Loop: Header=BB5_55 Depth=1
	blt	$s6, $s1, .LBB5_62
# %bb.61:                               #   in Loop: Header=BB5_55 Depth=1
	bgeu	$s7, $a1, .LBB5_54
.LBB5_62:
	move	$s2, $fp
	b	.LBB5_129
.LBB5_63:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $fp, .LBB5_45
.LBB5_64:
	move	$s2, $zero
	fneg.d	$fa0, $fs0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fs0, $fa0, $fcc0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s4, 0
	ori	$a0, $zero, 44
	st.h	$a0, $s4, 8
	b	.LBB5_129
.LBB5_65:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB5_66:
	ld.d	$a1, $s1, 0
	slli.d	$a2, $a0, 1
	ldx.hu	$a2, $a1, $a2
	move	$s3, $zero
	slli.d	$a2, $a2, 52
	bltz	$a2, .LBB5_70
.LBB5_67:                               # %._crit_edge
	sub.d	$a1, $zero, $s5
	masknez	$a2, $s5, $s4
	maskeqz	$a1, $a1, $s4
	or	$a1, $a1, $a2
	move	$a2, $a0
	bstrins.d	$a2, $zero, 5, 5
	ori	$a3, $zero, 69
	movgr2fr.d	$fa0, $a1
	beq	$a2, $a3, .LBB5_76
# %bb.68:                               # %._crit_edge
	addi.w	$a1, $zero, -6
	blt	$s3, $a1, .LBB5_76
# %bb.69:
	ffint.s.l	$fa0, $fa0
	sub.w	$a0, $zero, $s3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(scan_number.powers_10)
	addi.d	$a1, $a1, %pc_lo12(scan_number.powers_10)
	fldx.s	$fa1, $a1, $a0
	move	$s2, $zero
	fdiv.s	$fa0, $fa0, $fa1
	b	.LBB5_127
.LBB5_70:                               # %.lr.ph
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3275
	lu32i.d	$a2, -209716
	lu52i.d	$s6, $a2, 204
	move	$s2, $a0
	b	.LBB5_73
	.p2align	4, , 16
.LBB5_71:                               #   in Loop: Header=BB5_73 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a1, $s1, 0
.LBB5_72:                               #   in Loop: Header=BB5_73 Depth=1
	slli.d	$a2, $s5, 3
	slli.d	$a3, $a0, 1
	ldx.hu	$a3, $a1, $a3
	alsl.d	$a2, $s5, $a2, 1
	addi.w	$a4, $s2, -48
	add.d	$s5, $a2, $a4
	slli.d	$a2, $a3, 52
	addi.w	$s3, $s3, -1
	move	$s2, $a0
	bgez	$a2, .LBB5_67
.LBB5_73:                               # =>This Inner Loop Header: Depth=1
	bgeu	$s5, $s6, .LBB5_77
# %bb.74:                               #   in Loop: Header=BB5_73 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s0, 8
	bgeu	$a0, $a2, .LBB5_71
# %bb.75:                               #   in Loop: Header=BB5_73 Depth=1
	addi.d	$a2, $a0, 1
	st.d	$a2, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB5_72
.LBB5_76:
	ffint.d.l	$fs0, $fa0
	b	.LBB5_87
.LBB5_77:
	movgr2fr.d	$fa0, $s5
	ffint.d.l	$fs0, $fa0
	b	.LBB5_84
.LBB5_78:
	ld.d	$a1, $s0, 0
	beq	$a0, $s8, .LBB5_80
# %bb.79:
	addi.d	$a1, $a1, -1
	st.d	$a1, $s0, 0
.LBB5_80:
	move	$fp, $s4
	ld.d	$a0, $s0, 8
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB5_130
# %bb.81:                               # %.critedge
	addi.d	$a0, $a1, 1
	st.d	$a0, $s0, 0
	b	.LBB5_129
.LBB5_82:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$s2, $a0
.LBB5_83:
	move	$s3, $zero
	move	$fp, $s4
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
.LBB5_84:
	ld.d	$a1, $s1, 0
	addi.w	$a0, $s2, 0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB5_90
# %bb.85:
	move	$a0, $s2
.LBB5_86:                               # %._crit_edge265
	fneg.d	$fa0, $fs0
	movgr2cf	$fcc0, $s4
	fsel	$fs0, $fs0, $fa0, $fcc0
.LBB5_87:
	addi.w	$a1, $zero, -33
	lu32i.d	$a1, 0
	and	$a1, $a0, $a1
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 69
	bne	$a1, $a2, .LBB5_114
# %bb.88:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_95
# %bb.89:
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB5_96
.LBB5_90:                               # %.lr.ph264
	vldi	$vr1, -988
	b	.LBB5_93
	.p2align	4, , 16
.LBB5_91:                               #   in Loop: Header=BB5_93 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	vldi	$vr1, -988
	ld.d	$a1, $s1, 0
.LBB5_92:                               #   in Loop: Header=BB5_93 Depth=1
	addi.d	$a2, $s2, -48
	slli.d	$a3, $a0, 1
	ldx.hu	$a3, $a1, $a3
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fmadd.d	$fs0, $fs0, $fa1, $fa0
	slli.d	$a2, $a3, 52
	addi.w	$s3, $s3, -1
	move	$s2, $a0
	bgez	$a2, .LBB5_86
.LBB5_93:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s0, 8
	bgeu	$a0, $a2, .LBB5_91
# %bb.94:                               #   in Loop: Header=BB5_93 Depth=1
	addi.d	$a2, $a0, 1
	st.d	$a2, $s0, 0
	ld.bu	$a0, $a0, 1
	b	.LBB5_92
.LBB5_95:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB5_96:
	ori	$a1, $zero, 43
	ori	$s1, $zero, 1
	move	$s8, $fp
	beq	$a0, $a1, .LBB5_100
# %bb.97:
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB5_99
# %bb.98:
	move	$s1, $zero
	b	.LBB5_100
.LBB5_99:
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 0
.LBB5_100:
	pcalau12i	$a0, %pc_hi20(scan_char_array)
	addi.d	$s5, $a0, %pc_lo12(scan_char_array)
	move	$s4, $zero
	ori	$fp, $zero, 10
	lu12i.w	$a0, 52428
	ori	$s6, $a0, 3276
	addi.w	$s2, $zero, -13
	ori	$s7, $zero, 7
	b	.LBB5_102
	.p2align	4, , 16
.LBB5_101:                              #   in Loop: Header=BB5_102 Depth=1
	slli.d	$a0, $s4, 3
	alsl.d	$a0, $s4, $a0, 1
	add.w	$s4, $a0, $a1
.LBB5_102:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_104
# %bb.103:                              #   in Loop: Header=BB5_102 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 0
	ld.bu	$a0, $a0, 1
	add.d	$a1, $s5, $a0
	ld.bu	$a1, $a1, 1
	bltu	$a1, $fp, .LBB5_105
	b	.LBB5_108
	.p2align	4, , 16
.LBB5_104:                              #   in Loop: Header=BB5_102 Depth=1
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	add.d	$a1, $s5, $a0
	ld.bu	$a1, $a1, 1
	bgeu	$a1, $fp, .LBB5_108
.LBB5_105:                              #   in Loop: Header=BB5_102 Depth=1
	blt	$s4, $s6, .LBB5_101
# %bb.106:                              #   in Loop: Header=BB5_102 Depth=1
	bne	$s4, $s6, .LBB5_129
# %bb.107:                              #   in Loop: Header=BB5_102 Depth=1
	bgeu	$s7, $a1, .LBB5_101
	b	.LBB5_129
.LBB5_108:
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB5_110
# %bb.109:
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 0
.LBB5_110:
	ori	$a0, $zero, 999
	bltu	$a0, $s4, .LBB5_129
# %bb.111:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	bgeu	$a0, $a1, .LBB5_113
# %bb.112:                              # %.thread.thread
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 0
	addi.w	$s2, $zero, -18
	b	.LBB5_129
.LBB5_113:
	move	$fp, $s8
	sub.d	$a0, $zero, $s4
	maskeqz	$a1, $s4, $s1
	ld.d	$a2, $s0, 40
	masknez	$a0, $a0, $s1
	or	$a0, $a1, $a0
	add.w	$s3, $a0, $s3
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB5_114:                              # %.thread
	addi.w	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB5_116
.LBB5_115:
	addi.w	$s2, $zero, -18
	b	.LBB5_129
.LBB5_116:
	blez	$s3, .LBB5_121
# %bb.117:                              # %.preheader
	ori	$a0, $zero, 7
	bltu	$s3, $a0, .LBB5_120
# %bb.118:                              # %.lr.ph277.preheader
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$a0, $a0, 1042
	movgr2fr.d	$fa0, $a0
	ori	$a0, $zero, 6
	.p2align	4, , 16
.LBB5_119:                              # %.lr.ph277
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s3, $s3, -6
	fmul.d	$fs0, $fs0, $fa0
	bltu	$a0, $s3, .LBB5_119
.LBB5_120:                              # %._crit_edge278
	slli.d	$a0, $s3, 2
	pcalau12i	$a1, %pc_hi20(scan_number.powers_10)
	addi.d	$a1, $a1, %pc_lo12(scan_number.powers_10)
	fldx.s	$fa0, $a1, $a0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fs0, $fs0, $fa0
	b	.LBB5_126
.LBB5_121:
	bgez	$s3, .LBB5_126
# %bb.122:                              # %.preheader236
	addi.w	$a0, $zero, -7
	bltu	$a0, $s3, .LBB5_125
# %bb.123:                              # %.lr.ph271.preheader
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$a0, $a0, 1042
	movgr2fr.d	$fa0, $a0
	addi.w	$a0, $zero, -12
.LBB5_124:                              # %.lr.ph271
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $s3
	fdiv.d	$fs0, $fs0, $fa0
	addi.w	$s3, $s3, 6
	bltu	$a1, $a0, .LBB5_124
.LBB5_125:                              # %._crit_edge272
	sub.w	$a0, $zero, $s3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(scan_number.powers_10)
	addi.d	$a1, $a1, %pc_lo12(scan_number.powers_10)
	fldx.s	$fa0, $a1, $a0
	fcvt.d.s	$fa0, $fa0
	fdiv.d	$fs0, $fs0, $fa0
.LBB5_126:
	move	$s2, $zero
	fcvt.s.d	$fa0, $fs0
.LBB5_127:                              # %scan_int.exit180
	fst.s	$fa0, $fp, 0
	ori	$a0, $zero, 44
.LBB5_128:                              # %scan_int.exit180
	st.h	$a0, $fp, 8
.LBB5_129:                              # %scan_int.exit180
	move	$a0, $s2
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.LBB5_130:
	ld.d	$a1, $s0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s8, .LBB5_129
	b	.LBB5_40
.Lfunc_end5:
	.size	scan_number, .Lfunc_end5-scan_number
                                        # -- End function
	.globl	scan_int                        # -- Begin function scan_int
	.p2align	5
	.type	scan_int,@function
scan_int:                               # @scan_int
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	ori	$a4, $zero, 10
	move	$s0, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$fp, $a0
	bne	$a1, $a4, .LBB6_2
# %bb.1:
	ori	$s5, $zero, 7
	lu12i.w	$a0, 52428
	ori	$s4, $a0, 3276
	b	.LBB6_3
.LBB6_2:
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	div.wu	$s4, $a0, $s1
	mul.w	$a1, $s4, $s1
	xor	$s5, $a1, $a0
.LBB6_3:
	pcalau12i	$a0, %pc_hi20(scan_char_array)
	addi.d	$s3, $a0, %pc_lo12(scan_char_array)
	move	$s6, $zero
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                #   in Loop: Header=BB6_5 Depth=1
	mul.d	$a0, $s6, $s1
	add.w	$s6, $a0, $s7
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	bgeu	$a0, $a1, .LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, 0
	ld.bu	$a0, $a0, 1
	add.d	$a1, $s3, $a0
	ld.bu	$s7, $a1, 1
	blt	$s7, $s1, .LBB6_8
	b	.LBB6_17
	.p2align	4, , 16
.LBB6_7:                                #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a1, $fp, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	add.d	$a1, $s3, $a0
	ld.bu	$s7, $a1, 1
	bge	$s7, $s1, .LBB6_17
.LBB6_8:                                #   in Loop: Header=BB6_5 Depth=1
	blt	$s6, $s4, .LBB6_4
# %bb.9:                                #   in Loop: Header=BB6_5 Depth=1
	blt	$s4, $s6, .LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_5 Depth=1
	bgeu	$s5, $s7, .LBB6_4
.LBB6_11:
	beqz	$s0, .LBB6_23
# %bb.12:
	bstrpick.d	$a0, $s6, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs1, $fa0
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_13:                               #   in Loop: Header=BB6_15 Depth=1
	ld.d	$a1, $fp, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB6_14:                               #   in Loop: Header=BB6_15 Depth=1
	andi	$a1, $s7, 255
	add.d	$a2, $s3, $a0
	ld.bu	$s7, $a2, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmadd.d	$fs0, $fs0, $fs1, $fa0
	bgeu	$s7, $s1, .LBB6_20
.LBB6_15:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	bgeu	$a0, $a1, .LBB6_13
# %bb.16:                               #   in Loop: Header=BB6_15 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, 0
	ld.bu	$a0, $a0, 1
	b	.LBB6_14
.LBB6_17:
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB6_19
# %bb.18:
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
.LBB6_19:
	move	$a0, $zero
	st.d	$s6, $s2, 0
	b	.LBB6_24
.LBB6_20:
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB6_22
# %bb.21:
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
.LBB6_22:
	fst.d	$fs0, $s0, 0
	ori	$a0, $zero, 1
	b	.LBB6_24
.LBB6_23:
	addi.w	$a0, $zero, -13
.LBB6_24:
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
.Lfunc_end6:
	.size	scan_int, .Lfunc_end6-scan_int
                                        # -- End function
	.globl	mk_string                       # -- Begin function mk_string
	.p2align	5
	.type	mk_string,@function
mk_string:                              # @mk_string
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 16
	move	$fp, $a0
	sub.w	$s0, $a3, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a4, $a0, %pc_lo12(.L.str.6)
	ori	$a3, $zero, 1
	move	$a0, $a2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(alloc_shrink)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_2
# %bb.1:
	move	$a1, $zero
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 822
	st.h	$a0, $fp, 8
	st.h	$s0, $fp, 10
	b	.LBB7_3
.LBB7_2:
	addi.w	$a1, $zero, -25
.LBB7_3:
	move	$a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	mk_string, .Lfunc_end7-mk_string
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"scanner"
	.size	.L.str, 8

	.type	scan_char_array,@object         # @scan_char_array
	.bss
	.globl	scan_char_array
scan_char_array:
	.space	257
	.size	scan_char_array, 257

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"["
	.size	.L.str.1, 2

	.type	left_bracket,@object            # @left_bracket
	.bss
	.globl	left_bracket
	.p2align	3, 0x0
left_bracket:
	.space	16
	.size	left_bracket, 16

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"]"
	.size	.L.str.2, 2

	.type	right_bracket,@object           # @right_bracket
	.bss
	.globl	right_bracket
	.p2align	3, 0x0
right_bracket:
	.space	16
	.size	right_bracket, 16

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.space	1
	.size	.L.str.3, 1

	.type	empty_name,@object              # @empty_name
	.bss
	.globl	empty_name
	.p2align	3, 0x0
empty_name:
	.space	16
	.size	empty_name, 16

	.type	array_packing,@object           # @array_packing
	.globl	array_packing
	.p2align	2, 0x0
array_packing:
	.word	0                               # 0x0
	.size	array_packing, 4

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"scanner(top proc)"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"scanner(proc)"
	.size	.L.str.5, 14

	.type	scan_number.powers_10,@object   # @scan_number.powers_10
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
scan_number.powers_10:
	.word	0x3f800000                      # float 1
	.word	0x41200000                      # float 10
	.word	0x42c80000                      # float 100
	.word	0x447a0000                      # float 1000
	.word	0x461c4000                      # float 1.0E+4
	.word	0x47c35000                      # float 1.0E+5
	.word	0x49742400                      # float 1.0E+6
	.size	scan_number.powers_10, 28

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"scanner(string)"
	.size	.L.str.6, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym left_bracket
	.addrsig_sym right_bracket
	.addrsig_sym empty_name
	.addrsig_sym dstack
