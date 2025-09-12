	.file	"lbaselib.c"
	.text
	.globl	luaopen_base                    # -- Begin function luaopen_base
	.p2align	5
	.type	luaopen_base,@function
luaopen_base:                           # @luaopen_base
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, -3
	ori	$s0, $a0, 2286
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(base_funcs)
	addi.d	$a2, $a0, %pc_lo12(base_funcs)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_register)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ipairsaux)
	addi.d	$a1, $a0, %pc_lo12(ipairsaux)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_pushcclosure)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(luaB_ipairs)
	addi.d	$a1, $a0, %pc_lo12(luaB_ipairs)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushcclosure)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	addi.w	$s1, $zero, -2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(luaB_next)
	addi.d	$a1, $a0, %pc_lo12(luaB_next)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_pushcclosure)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(luaB_pairs)
	addi.d	$a1, $a0, %pc_lo12(luaB_pairs)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushcclosure)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_createtable)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setmetatable)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(luaB_newproxy)
	addi.d	$a1, $a0, %pc_lo12(luaB_newproxy)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushcclosure)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(co_funcs)
	addi.d	$a2, $a0, %pc_lo12(co_funcs)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_register)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	luaopen_base, .Lfunc_end0-luaopen_base
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_ipairs
	.type	luaB_ipairs,@function
luaB_ipairs:                            # @luaB_ipairs
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$a1, $a0, 2285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	luaB_ipairs, .Lfunc_end1-luaB_ipairs
                                        # -- End function
	.p2align	5                               # -- Begin function ipairsaux
	.type	ipairsaux,@function
ipairsaux:                              # @ipairsaux
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(lua_rawgeti)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	ipairsaux, .Lfunc_end2-ipairsaux
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_pairs
	.type	luaB_pairs,@function
luaB_pairs:                             # @luaB_pairs
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$a1, $a0, 2285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	luaB_pairs, .Lfunc_end3-luaB_pairs
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_next
	.type	luaB_next,@function
luaB_next:                              # @luaB_next
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$s0, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_next)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
.LBB4_2:
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	luaB_next, .Lfunc_end4-luaB_next
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_newproxy
	.type	luaB_newproxy,@function
luaB_newproxy:                          # @luaB_newproxy
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_newuserdata)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_8
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB5_3
# %bb.2:
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_createtable)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$a1, $a0, 2285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_rawset)
	jirl	$ra, $ra, 0
	b	.LBB5_7
.LBB5_3:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getmetatable)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_5
# %bb.4:
	lu12i.w	$a0, -3
	ori	$a1, $a0, 2285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_rawget)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB5_6
.LBB5_5:                                # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a2, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB5_6:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getmetatable)
	jirl	$ra, $ra, 0
.LBB5_7:
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_setmetatable)
	jirl	$ra, $ra, 0
.LBB5_8:
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	luaB_newproxy, .Lfunc_end5-luaB_newproxy
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_assert
	.type	luaB_assert,@function
luaB_assert:                            # @luaB_assert
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_2
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(lua_gettop)
	jr	$t8
.LBB6_2:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaL_optlstring)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(luaL_error)
	jr	$t8
.Lfunc_end6:
	.size	luaB_assert, .Lfunc_end6-luaB_assert
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_collectgarbage
	.type	luaB_collectgarbage,@function
luaB_collectgarbage:                    # @luaB_collectgarbage
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %pc_hi20(luaB_collectgarbage.opts)
	addi.d	$a3, $a0, %pc_lo12(luaB_collectgarbage.opts)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkoption)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s0, 2
	pcalau12i	$a2, %pc_hi20(luaB_collectgarbage.optsnum)
	addi.d	$a2, $a2, %pc_lo12(luaB_collectgarbage.optsnum)
	ldx.w	$s1, $a2, $a1
	addi.w	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_gc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	move	$s0, $a0
	beq	$s1, $a1, .LBB7_3
# %bb.1:
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB7_4
# %bb.2:
	ori	$a1, $zero, 4
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_gc)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	lu52i.d	$a0, $zero, 1013
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa1, $fa0
	b	.LBB7_5
.LBB7_3:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	b	.LBB7_6
.LBB7_4:
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
.LBB7_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
.LBB7_6:
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	luaB_collectgarbage, .Lfunc_end7-luaB_collectgarbage
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_dofile
	.type	luaB_dofile,@function
luaB_dofile:                            # @luaB_dofile
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaL_optlstring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_loadfile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_error)
	jirl	$ra, $ra, 0
.LBB8_2:
	addi.w	$a2, $zero, -1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_call)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	sub.w	$a0, $a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	luaB_dofile, .Lfunc_end8-luaB_dofile
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_error
	.type	luaB_error,@function
luaB_error:                             # @luaB_error
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_isstring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_3
# %bb.1:
	addi.w	$a1, $s0, 0
	blez	$a1, .LBB9_3
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_where)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_concat)
	jirl	$ra, $ra, 0
.LBB9_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lua_error)
	jr	$t8
.Lfunc_end9:
	.size	luaB_error, .Lfunc_end9-luaB_error
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_gcinfo
	.type	luaB_gcinfo,@function
luaB_gcinfo:                            # @luaB_gcinfo
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_gc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	luaB_gcinfo, .Lfunc_end10-luaB_gcinfo
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_getfenv
	.type	luaB_getfenv,@function
luaB_getfenv:                           # @luaB_getfenv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(getfunc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_iscfunction)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_2
# %bb.1:
	lu12i.w	$a0, -3
	ori	$a1, $a0, 2286
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	b	.LBB11_3
.LBB11_2:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getfenv)
	jirl	$ra, $ra, 0
.LBB11_3:
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	luaB_getfenv, .Lfunc_end11-luaB_getfenv
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_getmetatable
	.type	luaB_getmetatable,@function
luaB_getmetatable:                      # @luaB_getmetatable
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getmetatable)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a2, $a0, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_getmetafield)
	jirl	$ra, $ra, 0
	b	.LBB12_3
.LBB12_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
.LBB12_3:
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	luaB_getmetatable, .Lfunc_end12-luaB_getmetatable
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_loadfile
	.type	luaB_loadfile,@function
luaB_loadfile:                          # @luaB_loadfile
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaL_optlstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_loadfile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
.LBB13_2:                               # %load_aux.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	luaB_loadfile, .Lfunc_end13-luaB_loadfile
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_load
	.type	luaB_load,@function
luaB_load:                              # @luaB_load
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a2, $a0, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaL_optlstring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 6
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_reader)
	addi.d	$a1, $a0, %pc_lo12(generic_reader)
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(lua_load)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
.LBB14_2:                               # %load_aux.exit
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	luaB_load, .Lfunc_end14-luaB_load
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_loadstring
	.type	luaB_loadstring,@function
luaB_loadstring:                        # @luaB_loadstring
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 8
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaL_optlstring)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 8
	move	$a3, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_loadbuffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
.LBB15_2:                               # %load_aux.exit
	move	$a0, $s0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	luaB_loadstring, .Lfunc_end15-luaB_loadstring
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_pcall
	.type	luaB_pcall,@function
luaB_pcall:                             # @luaB_pcall
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, -1
	addi.w	$a2, $zero, -1
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(lua_pcall)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(lua_gettop)
	jr	$t8
.Lfunc_end16:
	.size	luaB_pcall, .Lfunc_end16-luaB_pcall
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_print
	.type	luaB_print,@function
luaB_print:                             # @luaB_print
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
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a2, $a0, %pc_lo12(.L.str.29)
	lu12i.w	$a0, -3
	ori	$a1, $a0, 2286
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB17_6
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$s1, $zero, -1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_call)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_tolstring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_7
# %bb.2:
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s5, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $s5, 0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	beq	$s0, $s2, .LBB17_6
# %bb.3:                                # %.lr.ph.preheader32
	ori	$s1, $zero, 1
	addi.w	$s2, $zero, -1
	addi.w	$s3, $zero, -2
	.p2align	4, , 16
.LBB17_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s1, $s1, 1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_call)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_tolstring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_7
# %bb.5:                                #   in Loop: Header=BB17_4 Depth=1
	move	$s4, $a0
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB17_4
.LBB17_6:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB17_7:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(luaL_error)
	jr	$t8
.Lfunc_end17:
	.size	luaB_print, .Lfunc_end17-luaB_print
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_rawequal
	.type	luaB_rawequal,@function
luaB_rawequal:                          # @luaB_rawequal
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_rawequal)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end18:
	.size	luaB_rawequal, .Lfunc_end18-luaB_rawequal
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_rawget
	.type	luaB_rawget,@function
luaB_rawget:                            # @luaB_rawget
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_rawget)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end19:
	.size	luaB_rawget, .Lfunc_end19-luaB_rawget
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_rawset
	.type	luaB_rawset,@function
luaB_rawset:                            # @luaB_rawset
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_rawset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	luaB_rawset, .Lfunc_end20-luaB_rawset
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_select
	.type	luaB_select,@function
luaB_select:                            # @luaB_select
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB21_3
# %bb.1:
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_tolstring)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 35
	bne	$a0, $a1, .LBB21_3
# %bb.2:
	addi.w	$a1, $s0, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	b	.LBB21_6
.LBB21_3:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	slti	$a2, $a1, 0
	add.w	$a0, $s0, $a0
	slt	$a3, $s0, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s0, $a3
	or	$a1, $a3, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	bgtz	$s1, .LBB21_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a2, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB21_5:
	sub.w	$s1, $s0, $s1
.LBB21_6:
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end21:
	.size	luaB_select, .Lfunc_end21-luaB_select
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_setfenv
	.type	luaB_setfenv,@function
luaB_setfenv:                           # @luaB_setfenv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(getfunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_3
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tonumber)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa1, $zero
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_3
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushthread)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -2
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfenv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB22_6
.LBB22_3:
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_iscfunction)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_5
.LBB22_4:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB22_6
.LBB22_5:
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_setfenv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB22_4
.LBB22_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	luaB_setfenv, .Lfunc_end22-luaB_setfenv
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_setmetatable
	.type	luaB_setmetatable,@function
luaB_setmetatable:                      # @luaB_setmetatable
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	ori	$s1, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB23_3
# %bb.1:
	beq	$s0, $s1, .LBB23_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB23_3:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a2, $a0, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_getmetafield)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB23_5:
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_setmetatable)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	luaB_setmetatable, .Lfunc_end23-luaB_setmetatable
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_tonumber
	.type	luaB_tonumber,@function
luaB_tonumber:                          # @luaB_tonumber
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 10
	ori	$s2, $zero, 10
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	bne	$s0, $s2, .LBB24_3
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB24_9
# %bb.2:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tonumber)
	jirl	$ra, $ra, 0
	b	.LBB24_11
.LBB24_3:
	move	$s1, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, -2
	ori	$a2, $zero, 35
	move	$s1, $a0
	bltu	$a1, $a2, .LBB24_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB24_5:
	addi.d	$a1, $sp, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strtoul)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 0
	beq	$s1, $s2, .LBB24_9
# %bb.6:                                # %.preheader
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s2, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 50
	addi.d	$s2, $s2, 1
	bltz	$a2, .LBB24_7
# %bb.8:
	beqz	$a1, .LBB24_10
.LBB24_9:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	b	.LBB24_12
.LBB24_10:                              # %.critedge
	srli.d	$a0, $s0, 32
	lu52i.d	$a1, $zero, 1107
	or	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fa1, $a0
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a0, 275200
	bstrins.d	$s0, $a0, 63, 32
	movgr2fr.d	$fa1, $s0
	fadd.d	$fa0, $fa1, $fa0
.LBB24_11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
.LBB24_12:
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	luaB_tonumber, .Lfunc_end24-luaB_tonumber
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_tostring
	.type	luaB_tostring,@function
luaB_tostring:                          # @luaB_tostring
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a2, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_callmeta)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_2
.LBB25_1:
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB25_2:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB25_9
# %bb.3:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI25_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI25_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB25_4:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushlstring)
	jirl	$ra, $ra, 0
	b	.LBB25_1
.LBB25_5:
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lua_tolstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	b	.LBB25_7
.LBB25_6:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.60)
	addi.d	$a2, $a2, %pc_lo12(.L.str.60)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB25_7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushstring)
	jirl	$ra, $ra, 0
	b	.LBB25_1
.LBB25_8:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	b	.LBB25_1
.LBB25_9:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_typename)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_topointer)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(lua_pushfstring)
	jirl	$ra, $ra, 0
	b	.LBB25_1
.Lfunc_end25:
	.size	luaB_tostring, .Lfunc_end25-luaB_tostring
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI25_0:
	.word	.LBB25_4-.LJTI25_0
	.word	.LBB25_6-.LJTI25_0
	.word	.LBB25_9-.LJTI25_0
	.word	.LBB25_5-.LJTI25_0
	.word	.LBB25_8-.LJTI25_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function luaB_type
	.type	luaB_type,@function
luaB_type:                              # @luaB_type
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_typename)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushstring)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end26:
	.size	luaB_type, .Lfunc_end26-luaB_type
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_unpack
	.type	luaB_unpack,@function
luaB_unpack:                            # @luaB_unpack
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB27_3
# %bb.1:
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s0, 0
	addi.w	$s3, $a0, 0
	bge	$s3, $s2, .LBB27_4
.LBB27_2:
	move	$s1, $zero
	b	.LBB27_7
.LBB27_3:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_objlen)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s0, 0
	addi.w	$s3, $a0, 0
	blt	$s3, $s2, .LBB27_2
.LBB27_4:
	sub.d	$a0, $a0, $s0
	addi.w	$s1, $a0, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_checkstack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_8
# %bb.5:
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(lua_rawgeti)
	jirl	$ra, $ra, 0
	bge	$s2, $s3, .LBB27_7
	.p2align	4, , 16
.LBB27_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, 1
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(lua_rawgeti)
	jirl	$ra, $ra, 0
	bne	$s3, $s0, .LBB27_6
.LBB27_7:                               # %.loopexit
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB27_8:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(luaL_error)
	jr	$t8
.Lfunc_end27:
	.size	luaB_unpack, .Lfunc_end27-luaB_unpack
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_xpcall
	.type	luaB_xpcall,@function
luaB_xpcall:                            # @luaB_xpcall
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(luaL_checkany)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_pcall)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_replace)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(lua_gettop)
	jr	$t8
.Lfunc_end28:
	.size	luaB_xpcall, .Lfunc_end28-luaB_xpcall
                                        # -- End function
	.p2align	5                               # -- Begin function getfunc
	.type	getfunc,@function
getfunc:                                # @getfunc
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB29_2
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	pcaddu18i	$t8, %call36(lua_pushvalue)
	jr	$t8
.LBB29_2:
	ori	$a1, $zero, 1
	beqz	$s0, .LBB29_10
# %bb.3:
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	bgez	$s0, .LBB29_5
.LBB29_4:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB29_5:
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getstack)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a2, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB29_7:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getinfo)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB29_9:
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB29_10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	bgez	$s0, .LBB29_5
	b	.LBB29_4
.Lfunc_end29:
	.size	getfunc, .Lfunc_end29-getfunc
                                        # -- End function
	.p2align	5                               # -- Begin function generic_reader
	.type	generic_reader,@function
generic_reader:                         # @generic_reader
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a2, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkstack)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_call)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_3
# %bb.1:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_isstring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_4
# %bb.2:
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_replace)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $fp
	move	$a2, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lua_tolstring)
	jr	$t8
.LBB30_3:
	st.d	$zero, $s0, 0
	b	.LBB30_5
.LBB30_4:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB30_5:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end30:
	.size	generic_reader, .Lfunc_end30-generic_reader
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_cocreate
	.type	luaB_cocreate,@function
luaB_cocreate:                          # @luaB_cocreate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_newthread)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB31_2
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_iscfunction)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_3
.LBB31_2:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a2, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB31_3:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_xmove)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end31:
	.size	luaB_cocreate, .Lfunc_end31-luaB_cocreate
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_coresume
	.type	luaB_coresume,@function
luaB_coresume:                          # @luaB_coresume
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(lua_tothread)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB32_2
# %bb.1:                                # %.split14
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a2, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
	move	$s0, $zero
.LBB32_2:                               # %.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(auxresume)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB32_4
# %bb.3:
	move	$s1, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s1, 1
	nor	$a1, $s1, $zero
	b	.LBB32_5
.LBB32_4:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
	addi.w	$a1, $zero, -2
.LBB32_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end32:
	.size	luaB_coresume, .Lfunc_end32-luaB_coresume
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_corunning
	.type	luaB_corunning,@function
luaB_corunning:                         # @luaB_corunning
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_pushthread)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
.LBB33_2:
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end33:
	.size	luaB_corunning, .Lfunc_end33-luaB_corunning
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_costatus
	.type	luaB_costatus,@function
luaB_costatus:                          # @luaB_costatus
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(lua_tothread)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB34_6
# %bb.1:                                # %.split
	beq	$fp, $a0, .LBB34_12
# %bb.2:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(lua_status)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB34_14
# %bb.3:
	bnez	$a0, .LBB34_13
# %bb.4:
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_getstack)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	bgtz	$a1, .LBB34_14
# %bb.5:
	move	$a0, $s0
	b	.LBB34_11
.LBB34_6:                               # %.split7
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a2, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	beqz	$fp, .LBB34_14
# %bb.7:
	pcaddu18i	$ra, %call36(lua_status)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB34_14
# %bb.8:
	bnez	$a0, .LBB34_13
# %bb.9:
	addi.d	$a2, $sp, 16
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_getstack)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	bgtz	$a1, .LBB34_14
# %bb.10:
	move	$a0, $zero
.LBB34_11:                              # %costatus.exit
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 3
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB34_14
.LBB34_12:
	move	$a0, $zero
	b	.LBB34_14
.LBB34_13:
	ori	$a0, $zero, 3
.LBB34_14:                              # %costatus.exit
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(statnames)
	addi.d	$a1, $a1, %pc_lo12(statnames)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushstring)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end34:
	.size	luaB_costatus, .Lfunc_end34-luaB_costatus
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_cowrap
	.type	luaB_cowrap,@function
luaB_cowrap:                            # @luaB_cowrap
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_newthread)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB35_2
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_iscfunction)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB35_3
.LBB35_2:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a2, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB35_3:                               # %luaB_cocreate.exit
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushvalue)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_xmove)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(luaB_auxwrap)
	addi.d	$a1, $a0, %pc_lo12(luaB_auxwrap)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushcclosure)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end35:
	.size	luaB_cowrap, .Lfunc_end35-luaB_cowrap
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_yield
	.type	luaB_yield,@function
luaB_yield:                             # @luaB_yield
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(lua_yield)
	jr	$t8
.Lfunc_end36:
	.size	luaB_yield, .Lfunc_end36-luaB_yield
                                        # -- End function
	.p2align	5                               # -- Begin function auxresume
	.type	auxresume,@function
auxresume:                              # @auxresume
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	beq	$a0, $a1, .LBB37_5
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lua_status)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	beq	$a0, $a1, .LBB37_6
# %bb.2:
	bnez	$s2, .LBB37_13
# %bb.3:
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_getstack)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 2
	bgtz	$a0, .LBB37_6
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 3
	maskeqz	$a0, $a2, $a0
	or	$s2, $a0, $a1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_checkstack)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_7
	b	.LBB37_14
.LBB37_5:
	move	$s2, $zero
.LBB37_6:                               # %costatus.exit
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_checkstack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_14
.LBB37_7:
	ori	$s3, $zero, 1
	bne	$s2, $s3, .LBB37_15
.LBB37_8:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(lua_xmove)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setlevel)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_resume)
	jirl	$ra, $ra, 0
	bltu	$s3, $a0, .LBB37_12
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_checkstack)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
.LBB37_11:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(lua_xmove)
	jirl	$ra, $ra, 0
	b	.LBB37_17
.LBB37_12:
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lua_xmove)
	jirl	$ra, $ra, 0
	b	.LBB37_16
.LBB37_13:
	ori	$s2, $zero, 3
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_checkstack)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_7
.LBB37_14:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	beq	$s2, $s3, .LBB37_8
.LBB37_15:
	slli.d	$a0, $s2, 3
	pcalau12i	$a1, %pc_hi20(statnames)
	addi.d	$a1, $a1, %pc_lo12(statnames)
	ldx.d	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushfstring)
	jirl	$ra, $ra, 0
.LBB37_16:
	addi.w	$s1, $zero, -1
.LBB37_17:
	move	$a0, $s1
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end37:
	.size	auxresume, .Lfunc_end37-auxresume
                                        # -- End function
	.p2align	5                               # -- Begin function luaB_auxwrap
	.type	luaB_auxwrap,@function
luaB_auxwrap:                           # @luaB_auxwrap
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, -3
	ori	$a1, $a0, 2285
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tothread)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(auxresume)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB38_4
# %bb.1:
	move	$s0, $a0
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_isstring)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB38_3
# %bb.2:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_where)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_insert)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_concat)
	jirl	$ra, $ra, 0
.LBB38_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB38_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end38:
	.size	luaB_auxwrap, .Lfunc_end38-luaB_auxwrap
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"coroutine"
	.size	.L.str, 10

	.type	co_funcs,@object                # @co_funcs
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
co_funcs:
	.dword	.L.str.65
	.dword	luaB_cocreate
	.dword	.L.str.66
	.dword	luaB_coresume
	.dword	.L.str.67
	.dword	luaB_corunning
	.dword	.L.str.68
	.dword	luaB_costatus
	.dword	.L.str.69
	.dword	luaB_cowrap
	.dword	.L.str.70
	.dword	luaB_yield
	.space	16
	.size	co_funcs, 112

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"_G"
	.size	.L.str.1, 3

	.type	base_funcs,@object              # @base_funcs
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
base_funcs:
	.dword	.L.str.9
	.dword	luaB_assert
	.dword	.L.str.10
	.dword	luaB_collectgarbage
	.dword	.L.str.11
	.dword	luaB_dofile
	.dword	.L.str.12
	.dword	luaB_error
	.dword	.L.str.13
	.dword	luaB_gcinfo
	.dword	.L.str.14
	.dword	luaB_getfenv
	.dword	.L.str.15
	.dword	luaB_getmetatable
	.dword	.L.str.16
	.dword	luaB_loadfile
	.dword	.L.str.17
	.dword	luaB_load
	.dword	.L.str.18
	.dword	luaB_loadstring
	.dword	.L.str.19
	.dword	luaB_next
	.dword	.L.str.20
	.dword	luaB_pcall
	.dword	.L.str.21
	.dword	luaB_print
	.dword	.L.str.22
	.dword	luaB_rawequal
	.dword	.L.str.23
	.dword	luaB_rawget
	.dword	.L.str.24
	.dword	luaB_rawset
	.dword	.L.str.25
	.dword	luaB_select
	.dword	.L.str.26
	.dword	luaB_setfenv
	.dword	.L.str.27
	.dword	luaB_setmetatable
	.dword	.L.str.28
	.dword	luaB_tonumber
	.dword	.L.str.29
	.dword	luaB_tostring
	.dword	.L.str.30
	.dword	luaB_type
	.dword	.L.str.31
	.dword	luaB_unpack
	.dword	.L.str.32
	.dword	luaB_xpcall
	.space	16
	.size	base_funcs, 400

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Lua 5.1"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"_VERSION"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ipairs"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"pairs"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"kv"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"__mode"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"newproxy"
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"assert"
	.size	.L.str.9, 7

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"collectgarbage"
	.size	.L.str.10, 15

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"dofile"
	.size	.L.str.11, 7

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"error"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"gcinfo"
	.size	.L.str.13, 7

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"getfenv"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"getmetatable"
	.size	.L.str.15, 13

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"loadfile"
	.size	.L.str.16, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"load"
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"loadstring"
	.size	.L.str.18, 11

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"next"
	.size	.L.str.19, 5

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"pcall"
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"print"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"rawequal"
	.size	.L.str.22, 9

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"rawget"
	.size	.L.str.23, 7

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"rawset"
	.size	.L.str.24, 7

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"select"
	.size	.L.str.25, 7

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"setfenv"
	.size	.L.str.26, 8

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"setmetatable"
	.size	.L.str.27, 13

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"tonumber"
	.size	.L.str.28, 9

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"tostring"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"type"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"unpack"
	.size	.L.str.31, 7

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"xpcall"
	.size	.L.str.32, 7

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%s"
	.size	.L.str.33, 3

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"assertion failed!"
	.size	.L.str.34, 18

	.type	luaB_collectgarbage.opts,@object # @luaB_collectgarbage.opts
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
luaB_collectgarbage.opts:
	.dword	.L.str.35
	.dword	.L.str.36
	.dword	.L.str.37
	.dword	.L.str.38
	.dword	.L.str.39
	.dword	.L.str.40
	.dword	.L.str.41
	.dword	0
	.size	luaB_collectgarbage.opts, 64

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"stop"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"restart"
	.size	.L.str.36, 8

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"collect"
	.size	.L.str.37, 8

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"count"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"step"
	.size	.L.str.39, 5

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"setpause"
	.size	.L.str.40, 9

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"setstepmul"
	.size	.L.str.41, 11

	.type	luaB_collectgarbage.optsnum,@object # @luaB_collectgarbage.optsnum
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
luaB_collectgarbage.optsnum:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.size	luaB_collectgarbage.optsnum, 28

	.type	.L.str.42,@object               # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"level must be non-negative"
	.size	.L.str.42, 27

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"invalid level"
	.size	.L.str.43, 14

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"f"
	.size	.L.str.44, 2

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"no function environment for tail call at level %d"
	.size	.L.str.45, 50

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"__metatable"
	.size	.L.str.46, 12

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"=(load)"
	.size	.L.str.47, 8

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"too many nested functions"
	.size	.L.str.48, 26

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"reader function must return a string"
	.size	.L.str.49, 37

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"'tostring' must return a string to 'print'"
	.size	.L.str.50, 43

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"index out of range"
	.size	.L.str.53, 19

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"'setfenv' cannot change environment of given object"
	.size	.L.str.54, 52

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"nil or table expected"
	.size	.L.str.55, 22

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"cannot change a protected metatable"
	.size	.L.str.56, 36

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"base out of range"
	.size	.L.str.57, 18

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"__tostring"
	.size	.L.str.58, 11

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"true"
	.size	.L.str.59, 5

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"false"
	.size	.L.str.60, 6

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"nil"
	.size	.L.str.61, 4

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"%s: %p"
	.size	.L.str.62, 7

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"too many results to unpack"
	.size	.L.str.63, 27

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"boolean or proxy expected"
	.size	.L.str.64, 26

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"create"
	.size	.L.str.65, 7

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"resume"
	.size	.L.str.66, 7

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"running"
	.size	.L.str.67, 8

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"status"
	.size	.L.str.68, 7

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"wrap"
	.size	.L.str.69, 5

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"yield"
	.size	.L.str.70, 6

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Lua function expected"
	.size	.L.str.71, 22

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"coroutine expected"
	.size	.L.str.72, 19

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"too many arguments to resume"
	.size	.L.str.73, 29

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"cannot resume %s coroutine"
	.size	.L.str.74, 27

	.type	statnames,@object               # @statnames
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
statnames:
	.dword	.L.str.67
	.dword	.L.str.76
	.dword	.L.str.77
	.dword	.L.str.78
	.size	statnames, 32

	.type	.L.str.75,@object               # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"too many results to resume"
	.size	.L.str.75, 27

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"suspended"
	.size	.L.str.76, 10

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"normal"
	.size	.L.str.77, 7

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"dead"
	.size	.L.str.78, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaB_ipairs
	.addrsig_sym ipairsaux
	.addrsig_sym luaB_pairs
	.addrsig_sym luaB_next
	.addrsig_sym luaB_newproxy
	.addrsig_sym luaB_assert
	.addrsig_sym luaB_collectgarbage
	.addrsig_sym luaB_dofile
	.addrsig_sym luaB_error
	.addrsig_sym luaB_gcinfo
	.addrsig_sym luaB_getfenv
	.addrsig_sym luaB_getmetatable
	.addrsig_sym luaB_loadfile
	.addrsig_sym luaB_load
	.addrsig_sym luaB_loadstring
	.addrsig_sym luaB_pcall
	.addrsig_sym luaB_print
	.addrsig_sym luaB_rawequal
	.addrsig_sym luaB_rawget
	.addrsig_sym luaB_rawset
	.addrsig_sym luaB_select
	.addrsig_sym luaB_setfenv
	.addrsig_sym luaB_setmetatable
	.addrsig_sym luaB_tonumber
	.addrsig_sym luaB_tostring
	.addrsig_sym luaB_type
	.addrsig_sym luaB_unpack
	.addrsig_sym luaB_xpcall
	.addrsig_sym generic_reader
	.addrsig_sym luaB_cocreate
	.addrsig_sym luaB_coresume
	.addrsig_sym luaB_corunning
	.addrsig_sym luaB_costatus
	.addrsig_sym luaB_cowrap
	.addrsig_sym luaB_yield
	.addrsig_sym luaB_auxwrap
	.addrsig_sym co_funcs
	.addrsig_sym base_funcs
	.addrsig_sym luaB_collectgarbage.opts
