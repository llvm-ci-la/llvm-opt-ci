	.file	"llex.c"
	.text
	.hidden	luaX_init                       # -- Begin function luaX_init
	.globl	luaX_init
	.p2align	5
	.type	luaX_init,@function
luaX_init:                              # @luaX_init
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(luaX_tokens)
	addi.d	$s1, $a0, %pc_lo12(luaX_tokens)
	ori	$s2, $zero, 1
	ori	$s3, $zero, 22
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 9
	ori	$a1, $a1, 32
	st.b	$a1, $a0, 9
	st.b	$s2, $a0, 10
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bne	$s2, $s3, .LBB0_1
# %bb.2:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	luaX_init, .Lfunc_end0-luaX_init
                                        # -- End function
	.hidden	luaX_token2str                  # -- Begin function luaX_token2str
	.globl	luaX_token2str
	.p2align	5
	.type	luaX_token2str,@function
luaX_token2str:                         # @luaX_token2str
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 256
	move	$fp, $a1
	blt	$a2, $a1, .LBB1_3
# %bb.1:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a1, $a0, $a1
	ld.d	$a0, $s0, 56
	andi	$a1, $a1, 2
	bnez	$a1, .LBB1_4
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	b	.LBB1_5
.LBB1_3:
	pcalau12i	$a0, %pc_hi20(luaX_tokens)
	addi.d	$a0, $a0, %pc_lo12(luaX_tokens)
	alsl.d	$a0, $fp, $a0, 3
	ldptr.d	$a0, $a0, -2056
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_4:
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
.LBB1_5:
	move	$a2, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(luaO_pushfstring)
	jr	$t8
.Lfunc_end1:
	.size	luaX_token2str, .Lfunc_end1-luaX_token2str
                                        # -- End function
	.hidden	luaX_lexerror                   # -- Begin function luaX_lexerror
	.globl	luaX_lexerror
	.p2align	5
	.type	luaX_lexerror,@function
luaX_lexerror:                          # @luaX_lexerror
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 80
	move	$s2, $a2
	move	$s0, $a1
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$a3, $fp, 4
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	addi.d	$a2, $sp, 8
	move	$a4, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB2_10
# %bb.1:
	move	$s0, $a0
	ld.d	$s1, $fp, 56
	addi.w	$a0, $s2, -284
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB2_3
# %bb.2:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a3, $a0, 0
	b	.LBB2_9
.LBB2_3:
	ori	$a0, $zero, 256
	blt	$a0, $s2, .LBB2_6
# %bb.4:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_7
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	b	.LBB2_8
.LBB2_6:
	pcalau12i	$a0, %pc_hi20(luaX_tokens)
	addi.d	$a0, $a0, %pc_lo12(luaX_tokens)
	alsl.d	$a0, $s2, $a0, 3
	ldptr.d	$a3, $a0, -2056
	b	.LBB2_9
.LBB2_7:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
.LBB2_8:                                # %txtToken.exit
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a3, $a0
.LBB2_9:                                # %txtToken.exit
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
.LBB2_10:
	ld.d	$a0, $fp, 56
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(luaD_throw)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end2:
	.size	luaX_lexerror, .Lfunc_end2-luaX_lexerror
                                        # -- End function
	.hidden	luaX_syntaxerror                # -- Begin function luaX_syntaxerror
	.globl	luaX_syntaxerror
	.p2align	5
	.type	luaX_syntaxerror,@function
luaX_syntaxerror:                       # @luaX_syntaxerror
# %bb.0:
	ld.w	$a2, $a0, 16
	pcaddu18i	$t8, %call36(luaX_lexerror)
	jr	$t8
.Lfunc_end3:
	.size	luaX_syntaxerror, .Lfunc_end3-luaX_syntaxerror
                                        # -- End function
	.hidden	luaX_newstring                  # -- Begin function luaX_newstring
	.globl	luaX_newstring
	.p2align	5
	.type	luaX_newstring,@function
luaX_newstring:                         # @luaX_newstring
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ld.d	$a1, $a1, 8
	move	$fp, $a0
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(luaH_setstr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	bnez	$a1, .LBB4_2
# %bb.1:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 8
.LBB4_2:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	luaX_newstring, .Lfunc_end4-luaX_newstring
                                        # -- End function
	.hidden	luaX_setinput                   # -- Begin function luaX_setinput
	.globl	luaX_setinput
	.p2align	5
	.type	luaX_setinput,@function
luaX_setinput:                          # @luaX_setinput
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ori	$a1, $zero, 46
	st.b	$a1, $fp, 88
	ori	$a1, $zero, 287
	st.w	$a1, $fp, 32
	st.d	$a2, $fp, 64
	ld.d	$a2, $fp, 72
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $fp, 4
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a2, 16
	st.d	$a0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$a3, $fp, 80
	ori	$a3, $zero, 32
	ori	$s0, $zero, 32
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	ld.d	$a2, $fp, 72
	ld.d	$a3, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$s0, $a2, 16
	addi.d	$a0, $a3, -1
	st.d	$a0, $a1, 0
	beqz	$a3, .LBB5_2
# %bb.1:
	ld.d	$a0, $a1, 8
	addi.d	$a2, $a0, 1
	st.d	$a2, $a1, 8
	ld.bu	$a0, $a0, 0
	b	.LBB5_3
.LBB5_2:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB5_3:
	st.w	$a0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	luaX_setinput, .Lfunc_end5-luaX_setinput
                                        # -- End function
	.hidden	luaX_next                       # -- Begin function luaX_next
	.globl	luaX_next
	.p2align	5
	.type	luaX_next,@function
luaX_next:                              # @luaX_next
# %bb.0:
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a0, 32
	ori	$a1, $zero, 287
	st.w	$a2, $a0, 8
	bne	$a3, $a1, .LBB6_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a1, $a0, 24
	move	$fp, $a0
	pcaddu18i	$ra, %call36(llex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_2:
	addi.d	$a2, $a0, 32
	vld	$vr0, $a2, 0
	addi.d	$a0, $a0, 16
	vst	$vr0, $a0, 0
	st.w	$a1, $a2, 0
	ret
.Lfunc_end6:
	.size	luaX_next, .Lfunc_end6-luaX_next
                                        # -- End function
	.p2align	5                               # -- Begin function llex
	.type	llex,@function
llex:                                   # @llex
# %bb.0:
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
	move	$fp, $a0
	ld.d	$a0, $a0, 72
	move	$s8, $a1
	st.d	$zero, $a0, 8
	ori	$s0, $zero, 92
	ori	$s2, $zero, 126
	pcalau12i	$a0, %pc_hi20(.LJTI7_0)
	addi.d	$s3, $a0, %pc_lo12(.LJTI7_0)
	ori	$s4, $zero, 91
	ori	$s5, $zero, 14
	ori	$s6, $zero, 1
	lu12i.w	$a0, 4
	ori	$s7, $a0, 2049
.LBB7_1:                                # %thread-pre-split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_2 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	ld.w	$s1, $fp, 0
.LBB7_2:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s1, 1
	bltu	$s0, $a0, .LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	add.d	$a0, $s3, $a0
	jr	$a0
	.p2align	4, , 16
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=2
	beq	$s1, $s2, .LBB7_109
.LBB7_5:                                #   in Loop: Header=BB7_2 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s1, 1
	ldx.hu	$a1, $a1, $a2
	slli.d	$a2, $a1, 50
	bgez	$a2, .LBB7_36
# %bb.6:                                #   in Loop: Header=BB7_2 Depth=2
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_2 Depth=2
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s1, $a1, 0
	st.w	$s1, $fp, 0
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=2
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$a0, $fp, 0
	b	.LBB7_2
.LBB7_9:                                #   in Loop: Header=BB7_1 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(inclinenumber)
	jirl	$ra, $ra, 0
	b	.LBB7_1
.LBB7_10:                               #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_13
.LBB7_12:                               #   in Loop: Header=BB7_1 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	ori	$s1, $zero, 45
	st.w	$a0, $fp, 0
	bne	$a0, $s1, .LBB7_157
# %bb.14:                               #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	st.w	$a0, $fp, 0
	bne	$a0, $s4, .LBB7_22
	b	.LBB7_17
.LBB7_16:                               #   in Loop: Header=BB7_1 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 0
	bne	$a0, $s4, .LBB7_22
.LBB7_17:                               #   in Loop: Header=BB7_1 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(skip_sep)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 72
	st.d	$zero, $a1, 8
	bltz	$a0, .LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_1 Depth=1
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(read_long_string)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $a0, 8
	b	.LBB7_1
.LBB7_19:                               # %..thread_crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	bgeu	$s5, $a0, .LBB7_24
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_23
# %bb.21:                               #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	st.w	$a0, $fp, 0
.LBB7_22:                               # %.thread
                                        #   in Loop: Header=BB7_1 Depth=1
	addi.d	$a0, $a0, 1
	bgeu	$s5, $a0, .LBB7_24
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_23:                               #   in Loop: Header=BB7_20 Depth=2
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	bltu	$s5, $a0, .LBB7_20
.LBB7_24:                               # %.thread
                                        #   in Loop: Header=BB7_1 Depth=1
	sll.d	$a0, $s6, $a0
	and	$a0, $a0, $s7
	beqz	$a0, .LBB7_20
	b	.LBB7_1
.LBB7_25:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_50
# %bb.26:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a1, $a1, 0
	st.w	$a1, $fp, 0
	beq	$a1, $s1, .LBB7_51
	b	.LBB7_53
.LBB7_27:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(skip_sep)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	bltz	$a0, .LBB7_111
# %bb.28:
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(read_long_string)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 286
	b	.LBB7_157
.LBB7_29:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_119
# %bb.30:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_120
.LBB7_31:                               # %.thread166.loopexit
	ori	$s1, $zero, 287
	b	.LBB7_157
.LBB7_32:
	ori	$a1, $zero, 46
	move	$a0, $fp
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_123
# %bb.33:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s1, $a1, 0
	b	.LBB7_124
.LBB7_34:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_128
# %bb.35:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_129
.LBB7_36:
	slli.d	$a2, $a1, 52
	bltz	$a2, .LBB7_133
# %bb.37:
	ori	$s0, $zero, 95
	beq	$s1, $s0, .LBB7_41
# %bb.38:
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB7_41
# %bb.39:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_155
# %bb.40:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_156
	.p2align	4, , 16
.LBB7_41:                               # %.critedge2
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_43
# %bb.42:                               #   in Loop: Header=BB7_41 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s1, $a1, 0
	b	.LBB7_44
	.p2align	4, , 16
.LBB7_43:                               #   in Loop: Header=BB7_41 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB7_44:                               #   in Loop: Header=BB7_41 Depth=1
	st.w	$s1, $fp, 0
	move	$a0, $s2
	beq	$s1, $s0, .LBB7_41
# %bb.45:                               #   in Loop: Header=BB7_41 Depth=1
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s1, 1
	ldx.hu	$a1, $a1, $a2
	andi	$a1, $a1, 8
	bnez	$a1, .LBB7_41
# %bb.46:
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	ld.d	$s1, $fp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ld.d	$a1, $a1, 8
	move	$fp, $a0
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(luaH_setstr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	bnez	$a1, .LBB7_48
# %bb.47:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 8
.LBB7_48:                               # %luaX_newstring.exit
	ld.bu	$a0, $fp, 10
	beqz	$a0, .LBB7_154
# %bb.49:
	addi.w	$s1, $a0, 256
	b	.LBB7_157
.LBB7_50:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a1, $fp, 0
	bne	$a1, $s1, .LBB7_53
.LBB7_51:                               # %._crit_edge.i
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_105
# %bb.52:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_106
.LBB7_53:
	ori	$s8, $zero, 12
	addi.w	$s0, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s2, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s3, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s4, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s5, $zero, 13
	b	.LBB7_57
	.p2align	4, , 16
.LBB7_54:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$a3, $fp, 4
	addi.d	$a2, $sp, 40
	move	$a1, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 56
	move	$s7, $a0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a3, $a0, 0
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s7
.LBB7_55:                               # %thread-pre-split.i
                                        #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(luaD_throw)
	jirl	$ra, $ra, 0
.LBB7_56:                               # %.backedge.i
                                        #   in Loop: Header=BB7_57 Depth=1
	ld.w	$a1, $fp, 0
	beq	$a1, $s1, .LBB7_51
.LBB7_57:                               # =>This Inner Loop Header: Depth=1
	blt	$s8, $a1, .LBB7_60
# %bb.58:                               #   in Loop: Header=BB7_57 Depth=1
	beq	$a1, $s0, .LBB7_66
# %bb.59:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a0, $zero, 10
	beq	$a1, $a0, .LBB7_54
	b	.LBB7_64
	.p2align	4, , 16
.LBB7_60:                               #   in Loop: Header=BB7_57 Depth=1
	beq	$a1, $s5, .LBB7_54
# %bb.61:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a0, $zero, 92
	bne	$a1, $a0, .LBB7_64
# %bb.62:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_69
# %bb.63:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s6, $a1, 0
	b	.LBB7_70
.LBB7_64:                               #   in Loop: Header=BB7_57 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_67
# %bb.65:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a1, $a1, 0
	b	.LBB7_68
.LBB7_66:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$a3, $fp, 4
	addi.d	$a2, $sp, 40
	move	$a1, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	b	.LBB7_55
.LBB7_67:                               #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB7_68:                               #   in Loop: Header=BB7_57 Depth=1
	st.w	$a1, $fp, 0
	bne	$a1, $s1, .LBB7_57
	b	.LBB7_51
.LBB7_69:                               #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB7_70:                               #   in Loop: Header=BB7_57 Depth=1
	st.w	$s6, $fp, 0
	ori	$a0, $zero, 96
	bge	$a0, $s6, .LBB7_75
# %bb.71:                               #   in Loop: Header=BB7_57 Depth=1
	addi.d	$a0, $s6, -97
	ori	$a1, $zero, 21
	bltu	$a1, $a0, .LBB7_84
# %bb.72:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 7
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI7_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI7_1)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB7_73:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 8
.LBB7_74:                               #   in Loop: Header=BB7_57 Depth=1
	move	$a0, $fp
	b	.LBB7_86
.LBB7_75:                               #   in Loop: Header=BB7_57 Depth=1
	beq	$s6, $s0, .LBB7_56
# %bb.76:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a0, $zero, 10
	beq	$s6, $a0, .LBB7_78
# %bb.77:                               #   in Loop: Header=BB7_57 Depth=1
	bne	$s6, $s5, .LBB7_84
.LBB7_78:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(inclinenumber)
	jirl	$ra, $ra, 0
	b	.LBB7_56
.LBB7_79:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 11
	move	$a0, $fp
	b	.LBB7_86
.LBB7_80:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 10
	move	$a0, $fp
	b	.LBB7_86
.LBB7_81:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 9
	move	$a0, $fp
	b	.LBB7_86
.LBB7_82:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 12
	move	$a0, $fp
	b	.LBB7_86
.LBB7_83:                               #   in Loop: Header=BB7_57 Depth=1
	ori	$a1, $zero, 13
	move	$a0, $fp
	b	.LBB7_86
.LBB7_84:                               #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a1, $a0, 0
	slli.d	$a0, $s6, 1
	ldx.hu	$a0, $a1, $a0
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB7_90
# %bb.85:                               #   in Loop: Header=BB7_57 Depth=1
	move	$a0, $fp
	move	$a1, $s6
.LBB7_86:                               #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_88
# %bb.87:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_89
.LBB7_88:                               #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_89:                               # %.backedge.i
                                        #   in Loop: Header=BB7_57 Depth=1
	st.w	$a0, $fp, 0
	b	.LBB7_56
.LBB7_90:                               # %.preheader.preheader.i
                                        #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, -1
	st.d	$a3, $a0, 0
	beqz	$a2, .LBB7_92
# %bb.91:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a2, $a0, 8
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 8
	ld.bu	$a4, $a2, 0
	b	.LBB7_93
.LBB7_92:                               #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$a4, $a0
.LBB7_93:                               #   in Loop: Header=BB7_57 Depth=1
	st.w	$a4, $fp, 0
	slli.d	$a0, $a4, 1
	ldx.hu	$a0, $a1, $a0
	slli.d	$a0, $a0, 52
	addi.w	$s6, $s6, -48
	bgez	$a0, .LBB7_102
# %bb.94:                               # %.preheader.1.i
                                        #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, -1
	st.d	$a3, $a0, 0
	beqz	$a2, .LBB7_96
# %bb.95:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a2, $a0, 8
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 8
	ld.bu	$s7, $a2, 0
	b	.LBB7_97
.LBB7_96:                               #   in Loop: Header=BB7_57 Depth=1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $s7, 0
	move	$s7, $a0
.LBB7_97:                               #   in Loop: Header=BB7_57 Depth=1
	st.w	$s7, $fp, 0
	slli.d	$a0, $s7, 1
	ldx.hu	$a0, $a1, $a0
	slli.d	$a1, $s6, 3
	alsl.d	$a1, $s6, $a1, 1
	add.d	$a1, $a1, $a4
	slli.d	$a0, $a0, 52
	addi.w	$s6, $a1, -48
	bgez	$a0, .LBB7_102
# %bb.98:                               # %.preheader.2.i
                                        #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_100
# %bb.99:                               #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_101
.LBB7_100:                              #   in Loop: Header=BB7_57 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_101:                              #   in Loop: Header=BB7_57 Depth=1
	slli.d	$a1, $s6, 3
	alsl.d	$a1, $s6, $a1, 1
	add.d	$a1, $a1, $s7
	addi.w	$s6, $a1, -48
	st.w	$a0, $fp, 0
.LBB7_102:                              # %.critedge.i
                                        #   in Loop: Header=BB7_57 Depth=1
	ori	$a0, $zero, 256
	blt	$s6, $a0, .LBB7_104
# %bb.103:                              #   in Loop: Header=BB7_57 Depth=1
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$a3, $fp, 4
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(.L.str.43)
	addi.d	$a4, $a2, %pc_lo12(.L.str.43)
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$s7, $fp, 56
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s7
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(luaD_throw)
	jirl	$ra, $ra, 0
.LBB7_104:                              #   in Loop: Header=BB7_57 Depth=1
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	b	.LBB7_56
.LBB7_105:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_106:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 72
	st.w	$a0, $fp, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a1, 8
	ld.d	$s1, $fp, 56
	addi.d	$a1, $a0, 1
	addi.d	$a2, $a2, -2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ld.d	$a1, $a1, 8
	move	$fp, $a0
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(luaH_setstr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	bnez	$a1, .LBB7_108
# %bb.107:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 8
.LBB7_108:                              # %read_string.exit
	st.d	$fp, $s0, 0
	ori	$s1, $zero, 286
	b	.LBB7_157
.LBB7_109:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_141
# %bb.110:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_142
.LBB7_111:
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB7_151
# %bb.112:
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$a3, $fp, 4
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a4, $a2, %pc_lo12(.L.str.36)
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 56
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(luaD_throw)
	jirl	$ra, $ra, 0
.LBB7_113:                              # %.loopexit
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_115
# %bb.114:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_116
.LBB7_115:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_116:
	ori	$s1, $zero, 61
	st.w	$a0, $fp, 0
	bne	$a0, $s1, .LBB7_157
# %bb.117:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_139
# %bb.118:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_140
.LBB7_119:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_120:
	st.w	$a0, $fp, 0
	ori	$a1, $zero, 61
	ori	$s1, $zero, 60
	bne	$a0, $a1, .LBB7_157
# %bb.121:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_145
# %bb.122:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_146
.LBB7_123:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB7_124:
	andi	$a0, $s1, 255
	ori	$a1, $zero, 46
	st.w	$s1, $fp, 0
	beq	$a0, $a1, .LBB7_126
# %bb.125:
	bnez	$a0, .LBB7_132
.LBB7_126:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_134
# %bb.127:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a1, $a1, 0
	b	.LBB7_135
.LBB7_128:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_129:
	st.w	$a0, $fp, 0
	ori	$a1, $zero, 61
	ori	$s1, $zero, 62
	bne	$a0, $a1, .LBB7_157
# %bb.130:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_147
# %bb.131:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_148
.LBB7_132:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	ori	$s1, $zero, 46
	bgez	$a0, .LBB7_157
.LBB7_133:
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(read_numeral)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 284
	b	.LBB7_157
.LBB7_134:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB7_135:
	andi	$a0, $a1, 255
	ori	$a2, $zero, 46
	st.w	$a1, $fp, 0
	beq	$a0, $a2, .LBB7_137
# %bb.136:
	ori	$s1, $zero, 278
	bnez	$a0, .LBB7_157
.LBB7_137:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_149
# %bb.138:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_150
.LBB7_139:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_140:
	st.w	$a0, $fp, 0
	ori	$s1, $zero, 280
	b	.LBB7_157
.LBB7_141:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_142:
	st.w	$a0, $fp, 0
	ori	$a1, $zero, 61
	ori	$s1, $zero, 126
	bne	$a0, $a1, .LBB7_157
# %bb.143:
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB7_152
# %bb.144:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB7_153
.LBB7_145:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_146:
	st.w	$a0, $fp, 0
	ori	$s1, $zero, 282
	b	.LBB7_157
.LBB7_147:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_148:
	st.w	$a0, $fp, 0
	ori	$s1, $zero, 281
	b	.LBB7_157
.LBB7_149:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_150:                              # %check_next.exit162
	st.w	$a0, $fp, 0
	ori	$s1, $zero, 279
	b	.LBB7_157
.LBB7_151:
	ori	$s1, $zero, 91
	b	.LBB7_157
.LBB7_152:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_153:
	st.w	$a0, $fp, 0
	ori	$s1, $zero, 283
	b	.LBB7_157
.LBB7_154:
	st.d	$fp, $s8, 0
	ori	$s1, $zero, 285
	b	.LBB7_157
.LBB7_155:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB7_156:                              # %.thread166
	st.w	$a0, $fp, 0
.LBB7_157:                              # %.thread166
	move	$a0, $s1
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
.Lfunc_end7:
	.size	llex, .Lfunc_end7-llex
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_31-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_9-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_9-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_25-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_25-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_10-.LJTI7_0
	.word	.LBB7_32-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_29-.LJTI7_0
	.word	.LBB7_113-.LJTI7_0
	.word	.LBB7_34-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_27-.LJTI7_0
.LJTI7_1:
	.word	.LBB7_74-.LJTI7_1
	.word	.LBB7_73-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_82-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_80-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_83-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_81-.LJTI7_1
	.word	.LBB7_84-.LJTI7_1
	.word	.LBB7_79-.LJTI7_1
                                        # -- End function
	.text
	.hidden	luaX_lookahead                  # -- Begin function luaX_lookahead
	.globl	luaX_lookahead
	.p2align	5
	.type	luaX_lookahead,@function
luaX_lookahead:                         # @luaX_lookahead
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a1, $a0, 40
	pcaddu18i	$ra, %call36(llex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 32
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	luaX_lookahead, .Lfunc_end8-luaX_lookahead
                                        # -- End function
	.p2align	5                               # -- Begin function save
	.type	save,@function
save:                                   # @save
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s1, $a0, 72
	ld.d	$a3, $s1, 8
	ld.d	$a2, $s1, 16
	addi.d	$a4, $a3, 1
	move	$fp, $a1
	bgeu	$a2, $a4, .LBB9_5
# %bb.1:
	move	$s0, $a0
	addi.w	$s2, $zero, -2
	lu52i.d	$a0, $s2, 2047
	bltu	$a2, $a0, .LBB9_3
# %bb.2:
	ld.d	$a0, $s0, 80
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	ld.w	$a3, $s0, 4
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a4, $a2, %pc_lo12(.L.str.35)
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(luaD_throw)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
.LBB9_3:
	ld.d	$a0, $s0, 56
	slli.d	$s0, $a2, 1
	bne	$s0, $s2, .LBB9_6
# %bb.4:
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
	b	.LBB9_7
.LBB9_5:                                # %._crit_edge
	ld.d	$a0, $s1, 0
	b	.LBB9_8
.LBB9_6:
	ld.d	$a1, $s1, 0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
.LBB9_7:
	ld.d	$a3, $s1, 8
	st.d	$a0, $s1, 0
	st.d	$s0, $s1, 16
	addi.d	$a4, $a3, 1
.LBB9_8:
	st.d	$a4, $s1, 8
	stx.b	$fp, $a0, $a3
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end9:
	.size	save, .Lfunc_end9-save
                                        # -- End function
	.p2align	5                               # -- Begin function inclinenumber
	.type	inclinenumber,@function
inclinenumber:                          # @inclinenumber
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 64
	ld.d	$a2, $a1, 0
	ld.w	$fp, $a0, 0
	addi.d	$a3, $a2, -1
	st.d	$a3, $a1, 0
	beqz	$a2, .LBB10_2
# %bb.1:
	ld.d	$a2, $a1, 8
	addi.d	$a3, $a2, 1
	st.d	$a3, $a1, 8
	ld.bu	$a1, $a2, 0
	b	.LBB10_3
.LBB10_2:
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB10_3:
	ori	$a2, $zero, 13
	st.w	$a1, $a0, 0
	beq	$a1, $a2, .LBB10_5
# %bb.4:
	ori	$a2, $zero, 10
	bne	$a1, $a2, .LBB10_10
.LBB10_5:
	beq	$a1, $fp, .LBB10_10
# %bb.6:
	ld.d	$a1, $a0, 64
	ld.d	$a2, $a1, 0
	addi.d	$a3, $a2, -1
	st.d	$a3, $a1, 0
	beqz	$a2, .LBB10_8
# %bb.7:
	ld.d	$a2, $a1, 8
	addi.d	$a3, $a2, 1
	st.d	$a3, $a1, 8
	ld.bu	$a1, $a2, 0
	b	.LBB10_9
.LBB10_8:
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB10_9:
	st.w	$a1, $a0, 0
.LBB10_10:
	ld.w	$a1, $a0, 4
	addi.d	$a2, $a1, 1
	lu12i.w	$a3, 524287
	ori	$a3, $a3, 4092
	st.w	$a2, $a0, 4
	blt	$a1, $a3, .LBB10_12
# %bb.11:
	ld.w	$a2, $a0, 16
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(luaX_lexerror)
	jr	$t8
.LBB10_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	inclinenumber, .Lfunc_end10-inclinenumber
                                        # -- End function
	.p2align	5                               # -- Begin function skip_sep
	.type	skip_sep,@function
skip_sep:                               # @skip_sep
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$fp, $a0, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB11_2
# %bb.1:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB11_3
.LBB11_2:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB11_3:
	ori	$s2, $zero, 61
	st.w	$a0, $s0, 0
	move	$s1, $zero
	beq	$a0, $s2, .LBB11_7
.LBB11_4:                               # %._crit_edge
	xor	$a0, $a0, $fp
	sltu	$a0, $zero, $a0
	sub.d	$a0, $zero, $a0
	xor	$a0, $s1, $a0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
	.p2align	4, , 16
.LBB11_5:                               #   in Loop: Header=BB11_7 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB11_6:                               #   in Loop: Header=BB11_7 Depth=1
	st.w	$a0, $s0, 0
	addi.w	$s1, $s1, 1
	bne	$a0, $s2, .LBB11_4
.LBB11_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB11_5
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB11_6
.Lfunc_end11:
	.size	skip_sep, .Lfunc_end11-skip_sep
                                        # -- End function
	.p2align	5                               # -- Begin function read_long_string
	.type	read_long_string,@function
read_long_string:                       # @read_long_string
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a3, $a0, 0
	move	$s1, $a2
	move	$fp, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB12_2
# %bb.1:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	b	.LBB12_3
.LBB12_2:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
.LBB12_3:
	ori	$a1, $zero, 13
	st.w	$a0, $s0, 0
	beq	$a0, $a1, .LBB12_5
# %bb.4:
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB12_6
.LBB12_5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(inclinenumber)
	jirl	$ra, $ra, 0
.LBB12_6:
	sltui	$a0, $fp, 1
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.40)
	addi.d	$a2, $a2, %pc_lo12(.L.str.40)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 12
	addi.w	$s8, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s3, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s4, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s5, $a0, %pc_lo12(.L.str.30)
	ori	$s6, $zero, 13
	ori	$s2, $zero, 91
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB12_8
.LBB12_7:                               #   in Loop: Header=BB12_8 Depth=1
	ld.d	$a0, $s0, 80
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	ld.w	$a3, $s0, 4
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 56
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(luaD_throw)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	bge	$s7, $a1, .LBB12_13
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=1
	beq	$a1, $s6, .LBB12_15
# %bb.10:                               #   in Loop: Header=BB12_8 Depth=1
	beq	$a1, $s2, .LBB12_17
# %bb.11:                               #   in Loop: Header=BB12_8 Depth=1
	ori	$a0, $zero, 93
	bne	$a1, $a0, .LBB12_20
# %bb.12:                               #   in Loop: Header=BB12_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(skip_sep)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB12_8
	b	.LBB12_27
	.p2align	4, , 16
.LBB12_13:                              #   in Loop: Header=BB12_8 Depth=1
	beq	$a1, $s8, .LBB12_7
# %bb.14:                               #   in Loop: Header=BB12_8 Depth=1
	ori	$a0, $zero, 10
	bne	$a1, $a0, .LBB12_20
.LBB12_15:                              #   in Loop: Header=BB12_8 Depth=1
	ori	$a1, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(inclinenumber)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB12_8
# %bb.16:                               #   in Loop: Header=BB12_8 Depth=1
	ld.d	$a0, $s0, 72
	st.d	$zero, $a0, 8
	b	.LBB12_8
.LBB12_17:                              #   in Loop: Header=BB12_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(skip_sep)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB12_8
# %bb.18:                               #   in Loop: Header=BB12_8 Depth=1
	ld.w	$a1, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB12_25
# %bb.19:                               #   in Loop: Header=BB12_8 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	st.w	$a0, $s0, 0
	bnez	$s1, .LBB12_8
	b	.LBB12_26
.LBB12_20:                              #   in Loop: Header=BB12_8 Depth=1
	beqz	$fp, .LBB12_22
# %bb.21:                               #   in Loop: Header=BB12_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
.LBB12_22:                              #   in Loop: Header=BB12_8 Depth=1
	ld.d	$a0, $s0, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB12_24
# %bb.23:                               #   in Loop: Header=BB12_8 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	st.w	$a0, $s0, 0
	b	.LBB12_8
.LBB12_24:                              #   in Loop: Header=BB12_8 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	b	.LBB12_8
.LBB12_25:                              #   in Loop: Header=BB12_8 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	bnez	$s1, .LBB12_8
.LBB12_26:                              #   in Loop: Header=BB12_8 Depth=1
	ori	$a2, $zero, 91
	move	$a0, $s0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
	b	.LBB12_8
.LBB12_27:
	ld.w	$a1, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB12_29
# %bb.28:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$a0, $a1, 0
	st.w	$a0, $s0, 0
	bnez	$fp, .LBB12_30
	b	.LBB12_33
.LBB12_29:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	beqz	$fp, .LBB12_33
.LBB12_30:
	ld.d	$a0, $s0, 72
	ld.d	$a1, $a0, 0
	addi.w	$a2, $s1, 2
	ld.d	$a0, $a0, 8
	ld.d	$s1, $s0, 56
	add.d	$a1, $a1, $a2
	slli.w	$a2, $a2, 1
	sub.d	$a2, $a0, $a2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaH_setstr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	bnez	$a1, .LBB12_32
# %bb.31:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 8
.LBB12_32:                              # %luaX_newstring.exit
	st.d	$s0, $fp, 0
.LBB12_33:
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end12:
	.size	read_long_string, .Lfunc_end12-read_long_string
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function read_numeral
.LCPI13_0:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
.LCPI13_1:
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.p2align	5
	.type	read_numeral,@function
read_numeral:                           # @read_numeral
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s2, $a0, 0
	move	$s0, $a1
	ori	$s3, $zero, 46
	.p2align	4, , 16
.LBB13_1:                               # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB13_3
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s2, $a1, 0
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB13_4:                               #   in Loop: Header=BB13_1 Depth=1
	st.w	$s2, $fp, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	beq	$s2, $s3, .LBB13_1
# %bb.5:                                #   in Loop: Header=BB13_1 Depth=1
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB13_1
# %bb.6:
	andi	$a0, $s2, 255
	beqz	$a0, .LBB13_9
# %bb.7:
	ori	$a1, $zero, 101
	beq	$a0, $a1, .LBB13_9
# %bb.8:
	ori	$a1, $zero, 69
	bne	$a0, $a1, .LBB13_18
.LBB13_9:                               # %.split
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB13_11
# %bb.10:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s2, $a1, 0
	b	.LBB13_12
.LBB13_11:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB13_12:
	andi	$a0, $s2, 255
	ori	$a1, $zero, 63
	st.w	$s2, $fp, 0
	bltu	$a1, $a0, .LBB13_18
# %bb.13:
	ori	$a0, $zero, 1
	sll.d	$a1, $a0, $s2
	lu32i.d	$a0, 10240
	and	$a0, $a1, $a0
	beqz	$a0, .LBB13_18
# %bb.14:
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB13_16
# %bb.15:
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s2, $a1, 0
	b	.LBB13_17
.LBB13_16:
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB13_17:
	st.w	$s2, $fp, 0
.LBB13_18:                              # %check_next.exit36
	ori	$s3, $zero, 95
	beq	$s2, $s3, .LBB13_20
.LBB13_19:                              # %check_next.exit36
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 8
	beqz	$a0, .LBB13_24
.LBB13_20:                              # %.critedge2
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB13_22
# %bb.21:                               #   in Loop: Header=BB13_20 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 8
	ld.bu	$s2, $a1, 0
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_22:                              #   in Loop: Header=BB13_20 Depth=1
	pcaddu18i	$ra, %call36(luaZ_fill)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB13_23:                              #   in Loop: Header=BB13_20 Depth=1
	st.w	$s2, $fp, 0
	bne	$s2, $s3, .LBB13_19
	b	.LBB13_20
.LBB13_24:                              # %._crit_edge
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a0, 0
	beqz	$a2, .LBB13_84
# %bb.25:                               # %iter.check
	ld.bu	$a1, $fp, 88
	ori	$a3, $zero, 8
	bgeu	$a2, $a3, .LBB13_27
# %bb.26:
	move	$a4, $a2
	b	.LBB13_113
.LBB13_27:                              # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	vrepli.b	$vr0, 46
	bgeu	$a2, $a3, .LBB13_48
# %bb.28:
	move	$a3, $zero
.LBB13_29:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrins.d	$a5, $zero, 2, 0
	andi	$a4, $a2, 7
	sub.d	$a6, $a3, $a5
	pcalau12i	$a7, %pc_hi20(.LCPI13_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI13_1)
	sub.d	$a3, $a2, $a3
	add.d	$a3, $a3, $a0
	addi.d	$a3, $a3, -4
	b	.LBB13_31
	.p2align	4, , 16
.LBB13_30:                              # %pred.store.continue115
                                        #   in Loop: Header=BB13_31 Depth=1
	addi.d	$a6, $a6, 8
	addi.d	$a3, $a3, -8
	beqz	$a6, .LBB13_47
.LBB13_31:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, -4
	vinsgr2vr.d	$vr2, $a7, 0
	vshuf.b	$vr2, $vr0, $vr2, $vr1
	vseq.b	$vr2, $vr2, $vr0
	vpickve2gr.h	$a7, $vr2, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_33
# %bb.32:                               # %pred.store.if100
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, 3
.LBB13_33:                              # %pred.store.continue101
                                        #   in Loop: Header=BB13_31 Depth=1
	vilvl.b	$vr2, $vr2, $vr2
	vpickve2gr.h	$a7, $vr2, 1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_35
# %bb.34:                               # %pred.store.if102
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, 2
.LBB13_35:                              # %pred.store.continue103
                                        #   in Loop: Header=BB13_31 Depth=1
	vpickve2gr.h	$a7, $vr2, 2
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_37
# %bb.36:                               # %pred.store.if104
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, 1
.LBB13_37:                              # %pred.store.continue105
                                        #   in Loop: Header=BB13_31 Depth=1
	vpickve2gr.h	$a7, $vr2, 3
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_39
# %bb.38:                               # %pred.store.if106
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, 0
.LBB13_39:                              # %pred.store.continue107
                                        #   in Loop: Header=BB13_31 Depth=1
	vpickve2gr.h	$a7, $vr2, 4
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_41
# %bb.40:                               # %pred.store.if108
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, -1
.LBB13_41:                              # %pred.store.continue109
                                        #   in Loop: Header=BB13_31 Depth=1
	vpickve2gr.h	$a7, $vr2, 5
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_43
# %bb.42:                               # %pred.store.if110
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, -2
.LBB13_43:                              # %pred.store.continue111
                                        #   in Loop: Header=BB13_31 Depth=1
	vpickve2gr.h	$a7, $vr2, 6
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_45
# %bb.44:                               # %pred.store.if112
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, -3
.LBB13_45:                              # %pred.store.continue113
                                        #   in Loop: Header=BB13_31 Depth=1
	vpickve2gr.h	$a7, $vr2, 7
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_30
# %bb.46:                               # %pred.store.if114
                                        #   in Loop: Header=BB13_31 Depth=1
	st.b	$a1, $a3, -4
	b	.LBB13_30
.LBB13_47:                              # %vec.epilog.middle.block
	beq	$a2, $a5, .LBB13_83
	b	.LBB13_113
.LBB13_48:                              # %vector.ph
	move	$a3, $a2
	pcalau12i	$a4, %pc_hi20(.LCPI13_0)
	vld	$vr1, $a4, %pc_lo12(.LCPI13_0)
	bstrins.d	$a3, $zero, 3, 0
	add.d	$a4, $a2, $a0
	addi.d	$a4, $a4, -8
	move	$a5, $a3
	b	.LBB13_50
	.p2align	4, , 16
.LBB13_49:                              # %pred.store.continue94
                                        #   in Loop: Header=BB13_50 Depth=1
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, -16
	beqz	$a5, .LBB13_82
.LBB13_50:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -8
	vshuf.b	$vr2, $vr0, $vr2, $vr1
	vseq.b	$vr2, $vr2, $vr0
	vpickve2gr.b	$a6, $vr2, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_52
# %bb.51:                               # %pred.store.if
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 7
.LBB13_52:                              # %pred.store.continue
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_54
# %bb.53:                               # %pred.store.if65
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 6
.LBB13_54:                              # %pred.store.continue66
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 2
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_56
# %bb.55:                               # %pred.store.if67
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 5
.LBB13_56:                              # %pred.store.continue68
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 3
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_58
# %bb.57:                               # %pred.store.if69
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 4
.LBB13_58:                              # %pred.store.continue70
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 4
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_60
# %bb.59:                               # %pred.store.if71
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 3
.LBB13_60:                              # %pred.store.continue72
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_62
# %bb.61:                               # %pred.store.if73
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 2
.LBB13_62:                              # %pred.store.continue74
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_64
# %bb.63:                               # %pred.store.if75
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 1
.LBB13_64:                              # %pred.store.continue76
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_66
# %bb.65:                               # %pred.store.if77
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, 0
.LBB13_66:                              # %pred.store.continue78
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 8
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_68
# %bb.67:                               # %pred.store.if79
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -1
.LBB13_68:                              # %pred.store.continue80
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 9
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_70
# %bb.69:                               # %pred.store.if81
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -2
.LBB13_70:                              # %pred.store.continue82
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 10
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_72
# %bb.71:                               # %pred.store.if83
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -3
.LBB13_72:                              # %pred.store.continue84
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 11
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_74
# %bb.73:                               # %pred.store.if85
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -4
.LBB13_74:                              # %pred.store.continue86
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 12
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_76
# %bb.75:                               # %pred.store.if87
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -5
.LBB13_76:                              # %pred.store.continue88
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 13
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_78
# %bb.77:                               # %pred.store.if89
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -6
.LBB13_78:                              # %pred.store.continue90
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 14
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_80
# %bb.79:                               # %pred.store.if91
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -7
.LBB13_80:                              # %pred.store.continue92
                                        #   in Loop: Header=BB13_50 Depth=1
	vpickve2gr.b	$a6, $vr2, 15
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_49
# %bb.81:                               # %pred.store.if93
                                        #   in Loop: Header=BB13_50 Depth=1
	st.b	$a1, $a4, -8
	b	.LBB13_49
.LBB13_82:                              # %middle.block
	bne	$a2, $a3, .LBB13_111
.LBB13_83:                              # %buffreplace.exit.loopexit
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
.LBB13_84:                              # %buffreplace.exit
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_221
# %bb.85:
	pcaddu18i	$ra, %call36(localeconv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_87
# %bb.86:
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 0
	b	.LBB13_88
.LBB13_87:
	ori	$a1, $zero, 46
.LBB13_88:
	ld.d	$a0, $fp, 72
	ld.bu	$a2, $fp, 88
	ld.d	$a3, $a0, 8
	ld.d	$a0, $a0, 0
	st.b	$a1, $fp, 88
	beqz	$a3, .LBB13_154
# %bb.89:                               # %iter.check120
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB13_91
# %bb.90:
	move	$a5, $a3
	b	.LBB13_180
.LBB13_91:                              # %vector.main.loop.iter.check122
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB13_118
# %bb.92:
	move	$a4, $zero
.LBB13_93:                              # %vec.epilog.ph167
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	andi	$a5, $a3, 7
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $a2, 1
	vinsgr2vr.b	$vr0, $a2, 2
	vinsgr2vr.b	$vr0, $a2, 3
	vinsgr2vr.b	$vr0, $a2, 4
	vinsgr2vr.b	$vr0, $a2, 5
	vinsgr2vr.b	$vr0, $a2, 6
	vinsgr2vr.b	$vr0, $a2, 7
	sub.d	$a7, $a4, $a6
	pcalau12i	$t0, %pc_hi20(.LCPI13_1)
	vld	$vr1, $t0, %pc_lo12(.LCPI13_1)
	sub.d	$a4, $a3, $a4
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, -4
	b	.LBB13_95
	.p2align	4, , 16
.LBB13_94:                              # %pred.store.continue195
                                        #   in Loop: Header=BB13_95 Depth=1
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, -8
	beqz	$a7, .LBB13_117
.LBB13_95:                              # %vec.epilog.vector.body175
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a4, -4
	vinsgr2vr.d	$vr2, $t0, 0
	vshuf.b	$vr2, $vr0, $vr2, $vr1
	vseq.b	$vr2, $vr2, $vr0
	vpickve2gr.h	$t0, $vr2, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_97
# %bb.96:                               # %pred.store.if180
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, 3
.LBB13_97:                              # %pred.store.continue181
                                        #   in Loop: Header=BB13_95 Depth=1
	vilvl.b	$vr2, $vr2, $vr2
	vpickve2gr.h	$t0, $vr2, 1
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_99
# %bb.98:                               # %pred.store.if182
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, 2
.LBB13_99:                              # %pred.store.continue183
                                        #   in Loop: Header=BB13_95 Depth=1
	vpickve2gr.h	$t0, $vr2, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_101
# %bb.100:                              # %pred.store.if184
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, 1
.LBB13_101:                             # %pred.store.continue185
                                        #   in Loop: Header=BB13_95 Depth=1
	vpickve2gr.h	$t0, $vr2, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_103
# %bb.102:                              # %pred.store.if186
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, 0
.LBB13_103:                             # %pred.store.continue187
                                        #   in Loop: Header=BB13_95 Depth=1
	vpickve2gr.h	$t0, $vr2, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_105
# %bb.104:                              # %pred.store.if188
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, -1
.LBB13_105:                             # %pred.store.continue189
                                        #   in Loop: Header=BB13_95 Depth=1
	vpickve2gr.h	$t0, $vr2, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_107
# %bb.106:                              # %pred.store.if190
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, -2
.LBB13_107:                             # %pred.store.continue191
                                        #   in Loop: Header=BB13_95 Depth=1
	vpickve2gr.h	$t0, $vr2, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_109
# %bb.108:                              # %pred.store.if192
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, -3
.LBB13_109:                             # %pred.store.continue193
                                        #   in Loop: Header=BB13_95 Depth=1
	vpickve2gr.h	$t0, $vr2, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_94
# %bb.110:                              # %pred.store.if194
                                        #   in Loop: Header=BB13_95 Depth=1
	st.b	$a1, $a4, -4
	b	.LBB13_94
.LBB13_111:                             # %vec.epilog.iter.check
	andi	$a4, $a2, 8
	bnez	$a4, .LBB13_29
# %bb.112:
	andi	$a4, $a2, 15
.LBB13_113:                             # %.lr.ph.i.preheader
	addi.d	$a0, $a0, -1
	ori	$a2, $zero, 46
	b	.LBB13_115
	.p2align	4, , 16
.LBB13_114:                             #   in Loop: Header=BB13_115 Depth=1
	addi.d	$a4, $a4, -1
	beqz	$a4, .LBB13_83
.LBB13_115:                             # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a4
	bne	$a3, $a2, .LBB13_114
# %bb.116:                              #   in Loop: Header=BB13_115 Depth=1
	stx.b	$a1, $a0, $a4
	b	.LBB13_114
.LBB13_117:                             # %vec.epilog.middle.block197
	beq	$a3, $a6, .LBB13_153
	b	.LBB13_180
.LBB13_118:                             # %vector.ph123
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	pcalau12i	$a5, %pc_hi20(.LCPI13_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI13_0)
	vreplgr2vr.b	$vr1, $a2
	add.d	$a5, $a3, $a0
	addi.d	$a5, $a5, -8
	move	$a6, $a4
	b	.LBB13_120
	.p2align	4, , 16
.LBB13_119:                             # %pred.store.continue161
                                        #   in Loop: Header=BB13_120 Depth=1
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, -16
	beqz	$a6, .LBB13_152
.LBB13_120:                             # %vector.body126
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -8
	vshuf.b	$vr2, $vr0, $vr2, $vr0
	vseq.b	$vr2, $vr2, $vr1
	vpickve2gr.b	$a7, $vr2, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_122
# %bb.121:                              # %pred.store.if130
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 7
.LBB13_122:                             # %pred.store.continue131
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_124
# %bb.123:                              # %pred.store.if132
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 6
.LBB13_124:                             # %pred.store.continue133
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 2
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_126
# %bb.125:                              # %pred.store.if134
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 5
.LBB13_126:                             # %pred.store.continue135
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 3
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_128
# %bb.127:                              # %pred.store.if136
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 4
.LBB13_128:                             # %pred.store.continue137
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 4
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_130
# %bb.129:                              # %pred.store.if138
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 3
.LBB13_130:                             # %pred.store.continue139
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 5
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_132
# %bb.131:                              # %pred.store.if140
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 2
.LBB13_132:                             # %pred.store.continue141
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 6
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_134
# %bb.133:                              # %pred.store.if142
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 1
.LBB13_134:                             # %pred.store.continue143
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 7
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_136
# %bb.135:                              # %pred.store.if144
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, 0
.LBB13_136:                             # %pred.store.continue145
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 8
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_138
# %bb.137:                              # %pred.store.if146
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -1
.LBB13_138:                             # %pred.store.continue147
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 9
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_140
# %bb.139:                              # %pred.store.if148
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -2
.LBB13_140:                             # %pred.store.continue149
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 10
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_142
# %bb.141:                              # %pred.store.if150
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -3
.LBB13_142:                             # %pred.store.continue151
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 11
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_144
# %bb.143:                              # %pred.store.if152
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -4
.LBB13_144:                             # %pred.store.continue153
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 12
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_146
# %bb.145:                              # %pred.store.if154
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -5
.LBB13_146:                             # %pred.store.continue155
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 13
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_148
# %bb.147:                              # %pred.store.if156
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -6
.LBB13_148:                             # %pred.store.continue157
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 14
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_150
# %bb.149:                              # %pred.store.if158
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -7
.LBB13_150:                             # %pred.store.continue159
                                        #   in Loop: Header=BB13_120 Depth=1
	vpickve2gr.b	$a7, $vr2, 15
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_119
# %bb.151:                              # %pred.store.if160
                                        #   in Loop: Header=BB13_120 Depth=1
	st.b	$a1, $a5, -8
	b	.LBB13_119
.LBB13_152:                             # %middle.block163
	bne	$a3, $a4, .LBB13_178
.LBB13_153:                             # %buffreplace.exit.loopexit.i
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
.LBB13_154:                             # %buffreplace.exit.i
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_221
# %bb.155:
	ld.d	$a1, $fp, 72
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB13_220
# %bb.156:                              # %iter.check203
	ld.bu	$a0, $fp, 88
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 8
	bgeu	$a2, $a3, .LBB13_158
# %bb.157:
	move	$a4, $a2
	b	.LBB13_224
.LBB13_158:                             # %vector.main.loop.iter.check205
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB13_185
# %bb.159:
	move	$a3, $zero
.LBB13_160:                             # %vec.epilog.ph252
	move	$a5, $a2
	bstrins.d	$a5, $zero, 2, 0
	andi	$a4, $a2, 7
	vinsgr2vr.b	$vr0, $a0, 0
	vinsgr2vr.b	$vr0, $a0, 1
	vinsgr2vr.b	$vr0, $a0, 2
	vinsgr2vr.b	$vr0, $a0, 3
	vinsgr2vr.b	$vr0, $a0, 4
	vinsgr2vr.b	$vr0, $a0, 5
	vinsgr2vr.b	$vr0, $a0, 6
	vinsgr2vr.b	$vr0, $a0, 7
	sub.d	$a6, $a3, $a5
	sub.d	$a3, $a2, $a3
	pcalau12i	$a7, %pc_hi20(.LCPI13_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI13_1)
	add.d	$a3, $a3, $a1
	addi.d	$a3, $a3, -4
	ori	$a7, $zero, 46
	b	.LBB13_162
	.p2align	4, , 16
.LBB13_161:                             # %pred.store.continue280
                                        #   in Loop: Header=BB13_162 Depth=1
	addi.d	$a6, $a6, 8
	addi.d	$a3, $a3, -8
	beqz	$a6, .LBB13_184
.LBB13_162:                             # %vec.epilog.vector.body260
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a3, -4
	vinsgr2vr.d	$vr2, $t0, 0
	vshuf.b	$vr2, $vr0, $vr2, $vr1
	vseq.b	$vr2, $vr2, $vr0
	vpickve2gr.h	$t0, $vr2, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_164
# %bb.163:                              # %pred.store.if265
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, 3
.LBB13_164:                             # %pred.store.continue266
                                        #   in Loop: Header=BB13_162 Depth=1
	vilvl.b	$vr2, $vr2, $vr2
	vpickve2gr.h	$t0, $vr2, 1
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_166
# %bb.165:                              # %pred.store.if267
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, 2
.LBB13_166:                             # %pred.store.continue268
                                        #   in Loop: Header=BB13_162 Depth=1
	vpickve2gr.h	$t0, $vr2, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_168
# %bb.167:                              # %pred.store.if269
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, 1
.LBB13_168:                             # %pred.store.continue270
                                        #   in Loop: Header=BB13_162 Depth=1
	vpickve2gr.h	$t0, $vr2, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_170
# %bb.169:                              # %pred.store.if271
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, 0
.LBB13_170:                             # %pred.store.continue272
                                        #   in Loop: Header=BB13_162 Depth=1
	vpickve2gr.h	$t0, $vr2, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_172
# %bb.171:                              # %pred.store.if273
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, -1
.LBB13_172:                             # %pred.store.continue274
                                        #   in Loop: Header=BB13_162 Depth=1
	vpickve2gr.h	$t0, $vr2, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_174
# %bb.173:                              # %pred.store.if275
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, -2
.LBB13_174:                             # %pred.store.continue276
                                        #   in Loop: Header=BB13_162 Depth=1
	vpickve2gr.h	$t0, $vr2, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_176
# %bb.175:                              # %pred.store.if277
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, -3
.LBB13_176:                             # %pred.store.continue278
                                        #   in Loop: Header=BB13_162 Depth=1
	vpickve2gr.h	$t0, $vr2, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB13_161
# %bb.177:                              # %pred.store.if279
                                        #   in Loop: Header=BB13_162 Depth=1
	st.b	$a7, $a3, -4
	b	.LBB13_161
.LBB13_178:                             # %vec.epilog.iter.check168
	andi	$a5, $a3, 8
	bnez	$a5, .LBB13_93
# %bb.179:
	andi	$a5, $a3, 15
.LBB13_180:                             # %.lr.ph.i.i.preheader
	addi.d	$a0, $a0, -1
	b	.LBB13_182
	.p2align	4, , 16
.LBB13_181:                             #   in Loop: Header=BB13_182 Depth=1
	addi.d	$a5, $a5, -1
	beqz	$a5, .LBB13_153
.LBB13_182:                             # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a5
	bne	$a3, $a2, .LBB13_181
# %bb.183:                              #   in Loop: Header=BB13_182 Depth=1
	stx.b	$a1, $a0, $a5
	b	.LBB13_181
.LBB13_184:                             # %vec.epilog.middle.block282
	beq	$a2, $a5, .LBB13_220
	b	.LBB13_224
.LBB13_185:                             # %vector.ph206
	move	$a3, $a2
	bstrins.d	$a3, $zero, 3, 0
	vreplgr2vr.b	$vr0, $a0
	pcalau12i	$a4, %pc_hi20(.LCPI13_0)
	vld	$vr1, $a4, %pc_lo12(.LCPI13_0)
	add.d	$a4, $a2, $a1
	addi.d	$a4, $a4, -8
	ori	$a5, $zero, 46
	move	$a6, $a3
	b	.LBB13_187
	.p2align	4, , 16
.LBB13_186:                             # %pred.store.continue246
                                        #   in Loop: Header=BB13_187 Depth=1
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, -16
	beqz	$a6, .LBB13_219
.LBB13_187:                             # %vector.body211
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -8
	vshuf.b	$vr2, $vr0, $vr2, $vr1
	vseq.b	$vr2, $vr2, $vr0
	vpickve2gr.b	$a7, $vr2, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_189
# %bb.188:                              # %pred.store.if215
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 7
.LBB13_189:                             # %pred.store.continue216
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_191
# %bb.190:                              # %pred.store.if217
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 6
.LBB13_191:                             # %pred.store.continue218
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 2
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_193
# %bb.192:                              # %pred.store.if219
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 5
.LBB13_193:                             # %pred.store.continue220
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 3
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_195
# %bb.194:                              # %pred.store.if221
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 4
.LBB13_195:                             # %pred.store.continue222
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 4
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_197
# %bb.196:                              # %pred.store.if223
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 3
.LBB13_197:                             # %pred.store.continue224
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 5
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_199
# %bb.198:                              # %pred.store.if225
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 2
.LBB13_199:                             # %pred.store.continue226
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 6
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_201
# %bb.200:                              # %pred.store.if227
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 1
.LBB13_201:                             # %pred.store.continue228
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 7
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_203
# %bb.202:                              # %pred.store.if229
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, 0
.LBB13_203:                             # %pred.store.continue230
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 8
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_205
# %bb.204:                              # %pred.store.if231
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -1
.LBB13_205:                             # %pred.store.continue232
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 9
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_207
# %bb.206:                              # %pred.store.if233
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -2
.LBB13_207:                             # %pred.store.continue234
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 10
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_209
# %bb.208:                              # %pred.store.if235
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -3
.LBB13_209:                             # %pred.store.continue236
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 11
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_211
# %bb.210:                              # %pred.store.if237
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -4
.LBB13_211:                             # %pred.store.continue238
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 12
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_213
# %bb.212:                              # %pred.store.if239
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -5
.LBB13_213:                             # %pred.store.continue240
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 13
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_215
# %bb.214:                              # %pred.store.if241
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -6
.LBB13_215:                             # %pred.store.continue242
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 14
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_217
# %bb.216:                              # %pred.store.if243
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -7
.LBB13_217:                             # %pred.store.continue244
                                        #   in Loop: Header=BB13_187 Depth=1
	vpickve2gr.b	$a7, $vr2, 15
	andi	$a7, $a7, 1
	beqz	$a7, .LBB13_186
# %bb.218:                              # %pred.store.if245
                                        #   in Loop: Header=BB13_187 Depth=1
	st.b	$a5, $a4, -8
	b	.LBB13_186
.LBB13_219:                             # %middle.block248
	bne	$a2, $a3, .LBB13_222
.LBB13_220:                             # %buffreplace.exit16.i
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 24
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(luaO_chunkid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$a3, $fp, 4
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	addi.d	$a4, $a2, %pc_lo12(.L.str.46)
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 56
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(save)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(luaD_throw)
	jirl	$ra, $ra, 0
.LBB13_221:                             # %trydecpoint.exit
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB13_222:                             # %vec.epilog.iter.check253
	andi	$a4, $a2, 8
	bnez	$a4, .LBB13_160
# %bb.223:
	andi	$a4, $a2, 15
.LBB13_224:                             # %.lr.ph.i13.i.preheader
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 46
	b	.LBB13_226
	.p2align	4, , 16
.LBB13_225:                             #   in Loop: Header=BB13_226 Depth=1
	addi.d	$a4, $a4, -1
	beqz	$a4, .LBB13_220
.LBB13_226:                             # %.lr.ph.i13.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a1, $a4
	bne	$a3, $a0, .LBB13_225
# %bb.227:                              #   in Loop: Header=BB13_226 Depth=1
	stx.b	$a2, $a1, $a4
	b	.LBB13_225
.Lfunc_end13:
	.size	read_numeral, .Lfunc_end13-read_numeral
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"and"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"break"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"do"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"else"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"elseif"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"end"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"false"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"for"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"function"
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"if"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"in"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"local"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"nil"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"not"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"or"
	.size	.L.str.14, 3

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"repeat"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"return"
	.size	.L.str.16, 7

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"then"
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"true"
	.size	.L.str.18, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"until"
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"while"
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	".."
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"..."
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"=="
	.size	.L.str.23, 3

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	">="
	.size	.L.str.24, 3

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"<="
	.size	.L.str.25, 3

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"~="
	.size	.L.str.26, 3

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"<number>"
	.size	.L.str.27, 9

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"<name>"
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"<string>"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"<eof>"
	.size	.L.str.30, 6

	.hidden	luaX_tokens                     # @luaX_tokens
	.type	luaX_tokens,@object
	.section	.data.rel.ro,"aw",@progbits
	.globl	luaX_tokens
	.p2align	3, 0x0
luaX_tokens:
	.dword	.L.str
	.dword	.L.str.1
	.dword	.L.str.2
	.dword	.L.str.3
	.dword	.L.str.4
	.dword	.L.str.5
	.dword	.L.str.6
	.dword	.L.str.7
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.11
	.dword	.L.str.12
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.15
	.dword	.L.str.16
	.dword	.L.str.17
	.dword	.L.str.18
	.dword	.L.str.19
	.dword	.L.str.20
	.dword	.L.str.21
	.dword	.L.str.22
	.dword	.L.str.23
	.dword	.L.str.24
	.dword	.L.str.25
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.dword	.L.str.29
	.dword	.L.str.30
	.dword	0
	.size	luaX_tokens, 256

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"char(%d)"
	.size	.L.str.31, 9

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%c"
	.size	.L.str.32, 3

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%s:%d: %s"
	.size	.L.str.33, 10

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%s near '%s'"
	.size	.L.str.34, 13

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"lexical element too long"
	.size	.L.str.35, 25

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"invalid long string delimiter"
	.size	.L.str.36, 30

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"chunk has too many lines"
	.size	.L.str.38, 25

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"unfinished long string"
	.size	.L.str.39, 23

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"unfinished long comment"
	.size	.L.str.40, 24

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"nesting of [[...]] is deprecated"
	.size	.L.str.41, 33

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"unfinished string"
	.size	.L.str.42, 18

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"escape sequence too large"
	.size	.L.str.43, 26

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"malformed number"
	.size	.L.str.46, 17

	.hidden	luaS_newlstr
	.hidden	luaO_pushfstring
	.hidden	luaO_chunkid
	.hidden	luaD_throw
	.hidden	luaH_setstr
	.hidden	luaM_realloc_
	.hidden	luaZ_fill
	.hidden	luaM_toobig
	.hidden	luaO_str2d
	.section	".note.GNU-stack","",@progbits
	.addrsig
