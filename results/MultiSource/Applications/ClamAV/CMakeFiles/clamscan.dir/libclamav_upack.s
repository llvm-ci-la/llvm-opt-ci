	.file	"libclamav_upack.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function unupack
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.text
	.globl	unupack
	.p2align	5
	.type	unupack,@function
unupack:                                # @unupack
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$t0, $a0
	beqz	$a0, .LBB0_13
# %bb.1:
	ld.bu	$a0, $a3, 5
	ori	$s3, $zero, 2
	ori	$t1, $zero, 255
	ori	$fp, $zero, 1
	bne	$a0, $t1, .LBB0_4
# %bb.2:
	ld.bu	$a0, $a3, 6
	ori	$t1, $zero, 54
	bne	$a0, $t1, .LBB0_4
# %bb.3:
	move	$fp, $zero
	ori	$s3, $zero, 3
	ori	$s7, $zero, 3
	ori	$t1, $zero, 12
	addi.w	$a0, $zero, -1
	bgeu	$a2, $t1, .LBB0_5
	b	.LBB0_64
.LBB0_4:
	move	$s7, $zero
	ori	$t1, $zero, 12
	addi.w	$a0, $zero, -1
	bltu	$a2, $t1, .LBB0_64
.LBB0_5:
	ld.w	$a3, $a3, 1
	sub.d	$a3, $a3, $a4
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$s6, $a2, 31, 0
	addi.d	$t1, $a3, 12
	bltu	$s6, $t1, .LBB0_64
# %bb.6:
	move	$s2, $a0
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $a2
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	move	$s8, $a1
	add.d	$s5, $a1, $a3
	ld.w	$a3, $s5, 0
	move	$s4, $a4
	sub.w	$a2, $a3, $a4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $a5
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$s0, $a5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	bstrpick.d	$a2, $s0, 31, 0
	addi.d	$a3, $a2, 12
	move	$a0, $s2
	beqz	$fp, .LBB0_49
# %bb.7:
	bltu	$s6, $a3, .LBB0_64
# %bb.8:
	addi.d	$a1, $a1, 10
	bstrpick.d	$a3, $a1, 31, 0
	ldx.bu	$a3, $s8, $a3
	ori	$a4, $zero, 235
	bne	$a3, $a4, .LBB0_64
# %bb.9:
	move	$a1, $s8
	add.d	$a3, $s8, $a2
	ld.b	$a3, $a3, 11
	add.d	$a2, $a3, $a2
	addi.w	$a3, $zero, -38
	blt	$a2, $a3, .LBB0_64
# %bb.10:
	addi.d	$a3, $a2, 40
	blt	$s6, $a3, .LBB0_64
# %bb.11:
	add.d	$s0, $a1, $a2
	ld.bu	$a2, $s0, 38
	ori	$a3, $zero, 235
	bne	$a2, $a3, .LBB0_64
# %bb.12:
	ld.w	$a2, $s5, 8
	sub.d	$a2, $a2, $s4
	ld.bu	$a3, $s0, 39
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a7, $a1, $a2
	addi.d	$a2, $s0, 39
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 11
	ori	$a3, $zero, 8
	b	.LBB0_52
.LBB0_13:
	ld.bu	$a0, $a3, 0
	ori	$t1, $zero, 190
	bne	$a0, $t1, .LBB0_18
# %bb.14:
	ld.bu	$a0, $a3, 5
	ori	$t1, $zero, 173
	bne	$a0, $t1, .LBB0_18
# %bb.15:
	ld.bu	$a0, $a3, 6
	ori	$t1, $zero, 139
	bne	$a0, $t1, .LBB0_18
# %bb.16:
	ld.bu	$a0, $a3, 7
	ori	$a3, $zero, 248
	bne	$a0, $a3, .LBB0_18
# %bb.17:
	move	$s3, $zero
	ori	$s6, $zero, 65
	ori	$s4, $zero, 27
	ori	$a3, $zero, 420
	ori	$s8, $zero, 1
	ori	$t3, $zero, 388
	b	.LBB0_19
.LBB0_18:                               # %.thread1057
	move	$s8, $zero
	ori	$s6, $zero, 95
	ori	$s4, $zero, 58
	ori	$a3, $zero, 535
	ori	$s3, $zero, 1
	ori	$t3, $zero, 449
.LBB0_19:
	addi.w	$a0, $zero, -1
	beqz	$a2, .LBB0_64
# %bb.20:
	addi.d	$t1, $a3, 4
	bltu	$a2, $t1, .LBB0_64
# %bb.21:
	bstrpick.d	$s5, $a4, 31, 0
	bstrpick.d	$s7, $a5, 31, 0
	add.d	$fp, $s7, $s5
	bstrpick.d	$s2, $a2, 31, 0
	add.d	$t1, $fp, $a3
	addi.d	$t2, $t1, 4
	bltu	$s2, $t2, .LBB0_64
# %bb.22:
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	move	$s1, $a0
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	add.d	$s0, $a1, $fp
	ldx.w	$a0, $s0, $a3
	add.d	$a0, $t1, $a0
	addi.w	$a2, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $a5
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $s0, $s6
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB0_61
# %bb.23:
	sub.d	$s6, $a1, $a0
	ori	$a0, $zero, 1
	bgeu	$a0, $s6, .LBB0_61
# %bb.24:
	ldx.bu	$a0, $s0, $s4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$s4, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_65
# %bb.25:
	ld.w	$a0, $s0, 6
	st.w	$zero, $s0, 6
	beqz	$a0, .LBB0_77
# %bb.26:
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -2
	bstrpick.d	$a2, $a0, 31, 0
	ori	$a0, $zero, 4
	sub.d	$a0, $a0, $a2
	add.d	$s6, $a0, $fp
	bltz	$s6, .LBB0_63
# %bb.27:
	addi.d	$a1, $s6, 12
	bltu	$s2, $a1, .LBB0_63
# %bb.28:
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	add.d	$s4, $s0, $a0
	ld.w	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	sub.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s6
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sub.w	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s6, $s4
	ld.w	$s4, $s4, 8
	bltz	$s4, .LBB0_80
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_63
# %bb.30:
	slli.w	$a4, $s4, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s1
	bltu	$a2, $a4, .LBB0_64
# %bb.31:
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$t4, $a3, $s2
	addi.d	$a1, $s6, 12
	add.d	$a4, $a1, $a4
	bltu	$t4, $a4, .LBB0_64
# %bb.32:
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a3, $a4, .LBB0_64
# %bb.33:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$a3, $s4, $a0
	addi.w	$a0, $zero, -1
	alsl.w	$a4, $a3, $a0, 2
	bgeu	$a4, $a2, .LBB0_64
# %bb.34:
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	sub.d	$s1, $t5, $t2
	bltz	$s1, .LBB0_64
# %bb.35:
	slli.d	$a2, $a3, 2
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a2, $s1, $a2
	bltu	$s2, $a2, .LBB0_64
# %bb.36:                               # %.lr.ph1122.preheader
	ori	$a3, $zero, 16
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$t3, $a2, $s1
	bltu	$s4, $a3, .LBB0_38
# %bb.37:                               # %vector.memcheck
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	add.d	$a3, $t5, $a7
	add.d	$a4, $t2, $s7
	add.d	$a4, $a4, $s5
	sub.d	$a3, $a3, $a4
	addi.d	$a3, $a3, -16
	ori	$a4, $zero, 64
	bgeu	$a3, $a4, .LBB0_116
.LBB0_38:
	move	$a4, $s4
	move	$a3, $t3
.LBB0_39:                               # %.lr.ph1122
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	st.w	$a5, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB0_39
.LBB0_40:                               # %._crit_edge1123
	addi.d	$a1, $s1, 8
	bltu	$s2, $a1, .LBB0_64
# %bb.41:
	ld.w	$a1, $t3, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $a4, 4
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a5, $a1
	add.d	$a1, $a1, $t5
	add.d	$a1, $a1, $a4
	sub.d	$a1, $a1, $t2
	add.d	$a4, $a1, $a2
	addi.d	$a1, $a4, 8
	bltu	$a1, $a2, .LBB0_64
# %bb.42:
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a2, $a4, 12
	bltu	$t4, $a2, .LBB0_64
# %bb.43:
	move	$s4, $t4
	move	$fp, $a0
	addi.d	$s5, $a4, 4
	beqz	$t1, .LBB0_46
# %bb.44:                               # %vector.ph1252
	xvldrepl.w	$xr0, $a1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -256
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 256
	addi.d	$a1, $a3, 32
.LBB0_45:                               # %vector.body1256
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB0_45
.LBB0_46:                               # %._crit_edge1129
	addi.d	$a0, $s5, 28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bltu	$s4, $a0, .LBB0_48
# %bb.47:
	ld.w	$a0, $s5, 24
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.w	$a0, $s5, 24
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 52
	bgeu	$s4, $a0, .LBB0_119
.LBB0_48:
	move	$a0, $fp
	b	.LBB0_64
.LBB0_49:
	bltu	$s6, $a3, .LBB0_64
# %bb.50:
	addi.d	$a1, $a1, 7
	bstrpick.d	$a3, $a1, 31, 0
	ldx.bu	$a3, $s8, $a3
	ori	$a4, $zero, 233
	bne	$a3, $a4, .LBB0_64
# %bb.51:
	move	$a1, $s8
	add.d	$a3, $s8, $a2
	ld.w	$a3, $a3, 8
	add.d	$a3, $s8, $a3
	add.d	$s0, $a3, $a2
	addi.d	$a2, $s0, 49
	ori	$a3, $zero, 10
                                        # implicit-def: $r11
.LBB0_52:
	bltu	$a2, $a1, .LBB0_64
# %bb.53:
	add.d	$t0, $a1, $s6
	addi.d	$a5, $a2, 2
	bltu	$t0, $a5, .LBB0_64
# %bb.54:
	ld.bu	$a5, $a2, 0
	ori	$a6, $zero, 181
	bne	$a5, $a6, .LBB0_64
# %bb.55:
	ori	$a5, $a3, 5
	bltu	$s1, $a5, .LBB0_64
# %bb.56:
	addi.d	$a4, $a2, 1
	add.d	$a3, $a4, $a3
	addi.d	$a4, $a3, 5
	bltu	$t0, $a4, .LBB0_64
# %bb.57:
	bgeu	$a1, $a4, .LBB0_64
# %bb.58:
	ld.bu	$a4, $a3, 0
	ori	$a5, $zero, 233
	bne	$a4, $a5, .LBB0_64
# %bb.59:
	ld.wu	$a3, $a3, 1
	addi.d	$a4, $s0, 12
	sub.d	$a4, $a4, $a1
	beqz	$fp, .LBB0_100
# %bb.60:
	ld.b	$a5, $s0, 39
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a5
	addi.w	$a3, $a3, 52
	b	.LBB0_101
.LBB0_61:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
.LBB0_62:                               # %.thread1048
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %.thread1048
	move	$a0, $s1
.LBB0_64:                               # %.thread1048
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB0_65:
	beqz	$s8, .LBB0_73
# %bb.66:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a6, 10
	addi.d	$a1, $a2, 24
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_63
# %bb.67:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 328
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	sub.d	$a4, $a3, $a1
	addi.w	$a3, $zero, -4
	move	$a0, $s1
	blt	$a4, $a3, .LBB0_64
# %bb.68:
	ori	$a2, $a2, 28
	add.d	$a2, $a4, $a2
	bltu	$s2, $a2, .LBB0_64
# %bb.69:                               # %.preheader1083
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a3, $a0, 332
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	sub.d	$a2, $zero, $a1
	add.d	$a7, $a0, $a4
	add.d	$a3, $a0, $a3
	vst	$vr0, $a7, 4
	ori	$a5, $zero, 1
	lu32i.d	$a5, 1
	st.d	$a5, $a7, 20
	beqz	$a6, .LBB0_72
# %bb.70:                               # %.lr.ph1116.preheader
	addi.d	$a5, $s4, -256
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 256
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, 60
	ori	$a6, $zero, 1024
	xvreplgr2vr.w	$xr0, $a6
.LBB0_71:                               # %vector.body1225
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_71
.LBB0_72:                               # %._crit_edge1117
	ld.w	$a4, $a0, 336
	sub.d	$s1, $a3, $a1
	ld.w	$a1, $a0, 304
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	addi.d	$fp, $a7, 4
	add.d	$a3, $a0, $a4
	add.d	$s2, $a3, $a2
	add.d	$a0, $a0, $a1
	add.d	$s4, $a0, $a2
	b	.LBB0_74
.LBB0_73:
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
                                        # implicit-def: $r22
                                        # implicit-def: $r27
                                        # implicit-def: $r24
                                        # implicit-def: $r25
.LBB0_74:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $zero
	move	$a3, $fp
	move	$a4, $zero
	move	$a5, $s2
	move	$a6, $s4
	move	$a7, $s6
	pcaddu18i	$ra, %call36(unupack399)
	jirl	$ra, $ra, 0
	addi.w	$a3, $zero, -1
	move	$a1, $a0
	move	$a0, $a3
	beq	$a1, $a3, .LBB0_64
# %bb.75:
	move	$a2, $s5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $s0, $a0
	beqz	$s3, .LBB0_78
# %bb.76:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s6, $a1, 64
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_82
	b	.LBB0_83
.LBB0_77:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB0_62
.LBB0_78:
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beqz	$s8, .LBB0_81
# %bb.79:
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 31, 0
	add.d	$a3, $a1, $a3
	add.d	$a3, $a3, $s7
	ld.w	$s6, $a3, 372
	bgeu	$a0, $a1, .LBB0_82
	b	.LBB0_83
.LBB0_80:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB0_62
.LBB0_81:
                                        # implicit-def: $r29
	bltu	$a0, $a1, .LBB0_83
.LBB0_82:
	addi.d	$a3, $a0, 1
	bstrpick.d	$a4, $a2, 31, 0
	add.d	$s0, $a1, $a4
	bgeu	$s0, $a3, .LBB0_85
.LBB0_83:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
.LBB0_84:                               # %.thread1048
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB0_64
.LBB0_85:
	move	$s7, $s4
	ld.bu	$s1, $a0, 0
	addi.w	$s4, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$fp, $a1
	move	$a1, $s4
	move	$s3, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$a3, $s5
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	beqz	$s4, .LBB0_96
# %bb.86:                               # %.outer.split.preheader
	move	$a2, $s3
	move	$a6, $zero
	ori	$a7, $zero, 232
	lu12i.w	$a4, 4080
	ori	$t0, $a4, 255
.LBB0_87:                               # %.outer.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_88 Depth 2
	addi.w	$a6, $a6, 4
.LBB0_88:                               #   Parent Loop BB0_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a6, -4
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $s2, $a4
	bltu	$a4, $a1, .LBB0_98
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=2
	addi.d	$t1, $a4, 1
	bltu	$s0, $t1, .LBB0_98
# %bb.90:                               #   in Loop: Header=BB0_88 Depth=2
	ld.bu	$t2, $a4, 0
	andi	$t2, $t2, 254
	bne	$t2, $a7, .LBB0_94
# %bb.91:                               #   in Loop: Header=BB0_88 Depth=2
	addi.d	$a4, $a4, 5
	bltu	$s0, $a4, .LBB0_99
# %bb.92:                               #   in Loop: Header=BB0_88 Depth=2
	ld.wu	$a4, $t1, 0
	andi	$t2, $a4, 255
	addi.w	$a6, $a6, 1
	bne	$s1, $t2, .LBB0_88
# %bb.93:                               # %.thread1070
                                        #   in Loop: Header=BB0_87 Depth=1
	rotri.w	$t2, $a4, 24
	and	$t2, $t2, $t0
	srli.d	$a4, $a4, 16
	bstrins.d	$t2, $a4, 15, 8
	sub.d	$a4, $t2, $a6
	st.w	$a4, $t1, 0
	addi.d	$s6, $s6, -1
	b	.LBB0_95
.LBB0_94:                               # %.split1131
                                        #   in Loop: Header=BB0_87 Depth=1
	addi.d	$a6, $a6, -3
.LBB0_95:                               # %.outer
                                        #   in Loop: Header=BB0_87 Depth=1
	addi.w	$a4, $s6, 0
	bnez	$a4, .LBB0_87
.LBB0_96:                               # %.outer._crit_edge
	ld.d	$a7, $sp, 256
	sltui	$a2, $a5, 1
	st.w	$zero, $sp, 140
	st.w	$a0, $sp, 132
	sub.d	$a4, $s7, $s2
	st.w	$a4, $sp, 144
	st.w	$a4, $sp, 136
	maskeqz	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $a1, $a0
	addi.d	$a1, $sp, 132
	ori	$a2, $zero, 1
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB0_64
# %bb.97:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_64
.LBB0_98:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB0_64
.LBB0_99:                               # %.thread1066
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB0_84
.LBB0_100:
	add.d	$a3, $a4, $a3
	addi.w	$a3, $a3, 53
.LBB0_101:
	ld.bu	$fp, $a2, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, 44
	add.d	$a2, $a1, $a3
	bltu	$s6, $a4, .LBB0_104
# %bb.102:
	ld.bu	$a4, $a2, 42
	ori	$a5, $zero, 227
	bne	$a4, $a5, .LBB0_104
# %bb.103:
	addi.d	$a5, $a2, 43
	ori	$a4, $zero, 24
	ori	$s5, $zero, 8
	b	.LBB0_107
.LBB0_104:
	addi.d	$a4, $a3, 47
	bltu	$s6, $a4, .LBB0_64
# %bb.105:
	ld.bu	$a4, $a2, 45
	ori	$a5, $zero, 227
	bne	$a4, $a5, .LBB0_64
# %bb.106:
	addi.d	$a5, $a2, 46
	ori	$a4, $zero, 26
	ori	$s5, $zero, 7
	move	$s7, $s3
.LBB0_107:
	ld.bu	$a6, $a5, 0
	add.d	$a5, $a5, $a6
	addi.d	$s3, $a5, 1
	bltu	$s3, $a1, .LBB0_64
# %bb.108:
	add.d	$a5, $s3, $s5
	addi.d	$a6, $a5, 5
	bltu	$t0, $a6, .LBB0_64
# %bb.109:
	bgeu	$a1, $a6, .LBB0_64
# %bb.110:
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	ld.bu	$a1, $a5, 0
	ori	$a6, $zero, 233
	bne	$a1, $a6, .LBB0_64
# %bb.111:
	add.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 3
	bltu	$s6, $a0, .LBB0_148
# %bb.112:
	add.d	$a0, $a2, $a4
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 193
	bne	$a1, $a2, .LBB0_148
# %bb.113:
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 237
	bne	$a1, $a2, .LBB0_148
# %bb.114:
	ld.bu	$a0, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -9
	addi.w	$a1, $zero, -8
	bltu	$a1, $a0, .LBB0_122
# %bb.115:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB0_64
.LBB0_116:                              # %vector.ph1235
	bstrpick.d	$a3, $s4, 30, 4
	slli.d	$a5, $a3, 4
	sub.d	$a4, $s4, $a5
	slli.d	$a6, $a3, 6
	add.d	$a3, $t3, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a6, $fp, $a7
	add.d	$a6, $a6, $a2
	addi.d	$a6, $a6, 48
	add.d	$a7, $s1, $a2
	addi.d	$a7, $a7, 32
	move	$t0, $a5
.LBB0_117:                              # %vector.body1238
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$a6, $a6, 64
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB0_117
# %bb.118:                              # %middle.block1246
	bne	$a5, $s4, .LBB0_39
	b	.LBB0_40
.LBB0_119:
	addi.d	$a0, $s1, 48
	bltu	$s2, $a0, .LBB0_48
# %bb.120:
	addi.d	$a1, $s1, 76
	move	$a0, $fp
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	bltu	$s2, $a1, .LBB0_64
# %bb.121:                              # %.preheader.preheader
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $zero, $a0
	ld.w	$a2, $s5, 24
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a5, 44
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.d	$s1, $a2, $a1
	add.d	$a2, $a4, $a3
	add.d	$s4, $a2, $a1
	ld.w	$a1, $s5, 32
	ld.w	$a2, $s5, 28
	add.d	$s2, $a4, $a0
	addi.d	$a0, $a5, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$a1, $s5, 28
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.w	$a2, $s5, 32
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_74
.LBB0_122:
	ld.w	$a0, $a5, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a2, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bne	$s7, $a0, .LBB0_134
# %bb.123:
	addi.d	$a0, $s0, 18
	bltu	$a0, $s8, .LBB0_148
# %bb.124:
	addi.d	$a1, $s0, 28
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_148
# %bb.125:
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_148
# %bb.126:
	ld.bu	$a0, $s0, 23
	ori	$a1, $zero, 191
	bne	$a0, $a1, .LBB0_148
# %bb.127:
	ld.w	$a0, $s0, 19
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_148
# %bb.128:
	bltu	$s4, $a0, .LBB0_148
# %bb.129:
	slli.d	$a1, $fp, 10
	addi.d	$a2, $a1, 112
	bltu	$s1, $a2, .LBB0_148
# %bb.130:
	ld.w	$a1, $s0, 24
	sub.d	$a1, $a1, $s4
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a2, $a1, $a2
	bltu	$s6, $a2, .LBB0_148
# %bb.131:
	ori	$a2, $zero, 192
	bltu	$s1, $a2, .LBB0_148
# %bb.132:
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, 192
	move	$a0, $s2
	bltu	$s6, $a3, .LBB0_64
# %bb.133:                              # %.preheader1085.preheader
	add.d	$a2, $s8, $a2
	ld.w	$a3, $a2, 0
	add.d	$a1, $s8, $a1
	st.w	$a3, $a1, 0
	ld.w	$a0, $a2, 4
	st.w	$a0, $a1, 4
	ld.w	$a0, $a2, 8
	st.w	$a0, $a1, 8
	ld.w	$a0, $a2, 12
	st.w	$a0, $a1, 12
	ld.w	$a0, $a2, 16
	st.w	$a0, $a1, 16
	ld.w	$a0, $a2, 20
	st.w	$a0, $a1, 20
	ld.w	$a0, $a2, 24
	st.w	$a0, $a1, 24
	ld.w	$a0, $a2, 28
	st.w	$a0, $a1, 28
	ld.w	$a0, $a2, 32
	st.w	$a0, $a1, 32
	ld.w	$a0, $a2, 36
	st.w	$a0, $a1, 36
	ld.w	$a0, $a2, 40
	st.w	$a0, $a1, 40
	ld.w	$a0, $a2, 44
	st.w	$a0, $a1, 44
	ld.w	$a0, $a2, 48
	st.w	$a0, $a1, 48
	ld.w	$a0, $a2, 52
	st.w	$a0, $a1, 52
	ld.w	$a0, $a2, 56
	st.w	$a0, $a1, 56
	ld.w	$a0, $a2, 60
	st.w	$a0, $a1, 60
	ld.w	$a0, $a2, 64
	st.w	$a0, $a1, 64
	ld.w	$a0, $a2, 68
	st.w	$a0, $a1, 68
	ld.w	$a0, $a2, 72
	st.w	$a0, $a1, 72
	ld.w	$a0, $a2, 76
	st.w	$a0, $a1, 76
	ld.w	$a0, $a2, 80
	st.w	$a0, $a1, 80
	ld.w	$a0, $a2, 84
	st.w	$a0, $a1, 84
	addi.d	$a0, $a2, 88
	addi.d	$a1, $a1, 88
	b	.LBB0_143
.LBB0_134:
	addi.d	$a0, $s0, 19
	bltu	$a0, $s8, .LBB0_148
# %bb.135:
	addi.d	$a1, $s0, 24
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_148
# %bb.136:
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_148
# %bb.137:
	slli.d	$a0, $fp, 10
	addi.d	$a0, $a0, 180
	bltu	$s1, $a0, .LBB0_148
# %bb.138:
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $s8, .LBB0_148
# %bb.139:
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_148
# %bb.140:
	ori	$a0, $zero, 212
	bltu	$s1, $a0, .LBB0_148
# %bb.141:
	ld.w	$a0, $s0, 20
	sub.d	$a0, $a0, $s4
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $a1, 212
	move	$a0, $s2
	bltu	$s6, $a2, .LBB0_64
# %bb.142:                              # %.preheader1086.preheader
	ldx.w	$a2, $s8, $a1
	add.d	$a0, $s8, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	ld.w	$a1, $a0, 4
	st.w	$a1, $a3, 4
	ld.w	$a1, $a0, 8
	st.w	$a1, $a3, 8
	ld.w	$a1, $a0, 12
	st.w	$a1, $a3, 12
	ld.w	$a1, $a0, 16
	st.w	$a1, $a3, 16
	ld.w	$a1, $a0, 20
	st.w	$a1, $a3, 20
	ld.w	$a1, $a0, 24
	st.w	$a1, $a3, 24
	ld.w	$a1, $a0, 28
	st.w	$a1, $a3, 28
	ld.w	$a1, $a0, 32
	st.w	$a1, $a3, 32
	ld.w	$a1, $a0, 36
	st.w	$a1, $a3, 36
	ld.w	$a1, $a0, 40
	st.w	$a1, $a3, 40
	ld.w	$a1, $a0, 44
	st.w	$a1, $a3, 44
	ld.w	$a1, $a0, 48
	st.w	$a1, $a3, 48
	ld.w	$a1, $a0, 52
	st.w	$a1, $a3, 52
	ld.w	$a1, $a0, 56
	st.w	$a1, $a3, 56
	ld.w	$a1, $a0, 60
	st.w	$a1, $a3, 60
	ld.w	$a1, $a0, 64
	st.w	$a1, $a3, 64
	ld.w	$a1, $a0, 68
	st.w	$a1, $a3, 68
	ld.w	$a1, $a0, 72
	st.w	$a1, $a3, 72
	ld.w	$a1, $a0, 76
	st.w	$a1, $a3, 76
	ld.w	$a1, $a0, 80
	st.w	$a1, $a3, 80
	ld.w	$a1, $a0, 84
	st.w	$a1, $a3, 84
	ld.w	$a1, $a0, 88
	st.w	$a1, $a3, 88
	ld.w	$a1, $a0, 92
	st.w	$a1, $a3, 92
	ld.w	$a1, $a0, 96
	st.w	$a1, $a3, 96
	ld.w	$a1, $a0, 100
	st.w	$a1, $a3, 100
	ld.w	$a1, $a0, 104
	st.w	$a1, $a3, 104
	ld.w	$a1, $a0, 108
	st.w	$a1, $a3, 108
	ld.w	$a1, $a0, 112
	st.w	$a1, $a3, 112
	ld.w	$a1, $a0, 116
	st.w	$a1, $a3, 116
	ld.w	$a1, $a0, 120
	st.w	$a1, $a3, 120
	ld.w	$a1, $a0, 124
	st.w	$a1, $a3, 124
	ld.w	$a1, $a0, 128
	st.w	$a1, $a3, 128
	ld.w	$a1, $a0, 132
	st.w	$a1, $a3, 132
	ld.w	$a1, $a0, 136
	st.w	$a1, $a3, 136
	ld.w	$a1, $a0, 140
	st.w	$a1, $a3, 140
	ld.w	$a1, $a0, 144
	st.w	$a1, $a3, 144
	ld.w	$a1, $a0, 148
	st.w	$a1, $a3, 148
	ld.w	$a1, $a0, 152
	st.w	$a1, $a3, 152
	addi.d	$a0, $a0, 156
	addi.d	$a1, $a3, 156
.LBB0_143:                              # %.loopexit
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $s7, -3
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	sltui	$a1, $a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.w	$s6, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a1, $a3, -4
	vst	$vr0, $a3, 0
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $a3, 16
	add.d	$a3, $s8, $a1
	bstrpick.d	$a2, $s4, 31, 0
	sub.d	$a1, $zero, $a2
	beqz	$fp, .LBB0_146
# %bb.144:                              # %.lr.ph.preheader
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a4, $a4, -256
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 256
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 56
	ori	$a6, $zero, 1024
	xvreplgr2vr.w	$xr0, $a6
.LBB0_145:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a5, -32
	xvst	$xr0, $a5, 0
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, 64
	bnez	$a4, .LBB0_145
.LBB0_146:                              # %._crit_edge
	ld.w	$a4, $a0, 12
	sub.d	$s0, $a3, $a2
	add.d	$a4, $s8, $a4
	add.d	$a4, $a4, $a1
	add.d	$a3, $s8, $a2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	ori	$a4, $zero, 3
	or	$s2, $a2, $a3
	bne	$s7, $a4, .LBB0_149
# %bb.147:
	ld.w	$s6, $a0, 64
	addi.d	$a0, $a0, 100
	b	.LBB0_150
.LBB0_148:
	move	$a0, $s2
	b	.LBB0_64
.LBB0_149:
	addi.d	$a0, $a0, 52
.LBB0_150:
	ld.w	$a0, $a0, 0
	add.d	$a0, $s8, $a0
	add.d	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 0
	move	$a0, $s8
	move	$s4, $fp
	move	$a1, $s1
	move	$a2, $zero
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $zero
	move	$a5, $s2
	move	$a6, $fp
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unupack399)
	jirl	$ra, $ra, 0
	addi.w	$a3, $zero, -1
	move	$a1, $a0
	move	$a0, $a3
	beq	$a1, $a3, .LBB0_64
# %bb.151:
	move	$a2, $s1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 32
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s3, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s8
	bgeu	$a0, $a1, .LBB0_82
	b	.LBB0_83
.Lfunc_end0:
	.size	unupack, .Lfunc_end0-unupack
                                        # -- End function
	.globl	unupack399                      # -- Begin function unupack399
	.p2align	5
	.type	unupack399,@function
unupack399:                             # @unupack399
# %bb.0:                                # %.preheader336
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
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$s6, $a5
	move	$fp, $a3
	move	$s7, $a2
	move	$s3, $a1
	move	$s4, $a0
	ld.d	$a1, $sp, 240
	ld.w	$a2, $a3, 0
	ld.w	$a3, $a3, 4
	st.w	$a4, $sp, 128
	st.d	$a1, $sp, 136
	st.w	$a2, $sp, 144
	st.w	$a3, $sp, 148
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 4
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, 8
	ori	$a1, $zero, 2
	move	$a0, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, 12
	ori	$a1, $zero, 3
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 16
	ori	$a1, $zero, 4
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 20
	ori	$a1, $zero, 5
	move	$a0, $s1
	move	$s1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1912
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s3, 31, 0
	add.d	$a5, $s4, $a0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 961
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -64
	ori	$a0, $a0, 4092
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_66 Depth 2
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_16 Depth 2
	st.w	$s7, $sp, 132
	slli.d	$a0, $s7, 2
	bstrpick.d	$a0, $a0, 31, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $a0, 88
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.w	$s7, $sp, 132
	beqz	$a0, .LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	andi	$a0, $s7, 255
	sltu	$a0, $s8, $a0
	ori	$a1, $zero, 8
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 11
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $sp, 128
	srli.d	$a2, $s7, 8
	bstrins.d	$a0, $a2, 31, 8
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 48
	bstrins.d	$a1, $a0, 7, 0
	st.w	$a1, $sp, 128
	ld.d	$a0, $sp, 112
	addi.w	$a2, $zero, -208
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_20
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 128
	ld.d	$a1, $sp, 112
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_33
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	move	$s7, $s1
	move	$s1, $s2
	ld.d	$a0, $sp, 112
	addi.d	$a1, $a0, 96
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_39
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 128
	ld.d	$a1, $sp, 112
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a2, $s7, $a0
	maskeqz	$a3, $s0, $a0
	or	$a1, $a2, $a1
	masknez	$a0, $s7, $a0
	or	$s0, $a3, $a0
	move	$s2, $s5
	move	$fp, $s1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_6:                                # %.preheader335
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $s7, 255
	addi.d	$a1, $a0, -3
	sltu	$a0, $a0, $a1
	masknez	$a0, $a1, $a0
	move	$a1, $s7
	bstrins.d	$a1, $zero, 7, 0
	or	$s7, $a0, $a1
	bltu	$s8, $a0, .LBB1_6
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.w	$s7, $sp, 132
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a0, $s6, .LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bgeu	$s6, $a4, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_1 Depth=1
	ld.bu	$a0, $s6, -1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 10
	lu12i.w	$a2, 1
	ori	$a2, $a2, 8
	add.w	$a2, $a0, $a2
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 128
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$s1, $a3, $a2
	ori	$a2, $a1, 1
	addi.w	$a1, $a2, 0
	st.w	$a2, $sp, 132
	beqz	$a0, .LBB1_35
# %bb.11:                               #   in Loop: Header=BB1_1 Depth=1
	addi.w	$a2, $zero, -1
	beqz	$s3, .LBB1_75
# %bb.12:                               #   in Loop: Header=BB1_1 Depth=1
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s5, 31, 0
	sub.d	$s0, $s6, $a3
	bltu	$s0, $s4, .LBB1_75
# %bb.13:                               #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a3, $s0, 1
	bltu	$a4, $a3, .LBB1_75
# %bb.14:                               #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a3, .LBB1_75
# %bb.15:                               # %.preheader.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ori	$s2, $zero, 2
	.p2align	4, , 16
.LBB1_16:                               # %.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s0, 0
	bstrins.d	$a1, $zero, 15, 8
	andi	$fp, $a0, 255
	and	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 512
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 256
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 132
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	add.d	$a1, $s1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 132
	alsl.d	$a3, $a2, $a0, 1
	srli.d	$a4, $a2, 8
	move	$a1, $a3
	bstrins.d	$a1, $a4, 63, 8
	st.w	$a1, $sp, 132
	bltu	$fp, $s2, .LBB1_38
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=2
	sub.d	$a0, $a4, $a0
	andi	$a4, $a0, 1
	srli.d	$a0, $fp, 1
	bnez	$a4, .LBB1_16
# %bb.18:                               #   in Loop: Header=BB1_1 Depth=1
	andi	$a0, $a3, 255
	srli.d	$a1, $a2, 16
	bstrins.d	$a0, $a1, 63, 16
	st.w	$a0, $sp, 132
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 256
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a4, $s1
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB1_75
# %bb.19:                               #   in Loop: Header=BB1_1 Depth=1
	move	$a1, $zero
	move	$a0, $a3
	move	$s0, $s5
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 132
	addi.w	$s7, $a0, -1
	st.w	$s7, $sp, 132
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 136
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 124
	move	$a1, $s7
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_54)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB1_75
# %bb.21:                               #   in Loop: Header=BB1_1 Depth=1
	ld.w	$s1, $sp, 124
	addi.w	$s5, $s1, -1
	sltui	$a0, $s5, 3
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 64
	st.w	$a1, $sp, 128
	slli.d	$a1, $a0, 6
	st.w	$a1, $sp, 132
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 888
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1
	ori	$a2, $zero, 64
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB1_75
# %bb.22:                               #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 132
	andi	$a1, $a0, 252
	beqz	$a1, .LBB1_42
# %bb.23:                               #   in Loop: Header=BB1_1 Depth=1
	srli.d	$a1, $a0, 1
	ori	$a3, $zero, 1
	bstrins.d	$a0, $a3, 63, 1
	addi.d	$s0, $a1, -1
	andi	$a1, $s0, 255
	sll.w	$fp, $a0, $s0
	slli.d	$a0, $fp, 2
	bstrpick.d	$a0, $a0, 31, 2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 2
	addi.d	$a4, $a0, 376
	st.d	$a4, $sp, 112
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $s8, .LBB1_51
# %bb.24:                               #   in Loop: Header=BB1_1 Depth=1
	bstrins.d	$s0, $zero, 7, 0
	addi.d	$a0, $a1, -4
	or	$a4, $a0, $s0
	st.w	$a4, $sp, 128
	st.w	$zero, $sp, 132
	ori	$a0, $zero, 4
	bltu	$s3, $a0, .LBB1_75
# %bb.25:                               # %.split.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 148
	ld.w	$a5, $sp, 144
	ld.d	$a1, $sp, 136
	move	$a3, $zero
	addi.d	$a4, $a4, -1
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               #   in Loop: Header=BB1_27 Depth=2
	st.w	$a4, $sp, 128
	addi.w	$a4, $a4, -1
	addi.w	$a7, $zero, -1
	move	$a5, $a6
	beq	$a4, $a7, .LBB1_50
.LBB1_27:                               # %.split
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$a1, $s4, .LBB1_75
# %bb.28:                               # %.split
                                        #   in Loop: Header=BB1_27 Depth=2
	addi.d	$a6, $a1, 4
	bltu	$t0, $a6, .LBB1_75
# %bb.29:                               #   in Loop: Header=BB1_27 Depth=2
	ld.w	$a6, $a1, 0
	revb.2w	$a7, $a6
	bstrpick.d	$a6, $a5, 31, 1
	st.w	$a6, $sp, 144
	sub.w	$a7, $a7, $a0
	slli.d	$a3, $a3, 1
	st.w	$a3, $sp, 132
	bltu	$a7, $a6, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_27 Depth=2
	ori	$a3, $a3, 1
	st.w	$a3, $sp, 132
	add.d	$a0, $a0, $a6
	st.w	$a0, $sp, 148
.LBB1_31:                               #   in Loop: Header=BB1_27 Depth=2
	bstrpick.d	$a5, $a5, 31, 25
	bnez	$a5, .LBB1_26
# %bb.32:                               #   in Loop: Header=BB1_27 Depth=2
	slli.d	$a0, $a0, 8
	st.w	$a0, $sp, 148
	slli.d	$a6, $a6, 8
	st.w	$a6, $sp, 144
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 136
	b	.LBB1_26
.LBB1_33:                               #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 128
	ld.d	$a1, $sp, 112
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112
	addi.d	$a0, $sp, 136
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_43
# %bb.34:                               #   in Loop: Header=BB1_1 Depth=1
	move	$fp, $s0
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	move	$s0, $s5
	b	.LBB1_40
.LBB1_35:                               #   in Loop: Header=BB1_1 Depth=1
	move	$fp, $s0
	ori	$a0, $zero, 256
	st.w	$a0, $sp, 128
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 256
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a4, $s1
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB1_75
# %bb.36:                               #   in Loop: Header=BB1_1 Depth=1
	move	$a1, $zero
	move	$a0, $s2
	move	$s0, $s5
	move	$s2, $fp
.LBB1_37:                               # %.thread324
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_70
.LBB1_38:                               #   in Loop: Header=BB1_1 Depth=1
	move	$a1, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$s0, $s5
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_70
.LBB1_39:                               #   in Loop: Header=BB1_1 Depth=1
	move	$s2, $s5
	move	$fp, $s0
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	move	$s0, $s1
.LBB1_40:                               #   in Loop: Header=BB1_1 Depth=1
	ld.w	$s7, $sp, 132
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 136
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 124
	move	$a1, $s7
	move	$a5, $s4
	move	$a6, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_54)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB1_75
# %bb.41:                               #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 128
	ld.w	$s1, $sp, 124
	st.w	$a0, $sp, 132
	addi.w	$s5, $s1, -1
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	move	$s2, $fp
	b	.LBB1_55
.LBB1_42:                               #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	addi.w	$s0, $a0, 1
	b	.LBB1_55
.LBB1_43:                               #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 132
	ori	$s7, $a0, 1
	st.w	$s7, $sp, 132
	ori	$a0, $zero, 128
	st.b	$a0, $sp, 128
	addi.w	$a2, $zero, -1
	beqz	$s3, .LBB1_75
# %bb.44:                               #   in Loop: Header=BB1_1 Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	sub.d	$a0, $s6, $a0
	bltu	$a0, $s4, .LBB1_75
# %bb.45:                               #   in Loop: Header=BB1_1 Depth=1
	bltu	$s6, $s4, .LBB1_75
# %bb.46:                               #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	bltu	$a5, $a1, .LBB1_75
# %bb.47:                               #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a1, .LBB1_75
# %bb.48:                               #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a1, $s6, 1
	bltu	$a5, $a1, .LBB1_75
# %bb.49:                               #   in Loop: Header=BB1_1 Depth=1
	ld.b	$a0, $a0, 0
	st.b	$a0, $s6, 0
	move	$s6, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB1_1
	b	.LBB1_74
.LBB1_50:                               #   in Loop: Header=BB1_1 Depth=1
	alsl.w	$fp, $a3, $fp, 4
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	st.d	$a4, $sp, 112
	ori	$s0, $zero, 4
.LBB1_51:                               #   in Loop: Header=BB1_1 Depth=1
	ori	$a0, $zero, 1
	sll.w	$a2, $a0, $s0
	st.w	$a2, $sp, 128
	st.w	$s0, $sp, 132
	addi.d	$a0, $sp, 136
	ori	$a1, $zero, 1
	addi.d	$a3, $sp, 112
	addi.d	$a5, $sp, 132
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(lzma_upack_esi_50)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB1_75
# %bb.52:                               #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 132
	srai.d	$a1, $a0, 31
	.p2align	4, , 16
.LBB1_53:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	move	$a1, $a0
	bstrpick.d	$a0, $a0, 31, 1
	addi.w	$s0, $s0, -1
	bstrins.d	$a1, $a2, 63, 1
	bnez	$s0, .LBB1_53
# %bb.54:                               #   in Loop: Header=BB1_1 Depth=1
	st.w	$a0, $sp, 132
	add.d	$a1, $a1, $fp
	addi.w	$s0, $a1, 1
	.p2align	4, , 16
.LBB1_55:                               #   in Loop: Header=BB1_1 Depth=1
	st.w	$s1, $sp, 128
	addi.w	$a2, $zero, -1
	bltu	$s6, $s4, .LBB1_75
# %bb.56:                               #   in Loop: Header=BB1_1 Depth=1
	beqz	$s3, .LBB1_75
# %bb.57:                               #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s5, $s3, .LBB1_75
# %bb.58:                               #   in Loop: Header=BB1_1 Depth=1
	bstrpick.d	$a3, $s1, 31, 0
	add.d	$a1, $s6, $a3
	bltu	$a5, $a1, .LBB1_75
# %bb.59:                               #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a1, .LBB1_75
# %bb.60:                               #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s1, $s3, .LBB1_75
# %bb.61:                               #   in Loop: Header=BB1_1 Depth=1
	bstrpick.d	$a1, $s0, 31, 0
	sub.d	$a4, $s6, $a1
	bltu	$a4, $s4, .LBB1_75
# %bb.62:                               #   in Loop: Header=BB1_1 Depth=1
	add.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 1
	bltu	$a5, $a3, .LBB1_75
# %bb.63:                               #   in Loop: Header=BB1_1 Depth=1
	bgeu	$s4, $a3, .LBB1_75
# %bb.64:                               #   in Loop: Header=BB1_1 Depth=1
	sub.d	$a1, $zero, $a1
	beqz	$s1, .LBB1_68
# %bb.65:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$a0, $zero
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_66:                               # %.lr.ph
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a2, $s6, $a1
	st.b	$a2, $s6, 0
	ld.w	$a2, $sp, 128
	addi.w	$a0, $a0, 1
	addi.d	$s6, $s6, 1
	bltu	$a0, $a2, .LBB1_66
# %bb.67:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $sp, 132
	b	.LBB1_69
.LBB1_68:                               #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB1_69:                               # %._crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	ldx.bu	$a1, $s6, $a1
	srli.d	$a0, $a0, 8
	bstrins.d	$a1, $a0, 31, 8
	st.w	$a1, $sp, 132
	ori	$a1, $zero, 128
	move	$a0, $a3
.LBB1_70:                               # %.thread324
                                        #   in Loop: Header=BB1_1 Depth=1
	st.w	$a1, $sp, 128
	addi.w	$a2, $zero, -1
	beqz	$s3, .LBB1_75
# %bb.71:                               # %.thread324
                                        #   in Loop: Header=BB1_1 Depth=1
	bltu	$s6, $s4, .LBB1_75
# %bb.72:                               #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a1, $s6, 1
	bltu	$a5, $a1, .LBB1_75
# %bb.73:                               #   in Loop: Header=BB1_1 Depth=1
	ld.b	$a2, $sp, 132
	st.b	$a2, $s6, 0
	move	$s5, $s0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	move	$s0, $s2
	move	$s2, $a0
	move	$s6, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB1_1
.LBB1_74:
	ori	$a2, $zero, 1
.LBB1_75:                               # %.critedge
	move	$a0, $a2
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
.Lfunc_end1:
	.size	unupack399, .Lfunc_end1-unupack399
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Upack: EP: %08x original:  %08X || %08x\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Upack: context bits out of bounds\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Upack: Context Bits parameter used with lzma: %02x, %02x\n"
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Upack: data initialized, before upack lzma call!\n"
	.size	.L.str.3, 50

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Upack: EP: %08x original %08x\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Upack: something's wrong, report back\n"
	.size	.L.str.5, 39

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Upack: %08x %08x %08x %08x\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Upack: EBX: %08x\n"
	.size	.L.str.7, 18

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Upack: DEST: %08x, %08x\n"
	.size	.L.str.8, 25

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Upack: probably hand-crafted data, report back\n"
	.size	.L.str.9, 48

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Upack: ecx counter: %08x\n"
	.size	.L.str.10, 26

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Upack: before_fixing\n"
	.size	.L.str.11, 22

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Upack v 1.1/1.2\n"
	.size	.L.str.12, 17

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Upack: alvalue out of bounds\n"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Upack: loops: %08x search value: %02x\n"
	.size	.L.str.14, 39

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Upack: callfixerr %08x %08x = %08x, %08x\n"
	.size	.L.str.15, 42

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Upack: callfixerr\n"
	.size	.L.str.16, 19

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Upack: Rebuilding failed\n"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n\tp0: %08x\n\tp1: %08x\n\tp2: %08x\n"
	.size	.L.str.18, 32

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"state[%d] = %08x\n"
	.size	.L.str.19, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
