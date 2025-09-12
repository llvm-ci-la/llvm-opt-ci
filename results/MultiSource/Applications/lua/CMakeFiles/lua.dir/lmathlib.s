	.file	"lmathlib.c"
	.text
	.globl	luaopen_math                    # -- Begin function luaopen_math
	.p2align	5
	.type	luaopen_math,@function
luaopen_math:                           # @luaopen_math
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(mathlib)
	addi.d	$a2, $a0, %pc_lo12(mathlib)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_register)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.w	$s0, $zero, -2
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	lu52i.d	$a0, $zero, 2047
	movgr2fr.d	$fa0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_getfield)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lua_setfield)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	luaopen_math, .Lfunc_end0-luaopen_math
                                        # -- End function
	.p2align	5                               # -- Begin function math_abs
	.type	math_abs,@function
math_abs:                               # @math_abs
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fabs.d	$fa0, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	math_abs, .Lfunc_end1-math_abs
                                        # -- End function
	.p2align	5                               # -- Begin function math_acos
	.type	math_acos,@function
math_acos:                              # @math_acos
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	math_acos, .Lfunc_end2-math_acos
                                        # -- End function
	.p2align	5                               # -- Begin function math_asin
	.type	math_asin,@function
math_asin:                              # @math_asin
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	math_asin, .Lfunc_end3-math_asin
                                        # -- End function
	.p2align	5                               # -- Begin function math_atan2
	.type	math_atan2,@function
math_atan2:                             # @math_atan2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	math_atan2, .Lfunc_end4-math_atan2
                                        # -- End function
	.p2align	5                               # -- Begin function math_atan
	.type	math_atan,@function
math_atan:                              # @math_atan
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	math_atan, .Lfunc_end5-math_atan
                                        # -- End function
	.p2align	5                               # -- Begin function math_ceil
	.type	math_ceil,@function
math_ceil:                              # @math_ceil
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	move	$a0, $fp
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	math_ceil, .Lfunc_end6-math_ceil
                                        # -- End function
	.p2align	5                               # -- Begin function math_cosh
	.type	math_cosh,@function
math_cosh:                              # @math_cosh
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cosh)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	math_cosh, .Lfunc_end7-math_cosh
                                        # -- End function
	.p2align	5                               # -- Begin function math_cos
	.type	math_cos,@function
math_cos:                               # @math_cos
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	math_cos, .Lfunc_end8-math_cos
                                        # -- End function
	.p2align	5                               # -- Begin function math_deg
	.type	math_deg,@function
math_deg:                               # @math_deg
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -383703
	ori	$a0, $a0, 3385
	lu32i.d	$a0, 122694
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	math_deg, .Lfunc_end9-math_deg
                                        # -- End function
	.p2align	5                               # -- Begin function math_exp
	.type	math_exp,@function
math_exp:                               # @math_exp
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	math_exp, .Lfunc_end10-math_exp
                                        # -- End function
	.p2align	5                               # -- Begin function math_floor
	.type	math_floor,@function
math_floor:                             # @math_floor
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	move	$a0, $fp
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	math_floor, .Lfunc_end11-math_floor
                                        # -- End function
	.p2align	5                               # -- Begin function math_fmod
	.type	math_fmod,@function
math_fmod:                              # @math_fmod
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	math_fmod, .Lfunc_end12-math_fmod
                                        # -- End function
	.p2align	5                               # -- Begin function math_frexp
	.type	math_frexp,@function
math_frexp:                             # @math_frexp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushinteger)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	math_frexp, .Lfunc_end13-math_frexp
                                        # -- End function
	.p2align	5                               # -- Begin function math_ldexp
	.type	math_ldexp,@function
math_ldexp:                             # @math_ldexp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	math_ldexp, .Lfunc_end14-math_ldexp
                                        # -- End function
	.p2align	5                               # -- Begin function math_log10
	.type	math_log10,@function
math_log10:                             # @math_log10
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	math_log10, .Lfunc_end15-math_log10
                                        # -- End function
	.p2align	5                               # -- Begin function math_log
	.type	math_log,@function
math_log:                               # @math_log
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	math_log, .Lfunc_end16-math_log
                                        # -- End function
	.p2align	5                               # -- Begin function math_max
	.type	math_max,@function
math_max:                               # @math_max
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	fmov.d	$fs0, $fa0
	blt	$s0, $a0, .LBB17_2
	.p2align	4, , 16
.LBB17_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s1, $s1, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	bne	$s0, $s1, .LBB17_1
.LBB17_2:                               # %._crit_edge
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	math_max, .Lfunc_end17-math_max
                                        # -- End function
	.p2align	5                               # -- Begin function math_min
	.type	math_min,@function
math_min:                               # @math_min
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	fmov.d	$fs0, $fa0
	blt	$s0, $a0, .LBB18_2
	.p2align	4, , 16
.LBB18_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s1, $s1, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fa0, $fs0
	fsel	$fs0, $fs0, $fa0, $fcc0
	bne	$s0, $s1, .LBB18_1
.LBB18_2:                               # %._crit_edge
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	math_min, .Lfunc_end18-math_min
                                        # -- End function
	.p2align	5                               # -- Begin function math_modf
	.type	math_modf,@function
math_modf:                              # @math_modf
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(modf)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 0
	fmov.d	$fs0, $fa0
	move	$a0, $fp
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end19:
	.size	math_modf, .Lfunc_end19-math_modf
                                        # -- End function
	.p2align	5                               # -- Begin function math_pow
	.type	math_pow,@function
math_pow:                               # @math_pow
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	math_pow, .Lfunc_end20-math_pow
                                        # -- End function
	.p2align	5                               # -- Begin function math_rad
	.type	math_rad,@function
math_rad:                               # @math_rad
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -383703
	ori	$a0, $a0, 3385
	lu32i.d	$a0, 122694
	lu52i.d	$a0, $a0, 1017
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end21:
	.size	math_rad, .Lfunc_end21-math_rad
                                        # -- End function
	.p2align	5                               # -- Begin function math_random
	.type	math_random,@function
math_random:                            # @math_random
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 30
	add.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 61
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a1, 31
	add.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a0, -1024
	lu52i.d	$a0, $a0, 1053
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fs0, $fa0, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_gettop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB22_7
# %bb.1:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB22_4
# %bb.2:
	bnez	$a0, .LBB22_12
# %bb.3:
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	b	.LBB22_11
.LBB22_4:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	bgtz	$a0, .LBB22_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a2, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB22_6:
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	b	.LBB22_10
.LBB22_7:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$s2, $a0, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	bge	$a0, $s2, .LBB22_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a2, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaL_argerror)
	jirl	$ra, $ra, 0
.LBB22_9:
	sub.d	$a0, $s1, $s0
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
.LBB22_10:
	move	$a0, $fp
.LBB22_11:
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB22_12:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $fp
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(luaL_error)
	jr	$t8
.Lfunc_end22:
	.size	math_random, .Lfunc_end22-math_random
                                        # -- End function
	.p2align	5                               # -- Begin function math_randomseed
	.type	math_randomseed,@function
math_randomseed:                        # @math_randomseed
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checkinteger)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end23:
	.size	math_randomseed, .Lfunc_end23-math_randomseed
                                        # -- End function
	.p2align	5                               # -- Begin function math_sinh
	.type	math_sinh,@function
math_sinh:                              # @math_sinh
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	math_sinh, .Lfunc_end24-math_sinh
                                        # -- End function
	.p2align	5                               # -- Begin function math_sin
	.type	math_sin,@function
math_sin:                               # @math_sin
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end25:
	.size	math_sin, .Lfunc_end25-math_sin
                                        # -- End function
	.p2align	5                               # -- Begin function math_sqrt
	.type	math_sqrt,@function
math_sqrt:                              # @math_sqrt
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB26_2
.LBB26_1:                               # %.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB26_2:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB26_1
.Lfunc_end26:
	.size	math_sqrt, .Lfunc_end26-math_sqrt
                                        # -- End function
	.p2align	5                               # -- Begin function math_tanh
	.type	math_tanh,@function
math_tanh:                              # @math_tanh
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(tanh)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end27:
	.size	math_tanh, .Lfunc_end27-math_tanh
                                        # -- End function
	.p2align	5                               # -- Begin function math_tan
	.type	math_tan,@function
math_tan:                               # @math_tan
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaL_checknumber)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(tan)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lua_pushnumber)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end28:
	.size	math_tan, .Lfunc_end28-math_tan
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"math"
	.size	.L.str, 5

	.type	mathlib,@object                 # @mathlib
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
mathlib:
	.dword	.L.str.5
	.dword	math_abs
	.dword	.L.str.6
	.dword	math_acos
	.dword	.L.str.7
	.dword	math_asin
	.dword	.L.str.8
	.dword	math_atan2
	.dword	.L.str.9
	.dword	math_atan
	.dword	.L.str.10
	.dword	math_ceil
	.dword	.L.str.11
	.dword	math_cosh
	.dword	.L.str.12
	.dword	math_cos
	.dword	.L.str.13
	.dword	math_deg
	.dword	.L.str.14
	.dword	math_exp
	.dword	.L.str.15
	.dword	math_floor
	.dword	.L.str.3
	.dword	math_fmod
	.dword	.L.str.16
	.dword	math_frexp
	.dword	.L.str.17
	.dword	math_ldexp
	.dword	.L.str.18
	.dword	math_log10
	.dword	.L.str.19
	.dword	math_log
	.dword	.L.str.20
	.dword	math_max
	.dword	.L.str.21
	.dword	math_min
	.dword	.L.str.22
	.dword	math_modf
	.dword	.L.str.23
	.dword	math_pow
	.dword	.L.str.24
	.dword	math_rad
	.dword	.L.str.25
	.dword	math_random
	.dword	.L.str.26
	.dword	math_randomseed
	.dword	.L.str.27
	.dword	math_sinh
	.dword	.L.str.28
	.dword	math_sin
	.dword	.L.str.29
	.dword	math_sqrt
	.dword	.L.str.30
	.dword	math_tanh
	.dword	.L.str.31
	.dword	math_tan
	.space	16
	.size	mathlib, 464

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pi"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"huge"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"fmod"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"mod"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"abs"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"acos"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"asin"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"atan2"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"atan"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"ceil"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"cosh"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"cos"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"deg"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"exp"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"floor"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"frexp"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"ldexp"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"log10"
	.size	.L.str.18, 6

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"log"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"max"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"min"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"modf"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"pow"
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"rad"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"random"
	.size	.L.str.25, 7

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"randomseed"
	.size	.L.str.26, 11

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"sinh"
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"sin"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"sqrt"
	.size	.L.str.29, 5

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"tanh"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"tan"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"interval is empty"
	.size	.L.str.32, 18

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"wrong number of arguments"
	.size	.L.str.33, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym math_abs
	.addrsig_sym math_acos
	.addrsig_sym math_asin
	.addrsig_sym math_atan2
	.addrsig_sym math_atan
	.addrsig_sym math_ceil
	.addrsig_sym math_cosh
	.addrsig_sym math_cos
	.addrsig_sym math_deg
	.addrsig_sym math_exp
	.addrsig_sym math_floor
	.addrsig_sym math_fmod
	.addrsig_sym math_frexp
	.addrsig_sym math_ldexp
	.addrsig_sym math_log10
	.addrsig_sym math_log
	.addrsig_sym math_max
	.addrsig_sym math_min
	.addrsig_sym math_modf
	.addrsig_sym math_pow
	.addrsig_sym math_rad
	.addrsig_sym math_random
	.addrsig_sym math_randomseed
	.addrsig_sym math_sinh
	.addrsig_sym math_sin
	.addrsig_sym math_sqrt
	.addrsig_sym math_tanh
	.addrsig_sym math_tan
	.addrsig_sym mathlib
