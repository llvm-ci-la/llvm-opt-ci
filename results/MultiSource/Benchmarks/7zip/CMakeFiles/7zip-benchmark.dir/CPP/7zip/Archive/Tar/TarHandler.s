	.file	"TarHandler.cpp"
	.text
	.globl	_ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj # -- Begin function _ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj,@function
_ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj: # @_ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj
# %bb.0:
	ori	$a0, $zero, 9
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	_ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj, .Lfunc_end0-_ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt # -- Begin function _ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt,@function
_ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt: # @_ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt
# %bb.0:
	ori	$a0, $zero, 8
	bgeu	$a0, $a1, .LBB1_2
# %bb.1:
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ret
.LBB1_2:
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive4NTarL6kPropsE)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NArchive4NTarL6kPropsE)
	alsl.d	$a0, $a1, $a0, 4
	ld.w	$a1, $a0, 8
	ld.h	$a5, $a0, 12
	move	$a0, $zero
	st.w	$a1, $a3, 0
	st.h	$a5, $a4, 0
	st.d	$zero, $a2, 0
	ret
.Lfunc_end1:
	.size	_ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt, .Lfunc_end1-_ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj # -- Begin function _ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj,@function
_ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj: # @_ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj
# %bb.0:
	ori	$a0, $zero, 2
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	_ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj, .Lfunc_end2-_ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt # -- Begin function _ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt,@function
_ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt: # @_ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt
# %bb.0:
	ori	$a0, $zero, 1
	bgeu	$a0, $a1, .LBB3_2
# %bb.1:
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ret
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive4NTarL9kArcPropsE)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NArchive4NTarL9kArcPropsE)
	alsl.d	$a0, $a1, $a0, 4
	ld.w	$a1, $a0, 8
	move	$a0, $zero
	st.w	$a1, $a3, 0
	ori	$a1, $zero, 21
	st.h	$a1, $a4, 0
	st.d	$zero, $a2, 0
	ret
.Lfunc_end3:
	.size	_ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt, .Lfunc_end3-_ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT # -- Begin function _ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT,@function
_ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT: # @_ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a2
	ori	$a2, $zero, 55
	st.w	$zero, $sp, 0
	beq	$a1, $a2, .LBB4_6
# %bb.1:
	ori	$a2, $zero, 45
	beq	$a1, $a2, .LBB4_4
# %bb.2:
	ori	$a2, $zero, 44
	bne	$a1, $a2, .LBB4_8
# %bb.3:
	ld.bu	$a2, $a0, 240
	ori	$a1, $zero, 224
	bnez	$a2, .LBB4_5
	b	.LBB4_8
.LBB4_4:
	ld.bu	$a2, $a0, 240
	ori	$a1, $zero, 232
	beqz	$a2, .LBB4_8
.LBB4_5:                                # %.invoke
	ldx.d	$a1, $a0, $a1
.Ltmp2:                                 # EH_LABEL
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEy)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
	b	.LBB4_8
.LBB4_6:
	ld.w	$a1, $a0, 256
	beqz	$a1, .LBB4_8
# %bb.7:
	ld.d	$a1, $a0, 248
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKc)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB4_8:
.Ltmp4:                                 # EH_LABEL
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.9:
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.10:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit4
	move	$a0, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_11:
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_12:
.Ltmp6:                                 # EH_LABEL
	move	$fp, $a0
.Ltmp7:                                 # EH_LABEL
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.13:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_14:
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT, .Lfunc_end4-_ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp11                 #   Call between .Ltmp11 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp8             #   Call between .Ltmp8 and .Lfunc_end4
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
	.text
	.globl	_ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE # -- Begin function _ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE,@function
_ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE: # @_ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE
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
	move	$fp, $a0
	ld.d	$a4, $a0, 224
	move	$s0, $a3
	move	$a0, $a1
	st.d	$a4, $a3, 112
	addi.d	$a3, $fp, 248
	move	$a1, $a2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_2
# %bb.1:
	ld.wu	$a1, $s0, 120
	vld	$vr0, $fp, 224
	vreplgr2vr.d	$vr1, $a1
	vadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 224
.LBB5_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE, .Lfunc_end5-_ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback
.LCPI6_0:
	.byte	85                              # 0x55
	.byte	110                             # 0x6e
	.byte	101                             # 0x65
	.byte	120                             # 0x78
	.byte	112                             # 0x70
	.byte	101                             # 0x65
	.byte	99                              # 0x63
	.byte	116                             # 0x74
	.byte	101                             # 0x65
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	101                             # 0x65
	.byte	110                             # 0x6e
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	111                             # 0x6f
	.text
	.globl	_ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback,@function
_ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback: # @_ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
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
	move	$s0, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a4, $a1, 48
	move	$fp, $a2
	move	$s1, $a0
	st.d	$zero, $sp, 272
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 272
	move	$a0, $s0
	move	$a1, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB6_2
# %bb.1:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 48
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	beqz	$a0, .LBB6_4
.LBB6_2:
	move	$s2, $a0
.LBB6_3:                                # %.loopexit
	addi.w	$a0, $s2, 0
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB6_4:
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	move	$s8, $zero
	ori	$a0, $zero, 1
	st.b	$a0, $s1, 240
	addi.d	$s4, $sp, 224
	addi.d	$s2, $s1, 224
	addi.d	$s3, $s1, 248
	addi.d	$a0, $s1, 40
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$fp, $zero, 4
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI6_0)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	lu12i.w	$a0, 468498
	ori	$a0, $a0, 102
	lu32i.d	$a0, -432029
	lu52i.d	$a0, $a0, 1894
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -251659
	ori	$a0, $a0, 3113
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 20971
	ori	$a0, $a0, 2128
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 10485
	ori	$a0, $a0, 3112
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_5:                                # %_ZN8NArchive4NTar5CItemD2Ev.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$s8, $s5
	bnez	$s6, .LBB6_59
.LBB6_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_42 Depth 2
                                        #     Child Loop BB6_36 Depth 2
                                        #     Child Loop BB6_46 Depth 2
	st.d	$zero, $sp, 152
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144
	st.b	$zero, $a0, 0
	st.w	$fp, $sp, 156
	addi.d	$a0, $sp, 192
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
.Ltmp13:                                # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=1
	move	$s5, $a0
	st.d	$a0, $sp, 192
	st.b	$zero, $a0, 0
	st.w	$fp, $sp, 204
	addi.d	$a0, $sp, 208
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
.Ltmp16:                                # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB6_6 Depth=1
	move	$s6, $a0
	st.d	$a0, $sp, 208
	st.b	$zero, $a0, 0
	st.w	$fp, $sp, 220
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s4, 0
.Ltmp19:                                # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.9:                                # %_ZN8NArchive4NTar5CItemC2Ev.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a1, $s2, 0
	st.d	$a0, $sp, 224
	st.b	$zero, $a0, 0
	st.w	$fp, $sp, 236
	st.d	$a1, $sp, 256
.Ltmp22:                                # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 144
	move	$a0, $s0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.10:                               # %.noexc
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$s5, $a0
	beqz	$a0, .LBB6_12
.LBB6_11:                               #   in Loop: Header=BB6_6 Depth=1
	ori	$s6, $zero, 1
	b	.LBB6_51
	.p2align	4, , 16
.LBB6_12:                               #   in Loop: Header=BB6_6 Depth=1
	ld.wu	$a0, $sp, 264
	vld	$vr0, $s2, 0
	ld.bu	$a1, $sp, 104
	vreplgr2vr.d	$vr1, $a0
	vadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $s2, 0
	ori	$s6, $zero, 2
	beqz	$a1, .LBB6_50
# %bb.13:                               #   in Loop: Header=BB6_6 Depth=1
.Ltmp25:                                # EH_LABEL
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.14:                               # %.noexc89
                                        #   in Loop: Header=BB6_6 Depth=1
.Ltmp27:                                # EH_LABEL
	move	$s5, $a0
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB6_6 Depth=1
	addi.d	$a1, $sp, 256
	ld.w	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	st.w	$a0, $s5, 120
	st.d	$a1, $s5, 112
.Ltmp30:                                # EH_LABEL
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.16:                               #   in Loop: Header=BB6_6 Depth=1
	ld.w	$a0, $s1, 52
	ld.d	$a1, $s1, 56
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 52
	ld.d	$a0, $s0, 0
	ld.d	$a1, $sp, 160
	ld.d	$a4, $a0, 48
	addi.d	$a1, $a1, 511
	bstrins.d	$a1, $zero, 8, 0
.Ltmp32:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $s2
	jirl	$ra, $a4, 0
.Ltmp33:                                # EH_LABEL
# %bb.17:                               #   in Loop: Header=BB6_6 Depth=1
	move	$s5, $a0
	bnez	$a0, .LBB6_11
# %bb.18:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 272
	bgeu	$a1, $a0, .LBB6_21
# %bb.19:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $s1, 248
	st.w	$zero, $s1, 256
	st.b	$zero, $a0, 0
	ld.w	$s7, $s1, 260
	ori	$a0, $zero, 26
	bne	$s7, $a0, .LBB6_28
# %bb.20:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$s5, $s3, 0
	b	.LBB6_49
.LBB6_21:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_27
# %bb.22:                               #   in Loop: Header=BB6_6 Depth=1
	ld.w	$a2, $s1, 52
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB6_26
# %bb.23:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp35:                                # EH_LABEL
	addi.d	$a2, $sp, 272
	move	$a1, $zero
	jirl	$ra, $a3, 0
.Ltmp36:                                # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB6_6 Depth=1
	move	$s5, $a0
	ori	$s6, $zero, 1
	bnez	$a0, .LBB6_51
# %bb.25:                               # %._crit_edge
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.w	$a2, $s1, 52
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB6_26:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	rotri.w	$a1, $a1, 2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB6_38
.LBB6_27:                               #   in Loop: Header=BB6_6 Depth=1
	move	$s6, $zero
	b	.LBB6_50
.LBB6_28:                               #   in Loop: Header=BB6_6 Depth=1
.Ltmp41:                                # EH_LABEL
	ori	$a0, $zero, 26
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.29:                               # %.noexc91
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$s5, $a0
	ld.w	$a1, $s1, 256
	blez	$s7, .LBB6_48
# %bb.30:                               # %.preheader.i.i
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $s3, 0
	blez	$a1, .LBB6_40
# %bb.31:                               # %iter.check
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB6_45
# %bb.32:                               # %iter.check
                                        #   in Loop: Header=BB6_6 Depth=1
	sub.d	$a3, $s5, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB6_45
# %bb.33:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_6 Depth=1
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB6_41
# %bb.34:                               #   in Loop: Header=BB6_6 Depth=1
	move	$a2, $zero
.LBB6_35:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s5, $a5
	add.d	$a5, $a0, $a5
.LBB6_36:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB6_36
# %bb.37:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_6 Depth=1
	bne	$a2, $a1, .LBB6_45
	b	.LBB6_47
.LBB6_38:                               #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 48
	st.d	$a2, $sp, 120
.Ltmp38:                                # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a2, $s2
	jirl	$ra, $a3, 0
.Ltmp39:                                # EH_LABEL
# %bb.39:                               #   in Loop: Header=BB6_6 Depth=1
	sltu	$s6, $zero, $a0
	masknez	$a1, $s8, $s6
	maskeqz	$a0, $a0, $s6
	or	$s5, $a0, $a1
	b	.LBB6_51
.LBB6_40:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB6_6 Depth=1
	bnez	$a0, .LBB6_47
	b	.LBB6_48
.LBB6_41:                               # %vector.ph
                                        #   in Loop: Header=BB6_6 Depth=1
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s5, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
.LBB6_42:                               # %vector.body
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB6_6 Depth=1
	beq	$a2, $a1, .LBB6_47
# %bb.44:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_6 Depth=1
	andi	$a3, $a1, 16
	bnez	$a3, .LBB6_35
.LBB6_45:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s5, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB6_46:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB6_46
.LBB6_47:                               # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB6_6 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 256
.LBB6_48:                               #   in Loop: Header=BB6_6 Depth=1
	st.d	$s5, $s1, 248
	stx.b	$zero, $s5, $a1
	ori	$a0, $zero, 26
	st.w	$a0, $s1, 260
.LBB6_49:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB6_6 Depth=1
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s5, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s5, 16
	ori	$a0, $zero, 101
	st.h	$a0, $s5, 24
	ori	$a0, $zero, 25
	st.w	$a0, $s1, 256
	.p2align	4, , 16
.LBB6_50:                               #   in Loop: Header=BB6_6 Depth=1
	move	$s5, $s8
.LBB6_51:                               # %_ZN8NArchive4NTar8CHandler9ReadItem2EP19ISequentialInStreamRbRNS0_7CItemExE.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB6_53
# %bb.52:                               #   in Loop: Header=BB6_6 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_53:                               # %_ZN11CStringBaseIcED2Ev.exit.i
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB6_55
# %bb.54:                               #   in Loop: Header=BB6_6 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_55:                               # %_ZN11CStringBaseIcED2Ev.exit1.i
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 192
	beqz	$a0, .LBB6_57
# %bb.56:                               #   in Loop: Header=BB6_6 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %_ZN11CStringBaseIcED2Ev.exit2.i
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB6_5
# %bb.58:                               #   in Loop: Header=BB6_6 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_5
.LBB6_59:                               # %_ZN8NArchive4NTar5CItemD2Ev.exit
	ori	$a0, $zero, 2
	bne	$s6, $a0, .LBB6_62
# %bb.60:
	ld.w	$a0, $s1, 52
	beqz	$a0, .LBB6_63
.LBB6_61:
	move	$s2, $zero
	b	.LBB6_3
.LBB6_62:                               # %.loopexit.loopexit
	move	$s2, $s5
	b	.LBB6_3
.LBB6_63:
	st.d	$zero, $sp, 136
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_82
# %bb.64:
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp44:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_IArchiveOpenVolumeCallback)
	ld.d	$a1, $a1, %got_pc_lo12(IID_IArchiveOpenVolumeCallback)
	addi.d	$a2, $sp, 136
	jirl	$ra, $a3, 0
.Ltmp45:                                # EH_LABEL
# %bb.65:
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB6_82
# %bb.66:
	st.w	$zero, $sp, 144
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp47:                                # EH_LABEL
	ori	$a1, $zero, 4
	addi.d	$a2, $sp, 144
	jirl	$ra, $a3, 0
.Ltmp48:                                # EH_LABEL
# %bb.67:
	move	$fp, $zero
	ori	$s2, $zero, 1
	bnez	$a0, .LBB6_78
# %bb.68:
	ld.hu	$a0, $sp, 144
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB6_78
# %bb.69:
	ld.d	$a1, $sp, 152
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEC2EPKw)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.70:
	ld.w	$a0, $sp, 128
	slti	$a1, $a0, 4
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a3, $a1, $a2
	sub.w	$a2, $a0, $a3
.Ltmp53:                                # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.71:                               # %_ZNK11CStringBaseIwE5RightEi.exit
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.72:
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB6_74
# %bb.73:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_74:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $sp, 120
.Ltmp59:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp60:                                # EH_LABEL
# %bb.75:                               # %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
	ld.d	$a0, $sp, 120
	sltui	$fp, $a1, 1
	ori	$a1, $zero, 1
	masknez	$s0, $a1, $fp
	maskeqz	$s1, $s5, $fp
	beqz	$a0, .LBB6_77
# %bb.76:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_77:                               # %_ZN11CStringBaseIwED2Ev.exit94
	or	$s2, $s1, $s0
.LBB6_78:
.Ltmp68:                                # EH_LABEL
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.79:
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB6_81
# %bb.80:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp71:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp72:                                # EH_LABEL
.LBB6_81:                               # %_ZN9CMyComPtrI26IArchiveOpenVolumeCallbackED2Ev.exit
	bnez	$fp, .LBB6_61
	b	.LBB6_3
.LBB6_82:                               # %_ZN9CMyComPtrI26IArchiveOpenVolumeCallbackED2Ev.exit.thread
	ori	$s2, $zero, 1
	b	.LBB6_3
.LBB6_83:
.Ltmp61:                                # EH_LABEL
	b	.LBB6_87
.LBB6_84:
.Ltmp58:                                # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$fp, $a0
	beqz	$a1, .LBB6_88
# %bb.85:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_88
.LBB6_86:
.Ltmp55:                                # EH_LABEL
.LBB6_87:
	move	$fp, $a0
.LBB6_88:
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB6_95
# %bb.89:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_95
.LBB6_90:
.Ltmp52:                                # EH_LABEL
	b	.LBB6_94
.LBB6_91:
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_92:
.Ltmp70:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_93:
.Ltmp49:                                # EH_LABEL
.LBB6_94:
	move	$fp, $a0
.LBB6_95:
.Ltmp62:                                # EH_LABEL
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
	b	.LBB6_99
.LBB6_96:
.Ltmp40:                                # EH_LABEL
	b	.LBB6_107
.LBB6_97:
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_98:
.Ltmp46:                                # EH_LABEL
	move	$fp, $a0
.LBB6_99:
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB6_114
# %bb.100:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp65:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp66:                                # EH_LABEL
	b	.LBB6_114
.LBB6_101:
.Ltmp67:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_102:
.Ltmp37:                                # EH_LABEL
	b	.LBB6_107
.LBB6_103:
.Ltmp34:                                # EH_LABEL
	b	.LBB6_107
.LBB6_104:
.Ltmp29:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 128
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_105:
.Ltmp43:                                # EH_LABEL
	b	.LBB6_107
.LBB6_106:
.Ltmp24:                                # EH_LABEL
.LBB6_107:                              # %.body
	move	$fp, $a0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_108:                              # %.thread.i
.Ltmp18:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB6_110
.LBB6_109:
.Ltmp21:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 192
	beqz	$s5, .LBB6_112
.LBB6_110:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_112
.LBB6_111:
.Ltmp15:                                # EH_LABEL
	move	$fp, $a0
.LBB6_112:                              # %_ZN11CStringBaseIcED2Ev.exit8.i
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB6_114
# %bb.113:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_114:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback, .Lfunc_end6-_ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin1          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp44-.Ltmp39                #   Call between .Ltmp39 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin1          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin1          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp59-.Ltmp57                #   Call between .Ltmp57 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin1          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp68-.Ltmp60                #   Call between .Ltmp60 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin1          #     jumps to .Ltmp70
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin1          #     jumps to .Ltmp73
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp72-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp62-.Ltmp72                #   Call between .Ltmp72 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp65-.Ltmp63                #   Call between .Ltmp63 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin1          #     jumps to .Ltmp67
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Lfunc_end6-.Ltmp66            #   Call between .Ltmp66 and .Lfunc_end6
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
	beqz	$a0, .LBB7_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB7_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_4:                                # %_ZN11CStringBaseIcED2Ev.exit1
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB7_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_6:                                # %_ZN11CStringBaseIcED2Ev.exit2
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB7_8
# %bb.7:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB7_8:                                # %_ZN11CStringBaseIcED2Ev.exit3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	_ZN8NArchive4NTar5CItemD2Ev, .Lfunc_end7-_ZN8NArchive4NTar5CItemD2Ev
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEC2EPKw,"axG",@progbits,_ZN11CStringBaseIwEC2EPKw,comdat
	.weak	_ZN11CStringBaseIwEC2EPKw       # -- Begin function _ZN11CStringBaseIwEC2EPKw
	.p2align	5
	.type	_ZN11CStringBaseIwEC2EPKw,@function
_ZN11CStringBaseIwEC2EPKw:              # @_ZN11CStringBaseIwEC2EPKw
	.cfi_startproc
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
	move	$s0, $a1
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $s1, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
	.p2align	4, , 16
.LBB8_1:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB8_1
# %bb.2:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	st.w	$s1, $fp, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	_ZN11CStringBaseIwEC2EPKw, .Lfunc_end8-_ZN11CStringBaseIwEC2EPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEaSERKS0_,"axG",@progbits,_ZN11CStringBaseIwEaSERKS0_,comdat
	.weak	_ZN11CStringBaseIwEaSERKS0_     # -- Begin function _ZN11CStringBaseIwEaSERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIwEaSERKS0_,@function
_ZN11CStringBaseIwEaSERKS0_:            # @_ZN11CStringBaseIwEaSERKS0_
	.cfi_startproc
# %bb.0:
	beq	$a1, $a0, .LBB9_10
# %bb.1:
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
	st.w	$zero, $a0, 8
	ld.d	$s0, $a0, 0
	ld.w	$a2, $a1, 8
	ld.w	$s4, $a0, 12
	addi.w	$s1, $a2, 1
	st.w	$zero, $s0, 0
	bne	$s1, $s4, .LBB9_3
# %bb.2:
	move	$fp, $s0
	b	.LBB9_7
.LBB9_3:
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
	blez	$s4, .LBB9_5
# %bb.4:                                # %._crit_edge.thread.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$a1, $s3, 8
	b	.LBB9_6
.LBB9_5:
	move	$a1, $zero
	move	$a0, $s3
.LBB9_6:
	st.d	$fp, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $fp, $a1
	st.w	$s1, $a0, 12
	move	$a1, $s2
.LBB9_7:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	ld.d	$a2, $a1, 0
	.p2align	4, , 16
.LBB9_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $fp, 4
	st.w	$a3, $fp, 0
	move	$fp, $a4
	bnez	$a3, .LBB9_8
# %bb.9:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB9_10:
	ret
.Lfunc_end9:
	.size	_ZN11CStringBaseIwEaSERKS0_, .Lfunc_end9-_ZN11CStringBaseIwEaSERKS0_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback # -- Begin function _ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback,@function
_ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback: # @_ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 48
	move	$s1, $a3
	move	$s0, $a1
.Ltmp74:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp75:                                # EH_LABEL
# %bb.1:
.Ltmp76:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.2:
	bnez	$a0, .LBB10_8
# %bb.3:
	beqz	$s0, .LBB10_5
# %bb.4:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
.Ltmp79:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp80:                                # EH_LABEL
.LBB10_5:                               # %.noexc
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB10_7
# %bb.6:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp81:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp82:                                # EH_LABEL
.LBB10_7:                               # %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit
	move	$a0, $zero
	st.d	$s0, $fp, 72
.LBB10_8:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_9:
.Ltmp78:                                # EH_LABEL
	b	.LBB10_11
.LBB10_10:
.Ltmp83:                                # EH_LABEL
.LBB10_11:
	addi.w	$s0, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB10_13
# %bb.12:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	b	.LBB10_8
.LBB10_13:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp84:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.14:
.LBB10_15:
.Ltmp86:                                # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback, .Lfunc_end10-_ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp74-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp83-.Lfunc_begin2          #     jumps to .Ltmp83
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp76-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin2          #     jumps to .Ltmp78
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp79-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp82-.Ltmp79                #   Call between .Ltmp79 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin2          #     jumps to .Ltmp83
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp82-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp84-.Ltmp82                #   Call between .Ltmp82 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin2          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Lfunc_end10-.Ltmp85           #   Call between .Ltmp85 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp87:                                # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp87
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream # -- Begin function _ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream,@function
_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream: # @_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 48
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$s0, .LBB11_2
# %bb.1:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB11_2:
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB11_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB11_4:                               # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit
	st.d	$s0, $fp, 80
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream, .Lfunc_end11-_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream # -- Begin function _ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
	.p2align	5
	.type	_ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream,@function
_ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream: # @_ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
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
	move	$fp, $a0
	ld.d	$a0, $a0, -8
	ld.d	$a2, $a0, 48
	move	$s0, $a1
	addi.d	$a0, $fp, -8
	jirl	$ra, $a2, 0
	beqz	$s0, .LBB12_2
# %bb.1:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB12_2:
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB12_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB12_4:                               # %_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream.exit
	st.d	$s0, $fp, 72
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	_ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream, .Lfunc_end12-_ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandler5CloseEv # -- Begin function _ZN8NArchive4NTar8CHandler5CloseEv
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler5CloseEv,@function
_ZN8NArchive4NTar8CHandler5CloseEv:     # @_ZN8NArchive4NTar8CHandler5CloseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 248
	st.w	$zero, $fp, 256
	st.b	$zero, $a0, 0
	st.w	$zero, $fp, 88
	st.b	$zero, $fp, 92
	addi.d	$a0, $fp, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 224
	st.b	$zero, $fp, 240
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB13_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 80
.LBB13_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB13_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 72
.LBB13_4:                               # %_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	_ZN8NArchive4NTar8CHandler5CloseEv, .Lfunc_end13-_ZN8NArchive4NTar8CHandler5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj # -- Begin function _ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj,@function
_ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj: # @_ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj
# %bb.0:
	ld.d	$a2, $a0, 72
	ld.w	$a0, $a0, 52
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	addi.d	$a3, $zero, -1
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end14:
	.size	_ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj, .Lfunc_end14-_ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandlerC2Ev  # -- Begin function _ZN8NArchive4NTar8CHandlerC2Ev
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandlerC2Ev,@function
_ZN8NArchive4NTar8CHandlerC2Ev:         # @_ZN8NArchive4NTar8CHandlerC2Ev
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	st.w	$zero, $a0, 32
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NTar8CHandlerE)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive4NTar8CHandlerE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 0
	addi.d	$a1, $a0, 184
	st.d	$a1, $fp, 8
	addi.d	$a1, $a0, 248
	st.d	$a1, $fp, 16
	addi.d	$a0, $a0, 312
	st.d	$a0, $fp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 48
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 64
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	st.d	$a0, $fp, 40
	addi.d	$s0, $fp, 96
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 72
.Ltmp88:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemC2Ev)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.1:                                # %_ZN8NArchive4NTar7CItemExC2Ev.exit
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 248
.Ltmp91:                                # EH_LABEL
	ori	$a0, $zero, 4
	ori	$s1, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.2:
	addi.d	$s2, $fp, 248
	st.d	$a0, $fp, 248
	st.b	$zero, $a0, 0
	st.w	$s1, $fp, 260
	st.d	$zero, $fp, 272
.Ltmp94:                                # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.3:
	move	$s1, $a0
	st.w	$zero, $a0, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9NCompress10CCopyCoderE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9NCompress10CCopyCoderE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $s1, 0
	addi.d	$a1, $a0, 88
	ld.d	$a2, $a0, 24
	st.d	$a1, $s1, 8
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s1, 24
	st.d	$s1, $fp, 264
.Ltmp96:                                # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp97:                                # EH_LABEL
# %bb.4:                                # %.noexc
	ld.d	$a0, $fp, 272
	beqz	$a0, .LBB15_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp98:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp99:                                # EH_LABEL
.LBB15_6:
	st.d	$s1, $fp, 272
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB15_7:
.Ltmp93:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB15_13
.LBB15_8:
.Ltmp90:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB15_14
.LBB15_9:
.Ltmp100:                               # EH_LABEL
	ld.d	$a1, $fp, 272
	move	$s1, $a0
	beqz	$a1, .LBB15_11
# %bb.10:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp101:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp102:                               # EH_LABEL
.LBB15_11:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB15_13
# %bb.12:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_13:                              # %_ZN11CStringBaseIcED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemD2Ev)
	jirl	$ra, $ra, 0
.LBB15_14:
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB15_16
# %bb.15:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp104:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp105:                               # EH_LABEL
.LBB15_16:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	addi.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB15_18
# %bb.17:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp107:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp108:                               # EH_LABEL
.LBB15_18:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_19:
.Ltmp103:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_20:
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_21:
.Ltmp106:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN8NArchive4NTar8CHandlerC2Ev, .Lfunc_end15-_ZN8NArchive4NTar8CHandlerC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp88-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin3          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin3          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp99-.Ltmp94                #   Call between .Ltmp94 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin3         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin3         #     jumps to .Ltmp103
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp102-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp104-.Ltmp102              #   Call between .Ltmp102 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin3         #     jumps to .Ltmp106
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp107-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin3         #     jumps to .Ltmp109
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp108-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Lfunc_end15-.Ltmp108          #   Call between .Ltmp108 and .Lfunc_end15
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
	.section	.text._ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev,@function
_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev: # @_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	st.d	$a0, $fp, 0
.Ltmp110:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB16_2:
.Ltmp112:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev, .Lfunc_end16-_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp110-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin4         #     jumps to .Ltmp112
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp111          #   Call between .Ltmp111 and .Lfunc_end16
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive4NTar8CHandler6SkipToEj
.LCPI17_0:
	.byte	85                              # 0x55
	.byte	110                             # 0x6e
	.byte	101                             # 0x65
	.byte	120                             # 0x78
	.byte	112                             # 0x70
	.byte	101                             # 0x65
	.byte	99                              # 0x63
	.byte	116                             # 0x74
	.byte	101                             # 0x65
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	101                             # 0x65
	.byte	110                             # 0x6e
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	111                             # 0x6f
	.text
	.globl	_ZN8NArchive4NTar8CHandler6SkipToEj
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler6SkipToEj,@function
_ZN8NArchive4NTar8CHandler6SkipToEj:    # @_ZN8NArchive4NTar8CHandler6SkipToEj
	.cfi_startproc
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 88
	ld.bu	$s3, $fp, 92
	move	$s0, $a1
	bltu	$a0, $a1, .LBB17_4
# %bb.1:
	beqz	$s3, .LBB17_4
.LBB17_2:
	move	$a0, $zero
.LBB17_3:                               # %.loopexit
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB17_4:                               # %.critedge.lr.ph
	addi.d	$s2, $fp, 96
	addi.d	$s1, $fp, 248
	ori	$s4, $zero, 1
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_5:                               #   in Loop: Header=BB17_7 Depth=1
	ld.w	$a0, $fp, 88
	st.b	$s4, $fp, 92
.LBB17_6:                               #   in Loop: Header=BB17_7 Depth=1
	sltu	$a0, $a0, $s0
	or	$a0, $a0, $s3
	xori	$s3, $s3, 1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB17_2
.LBB17_7:                               # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	andi	$a0, $s3, 1
	beqz	$a0, .LBB17_11
# %bb.8:                                #   in Loop: Header=BB17_7 Depth=1
	ld.d	$a0, $fp, 264
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 112
	ld.d	$a1, $fp, 80
	ld.d	$a6, $a2, 40
	addi.d	$a2, $a3, 511
	bstrins.d	$a2, $zero, 8, 0
	st.d	$a2, $sp, 16
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 16
	move	$a2, $zero
	move	$a5, $zero
	jirl	$ra, $a6, 0
	bnez	$a0, .LBB17_3
# %bb.9:                                #   in Loop: Header=BB17_7 Depth=1
	ld.d	$a0, $fp, 264
	ld.d	$a0, $a0, 32
	ld.d	$a1, $fp, 224
	ld.d	$a2, $sp, 16
	add.d	$a1, $a1, $a0
	st.d	$a1, $fp, 224
	bne	$a0, $a2, .LBB17_14
# %bb.10:                               #   in Loop: Header=BB17_7 Depth=1
	ld.w	$a0, $fp, 88
	st.b	$zero, $fp, 92
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 88
	b	.LBB17_6
	.p2align	4, , 16
.LBB17_11:                              #   in Loop: Header=BB17_7 Depth=1
	ld.d	$a1, $fp, 224
	ld.d	$a0, $fp, 80
	st.d	$a1, $fp, 208
	addi.d	$a1, $sp, 15
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_3
# %bb.12:                               #   in Loop: Header=BB17_7 Depth=1
	ld.wu	$a0, $fp, 216
	vld	$vr0, $fp, 224
	ld.bu	$a1, $sp, 15
	vreplgr2vr.d	$vr1, $a0
	vadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 224
	bnez	$a1, .LBB17_5
# %bb.13:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 240
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	b	.LBB17_3
.LBB17_14:
	ld.d	$a0, $fp, 248
	st.w	$zero, $fp, 256
	st.b	$zero, $a0, 0
	ld.w	$s3, $fp, 260
	ori	$a0, $zero, 26
	bne	$s3, $a0, .LBB17_16
# %bb.15:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s0, $s1, 0
	b	.LBB17_34
.LBB17_16:
	ori	$a0, $zero, 26
	ori	$s2, $zero, 26
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 256
	move	$s0, $a0
	blez	$s3, .LBB17_33
# %bb.17:                               # %.preheader.i.i
	ld.d	$a0, $s1, 0
	blez	$a1, .LBB17_25
# %bb.18:                               # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB17_30
# %bb.19:                               # %iter.check
	sub.d	$a3, $s0, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB17_30
# %bb.20:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB17_26
# %bb.21:
	move	$a2, $zero
.LBB17_22:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s0, $a5
	add.d	$a5, $a0, $a5
.LBB17_23:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB17_23
# %bb.24:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB17_30
	b	.LBB17_32
.LBB17_25:                              # %._crit_edge.i.i
	bnez	$a0, .LBB17_32
	b	.LBB17_33
.LBB17_26:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
.LBB17_27:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB17_27
# %bb.28:                               # %middle.block
	beq	$a2, $a1, .LBB17_32
# %bb.29:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 16
	bnez	$a3, .LBB17_22
.LBB17_30:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s0, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB17_31:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB17_31
.LBB17_32:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 256
.LBB17_33:
	st.d	$s0, $fp, 248
	stx.b	$zero, $s0, $a1
	st.w	$s2, $fp, 260
.LBB17_34:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI17_0)
	vst	$vr0, $s0, 0
	lu12i.w	$a0, 468498
	ori	$a0, $a0, 102
	lu32i.d	$a0, -432029
	lu52i.d	$a0, $a0, 1894
	st.d	$a0, $s0, 16
	ori	$a0, $zero, 101
	st.h	$a0, $s0, 24
	ori	$a0, $zero, 25
	st.w	$a0, $fp, 256
	ori	$a0, $zero, 1
	b	.LBB17_3
.Lfunc_end17:
	.size	_ZN8NArchive4NTar8CHandler6SkipToEj, .Lfunc_end17-_ZN8NArchive4NTar8CHandler6SkipToEj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT # -- Begin function _ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT,@function
_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT: # @_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ld.d	$a4, $a0, 72
	move	$fp, $a3
	move	$s0, $a2
	st.w	$zero, $sp, 40
	beqz	$a4, .LBB18_9
# %bb.1:
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a0, $a1
	addi.d	$a0, $s0, -3
	ori	$a1, $zero, 51
	bltu	$a1, $a0, .LBB18_37
.LBB18_2:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI18_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI18_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB18_3:
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.4:                                # %_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit
.Ltmp150:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive9NItemName10GetOSName2ERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.5:
	ld.d	$a1, $sp, 24
.Ltmp153:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.6:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB18_8
# %bb.7:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_8:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $sp, 8
	bnez	$a0, .LBB18_32
	b	.LBB18_37
.LBB18_9:
	ld.w	$a2, $a0, 88
	bgeu	$a1, $a2, .LBB18_11
# %bb.10:
	lu12i.w	$a0, -524176
	ori	$s1, $a0, 87
	b	.LBB18_39
.LBB18_11:
.Ltmp113:                               # EH_LABEL
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8CHandler6SkipToEj)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.12:
	move	$s1, $a0
	bnez	$a0, .LBB18_39
# %bb.13:
	addi.d	$a3, $s2, 96
	addi.d	$a0, $s0, -3
	ori	$a1, $zero, 51
	bgeu	$a1, $a0, .LBB18_2
	b	.LBB18_37
.LBB18_14:
	ld.bu	$a0, $a3, 104
	ld.d	$a1, $a3, 16
	addi.d	$a0, $a0, -50
	ld.w	$a2, $a3, 56
	sltui	$a0, $a0, 1
	sltui	$a3, $a1, 1
	masknez	$a4, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a1, $a2, $a0
	b	.LBB18_25
.LBB18_15:
	addi.d	$a1, $a3, 64
.Ltmp128:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.16:                               # %_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit52
	ld.d	$a1, $sp, 24
.Ltmp131:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
	b	.LBB18_31
.LBB18_17:
	ld.bu	$a0, $a3, 104
	ori	$a1, $zero, 52
	blt	$a1, $a0, .LBB18_33
# %bb.18:
	beqz	$a0, .LBB18_20
# %bb.19:
	ori	$a1, $zero, 48
	bne	$a0, $a1, .LBB18_35
.LBB18_20:
.Ltmp143:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp144:                               # EH_LABEL
	b	.LBB18_36
.LBB18_21:
	addi.d	$a1, $a3, 80
.Ltmp122:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.22:                               # %_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit56
	ld.d	$a1, $sp, 24
.Ltmp125:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
	b	.LBB18_31
.LBB18_23:
	ld.w	$a1, $a3, 24
.Ltmp134:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEj)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
	b	.LBB18_37
.LBB18_24:
	ld.d	$a0, $a3, 16
	addi.d	$a1, $a0, 511
	bstrins.d	$a1, $zero, 8, 0
.LBB18_25:                              # %.invoke
.Ltmp141:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEy)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
	b	.LBB18_37
.LBB18_26:
	ld.w	$a0, $a3, 36
	beqz	$a0, .LBB18_37
# %bb.27:
.Ltmp136:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN8NWindows5NTime18UnixTimeToFileTimeEjR9_FILETIME)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.28:
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSERK9_FILETIME)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
	b	.LBB18_37
.LBB18_29:
	addi.d	$a1, $a3, 48
.Ltmp116:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.30:                               # %_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit60
	ld.d	$a1, $sp, 24
.Ltmp119:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
.LBB18_31:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB18_37
.LBB18_32:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_37
.LBB18_33:
	ori	$a2, $zero, 53
	ori	$a1, $zero, 1
	beq	$a0, $a2, .LBB18_36
# %bb.34:
	ori	$a2, $zero, 68
	beq	$a0, $a2, .LBB18_36
.LBB18_35:
	move	$a1, $zero
.LBB18_36:                              # %_ZNK8NArchive4NTar5CItem5IsDirEv.exit
.Ltmp145:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEb)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
.LBB18_37:
.Ltmp156:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.38:
	move	$s1, $zero
.LBB18_39:
.Ltmp165:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
.LBB18_40:
	move	$a0, $s1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB18_41:
.Ltmp155:                               # EH_LABEL
	ld.d	$a2, $sp, 24
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a2, .LBB18_46
# %bb.42:
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_46
.LBB18_43:
.Ltmp121:                               # EH_LABEL
	b	.LBB18_49
.LBB18_44:
.Ltmp127:                               # EH_LABEL
	b	.LBB18_49
.LBB18_45:
.Ltmp152:                               # EH_LABEL
	move	$fp, $a1
	move	$s0, $a0
.LBB18_46:                              # %_ZN11CStringBaseIwED2Ev.exit49
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB18_60
# %bb.47:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_60
.LBB18_48:
.Ltmp133:                               # EH_LABEL
.LBB18_49:
	ld.d	$a2, $sp, 24
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a2, .LBB18_60
# %bb.50:
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_60
.LBB18_51:
.Ltmp118:                               # EH_LABEL
	b	.LBB18_59
.LBB18_52:
.Ltmp124:                               # EH_LABEL
	b	.LBB18_59
.LBB18_53:
.Ltmp149:                               # EH_LABEL
	b	.LBB18_59
.LBB18_54:
.Ltmp130:                               # EH_LABEL
	b	.LBB18_59
.LBB18_55:
.Ltmp140:                               # EH_LABEL
	b	.LBB18_59
.LBB18_56:
.Ltmp115:                               # EH_LABEL
	b	.LBB18_59
.LBB18_57:
.Ltmp167:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB18_58:
.Ltmp158:                               # EH_LABEL
.LBB18_59:
	move	$fp, $a1
	move	$s0, $a0
.LBB18_60:
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.61:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit63
	addi.w	$s1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s1, $a1, .LBB18_63
# %bb.62:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$s1, $a0, 14
	b	.LBB18_40
.LBB18_63:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp162:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.64:
.LBB18_65:
.Ltmp164:                               # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_66:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT, .Lfunc_end18-_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI18_0:
	.word	.LBB18_3-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_17-.LJTI18_0
	.word	.LBB18_14-.LJTI18_0
	.word	.LBB18_24-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_26-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_15-.LJTI18_0
	.word	.LBB18_21-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_37-.LJTI18_0
	.word	.LBB18_23-.LJTI18_0
	.word	.LBB18_29-.LJTI18_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp147-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin5         #     jumps to .Ltmp149
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp150-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin5         #     jumps to .Ltmp152
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp153-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin5         #     jumps to .Ltmp155
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp154-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp113-.Ltmp154              #   Call between .Ltmp154 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin5         #     jumps to .Ltmp115
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp128-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin5         #     jumps to .Ltmp130
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp131-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin5         #     jumps to .Ltmp133
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp143-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp158-.Lfunc_begin5         #     jumps to .Ltmp158
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp122-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin5         #     jumps to .Ltmp124
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp125-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin5         #     jumps to .Ltmp127
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp134-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp142-.Ltmp134              #   Call between .Ltmp134 and .Ltmp142
	.uleb128 .Ltmp158-.Lfunc_begin5         #     jumps to .Ltmp158
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp136-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp139-.Ltmp136              #   Call between .Ltmp136 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin5         #     jumps to .Ltmp140
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp116-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin5         #     jumps to .Ltmp118
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp119-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin5         #     jumps to .Ltmp121
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp120-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp145-.Ltmp120              #   Call between .Ltmp120 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp157-.Ltmp145              #   Call between .Ltmp145 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin5         #     jumps to .Ltmp158
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp165-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin5         #     jumps to .Ltmp167
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp166-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp159-.Ltmp166              #   Call between .Ltmp166 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin5         #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp160-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Ltmp162-.Ltmp160              #   Call between .Ltmp160 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin5         # >> Call Site 21 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin5         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin5         # >> Call Site 22 <<
	.uleb128 .Lfunc_end18-.Ltmp163          #   Call between .Ltmp163 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp168:                               # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp168
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback # -- Begin function _ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback,@function
_ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback: # @_ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	move	$fp, $a4
	move	$s1, $a3
	move	$s5, $a2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	move	$s3, $a0
	ld.d	$s0, $a0, 80
	ld.d	$s2, $a0, 72
	ld.w	$a2, $a0, 52
	addi.d	$a0, $s5, 1
	sltui	$a0, $a0, 1
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $a2, $a0
	or	$s6, $a0, $a1
	beqz	$s2, .LBB19_3
# %bb.1:
	bnez	$s6, .LBB19_3
# %bb.2:
	move	$fp, $zero
	b	.LBB19_98
.LBB19_3:                               # %.preheader
	beqz	$s6, .LBB19_7
# %bb.4:                                # %.lr.ph
	ld.d	$a0, $s3, 56
	addi.w	$a1, $zero, -1
	beq	$s5, $a1, .LBB19_8
# %bb.5:                                # %.lr.ph.split.preheader
	ori	$a1, $zero, 2
	bstrpick.d	$a2, $s5, 31, 0
	bgeu	$s5, $a1, .LBB19_10
# %bb.6:
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB19_13
.LBB19_7:
	move	$a1, $zero
	b	.LBB19_19
.LBB19_8:                               # %.lr.ph.split.us.preheader
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	add.w	$a1, $a2, $a1
	lu12i.w	$a3, -524288
	ori	$a3, $a3, 1
	bgeu	$a1, $a3, .LBB19_15
# %bb.9:
	move	$a1, $zero
	move	$a3, $zero
	b	.LBB19_18
.LBB19_10:                              # %vector.ph
	move	$a1, $zero
	move	$a4, $zero
	bstrpick.d	$a3, $a2, 31, 1
	slli.d	$a3, $a3, 1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	move	$a6, $a3
	.p2align	4, , 16
.LBB19_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -4
	ld.w	$t0, $a5, 0
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a0, $t0
	ld.bu	$t1, $a7, 104
	ld.bu	$t2, $t0, 104
	addi.d	$t1, $t1, -50
	sltui	$t1, $t1, 1
	ld.d	$t3, $a7, 16
	addi.d	$t2, $t2, -50
	ld.d	$t4, $t0, 16
	sltui	$t2, $t2, 1
	sltui	$t5, $t3, 1
	ld.w	$a7, $a7, 56
	sltui	$t6, $t4, 1
	ld.w	$t0, $t0, 56
	masknez	$t7, $t3, $t5
	maskeqz	$a7, $a7, $t5
	or	$a7, $a7, $t7
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $t3, $t1
	or	$a7, $a7, $t1
	masknez	$t1, $t4, $t6
	maskeqz	$t0, $t0, $t6
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t2
	masknez	$t1, $t4, $t2
	or	$t0, $t0, $t1
	add.d	$a1, $a7, $a1
	add.d	$a4, $t0, $a4
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB19_11
# %bb.12:                               # %middle.block
	add.d	$a1, $a4, $a1
	beq	$a3, $a2, .LBB19_19
.LBB19_13:                              # %.lr.ph.split.preheader327
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB19_14:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	ld.bu	$a5, $a3, 104
	ld.d	$a6, $a3, 16
	addi.d	$a5, $a5, -50
	ld.w	$a3, $a3, 56
	sltui	$a5, $a5, 1
	sltui	$a7, $a6, 1
	masknez	$t0, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a6, $a5
	or	$a3, $a3, $a5
	add.d	$a1, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB19_14
	b	.LBB19_19
.LBB19_15:                              # %vector.ph308
	move	$a1, $zero
	move	$a4, $zero
	move	$a3, $a2
	bstrins.d	$a3, $zero, 0, 0
	addi.d	$a5, $a0, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB19_16:                              # %vector.body311
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, -8
	ld.d	$t0, $a5, 0
	ld.bu	$t1, $a7, 104
	ld.bu	$t2, $t0, 104
	addi.d	$t1, $t1, -50
	sltui	$t1, $t1, 1
	ld.d	$t3, $a7, 16
	addi.d	$t2, $t2, -50
	ld.d	$t4, $t0, 16
	sltui	$t2, $t2, 1
	sltui	$t5, $t3, 1
	ld.w	$a7, $a7, 56
	sltui	$t6, $t4, 1
	ld.w	$t0, $t0, 56
	masknez	$t7, $t3, $t5
	maskeqz	$a7, $a7, $t5
	or	$a7, $a7, $t7
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $t3, $t1
	or	$a7, $a7, $t1
	masknez	$t1, $t4, $t6
	maskeqz	$t0, $t0, $t6
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t2
	masknez	$t1, $t4, $t2
	or	$t0, $t0, $t1
	add.d	$a1, $a7, $a1
	add.d	$a4, $t0, $a4
	addi.w	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB19_16
# %bb.17:                               # %middle.block316
	addi.w	$a5, $a3, 0
	add.d	$a1, $a4, $a1
	beq	$a2, $a5, .LBB19_19
	.p2align	4, , 16
.LBB19_18:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	ld.bu	$a5, $a4, 104
	ld.d	$a6, $a4, 16
	addi.d	$a5, $a5, -50
	ld.w	$a4, $a4, 56
	sltui	$a5, $a5, 1
	sltui	$a7, $a6, 1
	masknez	$t0, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $t0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	addi.w	$a3, $a3, 1
	add.d	$a1, $a4, $a1
	bne	$a2, $a3, .LBB19_18
.LBB19_19:                              # %._crit_edge
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 40
.Ltmp169:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp170:                               # EH_LABEL
# %bb.20:
.Ltmp172:                               # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.21:
.Ltmp175:                               # EH_LABEL
	move	$s4, $a0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgressC1Ev)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.22:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 8
.Ltmp178:                               # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp179:                               # EH_LABEL
# %bb.23:                               # %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
.Ltmp181:                               # EH_LABEL
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress4InitEP9IProgressb)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.24:
.Ltmp184:                               # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.25:
	move	$s7, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV26CLimitedSequentialInStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV26CLimitedSequentialInStream)
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $s7, 0
	st.d	$zero, $s7, 16
.Ltmp187:                               # EH_LABEL
	move	$a0, $s7
	jirl	$ra, $a1, 0
.Ltmp188:                               # EH_LABEL
# %bb.26:                               # %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit
	sltui	$a0, $s2, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	beqz	$s0, .LBB19_28
# %bb.27:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
.Ltmp190:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp191:                               # EH_LABEL
.LBB19_28:                              # %.noexc
	ld.d	$a0, $s7, 16
	beqz	$a0, .LBB19_30
# %bb.29:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp192:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp193:                               # EH_LABEL
.LBB19_30:
	st.d	$s0, $s7, 16
.Ltmp195:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.31:
	st.w	$zero, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(_ZTV27CLimitedSequentialOutStream)
	ld.d	$a2, $a1, %got_pc_lo12(_ZTV27CLimitedSequentialOutStream)
	ld.d	$a1, $a2, 24
	addi.d	$a2, $a2, 16
	st.d	$a2, $a0, 0
	st.d	$zero, $a0, 16
.Ltmp198:                               # EH_LABEL
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	jirl	$ra, $a1, 0
.Ltmp199:                               # EH_LABEL
# %bb.32:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit.preheader
	beqz	$s2, .LBB19_34
# %bb.33:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit.preheader
	beqz	$s6, .LBB19_94
.LBB19_34:                              # %.lr.ph263
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $zero
	move	$s6, $zero
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	sltu	$a0, $zero, $s1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 96
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
                                        # implicit-def: $r5
                                        # kill: killed $r5
	.p2align	4, , 16
.LBB19_35:                              # =>This Inner Loop Header: Depth=1
	move	$s5, $a0
	st.d	$s6, $s4, 48
	st.d	$s7, $s4, 56
.Ltmp201:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress6SetCurEv)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.36:                               #   in Loop: Header=BB19_35 Depth=1
	bnez	$a0, .LBB19_95
# %bb.37:                               #   in Loop: Header=BB19_35 Depth=1
	addi.w	$s0, $s5, -1
	st.d	$zero, $sp, 112
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB19_39
# %bb.38:                               #   in Loop: Header=BB19_35 Depth=1
	bstrpick.d	$a0, $s0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s0, $a1, $a0
.LBB19_39:                              #   in Loop: Header=BB19_35 Depth=1
	beqz	$s2, .LBB19_48
# %bb.40:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s0, 3
	ldx.d	$s8, $a0, $a1
.LBB19_41:                              #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 56
.Ltmp207:                               # EH_LABEL
	addi.d	$a2, $sp, 112
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.Ltmp208:                               # EH_LABEL
# %bb.42:                               #   in Loop: Header=BB19_35 Depth=1
	ori	$s1, $zero, 1
	bnez	$a0, .LBB19_87
# %bb.43:                               #   in Loop: Header=BB19_35 Depth=1
	ld.bu	$a0, $s8, 104
	ld.d	$a1, $s8, 16
	addi.d	$a2, $a0, -50
	ld.w	$a3, $s8, 56
	sltui	$a2, $a2, 1
	sltui	$a4, $a1, 1
	masknez	$a5, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $a1, $a2
	or	$s0, $a3, $a2
	add.d	$s7, $s0, $s7
	addi.d	$a1, $a1, 511
	bstrins.d	$a1, $zero, 8, 0
	add.d	$s6, $a1, $s6
	ori	$a1, $zero, 52
	blt	$a1, $a0, .LBB19_52
# %bb.44:                               #   in Loop: Header=BB19_35 Depth=1
	beqz	$a0, .LBB19_46
# %bb.45:                               #   in Loop: Header=BB19_35 Depth=1
	ori	$a1, $zero, 48
	bne	$a0, $a1, .LBB19_59
.LBB19_46:                              #   in Loop: Header=BB19_35 Depth=1
.Ltmp210:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.47:                               # %_ZNK8NArchive4NTar5CItem5IsDirEv.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	bnez	$a0, .LBB19_54
	b	.LBB19_59
	.p2align	4, , 16
.LBB19_48:                              #   in Loop: Header=BB19_35 Depth=1
.Ltmp204:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8CHandler6SkipToEj)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.49:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB19_58
# %bb.50:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB19_41
# %bb.51:                               # %.thread.fold.split
                                        #   in Loop: Header=BB19_35 Depth=1
	ori	$s1, $zero, 1
	b	.LBB19_87
.LBB19_52:                              #   in Loop: Header=BB19_35 Depth=1
	ori	$a1, $zero, 53
	beq	$a0, $a1, .LBB19_54
# %bb.53:                               #   in Loop: Header=BB19_35 Depth=1
	ori	$a1, $zero, 68
	bne	$a0, $a1, .LBB19_59
.LBB19_54:                              # %_ZNK8NArchive4NTar5CItem5IsDirEv.exit.thread
                                        #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 64
.Ltmp213:                               # EH_LABEL
	move	$a0, $fp
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a2, 0
.Ltmp214:                               # EH_LABEL
# %bb.55:                               #   in Loop: Header=BB19_35 Depth=1
	bnez	$a0, .LBB19_87
# %bb.56:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 72
.Ltmp216:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
.Ltmp217:                               # EH_LABEL
# %bb.57:                               #   in Loop: Header=BB19_35 Depth=1
	sltui	$a1, $a0, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a3, $a3, $a1
	or	$s1, $a3, $a2
	masknez	$a0, $a0, $a1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	b	.LBB19_87
.LBB19_58:                              #   in Loop: Header=BB19_35 Depth=1
	ori	$s1, $zero, 5
	ld.d	$a0, $sp, 112
	bnez	$a0, .LBB19_88
	b	.LBB19_89
.LBB19_59:                              # %_ZNK8NArchive4NTar5CItem5IsDirEv.exit.thread255
                                        #   in Loop: Header=BB19_35 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB19_72
.LBB19_60:                              #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 64
.Ltmp219:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp220:                               # EH_LABEL
# %bb.61:                               #   in Loop: Header=BB19_35 Depth=1
	ori	$s1, $zero, 1
	bnez	$a0, .LBB19_87
# %bb.62:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a2, $sp, 112
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	beqz	$a2, .LBB19_64
# %bb.63:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a0, 8
.Ltmp222:                               # EH_LABEL
	move	$a0, $a2
	jirl	$ra, $a1, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.Ltmp223:                               # EH_LABEL
.LBB19_64:                              # %.noexc224
                                        #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB19_66
# %bb.65:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp224:                               # EH_LABEL
	jirl	$ra, $a1, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.Ltmp225:                               # EH_LABEL
.LBB19_66:                              #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a2, $a1, 16
	beqz	$a0, .LBB19_69
# %bb.67:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp226:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp227:                               # EH_LABEL
# %bb.68:                               # %.noexc226
                                        #   in Loop: Header=BB19_35 Depth=1
	st.d	$zero, $sp, 112
.LBB19_69:                              # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$s0, $a0, 24
	ori	$a1, $zero, 256
	st.h	$a1, $a0, 32
	ld.bu	$a0, $s8, 104
	ld.d	$a1, $s8, 16
	ori	$a2, $zero, 50
	bne	$a0, $a2, .LBB19_74
# %bb.70:                               # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	bnez	$a1, .LBB19_74
# %bb.71:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $s8, 48
	ld.w	$a2, $s8, 56
.Ltmp234:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
	b	.LBB19_79
.LBB19_72:                              #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $sp, 112
	sltu	$a2, $zero, $a0
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a3, $a3, $a2
	or	$a1, $a3, $a1
	maskeqz	$s0, $s0, $a2
	beqz	$s2, .LBB19_60
# %bb.73:                               #   in Loop: Header=BB19_35 Depth=1
	beqz	$a0, .LBB19_91
	b	.LBB19_60
.LBB19_74:                              #   in Loop: Header=BB19_35 Depth=1
	beqz	$s2, .LBB19_78
# %bb.75:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $s3, 72
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s8, 112
	ld.wu	$a3, $s8, 120
	ld.d	$a4, $a1, 48
	add.d	$a1, $a2, $a3
.Ltmp228:                               # EH_LABEL
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp229:                               # EH_LABEL
# %bb.76:                               #   in Loop: Header=BB19_35 Depth=1
	bnez	$a0, .LBB19_87
# %bb.77:                               # %._crit_edge269
                                        #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $s8, 16
.LBB19_78:                              #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $s3, 272
	addi.d	$a3, $a1, 511
	bstrins.d	$a3, $zero, 8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a3, $a1, 24
	st.d	$zero, $a1, 32
	st.b	$zero, $a1, 40
	ld.d	$a6, $a2, 40
.Ltmp231:                               # EH_LABEL
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s4
	jirl	$ra, $a6, 0
.Ltmp232:                               # EH_LABEL
.LBB19_79:                              #   in Loop: Header=BB19_35 Depth=1
	bnez	$a0, .LBB19_87
# %bb.80:                               #   in Loop: Header=BB19_35 Depth=1
	bnez	$s2, .LBB19_82
# %bb.81:                               #   in Loop: Header=BB19_35 Depth=1
	ld.w	$a0, $s3, 88
	st.b	$zero, $s3, 92
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 88
.LBB19_82:                              #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB19_85
# %bb.83:                               #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp237:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp238:                               # EH_LABEL
# %bb.84:                               # %.noexc228
                                        #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$zero, $a1, 16
.LBB19_85:                              # %_ZN27CLimitedSequentialOutStream13ReleaseStreamEv.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a1, 24
	ld.d	$a2, $a0, 72
	sltu	$a0, $zero, $a1
.Ltmp240:                               # EH_LABEL
	slli.d	$a1, $a0, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp241:                               # EH_LABEL
# %bb.86:                               #   in Loop: Header=BB19_35 Depth=1
	sltu	$s1, $zero, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	masknez	$a1, $a1, $s1
	maskeqz	$a0, $a0, $s1
	or	$a0, $a0, $a1
	.p2align	4, , 16
.LBB19_87:                              # %.thread
                                        #   in Loop: Header=BB19_35 Depth=1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112
	beqz	$a0, .LBB19_89
.LBB19_88:                              #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp258:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp259:                               # EH_LABEL
.LBB19_89:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	beqz	$s1, .LBB19_91
# %bb.90:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	ori	$a0, $zero, 7
	bne	$s1, $a0, .LBB19_93
.LBB19_91:                              # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	addi.w	$a0, $s5, 1
	beqz	$s2, .LBB19_35
# %bb.92:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
                                        #   in Loop: Header=BB19_35 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bltu	$s5, $a1, .LBB19_35
	b	.LBB19_94
.LBB19_93:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ori	$a0, $zero, 5
	bne	$s1, $a0, .LBB19_99
.LBB19_94:
	move	$a0, $zero
.LBB19_95:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit._crit_edge
	move	$fp, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp261:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp262:                               # EH_LABEL
# %bb.96:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit233
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp264:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp265:                               # EH_LABEL
# %bb.97:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
.Ltmp267:                               # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp268:                               # EH_LABEL
.LBB19_98:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	addi.w	$a0, $fp, 0
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
.LBB19_99:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit._crit_edge.loopexit323
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB19_95
.LBB19_100:
.Ltmp242:                               # EH_LABEL
	b	.LBB19_128
.LBB19_101:
.Ltmp233:                               # EH_LABEL
	b	.LBB19_128
.LBB19_102:
.Ltmp230:                               # EH_LABEL
	b	.LBB19_128
.LBB19_103:
.Ltmp236:                               # EH_LABEL
	b	.LBB19_128
.LBB19_104:
.Ltmp218:                               # EH_LABEL
	b	.LBB19_128
.LBB19_105:
.Ltmp239:                               # EH_LABEL
	b	.LBB19_128
.LBB19_106:
.Ltmp221:                               # EH_LABEL
	b	.LBB19_128
.LBB19_107:
.Ltmp212:                               # EH_LABEL
	b	.LBB19_128
.LBB19_108:
.Ltmp215:                               # EH_LABEL
	b	.LBB19_128
.LBB19_109:
.Ltmp269:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_110:
.Ltmp266:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_111:
.Ltmp263:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_112:
.Ltmp200:                               # EH_LABEL
	b	.LBB19_124
.LBB19_113:
.Ltmp197:                               # EH_LABEL
	b	.LBB19_124
.LBB19_114:
.Ltmp189:                               # EH_LABEL
	b	.LBB19_117
.LBB19_115:
.Ltmp186:                               # EH_LABEL
	b	.LBB19_117
.LBB19_116:
.Ltmp183:                               # EH_LABEL
.LBB19_117:                             # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit239
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB19_134
.LBB19_118:
.Ltmp180:                               # EH_LABEL
	b	.LBB19_122
.LBB19_119:
.Ltmp177:                               # EH_LABEL
	move	$fp, $a1
	move	$s0, $a0
	ori	$a1, $zero, 72
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB19_135
.LBB19_120:
.Ltmp174:                               # EH_LABEL
	b	.LBB19_122
.LBB19_121:
.Ltmp171:                               # EH_LABEL
.LBB19_122:                             # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit241
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB19_135
.LBB19_123:
.Ltmp194:                               # EH_LABEL
.LBB19_124:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit237
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB19_133
.LBB19_125:
.Ltmp206:                               # EH_LABEL
	b	.LBB19_128
.LBB19_126:
.Ltmp260:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_127:
.Ltmp209:                               # EH_LABEL
.LBB19_128:
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $sp, 112
	beqz	$a0, .LBB19_132
# %bb.129:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp243:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp244:                               # EH_LABEL
	b	.LBB19_132
.LBB19_130:
.Ltmp245:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_131:
.Ltmp203:                               # EH_LABEL
	move	$fp, $a1
	move	$s0, $a0
.LBB19_132:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp246:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp247:                               # EH_LABEL
.LBB19_133:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit237
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp249:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp250:                               # EH_LABEL
.LBB19_134:                             # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit239
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
.Ltmp252:                               # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp253:                               # EH_LABEL
.LBB19_135:                             # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit241
	addi.w	$s1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s1, $a1, .LBB19_137
# %bb.136:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$fp, $a0, 14
	b	.LBB19_98
.LBB19_137:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp255:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.138:
.LBB19_139:
.Ltmp248:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_140:
.Ltmp251:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_141:
.Ltmp254:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_142:
.Ltmp257:                               # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback, .Lfunc_end19-_ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp169-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin6         #     jumps to .Ltmp171
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp172-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin6         #     jumps to .Ltmp174
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp175-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin6         #     jumps to .Ltmp177
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp178-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin6         #     jumps to .Ltmp180
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp181-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin6         #     jumps to .Ltmp183
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp184-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin6         #     jumps to .Ltmp186
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp187-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin6         #     jumps to .Ltmp189
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp190-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp193-.Ltmp190              #   Call between .Ltmp190 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin6         #     jumps to .Ltmp194
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp195-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin6         #     jumps to .Ltmp197
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp198-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin6         #     jumps to .Ltmp200
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp201-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin6         #     jumps to .Ltmp203
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp207-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin6         #     jumps to .Ltmp209
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp210-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin6         #     jumps to .Ltmp212
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp204-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin6         #     jumps to .Ltmp206
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp213-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin6         #     jumps to .Ltmp215
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp216-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin6         #     jumps to .Ltmp218
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp219-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin6         #     jumps to .Ltmp221
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp222-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp227-.Ltmp222              #   Call between .Ltmp222 and .Ltmp227
	.uleb128 .Ltmp239-.Lfunc_begin6         #     jumps to .Ltmp239
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp234-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin6         #     jumps to .Ltmp236
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp228-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin6         #     jumps to .Ltmp230
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp231-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin6         #     jumps to .Ltmp233
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp237-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin6         #     jumps to .Ltmp239
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp240-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin6         #     jumps to .Ltmp242
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp258-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin6         #     jumps to .Ltmp260
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp261-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin6         #     jumps to .Ltmp263
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp264-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin6         #     jumps to .Ltmp266
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp267-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin6         #     jumps to .Ltmp269
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp268-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp243-.Ltmp268              #   Call between .Ltmp268 and .Ltmp243
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin6         #     jumps to .Ltmp245
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp244-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp246-.Ltmp244              #   Call between .Ltmp244 and .Ltmp246
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin6         #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp249-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin6         #     jumps to .Ltmp251
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp252-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin6         #     jumps to .Ltmp254
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp253-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp255-.Ltmp253              #   Call between .Ltmp253 and .Ltmp255
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin6         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Lfunc_end19-.Ltmp256          #   Call between .Ltmp256 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp270:                               # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp270
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream # -- Begin function _ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream,@function
_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream: # @_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a0, $a1
	ld.bu	$a0, $s2, 104
	ld.d	$a3, $s2, 16
	ori	$a1, $zero, 50
	move	$s0, $a2
	bne	$a0, $a1, .LBB20_8
# %bb.1:
	bnez	$a3, .LBB20_8
# %bb.2:
.Ltmp274:                               # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.3:
	move	$s1, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV12CBufInStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV12CBufInStream)
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $s1, 0
	st.d	$zero, $s1, 40
.Ltmp277:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp278:                               # EH_LABEL
# %bb.4:                                # %_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit
	ld.d	$a0, $s2, 48
	ld.w	$a1, $s2, 56
	ld.d	$a2, $fp, 0
	st.d	$a0, $s1, 16
	st.d	$a1, $s1, 32
	st.d	$zero, $s1, 24
	ld.d	$a1, $a2, 8
.Ltmp280:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp281:                               # EH_LABEL
# %bb.5:                                # %.noexc
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB20_7
# %bb.6:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp282:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp283:                               # EH_LABEL
.LBB20_7:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	move	$a0, $zero
	st.d	$fp, $s1, 40
	st.d	$s1, $s0, 0
	b	.LBB20_9
.LBB20_8:
	ld.d	$a1, $s2, 112
	ld.wu	$a2, $s2, 120
	ld.d	$a0, $fp, 72
	add.d	$a1, $a1, $a2
.Ltmp271:                               # EH_LABEL
	move	$a2, $a3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
.LBB20_9:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB20_10:
.Ltmp279:                               # EH_LABEL
	b	.LBB20_13
.LBB20_11:
.Ltmp276:                               # EH_LABEL
	b	.LBB20_13
.LBB20_12:
.Ltmp273:                               # EH_LABEL
.LBB20_13:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit27
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB20_15
.LBB20_14:
.Ltmp284:                               # EH_LABEL
	ld.d	$a2, $s1, 0
	ld.d	$a2, $a2, 16
	move	$fp, $a1
	move	$s0, $a0
.Ltmp285:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp286:                               # EH_LABEL
.LBB20_15:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit27
	addi.w	$s1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s1, $a1, .LBB20_17
# %bb.16:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	b	.LBB20_9
.LBB20_17:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp288:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.18:
.LBB20_19:
.Ltmp287:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_20:
.Ltmp290:                               # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream, .Lfunc_end20-_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp274-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.uleb128 .Ltmp276-.Lfunc_begin7         #     jumps to .Ltmp276
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp277-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin7         #     jumps to .Ltmp279
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp280-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp283-.Ltmp280              #   Call between .Ltmp280 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin7         #     jumps to .Ltmp284
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp271-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin7         #     jumps to .Ltmp273
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp285-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin7         #     jumps to .Ltmp287
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp286-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp288-.Ltmp286              #   Call between .Ltmp286 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin7         #     jumps to .Ltmp290
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Lfunc_end20-.Ltmp289          #   Call between .Ltmp289 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp291:                               # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp291
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream # -- Begin function _ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
	.p2align	5
	.type	_ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream,@function
_ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream: # @_ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream)
	jr	$t8
.Lfunc_end21:
	.size	_ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream, .Lfunc_end21-_ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
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
	ld.bu	$a3, $a1, 0
	move	$s0, $a2
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a2, $a0, 0
	bne	$a3, $a2, .LBB22_16
# %bb.1:
	ld.bu	$a2, $a1, 1
	ld.bu	$a4, $a0, 1
	bne	$a2, $a4, .LBB22_16
# %bb.2:
	ld.bu	$a2, $a1, 2
	ld.bu	$a4, $a0, 2
	bne	$a2, $a4, .LBB22_16
# %bb.3:
	ld.bu	$a2, $a1, 3
	ld.bu	$a4, $a0, 3
	bne	$a2, $a4, .LBB22_16
# %bb.4:
	ld.bu	$a2, $a1, 4
	ld.bu	$a4, $a0, 4
	bne	$a2, $a4, .LBB22_16
# %bb.5:
	ld.bu	$a2, $a1, 5
	ld.bu	$a4, $a0, 5
	bne	$a2, $a4, .LBB22_16
# %bb.6:
	ld.bu	$a2, $a1, 6
	ld.bu	$a4, $a0, 6
	bne	$a2, $a4, .LBB22_16
# %bb.7:
	ld.bu	$a2, $a1, 7
	ld.bu	$a4, $a0, 7
	bne	$a2, $a4, .LBB22_16
# %bb.8:
	ld.bu	$a2, $a1, 8
	ld.bu	$a4, $a0, 8
	bne	$a2, $a4, .LBB22_16
# %bb.9:
	ld.bu	$a2, $a1, 9
	ld.bu	$a4, $a0, 9
	bne	$a2, $a4, .LBB22_16
# %bb.10:
	ld.bu	$a2, $a1, 10
	ld.bu	$a4, $a0, 10
	bne	$a2, $a4, .LBB22_16
# %bb.11:
	ld.bu	$a2, $a1, 11
	ld.bu	$a4, $a0, 11
	bne	$a2, $a4, .LBB22_16
# %bb.12:
	ld.bu	$a2, $a1, 12
	ld.bu	$a4, $a0, 12
	bne	$a2, $a4, .LBB22_16
# %bb.13:
	ld.bu	$a2, $a1, 13
	ld.bu	$a4, $a0, 13
	bne	$a2, $a4, .LBB22_16
# %bb.14:
	ld.bu	$a2, $a1, 14
	ld.bu	$a4, $a0, 14
	bne	$a2, $a4, .LBB22_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a2, $a1, 15
	ld.bu	$a4, $a0, 15
	move	$a0, $fp
	beq	$a2, $a4, .LBB22_68
.LBB22_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a0, %got_pc_hi20(IID_IInArchive)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IInArchive)
	ld.bu	$a2, $a0, 0
	bne	$a3, $a2, .LBB22_32
# %bb.17:
	ld.bu	$a2, $a1, 1
	ld.bu	$a4, $a0, 1
	bne	$a2, $a4, .LBB22_32
# %bb.18:
	ld.bu	$a2, $a1, 2
	ld.bu	$a4, $a0, 2
	bne	$a2, $a4, .LBB22_32
# %bb.19:
	ld.bu	$a2, $a1, 3
	ld.bu	$a4, $a0, 3
	bne	$a2, $a4, .LBB22_32
# %bb.20:
	ld.bu	$a2, $a1, 4
	ld.bu	$a4, $a0, 4
	bne	$a2, $a4, .LBB22_32
# %bb.21:
	ld.bu	$a2, $a1, 5
	ld.bu	$a4, $a0, 5
	bne	$a2, $a4, .LBB22_32
# %bb.22:
	ld.bu	$a2, $a1, 6
	ld.bu	$a4, $a0, 6
	bne	$a2, $a4, .LBB22_32
# %bb.23:
	ld.bu	$a2, $a1, 7
	ld.bu	$a4, $a0, 7
	bne	$a2, $a4, .LBB22_32
# %bb.24:
	ld.bu	$a2, $a1, 8
	ld.bu	$a4, $a0, 8
	bne	$a2, $a4, .LBB22_32
# %bb.25:
	ld.bu	$a2, $a1, 9
	ld.bu	$a4, $a0, 9
	bne	$a2, $a4, .LBB22_32
# %bb.26:
	ld.bu	$a2, $a1, 10
	ld.bu	$a4, $a0, 10
	bne	$a2, $a4, .LBB22_32
# %bb.27:
	ld.bu	$a2, $a1, 11
	ld.bu	$a4, $a0, 11
	bne	$a2, $a4, .LBB22_32
# %bb.28:
	ld.bu	$a2, $a1, 12
	ld.bu	$a4, $a0, 12
	bne	$a2, $a4, .LBB22_32
# %bb.29:
	ld.bu	$a2, $a1, 13
	ld.bu	$a4, $a0, 13
	bne	$a2, $a4, .LBB22_32
# %bb.30:
	ld.bu	$a2, $a1, 14
	ld.bu	$a4, $a0, 14
	bne	$a2, $a4, .LBB22_32
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit33
	ld.bu	$a2, $a1, 15
	ld.bu	$a4, $a0, 15
	move	$a0, $fp
	beq	$a2, $a4, .LBB22_68
.LBB22_32:                              # %_ZeqRK4GUIDS1_.exit33.thread
	pcalau12i	$a0, %got_pc_hi20(IID_IArchiveOpenSeq)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IArchiveOpenSeq)
	ld.bu	$a2, $a0, 0
	bne	$a3, $a2, .LBB22_49
# %bb.33:
	ld.bu	$a2, $a1, 1
	ld.bu	$a4, $a0, 1
	bne	$a2, $a4, .LBB22_49
# %bb.34:
	ld.bu	$a2, $a1, 2
	ld.bu	$a4, $a0, 2
	bne	$a2, $a4, .LBB22_49
# %bb.35:
	ld.bu	$a2, $a1, 3
	ld.bu	$a4, $a0, 3
	bne	$a2, $a4, .LBB22_49
# %bb.36:
	ld.bu	$a2, $a1, 4
	ld.bu	$a4, $a0, 4
	bne	$a2, $a4, .LBB22_49
# %bb.37:
	ld.bu	$a2, $a1, 5
	ld.bu	$a4, $a0, 5
	bne	$a2, $a4, .LBB22_49
# %bb.38:
	ld.bu	$a2, $a1, 6
	ld.bu	$a4, $a0, 6
	bne	$a2, $a4, .LBB22_49
# %bb.39:
	ld.bu	$a2, $a1, 7
	ld.bu	$a4, $a0, 7
	bne	$a2, $a4, .LBB22_49
# %bb.40:
	ld.bu	$a2, $a1, 8
	ld.bu	$a4, $a0, 8
	bne	$a2, $a4, .LBB22_49
# %bb.41:
	ld.bu	$a2, $a1, 9
	ld.bu	$a4, $a0, 9
	bne	$a2, $a4, .LBB22_49
# %bb.42:
	ld.bu	$a2, $a1, 10
	ld.bu	$a4, $a0, 10
	bne	$a2, $a4, .LBB22_49
# %bb.43:
	ld.bu	$a2, $a1, 11
	ld.bu	$a4, $a0, 11
	bne	$a2, $a4, .LBB22_49
# %bb.44:
	ld.bu	$a2, $a1, 12
	ld.bu	$a4, $a0, 12
	bne	$a2, $a4, .LBB22_49
# %bb.45:
	ld.bu	$a2, $a1, 13
	ld.bu	$a4, $a0, 13
	bne	$a2, $a4, .LBB22_49
# %bb.46:
	ld.bu	$a2, $a1, 14
	ld.bu	$a4, $a0, 14
	bne	$a2, $a4, .LBB22_49
# %bb.47:                               # %_ZeqRK4GUIDS1_.exit52
	ld.bu	$a2, $a1, 15
	ld.bu	$a0, $a0, 15
	bne	$a2, $a0, .LBB22_49
# %bb.48:
	addi.d	$a0, $fp, 8
	b	.LBB22_68
.LBB22_49:                              # %_ZeqRK4GUIDS1_.exit52.thread
	pcalau12i	$a0, %got_pc_hi20(IID_IInArchiveGetStream)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IInArchiveGetStream)
	ld.bu	$a2, $a0, 0
	bne	$a3, $a2, .LBB22_66
# %bb.50:
	ld.bu	$a2, $a1, 1
	ld.bu	$a3, $a0, 1
	bne	$a2, $a3, .LBB22_66
# %bb.51:
	ld.bu	$a2, $a1, 2
	ld.bu	$a3, $a0, 2
	bne	$a2, $a3, .LBB22_66
# %bb.52:
	ld.bu	$a2, $a1, 3
	ld.bu	$a3, $a0, 3
	bne	$a2, $a3, .LBB22_66
# %bb.53:
	ld.bu	$a2, $a1, 4
	ld.bu	$a3, $a0, 4
	bne	$a2, $a3, .LBB22_66
# %bb.54:
	ld.bu	$a2, $a1, 5
	ld.bu	$a3, $a0, 5
	bne	$a2, $a3, .LBB22_66
# %bb.55:
	ld.bu	$a2, $a1, 6
	ld.bu	$a3, $a0, 6
	bne	$a2, $a3, .LBB22_66
# %bb.56:
	ld.bu	$a2, $a1, 7
	ld.bu	$a3, $a0, 7
	bne	$a2, $a3, .LBB22_66
# %bb.57:
	ld.bu	$a2, $a1, 8
	ld.bu	$a3, $a0, 8
	bne	$a2, $a3, .LBB22_66
# %bb.58:
	ld.bu	$a2, $a1, 9
	ld.bu	$a3, $a0, 9
	bne	$a2, $a3, .LBB22_66
# %bb.59:
	ld.bu	$a2, $a1, 10
	ld.bu	$a3, $a0, 10
	bne	$a2, $a3, .LBB22_66
# %bb.60:
	ld.bu	$a2, $a1, 11
	ld.bu	$a3, $a0, 11
	bne	$a2, $a3, .LBB22_66
# %bb.61:
	ld.bu	$a2, $a1, 12
	ld.bu	$a3, $a0, 12
	bne	$a2, $a3, .LBB22_66
# %bb.62:
	ld.bu	$a2, $a1, 13
	ld.bu	$a3, $a0, 13
	bne	$a2, $a3, .LBB22_66
# %bb.63:
	ld.bu	$a2, $a1, 14
	ld.bu	$a3, $a0, 14
	bne	$a2, $a3, .LBB22_66
# %bb.64:                               # %_ZeqRK4GUIDS1_.exit71
	ld.bu	$a2, $a1, 15
	ld.bu	$a0, $a0, 15
	bne	$a2, $a0, .LBB22_66
# %bb.65:
	addi.d	$a0, $fp, 16
	b	.LBB22_68
.LBB22_66:                              # %_ZeqRK4GUIDS1_.exit71.thread
	pcalau12i	$a0, %got_pc_hi20(IID_IOutArchive)
	ld.d	$a2, $a0, %got_pc_lo12(IID_IOutArchive)
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZeqRK4GUIDS1_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_69
# %bb.67:
	addi.d	$a0, $fp, 24
.LBB22_68:                              # %.sink.split
	ld.d	$a1, $fp, 0
	st.d	$a0, $s0, 0
	ld.d	$a1, $a1, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $zero
	b	.LBB22_70
.LBB22_69:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
.LBB22_70:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end22-_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NTar8CHandler6AddRefEv,"axG",@progbits,_ZN8NArchive4NTar8CHandler6AddRefEv,comdat
	.weak	_ZN8NArchive4NTar8CHandler6AddRefEv # -- Begin function _ZN8NArchive4NTar8CHandler6AddRefEv
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler6AddRefEv,@function
_ZN8NArchive4NTar8CHandler6AddRefEv:    # @_ZN8NArchive4NTar8CHandler6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 32
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 32
	move	$a0, $a1
	ret
.Lfunc_end23:
	.size	_ZN8NArchive4NTar8CHandler6AddRefEv, .Lfunc_end23-_ZN8NArchive4NTar8CHandler6AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive4NTar8CHandler7ReleaseEv,"axG",@progbits,_ZN8NArchive4NTar8CHandler7ReleaseEv,comdat
	.weak	_ZN8NArchive4NTar8CHandler7ReleaseEv # -- Begin function _ZN8NArchive4NTar8CHandler7ReleaseEv
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandler7ReleaseEv,@function
_ZN8NArchive4NTar8CHandler7ReleaseEv:   # @_ZN8NArchive4NTar8CHandler7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 32
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 32
	bnez	$fp, .LBB24_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB24_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	_ZN8NArchive4NTar8CHandler7ReleaseEv, .Lfunc_end24-_ZN8NArchive4NTar8CHandler7ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive4NTar8CHandlerD2Ev,"axG",@progbits,_ZN8NArchive4NTar8CHandlerD2Ev,comdat
	.weak	_ZN8NArchive4NTar8CHandlerD2Ev  # -- Begin function _ZN8NArchive4NTar8CHandlerD2Ev
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandlerD2Ev,@function
_ZN8NArchive4NTar8CHandlerD2Ev:         # @_ZN8NArchive4NTar8CHandlerD2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NTar8CHandlerE)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive4NTar8CHandlerE)
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $a1, 184
	st.d	$a0, $fp, 8
	ld.d	$a0, $fp, 272
	addi.d	$a2, $a1, 248
	st.d	$a2, $fp, 16
	addi.d	$a1, $a1, 312
	st.d	$a1, $fp, 24
	beqz	$a0, .LBB25_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp292:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp293:                               # EH_LABEL
.LBB25_2:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	ld.d	$a0, $fp, 248
	beqz	$a0, .LBB25_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_4:                               # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB25_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_6:                               # %_ZN11CStringBaseIcED2Ev.exit.i
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB25_8
# %bb.7:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_8:                               # %_ZN11CStringBaseIcED2Ev.exit1.i
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB25_10
# %bb.9:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_10:                              # %_ZN11CStringBaseIcED2Ev.exit2.i
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB25_12
# %bb.11:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_12:                              # %_ZN8NArchive4NTar5CItemD2Ev.exit
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB25_14
# %bb.13:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp295:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp296:                               # EH_LABEL
.LBB25_14:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB25_16
# %bb.15:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp298:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp299:                               # EH_LABEL
.LBB25_16:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	st.d	$a0, $fp, 40
.Ltmp301:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.17:                               # %_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB25_18:
.Ltmp300:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_19:
.Ltmp297:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_20:
.Ltmp294:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_21:
.Ltmp303:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN8NArchive4NTar8CHandlerD2Ev, .Lfunc_end25-_ZN8NArchive4NTar8CHandlerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NTar8CHandlerD2Ev,"aG",@progbits,_ZN8NArchive4NTar8CHandlerD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp292-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin8         #     jumps to .Ltmp294
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp293-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp295-.Ltmp293              #   Call between .Ltmp293 and .Ltmp295
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin8         #     jumps to .Ltmp297
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp298-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin8         #     jumps to .Ltmp300
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp301-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin8         #     jumps to .Ltmp303
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp302-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Lfunc_end25-.Ltmp302          #   Call between .Ltmp302 and .Lfunc_end25
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
	.section	.text._ZN8NArchive4NTar8CHandlerD0Ev,"axG",@progbits,_ZN8NArchive4NTar8CHandlerD0Ev,comdat
	.weak	_ZN8NArchive4NTar8CHandlerD0Ev  # -- Begin function _ZN8NArchive4NTar8CHandlerD0Ev
	.p2align	5
	.type	_ZN8NArchive4NTar8CHandlerD0Ev,@function
_ZN8NArchive4NTar8CHandlerD0Ev:         # @_ZN8NArchive4NTar8CHandlerD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8CHandlerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 280
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end26:
	.size	_ZN8NArchive4NTar8CHandlerD0Ev, .Lfunc_end26-_ZN8NArchive4NTar8CHandlerD0Ev
                                        # -- End function
	.section	.text._ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end27:
	.size	_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end27-_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N8NArchive4NTar8CHandler6AddRefEv,"axG",@progbits,_ZThn8_N8NArchive4NTar8CHandler6AddRefEv,comdat
	.weak	_ZThn8_N8NArchive4NTar8CHandler6AddRefEv # -- Begin function _ZThn8_N8NArchive4NTar8CHandler6AddRefEv
	.p2align	5
	.type	_ZThn8_N8NArchive4NTar8CHandler6AddRefEv,@function
_ZThn8_N8NArchive4NTar8CHandler6AddRefEv: # @_ZThn8_N8NArchive4NTar8CHandler6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 24
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 24
	move	$a0, $a1
	ret
.Lfunc_end28:
	.size	_ZThn8_N8NArchive4NTar8CHandler6AddRefEv, .Lfunc_end28-_ZThn8_N8NArchive4NTar8CHandler6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N8NArchive4NTar8CHandler7ReleaseEv,"axG",@progbits,_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv,comdat
	.weak	_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv # -- Begin function _ZThn8_N8NArchive4NTar8CHandler7ReleaseEv
	.p2align	5
	.type	_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv,@function
_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv: # @_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 24
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 24
	bnez	$fp, .LBB29_2
# %bb.1:
	ld.d	$a1, $a0, -8
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -8
	jirl	$ra, $a1, 0
.LBB29_2:                               # %_ZN8NArchive4NTar8CHandler7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end29:
	.size	_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv, .Lfunc_end29-_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N8NArchive4NTar8CHandlerD1Ev,"axG",@progbits,_ZThn8_N8NArchive4NTar8CHandlerD1Ev,comdat
	.weak	_ZThn8_N8NArchive4NTar8CHandlerD1Ev # -- Begin function _ZThn8_N8NArchive4NTar8CHandlerD1Ev
	.p2align	5
	.type	_ZThn8_N8NArchive4NTar8CHandlerD1Ev,@function
_ZThn8_N8NArchive4NTar8CHandlerD1Ev:    # @_ZThn8_N8NArchive4NTar8CHandlerD1Ev
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar8CHandlerD2Ev)
	jr	$t8
.Lfunc_end30:
	.size	_ZThn8_N8NArchive4NTar8CHandlerD1Ev, .Lfunc_end30-_ZThn8_N8NArchive4NTar8CHandlerD1Ev
                                        # -- End function
	.section	.text._ZThn8_N8NArchive4NTar8CHandlerD0Ev,"axG",@progbits,_ZThn8_N8NArchive4NTar8CHandlerD0Ev,comdat
	.weak	_ZThn8_N8NArchive4NTar8CHandlerD0Ev # -- Begin function _ZThn8_N8NArchive4NTar8CHandlerD0Ev
	.p2align	5
	.type	_ZThn8_N8NArchive4NTar8CHandlerD0Ev,@function
_ZThn8_N8NArchive4NTar8CHandlerD0Ev:    # @_ZThn8_N8NArchive4NTar8CHandlerD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8CHandlerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 280
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end31:
	.size	_ZThn8_N8NArchive4NTar8CHandlerD0Ev, .Lfunc_end31-_ZThn8_N8NArchive4NTar8CHandlerD0Ev
                                        # -- End function
	.section	.text._ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end32:
	.size	_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end32-_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8NArchive4NTar8CHandler6AddRefEv,"axG",@progbits,_ZThn16_N8NArchive4NTar8CHandler6AddRefEv,comdat
	.weak	_ZThn16_N8NArchive4NTar8CHandler6AddRefEv # -- Begin function _ZThn16_N8NArchive4NTar8CHandler6AddRefEv
	.p2align	5
	.type	_ZThn16_N8NArchive4NTar8CHandler6AddRefEv,@function
_ZThn16_N8NArchive4NTar8CHandler6AddRefEv: # @_ZThn16_N8NArchive4NTar8CHandler6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 16
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end33:
	.size	_ZThn16_N8NArchive4NTar8CHandler6AddRefEv, .Lfunc_end33-_ZThn16_N8NArchive4NTar8CHandler6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8NArchive4NTar8CHandler7ReleaseEv,"axG",@progbits,_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv,comdat
	.weak	_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv # -- Begin function _ZThn16_N8NArchive4NTar8CHandler7ReleaseEv
	.p2align	5
	.type	_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv,@function
_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv: # @_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 16
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 16
	bnez	$fp, .LBB34_2
# %bb.1:
	ld.d	$a1, $a0, -16
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -16
	jirl	$ra, $a1, 0
.LBB34_2:                               # %_ZN8NArchive4NTar8CHandler7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end34:
	.size	_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv, .Lfunc_end34-_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8NArchive4NTar8CHandlerD1Ev,"axG",@progbits,_ZThn16_N8NArchive4NTar8CHandlerD1Ev,comdat
	.weak	_ZThn16_N8NArchive4NTar8CHandlerD1Ev # -- Begin function _ZThn16_N8NArchive4NTar8CHandlerD1Ev
	.p2align	5
	.type	_ZThn16_N8NArchive4NTar8CHandlerD1Ev,@function
_ZThn16_N8NArchive4NTar8CHandlerD1Ev:   # @_ZThn16_N8NArchive4NTar8CHandlerD1Ev
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar8CHandlerD2Ev)
	jr	$t8
.Lfunc_end35:
	.size	_ZThn16_N8NArchive4NTar8CHandlerD1Ev, .Lfunc_end35-_ZThn16_N8NArchive4NTar8CHandlerD1Ev
                                        # -- End function
	.section	.text._ZThn16_N8NArchive4NTar8CHandlerD0Ev,"axG",@progbits,_ZThn16_N8NArchive4NTar8CHandlerD0Ev,comdat
	.weak	_ZThn16_N8NArchive4NTar8CHandlerD0Ev # -- Begin function _ZThn16_N8NArchive4NTar8CHandlerD0Ev
	.p2align	5
	.type	_ZThn16_N8NArchive4NTar8CHandlerD0Ev,@function
_ZThn16_N8NArchive4NTar8CHandlerD0Ev:   # @_ZThn16_N8NArchive4NTar8CHandlerD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8CHandlerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 280
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end36:
	.size	_ZThn16_N8NArchive4NTar8CHandlerD0Ev, .Lfunc_end36-_ZThn16_N8NArchive4NTar8CHandlerD0Ev
                                        # -- End function
	.section	.text._ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -24
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end37:
	.size	_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end37-_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N8NArchive4NTar8CHandler6AddRefEv,"axG",@progbits,_ZThn24_N8NArchive4NTar8CHandler6AddRefEv,comdat
	.weak	_ZThn24_N8NArchive4NTar8CHandler6AddRefEv # -- Begin function _ZThn24_N8NArchive4NTar8CHandler6AddRefEv
	.p2align	5
	.type	_ZThn24_N8NArchive4NTar8CHandler6AddRefEv,@function
_ZThn24_N8NArchive4NTar8CHandler6AddRefEv: # @_ZThn24_N8NArchive4NTar8CHandler6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end38:
	.size	_ZThn24_N8NArchive4NTar8CHandler6AddRefEv, .Lfunc_end38-_ZThn24_N8NArchive4NTar8CHandler6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N8NArchive4NTar8CHandler7ReleaseEv,"axG",@progbits,_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv,comdat
	.weak	_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv # -- Begin function _ZThn24_N8NArchive4NTar8CHandler7ReleaseEv
	.p2align	5
	.type	_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv,@function
_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv: # @_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB39_2
# %bb.1:
	ld.d	$a1, $a0, -24
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -24
	jirl	$ra, $a1, 0
.LBB39_2:                               # %_ZN8NArchive4NTar8CHandler7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end39:
	.size	_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv, .Lfunc_end39-_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N8NArchive4NTar8CHandlerD1Ev,"axG",@progbits,_ZThn24_N8NArchive4NTar8CHandlerD1Ev,comdat
	.weak	_ZThn24_N8NArchive4NTar8CHandlerD1Ev # -- Begin function _ZThn24_N8NArchive4NTar8CHandlerD1Ev
	.p2align	5
	.type	_ZThn24_N8NArchive4NTar8CHandlerD1Ev,@function
_ZThn24_N8NArchive4NTar8CHandlerD1Ev:   # @_ZThn24_N8NArchive4NTar8CHandlerD1Ev
# %bb.0:
	addi.d	$a0, $a0, -24
	pcaddu18i	$t8, %call36(_ZN8NArchive4NTar8CHandlerD2Ev)
	jr	$t8
.Lfunc_end40:
	.size	_ZThn24_N8NArchive4NTar8CHandlerD1Ev, .Lfunc_end40-_ZThn24_N8NArchive4NTar8CHandlerD1Ev
                                        # -- End function
	.section	.text._ZThn24_N8NArchive4NTar8CHandlerD0Ev,"axG",@progbits,_ZThn24_N8NArchive4NTar8CHandlerD0Ev,comdat
	.weak	_ZThn24_N8NArchive4NTar8CHandlerD0Ev # -- Begin function _ZThn24_N8NArchive4NTar8CHandlerD0Ev
	.p2align	5
	.type	_ZThn24_N8NArchive4NTar8CHandlerD0Ev,@function
_ZThn24_N8NArchive4NTar8CHandlerD0Ev:   # @_ZThn24_N8NArchive4NTar8CHandlerD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar8CHandlerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 280
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end41:
	.size	_ZThn24_N8NArchive4NTar8CHandlerD0Ev, .Lfunc_end41-_ZThn24_N8NArchive4NTar8CHandlerD0Ev
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
.Lfunc_end42:
	.size	__clang_call_terminate, .Lfunc_end42-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN8NArchive4NTar5CItemC2Ev,"axG",@progbits,_ZN8NArchive4NTar5CItemC2Ev,comdat
	.weak	_ZN8NArchive4NTar5CItemC2Ev     # -- Begin function _ZN8NArchive4NTar5CItemC2Ev
	.p2align	5
	.type	_ZN8NArchive4NTar5CItemC2Ev,@function
_ZN8NArchive4NTar5CItemC2Ev:            # @_ZN8NArchive4NTar5CItemC2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 4
	ori	$s0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.b	$zero, $a0, 0
	st.w	$s0, $fp, 12
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 48
.Ltmp304:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $fp, 48
	st.b	$zero, $a0, 0
	st.w	$s0, $fp, 60
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 64
.Ltmp307:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp308:                               # EH_LABEL
# %bb.2:
	move	$s2, $a0
	addi.d	$s1, $fp, 48
	st.d	$a0, $fp, 64
	st.b	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 76
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 80
.Ltmp310:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.3:
	st.d	$a0, $fp, 80
	st.b	$zero, $a0, 0
	st.w	$s0, $fp, 92
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB43_4:
.Ltmp312:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB43_8
# %bb.5:                                # %_ZN11CStringBaseIcED2Ev.exit8
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB43_10
.LBB43_6:                               # %_ZN11CStringBaseIcED2Ev.exit9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB43_7:                               # %.thread
.Ltmp309:                               # EH_LABEL
	move	$s0, $a0
.LBB43_8:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB43_6
	b	.LBB43_10
.LBB43_9:
.Ltmp306:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB43_6
.LBB43_10:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN8NArchive4NTar5CItemC2Ev, .Lfunc_end43-_ZN8NArchive4NTar5CItemC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NTar5CItemC2Ev,"aG",@progbits,_ZN8NArchive4NTar5CItemC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp304-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp304
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin9         #     jumps to .Ltmp306
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin9         #     jumps to .Ltmp309
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin9         #     jumps to .Ltmp312
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Lfunc_end43-.Ltmp311          #   Call between .Ltmp311 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZeqRK4GUIDS1_,"axG",@progbits,_ZeqRK4GUIDS1_,comdat
	.weak	_ZeqRK4GUIDS1_                  # -- Begin function _ZeqRK4GUIDS1_
	.p2align	5
	.type	_ZeqRK4GUIDS1_,@function
_ZeqRK4GUIDS1_:                         # @_ZeqRK4GUIDS1_
# %bb.0:
	ld.bu	$a2, $a0, 0
	ld.bu	$a3, $a1, 0
	bne	$a2, $a3, .LBB44_16
# %bb.1:
	ld.bu	$a2, $a0, 1
	ld.bu	$a3, $a1, 1
	bne	$a2, $a3, .LBB44_16
# %bb.2:
	ld.bu	$a2, $a0, 2
	ld.bu	$a3, $a1, 2
	bne	$a2, $a3, .LBB44_16
# %bb.3:
	ld.bu	$a2, $a0, 3
	ld.bu	$a3, $a1, 3
	bne	$a2, $a3, .LBB44_16
# %bb.4:
	ld.bu	$a2, $a0, 4
	ld.bu	$a3, $a1, 4
	bne	$a2, $a3, .LBB44_16
# %bb.5:
	ld.bu	$a2, $a0, 5
	ld.bu	$a3, $a1, 5
	bne	$a2, $a3, .LBB44_16
# %bb.6:
	ld.bu	$a2, $a0, 6
	ld.bu	$a3, $a1, 6
	bne	$a2, $a3, .LBB44_16
# %bb.7:
	ld.bu	$a2, $a0, 7
	ld.bu	$a3, $a1, 7
	bne	$a2, $a3, .LBB44_16
# %bb.8:
	ld.bu	$a2, $a0, 8
	ld.bu	$a3, $a1, 8
	bne	$a2, $a3, .LBB44_16
# %bb.9:
	ld.bu	$a2, $a0, 9
	ld.bu	$a3, $a1, 9
	bne	$a2, $a3, .LBB44_16
# %bb.10:
	ld.bu	$a2, $a0, 10
	ld.bu	$a3, $a1, 10
	bne	$a2, $a3, .LBB44_16
# %bb.11:
	ld.bu	$a2, $a0, 11
	ld.bu	$a3, $a1, 11
	bne	$a2, $a3, .LBB44_16
# %bb.12:
	ld.bu	$a2, $a0, 12
	ld.bu	$a3, $a1, 12
	bne	$a2, $a3, .LBB44_16
# %bb.13:
	ld.bu	$a2, $a0, 13
	ld.bu	$a3, $a1, 13
	bne	$a2, $a3, .LBB44_16
# %bb.14:
	ld.bu	$a2, $a0, 14
	ld.bu	$a3, $a1, 14
	bne	$a2, $a3, .LBB44_16
# %bb.15:
	ld.bu	$a0, $a0, 15
	ld.bu	$a1, $a1, 15
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.LBB44_16:
	move	$a0, $zero
	ret
.Lfunc_end44:
	.size	_ZeqRK4GUIDS1_, .Lfunc_end44-_ZeqRK4GUIDS1_
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev,@function
_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev: # @_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE+16)
	st.d	$a0, $fp, 0
.Ltmp313:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev.exit
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
.Ltmp315:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev, .Lfunc_end45-_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp313-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp314-.Ltmp313              #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin10        #     jumps to .Ltmp315
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp314-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end45-.Ltmp314          #   Call between .Ltmp314 and .Lfunc_end45
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
	.section	.text._ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii
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
	blez	$s1, .LBB46_13
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB46_4
	.p2align	4, , 16
.LBB46_2:                               # %_ZN8NArchive4NTar5CItemD2Ev.exit
                                        #   in Loop: Header=BB46_4 Depth=1
	ori	$a1, $zero, 128
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB46_3:                               #   in Loop: Header=BB46_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB46_13
.LBB46_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB46_3
# %bb.5:                                #   in Loop: Header=BB46_4 Depth=1
	ld.d	$a0, $s2, 80
	beqz	$a0, .LBB46_7
# %bb.6:                                #   in Loop: Header=BB46_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB46_7:                               # %_ZN11CStringBaseIcED2Ev.exit.i
                                        #   in Loop: Header=BB46_4 Depth=1
	ld.d	$a0, $s2, 64
	beqz	$a0, .LBB46_9
# %bb.8:                                #   in Loop: Header=BB46_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB46_9:                               # %_ZN11CStringBaseIcED2Ev.exit1.i
                                        #   in Loop: Header=BB46_4 Depth=1
	ld.d	$a0, $s2, 48
	beqz	$a0, .LBB46_11
# %bb.10:                               #   in Loop: Header=BB46_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB46_11:                              # %_ZN11CStringBaseIcED2Ev.exit2.i
                                        #   in Loop: Header=BB46_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB46_2
# %bb.12:                               #   in Loop: Header=BB46_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB46_2
.LBB46_13:                              # %._crit_edge
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
.Lfunc_end46:
	.size	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii, .Lfunc_end46-_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NTar5CItemC2ERKS1_,"axG",@progbits,_ZN8NArchive4NTar5CItemC2ERKS1_,comdat
	.weak	_ZN8NArchive4NTar5CItemC2ERKS1_ # -- Begin function _ZN8NArchive4NTar5CItemC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive4NTar5CItemC2ERKS1_,@function
_ZN8NArchive4NTar5CItemC2ERKS1_:        # @_ZN8NArchive4NTar5CItemC2ERKS1_
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	bgez	$a0, .LBB47_2
# %bb.1:
	move	$a0, $zero
	b	.LBB47_3
.LBB47_2:
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	st.d	$a0, $fp, 0
	st.b	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB47_3:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB47_4:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB47_4
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
	bgez	$a0, .LBB47_7
# %bb.6:
	move	$s1, $zero
	b	.LBB47_9
.LBB47_7:
	addi.w	$a0, $s3, 0
.Ltmp316:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.8:                                # %.noexc
	move	$s1, $a0
	st.d	$a0, $fp, 48
	st.b	$zero, $a0, 0
	st.w	$s3, $fp, 60
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
.LBB47_9:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i12
	ld.d	$a0, $s0, 48
	move	$a1, $zero
	addi.d	$s3, $fp, 48
	.p2align	4, , 16
.LBB47_10:                              # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $a0, $a1
	stx.b	$a2, $s1, $a1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB47_10
# %bb.11:
	st.w	$s2, $fp, 56
	vst	$vr1, $fp, 64
	ld.wu	$s4, $s0, 72
	addi.d	$s5, $s4, 1
	slli.d	$a0, $s5, 31
	bgez	$a0, .LBB47_13
# %bb.12:
	move	$s2, $zero
	b	.LBB47_15
.LBB47_13:
	addi.w	$a0, $s5, 0
.Ltmp319:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.14:                               # %.noexc21
	move	$s2, $a0
	st.d	$a0, $fp, 64
	st.b	$zero, $a0, 0
	st.w	$s5, $fp, 76
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
.LBB47_15:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i17
	ld.d	$a0, $s0, 64
	move	$a1, $zero
	.p2align	4, , 16
.LBB47_16:                              # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $a0, $a1
	stx.b	$a2, $s2, $a1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB47_16
# %bb.17:
	st.w	$s4, $fp, 72
	vst	$vr1, $fp, 80
	ld.wu	$s4, $s0, 88
	addi.d	$s5, $s4, 1
	slli.d	$a0, $s5, 31
	bgez	$a0, .LBB47_19
# %bb.18:
	move	$a0, $zero
	b	.LBB47_21
.LBB47_19:
	addi.w	$a0, $s5, 0
.Ltmp322:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.20:                               # %.noexc27
	st.d	$a0, $fp, 80
	st.b	$zero, $a0, 0
	st.w	$s5, $fp, 92
.LBB47_21:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i23
	ld.d	$a1, $s0, 80
	.p2align	4, , 16
.LBB47_22:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB47_22
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
.LBB47_24:
.Ltmp324:                               # EH_LABEL
	move	$s0, $a0
	bnez	$s2, .LBB47_28
# %bb.25:                               # %_ZN11CStringBaseIcED2Ev.exit
	bnez	$s1, .LBB47_30
.LBB47_26:                              # %_ZN11CStringBaseIcED2Ev.exit29
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB47_32
.LBB47_27:                              # %_ZN11CStringBaseIcED2Ev.exit30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB47_28:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, 0
	beqz	$s1, .LBB47_26
	b	.LBB47_30
.LBB47_29:
.Ltmp321:                               # EH_LABEL
	move	$s0, $a0
	beqz	$s1, .LBB47_26
.LBB47_30:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB47_27
	b	.LBB47_32
.LBB47_31:
.Ltmp318:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB47_27
.LBB47_32:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN8NArchive4NTar5CItemC2ERKS1_, .Lfunc_end47-_ZN8NArchive4NTar5CItemC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NTar5CItemC2ERKS1_,"aG",@progbits,_ZN8NArchive4NTar5CItemC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp316-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp316
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin11        #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin11        #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin11        #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Lfunc_end47-.Ltmp323          #   Call between .Ltmp323 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK11CStringBaseIwE3MidEii,"axG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.weak	_ZNK11CStringBaseIwE3MidEii     # -- Begin function _ZNK11CStringBaseIwE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIwE3MidEii,@function
_ZNK11CStringBaseIwE3MidEii:            # @_ZNK11CStringBaseIwE3MidEii
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	move	$s0, $a1
	ld.w	$s2, $a1, 8
	move	$s1, $a2
	move	$fp, $a0
	add.w	$a0, $a3, $a2
	slt	$a0, $s2, $a0
	sub.w	$a1, $s2, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$s4, $a1, $a0
	bnez	$a2, .LBB48_4
# %bb.1:
	bne	$s4, $s2, .LBB48_4
# %bb.2:
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB48_13
# %bb.3:
	move	$a0, $zero
	b	.LBB48_14
.LBB48_4:
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	addi.w	$s5, $s4, 1
	st.w	$a1, $fp, 12
	beq	$s5, $a1, .LBB48_7
# %bb.5:
	move	$s2, $a0
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp325:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	st.d	$s3, $fp, 0
	st.w	$zero, $s3, 0
	st.w	$s5, $fp, 12
	blez	$s4, .LBB48_12
.LBB48_7:                               # %.lr.ph
	ld.d	$a2, $s0, 0
	ori	$a3, $zero, 8
	alsl.d	$a1, $s1, $a2, 2
	bltu	$s4, $a3, .LBB48_9
# %bb.8:                                # %vector.memcheck
	alsl.d	$a2, $s1, $a2, 2
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB48_18
.LBB48_9:
	move	$a2, $zero
.LBB48_10:                              # %scalar.ph.preheader
	slli.d	$a3, $a2, 2
	.p2align	4, , 16
.LBB48_11:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a1, $a3
	stx.w	$a4, $a0, $a3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bltu	$a2, $s4, .LBB48_11
.LBB48_12:                              # %._crit_edge
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	b	.LBB48_17
.LBB48_13:
	addi.w	$a0, $s1, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s1, $fp, 12
.LBB48_14:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB48_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB48_15
# %bb.16:
	move	$s4, $s2
.LBB48_17:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit
	st.w	$s4, $fp, 8
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
.LBB48_18:                              # %vector.ph
	bstrpick.d	$a2, $s4, 30, 3
	slli.d	$a2, $a2, 3
	move	$a3, $zero
	move	$a4, $a2
	.p2align	4, , 16
.LBB48_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	vldx	$vr0, $a1, $a3
	vld	$vr1, $a5, 16
	add.d	$a5, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a5, 16
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB48_19
# %bb.20:                               # %middle.block
	beq	$a2, $s4, .LBB48_12
	b	.LBB48_10
.LBB48_21:                              # %_ZN11CStringBaseIwED2Ev.exit
.Ltmp327:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end48:
	.size	_ZNK11CStringBaseIwE3MidEii, .Lfunc_end48-_ZNK11CStringBaseIwE3MidEii
	.cfi_endproc
	.section	.gcc_except_table._ZNK11CStringBaseIwE3MidEii,"aG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.p2align	2, 0x0
GCC_except_table48:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp325-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin12        #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end48-.Ltmp326          #   Call between .Ltmp326 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZN8NArchive4NTarL6kPropsE,@object # @_ZN8NArchive4NTarL6kPropsE
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
_ZN8NArchive4NTarL6kPropsE:
	.dword	0
	.word	3                               # 0x3
	.half	8                               # 0x8
	.space	2
	.dword	0
	.word	6                               # 0x6
	.half	11                              # 0xb
	.space	2
	.dword	0
	.word	7                               # 0x7
	.half	21                              # 0x15
	.space	2
	.dword	0
	.word	8                               # 0x8
	.half	21                              # 0x15
	.space	2
	.dword	0
	.word	12                              # 0xc
	.half	64                              # 0x40
	.space	2
	.dword	0
	.word	53                              # 0x35
	.half	19                              # 0x13
	.space	2
	.dword	0
	.word	25                              # 0x19
	.half	8                               # 0x8
	.space	2
	.dword	0
	.word	26                              # 0x1a
	.half	8                               # 0x8
	.space	2
	.dword	0
	.word	54                              # 0x36
	.half	8                               # 0x8
	.space	2
	.size	_ZN8NArchive4NTarL6kPropsE, 144

	.type	_ZN8NArchive4NTarL9kArcPropsE,@object # @_ZN8NArchive4NTarL9kArcPropsE
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
_ZN8NArchive4NTarL9kArcPropsE:
	.dword	0
	.word	44                              # 0x2c
	.half	21                              # 0x15
	.space	2
	.dword	0
	.word	45                              # 0x2d
	.half	21                              # 0x15
	.space	2
	.size	_ZN8NArchive4NTarL9kArcPropsE, 32

	.type	.L.str,@object                  # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str:
	.word	46                              # 0x2e
	.word	116                             # 0x74
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str, 20

	.type	_ZTVN8NArchive4NTar8CHandlerE,@object # @_ZTVN8NArchive4NTar8CHandlerE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive4NTar8CHandlerE
	.p2align	3, 0x0
_ZTVN8NArchive4NTar8CHandlerE:
	.dword	0
	.dword	_ZTIN8NArchive4NTar8CHandlerE
	.dword	_ZN8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive4NTar8CHandler6AddRefEv
	.dword	_ZN8NArchive4NTar8CHandler7ReleaseEv
	.dword	_ZN8NArchive4NTar8CHandlerD2Ev
	.dword	_ZN8NArchive4NTar8CHandlerD0Ev
	.dword	_ZN8NArchive4NTar8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
	.dword	_ZN8NArchive4NTar8CHandler5CloseEv
	.dword	_ZN8NArchive4NTar8CHandler16GetNumberOfItemsEPj
	.dword	_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT
	.dword	_ZN8NArchive4NTar8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
	.dword	_ZN8NArchive4NTar8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
	.dword	_ZN8NArchive4NTar8CHandler21GetNumberOfPropertiesEPj
	.dword	_ZN8NArchive4NTar8CHandler15GetPropertyInfoEjPPwPjPt
	.dword	_ZN8NArchive4NTar8CHandler28GetNumberOfArchivePropertiesEPj
	.dword	_ZN8NArchive4NTar8CHandler22GetArchivePropertyInfoEjPPwPjPt
	.dword	_ZN8NArchive4NTar8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.dword	_ZN8NArchive4NTar8CHandler15GetFileTimeTypeEPj
	.dword	_ZN8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
	.dword	_ZN8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
	.dword	-8
	.dword	_ZTIN8NArchive4NTar8CHandlerE
	.dword	_ZThn8_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn8_N8NArchive4NTar8CHandler6AddRefEv
	.dword	_ZThn8_N8NArchive4NTar8CHandler7ReleaseEv
	.dword	_ZThn8_N8NArchive4NTar8CHandlerD1Ev
	.dword	_ZThn8_N8NArchive4NTar8CHandlerD0Ev
	.dword	_ZThn8_N8NArchive4NTar8CHandler7OpenSeqEP19ISequentialInStream
	.dword	-16
	.dword	_ZTIN8NArchive4NTar8CHandlerE
	.dword	_ZThn16_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn16_N8NArchive4NTar8CHandler6AddRefEv
	.dword	_ZThn16_N8NArchive4NTar8CHandler7ReleaseEv
	.dword	_ZThn16_N8NArchive4NTar8CHandlerD1Ev
	.dword	_ZThn16_N8NArchive4NTar8CHandlerD0Ev
	.dword	_ZThn16_N8NArchive4NTar8CHandler9GetStreamEjPP19ISequentialInStream
	.dword	-24
	.dword	_ZTIN8NArchive4NTar8CHandlerE
	.dword	_ZThn24_N8NArchive4NTar8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn24_N8NArchive4NTar8CHandler6AddRefEv
	.dword	_ZThn24_N8NArchive4NTar8CHandler7ReleaseEv
	.dword	_ZThn24_N8NArchive4NTar8CHandlerD1Ev
	.dword	_ZThn24_N8NArchive4NTar8CHandlerD0Ev
	.dword	_ZThn24_N8NArchive4NTar8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.dword	_ZThn24_N8NArchive4NTar8CHandler15GetFileTimeTypeEPj
	.size	_ZTVN8NArchive4NTar8CHandlerE, 368

	.type	_ZTIN8NArchive4NTar8CHandlerE,@object # @_ZTIN8NArchive4NTar8CHandlerE
	.globl	_ZTIN8NArchive4NTar8CHandlerE
	.p2align	3, 0x0
_ZTIN8NArchive4NTar8CHandlerE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive4NTar8CHandlerE
	.word	1                               # 0x1
	.word	5                               # 0x5
	.dword	_ZTI10IInArchive
	.dword	2                               # 0x2
	.dword	_ZTI15IArchiveOpenSeq
	.dword	2050                            # 0x802
	.dword	_ZTI19IInArchiveGetStream
	.dword	4098                            # 0x1002
	.dword	_ZTI11IOutArchive
	.dword	6146                            # 0x1802
	.dword	_ZTI13CMyUnknownImp
	.dword	8194                            # 0x2002
	.size	_ZTIN8NArchive4NTar8CHandlerE, 104

	.type	_ZTSN8NArchive4NTar8CHandlerE,@object # @_ZTSN8NArchive4NTar8CHandlerE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive4NTar8CHandlerE
_ZTSN8NArchive4NTar8CHandlerE:
	.asciz	"N8NArchive4NTar8CHandlerE"
	.size	_ZTSN8NArchive4NTar8CHandlerE, 26

	.type	_ZTI10IInArchive,@object        # @_ZTI10IInArchive
	.section	.data.rel.ro._ZTI10IInArchive,"awG",@progbits,_ZTI10IInArchive,comdat
	.weak	_ZTI10IInArchive
	.p2align	3, 0x0
_ZTI10IInArchive:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS10IInArchive
	.dword	_ZTI8IUnknown
	.size	_ZTI10IInArchive, 24

	.type	_ZTS10IInArchive,@object        # @_ZTS10IInArchive
	.section	.rodata._ZTS10IInArchive,"aG",@progbits,_ZTS10IInArchive,comdat
	.weak	_ZTS10IInArchive
_ZTS10IInArchive:
	.asciz	"10IInArchive"
	.size	_ZTS10IInArchive, 13

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

	.type	_ZTI15IArchiveOpenSeq,@object   # @_ZTI15IArchiveOpenSeq
	.section	.data.rel.ro._ZTI15IArchiveOpenSeq,"awG",@progbits,_ZTI15IArchiveOpenSeq,comdat
	.weak	_ZTI15IArchiveOpenSeq
	.p2align	3, 0x0
_ZTI15IArchiveOpenSeq:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15IArchiveOpenSeq
	.dword	_ZTI8IUnknown
	.size	_ZTI15IArchiveOpenSeq, 24

	.type	_ZTS15IArchiveOpenSeq,@object   # @_ZTS15IArchiveOpenSeq
	.section	.rodata._ZTS15IArchiveOpenSeq,"aG",@progbits,_ZTS15IArchiveOpenSeq,comdat
	.weak	_ZTS15IArchiveOpenSeq
_ZTS15IArchiveOpenSeq:
	.asciz	"15IArchiveOpenSeq"
	.size	_ZTS15IArchiveOpenSeq, 18

	.type	_ZTI19IInArchiveGetStream,@object # @_ZTI19IInArchiveGetStream
	.section	.data.rel.ro._ZTI19IInArchiveGetStream,"awG",@progbits,_ZTI19IInArchiveGetStream,comdat
	.weak	_ZTI19IInArchiveGetStream
	.p2align	3, 0x0
_ZTI19IInArchiveGetStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19IInArchiveGetStream
	.dword	_ZTI8IUnknown
	.size	_ZTI19IInArchiveGetStream, 24

	.type	_ZTS19IInArchiveGetStream,@object # @_ZTS19IInArchiveGetStream
	.section	.rodata._ZTS19IInArchiveGetStream,"aG",@progbits,_ZTS19IInArchiveGetStream,comdat
	.weak	_ZTS19IInArchiveGetStream
_ZTS19IInArchiveGetStream:
	.asciz	"19IInArchiveGetStream"
	.size	_ZTS19IInArchiveGetStream, 22

	.type	_ZTI11IOutArchive,@object       # @_ZTI11IOutArchive
	.section	.data.rel.ro._ZTI11IOutArchive,"awG",@progbits,_ZTI11IOutArchive,comdat
	.weak	_ZTI11IOutArchive
	.p2align	3, 0x0
_ZTI11IOutArchive:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS11IOutArchive
	.dword	_ZTI8IUnknown
	.size	_ZTI11IOutArchive, 24

	.type	_ZTS11IOutArchive,@object       # @_ZTS11IOutArchive
	.section	.rodata._ZTS11IOutArchive,"aG",@progbits,_ZTS11IOutArchive,comdat
	.weak	_ZTS11IOutArchive
_ZTS11IOutArchive:
	.asciz	"11IOutArchive"
	.size	_ZTS11IOutArchive, 14

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

	.type	_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE,@object # @_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE
	.dword	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NTar7CItemExEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE,@object # @_ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE,@object # @_ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE
_ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE:
	.asciz	"13CObjectVectorIN8NArchive4NTar7CItemExEE"
	.size	_ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE, 42

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

	.data
	.p2align	3, 0x0
.L_ZTIPKc.DW.stub:
	.dword	_ZTIPKc
	.globl	_ZN8NArchive4NTar8CHandlerC1Ev
	.type	_ZN8NArchive4NTar8CHandlerC1Ev,@function
_ZN8NArchive4NTar8CHandlerC1Ev = _ZN8NArchive4NTar8CHandlerC2Ev
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
	.addrsig_sym IID_IArchiveOpenVolumeCallback
	.addrsig_sym _ZTIPKc
	.addrsig_sym _ZTIN8NArchive4NTar8CHandlerE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN8NArchive4NTar8CHandlerE
	.addrsig_sym _ZTI10IInArchive
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS10IInArchive
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI15IArchiveOpenSeq
	.addrsig_sym _ZTS15IArchiveOpenSeq
	.addrsig_sym _ZTI19IInArchiveGetStream
	.addrsig_sym _ZTS19IInArchiveGetStream
	.addrsig_sym _ZTI11IOutArchive
	.addrsig_sym _ZTS11IOutArchive
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym IID_IOutArchive
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive4NTar7CItemExEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive4NTar7CItemExEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
