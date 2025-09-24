	.file	"ShrinkDecoder.cpp"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
.LCPI0_0:
	.byte	32                              # 0x20
	.byte	31                              # 0x1f
	.byte	30                              # 0x1e
	.byte	29                              # 0x1d
	.byte	28                              # 0x1c
	.byte	27                              # 0x1b
	.byte	26                              # 0x1a
	.byte	25                              # 0x19
	.byte	24                              # 0x18
	.byte	23                              # 0x17
	.byte	22                              # 0x16
	.byte	21                              # 0x15
	.byte	20                              # 0x14
	.byte	19                              # 0x13
	.byte	18                              # 0x12
	.byte	17                              # 0x11
	.byte	16                              # 0x10
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
	.text
	.globl	_ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo,@function
_ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo: # @_ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -432
	.cfi_def_cfa_offset 432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$s3, $a1
	move	$s1, $a0
	addi.d	$fp, $sp, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBufferC1Ev)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 224
	st.w	$zero, $sp, 232
	st.d	$zero, $sp, 248
	st.d	$zero, $sp, 264
.Ltmp0:                                 # EH_LABEL
	lu12i.w	$a1, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN5NBitl12CBaseDecoderI9CInBufferE6CreateEj.exit
	lu12i.w	$a1, -524176
	ori	$s6, $a1, 14
	beqz	$a0, .LBB0_263
# %bb.2:
.Ltmp2:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.3:                                # %_ZN5NBitl12CBaseDecoderI9CInBufferE9SetStreamEP19ISequentialInStream.exit
.Ltmp4:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.4:
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 280
	st.w	$zero, $sp, 336
.Ltmp6:                                 # EH_LABEL
	lu12i.w	$a1, 256
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.5:
	beqz	$a0, .LBB0_263
# %bb.6:
.Ltmp8:                                 # EH_LABEL
	addi.d	$a0, $sp, 224
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.7:
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.8:                                # %.preheader202
	lu12i.w	$a0, 11
	ori	$a0, $a0, 4077
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 9
	ori	$a0, $a0, 4078
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 8
	ori	$s0, $a0, 269
	add.d	$s4, $s1, $s0
	addi.d	$s2, $s1, 12
	lu12i.w	$a1, 4
	ori	$a1, $a1, 12
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $a0, 12
	add.d	$s7, $s1, $a0
	ori	$a2, $zero, 257
	ori	$s3, $zero, 257
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	add.d	$s5, $s1, $s0
	lu12i.w	$s6, 6
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 3839
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s5
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	ori	$a0, $s6, 12
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 10
	ori	$a1, $a0, 12
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $a0, 269
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$s8, $zero, 32
	ori	$s5, $zero, 7
	lu12i.w	$a0, -4
	ori	$a0, $a0, 514
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	xvrepli.h	$xr0, 1
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.critedge159.thread294
                                        #   in Loop: Header=BB0_10 Depth=1
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 288
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_158 Depth 2
	ld.w	$a0, $sp, 280
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB0_23
# %bb.11:                               # %._ZN5NBitl12CBaseDecoderI9CInBufferE9NormalizeEv.exit_crit_edge.i
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a3, $sp, 284
.LBB0_12:                               # %.loopexit201
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a4, $sp, 336
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a1
	st.w	$a2, $sp, 280
	srl.w	$a1, $a3, $a1
	st.w	$a1, $sp, 284
	beqz	$a4, .LBB0_14
# %bb.13:                               # %.loopexit201
                                        #   in Loop: Header=BB0_10 Depth=1
	sub.w	$a0, $s8, $a2
	slli.w	$a4, $a4, 3
	bltu	$a0, $a4, .LBB0_260
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a0, $zero, -1
	move	$a4, $s7
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	sll.w	$s7, $a0, $a5
	andn	$fp, $a3, $s7
	ldx.bu	$a3, $a4, $fp
	ori	$s6, $zero, 1
	bnez	$a3, .LBB0_262
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a3, $zero, 256
	bne	$fp, $a3, .LBB0_34
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$fp, $sp, 288
	ori	$a0, $zero, 8
	bgeu	$a2, $a0, .LBB0_30
.LBB0_17:                               # %.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	nor	$a0, $s7, $zero
	and	$a0, $a1, $a0
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.w	$a2, $sp, 280
	srl.w	$a1, $a1, $a3
	addi.w	$a0, $a0, 0
	st.w	$a1, $sp, 284
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_51
# %bb.18:                               # %.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	bne	$a0, $s0, .LBB0_263
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	slti	$a0, $a1, 13
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_20:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a0, $sp, 288
.LBB0_21:                               # %_ZN9CInBuffer8ReadByteERh.exit.thread.i.i
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 288
	ld.bu	$a0, $a0, 0
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a1, $sp, 280
	ld.w	$a2, $sp, 284
	sub.d	$a3, $s8, $a1
	sll.w	$a0, $a0, $a3
	or	$a3, $a0, $a2
	st.w	$a3, $sp, 284
	addi.w	$a0, $a1, -8
	st.w	$a0, $sp, 280
	bgeu	$s5, $a0, .LBB0_12
.LBB0_23:                               # %.lr.ph.i.i
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 288
	ld.d	$a1, $sp, 296
	bltu	$a0, $a1, .LBB0_21
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
.Ltmp13:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.25:                               # %.noexc
                                        #   in Loop: Header=BB0_23 Depth=2
	bnez	$a0, .LBB0_20
# %bb.26:                               # %_ZN9CInBuffer8ReadByteERh.exit.i.i
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a0, $sp, 336
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 336
	ori	$a0, $zero, 255
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_27:                               # %._crit_edge.i.i.i173
                                        #   in Loop: Header=BB0_30 Depth=2
	ld.d	$a0, $sp, 288
.LBB0_28:                               # %_ZN9CInBuffer8ReadByteERh.exit.thread.i.i175
                                        #   in Loop: Header=BB0_30 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 288
	ld.bu	$a0, $a0, 0
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=2
	ld.w	$a2, $sp, 280
	ld.w	$a1, $sp, 284
	sub.d	$a3, $s8, $a2
	sll.w	$a0, $a0, $a3
	or	$a1, $a0, $a1
	st.w	$a1, $sp, 284
	addi.w	$a2, $a2, -8
	st.w	$a2, $sp, 280
	bgeu	$s5, $a2, .LBB0_17
.LBB0_30:                               # %.lr.ph.i.i169
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 288
	ld.d	$a1, $sp, 296
	bltu	$a0, $a1, .LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=2
.Ltmp25:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.32:                               # %.noexc176
                                        #   in Loop: Header=BB0_30 Depth=2
	bnez	$a0, .LBB0_27
# %bb.33:                               # %_ZN9CInBuffer8ReadByteERh.exit.i.i171
                                        #   in Loop: Header=BB0_30 Depth=2
	ld.w	$a0, $sp, 336
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 336
	ori	$a0, $zero, 255
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_34:                               # %.preheader200
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $s3, -1
	ori	$a2, $zero, 256
	bltu	$fp, $a2, .LBB0_38
# %bb.35:                               # %.lr.ph225
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$a2, $zero
	addi.w	$a4, $a1, 0
	addi.w	$a0, $zero, -1
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	move	$a5, $t1
	move	$a3, $fp
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ori	$t2, $zero, 255
	.p2align	4, , 16
.LBB0_36:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a6, $t0, $a3
	xor	$a7, $a3, $a4
	sltui	$a7, $a7, 1
	masknez	$a0, $a0, $a7
	st.b	$a6, $a5, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $s2, $a3
	maskeqz	$a6, $a2, $a7
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 1
	addi.w	$a2, $a2, 1
	bltu	$t2, $a3, .LBB0_36
# %bb.37:                               # %._crit_edge
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	andi	$a4, $a4, 1
	stx.b	$a3, $t1, $a2
	bnez	$a4, .LBB0_39
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a2, $zero
	move	$a3, $fp
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	andi	$a4, $a4, 1
	stx.b	$a3, $t1, $a2
	beqz	$a4, .LBB0_41
.LBB0_39:                               #   in Loop: Header=BB0_10 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	stx.b	$a3, $t0, $a1
	bltz	$a0, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_10 Depth=1
	stx.b	$a3, $t1, $a0
.LBB0_41:                               # %.lr.ph230.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	bstrpick.d	$a0, $a2, 31, 0
	add.d	$s6, $t1, $a0
	addi.d	$s7, $a2, 2
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %_ZN10COutBuffer9WriteByteEh.exit
                                        #   in Loop: Header=BB0_43 Depth=2
	addi.w	$s7, $s7, -1
	addi.d	$s6, $s6, -1
	bge	$s0, $s7, .LBB0_45
.LBB0_43:                               # %.lr.ph230
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a0, $sp, 232
	ld.b	$a1, $s6, 0
	ld.d	$a2, $sp, 224
	addi.d	$a3, $a0, 1
	st.w	$a3, $sp, 232
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $sp, 232
	ld.w	$a1, $sp, 236
	bne	$a0, $a1, .LBB0_42
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=2
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_45:                               # %.preheader199
                                        #   in Loop: Header=BB0_10 Depth=1
	bstrpick.d	$a0, $s3, 31, 13
	bnez	$a0, .LBB0_50
# %bb.46:                               # %.lr.ph233.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $s3, 1
	addi.w	$a0, $s3, 1
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_47:                               # %.lr.ph233
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s7, $s3
	bnez	$a2, .LBB0_162
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=2
	addi.d	$s3, $s3, 1
	bstrpick.d	$a2, $s3, 31, 0
	addi.d	$a1, $a1, 2
	addi.w	$a0, $a0, 1
	lu12i.w	$a3, 2
	bne	$a2, $a3, .LBB0_47
# %bb.49:                               #   in Loop: Header=BB0_10 Depth=1
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	lu12i.w	$s3, 2
	b	.LBB0_163
	.p2align	4, , 16
.LBB0_50:                               #   in Loop: Header=BB0_10 Depth=1
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_163
	.p2align	4, , 16
.LBB0_51:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $s3, -1
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$s0, $s7, $a0
.LBB0_53:                               # %.preheader198.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	lu12i.w	$a7, 2
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               #   in Loop: Header=BB0_55 Depth=2
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 1
	beqz	$a0, .LBB0_57
.LBB0_55:                               # %.preheader198
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s1, $a1
	bnez	$a2, .LBB0_54
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=2
	add.d	$a2, $s1, $a0
	ldx.hu	$a2, $a2, $a5
	stx.b	$s0, $a6, $a2
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_57:                               # %vector.body319.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a5, 1
	ori	$a0, $a5, 3808
	move	$a1, $s4
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               # %pred.store.continue383
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a0, $a0, -32
	addi.d	$a1, $a1, 32
	beqz	$a0, .LBB0_123
.LBB0_59:                               # %vector.body319
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $a1, $a7
	xvxori.b	$xr0, $xr0, 255
	vpickve2gr.b	$a2, $vr0, 0
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_91
# %bb.60:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_92
.LBB0_61:                               # %pred.store.continue323
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_93
.LBB0_62:                               # %pred.store.continue325
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 3
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_94
.LBB0_63:                               # %pred.store.continue327
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 4
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_95
.LBB0_64:                               # %pred.store.continue329
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_96
.LBB0_65:                               # %pred.store.continue331
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 6
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_97
.LBB0_66:                               # %pred.store.continue333
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 7
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_98
.LBB0_67:                               # %pred.store.continue335
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 8
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_99
.LBB0_68:                               # %pred.store.continue337
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 9
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_100
.LBB0_69:                               # %pred.store.continue339
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 10
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_101
.LBB0_70:                               # %pred.store.continue341
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 11
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_102
.LBB0_71:                               # %pred.store.continue343
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 12
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_103
.LBB0_72:                               # %pred.store.continue345
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 13
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_104
.LBB0_73:                               # %pred.store.continue347
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 14
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_105
.LBB0_74:                               # %pred.store.continue349
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_106
.LBB0_75:                               # %pred.store.continue351
                                        #   in Loop: Header=BB0_59 Depth=2
	xvpermi.d	$xr0, $xr0, 14
	vpickve2gr.b	$a2, $vr0, 0
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_107
.LBB0_76:                               # %pred.store.continue353
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_108
.LBB0_77:                               # %pred.store.continue355
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_109
.LBB0_78:                               # %pred.store.continue357
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 3
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_110
.LBB0_79:                               # %pred.store.continue359
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 4
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_111
.LBB0_80:                               # %pred.store.continue361
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_112
.LBB0_81:                               # %pred.store.continue363
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 6
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_113
.LBB0_82:                               # %pred.store.continue365
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 7
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_114
.LBB0_83:                               # %pred.store.continue367
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 8
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_115
.LBB0_84:                               # %pred.store.continue369
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 9
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_116
.LBB0_85:                               # %pred.store.continue371
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 10
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_117
.LBB0_86:                               # %pred.store.continue373
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 11
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_118
.LBB0_87:                               # %pred.store.continue375
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 12
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_119
.LBB0_88:                               # %pred.store.continue377
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 13
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_120
.LBB0_89:                               # %pred.store.continue379
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 14
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_121
.LBB0_90:                               # %pred.store.continue381
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_58
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_91:                               # %pred.store.if
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 0
	vpickve2gr.b	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_61
.LBB0_92:                               # %pred.store.if322
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 1
	vpickve2gr.b	$a2, $vr0, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_62
.LBB0_93:                               # %pred.store.if324
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 2
	vpickve2gr.b	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_63
.LBB0_94:                               # %pred.store.if326
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 3
	vpickve2gr.b	$a2, $vr0, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_64
.LBB0_95:                               # %pred.store.if328
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 4
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_65
.LBB0_96:                               # %pred.store.if330
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 5
	vpickve2gr.b	$a2, $vr0, 6
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_66
.LBB0_97:                               # %pred.store.if332
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 6
	vpickve2gr.b	$a2, $vr0, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_67
.LBB0_98:                               # %pred.store.if334
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 7
	vpickve2gr.b	$a2, $vr0, 8
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_68
.LBB0_99:                               # %pred.store.if336
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 8
	vpickve2gr.b	$a2, $vr0, 9
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_69
.LBB0_100:                              # %pred.store.if338
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 9
	vpickve2gr.b	$a2, $vr0, 10
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_70
.LBB0_101:                              # %pred.store.if340
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 10
	vpickve2gr.b	$a2, $vr0, 11
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_71
.LBB0_102:                              # %pred.store.if342
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 11
	vpickve2gr.b	$a2, $vr0, 12
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_72
.LBB0_103:                              # %pred.store.if344
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 12
	vpickve2gr.b	$a2, $vr0, 13
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_73
.LBB0_104:                              # %pred.store.if346
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 13
	vpickve2gr.b	$a2, $vr0, 14
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_74
.LBB0_105:                              # %pred.store.if348
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 14
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_75
.LBB0_106:                              # %pred.store.if350
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 15
	xvpermi.d	$xr0, $xr0, 14
	vpickve2gr.b	$a2, $vr0, 0
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_76
.LBB0_107:                              # %pred.store.if352
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 16
	vpickve2gr.b	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_77
.LBB0_108:                              # %pred.store.if354
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 17
	vpickve2gr.b	$a2, $vr0, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_78
.LBB0_109:                              # %pred.store.if356
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 18
	vpickve2gr.b	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_79
.LBB0_110:                              # %pred.store.if358
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 19
	vpickve2gr.b	$a2, $vr0, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_80
.LBB0_111:                              # %pred.store.if360
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 20
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_81
.LBB0_112:                              # %pred.store.if362
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 21
	vpickve2gr.b	$a2, $vr0, 6
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_82
.LBB0_113:                              # %pred.store.if364
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 22
	vpickve2gr.b	$a2, $vr0, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_83
.LBB0_114:                              # %pred.store.if366
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 23
	vpickve2gr.b	$a2, $vr0, 8
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_84
.LBB0_115:                              # %pred.store.if368
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 24
	vpickve2gr.b	$a2, $vr0, 9
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_85
.LBB0_116:                              # %pred.store.if370
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 25
	vpickve2gr.b	$a2, $vr0, 10
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_86
.LBB0_117:                              # %pred.store.if372
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 26
	vpickve2gr.b	$a2, $vr0, 11
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_87
.LBB0_118:                              # %pred.store.if374
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 27
	vpickve2gr.b	$a2, $vr0, 12
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_88
.LBB0_119:                              # %pred.store.if376
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 28
	vpickve2gr.b	$a2, $vr0, 13
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_89
.LBB0_120:                              # %pred.store.if378
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 29
	vpickve2gr.b	$a2, $vr0, 14
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_90
.LBB0_121:                              # %pred.store.if380
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 30
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_58
.LBB0_122:                              # %pred.store.if382
                                        #   in Loop: Header=BB0_59 Depth=2
	st.b	$s0, $a1, 31
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_123:                              # %vec.epilog.vector.body
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a3, 0
	vinsgr2vr.d	$vr0, $a0, 0
	vpickve2gr.b	$a0, $vr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	vpickve2gr.b	$a0, $vr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	vpickve2gr.b	$a0, $vr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	vpickve2gr.b	$a0, $vr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	vpickve2gr.b	$a0, $vr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	vpickve2gr.b	$a0, $vr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	vpickve2gr.b	$a0, $vr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	vpickve2gr.b	$a0, $vr0, 7
	vinsgr2vr.h	$vr1, $a0, 7
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvand.v	$xr0, $xr1, $xr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vxor.v	$vr0, $vr0, $vr1
	vpickve2gr.h	$a0, $vr0, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_168
# %bb.124:                              # %pred.store.continue390
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_169
.LBB0_125:                              # %pred.store.continue392
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_170
.LBB0_126:                              # %pred.store.continue394
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_171
.LBB0_127:                              # %pred.store.continue396
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_172
.LBB0_128:                              # %pred.store.continue398
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_173
.LBB0_129:                              # %pred.store.continue400
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 6
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_174
.LBB0_130:                              # %pred.store.continue402
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_132
.LBB0_131:                              # %pred.store.if403
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 6
.LBB0_132:                              # %pred.store.continue404
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a3, 8
	vinsgr2vr.d	$vr0, $a0, 0
	vpickve2gr.b	$a0, $vr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	vpickve2gr.b	$a0, $vr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	vpickve2gr.b	$a0, $vr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	vpickve2gr.b	$a0, $vr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	vpickve2gr.b	$a0, $vr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	vpickve2gr.b	$a0, $vr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	vpickve2gr.b	$a0, $vr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	vpickve2gr.b	$a0, $vr0, 7
	vinsgr2vr.h	$vr1, $a0, 7
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvand.v	$xr0, $xr1, $xr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vxor.v	$vr0, $vr0, $vr1
	vpickve2gr.h	$a0, $vr0, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_175
# %bb.133:                              # %pred.store.continue390.1
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_176
.LBB0_134:                              # %pred.store.continue392.1
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_177
.LBB0_135:                              # %pred.store.continue394.1
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_178
.LBB0_136:                              # %pred.store.continue396.1
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_179
.LBB0_137:                              # %pred.store.continue398.1
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_180
.LBB0_138:                              # %pred.store.continue400.1
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 6
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_181
.LBB0_139:                              # %pred.store.continue402.1
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_141
.LBB0_140:                              # %pred.store.if403.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 14
.LBB0_141:                              # %pred.store.continue404.1
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a3, 16
	vinsgr2vr.d	$vr0, $a0, 0
	vpickve2gr.b	$a0, $vr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	vpickve2gr.b	$a0, $vr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	vpickve2gr.b	$a0, $vr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	vpickve2gr.b	$a0, $vr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	vpickve2gr.b	$a0, $vr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	vpickve2gr.b	$a0, $vr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	vpickve2gr.b	$a0, $vr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	vpickve2gr.b	$a0, $vr0, 7
	vinsgr2vr.h	$vr1, $a0, 7
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvand.v	$xr0, $xr1, $xr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vxor.v	$vr0, $vr0, $vr1
	vpickve2gr.h	$a0, $vr0, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_182
# %bb.142:                              # %pred.store.continue390.2
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_183
.LBB0_143:                              # %pred.store.continue392.2
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_184
.LBB0_144:                              # %pred.store.continue394.2
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_185
.LBB0_145:                              # %pred.store.continue396.2
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_186
.LBB0_146:                              # %pred.store.continue398.2
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_187
.LBB0_147:                              # %pred.store.continue400.2
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 6
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_188
.LBB0_148:                              # %pred.store.continue402.2
                                        #   in Loop: Header=BB0_10 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_189
.LBB0_149:                              # %.preheader197
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a3, 24
	beqz	$a0, .LBB0_190
.LBB0_150:                              # %.preheader197.1
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a3, 25
	beqz	$a0, .LBB0_191
.LBB0_151:                              # %.preheader197.2
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a3, 26
	beqz	$a0, .LBB0_192
.LBB0_152:                              # %.preheader197.3
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a3, 27
	beqz	$a0, .LBB0_193
.LBB0_153:                              # %.preheader197.4
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a3, 28
	beqz	$a0, .LBB0_194
.LBB0_154:                              # %.preheader197.5
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a3, 29
	beqz	$a0, .LBB0_195
.LBB0_155:                              # %.preheader197.6
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a3, 30
	bnez	$a0, .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 29
.LBB0_157:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_158:                              # %vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a0
	xvldx	$xr0, $s4, $a0
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr1, $xr0
	xvpickve2gr.wu	$a0, $xr1, 0
	xvpickve2gr.wu	$a2, $xr1, 4
	bstrins.d	$a0, $a2, 31, 16
	addi.w	$a2, $a0, 0
	addi.d	$a0, $a1, 32
	bnez	$a2, .LBB0_160
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_158 Depth=2
	ori	$a3, $a5, 3776
	bne	$a1, $a3, .LBB0_158
.LBB0_160:                              # %middle.split
                                        #   in Loop: Header=BB0_10 Depth=1
	beqz	$a2, .LBB0_196
# %bb.161:                              # %vector.early.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_0)
	xvsrai.b	$xr0, $xr0, 7
	xvand.v	$xr0, $xr0, $xr1
	xvpermi.q	$xr1, $xr0, 1
	vmax.bu	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a1, $vr0, 0
	sub.d	$a1, $s8, $a1
	andi	$a1, $a1, 255
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 225
	b	.LBB0_257
.LBB0_162:                              # %.critedge3
                                        #   in Loop: Header=BB0_10 Depth=1
	stx.b	$zero, $s7, $s3
	add.d	$a1, $s7, $a1
	lu12i.w	$a2, -8
	stx.h	$fp, $a1, $a2
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	move	$s3, $a0
.LBB0_163:                              # %.critedge161
                                        #   in Loop: Header=BB0_10 Depth=1
.Ltmp19:                                # EH_LABEL
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.164:                              #   in Loop: Header=BB0_10 Depth=1
	move	$s6, $a0
	st.d	$a0, $sp, 216
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_9
# %bb.165:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a0, $s6, $a0
	lu12i.w	$a1, 64
	bgeu	$a1, $a0, .LBB0_9
# %bb.166:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a6, $sp, 320
	ld.w	$a1, $sp, 280
	ld.d	$a2, $sp, 288
	ld.d	$a3, $sp, 304
	ld.wu	$a4, $sp, 336
	sub.d	$a1, $s8, $a1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $a0, 0
	bstrpick.d	$a1, $a1, 31, 3
	add.d	$a2, $a6, $a2
	add.d	$a2, $a2, $a4
	ld.d	$a4, $a5, 40
	add.d	$a1, $a3, $a1
	sub.d	$a1, $a2, $a1
	st.d	$a1, $sp, 208
.Ltmp22:                                # EH_LABEL
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 216
	jirl	$ra, $a4, 0
.Ltmp23:                                # EH_LABEL
# %bb.167:                              # %.critedge159
                                        #   in Loop: Header=BB0_10 Depth=1
	sltui	$a1, $a0, 1
	masknez	$a2, $a0, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	move	$s6, $a1
	addi.d	$fp, $sp, 288
	beqz	$a0, .LBB0_10
	b	.LBB0_263
.LBB0_168:                              # %pred.store.if389
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 3808
	stx.b	$s0, $s4, $a0
	vpickve2gr.h	$a0, $vr0, 1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_125
.LBB0_169:                              # %pred.store.if391
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 0
	vpickve2gr.h	$a0, $vr0, 2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_126
.LBB0_170:                              # %pred.store.if393
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 1
	vpickve2gr.h	$a0, $vr0, 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_127
.LBB0_171:                              # %pred.store.if395
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 2
	vpickve2gr.h	$a0, $vr0, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_128
.LBB0_172:                              # %pred.store.if397
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 3
	vpickve2gr.h	$a0, $vr0, 5
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_129
.LBB0_173:                              # %pred.store.if399
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 4
	vpickve2gr.h	$a0, $vr0, 6
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_130
.LBB0_174:                              # %pred.store.if401
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 5
	vpickve2gr.h	$a0, $vr0, 7
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_131
	b	.LBB0_132
.LBB0_175:                              # %pred.store.if389.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 7
	vpickve2gr.h	$a0, $vr0, 1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_134
.LBB0_176:                              # %pred.store.if391.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 8
	vpickve2gr.h	$a0, $vr0, 2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_135
.LBB0_177:                              # %pred.store.if393.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 9
	vpickve2gr.h	$a0, $vr0, 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_136
.LBB0_178:                              # %pred.store.if395.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 10
	vpickve2gr.h	$a0, $vr0, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_137
.LBB0_179:                              # %pred.store.if397.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 11
	vpickve2gr.h	$a0, $vr0, 5
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_138
.LBB0_180:                              # %pred.store.if399.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 12
	vpickve2gr.h	$a0, $vr0, 6
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_139
.LBB0_181:                              # %pred.store.if401.1
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 13
	vpickve2gr.h	$a0, $vr0, 7
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_140
	b	.LBB0_141
.LBB0_182:                              # %pred.store.if389.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 15
	vpickve2gr.h	$a0, $vr0, 1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_143
.LBB0_183:                              # %pred.store.if391.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 16
	vpickve2gr.h	$a0, $vr0, 2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_144
.LBB0_184:                              # %pred.store.if393.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 17
	vpickve2gr.h	$a0, $vr0, 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_145
.LBB0_185:                              # %pred.store.if395.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 18
	vpickve2gr.h	$a0, $vr0, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_146
.LBB0_186:                              # %pred.store.if397.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 19
	vpickve2gr.h	$a0, $vr0, 5
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_147
.LBB0_187:                              # %pred.store.if399.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 20
	vpickve2gr.h	$a0, $vr0, 6
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_148
.LBB0_188:                              # %pred.store.if401.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 21
	vpickve2gr.h	$a0, $vr0, 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_149
.LBB0_189:                              # %pred.store.if403.2
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 22
	ld.bu	$a0, $a3, 24
	bnez	$a0, .LBB0_150
.LBB0_190:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 23
	ld.bu	$a0, $a3, 25
	bnez	$a0, .LBB0_151
.LBB0_191:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 24
	ld.bu	$a0, $a3, 26
	bnez	$a0, .LBB0_152
.LBB0_192:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 25
	ld.bu	$a0, $a3, 27
	bnez	$a0, .LBB0_153
.LBB0_193:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 26
	ld.bu	$a0, $a3, 28
	bnez	$a0, .LBB0_154
.LBB0_194:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 27
	ld.bu	$a0, $a3, 29
	bnez	$a0, .LBB0_155
.LBB0_195:                              #   in Loop: Header=BB0_10 Depth=1
	st.b	$s0, $a4, 28
	ld.bu	$a0, $a3, 30
	beqz	$a0, .LBB0_156
	b	.LBB0_157
.LBB0_196:                              # %.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 3808
	ldx.bu	$a0, $s4, $a0
	beqz	$a0, .LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4065
	b	.LBB0_257
.LBB0_198:                              # %.preheader.1
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 0
	beqz	$a0, .LBB0_200
# %bb.199:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4066
	b	.LBB0_257
.LBB0_200:                              # %.preheader.2
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 1
	beqz	$a0, .LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4067
	b	.LBB0_257
.LBB0_202:                              # %.preheader.3
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 2
	beqz	$a0, .LBB0_204
# %bb.203:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4068
	b	.LBB0_257
.LBB0_204:                              # %.preheader.4
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 3
	beqz	$a0, .LBB0_206
# %bb.205:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4069
	b	.LBB0_257
.LBB0_206:                              # %.preheader.5
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 4
	beqz	$a0, .LBB0_208
# %bb.207:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4070
	b	.LBB0_257
.LBB0_208:                              # %.preheader.6
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 5
	beqz	$a0, .LBB0_210
# %bb.209:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4071
	b	.LBB0_257
.LBB0_210:                              # %.preheader.7
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 6
	beqz	$a0, .LBB0_212
# %bb.211:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4072
	b	.LBB0_257
.LBB0_212:                              # %.preheader.8
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 7
	beqz	$a0, .LBB0_214
# %bb.213:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4073
	b	.LBB0_257
.LBB0_214:                              # %.preheader.9
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 8
	beqz	$a0, .LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4074
	b	.LBB0_257
.LBB0_216:                              # %.preheader.10
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 9
	beqz	$a0, .LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4075
	b	.LBB0_257
.LBB0_218:                              # %.preheader.11
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 10
	beqz	$a0, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $a5, 4076
	b	.LBB0_257
.LBB0_220:                              # %.preheader.12
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $a4, 11
	beqz	$a0, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4077
	b	.LBB0_256
.LBB0_222:                              # %.preheader.13
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 12
	beqz	$a0, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4078
	b	.LBB0_256
.LBB0_224:                              # %.preheader.14
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 13
	beqz	$a0, .LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4079
	b	.LBB0_256
.LBB0_226:                              # %.preheader.15
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 14
	beqz	$a0, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4080
	b	.LBB0_256
.LBB0_228:                              # %.preheader.16
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 15
	beqz	$a0, .LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4081
	b	.LBB0_256
.LBB0_230:                              # %.preheader.17
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 16
	beqz	$a0, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4082
	b	.LBB0_256
.LBB0_232:                              # %.preheader.18
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 17
	beqz	$a0, .LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4083
	b	.LBB0_256
.LBB0_234:                              # %.preheader.19
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 18
	beqz	$a0, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4084
	b	.LBB0_256
.LBB0_236:                              # %.preheader.20
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 19
	beqz	$a0, .LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4085
	b	.LBB0_256
.LBB0_238:                              # %.preheader.21
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 20
	beqz	$a0, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4086
	b	.LBB0_256
.LBB0_240:                              # %.preheader.22
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 21
	beqz	$a0, .LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4087
	b	.LBB0_256
.LBB0_242:                              # %.preheader.23
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 22
	beqz	$a0, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4088
	b	.LBB0_256
.LBB0_244:                              # %.preheader.24
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 23
	beqz	$a0, .LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4089
	b	.LBB0_256
.LBB0_246:                              # %.preheader.25
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 24
	beqz	$a0, .LBB0_248
# %bb.247:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4090
	b	.LBB0_256
.LBB0_248:                              # %.preheader.26
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 25
	beqz	$a0, .LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4091
	b	.LBB0_256
.LBB0_250:                              # %.preheader.27
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 26
	beqz	$a0, .LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4092
	b	.LBB0_256
.LBB0_252:                              # %.preheader.28
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 27
	beqz	$a0, .LBB0_254
# %bb.253:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4093
	b	.LBB0_256
.LBB0_254:                              # %.preheader.29
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 28
	beqz	$a0, .LBB0_258
# %bb.255:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4094
.LBB0_256:                              # %.critedge
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$fp, $sp, 288
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_257:                              # %.critedge
                                        #   in Loop: Header=BB0_10 Depth=1
	stx.b	$zero, $s7, $a0
	slli.d	$a1, $a0, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.h	$a2, $s2, $a1
	addi.w	$s3, $a0, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	b	.LBB0_10
.LBB0_258:                              # %.preheader.30
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 29
	lu12i.w	$s3, 2
	addi.d	$fp, $sp, 288
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_10
# %bb.259:                              #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4095
	b	.LBB0_257
.LBB0_260:                              # %.critedge159.thread187
.Ltmp28:                                # EH_LABEL
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.261:
	move	$s6, $a0
	b	.LBB0_263
.LBB0_262:
	addi.d	$fp, $sp, 288
.LBB0_263:                              # %.critedge159.thread
.Ltmp31:                                # EH_LABEL
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.264:
	ld.d	$a0, $sp, 248
	beqz	$a0, .LBB0_266
# %bb.265:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp34:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp35:                                # EH_LABEL
.LBB0_266:                              # %_ZN10COutBufferD2Ev.exit
.Ltmp37:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.267:
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB0_269
# %bb.268:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp40:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp41:                                # EH_LABEL
.LBB0_269:                              # %_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev.exit
	addi.w	$a0, $s6, 0
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.LBB0_270:
.Ltmp30:                                # EH_LABEL
	b	.LBB0_281
.LBB0_271:
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_272:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_273:
.Ltmp24:                                # EH_LABEL
	b	.LBB0_281
.LBB0_274:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_275:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_276:
.Ltmp21:                                # EH_LABEL
	b	.LBB0_281
.LBB0_277:
.Ltmp12:                                # EH_LABEL
	b	.LBB0_281
.LBB0_278:
.Ltmp27:                                # EH_LABEL
	b	.LBB0_281
.LBB0_279:
.Ltmp18:                                # EH_LABEL
	b	.LBB0_281
.LBB0_280:
.Ltmp15:                                # EH_LABEL
.LBB0_281:
	move	$fp, $a0
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN10COutBufferD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo, .Lfunc_end0-_ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp17                #   Call between .Ltmp17 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Lfunc_end0-.Ltmp41            #   Call between .Ltmp41 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10COutBufferD2Ev,"axG",@progbits,_ZN10COutBufferD2Ev,comdat
	.weak	_ZN10COutBufferD2Ev             # -- Begin function _ZN10COutBufferD2Ev
	.p2align	5
	.type	_ZN10COutBufferD2Ev,@function
_ZN10COutBufferD2Ev:                    # @_ZN10COutBufferD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp43:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB1_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp46:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp47:                                # EH_LABEL
.LBB1_3:                                # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_4:
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_5:
.Ltmp45:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN10COutBufferD2Ev, .Lfunc_end1-_ZN10COutBufferD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10COutBufferD2Ev,"aG",@progbits,_ZN10COutBufferD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp47            #   Call between .Ltmp47 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN5NBitl12CBaseDecoderI9CInBufferED2Ev,"axG",@progbits,_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev,comdat
	.weak	_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev # -- Begin function _ZN5NBitl12CBaseDecoderI9CInBufferED2Ev
	.p2align	5
	.type	_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev,@function
_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev: # @_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $a0, 8
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB2_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp52:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp53:                                # EH_LABEL
.LBB2_3:                                # %_ZN9CInBufferD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_4:
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_5:
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev, .Lfunc_end2-_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN5NBitl12CBaseDecoderI9CInBufferED2Ev,"aG",@progbits,_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo # -- Begin function _ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo,@function
_ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo: # @_ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
.Ltmp55:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress7NShrink8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
.LBB3_1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_2:
.Ltmp57:                                # EH_LABEL
	addi.w	$fp, $a1, 0
	ori	$a1, $zero, 3
	bne	$fp, $a1, .LBB3_4
# %bb.3:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_4:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$s0, $zero, 1
	bne	$fp, $a1, .LBB3_6
.LBB3_5:                                # %.sink.split.sink.split
	ld.w	$s0, $a0, 0
.LBB3_6:                                # %.sink.split
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_1
.Lfunc_end3:
	.size	_ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo, .Lfunc_end3-_ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp55-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin3          #     jumps to .Ltmp57
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp56-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp56            #   Call between .Ltmp56 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	3                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                             #   Continue to action 2
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp58:                                # TypeInfo 3
	.word	.L_ZTI18CInBufferException.DW.stub-.Ltmp58
.Ltmp59:                                # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp59
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv,@function
_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv: # @_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB4_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB4_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB4_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB4_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB4_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB4_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB4_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB4_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB4_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB4_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB4_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB4_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB4_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB4_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB4_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB4_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB4_17:                               # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end4:
	.size	_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end4-_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress7NShrink8CDecoder6AddRefEv,"axG",@progbits,_ZN9NCompress7NShrink8CDecoder6AddRefEv,comdat
	.weak	_ZN9NCompress7NShrink8CDecoder6AddRefEv # -- Begin function _ZN9NCompress7NShrink8CDecoder6AddRefEv
	.p2align	5
	.type	_ZN9NCompress7NShrink8CDecoder6AddRefEv,@function
_ZN9NCompress7NShrink8CDecoder6AddRefEv: # @_ZN9NCompress7NShrink8CDecoder6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end5:
	.size	_ZN9NCompress7NShrink8CDecoder6AddRefEv, .Lfunc_end5-_ZN9NCompress7NShrink8CDecoder6AddRefEv
                                        # -- End function
	.section	.text._ZN9NCompress7NShrink8CDecoder7ReleaseEv,"axG",@progbits,_ZN9NCompress7NShrink8CDecoder7ReleaseEv,comdat
	.weak	_ZN9NCompress7NShrink8CDecoder7ReleaseEv # -- Begin function _ZN9NCompress7NShrink8CDecoder7ReleaseEv
	.p2align	5
	.type	_ZN9NCompress7NShrink8CDecoder7ReleaseEv,@function
_ZN9NCompress7NShrink8CDecoder7ReleaseEv: # @_ZN9NCompress7NShrink8CDecoder7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB6_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB6_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_ZN9NCompress7NShrink8CDecoder7ReleaseEv, .Lfunc_end6-_ZN9NCompress7NShrink8CDecoder7ReleaseEv
                                        # -- End function
	.section	.text._ZN8IUnknownD2Ev,"axG",@progbits,_ZN8IUnknownD2Ev,comdat
	.weak	_ZN8IUnknownD2Ev                # -- Begin function _ZN8IUnknownD2Ev
	.p2align	5
	.type	_ZN8IUnknownD2Ev,@function
_ZN8IUnknownD2Ev:                       # @_ZN8IUnknownD2Ev
# %bb.0:
	ret
.Lfunc_end7:
	.size	_ZN8IUnknownD2Ev, .Lfunc_end7-_ZN8IUnknownD2Ev
                                        # -- End function
	.section	.text._ZN9NCompress7NShrink8CDecoderD0Ev,"axG",@progbits,_ZN9NCompress7NShrink8CDecoderD0Ev,comdat
	.weak	_ZN9NCompress7NShrink8CDecoderD0Ev # -- Begin function _ZN9NCompress7NShrink8CDecoderD0Ev
	.p2align	5
	.type	_ZN9NCompress7NShrink8CDecoderD0Ev,@function
_ZN9NCompress7NShrink8CDecoderD0Ev:     # @_ZN9NCompress7NShrink8CDecoderD0Ev
# %bb.0:
	lu12i.w	$a1, 12
	ori	$a1, $a1, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end8:
	.size	_ZN9NCompress7NShrink8CDecoderD0Ev, .Lfunc_end8-_ZN9NCompress7NShrink8CDecoderD0Ev
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	__clang_call_terminate, .Lfunc_end9-__clang_call_terminate
                                        # -- End function
	.type	_ZTI18CInBufferException,@object # @_ZTI18CInBufferException
	.section	.data.rel.ro._ZTI18CInBufferException,"awG",@progbits,_ZTI18CInBufferException,comdat
	.weak	_ZTI18CInBufferException
	.p2align	3, 0x0
_ZTI18CInBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18CInBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI18CInBufferException, 24

	.type	_ZTS18CInBufferException,@object # @_ZTS18CInBufferException
	.section	.rodata._ZTS18CInBufferException,"aG",@progbits,_ZTS18CInBufferException,comdat
	.weak	_ZTS18CInBufferException
_ZTS18CInBufferException:
	.asciz	"18CInBufferException"
	.size	_ZTS18CInBufferException, 21

	.type	_ZTI16CSystemException,@object  # @_ZTI16CSystemException
	.section	.data.rel.ro._ZTI16CSystemException,"awG",@progbits,_ZTI16CSystemException,comdat
	.weak	_ZTI16CSystemException
	.p2align	3, 0x0
_ZTI16CSystemException:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS16CSystemException
	.size	_ZTI16CSystemException, 16

	.type	_ZTS16CSystemException,@object  # @_ZTS16CSystemException
	.section	.rodata._ZTS16CSystemException,"aG",@progbits,_ZTS16CSystemException,comdat
	.weak	_ZTS16CSystemException
_ZTS16CSystemException:
	.asciz	"16CSystemException"
	.size	_ZTS16CSystemException, 19

	.type	_ZTI19COutBufferException,@object # @_ZTI19COutBufferException
	.section	.data.rel.ro._ZTI19COutBufferException,"awG",@progbits,_ZTI19COutBufferException,comdat
	.weak	_ZTI19COutBufferException
	.p2align	3, 0x0
_ZTI19COutBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19COutBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI19COutBufferException, 24

	.type	_ZTS19COutBufferException,@object # @_ZTS19COutBufferException
	.section	.rodata._ZTS19COutBufferException,"aG",@progbits,_ZTS19COutBufferException,comdat
	.weak	_ZTS19COutBufferException
_ZTS19COutBufferException:
	.asciz	"19COutBufferException"
	.size	_ZTS19COutBufferException, 22

	.type	_ZTVN9NCompress7NShrink8CDecoderE,@object # @_ZTVN9NCompress7NShrink8CDecoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9NCompress7NShrink8CDecoderE
	.p2align	3, 0x0
_ZTVN9NCompress7NShrink8CDecoderE:
	.dword	0
	.dword	_ZTIN9NCompress7NShrink8CDecoderE
	.dword	_ZN9NCompress7NShrink8CDecoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZN9NCompress7NShrink8CDecoder6AddRefEv
	.dword	_ZN9NCompress7NShrink8CDecoder7ReleaseEv
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN9NCompress7NShrink8CDecoderD0Ev
	.dword	_ZN9NCompress7NShrink8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.size	_ZTVN9NCompress7NShrink8CDecoderE, 64

	.type	_ZTIN9NCompress7NShrink8CDecoderE,@object # @_ZTIN9NCompress7NShrink8CDecoderE
	.globl	_ZTIN9NCompress7NShrink8CDecoderE
	.p2align	3, 0x0
_ZTIN9NCompress7NShrink8CDecoderE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN9NCompress7NShrink8CDecoderE
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI14ICompressCoder
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN9NCompress7NShrink8CDecoderE, 56

	.type	_ZTSN9NCompress7NShrink8CDecoderE,@object # @_ZTSN9NCompress7NShrink8CDecoderE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9NCompress7NShrink8CDecoderE
_ZTSN9NCompress7NShrink8CDecoderE:
	.asciz	"N9NCompress7NShrink8CDecoderE"
	.size	_ZTSN9NCompress7NShrink8CDecoderE, 30

	.type	_ZTI14ICompressCoder,@object    # @_ZTI14ICompressCoder
	.section	.data.rel.ro._ZTI14ICompressCoder,"awG",@progbits,_ZTI14ICompressCoder,comdat
	.weak	_ZTI14ICompressCoder
	.p2align	3, 0x0
_ZTI14ICompressCoder:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14ICompressCoder
	.dword	_ZTI8IUnknown
	.size	_ZTI14ICompressCoder, 24

	.type	_ZTS14ICompressCoder,@object    # @_ZTS14ICompressCoder
	.section	.rodata._ZTS14ICompressCoder,"aG",@progbits,_ZTS14ICompressCoder,comdat
	.weak	_ZTS14ICompressCoder
_ZTS14ICompressCoder:
	.asciz	"14ICompressCoder"
	.size	_ZTS14ICompressCoder, 17

	.type	_ZTI8IUnknown,@object           # @_ZTI8IUnknown
	.section	.data.rel.ro._ZTI8IUnknown,"awG",@progbits,_ZTI8IUnknown,comdat
	.weak	_ZTI8IUnknown
	.p2align	3, 0x0
_ZTI8IUnknown:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS8IUnknown
	.size	_ZTI8IUnknown, 16

	.type	_ZTS8IUnknown,@object           # @_ZTS8IUnknown
	.section	.rodata._ZTS8IUnknown,"aG",@progbits,_ZTS8IUnknown,comdat
	.weak	_ZTS8IUnknown
_ZTS8IUnknown:
	.asciz	"8IUnknown"
	.size	_ZTS8IUnknown, 10

	.type	_ZTI13CMyUnknownImp,@object     # @_ZTI13CMyUnknownImp
	.section	.data.rel.ro._ZTI13CMyUnknownImp,"awG",@progbits,_ZTI13CMyUnknownImp,comdat
	.weak	_ZTI13CMyUnknownImp
	.p2align	3, 0x0
_ZTI13CMyUnknownImp:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS13CMyUnknownImp
	.size	_ZTI13CMyUnknownImp, 16

	.type	_ZTS13CMyUnknownImp,@object     # @_ZTS13CMyUnknownImp
	.section	.rodata._ZTS13CMyUnknownImp,"aG",@progbits,_ZTS13CMyUnknownImp,comdat
	.weak	_ZTS13CMyUnknownImp
_ZTS13CMyUnknownImp:
	.asciz	"13CMyUnknownImp"
	.size	_ZTS13CMyUnknownImp, 16

	.data
	.p2align	3, 0x0
.L_ZTI18CInBufferException.DW.stub:
	.dword	_ZTI18CInBufferException
.L_ZTI19COutBufferException.DW.stub:
	.dword	_ZTI19COutBufferException
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
	.addrsig_sym _ZTI18CInBufferException
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18CInBufferException
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym _ZTI19COutBufferException
	.addrsig_sym _ZTS19COutBufferException
	.addrsig_sym _ZTIN9NCompress7NShrink8CDecoderE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN9NCompress7NShrink8CDecoderE
	.addrsig_sym _ZTI14ICompressCoder
	.addrsig_sym _ZTS14ICompressCoder
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
