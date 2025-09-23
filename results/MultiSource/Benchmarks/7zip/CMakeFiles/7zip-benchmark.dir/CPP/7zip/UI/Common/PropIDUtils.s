	.file	"PropIDUtils.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z18ConvertUInt32ToHexjPw
.LCPI0_0:
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	0                               # 0x0
.LCPI0_1:
	.word	0                               # 0x0
	.word	24                              # 0x18
	.word	20                              # 0x14
	.word	16                              # 0x10
.LCPI0_2:
	.word	28                              # 0x1c
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	15                              # 0xf
.LCPI0_3:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI0_4:
	.word	2684354560                      # 0xa0000000
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.text
	.globl	_Z18ConvertUInt32ToHexjPw
	.p2align	5
	.type	_Z18ConvertUInt32ToHexjPw,@function
_Z18ConvertUInt32ToHexjPw:              # @_Z18ConvertUInt32ToHexjPw
# %bb.0:
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	vreplgr2vr.w	$vr1, $a0
	vsrl.w	$vr0, $vr1, $vr0
	vrepli.w	$vr2, 15
	vand.v	$vr0, $vr0, $vr2
	vslti.wu	$vr2, $vr0, 10
	vrepli.w	$vr3, 48
	vor.v	$vr4, $vr0, $vr3
	vrepli.w	$vr5, 55
	vadd.w	$vr0, $vr0, $vr5
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr6, $a2, %pc_lo12(.LCPI0_1)
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr7, $a2, %pc_lo12(.LCPI0_2)
	vbitsel.v	$vr0, $vr0, $vr4, $vr2
	vst	$vr0, $a1, 16
	vsrl.w	$vr0, $vr1, $vr6
	vsrl.w	$vr1, $vr0, $vr7
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	vld	$vr2, $a2, %pc_lo12(.LCPI0_3)
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	vld	$vr4, $a2, %pc_lo12(.LCPI0_4)
	vand.v	$vr0, $vr0, $vr7
	vshuf.w	$vr2, $vr0, $vr1
	vinsgr2vr.w	$vr0, $a0, 0
	vslt.wu	$vr0, $vr0, $vr4
	vor.v	$vr1, $vr2, $vr3
	vadd.w	$vr2, $vr2, $vr5
	vbitsel.v	$vr0, $vr2, $vr1, $vr0
	vst	$vr0, $a1, 0
	st.w	$zero, $a1, 32
	ret
.Lfunc_end0:
	.size	_Z18ConvertUInt32ToHexjPw, .Lfunc_end0-_Z18ConvertUInt32ToHexjPw
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
.LCPI1_0:
	.word	256                             # 0x100
	.word	128                             # 0x80
	.word	64                              # 0x40
	.word	32                              # 0x20
.LCPI1_1:
	.word	114                             # 0x72
	.word	119                             # 0x77
	.word	120                             # 0x78
	.word	114                             # 0x72
.LCPI1_2:
	.word	16                              # 0x10
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	2                               # 0x2
.LCPI1_3:
	.word	119                             # 0x77
	.word	120                             # 0x78
	.word	114                             # 0x72
	.word	119                             # 0x77
.LCPI1_4:
	.word	0                               # 0x0
	.word	24                              # 0x18
	.word	20                              # 0x14
	.word	16                              # 0x10
.LCPI1_5:
	.word	28                              # 0x1c
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	15                              # 0xf
.LCPI1_6:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI1_7:
	.word	2684354560                      # 0xa0000000
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
.LCPI1_8:
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	0                               # 0x0
.LCPI1_9:
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
	.p2align	5
	.type	_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb,@function
_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb: # @_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	addi.d	$a2, $a2, -9
	ori	$a4, $zero, 44
	bltu	$a4, $a2, .LBB1_21
# %bb.1:
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a2, $a4, $a2
	add.d	$a2, $a4, $a2
	jr	$a2
.LBB1_2:
	ld.hu	$a2, $a1, 0
	ori	$a4, $zero, 64
	bne	$a2, $a4, .LBB1_21
# %bb.3:
	ld.w	$a2, $a1, 12
	ld.w	$a4, $a1, 8
	or	$a2, $a2, $a4
	beqz	$a2, .LBB1_6
# %bb.4:
	addi.d	$a2, $a1, 8
	addi.d	$a1, $sp, 64
	move	$fp, $a0
	move	$a0, $a2
	move	$s0, $a3
	pcaddu18i	$ra, %call36(FileTimeToLocalFileTime)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	beqz	$a1, .LBB1_6
# %bb.5:
	move	$a3, $s0
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z23ConvertFileTimeToStringRK9_FILETIMEbb)
	jirl	$ra, $ra, 0
	b	.LBB1_22
.LBB1_6:
	st.d	$zero, $a0, 8
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 12
	b	.LBB1_22
.LBB1_7:
	ld.hu	$a2, $a1, 0
	ori	$a3, $zero, 19
	bne	$a2, $a3, .LBB1_21
# %bb.8:
	st.d	$zero, $a0, 8
	move	$fp, $a0
	ori	$a0, $zero, 16
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	st.d	$s0, $fp, 0
	ld.wu	$s3, $s1, 8
	st.w	$zero, $s0, 0
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 12
	bstrpick.d	$a1, $s3, 15, 12
	pcalau12i	$a2, %pc_hi20(_ZL11kPosixTypes)
	addi.d	$a2, $a2, %pc_lo12(_ZL11kPosixTypes)
	ldx.b	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_0)
	vreplgr2vr.w	$vr4, $s3
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr2, $a2, %pc_lo12(.LCPI1_1)
	vand.v	$vr0, $vr4, $vr0
	vseqi.w	$vr1, $vr0, 0
	vrepli.w	$vr3, 45
	vbitsel.v	$vr0, $vr2, $vr3, $vr1
	vst	$vr0, $sp, 68
	pcalau12i	$a2, %pc_hi20(.LCPI1_2)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_2)
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	vld	$vr2, $a2, %pc_lo12(.LCPI1_3)
	st.w	$a1, $sp, 64
	vst	$vr4, $sp, 16                   # 16-byte Folded Spill
	vand.v	$vr0, $vr4, $vr0
	vseqi.w	$vr0, $vr0, 0
	vbitsel.v	$vr2, $vr2, $vr3, $vr0
	vst	$vr2, $sp, 84
	andi	$a1, $s3, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 120
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 45
	maskeqz	$a3, $a3, $a1
	or	$a2, $a3, $a2
	slli.d	$a3, $s3, 52
	st.w	$a2, $sp, 100
	bltz	$a3, .LBB1_23
# %bb.9:
	andi	$a2, $s3, 1024
	bnez	$a2, .LBB1_24
.LBB1_10:
	andi	$a2, $s3, 512
	beqz	$a2, .LBB1_12
.LBB1_11:
	ori	$a2, $zero, 116
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 84
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 100
.LBB1_12:
	st.w	$zero, $sp, 104
	st.w	$zero, $a0, 8
	st.w	$zero, $s0, 0
	addi.d	$a0, $sp, 64
	addi.d	$s4, $sp, 64
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s5, $a0, 1
	ori	$a0, $zero, 4
	bne	$s5, $a0, .LBB1_25
# %bb.13:
	move	$a0, $fp
	b	.LBB1_27
.LBB1_14:
	ld.hu	$a2, $a1, 0
	ori	$a3, $zero, 19
	bne	$a2, $a3, .LBB1_21
# %bb.15:
	ld.wu	$a1, $a1, 8
	andi	$a2, $a1, 1
	bnez	$a2, .LBB1_33
# %bb.16:
	move	$a2, $zero
	b	.LBB1_34
.LBB1_17:
	ld.hu	$a2, $a1, 0
	ori	$a3, $zero, 19
	bne	$a2, $a3, .LBB1_21
# %bb.18:
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_8)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_8)
	vreplvei.w	$vr2, $vr0, 2
	vsrl.w	$vr1, $vr2, $vr1
	vrepli.w	$vr3, 15
	vand.v	$vr1, $vr1, $vr3
	vslti.wu	$vr3, $vr1, 10
	vrepli.w	$vr4, 48
	vor.v	$vr5, $vr1, $vr4
	vrepli.w	$vr6, 55
	vadd.w	$vr1, $vr1, $vr6
	pcalau12i	$a1, %pc_hi20(.LCPI1_4)
	vld	$vr7, $a1, %pc_lo12(.LCPI1_4)
	pcalau12i	$a1, %pc_hi20(.LCPI1_5)
	vld	$vr8, $a1, %pc_lo12(.LCPI1_5)
	vbitsel.v	$vr1, $vr1, $vr5, $vr3
	vst	$vr1, $sp, 80
	vsrl.w	$vr1, $vr2, $vr7
	vsrl.w	$vr2, $vr1, $vr8
	pcalau12i	$a1, %pc_hi20(.LCPI1_6)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_6)
	pcalau12i	$a1, %pc_hi20(.LCPI1_9)
	vld	$vr5, $a1, %pc_lo12(.LCPI1_9)
	pcalau12i	$a1, %pc_hi20(.LCPI1_7)
	vld	$vr7, $a1, %pc_lo12(.LCPI1_7)
	vand.v	$vr1, $vr1, $vr8
	vshuf.w	$vr3, $vr1, $vr2
	vshuf.w	$vr5, $vr1, $vr0
	vslt.wu	$vr0, $vr5, $vr7
	vor.v	$vr1, $vr3, $vr4
	vadd.w	$vr2, $vr3, $vr6
	vbitsel.v	$vr0, $vr2, $vr1, $vr0
	vst	$vr0, $sp, 64
	st.w	$zero, $sp, 96
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 64
	addi.d	$s0, $sp, 64
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $fp, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $s1, 12
	.p2align	4, , 16
.LBB1_19:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB1_19
# %bb.20:                               # %_ZN11CStringBaseIwEC2EPKw.exit
	st.w	$fp, $s1, 8
	b	.LBB1_22
.LBB1_21:
	pcaddu18i	$ra, %call36(_Z26ConvertPropVariantToStringRK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.LBB1_22:
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
.LBB1_23:
	vpickve2gr.w	$a2, $vr1, 2
	andi	$a2, $a2, 1
	ori	$a3, $zero, 115
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 83
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 76
	andi	$a2, $s3, 1024
	beqz	$a2, .LBB1_10
.LBB1_24:
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	ori	$a3, $zero, 115
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 83
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 88
	andi	$a2, $s3, 512
	bnez	$a2, .LBB1_11
	b	.LBB1_12
.LBB1_25:
	addi.w	$a0, $s1, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.26:
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $fp, 8
	st.d	$s2, $fp, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s2, $a1
	st.w	$s5, $fp, 12
	move	$s0, $s2
.LBB1_27:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i82.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_28:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i82
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a1, $s4
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_28
# %bb.29:
	srli.d	$a1, $s3, 16
	st.w	$s1, $a0, 8
	beqz	$a1, .LBB1_22
# %bb.30:
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_6)
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	vsrl.w	$vr0, $vr3, $vr0
	vsrl.w	$vr3, $vr0, $vr1
	vand.v	$vr0, $vr0, $vr1
	vshuf.w	$vr2, $vr0, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_7)
	vrepli.w	$vr3, 48
	vst	$vr3, $sp, 80
	vinsgr2vr.w	$vr0, $s3, 0
	vslt.wu	$vr0, $vr0, $vr1
	vor.v	$vr1, $vr2, $vr3
	vrepli.w	$vr3, 55
	vadd.w	$vr2, $vr2, $vr3
	vbitsel.v	$vr0, $vr2, $vr1, $vr0
	vst	$vr0, $sp, 64
	st.w	$zero, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$s3, $sp, 64
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 1
	addi.w	$s4, $a0, 0
	slli.d	$s5, $s2, 2
	beqz	$s2, .LBB1_65
# %bb.31:
	slti	$a0, $s4, -1
	masknez	$a1, $s5, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.32:                               # %.noexc91
	move	$s0, $a0
	st.w	$zero, $a0, 0
	b	.LBB1_66
.LBB1_33:
	ori	$a2, $zero, 82
	st.w	$a2, $sp, 64
	ori	$a2, $zero, 1
.LBB1_34:
	andi	$a3, $a1, 2
	bnez	$a3, .LBB1_52
# %bb.35:
	andi	$a3, $a1, 4
	bnez	$a3, .LBB1_53
.LBB1_36:
	andi	$a3, $a1, 8
	bnez	$a3, .LBB1_54
.LBB1_37:
	andi	$a3, $a1, 16
	bnez	$a3, .LBB1_55
.LBB1_38:
	andi	$a3, $a1, 32
	bnez	$a3, .LBB1_56
.LBB1_39:
	andi	$a3, $a1, 64
	bnez	$a3, .LBB1_57
.LBB1_40:
	andi	$a3, $a1, 256
	bnez	$a3, .LBB1_58
.LBB1_41:
	andi	$a3, $a1, 512
	bnez	$a3, .LBB1_59
.LBB1_42:
	andi	$a3, $a1, 1024
	bnez	$a3, .LBB1_60
.LBB1_43:
	slli.d	$a3, $a1, 52
	bltz	$a3, .LBB1_61
.LBB1_44:
	slli.d	$a3, $a1, 51
	bltz	$a3, .LBB1_62
.LBB1_45:
	slli.d	$a3, $a1, 50
	bltz	$a3, .LBB1_63
.LBB1_46:
	slli.d	$a3, $a1, 49
	bltz	$a3, .LBB1_64
.LBB1_47:
	slli.d	$a1, $a1, 48
	bgez	$a1, .LBB1_49
.LBB1_48:
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a3, $sp, 64
	ori	$a4, $zero, 95
	stx.w	$a4, $a1, $a3
.LBB1_49:
	slli.d	$a1, $a2, 2
	addi.d	$s0, $sp, 64
	stx.w	$zero, $a1, $s0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $fp, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	st.d	$a0, $s1, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $s1, 12
	.p2align	4, , 16
.LBB1_50:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i75
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_50
# %bb.51:                               # %_ZN11CStringBaseIwEC2EPKw.exit79
	st.w	$fp, $a1, 8
	b	.LBB1_22
.LBB1_52:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 72
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 4
	beqz	$a3, .LBB1_36
.LBB1_53:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 83
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 8
	beqz	$a3, .LBB1_37
.LBB1_54:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 56
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 16
	beqz	$a3, .LBB1_38
.LBB1_55:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 68
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 32
	beqz	$a3, .LBB1_39
.LBB1_56:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 65
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 64
	beqz	$a3, .LBB1_40
.LBB1_57:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 100
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 256
	beqz	$a3, .LBB1_41
.LBB1_58:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 84
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 512
	beqz	$a3, .LBB1_42
.LBB1_59:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 115
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 1024
	beqz	$a3, .LBB1_43
.LBB1_60:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 114
	stx.w	$a5, $a3, $a4
	slli.d	$a3, $a1, 52
	bgez	$a3, .LBB1_44
.LBB1_61:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 67
	stx.w	$a5, $a3, $a4
	slli.d	$a3, $a1, 51
	bgez	$a3, .LBB1_45
.LBB1_62:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 79
	stx.w	$a5, $a3, $a4
	slli.d	$a3, $a1, 50
	bgez	$a3, .LBB1_46
.LBB1_63:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 110
	stx.w	$a5, $a3, $a4
	slli.d	$a3, $a1, 49
	bgez	$a3, .LBB1_47
.LBB1_64:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 69
	stx.w	$a5, $a3, $a4
	slli.d	$a1, $a1, 48
	bltz	$a1, .LBB1_48
	b	.LBB1_49
.LBB1_65:
	move	$s0, $zero
.LBB1_66:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i87
	move	$a0, $zero
	.p2align	4, , 16
.LBB1_67:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $a0, $s3
	stx.w	$a1, $s0, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_67
# %bb.68:                               # %_ZN11CStringBaseIwEC2EPKw.exit92
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 32
	slti	$a0, $s4, -1
	masknez	$a1, $s5, $a0
	addi.w	$s3, $zero, -1
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.69:                               # %.noexc93
	move	$a1, $zero
	st.d	$a0, $sp, 32
	st.w	$zero, $a0, 0
	st.w	$s2, $sp, 44
	.p2align	4, , 16
.LBB1_70:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s0, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_70
# %bb.71:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	st.w	$s1, $sp, 40
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEw)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.72:                               # %_ZplIwE11CStringBaseIT_ERKS2_S1_.exit
	ld.w	$s1, $sp, 40
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s2, 31
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	bgez	$a0, .LBB1_74
# %bb.73:
	move	$a0, $zero
	b	.LBB1_76
.LBB1_74:
	addi.w	$a0, $s2, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s3, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.75:                               # %.noexc100
	st.d	$a0, $sp, 48
	st.w	$zero, $a0, 0
	st.w	$s2, $sp, 60
.LBB1_76:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i94
	ld.d	$a1, $sp, 32
	.p2align	4, , 16
.LBB1_77:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_77
# %bb.78:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i98
	st.w	$s1, $sp, 56
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$s1, $sp, 48
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.79:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
	beq	$s1, $fp, .LBB1_90
# %bb.80:
	move	$a0, $fp
	ld.d	$s2, $fp, 0
	st.w	$zero, $fp, 8
	st.w	$zero, $s2, 0
	ld.w	$a1, $sp, 56
	ld.w	$s5, $fp, 12
	addi.w	$s4, $a1, 1
	bne	$s4, $s5, .LBB1_82
# %bb.81:
	move	$s1, $s2
	b	.LBB1_87
.LBB1_82:
	slti	$a0, $a1, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.83:                               # %.noexc109
	move	$s1, $a0
	blez	$s5, .LBB1_85
# %bb.84:                               # %._crit_edge.thread.i.i107
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $fp, 8
	b	.LBB1_86
.LBB1_85:
	move	$a1, $zero
	move	$a0, $fp
.LBB1_86:
	st.d	$s1, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s1, $a1
	st.w	$s4, $a0, 12
.LBB1_87:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i103
	ld.d	$a1, $sp, 48
	.p2align	4, , 16
.LBB1_88:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $s1, 4
	st.w	$a2, $s1, 0
	move	$s1, $a3
	bnez	$a2, .LBB1_88
# %bb.89:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a1, $sp, 56
	st.w	$a1, $a0, 8
.LBB1_90:                               # %_ZN11CStringBaseIwEaSERKS0_.exit
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB1_92
# %bb.91:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_92:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB1_94
# %bb.93:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_94:                               # %_ZN11CStringBaseIwED2Ev.exit110
	beqz	$s0, .LBB1_22
# %bb.95:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_22
.LBB1_96:
.Ltmp20:                                # EH_LABEL
	b	.LBB1_100
.LBB1_97:
.Ltmp14:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB1_102
.LBB1_98:
.Ltmp5:                                 # EH_LABEL
	move	$s1, $a0
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB1_109
	b	.LBB1_112
.LBB1_99:
.Ltmp17:                                # EH_LABEL
.LBB1_100:
	ld.d	$a1, $sp, 48
	move	$s1, $a0
	beqz	$a1, .LBB1_102
# %bb.101:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_102:                              # %.body101
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB1_105
	b	.LBB1_107
.LBB1_103:
.Ltmp11:                                # EH_LABEL
	ld.d	$a1, $sp, 32
	move	$s1, $a0
	beqz	$a1, .LBB1_107
# %bb.104:
	move	$a0, $a1
.LBB1_105:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_107
.LBB1_106:
.Ltmp8:                                 # EH_LABEL
	move	$s1, $a0
.LBB1_107:                              # %.body
	bnez	$s0, .LBB1_110
# %bb.108:
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB1_112
.LBB1_109:                              # %_ZN11CStringBaseIwED2Ev.exit115
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_110:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB1_109
	b	.LBB1_112
.LBB1_111:                              # %.thread
.Ltmp2:                                 # EH_LABEL
	move	$s1, $a0
.LBB1_112:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb, .Lfunc_end1-_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Lfunc_end1-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEw,"axG",@progbits,_ZN11CStringBaseIwEpLEw,comdat
	.weak	_ZN11CStringBaseIwEpLEw         # -- Begin function _ZN11CStringBaseIwEpLEw
	.p2align	5
	.type	_ZN11CStringBaseIwEpLEw,@function
_ZN11CStringBaseIwEpLEw:                # @_ZN11CStringBaseIwEpLEw
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	ld.w	$s0, $a0, 8
	ld.w	$s4, $a0, 12
	nor	$a2, $s0, $zero
	add.w	$a2, $s4, $a2
	bgtz	$a2, .LBB2_15
# %bb.1:
	ori	$a3, $zero, 64
	slt	$a3, $a3, $s4
	bstrpick.d	$a4, $s4, 31, 1
	ori	$a5, $zero, 8
	slt	$a5, $a5, $s4
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 16
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	add.w	$a4, $a3, $a2
	slti	$a4, $a4, 1
	ori	$a5, $zero, 1
	sub.d	$a2, $a5, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	add.w	$a2, $a2, $s4
	addi.w	$s1, $a2, 1
	beq	$s1, $s4, .LBB2_15
# %bb.2:
	move	$s2, $a1
	move	$s3, $a0
	slti	$a0, $a2, -1
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s4, .LBB2_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blez	$s0, .LBB2_12
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s0, $a2, .LBB2_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $fp, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB2_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $fp, 16
	addi.d	$a3, $a0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_7
# %bb.8:                                # %middle.block
	beq	$a1, $s0, .LBB2_13
.LBB2_9:                                # %scalar.ph.preheader
	sub.d	$a2, $s0, $a1
	alsl.d	$a3, $a1, $fp, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB2_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB2_10
	b	.LBB2_13
.LBB2_11:
	move	$a2, $s3
	move	$a1, $s2
	b	.LBB2_14
.LBB2_12:                               # %._crit_edge.i.i
	move	$a2, $s3
	move	$a1, $s2
	beqz	$a0, .LBB2_14
.LBB2_13:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	ld.w	$s0, $s3, 8
.LBB2_14:
	move	$a0, $a2
	st.d	$fp, $a2, 0
	slli.d	$a2, $s0, 2
	stx.w	$zero, $fp, $a2
	st.w	$s1, $a0, 12
.LBB2_15:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s0, 2
	stx.w	$a1, $a2, $a3
	addi.w	$a1, $s0, 1
	st.w	$a1, $a0, 8
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a2, $a1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	_ZN11CStringBaseIwEpLEw, .Lfunc_end2-_ZN11CStringBaseIwEpLEw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLERKS0_,"axG",@progbits,_ZN11CStringBaseIwEpLERKS0_,comdat
	.weak	_ZN11CStringBaseIwEpLERKS0_     # -- Begin function _ZN11CStringBaseIwEpLERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIwEpLERKS0_,@function
_ZN11CStringBaseIwEpLERKS0_:            # @_ZN11CStringBaseIwEpLERKS0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a1
	ld.w	$s1, $a0, 8
	ld.w	$s4, $a0, 12
	ld.w	$a1, $a1, 8
	nor	$a2, $s1, $zero
	add.w	$a2, $s4, $a2
	bge	$a2, $a1, .LBB3_15
# %bb.1:
	ori	$a3, $zero, 64
	slt	$a3, $a3, $s4
	bstrpick.d	$a4, $s4, 31, 1
	ori	$a5, $zero, 8
	slt	$a5, $a5, $s4
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 16
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	add.w	$a4, $a3, $a2
	slt	$a4, $a4, $a1
	sub.d	$a1, $a1, $a2
	masknez	$a2, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	add.w	$a1, $a1, $s4
	addi.w	$s2, $a1, 1
	beq	$s2, $s4, .LBB3_15
# %bb.2:
	move	$s3, $a0
	slti	$a0, $a1, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s4, .LBB3_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a1, $s3, 0
	blez	$s1, .LBB3_12
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a0, $zero
	bltu	$s1, $a2, .LBB3_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $s0, $a1
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB3_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a2, $s0, 16
	addi.d	$a3, $a1, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB3_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_7
# %bb.8:                                # %middle.block
	beq	$a0, $s1, .LBB3_13
.LBB3_9:                                # %scalar.ph.preheader
	sub.d	$a2, $s1, $a0
	alsl.d	$a3, $a0, $s0, 2
	alsl.d	$a0, $a0, $a1, 2
	.p2align	4, , 16
.LBB3_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB3_10
	b	.LBB3_13
.LBB3_11:
	move	$a0, $s3
	b	.LBB3_14
.LBB3_12:                               # %._crit_edge.i.i
	move	$a0, $s3
	beqz	$a1, .LBB3_14
.LBB3_13:                               # %._crit_edge.thread.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$s1, $s3, 8
.LBB3_14:
	st.d	$s0, $a0, 0
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s0, $a1
	st.w	$s2, $a0, 12
.LBB3_15:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $s1, $a2, 2
	.p2align	4, , 16
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB3_16
# %bb.17:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	ld.w	$a1, $fp, 8
	add.d	$a1, $a1, $s1
	st.w	$a1, $a0, 8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	_ZN11CStringBaseIwEpLERKS0_, .Lfunc_end3-_ZN11CStringBaseIwEpLERKS0_
	.cfi_endproc
                                        # -- End function
	.type	_ZL11kPosixTypes,@object        # @_ZL11kPosixTypes
	.section	.rodata.cst16,"aM",@progbits,16
_ZL11kPosixTypes:
	.ascii	"0pc3d5b7-9lBsDEF"
	.size	_ZL11kPosixTypes, 16

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
