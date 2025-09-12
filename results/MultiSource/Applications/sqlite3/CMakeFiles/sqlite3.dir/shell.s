	.file	"shell.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1552
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(Argv0)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $a0, %pc_lo12(Argv0)
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 152
	ori	$a0, $zero, 124
	st.h	$a0, $sp, 176
	pcalau12i	$a0, %pc_hi20(mainPrompt)
	addi.d	$a1, $a0, %pc_lo12(mainPrompt)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(continuePrompt)
	addi.d	$a1, $a0, %pc_lo12(continuePrompt)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a2, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(isatty)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(stdin_is_interactive)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(stdin_is_interactive)
	pcalau12i	$a0, %pc_hi20(interrupt_handler)
	addi.d	$a1, $a0, %pc_lo12(interrupt_handler)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	blt	$s0, $a0, .LBB0_9
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$s7, $s0, -1
	ori	$s6, $zero, 1
	ori	$s8, $zero, 45
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s4, $a0, %pc_lo12(.L.str.2)
	move	$s2, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s6, $s6, 1
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $s7, .LBB0_10
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s6, 3
	ldx.d	$s5, $fp, $a0
	ld.bu	$a0, $s5, 0
	bne	$a0, $s8, .LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_3
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	addi.w	$s6, $s6, 1
	slli.d	$a0, $s6, 3
	ldx.d	$s2, $fp, $a0
	b	.LBB0_3
.LBB0_9:
	move	$s2, $zero
	ori	$s6, $zero, 1
.LBB0_10:                               # %._crit_edge
	bge	$s6, $s0, .LBB0_12
# %bb.11:
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $fp, $a0
	addi.w	$s6, $s6, 1
	b	.LBB0_13
.LBB0_12:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_13:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1432
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	bge	$s6, $s0, .LBB0_15
# %bb.14:
	slli.d	$a1, $s6, 3
	ldx.d	$s1, $fp, $a1
	b	.LBB0_16
.LBB0_15:
	move	$s1, $zero
.LBB0_16:
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_19
# %bb.17:
	beqz	$s2, .LBB0_20
.LBB0_18:
	move	$s3, $zero
	b	.LBB0_26
.LBB0_19:
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB0_18
.LBB0_20:
	pcaddu18i	$ra, %call36(getuid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getpwuid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.21:
	ld.d	$s2, $a0, 32
	bnez	$s2, .LBB0_23
.LBB0_22:                               # %.thread.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB0_64
.LBB0_23:                               # %.thread18.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	add.d	$a0, $a0, $a1
	srai.d	$s4, $a0, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_64
# %bb.24:
	move	$s3, $a0
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s4, $a0, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_92
# %bb.25:
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s4
	move	$a1, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $s2
.LBB0_26:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
# %bb.27:
	move	$s4, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB0_29
# %bb.28:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_29:
	addi.d	$a0, $sp, 128
	move	$a1, $s4
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_30:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB0_65
.LBB0_31:                               # %.lr.ph138
	ori	$s3, $zero, 45
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s4, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s5, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s6, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s7, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bail_on_error)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_32:                               #   in Loop: Header=BB0_34 Depth=1
	addi.d	$s8, $s8, 1
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=1
	addi.w	$s8, $s8, 1
	bge	$s8, $s0, .LBB0_65
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $fp, $a0
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB0_65
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	ld.bu	$a1, $a0, 1
	addi.d	$a2, $a0, 1
	addi.d	$a1, $a1, -45
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_32
# %bb.36:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_51
# %bb.37:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
# %bb.38:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_53
# %bb.39:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_54
# %bb.40:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
# %bb.41:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_56
# %bb.42:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_57
# %bb.43:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_59
# %bb.44:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_60
# %bb.45:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_61
# %bb.46:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_62
# %bb.47:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_87
# %bb.48:                               #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_63
# %bb.49:                               #   in Loop: Header=BB0_34 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_88
# %bb.50:                               #   in Loop: Header=BB0_34 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(stdin_is_interactive)
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_51:                               #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 152
	b	.LBB0_33
.LBB0_52:                               #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 152
	b	.LBB0_33
.LBB0_53:                               #   in Loop: Header=BB0_34 Depth=1
	st.w	$zero, $sp, 152
	b	.LBB0_33
.LBB0_54:                               #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 152
	b	.LBB0_33
.LBB0_55:                               #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 152
	ori	$a0, $zero, 44
	st.h	$a0, $sp, 176
	b	.LBB0_33
.LBB0_56:                               #   in Loop: Header=BB0_34 Depth=1
	addi.w	$s8, $s8, 1
	slli.d	$a0, $s8, 3
	ldx.d	$a4, $fp, $a0
	ori	$a0, $zero, 20
	ori	$a3, $zero, 19
	addi.d	$a1, $sp, 176
	b	.LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_34 Depth=1
	addi.w	$s8, $s8, 1
	slli.d	$a0, $s8, 3
	ldx.d	$a4, $fp, $a0
	ori	$a0, $zero, 20
	ori	$a3, $zero, 19
	addi.d	$a1, $sp, 996
.LBB0_58:                               #   in Loop: Header=BB0_34 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_33
.LBB0_59:                               #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 160
	b	.LBB0_33
.LBB0_60:                               #   in Loop: Header=BB0_34 Depth=1
	st.w	$zero, $sp, 160
	b	.LBB0_33
.LBB0_61:                               #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 136
	b	.LBB0_33
.LBB0_62:                               #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(bail_on_error)
	b	.LBB0_33
.LBB0_63:                               #   in Loop: Header=BB0_34 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(stdin_is_interactive)
	b	.LBB0_33
.LBB0_64:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bge	$s0, $a0, .LBB0_31
.LBB0_65:                               # %.critedge
	beqz	$s1, .LBB0_70
# %bb.66:
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 46
	beq	$a0, $a1, .LBB0_91
# %bb.67:
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	pcalau12i	$a1, %pc_hi20(callback)
	addi.d	$a2, $a1, %pc_lo12(callback)
	addi.d	$a3, $sp, 128
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1440
	add.d	$a4, $sp, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	beqz	$a0, .LBB0_81
# %bb.68:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB0_81
# %bb.69:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_70:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB0_77
# %bb.71:
	pcaddu18i	$ra, %call36(sqlite3_libversion)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getuid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getpwuid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_73
# %bb.72:
	ld.d	$fp, $a0, 32
	bnez	$fp, .LBB0_74
.LBB0_73:                               # %.thread.i
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB0_78
.LBB0_74:                               # %.thread18.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	add.d	$a0, $a0, $a1
	srai.d	$s1, $a0, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_78
# %bb.75:
	move	$s0, $a0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$fp, $a0, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_79
# %bb.76:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_80
.LBB0_77:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a1, $a0, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB0_81
.LBB0_78:
	move	$s0, $zero
.LBB0_79:                               # %.thread125
	addi.d	$a0, $sp, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB0_80:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_81:
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB0_83
# %bb.82:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 168
.LBB0_83:                               # %set_table_name.exit
	pcalau12i	$s1, %pc_hi20(db)
	ld.d	$a0, $s1, %pc_lo12(db)
	beqz	$a0, .LBB0_85
# %bb.84:
	pcaddu18i	$ra, %call36(sqlite3_close)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_86
.LBB0_85:
	move	$a0, $fp
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1568
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
.LBB0_86:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$s0, $a0, 0
	ld.d	$a0, $s1, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_85
.LBB0_87:
	pcaddu18i	$ra, %call36(sqlite3_libversion)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB0_85
.LBB0_88:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_93
# %bb.89:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_93
# %bb.90:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_85
.LBB0_91:
	addi.d	$a1, $sp, 128
	move	$a0, $s1
	pcaddu18i	$ra, %call36(do_meta_command)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_92:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_93:
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.p2align	5                               # -- Begin function interrupt_handler
	.type	interrupt_handler,@function
interrupt_handler:                      # @interrupt_handler
# %bb.0:
	pcalau12i	$a0, %pc_hi20(seenInterrupt)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(seenInterrupt)
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	beqz	$a0, .LBB1_2
# %bb.1:
	pcaddu18i	$t8, %call36(sqlite3_interrupt)
	jr	$t8
.LBB1_2:
	ret
.Lfunc_end1:
	.size	interrupt_handler, .Lfunc_end1-interrupt_handler
                                        # -- End function
	.p2align	5                               # -- Begin function open_db
	.type	open_db,@function
open_db:                                # @open_db
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_2
# %bb.1:
	ldptr.d	$a0, $fp, 5400
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sqlite3_open)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$s1, %pc_hi20(db)
	st.d	$a0, $s1, %pc_lo12(db)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	pcalau12i	$a2, %pc_hi20(shellstaticFunc)
	addi.d	$a5, $a2, %pc_lo12(shellstaticFunc)
	ori	$a3, $zero, 1
	move	$a2, $zero
	move	$a4, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(sqlite3_create_function)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errcode)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_3
.LBB2_2:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_3:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$s0, $a0, 0
	ldptr.d	$fp, $fp, 5400
	ld.d	$a0, $s1, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	open_db, .Lfunc_end2-open_db
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function usage
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(Argv0)
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcalau12i	$a2, %pc_hi20(zOptions)
	addi.d	$a2, $a2, %pc_lo12(zOptions)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	usage, .Lfunc_end3-usage
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function do_meta_command
.LCPI4_0:
	.word	4                               # 0x4
	.word	13                              # 0xd
	.word	4                               # 0x4
	.word	4                               # 0x4
.LCPI4_1:
	.word	4                               # 0x4
	.word	13                              # 0xd
	.word	2                               # 0x2
	.word	13                              # 0xd
	.text
	.p2align	5
	.type	do_meta_command,@function
do_meta_command:                        # @do_meta_command
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1936
	move	$s0, $a0
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB4_217
# %bb.1:                                # %.preheader630.lr.ph
	move	$fp, $a1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$t6, $zero
	move	$s3, $zero
	addi.d	$a1, $s0, 1
	ori	$t4, $zero, 1
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	ori	$a3, $zero, 34
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1432
	add.d	$a4, $sp, $a4
	ori	$a5, $zero, 92
	ori	$a6, $zero, 110
	ori	$a7, $zero, 114
	ori	$t0, $zero, 116
	ori	$t1, $zero, 48
	ori	$t2, $zero, 49
	ori	$t3, $zero, 39
	.p2align	4, , 16
.LBB4_2:                                # %.preheader630
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_40 Depth 2
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_21 Depth 2
	move	$t5, $t6
	ld.d	$s2, $a0, 0
	addi.d	$t6, $t4, -1
	slli.d	$t7, $t4, 32
	addi.w	$s5, $t4, 1
	add.d	$s6, $a1, $t4
	move	$s1, $t4
	.p2align	4, , 16
.LBB4_3:                                #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $s0, $t6
	ld.bu	$t8, $t4, 1
	move	$t4, $s5
	move	$s4, $s6
	addi.w	$s1, $s1, 1
	slli.d	$s5, $t8, 1
	ldx.hu	$s6, $s2, $s5
	addi.d	$t6, $t6, 1
	add.d	$t7, $t7, $a2
	addi.w	$s5, $t4, 1
	slli.d	$s7, $s6, 50
	addi.d	$s6, $s4, 1
	bltz	$s7, .LBB4_3
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	beq	$t8, $a3, .LBB4_11
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	beq	$t8, $t3, .LBB4_11
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=1
	beqz	$t8, .LBB4_59
# %bb.7:                                #   in Loop: Header=BB4_2 Depth=1
	ori	$s5, $zero, 0
	lu32i.d	$s5, -1
	add.d	$t7, $t7, $s5
	srai.d	$t7, $t7, 32
	ldx.bu	$s5, $s0, $t7
	add.d	$t7, $s0, $t6
	slli.d	$s6, $t5, 3
	stx.d	$t7, $s6, $a4
	beqz	$s5, .LBB4_36
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s1, $s5, 1
	ldx.hu	$s1, $s2, $s1
	slli.d	$s1, $s1, 50
	bltz	$s1, .LBB4_54
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=2
	ld.bu	$s5, $s4, 0
	addi.d	$s4, $s4, 1
	addi.w	$t4, $t4, 1
	bnez	$s5, .LBB4_8
# %bb.10:                               # %.critedge2.thread.loopexit
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.w	$t4, $t4, -1
	bnez	$t8, .LBB4_37
	b	.LBB4_55
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	srai.d	$t6, $t7, 32
	add.d	$t6, $s0, $t6
	slli.d	$t7, $t5, 3
	stx.d	$t6, $t7, $a4
	add.d	$t7, $s0, $t4
	.p2align	4, , 16
.LBB4_12:                               #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s2, $t7, 0
	addi.d	$t7, $t7, 1
	addi.w	$t4, $t4, 1
	beqz	$s2, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=2
	bne	$s2, $t8, .LBB4_12
.LBB4_14:                               # %.critedge
                                        #   in Loop: Header=BB4_2 Depth=1
	bne	$s2, $t8, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_2 Depth=1
	st.b	$zero, $t7, -1
	beq	$t8, $a3, .LBB4_17
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_16:                               #   in Loop: Header=BB4_2 Depth=1
	addi.w	$t4, $t4, -1
	bne	$t8, $a3, .LBB4_57
.LBB4_17:                               #   in Loop: Header=BB4_2 Depth=1
	ld.bu	$s4, $t6, 0
	beqz	$s4, .LBB4_35
# %bb.18:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	move	$t7, $zero
	move	$s2, $zero
	add.d	$t8, $s0, $s1
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_19:                               #   in Loop: Header=BB4_21 Depth=2
	andi	$s1, $s4, 255
.LBB4_20:                               #   in Loop: Header=BB4_21 Depth=2
	stx.b	$s1, $t8, $t7
	addi.w	$s2, $s2, 1
	ldx.bu	$s4, $t6, $s2
	addi.d	$t7, $t7, 1
	beqz	$s4, .LBB4_34
.LBB4_21:                               # %.lr.ph.i
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$s4, $a5, .LBB4_19
# %bb.22:                               #   in Loop: Header=BB4_21 Depth=2
	addi.w	$s4, $s2, 1
	ldx.b	$s1, $t6, $s4
	andi	$s5, $s1, 255
	beq	$s5, $a6, .LBB4_27
# %bb.23:                               #   in Loop: Header=BB4_21 Depth=2
	beq	$s5, $a7, .LBB4_26
# %bb.24:                               #   in Loop: Header=BB4_21 Depth=2
	bne	$s5, $t0, .LBB4_28
# %bb.25:                               #   in Loop: Header=BB4_21 Depth=2
	ori	$s1, $zero, 9
	move	$s2, $s4
	b	.LBB4_20
.LBB4_26:                               #   in Loop: Header=BB4_21 Depth=2
	ori	$s1, $zero, 13
	move	$s2, $s4
	b	.LBB4_20
.LBB4_27:                               #   in Loop: Header=BB4_21 Depth=2
	ori	$s1, $zero, 10
	move	$s2, $s4
	b	.LBB4_20
.LBB4_28:                               #   in Loop: Header=BB4_21 Depth=2
	andi	$s5, $s5, 248
	bne	$s5, $t1, .LBB4_32
# %bb.29:                               #   in Loop: Header=BB4_21 Depth=2
	addi.w	$s5, $s2, 2
	ldx.bu	$s6, $t6, $s5
	andi	$s7, $s6, 248
	addi.d	$s1, $s1, -48
	bne	$s7, $t1, .LBB4_32
# %bb.30:                               #   in Loop: Header=BB4_21 Depth=2
	addi.w	$s2, $s2, 3
	ldx.bu	$s4, $t6, $s2
	alsl.d	$s1, $s1, $s6, 3
	andi	$s6, $s4, 248
	addi.d	$s1, $s1, -48
	bne	$s6, $t1, .LBB4_33
# %bb.31:                               #   in Loop: Header=BB4_21 Depth=2
	alsl.d	$s1, $s1, $s4, 3
	addi.d	$s1, $s1, -48
	b	.LBB4_20
.LBB4_32:                               #   in Loop: Header=BB4_21 Depth=2
	move	$s2, $s4
	b	.LBB4_20
.LBB4_33:                               #   in Loop: Header=BB4_21 Depth=2
	move	$s2, $s5
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_34:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB4_2 Depth=1
	bstrpick.d	$t7, $t7, 31, 0
	stx.b	$zero, $t6, $t7
	b	.LBB4_57
.LBB4_35:                               #   in Loop: Header=BB4_2 Depth=1
	stx.b	$zero, $t6, $zero
	b	.LBB4_57
.LBB4_36:                               #   in Loop: Header=BB4_2 Depth=1
	addi.w	$t4, $s1, -1
	beqz	$t8, .LBB4_55
.LBB4_37:                               # %.lr.ph.i558.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB4_40
	.p2align	4, , 16
.LBB4_38:                               #   in Loop: Header=BB4_40 Depth=2
	andi	$t8, $t8, 255
.LBB4_39:                               #   in Loop: Header=BB4_40 Depth=2
	stx.b	$t8, $t7, $s1
	add.d	$t8, $t7, $s2
	ld.bu	$t8, $t8, 1
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, 1
	beqz	$t8, .LBB4_53
.LBB4_40:                               # %.lr.ph.i558
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$t8, $a5, .LBB4_38
# %bb.41:                               #   in Loop: Header=BB4_40 Depth=2
	addi.w	$s4, $s2, 1
	add.d	$t8, $s0, $s4
	ldx.b	$t8, $t8, $t6
	andi	$s5, $t8, 255
	beq	$s5, $a6, .LBB4_46
# %bb.42:                               #   in Loop: Header=BB4_40 Depth=2
	beq	$s5, $a7, .LBB4_45
# %bb.43:                               #   in Loop: Header=BB4_40 Depth=2
	bne	$s5, $t0, .LBB4_47
# %bb.44:                               #   in Loop: Header=BB4_40 Depth=2
	ori	$t8, $zero, 9
	move	$s2, $s4
	b	.LBB4_39
.LBB4_45:                               #   in Loop: Header=BB4_40 Depth=2
	ori	$t8, $zero, 13
	move	$s2, $s4
	b	.LBB4_39
.LBB4_46:                               #   in Loop: Header=BB4_40 Depth=2
	ori	$t8, $zero, 10
	move	$s2, $s4
	b	.LBB4_39
.LBB4_47:                               #   in Loop: Header=BB4_40 Depth=2
	andi	$s5, $s5, 248
	bne	$s5, $t1, .LBB4_51
# %bb.48:                               #   in Loop: Header=BB4_40 Depth=2
	addi.w	$s5, $s2, 2
	add.d	$s6, $s0, $s5
	ldx.bu	$s6, $s6, $t6
	andi	$s7, $s6, 248
	addi.d	$t8, $t8, -48
	bne	$s7, $t1, .LBB4_51
# %bb.49:                               #   in Loop: Header=BB4_40 Depth=2
	addi.w	$s2, $s2, 3
	add.d	$s4, $s0, $s2
	ldx.bu	$s4, $s4, $t6
	alsl.d	$t8, $t8, $s6, 3
	andi	$s6, $s4, 248
	addi.d	$t8, $t8, -48
	bne	$s6, $t1, .LBB4_52
# %bb.50:                               #   in Loop: Header=BB4_40 Depth=2
	alsl.d	$t8, $t8, $s4, 3
	addi.d	$t8, $t8, -48
	b	.LBB4_39
.LBB4_51:                               #   in Loop: Header=BB4_40 Depth=2
	move	$s2, $s4
	b	.LBB4_39
.LBB4_52:                               #   in Loop: Header=BB4_40 Depth=2
	move	$s2, $s5
	b	.LBB4_39
	.p2align	4, , 16
.LBB4_53:                               # %._crit_edge.loopexit.i565
                                        #   in Loop: Header=BB4_2 Depth=1
	bstrpick.d	$t7, $s1, 31, 0
	b	.LBB4_56
.LBB4_54:                               # %.critedge2
                                        #   in Loop: Header=BB4_2 Depth=1
	st.b	$zero, $s4, -1
	ldx.bu	$t8, $s0, $t6
	bnez	$t8, .LBB4_37
.LBB4_55:                               #   in Loop: Header=BB4_2 Depth=1
	move	$t7, $zero
.LBB4_56:                               # %resolve_backslashes.exit570
                                        #   in Loop: Header=BB4_2 Depth=1
	add.d	$t7, $s0, $t7
	stx.b	$zero, $t7, $t6
.LBB4_57:                               #   in Loop: Header=BB4_2 Depth=1
	ldx.bu	$t6, $s0, $t4
	addi.w	$s3, $s3, 1
	beqz	$t6, .LBB4_60
# %bb.58:                               #   in Loop: Header=BB4_2 Depth=1
	addi.d	$t6, $t5, 1
	bltu	$t5, $t2, .LBB4_2
	b	.LBB4_60
.LBB4_59:                               # %._crit_edge
	move	$s3, $t5
	beqz	$t5, .LBB4_217
.LBB4_60:                               # %._crit_edge.thread771
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1432
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$s4, $s0, 0
	ori	$a1, $zero, 98
	addi.w	$s1, $a0, 0
	bne	$s4, $a1, .LBB4_72
# %bb.61:                               # %._crit_edge.thread771
	ori	$a1, $zero, 2
	blt	$s1, $a1, .LBB4_72
# %bb.62:
	bstrpick.d	$a2, $a0, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.63:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_215
# %bb.64:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s1, $fp, 0
	move	$s0, $a0
	beqz	$s1, .LBB4_70
# %bb.65:                               # %.lr.ph.i571
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1
	.p2align	4, , 16
.LBB4_66:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s1
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s1, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s1, .LBB4_66
# %bb.67:                               # %sub_0.i
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB4_70
# %bb.68:                               # %sub_1.i
	ld.bu	$a0, $fp, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB4_70
# %bb.69:                               # %.tail.i
	ld.bu	$a0, $fp, 2
	beqz	$a0, .LBB4_114
.LBB4_70:                               # %.tail.thread.i
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB4_71:                               # %booleanValue.exit
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(bail_on_error)
	st.w	$a1, $a2, %pc_lo12(bail_on_error)
	b	.LBB4_218
.LBB4_72:
	ori	$a1, $zero, 100
	bne	$s4, $a1, .LBB4_77
# %bb.73:
	ori	$a2, $zero, 2
	blt	$s1, $a2, .LBB4_77
# %bb.74:
	move	$s2, $a0
	bstrpick.d	$a2, $a0, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_78
# %bb.75:
	st.d	$zero, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 120
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 152
	st.w	$a0, $sp, 144
	ori	$a0, $zero, 3
	lu32i.d	$a0, 15
	st.d	$a0, $sp, 188
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 58
	st.w	$a1, $sp, 196
	st.w	$zero, $sp, 132
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96
	beqz	$a2, .LBB4_217
.LBB4_76:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_77:
	move	$s2, $a0
	bne	$s4, $a1, .LBB4_86
.LBB4_78:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_98
# %bb.79:
	move	$a2, $zero
.LBB4_80:                               # %.critedge554.thread622
	move	$a1, $s2
.LBB4_81:                               # %.critedge554.thread622
	beqz	$a2, .LBB4_109
# %bb.82:                               # %.critedge554.thread622
	ori	$a0, $zero, 5
	blt	$s1, $a0, .LBB4_109
# %bb.83:
	bstrpick.d	$s2, $a1, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_106
# %bb.84:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_106
# %bb.85:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sqlite3_busy_timeout)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_86:
	addi.d	$a0, $s4, -101
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB4_148
# %bb.87:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_88:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_183
# %bb.89:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_183
# %bb.90:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $s0, 0
	move	$s1, $a0
	beqz	$s2, .LBB4_96
# %bb.91:                               # %.lr.ph.i577
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 1
.LBB4_92:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s2
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s2, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s2, .LBB4_92
# %bb.93:                               # %sub_0.i581
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB4_96
# %bb.94:                               # %sub_1.i586
	ld.bu	$a0, $s0, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB4_96
# %bb.95:                               # %.tail.i588
	ld.bu	$a0, $s0, 2
	beqz	$a0, .LBB4_229
.LBB4_96:                               # %.tail.thread.i583
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB4_97:                               # %booleanValue.exit589
	move	$a0, $zero
	st.w	$a1, $fp, 8
	b	.LBB4_218
.LBB4_98:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	st.w	$zero, $fp, 28
	bne	$a0, $s0, .LBB4_100
# %bb.99:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(run_schema_dump_query)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	addi.d	$a2, $a2, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
	b	.LBB4_102
.LBB4_100:                              # %.lr.ph684.preheader
	bstrpick.d	$a0, $s3, 31, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1440
	add.d	$s2, $sp, $a1
	addi.d	$s3, $a0, -1
	pcalau12i	$s4, %pc_hi20(zShellStatic)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$s0, $a0, %pc_lo12(.L.str.48)
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$s1, $a0, %pc_lo12(.L.str.49)
	.p2align	4, , 16
.LBB4_101:                              # %.lr.ph684
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	st.d	$a0, $s4, %pc_lo12(zShellStatic)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(run_schema_dump_query)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, %pc_lo12(zShellStatic)
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB4_101
.LBB4_102:                              # %.loopexit625
	ld.w	$a0, $fp, 28
	beqz	$a0, .LBB4_104
# %bb.103:
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 28
.LBB4_104:
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 8
.LBB4_105:                              # %.loopexit
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_106:
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_109
# %bb.107:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_109
# %bb.108:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(booleanValue)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(enableTimer)
	st.w	$a1, $a2, %pc_lo12(enableTimer)
	b	.LBB4_218
.LBB4_109:
	ori	$a0, $zero, 119
	bne	$s4, $a0, .LBB4_215
# %bb.110:
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.111:                              # %.preheader
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_217
# %bb.112:                              # %.lr.ph686.preheader
	bstrpick.d	$a0, $s3, 31, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1440
	add.d	$s0, $sp, $a1
	addi.d	$fp, $fp, 68
	addi.d	$s1, $a0, -1
	.p2align	4, , 16
.LBB4_113:                              # %.lr.ph686
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	st.w	$a1, $fp, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 4
	bnez	$s1, .LBB4_113
	b	.LBB4_218
.LBB4_114:
	ori	$a1, $zero, 1
	b	.LBB4_71
.LBB4_115:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_180
# %bb.116:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB4_180
# %bb.117:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1448
	add.d	$a0, $sp, $a0
	ld.d	$s5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s6, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$s7, $a0, 32
	beqz	$s7, .LBB4_228
# %bb.118:
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sqlite3_mprintf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_217
# %bb.119:
	move	$s2, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 120
	move	$a0, $a1
	move	$a1, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB4_255
# %bb.120:
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_column_count)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB4_217
# %bb.121:
	addi.w	$s0, $s0, 20
	alsl.w	$a0, $s2, $s0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_217
# %bb.122:
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a2, $a0, %pc_lo12(.L.str.61)
	move	$a0, $s0
	move	$a1, $s3
	move	$a3, $s5
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2
	move	$s5, $s2
	blt	$s2, $a2, .LBB4_235
# %bb.123:                              # %.lr.ph662.preheader
	addi.w	$a4, $a0, 0
	ori	$a1, $zero, 1
	bne	$s5, $a2, .LBB4_230
# %bb.124:
	move	$a0, $a4
	b	.LBB4_233
.LBB4_125:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.126:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.127:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $s1, 0
	beq	$a0, $a1, .LBB4_129
# %bb.128:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB4_129:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_192
# %bb.130:
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB4_226
# %bb.131:
	addi.d	$a1, $fp, 1300
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a2, $a0, %pc_lo12(.L.str.88)
	lu12i.w	$a0, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_132:
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_134
# %bb.133:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_213
.LBB4_134:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_213
# %bb.135:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $s0, 0
	move	$s1, $a0
	beqz	$s2, .LBB4_141
# %bb.136:                              # %.lr.ph.i591
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 1
.LBB4_137:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s2
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s2, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s2, .LBB4_137
# %bb.138:                              # %sub_0.i595
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB4_141
# %bb.139:                              # %sub_1.i600
	ld.bu	$a0, $s0, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB4_141
# %bb.140:                              # %.tail.i602
	ld.bu	$a0, $s0, 2
	beqz	$a0, .LBB4_220
.LBB4_141:                              # %.tail.thread.i597
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB4_142:                              # %booleanValue.exit603
	move	$a0, $zero
	st.w	$a1, $fp, 32
	b	.LBB4_218
.LBB4_143:
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.144:
	bstrpick.d	$a0, $s3, 30, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.145:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(mainPrompt)
	addi.d	$a0, $a0, %pc_lo12(mainPrompt)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB4_217
# %bb.146:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1448
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(continuePrompt)
	addi.d	$a0, $a0, %pc_lo12(continuePrompt)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_147:
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	beqz	$a1, .LBB4_218
	b	.LBB4_215
.LBB4_148:                              # %.critedge554
	addi.d	$a0, $s4, -116
	ori	$a1, $zero, 116
	sltui	$a2, $a0, 1
	bne	$s4, $a1, .LBB4_80
# %bb.149:                              # %.critedge554
	ori	$a0, $zero, 2
	move	$a1, $s2
	blt	$s1, $a0, .LBB4_81
# %bb.150:
	bstrpick.d	$a2, $a1, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	ori	$a2, $zero, 1
	bnez	$a0, .LBB4_81
# %bb.151:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_206
# %bb.152:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a1, $a1, %pc_lo12(.L.str.111)
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 80
	addi.d	$a5, $sp, 96
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_get_table)
	jirl	$ra, $ra, 0
	b	.LBB4_207
.LBB4_153:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.154:
	addi.w	$s2, $s3, 0
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB4_215
# %bb.155:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_179
# %bb.156:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_179
# %bb.157:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_198
# %bb.158:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_198
# %bb.159:
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_221
# %bb.160:
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_227
# %bb.161:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_254
# %bb.162:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_256
# %bb.163:
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_271
# %bb.164:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_282
# %bb.165:
	ori	$a0, $zero, 5
	ori	$a1, $zero, 3
	st.w	$a0, $fp, 24
	bltu	$s2, $a1, .LBB4_273
# %bb.166:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1448
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	b	.LBB4_274
.LBB4_167:
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.168:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.169:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a4, $a0, 0
	addi.d	$a1, $fp, 868
	b	.LBB4_174
.LBB4_170:
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_190
# %bb.171:
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_193
# %bb.172:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_193
# %bb.173:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a4, $a0, 0
	addi.d	$a1, $fp, 48
.LBB4_174:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 20
	ori	$a3, $zero, 19
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_175:
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.176:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.177:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_219
# %bb.178:
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_179:
	move	$a0, $zero
	st.w	$zero, $fp, 24
	b	.LBB4_218
.LBB4_180:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.181:
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_215
# %bb.182:
	st.d	$zero, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 120
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(zShellStatic)
	st.d	$a0, $s0, %pc_lo12(zShellStatic)
	ld.d	$a0, $fp, 0
	st.w	$zero, $sp, 152
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 144
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96
	st.d	$zero, $s0, %pc_lo12(zShellStatic)
	beqz	$a2, .LBB4_217
	b	.LBB4_76
.LBB4_183:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_199
# %bb.184:                              # %.critedge543
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.185:
	addi.w	$a0, $s3, 0
	ori	$s0, $zero, 1
	beq	$a0, $s0, .LBB4_187
# %bb.186:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(booleanValue)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB4_210
.LBB4_187:                              # %.critedge546
	ld.w	$a0, $fp, 888
	bnez	$a0, .LBB4_189
# %bb.188:
	ld.w	$a0, $fp, 24
	ld.w	$a1, $fp, 32
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 888
	st.w	$a0, $fp, 892
	st.w	$a1, $fp, 896
	addi.d	$a0, $fp, 900
	addi.d	$a1, $fp, 68
	ori	$a2, $zero, 400
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_189:
	ori	$a0, $zero, 9
	st.w	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 32
	addi.d	$a0, $fp, 100
	ori	$a2, $zero, 68
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI4_1)
	move	$a0, $zero
	vst	$vr0, $fp, 68
	vst	$vr1, $fp, 84
	b	.LBB4_218
.LBB4_190:
	st.d	$zero, $sp, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 120
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 152
	ori	$a0, $zero, 3
	addi.w	$a1, $s3, 0
	ori	$a2, $zero, 1
	st.w	$a0, $sp, 144
	bne	$a1, $a2, .LBB4_200
# %bb.191:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.100)
	addi.d	$a1, $a1, %pc_lo12(.L.str.100)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 112
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	b	.LBB4_224
.LBB4_192:
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 16
	addi.d	$a1, $fp, 1300
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a2, $a0, %pc_lo12(.L.str.85)
	lu12i.w	$a0, 1
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_193:                              # %.critedge553
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.194:
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 16
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.104)
	addi.d	$s1, $a2, %pc_lo12(.L.str.104)
	masknez	$a2, $s1, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.105)
	addi.d	$s2, $a3, %pc_lo12(.L.str.105)
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.103)
	addi.d	$s0, $a1, %pc_lo12(.L.str.103)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a2, $a1, %pc_lo12(.L.str.52)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 888
	ld.d	$a0, $fp, 16
	sltui	$a1, $a1, 1
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a2, $a1, %pc_lo12(.L.str.54)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	ld.d	$a0, $fp, 16
	sltui	$a1, $a1, 1
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a2, $a1, %pc_lo12(.L.str.56)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a0, $fp, 16
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(modeDescr)
	addi.d	$a2, $a2, %pc_lo12(modeDescr)
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a2, $a1, %pc_lo12(.L.str.69)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$s1, $a1, %pc_lo12(.L.str.106)
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a2, $a1, %pc_lo12(.L.str.83)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 868
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 1300
	ld.d	$a0, $fp, 16
	addi.d	$a2, $fp, 1300
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.85)
	addi.d	$a3, $a3, %pc_lo12(.L.str.85)
	maskeqz	$a1, $a3, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.84)
	addi.d	$a2, $a1, %pc_lo12(.L.str.84)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.101)
	addi.d	$a2, $a1, %pc_lo12(.L.str.101)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 48
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 68
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$s0, $a0, %pc_lo12(.L.str.109)
	ori	$s2, $zero, 468
.LBB4_195:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $fp, $s1
	beqz	$a2, .LBB4_197
# %bb.196:                              #   in Loop: Header=BB4_195 Depth=1
	ld.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 4
	bne	$s1, $s2, .LBB4_195
.LBB4_197:                              # %.critedge39
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_198:
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_199:
	ori	$a0, $zero, 2
	b	.LBB4_218
.LBB4_200:                              # %.preheader629
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	ld.bu	$s1, $s0, 0
	beqz	$s1, .LBB4_203
# %bb.201:                              # %.lr.ph656
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 1
.LBB4_202:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s1
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s1, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s1, .LBB4_202
.LBB4_203:                              # %._crit_edge657
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_212
# %bb.204:
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_222
# %bb.205:
	pcalau12i	$s1, %pc_hi20(zShellStatic)
	st.d	$s0, $s1, %pc_lo12(zShellStatic)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$a1, $a1, %pc_lo12(.L.str.99)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 112
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(zShellStatic)
	b	.LBB4_224
.LBB4_206:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(zShellStatic)
	st.d	$a0, $s0, %pc_lo12(zShellStatic)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a1, $a1, %pc_lo12(.L.str.112)
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 80
	addi.d	$a5, $sp, 96
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_get_table)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(zShellStatic)
.LBB4_207:
	ld.d	$a2, $sp, 96
	bnez	$a2, .LBB4_257
# %bb.208:
	beqz	$a0, .LBB4_258
.LBB4_209:                              # %.loopexit626
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_free_table)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_210:
	ld.w	$a0, $fp, 888
	beqz	$a0, .LBB4_217
# %bb.211:
	ld.w	$a0, $fp, 892
	ld.w	$a1, $fp, 896
	st.w	$zero, $fp, 888
	st.w	$a0, $fp, 24
	st.w	$a1, $fp, 32
	addi.d	$a0, $fp, 68
	addi.d	$a1, $fp, 900
	ori	$a2, $zero, 400
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_212:
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	b	.LBB4_223
.LBB4_213:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.214:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(zHelp)
	addi.d	$a1, $a1, %pc_lo12(zHelp)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_215:                              # %.thread782
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.118)
	addi.d	$a1, $a1, %pc_lo12(.L.str.118)
.LBB4_216:                              # %.loopexit
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB4_217:                              # %.loopexit
	move	$a0, $zero
.LBB4_218:                              # %.loopexit
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1952
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
.LBB4_219:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.92)
	addi.d	$a1, $a1, %pc_lo12(.L.str.92)
	b	.LBB4_216
.LBB4_220:
	ori	$a1, $zero, 1
	b	.LBB4_142
.LBB4_221:
	move	$a0, $zero
	ori	$a1, $zero, 2
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_222:
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
.LBB4_223:
	st.d	$a0, $sp, 96
	st.d	$zero, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	st.d	$a0, $sp, 80
	st.d	$zero, $sp, 88
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 80
	pcaddu18i	$ra, %call36(callback)
	jirl	$ra, $ra, 0
.LBB4_224:
	ld.d	$a2, $sp, 112
	beqz	$a2, .LBB4_217
# %bb.225:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_226:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.87)
	addi.d	$a1, $a1, %pc_lo12(.L.str.87)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $zero
	st.d	$a1, $fp, 16
	b	.LBB4_218
.LBB4_227:
	move	$a0, $zero
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_228:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 39
	b	.LBB4_105
.LBB4_229:
	ori	$a1, $zero, 1
	b	.LBB4_97
.LBB4_230:                              # %vector.ph
	addi.w	$a1, $s5, -1
	bstrpick.d	$a2, $a1, 31, 0
	bstrpick.d	$a0, $a2, 31, 1
	slli.d	$a3, $a0, 1
	alsl.d	$a0, $a0, $a4, 2
	ori	$a1, $a1, 1
	add.d	$a4, $a4, $s3
	addi.d	$a4, $a4, 3
	lu12i.w	$a5, 258755
	ori	$a5, $a5, 3884
	move	$a6, $a3
.LBB4_231:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a4, -3
	addi.d	$a6, $a6, -2
	addi.d	$a4, $a4, 4
	bnez	$a6, .LBB4_231
# %bb.232:                              # %middle.block
	beq	$a3, $a2, .LBB4_235
.LBB4_233:                              # %.lr.ph662.preheader806
	sub.d	$a1, $s5, $a1
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3884
.LBB4_234:                              # %.lr.ph662
                                        # =>This Inner Loop Header: Depth=1
	stx.h	$a2, $s3, $a0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB4_234
.LBB4_235:                              # %._crit_edge663
	ld.d	$a1, $fp, 0
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 41
	stx.h	$a2, $s3, $a0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 120
	move	$a0, $a1
	move	$a1, $s3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB4_275
# %bb.236:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_276
# %bb.237:
	slli.d	$a0, $s5, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_253
# %bb.238:
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s4, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $s7, $a0
	srai.d	$a0, $a0, 32
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ori	$s3, $zero, 13
	lu12i.w	$a0, 2
	ori	$s7, $a0, 1025
	addi.w	$s8, $zero, -1
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	b	.LBB4_240
.LBB4_239:                              # %._crit_edge667
                                        #   in Loop: Header=BB4_240 Depth=1
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_reset)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	bnez	$s4, .LBB4_279
.LBB4_240:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_243 Depth 2
                                        #     Child Loop BB4_252 Depth 2
	move	$a0, $zero
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(local_getline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_281
# %bb.241:                              #   in Loop: Header=BB4_240 Depth=1
	move	$s0, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	move	$s4, $s0
	b	.LBB4_243
.LBB4_242:                              #   in Loop: Header=BB4_243 Depth=2
	addi.d	$s4, $s4, 1
.LBB4_243:                              #   Parent Loop BB4_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s4, 0
	bltu	$s3, $a0, .LBB4_245
# %bb.244:                              #   in Loop: Header=BB4_243 Depth=2
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	and	$a1, $a1, $s7
	bnez	$a1, .LBB4_249
.LBB4_245:                              #   in Loop: Header=BB4_243 Depth=2
	ld.bu	$a1, $s1, 0
	bne	$a0, $a1, .LBB4_242
# %bb.246:                              #   in Loop: Header=BB4_243 Depth=2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_242
# %bb.247:                              #   in Loop: Header=BB4_243 Depth=2
	addi.w	$s2, $s2, 1
	st.b	$zero, $s4, 0
	bge	$s2, $s5, .LBB4_242
# %bb.248:                              #   in Loop: Header=BB4_243 Depth=2
	add.d	$a0, $s4, $s6
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	b	.LBB4_242
.LBB4_249:                              # %.critedge16
                                        #   in Loop: Header=BB4_240 Depth=1
	addi.w	$a5, $s2, 1
	st.b	$zero, $s4, 0
	bne	$a5, $s5, .LBB4_278
# %bb.250:                              # %.preheader628
                                        #   in Loop: Header=BB4_240 Depth=1
	blez	$s5, .LBB4_239
# %bb.251:                              # %.lr.ph666.preheader
                                        #   in Loop: Header=BB4_240 Depth=1
	ori	$s4, $zero, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_252:                              # %.lr.ph666
                                        #   Parent Loop BB4_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 120
	ld.d	$a2, $s5, 0
	move	$a1, $s4
	move	$a3, $s8
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_bind_text)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 8
	addi.d	$s2, $s2, -1
	addi.w	$s4, $s4, 1
	bnez	$s2, .LBB4_252
	b	.LBB4_239
.LBB4_253:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_254:
	move	$a0, $zero
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_255:                              # %.thread606
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $fp
	b	.LBB4_277
.LBB4_256:
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 24
	addi.d	$a1, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	b	.LBB4_272
.LBB4_257:
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$a0, .LBB4_209
.LBB4_258:                              # %.preheader627
	ld.w	$s0, $sp, 80
	blez	$s0, .LBB4_264
# %bb.259:                              # %.lr.ph671
	ld.d	$a0, $sp, 120
	move	$fp, $zero
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$s1, $a0, 8
	addi.d	$s2, $a1, -1
	b	.LBB4_261
.LBB4_260:                              #   in Loop: Header=BB4_261 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	beqz	$s2, .LBB4_263
.LBB4_261:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_260
# %bb.262:                              #   in Loop: Header=BB4_261 Depth=1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	b	.LBB4_260
.LBB4_263:                              # %._crit_edge672
	addi.w	$a0, $fp, 2
	ori	$a1, $zero, 80
	div.wu	$a0, $a1, $a0
	ori	$a1, $zero, 78
	sltu	$a1, $a1, $fp
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	b	.LBB4_265
.LBB4_264:
	move	$fp, $zero
	ori	$a0, $zero, 40
.LBB4_265:                              # %._crit_edge672.thread
	add.d	$a1, $s0, $a0
	addi.w	$a1, $a1, -1
	div.w	$s1, $a1, $a0
	blez	$s1, .LBB4_209
# %bb.266:                              # %.lr.ph682.preheader
	slli.d	$s2, $s1, 3
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s5, $a0, %pc_lo12(.L.str.113)
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$s6, $a0, %pc_lo12(.L.str.114)
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$s0, $a0, %pc_lo12(.L.str.115)
	move	$s7, $zero
	b	.LBB4_268
.LBB4_267:                              # %._crit_edge679
                                        #   in Loop: Header=BB4_268 Depth=1
	addi.w	$s7, $s7, 1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s4, $s4, 1
	beq	$s7, $s1, .LBB4_209
.LBB4_268:                              # %.lr.ph682
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_270 Depth 2
	ld.w	$a0, $sp, 80
	bge	$s7, $a0, .LBB4_267
# %bb.269:                              # %.lr.ph678.preheader
                                        #   in Loop: Header=BB4_268 Depth=1
	move	$s8, $s4
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
.LBB4_270:                              # %.lr.ph678
                                        #   Parent Loop BB4_268 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 120
	slt	$a1, $s1, $s8
	ldx.d	$a0, $a0, $s3
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	sltui	$a2, $a0, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s5, $a2
	or	$a3, $a2, $a0
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 80
	add.w	$s8, $s8, $s1
	add.d	$s3, $s3, $s2
	bge	$a0, $s8, .LBB4_270
	b	.LBB4_267
.LBB4_271:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 24
	addi.d	$a1, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a2, $a0, %pc_lo12(.L.str.79)
.LBB4_272:                              # %.loopexit
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_273:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
.LBB4_274:                              # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_table_name)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_275:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB4_218
.LBB4_276:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	move	$a2, $s6
.LBB4_277:                              # %.thread613
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_278:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_280
.LBB4_279:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB4_280:                              # %.thread608
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB4_281:                              # %.thread608
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_282:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 65
	b	.LBB4_105
.Lfunc_end4:
	.size	do_meta_command, .Lfunc_end4-do_meta_command
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_88-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_132-.LJTI4_0
	.word	.LBB4_115-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_153-.LJTI4_0
	.word	.LBB4_167-.LJTI4_0
	.word	.LBB4_125-.LJTI4_0
	.word	.LBB4_143-.LJTI4_0
	.word	.LBB4_147-.LJTI4_0
	.word	.LBB4_175-.LJTI4_0
	.word	.LBB4_170-.LJTI4_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function callback
	.type	callback,@function
callback:                               # @callback
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
	move	$s6, $a0
	ld.w	$a0, $a0, 24
	ori	$a4, $zero, 9
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bltu	$a4, $a0, .LBB5_141
# %bb.1:
	move	$s2, $a3
	move	$s5, $a2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI5_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI5_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	jr	$a0
.LBB5_2:
	ld.w	$a0, $s6, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 12
	beqz	$a0, .LBB5_126
.LBB5_3:                                # %.loopexit323
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s5, .LBB5_141
# %bb.4:                                # %.loopexit323
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	blez	$a1, .LBB5_141
# %bb.5:                                # %.lr.ph369
	addi.d	$fp, $a0, 468
	addi.d	$s0, $a0, 868
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	bstrpick.d	$s1, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$s7, $a0, %pc_lo12(.L.str.114)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s8, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$s2, $a0, %pc_lo12(.L.str.142)
	move	$s4, $zero
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a0, $a0, $a1
	or	$s6, $a0, $a2
.LBB5_7:                                # %._crit_edge440
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	sltui	$a1, $s3, 1
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s0, $a1
	or	$a4, $a1, $a2
	xor	$a1, $s1, $s4
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s8, $a1
	or	$a5, $a1, $a2
	addi.w	$a2, $s6, 0
	move	$a1, $s2
	move	$a3, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 4
	addi.d	$s5, $s5, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $s4, .LBB5_141
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	ori	$s6, $zero, 10
	ori	$a0, $zero, 99
	bltu	$a0, $s4, .LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	ld.w	$s6, $fp, 0
.LBB5_10:                               #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 24
	ld.d	$s3, $s5, 0
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB5_7
# %bb.11:                               #   in Loop: Header=BB5_8 Depth=1
	bnez	$s3, .LBB5_6
# %bb.12:                               #   in Loop: Header=BB5_8 Depth=1
	move	$s3, $zero
	b	.LBB5_7
.LBB5_13:
	ld.w	$a0, $s6, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 12
	bnez	$a0, .LBB5_18
# %bb.14:
	ld.w	$a0, $s6, 32
	beqz	$a0, .LBB5_18
# %bb.15:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	blez	$a0, .LBB5_18
# %bb.16:                               # %.lr.ph360
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	addi.w	$fp, $s4, -1
	addi.d	$s0, $s6, 48
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s1, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$s3, $a0, %pc_lo12(.L.str.144)
	.p2align	4, , 16
.LBB5_17:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 16
	ld.d	$a2, $s2, 0
	sltui	$a1, $fp, 1
	masknez	$a3, $s0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a3, $a1, $a3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	bnez	$s4, .LBB5_17
.LBB5_18:                               # %.loopexit328
	beqz	$s5, .LBB5_141
# %bb.19:                               # %.loopexit328
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	blez	$a0, .LBB5_141
# %bb.20:                               # %.lr.ph362
	addi.d	$fp, $s6, 868
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s0, $a0, -1
	addi.d	$s2, $s6, 48
	ori	$s1, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$s3, $a0, %pc_lo12(.L.str.145)
	move	$s4, $zero
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_21:                               #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a1, $s6, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
.LBB5_22:                               #   in Loop: Header=BB5_23 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	beq	$s7, $s4, .LBB5_141
.LBB5_23:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	sltui	$a2, $a0, 1
	ld.d	$a1, $s6, 16
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $fp, $a2
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	bltu	$s4, $s0, .LBB5_21
# %bb.24:                               #   in Loop: Header=BB5_23 Depth=1
	ld.w	$a0, $s6, 24
	ld.d	$a3, $s6, 16
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $s1, .LBB5_26
# %bb.25:                               #   in Loop: Header=BB5_23 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_26:                               #   in Loop: Header=BB5_23 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $a3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB5_22
.LBB5_27:
	beqz	$s5, .LBB5_141
# %bb.28:
	ld.d	$a0, $s6, 16
	ld.d	$a2, $s6, 40
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a1, $a1, %pc_lo12(.L.str.151)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	blez	$a0, .LBB5_138
# %bb.29:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s6, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s7, $a0, %pc_lo12(.L.str.113)
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$s2, $a0, %pc_lo12(.L.str.152)
	ori	$s3, $zero, 39
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $zero
	b	.LBB5_33
.LBB5_30:                               #   in Loop: Header=BB5_33 Depth=1
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB5_31:                               # %.loopexit.i308
                                        #   in Loop: Header=BB5_33 Depth=1
	ori	$a0, $zero, 39
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %output_quoted_string.exit
                                        #   in Loop: Header=BB5_33 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB5_138
.LBB5_33:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_39 Depth 2
                                        #     Child Loop BB5_42 Depth 2
                                        #     Child Loop BB5_51 Depth 2
                                        #     Child Loop BB5_59 Depth 2
                                        #     Child Loop BB5_64 Depth 2
                                        #       Child Loop BB5_65 Depth 3
	slli.d	$a0, $s8, 3
	ldx.d	$s4, $s5, $a0
	sltui	$a0, $s8, 1
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s7, $a0
	or	$fp, $a0, $a1
	beqz	$s4, .LBB5_44
# %bb.34:                               #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$s0, $s4, 0
	ori	$a0, $zero, 45
	beq	$s0, $a0, .LBB5_36
# %bb.35:                               #   in Loop: Header=BB5_33 Depth=1
	move	$s1, $s4
	ori	$a0, $zero, 43
	bne	$s0, $a0, .LBB5_37
.LBB5_36:                               #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$s0, $s4, 1
	addi.d	$s1, $s4, 1
.LBB5_37:                               #   in Loop: Header=BB5_33 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB5_54
# %bb.38:                               # %.preheader3.i.preheader
                                        #   in Loop: Header=BB5_33 Depth=1
	addi.d	$a3, $s1, 1
	.p2align	4, , 16
.LBB5_39:                               # %.preheader3.i
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a3
	ld.b	$a2, $a3, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $a3, 52
	addi.d	$a3, $a1, 1
	bltz	$a4, .LBB5_39
# %bb.40:                               #   in Loop: Header=BB5_33 Depth=1
	andi	$a2, $a2, 255
	ori	$a4, $zero, 46
	bne	$a2, $a4, .LBB5_45
# %bb.41:                               #   in Loop: Header=BB5_33 Depth=1
	ld.b	$a2, $a3, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 52
	bgez	$a2, .LBB5_54
	.p2align	4, , 16
.LBB5_42:                               # %.preheader1.i
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 52
	addi.d	$a1, $a1, 1
	bltz	$a3, .LBB5_42
# %bb.43:                               #   in Loop: Header=BB5_33 Depth=1
	andi	$a2, $a2, 255
	ori	$a3, $a2, 32
	ori	$a4, $zero, 101
	beq	$a3, $a4, .LBB5_46
	b	.LBB5_53
	.p2align	4, , 16
.LBB5_44:                               #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	move	$a1, $s2
	move	$a2, $fp
	b	.LBB5_71
.LBB5_45:                               #   in Loop: Header=BB5_33 Depth=1
	addi.d	$a1, $a3, -1
	ori	$a3, $a2, 32
	ori	$a4, $zero, 101
	bne	$a3, $a4, .LBB5_53
.LBB5_46:                               #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 45
	beq	$a2, $a3, .LBB5_48
# %bb.47:                               #   in Loop: Header=BB5_33 Depth=1
	ori	$a3, $zero, 43
	bne	$a2, $a3, .LBB5_49
.LBB5_48:                               #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$a2, $a1, 2
	addi.d	$a1, $a1, 2
	b	.LBB5_50
.LBB5_49:                               #   in Loop: Header=BB5_33 Depth=1
	addi.d	$a1, $a1, 1
.LBB5_50:                               #   in Loop: Header=BB5_33 Depth=1
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 52
	bgez	$a2, .LBB5_54
	.p2align	4, , 16
.LBB5_51:                               # %.preheader.i301
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 52
	addi.d	$a1, $a1, 1
	bltz	$a3, .LBB5_51
# %bb.52:                               #   in Loop: Header=BB5_33 Depth=1
	andi	$a2, $a2, 255
.LBB5_53:                               # %isNumber.exit
                                        #   in Loop: Header=BB5_33 Depth=1
	beqz	$a2, .LBB5_72
	.p2align	4, , 16
.LBB5_54:                               # %isNumber.exit.thread
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$a0, $fp, 0
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_56
# %bb.55:                               #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a1, $s1, 16
	alsl.d	$s0, $s8, $s5, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s0, 0
.LBB5_56:                               #   in Loop: Header=BB5_33 Depth=1
	ld.d	$fp, $s1, 16
	move	$a0, $zero
	move	$a1, $s4
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_57:                               #   in Loop: Header=BB5_59 Depth=2
	addi.w	$a0, $a0, 1
.LBB5_58:                               #   in Loop: Header=BB5_59 Depth=2
	addi.d	$a1, $a1, 1
.LBB5_59:                               #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	beq	$a2, $s3, .LBB5_57
# %bb.60:                               #   in Loop: Header=BB5_59 Depth=2
	bnez	$a2, .LBB5_58
# %bb.61:                               #   in Loop: Header=BB5_33 Depth=1
	beqz	$a0, .LBB5_70
# %bb.62:                               #   in Loop: Header=BB5_33 Depth=1
	ori	$a0, $zero, 39
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
	bnez	$a0, .LBB5_64
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_63:                               #   in Loop: Header=BB5_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 1
	addi.d	$s4, $s4, 1
	beqz	$a0, .LBB5_31
.LBB5_64:                               # %.preheader.i306
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_65 Depth 3
	move	$a2, $zero
	move	$a1, $zero
	beqz	$a0, .LBB5_67
	.p2align	4, , 16
.LBB5_65:                               #   Parent Loop BB5_33 Depth=1
                                        #     Parent Loop BB5_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a0, $s3, .LBB5_67
# %bb.66:                               #   in Loop: Header=BB5_65 Depth=3
	add.d	$a0, $s4, $a1
	ld.bu	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB5_65
.LBB5_67:                               # %.critedge.i307
                                        #   in Loop: Header=BB5_64 Depth=2
	beqz	$a1, .LBB5_63
# %bb.68:                               #   in Loop: Header=BB5_64 Depth=2
	bne	$a0, $s3, .LBB5_30
# %bb.69:                               #   in Loop: Header=BB5_64 Depth=2
	add.d	$s0, $s4, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a1, $a0, %pc_lo12(.L.str.159)
	move	$a0, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$s4, $s0
	ld.bu	$a0, $s4, 1
	addi.d	$s4, $s4, 1
	bnez	$a0, .LBB5_64
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_70:                               #   in Loop: Header=BB5_33 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s4
.LBB5_71:                               # %output_quoted_string.exit
                                        #   in Loop: Header=BB5_33 Depth=1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB5_32
.LBB5_72:                               #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB5_32
.LBB5_73:
	ld.w	$a0, $s6, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 12
	bnez	$a0, .LBB5_79
# %bb.74:
	ld.w	$a0, $s6, 32
	beqz	$a0, .LBB5_79
# %bb.75:                               # %.preheader330
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	blez	$s0, .LBB5_78
# %bb.76:                               # %.lr.ph346
	addi.d	$s3, $s6, 48
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$fp, $a0, %pc_lo12(.L.str.113)
	.p2align	4, , 16
.LBB5_77:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s6, 16
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB5_77
.LBB5_78:                               # %._crit_edge347
	ld.d	$a1, $s6, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_79:
	beqz	$s5, .LBB5_141
# %bb.80:                               # %.preheader329
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	blez	$s0, .LBB5_102
# %bb.81:                               # %.lr.ph349
	addi.d	$fp, $s6, 868
	addi.d	$s2, $s6, 48
	.p2align	4, , 16
.LBB5_82:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s6, 16
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 8
	bnez	$s0, .LBB5_82
	b	.LBB5_102
.LBB5_83:
	beqz	$s5, .LBB5_141
# %bb.84:                               # %.preheader
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	blez	$s4, .LBB5_147
# %bb.85:                               # %.lr.ph372.preheader
	ori	$s3, $zero, 5
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$fp, $a0, %pc_lo12(.L.str.113)
	move	$s0, $s4
	move	$s1, $s2
	.p2align	4, , 16
.LBB5_86:                               # %.lr.ph372
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB5_86
# %bb.87:                               # %._crit_edge373
	ld.w	$a0, $s6, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 12
	blez	$a0, .LBB5_89
.LBB5_88:
	ld.d	$a1, $s6, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_89:
	blez	$s4, .LBB5_141
# %bb.90:                               # %.lr.ph376
	addi.d	$fp, $s6, 868
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$s4, $a0, %pc_lo12(.L.str.141)
	.p2align	4, , 16
.LBB5_91:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s6, 16
	ld.d	$a3, $s2, 0
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a4, $a2, $a1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bnez	$a0, .LBB5_91
	b	.LBB5_141
.LBB5_92:
	ld.w	$a0, $s6, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 12
	bnez	$a0, .LBB5_98
# %bb.93:
	ld.w	$a0, $s6, 32
	beqz	$a0, .LBB5_98
# %bb.94:                               # %.preheader332
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	blez	$s3, .LBB5_97
# %bb.95:                               # %.lr.ph340
	addi.w	$fp, $s3, -1
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s0, $a0, %pc_lo12(.L.str.113)
	move	$s1, $zero
	.p2align	4, , 16
.LBB5_96:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a0
	sltu	$a2, $s1, $fp
	move	$a0, $s6
	pcaddu18i	$ra, %call36(output_csv)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	bne	$s3, $s1, .LBB5_96
.LBB5_97:                               # %._crit_edge341
	ld.d	$a1, $s6, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_98:
	beqz	$s5, .LBB5_141
# %bb.99:                               # %.preheader331
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	blez	$s1, .LBB5_102
# %bb.100:                              # %.lr.ph343
	move	$fp, $zero
	addi.w	$s0, $s1, -1
	.p2align	4, , 16
.LBB5_101:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	sltu	$a2, $fp, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(output_csv)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s5, $s5, 8
	bne	$s1, $fp, .LBB5_101
.LBB5_102:                              # %._crit_edge350
	ld.d	$a1, $s6, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB5_141
.LBB5_103:
	ld.w	$a0, $s6, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 12
	bnez	$a0, .LBB5_109
# %bb.104:
	ld.w	$a0, $s6, 32
	beqz	$a0, .LBB5_109
# %bb.105:
	ld.d	$a3, $s6, 16
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	blez	$fp, .LBB5_108
# %bb.106:                              # %.lr.ph353.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$s3, $a0, %pc_lo12(.L.str.147)
	.p2align	4, , 16
.LBB5_107:                              # %.lr.ph353
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 16
	ld.d	$a2, $s2, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	bnez	$fp, .LBB5_107
.LBB5_108:                              # %._crit_edge354
	ld.d	$a3, $s6, 16
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB5_109:
	beqz	$s5, .LBB5_141
# %bb.110:
	ld.d	$a3, $s6, 16
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	blez	$a0, .LBB5_139
# %bb.111:                              # %.lr.ph357
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 868
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s3, $zero, 60
	ori	$a0, $zero, 1
	lu32i.d	$a0, 64
	lu52i.d	$s1, $a0, 256
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$s0, $a0, %pc_lo12(.L.str.154)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s6, $a0, %pc_lo12(.L.str.10)
	move	$fp, $zero
	b	.LBB5_114
	.p2align	4, , 16
.LBB5_112:                              # %output_html_string.exit.loopexit
                                        #   in Loop: Header=BB5_114 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $a0, 16
.LBB5_113:                              # %output_html_string.exit
                                        #   in Loop: Header=BB5_114 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB5_139
.LBB5_114:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_117 Depth 2
                                        #       Child Loop BB5_119 Depth 3
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $s4, 16
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s5, $a0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	or	$s8, $a1, $a0
	ld.bu	$a0, $s8, 0
	ld.d	$s7, $s4, 16
	bnez	$a0, .LBB5_117
	b	.LBB5_113
	.p2align	4, , 16
.LBB5_115:                              #   in Loop: Header=BB5_117 Depth=2
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
.LBB5_116:                              #   in Loop: Header=BB5_117 Depth=2
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.d	$a1, $s8, $s4
	ld.bu	$a0, $a1, 1
	addi.d	$s8, $a1, 1
	beqz	$a0, .LBB5_112
.LBB5_117:                              # %.preheader.i
                                        #   Parent Loop BB5_114 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_119 Depth 3
	move	$a2, $zero
	move	$s4, $zero
	b	.LBB5_119
	.p2align	4, , 16
.LBB5_118:                              #   in Loop: Header=BB5_119 Depth=3
	add.d	$a0, $s8, $s4
	ld.bu	$a0, $a0, 1
	addi.d	$s4, $s4, 1
	addi.w	$a2, $a2, 1
.LBB5_119:                              #   Parent Loop BB5_114 Depth=1
                                        #     Parent Loop BB5_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$s3, $a0, .LBB5_118
# %bb.120:                              #   in Loop: Header=BB5_119 Depth=3
	sll.d	$a1, $s2, $a0
	and	$a1, $a1, $s1
	beqz	$a1, .LBB5_118
# %bb.121:                              # %.critedge.i
                                        #   in Loop: Header=BB5_117 Depth=2
	beqz	$s4, .LBB5_123
# %bb.122:                              #   in Loop: Header=BB5_117 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $s8, $s4
.LBB5_123:                              #   in Loop: Header=BB5_117 Depth=2
	ori	$a1, $zero, 38
	beq	$a0, $a1, .LBB5_115
# %bb.124:                              #   in Loop: Header=BB5_117 Depth=2
	bne	$a0, $s3, .LBB5_112
# %bb.125:                              #   in Loop: Header=BB5_117 Depth=2
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s0
	b	.LBB5_116
.LBB5_126:                              # %.preheader324
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	blez	$a1, .LBB5_141
# %bb.127:                              # %.lr.ph364
	addi.d	$a1, $a0, 868
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s1, $a0, 468
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $s8, -1
	bstrpick.d	$s4, $a0, 31, 0
	ori	$s7, $zero, 99
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$fp, $a0, %pc_lo12(.L.str.114)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s6, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$s0, $s5
	b	.LBB5_129
	.p2align	4, , 16
.LBB5_128:                              #   in Loop: Header=BB5_129 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 8
	addi.d	$s0, $s0, 8
	beq	$s8, $s3, .LBB5_142
.LBB5_129:                              # =>This Inner Loop Header: Depth=1
	bltu	$s7, $s3, .LBB5_131
# %bb.130:                              #   in Loop: Header=BB5_129 Depth=1
	ld.w	$a2, $s1, -400
	bgtz	$a2, .LBB5_135
.LBB5_131:                              # %.thread
                                        #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a0, $s2, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB5_133
# %bb.132:                              #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a1, $s0, 0
	bnez	$a1, .LBB5_134
.LBB5_133:                              #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
.LBB5_134:                              #   in Loop: Header=BB5_129 Depth=1
	addi.w	$s8, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 10
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a2, $a0, $a1
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	bltu	$s7, $s3, .LBB5_136
.LBB5_135:                              # %.thread312
                                        #   in Loop: Header=BB5_129 Depth=1
	st.w	$a2, $s1, 0
.LBB5_136:                              #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 32
	beqz	$a0, .LBB5_128
# %bb.137:                              #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a4, $s2, 0
	xor	$a1, $s4, $s3
	sltui	$a1, $a1, 1
	masknez	$a3, $fp, $a1
	maskeqz	$a1, $s6, $a1
	or	$a5, $a1, $a3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB5_128
.LBB5_138:                              # %._crit_edge
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	ori	$a1, $zero, 3
	b	.LBB5_140
.LBB5_139:                              # %._crit_edge358
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 6
.LBB5_140:                              # %.loopexit
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB5_141:                              # %.loopexit
	move	$a0, $zero
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
.LBB5_142:                              # %._crit_edge365
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB5_3
# %bb.143:                              # %.lr.ph367
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s0, $a0, 468
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 31, 0
	ori	$s7, $zero, 99
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$s2, $a0, %pc_lo12(.L.str.142)
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$s3, $a0, %pc_lo12(.L.str.143)
	move	$s8, $zero
	b	.LBB5_145
	.p2align	4, , 16
.LBB5_144:                              #   in Loop: Header=BB5_145 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	xor	$a1, $s4, $s8
	sltui	$a1, $a1, 1
	masknez	$a3, $fp, $a1
	maskeqz	$a1, $s6, $a1
	or	$a5, $a1, $a3
	move	$a1, $s2
	move	$a3, $a2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$s0, $s0, 4
	beq	$s1, $s8, .LBB5_3
.LBB5_145:                              # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 10
	bltu	$s7, $s8, .LBB5_144
# %bb.146:                              #   in Loop: Header=BB5_145 Depth=1
	ld.w	$a2, $s0, 0
	b	.LBB5_144
.LBB5_147:
	ori	$s3, $zero, 5
	ld.w	$a0, $s6, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 12
	bgtz	$a0, .LBB5_88
	b	.LBB5_89
.Lfunc_end5:
	.size	callback, .Lfunc_end5-callback
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_83-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_103-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_73-.LJTI5_0
	.word	.LBB5_92-.LJTI5_0
	.word	.LBB5_141-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function process_input
.LCPI6_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.p2align	5
	.type	process_input,@function
process_input:                          # @process_input
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(bail_on_error)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(stdin_is_interactive)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mainPrompt)
	addi.d	$a0, $a0, %pc_lo12(mainPrompt)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(continuePrompt)
	addi.d	$a0, $a0, %pc_lo12(continuePrompt)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s1, $zero
	move	$a1, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(seenInterrupt)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s8, $zero, 10
	ori	$s7, $zero, 47
	ori	$fp, $zero, 42
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 244
	ori	$a0, $a0, 576
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB6_1:                                # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #       Child Loop BB6_22 Depth 3
                                        #         Child Loop BB6_29 Depth 4
                                        #         Child Loop BB6_33 Depth 4
                                        #     Child Loop BB6_42 Depth 2
                                        #     Child Loop BB6_47 Depth 2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_58 Depth 3
                                        #     Child Loop BB6_65 Depth 2
                                        #       Child Loop BB6_72 Depth 3
                                        #       Child Loop BB6_76 Depth 3
                                        #     Child Loop BB6_96 Depth 2
                                        #     Child Loop BB6_83 Depth 2
	move	$s5, $a1
	.p2align	4, , 16
.LBB6_2:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_22 Depth 3
                                        #         Child Loop BB6_29 Depth 4
                                        #         Child Loop BB6_33 Depth 4
	beqz	$s3, .LBB6_6
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bail_on_error)
	beqz	$a0, .LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_2 Depth=2
	bnez	$s2, .LBB6_111
# %bb.5:                                #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB6_111
.LBB6_6:                                # %.critedge
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_2 Depth=2
	move	$a0, $zero
	move	$a1, $s2
	pcaddu18i	$ra, %call36(local_getline)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB6_12
	b	.LBB6_110
	.p2align	4, , 16
.LBB6_8:                                #   in Loop: Header=BB6_2 Depth=2
	beqz	$s1, .LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_11
.LBB6_10:                               #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(local_getline)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a0, .LBB6_110
.LBB6_12:                               #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(seenInterrupt)
	beqz	$a0, .LBB6_15
# %bb.13:                               #   in Loop: Header=BB6_2 Depth=2
	bnez	$s2, .LBB6_111
# %bb.14:                               #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(seenInterrupt)
.LBB6_15:                               #   in Loop: Header=BB6_2 Depth=2
	ld.w	$a0, $s0, 8
	beqz	$a0, .LBB6_17
# %bb.16:                               #   in Loop: Header=BB6_2 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB6_17:                               #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	beqz	$s1, .LBB6_19
# %bb.18:                               #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$a0, $s1, 0
	bnez	$a0, .LBB6_35
.LBB6_19:                               #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$s6, $s4, 0
	beqz	$s6, .LBB6_2
# %bb.20:                               # %.lr.ph.i
                                        #   in Loop: Header=BB6_2 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$a2, $s6
	move	$a1, $s4
	ori	$a4, $zero, 45
	b	.LBB6_22
	.p2align	4, , 16
.LBB6_21:                               # %.loopexit.i
                                        #   in Loop: Header=BB6_22 Depth=3
	ld.bu	$a2, $a1, 1
	addi.d	$a1, $a1, 1
	beqz	$a2, .LBB6_2
.LBB6_22:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_29 Depth 4
                                        #         Child Loop BB6_33 Depth 4
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 50
	bltz	$a3, .LBB6_21
# %bb.23:                               #   in Loop: Header=BB6_22 Depth=3
	beq	$a2, $a4, .LBB6_31
# %bb.24:                               #   in Loop: Header=BB6_22 Depth=3
	bne	$a2, $s7, .LBB6_36
# %bb.25:                               #   in Loop: Header=BB6_22 Depth=3
	ld.bu	$a2, $a1, 1
	bne	$a2, $fp, .LBB6_36
# %bb.26:                               #   in Loop: Header=BB6_22 Depth=3
	addi.d	$a1, $a1, 3
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_27:                               #   in Loop: Header=BB6_29 Depth=4
	ld.bu	$a2, $a1, 0
	beq	$a2, $s7, .LBB6_21
.LBB6_28:                               # %.critedge2.i
                                        #   in Loop: Header=BB6_29 Depth=4
	addi.d	$a1, $a1, 1
.LBB6_29:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        #       Parent Loop BB6_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a2, $a1, -1
	beq	$a2, $fp, .LBB6_27
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=4
	bnez	$a2, .LBB6_28
	b	.LBB6_36
	.p2align	4, , 16
.LBB6_31:                               #   in Loop: Header=BB6_22 Depth=3
	ld.bu	$a2, $a1, 1
	bne	$a2, $a4, .LBB6_36
# %bb.32:                               #   in Loop: Header=BB6_22 Depth=3
	addi.d	$a1, $a1, 2
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB6_2
	.p2align	4, , 16
.LBB6_33:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        #       Parent Loop BB6_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a2, $s8, .LBB6_21
# %bb.34:                               #   in Loop: Header=BB6_33 Depth=4
	addi.d	$a1, $a1, 1
	ld.bu	$a2, $a1, 0
	bnez	$a2, .LBB6_33
	b	.LBB6_2
.LBB6_35:                               # %_all_whitespace.exit.thread.loopexit229
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$s6, $s4, 0
	.p2align	4, , 16
.LBB6_36:                               # %_all_whitespace.exit.thread
                                        #   in Loop: Header=BB6_2 Depth=2
	ori	$a0, $zero, 46
	bne	$s6, $a0, .LBB6_41
# %bb.37:                               # %_all_whitespace.exit.thread
                                        #   in Loop: Header=BB6_2 Depth=2
	addi.w	$a0, $s5, 0
	bnez	$a0, .LBB6_41
# %bb.38:                               #   in Loop: Header=BB6_2 Depth=2
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(do_meta_command)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB6_2
# %bb.39:                               #   in Loop: Header=BB6_2 Depth=2
	ori	$a0, $zero, 2
	beq	$s5, $a0, .LBB6_111
# %bb.40:                               #   in Loop: Header=BB6_2 Depth=2
	move	$s5, $zero
	addi.w	$s3, $s3, 1
	b	.LBB6_2
.LBB6_41:                               # %.split99
                                        #   in Loop: Header=BB6_1 Depth=1
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $s5, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a4, $a0, 0
	move	$s0, $s4
	.p2align	4, , 16
.LBB6_42:                               #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s3, $s0, 0
	andi	$a0, $s3, 255
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $a4, $a1
	slli.d	$a1, $a1, 50
	addi.d	$s0, $s0, 1
	bltz	$a1, .LBB6_42
# %bb.43:                               #   in Loop: Header=BB6_1 Depth=1
	ori	$a3, $zero, 45
	bne	$a0, $s7, .LBB6_60
# %bb.44:                               #   in Loop: Header=BB6_1 Depth=1
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB6_78
# %bb.45:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s0
	b	.LBB6_47
.LBB6_46:                               # %.loopexit.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	ld.bu	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB6_78
.LBB6_47:                               # %.lr.ph.i.i
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_58 Depth 3
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a4, $a2
	slli.d	$a2, $a2, 50
	bltz	$a2, .LBB6_46
# %bb.48:                               #   in Loop: Header=BB6_47 Depth=2
	beq	$a1, $a3, .LBB6_56
# %bb.49:                               #   in Loop: Header=BB6_47 Depth=2
	bne	$a1, $s7, .LBB6_60
# %bb.50:                               #   in Loop: Header=BB6_47 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $fp, .LBB6_60
# %bb.51:                               #   in Loop: Header=BB6_47 Depth=2
	addi.d	$a0, $a0, 3
	b	.LBB6_54
	.p2align	4, , 16
.LBB6_52:                               #   in Loop: Header=BB6_54 Depth=3
	ld.bu	$a1, $a0, 0
	beq	$a1, $s7, .LBB6_46
.LBB6_53:                               # %.critedge2.i.i
                                        #   in Loop: Header=BB6_54 Depth=3
	addi.d	$a0, $a0, 1
.LBB6_54:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a1, $a0, -1
	beq	$a1, $fp, .LBB6_52
# %bb.55:                               #   in Loop: Header=BB6_54 Depth=3
	bnez	$a1, .LBB6_53
	b	.LBB6_60
.LBB6_56:                               #   in Loop: Header=BB6_47 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $a3, .LBB6_60
# %bb.57:                               #   in Loop: Header=BB6_47 Depth=2
	addi.d	$a0, $a0, 2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB6_78
	.p2align	4, , 16
.LBB6_58:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a1, $s8, .LBB6_46
# %bb.59:                               #   in Loop: Header=BB6_58 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB6_58
	b	.LBB6_78
.LBB6_60:                               # %_all_whitespace.exit.thread.i
                                        #   in Loop: Header=BB6_1 Depth=1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ori	$a3, $zero, 45
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ori	$a2, $zero, 103
	bne	$a1, $a2, .LBB6_79
# %bb.61:                               #   in Loop: Header=BB6_1 Depth=1
	ld.b	$a1, $s0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB6_79
# %bb.62:                               #   in Loop: Header=BB6_1 Depth=1
	ld.bu	$a1, $s0, 1
	beqz	$a1, .LBB6_78
# %bb.63:                               # %.lr.ph.i15.i.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addi.d	$a0, $s0, 1
	b	.LBB6_65
.LBB6_64:                               # %.loopexit.i18.i
                                        #   in Loop: Header=BB6_65 Depth=2
	ld.bu	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB6_78
.LBB6_65:                               # %.lr.ph.i15.i
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_72 Depth 3
                                        #       Child Loop BB6_76 Depth 3
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a4, $a2
	slli.d	$a2, $a2, 50
	bltz	$a2, .LBB6_64
# %bb.66:                               #   in Loop: Header=BB6_65 Depth=2
	beq	$a1, $a3, .LBB6_74
# %bb.67:                               #   in Loop: Header=BB6_65 Depth=2
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $s7, .LBB6_79
# %bb.68:                               #   in Loop: Header=BB6_65 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $fp, .LBB6_79
# %bb.69:                               #   in Loop: Header=BB6_65 Depth=2
	addi.d	$a0, $a0, 3
	b	.LBB6_72
.LBB6_70:                               #   in Loop: Header=BB6_72 Depth=3
	ld.bu	$a1, $a0, 0
	beq	$a1, $s7, .LBB6_64
.LBB6_71:                               # %.critedge2.i25.i
                                        #   in Loop: Header=BB6_72 Depth=3
	addi.d	$a0, $a0, 1
.LBB6_72:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a1, $a0, -1
	beq	$a1, $fp, .LBB6_70
# %bb.73:                               #   in Loop: Header=BB6_72 Depth=3
	bnez	$a1, .LBB6_71
	b	.LBB6_79
.LBB6_74:                               #   in Loop: Header=BB6_65 Depth=2
	ld.bu	$a1, $a0, 1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $a3, .LBB6_79
# %bb.75:                               #   in Loop: Header=BB6_65 Depth=2
	addi.d	$a0, $a0, 2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB6_78
.LBB6_76:                               #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a1, $s8, .LBB6_64
# %bb.77:                               #   in Loop: Header=BB6_76 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB6_76
.LBB6_78:                               # %_is_command_terminator.exit.thread.thread
                                        #   in Loop: Header=BB6_1 Depth=1
	ori	$s6, $zero, 59
	st.h	$s6, $s4, 0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	bnez	$s1, .LBB6_80
	b	.LBB6_95
.LBB6_79:                               # %_is_command_terminator.exit.thread
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beqz	$s1, .LBB6_94
.LBB6_80:                               #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	add.d	$a0, $s5, $a0
	addi.w	$a1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_131
# %bb.81:                               #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $a0
	addi.w	$s0, $s5, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	stx.b	$s8, $s1, $a0
	add.d	$a0, $s1, $s0
	slli.d	$a1, $s6, 32
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	srai.d	$a2, $a1, 32
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $s6
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a0, $a1, $s5
	blez	$a0, .LBB6_1
.LBB6_82:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$s5, $a1
	ori	$a2, $zero, 59
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_83:                               # %.lr.ph.i124
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s1, $a3
	beq	$a1, $a2, .LBB6_86
# %bb.84:                               #   in Loop: Header=BB6_83 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB6_83
# %bb.85:                               #   in Loop: Header=BB6_1 Depth=1
	move	$a1, $s5
	b	.LBB6_1
.LBB6_86:                               # %_contains_semicolon.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sqlite3_complete)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	beqz	$a0, .LBB6_1
# %bb.87:                               #   in Loop: Header=BB6_1 Depth=1
	st.w	$zero, $s0, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(enableTimer)
	ld.w	$a0, $s0, %pc_lo12(enableTimer)
	beqz	$a0, .LBB6_89
# %bb.88:                               #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(sBegin)
	addi.d	$a1, $a0, %pc_lo12(sBegin)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
.LBB6_89:                               # %beginTimer.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	pcalau12i	$a1, %pc_hi20(callback)
	addi.d	$a2, $a1, %pc_lo12(callback)
	addi.d	$a4, $sp, 136
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(enableTimer)
	move	$s5, $a0
	beqz	$a1, .LBB6_91
# %bb.90:                               #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(sBegin)
	addi.d	$s0, $a0, %pc_lo12(sBegin)
	addi.d	$a1, $sp, 144
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 0
	vld	$vr1, $sp, 144
	vsub.d	$vr0, $vr1, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	vpickve2gr.d	$a1, $vr0, 1
	add.d	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI6_0)
	vld	$vr1, $s0, 16
	vld	$vr2, $sp, 160
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa0
	vsub.d	$vr1, $vr2, $vr1
	vpickve2gr.d	$a0, $vr1, 0
	mul.d	$a0, $a0, $a2
	vpickve2gr.d	$a1, $vr1, 1
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a1, $fa3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_91:                               # %endTimer.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	bnez	$s5, .LBB6_101
# %bb.92:                               # %endTimer.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 136
	bnez	$a0, .LBB6_101
# %bb.93:                               #   in Loop: Header=BB6_1 Depth=1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB6_109
.LBB6_94:                               # %.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $zero
	move	$a1, $s5
	beqz	$s6, .LBB6_1
.LBB6_95:                               # %.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB6_96:                               #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $s6, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 50
	bgez	$a2, .LBB6_99
# %bb.97:                               #   in Loop: Header=BB6_96 Depth=2
	ldx.bu	$s6, $s4, $a1
	addi.d	$a1, $a1, 1
	bnez	$s6, .LBB6_96
# %bb.98:                               #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $zero
	move	$a1, $s5
	b	.LBB6_1
.LBB6_99:                               # %.critedge5
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 32
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	move	$s6, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_132
# %bb.100:                              #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $a0
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $a1, $s5
	bgtz	$a0, .LBB6_82
	b	.LBB6_1
.LBB6_101:                              #   in Loop: Header=BB6_1 Depth=1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	bnez	$s2, .LBB6_104
# %bb.102:                              #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB6_104
# %bb.103:                              #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a2, $a0, %pc_lo12(.L.str.164)
	ori	$a0, $zero, 100
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB6_105
.LBB6_104:                              #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a2, $a0, %pc_lo12(.L.str.163)
	ori	$a0, $zero, 100
	addi.d	$a1, $sp, 144
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
.LBB6_105:                              #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a2, $sp, 136
	beqz	$a2, .LBB6_107
# %bb.106:                              #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 136
	b	.LBB6_108
.LBB6_107:                              #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_108:                              #   in Loop: Header=BB6_1 Depth=1
	addi.w	$s3, $s3, 1
.LBB6_109:                              #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	move	$a1, $zero
	b	.LBB6_1
.LBB6_110:
	move	$s4, $zero
.LBB6_111:                              # %.loopexit177
	beqz	$s1, .LBB6_130
# %bb.112:
	ld.bu	$fp, $s1, 0
	beqz	$fp, .LBB6_129
# %bb.113:                              # %.lr.ph.i128
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 45
	ori	$a2, $zero, 10
	ori	$a3, $zero, 47
	ori	$a4, $zero, 42
	move	$a5, $s1
	b	.LBB6_115
	.p2align	4, , 16
.LBB6_114:                              # %.loopexit.i131
                                        #   in Loop: Header=BB6_115 Depth=1
	ld.bu	$fp, $a5, 1
	addi.d	$a5, $a5, 1
	beqz	$fp, .LBB6_129
.LBB6_115:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_122 Depth 2
                                        #     Child Loop BB6_126 Depth 2
	slli.d	$a6, $fp, 1
	ldx.hu	$a6, $a0, $a6
	slli.d	$a6, $a6, 50
	bltz	$a6, .LBB6_114
# %bb.116:                              #   in Loop: Header=BB6_115 Depth=1
	beq	$fp, $a1, .LBB6_124
# %bb.117:                              #   in Loop: Header=BB6_115 Depth=1
	bne	$fp, $a3, .LBB6_128
# %bb.118:                              #   in Loop: Header=BB6_115 Depth=1
	ld.bu	$a6, $a5, 1
	bne	$a6, $a4, .LBB6_128
# %bb.119:                              #   in Loop: Header=BB6_115 Depth=1
	addi.d	$a5, $a5, 3
	b	.LBB6_122
	.p2align	4, , 16
.LBB6_120:                              #   in Loop: Header=BB6_122 Depth=2
	ld.bu	$a6, $a5, 0
	beq	$a6, $a3, .LBB6_114
.LBB6_121:                              # %.critedge2.i138
                                        #   in Loop: Header=BB6_122 Depth=2
	addi.d	$a5, $a5, 1
.LBB6_122:                              #   Parent Loop BB6_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, -1
	beq	$a6, $a4, .LBB6_120
# %bb.123:                              #   in Loop: Header=BB6_122 Depth=2
	bnez	$a6, .LBB6_121
	b	.LBB6_128
	.p2align	4, , 16
.LBB6_124:                              #   in Loop: Header=BB6_115 Depth=1
	ld.bu	$a6, $a5, 1
	bne	$a6, $a1, .LBB6_128
# %bb.125:                              #   in Loop: Header=BB6_115 Depth=1
	addi.d	$a5, $a5, 2
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB6_129
	.p2align	4, , 16
.LBB6_126:                              #   Parent Loop BB6_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $a2, .LBB6_114
# %bb.127:                              #   in Loop: Header=BB6_126 Depth=2
	addi.d	$a5, $a5, 1
	ld.bu	$a6, $a5, 0
	bnez	$a6, .LBB6_126
	b	.LBB6_129
.LBB6_128:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_129:                              # %_all_whitespace.exit140
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_130:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB6_131:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(Argv0)
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_132:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	process_input, .Lfunc_end6-process_input
                                        # -- End function
	.p2align	5                               # -- Begin function set_table_name
	.type	set_table_name,@function
set_table_name:                         # @set_table_name
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 40
	move	$fp, $a1
	beqz	$a0, .LBB7_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 40
.LBB7_2:
	beqz	$fp, .LBB7_18
# %bb.3:
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$a3, $a1, -95
	sltu	$a3, $zero, $a3
	andi	$a2, $a2, 1024
	sltui	$a2, $a2, 1
	and	$s1, $a3, $a2
	move	$a2, $zero
	beqz	$a1, .LBB7_6
# %bb.4:                                # %.lr.ph.preheader
	addi.d	$a3, $fp, 1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB7_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 1
	ldx.hu	$a5, $a0, $a5
	andi	$a5, $a5, 8
	sltui	$a5, $a5, 1
	addi.d	$a6, $a1, -95
	sltu	$a6, $zero, $a6
	addi.d	$a1, $a1, -39
	sltui	$a1, $a1, 1
	and	$a7, $a1, $a5
	masknez	$a1, $s1, $a5
	maskeqz	$a5, $a4, $a5
	or	$a1, $a5, $a1
	maskeqz	$a5, $a1, $a6
	masknez	$a6, $s1, $a6
	ld.bu	$a1, $a3, 0
	or	$s1, $a5, $a6
	add.d	$a2, $a2, $a7
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB7_5
.LBB7_6:                                # %._crit_edge
	sltui	$a0, $s1, 1
	addi.d	$a1, $a2, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
	beqz	$a0, .LBB7_19
# %bb.7:
	beqz	$s1, .LBB7_13
# %bb.8:
	ori	$a1, $zero, 39
	st.b	$a1, $a0, 0
	ori	$a4, $zero, 1
	ld.bu	$a5, $fp, 0
	beqz	$a5, .LBB7_14
.LBB7_9:                                # %.lr.ph67.preheader
	addi.d	$a2, $fp, 1
	ori	$a3, $zero, 39
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a5, $a2, 0
	addi.d	$a2, $a2, 1
	move	$a4, $a1
	beqz	$a5, .LBB7_15
.LBB7_11:                               # %.lr.ph67
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a4, 1
	stx.b	$a5, $a0, $a4
	bne	$a5, $a3, .LBB7_10
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a4, $a4, 2
	stx.b	$a3, $a0, $a1
	move	$a1, $a4
	b	.LBB7_10
.LBB7_13:
	move	$a4, $zero
	ld.bu	$a5, $fp, 0
	bnez	$a5, .LBB7_9
.LBB7_14:
	move	$a1, $a4
.LBB7_15:                               # %._crit_edge68
	beqz	$s1, .LBB7_17
# %bb.16:
	addi.w	$a2, $a1, 1
	ori	$a3, $zero, 39
	stx.b	$a3, $a0, $a1
	move	$a1, $a2
.LBB7_17:
	stx.b	$zero, $a0, $a1
.LBB7_18:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_19:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	set_table_name, .Lfunc_end7-set_table_name
                                        # -- End function
	.p2align	5                               # -- Begin function shellstaticFunc
	.type	shellstaticFunc,@function
shellstaticFunc:                        # @shellstaticFunc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(zShellStatic)
	ld.d	$a1, $a1, %pc_lo12(zShellStatic)
	addi.w	$a2, $zero, -1
	move	$a3, $zero
	pcaddu18i	$t8, %call36(sqlite3_result_text)
	jr	$t8
.Lfunc_end8:
	.size	shellstaticFunc, .Lfunc_end8-shellstaticFunc
                                        # -- End function
	.p2align	5                               # -- Begin function booleanValue
	.type	booleanValue,@function
booleanValue:                           # @booleanValue
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s1, $fp, 0
	move	$s0, $a0
	beqz	$s1, .LBB9_6
# %bb.1:                                # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1
	.p2align	4, , 16
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s1
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s1, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s1, .LBB9_2
# %bb.3:                                # %sub_0
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB9_6
# %bb.4:                                # %sub_1
	ld.bu	$a0, $fp, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB9_6
# %bb.5:                                # %.tail
	ld.bu	$a0, $fp, 2
	beqz	$a0, .LBB9_8
.LBB9_6:                                # %.tail.thread
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB9_7:
	addi.w	$a0, $a0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_8:
	ori	$a0, $zero, 1
	b	.LBB9_7
.Lfunc_end9:
	.size	booleanValue, .Lfunc_end9-booleanValue
                                        # -- End function
	.p2align	5                               # -- Begin function run_schema_dump_query
	.type	run_schema_dump_query,@function
run_schema_dump_query:                  # @run_schema_dump_query
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	pcalau12i	$a1, %pc_hi20(dump_callback)
	addi.d	$a2, $a1, %pc_lo12(dump_callback)
	move	$a1, $s0
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB10_3
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 100
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_3
# %bb.2:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a2, $a0, %pc_lo12(.L.str.120)
	ori	$a0, $zero, 8
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(dump_callback)
	addi.d	$a2, $a1, %pc_lo12(dump_callback)
	move	$a1, $s1
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB10_3:                               # %.critedge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	run_schema_dump_query, .Lfunc_end10-run_schema_dump_query
                                        # -- End function
	.p2align	5                               # -- Begin function run_table_dump_query
	.type	run_table_dump_query,@function
run_table_dump_query:                   # @run_table_dump_query
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $a2
	move	$fp, $a0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 8
	move	$a0, $a1
	move	$a1, $a4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_6
# %bb.1:
	ld.d	$a1, $sp, 8
	beqz	$a1, .LBB11_6
# %bb.2:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 100
	bne	$a0, $s1, .LBB11_5
# %bb.3:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$s0, $a0, %pc_lo12(.L.str.129)
	.p2align	4, , 16
.LBB11_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(sqlite3_column_text)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB11_4
.LBB11_5:                               # %._crit_edge
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
.LBB11_6:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	run_table_dump_query, .Lfunc_end11-run_table_dump_query
                                        # -- End function
	.p2align	5                               # -- Begin function local_getline
	.type	local_getline,@function
local_getline:                          # @local_getline
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
	move	$fp, $a1
	beqz	$a0, .LBB12_3
# %bb.1:
	move	$a1, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB12_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB12_3:
	ori	$a0, $zero, 100
	ori	$s4, $zero, 100
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_15
# %bb.4:                                # %.preheader47.preheader
	move	$s0, $a0
	move	$s1, $zero
	ori	$s5, $zero, 10
	ori	$s2, $zero, 100
	.p2align	4, , 16
.LBB12_5:                               # %.preheader47
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $s1, 100
	bge	$s2, $a0, .LBB12_7
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	alsl.w	$s2, $s2, $s4, 1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB12_15
.LBB12_7:                               #   in Loop: Header=BB12_5 Depth=1
	add.d	$s3, $s0, $s1
	sub.w	$a1, $s2, $s1
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_11
# %bb.8:                                # %.preheader.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.w	$s1, $s1, $a0
	blez	$s1, .LBB12_5
# %bb.9:                                #   in Loop: Header=BB12_5 Depth=1
	add.d	$a0, $s0, $s1
	ld.bu	$a1, $a0, -1
	bne	$a1, $s5, .LBB12_5
# %bb.10:                               # %.loopexit.loopexit
	st.b	$zero, $a0, -1
	b	.LBB12_13
.LBB12_11:
	beqz	$s1, .LBB12_14
# %bb.12:
	st.b	$zero, $s3, 0
	addi.w	$s1, $s1, 1
.LBB12_13:                              # %.loopexit
	move	$a0, $s0
	move	$a1, $s1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(realloc)
	jr	$t8
.LBB12_14:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB12_15:                              # %.loopexit48
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
.Lfunc_end12:
	.size	local_getline, .Lfunc_end12-local_getline
                                        # -- End function
	.p2align	5                               # -- Begin function output_c_string
	.type	output_c_string,@function
output_c_string:                        # @output_c_string
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
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 34
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 13
	ori	$s4, $zero, 92
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$s1, $a0, %pc_lo12(.L.str.140)
	pcalau12i	$a0, %pc_hi20(.LJTI13_0)
	addi.d	$s5, $a0, %pc_lo12(.LJTI13_0)
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s0, 1
	bgeu	$s3, $a0, .LBB13_3
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_1:
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 116
.LBB13_2:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s0, 1
	bltu	$s3, $a0, .LBB13_6
.LBB13_3:
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s5, $a1
	add.d	$a1, $s5, $a1
	jr	$a1
.LBB13_4:
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 110
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_5:
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 114
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_6:
	bne	$a0, $s4, .LBB13_8
# %bb.7:
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 92
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_8:
	ext.w.b	$s2, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 49
	bltz	$a0, .LBB13_10
# %bb.9:
	andi	$a2, $s2, 255
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s0, 1
	bgeu	$s3, $a0, .LBB13_3
	b	.LBB13_6
.LBB13_10:
	move	$a0, $s2
	b	.LBB13_2
.LBB13_11:
	ori	$a0, $zero, 34
	move	$a1, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end13:
	.size	output_c_string, .Lfunc_end13-output_c_string
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_11-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_1-.LJTI13_0
	.word	.LBB13_4-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_5-.LJTI13_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function dump_callback
	.type	dump_callback,@function
dump_callback:                          # @dump_callback
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
	move	$fp, $a0
	ori	$a3, $zero, 3
	ori	$a0, $zero, 1
	bne	$a1, $a3, .LBB14_108
# %bb.1:
	ld.d	$s0, $a2, 0
	ld.d	$s1, $a2, 8
	ld.d	$s2, $a2, 16
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_7
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	ori	$a2, $zero, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_10
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	ori	$a2, $zero, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_16
# %bb.5:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.129)
	addi.d	$a1, $a1, %pc_lo12(.L.str.129)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB14_9
.LBB14_6:
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 29
	b	.LBB14_8
.LBB14_7:
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	ori	$a1, $zero, 23
.LBB14_8:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB14_9:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_11
.LBB14_10:
	move	$a0, $zero
	b	.LBB14_108
.LBB14_11:
	st.d	$zero, $sp, 64
	ori	$a0, $zero, 19
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	ld.h	$a1, $a0, 16
	vld	$vr0, $a0, 0
	st.h	$a1, $s1, 16
	vst	$vr0, $s1, 0
	st.b	$zero, $s1, 18
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s4, $s2, 0
	add.d	$a0, $s2, $s3
	addi.d	$a2, $a0, 3
	bgtz	$s4, .LBB14_14
	b	.LBB14_24
.LBB14_13:                              # %appendText.exit.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $zero
	addi.w	$s4, $s2, 0
	add.d	$a0, $s2, $s3
	addi.d	$a2, $a0, 3
	blez	$s4, .LBB14_24
.LBB14_14:                              # %.lr.ph.preheader.i
	bstrpick.d	$a0, $s2, 30, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB14_19
# %bb.15:
	move	$a1, $zero
	b	.LBB14_22
.LBB14_16:
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB14_18
# %bb.17:
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$s1, $fp, 28
.LBB14_18:
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	move	$a1, $s0
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(sqlite3_mprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	b	.LBB14_10
.LBB14_19:                              # %vector.ph
	bstrpick.d	$a1, $s2, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a1, $a1, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	addi.d	$a2, $s0, 4
	vrepli.b	$vr2, 34
	vrepli.w	$vr3, 1
	move	$a3, $a1
	.p2align	4, , 16
.LBB14_20:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB14_20
# %bb.21:                               # %middle.block
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB14_24
.LBB14_22:                              # %.lr.ph.i.preheader
	sub.d	$a0, $a0, $a1
	add.d	$a1, $s0, $a1
	.p2align	4, , 16
.LBB14_23:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.d	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB14_23
.LBB14_24:                              # %._crit_edge.i
	addi.w	$a1, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_32
# %bb.25:
	addi.w	$a3, $s3, 0
	add.d	$a1, $a0, $a3
	addi.d	$a2, $a1, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $a0, $a3
	blez	$s4, .LBB14_30
# %bb.26:                               # %.lr.ph62.preheader.i
	bstrpick.d	$a3, $s2, 30, 0
	move	$a4, $s0
	b	.LBB14_28
	.p2align	4, , 16
.LBB14_27:                              #   in Loop: Header=BB14_28 Depth=1
	addi.d	$a5, $a2, 2
	st.b	$a1, $a2, 1
	move	$a2, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	beqz	$a3, .LBB14_30
.LBB14_28:                              # %.lr.ph62.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a4, 0
	st.b	$a5, $a2, 0
	beq	$a5, $a1, .LBB14_27
# %bb.29:                               #   in Loop: Header=BB14_28 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB14_28
.LBB14_30:                              # %appendText.exit76
	st.h	$a1, $a2, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	addi.w	$s1, $s2, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_33
.LBB14_31:
	addi.w	$a2, $s2, 0
	lu12i.w	$a1, 3
	ori	$a3, $a1, 2857
	ld.d	$a1, $fp, 0
	stx.h	$a3, $a0, $a2
	add.d	$a2, $a0, $s1
	st.b	$zero, $a2, -1
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 64
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB14_34
	b	.LBB14_107
.LBB14_32:
	move	$s2, $zero
	addi.w	$s1, $s2, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_31
.LBB14_33:                              # %appendText.exit82.thread
	ld.d	$a0, $fp, 0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 64
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$s1, .LBB14_107
.LBB14_34:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB14_107
# %bb.35:
	ori	$a0, $zero, 26
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_37
# %bb.36:                               # %.thread56.i84
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	ld.b	$a1, $a0, 24
	ld.d	$a2, $a0, 16
	vld	$vr0, $a0, 0
	st.b	$a1, $s1, 24
	st.d	$a2, $s1, 16
	vst	$vr0, $s1, 0
	st.b	$zero, $s1, 25
.LBB14_37:                              # %appendText.exit87
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s4, $a0, 0
	addi.d	$a2, $a0, 3
	blez	$s4, .LBB14_45
# %bb.38:                               # %.lr.ph.preheader.i102
	bstrpick.d	$a0, $s3, 30, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB14_40
# %bb.39:
	move	$a1, $zero
	b	.LBB14_43
.LBB14_40:                              # %vector.ph259
	bstrpick.d	$a1, $s3, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a1, $a1, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	addi.d	$a2, $s0, 4
	vrepli.b	$vr2, 34
	vrepli.w	$vr3, 1
	move	$a3, $a1
	.p2align	4, , 16
.LBB14_41:                              # %vector.body262
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB14_41
# %bb.42:                               # %middle.block269
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB14_45
.LBB14_43:                              # %.lr.ph.i104.preheader
	sub.d	$a0, $a0, $a1
	add.d	$a1, $s0, $a1
	.p2align	4, , 16
.LBB14_44:                              # %.lr.ph.i104
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.d	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB14_44
.LBB14_45:                              # %._crit_edge.i88
	addi.w	$a0, $a2, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_70
# %bb.46:
	move	$s2, $a0
	ori	$a0, $zero, 34
	st.b	$a0, $s2, 0
	blez	$s4, .LBB14_53
# %bb.47:                               # %.lr.ph62.preheader.i94
	bstrpick.d	$a2, $s3, 30, 0
	addi.d	$a1, $s2, 1
	move	$a3, $s0
	b	.LBB14_49
	.p2align	4, , 16
.LBB14_48:                              #   in Loop: Header=BB14_49 Depth=1
	addi.d	$a4, $a1, 2
	st.b	$a0, $a1, 1
	move	$a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	beqz	$a2, .LBB14_51
.LBB14_49:                              # %.lr.ph62.i96
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	st.b	$a4, $a1, 0
	beq	$a4, $a0, .LBB14_48
# %bb.50:                               #   in Loop: Header=BB14_49 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB14_49
.LBB14_51:                              # %appendText.exit110
	ori	$a0, $zero, 34
	st.h	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$s1, .LBB14_54
.LBB14_52:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB14_55
.LBB14_53:                              # %appendText.exit110.thread223
	st.h	$a0, $s2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$s1, .LBB14_52
.LBB14_54:
	move	$s4, $zero
.LBB14_55:
	addi.w	$s5, $s3, 0
	add.d	$a0, $s3, $s4
	addi.d	$a2, $a0, 3
	blez	$s5, .LBB14_63
# %bb.56:                               # %.lr.ph.preheader.i126
	bstrpick.d	$a0, $s3, 30, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB14_58
# %bb.57:
	move	$a1, $zero
	b	.LBB14_61
.LBB14_58:                              # %vector.ph276
	bstrpick.d	$a1, $s3, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a1, $a1, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	addi.d	$a2, $s2, 4
	vrepli.b	$vr2, 39
	vrepli.w	$vr3, 1
	move	$a3, $a1
	.p2align	4, , 16
.LBB14_59:                              # %vector.body279
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB14_59
# %bb.60:                               # %middle.block286
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB14_63
.LBB14_61:                              # %.lr.ph.i128.preheader
	sub.d	$a0, $a0, $a1
	add.d	$a1, $s2, $a1
	.p2align	4, , 16
.LBB14_62:                              # %.lr.ph.i128
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	addi.d	$a3, $a3, -39
	sltui	$a3, $a3, 1
	add.d	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB14_62
.LBB14_63:                              # %._crit_edge.i112
	addi.w	$a1, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_72
# %bb.64:
	move	$s1, $a0
	addi.w	$a2, $s4, 0
	add.d	$a0, $a0, $a2
	addi.d	$a1, $a0, 1
	ori	$a0, $zero, 39
	stx.b	$a0, $s1, $a2
	blez	$s5, .LBB14_69
# %bb.65:                               # %.lr.ph62.preheader.i118
	bstrpick.d	$a2, $s3, 30, 0
	b	.LBB14_67
	.p2align	4, , 16
.LBB14_66:                              #   in Loop: Header=BB14_67 Depth=1
	addi.d	$a3, $a1, 2
	st.b	$a0, $a1, 1
	move	$a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB14_69
.LBB14_67:                              # %.lr.ph62.i120
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s2, 0
	st.b	$a3, $a1, 0
	beq	$a3, $a0, .LBB14_66
# %bb.68:                               #   in Loop: Header=BB14_67 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$s2, $s2, 1
	bnez	$a2, .LBB14_67
.LBB14_69:                              # %._crit_edge63.i115
	st.h	$a0, $a1, 0
.LBB14_70:                              # %appendText.exit134
	beqz	$s1, .LBB14_72
# %bb.71:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB14_73
.LBB14_72:
	move	$s1, $zero
	move	$s3, $zero
.LBB14_73:                              # %appendText.exit134.thread
	addi.w	$s4, $s3, 19
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_75
# %bb.74:                               # %.thread56.i137
	addi.w	$a0, $s3, 0
	add.d	$a1, $s2, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.133)
	addi.d	$a2, $a2, %pc_lo12(.L.str.133)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vstx	$vr0, $s2, $a0
	st.h	$a2, $a1, 16
	add.d	$a0, $s2, $s4
	st.b	$zero, $a0, -1
.LBB14_75:                              # %appendText.exit140
	ld.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 100
	bne	$a0, $s5, .LBB14_104
# %bb.76:                               # %.lr.ph.preheader
	ori	$s6, $zero, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr0, 34
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$s7, $zero, 34
	.p2align	4, , 16
.LBB14_77:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_87 Depth 2
                                        #     Child Loop BB14_90 Depth 2
                                        #     Child Loop BB14_95 Depth 2
	ld.d	$a0, $sp, 64
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(sqlite3_column_text)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB14_79
# %bb.78:                               #   in Loop: Header=BB14_77 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB14_80
	.p2align	4, , 16
.LBB14_79:                              #   in Loop: Header=BB14_77 Depth=1
	move	$s4, $zero
.LBB14_80:                              #   in Loop: Header=BB14_77 Depth=1
	addi.w	$s3, $s4, 7
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_82
# %bb.81:                               #   in Loop: Header=BB14_77 Depth=1
	addi.w	$a0, $s4, 0
	add.d	$a1, $s2, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.134)
	addi.d	$a2, $a2, %pc_lo12(.L.str.134)
	ld.w	$a3, $a2, 0
	ld.h	$a2, $a2, 4
	stx.w	$a3, $s2, $a0
	st.h	$a2, $a1, 4
	add.d	$a0, $s2, $s3
	st.b	$zero, $a0, -1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB14_83
	.p2align	4, , 16
.LBB14_82:                              # %appendText.exit146.thread
                                        #   in Loop: Header=BB14_77 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s4, $zero
.LBB14_83:                              #   in Loop: Header=BB14_77 Depth=1
	addi.w	$s8, $s3, 0
	add.d	$a0, $s3, $s4
	addi.d	$a2, $a0, 3
	vld	$vr4, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 32                   # 16-byte Folded Reload
	blez	$s8, .LBB14_91
# %bb.84:                               # %.lr.ph.preheader.i162
                                        #   in Loop: Header=BB14_77 Depth=1
	bstrpick.d	$a0, $s3, 30, 0
	bgeu	$a0, $s6, .LBB14_86
# %bb.85:                               #   in Loop: Header=BB14_77 Depth=1
	move	$a1, $zero
	b	.LBB14_89
	.p2align	4, , 16
.LBB14_86:                              # %vector.ph293
                                        #   in Loop: Header=BB14_77 Depth=1
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$a1, $a1, 3
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	vinsgr2vr.w	$vr0, $a2, 0
	addi.d	$a2, $s1, 4
	move	$a3, $a1
	.p2align	4, , 16
.LBB14_87:                              # %vector.body296
                                        #   Parent Loop BB14_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vseq.b	$vr2, $vr2, $vr4
	vilvl.b	$vr2, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vand.v	$vr2, $vr2, $vr5
	vseq.b	$vr3, $vr3, $vr4
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vand.v	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB14_87
# %bb.88:                               # %middle.block303
                                        #   in Loop: Header=BB14_77 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB14_91
.LBB14_89:                              # %.lr.ph.i164.preheader
                                        #   in Loop: Header=BB14_77 Depth=1
	sub.d	$a0, $a0, $a1
	add.d	$a1, $s1, $a1
	.p2align	4, , 16
.LBB14_90:                              # %.lr.ph.i164
                                        #   Parent Loop BB14_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a1, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.d	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB14_90
.LBB14_91:                              # %._crit_edge.i148
                                        #   in Loop: Header=BB14_77 Depth=1
	addi.w	$a1, $a2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_98
# %bb.92:                               #   in Loop: Header=BB14_77 Depth=1
	addi.w	$a0, $s4, 0
	add.d	$a1, $s2, $a0
	addi.d	$a1, $a1, 1
	stx.b	$s7, $s2, $a0
	blez	$s8, .LBB14_97
# %bb.93:                               # %.lr.ph62.preheader.i154
                                        #   in Loop: Header=BB14_77 Depth=1
	bstrpick.d	$a0, $s3, 30, 0
	b	.LBB14_95
	.p2align	4, , 16
.LBB14_94:                              #   in Loop: Header=BB14_95 Depth=2
	addi.d	$a2, $a1, 2
	st.b	$s7, $a1, 1
	move	$a1, $a2
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 1
	beqz	$a0, .LBB14_97
.LBB14_95:                              # %.lr.ph62.i156
                                        #   Parent Loop BB14_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s1, 0
	st.b	$a2, $a1, 0
	beq	$a2, $s7, .LBB14_94
# %bb.96:                               #   in Loop: Header=BB14_95 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 1
	bnez	$a0, .LBB14_95
.LBB14_97:                              # %appendText.exit170
                                        #   in Loop: Header=BB14_77 Depth=1
	ld.d	$a0, $sp, 64
	st.h	$s7, $a1, 0
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beq	$s3, $s5, .LBB14_99
	b	.LBB14_101
	.p2align	4, , 16
.LBB14_98:                              # %appendText.exit170.thread
                                        #   in Loop: Header=BB14_77 Depth=1
	ld.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	bne	$a0, $s5, .LBB14_101
.LBB14_99:                              # %.thread
                                        #   in Loop: Header=BB14_77 Depth=1
	addi.w	$s3, $s1, 13
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_77
# %bb.100:                              # %.thread56.i173
                                        #   in Loop: Header=BB14_77 Depth=1
	addi.w	$a0, $s1, 0
	add.d	$a1, $s2, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.135)
	addi.d	$a2, $a2, %pc_lo12(.L.str.135)
	ld.d	$a3, $a2, 0
	ld.w	$a2, $a2, 8
	stx.d	$a3, $s2, $a0
	st.w	$a2, $a1, 8
	add.d	$a0, $s2, $s3
	st.b	$zero, $a0, -1
	b	.LBB14_77
.LBB14_101:                             # %.thread249
	addi.w	$s3, $s1, 3
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_103
# %bb.102:                              # %.thread56.i179
	move	$s2, $a0
	addi.w	$a0, $s1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 41
	stx.h	$a1, $s2, $a0
	add.d	$a0, $s2, $s3
	st.b	$zero, $a0, -1
	b	.LBB14_104
.LBB14_103:
	move	$s2, $zero
.LBB14_104:                             # %._crit_edge
	ld.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_109
# %bb.105:
	beqz	$s2, .LBB14_107
# %bb.106:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB14_107:                             # %.critedge
	ori	$a0, $zero, 1
.LBB14_108:
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
.LBB14_109:
	beqz	$s2, .LBB14_111
# %bb.110:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB14_112
.LBB14_111:
	move	$s4, $zero
.LBB14_112:
	addi.w	$s3, $s4, 14
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_114
# %bb.113:
	addi.w	$a0, $s4, 0
	add.d	$a1, $s1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.137)
	addi.d	$a2, $a2, %pc_lo12(.L.str.137)
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a2, 5
	stx.d	$a3, $s1, $a0
	st.d	$a2, $a1, 5
	add.d	$a0, $s1, $s3
	st.b	$zero, $a0, -1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB14_115
.LBB14_114:                             # %appendText.exit188.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $zero
.LBB14_115:
	addi.w	$s4, $s2, 0
	add.d	$a0, $s2, $s3
	addi.d	$a2, $a0, 3
	blez	$s4, .LBB14_123
# %bb.116:                              # %.lr.ph.preheader.i204
	bstrpick.d	$a0, $s2, 30, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB14_118
# %bb.117:
	move	$a1, $zero
	b	.LBB14_121
.LBB14_118:                             # %vector.ph310
	bstrpick.d	$a1, $s2, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a1, $a1, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	addi.d	$a2, $s0, 4
	vrepli.b	$vr2, 34
	vrepli.w	$vr3, 1
	move	$a3, $a1
	.p2align	4, , 16
.LBB14_119:                             # %vector.body313
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB14_119
# %bb.120:                              # %middle.block320
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB14_123
.LBB14_121:                             # %.lr.ph.i206.preheader
	sub.d	$a0, $a0, $a1
	add.d	$a1, $s0, $a1
	.p2align	4, , 16
.LBB14_122:                             # %.lr.ph.i206
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.d	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB14_122
.LBB14_123:                             # %._crit_edge.i190
	addi.w	$a1, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_130
# %bb.124:
	addi.w	$a2, $s3, 0
	add.d	$a0, $s1, $a2
	addi.d	$a1, $a0, 1
	ori	$a0, $zero, 34
	stx.b	$a0, $s1, $a2
	blez	$s4, .LBB14_129
# %bb.125:                              # %.lr.ph62.preheader.i196
	bstrpick.d	$a2, $s2, 30, 0
	b	.LBB14_127
.LBB14_126:                             #   in Loop: Header=BB14_127 Depth=1
	addi.d	$a3, $a1, 2
	st.b	$a0, $a1, 1
	move	$a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$s0, $s0, 1
	beqz	$a2, .LBB14_129
.LBB14_127:                             # %.lr.ph62.i198
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s0, 0
	st.b	$a3, $a1, 0
	beq	$a3, $a0, .LBB14_126
# %bb.128:                              #   in Loop: Header=BB14_127 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$s0, $s0, 1
	bnez	$a2, .LBB14_127
.LBB14_129:                             # %._crit_edge63.i193
	st.h	$a0, $a1, 0
.LBB14_130:                             # %appendText.exit212
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB14_132
# %bb.131:
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a1, $a0, %pc_lo12(.L.str.138)
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(appendText)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
.LBB14_132:
	beqz	$s1, .LBB14_10
# %bb.133:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB14_10
.Lfunc_end14:
	.size	dump_callback, .Lfunc_end14-dump_callback
                                        # -- End function
	.p2align	5                               # -- Begin function appendText
	.type	appendText,@function
appendText:                             # @appendText
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB15_5
# %bb.1:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$a0, $s3, $s1
	beqz	$s0, .LBB15_6
.LBB15_2:
	addi.w	$s4, $s1, 0
	addi.d	$a2, $a0, 3
	blez	$s4, .LBB15_13
# %bb.3:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $s1, 30, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB15_8
# %bb.4:
	move	$a1, $zero
	b	.LBB15_11
.LBB15_5:
	move	$s3, $zero
	add.d	$a0, $s3, $s1
	bnez	$s0, .LBB15_2
.LBB15_6:                               # %.thread
	addi.w	$s0, $a0, 1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_20
# %bb.7:                                # %.thread56
	addi.w	$a1, $s3, 0
	add.d	$a1, $a0, $a1
	addi.w	$a2, $s1, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	add.d	$a1, $s1, $s0
	st.b	$zero, $a1, -1
	b	.LBB15_21
.LBB15_8:                               # %vector.ph
	bstrpick.d	$a1, $s1, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a1, $a1, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.b	$vr2, $s0, 0
	vinsgr2vr.b	$vr2, $s0, 1
	vinsgr2vr.b	$vr2, $s0, 2
	vinsgr2vr.b	$vr2, $s0, 3
	addi.d	$a2, $fp, 4
	vrepli.w	$vr3, 1
	move	$a3, $a1
	.p2align	4, , 16
.LBB15_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB15_9
# %bb.10:                               # %middle.block
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	beq	$a0, $a1, .LBB15_13
.LBB15_11:                              # %.lr.ph.preheader76
	add.d	$a3, $fp, $a1
	sub.d	$a0, $a0, $a1
	andi	$a1, $s0, 255
	.p2align	4, , 16
.LBB15_12:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	xor	$a4, $a4, $a1
	sltui	$a4, $a4, 1
	add.d	$a2, $a2, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB15_12
.LBB15_13:                              # %._crit_edge
	addi.w	$a1, $a2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_20
# %bb.14:
	addi.w	$a2, $s3, 0
	add.d	$a1, $a0, $a2
	addi.d	$a1, $a1, 1
	stx.b	$s0, $a0, $a2
	blez	$s4, .LBB15_19
# %bb.15:                               # %.lr.ph62.preheader
	bstrpick.d	$a2, $s1, 30, 0
	andi	$a3, $s0, 255
	b	.LBB15_17
	.p2align	4, , 16
.LBB15_16:                              #   in Loop: Header=BB15_17 Depth=1
	addi.d	$a4, $a1, 2
	st.b	$s0, $a1, 1
	move	$a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$fp, $fp, 1
	beqz	$a2, .LBB15_19
.LBB15_17:                              # %.lr.ph62
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $fp, 0
	st.b	$a4, $a1, 0
	beq	$a4, $a3, .LBB15_16
# %bb.18:                               #   in Loop: Header=BB15_17 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$fp, $fp, 1
	bnez	$a2, .LBB15_17
.LBB15_19:                              # %._crit_edge63
	st.b	$s0, $a1, 0
	st.b	$zero, $a1, 1
	b	.LBB15_21
.LBB15_20:
	move	$a0, $zero
.LBB15_21:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	appendText, .Lfunc_end15-appendText
                                        # -- End function
	.p2align	5                               # -- Begin function output_csv
	.type	output_csv,@function
output_csv:                             # @output_csv
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
	move	$fp, $a0
	ld.d	$s2, $a0, 16
	move	$s1, $a2
	addi.d	$s0, $a0, 48
	beqz	$a1, .LBB16_8
# %bb.1:
	move	$s3, $a1
	ld.bu	$s5, $a1, 0
	beqz	$s5, .LBB16_15
# %bb.2:                                # %.lr.ph
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	ori	$s6, $zero, 1
	bne	$a1, $s6, .LBB16_10
# %bb.3:                                # %.lr.ph.split.us.preheader
	addi.d	$a0, $s3, 1
	pcalau12i	$a1, %pc_hi20(needCsvQuote)
	addi.d	$a1, $a1, %pc_lo12(needCsvQuote)
	.p2align	4, , 16
.LBB16_4:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $a1, $s5
	bnez	$a2, .LBB16_15
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	ld.bu	$a2, $s0, 0
	beq	$s5, $a2, .LBB16_15
# %bb.6:                                #   in Loop: Header=BB16_4 Depth=1
	ld.bu	$s5, $a0, 0
	addi.d	$a0, $a0, 1
	bnez	$s5, .LBB16_4
.LBB16_7:                               # %._crit_edge
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB16_21
	b	.LBB16_9
.LBB16_8:
	addi.d	$a0, $fp, 868
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB16_21
.LBB16_9:
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
	ret
.LBB16_10:                              # %.lr.ph.split.preheader
	addi.w	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(needCsvQuote)
	addi.d	$s7, $a0, %pc_lo12(needCsvQuote)
	b	.LBB16_12
	.p2align	4, , 16
.LBB16_11:                              #   in Loop: Header=BB16_12 Depth=1
	ldx.bu	$s5, $s3, $s6
	addi.d	$s6, $s6, 1
	beqz	$s5, .LBB16_7
.LBB16_12:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s7, $s5
	bnez	$a0, .LBB16_15
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=1
	ld.bu	$a0, $s0, 0
	bne	$s5, $a0, .LBB16_11
# %bb.14:                               #   in Loop: Header=BB16_12 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_11
.LBB16_15:                              # %.thread
	ori	$a0, $zero, 34
	ori	$s4, $zero, 34
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB16_18
	.p2align	4, , 16
.LBB16_16:                              #   in Loop: Header=BB16_18 Depth=1
	ori	$a0, $zero, 34
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
.LBB16_17:                              #   in Loop: Header=BB16_18 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
.LBB16_18:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s3, 0
	beq	$a0, $s4, .LBB16_16
# %bb.19:                               #   in Loop: Header=BB16_18 Depth=1
	bnez	$a0, .LBB16_17
# %bb.20:
	ori	$a0, $zero, 34
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB16_9
.LBB16_21:
	ld.d	$a1, $fp, 16
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(fputs)
	jr	$t8
.Lfunc_end16:
	.size	output_csv, .Lfunc_end16-output_csv
                                        # -- End function
	.type	Argv0,@object                   # @Argv0
	.local	Argv0
	.comm	Argv0,8,8
	.type	stdin_is_interactive,@object    # @stdin_is_interactive
	.data
	.p2align	2, 0x0
stdin_is_interactive:
	.word	1                               # 0x1
	.size	stdin_is_interactive, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-separator"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"-nullvalue"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"-init"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	":memory:"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"-html"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"-list"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"-line"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"-column"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"-csv"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	","
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%.*s"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"-header"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"-noheader"
	.size	.L.str.12, 10

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"-echo"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"-bail"
	.size	.L.str.14, 6

	.type	bail_on_error,@object           # @bail_on_error
	.local	bail_on_error
	.comm	bail_on_error,4,4
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"-version"
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s\n"
	.size	.L.str.16, 4

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"-interactive"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"-batch"
	.size	.L.str.18, 7

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"-help"
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"--help"
	.size	.L.str.20, 7

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%s: unknown option: %s\n"
	.size	.L.str.21, 24

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Use -help for a list of options.\n"
	.size	.L.str.22, 34

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SQL error: %s\n"
	.size	.L.str.23, 15

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SQLite version %s\nEnter \".help\" for instructions\n"
	.size	.L.str.24, 50

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%s/.sqlite_history"
	.size	.L.str.25, 19

	.type	db,@object                      # @db
	.local	db
	.comm	db,8,8
	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"error closing database: %s\n"
	.size	.L.str.26, 28

	.type	mainPrompt,@object              # @mainPrompt
	.local	mainPrompt
	.comm	mainPrompt,20,1
	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"sqlite> "
	.size	.L.str.28, 9

	.type	continuePrompt,@object          # @continuePrompt
	.local	continuePrompt
	.comm	continuePrompt,20,1
	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"   ...> "
	.size	.L.str.29, 9

	.type	seenInterrupt,@object           # @seenInterrupt
	.local	seenInterrupt
	.comm	seenInterrupt,4,4
	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"shellstatic"
	.size	.L.str.30, 12

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Unable to open database \"%s\": %s\n"
	.size	.L.str.31, 34

	.type	zShellStatic,@object            # @zShellStatic
	.local	zShellStatic
	.comm	zShellStatic,8,8
	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%s: cannot locate your home directory!\n"
	.size	.L.str.32, 40

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%s: out of memory!\n"
	.size	.L.str.33, 20

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%s/.sqliterc"
	.size	.L.str.34, 13

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"rb"
	.size	.L.str.35, 3

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"-- Loading resources from %s\n"
	.size	.L.str.36, 30

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Usage: %s [OPTIONS] FILENAME [SQL]\nFILENAME is the name of an SQLite database. A new database is created\nif the file does not previously exist.\n"
	.size	.L.str.37, 145

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"OPTIONS include:\n%s"
	.size	.L.str.38, 20

	.type	zOptions,@object                # @zOptions
	.section	.rodata,"a",@progbits
zOptions:
	.asciz	"   -init filename       read/process named file\n   -echo                print commands before execution\n   -[no]header          turn headers on or off\n   -bail                stop after hitting an error\n   -interactive         force interactive I/O\n   -batch               force batch I/O\n   -column              set output mode to 'column'\n   -csv                 set output mode to 'csv'\n   -html                set output mode to HTML\n   -line                set output mode to 'line'\n   -list                set output mode to 'list'\n   -separator 'x'       set output field separator (|)\n   -nullvalue 'text'    set text string for NULL values\n   -version             show SQLite version\n"
	.size	zOptions, 694

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"bail"
	.size	.L.str.40, 5

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"databases"
	.size	.L.str.41, 10

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"PRAGMA database_list; "
	.size	.L.str.42, 23

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Error: %s\n"
	.size	.L.str.43, 11

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"dump"
	.size	.L.str.44, 5

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"BEGIN TRANSACTION;\n"
	.size	.L.str.45, 20

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"SELECT name, type, sql FROM sqlite_master WHERE sql NOT NULL AND type=='table'"
	.size	.L.str.46, 79

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SELECT sql FROM sqlite_master WHERE sql NOT NULL AND type IN ('index','trigger','view')"
	.size	.L.str.47, 88

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SELECT name, type, sql FROM sqlite_master WHERE tbl_name LIKE shellstatic() AND type=='table'  AND sql NOT NULL"
	.size	.L.str.48, 112

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"SELECT sql FROM sqlite_master WHERE sql NOT NULL  AND type IN ('index','trigger','view')  AND tbl_name LIKE shellstatic()"
	.size	.L.str.49, 122

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"PRAGMA writable_schema=OFF;\n"
	.size	.L.str.50, 29

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"COMMIT;\n"
	.size	.L.str.51, 9

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"echo"
	.size	.L.str.52, 5

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"exit"
	.size	.L.str.53, 5

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"explain"
	.size	.L.str.54, 8

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"header"
	.size	.L.str.55, 7

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"headers"
	.size	.L.str.56, 8

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"help"
	.size	.L.str.57, 5

	.type	zHelp,@object                   # @zHelp
	.data
zHelp:
	.asciz	".bail ON|OFF           Stop after hitting an error.  Default OFF\n.databases             List names and files of attached databases\n.dump ?TABLE? ...      Dump the database in an SQL text format\n.echo ON|OFF           Turn command echo on or off\n.exit                  Exit this program\n.explain ON|OFF        Turn output mode suitable for EXPLAIN on or off.\n.header(s) ON|OFF      Turn display of headers on or off\n.help                  Show this message\n.import FILE TABLE     Import data from FILE into TABLE\n.indices TABLE         Show names of all indices on TABLE\n.mode MODE ?TABLE?     Set output mode where MODE is one of:\n                         csv      Comma-separated values\n                         column   Left-aligned columns.  (See .width)\n                         html     HTML <table> code\n                         insert   SQL insert statements for TABLE\n                         line     One value per line\n                         list     Values delimited by .separator string\n                         tabs     Tab-separated values\n                         tcl      TCL list elements\n.nullvalue STRING      Print STRING in place of NULL values\n.output FILENAME       Send output to FILENAME\n.output stdout         Send output to the screen\n.prompt MAIN CONTINUE  Replace the standard prompts\n.quit                  Exit this program\n.read FILENAME         Execute SQL in FILENAME\n.schema ?TABLE?        Show the CREATE statements\n.separator STRING      Change separator used by output mode and .import\n.show                  Show the current values for various settings\n.tables ?PATTERN?      List names of tables matching a LIKE pattern\n.timeout MS            Try opening locked tables for MS milliseconds\n.timer ON|OFF          Turn the CPU timer measurement on or off\n.width NUM NUM ...     Set column widths for \"column\" mode\n"
	.size	zHelp, 1855

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"import"
	.size	.L.str.58, 7

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"non-null separator required for import\n"
	.size	.L.str.59, 40

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"SELECT * FROM '%q'"
	.size	.L.str.60, 19

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"INSERT INTO '%q' VALUES(?"
	.size	.L.str.61, 26

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"cannot open file: %s\n"
	.size	.L.str.62, 22

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"BEGIN"
	.size	.L.str.63, 6

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"COMMIT"
	.size	.L.str.64, 7

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%s line %d: expected %d columns of data but found %d\n"
	.size	.L.str.65, 54

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"ROLLBACK"
	.size	.L.str.66, 9

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"indices"
	.size	.L.str.67, 8

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"SELECT name FROM sqlite_master WHERE type='index' AND tbl_name LIKE shellstatic() UNION ALL SELECT name FROM sqlite_temp_master WHERE type='index' AND tbl_name LIKE shellstatic() ORDER BY 1"
	.size	.L.str.68, 190

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"mode"
	.size	.L.str.69, 5

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"line"
	.size	.L.str.70, 5

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"lines"
	.size	.L.str.71, 6

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"column"
	.size	.L.str.72, 7

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"columns"
	.size	.L.str.73, 8

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"list"
	.size	.L.str.74, 5

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"html"
	.size	.L.str.75, 5

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"tcl"
	.size	.L.str.76, 4

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"csv"
	.size	.L.str.77, 4

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"tabs"
	.size	.L.str.78, 5

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"\t"
	.size	.L.str.79, 2

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"insert"
	.size	.L.str.80, 7

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"table"
	.size	.L.str.81, 6

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"mode should be one of: column csv html insert line list tabs tcl\n"
	.size	.L.str.82, 66

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"nullvalue"
	.size	.L.str.83, 10

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"output"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"stdout"
	.size	.L.str.85, 7

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"wb"
	.size	.L.str.86, 3

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"can't write to \"%s\"\n"
	.size	.L.str.87, 21

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"%s"
	.size	.L.str.88, 3

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"prompt"
	.size	.L.str.89, 7

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"quit"
	.size	.L.str.90, 5

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"read"
	.size	.L.str.91, 5

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"can't open \"%s\"\n"
	.size	.L.str.92, 17

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"schema"
	.size	.L.str.93, 7

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"sqlite_master"
	.size	.L.str.94, 14

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"CREATE TABLE sqlite_master (\n  type text,\n  name text,\n  tbl_name text,\n  rootpage integer,\n  sql text\n)"
	.size	.L.str.95, 105

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"sql"
	.size	.L.str.96, 4

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"sqlite_temp_master"
	.size	.L.str.97, 19

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"CREATE TEMP TABLE sqlite_temp_master (\n  type text,\n  name text,\n  tbl_name text,\n  rootpage integer,\n  sql text\n)"
	.size	.L.str.98, 115

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"SELECT sql FROM   (SELECT * FROM sqlite_master UNION ALL   SELECT * FROM sqlite_temp_master) WHERE tbl_name LIKE shellstatic() AND type!='meta' AND sql NOTNULL ORDER BY substr(type,2,1), name"
	.size	.L.str.99, 192

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"SELECT sql FROM   (SELECT * FROM sqlite_master UNION ALL   SELECT * FROM sqlite_temp_master) WHERE type!='meta' AND sql NOTNULL AND name NOT LIKE 'sqlite_%'ORDER BY substr(type,2,1), name"
	.size	.L.str.100, 188

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"separator"
	.size	.L.str.101, 10

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"show"
	.size	.L.str.102, 5

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"%9.9s: %s\n"
	.size	.L.str.103, 11

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"on"
	.size	.L.str.104, 3

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"off"
	.size	.L.str.105, 4

	.type	modeDescr,@object               # @modeDescr
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
modeDescr:
	.dword	.L.str.70
	.dword	.L.str.72
	.dword	.L.str.74
	.dword	.L.str.139
	.dword	.L.str.75
	.dword	.L.str.80
	.dword	.L.str.76
	.dword	.L.str.77
	.size	modeDescr, 64

	.type	.L.str.106,@object              # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"%9.9s: "
	.size	.L.str.106, 8

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"\n"
	.size	.L.str.107, 2

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"width"
	.size	.L.str.108, 6

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"%d "
	.size	.L.str.109, 4

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"tables"
	.size	.L.str.110, 7

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"SELECT name FROM sqlite_master WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%'UNION ALL SELECT name FROM sqlite_temp_master WHERE type IN ('table','view') ORDER BY 1"
	.size	.L.str.111, 178

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"SELECT name FROM sqlite_master WHERE type IN ('table','view') AND name LIKE '%'||shellstatic()||'%' UNION ALL SELECT name FROM sqlite_temp_master WHERE type IN ('table','view') AND name LIKE '%'||shellstatic()||'%' ORDER BY 1"
	.size	.L.str.112, 226

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.space	1
	.size	.L.str.113, 1

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"  "
	.size	.L.str.114, 3

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"%s%-*s"
	.size	.L.str.115, 7

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"timeout"
	.size	.L.str.116, 8

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"timer"
	.size	.L.str.117, 6

	.type	enableTimer,@object             # @enableTimer
	.local	enableTimer
	.comm	enableTimer,4,4
	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"unknown command or invalid arguments:  \"%s\". Enter \".help\" for help\n"
	.size	.L.str.118, 69

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"yes"
	.size	.L.str.119, 4

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"%s ORDER BY rowid DESC"
	.size	.L.str.120, 23

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"sqlite_sequence"
	.size	.L.str.121, 16

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"DELETE FROM sqlite_sequence;\n"
	.size	.L.str.122, 30

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"sqlite_stat1"
	.size	.L.str.123, 13

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"ANALYZE sqlite_master;\n"
	.size	.L.str.124, 24

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"sqlite_"
	.size	.L.str.125, 8

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"CREATE VIRTUAL TABLE"
	.size	.L.str.126, 21

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"PRAGMA writable_schema=ON;\n"
	.size	.L.str.127, 28

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');"
	.size	.L.str.128, 92

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"%s;\n"
	.size	.L.str.129, 5

	.type	.L.str.130,@object              # @.str.130
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.130:
	.asciz	"PRAGMA table_info("
	.size	.L.str.130, 19

	.type	.L.str.132,@object              # @.str.132
	.p2align	3, 0x0
.L.str.132:
	.asciz	"SELECT 'INSERT INTO ' || "
	.size	.L.str.132, 26

	.type	.L.str.133,@object              # @.str.133
	.p2align	3, 0x0
.L.str.133:
	.asciz	" || ' VALUES(' || "
	.size	.L.str.133, 19

	.type	.L.str.134,@object              # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"quote("
	.size	.L.str.134, 7

	.type	.L.str.135,@object              # @.str.135
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.135:
	.asciz	") || ',' || "
	.size	.L.str.135, 13

	.type	.L.str.137,@object              # @.str.137
	.p2align	3, 0x0
.L.str.137:
	.asciz	"|| ')' FROM  "
	.size	.L.str.137, 14

	.type	.L.str.138,@object              # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	" ORDER BY rowid DESC"
	.size	.L.str.138, 21

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"semi"
	.size	.L.str.139, 5

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"\\%03o"
	.size	.L.str.140, 6

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"%*s = %s\n"
	.size	.L.str.141, 10

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"%-*.*s%s"
	.size	.L.str.142, 9

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"---------------------------------------------------------------------------------------------"
	.size	.L.str.143, 94

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"%s%s"
	.size	.L.str.144, 5

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	";\n"
	.size	.L.str.145, 3

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"<TR>"
	.size	.L.str.146, 5

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"<TH>%s</TH>"
	.size	.L.str.147, 12

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"</TR>\n"
	.size	.L.str.148, 7

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"<TD>"
	.size	.L.str.149, 5

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"</TD>\n"
	.size	.L.str.150, 7

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"INSERT INTO %s VALUES("
	.size	.L.str.151, 23

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"%sNULL"
	.size	.L.str.152, 7

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	");\n"
	.size	.L.str.153, 4

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"&lt;"
	.size	.L.str.154, 5

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"&amp;"
	.size	.L.str.155, 6

	.type	needCsvQuote,@object            # @needCsvQuote
	.section	.rodata,"a",@progbits
needCsvQuote:
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.size	needCsvQuote, 256

	.type	.L.str.156,@object              # @.str.156
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.156:
	.asciz	"'%s'"
	.size	.L.str.156, 5

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"''"
	.size	.L.str.158, 3

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"%.*s''"
	.size	.L.str.159, 7

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"HOME"
	.size	.L.str.160, 5

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"out of memory\n"
	.size	.L.str.162, 15

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"SQL error near line %d:"
	.size	.L.str.163, 24

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"SQL error:"
	.size	.L.str.164, 11

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"%s %s\n"
	.size	.L.str.165, 7

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"Incomplete SQL: %s\n"
	.size	.L.str.166, 20

	.type	sBegin,@object                  # @sBegin
	.local	sBegin
	.comm	sBegin,144,16
	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"CPU Time: user %f sys %f\n"
	.size	.L.str.167, 26

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"Out of memory!\n"
	.size	.L.str.168, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym interrupt_handler
	.addrsig_sym callback
	.addrsig_sym shellstaticFunc
	.addrsig_sym dump_callback
	.addrsig_sym mainPrompt
	.addrsig_sym continuePrompt
	.addrsig_sym seenInterrupt
	.addrsig_sym zOptions
	.addrsig_sym zHelp
	.addrsig_sym sBegin
