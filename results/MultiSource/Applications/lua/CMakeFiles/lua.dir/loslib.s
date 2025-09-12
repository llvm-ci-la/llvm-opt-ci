	.file	"loslib.c"
	.text
	.globl	luaopen_os                      # -- Begin function luaopen_os
	.p2align	5
	.type	luaopen_os,@function
luaopen_os:                             # @luaopen_os
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(syslib)
	addi.d	$a2, $a2, %pc_lo12(syslib)
	pcaddu18i	$ra, %call36(luaL_register)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	luaopen_os, .Lfunc_end0-luaopen_os
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function os_clock
.LCPI1_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.p2align	5
	.type	os_clock,@function
os_clock:                               # @os_clock
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI1_0)
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	os_clock, .Lfunc_end1-os_clock
                                        # -- End function
	.p2align	5                               # -- Begin function os_date
	.type	os_date,@function
os_date:                                # @os_date
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaL_optlstring)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB2_2
# %bb.1:
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	b	.LBB2_3
.LBB2_2:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
.LBB2_3:
	lu12i.w	$a1, 2
	ori	$a1, $a1, 248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 33
	bne	$a0, $a1, .LBB2_16
# %bb.4:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 248
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s1, $s1, 1
	beqz	$s0, .LBB2_17
.LBB2_5:                                # %sub_0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 42
	bne	$a0, $a1, .LBB2_8
# %bb.6:                                # %sub_1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 116
	bne	$a0, $a1, .LBB2_8
# %bb.7:                                # %.tail
	ld.bu	$a0, $s1, 2
	beqz	$a0, .LBB2_19
.LBB2_8:                                # %.tail.thread
	ori	$s2, $zero, 37
	lu12i.w	$a0, 2
	ori	$a0, $a0, 245
	add.d	$a0, $sp, $a0
	st.b	$s2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 247
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	addi.d	$a1, $sp, 216
	addi.d	$s3, $sp, 216
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_buffinit)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$fp, $s3, $a0
	ld.bu	$a0, $s1, 0
	bne	$a0, $s2, .LBB2_10
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_9:
	addi.d	$s1, $s1, 1
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 216
	st.b	$a0, $a1, 0
	ld.bu	$a0, $s1, 0
	beq	$a0, $s2, .LBB2_11
.LBB2_10:
	bnez	$a0, .LBB2_13
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 1
	beqz	$a1, .LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$s1, $s1, 1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 246
	add.d	$a0, $sp, $a0
	st.b	$a1, $a0, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 200
	lu12i.w	$a2, 2
	ori	$a2, $a2, 245
	add.d	$a2, $sp, $a2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(luaL_addlstring)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	ld.bu	$a0, $s1, 0
	bne	$a0, $s2, .LBB2_10
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_13:
	ld.d	$a1, $sp, 216
	bltu	$a1, $fp, .LBB2_9
# %bb.14:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(luaL_prepbuffer)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ld.d	$a1, $sp, 216
	b	.LBB2_9
.LBB2_15:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(luaL_pushresult)
	jirl	$ra, $ra, 0
	b	.LBB2_18
.LBB2_16:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 248
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$s0, .LBB2_5
.LBB2_17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
.LBB2_18:                               # %setboolfield.exit
	ori	$a0, $zero, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$sp, $sp, $a1
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB2_19:
	ori	$a2, $zero, 9
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lua_createtable)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	addi.w	$s1, $zero, -2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	addi.w	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 20
	addi.w	$a1, $a0, 1900
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 24
	addi.w	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 28
	addi.w	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 32
	bltz	$a1, .LBB2_18
# %bb.20:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	b	.LBB2_18
.Lfunc_end2:
	.size	os_date, .Lfunc_end2-os_date
                                        # -- End function
	.p2align	5                               # -- Begin function os_difftime
	.type	os_difftime,@function
os_difftime:                            # @os_difftime
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s0, $fa0
	movgr2fr.d	$fa0, $zero
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_optnumber)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(difftime)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	os_difftime, .Lfunc_end3-os_difftime
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function os_execute
	.type	os_execute,@function
os_execute:                             # @os_execute
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	os_execute, .Lfunc_end4-os_execute
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function os_exit
	.type	os_exit,@function
os_exit:                                # @os_exit
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_optinteger)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	os_exit, .Lfunc_end5-os_exit
                                        # -- End function
	.p2align	5                               # -- Begin function os_getenv
	.type	os_getenv,@function
os_getenv:                              # @os_getenv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getenv)
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
.Lfunc_end6:
	.size	os_getenv, .Lfunc_end6-os_getenv
                                        # -- End function
	.p2align	5                               # -- Begin function os_remove
	.type	os_remove,@function
os_remove:                              # @os_remove
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_2
# %bb.1:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$s1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(lua_pushfstring)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 3
	b	.LBB7_3
.LBB7_2:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
.LBB7_3:                                # %os_pushresult.exit
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	os_remove, .Lfunc_end7-os_remove
                                        # -- End function
	.p2align	5                               # -- Begin function os_rename
	.type	os_rename,@function
os_rename:                              # @os_rename
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaL_checklstring)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(rename)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.1:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$s1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(lua_pushfstring)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 3
	b	.LBB8_3
.LBB8_2:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushboolean)
	jirl	$ra, $ra, 0
.LBB8_3:                                # %os_pushresult.exit
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	os_rename, .Lfunc_end8-os_rename
                                        # -- End function
	.p2align	5                               # -- Begin function os_setlocale
	.type	os_setlocale,@function
os_setlocale:                           # @os_setlocale
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaL_optlstring)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(os_setlocale.catnames)
	addi.d	$a3, $a0, %pc_lo12(os_setlocale.catnames)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkoption)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(os_setlocale.cat)
	addi.d	$a1, $a1, %pc_lo12(os_setlocale.cat)
	ldx.w	$a0, $a1, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(setlocale)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushstring)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	os_setlocale, .Lfunc_end9-os_setlocale
                                        # -- End function
	.p2align	5                               # -- Begin function os_time
	.type	os_time,@function
os_time:                                # @os_time
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB10_3
# %bb.1:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checktype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	addi.w	$s0, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_5
# %bb.2:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tointeger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB10_6
.LBB10_3:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB10_24
.LBB10_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnil)
	jirl	$ra, $ra, 0
	b	.LBB10_25
.LBB10_5:
	move	$s0, $zero
.LBB10_6:                               # %getfield.exit
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	addi.w	$s0, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_8
# %bb.7:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tointeger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB10_9
.LBB10_8:
	move	$s0, $zero
.LBB10_9:                               # %getfield.exit15
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	addi.w	$s0, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_11
# %bb.10:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tointeger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB10_12
.LBB10_11:
	ori	$s0, $zero, 12
.LBB10_12:                              # %getfield.exit18
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	addi.w	$s0, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_14
# %bb.13:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tointeger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	b	.LBB10_15
.LBB10_14:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB10_15:                              # %getfield.exit21
	st.w	$s0, $sp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	addi.w	$s0, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_17
# %bb.16:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tointeger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	b	.LBB10_18
.LBB10_17:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB10_18:                              # %getfield.exit25
	addi.d	$a0, $s0, -1
	st.w	$a0, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.w	$s0, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_isnumber)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_20
# %bb.19:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_tointeger)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	b	.LBB10_21
.LBB10_20:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB10_21:                              # %getfield.exit29
	addi.d	$a0, $s1, -1900
	st.w	$a0, $sp, 28
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_type)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_23
# %bb.22:
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_toboolean)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB10_23:                              # %getboolfield.exit
	addi.w	$a1, $zero, -2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_settop)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 40
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(mktime)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB10_4
.LBB10_24:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
.LBB10_25:
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end10:
	.size	os_time, .Lfunc_end10-os_time
                                        # -- End function
	.p2align	5                               # -- Begin function os_tmpname
	.type	os_tmpname,@function
os_tmpname:                             # @os_tmpname
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	vld	$vr0, $a1, %pc_lo12(.L.str.31)
	move	$fp, $a0
	vst	$vr0, $sp, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(mkstemp)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB11_2
# %bb.1:
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushstring)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_2:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_error)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	os_tmpname, .Lfunc_end11-os_tmpname
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"os"
	.size	.L.str, 3

	.type	syslib,@object                  # @syslib
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
syslib:
	.dword	.L.str.1
	.dword	os_clock
	.dword	.L.str.2
	.dword	os_date
	.dword	.L.str.3
	.dword	os_difftime
	.dword	.L.str.4
	.dword	os_execute
	.dword	.L.str.5
	.dword	os_exit
	.dword	.L.str.6
	.dword	os_getenv
	.dword	.L.str.7
	.dword	os_remove
	.dword	.L.str.8
	.dword	os_rename
	.dword	.L.str.9
	.dword	os_setlocale
	.dword	.L.str.10
	.dword	os_time
	.dword	.L.str.11
	.dword	os_tmpname
	.space	16
	.size	syslib, 192

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"clock"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"date"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"difftime"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"execute"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"exit"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"getenv"
	.size	.L.str.6, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"remove"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"rename"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"setlocale"
	.size	.L.str.9, 10

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"time"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"tmpname"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%c"
	.size	.L.str.12, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"sec"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"min"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"hour"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"day"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"month"
	.size	.L.str.18, 6

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"year"
	.size	.L.str.19, 5

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"wday"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"yday"
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"isdst"
	.size	.L.str.22, 6

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Cannot execute system calls!\n"
	.size	.L.str.23, 30

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%s: %s"
	.size	.L.str.24, 7

	.type	os_setlocale.cat,@object        # @os_setlocale.cat
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
os_setlocale.cat:
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	2                               # 0x2
	.size	os_setlocale.cat, 24

	.type	os_setlocale.catnames,@object   # @os_setlocale.catnames
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
os_setlocale.catnames:
	.dword	.L.str.25
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.dword	.L.str.29
	.dword	.L.str.10
	.dword	0
	.size	os_setlocale.catnames, 56

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"all"
	.size	.L.str.25, 4

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"collate"
	.size	.L.str.26, 8

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"ctype"
	.size	.L.str.27, 6

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"monetary"
	.size	.L.str.28, 9

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"numeric"
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"field '%s' missing in date table"
	.size	.L.str.30, 33

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.31:
	.asciz	"/tmp/lua_XXXXXX"
	.size	.L.str.31, 16

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"unable to generate a unique filename"
	.size	.L.str.32, 37

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym os_clock
	.addrsig_sym os_date
	.addrsig_sym os_difftime
	.addrsig_sym os_execute
	.addrsig_sym os_exit
	.addrsig_sym os_getenv
	.addrsig_sym os_remove
	.addrsig_sym os_rename
	.addrsig_sym os_setlocale
	.addrsig_sym os_time
	.addrsig_sym os_tmpname
	.addrsig_sym syslib
	.addrsig_sym os_setlocale.catnames
