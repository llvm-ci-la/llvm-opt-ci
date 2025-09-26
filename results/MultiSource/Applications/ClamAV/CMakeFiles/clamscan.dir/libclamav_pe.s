	.file	"libclamav_pe.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function cli_scanpe
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	cli_scanpe
	.p2align	5
	.type	cli_scanpe,@function
cli_scanpe:                             # @cli_scanpe
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2800
	sub.d	$sp, $sp, $a2
	st.w	$zero, $sp, 216
	beqz	$a1, .LBB0_12
# %bb.1:
	move	$s1, $a0
	move	$fp, $a1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 646
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2
	ori	$s0, $zero, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_13
# %bb.2:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 646
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	lu12i.w	$s0, 4
	ori	$a1, $s0, 3418
	beq	$a0, $a1, .LBB0_4
# %bb.3:
	lu12i.w	$a1, 5
	ori	$a1, $a1, 2637
	bne	$a0, $a1, .LBB0_17
.LBB0_4:
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 4
	ori	$s2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_14
# %bb.5:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.wu	$a1, $a0, 0
	beqz	$a1, .LBB0_18
# %bb.6:
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_19
# %bb.7:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 608
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 24
	ori	$s2, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_20
# %bb.8:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 608
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ori	$a1, $s0, 1360
	bne	$a0, $a1, .LBB0_21
# %bb.9:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 630
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	lu12i.w	$a1, 2
	and	$s6, $a0, $a1
	bnez	$s6, .LBB0_22
# %bb.10:
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_24
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	b	.LBB0_23
.LBB0_12:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	b	.LBB0_133
.LBB0_13:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_14:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_15:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_131
.LBB0_16:
	move	$a0, $zero
	b	.LBB0_133
.LBB0_17:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_18:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_19:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_20:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_21:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_22:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
.LBB0_23:                               # %.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_24:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 612
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	ori	$a0, $zero, 511
	blt	$a0, $a1, .LBB0_28
# %bb.25:
	addi.d	$a0, $a1, -332
	ori	$a2, $zero, 164
	bltu	$a2, $a0, .LBB0_47
# %bb.26:
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_27:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB0_74
.LBB0_28:
	ori	$a0, $zero, 1311
	blt	$a0, $a1, .LBB0_34
# %bb.29:
	ori	$a0, $zero, 643
	blt	$a0, $a1, .LBB0_39
# %bb.30:
	ori	$a0, $zero, 512
	beq	$a1, $a0, .LBB0_70
# %bb.31:
	ori	$a0, $zero, 614
	beq	$a1, $a0, .LBB0_66
# %bb.32:
	ori	$a0, $zero, 616
	bne	$a1, $a0, .LBB0_49
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	b	.LBB0_74
.LBB0_34:
	lu12i.w	$a0, 8
	ori	$a2, $a0, 1635
	blt	$a2, $a1, .LBB0_43
# %bb.35:
	ori	$a0, $zero, 1312
	beq	$a1, $a0, .LBB0_71
# %bb.36:
	ori	$a0, $zero, 3311
	beq	$a1, $a0, .LBB0_67
# %bb.37:
	ori	$a0, $zero, 3772
	bne	$a1, $a0, .LBB0_49
# %bb.38:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	b	.LBB0_74
.LBB0_39:
	ori	$a0, $zero, 644
	beq	$a1, $a0, .LBB0_72
# %bb.40:
	ori	$a0, $zero, 870
	beq	$a1, $a0, .LBB0_68
# %bb.41:
	ori	$a0, $zero, 1126
	bne	$a1, $a0, .LBB0_49
# %bb.42:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB0_74
.LBB0_43:
	ori	$a0, $a0, 1636
	beq	$a1, $a0, .LBB0_73
# %bb.44:
	lu12i.w	$a0, 9
	ori	$a0, $a0, 65
	beq	$a1, $a0, .LBB0_69
# %bb.45:
	lu12i.w	$a0, 12
	ori	$a0, $a0, 238
	bne	$a1, $a0, .LBB0_49
# %bb.46:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	b	.LBB0_74
.LBB0_47:
	bnez	$a1, .LBB0_49
# %bb.48:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB0_74
.LBB0_49:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_75
.LBB0_50:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	b	.LBB0_74
.LBB0_51:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB0_74
.LBB0_52:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	b	.LBB0_74
.LBB0_53:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	b	.LBB0_74
.LBB0_54:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB0_74
.LBB0_55:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	b	.LBB0_74
.LBB0_56:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB0_74
.LBB0_57:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	b	.LBB0_74
.LBB0_58:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB0_74
.LBB0_59:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	b	.LBB0_74
.LBB0_60:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB0_74
.LBB0_61:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	b	.LBB0_74
.LBB0_62:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	b	.LBB0_74
.LBB0_63:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	b	.LBB0_74
.LBB0_64:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	b	.LBB0_74
.LBB0_65:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB0_74
.LBB0_66:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	b	.LBB0_74
.LBB0_67:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	b	.LBB0_74
.LBB0_68:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	b	.LBB0_74
.LBB0_69:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	b	.LBB0_74
.LBB0_70:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB0_74
.LBB0_71:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	b	.LBB0_74
.LBB0_72:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB0_74
.LBB0_73:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
.LBB0_74:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_75:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 614
	add.d	$a0, $sp, $a0
	ld.hu	$s2, $a0, 0
	addi.d	$a0, $s2, -97
	bstrpick.d	$a0, $a0, 15, 5
	ori	$a1, $zero, 2044
	bltu	$a1, $a0, .LBB0_79
# %bb.76:
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_131
# %bb.77:
	beqz	$s2, .LBB0_87
# %bb.78:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_79:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 616
	add.d	$a0, $sp, $a0
	ld.wu	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 632
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 632
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(ctime)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 628
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 628
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 223
	bltu	$a1, $a0, .LBB0_81
# %bb.80:
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	b	.LBB0_15
.LBB0_81:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 368
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 224
	ori	$s0, $zero, 224
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_86
# %bb.82:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 368
	add.d	$a0, $sp, $a0
	ld.hu	$s5, $a0, 0
	ori	$a0, $zero, 523
	bne	$s5, $a0, .LBB0_88
# %bb.83:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 628
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 240
	bne	$a0, $a1, .LBB0_93
# %bb.84:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 592
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 16
	ori	$s0, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_86
# %bb.85:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 476
	add.d	$s0, $sp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	move	$s7, $zero
	b	.LBB0_96
.LBB0_86:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB0_15
.LBB0_87:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_88:
	ori	$a0, $zero, 267
	beq	$s5, $a0, .LBB0_91
# %bb.89:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 40
	andi	$a1, $a1, 64
	bnez	$a1, .LBB0_131
# %bb.90:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_91:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 628
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 224
	bne	$a0, $a1, .LBB0_94
# %bb.92:
	move	$a0, $zero
	b	.LBB0_95
.LBB0_93:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	b	.LBB0_15
.LBB0_94:
	addi.d	$a1, $a0, -224
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 628
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	addi.d	$a0, $a0, -328
	sltui	$a0, $a0, 1
.LBB0_95:
	ld.d	$a1, $fp, 56
	ld.bu	$a1, $a1, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 460
	add.d	$s0, $sp, $a2
	bstrpick.d	$a1, $a1, 6, 6
	and	$s7, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
.LBB0_96:
	lu12i.w	$a1, 2
	ori	$a1, $a1, 384
	add.d	$a1, $sp, $a1
	ld.w	$s3, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 428
	add.d	$a1, $sp, $a1
	ld.w	$s4, $a1, 0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 370
	add.d	$a0, $sp, $a0
	ld.bu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 371
	add.d	$a0, $sp, $a0
	ld.bu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 372
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 376
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 380
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 388
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 400
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 404
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 416
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 418
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 424
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 436
	add.d	$a0, $sp, $a0
	ld.hu	$a1, $a0, 0
	ori	$a0, $zero, 12
	bltu	$a0, $a1, .LBB0_109
# %bb.97:
	slli.d	$a0, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_1)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_98:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_99:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_100:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_101:
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_102:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_103:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_104:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	b	.LBB0_111
.LBB0_105:
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_106:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_107:
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_108:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_109:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB0_110:
	move	$s0, $zero
.LBB0_111:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB0_117
# %bb.112:
	move	$a1, $fp
	ld.wu	$a0, $fp, 40
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_117
# %bb.113:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 400
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	sltu	$a2, $zero, $a0
	andi	$a0, $a0, 4095
	sltui	$a0, $a0, 1
	ori	$a3, $zero, 523
	and	$a0, $a2, $a0
	beqz	$a0, .LBB0_129
# %bb.114:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 404
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_116
# %bb.115:
	andi	$a0, $a0, 511
	beqz	$a0, .LBB0_117
.LBB0_116:
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	b	.LBB0_130
.LBB0_117:                              # %.thread3133
	lu12i.w	$a0, 2
	ori	$a0, $a0, 240
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB0_134
# %bb.118:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_135
# %bb.119:
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	ori	$a1, $zero, 36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_136
# %bb.120:
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 400
	add.d	$a0, $sp, $a0
	ld.w	$s8, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 404
	add.d	$a0, $sp, $a0
	ld.w	$s3, $a0, 0
	slli.d	$a0, $s2, 5
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a0, $s2, $a0, 3
	bstrpick.d	$a0, $a0, 15, 3
	slli.d	$s0, $a0, 3
	move	$a0, $s1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_138
# %bb.121:                              # %.preheader3355
	ori	$a1, $zero, 512
	ori	$a0, $zero, 512
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beq	$s3, $a1, .LBB0_140
# %bb.122:                              # %.lr.ph.preheader
	move	$a0, $zero
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 20
	b	.LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_124 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 40
	bgeu	$a0, $s2, .LBB0_139
.LBB0_124:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB0_123
# %bb.125:                              #   in Loop: Header=BB0_124 Depth=1
	ld.w	$a2, $a1, -4
	beqz	$a2, .LBB0_123
# %bb.126:                              #   in Loop: Header=BB0_124 Depth=1
	ld.w	$a2, $a1, 0
	mod.wu	$a3, $a2, $s3
	beqz	$a3, .LBB0_123
# %bb.127:                              #   in Loop: Header=BB0_124 Depth=1
	andi	$a2, $a2, 511
	bnez	$a2, .LBB0_123
# %bb.128:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_140
.LBB0_129:
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
.LBB0_130:
	move	$fp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_131:
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB0_133
# %bb.132:
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	st.d	$a2, $a1, 0
.LBB0_133:                              # %.critedge3021
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2800
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
.LBB0_134:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_135:
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_136:
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
.LBB0_137:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_138:
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_199
.LBB0_139:
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
.LBB0_140:                              # %._crit_edge
	beqz	$s8, .LBB0_142
# %bb.141:
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	div.wu	$a0, $a2, $s8
	mul.d	$a1, $a0, $s8
	sub.w	$a1, $a2, $a1
	sltu	$a1, $zero, $a1
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $s8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
.LBB0_142:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	beqz	$s2, .LBB0_195
# %bb.143:                              # %.lr.ph3413
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s7, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	lu12i.w	$a0, -10
	ori	$a0, $a0, 959
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 7
	ori	$a0, $a0, 1326
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -131072
	ori	$a0, $a0, 96
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a3
	ld.w	$a2, $s4, 12
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	add.w	$a0, $a2, $a0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	sltu	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s7, $s7, 1
	beq	$s7, $s2, .LBB0_196
.LBB0_145:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_183 Depth 2
	slli.d	$s4, $s7, 5
	alsl.d	$a0, $s7, $s4, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$s3, $a1, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 231
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 239
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	ld.w	$a0, $s3, 12
	beqz	$s8, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_145 Depth=1
	mod.wu	$a1, $a0, $s8
	sub.d	$a1, $a0, $a1
	alsl.d	$a3, $s7, $s4, 2
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a1, $a5, $a3
	ld.w	$a2, $s3, 8
	add.d	$s0, $a5, $a3
	div.wu	$a1, $a2, $s8
	mul.d	$a3, $a1, $s8
	sub.w	$a3, $a2, $a3
	sltu	$a3, $zero, $a3
	add.d	$a1, $a1, $a3
	mul.w	$a4, $a1, $s8
	b	.LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=1
	alsl.d	$a1, $s7, $s4, 2
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $a5, $a1
	ld.w	$a2, $s3, 8
	add.d	$s0, $a5, $a1
	move	$a4, $a2
.LBB0_148:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $s4, 2
	add.d	$s4, $a5, $a1
	st.w	$a4, $s4, 4
	ld.w	$a6, $s3, 20
	addi.d	$a1, $s4, 8
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	beqz	$t0, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_145 Depth=1
	mod.wu	$a1, $a6, $t0
	sub.w	$a1, $a6, $a1
	st.w	$a1, $s4, 8
	ld.w	$a5, $s3, 16
	div.wu	$a3, $a5, $t0
	mul.d	$a7, $a3, $t0
	sub.w	$a7, $a5, $a7
	sltu	$a7, $zero, $a7
	add.d	$a3, $a3, $a7
	mul.w	$a3, $a3, $t0
	b	.LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=1
	st.w	$a6, $s4, 8
	ld.w	$a5, $s3, 16
	move	$a1, $a6
	move	$a3, $a5
.LBB0_151:                              #   in Loop: Header=BB0_145 Depth=1
	st.w	$a3, $s4, 12
	ld.w	$a7, $s3, 36
	st.w	$a7, $s4, 16
	st.w	$a0, $s4, 20
	st.w	$a2, $s4, 24
	st.w	$a6, $s4, 28
	st.w	$a5, $s4, 32
	beqz	$a4, .LBB0_154
# %bb.152:                              #   in Loop: Header=BB0_145 Depth=1
	beqz	$a3, .LBB0_162
# %bb.153:                              #   in Loop: Header=BB0_145 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	b	.LBB0_158
.LBB0_154:                              #   in Loop: Header=BB0_145 Depth=1
	beqz	$a3, .LBB0_162
# %bb.155:                              #   in Loop: Header=BB0_145 Depth=1
	beqz	$s8, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_145 Depth=1
	div.wu	$a0, $a5, $s8
	mul.d	$a2, $a0, $s8
	sub.w	$a2, $a5, $a2
	sltu	$a2, $zero, $a2
	add.d	$a0, $a0, $a2
	mul.d	$a5, $a0, $s8
.LBB0_157:                              # %.thread3141
                                        #   in Loop: Header=BB0_145 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	st.w	$a5, $s4, 4
.LBB0_158:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB0_162
# %bb.159:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltu	$a0, $a3, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_145 Depth=1
	add.d	$a0, $a1, $a3
	addi.w	$a0, $a0, -1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bltu	$a0, $a2, .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s4, 12
.LBB0_162:                              # %.thread3139
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 231
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 24
	ld.w	$a2, $s4, 4
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 20
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 32
	ld.w	$a2, $s4, 12
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 28
	ld.w	$a2, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 16
	andi	$a0, $a0, 32
	beqz	$a0, .LBB0_165
# %bb.163:                              #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s4, 12
	bgeu	$a0, $a1, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_165:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a0, $s4, 16
	slli.d	$a1, $a0, 34
	bgez	$a1, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
.LBB0_167:                              #   in Loop: Header=BB0_145 Depth=1
	bgez	$a0, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_169:                              #   in Loop: Header=BB0_145 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.wu	$a3, $fp, 40
	andi	$a0, $a3, 64
	beqz	$a0, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a0, $s4, 20
	mod.wu	$a0, $a0, $s8
	bnez	$a0, .LBB0_216
.LBB0_171:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a0, $s4, 12
	beqz	$a0, .LBB0_189
# %bb.172:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.wu	$a2, $a2, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	bgeu	$a2, $a4, .LBB0_215
# %bb.173:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a2, $a1, 56
	ld.w	$a2, $a2, 0
	andi	$a3, $a3, 512
	beqz	$a3, .LBB0_179
# %bb.174:                              #   in Loop: Header=BB0_145 Depth=1
	andi	$a3, $a2, 8
	beqz	$a3, .LBB0_179
# %bb.175:                              #   in Loop: Header=BB0_145 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 231
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	bnez	$a1, .LBB0_178
# %bb.176:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a1, $s4, 4
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	bltu	$a3, $a1, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a1, $s4, 16
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	xor	$a1, $a1, $a3
	sltui	$a1, $a1, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
.LBB0_178:                              #   in Loop: Header=BB0_145 Depth=1
	move	$a1, $fp
.LBB0_179:                              #   in Loop: Header=BB0_145 Depth=1
	andi	$a2, $a2, 16
	beqz	$a2, .LBB0_189
# %bb.180:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a2, $a1, 24
	ld.d	$a3, $a2, 32
	beqz	$a3, .LBB0_189
# %bb.181:                              # %.preheader3354
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.wu	$a2, $a3, 32
	beqz	$a2, .LBB0_189
# %bb.182:                              # %.lr.ph3405
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a1, $a3, 24
.LBB0_183:                              #   Parent Loop BB0_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	bltu	$a0, $a3, .LBB0_188
# %bb.184:                              #   in Loop: Header=BB0_183 Depth=2
	beq	$a3, $a0, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_183 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_183
	b	.LBB0_188
.LBB0_186:                              #   in Loop: Header=BB0_145 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a2, $sp, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_md5sect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a1, $fp, 24
	ld.d	$a2, $fp, 0
	ld.d	$a3, $a1, 32
	addi.w	$a6, $zero, -1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 16
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_bm_scanbuff)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_231
.LBB0_188:                              #   in Loop: Header=BB0_145 Depth=1
	move	$a1, $fp
.LBB0_189:                              # %.critedge
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.wu	$a0, $a1, 40
	andi	$a0, $a0, 64
	beqz	$s7, .LBB0_192
# %bb.190:                              #   in Loop: Header=BB0_145 Depth=1
	beqz	$a0, .LBB0_144
# %bb.191:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a0, $s4, 20
	ld.w	$a2, $s4, -16
	ld.w	$a3, $s4, -32
	sub.w	$a0, $a0, $a2
	beq	$a0, $a3, .LBB0_144
	b	.LBB0_227
.LBB0_192:                              #   in Loop: Header=BB0_145 Depth=1
	beqz	$a0, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a0, $s4, 20
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB0_228
.LBB0_194:                              #   in Loop: Header=BB0_145 Depth=1
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s4, 12
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s7, $s7, 1
	bne	$s7, $s2, .LBB0_145
	b	.LBB0_196
.LBB0_195:
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
.LBB0_196:                              # %._crit_edge3414
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 220
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_203
# %bb.197:                              # %._crit_edge3414
	ld.w	$a0, $sp, 220
	beqz	$a0, .LBB0_203
# %bb.198:
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_199:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_16
.LBB0_200:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_235
# %bb.201:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
.LBB0_202:                              # %.critedge3021
	st.d	$a1, $a0, 0
	b	.LBB0_235
.LBB0_203:
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 523
	beq	$s5, $a0, .LBB0_612
# %bb.204:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 1
	addi.d	$a1, $sp, 224
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 41
	andi	$a1, $a1, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bnez	$a1, .LBB0_217
.LBB0_205:
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_274
# %bb.206:
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_270
# %bb.207:
	ori	$a0, $zero, 200
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_270
# %bb.208:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.wu	$a0, $a1, -24
	srli.d	$a2, $a0, 1
	ori	$a3, $zero, 2025
	bltu	$a2, $a3, .LBB0_270
# %bb.209:
	ld.w	$a1, $a1, -28
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_270
# %bb.210:
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 2047
	addi.w	$a2, $a2, 2003
	add.w	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB0_270
# %bb.211:
	bgeu	$a1, $a2, .LBB0_270
# %bb.212:
	ld.bu	$a0, $sp, 225
	ori	$a1, $zero, 156
	bne	$a0, $a1, .LBB0_270
# %bb.213:
	ld.bu	$a0, $sp, 226
	ori	$a1, $zero, 96
	bne	$a0, $a1, .LBB0_270
# %bb.214:                              # %.lr.ph3428.preheader
	pcalau12i	$a0, %pc_hi20(.L__const.cli_scanpe.kzs)
	addi.d	$a0, $a0, %pc_lo12(.L__const.cli_scanpe.kzs)
	ld.w	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 232
	add.d	$a2, $sp, $a2
	st.w	$a1, $a2, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 224
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 197
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$s0, $sp, $a0
	addi.d	$s5, $sp, 227
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI0_2)
	addi.d	$s7, $a0, %pc_lo12(.LJTI0_2)
	move	$a1, $zero
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_238
.LBB0_215:
	addi.w	$a2, $a2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	move	$s0, $a1
	move	$a1, $s7
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_200
	b	.LBB0_16
.LBB0_216:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	b	.LBB0_229
.LBB0_217:
	bnez	$s6, .LBB0_205
# %bb.218:
	ld.d	$a0, $fp, 56
	ld.wu	$a0, $a0, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_205
# %bb.219:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	bne	$a0, $a1, .LBB0_205
# %bb.220:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, -28
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_205
# %bb.221:
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a2, $a0, %pc_lo12(.L.str.106)
	addi.d	$a0, $sp, 224
	ori	$a1, $zero, 4040
	ori	$a3, $zero, 15
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_205
# %bb.222:
	ld.w	$a1, $a0, 15
	ld.w	$a2, $a0, 19
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1285
	ori	$a2, $a2, 2639
	bne	$a1, $a2, .LBB0_205
# %bb.223:
	ld.w	$a1, $a0, 23
	ld.w	$a2, $a0, 27
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 255
	ori	$a2, $a2, 4091
	bne	$a1, $a2, .LBB0_205
# %bb.224:
	ld.w	$a1, $a0, 31
	ld.w	$a0, $a0, 35
	xor	$a0, $a0, $a1
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB0_205
# %bb.225:                              # %.critedge3007
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
.LBB0_226:                              # %.critedge3021
	st.d	$a1, $a0, 0
	b	.LBB0_233
.LBB0_227:
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	b	.LBB0_229
.LBB0_228:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
.LBB0_229:
	move	$fp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_231
# %bb.230:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $a0, 0
.LBB0_231:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
.LBB0_232:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_233:                              # %.critedge3021
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB0_234:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_235:                              # %.critedge3021
	ori	$a0, $zero, 1
	b	.LBB0_133
.LBB0_236:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$s0, $s0, 1
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 8
	beq	$a1, $a0, .LBB0_269
.LBB0_237:                              #   in Loop: Header=BB0_238 Depth=1
	ori	$a0, $zero, 7
	blt	$s4, $a0, .LBB0_269
.LBB0_238:                              # %.lr.ph3428
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s3, $s5, 1
	addi.w	$s8, $s4, -1
	ori	$a0, $zero, 7
	bltu	$a0, $a1, .LBB0_266
# %bb.239:                              # %.lr.ph3428
                                        #   in Loop: Header=BB0_238 Depth=1
	slli.d	$a0, $a1, 2
	ldx.w	$a2, $s7, $a0
	ld.bu	$a0, $s5, 0
	add.d	$a2, $s7, $a2
	jr	$a2
.LBB0_240:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$a2, $a0, -72
	ori	$a3, $zero, 119
	bltu	$a3, $a2, .LBB0_236
# %bb.241:                              #   in Loop: Header=BB0_238 Depth=1
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_3)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_3)
	ldx.w	$a2, $a3, $a2
	add.d	$a3, $a3, $a2
	move	$a2, $zero
	jr	$a3
.LBB0_242:                              #   in Loop: Header=BB0_238 Depth=1
	ori	$a2, $zero, 4
	ori	$a3, $zero, 3
	bne	$a1, $a3, .LBB0_245
# %bb.243:                              #   in Loop: Header=BB0_238 Depth=1
	ld.w	$a1, $s3, 0
	ori	$a3, $zero, 4050
	bne	$a1, $a3, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_238 Depth=1
	addi.w	$a1, $s4, -6
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 72
	addi.d	$s0, $s0, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	andi	$a1, $a0, 255
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a2, $zero, 4
.LBB0_245:                              #   in Loop: Header=BB0_238 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	andi	$a0, $a0, 7
	beq	$a0, $a1, .LBB0_236
# %bb.246:                              #   in Loop: Header=BB0_238 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	beq	$a0, $a1, .LBB0_236
# %bb.247:                              #   in Loop: Header=BB0_238 Depth=1
	add.d	$s5, $s3, $a2
	sub.w	$s4, $s8, $a2
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 8
	bne	$a1, $a0, .LBB0_237
	b	.LBB0_269
.LBB0_248:                              #   in Loop: Header=BB0_238 Depth=1
	ori	$a1, $zero, 232
	bne	$a0, $a1, .LBB0_265
# %bb.249:                              #   in Loop: Header=BB0_238 Depth=1
	ld.w	$a0, $s3, 0
	ori	$a1, $zero, 254
	bltu	$a1, $a0, .LBB0_265
# %bb.250:                              #   in Loop: Header=BB0_238 Depth=1
	addi.w	$a0, $a0, 4
	sub.w	$s4, $s8, $a0
	add.d	$s5, $s3, $a0
	addi.d	$s0, $s0, 1
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 8
	bne	$a1, $a0, .LBB0_237
	b	.LBB0_269
.LBB0_251:                              #   in Loop: Header=BB0_238 Depth=1
	andi	$a1, $a0, 248
	ori	$a2, $zero, 88
	bne	$a1, $a2, .LBB0_265
# %bb.252:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$s5, $a0, -88
	andi	$a1, $s5, 255
	ori	$a2, $zero, 4
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beq	$a1, $a2, .LBB0_265
# %bb.253:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$s0, $s0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s4, $s8
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_267
.LBB0_254:                              #   in Loop: Header=BB0_238 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	addi.d	$a1, $a1, 72
	bne	$a1, $a0, .LBB0_258
# %bb.255:                              #   in Loop: Header=BB0_238 Depth=1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 117
	bne	$a0, $a1, .LBB0_258
# %bb.256:                              #   in Loop: Header=BB0_238 Depth=1
	ld.b	$a0, $s5, 2
	sub.w	$a0, $s8, $a0
	addi.w	$a1, $a0, -3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	blt	$a2, $a1, .LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_238 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_704
.LBB0_258:                              #   in Loop: Header=BB0_238 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_264
.LBB0_259:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$s0, $s0, 1
	ori	$a1, $zero, 62
	beq	$a0, $a1, .LBB0_266
.LBB0_260:                              #   in Loop: Header=BB0_238 Depth=1
	ori	$a1, $zero, 128
	bne	$a0, $a1, .LBB0_265
# %bb.261:                              #   in Loop: Header=BB0_238 Depth=1
	ld.bu	$a0, $s3, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	addi.d	$a1, $a1, 176
	bne	$a1, $a0, .LBB0_265
# %bb.262:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$s5, $s5, 7
	addi.w	$s4, $s4, -7
	addi.d	$s0, $s0, 1
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 8
	bne	$a1, $a0, .LBB0_237
	b	.LBB0_269
.LBB0_263:                              #   in Loop: Header=BB0_238 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	addi.d	$a1, $a1, 72
	bne	$a1, $a0, .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$s0, $s0, 1
	b	.LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_238 Depth=1
	ori	$a0, $zero, 8
	st.b	$a0, $s0, 0
.LBB0_266:                              #   in Loop: Header=BB0_238 Depth=1
	move	$s4, $s8
.LBB0_267:                              #   in Loop: Header=BB0_238 Depth=1
	move	$s5, $s3
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 8
	bne	$a1, $a0, .LBB0_237
	b	.LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_238 Depth=1
	addi.d	$s5, $s5, 6
	addi.w	$s4, $s4, -6
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 8
	bne	$a1, $a0, .LBB0_237
.LBB0_269:
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_274
.LBB0_270:                              # %.thread3813
	bnez	$s6, .LBB0_274
# %bb.271:                              # %.thread3813
	ori	$a0, $zero, 2
	bltu	$s2, $a0, .LBB0_274
# %bb.272:                              # %.thread3813
	ld.d	$a0, $fp, 56
	ld.wu	$a0, $a0, 0
	andi	$a0, $a0, 4
	beqz	$a0, .LBB0_274
# %bb.273:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, -20
	bltz	$a1, .LBB0_287
.LBB0_274:                              # %.thread3815
	move	$s8, $s2
	bnez	$s6, .LBB0_336
# %bb.275:                              # %.thread3815
	addi.d	$a0, $s2, -3
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a1, $zero, 9
	move	$s8, $s2
	bltu	$a1, $a0, .LBB0_336
# %bb.276:                              # %.thread3815
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	andi	$s0, $a0, 255
	move	$s8, $s2
	beqz	$s0, .LBB0_336
# %bb.277:                              # %.thread3815
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2048
	move	$s8, $s2
	bltu	$a1, $a0, .LBB0_336
# %bb.278:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 436
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	move	$s8, $s2
	bne	$a0, $a1, .LBB0_336
# %bb.279:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 612
	add.d	$a0, $sp, $a0
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 332
	move	$s8, $s2
	bne	$a0, $a1, .LBB0_336
# %bb.280:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 31, 19
	move	$s8, $s2
	beqz	$a0, .LBB0_336
# %bb.281:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	lu12i.w	$a1, 45056
	move	$s8, $s2
	bltu	$a1, $a0, .LBB0_336
# %bb.282:
	move	$a0, $s1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	move	$s8, $s2
	beqz	$a0, .LBB0_336
# %bb.283:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 12
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_854
# %bb.284:
	move	$s5, $a0
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $s3, 12
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	bne	$a0, $a1, .LBB0_656
# %bb.285:                              # %.preheader3353
	move	$s7, $a0
	ori	$a0, $zero, 5
	bne	$s7, $a0, .LBB0_300
# %bb.286:
	move	$s8, $zero
	b	.LBB0_335
.LBB0_287:
	ld.w	$s0, $a0, -24
	ld.w	$s3, $a0, -4
	ld.wu	$a2, $a0, -12
	sltu	$a1, $s3, $s0
	masknez	$a4, $s3, $a1
	maskeqz	$a1, $s0, $a1
	andi	$a3, $a2, 255
	ori	$a5, $zero, 236
	or	$a1, $a1, $a4
	bne	$a3, $a5, .LBB0_293
# %bb.288:
	lu12i.w	$a4, 6
	ori	$a4, $a4, 300
	bltu	$a2, $a4, .LBB0_293
# %bb.289:
	bltu	$a1, $a4, .LBB0_293
# %bb.290:
	ld.w	$a0, $a0, -28
	lu12i.w	$a2, -7
	add.d	$a2, $a1, $a2
	sltu	$a1, $a1, $a2
	masknez	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	lu12i.w	$s4, 1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_274
# %bb.291:
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a2, $a0, %pc_lo12(.L.str.113)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 4091
	ori	$a3, $zero, 5
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_274
# %bb.292:                              # %.critedge3015
	sltu	$a0, $s0, $s3
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a1, $a1, %pc_lo12(.L.str.115)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.114)
	addi.d	$a2, $a2, %pc_lo12(.L.str.114)
	b	.LBB0_299
.LBB0_293:
	ori	$a4, $zero, 237
	bne	$a3, $a4, .LBB0_274
# %bb.294:
	srli.d	$a3, $a2, 12
	ori	$a2, $zero, 7
	bltu	$a3, $a2, .LBB0_274
# %bb.295:
	bstrpick.d	$a3, $a1, 31, 12
	bltu	$a3, $a2, .LBB0_274
# %bb.296:
	ld.w	$a0, $a0, -28
	lu12i.w	$a2, -8
	add.d	$a2, $a1, $a2
	sltu	$a1, $a1, $a2
	masknez	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	lu12i.w	$s4, 1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_274
# %bb.297:
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a2, $a0, %pc_lo12(.L.str.116)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 4091
	ori	$a3, $zero, 5
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_274
# %bb.298:                              # %.critedge3019
	sltu	$a0, $s0, $s3
	pcalau12i	$a1, %pc_hi20(.L.str.118)
	addi.d	$a1, $a1, %pc_lo12(.L.str.118)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.117)
	addi.d	$a2, $a2, %pc_lo12(.L.str.117)
.LBB0_299:                              # %.critedge3021
	ld.d	$a3, $fp, 0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a3, 0
	b	.LBB0_233
.LBB0_300:                              # %.lr.ph3438
	move	$s6, $zero
	move	$s8, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$s4, $zero, 232
	b	.LBB0_302
.LBB0_301:                              # %._crit_edge3604
                                        #   in Loop: Header=BB0_302 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$a0, $s7, -5
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$s6, $a0, .LBB0_321
.LBB0_302:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_315 Depth 2
	ldx.bu	$a0, $s5, $s6
	andi	$a0, $a0, 254
	bne	$a0, $s4, .LBB0_301
# %bb.303:                              #   in Loop: Header=BB0_302 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$s3, $s6, 1
	ldx.w	$a2, $s5, $s3
	add.d	$a0, $s6, $a0
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 5
	addi.d	$a3, $sp, 220
	move	$a2, $s2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 220
	bnez	$a1, .LBB0_319
# %bb.304:                              #   in Loop: Header=BB0_302 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 9
	bltu	$a0, $a1, .LBB0_319
# %bb.305:                              #   in Loop: Header=BB0_302 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	bltu	$s0, $a1, .LBB0_319
# %bb.306:                              #   in Loop: Header=BB0_302 Depth=1
	addi.w	$a2, $s0, 9
	bgeu	$a1, $a2, .LBB0_319
# %bb.307:                              #   in Loop: Header=BB0_302 Depth=1
	add.w	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB0_319
# %bb.308:                              #   in Loop: Header=BB0_302 Depth=1
	andi	$a0, $s8, 127
	bnez	$a0, .LBB0_312
# %bb.309:                              #   in Loop: Header=BB0_302 Depth=1
	ori	$a0, $zero, 1280
	beq	$s8, $a0, .LBB0_797
# %bb.310:                              #   in Loop: Header=BB0_302 Depth=1
	addi.d	$a0, $s8, 128
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_798
# %bb.311:                              #   in Loop: Header=BB0_302 Depth=1
	beqz	$s8, .LBB0_320
.LBB0_312:                              # %.lr.ph3432.preheader
                                        #   in Loop: Header=BB0_302 Depth=1
	move	$a0, $zero
	bstrpick.d	$a1, $s8, 31, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_315
.LBB0_313:                              #   in Loop: Header=BB0_315 Depth=2
	st.w	$s0, $a2, 0
	move	$s0, $a3
.LBB0_314:                              #   in Loop: Header=BB0_315 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	beqz	$a1, .LBB0_317
.LBB0_315:                              # %.lr.ph3432
                                        #   Parent Loop BB0_302 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	bltu	$a3, $s0, .LBB0_314
# %bb.316:                              #   in Loop: Header=BB0_315 Depth=2
	bne	$a3, $s0, .LBB0_313
	b	.LBB0_318
.LBB0_317:                              # %.loopexit3352.loopexit
                                        #   in Loop: Header=BB0_302 Depth=1
	addi.w	$a1, $s8, 1
	move	$a0, $s8
	move	$s8, $a1
.LBB0_318:                              # %.loopexit3352
                                        #   in Loop: Header=BB0_302 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	stx.w	$s0, $a1, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$s7, $a0, 12
.LBB0_319:                              #   in Loop: Header=BB0_302 Depth=1
	move	$s6, $s3
	addi.d	$a0, $s7, -5
	bstrpick.d	$a0, $a0, 31, 0
	bltu	$s6, $a0, .LBB0_302
	b	.LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_302 Depth=1
	move	$a0, $zero
	ori	$s8, $zero, 1
	b	.LBB0_318
.LBB0_321:                              # %._crit_edge3439
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB0_333
.LBB0_322:
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bstrpick.d	$s0, $s8, 31, 0
	ori	$s3, $zero, 9
	lu12i.w	$a0, 397000
	ori	$s4, $a0, 2901
	lu12i.w	$a0, -508216
	ori	$s6, $a0, 2901
	lu12i.w	$a0, -516408
	ori	$s7, $a0, 2901
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_324 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 4
	beqz	$s0, .LBB0_334
.LBB0_324:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$a1, $s5, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_323
# %bb.325:                              #   in Loop: Header=BB0_324 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB0_332
# %bb.326:                              #   in Loop: Header=BB0_324 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 228
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 236
	bne	$a1, $a2, .LBB0_323
# %bb.327:                              #   in Loop: Header=BB0_324 Depth=1
	bne	$a0, $s6, .LBB0_329
# %bb.328:                              #   in Loop: Header=BB0_324 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 230
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 96
	beq	$a1, $a2, .LBB0_332
.LBB0_329:                              #   in Loop: Header=BB0_324 Depth=1
	bne	$a0, $s7, .LBB0_323
# %bb.330:                              #   in Loop: Header=BB0_324 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 231
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB0_323
# %bb.331:                              #   in Loop: Header=BB0_324 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 232
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB0_323
.LBB0_332:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.120)
	addi.d	$a1, $a1, %pc_lo12(.L.str.120)
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_232
.LBB0_333:
	move	$s8, $s6
	b	.LBB0_336
.LBB0_334:
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
.LBB0_335:                              # %.critedge81.sink.split
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_336:                              # %.critedge81
	ld.d	$a0, $fp, 56
	ld.hu	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 96
	and	$a0, $a0, $a1
	beqz	$a0, .LBB0_360
# %bb.337:                              # %.preheader3351
	move	$s8, $zero
	addi.d	$a0, $s2, -1
	beqz	$a0, .LBB0_360
# %bb.338:                              # %.lr.ph3445.preheader
	move	$s0, $zero
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a2, $zero, 36
	mul.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 36
	b	.LBB0_340
.LBB0_339:                              #   in Loop: Header=BB0_340 Depth=1
	addi.d	$s0, $s0, 36
	addi.w	$s8, $s8, 1
	beq	$a1, $s0, .LBB0_361
.LBB0_340:                              # %.lr.ph3445
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $s0
	ld.w	$a4, $a3, -24
	bnez	$a4, .LBB0_339
# %bb.341:                              #   in Loop: Header=BB0_340 Depth=1
	ld.w	$a4, $a3, -32
	beqz	$a4, .LBB0_339
# %bb.342:                              #   in Loop: Header=BB0_340 Depth=1
	ld.w	$a4, $a3, 12
	beqz	$a4, .LBB0_339
# %bb.343:                              #   in Loop: Header=BB0_340 Depth=1
	ld.w	$a3, $a3, 4
	beqz	$a3, .LBB0_339
# %bb.344:
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 32
	ori	$s6, $zero, 1
	beqz	$a0, .LBB0_362
# %bb.345:
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_362
# %bb.346:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 233
	bne	$a0, $a1, .LBB0_362
# %bb.347:
	ld.w	$a1, $sp, 225
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$s3, $a1, $a0
	ori	$a0, $zero, 335
	beq	$s3, $a0, .LBB0_349
# %bb.348:
	ori	$a0, $zero, 339
	bne	$s3, $a0, .LBB0_362
.LBB0_349:
	addi.w	$s5, $s3, 5
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB0_470
# %bb.350:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 176
	ori	$s4, $zero, 176
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_471
# %bb.351:
	addi.d	$a0, $s5, -340
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.126)
	addi.d	$a1, $a1, %pc_lo12(.L.str.126)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.125)
	addi.d	$a2, $a2, %pc_lo12(.L.str.125)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 225
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 396
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$s4, $a2, $s0
	ld.w	$s7, $s4, 36
	sub.w	$s0, $a0, $a1
	bgeu	$s7, $s0, .LBB0_490
# %bb.352:
	ld.w	$a0, $s4, 44
	add.d	$a0, $s7, $a0
	addi.w	$a0, $a0, -4
	bgeu	$s0, $a0, .LBB0_490
# %bb.353:
	addi.d	$s6, $s4, 36
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_656
# %bb.354:
	ld.w	$a2, $s4, 4
	ld.w	$a1, $s4, 40
	sub.w	$a3, $s0, $s7
	st.w	$a2, $sp, 216
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	move	$s0, $a1
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_740
# %bb.355:
	ld.d	$a2, $a0, 24
	ld.w	$a0, $sp, 216
	beqz	$a2, .LBB0_741
# %bb.356:
	sltu	$a1, $a0, $s0
	masknez	$a3, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a3
	bstrpick.d	$a3, $a1, 31, 0
	bltu	$a2, $a3, .LBB0_358
# %bb.357:
	ld.w	$a1, $s4, 48
	add.w	$a3, $a0, $s0
	sltu	$a4, $a1, $a3
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_741
.LBB0_358:
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.359:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.130)
	addi.d	$a1, $a1, %pc_lo12(.L.str.130)
	b	.LBB0_202
.LBB0_360:
	move	$s6, $zero
	b	.LBB0_362
.LBB0_361:
	move	$s6, $zero
	move	$s8, $a0
.LBB0_362:                              # %.thread3173
	ori	$a0, $zero, 167
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_612
# %bb.363:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	or	$a0, $s6, $a0
	beqz	$a0, .LBB0_394
# %bb.364:
	ori	$a0, $zero, 3
	bne	$s2, $a0, .LBB0_374
# %bb.365:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_374
# %bb.366:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_394
# %bb.367:
	ld.w	$a2, $sp, 225
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	ld.bu	$a1, $sp, 229
	ld.bu	$a0, $sp, 230
	sub.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB0_370
# %bb.368:
	ori	$a3, $zero, 173
	bne	$a1, $a3, .LBB0_370
# %bb.369:
	ori	$a3, $zero, 80
	beq	$a0, $a3, .LBB0_373
.LBB0_370:
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB0_394
# %bb.371:
	ori	$a2, $zero, 255
	bne	$a1, $a2, .LBB0_394
# %bb.372:
	ori	$a1, $zero, 54
	bne	$a0, $a1, .LBB0_394
.LBB0_373:
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.w	$s7, $s3, 4
	ld.w	$s5, $s3, 40
	addi.d	$s0, $s3, 36
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 32
	ld.w	$a2, $s3, 28
	ld.w	$s4, $s3, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	ld.w	$a0, $s3, 76
	add.w	$s3, $a2, $a1
	add.w	$a1, $a3, $s4
	b	.LBB0_380
.LBB0_374:
	ori	$a0, $zero, 2
	bne	$s2, $a0, .LBB0_394
# %bb.375:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_394
# %bb.376:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 96
	bne	$a0, $a1, .LBB0_388
# %bb.377:
	ld.bu	$a1, $sp, 225
	ori	$a2, $zero, 232
	bne	$a1, $a2, .LBB0_388
# %bb.378:
	ld.w	$a0, $sp, 226
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB0_394
.LBB0_379:
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.w	$s7, $s3, 4
	ld.w	$s5, $s3, 40
	addi.d	$s0, $s3, 36
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 36
	ld.w	$s3, $s3, 64
	move	$s4, $zero
	sub.w	$a1, $a0, $s3
.LBB0_380:
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 32
	add.d	$a2, $s7, $s5
	add.w	$a0, $a2, $a0
	st.w	$a0, $sp, 216
	beqz	$a1, .LBB0_385
# %bb.381:
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_385
# %bb.382:
	sltu	$a1, $s3, $a0
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 68
	masknez	$a4, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a4
	sltu	$a4, $a3, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a3, $a3, $a4
	or	$a1, $a1, $a3
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_385
# %bb.383:
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.384:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	b	.LBB0_202
.LBB0_385:
	ld.w	$a1, $s0, 0
	sub.w	$a1, $a1, $s4
	bltu	$a0, $a1, .LBB0_387
# %bb.386:
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 68
	sub.w	$a2, $a0, $a2
	bgeu	$a2, $a1, .LBB0_462
.LBB0_387:
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB0_395
	b	.LBB0_494
.LBB0_388:
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_394
# %bb.389:
	ld.w	$a0, $sp, 225
	lu12i.w	$a1, 2
	ori	$a1, $a1, 396
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	sub.w	$a2, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB0_394
# %bb.390:
	beq	$a0, $a1, .LBB0_394
# %bb.391:
	ld.bu	$a0, $sp, 229
	ori	$a1, $zero, 173
	bne	$a0, $a1, .LBB0_394
# %bb.392:
	ld.bu	$a0, $sp, 230
	ori	$a1, $zero, 139
	bne	$a0, $a1, .LBB0_394
# %bb.393:
	ld.bu	$a0, $sp, 231
	ori	$a1, $zero, 248
	beq	$a0, $a1, .LBB0_379
.LBB0_394:                              # %.critedge137
	beqz	$s6, .LBB0_494
.LBB0_395:
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_436
# %bb.396:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 135
	bne	$a0, $a1, .LBB0_436
# %bb.397:
	ld.bu	$a0, $sp, 225
	ori	$a1, $zero, 37
	bne	$a0, $a1, .LBB0_436
# %bb.398:
	addi.w	$s6, $s8, 1
	bstrpick.d	$a0, $s6, 31, 0
	ori	$a1, $zero, 36
	mul.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$s5, $a2, $a0
	bstrpick.d	$a0, $s8, 31, 0
	mul.d	$a0, $a0, $a1
	add.d	$s4, $a2, $a0
	ld.w	$a2, $s4, 4
	ld.d	$a0, $fp, 32
	ld.wu	$s0, $s5, 12
	st.w	$a2, $sp, 216
	beqz	$a0, .LBB0_401
# %bb.399:
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB0_401
# %bb.400:
	addi.w	$a0, $s0, 0
	sltu	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	bstrpick.d	$a0, $a1, 31, 0
	bltu	$a3, $a0, .LBB0_442
.LBB0_401:
	ori	$a0, $zero, 26
	bltu	$s0, $a0, .LBB0_434
# %bb.402:
	addi.w	$s7, $s0, 0
	bgeu	$s7, $a2, .LBB0_434
# %bb.403:
	ld.w	$a1, $sp, 226
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.w	$a0, $s5, 12
	ori	$a3, $zero, 4
	sub.w	$s3, $a1, $a2
	bltu	$a0, $a3, .LBB0_435
# %bb.404:
	ld.w	$a1, $s5, 0
	bltu	$s3, $a1, .LBB0_435
# %bb.405:
	addi.w	$a2, $s3, 4
	bgeu	$a1, $a2, .LBB0_435
# %bb.406:
	add.w	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB0_435
# %bb.407:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_854
# %bb.408:
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_642
# %bb.409:
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_642
# %bb.410:
	ld.w	$a0, $s5, 0
	bltu	$s3, $a0, .LBB0_698
# %bb.411:
	bstrpick.d	$a1, $s3, 31, 0
	bstrpick.d	$a2, $a0, 31, 0
	sub.d	$a1, $a1, $a2
	bltz	$a1, .LBB0_698
# %bb.412:
	addi.d	$a3, $a1, 4
	blt	$s0, $a3, .LBB0_698
# %bb.413:
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 396
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	ld.w	$a4, $s5, 12
	ori	$a5, $zero, 4
	sub.w	$a1, $a1, $a3
	bltu	$a4, $a5, .LBB0_705
# %bb.414:
	bltu	$a1, $a0, .LBB0_705
# %bb.415:
	addi.w	$a6, $a1, 4
	add.w	$a5, $a4, $a0
	bltu	$a5, $a6, .LBB0_705
# %bb.416:
	bgeu	$a0, $a6, .LBB0_705
# %bb.417:
	ori	$a6, $zero, 32
	bltu	$s0, $a6, .LBB0_821
# %bb.418:
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a1, $a1, $a2
	bltz	$a1, .LBB0_821
# %bb.419:
	addi.d	$a2, $a1, 32
	blt	$s0, $a2, .LBB0_821
# %bb.420:
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a6, $a2, $a1
	ld.w	$a2, $s4, 0
	sub.w	$s6, $a6, $a3
	bne	$s6, $a2, .LBB0_865
# %bb.421:
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 4
	sub.w	$s4, $a2, $a3
	bltu	$s4, $a0, .LBB0_874
# %bb.422:
	sub.w	$a2, $s4, $a0
	bgeu	$a2, $a4, .LBB0_874
# %bb.423:
	ori	$a2, $zero, 16
	bltu	$a4, $a2, .LBB0_890
# %bb.424:
	ld.w	$a1, $a1, 16
	sub.w	$a1, $a1, $a3
	bltu	$a1, $a0, .LBB0_890
# %bb.425:
	addi.w	$a2, $a1, 16
	bltu	$a5, $a2, .LBB0_890
# %bb.426:
	bgeu	$a0, $a2, .LBB0_890
# %bb.427:
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 12
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	sub.w	$s3, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 216
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_887
# %bb.428:
	move	$s7, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_940
# %bb.429:
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bltz	$a0, .LBB0_957
# %bb.430:
	ld.w	$a1, $s5, 0
	sub.d	$a0, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ld.w	$a3, $sp, 216
	lu12i.w	$a2, 2
	ori	$a2, $a2, 396
	add.d	$a2, $sp, $a2
	ld.w	$a5, $a2, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	sub.d	$a2, $s0, $s4
	add.w	$a2, $a2, $a1
	move	$a1, $s7
	move	$a4, $s6
	move	$a6, $s3
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unfsg_200)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_961
# %bb.431:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_962
# %bb.432:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s0, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB0_968
# %bb.433:
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_969
.LBB0_434:
	addi.w	$a1, $s0, 0
	b	.LBB0_461
.LBB0_435:
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_436:
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_451
.LBB0_437:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_451
# %bb.438:
	ld.w	$a0, $sp, 225
	lu12i.w	$a1, 2
	ori	$a1, $a1, 396
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_451
# %bb.439:
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 36
	mul.d	$a1, $a1, $a2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$s6, $a3, $a1
	bstrpick.d	$a1, $s8, 31, 0
	mul.d	$a1, $a1, $a2
	add.d	$s4, $a3, $a1
	ld.w	$a2, $s4, 4
	ld.d	$a1, $fp, 32
	ld.wu	$s5, $s6, 12
	st.w	$a2, $sp, 216
	beqz	$a1, .LBB0_446
# %bb.440:
	ld.d	$a3, $a1, 24
	beqz	$a3, .LBB0_446
# %bb.441:
	addi.w	$a1, $s5, 0
	sltu	$a4, $a1, $a2
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $a2, $a4
	or	$a1, $a4, $a1
	bstrpick.d	$a4, $a1, 31, 0
	bgeu	$a3, $a4, .LBB0_446
.LBB0_442:
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
.LBB0_443:
	move	$a2, $a3
.LBB0_444:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.445:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.153)
	addi.d	$a1, $a1, %pc_lo12(.L.str.153)
	b	.LBB0_202
.LBB0_446:
	ori	$a1, $zero, 26
	bltu	$s5, $a1, .LBB0_460
# %bb.447:
	addi.w	$s7, $s5, 0
	bgeu	$s7, $a2, .LBB0_460
# %bb.448:                              # %cli_rawaddr.exit
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a1
	xori	$a1, $a1, 1
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	sltu	$a2, $a2, $a3
	xori	$a2, $a2, 1
	or	$a1, $a1, $a2
	masknez	$s0, $a0, $a1
	st.w	$a1, $sp, 220
	bnez	$s0, .LBB0_466
# %bb.449:                              # %cli_rawaddr.exit
	beqz	$a1, .LBB0_466
# %bb.450:
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_451:
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_493
# %bb.452:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 187
	bne	$a0, $a1, .LBB0_493
# %bb.453:
	ld.w	$a1, $sp, 225
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	sub.w	$s7, $a1, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$s7, $a1, .LBB0_493
# %bb.454:
	ld.bu	$a1, $sp, 229
	ori	$a2, $zero, 191
	bne	$a1, $a2, .LBB0_493
# %bb.455:
	ld.bu	$a1, $sp, 234
	ori	$a2, $zero, 190
	bne	$a1, $a2, .LBB0_493
# %bb.456:
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB0_493
# %bb.457:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	sub.w	$s3, $a3, $a2
	addi.w	$a2, $a2, -224
	bgeu	$a2, $s3, .LBB0_493
# %bb.458:                              # %cli_rawaddr.exit3127
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s6, $t0, $a1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	sltu	$a1, $s7, $a1
	xori	$a5, $a1, 1
	bstrpick.d	$a1, $s7, 31, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a2
	xori	$a6, $a2, 1
	ld.w	$a3, $sp, 235
	ld.w	$a4, $sp, 230
	bstrpick.d	$a2, $s8, 31, 0
	slli.d	$a7, $a2, 5
	alsl.d	$a2, $a2, $a7, 2
	add.d	$s5, $t0, $a2
	ld.w	$a2, $s5, 4
	ld.wu	$a7, $s6, 12
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	or	$a5, $a5, $a6
	st.w	$a5, $sp, 220
	st.w	$a2, $sp, 216
	beqz	$a5, .LBB0_483
# %bb.459:
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	b	.LBB0_492
.LBB0_460:
	addi.w	$a1, $s5, 0
.LBB0_461:                              # %.critedge3021
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	b	.LBB0_507
.LBB0_462:
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_472
# %bb.463:
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 72
	ld.w	$a2, $a2, 0
	sub.w	$a1, $a1, $a2
	bltu	$a0, $a1, .LBB0_387
# %bb.464:
	bltu	$a0, $s3, .LBB0_387
# %bb.465:
	sub.w	$a2, $a0, $s3
	bgeu	$a2, $a1, .LBB0_473
	b	.LBB0_387
.LBB0_466:
	bstrpick.d	$a1, $s0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 8
	ld.d	$a0, $fp, 32
	sub.w	$s3, $a1, $s0
	beqz	$a0, .LBB0_628
# %bb.467:
	ld.d	$a2, $a0, 24
	bstrpick.d	$a0, $s3, 31, 0
	beqz	$a2, .LBB0_629
# %bb.468:
	bgeu	$a2, $a0, .LBB0_629
# %bb.469:
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	move	$a1, $s3
	b	.LBB0_444
.LBB0_470:
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_656
.LBB0_471:
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	move	$a1, $s5
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_362
.LBB0_472:
	bltu	$a0, $s3, .LBB0_387
.LBB0_473:
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_854
# %bb.474:
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bstrpick.d	$s3, $s3, 31, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_643
# %bb.475:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_477
# %bb.476:
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.wu	$a0, $a1, 72
	ld.wu	$a1, $a1, 0
	add.d	$a0, $s0, $a0
	sub.d	$a0, $a0, $a1
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB0_477:
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.wu	$a1, $s3, 64
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 36
	ld.wu	$a2, $s3, 68
	add.d	$a0, $s0, $a0
	bstrpick.d	$a1, $s4, 31, 0
	sub.d	$a1, $a0, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s3, 68
	bne	$a0, $a1, .LBB0_677
# %bb.478:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_682
# %bb.479:
	move	$s3, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_758
# %bb.480:
	move	$s7, $a0
	ld.w	$a2, $sp, 216
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a6, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a7, $a0, 0
	addi.d	$a3, $sp, 224
	st.d	$s7, $sp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unupack)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_773
# %bb.481:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_813
# %bb.482:
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_814
.LBB0_483:
	ld.w	$a5, $s6, 0
	sub.w	$s4, $a3, $a0
	bltu	$s4, $a5, .LBB0_491
# %bb.484:
	ld.w	$a3, $s6, 8
	sub.w	$a5, $s4, $a5
	bgeu	$a5, $a3, .LBB0_491
# %bb.485:
	ld.w	$a3, $s5, 0
	sub.w	$s0, $a4, $a0
	bne	$s0, $a3, .LBB0_701
# %bb.486:
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_713
# %bb.487:
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB0_713
# %bb.488:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	sltu	$a4, $a0, $a2
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a0
	bstrpick.d	$a0, $a4, 31, 0
	bgeu	$a3, $a0, .LBB0_713
# %bb.489:
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	move	$a1, $a4
	b	.LBB0_443
.LBB0_490:
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_362
.LBB0_491:
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
.LBB0_492:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_493:
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_500
.LBB0_494:                              # %.critedge171
	ori	$a0, $zero, 199
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_612
# %bb.495:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB0_511
# %bb.496:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s5, $s2, $a0, 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	ld.w	$a3, $a0, -36
	lu12i.w	$a1, 2
	ori	$a1, $a1, 396
	add.d	$a1, $sp, $a1
	ld.w	$a2, $a1, 0
	ld.w	$a1, $sp, 225
	add.w	$a3, $a2, $a3
	bne	$a1, $a3, .LBB0_508
# %bb.497:
	move	$s4, $zero
	ori	$s6, $zero, 2
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_511
.LBB0_498:
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a0, $a0, %pc_lo12(.L.str.199)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	lu12i.w	$a1, 91081
	ori	$a1, $a1, 2189
	bne	$a0, $a1, .LBB0_550
# %bb.499:
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a0, $a0, %pc_lo12(.L.str.200)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 2
	bgeu	$s2, $s3, .LBB0_512
	b	.LBB0_516
.LBB0_500:
	addi.w	$s0, $s8, 1
	bstrpick.d	$a0, $s0, 31, 0
	ori	$a1, $zero, 36
	mul.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$s6, $a2, $a0
	bstrpick.d	$a0, $s8, 31, 0
	mul.d	$a0, $a0, $a1
	add.d	$s3, $a2, $a0
	ld.w	$a2, $s3, 4
	ld.w	$a3, $s6, 4
	ld.wu	$a0, $s6, 12
	ld.d	$a1, $fp, 32
	add.w	$a2, $a3, $a2
	addi.w	$s8, $a0, 0
	st.w	$a2, $sp, 216
	beqz	$a1, .LBB0_505
# %bb.501:
	ld.d	$a3, $a1, 24
	beqz	$a3, .LBB0_505
# %bb.502:
	sltu	$a1, $s8, $a2
	masknez	$a4, $s8, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	bstrpick.d	$a4, $a1, 31, 0
	bgeu	$a3, $a4, .LBB0_505
# %bb.503:
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a0, $a0, %pc_lo12(.L.str.175)
	move	$a2, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.504:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.176)
	addi.d	$a1, $a1, %pc_lo12(.L.str.176)
	b	.LBB0_202
.LBB0_505:
	ori	$a1, $zero, 26
	bgeu	$s8, $a1, .LBB0_536
.LBB0_506:
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a0, $a0, %pc_lo12(.L.str.177)
	move	$a1, $s8
.LBB0_507:                              # %.critedge3021
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_612
.LBB0_508:
	ori	$a3, $zero, 2
	bltu	$s2, $a3, .LBB0_528
# %bb.509:
	ld.w	$a0, $a0, -72
	add.w	$a0, $a2, $a0
	bne	$a1, $a0, .LBB0_511
# %bb.510:
	ori	$s6, $zero, 1
	addi.w	$s4, $zero, -1
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_498
.LBB0_511:                              # %.critedge3052
	ori	$s3, $zero, 2
	bltu	$s2, $s3, .LBB0_516
.LBB0_512:                              # %.critedge3052
	ld.d	$a0, $fp, 56
	ld.wu	$a0, $a0, 0
	andi	$a0, $a0, 512
	beqz	$a0, .LBB0_516
# %bb.513:
	addi.d	$s6, $s2, -1
	slli.d	$a0, $s6, 5
	alsl.d	$a1, $s6, $a0, 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bltu	$a2, $a0, .LBB0_516
# %bb.514:
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 12
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, -4
	ori	$a1, $a1, 3557
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_516
# %bb.515:
	addi.d	$a0, $sp, 228
	pcalau12i	$a1, %pc_hi20(.L.str.208)
	addi.d	$a1, $a1, %pc_lo12(.L.str.208)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_562
.LBB0_516:
	ld.d	$a0, $fp, 56
	ld.wu	$s0, $a0, 0
	bltu	$s2, $s3, .LBB0_521
# %bb.517:
	andi	$a0, $s0, 1024
	beqz	$a0, .LBB0_521
# %bb.518:
	addi.d	$s6, $s2, -1
	slli.d	$a0, $s6, 5
	alsl.d	$s3, $s6, $a0, 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s3
	lu12i.w	$a1, 2
	ori	$a1, $a1, 384
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a0, $a0, 96
	bne	$a1, $a0, .LBB0_521
# %bb.519:
	pcalau12i	$a0, %pc_hi20(.L.str.218)
	addi.d	$a1, $a0, %pc_lo12(.L.str.218)
	addi.d	$a0, $sp, 224
	ori	$a2, $zero, 51
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_521
# %bb.520:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s3
	ld.w	$a0, $a0, 8
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1118
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_567
.LBB0_521:
	ori	$a0, $zero, 2
	bltu	$s2, $a0, .LBB0_528
.LBB0_522:
	andi	$a0, $s0, 2048
	beqz	$a0, .LBB0_528
# %bb.523:
	addi.d	$s4, $s2, -1
	bstrpick.d	$s6, $s4, 31, 0
	slli.d	$a0, $s6, 5
	alsl.d	$s7, $s6, $a0, 2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s0, $a0, $s7
	ld.w	$s5, $s0, 8
	ori	$a0, $zero, 690
	bltu	$s5, $a0, .LBB0_528
# %bb.524:
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_528
# %bb.525:
	ld.w	$s3, $s0, 12
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_528
# %bb.526:
	pcalau12i	$a0, %pc_hi20(.L.str.224)
	addi.d	$a1, $a0, %pc_lo12(.L.str.224)
	addi.d	$a0, $sp, 224
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_528
# %bb.527:
	addi.d	$a0, $sp, 328
	pcalau12i	$a1, %pc_hi20(.L.str.225)
	addi.d	$a1, $a1, %pc_lo12(.L.str.225)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_679
.LBB0_528:                              # %.thread3834
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 128
	beqz	$a0, .LBB0_605
# %bb.529:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1864
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB0_605
# %bb.530:
	ld.d	$a0, $sp, 224
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2144
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, -322
	bne	$a0, $a1, .LBB0_605
# %bb.531:
	ori	$a0, $zero, 959
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_605
# %bb.532:
	addi.d	$a0, $sp, 1177
	pcalau12i	$a1, %pc_hi20(.L.str.237)
	addi.d	$a1, $a1, %pc_lo12(.L.str.237)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_605
# %bb.533:
	beqz	$s2, .LBB0_605
# %bb.534:                              # %.lr.ph3478.preheader
	ori	$a0, $zero, 8
	bgeu	$s2, $a0, .LBB0_573
# %bb.535:
	move	$a0, $zero
	move	$s5, $zero
	b	.LBB0_576
.LBB0_536:
	bgeu	$s8, $a2, .LBB0_506
# %bb.537:
	lu12i.w	$a1, 45056
	ori	$a1, $a1, 1
	bgeu	$a2, $a1, .LBB0_506
# %bb.538:
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_854
# %bb.539:
	ld.w	$a0, $sp, 216
	lu12i.w	$a1, 2
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_887
# %bb.540:
	move	$s7, $a0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_592
# %bb.541:
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_592
# %bb.542:
	addi.d	$s5, $sp, 329
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(upx_inflate2b)
	ld.d	$s4, $a1, %got_pc_lo12(upx_inflate2b)
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.180)
	addi.d	$s0, $a1, %pc_lo12(.L.str.180)
	bnez	$a0, .LBB0_544
# %bb.543:
	addi.d	$a2, $sp, 337
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$a0, $a0, %pc_lo12(.L.str.179)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_762
.LBB0_544:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
.LBB0_545:
	ori	$s5, $zero, 1
.LBB0_546:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 225
	ld.w	$a5, $s6, 0
	ori	$a1, $zero, 190
	bne	$a0, $a1, .LBB0_684
# %bb.547:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 226
	add.d	$a0, $a0, $a5
	sub.w	$s0, $a1, $a0
	addi.d	$a0, $s0, -2048
	addi.w	$a0, $a0, -2048
	lu12i.w	$a1, -1
	bgeu	$a1, $a0, .LBB0_684
# %bb.548:
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a0, $a0, %pc_lo12(.L.str.185)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s0
	sub.w	$a1, $s8, $s0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	sub.w	$a6, $a2, $s0
	addi.d	$a3, $sp, 216
	move	$a2, $s7
	jirl	$ra, $s4, 0
	bgez	$a0, .LBB0_686
# %bb.549:
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	b	.LBB0_685
.LBB0_550:
	ld.d	$a1, $fp, 32
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	sub.w	$s7, $a2, $a0
	st.w	$s7, $sp, 216
	bstrpick.d	$a0, $s7, 31, 0
	beqz	$a1, .LBB0_555
# %bb.551:
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_555
# %bb.552:
	bgeu	$a2, $a0, .LBB0_555
# %bb.553:
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a0, $a0, %pc_lo12(.L.str.201)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.554:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.202)
	addi.d	$a1, $a1, %pc_lo12(.L.str.202)
	b	.LBB0_202
.LBB0_555:
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_627
# %bb.556:                              # %.preheader3347
	beqz	$s2, .LBB0_623
# %bb.557:                              # %.lr.ph3465
	move	$s8, $zero
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$s0, $a1, $a0
	b	.LBB0_559
.LBB0_558:                              #   in Loop: Header=BB0_559 Depth=1
	addi.d	$s8, $s8, 36
	beq	$s5, $s8, .LBB0_623
.LBB0_559:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s3, $a0, $s8
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB0_558
# %bb.560:                              #   in Loop: Header=BB0_559 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_646
# %bb.561:                              #   in Loop: Header=BB0_559 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ldx.wu	$a0, $a0, $s8
	ld.w	$a2, $s3, 32
	add.d	$a1, $s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 32
	beq	$a0, $a1, .LBB0_558
	b	.LBB0_646
.LBB0_562:
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_584
# %bb.563:
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_584
# %bb.564:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB0_584
# %bb.565:
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a0, $a0, %pc_lo12(.L.str.209)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.566:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.210)
	addi.d	$a1, $a1, %pc_lo12(.L.str.210)
	b	.LBB0_202
.LBB0_567:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_854
# %bb.568:
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s5
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_648
# %bb.569:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_663
# %bb.570:
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_719
# %bb.571:
	move	$s3, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.w	$a4, $a0, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $s6
	move	$a5, $s3
	pcaddu18i	$ra, %call36(yc_decrypt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_756
# %bb.572:
	pcalau12i	$a0, %pc_hi20(.L.str.223)
	addi.d	$a0, $a0, %pc_lo12(.L.str.223)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$s0, $a0, 0
	ori	$a0, $zero, 2
	bgeu	$s2, $a0, .LBB0_522
	b	.LBB0_528
.LBB0_573:                              # %vector.ph3981
	andi	$a0, $s2, 120
	vrepli.b	$vr0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 144
	move	$a2, $a0
	vori.b	$vr1, $vr0, 0
.LBB0_574:                              # %vector.body3984
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -144
	ld.w	$a4, $a1, -108
	ld.w	$a5, $a1, -72
	ld.w	$a6, $a1, -36
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $a4, 1
	vinsgr2vr.w	$vr2, $a5, 2
	vinsgr2vr.w	$vr2, $a6, 3
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 36
	ld.w	$a5, $a1, 72
	ld.w	$a6, $a1, 108
	vinsgr2vr.w	$vr3, $a3, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vinsgr2vr.w	$vr3, $a5, 2
	vinsgr2vr.w	$vr3, $a6, 3
	ld.w	$a3, $a1, -140
	ld.w	$a4, $a1, -104
	ld.w	$a5, $a1, -68
	ld.w	$a6, $a1, -32
	vinsgr2vr.w	$vr4, $a3, 0
	vinsgr2vr.w	$vr4, $a4, 1
	vinsgr2vr.w	$vr4, $a5, 2
	vinsgr2vr.w	$vr4, $a6, 3
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 40
	ld.w	$a5, $a1, 76
	ld.w	$a6, $a1, 112
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $a4, 1
	vinsgr2vr.w	$vr5, $a5, 2
	vinsgr2vr.w	$vr5, $a6, 3
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr5, $vr3
	vmax.wu	$vr0, $vr0, $vr2
	vmax.wu	$vr1, $vr1, $vr3
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 288
	bnez	$a2, .LBB0_574
# %bb.575:                              # %middle.block3989
	vmax.wu	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.wu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.wu	$vr0, $vr1, $vr0
	vpickve2gr.w	$s5, $vr0, 0
	beq	$a0, $s2, .LBB0_578
.LBB0_576:                              # %.lr.ph3478.preheader4018
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 4
	sub.d	$a0, $s2, $a0
.LBB0_577:                              # %.lr.ph3478
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, -4
	ld.w	$a3, $a1, 0
	add.w	$a2, $a3, $a2
	sltu	$a3, $a2, $s5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s5, $a3
	or	$s5, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	bnez	$a0, .LBB0_577
.LBB0_578:                              # %._crit_edge3479
	beqz	$s5, .LBB0_605
# %bb.579:
	ld.d	$a0, $fp, 32
	bstrpick.d	$s6, $s5, 31, 0
	beqz	$a0, .LBB0_594
# %bb.580:
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_594
# %bb.581:
	bgeu	$a2, $s6, .LBB0_594
# %bb.582:
	pcalau12i	$a0, %pc_hi20(.L.str.238)
	addi.d	$a0, $a0, %pc_lo12(.L.str.238)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.583:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.239)
	addi.d	$a1, $a1, %pc_lo12(.L.str.239)
	b	.LBB0_202
.LBB0_584:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_854
# %bb.585:
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s5
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_653
# %bb.586:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_663
# %bb.587:
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_752
# %bb.588:
	move	$s7, $a0
	move	$a0, $s5
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $s6
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $fp
	pcaddu18i	$ra, %call36(unspin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_781
# %bb.589:
	bnez	$a0, .LBB0_783
# %bb.590:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_823
# %bb.591:
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a0, $a0, %pc_lo12(.L.str.213)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_824
.LBB0_592:
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a0, $a0, %pc_lo12(.L.str.178)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
.LBB0_593:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	b	.LBB0_657
.LBB0_594:
	ori	$a1, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_854
# %bb.595:
	move	$s0, $a0
	move	$s4, $s2
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	move	$s7, $s2
	b	.LBB0_597
.LBB0_596:                              #   in Loop: Header=BB0_597 Depth=1
	addi.w	$s7, $s7, -1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 36
	beqz	$s4, .LBB0_658
.LBB0_597:                              # %.lr.ph3482
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 12
	beqz	$a0, .LBB0_596
# %bb.598:                              #   in Loop: Header=BB0_597 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_602
# %bb.599:                              #   in Loop: Header=BB0_597 Depth=1
	ld.wu	$a0, $s3, 12
	addi.w	$a1, $a0, -1
	bgeu	$a1, $s5, .LBB0_602
# %bb.600:                              #   in Loop: Header=BB0_597 Depth=1
	ld.wu	$a1, $s3, 0
	add.d	$a2, $a1, $a0
	bltu	$s6, $a2, .LBB0_602
# %bb.601:                              #   in Loop: Header=BB0_597 Depth=1
	addi.w	$a2, $a0, 0
	add.d	$a1, $s0, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	beq	$a0, $a1, .LBB0_596
.LBB0_602:                              # %._crit_edge3483
	beqz	$s7, .LBB0_658
# %bb.603:
	pcalau12i	$a0, %pc_hi20(.L.str.240)
	addi.d	$a0, $a0, %pc_lo12(.L.str.240)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_604:                              # %.critedge200.sink.split
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_605:                              # %.critedge200
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 16
	beqz	$a0, .LBB0_612
# %bb.606:
	ld.bu	$a0, $sp, 224
	ori	$a1, $zero, 233
	addi.d	$s0, $sp, 224
	bne	$a0, $a1, .LBB0_611
# %bb.607:
	ld.w	$a0, $sp, 225
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 5
	addi.d	$a3, $sp, 220
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_609
# %bb.608:
	ld.w	$a0, $sp, 220
	bnez	$a0, .LBB0_612
.LBB0_609:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB0_612
# %bb.610:
	addi.d	$s0, $sp, 192
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 24
	ori	$s3, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_612
.LBB0_611:
	pcalau12i	$a0, %pc_hi20(.L.str.245)
	addi.d	$a1, $a0, %pc_lo12(.L.str.245)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_614
.LBB0_612:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB0_613:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_16
.LBB0_614:
	ld.w	$a0, $s0, 17
	ori	$a1, $zero, 84
	sub.d	$s0, $a1, $a0
	addi.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.246)
	addi.d	$a0, $a0, %pc_lo12(.L.str.246)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	beq	$a0, $s4, .LBB0_612
# %bb.615:
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 4
	ori	$s0, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_612
# %bb.616:
	ld.w	$a0, $sp, 192
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.w	$s0, $a0, $a1
	bstrpick.d	$a1, $s0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB0_612
# %bb.617:
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 20
	ori	$s3, $zero, 20
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_612
# %bb.618:
	ld.w	$a0, $sp, 192
	ld.w	$a1, $sp, 197
	ld.w	$a2, $sp, 201
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a3, $a2, $a0
	or	$a3, $a3, $a1
	ld.w	$a4, $sp, 205
	ld.d	$a1, $fp, 32
	ori	$s3, $a3, 255
	masknez	$a2, $a2, $a0
	maskeqz	$a3, $a4, $a0
	or	$s5, $a3, $a2
	beqz	$a1, .LBB0_664
# %bb.619:
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_664
# %bb.620:
	sltu	$a1, $s5, $s3
	masknez	$a3, $s5, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_664
# %bb.621:
	pcalau12i	$a0, %pc_hi20(.L.str.247)
	addi.d	$a0, $a0, %pc_lo12(.L.str.247)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.622:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.248)
	addi.d	$a1, $a1, %pc_lo12(.L.str.248)
	b	.LBB0_202
.LBB0_623:                              # %._crit_edge3466
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_652
# %bb.624:
	move	$s5, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_697
# %bb.625:
	move	$s8, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 484
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	add.d	$a4, $s4, $s2
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$s6, $sp, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s7
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	move	$a7, $s8
	pcaddu18i	$ra, %call36(petite_inflate2x_1to9)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_702
# %bb.626:
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a0, $a0, %pc_lo12(.L.str.207)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 2
	bgeu	$s2, $s3, .LBB0_512
	b	.LBB0_516
.LBB0_627:
	ld.w	$a1, $sp, 216
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a0, $a0, %pc_lo12(.L.str.203)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_854
.LBB0_628:                              # %._crit_edge3605
	bstrpick.d	$a0, $s3, 31, 0
.LBB0_629:
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_854
# %bb.630:
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_644
# %bb.631:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 8
	ld.w	$a1, $s6, 0
	sub.w	$a2, $a2, $a0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bltu	$a2, $a1, .LBB0_649
# %bb.632:
	ld.w	$a2, $s6, 12
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.w	$a1, $a3, $a1
	bgeu	$a1, $a2, .LBB0_649
# %bb.633:
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 4
	ld.w	$a2, $s4, 0
	sub.w	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bne	$a0, $a2, .LBB0_765
# %bb.634:                              # %.preheader3349
	addi.w	$a1, $s3, -4
	ori	$a0, $zero, 13
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB0_650
# %bb.635:                              # %.lr.ph3449.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s3, $zero, 12
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a0, $a0, %pc_lo12(.L.str.172)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB0_636:                              # %.lr.ph3449
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a2, $s3, 31, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ldx.w	$s0, $a1, $a2
	beqz	$s0, .LBB0_830
# %bb.637:                              #   in Loop: Header=BB0_636 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 396
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	sub.d	$a1, $a1, $s0
	nor	$a1, $a1, $zero
	slli.d	$a1, $a1, 52
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	beqz	$a1, .LBB0_639
# %bb.638:                              #   in Loop: Header=BB0_636 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
.LBB0_639:                              #   in Loop: Header=BB0_636 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	nor	$a1, $a1, $zero
	add.w	$a1, $s0, $a1
	bltu	$a1, $a0, .LBB0_829
# %bb.640:                              #   in Loop: Header=BB0_636 Depth=1
	ld.w	$a2, $s4, 4
	sub.w	$a1, $a1, $a0
	bgeu	$a1, $a2, .LBB0_829
# %bb.641:                              #   in Loop: Header=BB0_636 Depth=1
	addi.w	$s3, $s3, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bltu	$s3, $a1, .LBB0_636
	b	.LBB0_650
.LBB0_642:
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	move	$a1, $s6
	b	.LBB0_645
.LBB0_643:
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	b	.LBB0_678
.LBB0_644:
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	move	$a1, $s3
.LBB0_645:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_646:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB0_647:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_657
.LBB0_648:
	pcalau12i	$a0, %pc_hi20(.L.str.219)
	addi.d	$a0, $a0, %pc_lo12(.L.str.219)
	b	.LBB0_654
.LBB0_649:
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_650:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
.LBB0_651:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_451
.LBB0_652:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_683
.LBB0_653:
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a0, $a0, %pc_lo12(.L.str.211)
.LBB0_654:                              # %.critedge3021
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB0_655:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_656:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB0_657:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_658:                              # %._crit_edge3483.thread
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_682
# %bb.659:
	move	$s6, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_754
# %bb.660:
	move	$s7, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a4, $a0, -1
	move	$a0, $s0
	move	$a1, $s5
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a6, $s7
	pcaddu18i	$ra, %call36(unaspack212)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_761
# %bb.661:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_805
# %bb.662:
	pcalau12i	$a0, %pc_hi20(.L.str.242)
	addi.d	$a0, $a0, %pc_lo12(.L.str.242)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_806
.LBB0_663:
	move	$a0, $s5
	b	.LBB0_683
.LBB0_664:
	beqz	$s5, .LBB0_612
# %bb.665:
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 4
	bne	$s5, $a1, .LBB0_612
# %bb.666:
	addi.w	$a1, $s0, 4
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB0_612
# %bb.667:
	bstrpick.d	$a0, $s5, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_612
# %bb.668:
	move	$s5, $a0
	bstrpick.d	$a0, $s3, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_855
# %bb.669:
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 634
	addi.d	$a3, $sp, 220
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_671
# %bb.670:
	ld.w	$a1, $sp, 220
	bnez	$a1, .LBB0_822
.LBB0_671:
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB0_822
# %bb.672:
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 5
	ori	$s2, $zero, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_822
# %bb.673:
	ld.w	$a0, $sp, 193
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.w	$s3, $a0, 639
	pcalau12i	$a0, %pc_hi20(.L.str.249)
	addi.d	$a0, $a0, %pc_lo12(.L.str.249)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_906
# %bb.674:
	move	$s1, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_928
# %bb.675:
	move	$s2, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a4, $a0, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $fp
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(unspack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_936
# %bb.676:
	pcalau12i	$a0, %pc_hi20(.L.str.253)
	addi.d	$a0, $a0, %pc_lo12(.L.str.253)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	b	.LBB0_856
.LBB0_677:
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
.LBB0_678:                              # %.critedge3021
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_657
.LBB0_679:                              # %.preheader3346
	beqz	$s4, .LBB0_726
# %bb.680:                              # %.lr.ph3469.preheader
	ori	$a0, $zero, 9
	bgeu	$s2, $a0, .LBB0_721
# %bb.681:
	move	$a0, $zero
	b	.LBB0_724
.LBB0_682:
	move	$a0, $s0
.LBB0_683:                              # %.critedge3021
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_684:
	ld.w	$a4, $s3, 0
.LBB0_685:
	addi.d	$a3, $sp, 216
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $s4, 0
	bltz	$a0, .LBB0_708
.LBB0_686:                              # %.thread3273
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$a0, $a0, %pc_lo12(.L.str.186)
.LBB0_687:                              # %.thread3284
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_688:                              # %.thread3284
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_700
# %bb.689:
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_720
# %bb.690:
	move	$s1, $a0
	ld.wu	$a2, $sp, 216
	move	$a1, $s7
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 216
	addi.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB0_751
# %bb.691:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s2, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_693
# %bb.692:
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a0, $a0, %pc_lo12(.L.str.197)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_693:
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a0, $a0, %pc_lo12(.L.str.198)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 1
	beq	$fp, $a1, .LBB0_801
# %bb.694:
	move	$s1, $fp
	bnez	$a0, .LBB0_696
# %bb.695:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_696:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB0_133
.LBB0_697:
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_760
.LBB0_698:
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
.LBB0_699:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_706
.LBB0_700:
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_701:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	move	$a1, $s0
	move	$a2, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_493
.LBB0_702:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_774
# %bb.703:
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_775
.LBB0_704:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a1, $a1, %pc_lo12(.L.str.111)
	b	.LBB0_226
.LBB0_705:
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_706:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
.LBB0_707:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_437
	b	.LBB0_451
.LBB0_708:
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a0, $a0, %pc_lo12(.L.str.187)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_768
# %bb.709:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB0_710:                              # %.thread3830
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	addi.d	$a3, $sp, 216
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(upx_inflate2b)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	bne	$a0, $s0, .LBB0_712
# %bb.711:
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 21
	addi.w	$a1, $s8, -21
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a6, $a2, -21
	addi.d	$a3, $sp, 216
	move	$a2, $s7
	pcaddu18i	$ra, %call36(upx_inflate2b)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_868
.LBB0_712:
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a0, $a0, %pc_lo12(.L.str.189)
	b	.LBB0_687
.LBB0_713:
	ori	$a0, $zero, 26
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB0_772
# %bb.714:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bgeu	$a0, $a2, .LBB0_772
# %bb.715:
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 8
	ld.d	$a1, $fp, 32
	sub.w	$a0, $a0, $s7
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	beqz	$a1, .LBB0_784
# %bb.716:
	ld.d	$a2, $a1, 24
	beqz	$a2, .LBB0_784
# %bb.717:
	bgeu	$a2, $a0, .LBB0_784
# %bb.718:
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_444
.LBB0_719:
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a0, $a0, %pc_lo12(.L.str.220)
	b	.LBB0_753
.LBB0_720:
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a0, $a0, %pc_lo12(.L.str.195)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_721:                              # %vector.ph3967
	bstrpick.d	$a0, $s6, 31, 3
	slli.d	$a0, $a0, 3
	vreplgr2vr.w	$vr0, $s5
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 152
	move	$a2, $a0
	vori.b	$vr1, $vr0, 0
.LBB0_722:                              # %vector.body3972
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -144
	ld.w	$a4, $a1, -108
	ld.w	$a5, $a1, -72
	ld.w	$a6, $a1, -36
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $a4, 1
	vinsgr2vr.w	$vr2, $a5, 2
	vinsgr2vr.w	$vr2, $a6, 3
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 36
	ld.w	$a5, $a1, 72
	ld.w	$a6, $a1, 108
	vinsgr2vr.w	$vr3, $a3, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vinsgr2vr.w	$vr3, $a5, 2
	vinsgr2vr.w	$vr3, $a6, 3
	vmin.wu	$vr0, $vr2, $vr0
	vmin.wu	$vr1, $vr3, $vr1
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 288
	bnez	$a2, .LBB0_722
# %bb.723:                              # %middle.block3976
	vmin.wu	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmin.wu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmin.wu	$vr0, $vr1, $vr0
	vpickve2gr.w	$s5, $vr0, 0
	beq	$a0, $s6, .LBB0_726
.LBB0_724:                              # %.lr.ph3469.preheader4022
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 8
	sub.d	$a0, $s6, $a0
.LBB0_725:                              # %.lr.ph3469
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	sltu	$a3, $a2, $s5
	masknez	$a4, $s5, $a3
	maskeqz	$a2, $a2, $a3
	or	$s5, $a2, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	bnez	$a0, .LBB0_725
.LBB0_726:                              # %._crit_edge3470
	ld.d	$a0, $fp, 32
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	add.w	$a1, $a1, $s5
	st.w	$a1, $sp, 216
	beqz	$a0, .LBB0_731
# %bb.727:
	ld.d	$a2, $a0, 24
	bstrpick.d	$a0, $a1, 31, 0
	beqz	$a2, .LBB0_732
# %bb.728:
	bgeu	$a2, $a0, .LBB0_732
# %bb.729:
	pcalau12i	$a0, %pc_hi20(.L.str.226)
	addi.d	$a0, $a0, %pc_lo12(.L.str.226)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_16
# %bb.730:
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.227)
	addi.d	$a1, $a1, %pc_lo12(.L.str.227)
	b	.LBB0_202
.LBB0_731:                              # %._crit_edge3470._crit_edge
	bstrpick.d	$a0, $a1, 31, 0
.LBB0_732:
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_755
# %bb.733:
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s5, 31, 0
	bne	$a0, $a1, .LBB0_766
# %bb.734:                              # %.preheader3345
	beqz	$s4, .LBB0_792
# %bb.735:                              # %.lr.ph3473
	move	$s8, $zero
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$s6, $a0, $a1
	b	.LBB0_737
.LBB0_736:                              #   in Loop: Header=BB0_737 Depth=1
	addi.d	$s8, $s8, 36
	beq	$s7, $s8, .LBB0_792
.LBB0_737:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s3, $a0, $s8
	ld.w	$a0, $s3, 12
	beqz	$a0, .LBB0_736
# %bb.738:                              #   in Loop: Header=BB0_737 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_767
# %bb.739:                              #   in Loop: Header=BB0_737 Depth=1
	ld.wu	$a0, $s3, 0
	ld.w	$a2, $s3, 12
	add.d	$a1, $s6, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	beq	$a0, $a1, .LBB0_736
	b	.LBB0_767
.LBB0_740:                              # %._crit_edge3595
	ld.w	$a0, $sp, 216
.LBB0_741:                              # %.thread3826
	add.d	$a0, $a0, $s0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_854
# %bb.742:
	move	$s7, $a0
	ld.w	$a1, $s4, 48
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 12
	bltu	$a1, $a0, .LBB0_779
# %bb.743:
	bltu	$s0, $a1, .LBB0_779
# %bb.744:
	ld.wu	$a0, $sp, 216
	bstrpick.d	$a2, $a1, 31, 0
	add.d	$a1, $s7, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 12
	bstrpick.d	$a3, $a1, 31, 0
	move	$a2, $a0
	bne	$a0, $a3, .LBB0_804
# %bb.745:
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 347
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 232
	bne	$a0, $a1, .LBB0_857
# %bb.746:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 40
	ori	$a0, $zero, 4
	bltu	$a1, $a0, .LBB0_864
# %bb.747:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 348
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 36
	add.d	$a3, $a0, $s5
	addi.w	$a4, $a3, 128
	bltu	$a4, $a2, .LBB0_864
# %bb.748:
	addi.w	$a3, $a3, 132
	add.w	$a1, $a2, $a1
	bltu	$a1, $a3, .LBB0_864
# %bb.749:
	bgeu	$a2, $a3, .LBB0_864
# %bb.750:
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.d	$a0, $s3, $a0
	sub.d	$a0, $a0, $a1
	addi.w	$s3, $a0, 133
	b	.LBB0_858
.LBB0_751:
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a0, $a0, %pc_lo12(.L.str.196)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_752:
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a0, $a0, %pc_lo12(.L.str.212)
.LBB0_753:                              # %.critedge3021
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB0_760
.LBB0_754:
	pcalau12i	$a0, %pc_hi20(.L.str.241)
	addi.d	$a0, $a0, %pc_lo12(.L.str.241)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	b	.LBB0_759
.LBB0_755:
	ld.w	$a1, $sp, 216
	pcalau12i	$a0, %pc_hi20(.L.str.228)
	addi.d	$a0, $a0, %pc_lo12(.L.str.228)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_854
.LBB0_756:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_799
# %bb.757:
	pcalau12i	$a0, %pc_hi20(.L.str.221)
	addi.d	$a0, $a0, %pc_lo12(.L.str.221)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_800
.LBB0_758:
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB0_759:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_760:                              # %.critedge3021
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_761:
	pcalau12i	$a0, %pc_hi20(.L.str.244)
	addi.d	$a0, $a0, %pc_lo12(.L.str.244)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$s0, $s6
	b	.LBB0_604
.LBB0_762:
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(upx_inflate2d)
	ld.d	$s4, $a1, %got_pc_lo12(upx_inflate2d)
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.182)
	addi.d	$s0, $a1, %pc_lo12(.L.str.182)
	bnez	$a0, .LBB0_764
# %bb.763:
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	addi.d	$a2, $sp, 337
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_866
.LBB0_764:
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB0_545
.LBB0_765:
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_650
.LBB0_766:
	pcalau12i	$a0, %pc_hi20(.L.str.229)
	addi.d	$a0, $a0, %pc_lo12(.L.str.229)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_767:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_655
.LBB0_768:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_869
.LBB0_769:
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	addi.d	$a3, $sp, 216
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(upx_inflate2d)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	bne	$a0, $s0, .LBB0_771
# %bb.770:
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 21
	addi.w	$a1, $s8, -21
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a6, $a2, -21
	addi.d	$a3, $sp, 216
	move	$a2, $s7
	pcaddu18i	$ra, %call36(upx_inflate2d)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_876
.LBB0_771:
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a0, $a0, %pc_lo12(.L.str.191)
	b	.LBB0_687
.LBB0_772:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	b	.LBB0_461
.LBB0_773:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB0_395
	b	.LBB0_494
.LBB0_774:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_775:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_912
.LBB0_776:
	bnez	$a0, .LBB0_778
# %bb.777:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_778:
	move	$a0, $s5
	b	.LBB0_234
.LBB0_779:
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_780:                              # %.thread3173
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB0_362
.LBB0_781:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$a0, $a0, %pc_lo12(.L.str.215)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 40
	andi	$s4, $a0, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_516
# %bb.782:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.216)
	addi.d	$a1, $a1, %pc_lo12(.L.str.216)
	b	.LBB0_202
.LBB0_783:
	pcalau12i	$a0, %pc_hi20(.L.str.217)
	addi.d	$a0, $a0, %pc_lo12(.L.str.217)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_516
.LBB0_784:
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_854
# %bb.785:
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_863
# %bb.786:                              # %.preheader3348
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -2
	beqz	$a0, .LBB0_875
# %bb.787:                              # %.lr.ph3457
	lu12i.w	$a1, 2
	ori	$a1, $a1, 396
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	move	$s7, $zero
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ori	$a2, $zero, 2
	lu12i.w	$a3, -2
.LBB0_788:                              # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $s7, 31, 0
	addi.d	$a5, $s7, 1
	bstrpick.d	$a5, $a5, 31, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ldx.b	$a5, $a6, $a5
	ldx.b	$a4, $a6, $a4
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $a4
	addi.d	$a4, $a5, -1
	bltu	$a4, $a2, .LBB0_878
# %bb.789:                              #   in Loop: Header=BB0_788 Depth=1
	ld.w	$a4, $s5, 0
	slli.d	$a5, $a5, 12
	sub.d	$a5, $a5, $a1
	add.w	$a5, $a5, $a3
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	bltu	$a5, $a4, .LBB0_877
# %bb.790:                              #   in Loop: Header=BB0_788 Depth=1
	ld.w	$a6, $s5, 4
	sub.w	$a4, $a5, $a4
	bgeu	$a4, $a6, .LBB0_877
# %bb.791:                              #   in Loop: Header=BB0_788 Depth=1
	addi.w	$s7, $s7, 2
	bltu	$s7, $a0, .LBB0_788
	b	.LBB0_878
.LBB0_792:                              # %._crit_edge3474
	ld.wu	$a0, $s0, 12
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_852
# %bb.793:
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	ld.w	$a7, $s0, 12
	beqz	$a0, .LBB0_828
# %bb.794:
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $a7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a7, $s0, 12
	bstrpick.d	$a1, $a7, 31, 0
	bne	$a0, $a1, .LBB0_828
# %bb.795:
	ld.w	$a1, $sp, 216
	ld.w	$a4, $s0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	bstrpick.d	$a0, $s4, 15, 0
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(wwunpack)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_898
# %bb.796:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.235)
	addi.d	$a0, $a0, %pc_lo12(.L.str.235)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_528
.LBB0_797:                              # %.thread3165
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1280
	b	.LBB0_322
.LBB0_798:
	move	$a0, $s5
	b	.LBB0_853
.LBB0_799:
	pcalau12i	$a0, %pc_hi20(.L.str.222)
	addi.d	$a0, $a0, %pc_lo12(.L.str.222)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_800:
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_825
.LBB0_801:
	bnez	$a0, .LBB0_803
.LBB0_802:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_803:
	move	$a0, $s0
	b	.LBB0_234
.LBB0_804:
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_593
.LBB0_805:
	pcalau12i	$a0, %pc_hi20(.L.str.243)
	addi.d	$a0, $a0, %pc_lo12(.L.str.243)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_806:
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_810
# %bb.807:
	bnez	$a0, .LBB0_809
# %bb.808:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_809:
	move	$a0, $s6
	b	.LBB0_234
.LBB0_810:
	bnez	$a0, .LBB0_812
# %bb.811:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_812:
	move	$a0, $s6
	b	.LBB0_613
.LBB0_813:
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_814:
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_818
# %bb.815:
	bnez	$a0, .LBB0_817
# %bb.816:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_817:
	move	$a0, $s3
	b	.LBB0_234
.LBB0_818:
	bnez	$a0, .LBB0_820
# %bb.819:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_820:
	move	$a0, $s3
	b	.LBB0_613
.LBB0_821:
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	b	.LBB0_699
.LBB0_822:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_856
.LBB0_823:
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$a0, $a0, %pc_lo12(.L.str.214)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_824:
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	beq	$fp, $a1, .LBB0_801
.LBB0_825:
	bnez	$a0, .LBB0_827
# %bb.826:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_827:
	move	$a0, $s0
	b	.LBB0_613
.LBB0_828:
	pcalau12i	$a0, %pc_hi20(.L.str.230)
	addi.d	$a0, $a0, %pc_lo12(.L.str.230)
	move	$a1, $a7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	b	.LBB0_655
.LBB0_829:                              # %.loopexit3350
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	bnez	$a0, .LBB0_650
.LBB0_830:                              # %.loopexit3350.thread
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 1
	slli.d	$a0, $s3, 5
	alsl.d	$a0, $s3, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_887
# %bb.831:
	move	$s4, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $s4, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_842
# %bb.832:                              # %.lr.ph3453.preheader
	ori	$a0, $zero, 2
	sltu	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a2, $zero, 17
	ori	$a1, $zero, 1
	bltu	$s3, $a2, .LBB0_840
# %bb.833:                              # %vector.scevcheck
	addi.d	$a2, $a0, -2
	bstrpick.d	$a3, $a2, 29, 0
	lu12i.w	$a4, 262143
	ori	$a4, $a4, 4095
	beq	$a3, $a4, .LBB0_840
# %bb.834:                              # %vector.scevcheck
	srli.d	$a2, $a2, 30
	bnez	$a2, .LBB0_840
# %bb.835:                              # %vector.memcheck
	addi.d	$a2, $s4, 36
	ori	$a3, $zero, 36
	mul.d	$a3, $a0, $a3
	add.d	$a3, $s4, $a3
	addi.d	$a3, $a3, -32
	lu12i.w	$a4, 2
	ori	$a4, $a4, 400
	add.d	$a4, $sp, $a4
	sltu	$a4, $a2, $a4
	lu12i.w	$a5, 2
	ori	$a5, $a5, 396
	add.d	$a5, $sp, $a5
	sltu	$a5, $a5, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_840
# %bb.836:                              # %vector.memcheck
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a4, $a5, 12
	alsl.d	$a5, $a0, $a5, 2
	addi.d	$a5, $a5, 8
	sltu	$a2, $a2, $a5
	sltu	$a3, $a4, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB0_840
# %bb.837:                              # %vector.ph
	addi.d	$a2, $a0, -1
	move	$a4, $zero
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a1, $a2
	bstrins.d	$a1, $a5, 1, 0
	addi.d	$a5, $s4, 72
	slli.d	$a6, $a2, 2
	bstrins.d	$a6, $zero, 3, 0
	addi.w	$a7, $zero, -12
	lu32i.d	$a7, 0
	vrepli.b	$vr0, -1
.LBB0_838:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t0, $a4, 4
	lu12i.w	$t1, 2
	ori	$t1, $t1, 396
	add.d	$t1, $sp, $t1
	vld	$vr1, $t1, 0
	and	$t0, $t0, $a7
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	vldx	$vr2, $t1, $t0
	vxor.v	$vr1, $vr1, $vr0
	vreplvei.w	$vr1, $vr1, 0
	vadd.w	$vr1, $vr2, $vr1
	vstelm.w	$vr1, $a5, -36, 0
	vstelm.w	$vr1, $a5, 0, 1
	vstelm.w	$vr1, $a5, 36, 2
	vstelm.w	$vr1, $a5, 72, 3
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 144
	bne	$a6, $a4, .LBB0_838
# %bb.839:                              # %middle.block
	beq	$a2, $a3, .LBB0_842
.LBB0_840:                              # %.lr.ph3453.preheader4027
	slli.d	$a2, $a1, 2
	slli.d	$a3, $a1, 5
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a3, $s4, $a3
	sub.d	$a0, $a0, $a1
.LBB0_841:                              # %.lr.ph3453
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a1, $a2, 31, 2
	slli.d	$a1, $a1, 2
	lu12i.w	$a4, 2
	ori	$a4, $a4, 396
	add.d	$a4, $sp, $a4
	ld.w	$a4, $a4, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a1, $a5, $a1
	nor	$a4, $a4, $zero
	add.d	$a1, $a1, $a4
	st.w	$a1, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 36
	bnez	$a0, .LBB0_841
.LBB0_842:                              # %._crit_edge3454
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_896
# %bb.843:
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_891
# %bb.844:
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_891
# %bb.845:
	ld.wu	$a0, $sp, 216
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_934
# %bb.846:
	move	$s7, $a0
	ld.w	$a0, $sp, 387
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.w	$s3, $a0, 167
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_938
# %bb.847:
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bltz	$a0, .LBB0_941
# %bb.848:
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a4, 31, 0
	ld.wu	$a1, $s6, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.w	$a3, $sp, 216
	lu12i.w	$a2, 2
	ori	$a2, $a2, 396
	add.d	$a2, $sp, $a2
	ld.w	$a6, $a2, 0
	sub.d	$a0, $a0, $a1
	sub.d	$a2, $s5, $a4
	add.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 0
	move	$a1, $s7
	move	$a4, $s4
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(unfsg_133)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_959
# %bb.849:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_960
# %bb.850:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_965
# %bb.851:
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_966
.LBB0_852:
	ld.w	$a1, $s0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.228)
	addi.d	$a0, $a0, %pc_lo12(.L.str.228)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
.LBB0_853:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_854:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_855:
	move	$s0, $s5
.LBB0_856:                              # %.thread3315.sink.split
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_612
.LBB0_857:
	move	$s3, $zero
.LBB0_858:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_873
# %bb.859:
	move	$s5, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_895
# %bb.860:
	move	$s4, $a0
	ld.w	$a4, $sp, 216
	lu12i.w	$a0, 2
	ori	$a0, $a0, 396
	add.d	$a0, $sp, $a0
	ld.w	$a5, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	st.d	$s4, $sp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0
	move	$a0, $s8
	move	$a1, $s7
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a7, $s3
	pcaddu18i	$ra, %call36(unmew11)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	bne	$a0, $s6, .LBB0_903
# %bb.861:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_910
# %bb.862:
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_911
.LBB0_863:
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_645
.LBB0_864:
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_780
.LBB0_865:
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_706
.LBB0_866:
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(upx_inflate2e)
	ld.d	$s4, $a1, %got_pc_lo12(upx_inflate2e)
	pcalau12i	$a1, %pc_hi20(.L.str.184)
	addi.d	$s0, $a1, %pc_lo12(.L.str.184)
	beqz	$a0, .LBB0_892
# %bb.867:
	move	$s5, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_894
.LBB0_868:
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$a0, $a0, %pc_lo12(.L.str.188)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_769
.LBB0_869:
	beqz	$s5, .LBB0_905
.LBB0_870:
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	addi.d	$a3, $sp, 216
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(upx_inflate2e)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	bne	$a0, $s0, .LBB0_872
# %bb.871:
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s6, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 21
	addi.w	$a1, $s8, -21
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a6, $a2, -21
	addi.d	$a3, $sp, 216
	move	$a2, $s7
	pcaddu18i	$ra, %call36(upx_inflate2e)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB0_904
.LBB0_872:
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a0, $a0, %pc_lo12(.L.str.193)
	b	.LBB0_687
.LBB0_873:
	move	$a0, $s7
	b	.LBB0_683
.LBB0_874:
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	b	.LBB0_699
.LBB0_875:
	move	$s7, $zero
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB0_878
.LBB0_876:
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a0, $a0, %pc_lo12(.L.str.190)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB0_870
	b	.LBB0_905
.LBB0_877:
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_878:                              # %.thread3238
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -10
	bgeu	$s7, $a0, .LBB0_888
# %bb.879:
	bstrpick.d	$a0, $s7, 31, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_888
# %bb.880:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_887
# %bb.881:
	move	$s5, $a0
	st.w	$s0, $a0, 0
	ori	$a0, $zero, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	addi.w	$a1, $a2, -12
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4084
	bstrpick.d	$a0, $a0, 31, 0
	bltu	$a2, $a1, .LBB0_915
# %bb.882:                              # %vector.memcheck3938
	lu12i.w	$a1, 2
	ori	$a1, $a1, 396
	add.d	$a1, $sp, $a1
	addi.d	$a2, $s5, 36
	ori	$a3, $zero, 36
	mul.d	$a3, $a0, $a3
	add.d	$a3, $s5, $a3
	addi.d	$a3, $a3, 4
	lu12i.w	$a4, 2
	ori	$a4, $a4, 400
	add.d	$a4, $sp, $a4
	sltu	$a4, $a2, $a4
	sltu	$a1, $a1, $a3
	and	$a4, $a4, $a1
	move	$a1, $zero
	bnez	$a4, .LBB0_916
# %bb.883:                              # %vector.memcheck3938
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 1
	sltu	$a2, $a2, $a4
	sltu	$a3, $a5, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB0_916
# %bb.884:                              # %vector.ph3952
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a1, %pc_lo12(.LCPI0_2)
	bstrpick.d	$a1, $a0, 31, 2
	slli.d	$a1, $a1, 2
	lu12i.w	$a2, -2
	vreplgr2vr.w	$vr3, $a2
	ori	$a2, $zero, 36
	move	$a3, $a1
.LBB0_885:                              # %vector.body3955
                                        # =>This Inner Loop Header: Depth=1
	vslli.w	$vr4, $vr2, 1
	vshuf4i.w	$vr5, $vr4, 14
	vsllwil.du.wu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr6, $vr4, 0
	vpickve2gr.d	$a4, $vr6, 0
	vpickve2gr.d	$a5, $vr6, 1
	vpickve2gr.d	$a6, $vr5, 0
	vpickve2gr.d	$a7, $vr5, 1
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ldx.b	$a4, $t0, $a4
	ldx.b	$a5, $t0, $a5
	ldx.b	$a6, $t0, $a6
	ldx.b	$a7, $t0, $a7
	vinsgr2vr.b	$vr5, $a4, 0
	vinsgr2vr.b	$vr5, $a5, 1
	vinsgr2vr.b	$vr5, $a6, 2
	vinsgr2vr.b	$vr5, $a7, 3
	vsllwil.h.b	$vr5, $vr5, 0
	vsllwil.w.h	$vr5, $vr5, 0
	vbitseti.w	$vr4, $vr4, 0
	vshuf4i.w	$vr6, $vr4, 14
	vsllwil.du.wu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vpickve2gr.d	$a4, $vr4, 0
	vpickve2gr.d	$a5, $vr4, 1
	vpickve2gr.d	$a6, $vr6, 0
	vpickve2gr.d	$a7, $vr6, 1
	ldx.b	$a4, $t0, $a4
	ldx.b	$a5, $t0, $a5
	ldx.b	$a6, $t0, $a6
	ldx.b	$a7, $t0, $a7
	vinsgr2vr.b	$vr4, $a4, 0
	vinsgr2vr.b	$vr4, $a5, 1
	vinsgr2vr.b	$vr4, $a6, 2
	vinsgr2vr.b	$vr4, $a7, 3
	vsllwil.h.b	$vr4, $vr4, 0
	vsllwil.w.h	$vr4, $vr4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 396
	add.d	$a4, $sp, $a4
	vld	$vr6, $a4, 0
	vslli.w	$vr4, $vr4, 20
	vslli.w	$vr5, $vr5, 12
	vor.v	$vr4, $vr4, $vr5
	vreplvei.w	$vr5, $vr6, 0
	vsub.w	$vr4, $vr4, $vr5
	vadd.w	$vr4, $vr4, $vr3
	vaddi.du	$vr5, $vr0, 1
	vaddi.du	$vr6, $vr1, 1
	vpickve2gr.d	$a4, $vr6, 0
	mul.d	$a4, $a4, $a2
	add.d	$a4, $s5, $a4
	vpickve2gr.d	$a5, $vr6, 1
	mul.d	$a5, $a5, $a2
	add.d	$a5, $s5, $a5
	vpickve2gr.d	$a6, $vr5, 0
	mul.d	$a6, $a6, $a2
	add.d	$a6, $s5, $a6
	vpickve2gr.d	$a7, $vr5, 1
	mul.d	$a7, $a7, $a2
	add.d	$a7, $s5, $a7
	vstelm.w	$vr4, $a4, 0, 0
	vstelm.w	$vr4, $a5, 0, 1
	vstelm.w	$vr4, $a6, 0, 2
	vstelm.w	$vr4, $a7, 0, 3
	vaddi.du	$vr1, $vr1, 4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	vaddi.wu	$vr2, $vr2, 4
	bnez	$a3, .LBB0_885
# %bb.886:                              # %middle.block3962
	bne	$a1, $a0, .LBB0_916
	b	.LBB0_918
.LBB0_887:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_888:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
.LBB0_889:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_493
.LBB0_890:
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	b	.LBB0_699
.LBB0_891:
	addi.w	$a1, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB0_647
.LBB0_892:
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	ori	$a1, $zero, 24
	ori	$a3, $zero, 13
	addi.d	$a2, $sp, 337
	pcaddu18i	$ra, %call36(cli_memstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_908
# %bb.893:
	move	$s5, $zero
.LBB0_894:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB0_546
.LBB0_895:
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	b	.LBB0_760
.LBB0_896:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB0_897:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB0_137
.LBB0_898:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_909
# %bb.899:
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_933
# %bb.900:
	move	$s5, $a0
	ld.wu	$a2, $sp, 216
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 216
	addi.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB0_935
# %bb.901:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s3, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB0_943
# %bb.902:
	pcalau12i	$a0, %pc_hi20(.L.str.233)
	addi.d	$a0, $a0, %pc_lo12(.L.str.233)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_944
.LBB0_903:
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_362
.LBB0_904:
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a0, $a0, %pc_lo12(.L.str.192)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_905:
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a0, $a0, %pc_lo12(.L.str.194)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_494
.LBB0_906:
	move	$a0, $s0
	move	$a1, $s5
.LBB0_907:                              # %.critedge3021
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_908:
	ori	$s5, $zero, 1
	b	.LBB0_710
.LBB0_909:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_683
.LBB0_910:
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_911:
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	beq	$fp, $a1, .LBB0_776
.LBB0_912:
	bnez	$a0, .LBB0_914
# %bb.913:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_914:
	move	$a0, $s5
	b	.LBB0_613
.LBB0_915:
	move	$a1, $zero
.LBB0_916:                              # %scalar.ph3950.preheader
	slli.d	$a2, $a1, 1
	sub.d	$a0, $a0, $a1
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 2
	add.d	$a1, $a1, $s5
	addi.d	$a1, $a1, 36
	lu12i.w	$a3, -2
.LBB0_917:                              # %scalar.ph3950
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, 1
	bstrpick.d	$a5, $a5, 31, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ldx.b	$a5, $a6, $a5
	ldx.b	$a4, $a6, $a4
	lu12i.w	$a6, 2
	ori	$a6, $a6, 396
	add.d	$a6, $sp, $a6
	ld.w	$a6, $a6, 0
	slli.d	$a5, $a5, 20
	slli.d	$a4, $a4, 12
	or	$a4, $a5, $a4
	sub.d	$a4, $a4, $a6
	add.d	$a4, $a4, $a3
	st.w	$a4, $a1, 0
	addi.w	$a2, $a2, 2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	bnez	$a0, .LBB0_917
.LBB0_918:                              # %.loopexit3994
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_931
# %bb.919:
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_seeksect)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_930
# %bb.920:
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_930
# %bb.921:
	ld.wu	$a0, $sp, 216
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_958
# %bb.922:
	move	$s7, $a0
	ld.bu	$a0, $sp, 240
	addi.d	$a0, $a0, -232
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 218
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 224
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	bstrpick.d	$a2, $s3, 31, 0
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$s3, $a0, 6
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_963
# %bb.923:
	move	$s0, $a0
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bltz	$a0, .LBB0_964
# %bb.924:
	bstrpick.d	$a0, $s4, 31, 0
	ld.wu	$a1, $s6, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.w	$a3, $sp, 216
	lu12i.w	$a2, 2
	ori	$a2, $a2, 396
	add.d	$a2, $sp, $a2
	ld.w	$a6, $a2, 0
	sub.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $s4
	add.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 0
	move	$a1, $s7
	move	$a4, $s5
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(unfsg_133)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_976
# %bb.925:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_978
# %bb.926:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s1, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_979
# %bb.927:
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_980
.LBB0_928:
	pcalau12i	$a0, %pc_hi20(.L.str.250)
	addi.d	$a0, $a0, %pc_lo12(.L.str.250)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
.LBB0_929:                              # %.critedge3021
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_930:
	addi.w	$a1, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB0_647
.LBB0_931:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB0_932:                              # %.critedge3021
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB0_137
.LBB0_933:
	pcalau12i	$a0, %pc_hi20(.L.str.231)
	addi.d	$a0, $a0, %pc_lo12(.L.str.231)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_760
.LBB0_934:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_897
.LBB0_935:
	pcalau12i	$a0, %pc_hi20(.L.str.232)
	addi.d	$a0, $a0, %pc_lo12(.L.str.232)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_767
.LBB0_936:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s3, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB0_949
# %bb.937:
	pcalau12i	$a0, %pc_hi20(.L.str.251)
	addi.d	$a0, $a0, %pc_lo12(.L.str.251)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_950
.LBB0_938:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s4
.LBB0_939:                              # %.critedge3021
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB0_133
.LBB0_940:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	b	.LBB0_907
.LBB0_941:
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s4
.LBB0_942:                              # %.critedge3021
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	b	.LBB0_133
.LBB0_943:
	pcalau12i	$a0, %pc_hi20(.L.str.234)
	addi.d	$a0, $a0, %pc_lo12(.L.str.234)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_944:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_946
# %bb.945:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
	bnez	$a0, .LBB0_803
	b	.LBB0_802
.LBB0_946:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
	bnez	$a0, .LBB0_948
# %bb.947:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_948:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_528
.LBB0_949:
	pcalau12i	$a0, %pc_hi20(.L.str.252)
	addi.d	$a0, $a0, %pc_lo12(.L.str.252)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_950:
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_954
# %bb.951:
	bnez	$a0, .LBB0_953
# %bb.952:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_953:
	move	$a0, $s1
	b	.LBB0_234
.LBB0_954:
	bnez	$a0, .LBB0_956
# %bb.955:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_956:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_133
.LBB0_957:
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	b	.LBB0_929
.LBB0_958:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_932
.LBB0_959:
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB0_977
.LBB0_960:
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_651
.LBB0_961:
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_977
.LBB0_962:
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_707
.LBB0_963:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s5
	b	.LBB0_939
.LBB0_964:
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s5
	b	.LBB0_942
.LBB0_965:
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_966:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s4
.LBB0_967:
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 1
	beq	$fp, $a1, .LBB0_801
	b	.LBB0_825
.LBB0_968:
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_969:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB0_973
# %bb.970:
	bnez	$a0, .LBB0_972
# %bb.971:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_972:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_234
.LBB0_973:
	bnez	$a0, .LBB0_975
# %bb.974:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_975:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_613
.LBB0_976:
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB0_977:                              # %.thread3284
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_688
.LBB0_978:
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_multifree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_889
.LBB0_979:
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_980:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s5
	b	.LBB0_967
.Lfunc_end0:
	.size	cli_scanpe, .Lfunc_end0-cli_scanpe
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_54-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
	.word	.LBB0_59-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_52-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_63-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_65-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_98-.LJTI0_1
	.word	.LBB0_104-.LJTI0_1
	.word	.LBB0_103-.LJTI0_1
	.word	.LBB0_102-.LJTI0_1
	.word	.LBB0_109-.LJTI0_1
	.word	.LBB0_100-.LJTI0_1
	.word	.LBB0_109-.LJTI0_1
	.word	.LBB0_101-.LJTI0_1
	.word	.LBB0_105-.LJTI0_1
	.word	.LBB0_106-.LJTI0_1
	.word	.LBB0_108-.LJTI0_1
	.word	.LBB0_107-.LJTI0_1
	.word	.LBB0_99-.LJTI0_1
.LJTI0_2:
	.word	.LBB0_240-.LJTI0_2
	.word	.LBB0_248-.LJTI0_2
	.word	.LBB0_251-.LJTI0_2
	.word	.LBB0_240-.LJTI0_2
	.word	.LBB0_259-.LJTI0_2
	.word	.LBB0_260-.LJTI0_2
	.word	.LBB0_263-.LJTI0_2
	.word	.LBB0_254-.LJTI0_2
.LJTI0_3:
	.word	.LBB0_245-.LJTI0_3
	.word	.LBB0_245-.LJTI0_3
	.word	.LBB0_245-.LJTI0_3
	.word	.LBB0_245-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_245-.LJTI0_3
	.word	.LBB0_245-.LJTI0_3
	.word	.LBB0_245-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_268-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_242-.LJTI0_3
	.word	.LBB0_242-.LJTI0_3
	.word	.LBB0_242-.LJTI0_3
	.word	.LBB0_242-.LJTI0_3
	.word	.LBB0_236-.LJTI0_3
	.word	.LBB0_242-.LJTI0_3
	.word	.LBB0_242-.LJTI0_3
	.word	.LBB0_242-.LJTI0_3
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function cli_md5sect
	.type	cli_md5sect,@function
cli_md5sect:                            # @cli_md5sect
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 12
	lu12i.w	$a3, 45056
	ori	$a3, $a3, 1
	bltu	$a1, $a3, .LBB1_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.256)
	addi.d	$a0, $a0, %pc_lo12(.L.str.256)
.LBB1_2:                                # %cli_seeksect.exit.thread
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %cli_seeksect.exit.thread
	move	$a0, $zero
.LBB1_4:                                # %cli_seeksect.exit.thread
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB1_5:
	beqz	$a1, .LBB1_3
# %bb.6:
	move	$fp, $a2
	ld.wu	$a1, $s0, 8
	move	$s2, $a0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB1_10
# %bb.7:
	ld.wu	$a0, $s0, 12
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_11
# %bb.8:
	move	$s1, $a0
	ld.w	$a2, $s0, 12
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	bne	$a0, $a1, .LBB1_12
# %bb.9:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(cli_md5_init)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $s0, 12
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_md5_update)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_md5_final)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_4
.LBB1_10:                               # %cli_seeksect.exit.thread17
	pcalau12i	$a0, %pc_hi20(.L.str.259)
	addi.d	$a0, $a0, %pc_lo12(.L.str.259)
	b	.LBB1_2
.LBB1_11:
	pcalau12i	$a0, %pc_hi20(.L.str.257)
	addi.d	$a0, $a0, %pc_lo12(.L.str.257)
	b	.LBB1_2
.LBB1_12:
	pcalau12i	$a0, %pc_hi20(.L.str.258)
	addi.d	$a0, $a0, %pc_lo12(.L.str.258)
	b	.LBB1_2
.Lfunc_end1:
	.size	cli_md5sect, .Lfunc_end1-cli_md5sect
                                        # -- End function
	.p2align	5                               # -- Begin function cli_rawaddr
	.type	cli_rawaddr,@function
cli_rawaddr:                            # @cli_rawaddr
# %bb.0:
	bgeu	$a0, $a5, .LBB2_2
# %bb.1:
	bstrpick.d	$a1, $a0, 31, 0
	sltu	$a1, $a1, $a4
	xori	$a4, $a1, 1
	masknez	$a0, $a0, $a4
	st.w	$a4, $a3, 0
	ret
.LBB2_2:
	ori	$a4, $zero, 1
	beqz	$a2, .LBB2_9
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$a5, $a2, 1
	slli.d	$a6, $a2, 5
	alsl.d	$a2, $a2, $a6, 2
	add.d	$a2, $a2, $a1
	addi.d	$a2, $a2, -36
	ori	$a6, $zero, 2
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, -36
	bltu	$a5, $a6, .LBB2_9
.LBB2_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 12
	beqz	$a7, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	ld.w	$t0, $a2, 0
	bltu	$a0, $t0, .LBB2_4
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	sub.w	$t0, $a0, $t0
	bgeu	$t0, $a7, .LBB2_4
# %bb.8:
	addi.d	$a2, $a5, -2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a4, $a2, 5
	alsl.d	$a2, $a2, $a4, 2
	add.d	$a4, $a1, $a2
	ldx.w	$a1, $a1, $a2
	ld.w	$a2, $a4, 8
	sub.d	$a0, $a0, $a1
	add.w	$a0, $a0, $a2
	st.w	$zero, $a3, 0
	ret
.LBB2_9:
	move	$a0, $zero
	st.w	$a4, $a3, 0
	ret
.Lfunc_end2:
	.size	cli_rawaddr, .Lfunc_end2-cli_rawaddr
                                        # -- End function
	.p2align	5                               # -- Begin function cli_seeksect
	.type	cli_seeksect,@function
cli_seeksect:                           # @cli_seeksect
# %bb.0:
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB3_4
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.wu	$a1, $a1, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$fp, $a0
	bne	$a0, $a1, .LBB3_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.259)
	addi.d	$a0, $a0, %pc_lo12(.L.str.259)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_3:
	addi.d	$a0, $fp, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_4:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	cli_seeksect, .Lfunc_end3-cli_seeksect
                                        # -- End function
	.p2align	5                               # -- Begin function cli_multifree
	.type	cli_multifree,@function
cli_multifree:                          # @cli_multifree
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 88
	st.d	$a6, $sp, 80
	st.d	$a5, $sp, 72
	st.d	$a4, $sp, 64
	st.d	$a3, $sp, 56
	st.d	$a2, $sp, 48
	st.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 16
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB4_1
.LBB4_2:                                # %._crit_edge
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	cli_multifree, .Lfunc_end4-cli_multifree
                                        # -- End function
	.globl	cli_peheader                    # -- Begin function cli_peheader
	.p2align	5
	.type	cli_peheader,@function
cli_peheader:                           # @cli_peheader
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.254)
	addi.d	$a0, $a0, %pc_lo12(.L.str.254)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
	beq	$a0, $fp, .LBB5_12
# %bb.1:
	ld.d	$s4, $sp, 64
	ld.d	$s5, $s0, 8
	addi.d	$a1, $sp, 414
	ori	$a2, $zero, 2
	ori	$s1, $zero, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB5_13
# %bb.2:
	ld.hu	$a0, $sp, 414
	lu12i.w	$s1, 4
	ori	$a1, $s1, 3418
	beq	$a0, $a1, .LBB5_4
# %bb.3:
	lu12i.w	$a1, 5
	ori	$a1, $a1, 2637
	bne	$a0, $a1, .LBB5_15
.LBB5_4:
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 4
	ori	$s2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB5_14
# %bb.5:
	ld.wu	$a0, $sp, 408
	beqz	$a0, .LBB5_16
# %bb.6:
	ld.d	$a1, $s0, 8
	add.d	$a1, $a1, $a0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_17
# %bb.7:
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 24
	ori	$s2, $zero, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB5_18
# %bb.8:
	ld.w	$a0, $sp, 384
	ori	$a1, $s1, 1360
	bne	$a0, $a1, .LBB5_19
# %bb.9:
	ld.hu	$a0, $sp, 390
	addi.d	$a1, $a0, -97
	addi.w	$a2, $zero, -96
	st.h	$a0, $s0, 4
	bltu	$a1, $a2, .LBB5_21
# %bb.10:
	ld.hu	$a0, $sp, 404
	ori	$a1, $zero, 223
	bltu	$a1, $a0, .LBB5_22
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	b	.LBB5_20
.LBB5_12:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	b	.LBB5_20
.LBB5_13:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB5_20
.LBB5_14:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB5_20
.LBB5_15:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB5_20
.LBB5_16:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	b	.LBB5_20
.LBB5_17:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB5_20
.LBB5_18:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB5_20
.LBB5_19:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
.LBB5_20:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB5_21:
	move	$a0, $fp
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB5_22:
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 224
	ori	$s1, $zero, 224
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB5_26
# %bb.23:
	ld.hu	$a1, $sp, 144
	ld.hu	$a0, $sp, 404
	ori	$a2, $zero, 523
	bne	$a1, $a2, .LBB5_27
# %bb.24:
	ori	$a1, $zero, 240
	bne	$a0, $a1, .LBB5_61
# %bb.25:
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 16
	ori	$s1, $zero, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB5_29
.LBB5_26:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB5_20
.LBB5_27:
	ori	$a1, $zero, 224
	beq	$a0, $a1, .LBB5_29
# %bb.28:
	addi.d	$a1, $a0, -224
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB5_29:
	ld.w	$s6, $sp, 176
	ld.w	$s2, $sp, 204
	beqz	$s6, .LBB5_31
# %bb.30:
	div.wu	$a0, $s2, $s6
	mul.d	$a1, $a0, $s6
	sub.w	$a1, $s2, $a1
	sltu	$a1, $zero, $a1
	add.d	$a0, $a0, $a1
	mul.w	$s2, $a0, $s6
.LBB5_31:
	ld.w	$s7, $sp, 180
	ld.hu	$a0, $s0, 4
	ori	$a1, $zero, 36
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB5_62
# %bb.32:
	ld.hu	$a0, $s0, 4
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_63
# %bb.33:
	move	$s1, $a0
	ld.hu	$a0, $s0, 4
	slli.d	$a1, $a0, 5
	alsl.d	$a2, $a0, $a1, 3
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $s0, 4
	slli.d	$a1, $a2, 5
	alsl.d	$a3, $a2, $a1, 3
	bne	$a3, $a0, .LBB5_64
# %bb.34:                               # %.preheader
	ori	$a0, $zero, 512
	beq	$s7, $a0, .LBB5_43
# %bb.35:                               # %.preheader
	beqz	$a2, .LBB5_43
# %bb.36:                               # %.lr.ph.preheader
	addi.d	$a0, $s1, 20
	ori	$a5, $zero, 1
	ori	$a3, $zero, 512
.LBB5_37:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a5
	beqz	$s7, .LBB5_40
# %bb.38:                               #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a5, $a0, -4
	beqz	$a5, .LBB5_41
# %bb.39:                               #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a5, $a0, 0
	mod.wu	$a6, $a5, $s7
	sltu	$a6, $zero, $a6
	andi	$a5, $a5, 511
	sltui	$a5, $a5, 1
	masknez	$a7, $s7, $a5
	maskeqz	$a5, $a3, $a5
	or	$a5, $a5, $a7
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s7, $a6
	or	$s7, $a5, $a6
	b	.LBB5_41
.LBB5_40:                               #   in Loop: Header=BB5_37 Depth=1
	move	$s7, $zero
.LBB5_41:                               #   in Loop: Header=BB5_37 Depth=1
	beq	$s7, $a3, .LBB5_43
# %bb.42:                               #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 40
	addi.d	$a5, $a4, 1
	bltu	$a4, $a2, .LBB5_37
.LBB5_43:                               # %.critedge.preheader
	sub.d	$a4, $s4, $s5
	beqz	$a2, .LBB5_65
# %bb.44:                               # %.lr.ph210
	move	$a0, $zero
	move	$a3, $zero
	addi.d	$a5, $s1, 12
	alsl.d	$a6, $a2, $a1, 2
	addi.w	$a7, $a4, 0
	b	.LBB5_47
.LBB5_45:                               #   in Loop: Header=BB5_47 Depth=1
	bstrpick.d	$t1, $t1, 31, 0
	sub.d	$t1, $a4, $t1
	sltu	$t2, $a4, $t1
	masknez	$t1, $t1, $t2
	st.w	$t1, $t0, 12
.LBB5_46:                               # %.thread199
                                        #   in Loop: Header=BB5_47 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 36
	addi.d	$a5, $a5, 40
	beq	$a6, $a0, .LBB5_66
.LBB5_47:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a5, 0
	beqz	$s6, .LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_47 Depth=1
	ld.d	$a1, $s0, 16
	mod.wu	$t0, $t1, $s6
	ld.w	$t2, $a5, -4
	sub.d	$t1, $t1, $t0
	add.d	$t0, $a1, $a0
	stx.w	$t1, $a1, $a0
	div.wu	$t1, $t2, $s6
	mul.d	$t3, $t1, $s6
	sub.w	$t2, $t2, $t3
	sltu	$t2, $zero, $t2
	add.d	$t1, $t1, $t2
	mul.w	$t2, $t1, $s6
	b	.LBB5_50
.LBB5_49:                               #   in Loop: Header=BB5_47 Depth=1
	ld.d	$a1, $s0, 16
	slli.d	$t0, $a3, 5
	ld.w	$t2, $a5, -4
	alsl.d	$t0, $a3, $t0, 2
	add.d	$t0, $a1, $t0
	stx.w	$t1, $a1, $a0
.LBB5_50:                               #   in Loop: Header=BB5_47 Depth=1
	ld.w	$t1, $a5, 8
	st.w	$t2, $t0, 4
	beqz	$s7, .LBB5_52
# %bb.51:                               #   in Loop: Header=BB5_47 Depth=1
	ld.w	$t3, $a5, 4
	mod.wu	$t4, $t1, $s7
	sub.w	$t1, $t1, $t4
	div.wu	$t4, $t3, $s7
	mul.d	$t5, $t4, $s7
	sub.w	$t5, $t3, $t5
	sltu	$t5, $zero, $t5
	add.d	$t4, $t4, $t5
	mul.w	$t4, $t4, $s7
	b	.LBB5_53
.LBB5_52:                               #   in Loop: Header=BB5_47 Depth=1
	ld.w	$t3, $a5, 4
	move	$t4, $t3
.LBB5_53:                               #   in Loop: Header=BB5_47 Depth=1
	st.w	$t1, $t0, 8
	st.w	$t4, $t0, 12
	beqz	$t2, .LBB5_55
# %bb.54:                               #   in Loop: Header=BB5_47 Depth=1
	bnez	$t4, .LBB5_59
	b	.LBB5_46
.LBB5_55:                               #   in Loop: Header=BB5_47 Depth=1
	beqz	$t4, .LBB5_46
# %bb.56:                               #   in Loop: Header=BB5_47 Depth=1
	beqz	$s6, .LBB5_58
# %bb.57:                               #   in Loop: Header=BB5_47 Depth=1
	div.wu	$t2, $t3, $s6
	mul.d	$t5, $t2, $s6
	sub.w	$t3, $t3, $t5
	sltu	$t3, $zero, $t3
	add.d	$t2, $t2, $t3
	mul.d	$t3, $t2, $s6
.LBB5_58:                               # %.thread201
                                        #   in Loop: Header=BB5_47 Depth=1
	st.w	$t3, $t0, 4
.LBB5_59:                               #   in Loop: Header=BB5_47 Depth=1
	bltu	$a7, $t4, .LBB5_45
# %bb.60:                               #   in Loop: Header=BB5_47 Depth=1
	add.d	$t2, $t1, $t4
	addi.w	$t2, $t2, -1
	bgeu	$t2, $a7, .LBB5_45
	b	.LBB5_46
.LBB5_61:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	b	.LBB5_20
.LBB5_62:
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	b	.LBB5_20
.LBB5_63:
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_70
.LBB5_64:
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	b	.LBB5_69
.LBB5_65:                               # %.critedge.preheader..critedge._crit_edge_crit_edge
	ld.d	$a1, $s0, 16
.LBB5_66:                               # %.critedge._crit_edge
	ld.w	$a0, $sp, 160
	st.w	$a0, $s0, 0
	addi.d	$a3, $sp, 12
	move	$a5, $s2
	pcaddu18i	$ra, %call36(cli_rawaddr)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	bnez	$a0, .LBB5_71
# %bb.67:                               # %.critedge._crit_edge
	ld.w	$a0, $sp, 12
	beqz	$a0, .LBB5_71
# %bb.68:
	pcalau12i	$a0, %pc_hi20(.L.str.255)
	addi.d	$a0, $a0, %pc_lo12(.L.str.255)
.LBB5_69:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_70:
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 16
	b	.LBB5_21
.LBB5_71:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB5_21
.Lfunc_end5:
	.size	cli_peheader, .Lfunc_end5-cli_peheader
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cli_scanpe: ctx == NULL\n"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Can't read DOS signature\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Invalid DOS signature\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Can't read new header address\n"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Broken.Executable"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"e_lfanew == %d\n"
	.size	.L.str.5, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Not a PE file\n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Can't lseek to e_lfanew\n"
	.size	.L.str.7, 25

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Can't read file header\n"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Invalid PE signature (probably NE file)\n"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"File type: DLL\n"
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"File type: Executable\n"
	.size	.L.str.11, 23

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Machine type: Unknown\n"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Machine type: 80386\n"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Machine type: 80486\n"
	.size	.L.str.14, 21

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Machine type: 80586\n"
	.size	.L.str.15, 21

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Machine type: R30000 (big-endian)\n"
	.size	.L.str.16, 35

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Machine type: R3000\n"
	.size	.L.str.17, 21

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Machine type: R4000\n"
	.size	.L.str.18, 21

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Machine type: R10000\n"
	.size	.L.str.19, 22

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Machine type: DEC Alpha AXP\n"
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Machine type: DEC Alpha AXP 64bit\n"
	.size	.L.str.21, 35

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Machine type: PowerPC\n"
	.size	.L.str.22, 23

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Machine type: IA64\n"
	.size	.L.str.23, 20

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Machine type: M68k\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Machine type: MIPS16\n"
	.size	.L.str.25, 22

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Machine type: MIPS+FPU\n"
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Machine type: MIPS16+FPU\n"
	.size	.L.str.27, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Machine type: Hitachi SH3\n"
	.size	.L.str.28, 27

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Machine type: Hitachi SH3-DSP\n"
	.size	.L.str.29, 31

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Machine type: Hitachi SH3-E\n"
	.size	.L.str.30, 29

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Machine type: Hitachi SH4\n"
	.size	.L.str.31, 27

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Machine type: Hitachi SH5\n"
	.size	.L.str.32, 27

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Machine type: ARM\n"
	.size	.L.str.33, 19

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Machine type: THUMB\n"
	.size	.L.str.34, 21

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Machine type: AM33\n"
	.size	.L.str.35, 20

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Machine type: Infineon TriCore\n"
	.size	.L.str.36, 32

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Machine type: CEF\n"
	.size	.L.str.37, 19

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Machine type: EFI Byte Code\n"
	.size	.L.str.38, 29

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Machine type: M32R\n"
	.size	.L.str.39, 20

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Machine type: CEE\n"
	.size	.L.str.40, 19

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Machine type: AMD64\n"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Unknown machine type in PE header (0x%x)\n"
	.size	.L.str.42, 42

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"PE file contains %d sections\n"
	.size	.L.str.43, 30

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"PE file contains no sections\n"
	.size	.L.str.44, 30

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"NumberOfSections: %d\n"
	.size	.L.str.45, 22

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"TimeDateStamp: %s"
	.size	.L.str.46, 18

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SizeOfOptionalHeader: %x\n"
	.size	.L.str.47, 26

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SizeOfOptionalHeader too small\n"
	.size	.L.str.48, 32

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Can't read optional file header\n"
	.size	.L.str.49, 33

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Incorrect SizeOfOptionalHeader for PE32+\n"
	.size	.L.str.50, 42

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Incorrect magic number in optional header\n"
	.size	.L.str.51, 43

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"9x compatibility mode\n"
	.size	.L.str.52, 23

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"File format: PE\n"
	.size	.L.str.53, 17

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"MajorLinkerVersion: %d\n"
	.size	.L.str.54, 24

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"MinorLinkerVersion: %d\n"
	.size	.L.str.55, 24

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"SizeOfCode: 0x%x\n"
	.size	.L.str.56, 18

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"SizeOfInitializedData: 0x%x\n"
	.size	.L.str.57, 29

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"SizeOfUninitializedData: 0x%x\n"
	.size	.L.str.58, 31

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"AddressOfEntryPoint: 0x%x\n"
	.size	.L.str.59, 27

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"BaseOfCode: 0x%x\n"
	.size	.L.str.60, 18

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"SectionAlignment: 0x%x\n"
	.size	.L.str.61, 24

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"FileAlignment: 0x%x\n"
	.size	.L.str.62, 21

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"MajorSubsystemVersion: %d\n"
	.size	.L.str.63, 27

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"MinorSubsystemVersion: %d\n"
	.size	.L.str.64, 27

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"SizeOfImage: 0x%x\n"
	.size	.L.str.65, 19

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"SizeOfHeaders: 0x%x\n"
	.size	.L.str.66, 21

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"NumberOfRvaAndSizes: %d\n"
	.size	.L.str.67, 25

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"File format: PE32+\n"
	.size	.L.str.68, 20

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Subsystem: Unknown\n"
	.size	.L.str.69, 20

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Subsystem: Native (svc)\n"
	.size	.L.str.70, 25

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Subsystem: Win32 GUI\n"
	.size	.L.str.71, 22

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"Subsystem: Win32 console\n"
	.size	.L.str.72, 26

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Subsystem: OS/2 console\n"
	.size	.L.str.73, 25

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"Subsystem: POSIX console\n"
	.size	.L.str.74, 26

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"Subsystem: Native Win9x driver\n"
	.size	.L.str.75, 32

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Subsystem: WinCE GUI\n"
	.size	.L.str.76, 22

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Subsystem: EFI application\n"
	.size	.L.str.77, 28

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"Subsystem: EFI driver\n"
	.size	.L.str.78, 23

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"Subsystem: EFI runtime driver\n"
	.size	.L.str.79, 31

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Unknown subsystem in PE header (0x%x)\n"
	.size	.L.str.80, 39

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"------------------------------------\n"
	.size	.L.str.81, 38

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"Bad virtual alignemnt\n"
	.size	.L.str.82, 23

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Bad file alignemnt\n"
	.size	.L.str.83, 20

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"fstat failed\n"
	.size	.L.str.84, 14

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Can't allocate memory for section headers\n"
	.size	.L.str.85, 43

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"Can't read section header\n"
	.size	.L.str.86, 27

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Possibly broken PE file\n"
	.size	.L.str.87, 25

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Found misaligned section, using 0x200\n"
	.size	.L.str.88, 39

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"Section %d\n"
	.size	.L.str.89, 12

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"Section name: %s\n"
	.size	.L.str.90, 18

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"Section data (from headers - in memory)\n"
	.size	.L.str.91, 41

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"VirtualSize: 0x%x 0x%x\n"
	.size	.L.str.92, 24

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"VirtualAddress: 0x%x 0x%x\n"
	.size	.L.str.93, 27

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"SizeOfRawData: 0x%x 0x%x\n"
	.size	.L.str.94, 26

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"PointerToRawData: 0x%x 0x%x\n"
	.size	.L.str.95, 29

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Section contains executable code\n"
	.size	.L.str.96, 34

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"Section contains free space\n"
	.size	.L.str.97, 29

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Section's memory is executable\n"
	.size	.L.str.98, 32

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Section's memory is writeable\n"
	.size	.L.str.99, 31

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"VirtualAddress is misaligned\n"
	.size	.L.str.100, 30

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Broken PE file - Section %d starts beyond the end of file (Offset@ %d, Total filesize %d)\n"
	.size	.L.str.101, 91

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"First section is in the wrong place\n"
	.size	.L.str.102, 37

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Virtually misplaced section (wrong order, overlapping, non contiguous)\n"
	.size	.L.str.103, 72

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"EntryPoint out of file\n"
	.size	.L.str.104, 24

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"EntryPoint offset: 0x%x (%d)\n"
	.size	.L.str.105, 30

	.type	.L.str.106,@object              # @.str.106
	.section	.rodata.cst16,"aM",@progbits,16
.L.str.106:
	.asciz	"GetProcAddress\000"
	.size	.L.str.106, 16

	.type	.L.str.107,@object              # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"W32.Parite.B"
	.size	.L.str.107, 13

	.type	.L__const.cli_scanpe.kzs,@object # @__const.cli_scanpe.kzs
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.cli_scanpe.kzs:
	.ascii	"\000\001\002\003\000\004\005\000\006\000\007\b"
	.size	.L__const.cli_scanpe.kzs, 12

	.type	.L.str.108,@object              # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"in kriz\n"
	.size	.L.str.108, 9

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"kriz: using #%d as size counter\n"
	.size	.L.str.109, 33

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"kriz: using #%d as pointer\n"
	.size	.L.str.110, 28

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"W32.Kriz"
	.size	.L.str.111, 9

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"kriz: loop out of bounds, corrupted sample?\n"
	.size	.L.str.112, 45

	.type	.L.str.113,@object              # @.str.113
	.section	.rodata,"a",@progbits
.L.str.113:
	.asciz	"\350,a\000\000"
	.size	.L.str.113, 6

	.type	.L.str.114,@object              # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"W32.Magistr.A.dam"
	.size	.L.str.114, 18

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"W32.Magistr.A"
	.size	.L.str.115, 14

	.type	.L.str.116,@object              # @.str.116
	.section	.rodata,"a",@progbits
.L.str.116:
	.asciz	"\350\004r\000\000"
	.size	.L.str.116, 6

	.type	.L.str.117,@object              # @.str.117
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.117:
	.asciz	"W32.Magistr.B.dam"
	.size	.L.str.117, 18

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"W32.Magistr.B"
	.size	.L.str.118, 14

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"Polipos: Checking %d xsect jump(s)\n"
	.size	.L.str.119, 36

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"W32.Polipos.A"
	.size	.L.str.120, 14

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"UPX/FSG/MEW: empty section found - assuming compression\n"
	.size	.L.str.121, 57

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"MEW: found MEW characteristics %08X + %08X + 5 = %08X\n"
	.size	.L.str.122, 55

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"MEW: lseek() failed\n"
	.size	.L.str.123, 21

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"MEW: Can't read 0xb0 bytes at 0x%x (%d) %d\n"
	.size	.L.str.124, 44

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"MEW: Win9x compatibility was set!\n"
	.size	.L.str.125, 35

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"MEW: Win9x compatibility was NOT set!\n"
	.size	.L.str.126, 39

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"MEW: ESI is not in proper section\n"
	.size	.L.str.127, 35

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"MEW: ssize %08x dsize %08x offdiff: %08x\n"
	.size	.L.str.128, 42

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"MEW: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.129, 33

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"PE.MEW.ExceededFileSize"
	.size	.L.str.130, 24

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"MEW: Size mismatch: %08x\n"
	.size	.L.str.131, 26

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"MEW: Can't read %d bytes [read: %d]\n"
	.size	.L.str.132, 37

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"MEW: %d (%08x) bytes read\n"
	.size	.L.str.133, 27

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"MEW: lzma proc out of bounds!\n"
	.size	.L.str.134, 31

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"MEW: Can't create file %s\n"
	.size	.L.str.135, 27

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"MEW: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.136, 50

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"MEW: Unpacked and rebuilt executable\n"
	.size	.L.str.137, 38

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"***** Scanning rebuilt PE file *****\n"
	.size	.L.str.138, 38

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"MEW: Unpacking failed\n"
	.size	.L.str.139, 23

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"Upack characteristics found.\n"
	.size	.L.str.140, 30

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"Upack: var set\n"
	.size	.L.str.141, 16

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"Upack: var NOT set\n"
	.size	.L.str.142, 20

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"Upack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.143, 35

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"PE.Upack.ExceededFileSize"
	.size	.L.str.144, 26

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"Upack: probably malformed pe-header, skipping to next unpacker\n"
	.size	.L.str.145, 64

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"Upack: Can't read raw data of section 0\n"
	.size	.L.str.146, 41

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"Upack: Can't read raw data of section 1\n"
	.size	.L.str.147, 41

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"Upack: Can't create file %s\n"
	.size	.L.str.148, 29

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"Upack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.149, 52

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"Upack: Unpacked and rebuilt executable\n"
	.size	.L.str.150, 40

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"Upack: Unpacking failed\n"
	.size	.L.str.151, 25

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"FSG: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.152, 33

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"PE.FSG.ExceededFileSize"
	.size	.L.str.153, 24

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"FSG: Size mismatch (ssize: %d, dsize: %d)\n"
	.size	.L.str.154, 43

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"FSG: xchg out of bounds (%x), giving up\n"
	.size	.L.str.155, 41

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"Can't read raw data of section %d\n"
	.size	.L.str.156, 35

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"FSG: New ESP out of bounds\n"
	.size	.L.str.157, 28

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"FSG: New ESP (%x) is wrong\n"
	.size	.L.str.158, 28

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"FSG: New stack out of bounds\n"
	.size	.L.str.159, 30

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"FSG: Bad destination buffer (edi is %x should be %x)\n"
	.size	.L.str.160, 54

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"FSG: Source buffer out of section bounds\n"
	.size	.L.str.161, 42

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"FSG: Array of functions out of bounds\n"
	.size	.L.str.162, 39

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"FSG: found old EP @%x\n"
	.size	.L.str.163, 23

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"FSG: Can't create file %s\n"
	.size	.L.str.164, 27

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"FSG: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.165, 50

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"FSG: Unpacked and rebuilt executable\n"
	.size	.L.str.166, 38

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"FSG: Successfully decompressed\n"
	.size	.L.str.167, 32

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"FSG: Unpacking failed\n"
	.size	.L.str.168, 23

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"FSG: Support data out of padding area\n"
	.size	.L.str.169, 39

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"Can't read %d bytes from padding area\n"
	.size	.L.str.170, 39

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"FSG: Bad destination (is %x should be %x)\n"
	.size	.L.str.171, 43

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"FSG: Original section %d is misaligned\n"
	.size	.L.str.172, 40

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"FSG: Original section %d is out of bounds\n"
	.size	.L.str.173, 43

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"FSG: Can't read raw data of section %d\n"
	.size	.L.str.174, 40

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"UPX: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.175, 33

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"PE.UPX.ExceededFileSize"
	.size	.L.str.176, 24

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"UPX: Size mismatch or dsize too big (ssize: %d, dsize: %d)\n"
	.size	.L.str.177, 60

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"UPX: Can't read raw data of section %d\n"
	.size	.L.str.178, 40

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"\021\333\021\311\001\333u\007\213\036\203\356\374\021\333\021\311\021\311u A\001\333"
	.size	.L.str.179, 25

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"UPX: Looks like a NRV2B decompression routine\n"
	.size	.L.str.180, 47

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"\203\360\377tx\321\370\211\305\353\013\001\333u\007\213\036\203\356\374\021\333\021\311"
	.size	.L.str.181, 25

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"UPX: Looks like a NRV2D decompression routine\n"
	.size	.L.str.182, 47

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"\353R1\311\203\350\003r\021\301\340\b\212\006F\203\360\377tu\321\370\211\305"
	.size	.L.str.183, 25

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"UPX: Looks like a NRV2E decompression routine\n"
	.size	.L.str.184, 47

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"UPX: UPX1 seems skewed by %d bytes\n"
	.size	.L.str.185, 36

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"UPX: Successfully decompressed\n"
	.size	.L.str.186, 32

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"UPX: Preferred decompressor failed\n"
	.size	.L.str.187, 36

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"UPX: NRV2B decompressor failed\n"
	.size	.L.str.188, 32

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"UPX: Successfully decompressed with NRV2B\n"
	.size	.L.str.189, 43

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"UPX: NRV2D decompressor failed\n"
	.size	.L.str.190, 32

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"UPX: Successfully decompressed with NRV2D\n"
	.size	.L.str.191, 43

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"UPX: NRV2E decompressor failed\n"
	.size	.L.str.192, 32

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"UPX: Successfully decompressed with NRV2E\n"
	.size	.L.str.193, 43

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"UPX: All decompressors failed\n"
	.size	.L.str.194, 31

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"UPX/FSG: Can't create file %s\n"
	.size	.L.str.195, 31

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"UPX/FSG: Can't write %d bytes\n"
	.size	.L.str.196, 31

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"UPX/FSG: Decompressed data saved in %s\n"
	.size	.L.str.197, 40

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"***** Scanning decompressed file *****\n"
	.size	.L.str.198, 40

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"Petite: v2.%d compression detected\n"
	.size	.L.str.199, 36

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"Petite: level zero compression is not supported yet\n"
	.size	.L.str.200, 53

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"Petite: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.201, 36

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"PE.Petite.ExceededFileSize"
	.size	.L.str.202, 27

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"Petite: Can't allocate %d bytes\n"
	.size	.L.str.203, 33

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"Petite: Can't create file %s\n"
	.size	.L.str.204, 30

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"Petite: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.205, 53

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"Petite: Unpacked and rebuilt executable\n"
	.size	.L.str.206, 41

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"Petite: Unpacking failed\n"
	.size	.L.str.207, 26

	.type	.L.str.208,@object              # @.str.208
	.section	.rodata,"a",@progbits
.L.str.208:
	.asciz	"\350\000\000\000\000\213\034$\203\303"
	.size	.L.str.208, 11

	.type	.L.str.209,@object              # @.str.209
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.209:
	.asciz	"PEspin: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.209, 36

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"PE.PEspin.ExceededFileSize"
	.size	.L.str.210, 27

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"PESpin: Can't read %d bytes\n"
	.size	.L.str.211, 29

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"PESpin: Can't create file %s\n"
	.size	.L.str.212, 30

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"PEspin: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.213, 53

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"PEspin: Unpacked and rebuilt executable\n"
	.size	.L.str.214, 41

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"PESpin: Size exceeded\n"
	.size	.L.str.215, 23

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"PE.Pespin.ExceededFileSize"
	.size	.L.str.216, 27

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"PEspin: Unpacking failed\n"
	.size	.L.str.217, 26

	.type	.L.str.218,@object              # @.str.218
	.section	.rodata,"a",@progbits
.L.str.218:
	.asciz	"U\213\354SVW`\350\000\000\000\000]\201\355l(@\000\271]4@\000\201\351\306(@\000\213\325\201\302\306(@\000\215:\213\3673\300\353\004\220\353\001\302\254"
	.size	.L.str.218, 52

	.type	.L.str.219,@object              # @.str.219
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.219:
	.asciz	"yC: Can't read %d bytes\n"
	.size	.L.str.219, 25

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"yC: Can't create file %s\n"
	.size	.L.str.220, 26

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"yC: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.221, 49

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"yC: Unpacked and rebuilt executable\n"
	.size	.L.str.222, 37

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"yC: Unpacking failed\n"
	.size	.L.str.223, 22

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"SU\213\3503\333\353"
	.size	.L.str.224, 8

	.type	.L.str.225,@object              # @.str.225
	.section	.rodata,"a",@progbits
.L.str.225:
	.asciz	"\350\000\000\000\000X-m\000\000\000P`3\311PXPP"
	.size	.L.str.225, 20

	.type	.L.str.226,@object              # @.str.226
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.226:
	.asciz	"WWPack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.226, 36

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"PE.WWPack.ExceededFileSize"
	.size	.L.str.227, 27

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"WWPack: Can't allocate %d bytes\n"
	.size	.L.str.228, 33

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"WWPack: Can't read %d bytes from headers\n"
	.size	.L.str.229, 42

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"WWPack: Can't read %d bytes from wwpack sect\n"
	.size	.L.str.230, 46

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"WWPack: Can't create file %s\n"
	.size	.L.str.231, 30

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"WWPack: Can't write %d bytes\n"
	.size	.L.str.232, 30

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"WWPack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.233, 53

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"WWPack: Unpacked and rebuilt executable\n"
	.size	.L.str.234, 41

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"WWPpack: Decompression failed\n"
	.size	.L.str.235, 31

	.type	.L.str.236,@object              # @.str.236
	.section	.rodata,"a",@progbits
.L.str.236:
	.asciz	"`\350\003\000\000\000\351\353"
	.size	.L.str.236, 9

	.type	.L.str.237,@object              # @.str.237
.L.str.237:
	.asciz	"h\000\000\000\000\303"
	.size	.L.str.237, 7

	.type	.L.str.238,@object              # @.str.238
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.238:
	.asciz	"Aspack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.238, 36

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"PE.Aspack.ExceededFileSize"
	.size	.L.str.239, 27

	.type	.L.str.240,@object              # @.str.240
.L.str.240:
	.asciz	"Aspack: Probably hacked/damaged Aspack file.\n"
	.size	.L.str.240, 46

	.type	.L.str.241,@object              # @.str.241
.L.str.241:
	.asciz	"Aspack: Can't create file %s\n"
	.size	.L.str.241, 30

	.type	.L.str.242,@object              # @.str.242
.L.str.242:
	.asciz	"Aspack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.242, 53

	.type	.L.str.243,@object              # @.str.243
.L.str.243:
	.asciz	"Aspack: Unpacked and rebuilt executable\n"
	.size	.L.str.243, 41

	.type	.L.str.244,@object              # @.str.244
.L.str.244:
	.asciz	"Aspack: Unpacking failed\n"
	.size	.L.str.244, 26

	.type	.L.str.245,@object              # @.str.245
	.section	.rodata,"a",@progbits
.L.str.245:
	.asciz	"\234`\350\000\000\000\000]\270\007\000\000\000"
	.size	.L.str.245, 14

	.type	.L.str.246,@object              # @.str.246
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.246:
	.asciz	"NsPack: Found *start_of_stuff @delta-%x\n"
	.size	.L.str.246, 41

	.type	.L.str.247,@object              # @.str.247
.L.str.247:
	.asciz	"NsPack: Sizes exceeded (%lu > %lu)\n"
	.size	.L.str.247, 36

	.type	.L.str.248,@object              # @.str.248
.L.str.248:
	.asciz	"PE.NsPack.ExceededFileSize"
	.size	.L.str.248, 27

	.type	.L.str.249,@object              # @.str.249
.L.str.249:
	.asciz	"NsPack: OEP = %08x\n"
	.size	.L.str.249, 20

	.type	.L.str.250,@object              # @.str.250
.L.str.250:
	.asciz	"NsPack: Can't create file %s\n"
	.size	.L.str.250, 30

	.type	.L.str.251,@object              # @.str.251
.L.str.251:
	.asciz	"NsPack: Unpacked and rebuilt executable saved in %s\n"
	.size	.L.str.251, 53

	.type	.L.str.252,@object              # @.str.252
.L.str.252:
	.asciz	"NsPack: Unpacked and rebuilt executable\n"
	.size	.L.str.252, 41

	.type	.L.str.253,@object              # @.str.253
.L.str.253:
	.asciz	"NsPack: Unpacking failed\n"
	.size	.L.str.253, 26

	.type	.L.str.254,@object              # @.str.254
.L.str.254:
	.asciz	"in cli_peheader\n"
	.size	.L.str.254, 17

	.type	.L.str.255,@object              # @.str.255
.L.str.255:
	.asciz	"Broken PE file\n"
	.size	.L.str.255, 16

	.type	.L.str.256,@object              # @.str.256
.L.str.256:
	.asciz	"cli_md5sect: skipping md5 calculation for too big section\n"
	.size	.L.str.256, 59

	.type	.L.str.257,@object              # @.str.257
.L.str.257:
	.asciz	"cli_md5sect: out of memory\n"
	.size	.L.str.257, 28

	.type	.L.str.258,@object              # @.str.258
.L.str.258:
	.asciz	"cli_md5sect: unable to read section data\n"
	.size	.L.str.258, 42

	.type	.L.str.259,@object              # @.str.259
.L.str.259:
	.asciz	"cli_seeksect: lseek() failed\n"
	.size	.L.str.259, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
