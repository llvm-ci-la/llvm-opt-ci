	.file	"7zEncode.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	_ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy
	.p2align	5
	.type	_ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy,@function
_ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy: # @_ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 224
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$zero, $a0, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTVN11NCoderMixer14CCoderMixer2MTE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN11NCoderMixer14CCoderMixer2MTE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $s1, 0
	addi.d	$a1, $a0, 104
	st.d	$a1, $s1, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 32
	ori	$a1, $zero, 8
	st.d	$a1, $s1, 48
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	st.d	$a2, $s1, 24
	vst	$vr0, $s1, 64
	st.d	$a1, $s1, 80
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	st.d	$a2, $s1, 56
	vst	$vr0, $s1, 96
	ori	$a2, $zero, 4
	st.d	$a2, $s1, 112
	pcalau12i	$a3, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a3, $s1, 88
	vst	$vr0, $s1, 128
	st.d	$a2, $s1, 144
	st.d	$a3, $s1, 120
	vst	$vr0, $s1, 160
	st.d	$a1, $s1, 176
	pcalau12i	$a2, %pc_hi20(_ZTV13CObjectVectorI13CStreamBinderE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CObjectVectorI13CStreamBinderE+16)
	st.d	$a2, $s1, 152
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $s1, 200
	st.d	$a1, $s1, 216
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	ld.d	$a2, $a0, 24
	st.d	$a1, $s1, 192
	st.d	$s1, $s0, 0
	move	$a0, $s1
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB0_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB0_2:                                # %_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit
	ld.d	$a0, $s0, 0
	st.d	$s1, $s0, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 48
	addi.d	$a1, $s0, 136
	jirl	$ra, $a2, 0
	move	$s4, $a0
	bnez	$a0, .LBB0_58
# %bb.3:                                # %.preheader
	ld.w	$a0, $s0, 60
	blez	$a0, .LBB0_57
# %bb.4:                                # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph
	addi.d	$s1, $s0, 16
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s3, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	pcalau12i	$a0, %got_pc_hi20(IID_ICompressSetCoderMt)
	ld.d	$s2, $a0, %got_pc_lo12(IID_ICompressSetCoderMt)
	pcalau12i	$a0, %got_pc_hi20(IID_ICryptoSetPassword)
	ld.d	$a0, $a0, %got_pc_lo12(IID_ICryptoSetPassword)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB0_5:                                # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	ld.d	$a0, $s0, 64
	slli.d	$a1, $s8, 3
	ldx.d	$s6, $a0, $a1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $a0, 0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a0, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 28
	ld.d	$a1, $s0, 32
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	ld.d	$a1, $s0, 32
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 28
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, -8
	ld.d	$a0, $s6, 0
	st.d	$a0, $a1, 0
	st.d	$zero, $sp, 64
	st.d	$zero, $sp, 56
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(_Z11CreateCoderyR9CMyComPtrI14ICompressCoderERS_I15ICompressCoder2Eb)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	beqz	$a0, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	move	$s4, $a0
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s5, $sp, 64
	bnez	$s5, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s5, $sp, 56
	beqz	$s5, .LBB0_59
.LBB0_10:                               # %.thread135
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp4:                                 # EH_LABEL
# %bb.11:                               # %_ZN9CMyComPtrI8IUnknownEC2EPS0_.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$zero, $sp, 48
	ld.d	$a0, $s5, 0
	ld.d	$a3, $a0, 0
.Ltmp6:                                 # EH_LABEL
	addi.d	$a2, $sp, 48
	move	$a0, $s5
	move	$a1, $s2
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
# %bb.12:                               # %_ZNK9CMyComPtrI8IUnknownE14QueryInterfaceI19ICompressSetCoderMtEEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a2, $a0, 0
	ld.w	$a1, $s0, 112
	ld.d	$a2, $a2, 40
.Ltmp9:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp10:                                # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s7, $a0
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp15:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp16:                                # EH_LABEL
.LBB0_16:                               # %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s7, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	move	$s4, $s7
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp18:                                # EH_LABEL
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_Z19SetMethodPropertiesRK7CMethodPKyP8IUnknown)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	beqz	$a0, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	move	$s4, $a0
	b	.LBB0_46
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$zero, $sp, 48
	ld.d	$a0, $s5, 0
	ld.d	$a3, $a0, 0
.Ltmp21:                                # EH_LABEL
	addi.d	$a2, $sp, 48
	move	$a0, $s5
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp22:                                # EH_LABEL
# %bb.22:                               # %_ZNK9CMyComPtrI8IUnknownE14QueryInterfaceI18ICryptoSetPasswordEEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s7, $sp, 48
	beqz	$s7, .LBB0_41
# %bb.23:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$fp, $s0, 128
	slli.w	$a2, $fp, 1
	beqz	$fp, .LBB0_33
# %bb.24:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	bstrpick.d	$a0, $a2, 31, 0
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.25:                               # %_ZN7CBufferIhE11SetCapacityEm.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $a0
	blez	$fp, .LBB0_34
# %bb.26:                               # %.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s0, 120
	ori	$a1, $zero, 4
	bltu	$fp, $a1, .LBB0_29
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a1, $fp, $a0, 2
	bgeu	$s6, $a1, .LBB0_53
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a1, $fp, $s6, 1
	bgeu	$a0, $a1, .LBB0_53
.LBB0_29:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a1, $zero
	move	$a2, $s2
.LBB0_30:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a0, $a1, $a0, 2
	alsl.d	$a3, $a1, $s6, 1
	addi.d	$a4, $a3, 1
	sub.d	$a1, $fp, $a1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_31:                               # %scalar.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a0, 0
	st.h	$a3, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 2
	bnez	$a1, .LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_36
.LBB0_33:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s2
.LBB0_35:                               # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
.LBB0_36:                               # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a3, $a0, 40
.Ltmp26:                                # EH_LABEL
	move	$a0, $s7
	move	$a1, $s6
	jirl	$ra, $a3, 0
.Ltmp27:                                # EH_LABEL
# %bb.37:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s7, $a0
	beqz	$s6, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_39:                               # %_ZN7CBufferIhED2Ev.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s7, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	move	$s4, $s7
	b	.LBB0_44
.LBB0_41:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 64
	ld.d	$a0, $s0, 0
	beqz	$a1, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_5 Depth=1
	ori	$s6, $zero, 1
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer14CCoderMixer2MT8AddCoderEP14ICompressCoder)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
	b	.LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 56
	ori	$s6, $zero, 1
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer14CCoderMixer2MT9AddCoder2EP15ICompressCoder2)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
.LBB0_44:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp46:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp47:                                # EH_LABEL
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp49:                                # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp50:                                # EH_LABEL
.LBB0_47:                               # %_ZN9CMyComPtrI8IUnknownED2Ev.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp52:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp53:                                # EH_LABEL
.LBB0_49:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp55:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp56:                                # EH_LABEL
.LBB0_51:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s6, .LBB0_58
# %bb.52:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s0, 60
	addi.d	$s8, $s8, 1
	blt	$s8, $a0, .LBB0_5
	b	.LBB0_57
.LBB0_53:                               # %vector.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a1, $fp, 30, 2
	slli.d	$a1, $a1, 2
	move	$a2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_54:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a2, 0
	vslli.d	$vr3, $vr0, 1
	vslli.d	$vr4, $vr1, 1
	vpickve2gr.d	$a4, $vr4, 0
	add.d	$a4, $s6, $a4
	vpickve2gr.d	$a5, $vr4, 1
	add.d	$a5, $s6, $a5
	vpickve2gr.d	$a6, $vr3, 0
	add.d	$a6, $s6, $a6
	vpickve2gr.d	$a7, $vr3, 1
	add.d	$a7, $s6, $a7
	vstelm.b	$vr2, $a4, 0, 0
	vstelm.b	$vr2, $a5, 0, 4
	vstelm.b	$vr2, $a6, 0, 8
	vstelm.b	$vr2, $a7, 0, 12
	vsrli.w	$vr2, $vr2, 8
	vstelm.b	$vr2, $a4, 1, 0
	vstelm.b	$vr2, $a5, 1, 4
	vstelm.b	$vr2, $a6, 1, 8
	vstelm.b	$vr2, $a7, 1, 12
	vaddi.du	$vr1, $vr1, 4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB0_54
# %bb.55:                               # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a2, $s2
	bne	$a1, $fp, .LBB0_30
# %bb.56:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_35
.LBB0_57:
	move	$s4, $zero
.LBB0_58:                               # %.loopexit
	addi.w	$a0, $s4, 0
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
.LBB0_59:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit.thread
	lu12i.w	$a0, -524284
	ori	$s4, $a0, 5
	b	.LBB0_58
.LBB0_60:                               # %.thread146
.Ltmp25:                                # EH_LABEL
	b	.LBB0_65
.LBB0_61:
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_62:
.Ltmp28:                                # EH_LABEL
	move	$fp, $a0
	beqz	$s6, .LBB0_66
# %bb.63:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_66
.LBB0_64:
.Ltmp33:                                # EH_LABEL
.LBB0_65:                               # %_ZN7CBufferIhED2Ev.exit106
	move	$fp, $a0
.LBB0_66:                               # %_ZN7CBufferIhED2Ev.exit106
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB0_75
# %bb.67:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp34:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp35:                                # EH_LABEL
	b	.LBB0_75
.LBB0_68:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_69:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_70:
.Ltmp20:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_75
.LBB0_71:
.Ltmp11:                                # EH_LABEL
	b	.LBB0_73
.LBB0_72:
.Ltmp8:                                 # EH_LABEL
.LBB0_73:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB0_75
# %bb.74:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp12:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp13:                                # EH_LABEL
.LBB0_75:
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp37:                                # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp38:                                # EH_LABEL
	b	.LBB0_84
.LBB0_76:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_77:
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_83
.LBB0_78:
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_79:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_80:
.Ltmp57:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_81:
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_82:
.Ltmp2:                                 # EH_LABEL
.LBB0_83:                               # %_ZN9CMyComPtrI8IUnknownED2Ev.exit114
	move	$fp, $a0
.LBB0_84:                               # %_ZN9CMyComPtrI8IUnknownED2Ev.exit114
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB0_86
# %bb.85:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp40:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp41:                                # EH_LABEL
.LBB0_86:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit116
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB0_88
# %bb.87:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp43:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp44:                                # EH_LABEL
.LBB0_88:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit118
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_89:
.Ltmp45:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_90:
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy, .Lfunc_end0-_ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy
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
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp29-.Ltmp27                #   Call between .Ltmp27 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp32-.Ltmp29                #   Call between .Ltmp29 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp34-.Ltmp56                #   Call between .Ltmp56 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp12-.Ltmp35                #   Call between .Ltmp35 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Lfunc_end0-.Ltmp44            #   Call between .Ltmp44 and .Lfunc_end0
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
	.section	.text._ZN7CBufferIhED2Ev,"axG",@progbits,_ZN7CBufferIhED2Ev,comdat
	.weak	_ZN7CBufferIhED2Ev              # -- Begin function _ZN7CBufferIhED2Ev
	.p2align	5
	.type	_ZN7CBufferIhED2Ev,@function
_ZN7CBufferIhED2Ev:                     # @_ZN7CBufferIhED2Ev
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	ld.d	$a0, $a1, 16
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB1_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB1_2:
	ret
.Lfunc_end1:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end1-_ZN7CBufferIhED2Ev
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo # -- Begin function _ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo
	.p2align	5
	.type	_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo,@function
_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo: # @_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -1552
	.cfi_def_cfa_offset 1552
	st.d	$ra, $sp, 1544                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1536                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1528                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1520                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1512                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1504                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1496                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1488                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1480                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1472                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1464                  # 8-byte Folded Spill
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
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a4
	move	$s2, $a3
	move	$s3, $a2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoder13EncoderConstrEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB2_77
.LBB2_1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 56
	jirl	$ra, $a1, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1440
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 1456
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI16CInOutTempBufferE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI16CInOutTempBufferE+16)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 1432
	vst	$vr0, $sp, 1408
	st.d	$a0, $sp, 1424
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE+16)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 1400
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $sp, 1376
	st.d	$a0, $sp, 1392
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	ld.w	$a0, $s0, 244
	ld.w	$a1, $s0, 148
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 1368
	blt	$a0, $a1, .LBB2_21
# %bb.2:                                # %.lr.ph
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
.Ltmp58:                                # EH_LABEL
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBufferC1Ev)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
.Ltmp61:                                # EH_LABEL
	ori	$a0, $zero, 1168
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.5:                                # %.noexc
                                        #   in Loop: Header=BB2_3 Depth=1
.Ltmp63:                                # EH_LABEL
	move	$s4, $a0
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBufferC2ERKS_)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 1432
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	ld.w	$a0, $sp, 1444
	ld.d	$a1, $sp, 1448
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 1444
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBufferD1Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1444
	ld.d	$a1, $sp, 1448
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
.Ltmp69:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBuffer6CreateEv)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	ld.w	$a0, $sp, 1444
	ld.d	$a1, $sp, 1448
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBuffer11InitWritingEv)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB2_3 Depth=1
	ld.w	$a0, $s0, 244
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB2_3
# %bb.10:                               # %.preheader304
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB2_21
# %bb.11:                               # %.lr.ph343
	pcalau12i	$a0, %got_pc_hi20(_ZTV27CSequentialOutTempBufferImp)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV27CSequentialOutTempBufferImp)
	ld.d	$s1, $a0, 24
	move	$s6, $zero
	ori	$s8, $zero, 1
	addi.d	$s7, $a0, 16
	.p2align	4, , 16
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
.Ltmp74:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	move	$s4, $a0
	st.w	$zero, $a0, 8
	st.d	$s7, $a0, 0
.Ltmp77:                                # EH_LABEL
	jirl	$ra, $s1, 0
.Ltmp78:                                # EH_LABEL
# %bb.14:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
                                        #   in Loop: Header=BB2_12 Depth=1
	ld.d	$a0, $sp, 1448
	ldx.d	$a0, $a0, $s6
	st.d	$a0, $s4, 16
.Ltmp80:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB2_12 Depth=1
	move	$s5, $a0
	ld.d	$a0, $s4, 0
	st.d	$s4, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp82:                                # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp83:                                # EH_LABEL
# %bb.16:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2ERKS1_.exit.i
                                        #   in Loop: Header=BB2_12 Depth=1
.Ltmp85:                                # EH_LABEL
	addi.d	$a0, $sp, 1368
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.17:                               #   in Loop: Header=BB2_12 Depth=1
	ld.w	$a0, $sp, 1380
	ld.d	$a1, $sp, 1384
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 1380
.Ltmp87:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.18:                               # %.noexc180
                                        #   in Loop: Header=BB2_12 Depth=1
	move	$s2, $a0
	st.d	$s4, $a0, 0
.Ltmp89:                                # EH_LABEL
	addi.d	$a0, $sp, 1400
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.19:                               #   in Loop: Header=BB2_12 Depth=1
	ld.w	$a0, $sp, 1412
	ld.d	$a1, $sp, 1416
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	ld.d	$a1, $s4, 0
	ld.d	$a1, $a1, 16
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 1412
.Ltmp95:                                # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp96:                                # EH_LABEL
# %bb.20:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
                                        #   in Loop: Header=BB2_12 Depth=1
	ld.w	$a0, $s0, 244
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 8
	blt	$s8, $a0, .LBB2_12
.LBB2_21:                               # %.preheader298
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blez	$a0, .LBB2_25
# %bb.22:                               # %.lr.ph345.preheader
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_23:                               # %.lr.ph345
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 64
.Ltmp98:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp99:                                # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bne	$a0, $s2, .LBB2_23
.LBB2_25:                               # %._crit_edge
	ld.w	$a0, $s0, 212
	beqz	$a0, .LBB2_86
# %bb.26:
	ld.w	$a0, $s0, 148
	beqz	$a0, .LBB2_30
# %bb.27:                               # %.lr.ph.i
	ld.d	$a1, $s0, 216
	ld.w	$s1, $a1, 0
	ld.d	$a1, $s0, 152
	move	$s6, $zero
	.p2align	4, , 16
.LBB2_28:                               # =>This Inner Loop Header: Depth=1
	slli.d	$s2, $s6, 3
	ldx.w	$a2, $a1, $s2
	bltu	$s1, $a2, .LBB2_32
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=1
	addi.w	$s6, $s6, 1
	sub.w	$s1, $s1, $a2
	bne	$a0, $s6, .LBB2_28
.LBB2_30:                               # %._crit_edge.i
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp233:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.31:                               # %.noexc185
.LBB2_32:                               # %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
	beqz	$s3, .LBB2_38
# %bb.33:                               # %.lr.ph348
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 224
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIPKyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIPKyE+16)
	move	$s4, $zero
	st.d	$a0, $sp, 200
	.p2align	4, , 16
.LBB2_34:                               # =>This Inner Loop Header: Depth=1
.Ltmp101:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.35:                               # %_ZN13CRecordVectorIPKyE3AddES1_.exit
                                        #   in Loop: Header=BB2_34 Depth=1
	xor	$a0, $s1, $s4
	ld.w	$a1, $sp, 212
	ld.d	$a2, $sp, 216
	sltui	$a0, $a0, 1
	maskeqz	$a0, $s3, $a0
	slli.d	$a3, $a1, 3
	stx.d	$a0, $a2, $a3
	ld.d	$a0, $s0, 152
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 212
	ldx.w	$a0, $a0, $s2
	addi.w	$s4, $s4, 1
	bltu	$s4, $a0, .LBB2_34
# %bb.36:                               # %._crit_edge349
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 64
.Ltmp104:                               # EH_LABEL
	move	$a1, $s6
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp105:                               # EH_LABEL
# %bb.37:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB2_38:
.Ltmp107:                               # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.39:
	move	$s8, $a0
	st.w	$zero, $a0, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTV29CSequentialInStreamSizeCount2)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV29CSequentialInStreamSizeCount2)
	addi.d	$a1, $a0, 16
	st.d	$a1, $s8, 0
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 88
	st.d	$a0, $s8, 8
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $s8, 24
.Ltmp110:                               # EH_LABEL
	move	$a0, $s8
	jirl	$ra, $a1, 0
.Ltmp111:                               # EH_LABEL
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
# %bb.40:                               # %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit
.Ltmp113:                               # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.41:
	move	$s2, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV29CSequentialOutStreamSizeCount)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV29CSequentialOutStreamSizeCount)
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $s2, 0
	st.d	$zero, $s2, 16
.Ltmp116:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp117:                               # EH_LABEL
# %bb.42:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit193
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	beqz	$s3, .LBB2_44
# %bb.43:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 8
.Ltmp119:                               # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp120:                               # EH_LABEL
.LBB2_44:                               # %.noexc195
	addi.d	$s1, $s8, 24
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB2_46
# %bb.45:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp121:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp122:                               # EH_LABEL
.LBB2_46:                               # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.i
	ld.d	$a0, $s8, 32
	st.d	$s3, $s8, 24
	beqz	$a0, .LBB2_49
# %bb.47:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp123:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp124:                               # EH_LABEL
# %bb.48:                               # %.noexc197
	ld.d	$s3, $s1, 0
.LBB2_49:                               # %_ZN9CMyComPtrI25ICompressGetSubStreamSizeEaSEPS0_.exit.i
	addi.d	$a2, $s8, 32
	st.d	$zero, $a2, 0
	ld.d	$a0, $s3, 0
	ld.d	$a3, $a0, 0
.Ltmp125:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(IID_ICompressGetSubStreamSize)
	ld.d	$a1, $a0, %got_pc_lo12(IID_ICompressGetSubStreamSize)
	move	$a0, $s3
	jirl	$ra, $a3, 0
.Ltmp126:                               # EH_LABEL
# %bb.50:
	st.d	$zero, $s8, 40
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_52
# %bb.51:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp127:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp128:                               # EH_LABEL
.LBB2_52:                               # %.noexc201
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB2_54
# %bb.53:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp129:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp130:                               # EH_LABEL
.LBB2_54:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $s2, 16
	st.d	$zero, $s2, 24
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 224
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIP19ISequentialInStreamE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIP19ISequentialInStreamE+16)
	st.d	$a1, $sp, 200
	vst	$vr0, $sp, 176
	st.d	$a0, $sp, 192
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIP20ISequentialOutStreamE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIP20ISequentialOutStreamE+16)
	st.d	$a0, $sp, 168
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.55:
	ld.w	$a0, $sp, 212
	ld.d	$a1, $sp, 216
	slli.d	$a2, $a0, 3
	stx.d	$s8, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 212
.Ltmp134:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.56:                               # %_ZN13CRecordVectorIP20ISequentialOutStreamE3AddES1_.exit
	ld.w	$a0, $sp, 180
	ld.d	$a1, $sp, 184
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	ld.w	$a1, $s0, 244
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 2
	st.w	$a0, $sp, 180
	blt	$a1, $a2, .LBB2_60
# %bb.57:                               # %.lr.ph351
	move	$s1, $zero
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB2_58:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 1384
	ldx.d	$a0, $a0, $s1
	ld.d	$s3, $a0, 0
.Ltmp137:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.59:                               #   in Loop: Header=BB2_58 Depth=1
	ld.w	$a0, $sp, 180
	ld.d	$a1, $sp, 184
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	ld.w	$a1, $s0, 244
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 180
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a1, .LBB2_58
.LBB2_60:                               # %.preheader292
	ld.w	$a0, $s0, 28
	blez	$a0, .LBB2_87
# %bb.61:                               # %.lr.ph353
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZTV19CDynBufSeqOutStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV19CDynBufSeqOutStream)
	ld.d	$a1, $a0, 24
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(IID_ICryptoResetInitVector)
	ld.d	$s7, $a1, %got_pc_lo12(IID_ICryptoResetInitVector)
	pcalau12i	$a1, %got_pc_hi20(IID_ICompressWriteCoderProperties)
	ld.d	$s8, $a1, %got_pc_lo12(IID_ICompressWriteCoderProperties)
	move	$s3, $zero
	move	$s1, $zero
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_63
	.p2align	4, , 16
.LBB2_62:                               # %_ZN9CMyComPtrI22ICryptoResetInitVectorED2Ev.exit
                                        #   in Loop: Header=BB2_63 Depth=1
	ld.w	$a1, $s0, 28
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 8
	bge	$s1, $a1, .LBB2_79
.LBB2_63:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 32
	ld.d	$a0, $a0, 208
	ldx.d	$s4, $a1, $s3
	st.d	$zero, $sp, 160
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 240
	ld.d	$a0, $a0, 248
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp140:                               # EH_LABEL
	addi.d	$a2, $sp, 160
	move	$a1, $s7
	jirl	$ra, $a3, 0
.Ltmp141:                               # EH_LABEL
# %bb.64:                               # %_ZNK11NCoderMixer11CCoderInfo214QueryInterfaceERK4GUIDPPv.exit
                                        #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a0, $sp, 160
	beqz	$a0, .LBB2_66
# %bb.65:                               #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
.Ltmp142:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp143:                               # EH_LABEL
.LBB2_66:                               #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 208
	st.d	$zero, $sp, 152
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 240
	ld.d	$a0, $a0, 248
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp145:                               # EH_LABEL
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	jirl	$ra, $a3, 0
.Ltmp146:                               # EH_LABEL
# %bb.67:                               # %_ZNK11NCoderMixer11CCoderInfo214QueryInterfaceERK4GUIDPPv.exit211
                                        #   in Loop: Header=BB2_63 Depth=1
	ld.d	$s2, $sp, 152
	beqz	$s2, .LBB2_75
# %bb.68:                               #   in Loop: Header=BB2_63 Depth=1
.Ltmp148:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.69:                               #   in Loop: Header=BB2_63 Depth=1
	move	$s5, $a0
	st.w	$zero, $a0, 8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $s5, 0
	st.d	$zero, $s5, 16
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $s5, 24
.Ltmp151:                               # EH_LABEL
	move	$a0, $s5
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp152:                               # EH_LABEL
# %bb.70:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit214
                                        #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a0, $sp, 152
	st.d	$zero, $s5, 32
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 40
.Ltmp154:                               # EH_LABEL
	move	$a1, $s5
	jirl	$ra, $a2, 0
.Ltmp155:                               # EH_LABEL
# %bb.71:                               #   in Loop: Header=BB2_63 Depth=1
	addi.d	$a1, $s4, 8
.Ltmp156:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNK19CDynBufSeqOutStream12CopyToBufferER7CBufferIhE)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.72:                               #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp168:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp169:                               # EH_LABEL
# %bb.73:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit216
                                        #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB2_75
# %bb.74:                               #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp171:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp172:                               # EH_LABEL
.LBB2_75:                               # %_ZN9CMyComPtrI29ICompressWriteCoderPropertiesED2Ev.exit
                                        #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a0, $sp, 160
	beqz	$a0, .LBB2_62
# %bb.76:                               #   in Loop: Header=BB2_63 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp174:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp175:                               # EH_LABEL
	b	.LBB2_62
.LBB2_77:
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoder16CreateMixerCoderEPKy)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_145
# %bb.78:                               # %._crit_edge412
	ld.d	$a0, $s0, 0
	b	.LBB2_1
.LBB2_79:                               # %.preheader291
	ori	$a0, $zero, 2
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_88
# %bb.80:                               # %.lr.ph356
	ld.d	$a0, $s0, 32
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	lu12i.w	$a5, 12336
	ori	$a4, $a5, 283
	ori	$a5, $a5, 259
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB2_82
	.p2align	4, , 16
.LBB2_81:                               #   in Loop: Header=BB2_82 Depth=1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	move	$s6, $a6
	beqz	$a1, .LBB2_89
.LBB2_82:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a0, 0
	ld.d	$t0, $a6, 0
	move	$a6, $a2
	beq	$t0, $a3, .LBB2_81
# %bb.83:                               #   in Loop: Header=BB2_82 Depth=1
	move	$a6, $a2
	beq	$t0, $a4, .LBB2_81
# %bb.84:                               #   in Loop: Header=BB2_82 Depth=1
	move	$a6, $s6
	bne	$t0, $a5, .LBB2_81
# %bb.85:                               #   in Loop: Header=BB2_82 Depth=1
	move	$a6, $a2
	b	.LBB2_81
.LBB2_86:
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	b	.LBB2_141
.LBB2_87:
	move	$a6, $s6
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	b	.LBB2_89
.LBB2_88:
	move	$a6, $s6
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
.LBB2_89:                               # %._crit_edge357
	ld.d	$a0, $s0, 0
	st.w	$a6, $a0, 184
	ld.d	$a0, $s0, 8
	ld.d	$a2, $a0, 0
	ld.d	$a1, $sp, 216
	ld.d	$a4, $sp, 184
	ld.w	$a6, $sp, 180
	ld.d	$t0, $a2, 40
.Ltmp177:                               # EH_LABEL
	ori	$a3, $zero, 1
	move	$a2, $zero
	move	$a5, $zero
	jirl	$ra, $t0, 0
.Ltmp178:                               # EH_LABEL
# %bb.90:
	bnez	$a0, .LBB2_139
# %bb.91:
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 144
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $sp, 120
.Ltmp180:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.92:                               # %.noexc.i
	ld.w	$s2, $s0, 412
	ld.w	$a0, $sp, 132
	add.w	$a1, $a0, $s2
.Ltmp182:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.93:                               # %.noexc3.i
	blez	$s2, .LBB2_97
# %bb.94:                               # %.lr.ph.i.i.i
	move	$s1, $zero
	slli.d	$s2, $s2, 3
	.p2align	4, , 16
.LBB2_95:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 416
	ldx.d	$s3, $a0, $s1
.Ltmp185:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.96:                               # %.noexc4.i
                                        #   in Loop: Header=BB2_95 Depth=1
	ld.w	$a0, $sp, 132
	ld.d	$a1, $sp, 136
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s1, $s1, 8
	st.w	$a0, $sp, 132
	bne	$s2, $s1, .LBB2_95
.LBB2_97:                               # %_ZN13CRecordVectorIyEC2ERKS0_.exit
.Ltmp188:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.98:                               # %.noexc229
	addi.d	$s5, $fp, 64
.Ltmp190:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.99:                               # %.noexc230
	addi.d	$s6, $fp, 32
.Ltmp192:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.100:                              # %.noexc231
	ld.w	$a0, $s0, 308
	blez	$a0, .LBB2_104
# %bb.101:                              # %.lr.ph.i228
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_102:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 312
	ldx.d	$s3, $a0, $s1
.Ltmp195:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.103:                              # %.noexc232
                                        #   in Loop: Header=BB2_102 Depth=1
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 3
	stx.d	$s3, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 44
	ld.w	$a0, $s0, 308
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB2_102
.LBB2_104:                              # %.preheader32.i
	ld.w	$a0, $s0, 276
	blez	$a0, .LBB2_109
# %bb.105:                              # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph.i
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	move	$s3, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB2_106:                              # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 280
	ld.d	$a1, $sp, 136
	ldx.d	$s6, $a0, $s3
	ldx.d	$s7, $a1, $s3
.Ltmp198:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.107:                              # %.noexc233
                                        #   in Loop: Header=BB2_106 Depth=1
	move	$s2, $a0
	st.d	$s7, $a0, 0
	st.d	$s1, $a0, 8
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$s6, $a0, 32
.Ltmp200:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.108:                              # %.noexc234
                                        #   in Loop: Header=BB2_106 Depth=1
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 12
	ld.w	$a0, $s0, 276
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a0, .LBB2_106
.LBB2_109:                              # %.preheader.i
	ld.w	$a0, $s0, 340
	blez	$a0, .LBB2_113
# %bb.110:                              # %.lr.ph36.i
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_111:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 344
	ldx.w	$s3, $a0, $s1
.Ltmp203:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.112:                              # %.noexc235
                                        #   in Loop: Header=BB2_111 Depth=1
	ld.w	$a0, $fp, 76
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a0, 2
	stx.w	$s3, $a1, $a0
	ld.w	$a0, $fp, 76
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 76
	ld.w	$a0, $s0, 340
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB2_111
.LBB2_113:                              # %_ZN8NArchive3N7zL31ConvertBindInfoToFolderItemInfoERKN11NCoderMixer9CBindInfoE13CRecordVectorIyERNS0_7CFolderE.exit
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 24
.Ltmp206:                               # EH_LABEL
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.114:                              # %_ZN13CRecordVectorIyE3AddEy.exit
	ld.w	$a0, $s2, 12
	ld.d	$a1, $s2, 16
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 12
	ld.w	$a0, $s0, 244
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB2_120
# %bb.115:                              # %.lr.ph360
	move	$s1, $zero
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB2_116:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 1448
	ldx.d	$s2, $a0, $s1
.Ltmp209:                               # EH_LABEL
	move	$a0, $s2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBuffer13WriteToStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp210:                               # EH_LABEL
# %bb.117:                              #   in Loop: Header=BB2_116 Depth=1
	bnez	$a0, .LBB2_139
# %bb.118:                              #   in Loop: Header=BB2_116 Depth=1
	ld.d	$s2, $s2, 1152
.Ltmp212:                               # EH_LABEL
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.119:                              #   in Loop: Header=BB2_116 Depth=1
	ld.w	$a0, $s4, 12
	ld.d	$a1, $s4, 16
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 12
	ld.w	$a0, $s0, 244
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	blt	$s3, $a0, .LBB2_116
.LBB2_120:                              # %.preheader
	ld.d	$a0, $s0, 392
	ld.w	$a1, $a0, 232
	blez	$a1, .LBB2_130
# %bb.121:                              # %.lr.ph362
	move	$s2, $zero
	addi.d	$s3, $s8, 40
	addi.d	$s1, $fp, 96
	.p2align	4, , 16
.LBB2_122:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_124 Depth 2
	ld.w	$a3, $s0, 180
	move	$a1, $s3
	blez	$a3, .LBB2_128
# %bb.123:                              # %.lr.ph.i240
                                        #   in Loop: Header=BB2_122 Depth=1
	ld.d	$a0, $a0, 256
	slli.d	$a1, $s2, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $s0, 184
	move	$a2, $zero
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB2_124:                              #   Parent Loop BB2_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a4, $a1, $a2
	beq	$a4, $a0, .LBB2_127
# %bb.125:                              #   in Loop: Header=BB2_124 Depth=2
	addi.d	$a2, $a2, 8
	bne	$a3, $a2, .LBB2_124
# %bb.126:                              #   in Loop: Header=BB2_122 Depth=1
	move	$a1, $s3
	b	.LBB2_128
	.p2align	4, , 16
.LBB2_127:                              # %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit
                                        #   in Loop: Header=BB2_122 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 168
	ldx.d	$a0, $a0, $a2
	addi.d	$a1, $a0, 176
.LBB2_128:                              # %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread
                                        #   in Loop: Header=BB2_122 Depth=1
	ld.d	$s4, $a1, 0
.Ltmp215:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.129:                              #   in Loop: Header=BB2_122 Depth=1
	ld.w	$a0, $fp, 108
	ld.d	$a1, $fp, 112
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 108
	ld.d	$a0, $s0, 392
	ld.w	$a1, $a0, 232
	addi.d	$s2, $s2, 1
	blt	$s2, $a1, .LBB2_122
.LBB2_130:                              # %._crit_edge363
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	blez	$a2, .LBB2_138
# %bb.131:                              # %.lr.ph366
	addi.w	$a0, $a2, -1
	addi.d	$s2, $a2, 1
	slli.d	$a1, $a2, 3
	addi.d	$s3, $a1, -8
	sub.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 3
	addi.d	$s4, $a0, 8
	ori	$s5, $zero, 1
	b	.LBB2_134
	.p2align	4, , 16
.LBB2_132:                              # %.noexc247
                                        #   in Loop: Header=BB2_134 Depth=1
	st.d	$a0, $s6, 24
	st.d	$s1, $s6, 16
	ld.d	$a2, $s7, 16
	ld.d	$a1, $s7, 24
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB2_133:                              # %_ZN7CBufferIhEaSERKS0_.exit
                                        #   in Loop: Header=BB2_134 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -8
	addi.d	$s4, $s4, 8
	bgeu	$s5, $s2, .LBB2_138
.LBB2_134:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s6, $a0, $s4
	ld.d	$a1, $s0, 32
	ld.d	$a0, $s6, 24
	ldx.d	$s7, $a1, $s3
	beqz	$a0, .LBB2_136
# %bb.135:                              #   in Loop: Header=BB2_134 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_136:                              # %_ZN7CBufferIhE4FreeEv.exit.i
                                        #   in Loop: Header=BB2_134 Depth=1
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $s6, 16
	ld.d	$s1, $s7, 16
	beqz	$s1, .LBB2_133
# %bb.137:                              # %_ZN7CBufferIhE11SetCapacityEm.exit.i
                                        #   in Loop: Header=BB2_134 Depth=1
.Ltmp218:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
	b	.LBB2_132
.LBB2_138:
	move	$a0, $zero
.LBB2_139:                              # %.loopexit
	move	$fp, $a0
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp227:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp228:                               # EH_LABEL
# %bb.140:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit249
	ld.d	$a0, $s8, 0
	ld.d	$a1, $a0, 16
.Ltmp230:                               # EH_LABEL
	move	$a0, $s8
	jirl	$ra, $a1, 0
.Ltmp231:                               # EH_LABEL
.LBB2_141:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 1368
.Ltmp236:                               # EH_LABEL
	addi.d	$a0, $sp, 1368
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
# %bb.142:                              # %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
	addi.d	$a0, $sp, 1368
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 1400
.Ltmp239:                               # EH_LABEL
	addi.d	$a0, $sp, 1400
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.143:                              # %_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev.exit
	addi.d	$a0, $sp, 1400
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 1432
.Ltmp242:                               # EH_LABEL
	addi.d	$a0, $sp, 1432
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.144:                              # %_ZN13CObjectVectorI16CInOutTempBufferED2Ev.exit
	addi.d	$a0, $sp, 1432
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB2_145:
	ld.d	$s8, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1472                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1480                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1488                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1496                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1504                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1512                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1520                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1528                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1536                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1544                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1552
	ret
.LBB2_146:                              # %.loopexit.split-lp
.Ltmp208:                               # EH_LABEL
	b	.LBB2_182
.LBB2_147:
.Ltmp106:                               # EH_LABEL
	b	.LBB2_186
.LBB2_148:                              # %.loopexit.split-lp.i
.Ltmp184:                               # EH_LABEL
	b	.LBB2_180
.LBB2_149:
.Ltmp232:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_150:
.Ltmp229:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_151:
.Ltmp179:                               # EH_LABEL
	b	.LBB2_182
.LBB2_152:
.Ltmp118:                               # EH_LABEL
	b	.LBB2_154
.LBB2_153:
.Ltmp115:                               # EH_LABEL
.LBB2_154:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit252
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB2_201
.LBB2_155:
.Ltmp112:                               # EH_LABEL
	b	.LBB2_210
.LBB2_156:
.Ltmp109:                               # EH_LABEL
	b	.LBB2_210
.LBB2_157:                              # %.loopexit.split-lp281.loopexit.split-lp.loopexit.split-lp
.Ltmp194:                               # EH_LABEL
	b	.LBB2_180
.LBB2_158:
.Ltmp244:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_159:
.Ltmp241:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_160:
.Ltmp238:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_161:                              # %.loopexit.split-lp294
.Ltmp136:                               # EH_LABEL
	b	.LBB2_182
.LBB2_162:
.Ltmp214:                               # EH_LABEL
	b	.LBB2_182
.LBB2_163:
.Ltmp211:                               # EH_LABEL
	b	.LBB2_182
.LBB2_164:                              # %.loopexit278
.Ltmp220:                               # EH_LABEL
	b	.LBB2_182
.LBB2_165:
.Ltmp131:                               # EH_LABEL
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB2_200
.LBB2_166:
.Ltmp217:                               # EH_LABEL
	b	.LBB2_182
.LBB2_167:                              # %.loopexit280
.Ltmp205:                               # EH_LABEL
	b	.LBB2_180
.LBB2_168:                              # %.loopexit.split-lp281.loopexit.split-lp.loopexit
.Ltmp197:                               # EH_LABEL
	b	.LBB2_180
.LBB2_169:                              # %.loopexit.i
.Ltmp187:                               # EH_LABEL
	b	.LBB2_180
.LBB2_170:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_171:
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_172:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_173:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit218.thread
.Ltmp150:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB2_189
.LBB2_174:
.Ltmp153:                               # EH_LABEL
	b	.LBB2_184
.LBB2_175:
.Ltmp76:                                # EH_LABEL
	b	.LBB2_210
.LBB2_176:
.Ltmp79:                                # EH_LABEL
	b	.LBB2_210
.LBB2_177:
.Ltmp84:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_205
.LBB2_178:
.Ltmp97:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_179:                              # %.loopexit.split-lp281.loopexit
.Ltmp202:                               # EH_LABEL
.LBB2_180:
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB2_199
.LBB2_181:                              # %.loopexit293
.Ltmp139:                               # EH_LABEL
.LBB2_182:                              # %.body225
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB2_199
.LBB2_183:
.Ltmp147:                               # EH_LABEL
.LBB2_184:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit218
	move	$fp, $a0
	b	.LBB2_188
.LBB2_185:
.Ltmp103:                               # EH_LABEL
.LBB2_186:
	move	$fp, $a0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB2_211
.LBB2_187:
.Ltmp158:                               # EH_LABEL
	ld.d	$a1, $s5, 0
	ld.d	$a1, $a1, 16
	move	$fp, $a0
.Ltmp159:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp160:                               # EH_LABEL
.LBB2_188:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit218
	ld.d	$s2, $sp, 152
	beqz	$s2, .LBB2_197
.LBB2_189:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
.Ltmp162:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp163:                               # EH_LABEL
	b	.LBB2_197
.LBB2_190:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_191:
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_192:
.Ltmp60:                                # EH_LABEL
	b	.LBB2_210
.LBB2_193:
.Ltmp65:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 1168
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_208
.LBB2_194:
.Ltmp235:                               # EH_LABEL
	b	.LBB2_210
.LBB2_195:                              # %.loopexit299
.Ltmp100:                               # EH_LABEL
	b	.LBB2_210
.LBB2_196:
.Ltmp144:                               # EH_LABEL
	move	$fp, $a0
.LBB2_197:
	ld.d	$a0, $sp, 160
	beqz	$a0, .LBB2_199
# %bb.198:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp165:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp166:                               # EH_LABEL
.LBB2_199:                              # %.body225
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB2_200:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp221:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp222:                               # EH_LABEL
.LBB2_201:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit252
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp224:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp225:                               # EH_LABEL
	b	.LBB2_211
.LBB2_202:
.Ltmp167:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_203:
.Ltmp226:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_204:
.Ltmp91:                                # EH_LABEL
	move	$fp, $a0
.LBB2_205:                              # %.body178
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
.Ltmp92:                                # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp93:                                # EH_LABEL
	b	.LBB2_211
.LBB2_206:
.Ltmp94:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_207:
.Ltmp68:                                # EH_LABEL
	move	$fp, $a0
.LBB2_208:                              # %.body
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBufferD1Ev)
	jirl	$ra, $ra, 0
	b	.LBB2_211
.LBB2_209:                              # %.loopexit.split-lp300
.Ltmp73:                                # EH_LABEL
.LBB2_210:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit183
	move	$fp, $a0
.LBB2_211:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit183
	addi.d	$a0, $sp, 1368
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1400
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1432
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI16CInOutTempBufferED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_212:
.Ltmp223:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo, .Lfunc_end2-_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin1          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp68-.Lfunc_begin1          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin1          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin1          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp69-.Ltmp67                #   Call between .Ltmp67 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp72-.Ltmp69                #   Call between .Ltmp69 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin1          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin1          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin1          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp90-.Ltmp85                #   Call between .Ltmp85 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin1          #     jumps to .Ltmp97
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp98-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin1         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp233-.Ltmp99               #   Call between .Ltmp99 and .Ltmp233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin1         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin1         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin1         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp107-.Ltmp105              #   Call between .Ltmp105 and .Ltmp107
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin1         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin1         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin1         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin1         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp130-.Ltmp119              #   Call between .Ltmp119 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin1         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp135-.Ltmp132              #   Call between .Ltmp132 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp143-.Ltmp140              #   Call between .Ltmp140 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin1         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin1         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin1         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin1         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp157-.Ltmp154              #   Call between .Ltmp154 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp175-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp177-.Ltmp175              #   Call between .Ltmp175 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin1         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp183-.Ltmp180              #   Call between .Ltmp180 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin1         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin1         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp193-.Ltmp188              #   Call between .Ltmp188 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin1         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin1         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp201-.Ltmp198              #   Call between .Ltmp198 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin1         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin1         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp206-.Ltmp204              #   Call between .Ltmp204 and .Ltmp206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin1         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin1         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin1         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin1         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp218-.Ltmp216              #   Call between .Ltmp216 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin1         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp227-.Ltmp219              #   Call between .Ltmp219 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin1         #     jumps to .Ltmp232
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin1         #     jumps to .Ltmp238
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp239-.Ltmp237              #   Call between .Ltmp237 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp240-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp242-.Ltmp240              #   Call between .Ltmp240 and .Ltmp242
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin1         #     jumps to .Ltmp244
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp243-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp159-.Ltmp243              #   Call between .Ltmp243 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp163-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp165-.Ltmp163              #   Call between .Ltmp163 and .Ltmp165
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp166-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp221-.Ltmp166              #   Call between .Ltmp166 and .Ltmp221
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin1         #     jumps to .Ltmp223
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp225-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp92-.Ltmp225               #   Call between .Ltmp225 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 67 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin1          #     jumps to .Ltmp94
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 68 <<
	.uleb128 .Lfunc_end2-.Ltmp93            #   Call between .Ltmp93 and .Lfunc_end2
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive3N7z8CEncoder13EncoderConstrEv
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_ZN8NArchive3N7z8CEncoder13EncoderConstrEv
	.p2align	5
	.type	_ZN8NArchive3N7z8CEncoder13EncoderConstrEv,@function
_ZN8NArchive3N7z8CEncoder13EncoderConstrEv: # @_ZN8NArchive3N7z8CEncoder13EncoderConstrEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 432
	bnez	$a0, .LBB3_94
# %bb.1:
	ld.w	$a0, $fp, 60
	addi.d	$a1, $fp, 48
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $fp, 136
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_11
# %bb.2:                                # %.preheader142
	addi.d	$s2, $fp, 232
	addi.d	$s3, $fp, 168
	blez	$a0, .LBB3_19
# %bb.3:                                # %.lr.ph160
	move	$s4, $zero
	move	$s6, $zero
	move	$s5, $zero
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %.loopexit141
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.w	$s6, $s6, 0
	add.w	$s5, $s1, $s5
	slli.d	$a0, $s1, 32
	or	$s0, $a0, $s0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	ld.d	$a1, $fp, 152
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a1, $a0
	ld.w	$a1, $fp, 148
	ld.w	$a0, $fp, 60
	addi.d	$a1, $a1, 1
	addi.d	$s4, $s4, 1
	st.w	$a1, $fp, 148
	bge	$s4, $a0, .LBB3_20
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	ld.d	$a1, $fp, 64
	slli.d	$a2, $s4, 3
	ldx.d	$a1, $a1, $a2
	ld.wu	$s0, $a1, 44
	ld.w	$a2, $fp, 92
	ld.wu	$s1, $a1, 40
	add.d	$s6, $s0, $s6
	bnez	$a2, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	addi.w	$a0, $a0, -1
	bge	$s4, $a0, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	move	$s7, $s6
	bstrins.d	$s7, $s5, 63, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	ld.d	$a1, $fp, 184
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	ld.w	$a0, $fp, 180
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 180
	ori	$a0, $zero, 2
	bltu	$s1, $a0, .LBB3_4
	b	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 248
	st.w	$s5, $a0, 0
	ori	$a0, $zero, 2
	bltu	$s1, $a0, .LBB3_4
.LBB3_9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s8, $s1, -1
	addi.d	$s7, $s5, 1
	.p2align	4, , 16
.LBB3_10:                               # %.lr.ph
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 244
	ld.d	$a1, $fp, 248
	slli.d	$a0, $a0, 2
	stx.w	$s7, $a1, $a0
	ld.w	$a0, $fp, 244
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 244
	addi.w	$s8, $s8, -1
	addi.d	$s7, $s7, 1
	bnez	$s8, .LBB3_10
	b	.LBB3_4
.LBB3_11:
	ld.bu	$a0, $fp, 116
	beqz	$a0, .LBB3_96
# %bb.12:
	ld.w	$a0, $fp, 92
	bnez	$a0, .LBB3_96
# %bb.13:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 88
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$s2, $sp, 80
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 112
	lu12i.w	$a0, 28432
	ori	$a0, $a0, 1793
	st.d	$a0, $sp, 72
.Ltmp255:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.14:
.Ltmp257:                               # EH_LABEL
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
# %bb.15:
	ld.w	$a0, $fp, 148
	ld.d	$a1, $fp, 152
	slli.d	$a0, $a0, 3
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	stx.d	$a2, $a1, $a0
	ld.w	$a0, $fp, 148
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 148
	addi.d	$a0, $fp, 200
.Ltmp259:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.16:
	ld.w	$a0, $fp, 212
	ld.d	$a1, $fp, 216
	slli.d	$a0, $a0, 2
	stx.w	$zero, $a1, $a0
	ld.w	$a0, $fp, 212
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 212
	addi.d	$a0, $fp, 232
.Ltmp261:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.17:
	ld.w	$a0, $fp, 244
	ld.d	$a1, $fp, 248
	slli.d	$a0, $a0, 2
	stx.w	$zero, $a1, $a0
	ld.w	$a0, $fp, 244
	addi.d	$s1, $sp, 80
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 244
	st.d	$s2, $sp, 80
.Ltmp264:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.18:                               # %_ZN7CMethodD2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 60
	bgtz	$a0, .LBB3_90
	b	.LBB3_92
.LBB3_19:
	move	$s5, $zero
	move	$s6, $zero
.LBB3_20:                               # %._crit_edge
	ld.w	$a0, $fp, 92
	lu12i.w	$s8, 524287
	lu12i.w	$s7, -524288
	pcalau12i	$s1, %pc_hi20(.LCPI3_0)
	beqz	$a0, .LBB3_48
# %bb.21:                               # %.preheader140
	blez	$a0, .LBB3_40
# %bb.22:                               # %.lr.ph163
	move	$s4, $zero
	vld	$vr0, $s1, %pc_lo12(.LCPI3_0)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s8, $a0, 4095
	lu12i.w	$a0, -524288
	ori	$s7, $a0, 7
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_23:                               #   in Loop: Header=BB3_25 Depth=1
	move	$a5, $zero
.LBB3_24:                               # %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 12
	add.w	$s0, $a2, $a0
	add.d	$a0, $a1, $a5
	bstrins.d	$s0, $a0, 63, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	ld.d	$a1, $fp, 184
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a1, $a0
	ld.w	$a0, $fp, 180
	ld.w	$a1, $fp, 92
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, 1
	st.w	$a0, $fp, 180
	bge	$s4, $a1, .LBB3_40
.LBB3_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
                                        #     Child Loop BB3_32 Depth 2
                                        #     Child Loop BB3_37 Depth 2
                                        #     Child Loop BB3_39 Depth 2
	ld.d	$a1, $fp, 96
	slli.d	$a0, $s4, 4
	ldx.w	$a2, $a1, $a0
	beqz	$a2, .LBB3_28
# %bb.26:                               # %.lr.ph.i
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a3, $fp, 152
	add.w	$a0, $a2, $s8
	bgeu	$a0, $s7, .LBB3_29
# %bb.27:                               #   in Loop: Header=BB3_25 Depth=1
	move	$a4, $zero
	move	$a0, $zero
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_28:                               #   in Loop: Header=BB3_25 Depth=1
	move	$a0, $zero
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_29:                               # %vector.ph247
                                        #   in Loop: Header=BB3_25 Depth=1
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	move	$a0, $a4
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr2, 0
	.p2align	4, , 16
.LBB3_30:                               # %vector.body250
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr3, $vr1, 4
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr5, $vr1, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr6, $vr3, 50
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a5, $vr5, 0
	slli.d	$a5, $a5, 3
	vpickve2gr.d	$a6, $vr5, 1
	slli.d	$a6, $a6, 3
	vpickve2gr.d	$a7, $vr4, 0
	slli.d	$a7, $a7, 3
	vpickve2gr.d	$t0, $vr4, 1
	slli.d	$t0, $t0, 3
	vpickve2gr.d	$t1, $vr3, 0
	slli.d	$t1, $t1, 3
	vpickve2gr.d	$t2, $vr3, 1
	slli.d	$t2, $t2, 3
	vpickve2gr.d	$t3, $vr6, 0
	slli.d	$t3, $t3, 3
	vpickve2gr.d	$t4, $vr6, 1
	slli.d	$t4, $t4, 3
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr2, $vr4, $vr2
	addi.w	$a0, $a0, -8
	vaddi.wu	$vr1, $vr1, 8
	bnez	$a0, .LBB3_30
# %bb.31:                               # %middle.block258
                                        #   in Loop: Header=BB3_25 Depth=1
	vadd.w	$vr0, $vr2, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	beq	$a2, $a4, .LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %scalar.ph245
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $a4, 0
	slli.d	$a5, $a5, 3
	ldx.w	$a5, $a3, $a5
	addi.w	$a4, $a4, 1
	add.d	$a0, $a5, $a0
	bne	$a2, $a4, .LBB3_32
.LBB3_33:                               # %_ZNK11NCoderMixer9CBindInfo21GetCoderInStreamIndexEj.exit
                                        #   in Loop: Header=BB3_25 Depth=1
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a2, $a1, 8
	beqz	$a2, .LBB3_23
# %bb.34:                               # %.lr.ph.i92
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a3, $fp, 152
	add.w	$a4, $a2, $s8
	bgeu	$a4, $s7, .LBB3_36
# %bb.35:                               #   in Loop: Header=BB3_25 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB3_39
	.p2align	4, , 16
.LBB3_36:                               # %vector.ph
                                        #   in Loop: Header=BB3_25 Depth=1
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	move	$a5, $a4
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr2, 0
	.p2align	4, , 16
.LBB3_37:                               # %vector.body
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr3, $vr1, 4
	vshuf4i.w	$vr4, $vr1, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr5, $vr1, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr6, $vr3, 50
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a6, $vr5, 0
	alsl.d	$a6, $a6, $a3, 3
	vpickve2gr.d	$a7, $vr5, 1
	alsl.d	$a7, $a7, $a3, 3
	vpickve2gr.d	$t0, $vr4, 0
	alsl.d	$t0, $t0, $a3, 3
	vpickve2gr.d	$t1, $vr4, 1
	alsl.d	$t1, $t1, $a3, 3
	vpickve2gr.d	$t2, $vr3, 0
	alsl.d	$t2, $t2, $a3, 3
	vpickve2gr.d	$t3, $vr3, 1
	alsl.d	$t3, $t3, $a3, 3
	vpickve2gr.d	$t4, $vr6, 0
	alsl.d	$t4, $t4, $a3, 3
	vpickve2gr.d	$t5, $vr6, 1
	alsl.d	$t5, $t5, $a3, 3
	ld.w	$a6, $a6, 4
	ld.w	$a7, $a7, 4
	ld.w	$t0, $t0, 4
	ld.w	$t1, $t1, 4
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	ld.w	$a6, $t2, 4
	ld.w	$a7, $t3, 4
	ld.w	$t0, $t4, 4
	ld.w	$t1, $t5, 4
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $t1, 3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr2, $vr4, $vr2
	addi.w	$a5, $a5, -8
	vaddi.wu	$vr1, $vr1, 8
	bnez	$a5, .LBB3_37
# %bb.38:                               # %middle.block
                                        #   in Loop: Header=BB3_25 Depth=1
	vadd.w	$vr0, $vr2, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a2, $a4, .LBB3_24
	.p2align	4, , 16
.LBB3_39:                               # %scalar.ph
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a4, 0
	alsl.d	$a6, $a6, $a3, 3
	ld.w	$a6, $a6, 4
	addi.w	$a4, $a4, 1
	add.w	$a5, $a6, $a5
	bne	$a2, $a4, .LBB3_39
	b	.LBB3_24
.LBB3_40:                               # %.preheader138
	lu12i.w	$s7, -524288
	lu12i.w	$s8, 524287
	blez	$s5, .LBB3_48
# %bb.41:                               # %.lr.ph165
	move	$s0, $zero
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_42:                               # %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread
                                        #   in Loop: Header=BB3_44 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 244
	ld.d	$a1, $fp, 248
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a0, $fp, 244
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 244
.LBB3_43:                               # %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.w	$s0, $s0, 1
	beq	$s0, $s5, .LBB3_48
.LBB3_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_46 Depth 2
	ld.w	$a0, $fp, 180
	blez	$a0, .LBB3_42
# %bb.45:                               # %.lr.ph.i97
                                        #   in Loop: Header=BB3_44 Depth=1
	ld.d	$a1, $fp, 184
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB3_46:                               #   Parent Loop BB3_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	beq	$a2, $s0, .LBB3_43
# %bb.47:                               #   in Loop: Header=BB3_46 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB3_46
	b	.LBB3_42
.LBB3_48:                               # %.loopexit139
	blez	$s6, .LBB3_56
# %bb.49:                               # %.lr.ph168
	move	$s0, $zero
	addi.d	$s4, $fp, 200
	b	.LBB3_52
	.p2align	4, , 16
.LBB3_50:                               # %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread
                                        #   in Loop: Header=BB3_52 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 212
	ld.d	$a1, $fp, 216
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a0, $fp, 212
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 212
.LBB3_51:                               # %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit
                                        #   in Loop: Header=BB3_52 Depth=1
	addi.w	$s0, $s0, 1
	beq	$s0, $s6, .LBB3_56
.LBB3_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_54 Depth 2
	ld.w	$a0, $fp, 180
	blez	$a0, .LBB3_50
# %bb.53:                               # %.lr.ph.i101
                                        #   in Loop: Header=BB3_52 Depth=1
	ld.d	$a1, $fp, 184
	.p2align	4, , 16
.LBB3_54:                               #   Parent Loop BB3_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	beq	$a2, $s0, .LBB3_51
# %bb.55:                               #   in Loop: Header=BB3_54 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB3_54
	b	.LBB3_50
.LBB3_56:                               # %._crit_edge169
	ld.w	$a0, $fp, 212
	beqz	$a0, .LBB3_96
# %bb.57:
	ld.w	$a0, $fp, 148
	beqz	$a0, .LBB3_96
# %bb.58:                               # %.lr.ph.i108.lr.ph
	ld.wu	$a1, $fp, 180
	ld.d	$t0, $fp, 216
	ld.d	$a2, $fp, 152
	addi.w	$a3, $a1, 0
	ld.d	$a4, $fp, 184
	vld	$vr0, $s1, %pc_lo12(.LCPI3_0)
	ori	$a5, $s8, 4095
	ori	$a6, $s7, 7
	vrepli.b	$vr1, 0
.LBB3_59:                               # %.lr.ph.i108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_60 Depth 2
                                        #     Child Loop BB3_67 Depth 2
                                        #     Child Loop BB3_69 Depth 2
                                        #     Child Loop BB3_72 Depth 2
	ld.w	$t0, $t0, 0
	move	$a7, $zero
	.p2align	4, , 16
.LBB3_60:                               #   Parent Loop BB3_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t1, $a7, 3
	ldx.w	$t1, $a2, $t1
	bltu	$t0, $t1, .LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_60 Depth=2
	addi.w	$a7, $a7, 1
	sub.w	$t0, $t0, $t1
	bne	$a0, $a7, .LBB3_60
	b	.LBB3_96
	.p2align	4, , 16
.LBB3_62:                               # %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
                                        #   in Loop: Header=BB3_59 Depth=1
	beqz	$a7, .LBB3_65
# %bb.63:                               # %.lr.ph.i110.preheader
                                        #   in Loop: Header=BB3_59 Depth=1
	add.w	$t0, $a7, $a5
	bgeu	$t0, $a6, .LBB3_66
# %bb.64:                               #   in Loop: Header=BB3_59 Depth=1
	move	$t0, $zero
	move	$s4, $zero
	b	.LBB3_69
	.p2align	4, , 16
.LBB3_65:                               #   in Loop: Header=BB3_59 Depth=1
	move	$s4, $zero
	b	.LBB3_70
.LBB3_66:                               # %vector.ph266
                                        #   in Loop: Header=BB3_59 Depth=1
	move	$t0, $a7
	bstrins.d	$t0, $zero, 2, 0
	move	$t1, $t0
	vori.b	$vr3, $vr0, 0
	vori.b	$vr2, $vr1, 0
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB3_67:                               # %vector.body269
                                        #   Parent Loop BB3_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr5, $vr3, 4
	vshuf4i.w	$vr6, $vr3, 50
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vshuf4i.w	$vr7, $vr3, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vshuf4i.w	$vr8, $vr5, 50
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr5, $vr5, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vpickve2gr.d	$t2, $vr7, 0
	alsl.d	$t2, $t2, $a2, 3
	vpickve2gr.d	$t3, $vr7, 1
	alsl.d	$t3, $t3, $a2, 3
	vpickve2gr.d	$t4, $vr6, 0
	alsl.d	$t4, $t4, $a2, 3
	vpickve2gr.d	$t5, $vr6, 1
	alsl.d	$t5, $t5, $a2, 3
	vpickve2gr.d	$t6, $vr5, 0
	alsl.d	$t6, $t6, $a2, 3
	vpickve2gr.d	$t7, $vr5, 1
	alsl.d	$t7, $t7, $a2, 3
	vpickve2gr.d	$t8, $vr8, 0
	alsl.d	$t8, $t8, $a2, 3
	vpickve2gr.d	$s0, $vr8, 1
	alsl.d	$s0, $s0, $a2, 3
	ld.w	$t2, $t2, 4
	ld.w	$t3, $t3, 4
	ld.w	$t4, $t4, 4
	ld.w	$t5, $t5, 4
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	ld.w	$t2, $t6, 4
	ld.w	$t3, $t7, 4
	ld.w	$t4, $t8, 4
	ld.w	$t5, $s0, 4
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr6, $t3, 1
	vinsgr2vr.w	$vr6, $t4, 2
	vinsgr2vr.w	$vr6, $t5, 3
	vadd.w	$vr2, $vr5, $vr2
	vadd.w	$vr4, $vr6, $vr4
	addi.w	$t1, $t1, -8
	vaddi.wu	$vr3, $vr3, 8
	bnez	$t1, .LBB3_67
# %bb.68:                               # %middle.block277
                                        #   in Loop: Header=BB3_59 Depth=1
	vadd.w	$vr2, $vr4, $vr2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	addi.w	$t1, $t0, 0
	vpickve2gr.d	$s4, $vr2, 0
	beq	$a7, $t1, .LBB3_70
	.p2align	4, , 16
.LBB3_69:                               # %.lr.ph.i110
                                        #   Parent Loop BB3_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t0, 0
	alsl.d	$t1, $t1, $a2, 3
	ld.w	$t1, $t1, 4
	addi.w	$t0, $t0, 1
	add.d	$s4, $t1, $s4
	bne	$a7, $t0, .LBB3_69
.LBB3_70:                               # %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit116
                                        #   in Loop: Header=BB3_59 Depth=1
	addi.w	$a7, $s4, 0
	blez	$a3, .LBB3_74
# %bb.71:                               # %.lr.ph.i120.preheader
                                        #   in Loop: Header=BB3_59 Depth=1
	move	$t1, $a1
	move	$t0, $a4
	.p2align	4, , 16
.LBB3_72:                               # %.lr.ph.i120
                                        #   Parent Loop BB3_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 4
	beq	$t2, $a7, .LBB3_59
# %bb.73:                               #   in Loop: Header=BB3_72 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB3_72
.LBB3_74:                               # %.preheader
	ld.w	$a0, $fp, 244
	blez	$a0, .LBB3_78
# %bb.75:                               # %.lr.ph172
	ld.d	$a2, $fp, 248
	move	$a1, $zero
	.p2align	4, , 16
.LBB3_76:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	beq	$a3, $a7, .LBB3_79
# %bb.77:                               #   in Loop: Header=BB3_76 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB3_76
.LBB3_78:                               # %.loopexit136
	ld.bu	$a0, $fp, 116
	bnez	$a0, .LBB3_80
	b	.LBB3_89
.LBB3_79:
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 248
	st.w	$s4, $a0, 0
	ld.bu	$a0, $fp, 116
	beqz	$a0, .LBB3_89
.LBB3_80:
	ld.w	$s4, $fp, 244
	blez	$s4, .LBB3_95
# %bb.81:                               # %.lr.ph175
	move	$s0, $zero
	slli.d	$s1, $s4, 2
	.p2align	4, , 16
.LBB3_82:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 248
	ldx.w	$a0, $a0, $s0
	move	$s7, $s6
	bstrins.d	$s7, $a0, 63, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 180
	ld.d	$a1, $fp, 184
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	ld.w	$a0, $fp, 180
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 180
	addi.d	$s0, $s0, 4
	addi.w	$s6, $s6, 1
	bne	$s1, $s0, .LBB3_82
# %bb.83:                               # %.lr.ph179
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$s3, $sp, 80
	addi.d	$s6, $sp, 88
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$s8, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	ori	$s1, $zero, 1
	lu32i.d	$s1, 1
	lu12i.w	$a0, 28432
	ori	$s0, $a0, 1793
	.p2align	4, , 16
.LBB3_84:                               # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s6, 0
	st.d	$s7, $sp, 104
	st.d	$s8, $sp, 80
	st.d	$s1, $sp, 112
	st.d	$s0, $sp, 72
.Ltmp245:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.85:                               #   in Loop: Header=BB3_84 Depth=1
.Ltmp247:                               # EH_LABEL
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.86:                               #   in Loop: Header=BB3_84 Depth=1
	ld.w	$a0, $fp, 148
	ld.d	$a1, $fp, 152
	slli.d	$a0, $a0, 3
	stx.d	$s1, $a1, $a0
	ld.w	$a0, $fp, 148
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 148
.Ltmp249:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.87:                               #   in Loop: Header=BB3_84 Depth=1
	ld.w	$a0, $fp, 244
	ld.d	$a1, $fp, 248
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a0, $fp, 244
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 244
	st.d	$s8, $sp, 80
.Ltmp252:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.88:                               # %_ZN7CMethodD2Ev.exit129
                                        #   in Loop: Header=BB3_84 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	addi.d	$s5, $s5, 1
	bnez	$s4, .LBB3_84
.LBB3_89:                               # %.loopexit
	ld.w	$a0, $fp, 60
	blez	$a0, .LBB3_92
.LBB3_90:                               # %.lr.ph182
	addi.d	$s1, $fp, 400
	addi.d	$s0, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$s2, $a0, -8
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB3_91:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 64
	ldx.d	$a0, $a0, $s2
	ld.d	$s4, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 412
	ld.d	$a1, $fp, 416
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 412
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, -8
	bltu	$s3, $s0, .LBB3_91
.LBB3_92:                               # %._crit_edge183
	ori	$a0, $zero, 272
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.Ltmp267:                               # EH_LABEL
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer21CBindReverseConverterC1ERKNS_9CBindInfoE)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.93:
	st.d	$s1, $fp, 392
	addi.d	$a1, $fp, 264
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer21CBindReverseConverter21CreateReverseBindInfoERNS_9CBindInfoE)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 432
.LBB3_94:
	move	$a0, $zero
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB3_95:                               # %._crit_edge176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 60
	bgtz	$a0, .LBB3_90
	b	.LBB3_92
.LBB3_96:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB3_97:
.Ltmp266:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_98:
.Ltmp269:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 272
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_99:
.Ltmp263:                               # EH_LABEL
	b	.LBB3_102
.LBB3_100:
.Ltmp254:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_101:
.Ltmp251:                               # EH_LABEL
.LBB3_102:
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN7CMethodD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN8NArchive3N7z8CEncoder13EncoderConstrEv, .Lfunc_end3-_ZN8NArchive3N7z8CEncoder13EncoderConstrEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp255-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp255
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp262-.Ltmp255              #   Call between .Ltmp255 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin2         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin2         #     jumps to .Ltmp266
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp265-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp245-.Ltmp265              #   Call between .Ltmp265 and .Ltmp245
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp250-.Ltmp245              #   Call between .Ltmp245 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin2         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin2         #     jumps to .Ltmp254
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp253-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp267-.Ltmp253              #   Call between .Ltmp253 and .Ltmp267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin2         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Lfunc_end3-.Ltmp268           #   Call between .Ltmp268 and .Lfunc_end3
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
	.section	.text._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,@function
_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev: # @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp270:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB4_2:
.Ltmp272:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev, .Lfunc_end4-_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp270-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin3         #     jumps to .Ltmp272
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp271-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp271           #   Call between .Ltmp271 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev,"axG",@progbits,_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev,comdat
	.weak	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev # -- Begin function _ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev,@function
_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev: # @_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE+16)
	st.d	$a0, $fp, 0
.Ltmp273:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB5_2:
.Ltmp275:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev, .Lfunc_end5-_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev,"aG",@progbits,_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp273-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin4         #     jumps to .Ltmp275
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp274-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp274           #   Call between .Ltmp274 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI16CInOutTempBufferED2Ev,"axG",@progbits,_ZN13CObjectVectorI16CInOutTempBufferED2Ev,comdat
	.weak	_ZN13CObjectVectorI16CInOutTempBufferED2Ev # -- Begin function _ZN13CObjectVectorI16CInOutTempBufferED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI16CInOutTempBufferED2Ev,@function
_ZN13CObjectVectorI16CInOutTempBufferED2Ev: # @_ZN13CObjectVectorI16CInOutTempBufferED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI16CInOutTempBufferE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI16CInOutTempBufferE+16)
	st.d	$a0, $fp, 0
.Ltmp276:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB6_2:
.Ltmp278:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN13CObjectVectorI16CInOutTempBufferED2Ev, .Lfunc_end6-_ZN13CObjectVectorI16CInOutTempBufferED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI16CInOutTempBufferED2Ev,"aG",@progbits,_ZN13CObjectVectorI16CInOutTempBufferED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp276-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin5         #     jumps to .Ltmp278
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp277-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp277           #   Call between .Ltmp277 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE # -- Begin function _ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE
	.p2align	5
	.type	_ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE,@function
_ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE: # @_ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	move	$s1, $a1
	move	$fp, $a0
	st.d	$zero, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 24
	ori	$s5, $zero, 8
	st.d	$s5, $a0, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 16
	addi.d	$s0, $fp, 48
	vst	$vr0, $fp, 56
	st.d	$s5, $fp, 72
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 48
	addi.d	$s2, $fp, 80
	vst	$vr0, $fp, 88
	ori	$a0, $zero, 16
	st.d	$a0, $fp, 104
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE+16)
	st.d	$a0, $fp, 80
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 112
	st.b	$zero, $fp, 116
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 120
.Ltmp279:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.1:
	st.d	$a0, $fp, 120
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 132
	addi.d	$s2, $fp, 136
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 144
	st.d	$s5, $fp, 160
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	st.d	$a1, $fp, 136
	vst	$vr0, $fp, 176
	st.d	$s5, $fp, 192
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	st.d	$a2, $fp, 168
	vst	$vr0, $fp, 208
	st.d	$a0, $fp, 224
	pcalau12i	$a3, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a3, $fp, 200
	vst	$vr0, $fp, 240
	st.d	$a0, $fp, 256
	st.d	$a3, $fp, 232
	addi.d	$s3, $fp, 264
	vst	$vr0, $fp, 272
	st.d	$s5, $fp, 288
	st.d	$a1, $fp, 264
	vst	$vr0, $fp, 304
	st.d	$s5, $fp, 320
	st.d	$a2, $fp, 296
	vst	$vr0, $fp, 336
	st.d	$a0, $fp, 352
	st.d	$a3, $fp, 328
	vst	$vr0, $fp, 368
	st.d	$a0, $fp, 384
	st.d	$a3, $fp, 360
	st.d	$zero, $fp, 392
	addi.d	$s4, $fp, 400
	vst	$vr0, $fp, 408
	st.d	$s5, $fp, 424
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	ld.w	$a1, $s1, 12
	st.d	$a0, $fp, 400
	st.b	$zero, $fp, 432
	bnez	$a1, .LBB7_3
# %bb.2:
	ld.b	$a0, $s1, 68
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_5
.LBB7_3:
.Ltmp284:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.4:
	st.d	$zero, $fp, 0
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
.LBB7_5:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp282:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.6:
.LBB7_7:
.Ltmp281:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB7_9
.LBB7_8:
.Ltmp286:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer9CBindInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer9CBindInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z22CCompressionMethodModeD2Ev)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %.body
	addi.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB7_11
# %bb.10:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp287:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp288:                               # EH_LABEL
.LBB7_11:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_12:
.Ltmp289:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE, .Lfunc_end7-_ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp279-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin6         #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin6         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp282-.Ltmp285              #   Call between .Ltmp285 and .Ltmp282
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp286-.Lfunc_begin6         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp287-.Ltmp283              #   Call between .Ltmp283 and .Ltmp287
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin6         #     jumps to .Ltmp289
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp288-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Lfunc_end7-.Ltmp288           #   Call between .Ltmp288 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_,"axG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_,comdat
	.weak	_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_ # -- Begin function _ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_
	.p2align	5
	.type	_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_,@function
_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_: # @_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_
	.cfi_startproc
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 12
	ld.w	$a0, $fp, 12
	add.w	$a1, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB8_3
# %bb.1:                                # %.lr.ph.i.i
	move	$s2, $zero
	slli.d	$s1, $s1, 3
	.p2align	4, , 16
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	bne	$s1, $s2, .LBB8_2
.LBB8_3:                                # %_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEEaSERKS3_.exit
	addi.d	$s1, $fp, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s0, 44
	ld.w	$a0, $fp, 44
	add.w	$a1, $a0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB8_6
# %bb.4:                                # %.lr.ph.i.i5
	move	$s2, $zero
	slli.d	$s3, $s3, 4
	.p2align	4, , 16
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 48
	vldx	$vr0, $a0, $s2
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 4
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vstx	$vr0, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 16
	st.w	$a0, $fp, 44
	bne	$s3, $s2, .LBB8_5
.LBB8_6:                                # %_ZN13CRecordVectorIN8NArchive3N7z5CBindEEaSERKS3_.exit
	ld.b	$a0, $s0, 68
	st.b	$a0, $fp, 68
	ld.w	$a0, $s0, 64
	st.w	$a0, $fp, 64
	beq	$s0, $fp, .LBB8_16
# %bb.7:
	st.w	$zero, $fp, 80
	ld.d	$s2, $fp, 72
	ld.w	$a0, $s0, 80
	ld.w	$s4, $fp, 84
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB8_9
# %bb.8:
	move	$s1, $s2
	b	.LBB8_13
.LBB8_9:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB8_11
# %bb.10:                               # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 80
	b	.LBB8_12
.LBB8_11:
	move	$a0, $zero
.LBB8_12:
	st.d	$s1, $fp, 72
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 84
.LBB8_13:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 72
	.p2align	4, , 16
.LBB8_14:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB8_14
# %bb.15:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a0, $s0, 80
	st.w	$a0, $fp, 80
.LBB8_16:                               # %_ZN11CStringBaseIwEaSERKS0_.exit
	move	$a0, $fp
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end8:
	.size	_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_, .Lfunc_end8-_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11NCoderMixer9CBindInfoD2Ev,"axG",@progbits,_ZN11NCoderMixer9CBindInfoD2Ev,comdat
	.weak	_ZN11NCoderMixer9CBindInfoD2Ev  # -- Begin function _ZN11NCoderMixer9CBindInfoD2Ev
	.p2align	5
	.type	_ZN11NCoderMixer9CBindInfoD2Ev,@function
_ZN11NCoderMixer9CBindInfoD2Ev:         # @_ZN11NCoderMixer9CBindInfoD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 96
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.Lfunc_end9:
	.size	_ZN11NCoderMixer9CBindInfoD2Ev, .Lfunc_end9-_ZN11NCoderMixer9CBindInfoD2Ev
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCompressionMethodModeD2Ev,"axG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,comdat
	.weak	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev # -- Begin function _ZN8NArchive3N7z22CCompressionMethodModeD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,@function
_ZN8NArchive3N7z22CCompressionMethodModeD2Ev: # @_ZN8NArchive3N7z22CCompressionMethodModeD2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB10_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp290:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.3:                                # %_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB10_4:
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev, .Lfunc_end10-_ZN8NArchive3N7z22CCompressionMethodModeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z22CCompressionMethodModeD2Ev,"aG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp290-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin7         #     jumps to .Ltmp292
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp291-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp291          #   Call between .Ltmp291 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp293:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB11_2:
.Ltmp295:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev, .Lfunc_end11-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp293-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin8         #     jumps to .Ltmp295
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp294-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end11-.Ltmp294          #   Call between .Ltmp294 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_ # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$fp, $a0
	st.d	$a1, $a0, 0
	addi.d	$s2, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 16
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 8
.Ltmp296:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.1:                                # %.noexc.i.i.i
	addi.d	$a1, $s1, 8
.Ltmp298:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI5CPropEpLERKS1_)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.2:
	ld.d	$a0, $s1, 40
	st.d	$a0, $fp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB12_3:                               # %.body
.Ltmp300:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_, .Lfunc_end12-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp296-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp296
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp299-.Ltmp296              #   Call between .Ltmp296 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin9         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp299          #   Call between .Ltmp299 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7CMethodD2Ev,"axG",@progbits,_ZN7CMethodD2Ev,comdat
	.weak	_ZN7CMethodD2Ev                 # -- Begin function _ZN7CMethodD2Ev
	.p2align	5
	.type	_ZN7CMethodD2Ev,@function
_ZN7CMethodD2Ev:                        # @_ZN7CMethodD2Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$fp, $a0, 8
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a1, $a0, 8
.Ltmp301:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI5CPropED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB13_2:
.Ltmp303:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN7CMethodD2Ev, .Lfunc_end13-_ZN7CMethodD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7CMethodD2Ev,"aG",@progbits,_ZN7CMethodD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp301-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin10        #     jumps to .Ltmp303
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp302-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end13-.Ltmp302          #   Call between .Ltmp302 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z8CEncoderD2Ev   # -- Begin function _ZN8NArchive3N7z8CEncoderD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z8CEncoderD2Ev,@function
_ZN8NArchive3N7z8CEncoderD2Ev:          # @_ZN8NArchive3N7z8CEncoderD2Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$s0, $a0, 392
	beqz	$s0, .LBB14_2
# %bb.1:
	addi.d	$a0, $s0, 240
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 136
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s0, 8
	addi.d	$a0, $s0, 104
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 272
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_2:
	addi.d	$a0, $fp, 400
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 264
	addi.d	$a0, $fp, 360
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 328
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 296
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 136
	addi.d	$a0, $fp, 232
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	addi.d	$s0, $fp, 48
	beqz	$a0, .LBB14_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_4:                               # %_ZN11CStringBaseIwED2Ev.exit.i
	addi.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 48
.Ltmp304:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.5:                                # %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 16
.Ltmp307:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp308:                               # EH_LABEL
# %bb.6:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB14_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp310:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp311:                               # EH_LABEL
.LBB14_8:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB14_9:
.Ltmp312:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB14_10:
.Ltmp309:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB14_11:
.Ltmp306:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN8NArchive3N7z8CEncoderD2Ev, .Lfunc_end14-_ZN8NArchive3N7z8CEncoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp304-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp304
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin11        #     jumps to .Ltmp306
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp305-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp307-.Ltmp305              #   Call between .Ltmp305 and .Ltmp307
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin11        #     jumps to .Ltmp309
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp308-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Ltmp310-.Ltmp308              #   Call between .Ltmp308 and .Ltmp310
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin11        #     jumps to .Ltmp312
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp311-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Lfunc_end14-.Ltmp311          #   Call between .Ltmp311 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI13CStreamBinderED2Ev,"axG",@progbits,_ZN13CObjectVectorI13CStreamBinderED2Ev,comdat
	.weak	_ZN13CObjectVectorI13CStreamBinderED2Ev # -- Begin function _ZN13CObjectVectorI13CStreamBinderED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI13CStreamBinderED2Ev,@function
_ZN13CObjectVectorI13CStreamBinderED2Ev: # @_ZN13CObjectVectorI13CStreamBinderED2Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI13CStreamBinderE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI13CStreamBinderE+16)
	st.d	$a0, $fp, 0
.Ltmp313:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB15_2:
.Ltmp315:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN13CObjectVectorI13CStreamBinderED2Ev, .Lfunc_end15-_ZN13CObjectVectorI13CStreamBinderED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI13CStreamBinderED2Ev,"aG",@progbits,_ZN13CObjectVectorI13CStreamBinderED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp313-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp314-.Ltmp313              #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin12        #     jumps to .Ltmp315
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp314-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Lfunc_end15-.Ltmp314          #   Call between .Ltmp314 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI13CStreamBinderED0Ev,"axG",@progbits,_ZN13CObjectVectorI13CStreamBinderED0Ev,comdat
	.weak	_ZN13CObjectVectorI13CStreamBinderED0Ev # -- Begin function _ZN13CObjectVectorI13CStreamBinderED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI13CStreamBinderED0Ev,@function
_ZN13CObjectVectorI13CStreamBinderED0Ev: # @_ZN13CObjectVectorI13CStreamBinderED0Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI13CStreamBinderE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI13CStreamBinderE+16)
	st.d	$a0, $fp, 0
.Ltmp316:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI13CStreamBinderED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB16_2:
.Ltmp318:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN13CObjectVectorI13CStreamBinderED0Ev, .Lfunc_end16-_ZN13CObjectVectorI13CStreamBinderED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI13CStreamBinderED0Ev,"aG",@progbits,_ZN13CObjectVectorI13CStreamBinderED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp316-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin13        #     jumps to .Ltmp318
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp317-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp317          #   Call between .Ltmp317 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI13CStreamBinderE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI13CStreamBinderE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii # -- Begin function _ZN13CObjectVectorI13CStreamBinderE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii,@function
_ZN13CObjectVectorI13CStreamBinderE6DeleteEii: # @_ZN13CObjectVectorI13CStreamBinderE6DeleteEii
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB17_10
# %bb.1:                                # %.lr.ph
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	move	$s6, $zero
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               #   in Loop: Header=BB17_3 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 8
	bgeu	$s6, $s1, .LBB17_10
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB17_2
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	ld.d	$s3, $s2, 152
	beqz	$s3, .LBB17_8
# %bb.5:                                #   in Loop: Header=BB17_3 Depth=1
	ld.bu	$a0, $s3, 88
	beqz	$a0, .LBB17_7
# %bb.6:                                #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 40
	pcaddu18i	$ra, %call36(pthread_cond_destroy)
	jirl	$ra, $ra, 0
.LBB17_7:                               # %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
                                        #   in Loop: Header=BB17_3 Depth=1
	ori	$a1, $zero, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_8:                               #   in Loop: Header=BB17_3 Depth=1
	st.d	$zero, $s2, 152
	st.d	$s5, $s2, 128
	st.d	$zero, $s2, 136
	addi.d	$a0, $s2, 24
.Ltmp319:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.9:                                # %_ZN13CStreamBinderD2Ev.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	ori	$a1, $zero, 184
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB17_2
.LBB17_10:                              # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB17_11:
.Ltmp321:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii, .Lfunc_end17-_ZN13CObjectVectorI13CStreamBinderE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI13CStreamBinderE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI13CStreamBinderE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp319-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp319
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin14        #     jumps to .Ltmp321
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp320-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Lfunc_end17-.Ltmp320          #   Call between .Ltmp320 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
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
.Lfunc_end18:
	.size	__clang_call_terminate, .Lfunc_end18-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,"axG",@progbits,_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,comdat
	.weak	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv # -- Begin function _ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.p2align	5
	.type	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,@function
_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv: # @_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
# %bb.0:
	move	$a1, $a0
	ld.bu	$a0, $a0, 17
	beqz	$a0, .LBB19_3
# %bb.1:
	ld.bu	$a2, $a1, 16
	bnez	$a2, .LBB19_3
# %bb.2:
	st.b	$zero, $a1, 17
.LBB19_3:
	ret
.Lfunc_end19:
	.size	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv, .Lfunc_end19-_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,"axG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,comdat
	.weak	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev # -- Begin function _ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,@function
_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev: # @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	st.d	$a0, $fp, 0
.Ltmp322:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB20_2:
.Ltmp324:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev, .Lfunc_end20-_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,"aG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp322-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin15        #     jumps to .Ltmp324
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp323-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Lfunc_end20-.Ltmp323          #   Call between .Ltmp323 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,"axG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,comdat
	.weak	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev # -- Begin function _ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,@function
_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev: # @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	st.d	$a0, $fp, 0
.Ltmp325:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB21_2:
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev, .Lfunc_end21-_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,"aG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp325-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin16        #     jumps to .Ltmp327
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp326-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Lfunc_end21-.Ltmp326          #   Call between .Ltmp326 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii # -- Begin function _ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii,@function
_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii: # @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB22_5
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               #   in Loop: Header=BB22_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB22_5
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB22_2
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer7CCoder2D2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 528
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_2
.LBB22_5:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end22:
	.size	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii, .Lfunc_end22-_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11NCoderMixer7CCoder2D2Ev,"axG",@progbits,_ZN11NCoderMixer7CCoder2D2Ev,comdat
	.weak	_ZN11NCoderMixer7CCoder2D2Ev    # -- Begin function _ZN11NCoderMixer7CCoder2D2Ev
	.p2align	5
	.type	_ZN11NCoderMixer7CCoder2D2Ev,@function
_ZN11NCoderMixer7CCoder2D2Ev:           # @_ZN11NCoderMixer7CCoder2D2Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN11NCoderMixer7CCoder2E)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN11NCoderMixer7CCoder2E)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 496
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 464
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 432
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	st.d	$a0, $fp, 432
.Ltmp328:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 400
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	st.d	$a0, $fp, 400
.Ltmp331:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.2:                                # %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CVirtThreadD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 360
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 328
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 296
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 248
	beqz	$a0, .LBB23_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp334:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp335:                               # EH_LABEL
.LBB23_4:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i
	ld.d	$a0, $fp, 240
	beqz	$a0, .LBB23_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp337:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp338:                               # EH_LABEL
.LBB23_6:                               # %_ZN11NCoderMixer11CCoderInfo2D2Ev.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB23_7:
.Ltmp339:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_8:
.Ltmp336:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_9:
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_10:
.Ltmp330:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN11NCoderMixer7CCoder2D2Ev, .Lfunc_end23-_ZN11NCoderMixer7CCoder2D2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11NCoderMixer7CCoder2D2Ev,"aG",@progbits,_ZN11NCoderMixer7CCoder2D2Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp328-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp328
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin17        #     jumps to .Ltmp330
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp329-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp331-.Ltmp329              #   Call between .Ltmp329 and .Ltmp331
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin17        #     jumps to .Ltmp333
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp332-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Ltmp334-.Ltmp332              #   Call between .Ltmp332 and .Ltmp334
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin17        # >> Call Site 6 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp336-.Lfunc_begin17        #     jumps to .Ltmp336
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp337-.Lfunc_begin17        # >> Call Site 7 <<
	.uleb128 .Ltmp338-.Ltmp337              #   Call between .Ltmp337 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin17        #     jumps to .Ltmp339
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp338-.Lfunc_begin17        # >> Call Site 8 <<
	.uleb128 .Lfunc_end23-.Ltmp338          #   Call between .Ltmp338 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,@function
_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev: # @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp340:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB24_2:
.Ltmp342:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev, .Lfunc_end24-_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp340-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp342-.Lfunc_begin18        #     jumps to .Ltmp342
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp341-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Lfunc_end24-.Ltmp341          #   Call between .Ltmp341 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,@function
_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev: # @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp343:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB25_2:
.Ltmp345:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev, .Lfunc_end25-_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp343-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.uleb128 .Ltmp345-.Lfunc_begin19        #     jumps to .Ltmp345
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp344-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end25-.Ltmp344          #   Call between .Ltmp344 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii # -- Begin function _ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,@function
_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii: # @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB26_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB26_4
	.p2align	4, , 16
.LBB26_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
                                        #   in Loop: Header=BB26_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB26_3:                               #   in Loop: Header=BB26_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB26_7
.LBB26_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB26_3
# %bb.5:                                #   in Loop: Header=BB26_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB26_2
# %bb.6:                                #   in Loop: Header=BB26_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp346:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp347:                               # EH_LABEL
	b	.LBB26_2
.LBB26_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB26_8:
.Ltmp348:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii, .Lfunc_end26-_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp346-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp346
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.uleb128 .Ltmp348-.Lfunc_begin20        #     jumps to .Ltmp348
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp347-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end26-.Ltmp347          #   Call between .Ltmp347 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp349:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB27_2:
.Ltmp351:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev, .Lfunc_end27-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp349-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp350-.Ltmp349              #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp351-.Lfunc_begin21        #     jumps to .Ltmp351
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp350-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end27-.Ltmp350          #   Call between .Ltmp350 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp352:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp353:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB28_2:
.Ltmp354:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev, .Lfunc_end28-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp352-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp353-.Ltmp352              #   Call between .Ltmp352 and .Ltmp353
	.uleb128 .Ltmp354-.Lfunc_begin22        #     jumps to .Ltmp354
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp353-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end28-.Ltmp353          #   Call between .Ltmp353 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB29_6
# %bb.1:                                # %.lr.ph
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	move	$s6, $zero
	b	.LBB29_3
	.p2align	4, , 16
.LBB29_2:                               #   in Loop: Header=BB29_3 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 8
	bgeu	$s6, $s1, .LBB29_6
.LBB29_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB29_2
# %bb.4:                                #   in Loop: Header=BB29_3 Depth=1
	addi.d	$s3, $s2, 8
	st.d	$s5, $s2, 8
.Ltmp355:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.5:                                # %_ZN7CMethodD2Ev.exit
                                        #   in Loop: Header=BB29_3 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB29_2
.LBB29_6:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB29_7:
.Ltmp357:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii, .Lfunc_end29-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table29:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp355-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp356-.Ltmp355              #   Call between .Ltmp355 and .Ltmp356
	.uleb128 .Ltmp357-.Lfunc_begin23        #     jumps to .Ltmp357
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp356-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end29-.Ltmp356          #   Call between .Ltmp356 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev # -- Begin function _ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev,@function
_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev: # @_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end30:
	.size	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev, .Lfunc_end30-_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev # -- Begin function _ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev,@function
_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev: # @_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end31:
	.size	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev, .Lfunc_end31-_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev # -- Begin function _ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev,@function
_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev: # @_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end32:
	.size	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev, .Lfunc_end32-_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIjED0Ev,"axG",@progbits,_ZN13CRecordVectorIjED0Ev,comdat
	.weak	_ZN13CRecordVectorIjED0Ev       # -- Begin function _ZN13CRecordVectorIjED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIjED0Ev,@function
_ZN13CRecordVectorIjED0Ev:              # @_ZN13CRecordVectorIjED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end33:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end33-_ZN13CRecordVectorIjED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropED2Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED2Ev  # -- Begin function _ZN13CObjectVectorI5CPropED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED2Ev,@function
_ZN13CObjectVectorI5CPropED2Ev:         # @_ZN13CObjectVectorI5CPropED2Ev
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 0
.Ltmp358:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp359:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB34_2:
.Ltmp360:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN13CObjectVectorI5CPropED2Ev, .Lfunc_end34-_ZN13CObjectVectorI5CPropED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED2Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table34:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp358-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp359-.Ltmp358              #   Call between .Ltmp358 and .Ltmp359
	.uleb128 .Ltmp360-.Lfunc_begin24        #     jumps to .Ltmp360
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp359-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end34-.Ltmp359          #   Call between .Ltmp359 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase23:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropED0Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED0Ev  # -- Begin function _ZN13CObjectVectorI5CPropED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED0Ev,@function
_ZN13CObjectVectorI5CPropED0Ev:         # @_ZN13CObjectVectorI5CPropED0Ev
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 0
.Ltmp361:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI5CPropED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB35_2:
.Ltmp363:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN13CObjectVectorI5CPropED0Ev, .Lfunc_end35-_ZN13CObjectVectorI5CPropED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED0Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp361-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp362-.Ltmp361              #   Call between .Ltmp361 and .Ltmp362
	.uleb128 .Ltmp363-.Lfunc_begin25        #     jumps to .Ltmp363
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp362-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Lfunc_end35-.Ltmp362          #   Call between .Ltmp362 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase24:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI5CPropE6DeleteEii # -- Begin function _ZN13CObjectVectorI5CPropE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropE6DeleteEii,@function
_ZN13CObjectVectorI5CPropE6DeleteEii:   # @_ZN13CObjectVectorI5CPropE6DeleteEii
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB36_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB36_3
	.p2align	4, , 16
.LBB36_2:                               #   in Loop: Header=BB36_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB36_6
.LBB36_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB36_2
# %bb.4:                                #   in Loop: Header=BB36_3 Depth=1
	addi.d	$a0, $s2, 8
.Ltmp364:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.5:                                # %_ZN5CPropD2Ev.exit
                                        #   in Loop: Header=BB36_3 Depth=1
	ori	$a1, $zero, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB36_2
.LBB36_6:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB36_7:
.Ltmp366:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN13CObjectVectorI5CPropE6DeleteEii, .Lfunc_end36-_ZN13CObjectVectorI5CPropE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp364-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp366-.Lfunc_begin26        #     jumps to .Ltmp366
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp365-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp365          #   Call between .Ltmp365 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase25:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7CBufferIhED0Ev,"axG",@progbits,_ZN7CBufferIhED0Ev,comdat
	.weak	_ZN7CBufferIhED0Ev              # -- Begin function _ZN7CBufferIhED0Ev
	.p2align	5
	.type	_ZN7CBufferIhED0Ev,@function
_ZN7CBufferIhED0Ev:                     # @_ZN7CBufferIhED0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV7CBufferIhE+16)
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB37_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB37_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end37:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end37-_ZN7CBufferIhED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception27
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp367:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB38_2:
.Ltmp369:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev, .Lfunc_end38-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp367-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp368-.Ltmp367              #   Call between .Ltmp367 and .Ltmp368
	.uleb128 .Ltmp369-.Lfunc_begin27        #     jumps to .Ltmp369
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp368-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Lfunc_end38-.Ltmp368          #   Call between .Ltmp368 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase26:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB39_7
# %bb.1:                                # %.lr.ph
	slli.d	$s3, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	move	$s5, $zero
	b	.LBB39_4
	.p2align	4, , 16
.LBB39_2:                               # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit
                                        #   in Loop: Header=BB39_4 Depth=1
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_3:                               #   in Loop: Header=BB39_4 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bgeu	$s5, $s1, .LBB39_7
.LBB39_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s3
	beqz	$s2, .LBB39_3
# %bb.5:                                #   in Loop: Header=BB39_4 Depth=1
	ld.d	$a0, $s2, 24
	st.d	$s4, $s2, 8
	beqz	$a0, .LBB39_2
# %bb.6:                                #   in Loop: Header=BB39_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB39_2
.LBB39_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end39:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii, .Lfunc_end39-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorIyED0Ev,"axG",@progbits,_ZN13CRecordVectorIyED0Ev,comdat
	.weak	_ZN13CRecordVectorIyED0Ev       # -- Begin function _ZN13CRecordVectorIyED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIyED0Ev,@function
_ZN13CRecordVectorIyED0Ev:              # @_ZN13CRecordVectorIyED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end40:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end40-_ZN13CRecordVectorIyED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI16CInOutTempBufferED0Ev,"axG",@progbits,_ZN13CObjectVectorI16CInOutTempBufferED0Ev,comdat
	.weak	_ZN13CObjectVectorI16CInOutTempBufferED0Ev # -- Begin function _ZN13CObjectVectorI16CInOutTempBufferED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI16CInOutTempBufferED0Ev,@function
_ZN13CObjectVectorI16CInOutTempBufferED0Ev: # @_ZN13CObjectVectorI16CInOutTempBufferED0Ev
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception28
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI16CInOutTempBufferE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI16CInOutTempBufferE+16)
	st.d	$a0, $fp, 0
.Ltmp370:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp371:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI16CInOutTempBufferED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB41_2:
.Ltmp372:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_ZN13CObjectVectorI16CInOutTempBufferED0Ev, .Lfunc_end41-_ZN13CObjectVectorI16CInOutTempBufferED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI16CInOutTempBufferED0Ev,"aG",@progbits,_ZN13CObjectVectorI16CInOutTempBufferED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table41:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp370-.Lfunc_begin28        # >> Call Site 1 <<
	.uleb128 .Ltmp371-.Ltmp370              #   Call between .Ltmp370 and .Ltmp371
	.uleb128 .Ltmp372-.Lfunc_begin28        #     jumps to .Ltmp372
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp371-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Lfunc_end41-.Ltmp371          #   Call between .Ltmp371 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase27:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii # -- Begin function _ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii,@function
_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii: # @_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB42_5
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB42_3
	.p2align	4, , 16
.LBB42_2:                               #   in Loop: Header=BB42_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB42_5
.LBB42_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB42_2
# %bb.4:                                #   in Loop: Header=BB42_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN16CInOutTempBufferD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1168
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB42_2
.LBB42_5:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end42:
	.size	_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii, .Lfunc_end42-_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev,"axG",@progbits,_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev,comdat
	.weak	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev # -- Begin function _ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev,@function
_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev: # @_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception29
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE+16)
	st.d	$a0, $fp, 0
.Ltmp373:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB43_2:
.Ltmp375:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev, .Lfunc_end43-_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev,"aG",@progbits,_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase28-.Lttbaseref28
.Lttbaseref28:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp373-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp374-.Ltmp373              #   Call between .Ltmp373 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin29        #     jumps to .Ltmp375
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp374-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Lfunc_end43-.Ltmp374          #   Call between .Ltmp374 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase28:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii # -- Begin function _ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii,@function
_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii: # @_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB44_5
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	slli.d	$s3, $s0, 3
	b	.LBB44_3
	.p2align	4, , 16
.LBB44_2:                               #   in Loop: Header=BB44_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	bgeu	$s2, $s1, .LBB44_5
.LBB44_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s3
	beqz	$a0, .LBB44_2
# %bb.4:                                #   in Loop: Header=BB44_3 Depth=1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB44_2
.LBB44_5:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end44:
	.size	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii, .Lfunc_end44-_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,@function
_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev: # @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception30
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp376:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB45_2:
.Ltmp378:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev, .Lfunc_end45-_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase29-.Lttbaseref29
.Lttbaseref29:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp376-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin30        #     jumps to .Ltmp378
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp377-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Lfunc_end45-.Ltmp377          #   Call between .Ltmp377 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase29:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii # -- Begin function _ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,@function
_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii: # @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception31
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB46_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB46_4
	.p2align	4, , 16
.LBB46_2:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
                                        #   in Loop: Header=BB46_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB46_3:                               #   in Loop: Header=BB46_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB46_7
.LBB46_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB46_3
# %bb.5:                                #   in Loop: Header=BB46_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB46_2
# %bb.6:                                #   in Loop: Header=BB46_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp379:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp380:                               # EH_LABEL
	b	.LBB46_2
.LBB46_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB46_8:
.Ltmp381:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end46:
	.size	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii, .Lfunc_end46-_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table46:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase30-.Lttbaseref30
.Lttbaseref30:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Lfunc_begin31-.Lfunc_begin31  # >> Call Site 1 <<
	.uleb128 .Ltmp379-.Lfunc_begin31        #   Call between .Lfunc_begin31 and .Ltmp379
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin31        #     jumps to .Ltmp381
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp380-.Lfunc_begin31        # >> Call Site 3 <<
	.uleb128 .Lfunc_end46-.Ltmp380          #   Call between .Ltmp380 and .Lfunc_end46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase30:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN16CInOutTempBufferC2ERKS_,"axG",@progbits,_ZN16CInOutTempBufferC2ERKS_,comdat
	.weak	_ZN16CInOutTempBufferC2ERKS_    # -- Begin function _ZN16CInOutTempBufferC2ERKS_
	.p2align	5
	.type	_ZN16CInOutTempBufferC2ERKS_,@function
_ZN16CInOutTempBufferC2ERKS_:           # @_ZN16CInOutTempBufferC2ERKS_
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception32
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a1
	move	$fp, $a0
	ld.b	$a0, $a1, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 8
	ld.w	$s1, $a1, 16
	bstrpick.d	$a1, $s1, 31, 0
	addi.d	$s2, $a1, 1
	slli.d	$a1, $s2, 31
	st.b	$a0, $fp, 0
	bgez	$a1, .LBB47_2
# %bb.1:
	move	$a0, $zero
	b	.LBB47_3
.LBB47_2:
	addi.w	$a0, $s2, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 20
.LBB47_3:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a1, $s0, 8
	.p2align	4, , 16
.LBB47_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB47_4
# %bb.5:                                # %_ZN8NWindows5NFile10NDirectory9CTempFileC2ERKS2_.exit
	st.w	$s1, $fp, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.w	$a1, $s0, 32
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 40
	ld.wu	$s2, $s0, 48
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 24
	addi.d	$s1, $s2, 1
	slli.d	$a0, $s1, 31
	st.w	$a1, $fp, 32
	bgez	$a0, .LBB47_7
# %bb.6:
	move	$a0, $zero
	b	.LBB47_9
.LBB47_7:
	addi.w	$a0, $s1, 0
.Ltmp382:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp383:                               # EH_LABEL
# %bb.8:                                # %.noexc
	st.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	st.w	$s1, $fp, 52
.LBB47_9:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i
	ld.d	$a1, $s0, 40
	addi.d	$s1, $fp, 24
	.p2align	4, , 16
.LBB47_10:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB47_10
# %bb.11:
	st.w	$s2, $fp, 48
	addi.d	$a0, $fp, 56
	addi.d	$a1, $s0, 56
	ori	$a2, $zero, 1052
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	st.d	$a0, $fp, 24
	ld.d	$a0, $s0, 1112
	st.d	$a0, $fp, 1112
	ld.w	$a0, $s0, 1120
	st.w	$a0, $fp, 1120
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 1128
	ld.w	$s2, $s0, 1136
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	bgez	$a0, .LBB47_13
# %bb.12:
	move	$a0, $zero
	b	.LBB47_15
.LBB47_13:
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp385:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.14:                               # %.noexc9
	st.d	$a0, $fp, 1128
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 1140
.LBB47_15:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 1128
	.p2align	4, , 16
.LBB47_16:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB47_16
# %bb.17:
	st.w	$s2, $fp, 1136
	vld	$vr0, $s0, 1144
	vst	$vr0, $fp, 1144
	ld.w	$a0, $s0, 1160
	st.w	$a0, $fp, 1160
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB47_18:
.Ltmp387:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB47_19:
.Ltmp384:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN16CInOutTempBufferC2ERKS_, .Lfunc_end47-_ZN16CInOutTempBufferC2ERKS_
	.cfi_endproc
	.section	.gcc_except_table._ZN16CInOutTempBufferC2ERKS_,"aG",@progbits,_ZN16CInOutTempBufferC2ERKS_,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Lfunc_begin32-.Lfunc_begin32  # >> Call Site 1 <<
	.uleb128 .Ltmp382-.Lfunc_begin32        #   Call between .Lfunc_begin32 and .Ltmp382
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Ltmp383-.Ltmp382              #   Call between .Ltmp382 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin32        #     jumps to .Ltmp384
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin32        # >> Call Site 3 <<
	.uleb128 .Ltmp385-.Ltmp383              #   Call between .Ltmp383 and .Ltmp385
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp385-.Lfunc_begin32        # >> Call Site 4 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin32        #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin32        # >> Call Site 5 <<
	.uleb128 .Lfunc_end47-.Ltmp386          #   Call between .Ltmp386 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows5NFile10NDirectory9CTempFileD2Ev,"axG",@progbits,_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev,comdat
	.weak	_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev # -- Begin function _ZN8NWindows5NFile10NDirectory9CTempFileD2Ev
	.p2align	5
	.type	_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev,@function
_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev: # @_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception33
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp388:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB48_3
# %bb.2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB48_3:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB48_4:
.Ltmp390:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end48:
	.size	_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev, .Lfunc_end48-_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NWindows5NFile10NDirectory9CTempFileD2Ev,"aG",@progbits,_ZN8NWindows5NFile10NDirectory9CTempFileD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table48:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase31-.Lttbaseref31
.Lttbaseref31:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Ltmp388-.Lfunc_begin33        # >> Call Site 1 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp390-.Lfunc_begin33        #     jumps to .Ltmp390
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp389-.Lfunc_begin33        # >> Call Site 2 <<
	.uleb128 .Lfunc_end48-.Ltmp389          #   Call between .Ltmp389 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end33:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase31:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows5NFile3NIO8COutFileD0Ev,"axG",@progbits,_ZN8NWindows5NFile3NIO8COutFileD0Ev,comdat
	.weak	_ZN8NWindows5NFile3NIO8COutFileD0Ev # -- Begin function _ZN8NWindows5NFile3NIO8COutFileD0Ev
	.p2align	5
	.type	_ZN8NWindows5NFile3NIO8COutFileD0Ev,@function
_ZN8NWindows5NFile3NIO8COutFileD0Ev:    # @_ZN8NWindows5NFile3NIO8COutFileD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1088
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end49:
	.size	_ZN8NWindows5NFile3NIO8COutFileD0Ev, .Lfunc_end49-_ZN8NWindows5NFile3NIO8COutFileD0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIPKyED0Ev,"axG",@progbits,_ZN13CRecordVectorIPKyED0Ev,comdat
	.weak	_ZN13CRecordVectorIPKyED0Ev     # -- Begin function _ZN13CRecordVectorIPKyED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIPKyED0Ev,@function
_ZN13CRecordVectorIPKyED0Ev:            # @_ZN13CRecordVectorIPKyED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end50:
	.size	_ZN13CRecordVectorIPKyED0Ev, .Lfunc_end50-_ZN13CRecordVectorIPKyED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIP19ISequentialInStreamED0Ev,"axG",@progbits,_ZN13CRecordVectorIP19ISequentialInStreamED0Ev,comdat
	.weak	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev # -- Begin function _ZN13CRecordVectorIP19ISequentialInStreamED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev,@function
_ZN13CRecordVectorIP19ISequentialInStreamED0Ev: # @_ZN13CRecordVectorIP19ISequentialInStreamED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end51:
	.size	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev, .Lfunc_end51-_ZN13CRecordVectorIP19ISequentialInStreamED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIP20ISequentialOutStreamED0Ev,"axG",@progbits,_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev,comdat
	.weak	_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev # -- Begin function _ZN13CRecordVectorIP20ISequentialOutStreamED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev,@function
_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev: # @_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end52:
	.size	_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev, .Lfunc_end52-_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropEpLERKS1_,"axG",@progbits,_ZN13CObjectVectorI5CPropEpLERKS1_,comdat
	.weak	_ZN13CObjectVectorI5CPropEpLERKS1_ # -- Begin function _ZN13CObjectVectorI5CPropEpLERKS1_
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropEpLERKS1_,@function
_ZN13CObjectVectorI5CPropEpLERKS1_:     # @_ZN13CObjectVectorI5CPropEpLERKS1_
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception34
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
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$s1, $a1, 12
	ld.w	$a0, $a0, 12
	add.w	$a1, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB53_4
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	slli.d	$s3, $s1, 3
	.p2align	4, , 16
.LBB53_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$s4, $a0, $s2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$s1, $a0
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $s4, 8
.Ltmp391:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantC1ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.3:                                # %_ZN13CObjectVectorI5CPropE3AddERKS0_.exit
                                        #   in Loop: Header=BB53_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $fp, 12
	bne	$s3, $s2, .LBB53_2
.LBB53_4:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB53_5:
.Ltmp393:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end53:
	.size	_ZN13CObjectVectorI5CPropEpLERKS1_, .Lfunc_end53-_ZN13CObjectVectorI5CPropEpLERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropEpLERKS1_,"aG",@progbits,_ZN13CObjectVectorI5CPropEpLERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table53:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Lfunc_begin34-.Lfunc_begin34  # >> Call Site 1 <<
	.uleb128 .Ltmp391-.Lfunc_begin34        #   Call between .Lfunc_begin34 and .Ltmp391
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin34        # >> Call Site 2 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin34        #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin34        # >> Call Site 3 <<
	.uleb128 .Lfunc_end53-.Ltmp392          #   Call between .Ltmp392 and .Lfunc_end53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end34:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZTV13CObjectVectorI13CStreamBinderE,@object # @_ZTV13CObjectVectorI13CStreamBinderE
	.section	.data.rel.ro._ZTV13CObjectVectorI13CStreamBinderE,"awG",@progbits,_ZTV13CObjectVectorI13CStreamBinderE,comdat
	.weak	_ZTV13CObjectVectorI13CStreamBinderE
	.p2align	3, 0x0
_ZTV13CObjectVectorI13CStreamBinderE:
	.dword	0
	.dword	_ZTI13CObjectVectorI13CStreamBinderE
	.dword	_ZN13CObjectVectorI13CStreamBinderED2Ev
	.dword	_ZN13CObjectVectorI13CStreamBinderED0Ev
	.dword	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii
	.size	_ZTV13CObjectVectorI13CStreamBinderE, 40

	.type	_ZTI13CObjectVectorI13CStreamBinderE,@object # @_ZTI13CObjectVectorI13CStreamBinderE
	.section	.data.rel.ro._ZTI13CObjectVectorI13CStreamBinderE,"awG",@progbits,_ZTI13CObjectVectorI13CStreamBinderE,comdat
	.weak	_ZTI13CObjectVectorI13CStreamBinderE
	.p2align	3, 0x0
_ZTI13CObjectVectorI13CStreamBinderE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI13CStreamBinderE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI13CStreamBinderE, 24

	.type	_ZTS13CObjectVectorI13CStreamBinderE,@object # @_ZTS13CObjectVectorI13CStreamBinderE
	.section	.rodata._ZTS13CObjectVectorI13CStreamBinderE,"aG",@progbits,_ZTS13CObjectVectorI13CStreamBinderE,comdat
	.weak	_ZTS13CObjectVectorI13CStreamBinderE
_ZTS13CObjectVectorI13CStreamBinderE:
	.asciz	"13CObjectVectorI13CStreamBinderE"
	.size	_ZTS13CObjectVectorI13CStreamBinderE, 33

	.type	_ZTI13CRecordVectorIPvE,@object # @_ZTI13CRecordVectorIPvE
	.section	.data.rel.ro._ZTI13CRecordVectorIPvE,"awG",@progbits,_ZTI13CRecordVectorIPvE,comdat
	.weak	_ZTI13CRecordVectorIPvE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPvE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPvE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPvE, 24

	.type	_ZTS13CRecordVectorIPvE,@object # @_ZTS13CRecordVectorIPvE
	.section	.rodata._ZTS13CRecordVectorIPvE,"aG",@progbits,_ZTS13CRecordVectorIPvE,comdat
	.weak	_ZTS13CRecordVectorIPvE
_ZTS13CRecordVectorIPvE:
	.asciz	"13CRecordVectorIPvE"
	.size	_ZTS13CRecordVectorIPvE, 20

	.type	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.data.rel.ro._ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,"awG",@progbits,_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.p2align	3, 0x0
_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE:
	.dword	0
	.dword	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.dword	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.size	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, 24

	.type	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.data.rel.ro._ZTIN8NWindows16NSynchronization14CBaseEventWFMOE,"awG",@progbits,_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.p2align	3, 0x0
_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
	.dword	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.size	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE, 24

	.type	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.rodata._ZTSN8NWindows16NSynchronization14CBaseEventWFMOE,"aG",@progbits,_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE:
	.asciz	"N8NWindows16NSynchronization14CBaseEventWFMOE"
	.size	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE, 46

	.type	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE,@object # @_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.section	.data.rel.ro._ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE,"awG",@progbits,_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE,comdat
	.weak	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.p2align	3, 0x0
_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.size	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE, 16

	.type	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE,@object # @_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.section	.rodata._ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE,"aG",@progbits,_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE,comdat
	.weak	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE:
	.asciz	"N8NWindows16NSynchronization15CBaseHandleWFMOE"
	.size	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE, 47

	.type	_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE,@object # @_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE
	.section	.data.rel.ro._ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE,"awG",@progbits,_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE,comdat
	.weak	_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.dword	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
	.dword	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
	.dword	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
	.size	_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE, 40

	.type	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE,@object # @_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.section	.data.rel.ro._ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE,"awG",@progbits,_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE,comdat
	.weak	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE, 24

	.type	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE,@object # @_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
	.section	.rodata._ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE,"aG",@progbits,_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE,comdat
	.weak	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE:
	.asciz	"13CObjectVectorIN11NCoderMixer7CCoder2EE"
	.size	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE, 41

	.type	_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,@object # @_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.section	.data.rel.ro._ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,"awG",@progbits,_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,comdat
	.weak	_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.dword	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
	.size	_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, 40

	.type	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,@object # @_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.section	.data.rel.ro._ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,"awG",@progbits,_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,comdat
	.weak	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, 24

	.type	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,@object # @_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.section	.rodata._ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,"aG",@progbits,_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,comdat
	.weak	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE:
	.asciz	"13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE"
	.size	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, 51

	.type	_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE,@object # @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE,@object # @_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE,@object # @_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE:
	.asciz	"13CObjectVectorIN8NArchive3N7z11CMethodFullEE"
	.size	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE, 46

	.type	_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE,@object # @_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN8NArchive3N7z5CBindEE,"awG",@progbits,_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE,comdat
	.weak	_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE, 40

	.type	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE,@object # @_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN8NArchive3N7z5CBindEE,"awG",@progbits,_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE,comdat
	.weak	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE, 24

	.type	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE,@object # @_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
	.section	.rodata._ZTS13CRecordVectorIN8NArchive3N7z5CBindEE,"aG",@progbits,_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE,comdat
	.weak	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE:
	.asciz	"13CRecordVectorIN8NArchive3N7z5CBindEE"
	.size	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE, 39

	.type	_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,@object # @_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,"awG",@progbits,_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,comdat
	.weak	_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, 40

	.type	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,@object # @_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,"awG",@progbits,_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,comdat
	.weak	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, 24

	.type	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,@object # @_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.section	.rodata._ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,"aG",@progbits,_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,comdat
	.weak	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE:
	.asciz	"13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE"
	.size	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, 52

	.type	_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE,@object # @_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE,"awG",@progbits,_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE,comdat
	.weak	_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE, 40

	.type	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE,@object # @_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE,"awG",@progbits,_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE,comdat
	.weak	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE, 24

	.type	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE,@object # @_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
	.section	.rodata._ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE,"aG",@progbits,_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE,comdat
	.weak	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE:
	.asciz	"13CRecordVectorIN11NCoderMixer9CBindPairEE"
	.size	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE, 43

	.type	_ZTV13CRecordVectorIjE,@object  # @_ZTV13CRecordVectorIjE
	.section	.data.rel.ro._ZTV13CRecordVectorIjE,"awG",@progbits,_ZTV13CRecordVectorIjE,comdat
	.weak	_ZTV13CRecordVectorIjE
	.p2align	3, 0x0
_ZTV13CRecordVectorIjE:
	.dword	0
	.dword	_ZTI13CRecordVectorIjE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIjED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIjE, 40

	.type	_ZTI13CRecordVectorIjE,@object  # @_ZTI13CRecordVectorIjE
	.section	.data.rel.ro._ZTI13CRecordVectorIjE,"awG",@progbits,_ZTI13CRecordVectorIjE,comdat
	.weak	_ZTI13CRecordVectorIjE
	.p2align	3, 0x0
_ZTI13CRecordVectorIjE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIjE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIjE, 24

	.type	_ZTS13CRecordVectorIjE,@object  # @_ZTS13CRecordVectorIjE
	.section	.rodata._ZTS13CRecordVectorIjE,"aG",@progbits,_ZTS13CRecordVectorIjE,comdat
	.weak	_ZTS13CRecordVectorIjE
_ZTS13CRecordVectorIjE:
	.asciz	"13CRecordVectorIjE"
	.size	_ZTS13CRecordVectorIjE, 19

	.type	_ZTV13CObjectVectorI5CPropE,@object # @_ZTV13CObjectVectorI5CPropE
	.section	.data.rel.ro._ZTV13CObjectVectorI5CPropE,"awG",@progbits,_ZTV13CObjectVectorI5CPropE,comdat
	.weak	_ZTV13CObjectVectorI5CPropE
	.p2align	3, 0x0
_ZTV13CObjectVectorI5CPropE:
	.dword	0
	.dword	_ZTI13CObjectVectorI5CPropE
	.dword	_ZN13CObjectVectorI5CPropED2Ev
	.dword	_ZN13CObjectVectorI5CPropED0Ev
	.dword	_ZN13CObjectVectorI5CPropE6DeleteEii
	.size	_ZTV13CObjectVectorI5CPropE, 40

	.type	_ZTI13CObjectVectorI5CPropE,@object # @_ZTI13CObjectVectorI5CPropE
	.section	.data.rel.ro._ZTI13CObjectVectorI5CPropE,"awG",@progbits,_ZTI13CObjectVectorI5CPropE,comdat
	.weak	_ZTI13CObjectVectorI5CPropE
	.p2align	3, 0x0
_ZTI13CObjectVectorI5CPropE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI5CPropE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI5CPropE, 24

	.type	_ZTS13CObjectVectorI5CPropE,@object # @_ZTS13CObjectVectorI5CPropE
	.section	.rodata._ZTS13CObjectVectorI5CPropE,"aG",@progbits,_ZTS13CObjectVectorI5CPropE,comdat
	.weak	_ZTS13CObjectVectorI5CPropE
_ZTS13CObjectVectorI5CPropE:
	.asciz	"13CObjectVectorI5CPropE"
	.size	_ZTS13CObjectVectorI5CPropE, 24

	.type	_ZTV7CBufferIhE,@object         # @_ZTV7CBufferIhE
	.section	.data.rel.ro._ZTV7CBufferIhE,"awG",@progbits,_ZTV7CBufferIhE,comdat
	.weak	_ZTV7CBufferIhE
	.p2align	3, 0x0
_ZTV7CBufferIhE:
	.dword	0
	.dword	_ZTI7CBufferIhE
	.dword	_ZN7CBufferIhED2Ev
	.dword	_ZN7CBufferIhED0Ev
	.size	_ZTV7CBufferIhE, 32

	.type	_ZTI7CBufferIhE,@object         # @_ZTI7CBufferIhE
	.section	.data.rel.ro._ZTI7CBufferIhE,"awG",@progbits,_ZTI7CBufferIhE,comdat
	.weak	_ZTI7CBufferIhE
	.p2align	3, 0x0
_ZTI7CBufferIhE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS7CBufferIhE
	.size	_ZTI7CBufferIhE, 16

	.type	_ZTS7CBufferIhE,@object         # @_ZTS7CBufferIhE
	.section	.rodata._ZTS7CBufferIhE,"aG",@progbits,_ZTS7CBufferIhE,comdat
	.weak	_ZTS7CBufferIhE
_ZTS7CBufferIhE:
	.asciz	"7CBufferIhE"
	.size	_ZTS7CBufferIhE, 12

	.type	_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,@object # @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.dword	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,@object # @_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,@object # @_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE:
	.asciz	"13CObjectVectorIN8NArchive3N7z10CCoderInfoEE"
	.size	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, 45

	.type	_ZTV13CRecordVectorIyE,@object  # @_ZTV13CRecordVectorIyE
	.section	.data.rel.ro._ZTV13CRecordVectorIyE,"awG",@progbits,_ZTV13CRecordVectorIyE,comdat
	.weak	_ZTV13CRecordVectorIyE
	.p2align	3, 0x0
_ZTV13CRecordVectorIyE:
	.dword	0
	.dword	_ZTI13CRecordVectorIyE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIyED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIyE, 40

	.type	_ZTI13CRecordVectorIyE,@object  # @_ZTI13CRecordVectorIyE
	.section	.data.rel.ro._ZTI13CRecordVectorIyE,"awG",@progbits,_ZTI13CRecordVectorIyE,comdat
	.weak	_ZTI13CRecordVectorIyE
	.p2align	3, 0x0
_ZTI13CRecordVectorIyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIyE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIyE, 24

	.type	_ZTS13CRecordVectorIyE,@object  # @_ZTS13CRecordVectorIyE
	.section	.rodata._ZTS13CRecordVectorIyE,"aG",@progbits,_ZTS13CRecordVectorIyE,comdat
	.weak	_ZTS13CRecordVectorIyE
_ZTS13CRecordVectorIyE:
	.asciz	"13CRecordVectorIyE"
	.size	_ZTS13CRecordVectorIyE, 19

	.type	_ZTV13CObjectVectorI16CInOutTempBufferE,@object # @_ZTV13CObjectVectorI16CInOutTempBufferE
	.section	.data.rel.ro._ZTV13CObjectVectorI16CInOutTempBufferE,"awG",@progbits,_ZTV13CObjectVectorI16CInOutTempBufferE,comdat
	.weak	_ZTV13CObjectVectorI16CInOutTempBufferE
	.p2align	3, 0x0
_ZTV13CObjectVectorI16CInOutTempBufferE:
	.dword	0
	.dword	_ZTI13CObjectVectorI16CInOutTempBufferE
	.dword	_ZN13CObjectVectorI16CInOutTempBufferED2Ev
	.dword	_ZN13CObjectVectorI16CInOutTempBufferED0Ev
	.dword	_ZN13CObjectVectorI16CInOutTempBufferE6DeleteEii
	.size	_ZTV13CObjectVectorI16CInOutTempBufferE, 40

	.type	_ZTI13CObjectVectorI16CInOutTempBufferE,@object # @_ZTI13CObjectVectorI16CInOutTempBufferE
	.section	.data.rel.ro._ZTI13CObjectVectorI16CInOutTempBufferE,"awG",@progbits,_ZTI13CObjectVectorI16CInOutTempBufferE,comdat
	.weak	_ZTI13CObjectVectorI16CInOutTempBufferE
	.p2align	3, 0x0
_ZTI13CObjectVectorI16CInOutTempBufferE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI16CInOutTempBufferE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI16CInOutTempBufferE, 24

	.type	_ZTS13CObjectVectorI16CInOutTempBufferE,@object # @_ZTS13CObjectVectorI16CInOutTempBufferE
	.section	.rodata._ZTS13CObjectVectorI16CInOutTempBufferE,"aG",@progbits,_ZTS13CObjectVectorI16CInOutTempBufferE,comdat
	.weak	_ZTS13CObjectVectorI16CInOutTempBufferE
_ZTS13CObjectVectorI16CInOutTempBufferE:
	.asciz	"13CObjectVectorI16CInOutTempBufferE"
	.size	_ZTS13CObjectVectorI16CInOutTempBufferE, 36

	.type	_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE,@object # @_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE
	.section	.data.rel.ro._ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE,"awG",@progbits,_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE,comdat
	.weak	_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE
	.p2align	3, 0x0
_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE:
	.dword	0
	.dword	_ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE
	.dword	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev
	.dword	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED0Ev
	.dword	_ZN13CObjectVectorIP27CSequentialOutTempBufferImpE6DeleteEii
	.size	_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE, 40

	.type	_ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE,@object # @_ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE
	.section	.data.rel.ro._ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE,"awG",@progbits,_ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE,comdat
	.weak	_ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE
	.p2align	3, 0x0
_ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE, 24

	.type	_ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE,@object # @_ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE
	.section	.rodata._ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE,"aG",@progbits,_ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE,comdat
	.weak	_ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE
_ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE:
	.asciz	"13CObjectVectorIP27CSequentialOutTempBufferImpE"
	.size	_ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE, 48

	.type	_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,@object # @_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.section	.data.rel.ro._ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,"awG",@progbits,_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,comdat
	.weak	_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.dword	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
	.size	_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, 40

	.type	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,@object # @_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.section	.data.rel.ro._ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,"awG",@progbits,_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,comdat
	.weak	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, 24

	.type	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,@object # @_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.section	.rodata._ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,"aG",@progbits,_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,comdat
	.weak	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE:
	.asciz	"13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE"
	.size	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, 52

	.type	_ZTVN8NWindows5NFile3NIO8COutFileE,@object # @_ZTVN8NWindows5NFile3NIO8COutFileE
	.section	.data.rel.ro._ZTVN8NWindows5NFile3NIO8COutFileE,"awG",@progbits,_ZTVN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTVN8NWindows5NFile3NIO8COutFileE
	.p2align	3, 0x0
_ZTVN8NWindows5NFile3NIO8COutFileE:
	.dword	0
	.dword	_ZTIN8NWindows5NFile3NIO8COutFileE
	.dword	_ZN8NWindows5NFile3NIO9CFileBaseD2Ev
	.dword	_ZN8NWindows5NFile3NIO8COutFileD0Ev
	.dword	_ZN8NWindows5NFile3NIO9CFileBase5CloseEv
	.size	_ZTVN8NWindows5NFile3NIO8COutFileE, 40

	.type	_ZTIN8NWindows5NFile3NIO8COutFileE,@object # @_ZTIN8NWindows5NFile3NIO8COutFileE
	.section	.data.rel.ro._ZTIN8NWindows5NFile3NIO8COutFileE,"awG",@progbits,_ZTIN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTIN8NWindows5NFile3NIO8COutFileE
	.p2align	3, 0x0
_ZTIN8NWindows5NFile3NIO8COutFileE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows5NFile3NIO8COutFileE
	.dword	_ZTIN8NWindows5NFile3NIO9CFileBaseE
	.size	_ZTIN8NWindows5NFile3NIO8COutFileE, 24

	.type	_ZTSN8NWindows5NFile3NIO8COutFileE,@object # @_ZTSN8NWindows5NFile3NIO8COutFileE
	.section	.rodata._ZTSN8NWindows5NFile3NIO8COutFileE,"aG",@progbits,_ZTSN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTSN8NWindows5NFile3NIO8COutFileE
_ZTSN8NWindows5NFile3NIO8COutFileE:
	.asciz	"N8NWindows5NFile3NIO8COutFileE"
	.size	_ZTSN8NWindows5NFile3NIO8COutFileE, 31

	.type	_ZTV13CRecordVectorIPKyE,@object # @_ZTV13CRecordVectorIPKyE
	.section	.data.rel.ro._ZTV13CRecordVectorIPKyE,"awG",@progbits,_ZTV13CRecordVectorIPKyE,comdat
	.weak	_ZTV13CRecordVectorIPKyE
	.p2align	3, 0x0
_ZTV13CRecordVectorIPKyE:
	.dword	0
	.dword	_ZTI13CRecordVectorIPKyE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIPKyED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIPKyE, 40

	.type	_ZTI13CRecordVectorIPKyE,@object # @_ZTI13CRecordVectorIPKyE
	.section	.data.rel.ro._ZTI13CRecordVectorIPKyE,"awG",@progbits,_ZTI13CRecordVectorIPKyE,comdat
	.weak	_ZTI13CRecordVectorIPKyE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPKyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPKyE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPKyE, 24

	.type	_ZTS13CRecordVectorIPKyE,@object # @_ZTS13CRecordVectorIPKyE
	.section	.rodata._ZTS13CRecordVectorIPKyE,"aG",@progbits,_ZTS13CRecordVectorIPKyE,comdat
	.weak	_ZTS13CRecordVectorIPKyE
_ZTS13CRecordVectorIPKyE:
	.asciz	"13CRecordVectorIPKyE"
	.size	_ZTS13CRecordVectorIPKyE, 21

	.type	_ZTV13CRecordVectorIP19ISequentialInStreamE,@object # @_ZTV13CRecordVectorIP19ISequentialInStreamE
	.section	.data.rel.ro._ZTV13CRecordVectorIP19ISequentialInStreamE,"awG",@progbits,_ZTV13CRecordVectorIP19ISequentialInStreamE,comdat
	.weak	_ZTV13CRecordVectorIP19ISequentialInStreamE
	.p2align	3, 0x0
_ZTV13CRecordVectorIP19ISequentialInStreamE:
	.dword	0
	.dword	_ZTI13CRecordVectorIP19ISequentialInStreamE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIP19ISequentialInStreamE, 40

	.type	_ZTI13CRecordVectorIP19ISequentialInStreamE,@object # @_ZTI13CRecordVectorIP19ISequentialInStreamE
	.section	.data.rel.ro._ZTI13CRecordVectorIP19ISequentialInStreamE,"awG",@progbits,_ZTI13CRecordVectorIP19ISequentialInStreamE,comdat
	.weak	_ZTI13CRecordVectorIP19ISequentialInStreamE
	.p2align	3, 0x0
_ZTI13CRecordVectorIP19ISequentialInStreamE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIP19ISequentialInStreamE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIP19ISequentialInStreamE, 24

	.type	_ZTS13CRecordVectorIP19ISequentialInStreamE,@object # @_ZTS13CRecordVectorIP19ISequentialInStreamE
	.section	.rodata._ZTS13CRecordVectorIP19ISequentialInStreamE,"aG",@progbits,_ZTS13CRecordVectorIP19ISequentialInStreamE,comdat
	.weak	_ZTS13CRecordVectorIP19ISequentialInStreamE
_ZTS13CRecordVectorIP19ISequentialInStreamE:
	.asciz	"13CRecordVectorIP19ISequentialInStreamE"
	.size	_ZTS13CRecordVectorIP19ISequentialInStreamE, 40

	.type	_ZTV13CRecordVectorIP20ISequentialOutStreamE,@object # @_ZTV13CRecordVectorIP20ISequentialOutStreamE
	.section	.data.rel.ro._ZTV13CRecordVectorIP20ISequentialOutStreamE,"awG",@progbits,_ZTV13CRecordVectorIP20ISequentialOutStreamE,comdat
	.weak	_ZTV13CRecordVectorIP20ISequentialOutStreamE
	.p2align	3, 0x0
_ZTV13CRecordVectorIP20ISequentialOutStreamE:
	.dword	0
	.dword	_ZTI13CRecordVectorIP20ISequentialOutStreamE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIP20ISequentialOutStreamED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIP20ISequentialOutStreamE, 40

	.type	_ZTI13CRecordVectorIP20ISequentialOutStreamE,@object # @_ZTI13CRecordVectorIP20ISequentialOutStreamE
	.section	.data.rel.ro._ZTI13CRecordVectorIP20ISequentialOutStreamE,"awG",@progbits,_ZTI13CRecordVectorIP20ISequentialOutStreamE,comdat
	.weak	_ZTI13CRecordVectorIP20ISequentialOutStreamE
	.p2align	3, 0x0
_ZTI13CRecordVectorIP20ISequentialOutStreamE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIP20ISequentialOutStreamE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIP20ISequentialOutStreamE, 24

	.type	_ZTS13CRecordVectorIP20ISequentialOutStreamE,@object # @_ZTS13CRecordVectorIP20ISequentialOutStreamE
	.section	.rodata._ZTS13CRecordVectorIP20ISequentialOutStreamE,"aG",@progbits,_ZTS13CRecordVectorIP20ISequentialOutStreamE,comdat
	.weak	_ZTS13CRecordVectorIP20ISequentialOutStreamE
_ZTS13CRecordVectorIP20ISequentialOutStreamE:
	.asciz	"13CRecordVectorIP20ISequentialOutStreamE"
	.size	_ZTS13CRecordVectorIP20ISequentialOutStreamE, 41

	.globl	_ZN8NArchive3N7z8CEncoderC1ERKNS0_22CCompressionMethodModeE
	.type	_ZN8NArchive3N7z8CEncoderC1ERKNS0_22CCompressionMethodModeE,@function
_ZN8NArchive3N7z8CEncoderC1ERKNS0_22CCompressionMethodModeE = _ZN8NArchive3N7z8CEncoderC2ERKNS0_22CCompressionMethodModeE
	.globl	_ZN8NArchive3N7z8CEncoderD1Ev
	.type	_ZN8NArchive3N7z8CEncoderD1Ev,@function
_ZN8NArchive3N7z8CEncoderD1Ev = _ZN8NArchive3N7z8CEncoderD2Ev
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
	.addrsig_sym IID_ICompressSetCoderMt
	.addrsig_sym IID_ICryptoSetPassword
	.addrsig_sym IID_ICryptoResetInitVector
	.addrsig_sym IID_ICompressWriteCoderProperties
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTI13CObjectVectorI13CStreamBinderE
	.addrsig_sym _ZTS13CObjectVectorI13CStreamBinderE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
	.addrsig_sym _ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.addrsig_sym _ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
	.addrsig_sym _ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.addrsig_sym _ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.addrsig_sym IID_ICompressGetSubStreamSize
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
	.addrsig_sym _ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.addrsig_sym _ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.addrsig_sym _ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.addrsig_sym _ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CObjectVectorI5CPropE
	.addrsig_sym _ZTS13CObjectVectorI5CPropE
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTI13CObjectVectorI16CInOutTempBufferE
	.addrsig_sym _ZTS13CObjectVectorI16CInOutTempBufferE
	.addrsig_sym _ZTI13CObjectVectorIP27CSequentialOutTempBufferImpE
	.addrsig_sym _ZTS13CObjectVectorIP27CSequentialOutTempBufferImpE
	.addrsig_sym _ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.addrsig_sym _ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO8COutFileE
	.addrsig_sym _ZTSN8NWindows5NFile3NIO8COutFileE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO9CFileBaseE
	.addrsig_sym _ZTI13CRecordVectorIPKyE
	.addrsig_sym _ZTS13CRecordVectorIPKyE
	.addrsig_sym _ZTI13CRecordVectorIP19ISequentialInStreamE
	.addrsig_sym _ZTS13CRecordVectorIP19ISequentialInStreamE
	.addrsig_sym _ZTI13CRecordVectorIP20ISequentialOutStreamE
	.addrsig_sym _ZTS13CRecordVectorIP20ISequentialOutStreamE
