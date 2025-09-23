	.file	"libclamav_spin.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function unspin
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	253                             # 0xfd
	.byte	252                             # 0xfc
	.byte	251                             # 0xfb
	.byte	250                             # 0xfa
	.byte	249                             # 0xf9
	.byte	248                             # 0xf8
	.byte	247                             # 0xf7
	.byte	246                             # 0xf6
	.byte	245                             # 0xf5
	.byte	244                             # 0xf4
	.byte	243                             # 0xf3
	.byte	242                             # 0xf2
	.byte	241                             # 0xf1
.LCPI0_1:
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
.LCPI0_2:
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
	.globl	unspin
	.p2align	5
	.type	unspin,@function
unspin:                                 # @unspin
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
	move	$s5, $a6
	move	$fp, $a5
	move	$s8, $a4
	move	$s0, $a3
	move	$s2, $a2
	move	$s6, $a1
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 5
	alsl.d	$s3, $s0, $a0, 2
	add.d	$s1, $s2, $s3
	ld.wu	$a0, $s1, 12
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 1
	beqz	$s7, .LBB0_27
# %bb.1:
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.wu	$a0, $s1, 8
	ld.wu	$a2, $s1, 12
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	add.d	$a1, $s4, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s1, 0
	bstrpick.d	$s5, $s8, 31, 0
	sub.d	$s4, $s5, $a0
	add.d	$fp, $s7, $s4
	ld.bu	$a0, $fp, 219
	ori	$a1, $zero, 187
	bne	$a0, $a1, .LBB0_23
# %bb.2:
	ld.bu	$a0, $fp, 224
	ori	$a1, $zero, 185
	bne	$a0, $a1, .LBB0_23
# %bb.3:
	ld.w	$a0, $fp, 225
	lu12i.w	$a1, 1
	ori	$a2, $a1, 510
	bne	$a0, $a2, .LBB0_23
# %bb.4:
	ld.bu	$s8, $fp, 220
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltz	$s4, .LBB0_8
# %bb.5:
	ld.wu	$a0, $s1, 12
	lu12i.w	$a2, 3
	ori	$a1, $a2, 482
	bltu	$a0, $a1, .LBB0_8
# %bb.6:
	add.d	$a1, $s4, $a1
	bltu	$a0, $a1, .LBB0_8
# %bb.7:
	ori	$a1, $a2, 539
	add.d	$a1, $s4, $a1
	bgeu	$a0, $a1, .LBB0_9
.LBB0_8:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_25
.LBB0_9:
	ld.bu	$a0, $fp, 480
	ori	$a1, $zero, 184
	beq	$a0, $a1, .LBB0_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 3
.LBB0_11:
	ld.bu	$a0, $fp, 483
	andi	$a0, $a0, 32
	ori	$a1, $a2, 535
	beqz	$a0, .LBB0_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$a2, 3
.LBB0_13:                               # %iter.check
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	add.d	$a6, $fp, $a1
	addi.d	$a0, $s8, 16
	vreplgr2vr.b	$vr1, $s8
	vadd.b	$vr0, $vr1, $vr0
	ori	$a1, $a2, 467
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_1)
	add.d	$a1, $s4, $a1
	lu12i.w	$a5, 1
	ori	$a2, $a5, 496
	vrepli.b	$vr2, -16
	.p2align	4, , 16
.LBB0_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $s7, $a1
	vshuf.b	$vr4, $vr0, $vr0, $vr1
	vxor.v	$vr3, $vr3, $vr4
	vstx	$vr3, $s7, $a1
	vadd.b	$vr0, $vr0, $vr2
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, -16
	bnez	$a2, .LBB0_14
# %bb.15:                               # %vec.epilog.ph
	addi.d	$a1, $s8, 8
	vinsgr2vr.b	$vr0, $a0, 0
	vinsgr2vr.b	$vr0, $a0, 1
	vinsgr2vr.b	$vr0, $a0, 2
	vinsgr2vr.b	$vr0, $a0, 3
	vinsgr2vr.b	$vr0, $a0, 4
	vinsgr2vr.b	$vr0, $a0, 5
	vinsgr2vr.b	$vr0, $a0, 6
	vinsgr2vr.b	$vr0, $a0, 7
	lu12i.w	$a0, -8209
	ori	$a0, $a0, 3840
	lu32i.d	$a0, -328708
	lu52i.d	$a0, $a0, -97
	vreplgr2vr.d	$vr1, $a0
	ori	$a0, $a5, 4075
	ldx.d	$a2, $fp, $a0
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI0_2)
	vadd.b	$vr0, $vr0, $vr1
	add.d	$a0, $fp, $a0
	vinsgr2vr.d	$vr1, $a2, 0
	vshuf.b	$vr0, $vr0, $vr0, $vr2
	ori	$a2, $a5, 4074
	ldx.b	$a3, $fp, $a2
	vxor.v	$vr0, $vr1, $vr0
	vstelm.d	$vr0, $a0, 0, 0
	addi.d	$a0, $s8, 7
	xor	$a1, $a3, $a1
	ori	$a3, $a5, 4073
	ldx.b	$a4, $fp, $a3
	stx.b	$a1, $fp, $a2
	ori	$a1, $a5, 4072
	ldx.b	$a2, $fp, $a1
	xor	$a0, $a4, $a0
	stx.b	$a0, $fp, $a3
	addi.d	$a0, $s8, 6
	xor	$a0, $a2, $a0
	ori	$a2, $a5, 4071
	ldx.b	$a3, $fp, $a2
	stx.b	$a0, $fp, $a1
	addi.d	$a0, $s8, 5
	addi.d	$a1, $s8, 4
	xor	$a0, $a3, $a0
	stx.b	$a0, $fp, $a2
	ori	$a0, $a5, 4070
	ldx.b	$a2, $fp, $a0
	addi.d	$a3, $s8, 3
	ori	$a4, $a5, 4069
	ldx.b	$a5, $fp, $a4
	xor	$a1, $a2, $a1
	ldptr.w	$a2, $fp, 9968
	stx.b	$a1, $fp, $a0
	xor	$a0, $a5, $a3
	ori	$a1, $zero, 1440
	stx.b	$a0, $fp, $a4
	bne	$a2, $a1, .LBB0_23
# %bb.16:
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1771
	ldx.w	$s8, $fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 1440
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 725
	addi.w	$a1, $zero, -1440
	lu12i.w	$a2, -474328
	ori	$a2, $a2, 2100
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	andi	$a3, $s8, 1
	sltui	$a3, $a3, 1
	bstrpick.d	$a4, $s8, 31, 1
	xor	$a5, $a4, $a2
	ldx.b	$a6, $s7, $a0
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$s8, $a3, $a5
	xor	$a3, $a6, $s8
	stx.b	$a3, $s7, $a0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	slli.d	$a3, $a1, 31
	addi.d	$a0, $a0, 1
	bgez	$a3, .LBB0_17
# %bb.18:
	ld.w	$a0, $fp, 1065
	sub.w	$a1, $s6, $a0
	bgeu	$a1, $s6, .LBB0_28
# %bb.19:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s4, $a0, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(summit)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s1, 8
	ld.wu	$a2, $s1, 12
	move	$s8, $a0
	add.d	$a0, $fp, $a1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	blt	$s6, $a0, .LBB0_22
# %bb.20:
	ld.wu	$a0, $s1, 8
	ld.wu	$a1, $s1, 0
	add.d	$a0, $a0, $s5
	sub.d	$fp, $a0, $a1
	lu12i.w	$a0, -4
	ori	$a0, $a0, 3577
	blt	$fp, $a0, .LBB0_22
# %bb.21:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 523
	add.d	$a0, $fp, $a0
	bgeu	$s6, $a0, .LBB0_29
.LBB0_22:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB0_25
.LBB0_23:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_24:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
.LBB0_25:                               # %.critedge602
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %.critedge602
	ori	$a0, $zero, 1
.LBB0_27:                               # %.critedge602
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
.LBB0_28:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_25
.LBB0_29:
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s5, $s1, $fp
	lu12i.w	$a0, 3
	ori	$a0, $a0, 519
	add.d	$a0, $s5, $a0
	ld.w	$s7, $a0, 0
	sub.w	$s8, $s4, $s8
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB0_37
# %bb.30:                               # %.lr.ph666.preheader
	move	$a1, $zero
	lu12i.w	$a0, -76742
	ori	$a0, $a0, 3889
	b	.LBB0_32
.LBB0_31:                               # %.loopexit643
                                        #   in Loop: Header=BB0_32 Depth=1
	addi.d	$a1, $a1, 1
	bstrpick.d	$s7, $s7, 31, 1
	beq	$a1, $s0, .LBB0_37
.LBB0_32:                               # %.lr.ph666
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
	andi	$a2, $s7, 1
	beqz	$a2, .LBB0_31
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	slli.d	$a2, $a1, 5
	alsl.d	$a2, $a1, $a2, 2
	add.d	$a3, $s2, $a2
	ld.w	$a2, $a3, 12
	addi.w	$a4, $a2, -1
	bgeu	$a4, $s6, .LBB0_50
# %bb.34:                               #   in Loop: Header=BB0_32 Depth=1
	ld.wu	$a3, $a3, 8
	add.d	$a4, $a3, $a2
	bltu	$s6, $a4, .LBB0_50
# %bb.35:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_32 Depth=1
	add.d	$a3, $s1, $a3
	move	$a4, $s8
.LBB0_36:                               # %.lr.ph
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a2, -1
	andi	$a5, $a4, 1
	sltui	$a5, $a5, 1
	bstrpick.d	$a4, $a4, 31, 1
	xor	$a6, $a4, $a0
	ld.b	$a7, $a3, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	xor	$a5, $a7, $a4
	st.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB0_36
	b	.LBB0_31
.LBB0_37:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 1604
	ori	$s1, $zero, 384
	bne	$a0, $s1, .LBB0_24
# %bb.38:
	ld.w	$s7, $s5, 1616
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 384
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltu	$s6, $s1, .LBB0_22
# %bb.39:
	lu12i.w	$a0, -3
	ori	$a0, $a0, 1837
	blt	$fp, $a0, .LBB0_22
# %bb.40:                               # %.preheader641.preheader
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2259
	move	$s8, $s5
	add.d	$a0, $s5, $a0
	addi.w	$a1, $zero, -384
	lu12i.w	$a2, -76742
	ori	$a2, $a2, 3890
.LBB0_41:                               # %.preheader641
                                        # =>This Inner Loop Header: Depth=1
	andi	$a3, $s7, 1
	sltui	$a3, $a3, 1
	bstrpick.d	$a4, $s7, 31, 1
	xor	$a5, $a4, $a2
	ld.b	$a6, $a0, 0
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$s7, $a3, $a5
	xor	$a3, $a6, $s7
	st.b	$a3, $a0, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	slli.d	$a3, $a1, 31
	addi.d	$a0, $a0, 1
	bgez	$a3, .LBB0_41
# %bb.42:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2269
	ldx.w	$a0, $s8, $a0
	ori	$s1, $zero, 417
	bne	$a0, $s1, .LBB0_24
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 417
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltu	$s6, $s1, .LBB0_57
# %bb.44:
	addi.w	$a0, $zero, -1748
	blt	$fp, $a0, .LBB0_57
# %bb.45:                               # %.preheader640.preheader
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2284
	add.d	$s6, $s8, $a0
	addi.d	$fp, $s8, 1748
	ori	$s1, $zero, 417
.LBB0_46:                               # %.preheader640
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 0
	andi	$a1, $s1, 255
	addi.d	$a3, $sp, 84
	move	$a2, $s6
	pcaddu18i	$ra, %call36(exec86)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 84
	st.b	$a0, $fp, 0
	bnez	$a1, .LBB0_58
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	addi.w	$s1, $s1, -1
	addi.d	$fp, $fp, 1
	bnez	$s1, .LBB0_46
# %bb.48:                               # %.split
	ld.w	$s6, $s8, 1777
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB0_60
# %bb.49:                               # %.lr.ph678.preheader
	move	$fp, $zero
	addi.d	$s7, $s8, 1877
	b	.LBB0_52
.LBB0_50:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_26
.LBB0_51:                               # %.loopexit
                                        #   in Loop: Header=BB0_52 Depth=1
	addi.d	$fp, $fp, 1
	bstrpick.d	$s6, $s6, 31, 1
	beq	$fp, $s0, .LBB0_60
.LBB0_52:                               # %.lr.ph678
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
	andi	$a0, $s6, 1
	beqz	$a0, .LBB0_51
# %bb.53:                               # %.preheader639
                                        #   in Loop: Header=BB0_52 Depth=1
	slli.d	$a0, $fp, 5
	alsl.d	$a0, $fp, $a0, 2
	add.d	$a0, $s2, $a0
	ld.w	$s1, $a0, 12
	beqz	$s1, .LBB0_51
# %bb.54:                               # %.lr.ph675.preheader
                                        #   in Loop: Header=BB0_52 Depth=1
	ld.wu	$a0, $a0, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
.LBB0_55:                               # %.lr.ph675
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s4, 0
	andi	$a1, $s1, 255
	addi.d	$a3, $sp, 80
	move	$a2, $s7
	pcaddu18i	$ra, %call36(exec86)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 80
	st.b	$a0, $s4, 0
	bnez	$a1, .LBB0_59
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=2
	addi.w	$s1, $s1, -1
	addi.d	$s4, $s4, 1
	bnez	$s1, .LBB0_55
	b	.LBB0_51
.LBB0_57:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB0_25
.LBB0_58:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB0_25
.LBB0_59:                               # %.thread616
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB0_25
.LBB0_60:                               # %._crit_edge679
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 97
	ldx.w	$a1, $s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_26
# %bb.61:                               # %.preheader638
	blez	$s0, .LBB0_73
# %bb.62:                               # %.lr.ph683
	addi.d	$fp, $s2, 12
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $zero
	move	$s6, $zero
	move	$s4, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_65 Depth=1
	ld.wu	$a0, $fp, -4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_64:                               #   in Loop: Header=BB0_65 Depth=1
	add.w	$s4, $s7, $s4
	bstrpick.d	$s5, $s5, 31, 1
	addi.w	$s6, $s6, 1
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, 36
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $s1, .LBB0_74
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	andi	$a1, $s5, 1
	sltui	$a0, $a1, 1
	addi.d	$a2, $fp, -8
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a2
	ld.wu	$a0, $a0, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 32
	addi.w	$s7, $a0, 0
	beqz	$a2, .LBB0_69
# %bb.66:                               #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a3, $a2, 24
	beqz	$a3, .LBB0_69
# %bb.67:                               #   in Loop: Header=BB0_65 Depth=1
	bltu	$a3, $a0, .LBB0_92
# %bb.68:                               #   in Loop: Header=BB0_65 Depth=1
	sub.d	$a2, $a3, $a0
	bltu	$a2, $s4, .LBB0_92
.LBB0_69:                               #   in Loop: Header=BB0_65 Depth=1
	beqz	$a1, .LBB0_63
# %bb.70:                               #   in Loop: Header=BB0_65 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s1
	beqz	$a0, .LBB0_99
# %bb.71:                               #   in Loop: Header=BB0_65 Depth=1
	ld.w	$a2, $fp, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, -4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s1
	ld.w	$a2, $fp, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	move	$a3, $s7
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_unfsg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_64
# %bb.72:
	addi.w	$s6, $s6, 1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_100
.LBB0_73:
	move	$s4, $zero
.LBB0_74:                               # %._crit_edge684
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4078
	ldx.w	$s6, $s8, $a0
	beqz	$s6, .LBB0_83
# %bb.75:                               # %.preheader637
	move	$s5, $zero
	blez	$s0, .LBB0_80
# %bb.76:                               # %.lr.ph686.preheader
	move	$a0, $s0
	move	$a1, $s2
	b	.LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=1
	addi.w	$s5, $s5, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	beqz	$a0, .LBB0_82
.LBB0_78:                               # %.lr.ph686
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	bltu	$s6, $a2, .LBB0_77
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=1
	ld.w	$a3, $a1, 12
	add.w	$a2, $a3, $a2
	bgeu	$s6, $a2, .LBB0_77
.LBB0_80:                               # %._crit_edge687
	beq	$s5, $s0, .LBB0_82
# %bb.81:
	ori	$a0, $zero, 1
	sll.w	$s1, $a0, $s5
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $s1, $a0
	beqz	$a0, .LBB0_110
.LBB0_82:                               # %._crit_edge687.thread
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_83:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_94
# %bb.84:
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_93
# %bb.85:                               # %.preheader
	move	$s3, $a0
	blez	$s0, .LBB0_89
# %bb.86:
	st.w	$zero, $s3, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$s1, $a0, 1
	sltui	$a0, $s1, 1
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 12
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a3, $s2, 0
	ldx.wu	$a2, $s2, $a0
	ld.w	$a0, $s2, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$a3, $s3, 0
	st.w	$a2, $s3, 12
	st.w	$a0, $s3, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$fp, $s3, 12
	beqz	$s1, .LBB0_88
# %bb.87:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_88:
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB0_106
.LBB0_89:                               # %._crit_edge695
	lu12i.w	$a3, 1024
	lu12i.w	$a4, 1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	bnez	$a0, .LBB0_91
# %bb.90:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
.LBB0_91:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB0_27
.LBB0_92:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_100
.LBB0_93:                               # %.thread631
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_94:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB0_105
# %bb.95:                               # %.lr.ph698
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$fp, $a0, 1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_97 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	beqz	$s0, .LBB0_105
.LBB0_97:                               # =>This Inner Loop Header: Depth=1
	beqz	$fp, .LBB0_96
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_96
.LBB0_99:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_100:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB0_105
# %bb.101:                              # %.lr.ph703.preheader
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_103 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 8
	beqz	$s6, .LBB0_105
.LBB0_103:                              # %.lr.ph703
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_102
# %bb.104:                              #   in Loop: Header=BB0_103 Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_102
.LBB0_105:                              # %._crit_edge699
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_26
.LBB0_106:                              # %.lr.ph694.peel.next.preheader
	add.d	$fp, $s4, $fp
	addi.d	$s1, $s0, -1
	addi.d	$s5, $s3, 48
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $a0, 8
	addi.d	$s2, $s2, 48
	b	.LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$fp, $fp, $s7
	addi.d	$s1, $s1, -1
	addi.d	$s5, $s5, 36
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, 36
	beqz	$s1, .LBB0_89
.LBB0_108:                              # %.lr.ph694.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s5, -36
	ld.w	$a1, $s5, -40
	add.d	$a0, $a0, $a1
	st.w	$a0, $s5, -4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$s8, $a0, 2
	sltui	$a0, $s8, 1
	addi.d	$a1, $s2, -8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	ld.w	$a3, $s2, -12
	ld.w	$a4, $s2, -8
	ld.wu	$a2, $a0, 0
	ld.d	$a1, $s6, 0
	st.w	$a3, $s5, -12
	st.w	$a4, $s5, -8
	st.w	$a2, $s5, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$s7, $s5, 0
	beqz	$s8, .LBB0_107
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_107
.LBB0_110:
	slli.d	$a0, $s5, 5
	alsl.d	$a0, $s5, $a0, 2
	add.d	$fp, $s2, $a0
	ldx.w	$a2, $s2, $a0
	ld.w	$a0, $fp, 4
	sub.w	$a3, $s6, $a2
	sub.w	$a5, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $s5
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 4
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_113
# %bb.111:
	move	$s7, $a0
	ld.wu	$a0, $fp, 8
	ld.w	$a2, $fp, 0
	bstrpick.d	$s8, $s6, 31, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	sub.d	$a0, $s6, $a2
	bstrpick.d	$a2, $a0, 31, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 0
	ld.w	$a2, $fp, 4
	add.d	$a0, $s7, $s8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a1, $s6
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 8
	ld.wu	$a2, $fp, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s8
	sub.d	$a0, $a0, $a2
	ld.w	$a3, $fp, 12
	ld.w	$a4, $fp, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	sub.d	$a5, $s6, $a2
	sub.w	$a2, $a3, $a5
	sub.w	$a3, $a4, $a5
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_unfsg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_114
# %bb.112:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_113:
	ld.w	$a0, $fp, 12
	b	.LBB0_115
.LBB0_114:
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	stx.d	$s7, $a1, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	or	$a0, $s1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
.LBB0_115:
	add.w	$s4, $a0, $s4
	b	.LBB0_83
.Lfunc_end0:
	.size	unspin, .Lfunc_end0-unspin
                                        # -- End function
	.p2align	5                               # -- Begin function summit
	.type	summit,@function
summit:                                 # @summit
# %bb.0:
	addi.w	$a2, $zero, -1
	beqz	$a1, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	lu12i.w	$a3, 491546
	ori	$a3, $a3, 264
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a0, 0
	slli.d	$a5, $a5, 8
	bstrpick.d	$a5, $a5, 15, 8
	slli.d	$a5, $a5, 8
	xor	$a4, $a5, $a4
	bstrpick.d	$a4, $a4, 31, 3
	bstrpick.d	$a5, $a2, 15, 8
	xor	$a4, $a5, $a4
	add.d	$a4, $a4, $a3
	xor	$a4, $a4, $a2
	rotr.w	$a4, $a4, $a2
	bstrpick.d	$a5, $a4, 15, 8
	xor	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	xor	$a2, $a2, $a4
	rotr.w	$a2, $a2, $a4
	bstrpick.d	$a5, $a2, 15, 8
	xor	$a4, $a5, $a4
	add.d	$a4, $a4, $a3
	xor	$a4, $a4, $a2
	rotr.w	$a4, $a4, $a2
	bstrpick.d	$a5, $a4, 15, 8
	xor	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	xor	$a2, $a2, $a4
	rotr.w	$a2, $a2, $a4
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB1_2
.LBB1_3:                                # %._crit_edge
	move	$a0, $a2
	ret
.Lfunc_end1:
	.size	summit, .Lfunc_end1-summit
                                        # -- End function
	.p2align	5                               # -- Begin function exec86
	.type	exec86,@function
exec86:                                 # @exec86
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a0
	st.w	$zero, $a3, 0
	ori	$a0, $zero, 191
	ori	$a4, $zero, 50
	ori	$a5, $zero, 144
	pcalau12i	$a3, %pc_hi20(.LJTI2_0)
	addi.d	$a6, $a3, %pc_lo12(.LJTI2_0)
	move	$t5, $zero
	ori	$a7, $zero, 36
	ori	$t0, $zero, 247
	ori	$t1, $zero, 192
	ori	$t2, $zero, 8
	ori	$t3, $zero, 235
	ori	$t4, $zero, 2
	ori	$t6, $zero, 254
	b	.LBB2_4
.LBB2_1:                                #   in Loop: Header=BB2_4 Depth=1
	add.d	$s0, $s0, $a1
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	addi.w	$t5, $t5, 2
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	bge	$t5, $a7, .LBB2_26
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a2, $t5
	addi.w	$t7, $t5, 1
	blt	$a0, $a3, .LBB2_8
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$t8, $a3, -2
	bltu	$a4, $t8, .LBB2_18
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a6, $t8
	add.d	$t8, $a6, $t8
	jr	$t8
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	ldx.b	$a3, $a2, $t7
	add.d	$s0, $a3, $s0
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
	bge	$t0, $a3, .LBB2_12
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$t8, $a3, -248
	bltu	$t8, $t4, .LBB2_19
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $t6, .LBB2_31
# %bb.11:                               #   in Loop: Header=BB2_4 Depth=1
	ldx.bu	$a3, $a2, $t7
	addi.d	$a3, $a3, -192
	sltu	$a3, $zero, $a3
	sub.d	$a3, $zero, $a3
	ori	$a3, $a3, 1
	add.d	$s0, $a3, $s0
	b	.LBB2_2
.LBB2_12:                               #   in Loop: Header=BB2_4 Depth=1
	beq	$a3, $t1, .LBB2_16
# %bb.13:                               #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $t3, .LBB2_31
# %bb.14:                               #   in Loop: Header=BB2_4 Depth=1
	addi.d	$t7, $t5, 2
.LBB2_15:                               #   in Loop: Header=BB2_4 Depth=1
	addi.w	$t5, $t7, 1
	b	.LBB2_3
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
	add.d	$a3, $a2, $t5
	ld.bu	$t8, $a3, 2
	ldx.bu	$s1, $a2, $t7
	andi	$a3, $s0, 255
	andi	$t8, $t8, 7
	sub.d	$t7, $t2, $t8
	bne	$s1, $t1, .LBB2_24
# %bb.17:                               #   in Loop: Header=BB2_4 Depth=1
	sll.w	$t8, $a3, $t8
	srl.w	$a3, $a3, $t7
	b	.LBB2_25
.LBB2_18:                               #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $a5, .LBB2_31
.LBB2_19:                               #   in Loop: Header=BB2_4 Depth=1
	move	$t5, $t7
	b	.LBB2_3
.LBB2_20:                               #   in Loop: Header=BB2_4 Depth=1
	ldx.b	$a3, $a2, $t7
	xor	$s0, $a3, $s0
	b	.LBB2_2
.LBB2_21:                               #   in Loop: Header=BB2_4 Depth=1
	xor	$s0, $s0, $a1
	b	.LBB2_2
.LBB2_22:                               #   in Loop: Header=BB2_4 Depth=1
	sub.d	$s0, $s0, $a1
	b	.LBB2_2
.LBB2_23:                               #   in Loop: Header=BB2_4 Depth=1
	ldx.b	$a3, $a2, $t7
	sub.d	$s0, $s0, $a3
	b	.LBB2_2
.LBB2_24:                               #   in Loop: Header=BB2_4 Depth=1
	srl.w	$t8, $a3, $t8
	sll.w	$a3, $a3, $t7
.LBB2_25:                               #   in Loop: Header=BB2_4 Depth=1
	or	$s0, $a3, $t8
	addi.w	$t5, $t5, 3
	b	.LBB2_3
.LBB2_26:
	ori	$a0, $zero, 36
	bne	$t5, $a0, .LBB2_28
# %bb.27:
	ld.bu	$a0, $a2, 36
	ori	$a1, $zero, 170
	beq	$a0, $a1, .LBB2_30
.LBB2_28:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB2_29:                               # %.sink.split
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
.LBB2_30:
	ext.w.b	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_31:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB2_29
.Lfunc_end2:
	.size	exec86, .Lfunc_end2-exec86
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_1-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_15-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_22-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_21-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_20-.LJTI2_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in unspin\n"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"spin: Not spinned or bad version\n"
	.size	.L.str.1, 34

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"spin: Key8 is %x, Len is %x\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"spin: len or key out of bounds, giving up\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"spin: prolly not spinned, expect failure\n"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"spin: password protected, expect failure\n"
	.size	.L.str.5, 42

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"spin: Key is %x, Len is %x\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"spin: crc out of bounds, giving up\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"spin: key out of bounds, giving up\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"spin: Key32 is %x - XORbitmap is %x\n"
	.size	.L.str.9, 37

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"spin: Decrypting sects (xor)\n"
	.size	.L.str.10, 30

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"spin: sect %d out of file, giving up\n"
	.size	.L.str.11, 38

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"spin: done\n"
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"spin: POLY1 len is %x\n"
	.size	.L.str.13, 23

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"spin: poly1 out of bounds\n"
	.size	.L.str.14, 27

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"spin: cannot exec poly1\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"spin: POLYbitmap is %x - decrypting sects (poly)\n"
	.size	.L.str.16, 50

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"spin: cannot exec section\n"
	.size	.L.str.18, 27

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"spin: Compression bitmap is %x\n"
	.size	.L.str.19, 32

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"spin: section %d size exceeded (%u, %lu)\n"
	.size	.L.str.20, 42

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"spin: malloc(%d) failed\n"
	.size	.L.str.21, 25

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"spin: Growing sect%d: was %x will be %x\n"
	.size	.L.str.22, 41

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"spin: Unpack failure\n"
	.size	.L.str.23, 22

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"spin: Not growing sect%d\n"
	.size	.L.str.24, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"spin: decompression complete\n"
	.size	.L.str.25, 30

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"spin: Resources (sect%d) appear to be compressed\n\tuncompressed offset %x, len %x\n\tcompressed offset %x, len %x\n"
	.size	.L.str.26, 112

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"spin: Failed to grow resources, continuing anyway\n"
	.size	.L.str.27, 51

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"spin: Resources grown\n"
	.size	.L.str.28, 23

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"spin: No res?!\n"
	.size	.L.str.29, 16

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"spin: Cannot write unpacked file\n"
	.size	.L.str.30, 34

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"spin: free bitmap is %x\n"
	.size	.L.str.31, 25

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"spin: bogus opcode %x\n"
	.size	.L.str.32, 23

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"spin: bad emucode\n"
	.size	.L.str.33, 19

	.section	".note.GNU-stack","",@progbits
	.addrsig
