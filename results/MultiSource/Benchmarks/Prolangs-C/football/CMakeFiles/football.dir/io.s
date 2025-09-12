	.file	"io.c"
	.text
	.globl	prompt                          # -- Begin function prompt
	.p2align	5
	.type	prompt,@function
prompt:                                 # @prompt
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(got_unused_responce)
	st.w	$s0, $a0, %pc_lo12(got_unused_responce)
.LBB0_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	prompt, .Lfunc_end0-prompt
                                        # -- End function
	.globl	get_responce                    # -- Begin function get_responce
	.p2align	5
	.type	get_responce,@function
get_responce:                           # @get_responce
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(got_unused_responce)
	ld.w	$a1, $a3, %pc_lo12(got_unused_responce)
	pcalau12i	$s0, %pc_hi20(white_space.commentP)
	beqz	$a1, .LBB1_13
# %bb.1:
	ld.b	$a1, $s0, %pc_lo12(white_space.commentP)
	st.w	$zero, $a3, %pc_lo12(got_unused_responce)
.LBB1_2:                                # %.critedge.preheader
	pcalau12i	$a0, %pc_hi20(responce)
	addi.d	$a0, $a0, %pc_lo12(responce)
	ori	$a2, $zero, 37
	ori	$a3, $zero, 10
	ori	$a4, $zero, 32
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1536
	lu32i.d	$a6, 1
	ld.bu	$a7, $a0, 0
	ori	$t0, $zero, 1
	bne	$a7, $a2, .LBB1_5
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:
	move	$t0, $zero
	.p2align	4, , 16
.LBB1_4:                                # %.sink.split35
                                        # =>This Inner Loop Header: Depth=1
	st.b	$t0, $s0, %pc_lo12(white_space.commentP)
	move	$a1, $t0
	addi.d	$a0, $a0, 1
	ld.bu	$a7, $a0, 0
	ori	$t0, $zero, 1
	beq	$a7, $a2, .LBB1_4
.LBB1_5:                                # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a7, .LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 1
	beq	$a7, $a3, .LBB1_3
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_5 Depth=1
	bltu	$a4, $a7, .LBB1_12
# %bb.9:                                #   in Loop: Header=BB1_5 Depth=1
	sll.d	$a1, $a5, $a7
	and	$a1, $a1, $a6
	beqz	$a1, .LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a1, $zero
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $a0, 1
	ld.bu	$a7, $a0, 0
	ori	$t0, $zero, 1
	bne	$a7, $a2, .LBB1_5
	b	.LBB1_4
.LBB1_12:                               # %.critedge2
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_13:
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(responce)
	addi.d	$fp, $a0, %pc_lo12(responce)
	ori	$a1, $zero, 50
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(in_fileP)
	ld.d	$a0, $a0, %got_pc_lo12(in_fileP)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_15
# %bb.14:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(responce)
	addi.d	$a2, $a2, %pc_lo12(responce)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_15:
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB1_20
# %bb.16:                               # %.lr.ph.i.preheader
	addi.d	$a1, $fp, 1
	ori	$a2, $zero, 25
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_18 Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a1, $a1, 1
	beqz	$a0, .LBB1_20
.LBB1_18:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a0, -65
	bltu	$a2, $a3, .LBB1_17
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	addi.d	$a0, $a0, 32
	st.b	$a0, $a1, -1
	b	.LBB1_17
.LBB1_20:                               # %lower_case.exit
	pcalau12i	$a0, %pc_hi20(responce)
	addi.d	$fp, $a0, %pc_lo12(responce)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, %pc_lo12(white_space.commentP)
	blez	$a0, .LBB1_2
# %bb.21:                               # %.lr.ph.preheader
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, -1
	ori	$a2, $zero, 37
	ori	$a3, $zero, 10
	ori	$a4, $zero, 32
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1536
	lu32i.d	$a6, 1
	move	$a7, $a1
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_22:                               # %.sink.split
                                        #   in Loop: Header=BB1_24 Depth=1
	addi.d	$a7, $t0, -37
	sltui	$a1, $a7, 1
	sltui	$a7, $a7, 1
	st.b	$a7, $s0, %pc_lo12(white_space.commentP)
	move	$a7, $a1
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=1
	st.b	$zero, $a0, 0
	addi.d	$a0, $a0, -1
	bltu	$a0, $fp, .LBB1_2
.LBB1_24:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a0, 0
	beq	$t0, $a2, .LBB1_22
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=1
	ori	$a7, $zero, 1
	beq	$t0, $a3, .LBB1_22
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_27:                               #   in Loop: Header=BB1_24 Depth=1
	bltu	$a4, $t0, .LBB1_2
# %bb.28:                               #   in Loop: Header=BB1_24 Depth=1
	sll.d	$a7, $a5, $t0
	and	$a7, $a7, $a6
	beqz	$a7, .LBB1_2
# %bb.29:                               #   in Loop: Header=BB1_24 Depth=1
	move	$a7, $zero
	b	.LBB1_23
.Lfunc_end1:
	.size	get_responce, .Lfunc_end1-get_responce
                                        # -- End function
	.globl	str_to_int                      # -- Begin function str_to_int
	.p2align	5
	.type	str_to_int,@function
str_to_int:                             # @str_to_int
# %bb.0:
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB2_4
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $a0
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 3
	alsl.d	$a0, $a0, $a3, 1
	addi.d	$a3, $a2, -48
	andi	$a2, $a3, 255
	sltui	$a4, $a2, 10
	ld.bu	$a2, $a1, 0
	maskeqz	$a3, $a3, $a4
	ext.w.b	$a3, $a3
	add.w	$a0, $a0, $a3
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB2_2
# %bb.3:                                # %._crit_edge
	ret
.LBB2_4:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	str_to_int, .Lfunc_end2-str_to_int
                                        # -- End function
	.globl	find_teams_rank                 # -- Begin function find_teams_rank
	.p2align	5
	.type	find_teams_rank,@function
find_teams_rank:                        # @find_teams_rank
# %bb.0:
	ld.w	$a3, $a0, 4
	ori	$a2, $zero, 1
	beq	$a3, $a1, .LBB3_28
# %bb.1:
	ld.w	$a3, $a0, 8
	ori	$a2, $zero, 2
	beq	$a3, $a1, .LBB3_28
# %bb.2:
	ld.w	$a3, $a0, 12
	ori	$a2, $zero, 3
	beq	$a3, $a1, .LBB3_28
# %bb.3:
	ld.w	$a3, $a0, 16
	ori	$a2, $zero, 4
	beq	$a3, $a1, .LBB3_28
# %bb.4:
	ld.w	$a3, $a0, 20
	ori	$a2, $zero, 5
	beq	$a3, $a1, .LBB3_28
# %bb.5:
	ld.w	$a3, $a0, 24
	ori	$a2, $zero, 6
	beq	$a3, $a1, .LBB3_28
# %bb.6:
	ld.w	$a3, $a0, 28
	ori	$a2, $zero, 7
	beq	$a3, $a1, .LBB3_28
# %bb.7:
	ld.w	$a3, $a0, 32
	ori	$a2, $zero, 8
	beq	$a3, $a1, .LBB3_28
# %bb.8:
	ld.w	$a3, $a0, 36
	ori	$a2, $zero, 9
	beq	$a3, $a1, .LBB3_28
# %bb.9:
	ld.w	$a3, $a0, 40
	ori	$a2, $zero, 10
	beq	$a3, $a1, .LBB3_28
# %bb.10:
	ld.w	$a3, $a0, 44
	ori	$a2, $zero, 11
	beq	$a3, $a1, .LBB3_28
# %bb.11:
	ld.w	$a3, $a0, 48
	ori	$a2, $zero, 12
	beq	$a3, $a1, .LBB3_28
# %bb.12:
	ld.w	$a3, $a0, 52
	ori	$a2, $zero, 13
	beq	$a3, $a1, .LBB3_28
# %bb.13:
	ld.w	$a3, $a0, 56
	ori	$a2, $zero, 14
	beq	$a3, $a1, .LBB3_28
# %bb.14:
	ld.w	$a3, $a0, 60
	ori	$a2, $zero, 15
	beq	$a3, $a1, .LBB3_28
# %bb.15:
	ld.w	$a3, $a0, 64
	ori	$a2, $zero, 16
	beq	$a3, $a1, .LBB3_28
# %bb.16:
	ld.w	$a3, $a0, 68
	ori	$a2, $zero, 17
	beq	$a3, $a1, .LBB3_28
# %bb.17:
	ld.w	$a3, $a0, 72
	ori	$a2, $zero, 18
	beq	$a3, $a1, .LBB3_28
# %bb.18:
	ld.w	$a3, $a0, 76
	ori	$a2, $zero, 19
	beq	$a3, $a1, .LBB3_28
# %bb.19:
	ld.w	$a3, $a0, 80
	ori	$a2, $zero, 20
	beq	$a3, $a1, .LBB3_28
# %bb.20:
	ld.w	$a3, $a0, 84
	ori	$a2, $zero, 21
	beq	$a3, $a1, .LBB3_28
# %bb.21:
	ld.w	$a3, $a0, 88
	ori	$a2, $zero, 22
	beq	$a3, $a1, .LBB3_28
# %bb.22:
	ld.w	$a3, $a0, 92
	ori	$a2, $zero, 23
	beq	$a3, $a1, .LBB3_28
# %bb.23:
	ld.w	$a3, $a0, 96
	ori	$a2, $zero, 24
	beq	$a3, $a1, .LBB3_28
# %bb.24:
	ld.w	$a3, $a0, 100
	ori	$a2, $zero, 25
	beq	$a3, $a1, .LBB3_28
# %bb.25:
	ld.w	$a3, $a0, 104
	ori	$a2, $zero, 26
	beq	$a3, $a1, .LBB3_28
# %bb.26:
	ld.w	$a3, $a0, 108
	ori	$a2, $zero, 27
	beq	$a3, $a1, .LBB3_28
# %bb.27:
	ld.w	$a0, $a0, 112
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 28
	maskeqz	$a2, $a1, $a0
.LBB3_28:
	move	$a0, $a2
	ret
.Lfunc_end3:
	.size	find_teams_rank, .Lfunc_end3-find_teams_rank
                                        # -- End function
	.globl	white_space                     # -- Begin function white_space
	.p2align	5
	.type	white_space,@function
white_space:                            # @white_space
# %bb.0:
	ori	$a1, $zero, 37
	bne	$a0, $a1, .LBB4_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(white_space.commentP)
	ori	$a0, $zero, 1
	st.b	$a0, $a1, %pc_lo12(white_space.commentP)
	ret
.LBB4_2:
	pcalau12i	$a1, %pc_hi20(white_space.commentP)
	ld.bu	$a2, $a1, %pc_lo12(white_space.commentP)
	beqz	$a2, .LBB4_5
# %bb.3:
	ori	$a2, $zero, 10
	move	$a3, $a0
	ori	$a0, $zero, 1
	bne	$a3, $a2, .LBB4_7
# %bb.4:
	st.b	$zero, $a1, %pc_lo12(white_space.commentP)
	ret
.LBB4_5:
	ori	$a1, $zero, 32
	bltu	$a1, $a0, .LBB4_8
# %bb.6:
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	ori	$a1, $zero, 1536
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	beqz	$a1, .LBB4_8
.LBB4_7:
	ret
.LBB4_8:
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	white_space, .Lfunc_end4-white_space
                                        # -- End function
	.globl	clear_screen                    # -- Begin function clear_screen
	.p2align	5
	.type	clear_screen,@function
clear_screen:                           # @clear_screen
# %bb.0:
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end5:
	.size	clear_screen, .Lfunc_end5-clear_screen
                                        # -- End function
	.globl	lower_case                      # -- Begin function lower_case
	.p2align	5
	.type	lower_case,@function
lower_case:                             # @lower_case
# %bb.0:
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB6_5
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 25
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB6_5
.LBB6_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a1, -65
	bltu	$a2, $a3, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a1, $a1, 32
	st.b	$a1, $a0, -1
	b	.LBB6_2
.LBB6_5:                                # %._crit_edge
	ret
.Lfunc_end6:
	.size	lower_case, .Lfunc_end6-lower_case
                                        # -- End function
	.globl	skip_white_space                # -- Begin function skip_white_space
	.p2align	5
	.type	skip_white_space,@function
skip_white_space:                       # @skip_white_space
# %bb.0:
	pcalau12i	$a1, %pc_hi20(white_space.commentP)
	ld.b	$a7, $a1, %pc_lo12(white_space.commentP)
	ori	$a2, $zero, 37
	ori	$a3, $zero, 10
	ori	$a4, $zero, 32
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1536
	lu32i.d	$a6, 1
	ld.bu	$t0, $a0, 0
	bne	$t0, $a2, .LBB7_3
	.p2align	4, , 16
.LBB7_1:                                # %.thread.sink.split
	addi.d	$t0, $t0, -37
	sltui	$a7, $t0, 1
	sltui	$t0, $t0, 1
	st.b	$t0, $a1, %pc_lo12(white_space.commentP)
.LBB7_2:                                # %.thread
	addi.d	$a0, $a0, 1
	ld.bu	$t0, $a0, 0
	beq	$t0, $a2, .LBB7_1
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB7_6
# %bb.4:
	beq	$t0, $a3, .LBB7_1
# %bb.5:
	ori	$a7, $zero, 1
	bnez	$t0, .LBB7_2
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	bltu	$a4, $t0, .LBB7_9
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	sll.d	$a7, $a5, $t0
	and	$a7, $a7, $a6
	beqz	$a7, .LBB7_9
# %bb.8:                                #   in Loop: Header=BB7_3 Depth=1
	move	$a7, $zero
	addi.d	$a0, $a0, 1
	ld.bu	$t0, $a0, 0
	bne	$t0, $a2, .LBB7_3
	b	.LBB7_1
.LBB7_9:                                # %.critedge
	ret
.Lfunc_end7:
	.size	skip_white_space, .Lfunc_end7-skip_white_space
                                        # -- End function
	.globl	end_of_line                     # -- Begin function end_of_line
	.p2align	5
	.type	end_of_line,@function
end_of_line:                            # @end_of_line
# %bb.0:
	ld.bu	$a0, $a0, 0
	sltui	$a0, $a0, 1
	ret
.Lfunc_end8:
	.size	end_of_line, .Lfunc_end8-end_of_line
                                        # -- End function
	.globl	find_next_name                  # -- Begin function find_next_name
	.p2align	5
	.type	find_next_name,@function
find_next_name:                         # @find_next_name
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(white_space.commentP)
	ld.b	$a3, $a2, %pc_lo12(white_space.commentP)
	ori	$a4, $zero, 37
	ori	$a5, $zero, 10
	ori	$a6, $zero, 32
	ori	$a7, $zero, 1
	ori	$t0, $zero, 1536
	lu32i.d	$t0, 1
	move	$t1, $a3
	ld.bu	$fp, $a1, 0
	bne	$fp, $a4, .LBB9_3
	.p2align	4, , 16
.LBB9_1:                                # %.thread.sink.split.i
	addi.d	$t1, $fp, -37
	sltui	$a3, $t1, 1
	sltui	$t1, $t1, 1
	st.b	$t1, $a2, %pc_lo12(white_space.commentP)
	move	$t1, $a3
.LBB9_2:                                # %.thread.i
	addi.d	$a1, $a1, 1
	ld.bu	$fp, $a1, 0
	beq	$fp, $a4, .LBB9_1
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	andi	$t1, $t1, 1
	beqz	$t1, .LBB9_6
# %bb.4:
	beq	$fp, $a5, .LBB9_1
# %bb.5:
	ori	$t1, $zero, 1
	bnez	$fp, .LBB9_2
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_6:                                #   in Loop: Header=BB9_3 Depth=1
	bltu	$a6, $fp, .LBB9_9
# %bb.7:                                #   in Loop: Header=BB9_3 Depth=1
	sll.d	$t1, $a7, $fp
	and	$t1, $t1, $t0
	beqz	$t1, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_3 Depth=1
	move	$t1, $zero
	addi.d	$a1, $a1, 1
	ld.bu	$fp, $a1, 0
	bne	$fp, $a4, .LBB9_3
	b	.LBB9_1
.LBB9_9:                                # %.lr.ph
	andi	$a3, $a3, 1
	beqz	$a3, .LBB9_11
# %bb.10:
	move	$s0, $a1
	b	.LBB9_17
.LBB9_11:
	ori	$a3, $zero, 32
	ori	$a4, $zero, 37
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1536
	lu32i.d	$a6, 1
	move	$a7, $a1
	b	.LBB9_13
	.p2align	4, , 16
.LBB9_12:                               # %white_space.exit
                                        #   in Loop: Header=BB9_13 Depth=1
	ld.bu	$fp, $a7, 1
	addi.d	$s0, $a7, 1
	move	$a7, $s0
	beq	$fp, $a4, .LBB9_16
.LBB9_13:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a3, $fp, .LBB9_12
# %bb.14:                               # %.lr.ph.split
                                        #   in Loop: Header=BB9_13 Depth=1
	sll.d	$t0, $a5, $fp
	and	$t0, $t0, $a6
	beqz	$t0, .LBB9_12
# %bb.15:                               # %.loopexit.loopexit
	move	$s0, $a7
	b	.LBB9_17
.LBB9_16:                               # %._crit_edge
	ori	$a3, $zero, 1
	st.b	$a3, $a2, %pc_lo12(white_space.commentP)
	ori	$fp, $zero, 37
.LBB9_17:                               # %.loopexit
	st.b	$zero, $s0, 0
	pcaddu18i	$ra, %call36(find_name)
	jirl	$ra, $ra, 0
	st.b	$fp, $s0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	find_next_name, .Lfunc_end9-find_next_name
                                        # -- End function
	.globl	matches                         # -- Begin function matches
	.p2align	5
	.type	matches,@function
matches:                                # @matches
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a3, $a0, 0
	ori	$a0, $zero, 37
	pcalau12i	$s3, %pc_hi20(white_space.commentP)
	bne	$a3, $a0, .LBB10_3
# %bb.1:
	move	$a0, $zero
	move	$t1, $zero
.LBB10_2:                               # %._crit_edge
	ori	$s4, $zero, 1
	st.b	$s4, $s3, %pc_lo12(white_space.commentP)
	move	$s0, $t1
	blt	$a0, $a2, .LBB10_14
	b	.LBB10_12
.LBB10_3:                               # %.lr.ph
	ld.bu	$a0, $s3, %pc_lo12(white_space.commentP)
	beqz	$a0, .LBB10_6
# %bb.4:                                # %.split.us
	ori	$a0, $zero, 10
	bne	$a3, $a0, .LBB10_11
# %bb.5:
	move	$s4, $zero
	move	$a0, $zero
	move	$s0, $zero
	st.b	$zero, $s3, %pc_lo12(white_space.commentP)
	blt	$a0, $a2, .LBB10_14
	b	.LBB10_12
.LBB10_6:                               # %.lr.ph.split.preheader
	move	$a0, $zero
	move	$s0, $zero
	addi.d	$a4, $fp, 1
	ori	$a5, $zero, 32
	ori	$a6, $zero, 37
	ori	$a7, $zero, 1
	ori	$t0, $zero, 1537
	lu32i.d	$t0, 1
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_7:                               #   in Loop: Header=BB10_8 Depth=1
	ldx.bu	$a3, $a4, $s0
	addi.d	$t1, $s0, 1
	addi.w	$a0, $a0, 1
	move	$s0, $t1
	beq	$a3, $a6, .LBB10_2
.LBB10_8:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a5, $a3, .LBB10_7
# %bb.9:                                # %.lr.ph.split
                                        #   in Loop: Header=BB10_8 Depth=1
	sll.d	$a3, $a7, $a3
	and	$a3, $a3, $t0
	beqz	$a3, .LBB10_7
# %bb.10:                               # %.critedge.loopexit
	move	$s4, $zero
	bge	$a0, $a2, .LBB10_12
	b	.LBB10_14
.LBB10_11:
	move	$a0, $zero
	move	$s0, $zero
	ori	$s4, $zero, 1
	blt	$a0, $a2, .LBB10_14
.LBB10_12:
	move	$s2, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s0, .LBB10_15
# %bb.13:
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_17
.LBB10_14:
	move	$a0, $zero
	b	.LBB10_16
.LBB10_15:
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
.LBB10_16:                              # %white_space.exit25
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_17:
	ldx.bu	$a1, $fp, $s1
	ori	$a0, $zero, 37
	bne	$a1, $a0, .LBB10_19
# %bb.18:
	ori	$a0, $zero, 1
	st.b	$a0, $s3, %pc_lo12(white_space.commentP)
	b	.LBB10_16
.LBB10_19:
	beqz	$s4, .LBB10_22
# %bb.20:
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB10_16
# %bb.21:
	st.b	$zero, $s3, %pc_lo12(white_space.commentP)
	b	.LBB10_16
.LBB10_22:
	ori	$a0, $zero, 32
	bltu	$a0, $a1, .LBB10_14
# %bb.23:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a1, $zero, 1536
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	bnez	$a1, .LBB10_16
	b	.LBB10_14
.Lfunc_end10:
	.size	matches, .Lfunc_end10-matches
                                        # -- End function
	.globl	skip_first                      # -- Begin function skip_first
	.p2align	5
	.type	skip_first,@function
skip_first:                             # @skip_first
# %bb.0:
	ld.bu	$a2, $a0, 0
	ori	$a4, $zero, 37
	ori	$a3, $zero, 1
	pcalau12i	$a1, %pc_hi20(white_space.commentP)
	bne	$a2, $a4, .LBB11_2
.LBB11_1:                               # %.critedge.sink.split
	st.b	$a3, $a1, %pc_lo12(white_space.commentP)
	move	$a2, $a4
	b	.LBB11_10
.LBB11_2:                               # %.lr.ph
	ld.bu	$a3, $a1, %pc_lo12(white_space.commentP)
	beqz	$a3, .LBB11_5
# %bb.3:                                # %.split.us
	ori	$a4, $zero, 10
	ori	$a3, $zero, 1
	bne	$a2, $a4, .LBB11_10
# %bb.4:
	move	$a3, $zero
	b	.LBB11_1
.LBB11_5:                               # %.lr.ph.split.preheader
	ori	$a3, $zero, 32
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1537
	lu32i.d	$a6, 1
	b	.LBB11_7
	.p2align	4, , 16
.LBB11_6:                               #   in Loop: Header=BB11_7 Depth=1
	ld.bu	$a2, $a0, 1
	addi.d	$a7, $a0, 1
	ori	$a4, $zero, 37
	move	$a0, $a7
	beq	$a2, $a4, .LBB11_21
.LBB11_7:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a3, $a2, .LBB11_6
# %bb.8:                                # %.lr.ph.split
                                        #   in Loop: Header=BB11_7 Depth=1
	sll.d	$a4, $a5, $a2
	and	$a4, $a4, $a6
	beqz	$a4, .LBB11_6
# %bb.9:                                # %.critedge.preheader.loopexit
	move	$a3, $zero
.LBB11_10:                              # %.critedge.preheader
	ori	$a4, $zero, 37
	ori	$a5, $zero, 10
	ori	$a6, $zero, 32
	ori	$a7, $zero, 1
	ori	$t0, $zero, 1536
	lu32i.d	$t0, 1
	b	.LBB11_13
	.p2align	4, , 16
.LBB11_11:                              # %.thread.sink.split
                                        #   in Loop: Header=BB11_13 Depth=1
	addi.d	$a2, $a2, -37
	sltui	$a3, $a2, 1
	sltui	$a2, $a2, 1
	st.b	$a2, $a1, %pc_lo12(white_space.commentP)
.LBB11_12:                              # %.thread
                                        #   in Loop: Header=BB11_13 Depth=1
	ld.bu	$a2, $a0, 1
	addi.d	$a0, $a0, 1
.LBB11_13:                              # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	beq	$a2, $a4, .LBB11_11
# %bb.14:                               #   in Loop: Header=BB11_13 Depth=1
	andi	$a3, $a3, 1
	beqz	$a3, .LBB11_17
# %bb.15:                               #   in Loop: Header=BB11_13 Depth=1
	beq	$a2, $a5, .LBB11_11
# %bb.16:                               #   in Loop: Header=BB11_13 Depth=1
	ori	$a3, $zero, 1
	bnez	$a2, .LBB11_12
	b	.LBB11_20
	.p2align	4, , 16
.LBB11_17:                              #   in Loop: Header=BB11_13 Depth=1
	bltu	$a6, $a2, .LBB11_20
# %bb.18:                               #   in Loop: Header=BB11_13 Depth=1
	sll.d	$a2, $a7, $a2
	and	$a2, $a2, $t0
	beqz	$a2, .LBB11_20
# %bb.19:                               #   in Loop: Header=BB11_13 Depth=1
	move	$a3, $zero
	b	.LBB11_12
.LBB11_20:                              # %.critedge2
	ret
.LBB11_21:
	ori	$a3, $zero, 1
	move	$a0, $a7
	b	.LBB11_1
.Lfunc_end11:
	.size	skip_first, .Lfunc_end11-skip_first
                                        # -- End function
	.globl	find_nth_place_team             # -- Begin function find_nth_place_team
	.p2align	5
	.type	find_nth_place_team,@function
find_nth_place_team:                    # @find_nth_place_team
# %bb.0:
	ori	$a4, $zero, 999
	bne	$a1, $a4, .LBB12_4
# %bb.1:                                # %.split.us
	bne	$a2, $a4, .LBB12_10
# %bb.2:                                # %.split.us.split.us.preheader
	addi.w	$a1, $a3, -1
	ori	$a2, $zero, 27
	bltu	$a2, $a1, .LBB12_21
# %bb.3:                                # %.split23.us.split.us.split.loop.exit31
	slli.d	$a1, $a3, 2
	ldx.w	$a0, $a0, $a1
	ret
.LBB12_4:                               # %.split
	bne	$a2, $a4, .LBB12_15
# %bb.5:                                # %.split.split.us.preheader
	ori	$a2, $zero, 1
	ori	$a5, $zero, 4
	pcalau12i	$a4, %got_pc_hi20(divisions)
	ld.d	$a6, $a4, %got_pc_lo12(divisions)
	ori	$a7, $zero, 116
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_6:                               #   in Loop: Header=BB12_7 Depth=1
	addi.d	$a5, $a5, 4
	beq	$a5, $a7, .LBB12_21
.LBB12_7:                               # %.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a0, $a5
	slli.d	$t0, $a4, 3
	ldx.w	$t0, $a6, $t0
	bne	$t0, $a1, .LBB12_6
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=1
	beq	$a2, $a3, .LBB12_22
# %bb.9:                                #   in Loop: Header=BB12_7 Depth=1
	addi.w	$a2, $a2, 1
	b	.LBB12_6
.LBB12_10:                              # %.split.us.split.preheader
	ori	$a1, $zero, 1
	ori	$a5, $zero, 4
	pcalau12i	$a4, %got_pc_hi20(divisions)
	ld.d	$a6, $a4, %got_pc_lo12(divisions)
	ori	$a7, $zero, 116
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_11:                              #   in Loop: Header=BB12_12 Depth=1
	addi.d	$a5, $a5, 4
	beq	$a5, $a7, .LBB12_21
.LBB12_12:                              # %.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a0, $a5
	alsl.d	$t0, $a4, $a6, 3
	ld.w	$t0, $t0, 4
	bne	$t0, $a2, .LBB12_11
# %bb.13:                               #   in Loop: Header=BB12_12 Depth=1
	beq	$a1, $a3, .LBB12_22
# %bb.14:                               #   in Loop: Header=BB12_12 Depth=1
	addi.w	$a1, $a1, 1
	b	.LBB12_11
.LBB12_15:                              # %.split.split.preheader
	ori	$a5, $zero, 1
	ori	$a6, $zero, 4
	pcalau12i	$a4, %got_pc_hi20(divisions)
	ld.d	$a7, $a4, %got_pc_lo12(divisions)
	ori	$t0, $zero, 116
	b	.LBB12_17
	.p2align	4, , 16
.LBB12_16:                              #   in Loop: Header=BB12_17 Depth=1
	addi.d	$a6, $a6, 4
	beq	$a6, $t0, .LBB12_21
.LBB12_17:                              # %.split.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a0, $a6
	slli.d	$t1, $a4, 3
	ldx.w	$t1, $a7, $t1
	bne	$t1, $a1, .LBB12_16
# %bb.18:                               #   in Loop: Header=BB12_17 Depth=1
	alsl.d	$t1, $a4, $a7, 3
	ld.w	$t1, $t1, 4
	bne	$t1, $a2, .LBB12_16
# %bb.19:                               #   in Loop: Header=BB12_17 Depth=1
	beq	$a5, $a3, .LBB12_22
# %bb.20:                               #   in Loop: Header=BB12_17 Depth=1
	addi.w	$a5, $a5, 1
	b	.LBB12_16
.LBB12_21:
	move	$a4, $zero
.LBB12_22:                              # %.split23.us
	move	$a0, $a4
	ret
.Lfunc_end12:
	.size	find_nth_place_team, .Lfunc_end12-find_nth_place_team
                                        # -- End function
	.globl	display_info                    # -- Begin function display_info
	.p2align	5
	.type	display_info,@function
display_info:                           # @display_info
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
	fst.d	$fs0, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 192                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 30
	mul.d	$a0, $fp, $a0
	pcalau12i	$a1, %got_pc_hi20(team)
	ld.d	$a1, $a1, %got_pc_lo12(team)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 92
	mul.d	$a0, $fp, $a0
	pcalau12i	$a1, %got_pc_hi20(team_info)
	ld.d	$a1, $a1, %got_pc_lo12(team_info)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(divisions)
	ld.d	$s1, $a1, %got_pc_lo12(divisions)
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $fp, $s1, 3
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(team_info_wi_conf)
	ld.d	$a1, $a1, %got_pc_lo12(team_info_wi_conf)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(team_info_wi_div)
	ld.d	$a1, $a1, %got_pc_lo12(team_info_wi_div)
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(sched)
	ld.d	$a0, $a0, %got_pc_lo12(sched)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$s3, $a0, 192
	pcalau12i	$a0, %got_pc_hi20(num_games)
	ld.d	$s8, $a0, %got_pc_lo12(num_games)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI13_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI13_0)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(standings)
	ld.d	$s7, $a0, %got_pc_lo12(standings)
	ori	$s6, $zero, 116
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs0, $a0
	movgr2fr.d	$fs1, $zero
	ori	$fp, $zero, 13
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	b	.LBB13_4
.LBB13_1:                               #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sltui	$s5, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(net_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(net_ranks)
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -14
	maskeqz	$a0, $a0, $s5
	masknez	$a1, $a1, $s5
	or	$s5, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(net_ranks_nfl)
	ld.d	$a0, $a0, %got_pc_lo12(net_ranks_nfl)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	movfr2gr.d	$a3, $fs2
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
.LBB13_2:                               # %find_nth_place_team.exit.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s0
	move	$a2, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 13
	.p2align	4, , 16
.LBB13_3:                               # %find_nth_place_team.exit.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 180
	ori	$a0, $zero, 22
	beq	$s2, $a0, .LBB13_83
.LBB13_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_13 Depth 2
                                        #     Child Loop BB13_40 Depth 2
                                        #     Child Loop BB13_30 Depth 2
                                        #     Child Loop BB13_35 Depth 2
	ld.w	$a0, $s8, 0
	bge	$a0, $s2, .LBB13_7
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
.LBB13_6:                               #   in Loop: Header=BB13_4 Depth=1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, -1
	ori	$a1, $zero, 20
	bgeu	$a1, $a0, .LBB13_22
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_7:                               # %.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a0, $zero, 180
	mul.d	$a7, $s2, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a7
	ld.w	$a3, $a4, 20
	addi.d	$a1, $a4, 12
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bne	$a3, $a0, .LBB13_9
# %bb.8:                                #   in Loop: Header=BB13_4 Depth=1
	move	$a3, $a0
	b	.LBB13_17
	.p2align	4, , 16
.LBB13_9:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.w	$a4, $a4, 16
	ori	$a2, $zero, 1
	bne	$a4, $a0, .LBB13_12
.LBB13_10:                              # %.critedge.split.loop.exit285
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a4, $a2
	addi.w	$a4, $a4, 0
	ori	$a5, $zero, 15
	bne	$a4, $a5, .LBB13_17
.LBB13_11:                              #   in Loop: Header=BB13_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	b	.LBB13_6
.LBB13_12:                              # %.lr.ph315.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a2, $zero, 1
	ori	$a4, $zero, 2
	move	$a1, $s3
	.p2align	4, , 16
.LBB13_13:                              # %.lr.ph315
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 20
	move	$a5, $a2
	beq	$a3, $a0, .LBB13_16
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB13_13 Depth=2
	ld.w	$a6, $a1, 16
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a5, 1
	beq	$a6, $a0, .LBB13_10
# %bb.15:                               # %.lr.ph
                                        #   in Loop: Header=BB13_13 Depth=2
	addi.d	$a4, $a4, 1
	bgeu	$fp, $a5, .LBB13_13
	b	.LBB13_10
.LBB13_16:                              # %.critedge.loopexit
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a2, $a5, 1
	addi.d	$a1, $a1, 12
	move	$a3, $a0
	addi.w	$a4, $a4, 0
	ori	$a5, $zero, 15
	beq	$a4, $a5, .LBB13_11
	.p2align	4, , 16
.LBB13_17:                              # %.critedge.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$fp, $s1
	move	$s1, $s7
	ld.w	$a1, $a1, 4
	xor	$a4, $a1, $a0
	ori	$s6, $zero, 8
	move	$a0, $s0
	ori	$s7, $zero, 4
	sltui	$s5, $a4, 1
	pcalau12i	$a4, %got_pc_hi20(scores)
	ld.d	$a4, $a4, %got_pc_lo12(scores)
	add.d	$a5, $a4, $a7
	slli.d	$a4, $a2, 3
	alsl.d	$a2, $a2, $a4, 2
	add.d	$s8, $a5, $a2
	masknez	$a2, $a1, $s5
	maskeqz	$a1, $a3, $s5
	or	$a4, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	masknez	$a1, $a1, $s5
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	maskeqz	$a2, $a2, $s5
	or	$a1, $a2, $a1
	masknez	$a2, $s6, $s5
	maskeqz	$a3, $s7, $s5
	or	$s4, $a3, $a2
	ori	$a2, $zero, 30
	mul.d	$a3, $a4, $a2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 15
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ldx.w	$s4, $s8, $s4
	addi.w	$a0, $zero, -1
	beq	$s4, $a0, .LBB13_20
# %bb.18:                               # %.critedge.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	masknez	$a1, $s7, $s5
	maskeqz	$a2, $s6, $s5
	or	$a1, $a2, $a1
	ldx.w	$s5, $s8, $a1
	beq	$s5, $a0, .LBB13_20
# %bb.19:                               #   in Loop: Header=BB13_4 Depth=1
	xor	$a0, $s4, $s5
	sltui	$a0, $a0, 1
	slt	$a1, $s5, $s4
	ori	$a2, $zero, 76
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 87
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 84
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_21
.LBB13_20:                              #   in Loop: Header=BB13_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB13_21:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ori	$s6, $zero, 116
	move	$s7, $s1
	move	$s1, $fp
	ori	$fp, $zero, 13
	addi.d	$a0, $s2, -1
	ori	$a1, $zero, 20
	bltu	$a1, $a0, .LBB13_3
.LBB13_22:                              #   in Loop: Header=BB13_4 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB13_23:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 4
	addi.d	$a3, $s2, -2
	ori	$a4, $zero, 999
	bne	$a1, $a4, .LBB13_26
# %bb.24:                               # %.split.us.i
                                        #   in Loop: Header=BB13_4 Depth=1
	bne	$a0, $a4, .LBB13_32
# %bb.25:                               # %.split23.us.split.us.split.loop.exit31.i
                                        #   in Loop: Header=BB13_4 Depth=1
	slli.d	$a0, $a3, 2
	ldx.w	$s4, $s7, $a0
	b	.LBB13_43
.LBB13_26:                              # %.split.i
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.w	$a2, $a3, 0
	bne	$a0, $a4, .LBB13_37
# %bb.27:                               # %.split.split.us.i.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a0, $zero, 1
	ori	$a3, $zero, 4
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_28:                              #   in Loop: Header=BB13_30 Depth=2
	addi.w	$a0, $a0, 1
.LBB13_29:                              #   in Loop: Header=BB13_30 Depth=2
	addi.d	$a3, $a3, 4
	beq	$a3, $s6, .LBB13_3
.LBB13_30:                              # %.split.split.us.i
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s4, $s7, $a3
	slli.d	$a4, $s4, 3
	ldx.w	$a4, $s1, $a4
	bne	$a4, $a1, .LBB13_29
# %bb.31:                               #   in Loop: Header=BB13_30 Depth=2
	bne	$a0, $a2, .LBB13_28
	b	.LBB13_43
.LBB13_32:                              # %.split.us.split.i.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	addi.w	$a3, $a3, 0
	b	.LBB13_35
	.p2align	4, , 16
.LBB13_33:                              #   in Loop: Header=BB13_35 Depth=2
	addi.w	$a1, $a1, 1
.LBB13_34:                              #   in Loop: Header=BB13_35 Depth=2
	addi.d	$a2, $a2, 4
	beq	$a2, $s6, .LBB13_3
.LBB13_35:                              # %.split.us.split.i
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s4, $s7, $a2
	alsl.d	$a4, $s4, $s1, 3
	ld.w	$a4, $a4, 4
	bne	$a4, $a0, .LBB13_34
# %bb.36:                               #   in Loop: Header=BB13_35 Depth=2
	bne	$a1, $a3, .LBB13_33
	b	.LBB13_43
.LBB13_37:                              # %.split.split.i.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	b	.LBB13_40
	.p2align	4, , 16
.LBB13_38:                              #   in Loop: Header=BB13_40 Depth=2
	addi.w	$a3, $a3, 1
.LBB13_39:                              #   in Loop: Header=BB13_40 Depth=2
	addi.d	$a4, $a4, 4
	beq	$a4, $s6, .LBB13_3
.LBB13_40:                              # %.split.split.i
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s4, $s7, $a4
	slli.d	$a5, $s4, 3
	ldx.w	$a5, $s1, $a5
	bne	$a5, $a1, .LBB13_39
# %bb.41:                               #   in Loop: Header=BB13_40 Depth=2
	alsl.d	$a5, $s4, $s1, 3
	ld.w	$a5, $a5, 4
	bne	$a5, $a0, .LBB13_39
# %bb.42:                               #   in Loop: Header=BB13_40 Depth=2
	bne	$a3, $a2, .LBB13_38
.LBB13_43:                              # %find_nth_place_team.exit
                                        #   in Loop: Header=BB13_4 Depth=1
	beqz	$s4, .LBB13_3
# %bb.44:                               #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_76
# %bb.45:                               #   in Loop: Header=BB13_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a3, $a0, %pc_lo12(.L.str.20)
	b	.LBB13_77
.LBB13_46:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	b	.LBB13_60
.LBB13_47:                              #   in Loop: Header=BB13_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	b	.LBB13_69
.LBB13_48:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s4, $a0, 0
	ld.w	$s5, $a0, 4
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slti	$a0, $s4, 10
	slti	$a1, $s5, 10
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	masknez	$a3, $a2, $a1
	pcalau12i	$a4, %pc_hi20(.L.str.25)
	addi.d	$a4, $a4, %pc_lo12(.L.str.25)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sltui	$s8, $a3, 1
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$a0, $a0, %got_pc_lo12(conf_standings)
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -14
	maskeqz	$a0, $a0, $s8
	masknez	$a1, $a1, $s8
	or	$s8, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(abs_standings)
	ld.d	$a0, $a0, %got_pc_lo12(abs_standings)
	move	$a1, $fp
	ori	$fp, $zero, 13
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $s0
	move	$a2, $s4
	move	$a3, $s5
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	move	$a6, $s8
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_3
.LBB13_49:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a4, 12
	ld.w	$a0, $a4, 0
	ld.w	$a2, $a4, 4
	ld.w	$a3, $a4, 8
	ld.w	$a4, $a4, 16
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	sub.w	$s4, $a1, $a4
	fmov.d	$fs2, $fs1
	beqz	$a0, .LBB13_1
# %bb.50:                               #   in Loop: Header=BB13_4 Depth=1
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs2, $fa0, $fa1
	b	.LBB13_1
.LBB13_51:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	sltui	$a0, $a0, 1
	ld.w	$a1, $a1, 4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a2, $a0, $a2
	sltui	$a0, $a1, 1
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a1
	move	$a0, $s0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB13_75
.LBB13_52:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 4
	ld.w	$a2, $a3, 8
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	fmov.d	$fa0, $fs1
	beqz	$a0, .LBB13_54
# %bb.53:                               #   in Loop: Header=BB13_4 Depth=1
	ld.w	$a1, $a3, 12
	ld.w	$a2, $a3, 16
	sub.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB13_54:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	b	.LBB13_74
.LBB13_55:                              #   in Loop: Header=BB13_4 Depth=1
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB13_70
.LBB13_56:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a4, 12
	ld.w	$a0, $a4, 0
	ld.w	$a2, $a4, 4
	ld.w	$a3, $a4, 8
	ld.w	$a4, $a4, 16
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	sub.w	$a4, $a1, $a4
	fmov.d	$fa0, $fs1
	beqz	$a0, .LBB13_58
# %bb.57:                               #   in Loop: Header=BB13_4 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB13_58:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	sltui	$a0, $a0, 1
	ld.w	$a1, $a1, 4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a2, $a0, $a2
	sltui	$a0, $a1, 1
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a1
	movfr2gr.d	$a5, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_3
.LBB13_59:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
.LBB13_60:                              # %find_nth_place_team.exit.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_3
.LBB13_61:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 4
	ld.w	$a2, $a3, 8
	ld.w	$s4, $a3, 12
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	fmov.d	$fs2, $fs1
	beqz	$a0, .LBB13_63
# %bb.62:                               #   in Loop: Header=BB13_4 Depth=1
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs2, $fa0, $fa1
.LBB13_63:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sltui	$s5, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(offence_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(offence_ranks)
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -14
	maskeqz	$a0, $a0, $s5
	masknez	$a1, $a1, $s5
	or	$s5, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(offence_ranks_nfl)
	ld.d	$a0, $a0, %got_pc_lo12(offence_ranks_nfl)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	movfr2gr.d	$a3, $fs2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	b	.LBB13_2
.LBB13_64:                              #   in Loop: Header=BB13_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	b	.LBB13_69
.LBB13_65:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 4
	ld.w	$a2, $a3, 8
	ld.w	$s4, $a3, 16
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	fmov.d	$fs2, $fs1
	beqz	$a0, .LBB13_67
# %bb.66:                               #   in Loop: Header=BB13_4 Depth=1
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs2, $fa0, $fa1
.LBB13_67:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sltui	$s5, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(defence_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(defence_ranks)
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -14
	maskeqz	$a0, $a0, $s5
	masknez	$a1, $a1, $s5
	or	$s5, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(defence_ranks_nfl)
	ld.d	$a0, $a0, %got_pc_lo12(defence_ranks_nfl)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	movfr2gr.d	$a3, $fs2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	b	.LBB13_2
.LBB13_68:                              #   in Loop: Header=BB13_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
.LBB13_69:                              # %find_nth_place_team.exit.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
.LBB13_70:                              # %find_nth_place_team.exit.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB13_3
.LBB13_71:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a4, 12
	ld.w	$a0, $a4, 0
	ld.w	$a2, $a4, 4
	ld.w	$a3, $a4, 8
	ld.w	$a4, $a4, 16
	add.d	$a0, $a2, $a0
	add.w	$a0, $a0, $a3
	sub.w	$a2, $a1, $a4
	fmov.d	$fa0, $fs1
	beqz	$a0, .LBB13_73
# %bb.72:                               #   in Loop: Header=BB13_4 Depth=1
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB13_73:                              #   in Loop: Header=BB13_4 Depth=1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
.LBB13_74:                              # %find_nth_place_team.exit.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s0
.LBB13_75:                              # %find_nth_place_team.exit.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_3
.LBB13_76:                              #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	maskeqz	$a0, $a2, $a0
	or	$a3, $a0, $a1
.LBB13_77:                              #   in Loop: Header=BB13_4 Depth=1
	ori	$a0, $zero, 92
	mul.d	$a1, $s4, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	ldx.w	$a4, $a2, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	beqz	$a1, .LBB13_80
# %bb.78:                               #   in Loop: Header=BB13_4 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	pcalau12i	$a7, %pc_hi20(.L.str.23)
	addi.d	$a7, $a7, %pc_lo12(.L.str.23)
	maskeqz	$a2, $a7, $a2
	or	$a7, $a2, $a1
	bcnez	$fcc0, .LBB13_81
# %bb.79:                               # %.critedge213
                                        #   in Loop: Header=BB13_4 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB13_82
.LBB13_80:                              #   in Loop: Header=BB13_4 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a7, $a1, %pc_lo12(.L.str.22)
.LBB13_81:                              #   in Loop: Header=BB13_4 Depth=1
	move	$a1, $zero
.LBB13_82:                              # %.critedge213.thread
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 30
	mul.d	$a2, $s4, $a2
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a2, $t1, $a2
	addi.d	$a2, $a2, 15
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_3
.LBB13_83:
	fld.d	$fs2, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
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
.Lfunc_end13:
	.size	display_info, .Lfunc_end13-display_info
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_51-.LJTI13_0
	.word	.LBB13_55-.LJTI13_0
	.word	.LBB13_23-.LJTI13_0
	.word	.LBB13_23-.LJTI13_0
	.word	.LBB13_23-.LJTI13_0
	.word	.LBB13_23-.LJTI13_0
	.word	.LBB13_23-.LJTI13_0
	.word	.LBB13_3-.LJTI13_0
	.word	.LBB13_48-.LJTI13_0
	.word	.LBB13_61-.LJTI13_0
	.word	.LBB13_65-.LJTI13_0
	.word	.LBB13_49-.LJTI13_0
	.word	.LBB13_3-.LJTI13_0
	.word	.LBB13_64-.LJTI13_0
	.word	.LBB13_68-.LJTI13_0
	.word	.LBB13_59-.LJTI13_0
	.word	.LBB13_46-.LJTI13_0
	.word	.LBB13_47-.LJTI13_0
	.word	.LBB13_56-.LJTI13_0
	.word	.LBB13_52-.LJTI13_0
	.word	.LBB13_71-.LJTI13_0
                                        # -- End function
	.text
	.globl	is_any                          # -- Begin function is_any
	.p2align	5
	.type	is_any,@function
is_any:                                 # @is_any
# %bb.0:
	blez	$a1, .LBB14_3
	.p2align	4, , 16
.LBB14_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	beq	$a3, $a2, .LBB14_4
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB14_1
.LBB14_3:
	move	$a0, $zero
	ret
.LBB14_4:
	ori	$a0, $zero, 1
	ret
.Lfunc_end14:
	.size	is_any, .Lfunc_end14-is_any
                                        # -- End function
	.globl	display_multi_tiebreaker        # -- Begin function display_multi_tiebreaker
	.p2align	5
	.type	display_multi_tiebreaker,@function
display_multi_tiebreaker:               # @display_multi_tiebreaker
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
	ori	$a3, $zero, 2
	bge	$a2, $a3, .LBB15_2
.LBB15_1:                               # %.loopexit
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
.LBB15_2:
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	ld.w	$a1, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(common_teams)
	ld.d	$a0, $a0, %got_pc_lo12(common_teams)
	st.w	$a1, $a0, 4
	slli.d	$a1, $a2, 2
	addi.d	$a1, $a1, -4
	pcalau12i	$a2, %got_pc_hi20(divisions)
	ld.d	$a2, $a2, %got_pc_lo12(divisions)
	move	$a3, $zero
	move	$a5, $zero
	move	$a4, $zero
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_3:                               #   in Loop: Header=BB15_4 Depth=1
	addi.d	$a3, $a3, 4
	move	$a5, $s2
	beq	$a1, $a3, .LBB15_8
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s1, $a3
	ld.w	$a6, $a6, 4
	add.d	$a7, $a0, $a3
	st.w	$a6, $a7, 8
	ori	$s2, $zero, 1
	andi	$a7, $a4, 1
	ori	$a4, $zero, 1
	beqz	$a7, .LBB15_6
# %bb.5:                                #   in Loop: Header=BB15_4 Depth=1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB15_3
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_6:                               #   in Loop: Header=BB15_4 Depth=1
	ld.w	$a4, $s1, 0
	slli.d	$a7, $a6, 3
	ldx.w	$a7, $a2, $a7
	slli.d	$a4, $a4, 3
	ldx.w	$a4, $a2, $a4
	xor	$a4, $a7, $a4
	sltu	$a4, $zero, $a4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB15_3
.LBB15_7:                               #   in Loop: Header=BB15_4 Depth=1
	ld.w	$a5, $s1, 0
	alsl.d	$a6, $a6, $a2, 3
	ld.w	$a6, $a6, 4
	alsl.d	$a5, $a5, $a2, 3
	ld.w	$a5, $a5, 4
	xor	$a5, $a6, $a5
	sltu	$s2, $zero, $a5
	b	.LBB15_3
.LBB15_8:
	beqz	$a4, .LBB15_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 51
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB15_10:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	ori	$s6, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB15_1
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$s3, $a0, %got_pc_lo12(conf_standings)
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$a0, $a0, %got_pc_lo12(team)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s8, $zero, 92
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$a0, $a0, %got_pc_lo12(team_info)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(h_to_h_stats)
	ld.d	$a0, $a0, %got_pc_lo12(h_to_h_stats)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(team_info_wi_div)
	ld.d	$a0, $a0, %got_pc_lo12(team_info_wi_div)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(team_info_wi_conf)
	ld.d	$s4, $a0, %got_pc_lo12(team_info_wi_conf)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(common_games)
	ld.d	$a0, $a0, %got_pc_lo12(common_games)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a3, $zero, 29
	b	.LBB15_15
.LBB15_12:                              #   in Loop: Header=BB15_15 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB15_13:                              #   in Loop: Header=BB15_15 Depth=1
	ld.w	$a0, $s2, 12
	ld.w	$a1, $s2, 16
	sub.w	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 12
	ld.w	$a1, $s5, 16
	sub.w	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 29
.LBB15_14:                              # %is_any.exit.thread
                                        #   in Loop: Header=BB15_15 Depth=1
	addi.d	$s6, $s6, 1
	beq	$s6, $a3, .LBB15_1
.LBB15_15:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_16 Depth 2
                                        #     Child Loop BB15_20 Depth 2
	slli.d	$a0, $s6, 2
	ldx.w	$s2, $s3, $a0
	move	$a0, $s1
	move	$a1, $s0
	.p2align	4, , 16
.LBB15_16:                              # %.lr.ph.i
                                        #   Parent Loop BB15_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 0
	beq	$a2, $s2, .LBB15_18
# %bb.17:                               #   in Loop: Header=BB15_16 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB15_16
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_18:                              # %.lr.ph
                                        #   in Loop: Header=BB15_15 Depth=1
	mul.d	$s7, $s2, $s8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s5, $a0, $s7
	ldx.w	$a3, $a0, $s7
	ld.w	$a4, $s5, 4
	ld.w	$a5, $s5, 8
	ori	$a0, $zero, 30
	mul.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a4, $zero
	move	$a3, $zero
	move	$a2, $zero
	ori	$a0, $zero, 2668
	mul.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $s0
	move	$a5, $s1
	b	.LBB15_20
	.p2align	4, , 16
.LBB15_19:                              #   in Loop: Header=BB15_20 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	beqz	$a1, .LBB15_22
.LBB15_20:                              #   Parent Loop BB15_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	beq	$a6, $s2, .LBB15_19
# %bb.21:                               #   in Loop: Header=BB15_20 Depth=2
	mul.d	$a6, $a6, $s8
	add.d	$a7, $a0, $a6
	ldx.w	$a6, $a0, $a6
	ld.w	$t0, $a7, 4
	ld.w	$a7, $a7, 8
	add.w	$a2, $a6, $a2
	add.w	$a3, $t0, $a3
	add.w	$a4, $a7, $a4
	b	.LBB15_19
	.p2align	4, , 16
.LBB15_22:                              # %._crit_edge
                                        #   in Loop: Header=BB15_15 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s2, $a0, $s7
	ldx.w	$a2, $a0, $s7
	ld.w	$a3, $s2, 4
	ld.w	$a4, $s2, 8
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s7
	ldx.w	$a2, $s4, $s7
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(common)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a2, $a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a2, $a1, .LBB15_12
# %bb.23:                               #   in Loop: Header=BB15_15 Depth=1
	add.d	$a0, $a0, $s7
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	ld.w	$a5, $a0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB15_13
.Lfunc_end15:
	.size	display_multi_tiebreaker, .Lfunc_end15-display_multi_tiebreaker
                                        # -- End function
	.globl	display_tiebreaker              # -- Begin function display_tiebreaker
	.p2align	5
	.type	display_tiebreaker,@function
display_tiebreaker:                     # @display_tiebreaker
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(common_teams)
	ld.d	$a0, $a0, %got_pc_lo12(common_teams)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.w	$fp, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 30
	mul.d	$a0, $fp, $a0
	pcalau12i	$a1, %got_pc_hi20(team)
	ld.d	$a1, $a1, %got_pc_lo12(team)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	add.d	$s1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(divisions)
	ld.d	$s2, $a0, %got_pc_lo12(divisions)
	alsl.d	$s3, $fp, $s2, 3
	ori	$a0, $zero, 92
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	mul.d	$a0, $fp, $a0
	pcalau12i	$a1, %got_pc_hi20(h_to_h_stats)
	ld.d	$a1, $a1, %got_pc_lo12(h_to_h_stats)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(common_games)
	ld.d	$a1, $a1, %got_pc_lo12(common_games)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s5, $zero, 4
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$s7, $a0, %got_pc_lo12(conf_standings)
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$a0, $a0, %got_pc_lo12(team_info)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(team_info_wi_div)
	ld.d	$a0, $a0, %got_pc_lo12(team_info_wi_div)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(team_info_wi_conf)
	ld.d	$a0, $a0, %got_pc_lo12(team_info_wi_conf)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 116
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_1:                               #   in Loop: Header=BB16_3 Depth=1
	movfr2gr.d	$a2, $fa0
	move	$a0, $s0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 12
	ld.w	$a1, $s8, 16
	sub.w	$a2, $a0, $a1
	move	$a0, $s0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 116
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	addi.d	$s5, $s5, 4
	beq	$s5, $a2, .LBB16_18
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$fp, $s7, $s5
	slli.d	$a0, $fp, 3
	ldx.w	$a0, $s2, $a0
	ld.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB16_2
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$fp, $a0, 8
	ori	$a0, $zero, 92
	mul.d	$s6, $fp, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s6
	ldx.w	$a3, $a0, $s6
	ld.w	$a4, $s8, 4
	ld.w	$a5, $s8, 8
	ori	$a0, $zero, 30
	mul.d	$a0, $fp, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $s0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bne	$a0, $fp, .LBB16_7
# %bb.5:                                #   in Loop: Header=BB16_3 Depth=1
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	alsl.d	$s4, $fp, $s2, 3
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s3, 4
	beq	$a0, $a1, .LBB16_8
.LBB16_6:                               #   in Loop: Header=BB16_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_7:                               #   in Loop: Header=BB16_3 Depth=1
	ori	$a0, $zero, 2668
	mul.d	$a0, $fp, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a0
	ldx.w	$a2, $a2, $a0
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	alsl.d	$s4, $fp, $s2, 3
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s3, 4
	bne	$a0, $a1, .LBB16_6
.LBB16_8:                               #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $s6
	ldx.w	$a2, $a1, $s6
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	move	$a0, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB16_9:                               #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$s1, $a0, $s6
	ldx.w	$a2, $a0, $s6
	ld.w	$a3, $s1, 4
	ld.w	$a4, $s1, 8
	move	$a0, $s0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(common)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB16_14
# %bb.10:                               #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	addi.w	$a0, $zero, -1
	beq	$a6, $a0, .LBB16_14
# %bb.11:                               #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $s6
	beq	$a2, $a0, .LBB16_14
# %bb.12:                               #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	ld.w	$a5, $a0, 12
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a7, $a1, 4
	ld.w	$a0, $a1, 8
	ld.w	$a1, $a1, 12
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s3, 4
	beq	$a0, $a1, .LBB16_15
	.p2align	4, , 16
.LBB16_13:                              #   in Loop: Header=BB16_3 Depth=1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB16_16
	.p2align	4, , 16
.LBB16_14:                              #   in Loop: Header=BB16_3 Depth=1
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s3, 4
	bne	$a0, $a1, .LBB16_13
.LBB16_15:                              #   in Loop: Header=BB16_3 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 16
	sub.w	$a2, $a1, $a0
	move	$a0, $s0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB16_16:                              #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s1, 4
	ld.w	$a2, $s1, 8
	add.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a2
	fmov.d	$fa0, $fs0
	beqz	$a0, .LBB16_1
# %bb.17:                               #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a1, $s1, 12
	ld.w	$a2, $s1, 16
	sub.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB16_1
.LBB16_18:
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end16:
	.size	display_tiebreaker, .Lfunc_end16-display_tiebreaker
                                        # -- End function
	.globl	display_records                 # -- Begin function display_records
	.p2align	5
	.type	display_records,@function
display_records:                        # @display_records
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$s1, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$a0, $a0, %got_pc_lo12(conf_standings)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(abs_standings)
	ld.d	$s2, $a0, %got_pc_lo12(abs_standings)
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s8, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$s3, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$s7, $a0, %got_pc_lo12(team_info)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s6, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs0, $a0
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_1:                               #   in Loop: Header=BB17_3 Depth=1
	move	$a6, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
.LBB17_2:                               # %.critedge101.thread
                                        #   in Loop: Header=BB17_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 4
	addi.w	$s0, $s0, 1
	ori	$a0, $zero, 56
	beq	$s6, $a0, .LBB17_16
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$s4, $a0, $s6
	ld.w	$s5, $s4, 4
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 30
	mul.d	$a0, $s5, $a0
	add.d	$a0, $s8, $a0
	addi.d	$a4, $a0, 15
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 42
	bnez	$a1, .LBB17_5
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 43
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 32
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB17_5:                               #   in Loop: Header=BB17_3 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 92
	mul.d	$a0, $s5, $a0
	add.d	$a1, $s7, $a0
	ldx.w	$a2, $s7, $a0
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	add.d	$a0, $a3, $a2
	add.w	$a0, $a0, $a4
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$s1, $a1, %pc_lo12(.L.str.23)
	beqz	$a0, .LBB17_8
# %bb.6:                                #   in Loop: Header=BB17_3 Depth=1
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a5, $a1, $a0
	bcnez	$fcc0, .LBB17_9
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB17_3 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	b	.LBB17_10
	.p2align	4, , 16
.LBB17_8:                               #   in Loop: Header=BB17_3 Depth=1
	move	$a6, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	b	.LBB17_10
	.p2align	4, , 16
.LBB17_9:                               #   in Loop: Header=BB17_3 Depth=1
	move	$a6, $zero
.LBB17_10:                              # %.critedge.thread
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s4, 60
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 30
	mul.d	$a0, $s5, $a0
	add.d	$a0, $s8, $a0
	addi.d	$a4, $a0, 15
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 42
	bnez	$a1, .LBB17_12
# %bb.11:                               #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 43
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 32
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB17_12:                              #   in Loop: Header=BB17_3 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 92
	mul.d	$a0, $s5, $a0
	add.d	$a1, $s7, $a0
	ldx.w	$a2, $s7, $a0
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	add.d	$a0, $a3, $a2
	add.w	$a0, $a0, $a4
	beqz	$a0, .LBB17_1
# %bb.13:                               #   in Loop: Header=BB17_3 Depth=1
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a5, $a1, $a0
	bcnez	$fcc0, .LBB17_15
# %bb.14:                               # %.critedge101
                                        #   in Loop: Header=BB17_3 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	b	.LBB17_2
	.p2align	4, , 16
.LBB17_15:                              #   in Loop: Header=BB17_3 Depth=1
	move	$a6, $zero
	b	.LBB17_2
.LBB17_16:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	move	$a3, $fp
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end17:
	.size	display_records, .Lfunc_end17-display_records
                                        # -- End function
	.globl	display_week                    # -- Begin function display_week
	.p2align	5
	.type	display_week,@function
display_week:                           # @display_week
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
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 180
	mul.d	$a0, $s0, $a0
	addi.d	$a0, $a0, 28
	pcalau12i	$a1, %got_pc_hi20(scores)
	ld.d	$a1, $a1, %got_pc_lo12(scores)
	add.d	$s5, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(sched)
	ld.d	$a1, $a1, %got_pc_lo12(sched)
	add.d	$s6, $a1, $a0
	addi.w	$s7, $zero, -2
	ori	$s8, $zero, 30
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s3, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$s0, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$s1, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$s2, $a0, %pc_lo12(.L.str.77)
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s4, $a0, %pc_lo12(.L.str.75)
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_1:                               #   in Loop: Header=BB18_3 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB18_2:                               #   in Loop: Header=BB18_3 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 3
	addi.d	$s5, $s5, 36
	addi.d	$s6, $s6, 36
	ori	$a0, $zero, 13
	bgeu	$s7, $a0, .LBB18_20
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, -12
	mul.d	$a0, $a0, $s8
	add.d	$a0, $s3, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, -12
	bltz	$a2, .LBB18_5
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB18_6
	.p2align	4, , 16
.LBB18_5:                               #   in Loop: Header=BB18_3 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB18_6:                               #   in Loop: Header=BB18_3 Depth=1
	ld.w	$a0, $s6, 0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $s3, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	bltz	$a2, .LBB18_8
# %bb.7:                                #   in Loop: Header=BB18_3 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	bne	$s7, $a0, .LBB18_9
	b	.LBB18_12
	.p2align	4, , 16
.LBB18_8:                               #   in Loop: Header=BB18_3 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	beq	$s7, $a0, .LBB18_12
.LBB18_9:                               #   in Loop: Header=BB18_3 Depth=1
	ld.w	$a0, $s6, 12
	mul.d	$a0, $a0, $s8
	add.d	$a0, $s3, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 12
	bltz	$a2, .LBB18_11
# %bb.10:                               #   in Loop: Header=BB18_3 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB18_12
.LBB18_11:                              #   in Loop: Header=BB18_3 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB18_12:                              #   in Loop: Header=BB18_3 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, -8
	mul.d	$a0, $a0, $s8
	add.d	$a0, $s3, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, -8
	bltz	$a2, .LBB18_14
# %bb.13:                               #   in Loop: Header=BB18_3 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB18_15
	.p2align	4, , 16
.LBB18_14:                              #   in Loop: Header=BB18_3 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB18_15:                              #   in Loop: Header=BB18_3 Depth=1
	ld.w	$a0, $s6, 4
	mul.d	$a0, $a0, $s8
	add.d	$a0, $s3, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 4
	bltz	$a2, .LBB18_17
# %bb.16:                               #   in Loop: Header=BB18_3 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	beq	$s7, $a0, .LBB18_2
	b	.LBB18_18
	.p2align	4, , 16
.LBB18_17:                              #   in Loop: Header=BB18_3 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	beq	$s7, $a0, .LBB18_2
.LBB18_18:                              #   in Loop: Header=BB18_3 Depth=1
	ld.w	$a0, $s6, 16
	mul.d	$a0, $a0, $s8
	add.d	$a0, $s3, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 16
	bgez	$a2, .LBB18_1
# %bb.19:                               #   in Loop: Header=BB18_3 Depth=1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB18_2
.LBB18_20:
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
.Lfunc_end18:
	.size	display_week, .Lfunc_end18-display_week
                                        # -- End function
	.globl	enter_prompt_week               # -- Begin function enter_prompt_week
	.p2align	5
	.type	enter_prompt_week,@function
enter_prompt_week:                      # @enter_prompt_week
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
	move	$s1, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 180
	mul.d	$a0, $s1, $a0
	pcalau12i	$a1, %got_pc_hi20(scores)
	ld.d	$a1, $a1, %got_pc_lo12(scores)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(sched)
	ld.d	$a1, $a1, %got_pc_lo12(sched)
	add.d	$a0, $a0, $a1
	addi.d	$s8, $a0, 16
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s4, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$s1, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s3, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $zero
	move	$s5, $zero
	ori	$s7, $zero, 168
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_1:                               #   in Loop: Header=BB19_3 Depth=1
	move	$s5, $zero
.LBB19_2:                               #   in Loop: Header=BB19_3 Depth=1
	addi.d	$s2, $s2, 12
	beq	$s2, $s7, .LBB19_20
.LBB19_3:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	ori	$s5, $zero, 1
	bnez	$a0, .LBB19_2
# %bb.4:                                #   in Loop: Header=BB19_3 Depth=1
	ldx.w	$a0, $s8, $s2
	beqz	$a0, .LBB19_1
# %bb.5:                                #   in Loop: Header=BB19_3 Depth=1
	add.d	$s6, $s8, $s2
	ld.w	$a1, $s6, 4
	beqz	$a1, .LBB19_1
# %bb.6:                                #   in Loop: Header=BB19_3 Depth=1
	ori	$a1, $zero, 30
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s4, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$fp, $a0, $s2
	ld.w	$a2, $fp, 16
	bltz	$a2, .LBB19_8
# %bb.7:                                #   in Loop: Header=BB19_3 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB19_9
.LBB19_8:                               #   in Loop: Header=BB19_3 Depth=1
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB19_9:                               #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a2, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_12
# %bb.10:                               #   in Loop: Header=BB19_3 Depth=1
	ld.bu	$a1, $s5, 0
	beqz	$a1, .LBB19_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a2, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(current_with_disk)
	ld.d	$a0, $a0, %got_pc_lo12(current_with_disk)
	st.w	$zero, $a0, 0
	b	.LBB19_13
.LBB19_12:                              #   in Loop: Header=BB19_3 Depth=1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB19_19
.LBB19_13:                              #   in Loop: Header=BB19_3 Depth=1
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 30
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s4, $a0
	addi.d	$a2, $a0, 15
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 20
	bltz	$a2, .LBB19_15
# %bb.14:                               #   in Loop: Header=BB19_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB19_16
.LBB19_15:                              #   in Loop: Header=BB19_3 Depth=1
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB19_16:                              #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a2, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$a0, .LBB19_19
# %bb.17:                               #   in Loop: Header=BB19_3 Depth=1
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB19_19
# %bb.18:                               #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a2, $fp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(current_with_disk)
	ld.d	$a0, $a0, %got_pc_lo12(current_with_disk)
	move	$s5, $zero
	st.w	$zero, $a0, 0
.LBB19_19:                              #   in Loop: Header=BB19_3 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB19_2
.LBB19_20:
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
	.size	enter_prompt_week, .Lfunc_end19-enter_prompt_week
                                        # -- End function
	.globl	enter_week                      # -- Begin function enter_week
	.p2align	5
	.type	enter_week,@function
enter_week:                             # @enter_week
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
	move	$fp, $a2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	ori	$s7, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 180
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	mul.d	$a0, $fp, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$fp, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$s4, %pc_hi20(got_unused_responce)
	pcalau12i	$a0, %pc_hi20(responce)
	addi.d	$s3, $a0, %pc_lo12(responce)
	pcalau12i	$a0, %got_pc_hi20(in_fileP)
	ld.d	$a0, $a0, %got_pc_lo12(in_fileP)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(white_space.commentP)
	ori	$s5, $zero, 37
	ori	$s1, $zero, 10
	ori	$s6, $zero, 32
	ori	$s8, $zero, 1536
	lu32i.d	$s8, 1
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$s2, $zero, 25
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 476823
	ori	$a0, $a0, 1393
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1537
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	.p2align	4, , 16
.LBB20_1:                               # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_25 Depth 2
                                        #     Child Loop BB20_31 Depth 2
                                        #     Child Loop BB20_5 Depth 2
                                        #     Child Loop BB20_6 Depth 2
                                        #     Child Loop BB20_39 Depth 2
                                        #     Child Loop BB20_52 Depth 2
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(got_unused_responce)
	beqz	$a0, .LBB20_20
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	ld.b	$a2, $s0, %pc_lo12(white_space.commentP)
	st.w	$zero, $s4, %pc_lo12(got_unused_responce)
.LBB20_3:                               # %.critedge.i.preheader
                                        #   in Loop: Header=BB20_1 Depth=1
	move	$a0, $a2
	move	$a1, $s3
	ld.bu	$a3, $a1, 0
	ori	$a4, $zero, 1
	bne	$a3, $s5, .LBB20_6
	b	.LBB20_5
	.p2align	4, , 16
.LBB20_4:                               #   in Loop: Header=BB20_1 Depth=1
	move	$a4, $zero
	.p2align	4, , 16
.LBB20_5:                               # %.sink.split35.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $s0, %pc_lo12(white_space.commentP)
	move	$a2, $a4
	move	$a0, $a4
	addi.d	$a1, $a1, 1
	ld.bu	$a3, $a1, 0
	ori	$a4, $zero, 1
	beq	$a3, $s5, .LBB20_5
.LBB20_6:                               # %.critedge.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a3, .LBB20_13
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB20_9
# %bb.8:                                #   in Loop: Header=BB20_6 Depth=2
	ori	$a0, $zero, 1
	beq	$a3, $s1, .LBB20_4
	b	.LBB20_12
	.p2align	4, , 16
.LBB20_9:                               #   in Loop: Header=BB20_6 Depth=2
	bltu	$s6, $a3, .LBB20_13
# %bb.10:                               #   in Loop: Header=BB20_6 Depth=2
	sll.d	$a0, $s7, $a3
	and	$a0, $a0, $s8
	beqz	$a0, .LBB20_13
# %bb.11:                               #   in Loop: Header=BB20_6 Depth=2
	move	$a0, $zero
.LBB20_12:                              #   in Loop: Header=BB20_6 Depth=2
	addi.d	$a1, $a1, 1
	ld.bu	$a3, $a1, 0
	ori	$a4, $zero, 1
	bne	$a3, $s5, .LBB20_6
	b	.LBB20_5
	.p2align	4, , 16
.LBB20_13:                              # %get_responce.exit
                                        #   in Loop: Header=BB20_1 Depth=1
	pcalau12i	$a0, %pc_hi20(responce)
	addi.d	$a0, $a0, %pc_lo12(responce)
	ld.bu	$a4, $a0, 0
	beq	$a4, $s5, .LBB20_18
# %bb.14:                               # %get_responce.exit
                                        #   in Loop: Header=BB20_1 Depth=1
	beqz	$a4, .LBB20_76
# %bb.15:                               # %.lr.ph.i105
                                        #   in Loop: Header=BB20_1 Depth=1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB20_37
# %bb.16:                               # %.split.us.i
                                        #   in Loop: Header=BB20_1 Depth=1
	bne	$a4, $s1, .LBB20_49
# %bb.17:                               #   in Loop: Header=BB20_1 Depth=1
	st.b	$zero, $s0, %pc_lo12(white_space.commentP)
	b	.LBB20_49
	.p2align	4, , 16
.LBB20_18:                              #   in Loop: Header=BB20_1 Depth=1
	move	$a3, $zero
	move	$a5, $zero
.LBB20_19:                              # %._crit_edge.i
                                        #   in Loop: Header=BB20_1 Depth=1
	ori	$a4, $zero, 1
	st.b	$a4, $s0, %pc_lo12(white_space.commentP)
	move	$a2, $a5
	bgtz	$a3, .LBB20_42
	b	.LBB20_49
	.p2align	4, , 16
.LBB20_20:                              #   in Loop: Header=BB20_1 Depth=1
	ori	$a1, $zero, 50
	move	$a0, $s3
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB20_22
# %bb.21:                               #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB20_22:                              #   in Loop: Header=BB20_1 Depth=1
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB20_27
# %bb.23:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	b	.LBB20_25
	.p2align	4, , 16
.LBB20_24:                              #   in Loop: Header=BB20_25 Depth=2
	ld.bu	$a0, $a1, 0
	addi.d	$a1, $a1, 1
	beqz	$a0, .LBB20_27
.LBB20_25:                              # %.lr.ph.i.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $a0, -65
	bltu	$s2, $a2, .LBB20_24
# %bb.26:                               #   in Loop: Header=BB20_25 Depth=2
	addi.d	$a0, $a0, 32
	st.b	$a0, $a1, -1
	b	.LBB20_24
	.p2align	4, , 16
.LBB20_27:                              # %lower_case.exit.i
                                        #   in Loop: Header=BB20_1 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a2, $s0, %pc_lo12(white_space.commentP)
	blez	$a0, .LBB20_3
# %bb.28:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB20_1 Depth=1
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, -1
	move	$a1, $a2
	b	.LBB20_31
	.p2align	4, , 16
.LBB20_29:                              # %.sink.split.i
                                        #   in Loop: Header=BB20_31 Depth=2
	addi.d	$a1, $a3, -37
	sltui	$a2, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s0, %pc_lo12(white_space.commentP)
	move	$a1, $a2
.LBB20_30:                              #   in Loop: Header=BB20_31 Depth=2
	st.b	$zero, $a0, 0
	addi.d	$a0, $a0, -1
	bltu	$a0, $s3, .LBB20_3
.LBB20_31:                              # %.lr.ph.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	beq	$a3, $s5, .LBB20_29
# %bb.32:                               #   in Loop: Header=BB20_31 Depth=2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB20_34
# %bb.33:                               #   in Loop: Header=BB20_31 Depth=2
	ori	$a1, $zero, 1
	beq	$a3, $s1, .LBB20_29
	b	.LBB20_30
	.p2align	4, , 16
.LBB20_34:                              #   in Loop: Header=BB20_31 Depth=2
	bltu	$s6, $a3, .LBB20_3
# %bb.35:                               #   in Loop: Header=BB20_31 Depth=2
	sll.d	$a1, $s7, $a3
	and	$a1, $a1, $s8
	beqz	$a1, .LBB20_3
# %bb.36:                               #   in Loop: Header=BB20_31 Depth=2
	move	$a1, $zero
	b	.LBB20_30
	.p2align	4, , 16
.LBB20_37:                              # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB20_1 Depth=1
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB20_39
	.p2align	4, , 16
.LBB20_38:                              #   in Loop: Header=BB20_39 Depth=2
	add.d	$a4, $a0, $a2
	ld.bu	$a4, $a4, 1
	addi.d	$a5, $a2, 1
	addi.w	$a3, $a3, 1
	move	$a2, $a5
	beq	$a4, $s5, .LBB20_19
.LBB20_39:                              # %.lr.ph.split.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $a4, .LBB20_38
# %bb.40:                               # %.lr.ph.split.i
                                        #   in Loop: Header=BB20_39 Depth=2
	sll.d	$a4, $s7, $a4
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	and	$a4, $a4, $a5
	beqz	$a4, .LBB20_38
# %bb.41:                               # %.critedge.loopexit.i
                                        #   in Loop: Header=BB20_1 Depth=1
	move	$a4, $zero
	blez	$a3, .LBB20_49
.LBB20_42:                              #   in Loop: Header=BB20_1 Depth=1
	ori	$a3, $zero, 5
	bltu	$a2, $a3, .LBB20_48
# %bb.43:                               #   in Loop: Header=BB20_1 Depth=1
	ld.w	$a2, $a0, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB20_49
# %bb.44:                               #   in Loop: Header=BB20_1 Depth=1
	ld.bu	$a0, $a0, 4
	beq	$a0, $s5, .LBB20_75
# %bb.45:                               #   in Loop: Header=BB20_1 Depth=1
	bnez	$a4, .LBB20_74
# %bb.46:                               #   in Loop: Header=BB20_1 Depth=1
	bltu	$s6, $a0, .LBB20_49
# %bb.47:                               #   in Loop: Header=BB20_1 Depth=1
	sll.d	$a0, $s7, $a0
	and	$a0, $a0, $s8
	beqz	$a0, .LBB20_49
	b	.LBB20_76
	.p2align	4, , 16
.LBB20_48:                              # %matches.exit
                                        #   in Loop: Header=BB20_1 Depth=1
	pcalau12i	$a0, %pc_hi20(responce)
	addi.d	$a0, $a0, %pc_lo12(responce)
	pcalau12i	$a3, %pc_hi20(.L.str.83)
	addi.d	$a3, $a3, %pc_lo12(.L.str.83)
	move	$s2, $s4
	move	$s4, $fp
	move	$fp, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$fp, $s4
	move	$s4, $s2
	ori	$s2, $zero, 25
	beqz	$a0, .LBB20_76
.LBB20_49:                              # %matches.exit.thread112.thread
                                        #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(find_name)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_1
# %bb.50:                               # %matches.exit.thread112.thread
                                        #   in Loop: Header=BB20_1 Depth=1
	ori	$a1, $zero, 29
	beq	$a0, $a1, .LBB20_1
# %bb.51:                               # %.lr.ph.split.preheader
                                        #   in Loop: Header=BB20_1 Depth=1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(sched)
	ld.d	$fp, $a2, %got_pc_lo12(sched)
	pcalau12i	$a2, %got_pc_hi20(scores)
	ld.d	$s4, $a2, %got_pc_lo12(scores)
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB20_52:                              # %.lr.ph.split
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a3, $fp, $a2
	ld.w	$a2, $a3, 20
	ld.w	$a4, $a3, 16
	bne	$a2, $a0, .LBB20_55
# %bb.53:                               #   in Loop: Header=BB20_52 Depth=2
	ori	$a5, $zero, 29
	ori	$a3, $zero, 1
	beq	$a4, $a5, .LBB20_56
# %bb.54:                               #   in Loop: Header=BB20_52 Depth=2
	move	$a3, $zero
	ori	$a6, $zero, 1
	ori	$a7, $zero, 2
	move	$a5, $a4
	b	.LBB20_56
	.p2align	4, , 16
.LBB20_55:                              #   in Loop: Header=BB20_52 Depth=2
	move	$a5, $a4
	ori	$a3, $zero, 1
.LBB20_56:                              # %.lr.ph.split._crit_edge
                                        #   in Loop: Header=BB20_52 Depth=2
	xor	$a4, $a5, $a0
	sltu	$a4, $zero, $a4
	addi.d	$a2, $a2, -29
	sltui	$a2, $a2, 1
	or	$a2, $a2, $a4
	masknez	$a4, $s7, $a2
	maskeqz	$a5, $a7, $a2
	or	$a7, $a5, $a4
	ori	$a4, $zero, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a5, $a6, $a2
	or	$a6, $a5, $a4
	and	$a2, $a2, $a3
	addi.d	$fp, $fp, 12
	addi.d	$s4, $s4, 12
	ori	$a3, $zero, 13
	bltu	$a3, $a1, .LBB20_58
# %bb.57:                               # %.lr.ph.split._crit_edge
                                        #   in Loop: Header=BB20_52 Depth=2
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB20_52
.LBB20_58:                              #   in Loop: Header=BB20_1 Depth=1
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	beqz	$a2, .LBB20_60
# %bb.59:                               #   in Loop: Header=BB20_1 Depth=1
	ori	$a1, $zero, 30
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(team)
	ld.d	$a1, $a1, %got_pc_lo12(team)
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB20_1
.LBB20_60:                              #   in Loop: Header=BB20_1 Depth=1
	addi.w	$a0, $a7, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a0, $fp, $a0
	ori	$a1, $zero, 30
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(team)
	ld.d	$a1, $a1, %got_pc_lo12(team)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a2, $s4, $a0
	bltz	$a2, .LBB20_62
# %bb.61:                               #   in Loop: Header=BB20_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB20_63
.LBB20_62:                              #   in Loop: Header=BB20_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB20_63:                              #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB20_66
# %bb.64:                               #   in Loop: Header=BB20_1 Depth=1
	ld.bu	$a1, $a3, 0
	beqz	$a1, .LBB20_66
# %bb.65:                               # %.thread
                                        #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(current_with_disk)
	ld.d	$a0, $a0, %got_pc_lo12(current_with_disk)
	st.w	$zero, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB20_67
.LBB20_66:                              #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB20_77
.LBB20_67:                              #   in Loop: Header=BB20_1 Depth=1
	addi.w	$a0, $a1, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a0, $fp, $a0
	ori	$a1, $zero, 30
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 15
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a2, $s4, $a0
	bltz	$a2, .LBB20_69
# %bb.68:                               #   in Loop: Header=BB20_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB20_70
.LBB20_69:                              #   in Loop: Header=BB20_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB20_70:                              #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bnez	$a0, .LBB20_73
# %bb.71:                               #   in Loop: Header=BB20_1 Depth=1
	ld.bu	$a0, $a3, 0
	beqz	$a0, .LBB20_73
# %bb.72:                               #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(current_with_disk)
	ld.d	$a0, $a0, %got_pc_lo12(current_with_disk)
	st.w	$zero, $a0, 0
.LBB20_73:                              #   in Loop: Header=BB20_1 Depth=1
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB20_1
	b	.LBB20_76
.LBB20_74:
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB20_76
.LBB20_75:                              # %.thread170.sink.split
	addi.d	$a0, $a0, -37
	sltui	$a0, $a0, 1
	st.b	$a0, $s0, %pc_lo12(white_space.commentP)
.LBB20_76:                              # %.loopexit
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
.LBB20_77:                              # %.thread174
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end20:
	.size	enter_week, .Lfunc_end20-enter_week
                                        # -- End function
	.globl	display_rankings                # -- Begin function display_rankings
	.p2align	5
	.type	display_rankings,@function
display_rankings:                       # @display_rankings
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 81
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 45
	ori	$s0, $zero, 15
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$a0, $a0, %got_pc_lo12(team)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s7, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$a0, $a0, %got_pc_lo12(conf_standings)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(abs_standings)
	ld.d	$a0, $a0, %got_pc_lo12(abs_standings)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(offence_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(offence_ranks)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(offence_ranks_nfl)
	ld.d	$a0, $a0, %got_pc_lo12(offence_ranks_nfl)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(defence_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(defence_ranks)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(defence_ranks_nfl)
	ld.d	$s8, $a0, %got_pc_lo12(defence_ranks_nfl)
	pcalau12i	$a0, %got_pc_hi20(net_ranks)
	ld.d	$s3, $a0, %got_pc_lo12(net_ranks)
	pcalau12i	$a0, %got_pc_hi20(net_ranks_nfl)
	ld.d	$s1, $a0, %got_pc_lo12(net_ranks_nfl)
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s1, $sp, 328                   # 8-byte Folded Spill
	st.d	$s8, $sp, 320                   # 8-byte Folded Spill
	b	.LBB21_2
	.p2align	4, , 16
.LBB21_1:                               #   in Loop: Header=BB21_2 Depth=1
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -14
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$s7, $a0, -14
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$s2, $a0, -14
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	addi.d	$s6, $a0, -14
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104
	st.d	$s6, $sp, 96
	st.d	$fp, $sp, 88
	st.d	$s2, $sp, 80
	st.d	$s4, $sp, 72
	st.d	$s7, $sp, 64
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 40
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 30
	addi.w	$s0, $s0, 1
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ori	$a0, $zero, 465
	beq	$s5, $a0, .LBB21_6
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s0, -14
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	bnez	$a0, .LBB21_4
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB21_4:                               #   in Loop: Header=BB21_2 Depth=1
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$fp, $a0, $s5
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 420
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_1
# %bb.5:                                #   in Loop: Header=BB21_2 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$s7, $a0, $a1
	b	.LBB21_1
.LBB21_6:
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end21:
	.size	display_rankings, .Lfunc_end21-display_rankings
                                        # -- End function
	.globl	display_defence                 # -- Begin function display_defence
	.p2align	5
	.type	display_defence,@function
display_defence:                        # @display_defence
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(defence_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(defence_ranks)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(defence_ranks_nfl)
	ld.d	$s1, $a0, %got_pc_lo12(defence_ranks_nfl)
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$fp, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$s8, $a0, %got_pc_lo12(team_info)
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$s2, $a0, %pc_lo12(.L.str.93)
	move	$s7, $zero
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_1:                               #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a1, $a1, 16
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB22_2:                               #   in Loop: Header=BB22_3 Depth=1
	ori	$a3, $zero, 30
	mul.d	$a2, $s5, $a3
	add.d	$a2, $fp, $a2
	addi.d	$a4, $a2, 15
	mul.d	$a2, $s6, $a3
	add.d	$a2, $fp, $a2
	addi.d	$a2, $a2, 15
	st.d	$a1, $sp, 24
	fst.d	$fa0, $sp, 16
	st.d	$a2, $sp, 8
	movfr2gr.d	$a5, $fs1
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s3
	move	$a6, $s4
	move	$a7, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 4
	addi.w	$s0, $s0, 1
	ori	$a0, $zero, 56
	beq	$s7, $a0, .LBB22_8
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s6, $a0, $s7
	ld.w	$s5, $s6, 4
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 92
	mul.d	$a2, $s5, $a1
	add.d	$a1, $s8, $a2
	ldx.w	$a2, $s8, $a2
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	add.d	$a2, $a3, $a2
	add.w	$a2, $a2, $a4
	move	$s3, $a0
	beqz	$a2, .LBB22_5
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	ld.w	$s4, $a1, 16
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	b	.LBB22_6
	.p2align	4, , 16
.LBB22_5:                               # %._crit_edge
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$s4, $a1, 16
	fmov.d	$fs1, $fs0
.LBB22_6:                               #   in Loop: Header=BB22_3 Depth=1
	ld.w	$s6, $s6, 60
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 92
	mul.d	$a2, $s6, $a1
	add.d	$a1, $s8, $a2
	ldx.w	$a2, $s8, $a2
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	add.d	$a2, $a3, $a2
	add.w	$a2, $a2, $a4
	bnez	$a2, .LBB22_1
# %bb.7:                                # %._crit_edge33
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a1, $a1, 16
	fmov.d	$fa0, $fs0
	b	.LBB22_2
.LBB22_8:
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end22:
	.size	display_defence, .Lfunc_end22-display_defence
                                        # -- End function
	.globl	display_offence                 # -- Begin function display_offence
	.p2align	5
	.type	display_offence,@function
display_offence:                        # @display_offence
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(offence_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(offence_ranks)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(offence_ranks_nfl)
	ld.d	$s1, $a0, %got_pc_lo12(offence_ranks_nfl)
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$fp, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$s8, $a0, %got_pc_lo12(team_info)
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$s2, $a0, %pc_lo12(.L.str.93)
	move	$s7, $zero
	b	.LBB23_3
	.p2align	4, , 16
.LBB23_1:                               #   in Loop: Header=BB23_3 Depth=1
	ld.w	$a1, $a1, 12
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB23_2:                               #   in Loop: Header=BB23_3 Depth=1
	ori	$a3, $zero, 30
	mul.d	$a2, $s5, $a3
	add.d	$a2, $fp, $a2
	addi.d	$a4, $a2, 15
	mul.d	$a2, $s6, $a3
	add.d	$a2, $fp, $a2
	addi.d	$a2, $a2, 15
	st.d	$a1, $sp, 24
	fst.d	$fa0, $sp, 16
	st.d	$a2, $sp, 8
	movfr2gr.d	$a5, $fs1
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s3
	move	$a6, $s4
	move	$a7, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 4
	addi.w	$s0, $s0, 1
	ori	$a0, $zero, 56
	beq	$s7, $a0, .LBB23_8
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s6, $a0, $s7
	ld.w	$s5, $s6, 4
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 92
	mul.d	$a2, $s5, $a1
	add.d	$a1, $s8, $a2
	ldx.w	$a2, $s8, $a2
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	add.d	$a2, $a3, $a2
	add.w	$a2, $a2, $a4
	move	$s3, $a0
	beqz	$a2, .LBB23_5
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	ld.w	$s4, $a1, 12
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	b	.LBB23_6
	.p2align	4, , 16
.LBB23_5:                               # %._crit_edge
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.w	$s4, $a1, 12
	fmov.d	$fs1, $fs0
.LBB23_6:                               #   in Loop: Header=BB23_3 Depth=1
	ld.w	$s6, $s6, 60
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 92
	mul.d	$a2, $s6, $a1
	add.d	$a1, $s8, $a2
	ldx.w	$a2, $s8, $a2
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	add.d	$a2, $a3, $a2
	add.w	$a2, $a2, $a4
	bnez	$a2, .LBB23_1
# %bb.7:                                # %._crit_edge33
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.w	$a1, $a1, 12
	fmov.d	$fa0, $fs0
	b	.LBB23_2
.LBB23_8:
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end23:
	.size	display_offence, .Lfunc_end23-display_offence
                                        # -- End function
	.globl	display_net                     # -- Begin function display_net
	.p2align	5
	.type	display_net,@function
display_net:                            # @display_net
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(net_ranks)
	ld.d	$a0, $a0, %got_pc_lo12(net_ranks)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(net_ranks_nfl)
	ld.d	$s1, $a0, %got_pc_lo12(net_ranks_nfl)
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$fp, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$s8, $a0, %got_pc_lo12(team_info)
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$s2, $a0, %pc_lo12(.L.str.96)
	move	$s7, $zero
	b	.LBB24_2
	.p2align	4, , 16
.LBB24_1:                               # %._crit_edge39
                                        #   in Loop: Header=BB24_2 Depth=1
	ori	$a3, $zero, 30
	mul.d	$a2, $s5, $a3
	add.d	$a2, $fp, $a2
	addi.d	$a4, $a2, 15
	mul.d	$a2, $s6, $a3
	add.d	$a2, $fp, $a2
	addi.d	$a2, $a2, 15
	st.d	$a1, $sp, 24
	fst.d	$fa0, $sp, 16
	st.d	$a2, $sp, 8
	movfr2gr.d	$a5, $fs1
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s3
	move	$a6, $s4
	move	$a7, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 4
	addi.w	$s0, $s0, 1
	ori	$a0, $zero, 56
	beq	$s7, $a0, .LBB24_6
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s6, $a0, $s7
	ld.w	$s5, $s6, 4
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 92
	mul.d	$a1, $s5, $a1
	add.d	$a2, $s8, $a1
	ldx.w	$a1, $s8, $a1
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a2, 12
	ld.w	$a2, $a2, 16
	move	$s3, $a0
	add.d	$a0, $a3, $a1
	add.w	$a0, $a0, $a4
	sub.w	$s4, $a5, $a2
	fmov.d	$fs1, $fs0
	beqz	$a0, .LBB24_4
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
.LBB24_4:                               # %._crit_edge
                                        #   in Loop: Header=BB24_2 Depth=1
	ld.w	$s6, $s6, 60
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(find_teams_rank)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 92
	mul.d	$a1, $s6, $a1
	add.d	$a2, $s8, $a1
	ldx.w	$a1, $s8, $a1
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a2, 12
	ld.w	$a6, $a2, 16
	add.d	$a1, $a3, $a1
	add.w	$a2, $a1, $a4
	sub.w	$a1, $a5, $a6
	fmov.d	$fa0, $fs0
	beqz	$a2, .LBB24_1
# %bb.5:                                #   in Loop: Header=BB24_2 Depth=1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB24_1
.LBB24_6:
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end24:
	.size	display_net, .Lfunc_end24-display_net
                                        # -- End function
	.globl	display_standings               # -- Begin function display_standings
	.p2align	5
	.type	display_standings,@function
display_standings:                      # @display_standings
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s1, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(standings)
	ld.d	$s2, $a0, %got_pc_lo12(standings)
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s4, $a0, %got_pc_lo12(team)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s8, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s3, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$s6, $a0, %got_pc_lo12(team_info)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs0, $a0
	b	.LBB25_3
	.p2align	4, , 16
.LBB25_1:                               #   in Loop: Header=BB25_3 Depth=1
	move	$a1, $zero
	move	$a7, $s3
.LBB25_2:                               # %.critedge270.thread
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 30
	mul.d	$a2, $s2, $a2
	add.d	$a2, $s4, $a2
	addi.d	$a2, $a2, 15
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 4
	move	$s2, $s1
	ori	$a0, $zero, 20
	beq	$s5, $a0, .LBB25_16
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	move	$s1, $s2
	add.d	$s0, $s2, $s5
	ld.w	$s2, $s0, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a3, $s8
	bnez	$a0, .LBB25_5
# %bb.4:                                #   in Loop: Header=BB25_3 Depth=1
	ld.w	$a0, $s0, 4
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a3, $a0, $a1
.LBB25_5:                               #   in Loop: Header=BB25_3 Depth=1
	ld.w	$a0, $s0, 4
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	addi.d	$s7, $a2, %pc_lo12(.L.str.23)
	vldi	$vr2, -928
	beqz	$a1, .LBB25_8
# %bb.6:                                #   in Loop: Header=BB25_3 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a7, $a2, $a1
	bcnez	$fcc0, .LBB25_9
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB25_3 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_10
	.p2align	4, , 16
.LBB25_8:                               #   in Loop: Header=BB25_3 Depth=1
	move	$a1, $zero
	move	$a7, $s3
	b	.LBB25_10
	.p2align	4, , 16
.LBB25_9:                               #   in Loop: Header=BB25_3 Depth=1
	move	$a1, $zero
.LBB25_10:                              # %.critedge.thread
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 30
	mul.d	$a2, $s2, $a2
	add.d	$a2, $s4, $a2
	addi.d	$a2, $a2, 15
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 60
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a3, $s8
	bnez	$a0, .LBB25_12
# %bb.11:                               #   in Loop: Header=BB25_3 Depth=1
	ld.w	$a0, $s0, 60
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a3, $a0, $a1
.LBB25_12:                              #   in Loop: Header=BB25_3 Depth=1
	ld.w	$a0, $s0, 60
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	vldi	$vr2, -928
	beqz	$a1, .LBB25_1
# %bb.13:                               #   in Loop: Header=BB25_3 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a7, $a2, $a1
	bcnez	$fcc0, .LBB25_15
# %bb.14:                               # %.critedge270
                                        #   in Loop: Header=BB25_3 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_2
	.p2align	4, , 16
.LBB25_15:                              #   in Loop: Header=BB25_3 Depth=1
	move	$a1, $zero
	b	.LBB25_2
.LBB25_16:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s8, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s3, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs0, $a0
	b	.LBB25_19
	.p2align	4, , 16
.LBB25_17:                              #   in Loop: Header=BB25_19 Depth=1
	move	$a1, $zero
	move	$a7, $s3
.LBB25_18:                              # %.critedge274.thread
                                        #   in Loop: Header=BB25_19 Depth=1
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 30
	mul.d	$a2, $s2, $a2
	add.d	$a2, $s4, $a2
	addi.d	$a2, $a2, 15
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 4
	move	$s2, $s1
	ori	$a0, $zero, 16
	beq	$s5, $a0, .LBB25_32
.LBB25_19:                              # =>This Inner Loop Header: Depth=1
	add.d	$s0, $s2, $s5
	ld.w	$s2, $s0, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a3, $s8
	bnez	$a0, .LBB25_21
# %bb.20:                               #   in Loop: Header=BB25_19 Depth=1
	ld.w	$a0, $s0, 24
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a3, $a0, $a1
.LBB25_21:                              #   in Loop: Header=BB25_19 Depth=1
	ld.w	$a0, $s0, 24
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	vldi	$vr2, -928
	beqz	$a1, .LBB25_24
# %bb.22:                               #   in Loop: Header=BB25_19 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a7, $a2, $a1
	bcnez	$fcc0, .LBB25_25
# %bb.23:                               # %.critedge272
                                        #   in Loop: Header=BB25_19 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_26
	.p2align	4, , 16
.LBB25_24:                              #   in Loop: Header=BB25_19 Depth=1
	move	$a1, $zero
	move	$a7, $s3
	b	.LBB25_26
	.p2align	4, , 16
.LBB25_25:                              #   in Loop: Header=BB25_19 Depth=1
	move	$a1, $zero
.LBB25_26:                              # %.critedge272.thread
                                        #   in Loop: Header=BB25_19 Depth=1
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 30
	mul.d	$a2, $s2, $a2
	add.d	$a2, $s4, $a2
	addi.d	$a2, $a2, 15
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 80
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a3, $s8
	bnez	$a0, .LBB25_28
# %bb.27:                               #   in Loop: Header=BB25_19 Depth=1
	ld.w	$a0, $s0, 80
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a3, $a0, $a1
.LBB25_28:                              #   in Loop: Header=BB25_19 Depth=1
	ld.w	$a0, $s0, 80
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	vldi	$vr2, -928
	beqz	$a1, .LBB25_17
# %bb.29:                               #   in Loop: Header=BB25_19 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a7, $a2, $a1
	bcnez	$fcc0, .LBB25_31
# %bb.30:                               # %.critedge274
                                        #   in Loop: Header=BB25_19 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_18
	.p2align	4, , 16
.LBB25_31:                              #   in Loop: Header=BB25_19 Depth=1
	move	$a1, $zero
	b	.LBB25_18
.LBB25_32:
	ld.w	$a0, $s2, 40
	ori	$a1, $zero, 30
	mul.d	$a1, $a0, $a1
	add.d	$s0, $s4, $a1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_34
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a3, $a0, %pc_lo12(.L.str.20)
	b	.LBB25_35
.LBB25_34:
	ld.w	$a0, $s2, 40
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	maskeqz	$a0, $a2, $a0
	or	$a3, $a0, $a1
.LBB25_35:
	ld.w	$a0, $s2, 40
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	addi.d	$a2, $s0, 15
	beqz	$a1, .LBB25_38
# %bb.36:
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a7, $fcc0
	masknez	$a1, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $a1
	bcnez	$fcc0, .LBB25_39
# %bb.37:                               # %.critedge276
	vldi	$vr1, -928
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	movgr2fr.d	$fa2, $a1
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_40
.LBB25_38:
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a7, $a1, %pc_lo12(.L.str.22)
.LBB25_39:
	move	$a1, $zero
.LBB25_40:                              # %.critedge276.thread
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 96
	ori	$a1, $zero, 30
	mul.d	$a1, $a0, $a1
	add.d	$s0, $s4, $a1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_42
# %bb.41:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a3, $a0, %pc_lo12(.L.str.20)
	b	.LBB25_43
.LBB25_42:
	ld.w	$a0, $s2, 96
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	maskeqz	$a0, $a2, $a0
	or	$a3, $a0, $a1
.LBB25_43:
	ld.w	$a0, $s2, 96
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	addi.d	$a2, $s0, 15
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	pcalau12i	$a7, %pc_hi20(.L.str.22)
	addi.d	$s5, $a7, %pc_lo12(.L.str.22)
	beqz	$a1, .LBB25_46
# %bb.44:
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a7, $fcc0
	masknez	$a1, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $a1
	bcnez	$fcc0, .LBB25_47
# %bb.45:                               # %.critedge278
	vldi	$vr1, -928
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	movgr2fr.d	$fa2, $a1
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_48
.LBB25_46:
	move	$a1, $zero
	move	$a7, $s5
	b	.LBB25_48
.LBB25_47:
	move	$a1, $zero
.LBB25_48:                              # %.critedge278.thread
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s8, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	movgr2fr.d	$fs0, $a0
	b	.LBB25_51
	.p2align	4, , 16
.LBB25_49:                              #   in Loop: Header=BB25_51 Depth=1
	move	$a1, $zero
	move	$a7, $s5
.LBB25_50:                              # %.critedge282.thread
                                        #   in Loop: Header=BB25_51 Depth=1
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 30
	mul.d	$a2, $s2, $a2
	add.d	$a2, $s4, $a2
	addi.d	$a2, $a2, 15
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 4
	move	$s2, $s1
	ori	$a0, $zero, 16
	beq	$s0, $a0, .LBB25_64
.LBB25_51:                              # =>This Inner Loop Header: Depth=1
	add.d	$s3, $s2, $s0
	ld.w	$s2, $s3, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a3, $s8
	bnez	$a0, .LBB25_53
# %bb.52:                               #   in Loop: Header=BB25_51 Depth=1
	ld.w	$a0, $s3, 44
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a3, $a0, $a1
.LBB25_53:                              #   in Loop: Header=BB25_51 Depth=1
	ld.w	$a0, $s3, 44
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	vldi	$vr2, -928
	beqz	$a1, .LBB25_56
# %bb.54:                               #   in Loop: Header=BB25_51 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a7, $a2, $a1
	bcnez	$fcc0, .LBB25_57
# %bb.55:                               # %.critedge280
                                        #   in Loop: Header=BB25_51 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_58
	.p2align	4, , 16
.LBB25_56:                              #   in Loop: Header=BB25_51 Depth=1
	move	$a1, $zero
	move	$a7, $s5
	b	.LBB25_58
	.p2align	4, , 16
.LBB25_57:                              #   in Loop: Header=BB25_51 Depth=1
	move	$a1, $zero
.LBB25_58:                              # %.critedge280.thread
                                        #   in Loop: Header=BB25_51 Depth=1
	ld.w	$t0, $a0, 12
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 30
	mul.d	$a2, $s2, $a2
	add.d	$a2, $s4, $a2
	addi.d	$a2, $a2, 15
	st.d	$a0, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$a1, $sp, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s3, 100
	move	$a0, $s2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$a3, $s8
	bnez	$a0, .LBB25_60
# %bb.59:                               #   in Loop: Header=BB25_51 Depth=1
	ld.w	$a0, $s3, 100
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a3, $a0, $a1
.LBB25_60:                              #   in Loop: Header=BB25_51 Depth=1
	ld.w	$a0, $s3, 100
	ori	$a1, $zero, 92
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s6, $a1
	ldx.w	$a4, $s6, $a1
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 8
	add.d	$a1, $a5, $a4
	add.w	$a1, $a1, $a6
	vldi	$vr2, -928
	beqz	$a1, .LBB25_49
# %bb.61:                               #   in Loop: Header=BB25_51 Depth=1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fcmp.cle.d	$fcc0, $fa1, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a7, $a2, $a1
	bcnez	$fcc0, .LBB25_63
# %bb.62:                               # %.critedge282
                                        #   in Loop: Header=BB25_51 Depth=1
	fmadd.d	$fa0, $fa0, $fs0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	b	.LBB25_50
	.p2align	4, , 16
.LBB25_63:                              #   in Loop: Header=BB25_51 Depth=1
	move	$a1, $zero
	b	.LBB25_50
.LBB25_64:
	ori	$a0, $zero, 10
	move	$a1, $fp
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end25:
	.size	display_standings, .Lfunc_end25-display_standings
                                        # -- End function
	.globl	display_team                    # -- Begin function display_team
	.p2align	5
	.type	display_team,@function
display_team:                           # @display_team
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(team)
	ld.d	$s1, $a0, %got_pc_lo12(team)
	addi.d	$a2, $s1, 45
	addi.d	$a3, $s1, 30
	addi.d	$a4, $s1, 465
	addi.d	$a5, $s1, 450
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$s0, $a0, %pc_lo12(.L.str.103)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 75
	addi.d	$a3, $s1, 60
	addi.d	$a4, $s1, 495
	addi.d	$a5, $s1, 480
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 105
	addi.d	$a3, $s1, 90
	addi.d	$a4, $s1, 525
	addi.d	$a5, $s1, 510
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 135
	addi.d	$a3, $s1, 120
	addi.d	$a4, $s1, 555
	addi.d	$a5, $s1, 540
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 165
	addi.d	$a3, $s1, 150
	addi.d	$a4, $s1, 585
	addi.d	$a5, $s1, 570
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 195
	addi.d	$a3, $s1, 180
	addi.d	$a4, $s1, 615
	addi.d	$a5, $s1, 600
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 225
	addi.d	$a3, $s1, 210
	addi.d	$a4, $s1, 645
	addi.d	$a5, $s1, 630
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 255
	addi.d	$a3, $s1, 240
	addi.d	$a4, $s1, 675
	addi.d	$a5, $s1, 660
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 285
	addi.d	$a3, $s1, 270
	addi.d	$a4, $s1, 705
	addi.d	$a5, $s1, 690
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 315
	addi.d	$a3, $s1, 300
	addi.d	$a4, $s1, 735
	addi.d	$a5, $s1, 720
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 345
	addi.d	$a3, $s1, 330
	addi.d	$a4, $s1, 765
	addi.d	$a5, $s1, 750
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 375
	addi.d	$a3, $s1, 360
	addi.d	$a4, $s1, 795
	addi.d	$a5, $s1, 780
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 405
	addi.d	$a3, $s1, 390
	addi.d	$a4, $s1, 825
	addi.d	$a5, $s1, 810
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s1, 435
	addi.d	$a3, $s1, 420
	addi.d	$a4, $s1, 855
	addi.d	$a5, $s1, 840
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end26:
	.size	display_team, .Lfunc_end26-display_team
                                        # -- End function
	.globl	display_main_menu               # -- Begin function display_main_menu
	.p2align	5
	.type	display_main_menu,@function
display_main_menu:                      # @display_main_menu
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
	pcalau12i	$s8, %pc_hi20(got_unused_responce)
	ld.w	$a2, $s8, %pc_lo12(got_unused_responce)
	move	$fp, $a1
	move	$s0, $a0
	bnez	$a2, .LBB27_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(current_with_disk)
	ld.d	$a0, $a0, %got_pc_lo12(current_with_disk)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB27_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	ori	$a1, $zero, 46
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB27_3:                               # %.preheader602
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$s0, $a0, %pc_lo12(.L.str.122)
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(white_space.commentP)
	ori	$s4, $zero, 37
	ori	$s7, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s2, $zero, 32
	ori	$s3, $zero, 1536
	lu32i.d	$s3, 1
	ori	$a0, $zero, 1537
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB27_9
.LBB27_4:                               #   in Loop: Header=BB27_9 Depth=1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
.LBB27_5:                               #   in Loop: Header=BB27_9 Depth=1
	bnez	$s6, .LBB27_264
# %bb.6:                                #   in Loop: Header=BB27_9 Depth=1
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB27_7:                               # %prompt.exit.thread
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB27_8:                               # %prompt.exit.thread
                                        #   in Loop: Header=BB27_9 Depth=1
	bnez	$a1, .LBB27_264
.LBB27_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_24 Depth 2
                                        #     Child Loop BB27_29 Depth 2
                                        #     Child Loop BB27_46 Depth 2
                                        #     Child Loop BB27_51 Depth 2
                                        #     Child Loop BB27_71 Depth 2
                                        #     Child Loop BB27_76 Depth 2
                                        #     Child Loop BB27_138 Depth 2
                                        #     Child Loop BB27_144 Depth 2
                                        #     Child Loop BB27_158 Depth 2
                                        #     Child Loop BB27_152 Depth 2
                                        #     Child Loop BB27_162 Depth 2
                                        #       Child Loop BB27_165 Depth 3
                                        #       Child Loop BB27_174 Depth 3
                                        #       Child Loop BB27_183 Depth 3
                                        #       Child Loop BB27_186 Depth 3
                                        #       Child Loop BB27_195 Depth 3
                                        #       Child Loop BB27_201 Depth 3
                                        #       Child Loop BB27_213 Depth 3
                                        #       Child Loop BB27_214 Depth 3
                                        #     Child Loop BB27_89 Depth 2
                                        #     Child Loop BB27_94 Depth 2
                                        #     Child Loop BB27_118 Depth 2
                                        #     Child Loop BB27_123 Depth 2
                                        #     Child Loop BB27_223 Depth 2
                                        #     Child Loop BB27_228 Depth 2
	ld.w	$a0, $s8, %pc_lo12(got_unused_responce)
	bnez	$a0, .LBB27_11
# %bb.10:                               #   in Loop: Header=BB27_9 Depth=1
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	move	$a0, $s0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB27_11:                              #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_13
# %bb.12:                               #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_38
.LBB27_13:                              #   in Loop: Header=BB27_9 Depth=1
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(terminate)
	ld.d	$a0, $a0, %got_pc_lo12(terminate)
	ori	$a2, $zero, 1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.w	$a2, $a0, 0
.LBB27_14:                              #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s6
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_17
# %bb.15:                               #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a1, $s6, 0
	ori	$a2, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_20
.LBB27_16:                              # %.critedge.sink.split.i
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a2
	b	.LBB27_29
	.p2align	4, , 16
.LBB27_17:                              #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s6
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_39
# %bb.18:                               #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a1, $s6, 0
	ori	$a2, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_42
.LBB27_19:                              # %.critedge.sink.split.i188
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a2
	b	.LBB27_51
	.p2align	4, , 16
.LBB27_20:                              # %.lr.ph.i
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a2, $s1, %pc_lo12(white_space.commentP)
	beqz	$a2, .LBB27_24
# %bb.21:                               # %.split.us.i
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_29
# %bb.22:                               #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_16
	.p2align	4, , 16
.LBB27_23:                              #   in Loop: Header=BB27_24 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a3, $s6, 1
	ori	$a2, $zero, 37
	move	$s6, $a3
	beq	$a1, $a2, .LBB27_113
.LBB27_24:                              # %.lr.ph.split.i
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $a1, .LBB27_23
# %bb.25:                               # %.lr.ph.split.i
                                        #   in Loop: Header=BB27_24 Depth=2
	sll.d	$a2, $s5, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB27_23
# %bb.26:                               # %.critedge.i.preheader.loopexit
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_29
	.p2align	4, , 16
.LBB27_27:                              # %.thread.sink.split.i
                                        #   in Loop: Header=BB27_29 Depth=2
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
.LBB27_28:                              # %.thread.i
                                        #   in Loop: Header=BB27_29 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_29:                              # %.critedge.i
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB27_27
# %bb.30:                               #   in Loop: Header=BB27_29 Depth=2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB27_33
# %bb.31:                               #   in Loop: Header=BB27_29 Depth=2
	beq	$a1, $s7, .LBB27_27
# %bb.32:                               #   in Loop: Header=BB27_29 Depth=2
	ori	$a0, $zero, 1
	bnez	$a1, .LBB27_28
	b	.LBB27_36
	.p2align	4, , 16
.LBB27_33:                              #   in Loop: Header=BB27_29 Depth=2
	bltu	$s2, $a1, .LBB27_36
# %bb.34:                               #   in Loop: Header=BB27_29 Depth=2
	sll.d	$a0, $s5, $a1
	and	$a0, $a0, $s3
	beqz	$a0, .LBB27_36
# %bb.35:                               #   in Loop: Header=BB27_29 Depth=2
	move	$a0, $zero
	b	.LBB27_28
	.p2align	4, , 16
.LBB27_36:                              # %skip_first.exit
                                        #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_261
# %bb.37:                               #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_8
	b	.LBB27_262
.LBB27_38:                              #   in Loop: Header=BB27_9 Depth=1
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	b	.LBB27_14
.LBB27_39:                              #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s6
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_84
# %bb.40:                               #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a1, $s6, 0
	ori	$a2, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_85
.LBB27_41:                              # %.critedge.sink.split.i279
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a2
	b	.LBB27_94
.LBB27_42:                              # %.lr.ph.i177
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a2, $s1, %pc_lo12(white_space.commentP)
	beqz	$a2, .LBB27_46
# %bb.43:                               # %.split.us.i192
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_51
# %bb.44:                               #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_19
	.p2align	4, , 16
.LBB27_45:                              #   in Loop: Header=BB27_46 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a3, $s6, 1
	ori	$a2, $zero, 37
	move	$s6, $a3
	beq	$a1, $a2, .LBB27_238
.LBB27_46:                              # %.lr.ph.split.i179
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $a1, .LBB27_45
# %bb.47:                               # %.lr.ph.split.i179
                                        #   in Loop: Header=BB27_46 Depth=2
	sll.d	$a2, $s5, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB27_45
# %bb.48:                               # %.critedge.i181.preheader.loopexit
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_51
	.p2align	4, , 16
.LBB27_49:                              # %.thread.sink.split.i187
                                        #   in Loop: Header=BB27_51 Depth=2
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
.LBB27_50:                              # %.thread.i185
                                        #   in Loop: Header=BB27_51 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_51:                              # %.critedge.i181
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB27_49
# %bb.52:                               #   in Loop: Header=BB27_51 Depth=2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB27_55
# %bb.53:                               #   in Loop: Header=BB27_51 Depth=2
	beq	$a1, $s7, .LBB27_49
# %bb.54:                               #   in Loop: Header=BB27_51 Depth=2
	ori	$a0, $zero, 1
	bnez	$a1, .LBB27_50
	b	.LBB27_58
	.p2align	4, , 16
.LBB27_55:                              #   in Loop: Header=BB27_51 Depth=2
	bltu	$s2, $a1, .LBB27_58
# %bb.56:                               #   in Loop: Header=BB27_51 Depth=2
	sll.d	$a0, $s5, $a1
	and	$a0, $a0, $s3
	beqz	$a0, .LBB27_58
# %bb.57:                               #   in Loop: Header=BB27_51 Depth=2
	move	$a0, $zero
	b	.LBB27_50
	.p2align	4, , 16
.LBB27_58:                              # %skip_first.exit193
                                        #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_264
# %bb.59:                               #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_265
# %bb.60:                               #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_63
# %bb.61:                               #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a1, $s6, 0
	ori	$a2, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_67
.LBB27_62:                              # %.critedge.sink.split.i205
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a2
	b	.LBB27_76
.LBB27_63:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_104
# %bb.64:                               #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a1, $s6, 0
	ori	$a2, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_134
# %bb.65:                               #   in Loop: Header=BB27_9 Depth=1
	ori	$a4, $zero, 2
.LBB27_66:                              # %.critedge.sink.split.i224
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a2
	b	.LBB27_141
.LBB27_67:                              # %.lr.ph.i194
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a2, $s1, %pc_lo12(white_space.commentP)
	beqz	$a2, .LBB27_71
# %bb.68:                               # %.split.us.i209
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_76
# %bb.69:                               #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_62
	.p2align	4, , 16
.LBB27_70:                              #   in Loop: Header=BB27_71 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a3, $s6, 1
	ori	$a2, $zero, 37
	move	$s6, $a3
	beq	$a1, $a2, .LBB27_254
.LBB27_71:                              # %.lr.ph.split.i196
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $a1, .LBB27_70
# %bb.72:                               # %.lr.ph.split.i196
                                        #   in Loop: Header=BB27_71 Depth=2
	sll.d	$a2, $s5, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB27_70
# %bb.73:                               # %.critedge.i198.preheader.loopexit
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_76
	.p2align	4, , 16
.LBB27_74:                              # %.thread.sink.split.i204
                                        #   in Loop: Header=BB27_76 Depth=2
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
.LBB27_75:                              # %.thread.i202
                                        #   in Loop: Header=BB27_76 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_76:                              # %.critedge.i198
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB27_74
# %bb.77:                               #   in Loop: Header=BB27_76 Depth=2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB27_80
# %bb.78:                               #   in Loop: Header=BB27_76 Depth=2
	beq	$a1, $s7, .LBB27_74
# %bb.79:                               #   in Loop: Header=BB27_76 Depth=2
	ori	$a0, $zero, 1
	bnez	$a1, .LBB27_75
	b	.LBB27_83
	.p2align	4, , 16
.LBB27_80:                              #   in Loop: Header=BB27_76 Depth=2
	bltu	$s2, $a1, .LBB27_83
# %bb.81:                               #   in Loop: Header=BB27_76 Depth=2
	sll.d	$a0, $s5, $a1
	and	$a0, $a0, $s3
	beqz	$a0, .LBB27_83
# %bb.82:                               #   in Loop: Header=BB27_76 Depth=2
	move	$a0, $zero
	b	.LBB27_75
.LBB27_83:                              # %skip_first.exit210
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(find_name)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_249
	b	.LBB27_266
.LBB27_84:                              #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s6
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_8
	b	.LBB27_269
.LBB27_85:                              # %.lr.ph.i268
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a2, $s1, %pc_lo12(white_space.commentP)
	beqz	$a2, .LBB27_89
# %bb.86:                               # %.split.us.i283
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_94
# %bb.87:                               #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_41
	.p2align	4, , 16
.LBB27_88:                              #   in Loop: Header=BB27_89 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a3, $s6, 1
	ori	$a2, $zero, 37
	move	$s6, $a3
	beq	$a1, $a2, .LBB27_255
.LBB27_89:                              # %.lr.ph.split.i270
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $a1, .LBB27_88
# %bb.90:                               # %.lr.ph.split.i270
                                        #   in Loop: Header=BB27_89 Depth=2
	sll.d	$a2, $s5, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB27_88
# %bb.91:                               # %.critedge.i272.preheader.loopexit
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_94
	.p2align	4, , 16
.LBB27_92:                              # %.thread.sink.split.i278
                                        #   in Loop: Header=BB27_94 Depth=2
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
.LBB27_93:                              # %.thread.i276
                                        #   in Loop: Header=BB27_94 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_94:                              # %.critedge.i272
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB27_92
# %bb.95:                               #   in Loop: Header=BB27_94 Depth=2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB27_98
# %bb.96:                               #   in Loop: Header=BB27_94 Depth=2
	beq	$a1, $s7, .LBB27_92
# %bb.97:                               #   in Loop: Header=BB27_94 Depth=2
	ori	$a0, $zero, 1
	bnez	$a1, .LBB27_93
	b	.LBB27_101
	.p2align	4, , 16
.LBB27_98:                              #   in Loop: Header=BB27_94 Depth=2
	bltu	$s2, $a1, .LBB27_101
# %bb.99:                               #   in Loop: Header=BB27_94 Depth=2
	sll.d	$a0, $s5, $a1
	and	$a0, $a0, $s3
	beqz	$a0, .LBB27_101
# %bb.100:                              #   in Loop: Header=BB27_94 Depth=2
	move	$a0, $zero
	b	.LBB27_93
.LBB27_101:                             # %skip_first.exit284
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s6
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_4
# %bb.102:                              #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a1, $s6, 0
	ori	$a2, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_114
.LBB27_103:                             # %.critedge.sink.split.i296
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a2
	b	.LBB27_123
.LBB27_104:                             #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_270
# %bb.105:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_271
# %bb.106:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_272
# %bb.107:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_273
# %bb.108:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_274
# %bb.109:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_242
# %bb.110:                              #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(skip_first)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.84)
	addi.d	$a1, $a1, %pc_lo12(.L.str.84)
	addi.d	$a2, $sp, 136
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 136
	blez	$a1, .LBB27_256
# %bb.111:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %got_pc_hi20(num_games)
	ld.d	$a0, $a0, %got_pc_lo12(num_games)
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB27_249
# %bb.112:                              #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $s0
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(display_week)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$s0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(prompt)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	beqz	$a2, .LBB27_250
	b	.LBB27_264
.LBB27_113:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $a3
	b	.LBB27_16
.LBB27_114:                             # %.lr.ph.i285
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a2, $s1, %pc_lo12(white_space.commentP)
	beqz	$a2, .LBB27_118
# %bb.115:                              # %.split.us.i300
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_123
# %bb.116:                              #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_103
	.p2align	4, , 16
.LBB27_117:                             #   in Loop: Header=BB27_118 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a3, $s6, 1
	ori	$a2, $zero, 37
	move	$s6, $a3
	beq	$a1, $a2, .LBB27_258
.LBB27_118:                             # %.lr.ph.split.i287
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $a1, .LBB27_117
# %bb.119:                              # %.lr.ph.split.i287
                                        #   in Loop: Header=BB27_118 Depth=2
	sll.d	$a2, $s5, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB27_117
# %bb.120:                              # %.critedge.i289.preheader.loopexit
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_123
	.p2align	4, , 16
.LBB27_121:                             # %.thread.sink.split.i295
                                        #   in Loop: Header=BB27_123 Depth=2
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
.LBB27_122:                             # %.thread.i293
                                        #   in Loop: Header=BB27_123 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_123:                             # %.critedge.i289
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB27_121
# %bb.124:                              #   in Loop: Header=BB27_123 Depth=2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB27_127
# %bb.125:                              #   in Loop: Header=BB27_123 Depth=2
	beq	$a1, $s7, .LBB27_121
# %bb.126:                              #   in Loop: Header=BB27_123 Depth=2
	ori	$a0, $zero, 1
	bnez	$a1, .LBB27_122
	b	.LBB27_130
	.p2align	4, , 16
.LBB27_127:                             #   in Loop: Header=BB27_123 Depth=2
	bltu	$s2, $a1, .LBB27_130
# %bb.128:                              #   in Loop: Header=BB27_123 Depth=2
	sll.d	$a0, $s5, $a1
	and	$a0, $a0, $s3
	beqz	$a0, .LBB27_130
# %bb.129:                              #   in Loop: Header=BB27_123 Depth=2
	move	$a0, $zero
	b	.LBB27_122
.LBB27_130:                             # %skip_first.exit301
                                        #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	addi.d	$a2, $sp, 136
	move	$a0, $s6
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 136
	blez	$a2, .LBB27_4
# %bb.131:                              # %skip_first.exit301
                                        #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %got_pc_hi20(num_games)
	ld.d	$a0, $a0, %got_pc_lo12(num_games)
	ld.w	$a0, $a0, 0
	blt	$a0, $a2, .LBB27_4
# %bb.132:                              #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a1, $s6, 0
	ori	$a3, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a3, .LBB27_219
.LBB27_133:                             # %.critedge.sink.split.i313
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a3
	b	.LBB27_228
.LBB27_134:                             # %.lr.ph.i213
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a2, $s1, %pc_lo12(white_space.commentP)
	ori	$a4, $zero, 2
	beqz	$a2, .LBB27_138
# %bb.135:                              # %.split.us.i228
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_141
# %bb.136:                              #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_66
	.p2align	4, , 16
.LBB27_137:                             #   in Loop: Header=BB27_138 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a3, $s6, 1
	ori	$a2, $zero, 37
	move	$s6, $a3
	beq	$a1, $a2, .LBB27_259
.LBB27_138:                             # %.lr.ph.split.i215
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $a1, .LBB27_137
# %bb.139:                              # %.lr.ph.split.i215
                                        #   in Loop: Header=BB27_138 Depth=2
	sll.d	$a2, $s5, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB27_137
# %bb.140:                              # %.critedge.i217.preheader.loopexit
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
.LBB27_141:                             # %.critedge.i217.preheader
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a2, $a0
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB27_144
	.p2align	4, , 16
.LBB27_142:                             # %.thread.sink.split.i223
                                        #   in Loop: Header=BB27_144 Depth=2
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
	move	$a2, $a0
.LBB27_143:                             # %.thread.i221
                                        #   in Loop: Header=BB27_144 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_144:                             # %.critedge.i217
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB27_142
# %bb.145:                              #   in Loop: Header=BB27_144 Depth=2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB27_148
# %bb.146:                              #   in Loop: Header=BB27_144 Depth=2
	beq	$a1, $s7, .LBB27_142
# %bb.147:                              #   in Loop: Header=BB27_144 Depth=2
	ori	$a2, $zero, 1
	bnez	$a1, .LBB27_143
	b	.LBB27_151
	.p2align	4, , 16
.LBB27_148:                             #   in Loop: Header=BB27_144 Depth=2
	bltu	$s2, $a1, .LBB27_151
# %bb.149:                              #   in Loop: Header=BB27_144 Depth=2
	sll.d	$a1, $s5, $a1
	and	$a1, $a1, $s3
	beqz	$a1, .LBB27_151
# %bb.150:                              #   in Loop: Header=BB27_144 Depth=2
	move	$a2, $zero
	b	.LBB27_143
.LBB27_151:                             #   in Loop: Header=BB27_9 Depth=1
	move	$a1, $a0
	ld.bu	$s0, $s6, 0
	beq	$s0, $s4, .LBB27_158
	.p2align	4, , 16
.LBB27_152:                             #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB27_155
# %bb.153:                              #   in Loop: Header=BB27_152 Depth=2
	beq	$s0, $s7, .LBB27_158
# %bb.154:                              #   in Loop: Header=BB27_152 Depth=2
	ori	$a1, $zero, 1
	bnez	$s0, .LBB27_157
	b	.LBB27_244
	.p2align	4, , 16
.LBB27_155:                             #   in Loop: Header=BB27_152 Depth=2
	addi.d	$a2, $s0, -9
	move	$a1, $zero
	bltu	$a2, $a4, .LBB27_157
# %bb.156:                              #   in Loop: Header=BB27_152 Depth=2
	bne	$s0, $s2, .LBB27_159
.LBB27_157:                             # %.thread.i231
                                        #   in Loop: Header=BB27_152 Depth=2
	addi.d	$s6, $s6, 1
	ld.bu	$s0, $s6, 0
	bne	$s0, $s4, .LBB27_152
.LBB27_158:                             # %.thread.sink.split.i233
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $s0, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a0
	addi.d	$s6, $s6, 1
	ld.bu	$s0, $s6, 0
	beq	$s0, $s4, .LBB27_158
	b	.LBB27_152
.LBB27_159:                             #   in Loop: Header=BB27_9 Depth=1
	beqz	$s0, .LBB27_244
# %bb.160:                              # %.lr.ph369.preheader
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$s8, $zero
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	b	.LBB27_162
	.p2align	4, , 16
.LBB27_161:                             # %skip_white_space.exit259
                                        #   in Loop: Header=BB27_162 Depth=2
	sltui	$a1, $s0, 1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beqz	$s0, .LBB27_251
.LBB27_162:                             # %.lr.ph369
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_165 Depth 3
                                        #       Child Loop BB27_174 Depth 3
                                        #       Child Loop BB27_183 Depth 3
                                        #       Child Loop BB27_186 Depth 3
                                        #       Child Loop BB27_195 Depth 3
                                        #       Child Loop BB27_201 Depth 3
                                        #       Child Loop BB27_213 Depth 3
                                        #       Child Loop BB27_214 Depth 3
	move	$a2, $a0
	move	$a1, $s6
	b	.LBB27_165
	.p2align	4, , 16
.LBB27_163:                             # %.thread.sink.split.i.i
                                        #   in Loop: Header=BB27_165 Depth=3
	addi.d	$a2, $s0, -37
	sltui	$a0, $a2, 1
	sltui	$a2, $a2, 1
	st.b	$a2, $s1, %pc_lo12(white_space.commentP)
	move	$a2, $a0
.LBB27_164:                             # %.thread.i.i
                                        #   in Loop: Header=BB27_165 Depth=3
	ld.bu	$s0, $a1, 1
	addi.d	$a1, $a1, 1
.LBB27_165:                             #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s0, $s4, .LBB27_163
# %bb.166:                              #   in Loop: Header=BB27_165 Depth=3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB27_169
# %bb.167:                              #   in Loop: Header=BB27_165 Depth=3
	beq	$s0, $s7, .LBB27_163
# %bb.168:                              #   in Loop: Header=BB27_165 Depth=3
	ori	$a2, $zero, 1
	bnez	$s0, .LBB27_164
	b	.LBB27_172
	.p2align	4, , 16
.LBB27_169:                             #   in Loop: Header=BB27_165 Depth=3
	bltu	$s2, $s0, .LBB27_172
# %bb.170:                              #   in Loop: Header=BB27_165 Depth=3
	sll.d	$a2, $s5, $s0
	and	$a2, $a2, $s3
	beqz	$a2, .LBB27_172
# %bb.171:                              #   in Loop: Header=BB27_165 Depth=3
	move	$a2, $zero
	b	.LBB27_164
	.p2align	4, , 16
.LBB27_172:                             # %.lr.ph.i235
                                        #   in Loop: Header=BB27_162 Depth=2
	andi	$a2, $a0, 1
	move	$a0, $a1
	move	$fp, $a1
	beqz	$a2, .LBB27_174
	b	.LBB27_178
	.p2align	4, , 16
.LBB27_173:                             # %white_space.exit.i
                                        #   in Loop: Header=BB27_174 Depth=3
	ld.bu	$s0, $a0, 1
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	beq	$s0, $s4, .LBB27_177
.LBB27_174:                             # %.lr.ph.split.i236
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$s2, $s0, .LBB27_173
# %bb.175:                              # %.lr.ph.split.i236
                                        #   in Loop: Header=BB27_174 Depth=3
	sll.d	$a2, $s5, $s0
	and	$a2, $a2, $s3
	beqz	$a2, .LBB27_173
# %bb.176:                              # %find_next_name.exit.loopexit
                                        #   in Loop: Header=BB27_162 Depth=2
	move	$fp, $a0
	b	.LBB27_178
.LBB27_177:                             # %._crit_edge.i
                                        #   in Loop: Header=BB27_162 Depth=2
	st.b	$s5, $s1, %pc_lo12(white_space.commentP)
	ori	$s0, $zero, 37
	.p2align	4, , 16
.LBB27_178:                             # %find_next_name.exit
                                        #   in Loop: Header=BB27_162 Depth=2
	st.b	$zero, $fp, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(find_name)
	jirl	$ra, $ra, 0
	st.b	$s0, $fp, 0
	beqz	$a0, .LBB27_243
# %bb.179:                              # %.preheader
                                        #   in Loop: Header=BB27_162 Depth=2
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	blez	$s8, .LBB27_188
# %bb.180:                              # %.lr.ph.preheader
                                        #   in Loop: Header=BB27_162 Depth=2
	ori	$a1, $zero, 8
	bgeu	$s8, $a1, .LBB27_182
# %bb.181:                              #   in Loop: Header=BB27_162 Depth=2
	move	$a1, $zero
	ori	$a2, $zero, 1
	b	.LBB27_185
	.p2align	4, , 16
.LBB27_182:                             # %vector.ph
                                        #   in Loop: Header=BB27_162 Depth=2
	bstrpick.d	$a1, $s8, 30, 3
	slli.d	$a1, $a1, 3
	vreplgr2vr.w	$vr0, $a0
	addi.d	$a2, $sp, 152
	move	$a3, $a1
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vori.b	$vr1, $vr2, 0
	.p2align	4, , 16
.LBB27_183:                             # %vector.body
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $a2, -16
	vld	$vr4, $a2, 0
	vseq.w	$vr3, $vr3, $vr0
	vseq.w	$vr4, $vr4, $vr0
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB27_183
# %bb.184:                              # %middle.block
                                        #   in Loop: Header=BB27_162 Depth=2
	vor.v	$vr0, $vr2, $vr1
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	sltui	$a2, $a2, 1
	beq	$a1, $s8, .LBB27_187
.LBB27_185:                             # %.lr.ph.preheader587
                                        #   in Loop: Header=BB27_162 Depth=2
	addi.d	$a3, $sp, 136
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a1, $s8, $a1
	.p2align	4, , 16
.LBB27_186:                             # %.lr.ph
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	xor	$a4, $a4, $a0
	sltui	$a4, $a4, 1
	masknez	$a2, $a2, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB27_186
.LBB27_187:                             # %._crit_edge
                                        #   in Loop: Header=BB27_162 Depth=2
	beqz	$a2, .LBB27_189
.LBB27_188:                             # %._crit_edge.thread
                                        #   in Loop: Header=BB27_162 Depth=2
	slli.d	$a1, $s8, 2
	addi.d	$a2, $sp, 136
	stx.w	$a0, $a1, $a2
	addi.w	$s8, $s8, 1
.LBB27_189:                             #   in Loop: Header=BB27_162 Depth=2
	ld.bu	$a1, $s6, 0
	ori	$a2, $zero, 37
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_191
.LBB27_190:                             # %.critedge.sink.split.i248
                                        #   in Loop: Header=BB27_162 Depth=2
	st.b	$a0, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a2
	b	.LBB27_198
	.p2align	4, , 16
.LBB27_191:                             # %.lr.ph.i237
                                        #   in Loop: Header=BB27_162 Depth=2
	ld.bu	$a2, $s1, %pc_lo12(white_space.commentP)
	beqz	$a2, .LBB27_195
# %bb.192:                              # %.split.us.i252
                                        #   in Loop: Header=BB27_162 Depth=2
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB27_198
# %bb.193:                              #   in Loop: Header=BB27_162 Depth=2
	move	$a0, $zero
	b	.LBB27_190
	.p2align	4, , 16
.LBB27_194:                             #   in Loop: Header=BB27_195 Depth=3
	ld.bu	$a1, $s6, 1
	addi.d	$a3, $s6, 1
	ori	$a2, $zero, 37
	move	$s6, $a3
	beq	$a1, $a2, .LBB27_218
.LBB27_195:                             # %.lr.ph.split.i239
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$s2, $a1, .LBB27_194
# %bb.196:                              # %.lr.ph.split.i239
                                        #   in Loop: Header=BB27_195 Depth=3
	sll.d	$a2, $s5, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB27_194
# %bb.197:                              # %.critedge.i241.preheader.loopexit
                                        #   in Loop: Header=BB27_162 Depth=2
	move	$a0, $zero
.LBB27_198:                             # %.critedge.i241.preheader
                                        #   in Loop: Header=BB27_162 Depth=2
	move	$a2, $a0
	b	.LBB27_201
	.p2align	4, , 16
.LBB27_199:                             # %.thread.sink.split.i247
                                        #   in Loop: Header=BB27_201 Depth=3
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
	move	$a2, $a0
.LBB27_200:                             # %.thread.i245
                                        #   in Loop: Header=BB27_201 Depth=3
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_201:                             # %.critedge.i241
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a1, $s4, .LBB27_199
# %bb.202:                              #   in Loop: Header=BB27_201 Depth=3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB27_205
# %bb.203:                              #   in Loop: Header=BB27_201 Depth=3
	beq	$a1, $s7, .LBB27_199
# %bb.204:                              #   in Loop: Header=BB27_201 Depth=3
	ori	$a2, $zero, 1
	bnez	$a1, .LBB27_200
	b	.LBB27_208
	.p2align	4, , 16
.LBB27_205:                             #   in Loop: Header=BB27_201 Depth=3
	bltu	$s2, $a1, .LBB27_208
# %bb.206:                              #   in Loop: Header=BB27_201 Depth=3
	sll.d	$a1, $s5, $a1
	and	$a1, $a1, $s3
	beqz	$a1, .LBB27_208
# %bb.207:                              #   in Loop: Header=BB27_201 Depth=3
	move	$a2, $zero
	b	.LBB27_200
	.p2align	4, , 16
.LBB27_208:                             #   in Loop: Header=BB27_162 Depth=2
	move	$a1, $a0
	ld.bu	$s0, $s6, 0
	bne	$s0, $s4, .LBB27_214
	b	.LBB27_213
	.p2align	4, , 16
.LBB27_209:                             # %.thread.i256
                                        #   in Loop: Header=BB27_214 Depth=3
	addi.d	$s6, $s6, 1
	ld.bu	$s0, $s6, 0
	bne	$s0, $s4, .LBB27_214
	b	.LBB27_213
	.p2align	4, , 16
.LBB27_210:                             #   in Loop: Header=BB27_214 Depth=3
	bltu	$s2, $s0, .LBB27_161
# %bb.211:                              #   in Loop: Header=BB27_214 Depth=3
	sll.d	$a1, $s5, $s0
	and	$a1, $a1, $s3
	beqz	$a1, .LBB27_161
# %bb.212:                              #   in Loop: Header=BB27_214 Depth=3
	move	$a1, $zero
	addi.d	$s6, $s6, 1
	ld.bu	$s0, $s6, 0
	bne	$s0, $s4, .LBB27_214
	.p2align	4, , 16
.LBB27_213:                             # %.thread.sink.split.i258
                                        #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a1, $s0, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
	move	$a1, $a0
	addi.d	$s6, $s6, 1
	ld.bu	$s0, $s6, 0
	beq	$s0, $s4, .LBB27_213
.LBB27_214:                             #   Parent Loop BB27_9 Depth=1
                                        #     Parent Loop BB27_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB27_210
# %bb.215:                              #   in Loop: Header=BB27_214 Depth=3
	beq	$s0, $s7, .LBB27_213
# %bb.216:                              #   in Loop: Header=BB27_214 Depth=3
	ori	$a1, $zero, 1
	bnez	$s0, .LBB27_209
# %bb.217:                              # %skip_white_space.exit259.thread.loopexit
                                        #   in Loop: Header=BB27_162 Depth=2
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	bnez	$s0, .LBB27_162
	b	.LBB27_251
.LBB27_218:                             #   in Loop: Header=BB27_162 Depth=2
	move	$s6, $a3
	b	.LBB27_190
.LBB27_219:                             # %.lr.ph.i302
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a3, $s1, %pc_lo12(white_space.commentP)
	beqz	$a3, .LBB27_223
# %bb.220:                              # %.split.us.i317
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$a3, $zero, 10
	ori	$a0, $zero, 1
	bne	$a1, $a3, .LBB27_228
# %bb.221:                              #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_133
	.p2align	4, , 16
.LBB27_222:                             #   in Loop: Header=BB27_223 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a4, $s6, 1
	ori	$a3, $zero, 37
	move	$s6, $a4
	beq	$a1, $a3, .LBB27_260
.LBB27_223:                             # %.lr.ph.split.i304
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s2, $a1, .LBB27_222
# %bb.224:                              # %.lr.ph.split.i304
                                        #   in Loop: Header=BB27_223 Depth=2
	sll.d	$a3, $s5, $a1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	and	$a3, $a3, $a4
	beqz	$a3, .LBB27_222
# %bb.225:                              # %.critedge.i306.preheader.loopexit
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $zero
	b	.LBB27_228
	.p2align	4, , 16
.LBB27_226:                             # %.thread.sink.split.i312
                                        #   in Loop: Header=BB27_228 Depth=2
	addi.d	$a1, $a1, -37
	sltui	$a0, $a1, 1
	sltui	$a1, $a1, 1
	st.b	$a1, $s1, %pc_lo12(white_space.commentP)
.LBB27_227:                             # %.thread.i310
                                        #   in Loop: Header=BB27_228 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$s6, $s6, 1
.LBB27_228:                             # %.critedge.i306
                                        #   Parent Loop BB27_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s4, .LBB27_226
# %bb.229:                              #   in Loop: Header=BB27_228 Depth=2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB27_232
# %bb.230:                              #   in Loop: Header=BB27_228 Depth=2
	beq	$a1, $s7, .LBB27_226
# %bb.231:                              #   in Loop: Header=BB27_228 Depth=2
	ori	$a0, $zero, 1
	bnez	$a1, .LBB27_227
	b	.LBB27_235
	.p2align	4, , 16
.LBB27_232:                             #   in Loop: Header=BB27_228 Depth=2
	bltu	$s2, $a1, .LBB27_235
# %bb.233:                              #   in Loop: Header=BB27_228 Depth=2
	sll.d	$a0, $s5, $a1
	and	$a0, $a0, $s3
	beqz	$a0, .LBB27_235
# %bb.234:                              #   in Loop: Header=BB27_228 Depth=2
	move	$a0, $zero
	b	.LBB27_227
.LBB27_235:                             # %skip_first.exit318
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB27_239
# %bb.236:                              #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a1, $a0, %pc_lo12(.L.str.140)
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_5
# %bb.237:                              #   in Loop: Header=BB27_9 Depth=1
	ld.w	$a2, $sp, 136
	move	$s6, $s0
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(enter_prompt_week)
	jirl	$ra, $ra, 0
	b	.LBB27_240
.LBB27_238:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $a3
	b	.LBB27_19
.LBB27_239:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $s0
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(enter_week)
	jirl	$ra, $ra, 0
.LBB27_240:                             #   in Loop: Header=BB27_9 Depth=1
	pcaddu18i	$ra, %call36(compute_team_info)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sort_all)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $s0
	move	$s0, $s6
	ori	$s6, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB27_5
# %bb.241:                              # %prompt.exit320.sink.split
                                        #   in Loop: Header=BB27_9 Depth=1
	ori	$s6, $zero, 1
	st.w	$s6, $s8, %pc_lo12(got_unused_responce)
	b	.LBB27_5
.LBB27_242:                             #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a1, $a0, %pc_lo12(.L.str.137)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(matches)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB27_249
	b	.LBB27_275
.LBB27_243:                             # %.thread
                                        #   in Loop: Header=BB27_9 Depth=1
	st.b	$zero, $s6, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
.LBB27_244:                             # %._crit_edge370.thread
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$s8, $zero
	move	$a0, $zero
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	beqz	$s6, .LBB27_248
.LBB27_245:                             #   in Loop: Header=BB27_9 Depth=1
	addi.d	$a1, $sp, 136
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(display_multi_tiebreaker)
	jirl	$ra, $ra, 0
.LBB27_246:                             #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 0
	move	$a0, $s6
	beqz	$a1, .LBB27_248
# %bb.247:                              # %prompt.exit261.sink.split
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$s5, $a0, %pc_lo12(got_unused_responce)
	move	$a0, $s6
.LBB27_248:                             # %prompt.exit261
                                        #   in Loop: Header=BB27_9 Depth=1
	move	$a2, $a0
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
.LBB27_249:                             # %prompt.exit
                                        #   in Loop: Header=BB27_9 Depth=1
	bnez	$a2, .LBB27_264
.LBB27_250:                             #   in Loop: Header=BB27_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	b	.LBB27_7
.LBB27_251:                             # %._crit_edge370
                                        #   in Loop: Header=BB27_9 Depth=1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bne	$s8, $s5, .LBB27_257
# %bb.252:                              # %._crit_edge370
                                        #   in Loop: Header=BB27_9 Depth=1
	beqz	$s6, .LBB27_257
# %bb.253:                              #   in Loop: Header=BB27_9 Depth=1
	ld.w	$a1, $sp, 136
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(display_tiebreaker)
	jirl	$ra, $ra, 0
	b	.LBB27_246
.LBB27_254:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $a3
	b	.LBB27_62
.LBB27_255:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $a3
	b	.LBB27_41
.LBB27_256:                             #   in Loop: Header=BB27_9 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beqz	$a2, .LBB27_250
	b	.LBB27_264
.LBB27_257:                             #   in Loop: Header=BB27_9 Depth=1
	move	$a0, $s6
	bnez	$s6, .LBB27_245
	b	.LBB27_248
.LBB27_258:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $a3
	b	.LBB27_103
.LBB27_259:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $a3
	b	.LBB27_66
.LBB27_260:                             #   in Loop: Header=BB27_9 Depth=1
	move	$s6, $a4
	b	.LBB27_133
.LBB27_261:
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$a0, $a0, %got_pc_lo12(team_info)
	pcalau12i	$a1, %got_pc_hi20(standings)
	ld.d	$a1, $a1, %got_pc_lo12(standings)
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	b	.LBB27_263
.LBB27_262:
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$a0, $a0, %got_pc_lo12(team_info)
	pcalau12i	$a1, %got_pc_hi20(conf_standings)
	ld.d	$a1, $a1, %got_pc_lo12(conf_standings)
	ori	$a3, $zero, 1
	move	$a2, $zero
.LBB27_263:                             # %prompt.exit.thread.thread
	pcaddu18i	$ra, %call36(break_ties)
	jirl	$ra, $ra, 0
.LBB27_264:                             # %prompt.exit.thread.thread
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
.LBB27_265:
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(display_standings)
	jirl	$ra, $ra, 0
	b	.LBB27_267
.LBB27_266:
	move	$a1, $a0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(display_info)
	jirl	$ra, $ra, 0
.LBB27_267:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$s0, $fp
	ori	$fp, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_responce)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB27_264
# %bb.268:
	st.w	$fp, $s8, %pc_lo12(got_unused_responce)
	b	.LBB27_264
.LBB27_269:
	pcalau12i	$a0, %got_pc_hi20(input_score)
	ld.d	$a1, $a0, %got_pc_lo12(input_score)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(save_scores)
	jirl	$ra, $ra, 0
	b	.LBB27_264
.LBB27_270:
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(display_records)
	jirl	$ra, $ra, 0
	b	.LBB27_267
.LBB27_271:
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(display_rankings)
	jirl	$ra, $ra, 0
	b	.LBB27_267
.LBB27_272:
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(display_defence)
	jirl	$ra, $ra, 0
	b	.LBB27_276
.LBB27_273:
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(display_offence)
	jirl	$ra, $ra, 0
	b	.LBB27_276
.LBB27_274:
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(display_net)
	jirl	$ra, $ra, 0
	b	.LBB27_276
.LBB27_275:
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(display_team)
	jirl	$ra, $ra, 0
.LBB27_276:                             # %prompt.exit.thread.thread
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(prompt)
	jirl	$ra, $ra, 0
	b	.LBB27_264
.Lfunc_end27:
	.size	display_main_menu, .Lfunc_end27-display_main_menu
                                        # -- End function
	.type	got_unused_responce,@object     # @got_unused_responce
	.bss
	.globl	got_unused_responce
	.p2align	2, 0x0
got_unused_responce:
	.word	0                               # 0x0
	.size	got_unused_responce, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hit return to continue: "
	.size	.L.str, 25

	.type	white_space.commentP,@object    # @white_space.commentP
	.local	white_space.commentP
	.comm	white_space.commentP,1,4
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n\n=========================================\n"
	.size	.L.str.1, 45

	.type	responce,@object                # @responce
	.bss
	.globl	responce
responce:
	.space	51
	.size	responce, 51

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s\n"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s team information.\n\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"                            "
	.size	.L.str.4, 29

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"at %-15s "
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%-15s    "
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"         "
	.size	.L.str.7, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%2d-%2d   "
	.size	.L.str.11, 11

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%s %s"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"NFC"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"AFC"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"East   "
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Central"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"West   "
	.size	.L.str.17, 8

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"                 W  L  T  Pct.  PF  PA"
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%- 14s%1s %2d %2d %2d %s.%03d %3d %3d"
	.size	.L.str.19, 38

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"*"
	.size	.L.str.20, 2

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"+"
	.size	.L.str.21, 2

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" "
	.size	.L.str.22, 2

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"1"
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Record           %2d-%d-%d      %sRank %d/%d"
	.size	.L.str.24, 45

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"  "
	.size	.L.str.25, 3

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Points scored   %3d [%6.1f]   Rank %d/%d"
	.size	.L.str.26, 41

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Points allowed  %3d [%6.1f]   Rank %d/%d"
	.size	.L.str.27, 41

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Net Points     %4d [%6.1f]   Rank %d/%d"
	.size	.L.str.28, 40

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Major Tie-breakers:"
	.size	.L.str.29, 20

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"-(1/1) Head to Head"
	.size	.L.str.30, 20

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"-(2/ ) Divisional Record          %d-%d-%d"
	.size	.L.str.31, 43

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"-(3/2) Conference Record          %d-%d-%d"
	.size	.L.str.32, 43

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"-(4/3) Common Games"
	.size	.L.str.33, 20

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"-(5/ ) Net points in %s %s  %d [%3.1f]"
	.size	.L.str.34, 39

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"-( /4) Avg. net points in %s     %3.1f"
	.size	.L.str.35, 39

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"-(6/5) Total net points           %d [%3.1f]"
	.size	.L.str.36, 45

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"ERROR: All teams must be from the same conference.\n"
	.size	.L.str.38, 52

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"                                          "
	.size	.L.str.39, 43

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"            Div\n"
	.size	.L.str.40, 17

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"                             Div.   Conf. "
	.size	.L.str.41, 43

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Common      Net  Net\n"
	.size	.L.str.42, 22

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Team           Record HtoH  Record Record "
	.size	.L.str.43, 43

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Games       Pts  Pts\n\n"
	.size	.L.str.44, 23

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"%-13s %2d-%2d-%1d "
	.size	.L.str.45, 19

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%1d-%1d-%1d"
	.size	.L.str.46, 12

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	" %1d-%1d-%1d"
	.size	.L.str.47, 13

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	" %2d-%2d-%1d"
	.size	.L.str.48, 13

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"%2d-%2d-%1d[%2d]"
	.size	.L.str.49, 17

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"            "
	.size	.L.str.50, 13

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%4d"
	.size	.L.str.51, 4

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	" %4d"
	.size	.L.str.52, 5

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Common Games Rec.[left] Div Conf\n"
	.size	.L.str.53, 34

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"                       vs.   Div.   Conf. "
	.size	.L.str.54, 43

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"----------------------- Net  Net  Net\n"
	.size	.L.str.55, 39

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Team           Record  %3s  Record Record "
	.size	.L.str.56, 43

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"   Team         %3s     Pts  Pts  Pts\n\n"
	.size	.L.str.57, 40

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"     "
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"      "
	.size	.L.str.59, 7

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	" %2d-%2d-%1d[%2d] %2d-%2d-%1d[%2d]"
	.size	.L.str.60, 35

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"                        "
	.size	.L.str.61, 25

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"    "
	.size	.L.str.62, 5

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"%5.1f"
	.size	.L.str.63, 6

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"                 NFC                 "
	.size	.L.str.64, 38

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"                 AFC\n\n"
	.size	.L.str.65, 23

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"                        W  L  T  Pct."
	.size	.L.str.66, 38

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"                        W  L  T  Pct.\n"
	.size	.L.str.67, 39

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%2d/%2d) %-14s"
	.size	.L.str.68, 15

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	" %2d-%2d-%2d %s.%03d"
	.size	.L.str.69, 21

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	" %2d-%2d-%2d %s.%03d\n"
	.size	.L.str.70, 22

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"\n* Division winner\n+ Wildcard\n"
	.size	.L.str.71, 31

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"                                    Week %d\n\n"
	.size	.L.str.72, 46

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"%-16s"
	.size	.L.str.73, 6

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"          "
	.size	.L.str.74, 11

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"  %2d      "
	.size	.L.str.75, 12

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"  %2d       "
	.size	.L.str.76, 13

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"\n\n"
	.size	.L.str.77, 3

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"Enter blank line to leave a score unchanged, \n"
	.size	.L.str.78, 47

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"QUIT to return to menu, or new value for the score.\n"
	.size	.L.str.79, 53

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"\nWeek %d\n\n"
	.size	.L.str.80, 11

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"         ? "
	.size	.L.str.81, 12

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"  %2d     ? "
	.size	.L.str.82, 13

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"quit"
	.size	.L.str.83, 5

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%d"
	.size	.L.str.84, 3

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Enter either team: "
	.size	.L.str.85, 20

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"No game found for %s in week %d\n"
	.size	.L.str.86, 33

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"                                  Rankings\n"
	.size	.L.str.87, 44

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"                   NFC                                       AFC\n"
	.size	.L.str.88, 66

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"                 REC.  OFF.  DEF.  NET                    REC.  OFF.  DEF.  NET\n\n"
	.size	.L.str.89, 82

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"%-14s%1s %2d/%-2d %2d/%-2d %2d/%-2d %2d/%-2d %-14s%1s %2d/%-2d %2d/%-2d %2d/%-2d %2d/%-2d\n"
	.size	.L.str.90, 91

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"                            Defensive Rankings\n"
	.size	.L.str.91, 48

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"                NFC                              AFC\n\n"
	.size	.L.str.92, 55

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"%2d/%-2d) %-15s %-5.1f %3d   %2d/%-2d) %-15s %-5.1f %3d\n"
	.size	.L.str.93, 57

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"                            Offensive Rankings\n"
	.size	.L.str.94, 48

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"                            Net Points Rankings\n"
	.size	.L.str.95, 49

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"%2d/%-2d) %-15s %-5.1f %4d   %2d/%-2d) %-15s %-5.1f %4d\n"
	.size	.L.str.96, 57

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"\n                   NFC                                      AFC\n"
	.size	.L.str.97, 66

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"\n                  EAST                                     EAST\n"
	.size	.L.str.98, 66

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"   "
	.size	.L.str.99, 4

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"\n                 CENTRAL                                  CENTRAL\n"
	.size	.L.str.100, 68

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"                                                           WEST\n"
	.size	.L.str.101, 65

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"                  WEST                   "
	.size	.L.str.102, 42

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"%-15s [%-3s]     %-15s [%-3s]\n"
	.size	.L.str.103, 31

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"Enter week <num>\n"
	.size	.L.str.104, 18

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"Enter week <num> with-prompts\n"
	.size	.L.str.105, 31

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Display all-ranks\n"
	.size	.L.str.106, 19

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Display defensive-rank\n"
	.size	.L.str.107, 24

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"Display information-about <team-name/abbr>\n"
	.size	.L.str.108, 44

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"Display menu\n"
	.size	.L.str.109, 14

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"Display offensive-rank\n"
	.size	.L.str.110, 24

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"Display net-rank\n"
	.size	.L.str.111, 18

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Display records\n"
	.size	.L.str.112, 17

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"Display standings\n"
	.size	.L.str.113, 19

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"Display team-names/abbr\n"
	.size	.L.str.114, 25

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"Display tie-breaker-information-for <team-name/abbr>\n"
	.size	.L.str.115, 54

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"Display week <num>\n"
	.size	.L.str.116, 20

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"How-ties-broken conference\n"
	.size	.L.str.117, 28

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"How-ties-broken division\n"
	.size	.L.str.118, 26

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"Quit\n"
	.size	.L.str.119, 6

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"Save\n"
	.size	.L.str.120, 6

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"[WARNING: Database is not current with disk.]\n"
	.size	.L.str.121, 47

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"\n                Enter option: "
	.size	.L.str.122, 32

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"how-ties-broken"
	.size	.L.str.123, 16

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"division"
	.size	.L.str.124, 9

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"conference"
	.size	.L.str.125, 11

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"display"
	.size	.L.str.126, 8

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"menu"
	.size	.L.str.127, 5

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"standings"
	.size	.L.str.128, 10

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"information-about"
	.size	.L.str.129, 18

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"tie-breaker-information-for"
	.size	.L.str.130, 28

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"records"
	.size	.L.str.131, 8

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"all-ranks"
	.size	.L.str.132, 10

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"defensive-rank"
	.size	.L.str.133, 15

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"offensive-rank"
	.size	.L.str.134, 15

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"net-rank"
	.size	.L.str.135, 9

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"week"
	.size	.L.str.136, 5

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"team-name/abbr"
	.size	.L.str.137, 15

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"Illegal display command.\n"
	.size	.L.str.138, 26

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"enter"
	.size	.L.str.139, 6

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"with-prompts"
	.size	.L.str.140, 13

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"Illegal enter command.\n"
	.size	.L.str.141, 24

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"save"
	.size	.L.str.142, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym responce
	.addrsig_sym team
	.addrsig_sym scores
	.addrsig_sym standings
	.addrsig_sym team_info
	.addrsig_sym conf_standings
	.addrsig_sym abs_standings
	.addrsig_sym offence_ranks
	.addrsig_sym offence_ranks_nfl
	.addrsig_sym defence_ranks
	.addrsig_sym defence_ranks_nfl
	.addrsig_sym net_ranks
	.addrsig_sym net_ranks_nfl
	.addrsig_sym input_score
