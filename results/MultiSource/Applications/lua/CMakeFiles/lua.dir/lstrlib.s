	.file	"lstrlib.c"
	.text
	.globl	luaopen_string                  # -- Begin function luaopen_string
	.p2align	5
	.type	luaopen_string,@function
luaopen_string:                         # @luaopen_string
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(strlib)
	addi.d	$a2, $a0, %pc_lo12(strlib)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_register)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	addi.w	$s0, $zero, -2
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_createtable)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setmetatable)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	luaopen_string, .Lfunc_end0-luaopen_string
                                        # -- End function
	.p2align	5                               # -- Begin function str_byte
	.type	str_byte,@function
str_byte:                               # @str_byte
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 8
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	addi.d	$a1, $a1, 1
	srai.d	$a2, $a0, 63
	and	$a1, $a2, $a1
	add.d	$s2, $a1, $a0
	srai.d	$a0, $s2, 63
	andn	$a2, $s2, $a0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	addi.d	$a2, $a1, 1
	srai.d	$a3, $a0, 63
	and	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	slt	$a2, $s1, $s2
	maskeqz	$a3, $s2, $a2
	masknez	$a2, $s1, $a2
	or	$s2, $a3, $a2
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	bgeu	$a0, $s2, .LBB1_2
# %bb.1:
	move	$s1, $zero
	b	.LBB1_7
.LBB1_2:
	sub.w	$s3, $a0, $s2
	addi.w	$s1, $s3, 1
	add.d	$a1, $s2, $s1
	blt	$a0, $a1, .LBB1_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB1_4:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_checkstack)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	bltu	$a0, $s3, .LBB1_7
# %bb.5:                                # %.lr.ph
	bstrpick.d	$a0, $s1, 31, 0
	add.d	$a1, $s2, $s0
	addi.d	$s0, $a1, -1
	sub.d	$s2, $zero, $a0
	.p2align	4, , 16
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 1
	bnez	$s2, .LBB1_6
.LBB1_7:                                # %.loopexit
	move	$a0, $s1
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	str_byte, .Lfunc_end1-str_byte
                                        # -- End function
	.p2align	5                               # -- Begin function str_char
	.type	str_char,@function
str_char:                               # @str_char
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a1, $sp, 16
	addi.d	$s1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB2_7
# %bb.1:                                # %.lr.ph
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$s4, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s1, $a0, %pc_lo12(.L.str.17)
	move	$s2, $zero
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 16
	st.b	$s3, $a0, 0
	beq	$s0, $s2, .LBB2_7
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s2, 1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 8
	beqz	$a0, .LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 16
	bltu	$a0, $s4, .LBB2_2
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	b	.LBB2_2
.LBB2_7:                                # %._crit_edge
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	add.d	$sp, $sp, $a1
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end2:
	.size	str_char, .Lfunc_end2-str_char
                                        # -- End function
	.p2align	5                               # -- Begin function str_dump
	.type	str_dump,@function
str_dump:                               # @str_dump
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2112
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(writer)
	addi.d	$a1, $a0, %pc_lo12(writer)
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_dump)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB3_2:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2112
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end3:
	.size	str_dump, .Lfunc_end3-str_dump
                                        # -- End function
	.p2align	5                               # -- Begin function str_find
	.type	str_find,@function
str_find:                               # @str_find
# %bb.0:
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(str_find_aux)
	jr	$t8
.Lfunc_end4:
	.size	str_find, .Lfunc_end4-str_find
                                        # -- End function
	.p2align	5                               # -- Begin function str_format
	.type	str_format,@function
str_format:                             # @str_format
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
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2752
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 576
	add.d	$a2, $sp, $a2
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 576
	add.d	$a1, $sp, $a1
	ld.d	$s0, $a1, 0
	move	$s3, $a0
	addi.d	$a1, $sp, 552
	addi.d	$s1, $sp, 552
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB5_57
# %bb.1:                                # %.lr.ph
	add.d	$s6, $s3, $s0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$s7, $s1, $a0
	ori	$s8, $zero, 37
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 1086
	movgr2fr.d	$fs0, $a0
	ori	$s1, $zero, 63
	ori	$s2, $zero, 1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 552
	st.b	$a0, $a1, 0
.LBB5_3:                                # %.backedge
                                        #   in Loop: Header=BB5_4 Depth=1
	bgeu	$s3, $s6, .LBB5_57
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
                                        #     Child Loop BB5_43 Depth 2
	ld.bu	$a0, $s3, 0
	bne	$a0, $s8, .LBB5_9
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$s0, $s3, 1
	addi.d	$s4, $s3, 1
	bne	$s0, $s8, .LBB5_11
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $sp, 552
	ori	$a1, $zero, 37
	bltu	$a0, $s7, .LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 0
	ld.d	$a0, $sp, 552
.LBB5_8:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$s3, $s3, 2
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 552
	st.b	$a1, $a0, 0
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a1, $sp, 552
	bltu	$a1, $s7, .LBB5_2
# %bb.10:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
	ld.d	$a1, $sp, 552
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_4 Depth=1
	beqz	$s0, .LBB5_17
# %bb.12:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB5_13:                               # %.lr.ph.i
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s1, $s0, .LBB5_26
# %bb.14:                               # %.lr.ph.i
                                        #   in Loop: Header=BB5_13 Depth=2
	sll.d	$a1, $s5, $s0
	ori	$a2, $zero, 1
	lu32i.d	$a2, 75785
	and	$a1, $a1, $a2
	beqz	$a1, .LBB5_26
# %bb.15:                               #   in Loop: Header=BB5_13 Depth=2
	ld.bu	$s0, $a0, 1
	addi.d	$s3, $a0, 1
	move	$a0, $s3
	bnez	$s0, .LBB5_13
# %bb.16:                               #   in Loop: Header=BB5_4 Depth=1
	move	$s0, $zero
	sub.d	$a0, $s3, $s4
	ori	$a1, $zero, 6
	bgeu	$a0, $a1, .LBB5_18
	b	.LBB5_19
.LBB5_17:                               #   in Loop: Header=BB5_4 Depth=1
	move	$s0, $zero
	move	$s3, $s4
	sub.d	$a0, $s3, $s4
	ori	$a1, $zero, 6
	bltu	$a0, $a1, .LBB5_19
.LBB5_18:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ld.bu	$s0, $s3, 0
.LBB5_19:                               #   in Loop: Header=BB5_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 1
	ldx.hu	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 11, 11
	ldx.bu	$a2, $s3, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	add.d	$a3, $s3, $a1
	bstrpick.d	$a2, $a2, 11, 11
	ldx.bu	$a1, $a3, $a2
	add.d	$s0, $a3, $a2
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB5_21
# %bb.20:                               #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a1, $s0, 1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	sltui	$a1, $a1, 1
	sub.d	$a2, $s0, $a1
	ld.bu	$a2, $a2, 2
	addi.d	$a3, $s0, 1
	addi.d	$a4, $s0, 2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a3, $a1
	or	$a3, $a1, $a4
	bstrpick.d	$a2, $a2, 11, 11
	ldx.bu	$a1, $a3, $a2
	add.d	$s0, $a3, $a2
.LBB5_21:                               #   in Loop: Header=BB5_4 Depth=1
	ori	$s3, $zero, 37
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bgez	$a0, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %scanformat.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$s8, $fp
	st.b	$s3, $sp, 534
	sub.d	$a0, $s0, $s4
	addi.d	$s3, $a0, 1
	addi.d	$fp, $sp, 535
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $fp, $s3
	ld.bu	$a0, $s0, 0
	addi.d	$a1, $a0, -69
	ori	$a2, $zero, 51
	bltu	$a2, $a1, .LBB5_59
# %bb.24:                               # %scanformat.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s0, 1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI5_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI5_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB5_25:                               #   in Loop: Header=BB5_4 Depth=1
	move	$fp, $s8
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	b	.LBB5_29
.LBB5_26:                               #   in Loop: Header=BB5_4 Depth=1
	move	$s3, $a0
	sub.d	$a0, $s3, $s4
	ori	$a1, $zero, 6
	bltu	$a0, $a1, .LBB5_19
	b	.LBB5_18
.LBB5_27:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 534
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 534
	add.d	$a1, $a3, $a0
	ld.b	$a2, $a1, -1
	ori	$a4, $zero, 108
	st.h	$a4, $a1, -1
	stx.b	$a2, $a0, $a3
	st.b	$zero, $a1, 1
	move	$fp, $s8
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fa0, $fs0
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	lu52i.d	$a3, $zero, -2048
	xor	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	or	$a2, $a0, $a1
	b	.LBB5_30
.LBB5_28:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 534
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 534
	add.d	$a1, $a3, $a0
	ld.b	$a2, $a1, -1
	ori	$a4, $zero, 108
	st.h	$a4, $a1, -1
	stx.b	$a2, $a0, $a3
	st.b	$zero, $a1, 1
	move	$fp, $s8
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
.LBB5_29:                               # %.thread49
                                        #   in Loop: Header=BB5_4 Depth=1
	movfr2gr.d	$a2, $fa0
.LBB5_30:                               # %.thread49
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 22
	addi.d	$a1, $sp, 534
.LBB5_31:                               # %.thread49
                                        #   in Loop: Header=BB5_4 Depth=1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 37
	addi.d	$a0, $sp, 22
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 22
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	b	.LBB5_3
.LBB5_32:                               #   in Loop: Header=BB5_4 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 584
	add.d	$a2, $sp, $a0
	move	$fp, $s8
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $sp, 534
	ori	$a1, $zero, 46
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_56
# %bb.33:                               #   in Loop: Header=BB5_4 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 99
	bgeu	$a1, $a0, .LBB5_56
# %bb.34:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_addvalue)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 37
	b	.LBB5_3
.LBB5_35:                               #   in Loop: Header=BB5_4 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 584
	add.d	$a2, $sp, $a0
	move	$fp, $s8
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 552
	move	$s4, $a0
	bltu	$a1, $s7, .LBB5_37
# %bb.36:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 552
.LBB5_37:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 552
	ori	$a0, $zero, 34
	st.b	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, -1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	ori	$s8, $zero, 37
	bnez	$a0, .LBB5_43
.LBB5_38:                               # %._crit_edge.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $sp, 552
	bltu	$a0, $s7, .LBB5_40
# %bb.39:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 552
.LBB5_40:                               # %addquoted.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 552
	ori	$a1, $zero, 34
	st.b	$a1, $a0, 0
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_41:                               #   in Loop: Header=BB5_43 Depth=2
	ld.b	$a1, $s4, 0
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 552
	st.b	$a1, $a0, 0
.LBB5_42:                               #   in Loop: Header=BB5_43 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$s4, $s4, 1
	addi.d	$a1, $a0, -1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	beqz	$a0, .LBB5_38
.LBB5_43:                               # %.lr.ph.i43
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s4, 0
	ori	$a1, $zero, 34
	bltu	$a1, $a0, .LBB5_46
# %bb.44:                               # %.lr.ph.i43
                                        #   in Loop: Header=BB5_43 Depth=2
	slli.d	$a1, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI5_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI5_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB5_45:                               #   in Loop: Header=BB5_43 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 552
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_46:                               # %.lr.ph.i43
                                        #   in Loop: Header=BB5_43 Depth=2
	ori	$a1, $zero, 92
	bne	$a0, $a1, .LBB5_51
.LBB5_47:                               #   in Loop: Header=BB5_43 Depth=2
	ld.d	$a0, $sp, 552
	bltu	$a0, $s7, .LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_43 Depth=2
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 552
.LBB5_49:                               #   in Loop: Header=BB5_43 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 552
	ori	$a1, $zero, 92
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 552
	bltu	$a0, $s7, .LBB5_41
# %bb.50:                               #   in Loop: Header=BB5_43 Depth=2
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 552
	b	.LBB5_41
.LBB5_51:                               #   in Loop: Header=BB5_43 Depth=2
	ld.d	$a1, $sp, 552
	bltu	$a1, $s7, .LBB5_53
# %bb.52:                               #   in Loop: Header=BB5_43 Depth=2
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
	ld.d	$a1, $sp, 552
.LBB5_53:                               #   in Loop: Header=BB5_43 Depth=2
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 552
	st.b	$a0, $a1, 0
	b	.LBB5_42
.LBB5_54:                               #   in Loop: Header=BB5_43 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	addi.d	$a0, $sp, 552
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	b	.LBB5_42
.LBB5_55:                               #   in Loop: Header=BB5_4 Depth=1
	move	$fp, $s8
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	b	.LBB5_30
.LBB5_56:                               # %.thread
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $sp, 22
	addi.d	$a1, $sp, 534
	move	$a2, $s4
	b	.LBB5_31
.LBB5_57:                               # %._crit_edge
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB5_58:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2752
	add.d	$sp, $sp, $a1
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
.LBB5_59:                               # %.thread46
	ext.w.b	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	b	.LBB5_58
.Lfunc_end5:
	.size	str_format, .Lfunc_end5-str_format
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_55-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_35-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_32-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
.LJTI5_1:
	.word	.LBB5_45-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_47-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_54-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_51-.LJTI5_1
	.word	.LBB5_47-.LJTI5_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function gfind_nodef
	.type	gfind_nodef,@function
gfind_nodef:                            # @gfind_nodef
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcaddu18i	$t8, %call36(luaL_error)
	jr	$t8
.Lfunc_end6:
	.size	gfind_nodef, .Lfunc_end6-gfind_nodef
                                        # -- End function
	.p2align	5                               # -- Begin function gmatch
	.type	gmatch,@function
gmatch:                                 # @gmatch
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(gmatch_aux)
	addi.d	$a1, $a0, %pc_lo12(gmatch_aux)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushcclosure)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	gmatch, .Lfunc_end7-gmatch
                                        # -- End function
	.p2align	5                               # -- Begin function str_gsub
	.type	str_gsub,@function
str_gsub:                               # @str_gsub
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
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2768
	sub.d	$sp, $sp, $a1
	move	$s5, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 600
	add.d	$a2, $sp, $a2
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 2
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 600
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	move	$s2, $a0
	addi.d	$a2, $a1, 1
	ori	$a1, $zero, 4
	ori	$s4, $zero, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	ld.bu	$s7, $s1, 0
	move	$s3, $a0
	addi.d	$a0, $s7, -94
	addi.w	$a1, $s2, -3
	sltui	$fp, $a0, 1
	bltu	$a1, $s4, .LBB8_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a2, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB8_2:
	add.d	$s6, $s1, $fp
	addi.d	$a1, $sp, 32
	addi.d	$fp, $sp, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	move	$s2, $zero
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a1, 2
	ori	$a1, $a1, 72
	add.d	$a1, $sp, $a1
	st.d	$s5, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 56
	add.d	$a1, $sp, $a1
	st.d	$s0, $a1, 0
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 64
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$s8, $fp, $a0
	addi.w	$fp, $s3, 0
	ori	$s5, $zero, 94
	ori	$s1, $zero, 37
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	ld.b	$a1, $s0, 0
	addi.d	$s3, $s0, 1
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 32
	st.b	$a1, $a0, 0
.LBB8_4:                                #   in Loop: Header=BB8_5 Depth=1
	move	$s0, $s3
	beq	$s7, $s5, .LBB8_47
.LBB8_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_22 Depth 2
	bge	$s2, $fp, .LBB8_46
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_43
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	move	$s3, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$s4, $a0, 0
	ori	$a1, $zero, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -3
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB8_18
# %bb.8:                                #   in Loop: Header=BB8_5 Depth=1
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB8_33
# %bb.9:                                #   in Loop: Header=BB8_5 Depth=1
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB8_14
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	ori	$a1, $zero, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	sltui	$a0, $a1, 1
	sltu	$a2, $zero, $s0
	masknez	$a3, $a1, $a0
	ori	$a4, $zero, 1
	maskeqz	$a0, $a4, $a0
	or	$a3, $a0, $a3
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	maskeqz	$a3, $a3, $a2
	masknez	$a1, $a1, $a2
	or	$s5, $a3, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(luaL_checkstack)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB8_13
# %bb.11:                               # %.lr.ph.i27.i.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB8_12:                               # %.lr.ph.i27.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(push_onecapture)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, 1
	bne	$s5, $s6, .LBB8_12
.LBB8_13:                               # %push_captures.exit.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(lua_call)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ori	$s5, $zero, 94
.LBB8_14:                               #   in Loop: Header=BB8_5 Depth=1
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_42
.LBB8_15:                               #   in Loop: Header=BB8_5 Depth=1
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_isstring)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_17
# %bb.16:                               #   in Loop: Header=BB8_5 Depth=1
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_typename)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB8_17:                               #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(luaL_addvalue)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	bltu	$s0, $s3, .LBB8_4
	b	.LBB8_43
	.p2align	4, , 16
.LBB8_18:                               #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3
	lu12i.w	$a2, 2
	ori	$a2, $a2, 608
	add.d	$a2, $sp, $a2
	pcaddu18i	$ra, %call36(lua_tolstring)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 608
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB8_32
# %bb.19:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$s4, $a0
	move	$s6, $zero
	sub.d	$s5, $s3, $s0
	b	.LBB8_22
	.p2align	4, , 16
.LBB8_20:                               #   in Loop: Header=BB8_22 Depth=2
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 32
	st.b	$a0, $a1, 0
.LBB8_21:                               #   in Loop: Header=BB8_22 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$s6, $s6, 1
	bgeu	$s6, $a0, .LBB8_32
.LBB8_22:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s4, $s6
	bne	$a0, $s1, .LBB8_27
# %bb.23:                               #   in Loop: Header=BB8_22 Depth=2
	addi.d	$s6, $s6, 1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ldx.bu	$a1, $s4, $s6
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a0, $a0, $a2
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB8_29
# %bb.24:                               #   in Loop: Header=BB8_22 Depth=2
	ld.d	$a0, $sp, 32
	bltu	$a0, $s8, .LBB8_26
# %bb.25:                               #   in Loop: Header=BB8_22 Depth=2
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ldx.bu	$a1, $s4, $s6
	ld.d	$a0, $sp, 32
.LBB8_26:                               #   in Loop: Header=BB8_22 Depth=2
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 32
	st.b	$a1, $a0, 0
	b	.LBB8_21
	.p2align	4, , 16
.LBB8_27:                               #   in Loop: Header=BB8_22 Depth=2
	ld.d	$a1, $sp, 32
	bltu	$a1, $s8, .LBB8_20
# %bb.28:                               #   in Loop: Header=BB8_22 Depth=2
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $s4, $s6
	ld.d	$a1, $sp, 32
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_29:                               #   in Loop: Header=BB8_22 Depth=2
	ori	$a0, $zero, 48
	bne	$a1, $a0, .LBB8_31
# %bb.30:                               #   in Loop: Header=BB8_22 Depth=2
	addi.d	$a0, $sp, 32
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	b	.LBB8_21
.LBB8_31:                               #   in Loop: Header=BB8_22 Depth=2
	ext.w.b	$a0, $a1
	addi.d	$a1, $a0, -49
	lu12i.w	$a0, 2
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	move	$a2, $s0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(push_onecapture)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(luaL_addvalue)
	jirl	$ra, $ra, 0
	b	.LBB8_21
	.p2align	4, , 16
.LBB8_32:                               # %add_s.exit.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ori	$s5, $zero, 94
	addi.w	$s2, $s2, 1
	bltu	$s0, $s3, .LBB8_4
	b	.LBB8_43
.LBB8_33:                               #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB8_38
# %bb.34:                               #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.d	$s5, $a0, 0
	addi.w	$a0, $zero, -2
	beq	$s5, $a0, .LBB8_39
# %bb.35:                               #   in Loop: Header=BB8_5 Depth=1
	addi.w	$a0, $zero, -1
	bne	$s5, $a0, .LBB8_37
# %bb.36:                               #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB8_37:                               #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 88
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	b	.LBB8_40
.LBB8_38:                               #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	sub.d	$a2, $s3, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	b	.LBB8_41
.LBB8_39:                               #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
.LBB8_40:                               # %push_onecapture.exit.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ori	$s5, $zero, 94
.LBB8_41:                               # %push_onecapture.exit.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ori	$a1, $zero, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_gettable)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_15
.LBB8_42:                               #   in Loop: Header=BB8_5 Depth=1
	addi.w	$a1, $zero, -2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	sub.d	$a2, $s3, $s0
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(luaL_addvalue)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	bltu	$s0, $s3, .LBB8_4
	.p2align	4, , 16
.LBB8_43:                               # %add_value.exit.thread
                                        #   in Loop: Header=BB8_5 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 64
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	bgeu	$s0, $a0, .LBB8_46
# %bb.44:                               #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 32
	bltu	$a0, $s8, .LBB8_3
# %bb.45:                               #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	b	.LBB8_3
.LBB8_46:
	move	$s3, $s0
.LBB8_47:                               # %.thread
	lu12i.w	$a0, 2
	ori	$a0, $a0, 64
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	sub.d	$a2, $a0, $s3
	addi.d	$a0, $sp, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2768
	add.d	$sp, $sp, $a1
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
.Lfunc_end8:
	.size	str_gsub, .Lfunc_end8-str_gsub
                                        # -- End function
	.p2align	5                               # -- Begin function str_len
	.type	str_len,@function
str_len:                                # @str_len
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	str_len, .Lfunc_end9-str_len
                                        # -- End function
	.p2align	5                               # -- Begin function str_lower
	.type	str_lower,@function
str_lower:                              # @str_lower
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	sub.d	$sp, $sp, $a1
	move	$s0, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 32
	add.d	$a2, $sp, $a2
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB10_5
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$s1, $s1, $a0
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ldx.bu	$a1, $fp, $s0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.b	$a0, $a0, $a1
	addi.d	$a1, $s2, 1
	st.d	$a1, $sp, 8
	st.b	$a0, $s2, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a0, .LBB10_5
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $sp, 8
	bltu	$s2, $s1, .LBB10_2
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8
	b	.LBB10_2
.LBB10_5:                               # %._crit_edge
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$sp, $sp, $a1
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end10:
	.size	str_lower, .Lfunc_end10-str_lower
                                        # -- End function
	.p2align	5                               # -- Begin function str_match
	.type	str_match,@function
str_match:                              # @str_match
# %bb.0:
	move	$a1, $zero
	pcaddu18i	$t8, %call36(str_find_aux)
	jr	$t8
.Lfunc_end11:
	.size	str_match, .Lfunc_end11-str_match
                                        # -- End function
	.p2align	5                               # -- Begin function str_rep
	.type	str_rep,@function
str_rep:                                # @str_rep
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	sub.d	$sp, $sp, $a1
	move	$s1, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 40
	add.d	$a2, $sp, $a2
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$s3, $a0, 0
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB12_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s0, $s0, 1
	.p2align	4, , 16
.LBB12_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bltu	$s2, $s0, .LBB12_2
.LBB12_3:                               # %._crit_edge
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	add.d	$sp, $sp, $a1
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end12:
	.size	str_rep, .Lfunc_end12-str_rep
                                        # -- End function
	.p2align	5                               # -- Begin function str_reverse
	.type	str_reverse,@function
str_reverse:                            # @str_reverse
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	sub.d	$sp, $sp, $a1
	move	$s0, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 40
	add.d	$a2, $sp, $a2
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 16
	addi.d	$s1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	addi.d	$a0, $a1, -1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 40
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	beqz	$a1, .LBB13_5
# %bb.1:                                # %.lr.ph
	lu12i.w	$a1, 2
	ori	$a1, $a1, 24
	add.d	$s0, $s1, $a1
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	ldx.b	$a0, $fp, $a0
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 16
	st.b	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	addi.d	$a0, $a1, -1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 40
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	beqz	$a1, .LBB13_5
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 16
	bltu	$a1, $s0, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16
	b	.LBB13_2
.LBB13_5:                               # %._crit_edge
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$sp, $sp, $a1
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end13:
	.size	str_reverse, .Lfunc_end13-str_reverse
                                        # -- End function
	.p2align	5                               # -- Begin function str_sub
	.type	str_sub,@function
str_sub:                                # @str_sub
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 0
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	addi.d	$a1, $a1, 1
	srai.d	$a2, $a0, 63
	and	$a1, $a2, $a1
	add.d	$s2, $a1, $a0
	addi.w	$a2, $zero, -1
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	addi.d	$a2, $a1, 1
	srai.d	$a3, $a0, 63
	and	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	srai.d	$a2, $a0, 63
	andn	$a2, $a0, $a2
	slt	$a0, $s1, $s2
	maskeqz	$a3, $s2, $a0
	masknez	$a0, $s1, $a0
	or	$a0, $a3, $a0
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$a2, $a2, $a1
	bge	$a2, $a0, .LBB14_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	move	$a0, $fp
	move	$a2, $zero
	b	.LBB14_3
.LBB14_2:
	add.d	$a1, $s0, $a0
	addi.d	$a1, $a1, -1
	sub.d	$a0, $a2, $a0
	addi.d	$a2, $a0, 1
	move	$a0, $fp
.LBB14_3:
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	str_sub, .Lfunc_end14-str_sub
                                        # -- End function
	.p2align	5                               # -- Begin function str_upper
	.type	str_upper,@function
str_upper:                              # @str_upper
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	sub.d	$sp, $sp, $a1
	move	$s0, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 32
	add.d	$a2, $sp, $a2
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB15_5
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$s1, $s1, $a0
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ldx.bu	$a1, $fp, $s0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.b	$a0, $a0, $a1
	addi.d	$a1, $s2, 1
	st.d	$a1, $sp, 8
	st.b	$a0, $s2, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a0, .LBB15_5
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $sp, 8
	bltu	$s2, $s1, .LBB15_2
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8
	b	.LBB15_2
.LBB15_5:                               # %._crit_edge
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$sp, $sp, $a1
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end15:
	.size	str_upper, .Lfunc_end15-str_upper
                                        # -- End function
	.p2align	5                               # -- Begin function writer
	.type	writer,@function
writer:                                 # @writer
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $a3
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	writer, .Lfunc_end16-writer
                                        # -- End function
	.p2align	5                               # -- Begin function str_find_aux
	.type	str_find_aux,@function
str_find_aux:                           # @str_find_aux
# %bb.0:
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 568
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 560
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 568
	addi.d	$a2, $a1, 1
	srai.d	$a3, $a0, 63
	and	$a2, $a3, $a2
	add.d	$a0, $a2, $a0
	srai.d	$a2, $a0, 63
	andn	$a2, $a0, $a2
	addi.d	$a2, $a2, -1
	sltu	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	slt	$a0, $zero, $a0
	maskeqz	$s3, $a2, $a0
	beqz	$s1, .LBB17_11
# %bb.1:
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_9
.LBB17_2:
	ld.d	$a0, $sp, 560
	add.d	$s1, $s0, $s3
	beqz	$a0, .LBB17_21
# %bb.3:
	ld.d	$a1, $sp, 568
	sub.d	$a1, $a1, $s3
	bltu	$a1, $a0, .LBB17_22
# %bb.4:
	addi.d	$s3, $a0, -1
	sub.d	$s4, $a1, $s3
	beqz	$s4, .LBB17_22
# %bb.5:                                # %.lr.ph.i
	ld.b	$s5, $s2, 0
	addi.d	$s2, $s2, 1
	.p2align	4, , 16
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_22
# %bb.7:                                #   in Loop: Header=BB17_6 Depth=1
	move	$s6, $a0
	addi.d	$s7, $a0, 1
	move	$a0, $s7
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_29
# %bb.8:                                #   in Loop: Header=BB17_6 Depth=1
	add.d	$a0, $s4, $s1
	sub.d	$s4, $a0, $s7
	move	$s1, $s7
	bnez	$s4, .LBB17_6
	b	.LBB17_22
.LBB17_9:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strpbrk)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_2
# %bb.10:                               # %._crit_edge
	ld.d	$a1, $sp, 568
.LBB17_11:
	ld.b	$a0, $s2, 0
	andi	$a0, $a0, 255
	addi.d	$a2, $a0, -94
	sltui	$a2, $a2, 1
	add.d	$s4, $s2, $a2
	add.d	$s2, $s0, $s3
	st.d	$fp, $sp, 32
	st.d	$s0, $sp, 16
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 94
	st.d	$a1, $sp, 24
	bne	$a0, $a2, .LBB17_19
# %bb.12:                               # %.split.us
	st.w	$zero, $sp, 40
	addi.d	$a0, $sp, 16
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_22
# %bb.13:
	move	$s3, $a0
	beqz	$s1, .LBB17_24
.LBB17_14:
	sub.d	$a0, $s2, $s0
	addi.d	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s3, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 40
	ld.d	$a0, $sp, 32
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaL_checkstack)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB17_35
# %bb.15:                               # %.lr.ph.i61.preheader
	ld.w	$a0, $sp, 40
	addi.w	$s3, $zero, -1
	blez	$a0, .LBB17_28
# %bb.16:
	ld.d	$s0, $sp, 56
	beq	$s0, $s3, .LBB17_31
# %bb.17:
	addi.w	$a0, $zero, -2
	bne	$s0, $a0, .LBB17_32
# %bb.18:
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 16
	ld.d	$a0, $sp, 32
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	b	.LBB17_34
	.p2align	4, , 16
.LBB17_19:                              # %.split
                                        # =>This Inner Loop Header: Depth=1
	move	$s5, $s2
	st.w	$zero, $sp, 40
	addi.d	$a0, $sp, 16
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_23
# %bb.20:                               # %push_captures.exit65.thread75
                                        #   in Loop: Header=BB17_19 Depth=1
	ld.d	$a0, $sp, 24
	addi.d	$s2, $s5, 1
	bltu	$s5, $a0, .LBB17_19
	b	.LBB17_22
.LBB17_21:                              # %lmemfind.exit
	bnez	$s0, .LBB17_30
.LBB17_22:                              # %.critedge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB17_36
.LBB17_23:
	move	$s3, $a0
	move	$s2, $s5
	bnez	$s1, .LBB17_14
.LBB17_24:
	ld.w	$s0, $sp, 40
	sltui	$a0, $s0, 1
	sltu	$a1, $zero, $s2
	masknez	$a2, $s0, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a2, $a0, $a2
	ld.d	$a0, $sp, 32
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s0, $a1
	or	$fp, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaL_checkstack)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	blez	$fp, .LBB17_36
# %bb.25:                               # %.lr.ph.i62.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB17_26:                              # %.lr.ph.i62
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(push_onecapture)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	bne	$fp, $s0, .LBB17_26
# %bb.27:
	move	$a0, $fp
	b	.LBB17_36
.LBB17_28:
	ld.d	$a0, $sp, 32
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB17_33
.LBB17_29:
	move	$s1, $s6
.LBB17_30:                              # %lmemfind.exit.thread69
	sub.d	$s0, $s1, $s0
	addi.d	$a1, $s0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 560
	add.d	$a1, $s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	b	.LBB17_36
.LBB17_31:
	ld.d	$a0, $sp, 32
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB17_32:
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 48
	move	$a2, $s0
.LBB17_33:                              # %push_onecapture.exit.peel
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
.LBB17_34:                              # %push_onecapture.exit.peel
	ori	$s4, $zero, 1
	bne	$fp, $s4, .LBB17_37
.LBB17_35:                              # %push_captures.exit65.thread78
	addi.w	$a0, $fp, 2
.LBB17_36:
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.LBB17_37:                              # %.lr.ph.i61.preheader125
	addi.d	$s5, $sp, 64
	addi.w	$s6, $zero, -2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s0, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s1, $a0, %pc_lo12(.L.str.26)
	b	.LBB17_40
	.p2align	4, , 16
.LBB17_38:                              #   in Loop: Header=BB17_40 Depth=1
	ld.d	$a0, $sp, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB17_39:                              # %push_onecapture.exit
                                        #   in Loop: Header=BB17_40 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 16
	beq	$fp, $s4, .LBB17_35
.LBB17_40:                              # %.lr.ph.i61
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 40
	bge	$s4, $a0, .LBB17_38
# %bb.41:                               #   in Loop: Header=BB17_40 Depth=1
	ld.d	$s2, $s5, 8
	beq	$s2, $s6, .LBB17_45
# %bb.42:                               #   in Loop: Header=BB17_40 Depth=1
	bne	$s2, $s3, .LBB17_44
# %bb.43:                               #   in Loop: Header=BB17_40 Depth=1
	ld.d	$a0, $sp, 32
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB17_44:                              #   in Loop: Header=BB17_40 Depth=1
	ld.d	$a0, $sp, 32
	ld.d	$a1, $s5, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	b	.LBB17_39
.LBB17_45:                              #   in Loop: Header=BB17_40 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $sp, 16
	ld.d	$a0, $sp, 32
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	b	.LBB17_39
.Lfunc_end17:
	.size	str_find_aux, .Lfunc_end17-str_find_aux
                                        # -- End function
	.p2align	5                               # -- Begin function match
	.type	match,@function
match:                                  # @match
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
	move	$s0, $a1
	move	$s8, $a0
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s7, $zero, 37
	ori	$s2, $zero, 91
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s1, $a0, %pc_lo12(.L.str.25)
	ori	$s3, $zero, 93
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
.LBB18_1:                               # %.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_5 Depth 2
                                        #       Child Loop BB18_14 Depth 3
                                        #       Child Loop BB18_24 Depth 3
                                        #       Child Loop BB18_37 Depth 3
                                        #     Child Loop BB18_103 Depth 2
                                        #     Child Loop BB18_67 Depth 2
                                        #     Child Loop BB18_78 Depth 2
	addi.d	$a0, $s0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $a2
	ld.bu	$a0, $a2, 0
	beq	$a0, $s7, .LBB18_5
	b	.LBB18_53
	.p2align	4, , 16
.LBB18_2:                               #   in Loop: Header=BB18_5 Depth=2
	move	$s6, $s2
.LBB18_3:                               # %matchbracketclass.exit113
                                        #   in Loop: Header=BB18_5 Depth=2
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ori	$s2, $zero, 91
	move	$a2, $s1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	beqz	$s6, .LBB18_185
# %bb.4:                                #   in Loop: Header=BB18_5 Depth=2
	move	$s5, $a2
	ld.bu	$a0, $a2, 0
	bne	$a0, $s7, .LBB18_53
.LBB18_5:                               #   Parent Loop BB18_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_14 Depth 3
                                        #       Child Loop BB18_24 Depth 3
                                        #       Child Loop BB18_37 Depth 3
	ld.bu	$fp, $s5, 1
	ori	$a0, $zero, 102
	bne	$fp, $a0, .LBB18_46
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=2
	ld.bu	$a0, $s5, 2
	addi.d	$s6, $s5, 3
	beq	$a0, $s2, .LBB18_12
# %bb.7:                                #   in Loop: Header=BB18_5 Depth=2
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 2
	beq	$a0, $s2, .LBB18_12
# %bb.8:                                #   in Loop: Header=BB18_5 Depth=2
	bne	$a0, $s7, .LBB18_45
# %bb.9:                                #   in Loop: Header=BB18_5 Depth=2
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB18_52
# %bb.10:                               #   in Loop: Header=BB18_5 Depth=2
	addi.d	$a2, $s5, 4
	ld.d	$a0, $s8, 0
	bne	$s0, $a0, .LBB18_19
	.p2align	4, , 16
.LBB18_11:                              #   in Loop: Header=BB18_5 Depth=2
	move	$s4, $zero
	b	.LBB18_20
	.p2align	4, , 16
.LBB18_12:                              #   in Loop: Header=BB18_5 Depth=2
	ld.bu	$a0, $s5, 3
	addi.d	$a0, $a0, -94
	sltui	$a1, $a0, 1
	addi.d	$a2, $s5, 4
	add.d	$a0, $a1, $s5
	ld.bu	$a0, $a0, 3
	masknez	$a3, $s6, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a3
	b	.LBB18_14
	.p2align	4, , 16
.LBB18_13:                              #   in Loop: Header=BB18_14 Depth=3
	ld.bu	$a0, $fp, 1
	sltui	$a0, $a0, 1
	addi.d	$a2, $fp, 2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$fp, $a0, $a2
	ld.bu	$a0, $fp, 0
	beq	$a0, $s3, .LBB18_18
.LBB18_14:                              #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a0, .LBB18_16
# %bb.15:                               #   in Loop: Header=BB18_14 Depth=3
	addi.d	$a1, $fp, 1
	beq	$a0, $s7, .LBB18_13
	b	.LBB18_17
	.p2align	4, , 16
.LBB18_16:                              #   in Loop: Header=BB18_14 Depth=3
	ld.d	$a0, $s8, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	addi.d	$a1, $fp, 1
	beq	$a0, $s7, .LBB18_13
.LBB18_17:                              #   in Loop: Header=BB18_14 Depth=3
	move	$fp, $a1
	ld.bu	$a0, $fp, 0
	bne	$a0, $s3, .LBB18_14
.LBB18_18:                              #   in Loop: Header=BB18_5 Depth=2
	addi.d	$a2, $fp, 1
	ld.d	$a0, $s8, 0
	beq	$s0, $a0, .LBB18_11
.LBB18_19:                              #   in Loop: Header=BB18_5 Depth=2
	ld.bu	$s4, $s0, -1
.LBB18_20:                              #   in Loop: Header=BB18_5 Depth=2
	ld.bu	$a0, $s6, 0
	addi.d	$a1, $s5, 2
	move	$s1, $a2
	addi.d	$s5, $a2, -1
	addi.d	$a0, $a0, -94
	sltui	$s2, $a0, 1
	masknez	$a1, $a1, $s2
	maskeqz	$a2, $s6, $s2
	or	$fp, $a2, $a1
	addi.d	$s8, $fp, 1
	bgeu	$s8, $s5, .LBB18_185
# %bb.21:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB18_5 Depth=2
	sltu	$s6, $zero, $a0
	move	$a0, $s8
	move	$s0, $fp
	b	.LBB18_24
	.p2align	4, , 16
.LBB18_22:                              #   in Loop: Header=BB18_24 Depth=3
	beq	$s4, $a2, .LBB18_32
.LBB18_23:                              #   in Loop: Header=BB18_24 Depth=3
	move	$s0, $a0
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s5, .LBB18_33
.LBB18_24:                              # %.lr.ph.i99
                                        #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $s0, 1
	ld.bu	$a1, $s0, 2
	bne	$a2, $s7, .LBB18_27
# %bb.25:                               #   in Loop: Header=BB18_24 Depth=3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_32
# %bb.26:                               #   in Loop: Header=BB18_24 Depth=3
	addi.d	$a0, $s0, 2
	b	.LBB18_23
	.p2align	4, , 16
.LBB18_27:                              #   in Loop: Header=BB18_24 Depth=3
	ori	$a3, $zero, 45
	bne	$a1, $a3, .LBB18_22
# %bb.28:                               #   in Loop: Header=BB18_24 Depth=3
	addi.d	$a1, $s0, 3
	bgeu	$a1, $s5, .LBB18_22
# %bb.29:                               #   in Loop: Header=BB18_24 Depth=3
	bgeu	$s4, $a2, .LBB18_31
# %bb.30:                               #   in Loop: Header=BB18_24 Depth=3
	move	$a0, $a1
	b	.LBB18_23
.LBB18_31:                              #   in Loop: Header=BB18_24 Depth=3
	ld.bu	$a2, $a1, 0
	move	$a0, $a1
	bltu	$a2, $s4, .LBB18_23
	.p2align	4, , 16
.LBB18_32:                              #   in Loop: Header=BB18_5 Depth=2
	move	$a0, $s6
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_34
	b	.LBB18_185
	.p2align	4, , 16
.LBB18_33:                              #   in Loop: Header=BB18_5 Depth=2
	move	$a0, $s2
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB18_185
.LBB18_34:                              #   in Loop: Header=BB18_5 Depth=2
	ld.bu	$s4, $s0, 0
	b	.LBB18_37
	.p2align	4, , 16
.LBB18_35:                              #   in Loop: Header=BB18_37 Depth=3
	beq	$s4, $a0, .LBB18_3
.LBB18_36:                              #   in Loop: Header=BB18_37 Depth=3
	move	$fp, $s8
	addi.d	$s8, $s8, 1
	bgeu	$s8, $s5, .LBB18_2
.LBB18_37:                              # %.lr.ph.i107
                                        #   Parent Loop BB18_1 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $fp, 1
	ld.bu	$a1, $fp, 2
	bne	$a0, $s7, .LBB18_40
# %bb.38:                               #   in Loop: Header=BB18_37 Depth=3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_3
# %bb.39:                               #   in Loop: Header=BB18_37 Depth=3
	addi.d	$s8, $fp, 2
	b	.LBB18_36
	.p2align	4, , 16
.LBB18_40:                              #   in Loop: Header=BB18_37 Depth=3
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB18_35
# %bb.41:                               #   in Loop: Header=BB18_37 Depth=3
	addi.d	$a1, $fp, 3
	bgeu	$a1, $s5, .LBB18_35
# %bb.42:                               #   in Loop: Header=BB18_37 Depth=3
	bgeu	$s4, $a0, .LBB18_44
# %bb.43:                               #   in Loop: Header=BB18_37 Depth=3
	move	$s8, $a1
	b	.LBB18_36
.LBB18_44:                              #   in Loop: Header=BB18_37 Depth=3
	ld.bu	$a0, $a1, 0
	move	$s8, $a1
	bltu	$a0, $s4, .LBB18_36
	b	.LBB18_3
.LBB18_45:                              #   in Loop: Header=BB18_5 Depth=2
	move	$a2, $s6
	ld.d	$a0, $s8, 0
	bne	$s0, $a0, .LBB18_19
	b	.LBB18_11
.LBB18_46:                              #   in Loop: Header=BB18_1 Depth=1
	ori	$a0, $zero, 98
	beq	$fp, $a0, .LBB18_95
# %bb.47:                               #   in Loop: Header=BB18_1 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB18_111
# %bb.48:                               # %.thread201
                                        #   in Loop: Header=BB18_1 Depth=1
	bnez	$fp, .LBB18_50
# %bb.49:                               #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB18_50:                              #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s6, $s5, 1
	addi.d	$a2, $s5, 2
	ld.d	$a3, $s8, 8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bltu	$s0, $a3, .LBB18_58
.LBB18_51:                              #   in Loop: Header=BB18_1 Depth=1
	move	$fp, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 63
	beq	$a0, $a1, .LBB18_92
	b	.LBB18_106
.LBB18_52:                              #   in Loop: Header=BB18_5 Depth=2
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s5, 4
	ld.d	$a0, $s8, 0
	bne	$s0, $a0, .LBB18_19
	b	.LBB18_11
.LBB18_53:                              #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 39
	blt	$a1, $a0, .LBB18_62
# %bb.54:                               #   in Loop: Header=BB18_1 Depth=1
	beqz	$a0, .LBB18_126
# %bb.55:                               #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 36
	bne	$a0, $a1, .LBB18_64
# %bb.56:                               #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a0, $s5, 1
	beqz	$a0, .LBB18_212
# %bb.57:                               #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s6, $s5, 1
	move	$a2, $s6
	ld.d	$a3, $s8, 8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bgeu	$s0, $a3, .LBB18_51
.LBB18_58:                              #   in Loop: Header=BB18_1 Depth=1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.bu	$a0, $s5, 0
	ld.bu	$s4, $s0, 0
	beq	$a0, $s2, .LBB18_74
# %bb.59:                               #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 46
	beq	$a0, $a1, .LBB18_73
# %bb.60:                               #   in Loop: Header=BB18_1 Depth=1
	bne	$a0, $s7, .LBB18_88
# %bb.61:                               #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a1, $s6, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	sltu	$fp, $zero, $a0
	b	.LBB18_91
.LBB18_62:                              #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 41
	beq	$a0, $a1, .LBB18_119
# %bb.63:                               #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 40
	beq	$a0, $a1, .LBB18_122
.LBB18_64:                              #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s6, $s5, 1
	bne	$a0, $s2, .LBB18_72
# %bb.65:                               #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a0, $s5, 1
	addi.d	$a0, $a0, -94
	sltui	$a1, $a0, 1
	addi.d	$a2, $s5, 2
	add.d	$a0, $a1, $s5
	ld.bu	$a0, $a0, 1
	masknez	$a3, $s6, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a3
	b	.LBB18_67
	.p2align	4, , 16
.LBB18_66:                              #   in Loop: Header=BB18_67 Depth=2
	ld.bu	$a0, $fp, 1
	sltui	$a0, $a0, 1
	addi.d	$a2, $fp, 2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$fp, $a0, $a2
	ld.bu	$a0, $fp, 0
	beq	$a0, $s3, .LBB18_71
.LBB18_67:                              #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB18_69
# %bb.68:                               #   in Loop: Header=BB18_67 Depth=2
	addi.d	$a1, $fp, 1
	beq	$a0, $s7, .LBB18_66
	b	.LBB18_70
	.p2align	4, , 16
.LBB18_69:                              #   in Loop: Header=BB18_67 Depth=2
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	addi.d	$a1, $fp, 1
	beq	$a0, $s7, .LBB18_66
.LBB18_70:                              #   in Loop: Header=BB18_67 Depth=2
	move	$fp, $a1
	ld.bu	$a0, $fp, 0
	bne	$a0, $s3, .LBB18_67
.LBB18_71:                              #   in Loop: Header=BB18_1 Depth=1
	addi.d	$a2, $fp, 1
	ld.d	$a3, $s8, 8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bltu	$s0, $a3, .LBB18_58
	b	.LBB18_51
.LBB18_72:                              #   in Loop: Header=BB18_1 Depth=1
	move	$a2, $s6
	ld.d	$a3, $s8, 8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bgeu	$s0, $a3, .LBB18_51
	b	.LBB18_58
.LBB18_73:                              #   in Loop: Header=BB18_1 Depth=1
	ori	$fp, $zero, 1
	b	.LBB18_91
.LBB18_74:                              #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a0, $s5, 1
	addi.d	$s0, $a2, -1
	addi.d	$a1, $a0, -94
	sltui	$fp, $a1, 1
	masknez	$a0, $s5, $fp
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	maskeqz	$a2, $s6, $fp
	or	$s6, $a2, $a0
	addi.d	$a0, $s6, 1
	bgeu	$a0, $s0, .LBB18_89
# %bb.75:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB18_1 Depth=1
	sltu	$s2, $zero, $a1
	b	.LBB18_78
.LBB18_76:                              #   in Loop: Header=BB18_78 Depth=2
	beq	$s4, $a2, .LBB18_86
.LBB18_77:                              #   in Loop: Header=BB18_78 Depth=2
	move	$s6, $a0
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s0, .LBB18_87
.LBB18_78:                              # %.lr.ph.i.i
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s6, 1
	ld.bu	$a1, $s6, 2
	bne	$a2, $s7, .LBB18_81
# %bb.79:                               #   in Loop: Header=BB18_78 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_86
# %bb.80:                               #   in Loop: Header=BB18_78 Depth=2
	addi.d	$a0, $s6, 2
	b	.LBB18_77
	.p2align	4, , 16
.LBB18_81:                              #   in Loop: Header=BB18_78 Depth=2
	ori	$a3, $zero, 45
	bne	$a1, $a3, .LBB18_76
# %bb.82:                               #   in Loop: Header=BB18_78 Depth=2
	addi.d	$a1, $s6, 3
	bgeu	$a1, $s0, .LBB18_76
# %bb.83:                               #   in Loop: Header=BB18_78 Depth=2
	bgeu	$s4, $a2, .LBB18_85
# %bb.84:                               #   in Loop: Header=BB18_78 Depth=2
	move	$a0, $a1
	b	.LBB18_77
.LBB18_85:                              #   in Loop: Header=BB18_78 Depth=2
	ld.bu	$a2, $a1, 0
	move	$a0, $a1
	bltu	$a2, $s4, .LBB18_77
.LBB18_86:                              #   in Loop: Header=BB18_1 Depth=1
	move	$fp, $s2
.LBB18_87:                              #   in Loop: Header=BB18_1 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ori	$s2, $zero, 91
	b	.LBB18_90
.LBB18_88:                              #   in Loop: Header=BB18_1 Depth=1
	xor	$a0, $s4, $a0
	sltui	$fp, $a0, 1
	b	.LBB18_91
.LBB18_89:                              #   in Loop: Header=BB18_1 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
.LBB18_90:                              # %singlematch.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
.LBB18_91:                              # %singlematch.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 63
	bne	$a0, $a1, .LBB18_106
.LBB18_92:                              #   in Loop: Header=BB18_1 Depth=1
	beqz	$fp, .LBB18_94
# %bb.93:                               #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $a0, 1
	move	$a0, $s8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_186
.LBB18_94:                              #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	move	$s5, $a2
	ld.bu	$a0, $a2, 0
	beq	$a0, $s7, .LBB18_5
	b	.LBB18_53
.LBB18_95:                              #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a0, $s5, 2
	beqz	$a0, .LBB18_97
# %bb.96:                               #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a1, $s5, 3
	bnez	$a1, .LBB18_98
.LBB18_97:                              #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 2
.LBB18_98:                              #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a1, $s0, 0
	bne	$a1, $a0, .LBB18_185
# %bb.99:                               #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a2, $s8, 8
	addi.d	$a1, $s0, 1
	bgeu	$a1, $a2, .LBB18_185
# %bb.100:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.bu	$a3, $s5, 3
	ori	$a4, $zero, 1
	b	.LBB18_103
	.p2align	4, , 16
.LBB18_101:                             #   in Loop: Header=BB18_103 Depth=2
	xor	$a5, $a5, $a0
	sltui	$a5, $a5, 1
	add.d	$a4, $a4, $a5
.LBB18_102:                             #   in Loop: Header=BB18_103 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB18_185
.LBB18_103:                             # %.lr.ph.i
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a1, 0
	bne	$a5, $a3, .LBB18_101
# %bb.104:                              #   in Loop: Header=BB18_103 Depth=2
	addi.w	$a4, $a4, -1
	bnez	$a4, .LBB18_102
# %bb.105:                              #   in Loop: Header=BB18_1 Depth=1
	addi.d	$s0, $a1, 1
	addi.d	$a2, $s5, 4
	b	.LBB18_1
.LBB18_106:                             # %singlematch.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 42
	beq	$a0, $a1, .LBB18_187
# %bb.107:                              # %singlematch.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB18_135
# %bb.108:                              # %singlematch.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB18_160
# %bb.109:                              #   in Loop: Header=BB18_1 Depth=1
	beqz	$fp, .LBB18_185
# %bb.110:                              #   in Loop: Header=BB18_1 Depth=1
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB18_1
.LBB18_111:                             #   in Loop: Header=BB18_1 Depth=1
	ori	$a0, $zero, 49
	bltu	$fp, $a0, .LBB18_114
# %bb.112:                              #   in Loop: Header=BB18_1 Depth=1
	ld.w	$a1, $s8, 24
	addi.d	$a0, $fp, -49
	bge	$a0, $a1, .LBB18_114
# %bb.113:                              #   in Loop: Header=BB18_1 Depth=1
	alsl.d	$a1, $a0, $s8, 4
	ld.d	$a1, $a1, 40
	addi.w	$a2, $zero, -1
	bne	$a1, $a2, .LBB18_115
.LBB18_114:                             #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB18_115:                             # %check_capture.exit.i
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a1, $s8, 8
	ld.d	$s2, $a0, 8
	sub.d	$a1, $a1, $s0
	bltu	$a1, $s2, .LBB18_185
# %bb.116:                              #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	bnez	$a1, .LBB18_186
# %bb.117:                              #   in Loop: Header=BB18_1 Depth=1
	beqz	$s0, .LBB18_186
# %bb.118:                              #   in Loop: Header=BB18_1 Depth=1
	add.d	$s0, $s0, $s2
	addi.d	$a2, $s5, 2
	ori	$s2, $zero, 91
	b	.LBB18_1
.LBB18_119:
	ld.wu	$a0, $s8, 24
	addi.d	$s1, $s5, 1
	slli.d	$a1, $a0, 4
	addi.d	$a1, $a1, 24
	addi.w	$fp, $zero, -1
	.p2align	4, , 16
.LBB18_120:                             # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a0, 0
	blez	$a2, .LBB18_127
# %bb.121:                              #   in Loop: Header=BB18_120 Depth=1
	ldx.d	$a2, $s8, $a1
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -16
	bne	$a2, $fp, .LBB18_120
	b	.LBB18_128
.LBB18_122:
	ld.bu	$a0, $s5, 1
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB18_130
# %bb.123:
	ld.w	$fp, $s8, 24
	ori	$a0, $zero, 32
	addi.d	$s1, $s5, 2
	blt	$fp, $a0, .LBB18_125
# %bb.124:
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB18_125:
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a2, 4
	slli.d	$a1, $fp, 4
	stx.d	$s0, $a2, $a1
	addi.w	$a1, $zero, -2
	b	.LBB18_133
.LBB18_126:
	move	$a0, $s0
	b	.LBB18_186
.LBB18_127:
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB18_128:                             # %capture_to_close.exit
	slli.d	$a1, $a0, 4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a1
	alsl.d	$s0, $a0, $a3, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a2
	st.d	$a0, $s0, 8
	move	$a0, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_186
# %bb.129:
	move	$a0, $zero
	st.d	$fp, $s0, 8
	b	.LBB18_186
.LBB18_130:
	ld.w	$fp, $s8, 24
	ori	$a0, $zero, 32
	addi.d	$s1, $s5, 1
	blt	$fp, $a0, .LBB18_132
# %bb.131:
	ld.d	$a0, $s8, 16
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB18_132:
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a2, 4
	slli.d	$a1, $fp, 4
	stx.d	$s0, $a2, $a1
	addi.w	$a1, $zero, -1
.LBB18_133:
	st.d	$a1, $a0, 8
	addi.d	$a0, $fp, 1
	st.w	$a0, $s8, 24
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_186
# %bb.134:
	ld.w	$a1, $s8, 24
	move	$a0, $zero
	addi.d	$a1, $a1, -1
	st.w	$a1, $s8, 24
	b	.LBB18_186
.LBB18_135:
	beqz	$fp, .LBB18_185
# %bb.136:
	addi.d	$s1, $s0, 1
	bgeu	$s1, $a3, .LBB18_218
# %bb.137:                              # %.lr.ph278
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $zero
	ld.bu	$s4, $s5, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $fp, -1
	nor	$a0, $s0, $zero
	add.d	$s7, $a0, $a3
	ori	$s0, $zero, 91
	ori	$s8, $zero, 37
	b	.LBB18_140
.LBB18_138:                             #   in Loop: Header=BB18_140 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_220
.LBB18_139:                             # %singlematch.exit173.thread
                                        #   in Loop: Header=BB18_140 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s7, .LBB18_219
.LBB18_140:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_148 Depth 2
	ldx.bu	$s2, $s1, $s3
	beq	$s4, $s0, .LBB18_144
# %bb.141:                              #   in Loop: Header=BB18_140 Depth=1
	ori	$a0, $zero, 46
	beq	$s4, $a0, .LBB18_139
# %bb.142:                              #   in Loop: Header=BB18_140 Depth=1
	beq	$s4, $s8, .LBB18_138
# %bb.143:                              #   in Loop: Header=BB18_140 Depth=1
	beq	$s2, $s4, .LBB18_139
	b	.LBB18_220
.LBB18_144:                             #   in Loop: Header=BB18_140 Depth=1
	ld.bu	$a1, $s5, 1
	addi.d	$a2, $a1, -94
	sltui	$s0, $a2, 1
	masknez	$a0, $s5, $s0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	maskeqz	$a3, $a3, $s0
	or	$fp, $a3, $a0
	addi.d	$a0, $fp, 1
	bgeu	$a0, $s6, .LBB18_157
# %bb.145:                              # %.lr.ph.i.i167.preheader
                                        #   in Loop: Header=BB18_140 Depth=1
	sltu	$a1, $zero, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB18_148
.LBB18_146:                             #   in Loop: Header=BB18_148 Depth=2
	beq	$s2, $a2, .LBB18_156
.LBB18_147:                             #   in Loop: Header=BB18_148 Depth=2
	move	$fp, $a0
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s6, .LBB18_158
.LBB18_148:                             # %.lr.ph.i.i167
                                        #   Parent Loop BB18_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $fp, 1
	ld.bu	$a1, $fp, 2
	bne	$a2, $s8, .LBB18_151
# %bb.149:                              #   in Loop: Header=BB18_148 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_156
# %bb.150:                              #   in Loop: Header=BB18_148 Depth=2
	addi.d	$a0, $fp, 2
	b	.LBB18_147
.LBB18_151:                             #   in Loop: Header=BB18_148 Depth=2
	ori	$a3, $zero, 45
	bne	$a1, $a3, .LBB18_146
# %bb.152:                              #   in Loop: Header=BB18_148 Depth=2
	addi.d	$a1, $fp, 3
	bgeu	$a1, $s6, .LBB18_146
# %bb.153:                              #   in Loop: Header=BB18_148 Depth=2
	bgeu	$s2, $a2, .LBB18_155
# %bb.154:                              #   in Loop: Header=BB18_148 Depth=2
	move	$a0, $a1
	b	.LBB18_147
.LBB18_155:                             #   in Loop: Header=BB18_148 Depth=2
	ld.bu	$a2, $a1, 0
	move	$a0, $a1
	bltu	$a2, $s2, .LBB18_147
.LBB18_156:                             #   in Loop: Header=BB18_140 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB18_159
.LBB18_157:                             # %singlematch.exit173
                                        #   in Loop: Header=BB18_140 Depth=1
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ori	$s0, $zero, 91
	ori	$a0, $zero, 94
	beq	$a1, $a0, .LBB18_139
	b	.LBB18_220
.LBB18_158:                             #   in Loop: Header=BB18_140 Depth=1
	move	$a0, $s0
.LBB18_159:                             # %matchbracketclass.exit.i162.loopexit
                                        #   in Loop: Header=BB18_140 Depth=1
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ori	$s0, $zero, 91
	bnez	$a0, .LBB18_139
	b	.LBB18_220
.LBB18_160:                             # %.preheader223
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s1, $fp, 1
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_186
# %bb.161:                              # %.lr.ph
	move	$s7, $s6
	addi.d	$s3, $fp, -1
	ori	$s4, $zero, 91
	ori	$s6, $zero, 37
	ori	$fp, $zero, 45
	b	.LBB18_164
.LBB18_162:                             #   in Loop: Header=BB18_164 Depth=1
	ld.bu	$a1, $s7, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_185
.LBB18_163:                             # %singlematch.exit187.thread
                                        #   in Loop: Header=BB18_164 Depth=1
	addi.d	$s0, $s0, 1
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_186
.LBB18_164:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_173 Depth 2
	ld.d	$a0, $s8, 8
	bgeu	$s0, $a0, .LBB18_185
# %bb.165:                              #   in Loop: Header=BB18_164 Depth=1
	ld.bu	$a0, $s5, 0
	ld.bu	$s2, $s0, 0
	beq	$a0, $s4, .LBB18_169
# %bb.166:                              #   in Loop: Header=BB18_164 Depth=1
	ori	$a1, $zero, 46
	beq	$a0, $a1, .LBB18_163
# %bb.167:                              #   in Loop: Header=BB18_164 Depth=1
	beq	$a0, $s6, .LBB18_162
# %bb.168:                              #   in Loop: Header=BB18_164 Depth=1
	beq	$s2, $a0, .LBB18_163
	b	.LBB18_185
.LBB18_169:                             #   in Loop: Header=BB18_164 Depth=1
	move	$s4, $s0
	ld.bu	$a1, $s5, 1
	addi.d	$a2, $a1, -94
	sltui	$s0, $a2, 1
	masknez	$a0, $s5, $s0
	maskeqz	$a3, $s7, $s0
	or	$s8, $a3, $a0
	addi.d	$a0, $s8, 1
	bgeu	$a0, $s3, .LBB18_182
# %bb.170:                              # %.lr.ph.i.i181.preheader
                                        #   in Loop: Header=BB18_164 Depth=1
	sltu	$a1, $zero, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB18_173
.LBB18_171:                             #   in Loop: Header=BB18_173 Depth=2
	beq	$s2, $a2, .LBB18_181
.LBB18_172:                             #   in Loop: Header=BB18_173 Depth=2
	move	$s8, $a0
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s3, .LBB18_183
.LBB18_173:                             # %.lr.ph.i.i181
                                        #   Parent Loop BB18_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s8, 1
	ld.bu	$a1, $s8, 2
	bne	$a2, $s6, .LBB18_176
# %bb.174:                              #   in Loop: Header=BB18_173 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_181
# %bb.175:                              #   in Loop: Header=BB18_173 Depth=2
	addi.d	$a0, $s8, 2
	b	.LBB18_172
.LBB18_176:                             #   in Loop: Header=BB18_173 Depth=2
	bne	$a1, $fp, .LBB18_171
# %bb.177:                              #   in Loop: Header=BB18_173 Depth=2
	addi.d	$a1, $s8, 3
	bgeu	$a1, $s3, .LBB18_171
# %bb.178:                              #   in Loop: Header=BB18_173 Depth=2
	bgeu	$s2, $a2, .LBB18_180
# %bb.179:                              #   in Loop: Header=BB18_173 Depth=2
	move	$a0, $a1
	b	.LBB18_172
.LBB18_180:                             #   in Loop: Header=BB18_173 Depth=2
	ld.bu	$a2, $a1, 0
	move	$a0, $a1
	bltu	$a2, $s2, .LBB18_172
.LBB18_181:                             #   in Loop: Header=BB18_164 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB18_184
.LBB18_182:                             # %singlematch.exit187
                                        #   in Loop: Header=BB18_164 Depth=1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$s0, $s4
	ori	$s4, $zero, 91
	ori	$a0, $zero, 94
	beq	$a1, $a0, .LBB18_163
	b	.LBB18_185
.LBB18_183:                             #   in Loop: Header=BB18_164 Depth=1
	move	$a0, $s0
.LBB18_184:                             # %matchbracketclass.exit.i176.loopexit
                                        #   in Loop: Header=BB18_164 Depth=1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$s0, $s4
	ori	$s4, $zero, 91
	bnez	$a0, .LBB18_163
.LBB18_185:
	move	$a0, $zero
.LBB18_186:                             # %start_capture.exit
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
.LBB18_187:                             # %.preheader
	bgeu	$s0, $a3, .LBB18_211
# %bb.188:                              # %.lr.ph282
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $zero
	ld.bu	$s2, $s5, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $s7, -1
	sub.d	$s4, $a3, $s0
	ori	$fp, $zero, 91
	ori	$s8, $zero, 37
	b	.LBB18_191
.LBB18_189:                             #   in Loop: Header=BB18_191 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_214
.LBB18_190:                             # %singlematch.exit159.thread
                                        #   in Loop: Header=BB18_191 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s4, .LBB18_213
.LBB18_191:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_199 Depth 2
	ldx.bu	$s1, $s0, $s3
	beq	$s2, $fp, .LBB18_195
# %bb.192:                              #   in Loop: Header=BB18_191 Depth=1
	ori	$a0, $zero, 46
	beq	$s2, $a0, .LBB18_190
# %bb.193:                              #   in Loop: Header=BB18_191 Depth=1
	beq	$s2, $s8, .LBB18_189
# %bb.194:                              #   in Loop: Header=BB18_191 Depth=1
	beq	$s1, $s2, .LBB18_190
	b	.LBB18_214
.LBB18_195:                             #   in Loop: Header=BB18_191 Depth=1
	ld.bu	$a1, $s5, 1
	addi.d	$a2, $a1, -94
	sltui	$s0, $a2, 1
	masknez	$a0, $s5, $s0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	maskeqz	$a3, $a3, $s0
	or	$fp, $a3, $a0
	addi.d	$a0, $fp, 1
	bgeu	$a0, $s6, .LBB18_208
# %bb.196:                              # %.lr.ph.i.i153.preheader
                                        #   in Loop: Header=BB18_191 Depth=1
	sltu	$a1, $zero, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	b	.LBB18_199
.LBB18_197:                             #   in Loop: Header=BB18_199 Depth=2
	beq	$s1, $a2, .LBB18_207
.LBB18_198:                             #   in Loop: Header=BB18_199 Depth=2
	move	$fp, $a0
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s6, .LBB18_209
.LBB18_199:                             # %.lr.ph.i.i153
                                        #   Parent Loop BB18_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $fp, 1
	ld.bu	$a1, $fp, 2
	bne	$a2, $s8, .LBB18_202
# %bb.200:                              #   in Loop: Header=BB18_199 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(match_class)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_207
# %bb.201:                              #   in Loop: Header=BB18_199 Depth=2
	addi.d	$a0, $fp, 2
	b	.LBB18_198
.LBB18_202:                             #   in Loop: Header=BB18_199 Depth=2
	ori	$a3, $zero, 45
	bne	$a1, $a3, .LBB18_197
# %bb.203:                              #   in Loop: Header=BB18_199 Depth=2
	addi.d	$a1, $fp, 3
	bgeu	$a1, $s6, .LBB18_197
# %bb.204:                              #   in Loop: Header=BB18_199 Depth=2
	bgeu	$s1, $a2, .LBB18_206
# %bb.205:                              #   in Loop: Header=BB18_199 Depth=2
	move	$a0, $a1
	b	.LBB18_198
.LBB18_206:                             #   in Loop: Header=BB18_199 Depth=2
	ld.bu	$a2, $a1, 0
	move	$a0, $a1
	bltu	$a2, $s1, .LBB18_198
.LBB18_207:                             #   in Loop: Header=BB18_191 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB18_210
.LBB18_208:                             # %singlematch.exit159
                                        #   in Loop: Header=BB18_191 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ori	$fp, $zero, 91
	ori	$a0, $zero, 94
	beq	$a1, $a0, .LBB18_190
	b	.LBB18_214
.LBB18_209:                             #   in Loop: Header=BB18_191 Depth=1
	move	$a0, $s0
.LBB18_210:                             # %matchbracketclass.exit.i148.loopexit
                                        #   in Loop: Header=BB18_191 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ori	$fp, $zero, 91
	bnez	$a0, .LBB18_190
	b	.LBB18_214
.LBB18_211:
	move	$s3, $zero
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	b	.LBB18_215
.LBB18_212:
	ld.d	$a0, $s8, 8
	xor	$a0, $s0, $a0
	sltui	$a0, $a0, 1
	maskeqz	$a0, $s0, $a0
	b	.LBB18_186
.LBB18_213:
	move	$s3, $s4
.LBB18_214:                             # %.critedge.i
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
.LBB18_215:                             # %.critedge.i
	addi.d	$s1, $s7, 1
	.p2align	4, , 16
.LBB18_216:                             # =>This Inner Loop Header: Depth=1
	bltz	$s3, .LBB18_185
# %bb.217:                              #   in Loop: Header=BB18_216 Depth=1
	add.d	$a1, $s0, $s3
	move	$a0, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	beqz	$a0, .LBB18_216
	b	.LBB18_186
.LBB18_218:
	move	$s3, $zero
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	b	.LBB18_221
.LBB18_219:
	move	$s3, $s7
.LBB18_220:                             # %.critedge.i133
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
.LBB18_221:                             # %.critedge.i133
	addi.d	$s0, $fp, 1
.LBB18_222:                             # =>This Inner Loop Header: Depth=1
	bltz	$s3, .LBB18_185
# %bb.223:                              #   in Loop: Header=BB18_222 Depth=1
	add.d	$a1, $s1, $s3
	move	$a0, $s8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	beqz	$a0, .LBB18_222
	b	.LBB18_186
.Lfunc_end18:
	.size	match, .Lfunc_end18-match
                                        # -- End function
	.p2align	5                               # -- Begin function match_class
	.type	match_class,@function
match_class:                            # @match_class
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -97
	ori	$a1, $zero, 25
	bltu	$a1, $a0, .LBB19_8
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI19_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI19_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB19_2:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$s0, $a1, 1024
	b	.LBB19_14
.LBB19_3:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$s0, $a1, 2048
	b	.LBB19_14
.LBB19_4:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	lu12i.w	$a2, 2
	b	.LBB19_13
.LBB19_5:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$s0, $a1, 2
	b	.LBB19_14
.LBB19_6:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$s0, $a1, 256
	b	.LBB19_14
.LBB19_7:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$s0, $a1, 8
	b	.LBB19_14
.LBB19_8:
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	b	.LBB19_15
.LBB19_9:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$s0, $a1, 512
	b	.LBB19_14
.LBB19_10:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$s0, $a1, 4
	b	.LBB19_14
.LBB19_11:
	sltui	$s0, $s0, 1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	b	.LBB19_14
.LBB19_12:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s0, 1
	ldx.hu	$a1, $a1, $a2
	lu12i.w	$a2, 1
.LBB19_13:
	and	$s0, $a1, $a2
.LBB19_14:
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 512
	sltui	$a0, $a0, 1
	sltui	$a1, $s0, 1
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
.LBB19_15:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end19:
	.size	match_class, .Lfunc_end19-match_class
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI19_0:
	.word	.LBB19_2-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_5-.LJTI19_0
	.word	.LBB19_3-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_9-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_10-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_4-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_6-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_7-.LJTI19_0
	.word	.LBB19_12-.LJTI19_0
	.word	.LBB19_8-.LJTI19_0
	.word	.LBB19_11-.LJTI19_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function push_onecapture
	.type	push_onecapture,@function
push_onecapture:                        # @push_onecapture
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a4, $a0, 24
	bge	$a1, $a4, .LBB20_5
# %bb.1:
	alsl.d	$a1, $a1, $a0, 4
	ld.d	$fp, $a1, 40
	addi.w	$a2, $zero, -2
	addi.d	$s0, $a1, 32
	beq	$fp, $a2, .LBB20_9
# %bb.2:
	addi.w	$a1, $zero, -1
	bne	$fp, $a1, .LBB20_4
# %bb.3:
	ld.d	$a2, $a0, 16
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB20_4:
	ld.d	$a0, $a0, 16
	ld.d	$a1, $s0, 0
	move	$a2, $fp
	b	.LBB20_8
.LBB20_5:
	ld.d	$a0, $a0, 16
	beqz	$a1, .LBB20_7
# %bb.6:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(luaL_error)
	jr	$t8
.LBB20_7:
	sub.d	$a3, $a3, $a2
	move	$a1, $a2
	move	$a2, $a3
.LBB20_8:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lua_pushlstring)
	jr	$t8
.LBB20_9:
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a0, 16
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lua_pushinteger)
	jr	$t8
.Lfunc_end20:
	.size	push_onecapture, .Lfunc_end20-push_onecapture
                                        # -- End function
	.p2align	5                               # -- Begin function gmatch_aux
	.type	gmatch_aux,@function
gmatch_aux:                             # @gmatch_aux
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
	move	$fp, $a0
	lu12i.w	$s0, -3
	ori	$a1, $s0, 2285
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(lua_tolstring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $s0, 2284
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_tolstring)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 16
	move	$s3, $a0
	st.d	$fp, $sp, 40
	st.d	$s1, $sp, 24
	add.d	$a0, $s1, $s4
	st.d	$a0, $sp, 32
	ori	$s2, $s0, 2283
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(lua_tointeger)
	jirl	$ra, $ra, 0
	bltu	$s4, $a0, .LBB21_4
# %bb.1:                                # %.lr.ph
	add.d	$s4, $s1, $a0
	move	$s0, $s4
	.p2align	4, , 16
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $sp, 48
	addi.d	$a0, $sp, 24
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(match)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_6
# %bb.3:                                # %push_captures.exit.thread
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $sp, 32
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 1
	bgeu	$a0, $s0, .LBB21_2
.LBB21_4:
	move	$a0, $zero
.LBB21_5:                               # %push_captures.exit.thread29
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
.LBB21_6:
	sub.d	$a1, $a0, $s1
	move	$s1, $a0
	xor	$a0, $s0, $a0
	sltui	$a0, $a0, 1
	add.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(lua_replace)
	jirl	$ra, $ra, 0
	ld.w	$s2, $sp, 48
	sltui	$a0, $s2, 1
	sltu	$a1, $zero, $s0
	masknez	$a2, $s2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a2, $a0, $a2
	ld.d	$a0, $sp, 40
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s2, $a1
	or	$fp, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaL_checkstack)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	blez	$fp, .LBB21_5
# %bb.7:                                # %.lr.ph.i.preheader
	ld.w	$a0, $sp, 48
	addi.w	$s3, $zero, -1
	blez	$a0, .LBB21_11
# %bb.8:
	ld.d	$s0, $sp, 64
	beq	$s0, $s3, .LBB21_12
# %bb.9:
	addi.w	$a0, $zero, -2
	bne	$s0, $a0, .LBB21_13
# %bb.10:
	ld.d	$a1, $sp, 56
	ld.d	$a2, $sp, 24
	ld.d	$a0, $sp, 40
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	b	.LBB21_15
.LBB21_11:
	ld.d	$a0, $sp, 40
	sub.d	$a2, $s1, $s4
	move	$a1, $s0
	b	.LBB21_14
.LBB21_12:
	ld.d	$a0, $sp, 40
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB21_13:
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 56
	move	$a2, $s0
.LBB21_14:                              # %push_onecapture.exit.peel
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
.LBB21_15:                              # %push_onecapture.exit.peel
	ori	$a0, $zero, 1
	beq	$fp, $a0, .LBB21_5
# %bb.16:                               # %.lr.ph.i.preheader57
	ori	$s4, $zero, 1
	addi.d	$s5, $sp, 72
	addi.w	$s6, $zero, -2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s0, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s1, $a0, %pc_lo12(.L.str.26)
	b	.LBB21_19
	.p2align	4, , 16
.LBB21_17:                              #   in Loop: Header=BB21_19 Depth=1
	ld.d	$a0, $sp, 40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB21_18:                              # %push_onecapture.exit
                                        #   in Loop: Header=BB21_19 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 16
	beq	$fp, $s4, .LBB21_25
.LBB21_19:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 48
	bge	$s4, $a0, .LBB21_17
# %bb.20:                               #   in Loop: Header=BB21_19 Depth=1
	ld.d	$s2, $s5, 8
	beq	$s2, $s6, .LBB21_24
# %bb.21:                               #   in Loop: Header=BB21_19 Depth=1
	bne	$s2, $s3, .LBB21_23
# %bb.22:                               #   in Loop: Header=BB21_19 Depth=1
	ld.d	$a0, $sp, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB21_23:                              #   in Loop: Header=BB21_19 Depth=1
	ld.d	$a0, $sp, 40
	ld.d	$a1, $s5, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	b	.LBB21_18
.LBB21_24:                              #   in Loop: Header=BB21_19 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $sp, 24
	ld.d	$a0, $sp, 40
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	b	.LBB21_18
.LBB21_25:
	move	$a0, $fp
	b	.LBB21_5
.Lfunc_end21:
	.size	gmatch_aux, .Lfunc_end21-gmatch_aux
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string"
	.size	.L.str, 7

	.type	strlib,@object                  # @strlib
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
strlib:
	.dword	.L.str.3
	.dword	str_byte
	.dword	.L.str.4
	.dword	str_char
	.dword	.L.str.5
	.dword	str_dump
	.dword	.L.str.6
	.dword	str_find
	.dword	.L.str.7
	.dword	str_format
	.dword	.L.str.2
	.dword	gfind_nodef
	.dword	.L.str.1
	.dword	gmatch
	.dword	.L.str.8
	.dword	str_gsub
	.dword	.L.str.9
	.dword	str_len
	.dword	.L.str.10
	.dword	str_lower
	.dword	.L.str.11
	.dword	str_match
	.dword	.L.str.12
	.dword	str_rep
	.dword	.L.str.13
	.dword	str_reverse
	.dword	.L.str.14
	.dword	str_sub
	.dword	.L.str.15
	.dword	str_upper
	.space	16
	.size	strlib, 256

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gmatch"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"gfind"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"byte"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"char"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"dump"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"find"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"format"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"gsub"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"len"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"lower"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"match"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"rep"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"reverse"
	.size	.L.str.13, 8

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"sub"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"upper"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"string slice too long"
	.size	.L.str.16, 22

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"invalid value"
	.size	.L.str.17, 14

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"unable to dump given function"
	.size	.L.str.18, 30

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"^$*+?.([%-"
	.size	.L.str.19, 11

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"missing '[' after '%%f' in pattern"
	.size	.L.str.20, 35

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"too many captures"
	.size	.L.str.21, 18

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"invalid pattern capture"
	.size	.L.str.22, 24

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"unbalanced pattern"
	.size	.L.str.23, 19

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"malformed pattern (ends with '%%')"
	.size	.L.str.24, 35

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"malformed pattern (missing ']')"
	.size	.L.str.25, 32

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"invalid capture index"
	.size	.L.str.26, 22

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"unfinished capture"
	.size	.L.str.27, 19

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"invalid option '%%%c' to 'format'"
	.size	.L.str.28, 34

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"invalid format (repeated flags)"
	.size	.L.str.30, 32

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"invalid format (width or precision too long)"
	.size	.L.str.31, 45

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\\r"
	.size	.L.str.33, 3

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\\000"
	.size	.L.str.34, 5

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"'string.gfind' was renamed to 'string.gmatch'"
	.size	.L.str.35, 46

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"string/function/table expected"
	.size	.L.str.36, 31

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"invalid replacement value (a %s)"
	.size	.L.str.37, 33

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.space	1
	.size	.L.str.38, 1

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"__index"
	.size	.L.str.39, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym str_byte
	.addrsig_sym str_char
	.addrsig_sym str_dump
	.addrsig_sym str_find
	.addrsig_sym str_format
	.addrsig_sym gfind_nodef
	.addrsig_sym gmatch
	.addrsig_sym str_gsub
	.addrsig_sym str_len
	.addrsig_sym str_lower
	.addrsig_sym str_match
	.addrsig_sym str_rep
	.addrsig_sym str_reverse
	.addrsig_sym str_sub
	.addrsig_sym str_upper
	.addrsig_sym writer
	.addrsig_sym gmatch_aux
	.addrsig_sym strlib
