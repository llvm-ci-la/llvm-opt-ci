	.file	"lparser.c"
	.text
	.hidden	luaY_parser                     # -- Begin function luaY_parser
	.globl	luaY_parser
	.p2align	5
	.type	luaY_parser,@function
luaY_parser:                            # @luaY_parser
# %bb.0:
	addi.d	$sp, $sp, -752
	st.d	$ra, $sp, 744                   # 8-byte Folded Spill
	st.d	$fp, $sp, 736                   # 8-byte Folded Spill
	st.d	$s0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s1, $sp, 720                   # 8-byte Folded Spill
	st.d	$s2, $sp, 712                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a1
	move	$s1, $a0
	st.d	$a2, $sp, 688
	move	$a0, $a3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	addi.d	$a1, $sp, 616
	addi.d	$s2, $sp, 616
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaX_setinput)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 672
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaF_newproto)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 664
	move	$s0, $a0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	st.d	$s2, $sp, 40
	st.d	$fp, $sp, 48
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 64
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 72
	ld.d	$a0, $sp, 696
	st.d	$zero, $sp, 56
	st.d	$zero, $sp, 76
	st.d	$zero, $sp, 83
	st.d	$a0, $s0, 64
	ori	$a0, $zero, 2
	st.b	$a0, $s0, 115
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaH_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $sp, 24
	st.d	$a0, $a1, 0
	ld.d	$a2, $fp, 56
	ld.d	$a0, $fp, 16
	ori	$a3, $zero, 5
	sub.d	$a2, $a2, $a0
	ori	$s1, $zero, 16
	st.w	$a3, $a1, 8
	blt	$s1, $a2, .LBB0_2
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB0_2:
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	st.d	$s0, $a0, 16
	ld.d	$a2, $fp, 56
	ld.d	$a1, $fp, 16
	ori	$a3, $zero, 9
	sub.d	$a2, $a2, $a1
	st.w	$a3, $a0, 24
	blt	$s1, $a2, .LBB0_4
# %bb.3:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB0_4:                                # %open_func.exit
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a1, 16
	st.d	$a1, $fp, 16
	ori	$a1, $zero, 2
	st.b	$a1, $a0, 114
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 632
	ori	$a1, $zero, 287
	beq	$a0, $a1, .LBB0_6
# %bb.5:
	ld.d	$fp, $sp, 672
	addi.d	$a0, $sp, 616
	ori	$a1, $zero, 287
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %check.exit
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(close_func)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$s2, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 744                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 752
	ret
.Lfunc_end0:
	.size	luaY_parser, .Lfunc_end0-luaY_parser
                                        # -- End function
	.p2align	5                               # -- Begin function open_func
	.type	open_func,@function
open_func:                              # @open_func
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$fp, $a0, 56
	move	$s2, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaF_newproto)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 48
	move	$s0, $a0
	st.d	$a0, $s2, 0
	st.d	$a1, $s2, 16
	st.d	$s1, $s2, 24
	st.d	$fp, $s2, 32
	st.d	$s2, $s1, 48
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $s2, 48
	addi.w	$a0, $zero, -1
	st.d	$zero, $s2, 67
	st.d	$zero, $s2, 60
	ld.d	$a1, $s1, 80
	lu32i.d	$a0, 0
	st.w	$a0, $s2, 56
	st.d	$zero, $s2, 40
	st.d	$a1, $s0, 64
	ori	$a0, $zero, 2
	st.b	$a0, $s0, 115
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaH_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $s2, 8
	st.d	$a0, $a1, 0
	ld.d	$a2, $fp, 56
	ld.d	$a0, $fp, 16
	ori	$a3, $zero, 5
	sub.d	$a2, $a2, $a0
	ori	$s1, $zero, 16
	st.w	$a3, $a1, 8
	blt	$s1, $a2, .LBB1_2
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB1_2:
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	st.d	$s0, $a0, 16
	ld.d	$a2, $fp, 56
	ld.d	$a1, $fp, 16
	ori	$a3, $zero, 9
	sub.d	$a2, $a2, $a1
	st.w	$a3, $a0, 24
	blt	$s1, $a2, .LBB1_4
# %bb.3:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB1_4:
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	open_func, .Lfunc_end1-open_func
                                        # -- End function
	.p2align	5                               # -- Begin function chunk
	.type	chunk,@function
chunk:                                  # @chunk
# %bb.0:
	addi.d	$sp, $sp, -832
	st.d	$ra, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 808                   # 8-byte Folded Spill
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 792                   # 8-byte Folded Spill
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	st.d	$s4, $sp, 776                   # 8-byte Folded Spill
	st.d	$s5, $sp, 768                   # 8-byte Folded Spill
	st.d	$s6, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 752                   # 8-byte Folded Spill
	st.d	$s8, $sp, 744                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	ld.h	$a1, $a0, 96
	addi.d	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 15, 0
	ori	$a3, $zero, 201
	st.h	$a1, $a0, 96
	bltu	$a2, $a3, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %enterlevel.exit
	ori	$s3, $zero, 27
	ori	$s7, $zero, 19
	lu12i.w	$a0, -2045
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ori	$s5, $zero, 59
	pcalau12i	$a0, %pc_hi20(.LJTI2_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI2_0)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s2, $zero, 44
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 255
	ori	$s6, $a0, 4080
	lu12i.w	$a0, 32784
	ori	$a0, $a0, 7
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %testnext.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $fp, 48
	ld.bu	$a1, $a0, 74
	st.w	$a1, $a0, 60
	beqz	$s0, .LBB2_218
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_117 Depth 2
                                        #     Child Loop BB2_120 Depth 2
                                        #     Child Loop BB2_128 Depth 2
                                        #     Child Loop BB2_131 Depth 2
                                        #     Child Loop BB2_210 Depth 2
                                        #     Child Loop BB2_37 Depth 2
                                        #     Child Loop BB2_144 Depth 2
                                        #     Child Loop BB2_147 Depth 2
                                        #     Child Loop BB2_185 Depth 2
                                        #     Child Loop BB2_188 Depth 2
                                        #     Child Loop BB2_197 Depth 2
                                        #     Child Loop BB2_200 Depth 2
                                        #     Child Loop BB2_75 Depth 2
                                        #     Child Loop BB2_79 Depth 2
                                        #     Child Loop BB2_159 Depth 2
                                        #     Child Loop BB2_162 Depth 2
                                        #     Child Loop BB2_48 Depth 2
                                        #     Child Loop BB2_175 Depth 2
                                        #     Child Loop BB2_178 Depth 2
                                        #     Child Loop BB2_44 Depth 2
                                        #     Child Loop BB2_70 Depth 2
                                        #     Child Loop BB2_105 Depth 2
                                        #     Child Loop BB2_170 Depth 2
                                        #     Child Loop BB2_173 Depth 2
                                        #     Child Loop BB2_10 Depth 2
	ld.w	$a0, $fp, 16
	addi.d	$a1, $a0, -260
	bltu	$s3, $a1, .LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	sll.d	$a1, $s1, $a1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_218
.LBB2_6:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a0, $a0, -258
	bltu	$s7, $a0, .LBB2_65
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	ld.w	$s4, $fp, 4
	add.d	$a0, $s8, $a0
	jr	$a0
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 48
	ld.d	$s1, $s0, 40
	beqz	$s1, .LBB2_88
# %bb.9:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_10:                               # %.lr.ph.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s1, 14
	bnez	$a0, .LBB2_90
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=2
	ld.bu	$a0, $s1, 13
	ld.d	$s1, $s1, 0
	or	$s2, $s2, $a0
	bnez	$s1, .LBB2_10
	b	.LBB2_89
.LBB2_12:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s5, $fp, 48
	ld.b	$a0, $s5, 74
	ld.d	$a1, $s5, 40
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $sp, 728
	st.b	$a0, $sp, 732
	ori	$a0, $zero, 256
	st.h	$a0, $sp, 733
	st.d	$a1, $sp, 720
	addi.d	$a0, $sp, 720
	st.d	$a0, $s5, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 56
	ori	$a1, $zero, 285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %str_checkname.exit.i31
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	beq	$a0, $s2, .LBB2_67
# %bb.15:                               # %str_checkname.exit.i31
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 267
	beq	$a0, $a1, .LBB2_67
# %bb.16:                               # %str_checkname.exit.i31
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 61
	bne	$a0, $a1, .LBB2_115
# %bb.17:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s7, $fp, 48
	ld.w	$a0, $s7, 60
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	ori	$s1, $zero, 61
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	beq	$a0, $s1, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 56
	ori	$a1, $zero, 61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_19:                               # %checknext.exit75
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	beq	$a0, $s2, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 56
	ori	$a1, $zero, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_21:                               # %checknext.exit73
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bne	$a0, $s2, .LBB2_164
# %bb.22:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	b	.LBB2_165
.LBB2_23:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 265
	bne	$a0, $a1, .LBB2_72
# %bb.24:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ld.d	$s4, $fp, 48
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 56
	ori	$a1, $zero, 285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_26:                               # %str_checkname.exit.i19
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 60
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a1, $sp, 736
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 720
	st.w	$a0, $sp, 728
	ori	$a1, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.b	$a1, $a0, 74
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, 1
	st.b	$a1, $a0, 74
	ld.d	$a2, $a2, 48
	andi	$a1, $a1, 255
	alsl.d	$a1, $a1, $a0, 1
	ld.hu	$a1, $a1, 194
	ld.w	$a0, $a0, 48
	alsl.d	$a1, $a1, $a2, 4
	st.w	$a0, $a1, 8
	ld.w	$s0, $fp, 4
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_func)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	st.w	$s0, $a0, 96
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 40
	beq	$a0, $a1, .LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s1, $fp, 56
	ori	$a1, $zero, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_28:                               # %checknext.exit60
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(parlist)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 41
	beq	$a0, $a1, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s1, $fp, 56
	ori	$a1, $zero, 41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_30:                               # %checknext.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ld.d	$a1, $sp, 120
	st.w	$a0, $a1, 100
	ori	$a1, $zero, 262
	ori	$a2, $zero, 265
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close_func)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pushclosure)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 720
	addi.d	$a2, $sp, 96
	move	$a0, $s4
	pcaddu18i	$ra, %call36(luaK_storevar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.bu	$a1, $s4, 74
	ld.d	$a0, $a0, 48
	alsl.d	$a1, $a1, $s4, 1
	ld.hu	$a1, $a1, 194
	ld.w	$a2, $s4, 48
	alsl.d	$a0, $a1, $a0, 4
	st.w	$a2, $a0, 8
	b	.LBB2_87
.LBB2_31:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(block)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 262
	ori	$a2, $zero, 259
	move	$a0, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	b	.LBB2_87
.LBB2_32:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s5, $fp, 48
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_getlabel)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s5, 74
	move	$s2, $a0
	ld.d	$a0, $s5, 40
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $sp, 728
	st.b	$a1, $sp, 732
	ori	$a3, $zero, 256
	st.h	$a3, $sp, 733
	st.d	$a0, $sp, 720
	st.w	$a2, $sp, 104
	st.b	$a1, $sp, 108
	st.h	$zero, $sp, 109
	addi.d	$a0, $sp, 720
	st.d	$a0, $sp, 96
	addi.d	$a0, $sp, 96
	st.d	$a0, $s5, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 276
	ori	$a2, $zero, 272
	move	$a0, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 120
	bne	$a0, $s1, .LBB2_34
# %bb.33:                               #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 120
.LBB2_34:                               # %cond.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_goiftrue)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 109
	ld.w	$s4, $sp, 140
	beqz	$a0, .LBB2_93
# %bb.35:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 48
	ld.d	$s1, $s0, 40
	beqz	$s1, .LBB2_136
# %bb.36:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s3, $zero
	.p2align	4, , 16
.LBB2_37:                               # %.lr.ph.i.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s1, 14
	bnez	$a0, .LBB2_138
# %bb.38:                               #   in Loop: Header=BB2_37 Depth=2
	ld.bu	$a0, $s1, 13
	ld.d	$s1, $s1, 0
	or	$s3, $s3, $a0
	bnez	$s1, .LBB2_37
	b	.LBB2_137
.LBB2_39:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	addi.d	$a2, $a0, -260
	move	$a1, $zero
	bltu	$s3, $a2, .LBB2_96
# %bb.40:                               #   in Loop: Header=BB2_4 Depth=1
	sll.d	$a2, $s1, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a2, $a2, $a3
	beqz	$a2, .LBB2_96
# %bb.41:                               #   in Loop: Header=BB2_4 Depth=1
	move	$s4, $a1
.LBB2_42:                               # %retstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(luaK_ret)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	b	.LBB2_207
.LBB2_43:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(singlevar)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 46
	ld.w	$a0, $fp, 16
	bne	$a0, $s0, .LBB2_45
	.p2align	4, , 16
.LBB2_44:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(field)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	beq	$a0, $s0, .LBB2_44
.LBB2_45:                               #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 58
	bne	$a0, $a1, .LBB2_83
# %bb.46:                               #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(field)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	b	.LBB2_84
.LBB2_47:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s5, $fp, 48
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $sp, 720
	.p2align	4, , 16
.LBB2_48:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 120
	bne	$a0, $s1, .LBB2_50
# %bb.49:                               #   in Loop: Header=BB2_48 Depth=2
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 120
.LBB2_50:                               # %cond.exit92
                                        #   in Loop: Header=BB2_48 Depth=2
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_goiftrue)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ld.w	$s0, $sp, 140
	ori	$a1, $zero, 274
	bne	$a0, $a1, .LBB2_53
.LBB2_51:                               # %checknext.exit91
                                        #   in Loop: Header=BB2_48 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(block)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 261
	bne	$a0, $a1, .LBB2_54
# %bb.52:                               #   in Loop: Header=BB2_48 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 720
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_concat)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	b	.LBB2_48
.LBB2_53:                               # %checknext.exit91.sink.split
                                        #   in Loop: Header=BB2_48 Depth=2
	ld.d	$s2, $fp, 56
	ori	$a1, $zero, 274
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	ori	$s2, $zero, 44
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
	b	.LBB2_51
.LBB2_54:                               # %checknext.exit91
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 260
	bne	$a0, $a1, .LBB2_85
# %bb.55:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 720
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_concat)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 48
	ld.b	$a0, $s0, 74
	ld.d	$a1, $s0, 40
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $sp, 128
	st.b	$a0, $sp, 132
	st.h	$zero, $sp, 133
	st.d	$a1, $sp, 120
	addi.d	$a0, $sp, 120
	st.d	$a0, $s0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 40
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, 24
	st.d	$a0, $s0, 40
	ld.d	$a0, $a1, 48
	ld.bu	$a2, $s1, 12
	ld.bu	$a7, $a0, 74
	bgeu	$a2, $a7, .LBB2_180
# %bb.56:                               # %.lr.ph.i.i83
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB2_174
# %bb.57:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a7
	b	.LBB2_177
.LBB2_58:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s5, $fp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_getlabel)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 120
	bne	$a0, $s1, .LBB2_60
# %bb.59:                               #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 120
.LBB2_60:                               # %cond.exit.i42
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_goiftrue)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 140
	ld.b	$a0, $s5, 74
	ld.d	$a1, $s5, 40
	addi.d	$a2, $sp, 720
	st.d	$a2, $s5, 40
	ld.w	$a2, $fp, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.w	$a3, $sp, 728
	st.b	$a0, $sp, 732
	ori	$a0, $zero, 256
	st.h	$a0, $sp, 733
	st.d	$a1, $sp, 720
	ori	$a0, $zero, 259
	beq	$a2, $a0, .LBB2_62
# %bb.61:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 56
	ori	$a1, $zero, 259
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_62:                               # %checknext.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 48
	ld.b	$a0, $s0, 74
	ld.d	$a1, $s0, 40
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $sp, 128
	st.b	$a0, $sp, 132
	st.h	$zero, $sp, 133
	st.d	$a1, $sp, 120
	addi.d	$a0, $sp, 120
	st.d	$a0, $s0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 40
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 24
	st.d	$a0, $s0, 40
	ld.d	$a0, $a1, 48
	ld.bu	$a2, $s2, 12
	ld.bu	$a7, $a0, 74
	bgeu	$a2, $a7, .LBB2_122
# %bb.63:                               # %.lr.ph.i.i78
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB2_116
# %bb.64:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a7
	b	.LBB2_119
.LBB2_65:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 48
	move	$a0, $fp
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(primaryexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 128
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB2_86
# %bb.66:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s0, 0
	ld.w	$a1, $sp, 136
	ld.d	$a0, $a0, 24
	slli.d	$a1, $a1, 2
	ldx.wu	$a2, $a0, $a1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	and	$a2, $a2, $a3
	lu12i.w	$a3, 4
	or	$a2, $a2, $a3
	stx.w	$a2, $a0, $a1
	b	.LBB2_87
.LBB2_67:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $fp, 48
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 60
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 15
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 11
	move	$a0, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bne	$a0, $s2, .LBB2_101
# %bb.68:                               # %.lr.ph138.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s0, $zero, 4
	b	.LBB2_70
	.p2align	4, , 16
.LBB2_69:                               # %str_checkname.exit
                                        #   in Loop: Header=BB2_70 Depth=2
	ld.d	$s2, $fp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s0, 1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	move	$s0, $s1
	ori	$s2, $zero, 44
	bne	$a0, $s2, .LBB2_100
.LBB2_70:                               # %.lr.ph138
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB2_69
# %bb.71:                               #   in Loop: Header=BB2_70 Depth=2
	ld.d	$s2, $fp, 56
	ori	$a1, $zero, 285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
	b	.LBB2_69
.LBB2_72:                               #   in Loop: Header=BB2_4 Depth=1
	ori	$s3, $zero, 1
	ori	$s7, $zero, 1
	ori	$s1, $zero, 61
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB2_75
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_73:                               # %thread-pre-split
                                        #   in Loop: Header=BB2_75 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	addi.w	$s7, $s7, 1
	addi.d	$s3, $s3, 1
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB2_75
.LBB2_74:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 56
	ori	$a1, $zero, 285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_75:                               # %str_checkname.exit.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $fp, 24
	addi.w	$s4, $s7, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	beq	$a0, $s2, .LBB2_73
# %bb.76:                               # %str_checkname.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	bne	$a0, $s1, .LBB2_114
# %bb.77:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$s1, $zero, 1
	bne	$a0, $s2, .LBB2_80
# %bb.78:                               # %.lr.ph135.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB2_79:                               # %.lr.ph135
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	addi.d	$s1, $s1, 1
	beq	$a0, $s2, .LBB2_79
.LBB2_80:                               # %explist1.exit.i16
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $sp, 120
	ld.d	$s0, $fp, 48
	addi.d	$a1, $a0, -13
	sub.w	$s5, $s7, $s1
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB2_152
# %bb.81:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	slt	$a0, $a1, $s5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s2, $a0, $a1
	addi.w	$a2, $s2, 1
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_setreturns)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	blez	$s5, .LBB2_156
# %bb.82:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	b	.LBB2_156
.LBB2_83:                               # %funcstat.exit.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a2, $zero
.LBB2_84:                               # %funcstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 720
	move	$a0, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(body)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 720
	pcaddu18i	$ra, %call36(luaK_storevar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaK_fixline)
	jirl	$ra, $ra, 0
	b	.LBB2_87
.LBB2_85:                               #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 720
	move	$a0, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaK_concat)
	jirl	$ra, $ra, 0
	b	.LBB2_183
.LBB2_86:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$zero, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(assignment)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_87:                               # %exprstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s0, $zero, 1
	b	.LBB2_207
.LBB2_88:                               #   in Loop: Header=BB2_4 Depth=1
	move	$s2, $zero
.LBB2_89:                               # %.critedge17.i
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB2_90:                               # %.critedge.i
                                        #   in Loop: Header=BB2_4 Depth=1
	beqz	$s2, .LBB2_92
# %bb.91:                               #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a2, $s1, 12
	ori	$a1, $zero, 35
	move	$a0, $s0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_92:                               # %breakstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$s1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_concat)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ori	$s1, $zero, 1
	ori	$s2, $zero, 44
	b	.LBB2_207
.LBB2_93:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $s5, 40
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s5, 24
	st.d	$a0, $s5, 40
	ld.d	$a0, $a1, 48
	ld.bu	$a2, $s0, 12
	ld.bu	$a7, $a0, 74
	bgeu	$a2, $a7, .LBB2_190
# %bb.94:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB2_184
# %bb.95:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a7
	b	.LBB2_187
.LBB2_96:                               #   in Loop: Header=BB2_4 Depth=1
	move	$s4, $a1
	beq	$a0, $s5, .LBB2_42
# %bb.97:                               #   in Loop: Header=BB2_4 Depth=1
	ori	$s4, $zero, 44
	ori	$s2, $zero, 1
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 16
	beq	$s1, $s4, .LBB2_209
# %bb.98:                               # %explist1.exit.i.thread
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $sp, 120
	addi.w	$a0, $a0, -13
	bgeu	$s2, $a0, .LBB2_212
# %bb.99:                               #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_exp2anyreg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$s4, $zero, 1
	b	.LBB2_217
.LBB2_100:                              # %forlist.exit.i.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$s1, $s1, -3
.LBB2_101:                              # %forlist.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 267
	beq	$a0, $a1, .LBB2_103
# %bb.102:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 56
	ori	$a1, $zero, 267
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB2_103:                              # %checknext.exit66
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 4
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$s1, $zero, 1
	bne	$a0, $s2, .LBB2_106
# %bb.104:                              # %.lr.ph141.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB2_105:                              # %.lr.ph141
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	addi.w	$s1, $s1, 1
	beq	$a0, $s2, .LBB2_105
.LBB2_106:                              # %explist1.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $sp, 120
	ld.d	$s2, $fp, 48
	addi.d	$a1, $a0, -13
	ori	$a2, $zero, 3
	sub.w	$s3, $a2, $s1
	ori	$s7, $zero, 2
	bgeu	$a1, $s7, .LBB2_109
# %bb.107:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	slt	$a0, $a1, $s3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	addi.w	$a2, $s3, 1
	addi.d	$a1, $sp, 120
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaK_setreturns)
	jirl	$ra, $ra, 0
	bltu	$s7, $s1, .LBB2_113
# %bb.108:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	b	.LBB2_113
.LBB2_109:                              # %explist1.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	beqz	$a0, .LBB2_111
# %bb.110:                              #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 120
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
.LBB2_111:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 2
	bltu	$a0, $s1, .LBB2_113
# %bb.112:                              #   in Loop: Header=BB2_4 Depth=1
	ld.w	$s1, $s2, 60
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(luaK_nil)
	jirl	$ra, $ra, 0
.LBB2_113:                              # %adjust_assign.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaK_checkstack)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(forbody)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 27
	ori	$s7, $zero, 19
	ori	$s1, $zero, 1
	ori	$s2, $zero, 44
	b	.LBB2_166
.LBB2_114:                              # %.thread
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $fp, 48
	st.w	$zero, $sp, 120
	move	$s5, $s7
	b	.LBB2_155
.LBB2_115:                              #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
	b	.LBB2_166
.LBB2_116:                              # %vector.ph239
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_117:                              # %vector.body242
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a3, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a3, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a3, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a3, $t1
	st.w	$a1, $t2, 12
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t1, 12
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -8
	bnez	$t0, .LBB2_117
# %bb.118:                              # %middle.block248
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a5, $a6, .LBB2_121
.LBB2_119:                              # %scalar.ph237.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB2_120:                              # %scalar.ph237
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB2_120
.LBB2_121:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$a4, $a0, 74
.LBB2_122:                              # %removevars.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s2, 13
	beqz	$a0, .LBB2_124
# %bb.123:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 35
	move	$a0, $s0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_124:                              # %leaveblock.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s0, 74
	st.w	$a0, $s0, 60
	ld.w	$a1, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(luaK_patchlist)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 262
	ori	$a2, $zero, 277
	move	$a0, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, 40
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s5, 24
	st.d	$a0, $s5, 40
	ld.d	$a0, $a1, 48
	ld.bu	$a2, $s0, 12
	ld.bu	$a7, $a0, 74
	ori	$s7, $zero, 19
	ori	$s2, $zero, 44
	bgeu	$a2, $a7, .LBB2_133
# %bb.125:                              # %.lr.ph.i.i.i49
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB2_127
# %bb.126:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a7
	b	.LBB2_130
.LBB2_127:                              # %vector.ph225
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_128:                              # %vector.body228
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a3, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a3, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a3, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a3, $t1
	st.w	$a1, $t2, 12
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t1, 12
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -8
	bnez	$t0, .LBB2_128
# %bb.129:                              # %middle.block234
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a5, $a6, .LBB2_132
.LBB2_130:                              # %scalar.ph223.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB2_131:                              # %scalar.ph223
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB2_131
.LBB2_132:                              # %._crit_edge.i.i.i52
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$a4, $a0, 74
.LBB2_133:                              # %removevars.exit.i.i46
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s0, 13
	beqz	$a0, .LBB2_135
# %bb.134:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 35
	move	$a0, $s5
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_135:                              # %whilestat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s5, 74
	st.w	$a0, $s5, 60
	ld.w	$a1, $s0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	ori	$s1, $zero, 1
	b	.LBB2_206
.LBB2_136:                              #   in Loop: Header=BB2_4 Depth=1
	move	$s3, $zero
.LBB2_137:                              # %.critedge17.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB2_138:                              # %.critedge.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	beqz	$s3, .LBB2_140
# %bb.139:                              #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a2, $s1, 12
	ori	$a1, $zero, 35
	move	$a0, $s0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_140:                              # %breakstat.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$s1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_concat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, 40
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s5, 24
	st.d	$a0, $s5, 40
	ld.d	$a0, $a1, 48
	ld.bu	$a2, $s0, 12
	ld.bu	$a7, $a0, 74
	ori	$s3, $zero, 27
	ori	$s1, $zero, 1
	bgeu	$a2, $a7, .LBB2_149
# %bb.141:                              # %.lr.ph.i.i25.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB2_143
# %bb.142:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a7
	b	.LBB2_146
.LBB2_143:                              # %vector.ph295
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_144:                              # %vector.body298
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a3, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a3, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a3, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a3, $t1
	st.w	$a1, $t2, 12
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t1, 12
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -8
	bnez	$t0, .LBB2_144
# %bb.145:                              # %middle.block304
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a5, $a6, .LBB2_148
.LBB2_146:                              # %scalar.ph293.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB2_147:                              # %scalar.ph293
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB2_147
.LBB2_148:                              # %._crit_edge.i.i28.i
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$a4, $a0, 74
.LBB2_149:                              # %removevars.exit.i23.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s0, 13
	beqz	$a0, .LBB2_151
# %bb.150:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 35
	move	$a0, $s5
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_151:                              # %leaveblock.exit29.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s5, 74
	st.w	$a0, $s5, 60
	ld.w	$a1, $s0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 48
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	b	.LBB2_193
.LBB2_152:                              # %explist1.exit.i16
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s1, $zero, 1
	beqz	$a0, .LBB2_154
# %bb.153:                              #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
.LBB2_154:                              #   in Loop: Header=BB2_4 Depth=1
	blez	$s5, .LBB2_156
.LBB2_155:                              #   in Loop: Header=BB2_4 Depth=1
	ld.w	$s1, $s0, 60
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	ori	$s1, $zero, 1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(luaK_nil)
	jirl	$ra, $ra, 0
.LBB2_156:                              # %adjust_assign.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $fp, 48
	ld.bu	$a2, $a3, 74
	ld.d	$a1, $a3, 0
	add.d	$a0, $a2, $s7
	st.b	$a0, $a3, 74
	ld.w	$a0, $a3, 48
	ld.d	$a1, $a1, 48
	bstrpick.d	$a5, $s7, 31, 0
	add.d	$a4, $a2, $s3
	ori	$a2, $zero, 3
	bgeu	$s4, $a2, .LBB2_158
# %bb.157:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a2, $a5
	ori	$s3, $zero, 27
	ori	$s7, $zero, 19
	ori	$s5, $zero, 59
	b	.LBB2_161
.LBB2_158:                              # %vector.ph309
                                        #   in Loop: Header=BB2_4 Depth=1
	bstrpick.d	$a2, $a5, 31, 2
	slli.d	$a6, $a2, 2
	andi	$a2, $a5, 3
	slli.d	$a7, $a5, 1
	sub.d	$a7, $a3, $a7
	andi	$t0, $a4, 255
	alsl.d	$a7, $t0, $a7, 1
	addi.d	$a7, $a7, 196
	move	$t0, $a6
	ori	$s3, $zero, 27
	ori	$s7, $zero, 19
	ori	$s5, $zero, 59
	.p2align	4, , 16
.LBB2_159:                              # %vector.body312
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a1, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a1, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a1, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a1, $t1
	st.w	$a0, $t2, 8
	st.w	$a0, $t3, 8
	st.w	$a0, $t4, 8
	st.w	$a0, $t1, 8
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB2_159
# %bb.160:                              # %middle.block317
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a6, $a5, .LBB2_163
.LBB2_161:                              # %scalar.ph307.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	slli.d	$a5, $a2, 1
	sub.d	$a3, $a3, $a5
	andi	$a4, $a4, 255
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$a3, $a3, 196
	.p2align	4, , 16
.LBB2_162:                              # %scalar.ph307
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a4, $a3, 0
	alsl.d	$a4, $a4, $a1, 4
	st.w	$a0, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 2
	bnez	$a2, .LBB2_162
.LBB2_163:                              # %localstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s0, $zero, 1
	ori	$s2, $zero, 44
	b	.LBB2_207
.LBB2_164:                              #   in Loop: Header=BB2_4 Depth=1
	ld.w	$s0, $s7, 60
	vldi	$vr0, -912
	move	$a0, $s7
	pcaddu18i	$ra, %call36(luaK_numberK)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a1, $zero, 1
	move	$a0, $s7
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaK_codeABx)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
.LBB2_165:                              # %fornum.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s7, $zero, 19
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(forbody)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
.LBB2_166:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 262
	ori	$a2, $zero, 264
	move	$a0, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, 40
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s5, 24
	st.d	$a0, $s5, 40
	ld.d	$a0, $a1, 48
	ld.bu	$a2, $s0, 12
	ld.bu	$a7, $a0, 74
	bgeu	$a2, $a7, .LBB2_202
# %bb.167:                              # %.lr.ph.i.i.i37
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB2_169
# %bb.168:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a7
	b	.LBB2_172
.LBB2_169:                              # %vector.ph253
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_170:                              # %vector.body256
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a3, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a3, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a3, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a3, $t1
	st.w	$a1, $t2, 12
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t1, 12
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -8
	bnez	$t0, .LBB2_170
# %bb.171:                              # %middle.block262
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a5, $a6, .LBB2_201
.LBB2_172:                              # %scalar.ph251.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB2_173:                              # %scalar.ph251
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB2_173
	b	.LBB2_201
.LBB2_174:                              # %vector.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_175:                              # %vector.body
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a3, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a3, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a3, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a3, $t1
	st.w	$a1, $t2, 12
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t1, 12
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -8
	bnez	$t0, .LBB2_175
# %bb.176:                              # %middle.block
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a5, $a6, .LBB2_179
.LBB2_177:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB2_178:                              # %scalar.ph
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB2_178
.LBB2_179:                              # %._crit_edge.i.i86
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$a4, $a0, 74
.LBB2_180:                              # %removevars.exit.i81
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s1, 13
	beqz	$a0, .LBB2_182
# %bb.181:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 35
	move	$a0, $s0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_182:                              # %leaveblock.exit87
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s0, 74
	st.w	$a0, $s0, 60
	ld.w	$a1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
.LBB2_183:                              # %ifstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a1, $sp, 720
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 262
	ori	$a2, $zero, 266
	move	$a0, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	b	.LBB2_205
.LBB2_184:                              # %vector.ph281
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_185:                              # %vector.body284
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a3, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a3, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a3, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a3, $t1
	st.w	$a1, $t2, 12
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t1, 12
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -8
	bnez	$t0, .LBB2_185
# %bb.186:                              # %middle.block290
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a5, $a6, .LBB2_189
.LBB2_187:                              # %scalar.ph279.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB2_188:                              # %scalar.ph279
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB2_188
.LBB2_189:                              # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$a4, $a0, 74
.LBB2_190:                              # %removevars.exit.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s0, 13
	beqz	$a0, .LBB2_192
# %bb.191:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 35
	move	$a0, $s5
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_192:                              # %leaveblock.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s5, 74
	st.w	$a0, $s5, 60
	ld.w	$a1, $s0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s4
.LBB2_193:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(luaK_patchlist)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, 40
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s5, 24
	st.d	$a0, $s5, 40
	ld.d	$a0, $a1, 48
	ld.bu	$a2, $s0, 12
	ld.bu	$a7, $a0, 74
	ori	$s2, $zero, 44
	bgeu	$a2, $a7, .LBB2_202
# %bb.194:                              # %.lr.ph.i.i34.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB2_196
# %bb.195:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a7
	b	.LBB2_199
.LBB2_196:                              # %vector.ph267
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_197:                              # %vector.body270
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a3, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $s6
	add.d	$t3, $a3, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $s6
	add.d	$t4, $a3, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $s6
	add.d	$t1, $a3, $t1
	st.w	$a1, $t2, 12
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t1, 12
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -8
	bnez	$t0, .LBB2_197
# %bb.198:                              # %middle.block276
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$a5, $a6, .LBB2_201
.LBB2_199:                              # %scalar.ph265.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB2_200:                              # %scalar.ph265
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB2_200
.LBB2_201:                              # %._crit_edge.i.i.i40
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$a4, $a0, 74
.LBB2_202:                              # %removevars.exit.i.i35
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s0, 13
	beqz	$a0, .LBB2_204
# %bb.203:                              #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 35
	move	$a0, $s5
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB2_204:                              # %forstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a0, $s5, 74
	st.w	$a0, $s5, 60
	ld.w	$a1, $s0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
.LBB2_205:                              # %statement.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s0, $zero, 1
.LBB2_206:                              # %statement.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s5, $zero, 59
.LBB2_207:                              # %statement.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $fp, 16
	bne	$a0, $s5, .LBB2_3
# %bb.208:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	b	.LBB2_3
.LBB2_209:                              # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s4, $zero, 1
	ori	$s2, $zero, 44
	.p2align	4, , 16
.LBB2_210:                              # %.lr.ph
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	addi.w	$s4, $s4, 1
	beq	$a0, $s2, .LBB2_210
# %bb.211:                              # %explist1.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $sp, 120
	addi.w	$a0, $a0, -13
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB2_216
.LBB2_212:                              #   in Loop: Header=BB2_4 Depth=1
	addi.w	$s4, $zero, -1
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(luaK_setreturns)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 120
	ori	$a1, $zero, 13
	ori	$s2, $zero, 44
	bne	$a0, $a1, .LBB2_215
# %bb.213:                              #   in Loop: Header=BB2_4 Depth=1
	beq	$s1, $s2, .LBB2_215
# %bb.214:                              #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s0, 0
	ld.w	$a1, $sp, 128
	ld.d	$a0, $a0, 24
	slli.d	$a1, $a1, 2
	ldx.wu	$a2, $a0, $a1
	srli.d	$a2, $a2, 6
	ori	$a3, $zero, 29
	bstrins.d	$a3, $a2, 31, 6
	stx.w	$a3, $a0, $a1
.LBB2_215:                              #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a1, $s0, 74
	ori	$s1, $zero, 1
	b	.LBB2_42
.LBB2_216:                              #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 74
.LBB2_217:                              # %retstat.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$s1, $zero, 1
	ori	$s2, $zero, 44
	b	.LBB2_42
.LBB2_218:                              # %.critedge
	ld.d	$a0, $fp, 56
	ld.h	$a1, $a0, 96
	addi.d	$a1, $a1, -1
	st.h	$a1, $a0, 96
	ld.d	$s8, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 808                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 816                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 824                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 832
	ret
.Lfunc_end2:
	.size	chunk, .Lfunc_end2-chunk
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_8-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_43-.LJTI2_0
	.word	.LBB2_47-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_32-.LJTI2_0
	.word	.LBB2_39-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_58-.LJTI2_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function close_func
	.type	close_func,@function
close_func:                             # @close_func
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 48
	ld.d	$s0, $a0, 56
	ld.bu	$a3, $s1, 74
	ld.d	$s2, $s1, 0
	beqz	$a3, .LBB3_9
# %bb.1:                                # %.lr.ph.i
	ld.w	$a0, $s1, 48
	ld.d	$a1, $s2, 48
	ori	$a2, $zero, 4
	bgeu	$a3, $a2, .LBB3_3
# %bb.2:
	move	$a2, $a3
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	andi	$a4, $a3, 252
	andi	$a2, $a3, 3
	alsl.d	$a5, $a3, $s1, 1
	addi.d	$a5, $a5, 188
	lu12i.w	$a6, 255
	ori	$a6, $a6, 4080
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	vinsgr2vr.d	$vr0, $t0, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t0, $vr0, 0
	bstrpick.d	$t1, $t0, 15, 0
	alsl.d	$t1, $t1, $a1, 4
	srli.d	$t2, $t0, 12
	and	$t2, $t2, $a6
	add.d	$t2, $a1, $t2
	srli.d	$t3, $t0, 28
	and	$t3, $t3, $a6
	add.d	$t3, $a1, $t3
	srli.d	$t0, $t0, 44
	and	$t0, $t0, $a6
	add.d	$t0, $a1, $t0
	st.w	$a0, $t1, 12
	st.w	$a0, $t2, 12
	st.w	$a0, $t3, 12
	st.w	$a0, $t0, 12
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, -8
	bnez	$a7, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$a4, $a3, .LBB3_8
.LBB3_6:                                # %scalar.ph.preheader
	alsl.d	$a3, $a2, $s1, 1
	addi.d	$a3, $a3, 194
	.p2align	4, , 16
.LBB3_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	alsl.d	$a4, $a4, $a1, 4
	st.w	$a0, $a4, 12
	addi.d	$a3, $a3, -2
	bnez	$a2, .LBB3_7
.LBB3_8:                                # %._crit_edge.i
	st.b	$zero, $s1, 74
.LBB3_9:                                # %removevars.exit
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaK_ret)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 48
	addi.w	$s3, $zero, -1
	blt	$a0, $s3, .LBB3_12
# %bb.10:
	ld.w	$a2, $s2, 80
	ld.d	$a1, $s2, 24
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 48
	st.d	$a0, $s2, 24
	st.w	$a3, $s2, 80
	bge	$a3, $s3, .LBB3_13
.LBB3_11:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
	b	.LBB3_14
.LBB3_12:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 48
	st.d	$a0, $s2, 24
	st.w	$a3, $s2, 80
	blt	$a3, $s3, .LBB3_11
.LBB3_13:
	ld.w	$a0, $s2, 84
	ld.d	$a1, $s2, 40
	slli.d	$a2, $a0, 2
	slli.d	$a3, $a3, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
.LBB3_14:
	ld.w	$a1, $s1, 48
	ld.w	$a3, $s1, 64
	st.d	$a0, $s2, 40
	st.w	$a1, $s2, 84
	blt	$a3, $s3, .LBB3_16
# %bb.15:
	ld.w	$a0, $s2, 76
	ld.d	$a1, $s2, 16
	slli.d	$a2, $a0, 4
	slli.d	$a3, $a3, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	b	.LBB3_17
.LBB3_16:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
.LBB3_17:
	ld.w	$a1, $s1, 64
	ld.w	$a3, $s1, 68
	st.d	$a0, $s2, 16
	st.w	$a1, $s2, 76
	blt	$a3, $s3, .LBB3_19
# %bb.18:
	ld.w	$a0, $s2, 88
	ld.d	$a1, $s2, 32
	slli.d	$a2, $a0, 3
	slli.d	$a3, $a3, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	b	.LBB3_20
.LBB3_19:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
.LBB3_20:
	ld.h	$a3, $s1, 72
	ld.w	$a1, $s1, 68
	st.d	$a0, $s2, 32
	addi.d	$a0, $a3, 1
	srli.d	$a0, $a0, 60
	st.w	$a1, $s2, 88
	bnez	$a0, .LBB3_22
# %bb.21:
	ld.w	$a0, $s2, 92
	ld.d	$a1, $s2, 48
	slli.d	$a2, $a0, 4
	slli.d	$a3, $a3, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	b	.LBB3_23
.LBB3_22:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
.LBB3_23:
	st.d	$a0, $s2, 48
	ld.h	$a0, $s1, 72
	ld.w	$a2, $s2, 72
	ld.bu	$a3, $s2, 112
	ld.d	$a1, $s2, 56
	st.w	$a0, $s2, 92
	slli.d	$a2, $a2, 3
	slli.d	$a3, $a3, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 56
	ld.bu	$a0, $s2, 112
	ld.d	$a1, $s1, 16
	ld.d	$a2, $s0, 16
	ld.w	$a3, $fp, 16
	st.w	$a0, $s2, 72
	st.d	$a1, $fp, 48
	addi.d	$a0, $a2, -32
	addi.w	$a1, $a3, -285
	ori	$a2, $zero, 1
	st.d	$a0, $s0, 16
	bltu	$a2, $a1, .LBB3_25
# %bb.24:
	ld.d	$a0, $fp, 24
	ld.d	$a2, $a0, 16
	addi.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(luaX_newstring)
	jr	$t8
.LBB3_25:                               # %anchor_token.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	close_func, .Lfunc_end3-close_func
                                        # -- End function
	.p2align	5                               # -- Begin function block
	.type	block,@function
block:                                  # @block
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 48
	addi.w	$a1, $zero, -1
	ld.b	$a2, $fp, 74
	lu32i.d	$a1, 0
	ld.d	$a3, $fp, 40
	st.w	$a1, $sp, 16
	st.b	$a2, $sp, 20
	st.h	$zero, $sp, 21
	st.d	$a3, $sp, 8
	addi.d	$a1, $sp, 8
	st.d	$a1, $fp, 40
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$s0, $fp, 40
	ld.d	$a0, $a0, 48
	ld.d	$a1, $s0, 0
	ld.bu	$a2, $s0, 12
	ld.bu	$a7, $a0, 74
	st.d	$a1, $fp, 40
	bgeu	$a2, $a7, .LBB4_9
# %bb.1:                                # %.lr.ph.i.i
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB4_3
# %bb.2:
	move	$a4, $a7
	b	.LBB4_6
.LBB4_3:                                # %vector.ph
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	lu12i.w	$t0, 255
	ori	$t0, $t0, 4080
	move	$t1, $a6
	.p2align	4, , 16
.LBB4_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr0, $t2, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t2, $vr0, 0
	bstrpick.d	$t3, $t2, 15, 0
	alsl.d	$t3, $t3, $a3, 4
	srli.d	$t4, $t2, 12
	and	$t4, $t4, $t0
	add.d	$t4, $a3, $t4
	srli.d	$t5, $t2, 28
	and	$t5, $t5, $t0
	add.d	$t5, $a3, $t5
	srli.d	$t2, $t2, 44
	and	$t2, $t2, $t0
	add.d	$t2, $a3, $t2
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t5, 12
	st.w	$a1, $t2, 12
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, -8
	bnez	$t1, .LBB4_4
# %bb.5:                                # %middle.block
	beq	$a5, $a6, .LBB4_8
.LBB4_6:                                # %scalar.ph.preheader
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB4_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB4_7
.LBB4_8:                                # %._crit_edge.i.i
	st.b	$a4, $a0, 74
.LBB4_9:                                # %removevars.exit.i
	ld.bu	$a0, $s0, 13
	beqz	$a0, .LBB4_11
# %bb.10:
	ori	$a1, $zero, 35
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %leaveblock.exit
	ld.bu	$a0, $fp, 74
	ld.w	$a1, $s0, 8
	st.w	$a0, $fp, 60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	block, .Lfunc_end4-block
                                        # -- End function
	.p2align	5                               # -- Begin function check_match
	.type	check_match,@function
check_match:                            # @check_match
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a0, 16
	bne	$a4, $a1, .LBB5_2
# %bb.1:                                # %testnext.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(luaX_next)
	jr	$t8
.LBB5_2:
	move	$fp, $a3
	move	$s2, $a2
	ld.w	$s4, $a0, 4
	ld.d	$s0, $a0, 56
	move	$s3, $a0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bne	$fp, $s4, .LBB5_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	b	.LBB5_5
.LBB5_4:
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s0
	move	$a2, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
.LBB5_5:
	move	$a1, $a0
	move	$a0, $s3
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(luaX_syntaxerror)
	jr	$t8
.Lfunc_end5:
	.size	check_match, .Lfunc_end5-check_match
                                        # -- End function
	.p2align	5                               # -- Begin function subexpr
	.type	subexpr,@function
subexpr:                                # @subexpr
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	ld.h	$a3, $a0, 96
	move	$s1, $a2
	move	$s0, $a1
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a1, 15, 0
	ori	$a3, $zero, 201
	st.h	$a1, $a0, 96
	bltu	$a2, $a3, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
.LBB6_2:                                # %enterlevel.exit
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 262
	bge	$a1, $a0, .LBB6_6
# %bb.3:                                # %enterlevel.exit
	addi.d	$a0, $a0, -263
	ori	$a1, $zero, 23
	bltu	$a1, $a0, .LBB6_24
# %bb.4:                                # %enterlevel.exit
	ori	$s2, $zero, 1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI6_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB6_5:
	addi.w	$a0, $zero, -1
	st.d	$a0, $s0, 16
	ori	$a0, $zero, 3
	b	.LBB6_14
.LBB6_6:                                # %enterlevel.exit
	ori	$a1, $zero, 35
	beq	$a0, $a1, .LBB6_21
# %bb.7:                                # %enterlevel.exit
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB6_22
# %bb.8:                                # %enterlevel.exit
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB6_24
# %bb.9:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(constructor)
	jirl	$ra, $ra, 0
	b	.LBB6_25
.LBB6_10:
	addi.w	$a0, $zero, -1
	st.d	$a0, $s0, 16
	ori	$a0, $zero, 2
	b	.LBB6_14
.LBB6_11:
	addi.w	$a0, $zero, -1
	st.d	$a0, $s0, 16
	ori	$a0, $zero, 5
	st.w	$a0, $s0, 0
	st.w	$zero, $s0, 8
	fld.d	$fa0, $fp, 24
	fst.d	$fa0, $s0, 8
	b	.LBB6_20
.LBB6_12:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(body)
	jirl	$ra, $ra, 0
	b	.LBB6_25
.LBB6_13:
	addi.w	$a0, $zero, -1
	st.d	$a0, $s0, 16
	ori	$a0, $zero, 1
.LBB6_14:
	st.w	$a0, $s0, 0
	st.w	$zero, $s0, 8
	b	.LBB6_20
.LBB6_15:
	ld.d	$a1, $fp, 24
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(luaK_stringK)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $s0, 16
	ori	$a1, $zero, 4
	b	.LBB6_19
.LBB6_16:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.bu	$a2, $a1, 114
	bnez	$a2, .LBB6_18
# %bb.17:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$a1, $s2, 0
	ld.bu	$a2, $a1, 114
.LBB6_18:
	andi	$a2, $a2, 251
	st.b	$a2, $a1, 114
	ori	$a1, $zero, 37
	ori	$a3, $zero, 1
	move	$a2, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $s0, 16
	ori	$a1, $zero, 14
.LBB6_19:
	st.w	$a1, $s0, 0
	st.w	$a0, $s0, 8
.LBB6_20:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	b	.LBB6_25
.LBB6_21:
	ori	$s2, $zero, 2
	b	.LBB6_23
.LBB6_22:
	move	$s2, $zero
.LBB6_23:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaK_prefix)
	jirl	$ra, $ra, 0
	b	.LBB6_25
.LBB6_24:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(primaryexp)
	jirl	$ra, $ra, 0
.LBB6_25:                               # %simpleexp.exit
	ld.w	$a1, $fp, 16
	addi.d	$a2, $a1, -37
	ori	$a3, $zero, 57
	ori	$a0, $zero, 15
	bltu	$a3, $a2, .LBB6_28
# %bb.26:                               # %simpleexp.exit
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI6_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI6_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	move	$s2, $zero
	jr	$a1
.LBB6_27:
	ori	$s2, $zero, 4
	b	.LBB6_43
.LBB6_28:                               # %simpleexp.exit
	addi.d	$a1, $a1, -257
	ori	$a2, $zero, 26
	bltu	$a2, $a1, .LBB6_47
# %bb.29:                               # %simpleexp.exit
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI6_2)
	addi.d	$a2, $a2, %pc_lo12(.LJTI6_2)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB6_30:
	ori	$s2, $zero, 13
	b	.LBB6_43
.LBB6_31:
	ori	$s2, $zero, 11
	b	.LBB6_43
.LBB6_32:
	ori	$s2, $zero, 3
	b	.LBB6_43
.LBB6_33:
	ori	$s2, $zero, 9
	b	.LBB6_43
.LBB6_34:
	ori	$s2, $zero, 1
	b	.LBB6_43
.LBB6_35:
	ori	$s2, $zero, 2
	b	.LBB6_43
.LBB6_36:
	ori	$s2, $zero, 5
	b	.LBB6_43
.LBB6_37:
	ori	$s2, $zero, 6
	b	.LBB6_43
.LBB6_38:
	ori	$s2, $zero, 10
	b	.LBB6_43
.LBB6_39:
	ori	$s2, $zero, 14
	b	.LBB6_43
.LBB6_40:
	ori	$s2, $zero, 8
	b	.LBB6_43
.LBB6_41:
	ori	$s2, $zero, 7
	b	.LBB6_43
.LBB6_42:
	ori	$s2, $zero, 12
.LBB6_43:                               # %.lr.ph
	andi	$s3, $s1, 255
	pcalau12i	$a0, %pc_hi20(priority)
	addi.d	$s4, $a0, %pc_lo12(priority)
	.p2align	4, , 16
.LBB6_44:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s2, 1
	ldx.bu	$a0, $s4, $a0
	bgeu	$s3, $a0, .LBB6_46
# %bb.45:                               #   in Loop: Header=BB6_44 Depth=1
	alsl.d	$s1, $s2, $s4, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaK_infix)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s1, 1
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	move	$s1, $a0
	addi.d	$a3, $sp, 16
	move	$a0, $a1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaK_posfix)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	move	$s2, $s1
	bne	$s1, $a0, .LBB6_44
	b	.LBB6_47
.LBB6_46:
	move	$a0, $s2
.LBB6_47:                               # %.critedge
	ld.d	$a1, $fp, 56
	ld.h	$a2, $a1, 96
	addi.d	$a2, $a2, -1
	st.h	$a2, $a1, 96
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end6:
	.size	subexpr, .Lfunc_end6-subexpr
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_5-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_12-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_13-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_10-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_16-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_11-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
.LJTI6_1:
	.word	.LBB6_27-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_35-.LJTI6_1
	.word	.LBB6_43-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_34-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_32-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_33-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_31-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_47-.LJTI6_1
	.word	.LBB6_36-.LJTI6_1
.LJTI6_2:
	.word	.LBB6_30-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_39-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_37-.LJTI6_2
	.word	.LBB6_47-.LJTI6_2
	.word	.LBB6_40-.LJTI6_2
	.word	.LBB6_42-.LJTI6_2
	.word	.LBB6_38-.LJTI6_2
	.word	.LBB6_41-.LJTI6_2
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function constructor
	.type	constructor,@function
constructor:                            # @constructor
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
	move	$s1, $a0
	ld.d	$fp, $a0, 48
	ld.w	$a0, $a0, 4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $a1
	ori	$a1, $zero, 10
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 96
	st.d	$zero, $sp, 88
	st.d	$s3, $sp, 80
	addi.w	$a1, $zero, -1
	st.d	$a1, $s3, 16
	ori	$a2, $zero, 11
	st.w	$a2, $s3, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$a0, $s3, 8
	ld.d	$a0, $s1, 48
	st.d	$a1, $sp, 72
	st.w	$zero, $sp, 56
	st.w	$zero, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 16
	ori	$a1, $zero, 123
	beq	$a0, $a1, .LBB7_2
# %bb.1:
	ld.d	$s3, $s1, 56
	ori	$a1, $zero, 123
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %checknext.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 16
	ori	$s7, $zero, 125
	beq	$a0, $s7, .LBB7_20
# %bb.3:                                # %.lr.ph
	ori	$s8, $zero, 91
	ori	$s2, $zero, 59
	ori	$s4, $zero, 44
	ori	$s0, $zero, 285
	lu12i.w	$a1, 524287
	ori	$s6, $a1, 4094
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ori	$s5, $a1, 4093
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$s3, $zero, 50
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %.critedge.backedge
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 16
	beq	$a0, $s7, .LBB7_20
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $sp, 56
	beqz	$a1, .LBB7_9
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 96
	st.w	$zero, $sp, 56
	bne	$a0, $s3, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a0, $sp, 80
	ld.w	$a1, $a0, 8
	ld.w	$a2, $sp, 92
	ori	$a3, $zero, 50
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_setlist)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 96
.LBB7_8:                                # %closelistfield.exitthread-pre-split
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a0, $s1, 16
.LBB7_9:                                # %closelistfield.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	beq	$a0, $s8, .LBB7_12
# %bb.10:                               # %closelistfield.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	bne	$a0, $s0, .LBB7_13
# %bb.11:                               #   in Loop: Header=BB7_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_lookahead)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	ori	$a1, $zero, 61
	bne	$a0, $a1, .LBB7_13
.LBB7_12:                               #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a1, $sp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(recfield)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 16
	bne	$a0, $s2, .LBB7_19
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_13:                               #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a1, $sp, 56
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	blt	$a0, $s6, .LBB7_18
# %bb.14:                               #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s4, $s1, 48
	ld.d	$a0, $s4, 0
	ld.w	$a2, $a0, 96
	ld.d	$a0, $s4, 32
	beqz	$a2, .LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $s5
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	b	.LBB7_17
.LBB7_16:                               #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
.LBB7_17:                               # %errorlimit.exit35
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$a1, $a0
	ld.d	$a0, $s4, 24
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	ori	$s4, $zero, 44
.LBB7_18:                               # %listfield.exit32
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a1, $sp, 96
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 92
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 96
	ld.w	$a0, $s1, 16
	beq	$a0, $s2, .LBB7_4
.LBB7_19:                               #   in Loop: Header=BB7_5 Depth=1
	beq	$a0, $s4, .LBB7_4
.LBB7_20:                               # %testnext.exit34.thread
	ori	$a1, $zero, 125
	ori	$a2, $zero, 123
	move	$a0, $s1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 96
	beqz	$a3, .LBB7_26
# %bb.21:
	ld.w	$a0, $sp, 56
	addi.d	$a1, $a0, -13
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB7_23
# %bb.22:
	addi.w	$s1, $zero, -1
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaK_setreturns)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	ld.w	$a1, $a0, 8
	ld.w	$a2, $sp, 92
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(luaK_setlist)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 92
	b	.LBB7_26
.LBB7_23:
	beqz	$a0, .LBB7_25
# %bb.24:
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 96
.LBB7_25:
	ld.d	$a0, $sp, 80
	ld.w	$a1, $a0, 8
	ld.w	$a2, $sp, 92
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_setlist)
	jirl	$ra, $ra, 0
.LBB7_26:                               # %lastlistfield.exit
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slli.d	$s0, $a1, 2
	ldx.wu	$s1, $a0, $s0
	ld.w	$a0, $sp, 92
	pcaddu18i	$ra, %call36(luaO_int2fb)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 24
	bstrins.d	$s1, $a0, 63, 23
	stx.w	$s1, $a1, $s0
	lu12i.w	$a1, -2045
	ld.w	$a0, $sp, 88
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	and	$s1, $s1, $a1
	pcaddu18i	$ra, %call36(luaO_int2fb)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 24
	bstrins.d	$s1, $a0, 22, 14
	stx.w	$s1, $a1, $s0
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
.Lfunc_end7:
	.size	constructor, .Lfunc_end7-constructor
                                        # -- End function
	.p2align	5                               # -- Begin function body
	.type	body,@function
body:                                   # @body
# %bb.0:
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(open_func)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.w	$a1, $s0, 16
	ori	$a2, $zero, 40
	st.w	$s1, $a0, 96
	beq	$a1, $a2, .LBB8_2
# %bb.1:
	ld.d	$s3, $s0, 56
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB8_2:                                # %checknext.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB8_4
# %bb.3:                                # %adjustlocalvars.exit.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	ld.b	$a1, $a0, 74
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a2, 48
	andi	$a3, $a1, 255
	alsl.d	$a3, $a3, $a0, 1
	ld.hu	$a3, $a3, 194
	ld.w	$a4, $a0, 48
	st.b	$a1, $a0, 74
	alsl.d	$a0, $a3, $a2, 4
	st.w	$a4, $a0, 8
.LBB8_4:                                # %adjustlocalvars.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(parlist)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	ori	$a1, $zero, 41
	beq	$a0, $a1, .LBB8_6
# %bb.5:
	ld.d	$s2, $s0, 56
	ori	$a1, $zero, 41
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB8_6:                                # %checknext.exit16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 4
	ld.d	$a1, $sp, 8
	st.w	$a0, $a1, 100
	ori	$a1, $zero, 262
	ori	$a2, $zero, 265
	move	$a0, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close_func)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(pushclosure)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.Lfunc_end8:
	.size	body, .Lfunc_end8-body
                                        # -- End function
	.p2align	5                               # -- Begin function primaryexp
	.type	primaryexp,@function
primaryexp:                             # @primaryexp
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
	ld.w	$a0, $a0, 16
	ld.d	$s0, $fp, 48
	ori	$a2, $zero, 285
	move	$s1, $a1
	beq	$a0, $a2, .LBB9_3
# %bb.1:
	ori	$a1, $zero, 40
	bne	$a0, $a1, .LBB9_4
# %bb.2:
	ld.w	$s2, $fp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 41
	ori	$a2, $zero, 40
	move	$a0, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_dischargevars)
	jirl	$ra, $ra, 0
	b	.LBB9_5
.LBB9_3:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(singlevar)
	jirl	$ra, $ra, 0
	b	.LBB9_5
.LBB9_4:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %prefixexp.exit
	ori	$s4, $zero, 90
	ori	$s5, $zero, 40
	addi.w	$s8, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	ori	$s7, $zero, 91
	ori	$s6, $zero, 123
	b	.LBB9_8
	.p2align	4, , 16
.LBB9_6:                                #   in Loop: Header=BB9_8 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
.LBB9_7:                                #   in Loop: Header=BB9_8 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(funcargs)
	jirl	$ra, $ra, 0
.LBB9_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 16
	blt	$s4, $a0, .LBB9_15
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=1
	beq	$a0, $s5, .LBB9_6
# %bb.10:                               #   in Loop: Header=BB9_8 Depth=1
	ori	$a1, $zero, 46
	beq	$a0, $a1, .LBB9_21
# %bb.11:                               #   in Loop: Header=BB9_8 Depth=1
	ori	$a1, $zero, 58
	bne	$a0, $a1, .LBB9_22
# %bb.12:                               #   in Loop: Header=BB9_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_8 Depth=1
	ld.d	$s3, $fp, 56
	ori	$a1, $zero, 285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %checkname.exit
                                        #   in Loop: Header=BB9_8 Depth=1
	ld.d	$s3, $fp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaK_stringK)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 32
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 16
	st.w	$a0, $sp, 24
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_self)
	jirl	$ra, $ra, 0
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_15:                               #   in Loop: Header=BB9_8 Depth=1
	beq	$a0, $s7, .LBB9_18
# %bb.16:                               #   in Loop: Header=BB9_8 Depth=1
	beq	$a0, $s6, .LBB9_6
# %bb.17:                               #   in Loop: Header=BB9_8 Depth=1
	ori	$a1, $zero, 286
	beq	$a0, $a1, .LBB9_6
	b	.LBB9_22
.LBB9_18:                               #   in Loop: Header=BB9_8 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_exp2anyreg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(luaK_exp2val)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ori	$a1, $zero, 93
	beq	$a0, $a1, .LBB9_20
# %bb.19:                               #   in Loop: Header=BB9_8 Depth=1
	ld.d	$s3, $fp, 56
	ori	$a1, $zero, 93
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB9_20:                               # %checknext.exit
                                        #   in Loop: Header=BB9_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_indexed)
	jirl	$ra, $ra, 0
	b	.LBB9_8
.LBB9_21:                               #   in Loop: Header=BB9_8 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(field)
	jirl	$ra, $ra, 0
	b	.LBB9_8
.LBB9_22:
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
.Lfunc_end9:
	.size	primaryexp, .Lfunc_end9-primaryexp
                                        # -- End function
	.p2align	5                               # -- Begin function recfield
	.type	recfield,@function
recfield:                               # @recfield
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$fp, $a0, 48
	ld.w	$a0, $a0, 16
	ld.w	$s3, $fp, 60
	ori	$a2, $zero, 285
	move	$s1, $a1
	bne	$a0, $a2, .LBB10_4
# %bb.1:
	ld.w	$a0, $s1, 32
	lu12i.w	$a5, 524287
	ori	$a1, $a5, 4094
	blt	$a0, $a1, .LBB10_10
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.w	$a2, $a0, 96
	ld.d	$a0, $fp, 32
	beqz	$a2, .LBB10_7
# %bb.3:
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a3, %pc_hi20(.L.str.3)
	addi.d	$a4, $a3, %pc_lo12(.L.str.3)
	ori	$a3, $a5, 4093
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	b	.LBB10_8
.LBB10_4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(luaK_exp2val)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	ori	$a1, $zero, 93
	beq	$a0, $a1, .LBB10_6
# %bb.5:
	ld.d	$s2, $s0, 56
	ori	$a1, $zero, 93
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB10_6:                               # %checknext.exit17
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	b	.LBB10_11
.LBB10_7:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a3, $a2, %pc_lo12(.L.str.3)
	ori	$a2, $a5, 4093
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
.LBB10_8:
	move	$a1, $a0
	ld.d	$a0, $fp, 24
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB10_10
# %bb.9:
	ld.d	$s2, $s0, 56
	ori	$a1, $zero, 285
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB10_10:                              # %checkname.exit
	ld.d	$s2, $s0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaK_stringK)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 56
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 40
	st.w	$a0, $sp, 48
.LBB10_11:
	ld.w	$a0, $s1, 32
	ld.w	$a1, $s0, 16
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 61
	st.w	$a0, $s1, 32
	beq	$a1, $a2, .LBB10_13
# %bb.12:
	ld.d	$s2, $s0, 56
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB10_13:                              # %checknext.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_exp2RK)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ld.w	$s0, $a0, 8
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_exp2RK)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	ori	$a1, $zero, 9
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
	st.w	$s3, $fp, 60
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end10:
	.size	recfield, .Lfunc_end10-recfield
                                        # -- End function
	.p2align	5                               # -- Begin function new_localvar
	.type	new_localvar,@function
new_localvar:                           # @new_localvar
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
	move	$s0, $a0
	ld.d	$s3, $a0, 48
	ld.bu	$a0, $s3, 74
	move	$fp, $a2
	add.w	$a0, $a2, $a0
	ori	$a2, $zero, 200
	move	$s1, $a1
	move	$s4, $s3
	blt	$a0, $a2, .LBB11_5
# %bb.1:
	ld.d	$a0, $s3, 0
	ld.w	$a2, $a0, 96
	ld.d	$a0, $s3, 32
	beqz	$a2, .LBB11_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a3, %pc_hi20(.L.str.7)
	addi.d	$a4, $a3, %pc_lo12(.L.str.7)
	ori	$a3, $zero, 200
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	b	.LBB11_4
.LBB11_3:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a3, $a2, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 200
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %errorlimit.exit
	move	$a1, $a0
	ld.d	$a0, $s3, 24
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s0, 48
.LBB11_5:
	ld.d	$s2, $s4, 0
	ld.w	$s5, $s2, 92
	ld.h	$a0, $s4, 72
	bge	$a0, $s5, .LBB11_7
# %bb.6:                                # %..._crit_edge_crit_edge.i_crit_edge
	ld.d	$a0, $s2, 48
	b	.LBB11_15
.LBB11_7:
	ld.d	$a0, $s0, 56
	ld.d	$a1, $s2, 48
	addi.d	$a2, $s2, 92
	pcalau12i	$a3, %pc_hi20(.L.str.8)
	addi.d	$a5, $a3, %pc_lo12(.L.str.8)
	lu12i.w	$a3, 7
	ori	$a4, $a3, 4095
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(luaM_growaux_)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 92
	st.d	$a0, $s2, 48
	bge	$s5, $a1, .LBB11_15
# %bb.8:                                # %.lr.ph.i
	sub.d	$a2, $a1, $s5
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB11_10
# %bb.9:
	move	$a3, $s5
	b	.LBB11_13
.LBB11_10:                              # %vector.ph
	move	$a4, $a2
	bstrins.d	$a4, $zero, 0, 0
	add.d	$a3, $a4, $s5
	alsl.d	$a5, $s5, $a0, 4
	addi.d	$a5, $a5, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB11_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a5, -16
	st.d	$zero, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_11
# %bb.12:                               # %middle.block
	beq	$a2, $a4, .LBB11_15
.LBB11_13:                              # %scalar.ph.preheader
	slli.d	$a2, $a3, 4
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB11_14:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	stx.d	$zero, $a0, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB11_14
.LBB11_15:                              # %._crit_edge.i
	ld.h	$a1, $s4, 72
	slli.d	$a2, $a1, 4
	stx.d	$s1, $a0, $a2
	ld.bu	$a0, $s1, 9
	andi	$a2, $a0, 3
	bstrpick.d	$a0, $a1, 15, 0
	beqz	$a2, .LBB11_18
# %bb.16:
	ld.bu	$a1, $s2, 9
	andi	$a1, $a1, 4
	beqz	$a1, .LBB11_18
# %bb.17:
	ld.d	$a0, $s0, 56
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaC_barrierf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s4, 72
.LBB11_18:                              # %registerlocalvar.exit
	ld.bu	$a1, $s3, 74
	addi.d	$a2, $a0, 1
	st.h	$a2, $s4, 72
	add.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $s3, 1
	st.h	$a0, $a1, 196
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
.Lfunc_end11:
	.size	new_localvar, .Lfunc_end11-new_localvar
                                        # -- End function
	.p2align	5                               # -- Begin function parlist
	.type	parlist,@function
parlist:                                # @parlist
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$fp, $a0, 48
	ld.d	$s4, $fp, 0
	ld.w	$a1, $a0, 16
	move	$a0, $zero
	ori	$a2, $zero, 41
	st.b	$zero, $s4, 114
	beq	$a1, $a2, .LBB12_17
# %bb.1:                                # %.preheader
	ori	$s5, $zero, 285
	ori	$s6, $zero, 44
	ori	$s7, $zero, 279
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s2, $a0, %pc_lo12(.L.str.10)
	move	$s0, $zero
	beq	$a1, $s5, .LBB12_4
	.p2align	4, , 16
.LBB12_2:
	move	$a0, $s1
	beq	$a1, $s7, .LBB12_8
# %bb.3:
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 114
	beqz	$a0, .LBB12_5
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_4:                               # %str_checkname.exit
	ld.d	$s3, $s1, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s0, 1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	move	$s0, $s8
	ld.bu	$a0, $s4, 114
	bnez	$a0, .LBB12_9
.LBB12_5:
	ld.w	$a0, $s1, 16
	bne	$a0, $s6, .LBB12_7
# %bb.6:                                # %thread-pre-split
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 16
	bne	$a1, $s5, .LBB12_2
	b	.LBB12_4
.LBB12_7:
	move	$a0, $zero
	b	.LBB12_9
.LBB12_8:                               # %.thread
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_newstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$s2, $s0, 1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(new_localvar)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	st.b	$a0, $s4, 114
	move	$s0, $s2
.LBB12_9:                               # %.critedge
	ld.d	$a3, $s1, 48
	ld.b	$a1, $a3, 74
	add.d	$a4, $a1, $s0
	st.b	$a4, $a3, 74
	beqz	$s0, .LBB12_17
# %bb.10:                               # %.lr.ph.i
	ld.d	$a2, $a3, 0
	ld.w	$a1, $a3, 48
	ld.d	$a2, $a2, 48
	andi	$a4, $a4, 255
	ori	$a6, $zero, 4
	slli.d	$a5, $a4, 1
	bgeu	$s0, $a6, .LBB12_12
# %bb.11:
	move	$a4, $s0
	b	.LBB12_15
.LBB12_12:                              # %vector.ph
	move	$a6, $s0
	bstrins.d	$a6, $zero, 1, 0
	andi	$a4, $s0, 3
	slli.d	$a7, $s0, 1
	sub.d	$a7, $a5, $a7
	add.d	$a7, $a7, $a3
	addi.d	$a7, $a7, 196
	lu12i.w	$t0, 255
	ori	$t0, $t0, 4080
	move	$t1, $a6
	.p2align	4, , 16
.LBB12_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a7, 0
	bstrpick.d	$t3, $t2, 15, 0
	alsl.d	$t3, $t3, $a2, 4
	srli.d	$t4, $t2, 12
	and	$t4, $t4, $t0
	add.d	$t4, $a2, $t4
	srli.d	$t5, $t2, 28
	and	$t5, $t5, $t0
	add.d	$t5, $a2, $t5
	srli.d	$t2, $t2, 44
	and	$t2, $t2, $t0
	add.d	$t2, $a2, $t2
	st.w	$a1, $t3, 8
	st.w	$a1, $t4, 8
	st.w	$a1, $t5, 8
	st.w	$a1, $t2, 8
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB12_13
# %bb.14:                               # %middle.block
	beq	$a6, $s0, .LBB12_17
.LBB12_15:                              # %scalar.ph.preheader
	slli.d	$a6, $a4, 1
	sub.d	$a5, $a5, $a6
	add.d	$a3, $a5, $a3
	addi.d	$a3, $a3, 196
	.p2align	4, , 16
.LBB12_16:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a3, 0
	alsl.d	$a5, $a5, $a2, 4
	st.w	$a1, $a5, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	bnez	$a4, .LBB12_16
.LBB12_17:                              # %adjustlocalvars.exit
	ld.bu	$a1, $fp, 74
	andi	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	st.b	$a0, $s4, 113
	move	$a0, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(luaK_reserveregs)
	jr	$t8
.Lfunc_end12:
	.size	parlist, .Lfunc_end12-parlist
                                        # -- End function
	.p2align	5                               # -- Begin function pushclosure
	.type	pushclosure,@function
pushclosure:                            # @pushclosure
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
	move	$s3, $a0
	ld.d	$fp, $a0, 48
	ld.d	$s2, $fp, 0
	ld.w	$s4, $s2, 88
	ld.w	$a0, $fp, 68
	move	$s1, $a2
	move	$s0, $a1
	blt	$a0, $s4, .LBB13_3
# %bb.1:
	ld.d	$a0, $s3, 56
	ld.d	$a1, $s2, 32
	addi.d	$a2, $s2, 88
	pcalau12i	$a3, %pc_hi20(.L.str.11)
	addi.d	$a5, $a3, %pc_lo12(.L.str.11)
	lu12i.w	$a3, 63
	ori	$a4, $a3, 4095
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(luaM_growaux_)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 88
	st.d	$a0, $s2, 32
	bge	$s4, $a1, .LBB13_3
# %bb.2:                                # %.lr.ph
	ld.d	$s5, $s2, 32
	alsl.d	$a0, $s4, $s5, 3
	sub.d	$a1, $s4, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB13_4
.LBB13_3:                               # %.._crit_edge_crit_edge
	ld.d	$s5, $s2, 32
.LBB13_4:                               # %._crit_edge
	ld.w	$a3, $fp, 68
	ld.d	$a2, $s0, 0
	addi.d	$a0, $a3, 1
	st.w	$a0, $fp, 68
	slli.d	$a0, $a3, 3
	stx.d	$a2, $s5, $a0
	ld.bu	$a0, $a2, 9
	andi	$a0, $a0, 3
	beqz	$a0, .LBB13_7
# %bb.5:
	ld.bu	$a0, $s2, 9
	andi	$a0, $a0, 4
	beqz	$a0, .LBB13_7
# %bb.6:
	ld.d	$a0, $s3, 56
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaC_barrierf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 68
	addi.w	$a3, $a0, -1
.LBB13_7:
	ori	$a1, $zero, 36
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaK_codeABx)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $s1, 16
	st.w	$a0, $s1, 8
	ld.d	$a0, $s0, 0
	ld.bu	$a0, $a0, 112
	ori	$a1, $zero, 11
	st.w	$a1, $s1, 0
	beqz	$a0, .LBB13_10
# %bb.8:                                # %.lr.ph38
	move	$s1, $zero
	addi.d	$s2, $s0, 76
	.p2align	4, , 16
.LBB13_9:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, -1
	ld.bu	$a3, $s2, 0
	addi.d	$a0, $a0, -6
	sltu	$a0, $zero, $a0
	slli.d	$a1, $a0, 2
	move	$a0, $fp
	move	$a2, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.bu	$a0, $a0, 112
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 2
	bltu	$s1, $a0, .LBB13_9
.LBB13_10:                              # %._crit_edge39
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
.Lfunc_end13:
	.size	pushclosure, .Lfunc_end13-pushclosure
                                        # -- End function
	.p2align	5                               # -- Begin function field
	.type	field,@function
field:                                  # @field
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$fp, $a0, 48
	move	$s0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_exp2anyreg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 16
	ori	$a1, $zero, 285
	beq	$a0, $a1, .LBB14_2
# %bb.1:
	ld.d	$s2, $s1, 56
	ori	$a1, $zero, 285
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB14_2:                               # %checkname.exit
	ld.d	$s2, $s1, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 48
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaK_stringK)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 32
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 16
	st.w	$a0, $sp, 24
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaK_indexed)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	field, .Lfunc_end14-field
                                        # -- End function
	.p2align	5                               # -- Begin function funcargs
	.type	funcargs,@function
funcargs:                               # @funcargs
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$fp, $a0, 48
	ld.w	$a0, $a0, 16
	ld.w	$s0, $s2, 4
	ori	$a2, $zero, 286
	move	$s1, $a1
	beq	$a0, $a2, .LBB15_8
# %bb.1:
	ori	$a1, $zero, 123
	beq	$a0, $a1, .LBB15_7
# %bb.2:
	ori	$a1, $zero, 40
	bne	$a0, $a1, .LBB15_9
# %bb.3:
	ld.w	$a0, $s2, 8
	beq	$s0, $a0, .LBB15_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB15_5:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB15_10
# %bb.6:
	st.w	$zero, $sp, 8
	b	.LBB15_13
.LBB15_7:
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(constructor)
	jirl	$ra, $ra, 0
	b	.LBB15_14
.LBB15_8:                               # %.thread36
	ld.d	$a1, $s2, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_stringK)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 24
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 8
	st.w	$a0, $sp, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s1, 8
	b	.LBB15_17
.LBB15_9:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $s2
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(luaX_syntaxerror)
	jr	$t8
.LBB15_10:
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	ori	$s3, $zero, 44
	bne	$a0, $s3, .LBB15_12
	.p2align	4, , 16
.LBB15_11:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 48
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 16
	beq	$a0, $s3, .LBB15_11
.LBB15_12:                              # %explist1.exit
	addi.w	$a2, $zero, -1
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_setreturns)
	jirl	$ra, $ra, 0
.LBB15_13:
	ori	$a1, $zero, 41
	ori	$a2, $zero, 40
	move	$a0, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_match)
	jirl	$ra, $ra, 0
.LBB15_14:
	ld.w	$a0, $sp, 8
	ld.w	$s2, $s1, 8
	addi.w	$a1, $a0, -13
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB15_16
# %bb.15:
	move	$a3, $zero
	b	.LBB15_19
.LBB15_16:
	beqz	$a0, .LBB15_18
.LBB15_17:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
.LBB15_18:
	ld.w	$a0, $fp, 60
	sub.w	$a3, $a0, $s2
.LBB15_19:
	ori	$a1, $zero, 28
	ori	$a4, $zero, 2
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $s1, 16
	ori	$a1, $zero, 13
	st.w	$a1, $s1, 0
	st.w	$a0, $s1, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaK_fixline)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 1
	st.w	$a0, $fp, 60
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end15:
	.size	funcargs, .Lfunc_end15-funcargs
                                        # -- End function
	.p2align	5                               # -- Begin function singlevar
	.type	singlevar,@function
singlevar:                              # @singlevar
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 16
	ori	$a2, $zero, 285
	move	$fp, $a1
	beq	$a0, $a2, .LBB16_2
# %bb.1:
	ld.d	$s1, $s0, 56
	ori	$a1, $zero, 285
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %str_checkname.exit
	ld.d	$s1, $s0, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 48
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(singlevaraux)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB16_4
# %bb.3:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_stringK)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 8
.LBB16_4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	singlevar, .Lfunc_end16-singlevar
                                        # -- End function
	.p2align	5                               # -- Begin function singlevaraux
	.type	singlevaraux,@function
singlevaraux:                           # @singlevaraux
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	beqz	$a0, .LBB17_9
# %bb.1:
	move	$s0, $a0
	ld.bu	$a4, $a0, 74
	slli.d	$a0, $a4, 1
	addi.d	$a0, $a0, 194
	move	$a2, $a4
	.p2align	4, , 16
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	blez	$a2, .LBB17_10
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	ld.d	$a5, $s0, 0
	ldx.hu	$a6, $s0, $a0
	ld.d	$a5, $a5, 48
	slli.d	$a6, $a6, 4
	ldx.d	$a5, $a5, $a6
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -2
	bne	$a1, $a5, .LBB17_2
# %bb.4:                                # %searchvar.exit
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 6
	st.w	$a0, $fp, 0
	st.w	$a4, $fp, 8
	bnez	$a3, .LBB17_31
# %bb.5:
	addi.d	$a1, $s0, 40
	.p2align	4, , 16
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB17_31
# %bb.7:                                #   in Loop: Header=BB17_6 Depth=1
	ld.bu	$a3, $a1, 12
	bltu	$a2, $a3, .LBB17_6
# %bb.8:                                # %.critedge.i
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 13
	b	.LBB17_31
.LBB17_9:
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 0
	ori	$a1, $zero, 255
	st.w	$a1, $fp, 8
	b	.LBB17_31
.LBB17_10:                              # %searchvar.exit.thread
	ld.d	$a0, $s0, 16
	move	$s3, $a1
	move	$a2, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(singlevaraux)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 8
	beq	$a1, $a0, .LBB17_31
# %bb.11:
	ld.d	$s1, $s0, 0
	ld.bu	$a1, $s1, 112
	ld.w	$s4, $s1, 72
	beqz	$a1, .LBB17_19
# %bb.12:                               # %.lr.ph.i
	ld.w	$a2, $fp, 0
	move	$a0, $zero
	addi.d	$a3, $s0, 76
	move	$a4, $a1
	b	.LBB17_14
	.p2align	4, , 16
.LBB17_13:                              #   in Loop: Header=BB17_14 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 2
	beqz	$a4, .LBB17_16
.LBB17_14:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a3, -1
	bne	$a2, $a5, .LBB17_13
# %bb.15:                               #   in Loop: Header=BB17_14 Depth=1
	ld.bu	$a5, $a3, 0
	ld.w	$a6, $fp, 8
	bne	$a6, $a5, .LBB17_13
	b	.LBB17_30
.LBB17_16:                              # %._crit_edge.i
	ori	$a0, $zero, 60
	move	$a2, $s4
	bltu	$a1, $a0, .LBB17_20
# %bb.17:
	ld.w	$a2, $s1, 96
	ld.d	$a0, $s0, 32
	beqz	$a2, .LBB17_22
# %bb.18:
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a3, %pc_hi20(.L.str.13)
	addi.d	$a4, $a3, %pc_lo12(.L.str.13)
	ori	$a3, $zero, 60
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	b	.LBB17_23
.LBB17_19:
	move	$a1, $zero
	move	$a2, $s4
.LBB17_20:                              # %._crit_edge.thread.i
	bge	$a1, $a2, .LBB17_24
.LBB17_21:                              # %._crit_edge.thread.i._crit_edge
	ld.d	$s2, $s1, 56
	move	$a1, $s3
	blt	$s4, $a2, .LBB17_25
	b	.LBB17_26
.LBB17_22:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a3, $a2, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 60
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
.LBB17_23:                              # %errorlimit.exit.i
	move	$a1, $a0
	ld.d	$a0, $s0, 24
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 112
	ld.w	$a2, $s1, 72
	blt	$a1, $a2, .LBB17_21
.LBB17_24:
	ld.d	$a0, $s0, 32
	ld.d	$a1, $s1, 56
	addi.d	$a2, $s1, 72
	pcalau12i	$a3, %pc_hi20(.L.str.14)
	addi.d	$a5, $a3, %pc_lo12(.L.str.14)
	lu12i.w	$a3, 524287
	ori	$a4, $a3, 4093
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(luaM_growaux_)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 72
	move	$s2, $a0
	st.d	$a0, $s1, 56
	move	$a1, $s3
	bge	$s4, $a2, .LBB17_26
.LBB17_25:                              # %.lr.ph51.i
	alsl.d	$a0, $s4, $s2, 3
	sub.d	$a1, $s4, $a2
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $s3
.LBB17_26:                              # %._crit_edge52.i
	ld.bu	$a0, $s1, 112
	slli.d	$a2, $a0, 3
	stx.d	$a1, $s2, $a2
	ld.bu	$a2, $a1, 9
	andi	$a2, $a2, 3
	beqz	$a2, .LBB17_29
# %bb.27:
	ld.bu	$a2, $s1, 9
	andi	$a2, $a2, 4
	beqz	$a2, .LBB17_29
# %bb.28:
	ld.d	$a0, $s0, 32
	move	$a2, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaC_barrierf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 112
.LBB17_29:
	ld.b	$a1, $fp, 0
	alsl.d	$a2, $a0, $s0, 1
	st.b	$a1, $a2, 75
	ld.b	$a1, $fp, 8
	st.b	$a1, $a2, 76
	addi.d	$a1, $a0, 1
	st.b	$a1, $s1, 112
.LBB17_30:                              # %indexupvalue.exit
	st.w	$a0, $fp, 8
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 0
.LBB17_31:                              # %markupval.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end17:
	.size	singlevaraux, .Lfunc_end17-singlevaraux
                                        # -- End function
	.p2align	5                               # -- Begin function forbody
	.type	forbody,@function
forbody:                                # @forbody
# %bb.0:                                # %adjustlocalvars.exit
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
	move	$s5, $a0
	ld.d	$fp, $a0, 48
	ld.b	$a0, $fp, 74
	ld.d	$a5, $fp, 0
	move	$s3, $a4
	move	$s2, $a3
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$a0, $a0, 3
	ld.d	$a1, $a5, 48
	andi	$a2, $a0, 255
	alsl.d	$a2, $a2, $fp, 1
	ld.hu	$a3, $a2, 190
	ld.w	$a4, $fp, 48
	st.b	$a0, $fp, 74
	ld.hu	$a0, $a2, 192
	alsl.d	$a3, $a3, $a1, 4
	st.w	$a4, $a3, 8
	ld.hu	$a2, $a2, 194
	alsl.d	$a0, $a0, $a1, 4
	ld.w	$a3, $s5, 16
	st.w	$a4, $a0, 8
	alsl.d	$a0, $a2, $a1, 4
	ori	$a1, $zero, 259
	st.w	$a4, $a0, 8
	beq	$a3, $a1, .LBB18_2
# %bb.1:
	ld.d	$s4, $s5, 56
	ori	$a1, $zero, 259
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB18_2:                               # %checknext.exit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	lu12i.w	$s7, 31
	beqz	$s3, .LBB18_4
# %bb.3:
	ori	$a3, $s7, 4094
	ori	$a1, $zero, 32
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaK_codeABx)
	jirl	$ra, $ra, 0
	b	.LBB18_5
.LBB18_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
.LBB18_5:
	move	$s4, $a0
	addi.w	$s8, $zero, -1
	lu32i.d	$s8, 0
	ld.b	$a0, $fp, 74
	st.w	$s8, $sp, 16
	ld.d	$a1, $s5, 48
	ld.d	$a2, $fp, 40
	st.b	$a0, $sp, 20
	st.h	$zero, $sp, 21
	ld.b	$a0, $a1, 74
	st.d	$a2, $sp, 8
	addi.d	$a2, $sp, 8
	st.d	$a2, $fp, 40
	add.d	$a3, $a0, $s2
	st.b	$a3, $a1, 74
	beqz	$s2, .LBB18_13
# %bb.6:                                # %.lr.ph.i
	ld.d	$a2, $a1, 0
	ld.w	$a0, $a1, 48
	ld.d	$a2, $a2, 48
	andi	$a3, $a3, 255
	ori	$a5, $zero, 4
	slli.d	$a4, $a3, 1
	bgeu	$s2, $a5, .LBB18_8
# %bb.7:
	move	$a3, $s2
	b	.LBB18_11
.LBB18_8:                               # %vector.ph
	move	$a5, $s2
	bstrins.d	$a5, $zero, 1, 0
	andi	$a3, $s2, 3
	slli.d	$a6, $s2, 1
	sub.d	$a6, $a4, $a6
	add.d	$a6, $a6, $a1
	addi.d	$a6, $a6, 196
	lu12i.w	$a7, 255
	ori	$a7, $a7, 4080
	move	$t0, $a5
	.p2align	4, , 16
.LBB18_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	bstrpick.d	$t2, $t1, 15, 0
	alsl.d	$t2, $t2, $a2, 4
	srli.d	$t3, $t1, 12
	and	$t3, $t3, $a7
	add.d	$t3, $a2, $t3
	srli.d	$t4, $t1, 28
	and	$t4, $t4, $a7
	add.d	$t4, $a2, $t4
	srli.d	$t1, $t1, 44
	and	$t1, $t1, $a7
	add.d	$t1, $a2, $t1
	st.w	$a0, $t2, 8
	st.w	$a0, $t3, 8
	st.w	$a0, $t4, 8
	st.w	$a0, $t1, 8
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB18_9
# %bb.10:                               # %middle.block
	beq	$a5, $s2, .LBB18_13
.LBB18_11:                              # %scalar.ph.preheader
	slli.d	$a5, $a3, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 196
	.p2align	4, , 16
.LBB18_12:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a1, 0
	alsl.d	$a4, $a4, $a2, 4
	st.w	$a0, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB18_12
.LBB18_13:                              # %adjustlocalvars.exit32
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s5, 48
	ld.b	$a0, $s6, 74
	ld.d	$a1, $s6, 40
	st.w	$s8, $sp, 32
	st.b	$a0, $sp, 36
	st.h	$zero, $sp, 37
	st.d	$a1, $sp, 24
	addi.d	$a0, $sp, 24
	st.d	$a0, $s6, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(chunk)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 24
	ld.d	$s5, $s6, 40
	ld.d	$a0, $a0, 48
	ld.d	$a1, $s5, 0
	ld.bu	$a2, $s5, 12
	ld.bu	$a7, $a0, 74
	st.d	$a1, $s6, 40
	bgeu	$a2, $a7, .LBB18_22
# %bb.14:                               # %.lr.ph.i.i39
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB18_16
# %bb.15:
	move	$a4, $a7
	b	.LBB18_19
.LBB18_16:                              # %vector.ph54
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	lu12i.w	$t0, 255
	ori	$t0, $t0, 4080
	move	$t1, $a6
	.p2align	4, , 16
.LBB18_17:                              # %vector.body57
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr0, $t2, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t2, $vr0, 0
	bstrpick.d	$t3, $t2, 15, 0
	alsl.d	$t3, $t3, $a3, 4
	srli.d	$t4, $t2, 12
	and	$t4, $t4, $t0
	add.d	$t4, $a3, $t4
	srli.d	$t5, $t2, 28
	and	$t5, $t5, $t0
	add.d	$t5, $a3, $t5
	srli.d	$t2, $t2, 44
	and	$t2, $t2, $t0
	add.d	$t2, $a3, $t2
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t5, 12
	st.w	$a1, $t2, 12
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, -8
	bnez	$t1, .LBB18_17
# %bb.18:                               # %middle.block62
	beq	$a5, $a6, .LBB18_21
.LBB18_19:                              # %scalar.ph52.preheader
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB18_20:                              # %scalar.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB18_20
.LBB18_21:                              # %._crit_edge.i.i42
	st.b	$a4, $a0, 74
.LBB18_22:                              # %removevars.exit.i37
	ld.bu	$a0, $s5, 13
	beqz	$a0, .LBB18_24
# %bb.23:
	ori	$a1, $zero, 35
	move	$a0, $s6
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB18_24:                              # %leaveblock.exit43
	ld.bu	$a0, $s6, 74
	ld.w	$a1, $s5, 8
	st.w	$a0, $s6, 60
	move	$a0, $s6
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$s5, $fp, 40
	ld.d	$a0, $a0, 48
	ld.d	$a1, $s5, 0
	ld.bu	$a2, $s5, 12
	ld.bu	$a7, $a0, 74
	st.d	$a1, $fp, 40
	bgeu	$a2, $a7, .LBB18_33
# %bb.25:                               # %.lr.ph.i.i
	ld.d	$a3, $a0, 0
	ld.w	$a1, $a0, 48
	ld.d	$a3, $a3, 48
	sub.d	$a5, $a7, $a2
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB18_27
# %bb.26:
	move	$a4, $a7
	b	.LBB18_30
.LBB18_27:                              # %vector.ph67
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	sub.d	$a4, $a7, $a6
	alsl.d	$a7, $a7, $a0, 1
	addi.d	$a7, $a7, 188
	lu12i.w	$t0, 255
	ori	$t0, $t0, 4080
	move	$t1, $a6
	.p2align	4, , 16
.LBB18_28:                              # %vector.body70
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr0, $t2, 0
	vshuf4i.h	$vr0, $vr0, 27
	vpickve2gr.d	$t2, $vr0, 0
	bstrpick.d	$t3, $t2, 15, 0
	alsl.d	$t3, $t3, $a3, 4
	srli.d	$t4, $t2, 12
	and	$t4, $t4, $t0
	add.d	$t4, $a3, $t4
	srli.d	$t5, $t2, 28
	and	$t5, $t5, $t0
	add.d	$t5, $a3, $t5
	srli.d	$t2, $t2, 44
	and	$t2, $t2, $t0
	add.d	$t2, $a3, $t2
	st.w	$a1, $t3, 12
	st.w	$a1, $t4, 12
	st.w	$a1, $t5, 12
	st.w	$a1, $t2, 12
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, -8
	bnez	$t1, .LBB18_28
# %bb.29:                               # %middle.block76
	beq	$a5, $a6, .LBB18_32
.LBB18_30:                              # %scalar.ph65.preheader
	alsl.d	$a5, $a4, $a0, 1
	addi.d	$a5, $a5, 194
	.p2align	4, , 16
.LBB18_31:                              # %scalar.ph65
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	alsl.d	$a6, $a6, $a3, 4
	st.w	$a1, $a6, 12
	addi.d	$a5, $a5, -2
	bltu	$a2, $a4, .LBB18_31
.LBB18_32:                              # %._crit_edge.i.i
	st.b	$a4, $a0, 74
.LBB18_33:                              # %removevars.exit.i
	ld.bu	$a0, $s5, 13
	beqz	$a0, .LBB18_35
# %bb.34:
	ori	$a1, $zero, 35
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
.LBB18_35:                              # %leaveblock.exit
	ld.bu	$a0, $fp, 74
	ld.w	$a1, $s5, 8
	st.w	$a0, $fp, 60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaK_patchtohere)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB18_37
# %bb.36:
	ori	$a3, $s7, 4094
	ori	$a1, $zero, 31
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaK_codeABx)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaK_fixline)
	jirl	$ra, $ra, 0
	b	.LBB18_38
.LBB18_37:
	ori	$a1, $zero, 33
	move	$a0, $fp
	move	$a2, $s1
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaK_fixline)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaK_jump)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB18_38:
	addi.w	$a2, $s4, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaK_patchlist)
	jirl	$ra, $ra, 0
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
.Lfunc_end18:
	.size	forbody, .Lfunc_end18-forbody
                                        # -- End function
	.p2align	5                               # -- Begin function assignment
	.type	assignment,@function
assignment:                             # @assignment
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
	move	$s2, $a1
	ld.w	$a1, $a1, 8
	addi.w	$a1, $a1, -6
	ori	$a3, $zero, 4
	move	$s1, $a2
	move	$s0, $a0
	bltu	$a1, $a3, .LBB19_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB19_2:
	ld.w	$a0, $s0, 16
	ori	$a1, $zero, 61
	addi.d	$fp, $s2, 8
	beq	$a0, $a1, .LBB19_13
# %bb.3:
	ori	$a1, $zero, 44
	bne	$a0, $a1, .LBB19_12
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 16
	addi.d	$a1, $sp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(primaryexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB19_30
# %bb.5:
	ld.d	$s3, $s0, 48
	ld.w	$a0, $s3, 60
	move	$a2, $zero
	ori	$a1, $zero, 9
	b	.LBB19_7
	.p2align	4, , 16
.LBB19_6:                               #   in Loop: Header=BB19_7 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB19_27
.LBB19_7:                               # %.backedge.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s2, 8
	bne	$a3, $a1, .LBB19_6
# %bb.8:                                #   in Loop: Header=BB19_7 Depth=1
	ld.w	$a4, $s2, 16
	ld.w	$a3, $sp, 32
	bne	$a4, $a3, .LBB19_10
# %bb.9:                                #   in Loop: Header=BB19_7 Depth=1
	st.w	$a0, $s2, 16
	ld.w	$a3, $sp, 32
	ori	$a2, $zero, 1
.LBB19_10:                              #   in Loop: Header=BB19_7 Depth=1
	ld.w	$a4, $s2, 20
	bne	$a4, $a3, .LBB19_6
# %bb.11:                               # %.thread.i
                                        #   in Loop: Header=BB19_7 Depth=1
	st.w	$a0, $s2, 20
	ld.d	$s2, $s2, 0
	ori	$a2, $zero, 1
	bnez	$s2, .LBB19_7
	b	.LBB19_29
.LBB19_12:
	ld.d	$s2, $s0, 56
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_token2str)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_syntaxerror)
	jirl	$ra, $ra, 0
.LBB19_13:                              # %checknext.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	ori	$s2, $zero, 44
	ori	$s5, $zero, 1
	bne	$a0, $s2, .LBB19_16
# %bb.14:                               # %.lr.ph
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB19_15:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaX_next)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(subexpr)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	addi.w	$s5, $s5, 1
	beq	$a0, $s2, .LBB19_15
.LBB19_16:                              # %explist1.exit
	ld.d	$s3, $s0, 48
	bne	$s1, $s5, .LBB19_18
# %bb.17:
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(luaK_setoneret)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	b	.LBB19_37
.LBB19_18:
	ld.w	$a0, $sp, 16
	addi.d	$a1, $a0, -13
	ori	$a2, $zero, 2
	sub.w	$s2, $s1, $s5
	bgeu	$a1, $a2, .LBB19_21
# %bb.19:
	addi.w	$a0, $zero, -1
	slt	$a1, $a0, $s2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s4, $a1, $a0
	addi.w	$a2, $s4, 1
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(luaK_setreturns)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB19_25
# %bb.20:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	b	.LBB19_25
.LBB19_21:
	beqz	$a0, .LBB19_23
# %bb.22:
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(luaK_exp2nextreg)
	jirl	$ra, $ra, 0
.LBB19_23:
	blez	$s2, .LBB19_25
# %bb.24:
	ld.w	$s4, $s3, 60
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(luaK_nil)
	jirl	$ra, $ra, 0
.LBB19_25:                              # %adjust_assign.exit
	bge	$s1, $s5, .LBB19_36
# %bb.26:
	ld.d	$a0, $s0, 48
	ld.w	$a1, $a0, 60
	add.d	$a1, $a1, $s2
	st.w	$a1, $a0, 60
	b	.LBB19_36
.LBB19_27:
	beqz	$a2, .LBB19_30
# %bb.28:                               # %..thread7.i_crit_edge
	ld.w	$a3, $sp, 32
.LBB19_29:                              # %.thread7.i
	ld.w	$a2, $s3, 60
	move	$a0, $s3
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(luaK_codeABC)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(luaK_reserveregs)
	jirl	$ra, $ra, 0
.LBB19_30:                              # %check_conflict.exit
	ld.d	$a0, $s0, 56
	ld.hu	$a0, $a0, 96
	ori	$a1, $zero, 200
	sub.d	$a3, $a1, $a0
	bge	$a3, $s1, .LBB19_35
# %bb.31:
	ld.d	$s2, $s0, 48
	ld.d	$a0, $s2, 0
	ld.w	$a2, $a0, 96
	ld.d	$a0, $s2, 32
	beqz	$a2, .LBB19_33
# %bb.32:
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a4, %pc_hi20(.L.str.27)
	addi.d	$a4, $a4, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
	b	.LBB19_34
.LBB19_33:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a4, $a2, %pc_lo12(.L.str.27)
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(luaO_pushfstring)
	jirl	$ra, $ra, 0
.LBB19_34:                              # %errorlimit.exit
	move	$a1, $a0
	ld.d	$a0, $s2, 24
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaX_lexerror)
	jirl	$ra, $ra, 0
.LBB19_35:
	addi.w	$a2, $s1, 1
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(assignment)
	jirl	$ra, $ra, 0
.LBB19_36:                              # %.thread
	ld.d	$a0, $s0, 48
	ld.w	$a1, $a0, 60
	addi.d	$a1, $a1, -1
	addi.w	$a2, $zero, -1
	st.d	$a2, $sp, 32
	ori	$a2, $zero, 12
	st.w	$a2, $sp, 16
	st.w	$a1, $sp, 24
.LBB19_37:
	addi.d	$a2, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaK_storevar)
	jirl	$ra, $ra, 0
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
.Lfunc_end19:
	.size	assignment, .Lfunc_end19-assignment
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'%s' expected"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"chunk has too many syntax levels"
	.size	.L.str.1, 33

	.type	priority,@object                # @priority
	.section	.rodata,"a",@progbits
priority:
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.size	priority, 30

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cannot use '...' outside a vararg function"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"items in a constructor"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"main function has more than %d %s"
	.size	.L.str.4, 34

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"function at line %d has more than %d %s"
	.size	.L.str.5, 40

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"self"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"local variables"
	.size	.L.str.7, 16

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"too many local variables"
	.size	.L.str.8, 25

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"arg"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"<name> or '...' expected"
	.size	.L.str.10, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"constant table overflow"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"unexpected symbol"
	.size	.L.str.12, 18

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"upvalues"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.space	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"ambiguous syntax (function call x new statement)"
	.size	.L.str.15, 49

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"function arguments expected"
	.size	.L.str.16, 28

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"'%s' expected (to close '%s' at line %d)"
	.size	.L.str.17, 41

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"'=' or 'in' expected"
	.size	.L.str.18, 21

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"(for index)"
	.size	.L.str.19, 12

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"(for limit)"
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"(for step)"
	.size	.L.str.21, 11

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"(for generator)"
	.size	.L.str.22, 16

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"(for state)"
	.size	.L.str.23, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"(for control)"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"no loop to break"
	.size	.L.str.25, 17

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"syntax error"
	.size	.L.str.26, 13

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"variables in assignment"
	.size	.L.str.27, 24

	.hidden	luaX_setinput
	.hidden	luaS_newlstr
	.hidden	luaX_next
	.hidden	luaF_newproto
	.hidden	luaH_new
	.hidden	luaD_growstack
	.hidden	luaX_syntaxerror
	.hidden	luaO_pushfstring
	.hidden	luaX_token2str
	.hidden	luaK_ret
	.hidden	luaM_realloc_
	.hidden	luaM_toobig
	.hidden	luaX_newstring
	.hidden	luaX_lexerror
	.hidden	luaK_concat
	.hidden	luaK_jump
	.hidden	luaK_patchtohere
	.hidden	luaK_goiftrue
	.hidden	luaK_prefix
	.hidden	luaK_infix
	.hidden	luaK_posfix
	.hidden	luaK_codeABC
	.hidden	luaK_stringK
	.hidden	luaK_exp2nextreg
	.hidden	luaX_lookahead
	.hidden	luaO_int2fb
	.hidden	luaK_setlist
	.hidden	luaK_exp2RK
	.hidden	luaK_exp2val
	.hidden	luaK_setreturns
	.hidden	luaM_growaux_
	.hidden	luaC_barrierf
	.hidden	luaK_reserveregs
	.hidden	luaK_codeABx
	.hidden	luaK_exp2anyreg
	.hidden	luaK_indexed
	.hidden	luaK_self
	.hidden	luaK_dischargevars
	.hidden	luaK_fixline
	.hidden	luaK_getlabel
	.hidden	luaK_patchlist
	.hidden	luaK_numberK
	.hidden	luaK_checkstack
	.hidden	luaK_nil
	.hidden	luaK_storevar
	.hidden	luaK_setoneret
	.section	".note.GNU-stack","",@progbits
	.addrsig
