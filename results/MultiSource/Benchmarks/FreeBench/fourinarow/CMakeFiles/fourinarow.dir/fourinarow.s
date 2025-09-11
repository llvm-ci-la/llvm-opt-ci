	.file	"fourinarow.c"
	.text
	.globl	init_patterns                   # -- Begin function init_patterns
	.p2align	5
	.type	init_patterns,@function
init_patterns:                          # @init_patterns
# %bb.0:
	pcalau12i	$a0, %pc_hi20(C4VERT)
	ld.d	$a1, $a0, %pc_lo12(C4VERT)
	slli.d	$a1, $a1, 21
	lu12i.w	$a2, 516
	ori	$a2, $a2, 129
	or	$a2, $a1, $a2
	st.d	$a2, $a0, %pc_lo12(C4VERT)
	srli.d	$a0, $a1, 7
	lu12i.w	$a2, 4
	ori	$a2, $a2, 129
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(C3VERT)
	st.d	$a0, $a2, %pc_lo12(C3VERT)
	srli.d	$a0, $a1, 14
	ori	$a0, $a0, 129
	pcalau12i	$a1, %pc_hi20(C2VERT)
	st.d	$a0, $a1, %pc_lo12(C2VERT)
	pcalau12i	$a0, %pc_hi20(C4HORIZ)
	ori	$a1, $zero, 15
	st.d	$a1, $a0, %pc_lo12(C4HORIZ)
	pcalau12i	$a0, %pc_hi20(C3HORIZ)
	ori	$a1, $zero, 7
	st.d	$a1, $a0, %pc_lo12(C3HORIZ)
	pcalau12i	$a0, %pc_hi20(C4UP_R)
	ld.d	$a1, $a0, %pc_lo12(C4UP_R)
	pcalau12i	$a2, %pc_hi20(C2HORIZ)
	ori	$a3, $zero, 3
	st.d	$a3, $a2, %pc_lo12(C2HORIZ)
	slli.d	$a1, $a1, 24
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	or	$a2, $a1, $a2
	st.d	$a2, $a0, %pc_lo12(C4UP_R)
	srli.d	$a0, $a1, 8
	lu12i.w	$a2, 16
	ori	$a2, $a2, 257
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(C3UP_R)
	st.d	$a0, $a2, %pc_lo12(C3UP_R)
	srli.d	$a0, $a1, 16
	pcalau12i	$a1, %pc_hi20(C4UP_L)
	ld.d	$a2, $a1, %pc_lo12(C4UP_L)
	ori	$a0, $a0, 257
	pcalau12i	$a3, %pc_hi20(C2UP_R)
	st.d	$a0, $a3, %pc_lo12(C2UP_R)
	slli.d	$a0, $a2, 18
	lu12i.w	$a2, 520
	ori	$a2, $a2, 520
	or	$a2, $a0, $a2
	st.d	$a2, $a1, %pc_lo12(C4UP_L)
	srli.d	$a1, $a0, 6
	lu12i.w	$a2, 8
	ori	$a2, $a2, 520
	or	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(C3UP_L)
	st.d	$a1, $a2, %pc_lo12(C3UP_L)
	srli.d	$a0, $a0, 12
	ori	$a0, $a0, 520
	pcalau12i	$a1, %pc_hi20(C2UP_L)
	st.d	$a0, $a1, %pc_lo12(C2UP_L)
	ret
.Lfunc_end0:
	.size	init_patterns, .Lfunc_end0-init_patterns
                                        # -- End function
	.globl	init_board                      # -- Begin function init_board
	.p2align	5
	.type	init_board,@function
init_board:                             # @init_board
# %bb.0:                                # %.preheader11
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3630
	st.h	$a1, $a0, 4
	lu12i.w	$a2, 189154
	ori	$a2, $a2, 3630
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 7
	st.h	$a1, $a0, 11
	st.w	$a2, $a0, 14
	st.h	$a1, $a0, 18
	st.w	$a2, $a0, 21
	st.h	$a1, $a0, 25
	st.w	$a2, $a0, 28
	st.h	$a1, $a0, 32
	st.w	$a2, $a0, 35
	st.h	$a1, $a0, 39
	st.w	$a2, $a0, 42
	st.h	$a1, $a0, 46
	st.b	$zero, $a0, 6
	st.b	$zero, $a0, 13
	st.b	$zero, $a0, 20
	st.b	$zero, $a0, 27
	st.b	$zero, $a0, 34
	st.b	$zero, $a0, 41
	st.b	$zero, $a0, 48
	ret
.Lfunc_end1:
	.size	init_board, .Lfunc_end1-init_board
                                        # -- End function
	.globl	print_board                     # -- Begin function print_board
	.p2align	5
	.type	print_board,@function
print_board:                            # @print_board
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 6
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 34
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 5
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 5
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 33
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 11
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 18
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 25
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 39
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 46
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 17
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 31
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 38
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 45
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 23
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 30
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 37
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 44
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 15
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 22
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 29
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 36
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 43
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 14
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 28
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 35
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 42
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end2:
	.size	print_board, .Lfunc_end2-print_board
                                        # -- End function
	.globl	place_piece                     # -- Begin function place_piece
	.p2align	5
	.type	place_piece,@function
place_piece:                            # @place_piece
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a4, $zero, 7
	move	$a3, $a0
	bltu	$a0, $a4, .LBB3_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB3_2:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_3:
	slli.d	$a0, $a3, 3
	sub.d	$a0, $a0, $a3
	add.d	$a2, $a2, $a0
	ld.b	$a3, $a2, 6
	ori	$a4, $zero, 5
	ori	$a0, $zero, 1
	blt	$a4, $a3, .LBB3_2
# %bb.4:
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB3_7
# %bb.5:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB3_9
# %bb.6:
	ori	$a0, $zero, 120
	b	.LBB3_8
.LBB3_7:
	ori	$a0, $zero, 111
.LBB3_8:
	stx.b	$a0, $a2, $a3
	ld.b	$a1, $a2, 6
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.b	$a1, $a2, 6
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_9:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	place_piece, .Lfunc_end3-place_piece
                                        # -- End function
	.globl	board_full                      # -- Begin function board_full
	.p2align	5
	.type	board_full,@function
board_full:                             # @board_full
# %bb.0:
	ld.b	$a1, $a0, 6
	ld.b	$a2, $a0, 13
	ld.b	$a3, $a0, 20
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	ld.b	$a2, $a0, 27
	ld.b	$a3, $a0, 34
	ld.b	$a4, $a0, 41
	ld.b	$a0, $a0, 48
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a4
	add.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -42
	sltui	$a0, $a0, 1
	ret
.Lfunc_end4:
	.size	board_full, .Lfunc_end4-board_full
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function find_winner_p
.LCPI5_0:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
.LCPI5_1:
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI5_2:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI5_3:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI5_4:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI5_5:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI5_6:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI5_7:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI5_8:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	17                              # 0x11
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI5_9:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI5_10:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI5_11:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI5_12:
	.dword	131072                          # 0x20000
	.dword	262144                          # 0x40000
.LCPI5_13:
	.dword	512                             # 0x200
	.dword	1024                            # 0x400
.LCPI5_14:
	.dword	33554432                        # 0x2000000
	.dword	67108864                        # 0x4000000
.LCPI5_15:
	.dword	2097152                         # 0x200000
	.dword	4194304                         # 0x400000
.LCPI5_16:
	.dword	8192                            # 0x2000
	.dword	16384                           # 0x4000
.LCPI5_17:
	.dword	536870912                       # 0x20000000
	.dword	1073741824                      # 0x40000000
.LCPI5_18:
	.dword	524288                          # 0x80000
	.dword	1048576                         # 0x100000
.LCPI5_19:
	.dword	2048                            # 0x800
	.dword	4096                            # 0x1000
.LCPI5_20:
	.dword	134217728                       # 0x8000000
	.dword	268435456                       # 0x10000000
.LCPI5_21:
	.dword	8388608                         # 0x800000
	.dword	16777216                        # 0x1000000
.LCPI5_22:
	.dword	32768                           # 0x8000
	.dword	65536                           # 0x10000
.LCPI5_23:
	.dword	2147483648                      # 0x80000000
	.dword	4294967296                      # 0x100000000
.LCPI5_24:
	.dword	128                             # 0x80
	.dword	256                             # 0x100
.LCPI5_25:
	.dword	8                               # 0x8
	.dword	16                              # 0x10
.LCPI5_26:
	.dword	32                              # 0x20
	.dword	64                              # 0x40
.LCPI5_27:
	.dword	2                               # 0x2
	.dword	4                               # 0x4
.LCPI5_28:
	.dword	549755813888                    # 0x8000000000
	.dword	1099511627776                   # 0x10000000000
.LCPI5_29:
	.dword	34359738368                     # 0x800000000
	.dword	68719476736                     # 0x1000000000
.LCPI5_30:
	.dword	137438953472                    # 0x2000000000
	.dword	274877906944                    # 0x4000000000
.LCPI5_31:
	.dword	8589934592                      # 0x200000000
	.dword	17179869184                     # 0x400000000
	.text
	.globl	find_winner_p
	.p2align	5
	.type	find_winner_p,@function
find_winner_p:                          # @find_winner_p
# %bb.0:
	move	$a1, $a0
	ld.b	$a0, $a0, 6
	ld.b	$a2, $a1, 13
	ld.b	$a3, $a1, 20
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a3
	ld.b	$a2, $a1, 27
	ld.b	$a3, $a1, 34
	ld.b	$a4, $a1, 41
	ld.b	$a5, $a1, 48
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.w	$a2, $a0, $a5
	ori	$a3, $zero, 42
	ori	$a0, $zero, 2
	beq	$a2, $a3, .LBB5_71
# %bb.1:                                # %.preheader63.preheader
	ld.bu	$a0, $a1, 0
	addi.d	$a0, $a0, -111
	sltui	$a0, $a0, 1
	ld.b	$a4, $a1, 11
	ld.b	$a3, $a1, 18
	ld.b	$a2, $a1, 25
	ld.w	$a5, $a1, 7
	ld.w	$a6, $a1, 14
	ld.w	$a7, $a1, 21
	ld.w	$t0, $a1, 28
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr2, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 0
	ld.w	$a5, $a1, 35
	ld.w	$a6, $a1, 42
	ld.w	$a7, $a1, 1
	ld.b	$t0, $a1, 32
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr6, $a7, 0
	pcalau12i	$a5, %pc_hi20(.LCPI5_0)
	vld	$vr7, $a5, %pc_lo12(.LCPI5_0)
	pcalau12i	$a5, %pc_hi20(.LCPI5_1)
	vld	$vr8, $a5, %pc_lo12(.LCPI5_1)
	pcalau12i	$a5, %pc_hi20(.LCPI5_2)
	vld	$vr9, $a5, %pc_lo12(.LCPI5_2)
	pcalau12i	$a5, %pc_hi20(.LCPI5_3)
	vld	$vr10, $a5, %pc_lo12(.LCPI5_3)
	vshuf.b	$vr7, $vr1, $vr0, $vr7
	vshuf.b	$vr8, $vr3, $vr2, $vr8
	vshuf.b	$vr2, $vr2, $vr7, $vr9
	vshuf.b	$vr2, $vr3, $vr2, $vr10
	pcalau12i	$a5, %pc_hi20(.LCPI5_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI5_4)
	pcalau12i	$a5, %pc_hi20(.LCPI5_5)
	vld	$vr7, $a5, %pc_lo12(.LCPI5_5)
	pcalau12i	$a5, %pc_hi20(.LCPI5_6)
	vld	$vr9, $a5, %pc_lo12(.LCPI5_6)
	pcalau12i	$a5, %pc_hi20(.LCPI5_7)
	vld	$vr10, $a5, %pc_lo12(.LCPI5_7)
	vshuf.b	$vr2, $vr4, $vr2, $vr3
	vshuf.b	$vr3, $vr4, $vr8, $vr7
	vshuf.b	$vr3, $vr5, $vr3, $vr9
	vshuf.b	$vr2, $vr5, $vr2, $vr10
	pcalau12i	$a5, %pc_hi20(.LCPI5_8)
	vld	$vr4, $a5, %pc_lo12(.LCPI5_8)
	pcalau12i	$a5, %pc_hi20(.LCPI5_9)
	vld	$vr5, $a5, %pc_lo12(.LCPI5_9)
	pcalau12i	$a5, %pc_hi20(.LCPI5_10)
	vld	$vr7, $a5, %pc_lo12(.LCPI5_10)
	pcalau12i	$a5, %pc_hi20(.LCPI5_11)
	vld	$vr8, $a5, %pc_lo12(.LCPI5_11)
	vshuf.b	$vr2, $vr6, $vr2, $vr4
	vshuf.b	$vr3, $vr6, $vr3, $vr5
	vshuf.b	$vr0, $vr0, $vr3, $vr7
	vshuf.b	$vr1, $vr1, $vr0, $vr8
	vinsgr2vr.b	$vr1, $a4, 12
	vinsgr2vr.b	$vr1, $a3, 13
	vinsgr2vr.b	$vr1, $a2, 14
	vinsgr2vr.b	$vr1, $t0, 15
	vrepli.b	$vr0, 111
	vseq.b	$vr2, $vr2, $vr0
	vilvl.b	$vr3, $vr2, $vr2
	vilvl.h	$vr4, $vr3, $vr3
	vilvl.w	$vr7, $vr4, $vr4
	vilvh.h	$vr3, $vr3, $vr3
	vilvl.w	$vr9, $vr3, $vr3
	vilvh.w	$vr11, $vr4, $vr4
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 56
	vsrai.d	$vr12, $vr3, 56
	vseq.b	$vr1, $vr1, $vr0
	vilvh.b	$vr3, $vr1, $vr1
	vilvh.h	$vr4, $vr3, $vr3
	vilvh.w	$vr5, $vr4, $vr4
	vslli.d	$vr5, $vr5, 56
	vsrai.d	$vr16, $vr5, 56
	vilvh.b	$vr2, $vr2, $vr2
	vilvh.h	$vr5, $vr2, $vr2
	vilvh.w	$vr6, $vr5, $vr5
	vslli.d	$vr6, $vr6, 56
	vsrai.d	$vr15, $vr6, 56
	vilvl.b	$vr1, $vr1, $vr1
	vilvh.h	$vr6, $vr1, $vr1
	vilvh.w	$vr8, $vr6, $vr6
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr14, $vr8, 56
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.w	$vr8, $vr3, $vr3
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr13, $vr8, 56
	vilvl.h	$vr2, $vr2, $vr2
	vilvh.w	$vr8, $vr2, $vr2
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr10, $vr8, 56
	vilvl.h	$vr1, $vr1, $vr1
	vilvh.w	$vr8, $vr1, $vr1
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr8, $vr8, 56
	vilvl.w	$vr4, $vr4, $vr4
	vslli.d	$vr4, $vr4, 56
	vsrai.d	$vr17, $vr4, 56
	vilvl.w	$vr4, $vr5, $vr5
	vslli.d	$vr4, $vr4, 56
	vsrai.d	$vr5, $vr4, 56
	vilvl.w	$vr4, $vr6, $vr6
	vslli.d	$vr4, $vr4, 56
	vsrai.d	$vr4, $vr4, 56
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 56
	vsrai.d	$vr3, $vr3, 56
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 56
	vsrai.d	$vr2, $vr2, 56
	vilvl.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 56
	vsrai.d	$vr1, $vr1, 56
	pcalau12i	$a2, %pc_hi20(.LCPI5_12)
	vld	$vr6, $a2, %pc_lo12(.LCPI5_12)
	pcalau12i	$a2, %pc_hi20(.LCPI5_13)
	vld	$vr18, $a2, %pc_lo12(.LCPI5_13)
	pcalau12i	$a2, %pc_hi20(.LCPI5_14)
	vld	$vr19, $a2, %pc_lo12(.LCPI5_14)
	pcalau12i	$a2, %pc_hi20(.LCPI5_15)
	vld	$vr20, $a2, %pc_lo12(.LCPI5_15)
	vand.v	$vr1, $vr1, $vr6
	vand.v	$vr2, $vr2, $vr18
	vand.v	$vr3, $vr3, $vr19
	vand.v	$vr4, $vr4, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI5_16)
	vld	$vr6, $a2, %pc_lo12(.LCPI5_16)
	pcalau12i	$a2, %pc_hi20(.LCPI5_17)
	vld	$vr18, $a2, %pc_lo12(.LCPI5_17)
	pcalau12i	$a2, %pc_hi20(.LCPI5_18)
	vld	$vr19, $a2, %pc_lo12(.LCPI5_18)
	pcalau12i	$a2, %pc_hi20(.LCPI5_19)
	vld	$vr20, $a2, %pc_lo12(.LCPI5_19)
	vand.v	$vr5, $vr5, $vr6
	vand.v	$vr6, $vr17, $vr18
	vand.v	$vr8, $vr8, $vr19
	vand.v	$vr10, $vr10, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI5_20)
	vld	$vr17, $a2, %pc_lo12(.LCPI5_20)
	pcalau12i	$a2, %pc_hi20(.LCPI5_21)
	vld	$vr18, $a2, %pc_lo12(.LCPI5_21)
	pcalau12i	$a2, %pc_hi20(.LCPI5_22)
	vld	$vr19, $a2, %pc_lo12(.LCPI5_22)
	pcalau12i	$a2, %pc_hi20(.LCPI5_23)
	vld	$vr20, $a2, %pc_lo12(.LCPI5_23)
	vand.v	$vr13, $vr13, $vr17
	vand.v	$vr14, $vr14, $vr18
	vand.v	$vr15, $vr15, $vr19
	vand.v	$vr16, $vr16, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI5_24)
	vld	$vr17, $a2, %pc_lo12(.LCPI5_24)
	pcalau12i	$a2, %pc_hi20(.LCPI5_25)
	vld	$vr18, $a2, %pc_lo12(.LCPI5_25)
	pcalau12i	$a2, %pc_hi20(.LCPI5_26)
	vld	$vr19, $a2, %pc_lo12(.LCPI5_26)
	pcalau12i	$a2, %pc_hi20(.LCPI5_27)
	vld	$vr20, $a2, %pc_lo12(.LCPI5_27)
	vand.v	$vr12, $vr12, $vr17
	vand.v	$vr11, $vr11, $vr18
	vand.v	$vr9, $vr9, $vr19
	vand.v	$vr7, $vr7, $vr20
	ld.b	$a2, $a1, 46
	ld.b	$a3, $a1, 5
	ld.h	$a4, $a1, 39
	ld.b	$a5, $a1, 12
	ld.b	$a6, $a1, 19
	ld.b	$a7, $a1, 26
	vinsgr2vr.h	$vr17, $a4, 0
	ld.b	$a4, $a1, 33
	vori.b	$vr18, $vr17, 0
	vinsgr2vr.b	$vr18, $a2, 1
	vinsgr2vr.b	$vr18, $a3, 2
	vinsgr2vr.b	$vr18, $a5, 3
	vinsgr2vr.b	$vr18, $a6, 4
	vinsgr2vr.b	$vr18, $a7, 5
	vinsgr2vr.b	$vr18, $a4, 6
	vextrins.b	$vr18, $vr17, 113
	vseq.b	$vr0, $vr18, $vr0
	vilvl.b	$vr0, $vr0, $vr0
	vilvl.h	$vr17, $vr0, $vr0
	vilvl.w	$vr18, $vr17, $vr17
	vilvh.h	$vr0, $vr0, $vr0
	pcalau12i	$a2, %pc_hi20(.LCPI5_28)
	vld	$vr19, $a2, %pc_lo12(.LCPI5_28)
	vilvh.w	$vr20, $vr0, $vr0
	vslli.d	$vr20, $vr20, 56
	vsrai.d	$vr20, $vr20, 56
	vand.v	$vr19, $vr20, $vr19
	pcalau12i	$a2, %pc_hi20(.LCPI5_29)
	vld	$vr20, $a2, %pc_lo12(.LCPI5_29)
	vilvh.w	$vr17, $vr17, $vr17
	vslli.d	$vr17, $vr17, 56
	vsrai.d	$vr17, $vr17, 56
	vand.v	$vr17, $vr17, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI5_30)
	vld	$vr20, $a2, %pc_lo12(.LCPI5_30)
	vilvl.w	$vr0, $vr0, $vr0
	vslli.d	$vr0, $vr0, 56
	vsrai.d	$vr0, $vr0, 56
	vand.v	$vr0, $vr0, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI5_31)
	vld	$vr20, $a2, %pc_lo12(.LCPI5_31)
	ld.bu	$a1, $a1, 47
	vslli.d	$vr18, $vr18, 56
	vsrai.d	$vr18, $vr18, 56
	vand.v	$vr18, $vr18, $vr20
	addi.d	$a1, $a1, -111
	sltui	$a1, $a1, 1
	slli.d	$a1, $a1, 41
	vor.v	$vr7, $vr7, $vr18
	vor.v	$vr0, $vr9, $vr0
	vor.v	$vr9, $vr11, $vr17
	vor.v	$vr11, $vr12, $vr19
	vor.v	$vr12, $vr15, $vr16
	vor.v	$vr11, $vr11, $vr14
	vor.v	$vr11, $vr11, $vr12
	vor.v	$vr10, $vr10, $vr13
	vor.v	$vr8, $vr9, $vr8
	vor.v	$vr8, $vr8, $vr10
	vor.v	$vr8, $vr8, $vr11
	vor.v	$vr5, $vr5, $vr6
	vor.v	$vr0, $vr0, $vr4
	vor.v	$vr0, $vr0, $vr5
	vor.v	$vr2, $vr2, $vr3
	vor.v	$vr1, $vr7, $vr1
	vor.v	$vr1, $vr1, $vr2
	vor.v	$vr0, $vr1, $vr0
	vor.v	$vr0, $vr0, $vr8
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	pcalau12i	$a2, %pc_hi20(C4VERT)
	ld.d	$a2, $a2, %pc_lo12(C4VERT)
	vpickve2gr.d	$a3, $vr0, 0
	or	$a1, $a3, $a1
	or	$a1, $a1, $a0
	andn	$a3, $a2, $a1
	ori	$a0, $zero, 1
	beqz	$a3, .LBB5_71
# %bb.2:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.3:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.4:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.5:
	slli.d	$a3, $a2, 4
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.6:
	slli.d	$a3, $a2, 5
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.7:
	slli.d	$a3, $a2, 6
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.8:
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.9:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.10:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.11:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.12:
	slli.d	$a3, $a2, 11
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.13:
	slli.d	$a3, $a2, 12
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.14:
	slli.d	$a3, $a2, 13
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.15:
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.16:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.17:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.18:
	slli.d	$a3, $a2, 17
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.19:
	slli.d	$a3, $a2, 18
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.20:
	slli.d	$a3, $a2, 19
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.21:
	slli.d	$a2, $a2, 20
	andn	$a2, $a2, $a1
	beqz	$a2, .LBB5_71
# %bb.22:                               # %.preheader60
	pcalau12i	$a2, %pc_hi20(C4HORIZ)
	ld.d	$a2, $a2, %pc_lo12(C4HORIZ)
	andn	$a3, $a2, $a1
	beqz	$a3, .LBB5_71
# %bb.23:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.24:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.25:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.26:                               # %.preheader58.1
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.27:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.28:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.29:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.30:                               # %.preheader58.2
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.31:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.32:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.33:
	slli.d	$a3, $a2, 17
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.34:                               # %.preheader58.3
	slli.d	$a3, $a2, 21
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.35:
	slli.d	$a3, $a2, 22
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.36:
	slli.d	$a3, $a2, 23
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.37:
	slli.d	$a3, $a2, 24
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.38:                               # %.preheader58.4
	slli.d	$a3, $a2, 28
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.39:
	slli.d	$a3, $a2, 29
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.40:
	slli.d	$a3, $a2, 30
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.41:
	slli.d	$a3, $a2, 31
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.42:                               # %.preheader58.5
	slli.d	$a3, $a2, 35
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.43:
	slli.d	$a3, $a2, 36
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.44:
	slli.d	$a3, $a2, 37
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.45:
	slli.d	$a2, $a2, 38
	andn	$a2, $a2, $a1
	beqz	$a2, .LBB5_71
# %bb.46:                               # %.preheader57
	pcalau12i	$a2, %pc_hi20(C4UP_R)
	ld.d	$a2, $a2, %pc_lo12(C4UP_R)
	andn	$a3, $a2, $a1
	beqz	$a3, .LBB5_71
# %bb.47:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.48:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.49:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.50:                               # %.preheader55.1
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.51:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.52:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.53:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.54:                               # %.preheader55.2
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.55:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.56:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.57:
	slli.d	$a2, $a2, 17
	andn	$a2, $a2, $a1
	beqz	$a2, .LBB5_71
# %bb.58:                               # %.preheader53
	pcalau12i	$a2, %pc_hi20(C4UP_L)
	ld.d	$a2, $a2, %pc_lo12(C4UP_L)
	andn	$a3, $a2, $a1
	beqz	$a3, .LBB5_71
# %bb.59:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.60:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.61:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.62:                               # %.preheader.1
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.63:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.64:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.65:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.66:                               # %.preheader.2
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.67:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.68:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB5_71
# %bb.69:
	slli.d	$a2, $a2, 17
	andn	$a1, $a2, $a1
	beqz	$a1, .LBB5_71
# %bb.70:
	move	$a0, $zero
.LBB5_71:                               # %.loopexit
	ret
.Lfunc_end5:
	.size	find_winner_p, .Lfunc_end5-find_winner_p
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function find_winner_c
.LCPI6_0:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
.LCPI6_1:
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI6_2:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI6_3:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI6_4:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI6_5:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI6_6:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI6_7:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI6_8:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	17                              # 0x11
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI6_9:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI6_10:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI6_11:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI6_12:
	.dword	131072                          # 0x20000
	.dword	262144                          # 0x40000
.LCPI6_13:
	.dword	512                             # 0x200
	.dword	1024                            # 0x400
.LCPI6_14:
	.dword	33554432                        # 0x2000000
	.dword	67108864                        # 0x4000000
.LCPI6_15:
	.dword	2097152                         # 0x200000
	.dword	4194304                         # 0x400000
.LCPI6_16:
	.dword	8192                            # 0x2000
	.dword	16384                           # 0x4000
.LCPI6_17:
	.dword	536870912                       # 0x20000000
	.dword	1073741824                      # 0x40000000
.LCPI6_18:
	.dword	524288                          # 0x80000
	.dword	1048576                         # 0x100000
.LCPI6_19:
	.dword	2048                            # 0x800
	.dword	4096                            # 0x1000
.LCPI6_20:
	.dword	134217728                       # 0x8000000
	.dword	268435456                       # 0x10000000
.LCPI6_21:
	.dword	8388608                         # 0x800000
	.dword	16777216                        # 0x1000000
.LCPI6_22:
	.dword	32768                           # 0x8000
	.dword	65536                           # 0x10000
.LCPI6_23:
	.dword	2147483648                      # 0x80000000
	.dword	4294967296                      # 0x100000000
.LCPI6_24:
	.dword	128                             # 0x80
	.dword	256                             # 0x100
.LCPI6_25:
	.dword	8                               # 0x8
	.dword	16                              # 0x10
.LCPI6_26:
	.dword	32                              # 0x20
	.dword	64                              # 0x40
.LCPI6_27:
	.dword	2                               # 0x2
	.dword	4                               # 0x4
.LCPI6_28:
	.dword	549755813888                    # 0x8000000000
	.dword	1099511627776                   # 0x10000000000
.LCPI6_29:
	.dword	34359738368                     # 0x800000000
	.dword	68719476736                     # 0x1000000000
.LCPI6_30:
	.dword	137438953472                    # 0x2000000000
	.dword	274877906944                    # 0x4000000000
.LCPI6_31:
	.dword	8589934592                      # 0x200000000
	.dword	17179869184                     # 0x400000000
	.text
	.globl	find_winner_c
	.p2align	5
	.type	find_winner_c,@function
find_winner_c:                          # @find_winner_c
# %bb.0:
	move	$a1, $a0
	ld.b	$a0, $a0, 6
	ld.b	$a2, $a1, 13
	ld.b	$a3, $a1, 20
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a3
	ld.b	$a2, $a1, 27
	ld.b	$a3, $a1, 34
	ld.b	$a4, $a1, 41
	ld.b	$a5, $a1, 48
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.w	$a2, $a0, $a5
	ori	$a3, $zero, 42
	ori	$a0, $zero, 2
	beq	$a2, $a3, .LBB6_71
# %bb.1:                                # %.preheader63.preheader
	ld.bu	$a0, $a1, 0
	addi.d	$a0, $a0, -120
	sltui	$a0, $a0, 1
	ld.b	$a4, $a1, 11
	ld.b	$a3, $a1, 18
	ld.b	$a2, $a1, 25
	ld.w	$a5, $a1, 7
	ld.w	$a6, $a1, 14
	ld.w	$a7, $a1, 21
	ld.w	$t0, $a1, 28
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr2, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 0
	ld.w	$a5, $a1, 35
	ld.w	$a6, $a1, 42
	ld.w	$a7, $a1, 1
	ld.b	$t0, $a1, 32
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr6, $a7, 0
	pcalau12i	$a5, %pc_hi20(.LCPI6_0)
	vld	$vr7, $a5, %pc_lo12(.LCPI6_0)
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	vld	$vr8, $a5, %pc_lo12(.LCPI6_1)
	pcalau12i	$a5, %pc_hi20(.LCPI6_2)
	vld	$vr9, $a5, %pc_lo12(.LCPI6_2)
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	vld	$vr10, $a5, %pc_lo12(.LCPI6_3)
	vshuf.b	$vr7, $vr1, $vr0, $vr7
	vshuf.b	$vr8, $vr3, $vr2, $vr8
	vshuf.b	$vr2, $vr2, $vr7, $vr9
	vshuf.b	$vr2, $vr3, $vr2, $vr10
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	vld	$vr3, $a5, %pc_lo12(.LCPI6_4)
	pcalau12i	$a5, %pc_hi20(.LCPI6_5)
	vld	$vr7, $a5, %pc_lo12(.LCPI6_5)
	pcalau12i	$a5, %pc_hi20(.LCPI6_6)
	vld	$vr9, $a5, %pc_lo12(.LCPI6_6)
	pcalau12i	$a5, %pc_hi20(.LCPI6_7)
	vld	$vr10, $a5, %pc_lo12(.LCPI6_7)
	vshuf.b	$vr2, $vr4, $vr2, $vr3
	vshuf.b	$vr3, $vr4, $vr8, $vr7
	vshuf.b	$vr3, $vr5, $vr3, $vr9
	vshuf.b	$vr2, $vr5, $vr2, $vr10
	pcalau12i	$a5, %pc_hi20(.LCPI6_8)
	vld	$vr4, $a5, %pc_lo12(.LCPI6_8)
	pcalau12i	$a5, %pc_hi20(.LCPI6_9)
	vld	$vr5, $a5, %pc_lo12(.LCPI6_9)
	pcalau12i	$a5, %pc_hi20(.LCPI6_10)
	vld	$vr7, $a5, %pc_lo12(.LCPI6_10)
	pcalau12i	$a5, %pc_hi20(.LCPI6_11)
	vld	$vr8, $a5, %pc_lo12(.LCPI6_11)
	vshuf.b	$vr2, $vr6, $vr2, $vr4
	vshuf.b	$vr3, $vr6, $vr3, $vr5
	vshuf.b	$vr0, $vr0, $vr3, $vr7
	vshuf.b	$vr1, $vr1, $vr0, $vr8
	vinsgr2vr.b	$vr1, $a4, 12
	vinsgr2vr.b	$vr1, $a3, 13
	vinsgr2vr.b	$vr1, $a2, 14
	vinsgr2vr.b	$vr1, $t0, 15
	vrepli.b	$vr0, 120
	vseq.b	$vr2, $vr2, $vr0
	vilvl.b	$vr3, $vr2, $vr2
	vilvl.h	$vr4, $vr3, $vr3
	vilvl.w	$vr7, $vr4, $vr4
	vilvh.h	$vr3, $vr3, $vr3
	vilvl.w	$vr9, $vr3, $vr3
	vilvh.w	$vr11, $vr4, $vr4
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 56
	vsrai.d	$vr12, $vr3, 56
	vseq.b	$vr1, $vr1, $vr0
	vilvh.b	$vr3, $vr1, $vr1
	vilvh.h	$vr4, $vr3, $vr3
	vilvh.w	$vr5, $vr4, $vr4
	vslli.d	$vr5, $vr5, 56
	vsrai.d	$vr16, $vr5, 56
	vilvh.b	$vr2, $vr2, $vr2
	vilvh.h	$vr5, $vr2, $vr2
	vilvh.w	$vr6, $vr5, $vr5
	vslli.d	$vr6, $vr6, 56
	vsrai.d	$vr15, $vr6, 56
	vilvl.b	$vr1, $vr1, $vr1
	vilvh.h	$vr6, $vr1, $vr1
	vilvh.w	$vr8, $vr6, $vr6
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr14, $vr8, 56
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.w	$vr8, $vr3, $vr3
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr13, $vr8, 56
	vilvl.h	$vr2, $vr2, $vr2
	vilvh.w	$vr8, $vr2, $vr2
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr10, $vr8, 56
	vilvl.h	$vr1, $vr1, $vr1
	vilvh.w	$vr8, $vr1, $vr1
	vslli.d	$vr8, $vr8, 56
	vsrai.d	$vr8, $vr8, 56
	vilvl.w	$vr4, $vr4, $vr4
	vslli.d	$vr4, $vr4, 56
	vsrai.d	$vr17, $vr4, 56
	vilvl.w	$vr4, $vr5, $vr5
	vslli.d	$vr4, $vr4, 56
	vsrai.d	$vr5, $vr4, 56
	vilvl.w	$vr4, $vr6, $vr6
	vslli.d	$vr4, $vr4, 56
	vsrai.d	$vr4, $vr4, 56
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 56
	vsrai.d	$vr3, $vr3, 56
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 56
	vsrai.d	$vr2, $vr2, 56
	vilvl.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 56
	vsrai.d	$vr1, $vr1, 56
	pcalau12i	$a2, %pc_hi20(.LCPI6_12)
	vld	$vr6, $a2, %pc_lo12(.LCPI6_12)
	pcalau12i	$a2, %pc_hi20(.LCPI6_13)
	vld	$vr18, $a2, %pc_lo12(.LCPI6_13)
	pcalau12i	$a2, %pc_hi20(.LCPI6_14)
	vld	$vr19, $a2, %pc_lo12(.LCPI6_14)
	pcalau12i	$a2, %pc_hi20(.LCPI6_15)
	vld	$vr20, $a2, %pc_lo12(.LCPI6_15)
	vand.v	$vr1, $vr1, $vr6
	vand.v	$vr2, $vr2, $vr18
	vand.v	$vr3, $vr3, $vr19
	vand.v	$vr4, $vr4, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI6_16)
	vld	$vr6, $a2, %pc_lo12(.LCPI6_16)
	pcalau12i	$a2, %pc_hi20(.LCPI6_17)
	vld	$vr18, $a2, %pc_lo12(.LCPI6_17)
	pcalau12i	$a2, %pc_hi20(.LCPI6_18)
	vld	$vr19, $a2, %pc_lo12(.LCPI6_18)
	pcalau12i	$a2, %pc_hi20(.LCPI6_19)
	vld	$vr20, $a2, %pc_lo12(.LCPI6_19)
	vand.v	$vr5, $vr5, $vr6
	vand.v	$vr6, $vr17, $vr18
	vand.v	$vr8, $vr8, $vr19
	vand.v	$vr10, $vr10, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI6_20)
	vld	$vr17, $a2, %pc_lo12(.LCPI6_20)
	pcalau12i	$a2, %pc_hi20(.LCPI6_21)
	vld	$vr18, $a2, %pc_lo12(.LCPI6_21)
	pcalau12i	$a2, %pc_hi20(.LCPI6_22)
	vld	$vr19, $a2, %pc_lo12(.LCPI6_22)
	pcalau12i	$a2, %pc_hi20(.LCPI6_23)
	vld	$vr20, $a2, %pc_lo12(.LCPI6_23)
	vand.v	$vr13, $vr13, $vr17
	vand.v	$vr14, $vr14, $vr18
	vand.v	$vr15, $vr15, $vr19
	vand.v	$vr16, $vr16, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI6_24)
	vld	$vr17, $a2, %pc_lo12(.LCPI6_24)
	pcalau12i	$a2, %pc_hi20(.LCPI6_25)
	vld	$vr18, $a2, %pc_lo12(.LCPI6_25)
	pcalau12i	$a2, %pc_hi20(.LCPI6_26)
	vld	$vr19, $a2, %pc_lo12(.LCPI6_26)
	pcalau12i	$a2, %pc_hi20(.LCPI6_27)
	vld	$vr20, $a2, %pc_lo12(.LCPI6_27)
	vand.v	$vr12, $vr12, $vr17
	vand.v	$vr11, $vr11, $vr18
	vand.v	$vr9, $vr9, $vr19
	vand.v	$vr7, $vr7, $vr20
	ld.b	$a2, $a1, 46
	ld.b	$a3, $a1, 5
	ld.h	$a4, $a1, 39
	ld.b	$a5, $a1, 12
	ld.b	$a6, $a1, 19
	ld.b	$a7, $a1, 26
	vinsgr2vr.h	$vr17, $a4, 0
	ld.b	$a4, $a1, 33
	vori.b	$vr18, $vr17, 0
	vinsgr2vr.b	$vr18, $a2, 1
	vinsgr2vr.b	$vr18, $a3, 2
	vinsgr2vr.b	$vr18, $a5, 3
	vinsgr2vr.b	$vr18, $a6, 4
	vinsgr2vr.b	$vr18, $a7, 5
	vinsgr2vr.b	$vr18, $a4, 6
	vextrins.b	$vr18, $vr17, 113
	vseq.b	$vr0, $vr18, $vr0
	vilvl.b	$vr0, $vr0, $vr0
	vilvl.h	$vr17, $vr0, $vr0
	vilvl.w	$vr18, $vr17, $vr17
	vilvh.h	$vr0, $vr0, $vr0
	pcalau12i	$a2, %pc_hi20(.LCPI6_28)
	vld	$vr19, $a2, %pc_lo12(.LCPI6_28)
	vilvh.w	$vr20, $vr0, $vr0
	vslli.d	$vr20, $vr20, 56
	vsrai.d	$vr20, $vr20, 56
	vand.v	$vr19, $vr20, $vr19
	pcalau12i	$a2, %pc_hi20(.LCPI6_29)
	vld	$vr20, $a2, %pc_lo12(.LCPI6_29)
	vilvh.w	$vr17, $vr17, $vr17
	vslli.d	$vr17, $vr17, 56
	vsrai.d	$vr17, $vr17, 56
	vand.v	$vr17, $vr17, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI6_30)
	vld	$vr20, $a2, %pc_lo12(.LCPI6_30)
	vilvl.w	$vr0, $vr0, $vr0
	vslli.d	$vr0, $vr0, 56
	vsrai.d	$vr0, $vr0, 56
	vand.v	$vr0, $vr0, $vr20
	pcalau12i	$a2, %pc_hi20(.LCPI6_31)
	vld	$vr20, $a2, %pc_lo12(.LCPI6_31)
	ld.bu	$a1, $a1, 47
	vslli.d	$vr18, $vr18, 56
	vsrai.d	$vr18, $vr18, 56
	vand.v	$vr18, $vr18, $vr20
	addi.d	$a1, $a1, -120
	sltui	$a1, $a1, 1
	slli.d	$a1, $a1, 41
	vor.v	$vr7, $vr7, $vr18
	vor.v	$vr0, $vr9, $vr0
	vor.v	$vr9, $vr11, $vr17
	vor.v	$vr11, $vr12, $vr19
	vor.v	$vr12, $vr15, $vr16
	vor.v	$vr11, $vr11, $vr14
	vor.v	$vr11, $vr11, $vr12
	vor.v	$vr10, $vr10, $vr13
	vor.v	$vr8, $vr9, $vr8
	vor.v	$vr8, $vr8, $vr10
	vor.v	$vr8, $vr8, $vr11
	vor.v	$vr5, $vr5, $vr6
	vor.v	$vr0, $vr0, $vr4
	vor.v	$vr0, $vr0, $vr5
	vor.v	$vr2, $vr2, $vr3
	vor.v	$vr1, $vr7, $vr1
	vor.v	$vr1, $vr1, $vr2
	vor.v	$vr0, $vr1, $vr0
	vor.v	$vr0, $vr0, $vr8
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	pcalau12i	$a2, %pc_hi20(C4VERT)
	ld.d	$a2, $a2, %pc_lo12(C4VERT)
	vpickve2gr.d	$a3, $vr0, 0
	or	$a1, $a3, $a1
	or	$a1, $a1, $a0
	andn	$a3, $a2, $a1
	ori	$a0, $zero, 1
	beqz	$a3, .LBB6_71
# %bb.2:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.3:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.4:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.5:
	slli.d	$a3, $a2, 4
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.6:
	slli.d	$a3, $a2, 5
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.7:
	slli.d	$a3, $a2, 6
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.8:
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.9:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.10:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.11:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.12:
	slli.d	$a3, $a2, 11
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.13:
	slli.d	$a3, $a2, 12
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.14:
	slli.d	$a3, $a2, 13
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.15:
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.16:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.17:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.18:
	slli.d	$a3, $a2, 17
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.19:
	slli.d	$a3, $a2, 18
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.20:
	slli.d	$a3, $a2, 19
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.21:
	slli.d	$a2, $a2, 20
	andn	$a2, $a2, $a1
	beqz	$a2, .LBB6_71
# %bb.22:                               # %.preheader60
	pcalau12i	$a2, %pc_hi20(C4HORIZ)
	ld.d	$a2, $a2, %pc_lo12(C4HORIZ)
	andn	$a3, $a2, $a1
	beqz	$a3, .LBB6_71
# %bb.23:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.24:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.25:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.26:                               # %.preheader58.1
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.27:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.28:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.29:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.30:                               # %.preheader58.2
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.31:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.32:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.33:
	slli.d	$a3, $a2, 17
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.34:                               # %.preheader58.3
	slli.d	$a3, $a2, 21
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.35:
	slli.d	$a3, $a2, 22
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.36:
	slli.d	$a3, $a2, 23
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.37:
	slli.d	$a3, $a2, 24
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.38:                               # %.preheader58.4
	slli.d	$a3, $a2, 28
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.39:
	slli.d	$a3, $a2, 29
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.40:
	slli.d	$a3, $a2, 30
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.41:
	slli.d	$a3, $a2, 31
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.42:                               # %.preheader58.5
	slli.d	$a3, $a2, 35
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.43:
	slli.d	$a3, $a2, 36
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.44:
	slli.d	$a3, $a2, 37
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.45:
	slli.d	$a2, $a2, 38
	andn	$a2, $a2, $a1
	beqz	$a2, .LBB6_71
# %bb.46:                               # %.preheader57
	pcalau12i	$a2, %pc_hi20(C4UP_R)
	ld.d	$a2, $a2, %pc_lo12(C4UP_R)
	andn	$a3, $a2, $a1
	beqz	$a3, .LBB6_71
# %bb.47:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.48:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.49:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.50:                               # %.preheader55.1
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.51:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.52:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.53:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.54:                               # %.preheader55.2
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.55:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.56:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.57:
	slli.d	$a2, $a2, 17
	andn	$a2, $a2, $a1
	beqz	$a2, .LBB6_71
# %bb.58:                               # %.preheader53
	pcalau12i	$a2, %pc_hi20(C4UP_L)
	ld.d	$a2, $a2, %pc_lo12(C4UP_L)
	andn	$a3, $a2, $a1
	beqz	$a3, .LBB6_71
# %bb.59:
	slli.d	$a3, $a2, 1
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.60:
	slli.d	$a3, $a2, 2
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.61:
	slli.d	$a3, $a2, 3
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.62:                               # %.preheader.1
	slli.d	$a3, $a2, 7
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.63:
	slli.d	$a3, $a2, 8
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.64:
	slli.d	$a3, $a2, 9
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.65:
	slli.d	$a3, $a2, 10
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.66:                               # %.preheader.2
	slli.d	$a3, $a2, 14
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.67:
	slli.d	$a3, $a2, 15
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.68:
	slli.d	$a3, $a2, 16
	andn	$a3, $a3, $a1
	beqz	$a3, .LBB6_71
# %bb.69:
	slli.d	$a2, $a2, 17
	andn	$a1, $a2, $a1
	beqz	$a1, .LBB6_71
# %bb.70:
	move	$a0, $zero
.LBB6_71:                               # %.loopexit
	ret
.Lfunc_end6:
	.size	find_winner_c, .Lfunc_end6-find_winner_c
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function value
.LCPI7_0:
	.dword	3                               # 0x3
	.dword	2                               # 0x2
.LCPI7_1:
	.dword	5                               # 0x5
	.dword	4                               # 0x4
.LCPI7_2:
	.dword	7                               # 0x7
	.dword	6                               # 0x6
.LCPI7_3:
	.dword	9                               # 0x9
	.dword	8                               # 0x8
.LCPI7_4:
	.dword	11                              # 0xb
	.dword	10                              # 0xa
.LCPI7_5:
	.dword	13                              # 0xd
	.dword	12                              # 0xc
.LCPI7_6:
	.dword	15                              # 0xf
	.dword	14                              # 0xe
.LCPI7_7:
	.dword	17                              # 0x11
	.dword	16                              # 0x10
.LCPI7_8:
	.dword	19                              # 0x13
	.dword	18                              # 0x12
.LCPI7_9:
	.dword	21                              # 0x15
	.dword	20                              # 0x14
.LCPI7_10:
	.dword	25                              # 0x19
	.dword	24                              # 0x18
.LCPI7_11:
	.dword	27                              # 0x1b
	.dword	26                              # 0x1a
.LCPI7_12:
	.dword	31                              # 0x1f
	.dword	30                              # 0x1e
.LCPI7_13:
	.dword	33                              # 0x21
	.dword	32                              # 0x20
.LCPI7_14:
	.dword	2                               # 0x2
	.dword	1                               # 0x1
.LCPI7_15:
	.dword	6                               # 0x6
	.dword	3                               # 0x3
.LCPI7_16:
	.dword	8                               # 0x8
	.dword	7                               # 0x7
.LCPI7_17:
	.dword	12                              # 0xc
	.dword	9                               # 0x9
.LCPI7_18:
	.dword	14                              # 0xe
	.dword	13                              # 0xd
.LCPI7_19:
	.dword	4                               # 0x4
	.dword	3                               # 0x3
.LCPI7_20:
	.dword	6                               # 0x6
	.dword	5                               # 0x5
.LCPI7_21:
	.dword	10                              # 0xa
	.dword	9                               # 0x9
.LCPI7_22:
	.dword	12                              # 0xc
	.dword	11                              # 0xb
.LCPI7_23:
	.dword	16                              # 0x10
	.dword	15                              # 0xf
.LCPI7_24:
	.dword	18                              # 0x12
	.dword	17                              # 0x11
.LCPI7_25:
	.dword	20                              # 0x14
	.dword	19                              # 0x13
.LCPI7_26:
	.dword	12                              # 0xc
	.dword	10                              # 0xa
.LCPI7_27:
	.dword	24                              # 0x18
	.dword	22                              # 0x16
.LCPI7_28:
	.dword	26                              # 0x1a
	.dword	25                              # 0x19
.LCPI7_29:
	.dword	28                              # 0x1c
	.dword	27                              # 0x1b
.LCPI7_30:
	.dword	23                              # 0x17
	.dword	22                              # 0x16
.LCPI7_31:
	.dword	29                              # 0x1d
	.dword	28                              # 0x1c
.LCPI7_32:
	.dword	35                              # 0x23
	.dword	34                              # 0x22
.LCPI7_33:
	.dword	1                               # 0x1
	.dword	20                              # 0x14
.LCPI7_34:
	.dword	1                               # 0x1
	.dword	15                              # 0xf
.LCPI7_35:
	.dword	1                               # 0x1
	.dword	34                              # 0x22
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI7_36:
	.word	0x447a0000                      # float 1000
	.text
	.globl	value
	.p2align	5
	.type	value,@function
value:                                  # @value
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -432
	ori	$a2, $zero, 2176
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 2168
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(C4VERT)
	ld.d	$t1, $a0, %pc_lo12(C4VERT)
	pcalau12i	$a0, %pc_hi20(C4HORIZ)
	ld.d	$a3, $a0, %pc_lo12(C4HORIZ)
	pcalau12i	$a0, %pc_hi20(C4UP_R)
	ld.d	$a4, $a0, %pc_lo12(C4UP_R)
	pcalau12i	$a0, %pc_hi20(C4UP_L)
	pcalau12i	$a1, %pc_hi20(off)
	ld.w	$a1, $a1, %pc_lo12(off)
	ld.d	$a5, $a0, %pc_lo12(C4UP_L)
	pcalau12i	$a0, %pc_hi20(C3VERT)
	ld.d	$a6, $a0, %pc_lo12(C3VERT)
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa1, $fa0
	vldi	$vr2, -1244
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	vld	$vr15, $a0, %pc_lo12(.LCPI7_0)
	fdiv.s	$fa0, $fa1, $fa2
	ori	$a0, $zero, 2108
	add.d	$a0, $sp, $a0
	fst.s	$fa0, $a0, 0                    # 4-byte Folded Spill
	vreplgr2vr.d	$vr23, $a3
	vreplgr2vr.d	$vr9, $t1
	vsll.d	$vr1, $vr9, $vr15
	vpickve2gr.d	$a0, $vr1, 1
	ori	$a1, $zero, 2304
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_1)
	vpickve2gr.d	$a0, $vr1, 0
	ori	$a1, $zero, 2296
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	vld	$vr11, $a0, %pc_lo12(.LCPI7_2)
	vsll.d	$vr2, $vr9, $vr5
	vpickve2gr.d	$a0, $vr2, 1
	ori	$a1, $zero, 2288
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr2, 0
	ori	$a1, $zero, 2280
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vsll.d	$vr3, $vr9, $vr11
	vpickve2gr.d	$a0, $vr3, 1
	ori	$a1, $zero, 2272
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_3)
	vpickve2gr.d	$a0, $vr3, 0
	ori	$a1, $zero, 2264
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_4)
	vsll.d	$vr3, $vr9, $vr6
	vpickve2gr.d	$a0, $vr3, 1
	ori	$a1, $zero, 2256
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr3, 0
	ori	$a1, $zero, 2248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vsll.d	$vr4, $vr9, $vr0
	vori.b	$vr3, $vr0, 0
	vpickve2gr.d	$a0, $vr4, 1
	ori	$a1, $zero, 2240
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_5)
	vld	$vr12, $a0, %pc_lo12(.LCPI7_5)
	vpickve2gr.d	$a0, $vr4, 0
	ori	$a1, $zero, 2232
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_6)
	vld	$vr13, $a0, %pc_lo12(.LCPI7_6)
	vsll.d	$vr7, $vr9, $vr12
	vpickve2gr.d	$a0, $vr7, 1
	ori	$a1, $zero, 2224
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr7, 0
	ori	$a1, $zero, 2216
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vsll.d	$vr8, $vr9, $vr13
	vpickve2gr.d	$a0, $vr8, 1
	ori	$a1, $zero, 2208
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_7)
	vld	$vr4, $a0, %pc_lo12(.LCPI7_7)
	vpickve2gr.d	$a0, $vr8, 0
	ori	$a1, $zero, 2200
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_8)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_8)
	vsll.d	$vr10, $vr9, $vr4
	vpickve2gr.d	$a0, $vr10, 1
	ori	$a1, $zero, 2192
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr10, 0
	ori	$a1, $zero, 2184
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vsll.d	$vr9, $vr9, $vr8
	vpickve2gr.d	$t6, $vr9, 1
	vpickve2gr.d	$t7, $vr9, 0
	vsll.d	$vr19, $vr23, $vr15
	vpickve2gr.d	$t5, $vr19, 1
	pcalau12i	$a0, %pc_hi20(.LCPI7_9)
	vld	$vr20, $a0, %pc_lo12(.LCPI7_9)
	pcalau12i	$a0, %pc_hi20(.LCPI7_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_10)
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0                    # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI7_11)
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	vst	$vr1, $a0, 0                    # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_12)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_12)
	pcalau12i	$a0, %pc_hi20(.LCPI7_13)
	vld	$vr9, $a0, %pc_lo12(.LCPI7_13)
	pcalau12i	$a0, %pc_hi20(.LCPI7_14)
	vld	$vr14, $a0, %pc_lo12(.LCPI7_14)
	pcalau12i	$a0, %pc_hi20(.LCPI7_15)
	vld	$vr2, $a0, %pc_lo12(.LCPI7_15)
	pcalau12i	$a0, %pc_hi20(.LCPI7_16)
	vld	$vr16, $a0, %pc_lo12(.LCPI7_16)
	pcalau12i	$a0, %pc_hi20(.LCPI7_17)
	vld	$vr21, $a0, %pc_lo12(.LCPI7_17)
	pcalau12i	$a0, %pc_hi20(.LCPI7_18)
	vld	$vr22, $a0, %pc_lo12(.LCPI7_18)
	pcalau12i	$a0, %pc_hi20(.LCPI7_19)
	vld	$vr17, $a0, %pc_lo12(.LCPI7_19)
	pcalau12i	$a0, %pc_hi20(.LCPI7_20)
	vld	$vr30, $a0, %pc_lo12(.LCPI7_20)
	pcalau12i	$a0, %pc_hi20(.LCPI7_21)
	vld	$vr28, $a0, %pc_lo12(.LCPI7_21)
	pcalau12i	$a0, %pc_hi20(.LCPI7_22)
	vld	$vr27, $a0, %pc_lo12(.LCPI7_22)
	pcalau12i	$a0, %pc_hi20(.LCPI7_23)
	vld	$vr24, $a0, %pc_lo12(.LCPI7_23)
	pcalau12i	$a0, %pc_hi20(.LCPI7_24)
	vld	$vr25, $a0, %pc_lo12(.LCPI7_24)
	pcalau12i	$a0, %pc_hi20(.LCPI7_25)
	vld	$vr26, $a0, %pc_lo12(.LCPI7_25)
	pcalau12i	$a0, %pc_hi20(.LCPI7_26)
	vld	$vr18, $a0, %pc_lo12(.LCPI7_26)
	pcalau12i	$a0, %pc_hi20(.LCPI7_27)
	vld	$vr10, $a0, %pc_lo12(.LCPI7_27)
	pcalau12i	$a0, %pc_hi20(.LCPI7_28)
	vld	$vr31, $a0, %pc_lo12(.LCPI7_28)
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 2000                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr11
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1984                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr6
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1968                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr12
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1952                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr13
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1936                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr8
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1920                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr20
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1904                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr0
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1888                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr1
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1872                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1696                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr7
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1856                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1712                  # 8-byte Folded Spill
	vreplgr2vr.d	$vr19, $a4
	vsll.d	$vr23, $vr23, $vr9
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 1840                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1728                  # 8-byte Folded Spill
	vsll.d	$vr23, $vr19, $vr14
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 1824                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1744                  # 8-byte Folded Spill
	vsll.d	$vr23, $vr19, $vr2
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 1808                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1776                  # 8-byte Folded Spill
	vsll.d	$vr23, $vr19, $vr16
	vpickve2gr.d	$s7, $vr23, 1
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1792                  # 8-byte Folded Spill
	vsll.d	$vr23, $vr19, $vr21
	vpickve2gr.d	$s6, $vr23, 1
	vpickve2gr.d	$s8, $vr23, 0
	vreplgr2vr.d	$vr23, $a5
	vsll.d	$vr19, $vr19, $vr22
	vpickve2gr.d	$s5, $vr19, 1
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1760                  # 8-byte Folded Spill
	vsll.d	$vr19, $vr23, $vr15
	vpickve2gr.d	$s2, $vr19, 1
	vpickve2gr.d	$s4, $vr19, 0
	vsll.d	$vr19, $vr23, $vr11
	vpickve2gr.d	$fp, $vr19, 1
	vpickve2gr.d	$s3, $vr19, 0
	vsll.d	$vr19, $vr23, $vr6
	vpickve2gr.d	$s0, $vr19, 1
	vpickve2gr.d	$s1, $vr19, 0
	vsll.d	$vr19, $vr23, $vr12
	vpickve2gr.d	$t8, $vr19, 1
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1680                  # 8-byte Folded Spill
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	st.d	$a6, $a0, 0                     # 8-byte Folded Spill
	vreplgr2vr.d	$vr19, $a6
	vsll.d	$vr23, $vr23, $vr13
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 1664                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1536                  # 8-byte Folded Spill
	vsll.d	$vr23, $vr19, $vr14
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 1648                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1552                  # 8-byte Folded Spill
	vsll.d	$vr23, $vr19, $vr17
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 1632                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1584                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_29)
	vld	$vr29, $a0, %pc_lo12(.LCPI7_29)
	vsll.d	$vr23, $vr19, $vr30
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 1616                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1568                  # 8-byte Folded Spill
	vsll.d	$vr23, $vr19, $vr16
	vpickve2gr.d	$a0, $vr23, 1
	ori	$a1, $zero, 2160
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 1600                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_30)
	vld	$vr23, $a0, %pc_lo12(.LCPI7_30)
	pcalau12i	$a0, %pc_hi20(C3HORIZ)
	ld.d	$a1, $a0, %pc_lo12(C3HORIZ)
	pcalau12i	$a0, %pc_hi20(C3UP_L)
	ld.d	$a6, $a0, %pc_lo12(C3UP_L)
	pcalau12i	$a0, %pc_hi20(C2UP_R)
	ld.d	$a7, $a0, %pc_lo12(C2UP_R)
	vsll.d	$vr28, $vr19, $vr28
	vpickve2gr.d	$a0, $vr28, 1
	st.d	$a0, $sp, 1504                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr28, 0
	st.d	$a0, $sp, 1456                  # 8-byte Folded Spill
	vreplgr2vr.d	$vr1, $a7
	vsll.d	$vr27, $vr19, $vr27
	vpickve2gr.d	$ra, $vr27, 1
	vpickve2gr.d	$a0, $vr27, 0
	st.d	$a0, $sp, 1472                  # 8-byte Folded Spill
	vsll.d	$vr27, $vr19, $vr22
	vpickve2gr.d	$a0, $vr27, 1
	st.d	$a0, $sp, 1520                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr27, 0
	st.d	$a0, $sp, 1488                  # 8-byte Folded Spill
	vreplgr2vr.d	$vr0, $a6
	vsll.d	$vr25, $vr19, $vr25
	vsll.d	$vr26, $vr19, $vr26
	vsll.d	$vr19, $vr19, $vr24
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 1440                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 1408                  # 8-byte Folded Spill
	vreplgr2vr.d	$vr19, $a1
	vpickve2gr.d	$a0, $vr25, 1
	st.d	$a0, $sp, 1424                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr25, 0
	st.d	$a0, $sp, 1376                  # 8-byte Folded Spill
	vsll.d	$vr25, $vr19, $vr14
	vsll.d	$vr17, $vr19, $vr17
	vpickve2gr.d	$a0, $vr26, 1
	st.d	$a0, $sp, 1392                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr26, 0
	st.d	$a0, $sp, 1344                  # 8-byte Folded Spill
	vsll.d	$vr27, $vr19, $vr11
	vpickve2gr.d	$a0, $vr25, 1
	st.d	$a0, $sp, 1360                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr25, 0
	st.d	$a0, $sp, 1312                  # 8-byte Folded Spill
	vsll.d	$vr25, $vr19, $vr6
	vsll.d	$vr18, $vr19, $vr18
	vpickve2gr.d	$a0, $vr17, 1
	st.d	$a0, $sp, 1328                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr17, 0
	st.d	$a0, $sp, 1264                  # 8-byte Folded Spill
	vsll.d	$vr26, $vr0, $vr14
	vpickve2gr.d	$a0, $vr27, 1
	st.d	$a0, $sp, 1296                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr27, 0
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	vsll.d	$vr27, $vr0, $vr2
	vpickve2gr.d	$a0, $vr25, 1
	st.d	$a0, $sp, 1280                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr25, 0
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	vsll.d	$vr28, $vr0, $vr16
	vpickve2gr.d	$a0, $vr18, 1
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr18, 0
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	vsll.d	$vr30, $vr0, $vr21
	vsll.d	$vr25, $vr0, $vr22
	vsll.d	$vr18, $vr1, $vr14
	vsll.d	$vr17, $vr1, $vr2
	vsll.d	$vr16, $vr1, $vr16
	vsll.d	$vr14, $vr1, $vr21
	vsll.d	$vr0, $vr1, $vr22
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	vsll.d	$vr0, $vr19, $vr22
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_31)
	vld	$vr21, $a0, %pc_lo12(.LCPI7_31)
	vsll.d	$vr0, $vr19, $vr24
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	vsll.d	$vr0, $vr19, $vr8
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	vsll.d	$vr0, $vr19, $vr20
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_32)
	vld	$vr22, $a0, %pc_lo12(.LCPI7_32)
	pcalau12i	$a0, %pc_hi20(C3UP_R)
	ld.d	$t0, $a0, %pc_lo12(C3UP_R)
	pcalau12i	$a0, %pc_hi20(C2VERT)
	ld.d	$t2, $a0, %pc_lo12(C2VERT)
	pcalau12i	$a0, %pc_hi20(C2HORIZ)
	ld.d	$t3, $a0, %pc_lo12(C2HORIZ)
	pcalau12i	$a0, %pc_hi20(C2UP_L)
	ld.d	$t4, $a0, %pc_lo12(C2UP_L)
	vsll.d	$vr0, $vr19, $vr10
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr24, $t4
	vsll.d	$vr0, $vr19, $vr31
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr31, $t3
	vsll.d	$vr0, $vr19, $vr29
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	vsll.d	$vr0, $vr19, $vr7
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr0, $t0
	vsll.d	$vr1, $vr19, $vr9
	vpickve2gr.d	$a0, $vr1, 1
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr1, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	vsll.d	$vr1, $vr0, $vr15
	vpickve2gr.d	$a0, $vr1, 1
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr1, 0
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	vsll.d	$vr1, $vr0, $vr11
	vpickve2gr.d	$a0, $vr1, 1
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr1, 0
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	vsll.d	$vr1, $vr0, $vr6
	vpickve2gr.d	$a0, $vr1, 1
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr1, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	vsll.d	$vr1, $vr0, $vr12
	vpickve2gr.d	$a0, $vr1, 1
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr1, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr1, $t2
	vsll.d	$vr0, $vr0, $vr13
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	vsll.d	$vr0, $vr1, $vr15
	vpickve2gr.d	$a0, $vr26, 1
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr26, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	vsll.d	$vr10, $vr1, $vr5
	vpickve2gr.d	$a0, $vr27, 1
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr27, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	vsll.d	$vr19, $vr1, $vr11
	vpickve2gr.d	$a0, $vr28, 1
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr28, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	vsll.d	$vr26, $vr1, $vr6
	vpickve2gr.d	$a0, $vr30, 1
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr30, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	vori.b	$vr28, $vr3, 0
	vsll.d	$vr27, $vr1, $vr3
	vpickve2gr.d	$a0, $vr25, 1
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr25, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	vsll.d	$vr25, $vr1, $vr12
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	vsll.d	$vr0, $vr1, $vr13
	vpickve2gr.d	$a0, $vr10, 1
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr10, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	vsll.d	$vr10, $vr1, $vr4
	vsll.d	$vr1, $vr1, $vr8
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	vsll.d	$vr2, $vr31, $vr15
	vsll.d	$vr3, $vr31, $vr5
	vpickve2gr.d	$a0, $vr26, 1
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr26, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	vsll.d	$vr19, $vr31, $vr11
	vpickve2gr.d	$a0, $vr27, 1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr27, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	vsll.d	$vr5, $vr31, $vr6
	vsll.d	$vr30, $vr31, $vr28
	vpickve2gr.d	$a0, $vr25, 1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr25, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	vsll.d	$vr29, $vr31, $vr12
	vsll.d	$vr28, $vr31, $vr4
	vsll.d	$vr27, $vr31, $vr8
	vsll.d	$vr26, $vr31, $vr20
	vsll.d	$vr25, $vr31, $vr23
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	vld	$vr4, $a0, 0                    # 16-byte Folded Reload
	vsll.d	$vr23, $vr31, $vr4
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	vld	$vr4, $a0, 0                    # 16-byte Folded Reload
	vsll.d	$vr20, $vr31, $vr4
	vsll.d	$vr4, $vr31, $vr21
	vsll.d	$vr7, $vr31, $vr7
	vsll.d	$vr21, $vr31, $vr9
	vsll.d	$vr9, $vr31, $vr22
	vsll.d	$vr22, $vr31, $vr13
	vsll.d	$vr15, $vr24, $vr15
	vsll.d	$vr11, $vr24, $vr11
	vsll.d	$vr6, $vr24, $vr6
	vsll.d	$vr31, $vr24, $vr12
	pcalau12i	$a0, %pc_hi20(.LCPI7_35)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_35)
	vsll.d	$vr24, $vr24, $vr13
	ori	$a0, $zero, 2072
	add.d	$a0, $sp, $a0
	st.d	$t0, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr12, $t0, 0
	ori	$a0, $zero, 2096
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr12, $a1, 1
	vsll.d	$vr13, $vr12, $vr8
	vpickve2gr.d	$a0, $vr0, 1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr0, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_33)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_33)
	vpickve2gr.d	$a0, $vr10, 1
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr10, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ori	$a0, $zero, 2056
	add.d	$a0, $sp, $a0
	st.d	$t3, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr8, $t3, 0
	vinsgr2vr.d	$vr8, $t2, 1
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr10, $a3, 0
	vinsgr2vr.d	$vr10, $t1, 1
	vsll.d	$vr10, $vr10, $vr0
	vsll.d	$vr0, $vr8, $vr0
	vpickve2gr.d	$a0, $vr1, 1
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr1, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_34)
	vld	$vr1, $a0, %pc_lo12(.LCPI7_34)
	vpickve2gr.d	$a0, $vr2, 1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr2, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ori	$a0, $zero, 2048
	add.d	$a0, $sp, $a0
	st.d	$t4, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr2, $t4, 0
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	st.d	$a7, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr2, $a7, 1
	vpickve2gr.d	$a0, $vr3, 1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr3, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	st.d	$t2, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr3, $t2, 0
	ori	$a0, $zero, 2088
	add.d	$a0, $sp, $a0
	st.d	$a6, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr3, $a6, 1
	ori	$a0, $zero, 2120
	add.d	$a0, $sp, $a0
	st.d	$a5, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr8, $a5, 0
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	st.d	$a4, $a0, 0                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr8, $a4, 1
	vsll.d	$vr12, $vr8, $vr1
	vsll.d	$vr8, $vr3, $vr1
	vsll.d	$vr1, $vr2, $vr1
	vpickve2gr.d	$a0, $vr19, 1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr19, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr2, $t7, 0
	vinsgr2vr.d	$vr2, $t6, 1
	vst	$vr2, $sp, 2032                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr10, 1
	vpickve2gr.d	$a1, $vr10, 0
	vinsgr2vr.d	$vr2, $a1, 0
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 2016                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr5, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr5, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 2000                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr2, $t5, 1
	vst	$vr2, $sp, 2000                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr30, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr30, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1984                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1984                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr29, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr29, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1104                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1968                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1968                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr22, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr22, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1952                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1952                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr28, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr28, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1936                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1936                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr27, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr27, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1920                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1920                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr26, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr26, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1200                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1904                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1904                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr25, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr25, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1248                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1888                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1888                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr23, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1696                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1872                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1872                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr20, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr20, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1712                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1856                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1856                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr4, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr4, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1728                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1840                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1840                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr7, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr7, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1744                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1824                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1824                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr21, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr21, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1776                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1808                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1808                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr9, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr9, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1792                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr2, $s7, 1
	vst	$vr2, $sp, 1792                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr18, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vpickve2gr.d	$a0, $vr18, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	vinsgr2vr.d	$vr2, $s8, 0
	vinsgr2vr.d	$vr2, $s6, 1
	vst	$vr2, $sp, 1776                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr17, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vpickve2gr.d	$s8, $vr17, 0
	ld.d	$a0, $sp, 1760                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr2, $s5, 1
	vst	$vr2, $sp, 1760                 # 16-byte Folded Spill
	vpickve2gr.d	$a0, $vr12, 1
	vpickve2gr.d	$a1, $vr12, 0
	vinsgr2vr.d	$vr2, $a1, 0
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1744                 # 16-byte Folded Spill
	vpickve2gr.d	$s7, $vr16, 1
	vpickve2gr.d	$s6, $vr16, 0
	vinsgr2vr.d	$vr2, $s4, 0
	vinsgr2vr.d	$vr2, $s2, 1
	vst	$vr2, $sp, 1728                 # 16-byte Folded Spill
	vpickve2gr.d	$s5, $vr14, 1
	vpickve2gr.d	$s2, $vr14, 0
	vinsgr2vr.d	$vr2, $s3, 0
	vinsgr2vr.d	$vr2, $fp, 1
	vst	$vr2, $sp, 1712                 # 16-byte Folded Spill
	vld	$vr2, $sp, 352                  # 16-byte Folded Reload
	vpickve2gr.d	$s4, $vr2, 1
	vpickve2gr.d	$fp, $vr2, 0
	vinsgr2vr.d	$vr2, $s1, 0
	vinsgr2vr.d	$vr2, $s0, 1
	vst	$vr2, $sp, 1696                 # 16-byte Folded Spill
	vpickve2gr.d	$s3, $vr15, 1
	vpickve2gr.d	$s1, $vr15, 0
	ld.d	$a0, $sp, 1680                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr2, $t8, 1
	vst	$vr2, $sp, 1680                 # 16-byte Folded Spill
	vpickve2gr.d	$s0, $vr11, 1
	vpickve2gr.d	$t8, $vr11, 0
	ld.d	$a0, $sp, 1536                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1664                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1664                 # 16-byte Folded Spill
	vpickve2gr.d	$t7, $vr6, 1
	vpickve2gr.d	$t6, $vr6, 0
	ld.d	$a0, $sp, 1552                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1648                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1648                 # 16-byte Folded Spill
	vpickve2gr.d	$t5, $vr31, 1
	vpickve2gr.d	$t4, $vr31, 0
	ld.d	$a0, $sp, 1584                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1632                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1632                 # 16-byte Folded Spill
	vpickve2gr.d	$t3, $vr24, 1
	vpickve2gr.d	$t2, $vr24, 0
	ld.d	$a0, $sp, 1568                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 0
	ld.d	$a0, $sp, 1616                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a0, 1
	vst	$vr2, $sp, 1616                 # 16-byte Folded Spill
	vpickve2gr.d	$a1, $vr13, 1
	vpickve2gr.d	$a0, $vr13, 0
	ld.d	$a3, $sp, 1600                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a3, 0
	ori	$a3, $zero, 2160
	add.d	$a3, $sp, $a3
	ld.d	$a3, $a3, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a3, 1
	vst	$vr2, $sp, 1600                 # 16-byte Folded Spill
	vpickve2gr.d	$a4, $vr8, 1
	vpickve2gr.d	$a3, $vr8, 0
	ld.d	$a5, $sp, 1456                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a5, 0
	ld.d	$a5, $sp, 1504                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr2, $a5, 1
	vst	$vr2, $sp, 1584                 # 16-byte Folded Spill
	vpickve2gr.d	$a6, $vr0, 1
	vpickve2gr.d	$a5, $vr0, 0
	ld.d	$a7, $sp, 1472                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a7, 0
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1568                 # 16-byte Folded Spill
	vpickve2gr.d	$t0, $vr1, 1
	vpickve2gr.d	$a7, $vr1, 0
	ld.d	$ra, $sp, 1488                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1520                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1552                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1408                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1440                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1536                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1376                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1424                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1520                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1344                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1392                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1504                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1312                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1360                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1488                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1264                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1328                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1472                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1216                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1296                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1456                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1184                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1280                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1440                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1152                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1232                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1424                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 1056                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1072                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1408                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 992                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1040                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1392                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 976                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1024                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1376                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 960                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 1008                  # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1360                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 912                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 944                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1344                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 880                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 928                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1328                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 832                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 896                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1312                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 784                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 864                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1296                 # 16-byte Folded Spill
	ld.d	$ra, $sp, 704                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 0
	ld.d	$ra, $sp, 800                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $ra, 1
	vst	$vr0, $sp, 1280                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 1
	vst	$vr0, $sp, 1264                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1248                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1232                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1216                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1200                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1184                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1168                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1152                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1136                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1120                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1104                 # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr0, $a4, 1
	vst	$vr0, $sp, 1088                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1072                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1056                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1040                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1024                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 1008                 # 16-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 992                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 976                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 960                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 944                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $a5, 0
	vinsgr2vr.d	$vr0, $a6, 1
	vst	$vr0, $sp, 928                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 912                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 896                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 864                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 848                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 832                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 816                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 800                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 784                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 768                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 752                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 736                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 720                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 704                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 688                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 672                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 656                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 640                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $s8, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 624                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vst	$vr0, $sp, 608                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $s2, 0
	vinsgr2vr.d	$vr0, $s5, 1
	vst	$vr0, $sp, 592                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $fp, 0
	vinsgr2vr.d	$vr0, $s4, 1
	vst	$vr0, $sp, 576                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $a7, 0
	vinsgr2vr.d	$vr0, $t0, 1
	vst	$vr0, $sp, 560                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $s1, 0
	vinsgr2vr.d	$vr0, $s3, 1
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $t8, 0
	vinsgr2vr.d	$vr0, $s0, 1
	vst	$vr0, $sp, 528                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $t6, 0
	vinsgr2vr.d	$vr0, $t7, 1
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $t4, 0
	vinsgr2vr.d	$vr0, $t5, 1
	vst	$vr0, $sp, 496                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr0, $t2, 0
	vinsgr2vr.d	$vr0, $t3, 1
	vst	$vr0, $sp, 480                  # 16-byte Folded Spill
	ori	$a0, $zero, 2296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 464                  # 16-byte Folded Spill
	ori	$a0, $zero, 2280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 0
	ori	$a0, $zero, 2288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr0, $a0, 1
	vst	$vr0, $sp, 448                  # 16-byte Folded Spill
	ori	$a0, $zero, 2264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr5, $a0, 0
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr5, $a0, 1
	ori	$a0, $zero, 2248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr6, $a0, 0
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr6, $a0, 1
	ori	$a0, $zero, 2232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr7, $a0, 0
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr7, $a0, 1
	ori	$a0, $zero, 2216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr8, $a0, 0
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr8, $a0, 1
	ori	$a0, $zero, 2200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr9, $a0, 0
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr9, $a0, 1
	ori	$a0, $zero, 2184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr10, $a0, 0
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	vinsgr2vr.d	$vr10, $a0, 1
	slli.d	$t2, $t1, 1
	slli.d	$a0, $t1, 18
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 19
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ori	$a0, $zero, 2160
	add.d	$a0, $sp, $a0
	st.d	$t1, $a0, 0                     # 8-byte Folded Spill
	slli.d	$a0, $t1, 20
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	vldi	$vr11, -1228
	vldi	$vr12, -1260
	.p2align	4, , 16
.LBB7_1:                                # %.preheader164.preheader
                                        # =>This Inner Loop Header: Depth=1
	andi	$t6, $a0, 1
	ori	$a0, $zero, 2176
	add.d	$a0, $sp, $a0
	ld.d	$a4, $a0, 0                     # 8-byte Folded Reload
	masknez	$a0, $a4, $t6
	ori	$a1, $zero, 2168
	add.d	$a1, $sp, $a1
	ld.d	$a5, $a1, 0                     # 8-byte Folded Reload
	maskeqz	$a1, $a5, $t6
	or	$t7, $a1, $a0
	movgr2cf	$fcc0, $t6
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	fsel	$ft5, $fa1, $fa0, $fcc0
	ori	$a0, $zero, 2108
	add.d	$a0, $sp, $a0
	fld.s	$ft6, $a0, 0                    # 4-byte Folded Reload
	fadd.s	$ft5, $ft6, $ft5
	ori	$a0, $zero, 2160
	add.d	$a0, $sp, $a0
	ld.d	$a6, $a0, 0                     # 8-byte Folded Reload
	andn	$a0, $a6, $t7
	pcalau12i	$a1, %pc_hi20(.LCPI7_36)
	fld.s	$ft7, $a1, %pc_lo12(.LCPI7_36)
	sltui	$a0, $a0, 1
	movgr2fr.w	$ft6, $a2
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft7, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	andn	$a1, $t2, $t7
	sltui	$a1, $a1, 1
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft7, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a2, $ft6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$t0, $a1, $a0
	movgr2fr.w	$ft6, $t0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft7, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a3, $ft6
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	andn	$a0, $a0, $t7
	sltui	$t1, $a0, 1
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	andn	$a0, $a0, $t7
	sltui	$a7, $a0, 1
	ori	$a0, $zero, 2120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	andn	$a0, $a0, $t7
	sltui	$t5, $a0, 1
	masknez	$a0, $a5, $t6
	maskeqz	$a1, $a4, $t6
	or	$t3, $a1, $a0
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	andn	$a0, $a0, $t7
	and	$a1, $a6, $t3
	or	$t4, $a0, $a1
	and	$a0, $t2, $t3
	sltui	$s8, $a0, 1
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s7, $a0, 1
	ori	$a0, $zero, 2296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s6, $a0, 1
	ori	$a0, $zero, 2288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$a6, $a0, 1
	ori	$a0, $zero, 2280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$a5, $a0, 1
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$a4, $a0, 1
	ori	$a0, $zero, 2264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s5, $a0, 1
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s4, $a0, 1
	ori	$a0, $zero, 2248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s3, $a0, 1
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s2, $a0, 1
	ori	$a0, $zero, 2232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s1, $a0, 1
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$s0, $a0, 1
	ori	$a0, $zero, 2216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$fp, $a0, 1
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$t8, $a0, 1
	ori	$a0, $zero, 2200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	and	$a0, $a0, $t3
	sltui	$a2, $a0, 1
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	andn	$a0, $a0, $t7
	or	$ra, $a0, $a1
	vreplgr2vr.d	$vr14, $t7
	vld	$vr0, $sp, 464                  # 16-byte Folded Reload
	vand.v	$vr16, $vr0, $vr14
	vld	$vr1, $sp, 448                  # 16-byte Folded Reload
	vand.v	$vr17, $vr1, $vr14
	vand.v	$vr18, $vr5, $vr14
	vand.v	$vr19, $vr6, $vr14
	vand.v	$vr20, $vr7, $vr14
	vand.v	$vr21, $vr8, $vr14
	vand.v	$vr22, $vr9, $vr14
	vand.v	$vr23, $vr10, $vr14
	vld	$vr26, $sp, 2032                # 16-byte Folded Reload
	vand.v	$vr24, $vr26, $vr14
	vld	$vr27, $sp, 2016                # 16-byte Folded Reload
	vand.v	$vr25, $vr27, $vr14
	vseq.d	$vr25, $vr25, $vr27
	vseq.d	$vr24, $vr24, $vr26
	vpickev.w	$vr24, $vr24, $vr25
	vseq.d	$vr23, $vr23, $vr10
	vseq.d	$vr22, $vr22, $vr9
	vpickev.w	$vr22, $vr22, $vr23
	vpickev.h	$vr22, $vr22, $vr24
	vseq.d	$vr21, $vr21, $vr8
	vseq.d	$vr20, $vr20, $vr7
	vpickev.w	$vr20, $vr20, $vr21
	vseq.d	$vr19, $vr19, $vr6
	vseq.d	$vr18, $vr18, $vr5
	vpickev.w	$vr18, $vr18, $vr19
	vpickev.h	$vr18, $vr18, $vr20
	vseq.d	$vr17, $vr17, $vr1
	vseq.d	$vr16, $vr16, $vr0
	vpickev.w	$vr16, $vr16, $vr17
	vpickev.h	$vr16, $vr16, $vr16
	vpickve2gr.b	$a0, $vr16, 6
	andi	$a0, $a0, 1
	masknez	$a1, $t0, $a0
	maskeqz	$a0, $a3, $a0
	vpickve2gr.b	$a3, $vr16, 4
	or	$a0, $a0, $a1
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr22, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr22, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr22, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr22, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr22, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr22, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr22, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 2192
	add.d	$a3, $sp, $a3
	ld.d	$a3, $a3, 0                     # 8-byte Folded Reload
	and	$a3, $a3, $t3
	sltui	$t0, $a3, 1
	vld	$vr26, $sp, 2000                # 16-byte Folded Reload
	vand.v	$vr18, $vr26, $vr14
	vld	$vr27, $sp, 1984                # 16-byte Folded Reload
	vand.v	$vr19, $vr27, $vr14
	vld	$vr28, $sp, 1968                # 16-byte Folded Reload
	vand.v	$vr20, $vr28, $vr14
	vld	$vr29, $sp, 1952                # 16-byte Folded Reload
	vand.v	$vr21, $vr29, $vr14
	vld	$vr30, $sp, 1936                # 16-byte Folded Reload
	vand.v	$vr17, $vr30, $vr14
	vld	$vr31, $sp, 1920                # 16-byte Folded Reload
	vand.v	$vr23, $vr31, $vr14
	vld	$vr0, $sp, 1872                 # 16-byte Folded Reload
	vand.v	$vr16, $vr0, $vr14
	vld	$vr1, $sp, 1840                 # 16-byte Folded Reload
	vand.v	$vr24, $vr1, $vr14
	vld	$vr2, $sp, 1824                 # 16-byte Folded Reload
	vand.v	$vr25, $vr2, $vr14
	vseq.d	$vr25, $vr25, $vr2
	vseq.d	$vr24, $vr24, $vr1
	vpickev.w	$vr24, $vr24, $vr25
	vld	$vr1, $sp, 1856                 # 16-byte Folded Reload
	vand.v	$vr25, $vr1, $vr14
	vseq.d	$vr25, $vr25, $vr1
	vseq.d	$vr16, $vr16, $vr0
	vpickev.w	$vr16, $vr16, $vr25
	vld	$vr0, $sp, 1904                 # 16-byte Folded Reload
	vand.v	$vr25, $vr0, $vr14
	vpickev.h	$vr16, $vr16, $vr24
	vld	$vr1, $sp, 1888                 # 16-byte Folded Reload
	vand.v	$vr24, $vr1, $vr14
	vseq.d	$vr24, $vr24, $vr1
	vseq.d	$vr25, $vr25, $vr0
	vpickev.w	$vr24, $vr25, $vr24
	vseq.d	$vr23, $vr23, $vr31
	vseq.d	$vr17, $vr17, $vr30
	vpickev.w	$vr17, $vr17, $vr23
	vpickev.h	$vr17, $vr17, $vr24
	vseq.d	$vr21, $vr21, $vr29
	vseq.d	$vr20, $vr20, $vr28
	vpickev.w	$vr20, $vr20, $vr21
	vseq.d	$vr19, $vr19, $vr27
	vseq.d	$vr18, $vr18, $vr26
	vpickev.w	$vr18, $vr18, $vr19
	vpickev.h	$vr18, $vr18, $vr20
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	masknez	$a0, $a0, $t1
	maskeqz	$a1, $a1, $t1
	vpickve2gr.b	$a3, $vr22, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 2184
	add.d	$a3, $sp, $a3
	ld.d	$a3, $a3, 0                     # 8-byte Folded Reload
	and	$a3, $a3, $t3
	sltui	$t1, $a3, 1
	vld	$vr0, $sp, 1808                 # 16-byte Folded Reload
	vand.v	$vr18, $vr0, $vr14
	vld	$vr1, $sp, 1792                 # 16-byte Folded Reload
	vand.v	$vr19, $vr1, $vr14
	vld	$vr2, $sp, 1776                 # 16-byte Folded Reload
	vand.v	$vr20, $vr2, $vr14
	vld	$vr25, $sp, 1760                # 16-byte Folded Reload
	vand.v	$vr21, $vr25, $vr14
	vld	$vr26, $sp, 1744                # 16-byte Folded Reload
	vand.v	$vr17, $vr26, $vr14
	vld	$vr27, $sp, 1728                # 16-byte Folded Reload
	vand.v	$vr22, $vr27, $vr14
	vld	$vr28, $sp, 1712                # 16-byte Folded Reload
	vand.v	$vr23, $vr28, $vr14
	vld	$vr29, $sp, 1696                # 16-byte Folded Reload
	vand.v	$vr24, $vr29, $vr14
	vseq.d	$vr24, $vr24, $vr29
	vseq.d	$vr23, $vr23, $vr28
	vpickev.w	$vr23, $vr23, $vr24
	vseq.d	$vr22, $vr22, $vr27
	vseq.d	$vr17, $vr17, $vr26
	vpickev.w	$vr17, $vr17, $vr22
	vpickev.h	$vr17, $vr17, $vr23
	vseq.d	$vr21, $vr21, $vr25
	vseq.d	$vr20, $vr20, $vr2
	vpickev.w	$vr20, $vr20, $vr21
	vseq.d	$vr19, $vr19, $vr1
	vseq.d	$vr18, $vr18, $vr0
	vpickev.w	$vr18, $vr18, $vr19
	vpickev.h	$vr18, $vr18, $vr20
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	masknez	$a0, $a0, $a7
	maskeqz	$a1, $a1, $a7
	vpickve2gr.b	$a3, $vr16, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft7, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft7, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	and	$a3, $a3, $t3
	sltui	$a7, $a3, 1
	vld	$vr0, $sp, 1680                 # 16-byte Folded Reload
	vand.v	$vr16, $vr0, $vr14
	vld	$vr1, $sp, 1664                 # 16-byte Folded Reload
	vand.v	$vr18, $vr1, $vr14
	vld	$vr2, $sp, 1648                 # 16-byte Folded Reload
	vand.v	$vr19, $vr2, $vr14
	vld	$vr21, $sp, 1632                # 16-byte Folded Reload
	vand.v	$vr20, $vr21, $vr14
	vseq.d	$vr20, $vr20, $vr21
	vseq.d	$vr19, $vr19, $vr2
	vpickev.w	$vr19, $vr19, $vr20
	vseq.d	$vr18, $vr18, $vr1
	vseq.d	$vr16, $vr16, $vr0
	vpickev.w	$vr16, $vr16, $vr18
	vpickev.h	$vr16, $vr16, $vr19
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	masknez	$a0, $a0, $t5
	maskeqz	$a1, $a1, $t5
	vpickve2gr.b	$a3, $vr17, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft7, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft7, $ft5, $ft7, $ft9
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	and	$a3, $a3, $t3
	sltui	$t5, $a3, 1
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	and	$a3, $a3, $t3
	sltui	$t3, $a3, 1
	vld	$vr0, $sp, 1616                 # 16-byte Folded Reload
	vand.v	$vr17, $vr0, $vr14
	vld	$vr1, $sp, 1600                 # 16-byte Folded Reload
	vand.v	$vr18, $vr1, $vr14
	vld	$vr2, $sp, 1584                 # 16-byte Folded Reload
	vand.v	$vr19, $vr2, $vr14
	vld	$vr24, $sp, 1568                # 16-byte Folded Reload
	vand.v	$vr20, $vr24, $vr14
	vld	$vr25, $sp, 1552                # 16-byte Folded Reload
	vand.v	$vr15, $vr25, $vr14
	vld	$vr26, $sp, 1536                # 16-byte Folded Reload
	vand.v	$vr21, $vr26, $vr14
	vld	$vr27, $sp, 1520                # 16-byte Folded Reload
	vand.v	$vr22, $vr27, $vr14
	vld	$vr28, $sp, 1504                # 16-byte Folded Reload
	vand.v	$vr23, $vr28, $vr14
	vseq.d	$vr23, $vr23, $vr28
	vseq.d	$vr22, $vr22, $vr27
	vpickev.w	$vr22, $vr22, $vr23
	vseq.d	$vr21, $vr21, $vr26
	vseq.d	$vr15, $vr15, $vr25
	vpickev.w	$vr15, $vr15, $vr21
	vpickev.h	$vr15, $vr15, $vr22
	vseq.d	$vr20, $vr20, $vr24
	vseq.d	$vr19, $vr19, $vr2
	vpickev.w	$vr19, $vr19, $vr20
	vseq.d	$vr18, $vr18, $vr1
	vseq.d	$vr17, $vr17, $vr0
	vpickev.w	$vr17, $vr17, $vr18
	vpickev.h	$vr17, $vr17, $vr19
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	sltui	$a3, $t4, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	masknez	$a3, $a0, $s8
	maskeqz	$a1, $a1, $s8
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 6
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	masknez	$a3, $a0, $s7
	maskeqz	$a1, $a1, $s7
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 4
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	masknez	$a3, $a0, $s6
	maskeqz	$a1, $a1, $s6
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 2
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	masknez	$a3, $a0, $a6
	maskeqz	$a1, $a1, $a6
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 0
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 14
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 12
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $s5
	maskeqz	$a1, $a1, $s5
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 10
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $s4
	maskeqz	$a1, $a1, $s4
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 8
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $s3
	maskeqz	$a1, $a1, $s3
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 6
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $s2
	maskeqz	$a1, $a1, $s2
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 4
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $s1
	maskeqz	$a1, $a1, $s1
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 2
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $s0
	maskeqz	$a1, $a1, $s0
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 0
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $fp
	maskeqz	$a1, $a1, $fp
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 14
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $t8
	maskeqz	$a1, $a1, $t8
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 12
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 10
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $t0
	maskeqz	$a1, $a1, $t0
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 8
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $t1
	maskeqz	$a1, $a1, $t1
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 6
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $a7
	maskeqz	$a1, $a1, $a7
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 4
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $t5
	maskeqz	$a1, $a1, $t5
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 2
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a3, $a0, $t3
	maskeqz	$a1, $a1, $t3
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 0
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	ori	$a3, $zero, 2096
	add.d	$a3, $sp, $a3
	ld.d	$a3, $a3, 0                     # 8-byte Folded Reload
	andn	$a3, $a3, $t7
	sltui	$a3, $a3, 1
	vld	$vr0, $sp, 1488                 # 16-byte Folded Reload
	vand.v	$vr18, $vr0, $vr14
	vld	$vr1, $sp, 1472                 # 16-byte Folded Reload
	vand.v	$vr19, $vr1, $vr14
	vld	$vr2, $sp, 1456                 # 16-byte Folded Reload
	vand.v	$vr20, $vr2, $vr14
	vld	$vr26, $sp, 1440                # 16-byte Folded Reload
	vand.v	$vr21, $vr26, $vr14
	vld	$vr27, $sp, 1424                # 16-byte Folded Reload
	vand.v	$vr17, $vr27, $vr14
	vld	$vr28, $sp, 1408                # 16-byte Folded Reload
	vand.v	$vr22, $vr28, $vr14
	vld	$vr29, $sp, 1392                # 16-byte Folded Reload
	vand.v	$vr23, $vr29, $vr14
	vld	$vr30, $sp, 1360                # 16-byte Folded Reload
	vand.v	$vr16, $vr30, $vr14
	vld	$vr3, $sp, 1296                 # 16-byte Folded Reload
	vand.v	$vr15, $vr3, $vr14
	vld	$vr31, $sp, 1264                # 16-byte Folded Reload
	vand.v	$vr24, $vr31, $vr14
	vld	$vr4, $sp, 1248                 # 16-byte Folded Reload
	vand.v	$vr25, $vr4, $vr14
	vseq.d	$vr25, $vr25, $vr4
	vseq.d	$vr24, $vr24, $vr31
	vpickev.w	$vr24, $vr24, $vr25
	vld	$vr31, $sp, 1280                # 16-byte Folded Reload
	vand.v	$vr25, $vr31, $vr14
	vseq.d	$vr25, $vr25, $vr31
	vseq.d	$vr15, $vr15, $vr3
	vpickev.w	$vr15, $vr15, $vr25
	vld	$vr31, $sp, 1328                # 16-byte Folded Reload
	vand.v	$vr25, $vr31, $vr14
	vpickev.h	$vr15, $vr15, $vr24
	vld	$vr3, $sp, 1312                 # 16-byte Folded Reload
	vand.v	$vr24, $vr3, $vr14
	vseq.d	$vr24, $vr24, $vr3
	vseq.d	$vr25, $vr25, $vr31
	vpickev.w	$vr24, $vr25, $vr24
	vld	$vr31, $sp, 1344                # 16-byte Folded Reload
	vand.v	$vr25, $vr31, $vr14
	vseq.d	$vr25, $vr25, $vr31
	vseq.d	$vr16, $vr16, $vr30
	vpickev.w	$vr16, $vr16, $vr25
	vld	$vr30, $sp, 1376                # 16-byte Folded Reload
	vand.v	$vr25, $vr30, $vr14
	vpickev.h	$vr16, $vr16, $vr24
	vseq.d	$vr24, $vr25, $vr30
	vseq.d	$vr23, $vr23, $vr29
	vpickev.w	$vr23, $vr23, $vr24
	vseq.d	$vr22, $vr22, $vr28
	vseq.d	$vr17, $vr17, $vr27
	vpickev.w	$vr17, $vr17, $vr22
	vpickev.h	$vr17, $vr17, $vr23
	vseq.d	$vr21, $vr21, $vr26
	vseq.d	$vr20, $vr20, $vr2
	vpickev.w	$vr20, $vr20, $vr21
	vseq.d	$vr19, $vr19, $vr1
	vseq.d	$vr18, $vr18, $vr0
	vpickev.w	$vr18, $vr18, $vr19
	vpickev.h	$vr18, $vr18, $vr20
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft11, $a0
	ffint.s.w	$ft11, $ft11
	fmadd.s	$ft11, $ft5, $ft3, $ft11
	ftintrz.w.s	$ft11, $ft11
	movfr2gr.s	$a1, $ft11
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr18, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft3, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr17, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 2072
	add.d	$a3, $sp, $a3
	ld.d	$a3, $a3, 0                     # 8-byte Folded Reload
	andn	$a3, $a3, $t7
	sltui	$a3, $a3, 1
	vld	$vr0, $sp, 1232                 # 16-byte Folded Reload
	vand.v	$vr16, $vr0, $vr14
	vld	$vr1, $sp, 1216                 # 16-byte Folded Reload
	vand.v	$vr17, $vr1, $vr14
	vld	$vr2, $sp, 1200                 # 16-byte Folded Reload
	vand.v	$vr18, $vr2, $vr14
	vld	$vr3, $sp, 1184                 # 16-byte Folded Reload
	vand.v	$vr19, $vr3, $vr14
	vseq.d	$vr19, $vr19, $vr3
	vseq.d	$vr18, $vr18, $vr2
	vpickev.w	$vr18, $vr18, $vr19
	vseq.d	$vr17, $vr17, $vr1
	vseq.d	$vr16, $vr16, $vr0
	vpickev.w	$vr16, $vr16, $vr17
	vpickev.h	$vr16, $vr16, $vr18
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft3, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	ori	$a3, $zero, 2088
	add.d	$a3, $sp, $a3
	ld.d	$a3, $a3, 0                     # 8-byte Folded Reload
	andn	$a3, $a3, $t7
	sltui	$a3, $a3, 1
	vld	$vr0, $sp, 1168                 # 16-byte Folded Reload
	vand.v	$vr16, $vr0, $vr14
	vld	$vr1, $sp, 1152                 # 16-byte Folded Reload
	vand.v	$vr17, $vr1, $vr14
	vld	$vr2, $sp, 1136                 # 16-byte Folded Reload
	vand.v	$vr18, $vr2, $vr14
	vld	$vr3, $sp, 1120                 # 16-byte Folded Reload
	vand.v	$vr19, $vr3, $vr14
	vld	$vr4, $sp, 1104                 # 16-byte Folded Reload
	vand.v	$vr15, $vr4, $vr14
	vld	$vr23, $sp, 1088                # 16-byte Folded Reload
	vand.v	$vr20, $vr23, $vr14
	vld	$vr24, $sp, 1072                # 16-byte Folded Reload
	vand.v	$vr21, $vr24, $vr14
	vld	$vr25, $sp, 1056                # 16-byte Folded Reload
	vand.v	$vr22, $vr25, $vr14
	vseq.d	$vr22, $vr22, $vr25
	vseq.d	$vr21, $vr21, $vr24
	vpickev.w	$vr21, $vr21, $vr22
	vseq.d	$vr20, $vr20, $vr23
	vseq.d	$vr15, $vr15, $vr4
	vpickev.w	$vr15, $vr15, $vr20
	vpickev.h	$vr15, $vr15, $vr21
	vseq.d	$vr19, $vr19, $vr3
	vseq.d	$vr18, $vr18, $vr2
	vpickev.w	$vr18, $vr18, $vr19
	vseq.d	$vr17, $vr17, $vr1
	vseq.d	$vr16, $vr16, $vr0
	vpickev.w	$vr16, $vr16, $vr17
	vpickev.h	$vr16, $vr16, $vr18
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft3, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr16, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft3, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	sltui	$a3, $ra, 1
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s8
	masknez	$a3, $a0, $s8
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 8
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s7
	masknez	$a3, $a0, $s7
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 6
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s6
	masknez	$a3, $a0, $s6
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 4
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $a6
	masknez	$a3, $a0, $a6
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 2
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $a5
	masknez	$a3, $a0, $a5
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 0
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	vld	$vr0, $sp, 1040                 # 16-byte Folded Reload
	vand.v	$vr15, $vr0, $vr14
	vld	$vr1, $sp, 1024                 # 16-byte Folded Reload
	vand.v	$vr16, $vr1, $vr14
	vld	$vr2, $sp, 1008                 # 16-byte Folded Reload
	vand.v	$vr17, $vr2, $vr14
	vld	$vr3, $sp, 992                  # 16-byte Folded Reload
	vand.v	$vr18, $vr3, $vr14
	vseq.d	$vr18, $vr18, $vr3
	vseq.d	$vr17, $vr17, $vr2
	vpickev.w	$vr17, $vr17, $vr18
	vseq.d	$vr16, $vr16, $vr1
	vseq.d	$vr15, $vr15, $vr0
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr15, $vr15, $vr17
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $a4
	masknez	$a3, $a0, $a4
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 14
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s5
	masknez	$a3, $a0, $s5
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 12
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s4
	masknez	$a3, $a0, $s4
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 10
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s3
	masknez	$a3, $a0, $s3
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 8
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s2
	masknez	$a3, $a0, $s2
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 6
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s1
	masknez	$a3, $a0, $s1
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 4
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $s0
	masknez	$a3, $a0, $s0
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 2
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	maskeqz	$a1, $a1, $fp
	masknez	$a3, $a0, $fp
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr15, 0
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	vld	$vr0, $sp, 976                  # 16-byte Folded Reload
	vand.v	$vr15, $vr0, $vr14
	vld	$vr1, $sp, 960                  # 16-byte Folded Reload
	vand.v	$vr16, $vr1, $vr14
	vld	$vr2, $sp, 944                  # 16-byte Folded Reload
	vand.v	$vr17, $vr2, $vr14
	vld	$vr3, $sp, 928                  # 16-byte Folded Reload
	vand.v	$vr18, $vr3, $vr14
	vseq.d	$vr18, $vr18, $vr3
	vseq.d	$vr17, $vr17, $vr2
	vpickev.w	$vr17, $vr17, $vr18
	vseq.d	$vr16, $vr16, $vr1
	vseq.d	$vr15, $vr15, $vr0
	vpickev.w	$vr15, $vr15, $vr16
	vpickev.h	$vr23, $vr15, $vr17
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft4, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	maskeqz	$a1, $a1, $t8
	masknez	$a3, $a0, $t8
	or	$a1, $a1, $a3
	vpickve2gr.b	$a3, $vr23, 14
	andi	$a3, $a3, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft4, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a0, $a2
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr23, 12
	andi	$a2, $a2, 1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft4, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	maskeqz	$a1, $a1, $t0
	masknez	$a2, $a0, $t0
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr23, 10
	andi	$a2, $a2, 1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft7, $a0
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft4, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a1, $ft7
	maskeqz	$a1, $a1, $t1
	masknez	$a2, $a0, $t1
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr23, 8
	andi	$a2, $a2, 1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a1, $a1, $a0
	movgr2fr.w	$ft7, $a1
	ffint.s.w	$ft7, $ft7
	fmadd.s	$ft7, $ft5, $ft4, $ft7
	ftintrz.w.s	$ft7, $ft7
	movfr2gr.s	$a0, $ft7
	maskeqz	$a0, $a0, $a7
	masknez	$a2, $a1, $a7
	or	$a0, $a0, $a2
	vpickve2gr.b	$a2, $vr23, 6
	andi	$a2, $a2, 1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	vld	$vr0, $sp, 848                  # 16-byte Folded Reload
	vand.v	$vr22, $vr0, $vr14
	vld	$vr1, $sp, 784                  # 16-byte Folded Reload
	vand.v	$vr21, $vr1, $vr14
	vld	$vr2, $sp, 720                  # 16-byte Folded Reload
	vand.v	$vr20, $vr2, $vr14
	vld	$vr3, $sp, 656                  # 16-byte Folded Reload
	vand.v	$vr17, $vr3, $vr14
	vld	$vr4, $sp, 624                  # 16-byte Folded Reload
	vand.v	$vr24, $vr4, $vr14
	vld	$vr26, $sp, 592                 # 16-byte Folded Reload
	vand.v	$vr19, $vr26, $vr14
	vld	$vr27, $sp, 560                 # 16-byte Folded Reload
	vand.v	$vr18, $vr27, $vr14
	vld	$vr28, $sp, 528                 # 16-byte Folded Reload
	vand.v	$vr16, $vr28, $vr14
	vld	$vr29, $sp, 496                 # 16-byte Folded Reload
	vand.v	$vr15, $vr29, $vr14
	vld	$vr30, $sp, 480                 # 16-byte Folded Reload
	vand.v	$vr25, $vr30, $vr14
	vseq.d	$vr25, $vr25, $vr30
	vseq.d	$vr15, $vr15, $vr29
	vpickev.w	$vr15, $vr15, $vr25
	vld	$vr29, $sp, 512                 # 16-byte Folded Reload
	vand.v	$vr25, $vr29, $vr14
	vseq.d	$vr25, $vr25, $vr29
	vseq.d	$vr16, $vr16, $vr28
	vpickev.w	$vr16, $vr16, $vr25
	vld	$vr28, $sp, 544                 # 16-byte Folded Reload
	vand.v	$vr25, $vr28, $vr14
	vseq.d	$vr25, $vr25, $vr28
	vseq.d	$vr18, $vr18, $vr27
	vpickev.w	$vr18, $vr18, $vr25
	vld	$vr27, $sp, 576                 # 16-byte Folded Reload
	vand.v	$vr25, $vr27, $vr14
	vseq.d	$vr25, $vr25, $vr27
	vseq.d	$vr19, $vr19, $vr26
	vpickev.w	$vr19, $vr19, $vr25
	vld	$vr26, $sp, 608                 # 16-byte Folded Reload
	vand.v	$vr25, $vr26, $vr14
	vseq.d	$vr25, $vr25, $vr26
	vseq.d	$vr24, $vr24, $vr4
	vpickev.w	$vr24, $vr24, $vr25
	vld	$vr4, $sp, 640                  # 16-byte Folded Reload
	vand.v	$vr25, $vr4, $vr14
	vseq.d	$vr25, $vr25, $vr4
	vseq.d	$vr17, $vr17, $vr3
	vpickev.w	$vr17, $vr17, $vr25
	vld	$vr3, $sp, 688                  # 16-byte Folded Reload
	vand.v	$vr25, $vr3, $vr14
	vpickev.h	$vr17, $vr17, $vr24
	vld	$vr4, $sp, 672                  # 16-byte Folded Reload
	vand.v	$vr24, $vr4, $vr14
	vseq.d	$vr24, $vr24, $vr4
	vseq.d	$vr25, $vr25, $vr3
	vpickev.w	$vr24, $vr25, $vr24
	vld	$vr3, $sp, 704                  # 16-byte Folded Reload
	vand.v	$vr25, $vr3, $vr14
	vseq.d	$vr25, $vr25, $vr3
	vseq.d	$vr20, $vr20, $vr2
	vpickev.w	$vr20, $vr20, $vr25
	vld	$vr2, $sp, 752                  # 16-byte Folded Reload
	vand.v	$vr25, $vr2, $vr14
	vpickev.h	$vr20, $vr20, $vr24
	vld	$vr3, $sp, 736                  # 16-byte Folded Reload
	vand.v	$vr24, $vr3, $vr14
	vseq.d	$vr24, $vr24, $vr3
	vseq.d	$vr25, $vr25, $vr2
	vpickev.w	$vr24, $vr25, $vr24
	vld	$vr2, $sp, 768                  # 16-byte Folded Reload
	vand.v	$vr25, $vr2, $vr14
	vseq.d	$vr25, $vr25, $vr2
	vseq.d	$vr21, $vr21, $vr1
	vpickev.w	$vr21, $vr21, $vr25
	vld	$vr1, $sp, 816                  # 16-byte Folded Reload
	vand.v	$vr25, $vr1, $vr14
	vpickev.h	$vr21, $vr21, $vr24
	vld	$vr2, $sp, 800                  # 16-byte Folded Reload
	vand.v	$vr24, $vr2, $vr14
	vseq.d	$vr24, $vr24, $vr2
	vseq.d	$vr25, $vr25, $vr1
	vpickev.w	$vr24, $vr25, $vr24
	vld	$vr1, $sp, 832                  # 16-byte Folded Reload
	vand.v	$vr25, $vr1, $vr14
	vseq.d	$vr25, $vr25, $vr1
	vseq.d	$vr22, $vr22, $vr0
	vpickev.w	$vr22, $vr22, $vr25
	vld	$vr0, $sp, 880                  # 16-byte Folded Reload
	vand.v	$vr25, $vr0, $vr14
	vpickev.h	$vr22, $vr22, $vr24
	vld	$vr1, $sp, 864                  # 16-byte Folded Reload
	vand.v	$vr24, $vr1, $vr14
	vseq.d	$vr24, $vr24, $vr1
	vseq.d	$vr25, $vr25, $vr0
	vpickev.w	$vr24, $vr25, $vr24
	vld	$vr0, $sp, 912                  # 16-byte Folded Reload
	vand.v	$vr25, $vr0, $vr14
	vld	$vr1, $sp, 896                  # 16-byte Folded Reload
	vand.v	$vr14, $vr1, $vr14
	vseq.d	$vr14, $vr14, $vr1
	vseq.d	$vr25, $vr25, $vr0
	vpickev.w	$vr14, $vr25, $vr14
	or	$a0, $a0, $a1
	movgr2fr.w	$fs1, $a0
	ffint.s.w	$fs1, $fs1
	fmadd.s	$fs1, $ft5, $ft4, $fs1
	ftintrz.w.s	$fs1, $fs1
	movfr2gr.s	$a1, $fs1
	maskeqz	$a1, $a1, $t5
	masknez	$a2, $a0, $t5
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr23, 4
	andi	$a2, $a2, 1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	vpickev.h	$vr14, $vr14, $vr24
	or	$a0, $a1, $a0
	movgr2fr.w	$fs0, $a0
	ffint.s.w	$fs0, $fs0
	fmadd.s	$fs0, $ft5, $ft4, $fs0
	ftintrz.w.s	$fs0, $fs0
	movfr2gr.s	$a1, $fs0
	maskeqz	$a1, $a1, $t3
	masknez	$a2, $a0, $t3
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr23, 2
	andi	$a2, $a2, 1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$fs0, $a0
	ffint.s.w	$fs0, $fs0
	fmadd.s	$fs0, $ft5, $ft4, $fs0
	ftintrz.w.s	$fs0, $fs0
	movfr2gr.s	$a1, $fs0
	ori	$a2, $zero, 2056
	add.d	$a2, $sp, $a2
	ld.d	$a2, $a2, 0                     # 8-byte Folded Reload
	andn	$a2, $a2, $t7
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr23, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft15, $a0
	ffint.s.w	$ft15, $ft15
	fmadd.s	$ft15, $ft5, $ft4, $ft15
	ftintrz.w.s	$ft15, $ft15
	movfr2gr.s	$a1, $ft15
	vpickve2gr.b	$a2, $vr14, 2
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr22, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr22, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr22, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr22, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr22, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr22, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	vpickve2gr.b	$a2, $vr22, 2
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr22, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr21, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr21, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr21, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr21, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr21, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr21, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	vpickve2gr.b	$a2, $vr21, 2
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr21, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr20, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr20, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr20, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr20, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr20, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr20, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	vpickve2gr.b	$a2, $vr20, 2
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr20, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr17, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	vpickve2gr.b	$a2, $vr17, 12
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	ori	$a2, $zero, 2080
	add.d	$a2, $sp, $a2
	ld.d	$a2, $a2, 0                     # 8-byte Folded Reload
	andn	$a2, $a2, $t7
	sltui	$a2, $a2, 1
	vpickev.h	$vr14, $vr19, $vr18
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft4, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr17, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft4, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr17, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft4, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr17, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft4, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr17, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft4, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft10, $a0
	ffint.s.w	$ft10, $ft10
	fmadd.s	$ft10, $ft5, $ft4, $ft10
	ftintrz.w.s	$ft10, $ft10
	movfr2gr.s	$a1, $ft10
	vpickve2gr.b	$a2, $vr17, 2
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr17, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft4, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft4, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft4, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft4, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft4, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft9, $a0
	ffint.s.w	$ft9, $ft9
	fmadd.s	$ft9, $ft5, $ft4, $ft9
	ftintrz.w.s	$ft9, $ft9
	movfr2gr.s	$a1, $ft9
	vpickve2gr.b	$a2, $vr14, 6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	ori	$a2, $zero, 2048
	add.d	$a2, $sp, $a2
	ld.d	$a2, $a2, 0                     # 8-byte Folded Reload
	andn	$a2, $a2, $t7
	sltui	$a2, $a2, 1
	vpickev.h	$vr15, $vr16, $vr15
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft8, $a0
	ffint.s.w	$ft8, $ft8
	fmadd.s	$ft8, $ft5, $ft4, $ft8
	ftintrz.w.s	$ft8, $ft8
	movfr2gr.s	$a1, $ft8
	vpickve2gr.b	$a2, $vr14, 2
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr14, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr15, 14
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr15, 12
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr15, 10
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr15, 8
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr15, 6
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr15, 4
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft6, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft6, $ft6
	movfr2gr.s	$a1, $ft6
	vpickve2gr.b	$a2, $vr15, 2
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr15, 0
	or	$a0, $a1, $a0
	movgr2fr.w	$ft6, $a0
	ffint.s.w	$ft6, $ft6
	fmadd.s	$ft5, $ft5, $ft4, $ft6
	ftintrz.w.s	$ft5, $ft5
	movfr2gr.s	$a1, $ft5
	andi	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a2, $a1, $a0
	move	$a0, $zero
	bnez	$t6, .LBB7_1
# %bb.2:
	move	$a0, $a2
	addi.d	$sp, $sp, 432
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end7:
	.size	value, .Lfunc_end7-value
                                        # -- End function
	.globl	think                           # -- Begin function think
	.p2align	5
	.type	think,@function
think:                                  # @think
# %bb.0:                                # %.preheader54
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	ld.bu	$a3, $a0, 0
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.bu	$a4, $a0, 7
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $a3, -111
	sltui	$a1, $a1, 1
	addi.d	$a2, $a4, -111
	ld.bu	$a3, $a0, 14
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 1
	or	$a1, $a2, $a1
	addi.d	$a2, $a3, -111
	ld.bu	$a3, $a0, 21
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	or	$a1, $a1, $a2
	addi.d	$a2, $a3, -111
	ld.bu	$a3, $a0, 28
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 3
	or	$a1, $a1, $a2
	addi.d	$a2, $a3, -111
	ld.bu	$a3, $a0, 35
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 4
	or	$a1, $a1, $a2
	addi.d	$a2, $a3, -111
	ld.bu	$a3, $a0, 42
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 5
	or	$a1, $a1, $a2
	addi.d	$a2, $a3, -111
	ld.bu	$a3, $a0, 1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a1, $a1, $a2
	addi.d	$a2, $a3, -111
	ld.bu	$a3, $a0, 8
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	addi.d	$a2, $a3, -111
	ld.bu	$a3, $a0, 15
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 8
	or	$a1, $a1, $a2
	addi.d	$a2, $a3, -111
	ld.bu	$t5, $a0, 22
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 9
	or	$a1, $a1, $a2
	addi.d	$a2, $t5, -111
	ld.bu	$t6, $a0, 29
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 10
	or	$a1, $a1, $a2
	addi.d	$a2, $t6, -111
	ld.bu	$t7, $a0, 36
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 11
	or	$a1, $a1, $a2
	addi.d	$a2, $t7, -111
	ld.bu	$t8, $a0, 43
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 12
	or	$a1, $a1, $a2
	addi.d	$a2, $t8, -111
	ld.bu	$fp, $a0, 2
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 13
	or	$a1, $a1, $a2
	addi.d	$a2, $fp, -111
	ld.bu	$s0, $a0, 9
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 14
	or	$a1, $a1, $a2
	addi.d	$a2, $s0, -111
	ld.bu	$s1, $a0, 16
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 15
	or	$a1, $a1, $a2
	addi.d	$a2, $s1, -111
	ld.bu	$s2, $a0, 23
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 16
	or	$a1, $a1, $a2
	addi.d	$a2, $s2, -111
	ld.bu	$s3, $a0, 30
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 17
	or	$a1, $a1, $a2
	addi.d	$a2, $s3, -111
	ld.bu	$s4, $a0, 37
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 18
	or	$a1, $a1, $a2
	addi.d	$a2, $s4, -111
	ld.bu	$s5, $a0, 44
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 19
	or	$a1, $a1, $a2
	addi.d	$a2, $s5, -111
	ld.bu	$s6, $a0, 3
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 20
	or	$a1, $a1, $a2
	addi.d	$a2, $s6, -111
	ld.bu	$s7, $a0, 10
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 21
	or	$a1, $a1, $a2
	addi.d	$a2, $s7, -111
	ld.bu	$s8, $a0, 17
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 22
	or	$a1, $a1, $a2
	addi.d	$a2, $s8, -111
	ld.bu	$ra, $a0, 24
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 23
	or	$a1, $a1, $a2
	addi.d	$a2, $ra, -111
	ld.bu	$t4, $a0, 31
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	addi.d	$a2, $t4, -111
	ld.bu	$t3, $a0, 38
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 25
	or	$a1, $a1, $a2
	addi.d	$a2, $t3, -111
	ld.bu	$t2, $a0, 45
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 26
	or	$a1, $a1, $a2
	addi.d	$a2, $t2, -111
	ld.bu	$a7, $a0, 4
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 27
	or	$a1, $a1, $a2
	addi.d	$a2, $a7, -111
	ld.bu	$a6, $a0, 11
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 28
	or	$a1, $a1, $a2
	addi.d	$a2, $a6, -111
	ld.bu	$a5, $a0, 18
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 29
	or	$a1, $a1, $a2
	addi.d	$a2, $a5, -111
	ld.bu	$t1, $a0, 25
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 30
	or	$a1, $a1, $a2
	addi.d	$a2, $t1, -111
	ld.bu	$t0, $a0, 32
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 31
	or	$a2, $a1, $a2
	addi.d	$a1, $t0, -111
	ld.bu	$a4, $a0, 39
	sltui	$a1, $a1, 1
	slli.d	$a1, $a1, 32
	or	$a2, $a2, $a1
	addi.d	$a1, $a4, -111
	ld.bu	$a3, $a0, 46
	sltui	$a1, $a1, 1
	slli.d	$a1, $a1, 33
	or	$a1, $a2, $a1
	addi.d	$a2, $a3, -111
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 34
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -120
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 1
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 3
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 4
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 5
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 8
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 9
	or	$a1, $a1, $a2
	addi.d	$a2, $t5, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 10
	or	$a1, $a1, $a2
	addi.d	$a2, $t6, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 11
	or	$a1, $a1, $a2
	addi.d	$a2, $t7, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 12
	or	$a1, $a1, $a2
	addi.d	$a2, $t8, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 13
	or	$a1, $a1, $a2
	addi.d	$a2, $fp, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 14
	or	$a1, $a1, $a2
	addi.d	$a2, $s0, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 15
	or	$a1, $a1, $a2
	addi.d	$a2, $s1, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 16
	or	$a1, $a1, $a2
	addi.d	$a2, $s2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 17
	or	$a1, $a1, $a2
	addi.d	$a2, $s3, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 18
	or	$a1, $a1, $a2
	addi.d	$a2, $s4, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 19
	or	$a1, $a1, $a2
	addi.d	$a2, $s5, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 20
	or	$a1, $a1, $a2
	addi.d	$a2, $s6, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 21
	or	$a1, $a1, $a2
	addi.d	$a2, $s7, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 22
	or	$a1, $a1, $a2
	addi.d	$a2, $s8, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 23
	or	$a1, $a1, $a2
	addi.d	$a2, $ra, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	addi.d	$a2, $t4, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 25
	or	$a1, $a1, $a2
	addi.d	$a2, $t3, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 26
	or	$a1, $a1, $a2
	addi.d	$a2, $t2, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 27
	or	$a1, $a1, $a2
	addi.d	$a2, $a7, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 28
	or	$a1, $a1, $a2
	ld.bu	$a7, $a0, 5
	addi.d	$a2, $a6, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 29
	or	$a1, $a1, $a2
	ld.bu	$a6, $a0, 12
	addi.d	$a2, $a5, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 30
	or	$a1, $a1, $a2
	ld.bu	$a5, $a0, 19
	addi.d	$a2, $t1, -120
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 31
	or	$a1, $a1, $a2
	ld.bu	$a2, $a0, 26
	addi.d	$t0, $t0, -120
	sltui	$t0, $t0, 1
	slli.d	$t0, $t0, 32
	or	$a1, $a1, $t0
	ld.bu	$t0, $a0, 33
	addi.d	$a4, $a4, -120
	sltui	$a4, $a4, 1
	slli.d	$a4, $a4, 33
	or	$a1, $a1, $a4
	ld.bu	$a4, $a0, 40
	ld.bu	$a0, $a0, 47
	addi.d	$a3, $a3, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 34
	or	$a1, $a1, $a3
	addi.d	$a3, $a7, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 35
	or	$a1, $a1, $a3
	addi.d	$a3, $a6, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 36
	or	$a1, $a1, $a3
	addi.d	$a3, $a5, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 37
	or	$a1, $a1, $a3
	addi.d	$a3, $a2, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 38
	or	$a1, $a1, $a3
	addi.d	$a3, $t0, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 39
	or	$a1, $a1, $a3
	addi.d	$a3, $a4, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 40
	or	$a1, $a1, $a3
	addi.d	$a3, $a0, -120
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 41
	or	$fp, $a1, $a3
	addi.d	$a1, $a7, -111
	sltui	$a1, $a1, 1
	slli.d	$a1, $a1, 35
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	or	$a1, $a3, $a1
	addi.d	$a3, $a6, -111
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 36
	or	$a1, $a1, $a3
	addi.d	$a3, $a5, -111
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 37
	or	$a1, $a1, $a3
	addi.d	$a2, $a2, -111
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 38
	or	$a1, $a1, $a2
	addi.d	$a2, $t0, -111
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 39
	or	$a1, $a1, $a2
	addi.d	$a2, $a4, -111
	sltui	$a2, $a2, 1
	slli.d	$a2, $a2, 40
	or	$a1, $a1, $a2
	addi.d	$a0, $a0, -111
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 41
	ori	$a2, $zero, 2
	or	$s0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB8_5
# %bb.1:                                # %.preheader54
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB8_8
# %bb.2:
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_11
# %bb.3:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB8_26
# %bb.4:
	lu12i.w	$a0, -25
	ori	$a4, $a0, 2400
	lu12i.w	$a0, 24
	ori	$a5, $a0, 1696
	ori	$a0, $zero, 1
	addi.d	$a3, $sp, 116
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(minimax_comp_ab)
	jirl	$ra, $ra, 0
	b	.LBB8_26
.LBB8_5:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_23
# %bb.6:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB8_26
# %bb.7:
	lu12i.w	$a0, 24
	ori	$a4, $a0, 1696
	ori	$a0, $zero, 1
	addi.d	$a3, $sp, 116
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	b	.LBB8_26
.LBB8_8:
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_24
# %bb.9:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB8_26
# %bb.10:
	ori	$a0, $zero, 1
	addi.d	$a3, $sp, 116
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	b	.LBB8_26
.LBB8_11:
	pcalau12i	$a0, %pc_hi20(DEPTH)
	ld.w	$a0, $a0, %pc_lo12(DEPTH)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB8_25
# %bb.12:                               # %.preheader.i
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	or	$s6, $fp, $s0
	lu12i.w	$a0, 24
	ori	$s1, $a0, 1696
	ori	$s7, $zero, 1
	lu12i.w	$a0, -25
	ori	$s2, $a0, 2400
	ori	$s8, $zero, 5
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	sll.d	$a0, $s7, $s4
	and	$a1, $a0, $s6
	beqz	$a1, .LBB8_19
# %bb.14:                               #   in Loop: Header=BB8_13 Depth=1
	ori	$a0, $zero, 128
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s6
	beqz	$a1, .LBB8_19
# %bb.15:                               #   in Loop: Header=BB8_13 Depth=1
	lu12i.w	$a0, 4
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s6
	beqz	$a1, .LBB8_19
# %bb.16:                               #   in Loop: Header=BB8_13 Depth=1
	lu12i.w	$a0, 512
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s6
	beqz	$a1, .LBB8_19
# %bb.17:                               #   in Loop: Header=BB8_13 Depth=1
	lu12i.w	$a0, 65536
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s6
	beqz	$a1, .LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_13 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s6
	bnez	$a1, .LBB8_20
	.p2align	4, , 16
.LBB8_19:                               #   in Loop: Header=BB8_13 Depth=1
	or	$a1, $a0, $s0
	ori	$a0, $zero, 2
	addi.d	$a3, $sp, 116
	move	$a2, $fp
	move	$a4, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(minimax_comp_ab)
	jirl	$ra, $ra, 0
	slt	$a1, $s1, $a0
	slt	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$s1, $a0, $a2
	masknez	$a0, $s3, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
.LBB8_20:                               # %bit_place_piece.exit.i
                                        #   in Loop: Header=BB8_13 Depth=1
	bltu	$s8, $s4, .LBB8_22
# %bb.21:                               # %bit_place_piece.exit.i
                                        #   in Loop: Header=BB8_13 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 1
	blt	$s2, $s1, .LBB8_13
.LBB8_22:                               # %._crit_edge.i
	st.w	$s5, $sp, 116
	b	.LBB8_26
.LBB8_23:
	lu12i.w	$a0, -25
	ori	$a4, $a0, 2400
	ori	$a0, $zero, 1
	addi.d	$a3, $sp, 116
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(minimax_player_ab2)
	jirl	$ra, $ra, 0
	b	.LBB8_26
.LBB8_24:
	ori	$a0, $zero, 1
	addi.d	$a3, $sp, 116
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(minimax_player)
	jirl	$ra, $ra, 0
	b	.LBB8_26
.LBB8_25:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(value)
	jirl	$ra, $ra, 0
.LBB8_26:                               # %minimax_player_ab.exit
	ld.w	$a0, $sp, 116
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end8:
	.size	think, .Lfunc_end8-think
                                        # -- End function
	.globl	minimax_comp_ab                 # -- Begin function minimax_comp_ab
	.p2align	5
	.type	minimax_comp_ab,@function
minimax_comp_ab:                        # @minimax_comp_ab
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
	pcalau12i	$fp, %pc_hi20(DEPTH)
	ld.w	$a6, $fp, %pc_lo12(DEPTH)
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $a2
	move	$s3, $a1
	bge	$a0, $a6, .LBB9_27
# %bb.1:                                # %.preheader59
	move	$s1, $a5
	move	$s0, $a4
	bge	$a4, $a5, .LBB9_28
# %bb.2:                                # %.lr.ph67
	move	$s2, $zero
	move	$s8, $zero
	or	$a2, $s7, $s3
	addi.w	$a1, $a0, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.w	$s4, $a0, 2
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s2
	and	$a1, $a0, $a2
	beqz	$a1, .LBB9_9
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ori	$a0, $zero, 128
	sll.d	$a0, $a0, $s2
	and	$a1, $a0, $a2
	beqz	$a1, .LBB9_9
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	lu12i.w	$a0, 4
	sll.d	$a0, $a0, $s2
	and	$a1, $a0, $a2
	beqz	$a1, .LBB9_9
# %bb.6:                                #   in Loop: Header=BB9_3 Depth=1
	lu12i.w	$a0, 512
	sll.d	$a0, $a0, $s2
	and	$a1, $a0, $a2
	beqz	$a1, .LBB9_9
# %bb.7:                                #   in Loop: Header=BB9_3 Depth=1
	lu12i.w	$a0, 65536
	sll.d	$a0, $a0, $s2
	and	$a1, $a0, $a2
	beqz	$a1, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sll.d	$a0, $a0, $s2
	and	$a1, $a0, $a2
	bnez	$a1, .LBB9_25
	.p2align	4, , 16
.LBB9_9:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a1, $fp, %pc_lo12(DEPTH)
	or	$s6, $a0, $s7
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB9_21
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	bge	$s0, $s1, .LBB9_22
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$s5, $s1
	move	$s1, $zero
	move	$s8, $zero
	move	$s7, $zero
	or	$fp, $s6, $s3
	.p2align	4, , 16
.LBB9_12:                               #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $fp
	beqz	$a1, .LBB9_18
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=2
	ori	$a0, $zero, 128
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $fp
	beqz	$a1, .LBB9_18
# %bb.14:                               #   in Loop: Header=BB9_12 Depth=2
	lu12i.w	$a0, 4
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $fp
	beqz	$a1, .LBB9_18
# %bb.15:                               #   in Loop: Header=BB9_12 Depth=2
	lu12i.w	$a0, 512
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $fp
	beqz	$a1, .LBB9_18
# %bb.16:                               #   in Loop: Header=BB9_12 Depth=2
	lu12i.w	$a0, 65536
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $fp
	beqz	$a1, .LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_12 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $fp
	bnez	$a1, .LBB9_19
	.p2align	4, , 16
.LBB9_18:                               #   in Loop: Header=BB9_12 Depth=2
	or	$a1, $a0, $s3
	move	$a0, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s5
	pcaddu18i	$ra, %call36(minimax_comp_ab)
	jirl	$ra, $ra, 0
	slt	$a1, $s5, $a0
	slt	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$s5, $a0, $a2
	masknez	$a0, $s1, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
.LBB9_19:                               # %bit_place_piece.exit39
                                        #   in Loop: Header=BB9_12 Depth=2
	ori	$a0, $zero, 5
	bltu	$a0, $s8, .LBB9_23
# %bb.20:                               # %bit_place_piece.exit39
                                        #   in Loop: Header=BB9_12 Depth=2
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 1
	blt	$s0, $s5, .LBB9_12
	b	.LBB9_23
	.p2align	4, , 16
.LBB9_21:                               #   in Loop: Header=BB9_3 Depth=1
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(value)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB9_24
	.p2align	4, , 16
.LBB9_22:                               #   in Loop: Header=BB9_3 Depth=1
	move	$s7, $zero
	move	$s5, $s1
.LBB9_23:                               # %._crit_edge
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s7, $a0, 0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
.LBB9_24:                               # %minimax_player_ab.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	slt	$a0, $s0, $s5
	masknez	$a1, $s0, $a0
	maskeqz	$a2, $s5, $a0
	or	$s0, $a2, $a1
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s2, $a0
	or	$s8, $a0, $a1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
.LBB9_25:                               # %bit_place_piece.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	ori	$a0, $zero, 5
	bltu	$a0, $s2, .LBB9_29
# %bb.26:                               # %bit_place_piece.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$s2, $s2, 1
	blt	$s0, $s1, .LBB9_3
	b	.LBB9_29
.LBB9_27:
	move	$a0, $s3
	move	$a1, $s7
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
	pcaddu18i	$t8, %call36(value)
	jr	$t8
.LBB9_28:
	move	$s8, $zero
.LBB9_29:                               # %._crit_edge68
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	move	$a0, $s0
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
.Lfunc_end9:
	.size	minimax_comp_ab, .Lfunc_end9-minimax_comp_ab
                                        # -- End function
	.globl	minimax_player_ab               # -- Begin function minimax_player_ab
	.p2align	5
	.type	minimax_player_ab,@function
minimax_player_ab:                      # @minimax_player_ab
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
	pcalau12i	$a6, %pc_hi20(DEPTH)
	ld.w	$a6, $a6, %pc_lo12(DEPTH)
	move	$s1, $a2
	move	$s3, $a1
	bge	$a0, $a6, .LBB10_12
# %bb.1:                                # %.preheader
	move	$fp, $a5
	move	$s2, $a4
	move	$s0, $a3
	bge	$a4, $a5, .LBB10_13
# %bb.2:                                # %.lr.ph
	move	$s6, $zero
	move	$s7, $zero
	move	$s5, $zero
	or	$s8, $s1, $s3
	addi.w	$s4, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s7
	and	$a1, $a0, $s8
	beqz	$a1, .LBB10_9
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	ori	$a0, $zero, 128
	sll.d	$a0, $a0, $s7
	and	$a1, $a0, $s8
	beqz	$a1, .LBB10_9
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	lu12i.w	$a0, 4
	sll.d	$a0, $a0, $s7
	and	$a1, $a0, $s8
	beqz	$a1, .LBB10_9
# %bb.6:                                #   in Loop: Header=BB10_3 Depth=1
	lu12i.w	$a0, 512
	sll.d	$a0, $a0, $s7
	and	$a1, $a0, $s8
	beqz	$a1, .LBB10_9
# %bb.7:                                #   in Loop: Header=BB10_3 Depth=1
	lu12i.w	$a0, 65536
	sll.d	$a0, $a0, $s7
	and	$a1, $a0, $s8
	beqz	$a1, .LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sll.d	$a0, $a0, $s7
	and	$a1, $a0, $s8
	bnez	$a1, .LBB10_10
	.p2align	4, , 16
.LBB10_9:                               #   in Loop: Header=BB10_3 Depth=1
	or	$a1, $a0, $s3
	move	$a0, $s4
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $fp
	pcaddu18i	$ra, %call36(minimax_comp_ab)
	jirl	$ra, $ra, 0
	slt	$a1, $fp, $a0
	slt	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$fp, $a0, $a2
	masknez	$a0, $s6, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
.LBB10_10:                              # %bit_place_piece.exit
                                        #   in Loop: Header=BB10_3 Depth=1
	ori	$a0, $zero, 5
	bltu	$a0, $s7, .LBB10_14
# %bb.11:                               # %bit_place_piece.exit
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 1
	blt	$s2, $fp, .LBB10_3
	b	.LBB10_14
.LBB10_12:
	move	$a0, $s3
	move	$a1, $s1
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
	pcaddu18i	$t8, %call36(value)
	jr	$t8
.LBB10_13:
	move	$s5, $zero
.LBB10_14:                              # %._crit_edge
	st.w	$s5, $s0, 0
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
	ret
.Lfunc_end10:
	.size	minimax_player_ab, .Lfunc_end10-minimax_player_ab
                                        # -- End function
	.globl	minimax_comp_ab2                # -- Begin function minimax_comp_ab2
	.p2align	5
	.type	minimax_comp_ab2,@function
minimax_comp_ab2:                       # @minimax_comp_ab2
# %bb.0:
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
	pcalau12i	$a5, %pc_hi20(DEPTH)
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a5, $a5, %pc_lo12(DEPTH)
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$s2, $a1
	bge	$a0, $a5, .LBB11_81
# %bb.1:                                # %.preheader59
	move	$s1, $zero
	move	$s4, $zero
	move	$s0, $zero
	or	$s8, $a2, $s2
	addi.w	$a1, $a0, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -25
	ori	$s3, $a0, 2400
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %bit_place_piece.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 1
	ori	$a0, $zero, 7
	beq	$s4, $a0, .LBB11_82
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s8
	beqz	$a1, .LBB11_9
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 128
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s8
	beqz	$a1, .LBB11_9
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
	lu12i.w	$a0, 4
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s8
	beqz	$a1, .LBB11_9
# %bb.6:                                #   in Loop: Header=BB11_3 Depth=1
	lu12i.w	$a0, 512
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s8
	beqz	$a1, .LBB11_9
# %bb.7:                                #   in Loop: Header=BB11_3 Depth=1
	lu12i.w	$a0, 65536
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s8
	beqz	$a1, .LBB11_9
# %bb.8:                                #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	sll.d	$a0, $a0, $s4
	and	$a1, $a0, $s8
	bnez	$a1, .LBB11_2
	.p2align	4, , 16
.LBB11_9:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(DEPTH)
	move	$s5, $a2
	or	$s6, $a0, $a2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB11_33
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	or	$fp, $s6, $s2
	andi	$a1, $fp, 1
	ori	$a0, $zero, 1
	beqz	$a1, .LBB11_17
# %bb.11:                               #   in Loop: Header=BB11_3 Depth=1
	andi	$a1, $fp, 128
	ori	$a0, $zero, 128
	beqz	$a1, .LBB11_17
# %bb.12:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 49
	lu12i.w	$a0, 4
	bgez	$a1, .LBB11_17
# %bb.13:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 42
	lu12i.w	$a0, 512
	bgez	$a1, .LBB11_17
# %bb.14:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 35
	lu12i.w	$a0, 65536
	bgez	$a1, .LBB11_17
# %bb.15:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $fp, 28
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	bltz	$a0, .LBB11_18
# %bb.16:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	.p2align	4, , 16
.LBB11_17:                              #   in Loop: Header=BB11_3 Depth=1
	or	$a1, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$s7, $a0, $a1
	move	$a0, $s7
	blt	$s7, $s3, .LBB11_34
.LBB11_18:                              # %bit_place_piece.exit39
                                        #   in Loop: Header=BB11_3 Depth=1
	andi	$a1, $fp, 2
	ori	$a0, $zero, 2
	beqz	$a1, .LBB11_25
# %bb.19:                               #   in Loop: Header=BB11_3 Depth=1
	andi	$a1, $fp, 256
	ori	$a0, $zero, 256
	beqz	$a1, .LBB11_25
# %bb.20:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 48
	lu12i.w	$a0, 8
	bgez	$a1, .LBB11_25
# %bb.21:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 41
	lu12i.w	$a0, 1024
	bgez	$a1, .LBB11_25
# %bb.22:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 34
	lu12i.w	$a0, 131072
	bgez	$a1, .LBB11_25
# %bb.23:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $fp, 27
	bltz	$a0, .LBB11_36
# %bb.24:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 16
	.p2align	4, , 16
.LBB11_25:                              #   in Loop: Header=BB11_3 Depth=1
	or	$a1, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s7
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s7, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s3, .LBB11_34
# %bb.26:                               #   in Loop: Header=BB11_3 Depth=1
	slt	$a1, $s7, $a1
	xori	$a3, $a1, 1
	move	$s7, $a0
	andi	$a1, $fp, 4
	ori	$a0, $zero, 4
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a1, .LBB11_37
.LBB11_27:                              #   in Loop: Header=BB11_3 Depth=1
	andi	$a1, $fp, 512
	ori	$a0, $zero, 512
	beqz	$a1, .LBB11_37
# %bb.28:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 47
	lu12i.w	$a0, 16
	bgez	$a1, .LBB11_37
# %bb.29:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 40
	lu12i.w	$a0, 2048
	bgez	$a1, .LBB11_37
# %bb.30:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 33
	lu12i.w	$a0, 262144
	bgez	$a1, .LBB11_37
# %bb.31:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $fp, 26
	bltz	$a0, .LBB11_45
# %bb.32:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 32
	b	.LBB11_37
	.p2align	4, , 16
.LBB11_33:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(value)
	jirl	$ra, $ra, 0
.LBB11_34:                              # %minimax_player_ab2.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	slt	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s3, $a0, $a2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	blt	$a0, $s3, .LBB11_83
# %bb.35:                               #   in Loop: Header=BB11_3 Depth=1
	masknez	$a0, $s0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s0, $a1, $a0
	move	$a2, $s5
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 1
	ori	$a0, $zero, 7
	bne	$s4, $a0, .LBB11_3
	b	.LBB11_82
.LBB11_36:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a3, $zero
	andi	$a1, $fp, 4
	ori	$a0, $zero, 4
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	bnez	$a1, .LBB11_27
.LBB11_37:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s0, $a3
	or	$a1, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s7
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s7, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s3, .LBB11_57
# %bb.38:                               #   in Loop: Header=BB11_3 Depth=1
	slt	$a1, $s7, $a1
	ori	$a2, $zero, 2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s0, $a1
	or	$a3, $a1, $a2
	andi	$a2, $fp, 8
	ori	$a1, $zero, 8
	beqz	$a2, .LBB11_46
.LBB11_39:                              #   in Loop: Header=BB11_3 Depth=1
	andi	$a2, $fp, 1024
	ori	$a1, $zero, 1024
	beqz	$a2, .LBB11_46
# %bb.40:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a2, $fp, 46
	lu12i.w	$a1, 32
	bgez	$a2, .LBB11_46
# %bb.41:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a2, $fp, 39
	lu12i.w	$a1, 4096
	bgez	$a2, .LBB11_46
# %bb.42:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a2, $fp, 32
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bgez	$a2, .LBB11_46
# %bb.43:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 25
	bltz	$a1, .LBB11_55
# %bb.44:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 64
	b	.LBB11_46
.LBB11_45:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s7
	andi	$a2, $fp, 8
	ori	$a1, $zero, 8
	bnez	$a2, .LBB11_39
.LBB11_46:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s0, $a3
	or	$a1, $a1, $s2
	move	$s7, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	slt	$a2, $a0, $s7
	maskeqz	$a3, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$s7, $a3, $a2
	blt	$s7, $s3, .LBB11_68
# %bb.47:                               #   in Loop: Header=BB11_3 Depth=1
	slt	$a0, $a1, $a0
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a3, $a0, $a1
	andi	$a1, $fp, 16
	ori	$a0, $zero, 16
	beqz	$a1, .LBB11_56
.LBB11_48:                              #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 52
	ori	$a0, $zero, 2048
	bgez	$a1, .LBB11_56
# %bb.49:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 45
	lu12i.w	$a0, 64
	bgez	$a1, .LBB11_56
# %bb.50:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 38
	lu12i.w	$a0, 8192
	bgez	$a1, .LBB11_56
# %bb.51:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $fp, 31
	bltz	$a0, .LBB11_53
# %bb.52:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	b	.LBB11_56
.LBB11_53:                              #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $fp, 24
	bltz	$a0, .LBB11_66
# %bb.54:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 128
	b	.LBB11_56
.LBB11_55:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s7, $a0
	andi	$a1, $fp, 16
	ori	$a0, $zero, 16
	bnez	$a1, .LBB11_48
.LBB11_56:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s0, $a3
	or	$a1, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s7
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s7, $a0
	or	$a0, $a2, $a0
	bge	$a0, $s3, .LBB11_58
.LBB11_57:                              #   in Loop: Header=BB11_3 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB11_34
.LBB11_58:                              #   in Loop: Header=BB11_3 Depth=1
	slt	$a1, $s7, $a1
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s0, $a1
	or	$a3, $a1, $a2
	andi	$a2, $fp, 32
	ori	$a1, $zero, 32
	beqz	$a2, .LBB11_67
.LBB11_59:                              #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a2, $fp, 51
	lu12i.w	$a1, 1
	bgez	$a2, .LBB11_67
# %bb.60:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a2, $fp, 44
	lu12i.w	$a1, 128
	bgez	$a2, .LBB11_67
# %bb.61:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a2, $fp, 37
	lu12i.w	$a1, 16384
	bgez	$a2, .LBB11_67
# %bb.62:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 30
	bltz	$a1, .LBB11_64
# %bb.63:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 2
	b	.LBB11_67
.LBB11_64:                              #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 23
	bltz	$a1, .LBB11_76
# %bb.65:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 256
	b	.LBB11_67
.LBB11_66:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s7
	andi	$a2, $fp, 32
	ori	$a1, $zero, 32
	bnez	$a2, .LBB11_59
.LBB11_67:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s0, $a3
	or	$a1, $a1, $s2
	move	$s7, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	slt	$a2, $a0, $s7
	maskeqz	$a3, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$s7, $a3, $a2
	bge	$s7, $s3, .LBB11_69
.LBB11_68:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s7
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB11_34
.LBB11_69:                              #   in Loop: Header=BB11_3 Depth=1
	slt	$a0, $a1, $a0
	ori	$a1, $zero, 5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a3, $a0, $a1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	andi	$a1, $fp, 64
	ori	$a0, $zero, 64
	beqz	$a1, .LBB11_77
.LBB11_70:                              #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 50
	lu12i.w	$a0, 2
	bgez	$a1, .LBB11_77
# %bb.71:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 43
	lu12i.w	$a0, 256
	bgez	$a1, .LBB11_77
# %bb.72:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 36
	lu12i.w	$a0, 32768
	bgez	$a1, .LBB11_77
# %bb.73:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a1, $fp, 29
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgez	$a1, .LBB11_77
# %bb.74:                               #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $fp, 22
	bltz	$a0, .LBB11_80
# %bb.75:                               #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 512
	b	.LBB11_77
.LBB11_76:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s7, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	andi	$a1, $fp, 64
	ori	$a0, $zero, 64
	bnez	$a1, .LBB11_70
.LBB11_77:                              #   in Loop: Header=BB11_3 Depth=1
	move	$fp, $a3
	or	$a1, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s7
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s7, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s3, .LBB11_34
# %bb.78:                               #   in Loop: Header=BB11_3 Depth=1
	slt	$a1, $s7, $a1
	ori	$a2, $zero, 6
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $fp, $a1
	or	$a3, $a1, $a2
.LBB11_79:                              # %bit_place_piece.exit39.6
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a3, $a1, 0
	b	.LBB11_34
.LBB11_80:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s7
	b	.LBB11_79
.LBB11_81:
	move	$a0, $s2
	move	$a1, $a2
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
	pcaddu18i	$t8, %call36(value)
	jr	$t8
.LBB11_82:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$s0, $a0, 0
.LBB11_83:                              # %.loopexit
	move	$a0, $s3
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
.Lfunc_end11:
	.size	minimax_comp_ab2, .Lfunc_end11-minimax_comp_ab2
                                        # -- End function
	.globl	minimax_player_ab2              # -- Begin function minimax_player_ab2
	.p2align	5
	.type	minimax_player_ab2,@function
minimax_player_ab2:                     # @minimax_player_ab2
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
	pcalau12i	$a5, %pc_hi20(DEPTH)
	ld.w	$a5, $a5, %pc_lo12(DEPTH)
	move	$s1, $a2
	move	$s2, $a1
	bge	$a0, $a5, .LBB12_5
# %bb.1:                                # %.preheader
	move	$s0, $a4
	move	$fp, $a3
	or	$s5, $s1, $s2
	addi.w	$s3, $a0, 1
	andi	$a2, $s5, 1
	ori	$a1, $zero, 1
	lu12i.w	$a0, 24
	beqz	$a2, .LBB12_12
# %bb.2:
	andi	$a2, $s5, 128
	ori	$a1, $zero, 128
	beqz	$a2, .LBB12_12
# %bb.3:
	slli.d	$a1, $s5, 49
	bltz	$a1, .LBB12_6
# %bb.4:
	lu12i.w	$a1, 4
	b	.LBB12_12
.LBB12_5:
	move	$a0, $s2
	move	$a1, $s1
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
	pcaddu18i	$t8, %call36(value)
	jr	$t8
.LBB12_6:
	slli.d	$a1, $s5, 42
	bltz	$a1, .LBB12_8
# %bb.7:
	lu12i.w	$a1, 512
	b	.LBB12_12
.LBB12_8:
	slli.d	$a1, $s5, 35
	bltz	$a1, .LBB12_10
# %bb.9:
	lu12i.w	$a1, 65536
	b	.LBB12_12
.LBB12_10:
	slli.d	$a1, $s5, 28
	bltz	$a1, .LBB12_23
# %bb.11:
	ori	$a1, $zero, 0
	lu32i.d	$a1, 8
.LBB12_12:
	or	$a1, $a1, $s2
	ori	$s4, $a0, 1696
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$s4, $a0, $a1
	move	$a0, $s4
	blt	$s4, $s0, .LBB12_75
# %bb.13:                               # %bit_place_piece.exit
	andi	$a1, $s5, 2
	ori	$a0, $zero, 2
	beqz	$a1, .LBB12_24
.LBB12_14:
	andi	$a1, $s5, 256
	ori	$a0, $zero, 256
	beqz	$a1, .LBB12_24
# %bb.15:
	slli.d	$a0, $s5, 48
	bltz	$a0, .LBB12_17
# %bb.16:
	lu12i.w	$a0, 8
	b	.LBB12_24
.LBB12_17:
	slli.d	$a0, $s5, 41
	bltz	$a0, .LBB12_19
# %bb.18:
	lu12i.w	$a0, 1024
	b	.LBB12_24
.LBB12_19:
	slli.d	$a0, $s5, 34
	bltz	$a0, .LBB12_21
# %bb.20:
	lu12i.w	$a0, 131072
	b	.LBB12_24
.LBB12_21:
	slli.d	$a0, $s5, 27
	bltz	$a0, .LBB12_35
# %bb.22:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 16
	b	.LBB12_24
.LBB12_23:
	ori	$s4, $a0, 1696
	andi	$a1, $s5, 2
	ori	$a0, $zero, 2
	bnez	$a1, .LBB12_14
.LBB12_24:
	or	$a1, $a0, $s2
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s4
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s0, .LBB12_75
# %bb.25:
	slt	$a1, $s4, $a1
	xori	$s6, $a1, 1
	move	$s4, $a0
	andi	$a1, $s5, 4
	ori	$a0, $zero, 4
	beqz	$a1, .LBB12_36
.LBB12_26:
	andi	$a1, $s5, 512
	ori	$a0, $zero, 512
	beqz	$a1, .LBB12_36
# %bb.27:
	slli.d	$a0, $s5, 47
	bltz	$a0, .LBB12_29
# %bb.28:
	lu12i.w	$a0, 16
	b	.LBB12_36
.LBB12_29:
	slli.d	$a0, $s5, 40
	bltz	$a0, .LBB12_31
# %bb.30:
	lu12i.w	$a0, 2048
	b	.LBB12_36
.LBB12_31:
	slli.d	$a0, $s5, 33
	bltz	$a0, .LBB12_33
# %bb.32:
	lu12i.w	$a0, 262144
	b	.LBB12_36
.LBB12_33:
	slli.d	$a0, $s5, 26
	bltz	$a0, .LBB12_47
# %bb.34:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 32
	b	.LBB12_36
.LBB12_35:
	move	$s6, $zero
	andi	$a1, $s5, 4
	ori	$a0, $zero, 4
	bnez	$a1, .LBB12_26
.LBB12_36:
	or	$a1, $a0, $s2
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s4
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s0, .LBB12_75
# %bb.37:
	slt	$a1, $s4, $a1
	ori	$a2, $zero, 2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a2
	andi	$a2, $s5, 8
	ori	$a1, $zero, 8
	beqz	$a2, .LBB12_48
.LBB12_38:
	andi	$a2, $s5, 1024
	ori	$a1, $zero, 1024
	beqz	$a2, .LBB12_48
# %bb.39:
	slli.d	$a1, $s5, 46
	bltz	$a1, .LBB12_41
# %bb.40:
	lu12i.w	$a1, 32
	b	.LBB12_48
.LBB12_41:
	slli.d	$a1, $s5, 39
	bltz	$a1, .LBB12_43
# %bb.42:
	lu12i.w	$a1, 4096
	b	.LBB12_48
.LBB12_43:
	slli.d	$a1, $s5, 32
	bltz	$a1, .LBB12_45
# %bb.44:
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	b	.LBB12_48
.LBB12_45:
	slli.d	$a1, $s5, 25
	bltz	$a1, .LBB12_59
# %bb.46:
	ori	$a1, $zero, 0
	lu32i.d	$a1, 64
	b	.LBB12_48
.LBB12_47:
	move	$a0, $s4
	andi	$a2, $s5, 8
	ori	$a1, $zero, 8
	bnez	$a2, .LBB12_38
.LBB12_48:
	or	$a1, $a1, $s2
	move	$s4, $a0
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	slt	$a2, $a0, $s4
	maskeqz	$a3, $a0, $a2
	masknez	$a2, $s4, $a2
	or	$s4, $a3, $a2
	blt	$s4, $s0, .LBB12_74
# %bb.49:
	slt	$a0, $a1, $a0
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a1
	andi	$a1, $s5, 16
	ori	$a0, $zero, 16
	beqz	$a1, .LBB12_60
.LBB12_50:
	slli.d	$a1, $s5, 52
	ori	$a0, $zero, 2048
	bgez	$a1, .LBB12_60
# %bb.51:
	slli.d	$a0, $s5, 45
	bltz	$a0, .LBB12_53
# %bb.52:
	lu12i.w	$a0, 64
	b	.LBB12_60
.LBB12_53:
	slli.d	$a0, $s5, 38
	bltz	$a0, .LBB12_55
# %bb.54:
	lu12i.w	$a0, 8192
	b	.LBB12_60
.LBB12_55:
	slli.d	$a1, $s5, 31
	ori	$a0, $zero, 0
	bltz	$a1, .LBB12_57
# %bb.56:
	lu32i.d	$a0, 1
	b	.LBB12_60
.LBB12_57:
	slli.d	$a1, $s5, 24
	bltz	$a1, .LBB12_72
# %bb.58:
	lu32i.d	$a0, 128
	b	.LBB12_60
.LBB12_59:
	move	$s4, $a0
	andi	$a1, $s5, 16
	ori	$a0, $zero, 16
	bnez	$a1, .LBB12_50
.LBB12_60:
	or	$a1, $a0, $s2
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s4
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s0, .LBB12_75
# %bb.61:
	slt	$a1, $s4, $a1
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a2
	andi	$a2, $s5, 32
	ori	$a1, $zero, 32
	beqz	$a2, .LBB12_73
.LBB12_62:
	slli.d	$a1, $s5, 51
	bltz	$a1, .LBB12_64
# %bb.63:
	lu12i.w	$a1, 1
	b	.LBB12_73
.LBB12_64:
	slli.d	$a1, $s5, 44
	bltz	$a1, .LBB12_66
# %bb.65:
	lu12i.w	$a1, 128
	b	.LBB12_73
.LBB12_66:
	slli.d	$a1, $s5, 37
	bltz	$a1, .LBB12_68
# %bb.67:
	lu12i.w	$a1, 16384
	b	.LBB12_73
.LBB12_68:
	slli.d	$a2, $s5, 30
	ori	$a1, $zero, 0
	bltz	$a2, .LBB12_70
# %bb.69:
	lu32i.d	$a1, 2
	b	.LBB12_73
.LBB12_70:
	slli.d	$a2, $s5, 23
	bltz	$a2, .LBB12_87
# %bb.71:
	lu32i.d	$a1, 256
	b	.LBB12_73
.LBB12_72:
	move	$a0, $s4
	andi	$a2, $s5, 32
	ori	$a1, $zero, 32
	bnez	$a2, .LBB12_62
.LBB12_73:
	or	$a1, $a1, $s2
	move	$s4, $a0
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	slt	$a2, $a0, $s4
	maskeqz	$a3, $a0, $a2
	masknez	$a2, $s4, $a2
	or	$s4, $a3, $a2
	bge	$s4, $s0, .LBB12_76
.LBB12_74:
	move	$a0, $s4
.LBB12_75:                              # %.loopexit
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
.LBB12_76:
	slt	$a0, $a1, $a0
	ori	$a1, $zero, 5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a1
	andi	$a1, $s5, 64
	ori	$a0, $zero, 64
	beqz	$a1, .LBB12_88
.LBB12_77:
	slli.d	$a0, $s5, 50
	bltz	$a0, .LBB12_79
# %bb.78:
	lu12i.w	$a0, 2
	b	.LBB12_88
.LBB12_79:
	slli.d	$a0, $s5, 43
	bltz	$a0, .LBB12_81
# %bb.80:
	lu12i.w	$a0, 256
	b	.LBB12_88
.LBB12_81:
	slli.d	$a0, $s5, 36
	bltz	$a0, .LBB12_83
# %bb.82:
	lu12i.w	$a0, 32768
	b	.LBB12_88
.LBB12_83:
	slli.d	$a1, $s5, 29
	ori	$a0, $zero, 0
	bltz	$a1, .LBB12_85
# %bb.84:
	lu32i.d	$a0, 4
	b	.LBB12_88
.LBB12_85:
	slli.d	$a1, $s5, 22
	bltz	$a1, .LBB12_91
# %bb.86:
	lu32i.d	$a0, 512
	b	.LBB12_88
.LBB12_87:
	move	$s4, $a0
	andi	$a1, $s5, 64
	ori	$a0, $zero, 64
	bnez	$a1, .LBB12_77
.LBB12_88:
	or	$a1, $a0, $s2
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s4
	pcaddu18i	$ra, %call36(minimax_comp_ab2)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slt	$a0, $a0, $s4
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a2, $a0
	blt	$a0, $s0, .LBB12_75
# %bb.89:
	slt	$a1, $s4, $a1
	ori	$a2, $zero, 6
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a2
.LBB12_90:                              # %bit_place_piece.exit.6
	st.w	$s6, $fp, 0
	b	.LBB12_75
.LBB12_91:
	move	$a0, $s4
	b	.LBB12_90
.Lfunc_end12:
	.size	minimax_player_ab2, .Lfunc_end12-minimax_player_ab2
                                        # -- End function
	.globl	minimax_comp                    # -- Begin function minimax_comp
	.p2align	5
	.type	minimax_comp,@function
minimax_comp:                           # @minimax_comp
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
	pcalau12i	$fp, %pc_hi20(DEPTH)
	ld.w	$a4, $fp, %pc_lo12(DEPTH)
	move	$s6, $a2
	move	$s1, $a1
	bge	$a0, $a4, .LBB13_72
# %bb.1:                                # %.preheader53
	move	$s0, $a3
	move	$s7, $zero
	move	$s8, $zero
	move	$a2, $zero
	or	$a3, $s6, $s1
	addi.w	$a1, $a0, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.w	$s2, $a0, 2
	lu12i.w	$a0, -25
	ori	$s3, $a0, 2400
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $a3
	beqz	$a1, .LBB13_9
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 128
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $a3
	beqz	$a1, .LBB13_9
# %bb.4:                                #   in Loop: Header=BB13_2 Depth=1
	lu12i.w	$a0, 4
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $a3
	beqz	$a1, .LBB13_9
# %bb.5:                                #   in Loop: Header=BB13_2 Depth=1
	lu12i.w	$a0, 512
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $a3
	beqz	$a1, .LBB13_9
# %bb.6:                                #   in Loop: Header=BB13_2 Depth=1
	lu12i.w	$a0, 65536
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $a3
	beqz	$a1, .LBB13_9
# %bb.7:                                #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	sll.d	$a0, $a0, $s8
	and	$a1, $a0, $a3
	beqz	$a1, .LBB13_9
	.p2align	4, , 16
# %bb.8:                                # %bit_place_piece.exit
                                        #   in Loop: Header=BB13_2 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	ori	$a0, $zero, 7
	bne	$s8, $a0, .LBB13_2
	b	.LBB13_71
	.p2align	4, , 16
.LBB13_9:                               #   in Loop: Header=BB13_2 Depth=1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a1, $fp, %pc_lo12(DEPTH)
	or	$s4, $a0, $s6
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB13_32
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB13_2 Depth=1
	or	$s6, $s4, $s1
	andi	$a1, $s6, 1
	ori	$a0, $zero, 1
	beqz	$a1, .LBB13_17
# %bb.11:                               #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 128
	ori	$a0, $zero, 128
	beqz	$a1, .LBB13_17
# %bb.12:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 49
	lu12i.w	$a0, 4
	bgez	$a1, .LBB13_17
# %bb.13:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 42
	lu12i.w	$a0, 512
	bgez	$a1, .LBB13_17
# %bb.14:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 35
	lu12i.w	$a0, 65536
	bgez	$a1, .LBB13_17
# %bb.15:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 28
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	bltz	$a0, .LBB13_18
# %bb.16:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	.p2align	4, , 16
.LBB13_17:                              #   in Loop: Header=BB13_2 Depth=1
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s5, $a0, $a1
.LBB13_18:                              # %bit_place_piece.exit33
                                        #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 2
	ori	$a0, $zero, 2
	beqz	$a1, .LBB13_25
# %bb.19:                               #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 256
	ori	$a0, $zero, 256
	beqz	$a1, .LBB13_25
# %bb.20:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 48
	lu12i.w	$a0, 8
	bgez	$a1, .LBB13_25
# %bb.21:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 41
	lu12i.w	$a0, 1024
	bgez	$a1, .LBB13_25
# %bb.22:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 34
	lu12i.w	$a0, 131072
	bgez	$a1, .LBB13_25
# %bb.23:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 27
	bltz	$a0, .LBB13_33
# %bb.24:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 16
	.p2align	4, , 16
.LBB13_25:                              #   in Loop: Header=BB13_2 Depth=1
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s5, $a0
	xori	$fp, $a1, 1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s5, $a0, $a1
	andi	$a1, $s6, 4
	ori	$a0, $zero, 4
	beqz	$a1, .LBB13_34
.LBB13_26:                              #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 512
	ori	$a0, $zero, 512
	beqz	$a1, .LBB13_34
# %bb.27:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 47
	lu12i.w	$a0, 16
	bgez	$a1, .LBB13_34
# %bb.28:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 40
	lu12i.w	$a0, 2048
	bgez	$a1, .LBB13_34
# %bb.29:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 33
	lu12i.w	$a0, 262144
	bgez	$a1, .LBB13_34
# %bb.30:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 26
	bltz	$a0, .LBB13_35
# %bb.31:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 32
	b	.LBB13_34
	.p2align	4, , 16
.LBB13_32:                              #   in Loop: Header=BB13_2 Depth=1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(value)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB13_70
.LBB13_33:                              #   in Loop: Header=BB13_2 Depth=1
	move	$fp, $zero
	andi	$a1, $s6, 4
	ori	$a0, $zero, 4
	bnez	$a1, .LBB13_26
	.p2align	4, , 16
.LBB13_34:                              #   in Loop: Header=BB13_2 Depth=1
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s5, $a0
	slt	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$s5, $a0, $a2
	ori	$a0, $zero, 2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
.LBB13_35:                              # %bit_place_piece.exit33.2
                                        #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 8
	ori	$a0, $zero, 8
	beqz	$a1, .LBB13_42
# %bb.36:                               #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 1024
	ori	$a0, $zero, 1024
	beqz	$a1, .LBB13_42
# %bb.37:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 46
	lu12i.w	$a0, 32
	bgez	$a1, .LBB13_42
# %bb.38:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 39
	lu12i.w	$a0, 4096
	bgez	$a1, .LBB13_42
# %bb.39:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 32
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bgez	$a1, .LBB13_42
# %bb.40:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 25
	bltz	$a0, .LBB13_43
# %bb.41:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 64
	.p2align	4, , 16
.LBB13_42:                              #   in Loop: Header=BB13_2 Depth=1
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s5, $a0
	slt	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$s5, $a0, $a2
	ori	$a0, $zero, 3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
.LBB13_43:                              # %bit_place_piece.exit33.3
                                        #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 16
	ori	$a0, $zero, 16
	beqz	$a1, .LBB13_51
# %bb.44:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 52
	ori	$a0, $zero, 2048
	bgez	$a1, .LBB13_51
# %bb.45:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 45
	lu12i.w	$a0, 64
	bgez	$a1, .LBB13_51
# %bb.46:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 38
	lu12i.w	$a0, 8192
	bgez	$a1, .LBB13_51
# %bb.47:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 31
	bltz	$a0, .LBB13_49
# %bb.48:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	b	.LBB13_51
.LBB13_49:                              #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 24
	bltz	$a0, .LBB13_52
# %bb.50:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 128
	.p2align	4, , 16
.LBB13_51:                              #   in Loop: Header=BB13_2 Depth=1
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s5, $a0
	slt	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$s5, $a0, $a2
	ori	$a0, $zero, 4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
.LBB13_52:                              # %bit_place_piece.exit33.4
                                        #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 32
	ori	$a0, $zero, 32
	beqz	$a1, .LBB13_60
# %bb.53:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 51
	lu12i.w	$a0, 1
	bgez	$a1, .LBB13_60
# %bb.54:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 44
	lu12i.w	$a0, 128
	bgez	$a1, .LBB13_60
# %bb.55:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 37
	lu12i.w	$a0, 16384
	bgez	$a1, .LBB13_60
# %bb.56:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 30
	bltz	$a0, .LBB13_58
# %bb.57:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 2
	b	.LBB13_60
.LBB13_58:                              #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 23
	bltz	$a0, .LBB13_61
# %bb.59:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 256
	.p2align	4, , 16
.LBB13_60:                              #   in Loop: Header=BB13_2 Depth=1
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s5, $a0
	slt	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$s5, $a0, $a2
	ori	$a0, $zero, 5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
.LBB13_61:                              # %bit_place_piece.exit33.5
                                        #   in Loop: Header=BB13_2 Depth=1
	andi	$a1, $s6, 64
	ori	$a0, $zero, 64
	beqz	$a1, .LBB13_68
# %bb.62:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 50
	lu12i.w	$a0, 2
	bgez	$a1, .LBB13_68
# %bb.63:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 43
	lu12i.w	$a0, 256
	bgez	$a1, .LBB13_68
# %bb.64:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 36
	lu12i.w	$a0, 32768
	bgez	$a1, .LBB13_68
# %bb.65:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a1, $s6, 29
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgez	$a1, .LBB13_68
# %bb.66:                               #   in Loop: Header=BB13_2 Depth=1
	slli.d	$a0, $s6, 22
	bltz	$a0, .LBB13_69
# %bb.67:                               #   in Loop: Header=BB13_2 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 512
	.p2align	4, , 16
.LBB13_68:                              #   in Loop: Header=BB13_2 Depth=1
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s5, $a0
	slt	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$s5, $a0, $a2
	ori	$a0, $zero, 6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
.LBB13_69:                              # %bit_place_piece.exit33.6
                                        #   in Loop: Header=BB13_2 Depth=1
	st.w	$fp, $s0, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
.LBB13_70:                              # %minimax_player.exit
                                        #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	slt	$a0, $s3, $s5
	masknez	$a1, $s3, $a0
	maskeqz	$a2, $s5, $a0
	or	$s3, $a2, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$a2, $a0, $a1
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	ori	$a0, $zero, 7
	bne	$s8, $a0, .LBB13_2
.LBB13_71:
	st.w	$a2, $s0, 0
	move	$a0, $s3
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
.LBB13_72:
	move	$a0, $s1
	move	$a1, $s6
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
	pcaddu18i	$t8, %call36(value)
	jr	$t8
.Lfunc_end13:
	.size	minimax_comp, .Lfunc_end13-minimax_comp
                                        # -- End function
	.globl	minimax_player                  # -- Begin function minimax_player
	.p2align	5
	.type	minimax_player,@function
minimax_player:                         # @minimax_player
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
	pcalau12i	$a4, %pc_hi20(DEPTH)
	ld.w	$a4, $a4, %pc_lo12(DEPTH)
	move	$s0, $a2
	move	$s1, $a1
	bge	$a0, $a4, .LBB14_5
# %bb.1:                                # %.preheader
	move	$fp, $a3
	or	$s4, $s0, $s1
	addi.w	$s2, $a0, 1
	andi	$a1, $s4, 1
	ori	$a0, $zero, 1
	lu12i.w	$s3, 24
	beqz	$a1, .LBB14_12
# %bb.2:
	andi	$a1, $s4, 128
	ori	$a0, $zero, 128
	beqz	$a1, .LBB14_12
# %bb.3:
	slli.d	$a0, $s4, 49
	bltz	$a0, .LBB14_6
# %bb.4:
	lu12i.w	$a0, 4
	b	.LBB14_12
.LBB14_5:
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(value)
	jr	$t8
.LBB14_6:
	slli.d	$a0, $s4, 42
	bltz	$a0, .LBB14_8
# %bb.7:
	lu12i.w	$a0, 512
	b	.LBB14_12
.LBB14_8:
	slli.d	$a0, $s4, 35
	bltz	$a0, .LBB14_10
# %bb.9:
	lu12i.w	$a0, 65536
	b	.LBB14_12
.LBB14_10:
	slli.d	$a0, $s4, 28
	bltz	$a0, .LBB14_22
# %bb.11:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
.LBB14_12:
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	ori	$a1, $s3, 1696
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	andi	$a1, $s4, 2
	ori	$a0, $zero, 2
	beqz	$a1, .LBB14_23
.LBB14_13:
	andi	$a1, $s4, 256
	ori	$a0, $zero, 256
	beqz	$a1, .LBB14_23
# %bb.14:
	slli.d	$a0, $s4, 48
	bltz	$a0, .LBB14_16
# %bb.15:
	lu12i.w	$a0, 8
	b	.LBB14_23
.LBB14_16:
	slli.d	$a0, $s4, 41
	bltz	$a0, .LBB14_18
# %bb.17:
	lu12i.w	$a0, 1024
	b	.LBB14_23
.LBB14_18:
	slli.d	$a0, $s4, 34
	bltz	$a0, .LBB14_20
# %bb.19:
	lu12i.w	$a0, 131072
	b	.LBB14_23
.LBB14_20:
	slli.d	$a0, $s4, 27
	bltz	$a0, .LBB14_33
# %bb.21:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 16
	b	.LBB14_23
.LBB14_22:
	ori	$s3, $s3, 1696
	andi	$a1, $s4, 2
	ori	$a0, $zero, 2
	bnez	$a1, .LBB14_13
.LBB14_23:
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s3, $a0
	xori	$s5, $a1, 1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$s3, $a0, $a1
	andi	$a1, $s4, 4
	ori	$a0, $zero, 4
	beqz	$a1, .LBB14_34
.LBB14_24:
	andi	$a1, $s4, 512
	ori	$a0, $zero, 512
	beqz	$a1, .LBB14_34
# %bb.25:
	slli.d	$a0, $s4, 47
	bltz	$a0, .LBB14_27
# %bb.26:
	lu12i.w	$a0, 16
	b	.LBB14_34
.LBB14_27:
	slli.d	$a0, $s4, 40
	bltz	$a0, .LBB14_29
# %bb.28:
	lu12i.w	$a0, 2048
	b	.LBB14_34
.LBB14_29:
	slli.d	$a0, $s4, 33
	bltz	$a0, .LBB14_31
# %bb.30:
	lu12i.w	$a0, 262144
	b	.LBB14_34
.LBB14_31:
	slli.d	$a0, $s4, 26
	bltz	$a0, .LBB14_35
# %bb.32:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 32
	b	.LBB14_34
.LBB14_33:
	move	$s5, $zero
	andi	$a1, $s4, 4
	ori	$a0, $zero, 4
	bnez	$a1, .LBB14_24
.LBB14_34:
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s3, $a0
	slt	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$s3, $a0, $a2
	ori	$a0, $zero, 2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
.LBB14_35:                              # %bit_place_piece.exit.2
	andi	$a1, $s4, 8
	ori	$a0, $zero, 8
	beqz	$a1, .LBB14_45
# %bb.36:
	andi	$a1, $s4, 1024
	ori	$a0, $zero, 1024
	beqz	$a1, .LBB14_45
# %bb.37:
	slli.d	$a0, $s4, 46
	bltz	$a0, .LBB14_39
# %bb.38:
	lu12i.w	$a0, 32
	b	.LBB14_45
.LBB14_39:
	slli.d	$a0, $s4, 39
	bltz	$a0, .LBB14_41
# %bb.40:
	lu12i.w	$a0, 4096
	b	.LBB14_45
.LBB14_41:
	slli.d	$a0, $s4, 32
	bltz	$a0, .LBB14_43
# %bb.42:
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	b	.LBB14_45
.LBB14_43:
	slli.d	$a0, $s4, 25
	bltz	$a0, .LBB14_46
# %bb.44:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 64
.LBB14_45:
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s3, $a0
	slt	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$s3, $a0, $a2
	ori	$a0, $zero, 3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
.LBB14_46:                              # %bit_place_piece.exit.3
	andi	$a1, $s4, 16
	ori	$a0, $zero, 16
	beqz	$a1, .LBB14_56
# %bb.47:
	slli.d	$a1, $s4, 52
	ori	$a0, $zero, 2048
	bgez	$a1, .LBB14_56
# %bb.48:
	slli.d	$a0, $s4, 45
	bltz	$a0, .LBB14_50
# %bb.49:
	lu12i.w	$a0, 64
	b	.LBB14_56
.LBB14_50:
	slli.d	$a0, $s4, 38
	bltz	$a0, .LBB14_52
# %bb.51:
	lu12i.w	$a0, 8192
	b	.LBB14_56
.LBB14_52:
	slli.d	$a1, $s4, 31
	ori	$a0, $zero, 0
	bltz	$a1, .LBB14_54
# %bb.53:
	lu32i.d	$a0, 1
	b	.LBB14_56
.LBB14_54:
	slli.d	$a1, $s4, 24
	bltz	$a1, .LBB14_57
# %bb.55:
	lu32i.d	$a0, 128
.LBB14_56:
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s3, $a0
	slt	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$s3, $a0, $a2
	ori	$a0, $zero, 4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
.LBB14_57:                              # %bit_place_piece.exit.4
	andi	$a1, $s4, 32
	ori	$a0, $zero, 32
	beqz	$a1, .LBB14_68
# %bb.58:
	slli.d	$a0, $s4, 51
	bltz	$a0, .LBB14_60
# %bb.59:
	lu12i.w	$a0, 1
	b	.LBB14_68
.LBB14_60:
	slli.d	$a0, $s4, 44
	bltz	$a0, .LBB14_62
# %bb.61:
	lu12i.w	$a0, 128
	b	.LBB14_68
.LBB14_62:
	slli.d	$a0, $s4, 37
	bltz	$a0, .LBB14_64
# %bb.63:
	lu12i.w	$a0, 16384
	b	.LBB14_68
.LBB14_64:
	slli.d	$a1, $s4, 30
	ori	$a0, $zero, 0
	bltz	$a1, .LBB14_66
# %bb.65:
	lu32i.d	$a0, 2
	b	.LBB14_68
.LBB14_66:
	slli.d	$a1, $s4, 23
	bltz	$a1, .LBB14_69
# %bb.67:
	lu32i.d	$a0, 256
.LBB14_68:
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s3, $a0
	slt	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$s3, $a0, $a2
	ori	$a0, $zero, 5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
.LBB14_69:                              # %bit_place_piece.exit.5
	andi	$a1, $s4, 64
	ori	$a0, $zero, 64
	beqz	$a1, .LBB14_80
# %bb.70:
	slli.d	$a0, $s4, 50
	bltz	$a0, .LBB14_72
# %bb.71:
	lu12i.w	$a0, 2
	b	.LBB14_80
.LBB14_72:
	slli.d	$a0, $s4, 43
	bltz	$a0, .LBB14_74
# %bb.73:
	lu12i.w	$a0, 256
	b	.LBB14_80
.LBB14_74:
	slli.d	$a0, $s4, 36
	bltz	$a0, .LBB14_76
# %bb.75:
	lu12i.w	$a0, 32768
	b	.LBB14_80
.LBB14_76:
	slli.d	$a1, $s4, 29
	ori	$a0, $zero, 0
	bltz	$a1, .LBB14_78
# %bb.77:
	lu32i.d	$a0, 4
	b	.LBB14_80
.LBB14_78:
	slli.d	$a1, $s4, 22
	bltz	$a1, .LBB14_81
# %bb.79:
	lu32i.d	$a0, 512
.LBB14_80:
	or	$a1, $a0, $s1
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(minimax_comp)
	jirl	$ra, $ra, 0
	slt	$a1, $s3, $a0
	slt	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$s3, $a0, $a2
	ori	$a0, $zero, 6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
.LBB14_81:                              # %bit_place_piece.exit.6
	st.w	$s5, $fp, 0
	move	$a0, $s3
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
.Lfunc_end14:
	.size	minimax_player, .Lfunc_end14-minimax_player
                                        # -- End function
	.globl	bit_place_piece                 # -- Begin function bit_place_piece
	.p2align	5
	.type	bit_place_piece,@function
bit_place_piece:                        # @bit_place_piece
# %bb.0:
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a3, 0
	or	$t0, $a6, $a5
	ori	$a4, $zero, 1
	sll.d	$a7, $a4, $a0
	and	$t1, $a7, $t0
	beqz	$t1, .LBB15_7
# %bb.1:
	addi.d	$a7, $a0, 7
	sll.d	$a7, $a4, $a7
	and	$a4, $a7, $t0
	beqz	$a4, .LBB15_7
# %bb.2:
	addi.d	$a7, $a0, 14
	ori	$a4, $zero, 1
	sll.d	$a7, $a4, $a7
	and	$t1, $a7, $t0
	beqz	$t1, .LBB15_7
# %bb.3:
	addi.d	$a7, $a0, 21
	sll.d	$a7, $a4, $a7
	and	$a4, $a7, $t0
	beqz	$a4, .LBB15_7
# %bb.4:
	addi.d	$a7, $a0, 28
	ori	$a4, $zero, 1
	sll.d	$a7, $a4, $a7
	and	$t1, $a7, $t0
	beqz	$t1, .LBB15_7
# %bb.5:
	addi.d	$a0, $a0, 35
	sll.d	$a7, $a4, $a0
	and	$a0, $a7, $t0
	beqz	$a0, .LBB15_7
# %bb.6:                                # %.loopexit
	move	$a0, $a4
	ret
.LBB15_7:                               # %.loopexit.sink.split
	move	$a4, $zero
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $a6, $a0
	maskeqz	$a5, $a5, $a0
	or	$a1, $a5, $a1
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a3
	or	$a1, $a7, $a1
	st.d	$a1, $a0, 0
	move	$a0, $a4
	ret
.Lfunc_end15:
	.size	bit_place_piece, .Lfunc_end15-bit_place_piece
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$fp, $a1
	st.w	$zero, $sp, 20
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_28
.LBB16_2:
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$fp, $a1, %pc_lo12(.L.str.13)
	pcalau12i	$a1, %pc_hi20(DEPTH)
	addi.d	$s0, $a1, %pc_lo12(DEPTH)
	move	$s1, $a0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
.LBB16_4:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB16_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB16_6:
	pcalau12i	$a0, %pc_hi20(C4VERT)
	ld.d	$a1, $a0, %pc_lo12(C4VERT)
	slli.d	$a1, $a1, 21
	lu12i.w	$a2, 516
	ori	$a2, $a2, 129
	or	$a2, $a1, $a2
	st.d	$a2, $a0, %pc_lo12(C4VERT)
	srli.d	$a0, $a1, 7
	lu12i.w	$a2, 4
	ori	$a2, $a2, 129
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(C3VERT)
	st.d	$a0, $a2, %pc_lo12(C3VERT)
	srli.d	$a0, $a1, 14
	ori	$a0, $a0, 129
	pcalau12i	$a1, %pc_hi20(C2VERT)
	st.d	$a0, $a1, %pc_lo12(C2VERT)
	pcalau12i	$a0, %pc_hi20(C4HORIZ)
	ori	$a1, $zero, 15
	st.d	$a1, $a0, %pc_lo12(C4HORIZ)
	pcalau12i	$a0, %pc_hi20(C4UP_R)
	ld.d	$a1, $a0, %pc_lo12(C4UP_R)
	pcalau12i	$a2, %pc_hi20(C2HORIZ)
	ori	$a3, $zero, 3
	st.d	$a3, $a2, %pc_lo12(C2HORIZ)
	slli.d	$a1, $a1, 24
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	or	$a2, $a1, $a2
	st.d	$a2, $a0, %pc_lo12(C4UP_R)
	srli.d	$a0, $a1, 8
	lu12i.w	$a2, 16
	ori	$a2, $a2, 257
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(C3UP_R)
	st.d	$a0, $a2, %pc_lo12(C3UP_R)
	srli.d	$a0, $a1, 16
	ori	$a0, $a0, 257
	pcalau12i	$a1, %pc_hi20(C2UP_R)
	st.d	$a0, $a1, %pc_lo12(C2UP_R)
	pcalau12i	$a0, %pc_hi20(C4UP_L)
	ld.d	$a1, $a0, %pc_lo12(C4UP_L)
	pcalau12i	$a2, %pc_hi20(C3HORIZ)
	ori	$s1, $zero, 7
	st.d	$s1, $a2, %pc_lo12(C3HORIZ)
	slli.d	$a1, $a1, 18
	lu12i.w	$a2, 520
	ori	$a2, $a2, 520
	or	$a2, $a1, $a2
	st.d	$a2, $a0, %pc_lo12(C4UP_L)
	srli.d	$a0, $a1, 6
	lu12i.w	$a2, 8
	ori	$a2, $a2, 520
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(C3UP_L)
	st.d	$a0, $a2, %pc_lo12(C3UP_L)
	srli.d	$a0, $a1, 12
	ori	$a0, $a0, 520
	pcalau12i	$a1, %pc_hi20(C2UP_L)
	st.d	$a0, $a1, %pc_lo12(C2UP_L)
	lu12i.w	$a0, 189154
	ori	$a0, $a0, 3630
	st.w	$a0, $sp, 24
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3630
	st.h	$a1, $sp, 28
	st.w	$a0, $sp, 31
	st.h	$a1, $sp, 35
	st.h	$a1, $sp, 42
	st.w	$a0, $sp, 38
	st.h	$a1, $sp, 49
	st.w	$a0, $sp, 45
	st.h	$a1, $sp, 56
	st.w	$a0, $sp, 52
	st.h	$a1, $sp, 63
	st.w	$a0, $sp, 59
	st.h	$a1, $sp, 70
	st.w	$a0, $sp, 66
	st.b	$zero, $sp, 30
	st.b	$zero, $sp, 37
	st.b	$zero, $sp, 44
	st.b	$zero, $sp, 51
	st.b	$zero, $sp, 58
	st.b	$zero, $sp, 65
	st.b	$zero, $sp, 72
	addi.d	$s2, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	ori	$s3, $zero, 5
	ori	$s4, $zero, 120
	ori	$s5, $zero, 111
	b	.LBB16_8
	.p2align	4, , 16
.LBB16_7:                               #   in Loop: Header=BB16_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %place_piece.exit21
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(print_board)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_p)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_17
# %bb.9:                                #   in Loop: Header=BB16_8 Depth=1
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_c)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_19
# %bb.10:                               #   in Loop: Header=BB16_8 Depth=1
	ld.w	$s0, $sp, 20
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(think)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bltu	$a0, $s1, .LBB16_12
# %bb.11:                               #   in Loop: Header=BB16_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 20
	b	.LBB16_14
	.p2align	4, , 16
.LBB16_12:                              #   in Loop: Header=BB16_8 Depth=1
	slli.d	$a0, $a1, 3
	sub.d	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	ld.b	$a1, $a0, 6
	blt	$s3, $a1, .LBB16_14
# %bb.13:                               #   in Loop: Header=BB16_8 Depth=1
	stx.b	$s5, $a0, $a1
	ld.b	$a1, $a0, 6
	addi.d	$a1, $a1, 1
	st.b	$a1, $a0, 6
.LBB16_14:                              # %place_piece.exit
                                        #   in Loop: Header=BB16_8 Depth=1
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(think)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bgeu	$a0, $s1, .LBB16_7
# %bb.15:                               #   in Loop: Header=BB16_8 Depth=1
	slli.d	$a0, $a1, 3
	sub.d	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	ld.b	$a1, $a0, 6
	blt	$s3, $a1, .LBB16_8
# %bb.16:                               #   in Loop: Header=BB16_8 Depth=1
	stx.b	$s4, $a0, $a1
	ld.b	$a1, $a0, 6
	addi.d	$a1, $a1, 1
	st.b	$a1, $a0, 6
	b	.LBB16_8
.LBB16_17:                              # %place_piece.exit21
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_19
# %bb.18:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_c)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_22
.LBB16_19:                              # %.critedge.thread
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_c)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_23
.LBB16_20:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_p)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_23
# %bb.21:
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB16_23
.LBB16_22:
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_c)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_20
.LBB16_23:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_p)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB16_26
# %bb.24:
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(find_winner_c)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB16_27
# %bb.25:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_27
.LBB16_26:
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB16_27:
	move	$a0, $zero
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
.LBB16_28:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	main, .Lfunc_end16-main
                                        # -- End function
	.type	DEPTH,@object                   # @DEPTH
	.data
	.globl	DEPTH
	.p2align	2, 0x0
DEPTH:
	.word	3                               # 0x3
	.size	DEPTH, 4

	.type	off,@object                     # @off
	.bss
	.globl	off
	.p2align	2, 0x0
off:
	.word	0                               # 0x0
	.size	off, 4

	.type	C4VERT,@object                  # @C4VERT
	.globl	C4VERT
	.p2align	3, 0x0
C4VERT:
	.dword	0                               # 0x0
	.size	C4VERT, 8

	.type	C3VERT,@object                  # @C3VERT
	.globl	C3VERT
	.p2align	3, 0x0
C3VERT:
	.dword	0                               # 0x0
	.size	C3VERT, 8

	.type	C2VERT,@object                  # @C2VERT
	.globl	C2VERT
	.p2align	3, 0x0
C2VERT:
	.dword	0                               # 0x0
	.size	C2VERT, 8

	.type	C4HORIZ,@object                 # @C4HORIZ
	.globl	C4HORIZ
	.p2align	3, 0x0
C4HORIZ:
	.dword	0                               # 0x0
	.size	C4HORIZ, 8

	.type	C3HORIZ,@object                 # @C3HORIZ
	.globl	C3HORIZ
	.p2align	3, 0x0
C3HORIZ:
	.dword	0                               # 0x0
	.size	C3HORIZ, 8

	.type	C2HORIZ,@object                 # @C2HORIZ
	.globl	C2HORIZ
	.p2align	3, 0x0
C2HORIZ:
	.dword	0                               # 0x0
	.size	C2HORIZ, 8

	.type	C4UP_R,@object                  # @C4UP_R
	.globl	C4UP_R
	.p2align	3, 0x0
C4UP_R:
	.dword	0                               # 0x0
	.size	C4UP_R, 8

	.type	C3UP_R,@object                  # @C3UP_R
	.globl	C3UP_R
	.p2align	3, 0x0
C3UP_R:
	.dword	0                               # 0x0
	.size	C3UP_R, 8

	.type	C2UP_R,@object                  # @C2UP_R
	.globl	C2UP_R
	.p2align	3, 0x0
C2UP_R:
	.dword	0                               # 0x0
	.size	C2UP_R, 8

	.type	C4UP_L,@object                  # @C4UP_L
	.globl	C4UP_L
	.p2align	3, 0x0
C4UP_L:
	.dword	0                               # 0x0
	.size	C4UP_L, 8

	.type	C3UP_L,@object                  # @C3UP_L
	.globl	C3UP_L
	.p2align	3, 0x0
C3UP_L:
	.dword	0                               # 0x0
	.size	C3UP_L, 8

	.type	C2UP_L,@object                  # @C2UP_L
	.globl	C2UP_L
	.p2align	3, 0x0
C2UP_L:
	.dword	0                               # 0x0
	.size	C2UP_L, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d "
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%c "
	.size	.L.str.2, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ERROR: Faulty column: %d.\n"
	.size	.L.str.4, 27

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Compile date: %s\n"
	.size	.L.str.6, 18

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"today"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Compiler switches: %s\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.space	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"r"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"test.in"
	.size	.L.str.11, 8

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%d"
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Recursion depth: %d\n"
	.size	.L.str.14, 21

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Alpha-Beta pruning: %s\n"
	.size	.L.str.15, 24

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"on"
	.size	.L.str.16, 3

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"off"
	.size	.L.str.17, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"----------------"
	.size	.Lstr, 17

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"ERROR: Unknown player."
	.size	.Lstr.1, 23

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"ERROR: Could not open indata file"
	.size	.Lstr.2, 34

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Using pruning method 1"
	.size	.Lstr.3, 23

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Using pruning method 2"
	.size	.Lstr.4, 23

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"The player is the winner."
	.size	.Lstr.5, 26

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"The computer is the winner."
	.size	.Lstr.6, 28

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"It's a tie."
	.size	.Lstr.7, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DEPTH
