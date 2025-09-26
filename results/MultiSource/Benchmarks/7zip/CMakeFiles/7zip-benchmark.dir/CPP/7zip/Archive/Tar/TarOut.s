	.file	"TarOut.cpp"
	.text
	.globl	_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj # -- Begin function _ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj
	.p2align	5
	.type	_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj,@function
_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj: # @_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 0
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$t8, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jr	$t8
.Lfunc_end0:
	.size	_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj, .Lfunc_end0-_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream # -- Begin function _ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream
	.p2align	5
	.type	_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream,@function
_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream: # @_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a1, .LBB1_2
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_2:
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB1_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB1_4:                                # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit
	st.d	$fp, $s0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream, .Lfunc_end1-_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE # -- Begin function _ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE
	.p2align	5
	.type	_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE,@function
_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE: # @_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -608
	.cfi_def_cfa_offset 608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 512
	addi.d	$s2, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	lu12i.w	$a1, -524284
	ori	$a2, $zero, 100
	ori	$fp, $a1, 5
	blt	$a2, $a0, .LBB2_62
# %bb.1:
	ld.d	$a0, $s1, 0
	move	$a3, $zero
	ori	$a1, $zero, 99
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ldx.bu	$a3, $a0, $a3
	stx.b	$a3, $a2, $s2
	beqz	$a3, .LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a3, $a2, 1
	bne	$a2, $a1, .LBB2_2
.LBB2_4:                                # %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit
	ld.wu	$a1, $s1, 24
	addi.d	$a0, $sp, 528
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL15MakeOctalStringEy)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 536
	ori	$a0, $zero, 8
	bge	$s3, $a0, .LBB2_30
# %bb.5:
	addi.d	$s2, $sp, 116
	ori	$a0, $zero, 7
	sub.w	$s4, $a0, $s3
	beq	$s3, $a0, .LBB2_7
# %bb.6:                                # %.lr.ph.preheader.i
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a2, $a1, $a0
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %._crit_edge.i
	ld.d	$a0, $sp, 528
	move	$a1, $zero
	add.d	$a2, $s2, $s4
	.p2align	4, , 16
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	stx.b	$a3, $a2, $a1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB2_8
# %bb.9:                                # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i
	beqz	$a0, .LBB2_11
.LBB2_10:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit
	ori	$a0, $zero, 7
	blt	$a0, $s3, .LBB2_62
# %bb.12:
	ld.wu	$a1, $s1, 28
	addi.d	$a0, $sp, 528
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL15MakeOctalStringEy)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 536
	ori	$a0, $zero, 8
	bge	$s3, $a0, .LBB2_31
# %bb.13:
	addi.d	$s2, $sp, 124
	ori	$a0, $zero, 7
	sub.w	$s4, $a0, $s3
	beq	$s3, $a0, .LBB2_15
# %bb.14:                               # %.lr.ph.preheader.i65
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a2, $a1, $a0
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %._crit_edge.i67
	ld.d	$a0, $sp, 528
	move	$a1, $zero
	add.d	$a2, $s2, $s4
	.p2align	4, , 16
.LBB2_16:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	stx.b	$a3, $a2, $a1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB2_16
# %bb.17:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i63
	beqz	$a0, .LBB2_19
.LBB2_18:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_19:                               # %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit71
	ori	$a0, $zero, 7
	blt	$a0, $s3, .LBB2_62
# %bb.20:
	ld.wu	$a1, $s1, 32
	addi.d	$a0, $sp, 528
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL15MakeOctalStringEy)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 536
	ori	$a0, $zero, 8
	bge	$s3, $a0, .LBB2_32
# %bb.21:
	addi.d	$s2, $sp, 132
	ori	$a0, $zero, 7
	sub.w	$s4, $a0, $s3
	beq	$s3, $a0, .LBB2_23
# %bb.22:                               # %.lr.ph.preheader.i76
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a2, $a1, $a0
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %._crit_edge.i78
	ld.d	$a0, $sp, 528
	move	$a1, $zero
	add.d	$a2, $s2, $s4
	.p2align	4, , 16
.LBB2_24:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	stx.b	$a3, $a2, $a1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB2_24
# %bb.25:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i74
	beqz	$a0, .LBB2_27
.LBB2_26:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_27:                               # %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit82
	ori	$a0, $zero, 7
	blt	$a0, $s3, .LBB2_62
# %bb.28:
	ld.d	$s2, $s1, 16
	addi.d	$a0, $sp, 528
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL15MakeOctalStringEy)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 536
	ori	$a0, $zero, 13
	blt	$s3, $a0, .LBB2_33
# %bb.29:                               # %thread-pre-split.i
	ori	$a0, $zero, 128
	st.w	$a0, $sp, 140
	srli.d	$a0, $s2, 56
	st.b	$a0, $sp, 144
	srli.d	$a0, $s2, 48
	st.b	$a0, $sp, 145
	srli.d	$a0, $s2, 40
	st.b	$a0, $sp, 146
	srli.d	$a0, $s2, 32
	st.b	$a0, $sp, 147
	srli.d	$a0, $s2, 24
	st.b	$a0, $sp, 148
	srli.d	$a0, $s2, 16
	st.b	$a0, $sp, 149
	ld.d	$s4, $sp, 528
	srli.d	$a0, $s2, 8
	st.b	$a0, $sp, 150
	st.b	$s2, $sp, 151
	b	.LBB2_36
.LBB2_30:                               # %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i
	ld.d	$a0, $sp, 528
	bnez	$a0, .LBB2_10
	b	.LBB2_11
.LBB2_31:                               # %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i61
	ld.d	$a0, $sp, 528
	bnez	$a0, .LBB2_18
	b	.LBB2_19
.LBB2_32:                               # %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i72
	ld.d	$a0, $sp, 528
	bnez	$a0, .LBB2_26
	b	.LBB2_27
.LBB2_33:
	addi.d	$s2, $sp, 140
	ori	$a0, $zero, 12
	sub.w	$s5, $a0, $s3
	beq	$s3, $a0, .LBB2_35
# %bb.34:                               # %.lr.ph.preheader.i84
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a2, $a1, $a0
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_35:                               # %._crit_edge.i86
	ld.d	$s4, $sp, 528
	add.d	$a0, $s2, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB2_36:
	beqz	$s4, .LBB2_38
# %bb.37:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_38:                               # %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit
	ld.wu	$s3, $s1, 36
	addi.d	$a0, $sp, 528
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL15MakeOctalStringEy)
	jirl	$ra, $ra, 0
	ld.w	$s2, $sp, 536
	ori	$a0, $zero, 13
	blt	$s2, $a0, .LBB2_40
# %bb.39:                               # %thread-pre-split.i91
	ori	$a0, $zero, 128
	st.b	$a0, $sp, 152
	st.w	$zero, $sp, 153
	ld.d	$s4, $sp, 528
	st.w	$zero, $sp, 156
	revb.2w	$a0, $s3
	st.w	$a0, $sp, 160
	b	.LBB2_43
.LBB2_40:
	addi.d	$s3, $sp, 152
	ori	$a0, $zero, 12
	sub.w	$s5, $a0, $s2
	beq	$s2, $a0, .LBB2_42
# %bb.41:                               # %.lr.ph.preheader.i88
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a2, $a1, $a0
	ori	$a1, $zero, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_42:                               # %._crit_edge.i90
	ld.d	$s4, $sp, 528
	add.d	$a0, $s3, $s5
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB2_43:
	beqz	$s4, .LBB2_45
# %bb.44:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_45:                               # %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit93
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NTar11NFileHeader15kCheckSumBlanksE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NTar11NFileHeader15kCheckSumBlanksE)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.b	$a1, $s1, 104
	ld.w	$a2, $s1, 56
	st.d	$a0, $sp, 164
	ori	$a0, $zero, 99
	st.b	$a1, $sp, 172
	blt	$a0, $a2, .LBB2_62
# %bb.46:                               # %.preheader.i.preheader
	ld.d	$a0, $s1, 48
	move	$a1, $zero
	addi.d	$s2, $sp, 164
	addi.d	$a2, $sp, 16
	.p2align	4, , 16
.LBB2_47:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	add.d	$a4, $a2, $a1
	st.b	$a3, $a4, 157
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB2_47
# %bb.48:
	ld.d	$a0, $s1, 96
	ld.w	$a1, $s1, 72
	ori	$a2, $zero, 31
	st.d	$a0, $sp, 273
	blt	$a2, $a1, .LBB2_62
# %bb.49:                               # %.preheader.i101.preheader
	ld.d	$a0, $s1, 64
	move	$a1, $zero
	addi.d	$a2, $sp, 16
	.p2align	4, , 16
.LBB2_50:                               # %.preheader.i101
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	add.d	$a4, $a2, $a1
	st.b	$a3, $a4, 265
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB2_50
# %bb.51:
	ld.w	$a0, $s1, 88
	ori	$a1, $zero, 31
	blt	$a1, $a0, .LBB2_62
# %bb.52:                               # %.preheader.i108.preheader
	ld.d	$a0, $s1, 80
	move	$a1, $zero
	addi.d	$a2, $sp, 16
	.p2align	4, , 16
.LBB2_53:                               # %.preheader.i108
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	add.d	$a4, $a2, $a1
	st.b	$a3, $a4, 297
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB2_53
# %bb.54:
	ld.bu	$a0, $s1, 105
	beqz	$a0, .LBB2_56
# %bb.55:
	ld.w	$a1, $s1, 40
	addi.d	$a0, $sp, 345
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL16MakeOctalString8EPcj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_62
.LBB2_56:
	ld.bu	$a0, $s1, 106
	beqz	$a0, .LBB2_58
# %bb.57:
	ld.w	$a1, $s1, 44
	addi.d	$a0, $sp, 353
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL16MakeOctalString8EPcj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_62
.LBB2_58:                               # %vector.body.preheader
	move	$a0, $zero
	vrepli.b	$vr0, 0
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 512
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
.LBB2_59:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a1, $a0
	ldx.w	$a4, $a0, $a1
	ld.w	$a3, $a3, 4
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr4, $a3, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a0, $a0, 8
	vadd.w	$vr2, $vr2, $vr4
	bne	$a0, $a2, .LBB2_59
# %bb.60:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	addi.w	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL16MakeOctalString8EPcj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_62
# %bb.61:
	ld.d	$a0, $s0, 0
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 512
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB2_62:                               # %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit
	move	$a0, $fp
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end2:
	.size	_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE, .Lfunc_end2-_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN8NArchive4NTarL16MakeOctalString8EPcj
	.type	_ZN8NArchive4NTarL16MakeOctalString8EPcj,@function
_ZN8NArchive4NTarL16MakeOctalString8EPcj: # @_ZN8NArchive4NTarL16MakeOctalString8EPcj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTarL15MakeOctalStringEy)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 8
	ori	$a0, $zero, 8
	bge	$s0, $a0, .LBB3_8
# %bb.1:
	ori	$a0, $zero, 7
	sub.w	$s1, $a0, $s0
	beq	$s0, $a0, .LBB3_3
# %bb.2:                                # %.lr.ph.preheader
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a2, $a1, $a0
	ori	$a1, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %._crit_edge
	ld.d	$a0, $sp, 0
	move	$a1, $zero
	add.d	$a2, $fp, $s1
	.p2align	4, , 16
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	stx.b	$a3, $a2, $a1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB3_4
# %bb.5:                                # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit
	beqz	$a0, .LBB3_7
.LBB3_6:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_7:                                # %_ZN11CStringBaseIcED2Ev.exit
	slti	$a0, $s0, 8
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_8:                                # %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge
	ld.d	$a0, $sp, 0
	bnez	$a0, .LBB3_6
	b	.LBB3_7
.Lfunc_end3:
	.size	_ZN8NArchive4NTarL16MakeOctalString8EPcj, .Lfunc_end3-_ZN8NArchive4NTarL16MakeOctalString8EPcj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE # -- Begin function _ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE
	.p2align	5
	.type	_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE,@function
_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE: # @_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -704
	.cfi_def_cfa_offset 704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a1
	ld.w	$s1, $a1, 8
	ori	$a1, $zero, 99
	move	$fp, $a0
	blt	$a1, $s1, .LBB4_2
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE)
	jr	$t8
.LBB4_2:
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemC2ERKS1_)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	st.d	$s1, $sp, 24
	ori	$a0, $zero, 76
	st.b	$a0, $sp, 112
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NTar11NFileHeader9kLongLinkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NTar11NFileHeader9kLongLinkE)
	ld.d	$a1, $sp, 8
	ld.d	$s2, $a0, 0
	st.w	$zero, $sp, 16
	st.b	$zero, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 20
	move	$s3, $a0
	addi.w	$s5, $a0, 1
	bne	$s5, $s6, .LBB4_4
# %bb.3:                                # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s4, $sp, 8
	b	.LBB4_23
.LBB4_4:
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.5:                                # %.noexc
	move	$s4, $a0
	ld.w	$a1, $sp, 16
	blez	$s6, .LBB4_22
# %bb.6:                                # %.preheader.i.i
	ld.d	$a0, $sp, 8
	blez	$a1, .LBB4_14
# %bb.7:                                # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_19
# %bb.8:                                # %iter.check
	sub.d	$a4, $s4, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB4_19
# %bb.9:                                # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB4_15
# %bb.10:
	move	$a2, $zero
.LBB4_11:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s4, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB4_12:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB4_12
# %bb.13:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB4_19
	b	.LBB4_21
.LBB4_14:                               # %._crit_edge.i.i
	bnez	$a0, .LBB4_21
	b	.LBB4_22
.LBB4_15:                               # %vector.ph
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s4, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB4_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_16
# %bb.17:                               # %middle.block
	beq	$a2, $a1, .LBB4_21
# %bb.18:                               # %vec.epilog.iter.check
	bnez	$a3, .LBB4_11
.LBB4_19:                               # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s4, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB4_20:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB4_20
.LBB4_21:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 16
.LBB4_22:
	st.d	$s4, $sp, 8
	stx.b	$zero, $s4, $a1
	st.w	$s5, $sp, 20
	.p2align	4, , 16
.LBB4_23:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	addi.d	$s2, $s2, 1
	addi.d	$a1, $s4, 1
	st.b	$a0, $s4, 0
	move	$s4, $a1
	bnez	$a0, .LBB4_23
# %bb.24:
	ld.d	$a0, $sp, 56
	st.w	$s3, $sp, 16
	st.w	$zero, $sp, 64
	st.b	$zero, $a0, 0
.Ltmp2:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.25:
	move	$s2, $a0
	bnez	$a0, .LBB4_60
# %bb.26:
	ld.d	$a1, $s0, 0
	ld.d	$a0, $fp, 0
.Ltmp5:                                 # EH_LABEL
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.27:                               # %_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj.exit
	move	$s2, $a0
	bnez	$a0, .LBB4_60
# %bb.28:
	andi	$a0, $s1, 511
	beqz	$a0, .LBB4_31
# %bb.29:
	ori	$a1, $zero, 512
	sub.d	$s1, $a1, $a0
	addi.d	$a0, $sp, 120
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.Ltmp8:                                 # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.30:                               # %_ZN8NArchive4NTar11COutArchive16FillDataResidualEy.exit
	move	$s2, $a0
	bnez	$a0, .LBB4_60
.LBB4_31:                               # %_ZN8NArchive4NTar11COutArchive16FillDataResidualEy.exit.thread
.Ltmp11:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.32:
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	ori	$a3, $zero, 99
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIcE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.33:                               # %_ZNK11CStringBaseIcE4LeftEi.exit
	ld.d	$a0, $sp, 8
	st.w	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.w	$a0, $sp, 128
	ld.w	$s2, $sp, 20
	addi.w	$s1, $a0, 1
	bne	$s1, $s2, .LBB4_35
# %bb.34:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i56
	ld.d	$s0, $sp, 8
	b	.LBB4_54
.LBB4_35:
.Ltmp16:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.36:                               # %.noexc57
	move	$s0, $a0
	ld.w	$a1, $sp, 16
	blez	$s2, .LBB4_53
# %bb.37:                               # %.preheader.i.i46
	ld.d	$a0, $sp, 8
	blez	$a1, .LBB4_45
# %bb.38:                               # %iter.check90
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_50
# %bb.39:                               # %iter.check90
	sub.d	$a4, $s0, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB4_50
# %bb.40:                               # %vector.main.loop.iter.check92
	bgeu	$a1, $a3, .LBB4_46
# %bb.41:
	move	$a2, $zero
.LBB4_42:                               # %vec.epilog.ph107
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s0, $a5
	add.d	$a5, $a0, $a5
.LBB4_43:                               # %vec.epilog.vector.body110
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB4_43
# %bb.44:                               # %vec.epilog.middle.block114
	bne	$a2, $a1, .LBB4_50
	b	.LBB4_52
.LBB4_45:                               # %._crit_edge.i.i48
	bnez	$a0, .LBB4_52
	b	.LBB4_53
.LBB4_46:                               # %vector.ph93
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s0, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
.LBB4_47:                               # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_47
# %bb.48:                               # %middle.block101
	beq	$a2, $a1, .LBB4_52
# %bb.49:                               # %vec.epilog.iter.check105
	bnez	$a3, .LBB4_42
.LBB4_50:                               # %vec.epilog.scalar.ph104.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s0, $a2
	add.d	$a2, $a0, $a2
.LBB4_51:                               # %vec.epilog.scalar.ph104
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB4_51
.LBB4_52:                               # %._crit_edge.thread.i.i49
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 16
.LBB4_53:
	st.d	$s0, $sp, 8
	stx.b	$zero, $s0, $a1
	st.w	$s1, $sp, 20
.LBB4_54:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i42
	ld.d	$a0, $sp, 120
	.p2align	4, , 16
.LBB4_55:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s0, 1
	st.b	$a1, $s0, 0
	move	$s0, $a2
	bnez	$a1, .LBB4_55
# %bb.56:
	ld.w	$a1, $sp, 128
	ld.d	$a0, $sp, 120
	st.w	$a1, $sp, 16
	beqz	$a0, .LBB4_58
# %bb.57:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_58:                               # %_ZN11CStringBaseIcED2Ev.exit
.Ltmp19:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.59:
	move	$s2, $a0
.LBB4_60:
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB4_62
# %bb.61:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_62:                               # %_ZN11CStringBaseIcED2Ev.exit.i
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB4_64
# %bb.63:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_64:                               # %_ZN11CStringBaseIcED2Ev.exit1.i
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB4_66
# %bb.65:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_66:                               # %_ZN11CStringBaseIcED2Ev.exit2.i
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB4_68
# %bb.67:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_68:                               # %_ZN8NArchive4NTar5CItemD2Ev.exit
	move	$a0, $s2
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.LBB4_69:
.Ltmp18:                                # EH_LABEL
	ld.d	$a1, $sp, 120
	move	$fp, $a0
	beqz	$a1, .LBB4_77
# %bb.70:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_71:
.Ltmp15:                                # EH_LABEL
	b	.LBB4_76
.LBB4_72:
.Ltmp10:                                # EH_LABEL
	b	.LBB4_76
.LBB4_73:
.Ltmp7:                                 # EH_LABEL
	b	.LBB4_76
.LBB4_74:
.Ltmp21:                                # EH_LABEL
	b	.LBB4_76
.LBB4_75:
.Ltmp4:                                 # EH_LABEL
.LBB4_76:
	move	$fp, $a0
.LBB4_77:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE, .Lfunc_end4-_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
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
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp2-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp19-.Ltmp17                #   Call between .Ltmp17 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Lfunc_end4-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NTar5CItemC2ERKS1_,"axG",@progbits,_ZN8NArchive4NTar5CItemC2ERKS1_,comdat
	.weak	_ZN8NArchive4NTar5CItemC2ERKS1_ # -- Begin function _ZN8NArchive4NTar5CItemC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive4NTar5CItemC2ERKS1_,@function
_ZN8NArchive4NTar5CItemC2ERKS1_:        # @_ZN8NArchive4NTar5CItemC2ERKS1_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a1
	move	$fp, $a0
	vrepli.b	$vr1, 0
	vst	$vr1, $a0, 0
	ld.wu	$s1, $a1, 8
	addi.d	$s2, $s1, 1
	slli.d	$a0, $s2, 31
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	bgez	$a0, .LBB5_2
# %bb.1:
	move	$a0, $zero
	b	.LBB5_3
.LBB5_2:
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	st.d	$a0, $fp, 0
	st.b	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB5_3:                                # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB5_4
# %bb.5:                                # %_ZN11CStringBaseIcEC2ERKS0_.exit
	st.w	$s1, $fp, 8
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 32
	vst	$vr1, $fp, 48
	ld.wu	$s2, $s0, 56
	addi.d	$s3, $s2, 1
	slli.d	$a0, $s3, 31
	bgez	$a0, .LBB5_7
# %bb.6:
	move	$s1, $zero
	b	.LBB5_9
.LBB5_7:
	addi.w	$a0, $s3, 0
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.8:                                # %.noexc
	move	$s1, $a0
	st.d	$a0, $fp, 48
	st.b	$zero, $a0, 0
	st.w	$s3, $fp, 60
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
.LBB5_9:                                # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i12
	ld.d	$a0, $s0, 48
	move	$a1, $zero
	addi.d	$s3, $fp, 48
	.p2align	4, , 16
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $a0, $a1
	stx.b	$a2, $s1, $a1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_10
# %bb.11:
	st.w	$s2, $fp, 56
	vst	$vr1, $fp, 64
	ld.wu	$s4, $s0, 72
	addi.d	$s5, $s4, 1
	slli.d	$a0, $s5, 31
	bgez	$a0, .LBB5_13
# %bb.12:
	move	$s2, $zero
	b	.LBB5_15
.LBB5_13:
	addi.w	$a0, $s5, 0
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.14:                               # %.noexc21
	move	$s2, $a0
	st.d	$a0, $fp, 64
	st.b	$zero, $a0, 0
	st.w	$s5, $fp, 76
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
.LBB5_15:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i17
	ld.d	$a0, $s0, 64
	move	$a1, $zero
	.p2align	4, , 16
.LBB5_16:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $a0, $a1
	stx.b	$a2, $s2, $a1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_16
# %bb.17:
	st.w	$s4, $fp, 72
	vst	$vr1, $fp, 80
	ld.wu	$s4, $s0, 88
	addi.d	$s5, $s4, 1
	slli.d	$a0, $s5, 31
	bgez	$a0, .LBB5_19
# %bb.18:
	move	$a0, $zero
	b	.LBB5_21
.LBB5_19:
	addi.w	$a0, $s5, 0
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.20:                               # %.noexc27
	st.d	$a0, $fp, 80
	st.b	$zero, $a0, 0
	st.w	$s5, $fp, 92
.LBB5_21:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i23
	ld.d	$a1, $s0, 80
	.p2align	4, , 16
.LBB5_22:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB5_22
# %bb.23:
	st.w	$s4, $fp, 88
	ld.d	$a0, $s0, 96
	st.d	$a0, $fp, 96
	ld.w	$a0, $s0, 103
	st.w	$a0, $fp, 103
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
.LBB5_24:
.Ltmp30:                                # EH_LABEL
	move	$s0, $a0
	bnez	$s2, .LBB5_28
# %bb.25:                               # %_ZN11CStringBaseIcED2Ev.exit
	bnez	$s1, .LBB5_30
.LBB5_26:                               # %_ZN11CStringBaseIcED2Ev.exit29
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB5_32
.LBB5_27:                               # %_ZN11CStringBaseIcED2Ev.exit30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_28:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, 0
	beqz	$s1, .LBB5_26
	b	.LBB5_30
.LBB5_29:
.Ltmp27:                                # EH_LABEL
	move	$s0, $a0
	beqz	$s1, .LBB5_26
.LBB5_30:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_27
	b	.LBB5_32
.LBB5_31:
.Ltmp24:                                # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_27
.LBB5_32:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN8NArchive4NTar5CItemC2ERKS1_, .Lfunc_end5-_ZN8NArchive4NTar5CItemC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NTar5CItemC2ERKS1_,"aG",@progbits,_ZN8NArchive4NTar5CItemC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NTar11COutArchive16FillDataResidualEy # -- Begin function _ZN8NArchive4NTar11COutArchive16FillDataResidualEy
	.p2align	5
	.type	_ZN8NArchive4NTar11COutArchive16FillDataResidualEy,@function
_ZN8NArchive4NTar11COutArchive16FillDataResidualEy: # @_ZN8NArchive4NTar11COutArchive16FillDataResidualEy
	.cfi_startproc
# %bb.0:
	andi	$a1, $a1, 511
	beqz	$a1, .LBB6_2
# %bb.1:
	addi.d	$sp, $sp, -544
	.cfi_def_cfa_offset 544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ori	$a0, $zero, 512
	sub.d	$s0, $a0, $a1
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a1, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB6_2:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	_ZN8NArchive4NTar11COutArchive16FillDataResidualEy, .Lfunc_end6-_ZN8NArchive4NTar11COutArchive16FillDataResidualEy
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NTar5CItemaSERKS1_,"axG",@progbits,_ZN8NArchive4NTar5CItemaSERKS1_,comdat
	.weak	_ZN8NArchive4NTar5CItemaSERKS1_ # -- Begin function _ZN8NArchive4NTar5CItemaSERKS1_
	.p2align	5
	.type	_ZN8NArchive4NTar5CItemaSERKS1_,@function
_ZN8NArchive4NTar5CItemaSERKS1_:        # @_ZN8NArchive4NTar5CItemaSERKS1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a1
	move	$fp, $a0
	beq	$a1, $a0, .LBB7_3
# %bb.1:
	ld.d	$a0, $fp, 0
	st.w	$zero, $fp, 8
	st.b	$zero, $a0, 0
	ld.w	$a0, $s0, 8
	ld.w	$s3, $fp, 12
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB7_4
# %bb.2:                                # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s1, $fp, 0
	b	.LBB7_22
.LBB7_3:                                # %_ZN11CStringBaseIcEaSERKS0_.exit44.thread
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 32
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	b	.LBB7_91
.LBB7_4:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$s1, $a0
	blez	$s3, .LBB7_21
# %bb.5:                                # %.preheader.i.i
	ld.d	$a0, $fp, 0
	blez	$a1, .LBB7_13
# %bb.6:                                # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB7_18
# %bb.7:                                # %iter.check
	sub.d	$a4, $s1, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB7_18
# %bb.8:                                # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB7_14
# %bb.9:
	move	$a2, $zero
.LBB7_10:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB7_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB7_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB7_18
	b	.LBB7_20
.LBB7_13:                               # %._crit_edge.i.i
	bnez	$a0, .LBB7_20
	b	.LBB7_21
.LBB7_14:                               # %vector.ph
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB7_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_15
# %bb.16:                               # %middle.block
	beq	$a2, $a1, .LBB7_20
# %bb.17:                               # %vec.epilog.iter.check
	bnez	$a3, .LBB7_10
.LBB7_18:                               # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB7_19:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB7_19
.LBB7_20:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
.LBB7_21:
	st.d	$s1, $fp, 0
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 12
.LBB7_22:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB7_23:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB7_23
# %bb.24:
	ld.w	$a0, $s0, 8
	st.w	$a0, $fp, 8
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $s0, 32
	ld.d	$a0, $fp, 48
	vst	$vr0, $fp, 32
	st.w	$zero, $fp, 56
	st.b	$zero, $a0, 0
	ld.w	$a0, $s0, 56
	ld.w	$s3, $fp, 60
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB7_26
# %bb.25:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i23
	ld.d	$s1, $fp, 48
	b	.LBB7_44
.LBB7_26:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
	move	$s1, $a0
	blez	$s3, .LBB7_43
# %bb.27:                               # %.preheader.i.i13
	ld.d	$a0, $fp, 48
	blez	$a1, .LBB7_35
# %bb.28:                               # %iter.check90
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB7_40
# %bb.29:                               # %iter.check90
	sub.d	$a4, $s1, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB7_40
# %bb.30:                               # %vector.main.loop.iter.check92
	bgeu	$a1, $a3, .LBB7_36
# %bb.31:
	move	$a2, $zero
.LBB7_32:                               # %vec.epilog.ph107
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB7_33:                               # %vec.epilog.vector.body110
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB7_33
# %bb.34:                               # %vec.epilog.middle.block114
	bne	$a2, $a1, .LBB7_40
	b	.LBB7_42
.LBB7_35:                               # %._crit_edge.i.i15
	bnez	$a0, .LBB7_42
	b	.LBB7_43
.LBB7_36:                               # %vector.ph93
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB7_37:                               # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_37
# %bb.38:                               # %middle.block101
	beq	$a2, $a1, .LBB7_42
# %bb.39:                               # %vec.epilog.iter.check105
	bnez	$a3, .LBB7_32
.LBB7_40:                               # %vec.epilog.scalar.ph104.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB7_41:                               # %vec.epilog.scalar.ph104
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB7_41
.LBB7_42:                               # %._crit_edge.thread.i.i16
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
.LBB7_43:
	st.d	$s1, $fp, 48
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 60
.LBB7_44:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i8
	ld.d	$a0, $s0, 48
	.p2align	4, , 16
.LBB7_45:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB7_45
# %bb.46:
	ld.w	$a0, $s0, 56
	ld.d	$a1, $fp, 64
	st.w	$a0, $fp, 56
	st.w	$zero, $fp, 72
	st.b	$zero, $a1, 0
	ld.w	$a0, $s0, 72
	ld.w	$s3, $fp, 76
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB7_48
# %bb.47:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i42
	ld.d	$s1, $fp, 64
	b	.LBB7_66
.LBB7_48:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 72
	move	$s1, $a0
	blez	$s3, .LBB7_65
# %bb.49:                               # %.preheader.i.i32
	ld.d	$a0, $fp, 64
	blez	$a1, .LBB7_57
# %bb.50:                               # %iter.check122
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB7_62
# %bb.51:                               # %iter.check122
	sub.d	$a4, $s1, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB7_62
# %bb.52:                               # %vector.main.loop.iter.check124
	bgeu	$a1, $a3, .LBB7_58
# %bb.53:
	move	$a2, $zero
.LBB7_54:                               # %vec.epilog.ph139
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB7_55:                               # %vec.epilog.vector.body142
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB7_55
# %bb.56:                               # %vec.epilog.middle.block146
	bne	$a2, $a1, .LBB7_62
	b	.LBB7_64
.LBB7_57:                               # %._crit_edge.i.i34
	bnez	$a0, .LBB7_64
	b	.LBB7_65
.LBB7_58:                               # %vector.ph125
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB7_59:                               # %vector.body128
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_59
# %bb.60:                               # %middle.block133
	beq	$a2, $a1, .LBB7_64
# %bb.61:                               # %vec.epilog.iter.check137
	bnez	$a3, .LBB7_54
.LBB7_62:                               # %vec.epilog.scalar.ph136.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB7_63:                               # %vec.epilog.scalar.ph136
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB7_63
.LBB7_64:                               # %._crit_edge.thread.i.i35
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 72
.LBB7_65:
	st.d	$s1, $fp, 64
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 76
.LBB7_66:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i27
	ld.d	$a0, $s0, 64
	.p2align	4, , 16
.LBB7_67:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB7_67
# %bb.68:
	ld.w	$a0, $s0, 72
	ld.d	$a1, $fp, 80
	st.w	$a0, $fp, 72
	st.w	$zero, $fp, 88
	st.b	$zero, $a1, 0
	ld.w	$a0, $s0, 88
	ld.w	$s3, $fp, 92
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB7_70
# %bb.69:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i61
	ld.d	$s1, $fp, 80
	b	.LBB7_88
.LBB7_70:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 88
	move	$s1, $a0
	blez	$s3, .LBB7_87
# %bb.71:                               # %.preheader.i.i51
	ld.d	$a0, $fp, 80
	blez	$a1, .LBB7_79
# %bb.72:                               # %iter.check154
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB7_84
# %bb.73:                               # %iter.check154
	sub.d	$a4, $s1, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB7_84
# %bb.74:                               # %vector.main.loop.iter.check156
	bgeu	$a1, $a3, .LBB7_80
# %bb.75:
	move	$a2, $zero
.LBB7_76:                               # %vec.epilog.ph171
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB7_77:                               # %vec.epilog.vector.body174
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB7_77
# %bb.78:                               # %vec.epilog.middle.block178
	bne	$a2, $a1, .LBB7_84
	b	.LBB7_86
.LBB7_79:                               # %._crit_edge.i.i53
	bnez	$a0, .LBB7_86
	b	.LBB7_87
.LBB7_80:                               # %vector.ph157
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB7_81:                               # %vector.body160
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_81
# %bb.82:                               # %middle.block165
	beq	$a2, $a1, .LBB7_86
# %bb.83:                               # %vec.epilog.iter.check169
	bnez	$a3, .LBB7_76
.LBB7_84:                               # %vec.epilog.scalar.ph168.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB7_85:                               # %vec.epilog.scalar.ph168
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB7_85
.LBB7_86:                               # %._crit_edge.thread.i.i54
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 88
.LBB7_87:
	st.d	$s1, $fp, 80
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 92
.LBB7_88:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i46
	ld.d	$a0, $s0, 80
	.p2align	4, , 16
.LBB7_89:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB7_89
# %bb.90:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i50
	ld.w	$a0, $s0, 88
	st.w	$a0, $fp, 88
.LBB7_91:                               # %_ZN11CStringBaseIcEaSERKS0_.exit63
	ld.w	$a0, $s0, 103
	st.w	$a0, $fp, 103
	ld.d	$a0, $s0, 96
	st.d	$a0, $fp, 96
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZN8NArchive4NTar5CItemaSERKS1_, .Lfunc_end7-_ZN8NArchive4NTar5CItemaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NTar5CItemD2Ev,"axG",@progbits,_ZN8NArchive4NTar5CItemD2Ev,comdat
	.weak	_ZN8NArchive4NTar5CItemD2Ev     # -- Begin function _ZN8NArchive4NTar5CItemD2Ev
	.p2align	5
	.type	_ZN8NArchive4NTar5CItemD2Ev,@function
_ZN8NArchive4NTar5CItemD2Ev:            # @_ZN8NArchive4NTar5CItemD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 80
	beqz	$a0, .LBB8_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_2:                                # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB8_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %_ZN11CStringBaseIcED2Ev.exit1
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB8_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_6:                                # %_ZN11CStringBaseIcED2Ev.exit2
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB8_8
# %bb.7:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB8_8:                                # %_ZN11CStringBaseIcED2Ev.exit3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	_ZN8NArchive4NTar5CItemD2Ev, .Lfunc_end8-_ZN8NArchive4NTar5CItemD2Ev
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv # -- Begin function _ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv
	.p2align	5
	.type	_ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv,@function
_ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv: # @_ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -544
	.cfi_def_cfa_offset 544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 512
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 512
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_2
# %bb.1:
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB9_2:                                # %.preheader.1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 512
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.Lfunc_end9:
	.size	_ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv, .Lfunc_end9-_ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN8NArchive4NTarL15MakeOctalStringEy
	.type	_ZN8NArchive4NTarL15MakeOctalStringEy,@function
_ZN8NArchive4NTarL15MakeOctalStringEy:  # @_ZN8NArchive4NTarL15MakeOctalStringEy
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$a3, $a1
	move	$s0, $a0
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
	addi.d	$s3, $sp, 16
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 1
	beqz	$s2, .LBB10_2
# %bb.1:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.b	$zero, $a0, 0
	b	.LBB10_3
.LBB10_2:
	move	$fp, $zero
.LBB10_3:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $a0, $s3
	stx.b	$a1, $fp, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_4
# %bb.5:                                # %_ZN11CStringBaseIcEC2EPKc.exit
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
.Ltmp31:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.6:                                # %.noexc
	move	$a1, $zero
	st.d	$a0, $s0, 0
	st.b	$zero, $a0, 0
	st.w	$s2, $s0, 12
	.p2align	4, , 16
.LBB10_7:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $fp, $a1
	stx.b	$a2, $a0, $a1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB10_7
# %bb.8:                                # %_ZN11CStringBaseIcEC2ERKS0_.exit.i
	st.w	$s1, $s0, 8
.Ltmp34:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLEc)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.9:                                # %_ZplIcE11CStringBaseIT_ERKS2_S1_.exit
	beqz	$fp, .LBB10_11
# %bb.10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_11:                              # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB10_12:
.Ltmp36:                                # EH_LABEL
	ld.d	$a1, $s0, 0
	move	$s0, $a0
	bnez	$a1, .LBB10_15
# %bb.13:                               # %.body
	bnez	$fp, .LBB10_17
.LBB10_14:                              # %_ZN11CStringBaseIcED2Ev.exit2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_15:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB10_14
	b	.LBB10_17
.LBB10_16:
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	beqz	$fp, .LBB10_14
.LBB10_17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN8NArchive4NTarL15MakeOctalStringEy, .Lfunc_end10-_ZN8NArchive4NTarL15MakeOctalStringEy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin2          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end10-.Ltmp35           #   Call between .Ltmp35 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIcEpLEc,"axG",@progbits,_ZN11CStringBaseIcEpLEc,comdat
	.weak	_ZN11CStringBaseIcEpLEc         # -- Begin function _ZN11CStringBaseIcEpLEc
	.p2align	5
	.type	_ZN11CStringBaseIcEpLEc,@function
_ZN11CStringBaseIcEpLEc:                # @_ZN11CStringBaseIcEpLEc
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
	ld.w	$s1, $a0, 8
	ld.w	$s4, $a0, 12
	nor	$a2, $s1, $zero
	add.w	$a2, $s4, $a2
	bgtz	$a2, .LBB11_21
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
	add.d	$a2, $s4, $a2
	addi.w	$fp, $a2, 1
	beq	$fp, $s4, .LBB11_21
# %bb.2:
	move	$s2, $a1
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s4, .LBB11_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blez	$s1, .LBB11_12
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 16
	move	$a1, $zero
	bltu	$s1, $a2, .LBB11_17
# %bb.5:                                # %iter.check
	sub.d	$a3, $s0, $a0
	ori	$a2, $zero, 32
	bltu	$a3, $a2, .LBB11_17
# %bb.6:                                # %vector.main.loop.iter.check
	bgeu	$s1, $a2, .LBB11_13
# %bb.7:
	move	$a1, $zero
.LBB11_8:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s1, 30, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $s0, $a4
	add.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB11_9:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB11_9
# %bb.10:                               # %vec.epilog.middle.block
	bne	$a1, $s1, .LBB11_17
	b	.LBB11_19
.LBB11_11:
	move	$a2, $s3
	move	$a1, $s2
	b	.LBB11_20
.LBB11_12:                              # %._crit_edge.i.i
	move	$a2, $s3
	move	$a1, $s2
	bnez	$a0, .LBB11_19
	b	.LBB11_20
.LBB11_13:                              # %vector.ph
	andi	$a2, $s1, 16
	bstrpick.d	$a1, $s1, 30, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB11_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_14
# %bb.15:                               # %middle.block
	beq	$a1, $s1, .LBB11_19
# %bb.16:                               # %vec.epilog.iter.check
	bnez	$a2, .LBB11_8
.LBB11_17:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s1, $a1
	add.d	$a3, $s0, $a1
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB11_18:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB11_18
.LBB11_19:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	ld.w	$s1, $s3, 8
.LBB11_20:
	move	$a0, $a2
	st.d	$s0, $a2, 0
	stx.b	$zero, $s0, $s1
	st.w	$fp, $a2, 12
.LBB11_21:                              # %_ZN11CStringBaseIcE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	stx.b	$a1, $a2, $s1
	ld.w	$a1, $a0, 8
	ld.d	$a2, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	stx.b	$zero, $a2, $a1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end11:
	.size	_ZN11CStringBaseIcEpLEc, .Lfunc_end11-_ZN11CStringBaseIcEpLEc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11CStringBaseIcE3MidEii,"axG",@progbits,_ZNK11CStringBaseIcE3MidEii,comdat
	.weak	_ZNK11CStringBaseIcE3MidEii     # -- Begin function _ZNK11CStringBaseIcE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIcE3MidEii,@function
_ZNK11CStringBaseIcE3MidEii:            # @_ZNK11CStringBaseIcE3MidEii
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a1
	ld.w	$s0, $a1, 8
	move	$s2, $a2
	move	$fp, $a0
	add.w	$a0, $a3, $a2
	slt	$a0, $s0, $a0
	sub.w	$a1, $s0, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$s5, $a1, $a0
	bnez	$a2, .LBB12_4
# %bb.1:
	bne	$s5, $s0, .LBB12_4
# %bb.2:
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s2, 31
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB12_14
# %bb.3:
	move	$a0, $zero
	b	.LBB12_15
.LBB12_4:
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 4
	ori	$s3, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 0
	st.b	$zero, $a0, 0
	addi.w	$s4, $s5, 1
	st.w	$s3, $fp, 12
	beq	$s4, $s3, .LBB12_8
# %bb.5:
.Ltmp37:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.6:                                # %_ZN11CStringBaseIcE11SetCapacityEi.exit
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$s3, $fp, 0
	st.b	$zero, $s3, 0
	st.w	$s4, $fp, 12
	blez	$s5, .LBB12_13
# %bb.7:
	move	$s0, $s3
.LBB12_8:                               # %iter.check
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 16
	add.d	$a0, $a1, $s2
	bltu	$s5, $a2, .LBB12_10
# %bb.9:                                # %vector.memcheck
	add.d	$a1, $a1, $s2
	sub.d	$a2, $s0, $a1
	ori	$a1, $zero, 32
	bgeu	$a2, $a1, .LBB12_19
.LBB12_10:
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_11:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a2, $a0, $a1
	stx.b	$a2, $s0, $a1
	addi.d	$a1, $a1, 1
	bltu	$a1, $s5, .LBB12_11
.LBB12_12:
	move	$s3, $s0
.LBB12_13:                              # %._crit_edge
	stx.b	$zero, $s3, $s5
	b	.LBB12_18
.LBB12_14:
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.b	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB12_15:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a1, $s1, 0
	.p2align	4, , 16
.LBB12_16:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB12_16
# %bb.17:
	move	$s5, $s0
.LBB12_18:                              # %_ZN11CStringBaseIcEC2ERKS0_.exit
	st.w	$s5, $fp, 8
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
.LBB12_19:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $s5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s5, $a3
	or	$a2, $a3, $a2
	bgeu	$s5, $a1, .LBB12_24
# %bb.20:
	move	$a1, $zero
.LBB12_21:                              # %vec.epilog.ph
	move	$a3, $a1
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB12_22:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a0, $a3
	vstx	$vr0, $s0, $a3
	addi.d	$a3, $a3, 16
	bne	$a1, $a3, .LBB12_22
# %bb.23:                               # %vec.epilog.middle.block
	bne	$a1, $s5, .LBB12_11
	b	.LBB12_12
.LBB12_24:                              # %vector.ph
	move	$a4, $zero
	andi	$a3, $a2, 16
	bstrpick.d	$a1, $a2, 30, 5
	slli.d	$a1, $a1, 5
	.p2align	4, , 16
.LBB12_25:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a0, $a4
	add.d	$a5, $a0, $a4
	vld	$vr1, $a5, 16
	add.d	$a5, $s0, $a4
	vstx	$vr0, $s0, $a4
	addi.d	$a4, $a4, 32
	vst	$vr1, $a5, 16
	bne	$a1, $a4, .LBB12_25
# %bb.26:                               # %middle.block
	beq	$a1, $s5, .LBB12_12
# %bb.27:                               # %vec.epilog.iter.check
	beqz	$a3, .LBB12_11
	b	.LBB12_21
.LBB12_28:                              # %_ZN11CStringBaseIcED2Ev.exit
.Ltmp39:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNK11CStringBaseIcE3MidEii, .Lfunc_end12-_ZNK11CStringBaseIcE3MidEii
	.cfi_endproc
	.section	.gcc_except_table._ZNK11CStringBaseIcE3MidEii,"aG",@progbits,_ZNK11CStringBaseIcE3MidEii,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp37-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin3          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp38           #   Call between .Ltmp38 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
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
