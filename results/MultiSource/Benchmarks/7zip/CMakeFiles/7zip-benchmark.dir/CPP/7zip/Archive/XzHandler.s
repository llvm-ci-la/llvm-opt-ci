	.file	"XzHandler.cpp"
	.text
	.globl	_ZN8NArchive3NXz8CHandlerC2Ev   # -- Begin function _ZN8NArchive3NXz8CHandlerC2Ev
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandlerC2Ev,@function
_ZN8NArchive3NXz8CHandlerC2Ev:          # @_ZN8NArchive3NXz8CHandlerC2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10IInArchive+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV10IInArchive+16)
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZTV15IArchiveOpenSeq+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV15IArchiveOpenSeq+16)
	st.d	$a0, $s0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV11IOutArchive+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV11IOutArchive+16)
	st.d	$a0, $s0, 16
	pcalau12i	$a0, %pc_hi20(_ZTV14ISetProperties+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV14ISetProperties+16)
	st.d	$a0, $s0, 24
	addi.d	$fp, $s0, 32
	addi.d	$s1, $s0, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s0, 48
	ori	$a0, $zero, 8
	st.d	$a0, $s0, 64
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $s0, 40
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive11COutHandler4InitEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN8NArchive11COutHandlerC2Ev.exit
	st.w	$zero, $s0, 132
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $s0, 0
	addi.d	$a1, $a0, 184
	st.d	$a1, $s0, 8
	addi.d	$a1, $a0, 248
	st.d	$a1, $s0, 16
	addi.d	$a0, $a0, 320
	st.d	$a0, $s0, 24
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 168
.Ltmp3:                                 # EH_LABEL
	ori	$a0, $zero, 4
	ori	$s3, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:
	addi.d	$s1, $s0, 168
	st.d	$a0, $s0, 168
	st.b	$zero, $a0, 0
	st.w	$s3, $s0, 180
	addi.d	$s2, $s0, 208
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 208
	st.w	$s3, $s0, 224
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive11COutHandler4InitEv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.3:                                # %_ZN8NArchive3NXz8CHandler4InitEv.exit
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_4:
.Ltmp8:                                 # EH_LABEL
	ld.d	$a1, $s0, 216
	move	$s0, $a0
	beqz	$a1, .LBB0_6
# %bb.5:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp9:                                 # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp10:                                # EH_LABEL
.LBB0_6:                                # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB0_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp12:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp13:                                # EH_LABEL
.LBB0_8:                                # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB0_13
# %bb.9:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive11COutHandlerD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_10:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_11:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_12:
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
.LBB0_13:                               # %_ZN11CStringBaseIcED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive11COutHandlerD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_14:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN8NArchive3NXz8CHandlerC2Ev, .Lfunc_end0-_ZN8NArchive3NXz8CHandlerC2Ev
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Lfunc_end0-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end0
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
	.section	.text._ZN8NArchive11COutHandlerD2Ev,"axG",@progbits,_ZN8NArchive11COutHandlerD2Ev,comdat
	.weak	_ZN8NArchive11COutHandlerD2Ev   # -- Begin function _ZN8NArchive11COutHandlerD2Ev
	.p2align	5
	.type	_ZN8NArchive11COutHandlerD2Ev,@function
_ZN8NArchive11COutHandlerD2Ev:          # @_ZN8NArchive11COutHandlerD2Ev
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
	addi.d	$fp, $a0, 8
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a1, $a0, 8
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB1_2:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN8NArchive11COutHandlerD2Ev, .Lfunc_end1-_ZN8NArchive11COutHandlerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive11COutHandlerD2Ev,"aG",@progbits,_ZN8NArchive11COutHandlerD2Ev,comdat
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
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end1
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
	.text
	.globl	_ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj # -- Begin function _ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj,@function
_ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj: # @_ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj
# %bb.0:
	ori	$a0, $zero, 3
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	_ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj, .Lfunc_end2-_ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt # -- Begin function _ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt,@function
_ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt: # @_ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt
# %bb.0:
	ori	$a0, $zero, 2
	bgeu	$a0, $a1, .LBB3_2
# %bb.1:
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ret
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive3NXz6kPropsE)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NArchive3NXz6kPropsE)
	alsl.d	$a0, $a1, $a0, 4
	ld.w	$a1, $a0, 8
	ld.h	$a5, $a0, 12
	move	$a0, $zero
	st.w	$a1, $a3, 0
	st.h	$a5, $a4, 0
	st.d	$zero, $a2, 0
	ret
.Lfunc_end3:
	.size	_ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt, .Lfunc_end3-_ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj # -- Begin function _ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj,@function
_ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj: # @_ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj
# %bb.0:
	ori	$a0, $zero, 2
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	_ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj, .Lfunc_end4-_ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt # -- Begin function _ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt,@function
_ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt: # @_ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt
# %bb.0:
	ori	$a0, $zero, 1
	bgeu	$a0, $a1, .LBB5_2
# %bb.1:
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ret
.LBB5_2:
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive3NXz9kArcPropsE)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NArchive3NXz9kArcPropsE)
	alsl.d	$a0, $a1, $a0, 4
	ld.w	$a1, $a0, 8
	ld.h	$a5, $a0, 12
	move	$a0, $zero
	st.w	$a1, $a3, 0
	st.h	$a5, $a4, 0
	st.d	$zero, $a2, 0
	ret
.Lfunc_end5:
	.size	_ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt, .Lfunc_end5-_ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT # -- Begin function _ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT,@function
_ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT: # @_ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a2
	ori	$a2, $zero, 22
	st.w	$zero, $sp, 8
	beq	$a1, $a2, .LBB6_6
# %bb.1:
	ori	$a2, $zero, 44
	beq	$a1, $a2, .LBB6_4
# %bb.2:
	ori	$a2, $zero, 38
	bne	$a1, $a2, .LBB6_8
# %bb.3:
	ld.bu	$a2, $a0, 184
	ori	$a1, $zero, 160
	beqz	$a2, .LBB6_5
	b	.LBB6_8
.LBB6_4:
	ld.d	$a2, $a0, 200
	ori	$a1, $zero, 144
	beqz	$a2, .LBB6_8
.LBB6_5:                                # %.invoke
	ldx.d	$a1, $a0, $a1
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEy)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
	b	.LBB6_8
.LBB6_6:
	ld.w	$a1, $a0, 176
	beqz	$a1, .LBB6_8
# %bb.7:
	ld.d	$a1, $a0, 168
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKc)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
.LBB6_8:
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.9:
.Ltmp31:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.10:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit9
	move	$a0, $zero
.LBB6_11:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_12:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_13:
.Ltmp24:                                # EH_LABEL
	move	$s0, $a1
	move	$fp, $a0
.Ltmp25:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.14:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	addi.w	$s0, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB6_16
# %bb.15:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	b	.LBB6_11
.LBB6_16:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp28:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.17:
.LBB6_18:
.Ltmp30:                                # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_19:
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT, .Lfunc_end6-_ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp20                #   Call between .Ltmp20 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin2          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp25-.Ltmp32                #   Call between .Ltmp32 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin2          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp28-.Ltmp26                #   Call between .Ltmp26 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Lfunc_end6-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end6
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
.Ltmp34:                                # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp34
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj # -- Begin function _ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj,@function
_ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj: # @_ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj
# %bb.0:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	_ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj, .Lfunc_end7-_ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT # -- Begin function _ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT,@function
_ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT: # @_ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a3
	ori	$a1, $zero, 22
	st.w	$zero, $sp, 8
	beq	$a2, $a1, .LBB8_6
# %bb.1:
	ori	$a1, $zero, 8
	beq	$a2, $a1, .LBB8_4
# %bb.2:
	ori	$a1, $zero, 7
	bne	$a2, $a1, .LBB8_8
# %bb.3:
	ld.d	$a2, $a0, 192
	ori	$a1, $zero, 152
	bnez	$a2, .LBB8_5
	b	.LBB8_8
.LBB8_4:
	ld.d	$a2, $a0, 200
	ori	$a1, $zero, 144
	beqz	$a2, .LBB8_8
.LBB8_5:                                # %.invoke
	ldx.d	$a1, $a0, $a1
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEy)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
	b	.LBB8_8
.LBB8_6:
	ld.w	$a1, $a0, 176
	beqz	$a1, .LBB8_8
# %bb.7:
	ld.d	$a1, $a0, 168
.Ltmp35:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantaSEPKc)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
.LBB8_8:
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant6DetachEP14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.9:
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.10:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit10
	move	$a0, $zero
.LBB8_11:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_12:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB8_13:
.Ltmp41:                                # EH_LABEL
	move	$s0, $a1
	move	$fp, $a0
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.14:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	addi.w	$s0, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB8_16
# %bb.15:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	b	.LBB8_11
.LBB8_16:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.17:
.LBB8_18:
.Ltmp47:                                # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_19:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT, .Lfunc_end8-_ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp37-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Ltmp37                #   Call between .Ltmp37 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin3          #     jumps to .Ltmp41
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp48-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp42-.Ltmp49                #   Call between .Ltmp49 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin3          #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp45-.Ltmp43                #   Call between .Ltmp43 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin3          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Lfunc_end8-.Ltmp46            #   Call between .Ltmp46 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp51:                                # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp51
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback # -- Begin function _ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback,@function
_ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback: # @_ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback
# %bb.0:
	pcalau12i	$a2, %pc_hi20(_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy)
	addi.d	$a2, $a2, %pc_lo12(_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy)
	st.d	$a2, $a0, 0
	st.d	$a1, $a0, 8
	st.w	$zero, $a0, 16
	ret
.Lfunc_end9:
	.size	_ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback, .Lfunc_end9-_ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN8NArchive3NXzL20OpenCallbackProgressEPvyy
	.type	_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy,@function
_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy: # @_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a2, 48
	st.d	$a1, $sp, 8
	addi.d	$a2, $sp, 8
	move	$a1, $zero
	jirl	$ra, $a3, 0
	st.w	$a0, $fp, 16
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy, .Lfunc_end10-_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback # -- Begin function _ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback,@function
_ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback: # @_ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
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
	lu12i.w	$a3, 3
	ori	$a3, $a3, 2624
	sub.d	$sp, $sp, $a3
	.cfi_def_cfa_offset 16944
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 392
	add.d	$a0, $sp, $a0
	lu12i.w	$a2, 4
	ori	$a2, $a2, 392
	add.d	$s2, $sp, $a2
	pcaddu18i	$ra, %call36(_ZN17CSeekInStreamWrapC1EP9IInStream)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 336
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(LookToRead_CreateVTable)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 368
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(LookToRead_Init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NArchive3NXzL20OpenCallbackProgressEPvyy)
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 312
	ld.d	$a4, $a1, 48
	st.d	$s1, $sp, 320
	st.w	$zero, $sp, 328
	addi.d	$s3, $s0, 144
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $s3
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB11_2
# %bb.1:
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a0, 40
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB11_4
.LBB11_2:
	move	$s4, $a0
.LBB11_3:
	move	$a0, $s4
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2624
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
.LBB11_4:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(Xzs_Construct)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s0, 136
.Ltmp52:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL7g_Alloc)
	addi.d	$a4, $a0, %pc_lo12(_ZL7g_Alloc)
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 336
	addi.d	$a3, $sp, 312
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Xzs_ReadBackward)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.5:
	ld.d	$a1, $sp, 288
	addi.d	$a2, $a0, -17
	sltui	$a2, $a2, 1
	sltu	$a1, $zero, $a1
	masknez	$a3, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a0, $a0, $a2
	or	$s1, $a0, $a3
	beqz	$s1, .LBB11_12
.LBB11_6:                               # %.thread
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 48
.Ltmp144:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp145:                               # EH_LABEL
# %bb.7:
	move	$s4, $a0
	bnez	$a0, .LBB11_38
# %bb.8:
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN16CSeqInStreamWrapC1EP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.9:
.Ltmp150:                               # EH_LABEL
	lu12i.w	$a0, 4
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(Xz_ReadHeader)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.10:
	beqz	$a0, .LBB11_28
# %bb.11:
	ori	$a0, $zero, 17
	ori	$s4, $zero, 1
	bne	$s1, $a0, .LBB11_29
	b	.LBB11_38
.LBB11_12:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s3, 0
	sub.d	$a0, $a1, $a0
	st.d	$a0, $s3, 0
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(Xzs_GetUnpackSize)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.13:
	st.d	$a0, $s0, 152
	vrepli.d	$vr0, 1
	vst	$vr0, $s0, 192
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(Xzs_GetNumBlocks)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.14:
	st.d	$a0, $s0, 160
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 48
.Ltmp58:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp59:                                # EH_LABEL
# %bb.15:
	move	$s4, $a0
	bnez	$a0, .LBB11_38
# %bb.16:
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 256
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN16CSeqInStreamWrapC1EP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.17:
.Ltmp64:                                # EH_LABEL
	addi.d	$a0, $sp, 286
	addi.d	$a1, $sp, 256
	pcaddu18i	$ra, %call36(Xz_ReadHeader)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.18:
	addi.d	$a1, $s0, 168
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bnez	$a0, .LBB11_22
# %bb.19:
.Ltmp67:                                # EH_LABEL
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 100
	addi.d	$a3, $sp, 96
	pcaddu18i	$ra, %call36(XzBlock_ReadHeader)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.20:
	ld.w	$a1, $sp, 100
	or	$a0, $a0, $a1
	beqz	$a0, .LBB11_39
.LBB11_21:                              # %.loopexit
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
.LBB11_22:
	ld.d	$a1, $sp, 288
	ld.d	$a2, $sp, 304
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXzL14GetCheckStringERK4CXzs)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.23:
.Ltmp141:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.24:
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB11_26
# %bb.25:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_26:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB11_6
# %bb.27:
	move	$s1, $zero
	b	.LBB11_29
.LBB11_28:                              # %.thread184
	move	$s1, $zero
	st.d	$zero, $s0, 136
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 184
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 192
.LBB11_29:                              # %.thread179
.Ltmp153:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z13SResToHRESULTi)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.30:
	move	$s4, $a0
	bnez	$a0, .LBB11_38
# %bb.31:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
.Ltmp156:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp157:                               # EH_LABEL
# %bb.32:                               # %.noexc100
	ld.d	$a0, $s0, 208
	beqz	$a0, .LBB11_34
# %bb.33:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp158:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp159:                               # EH_LABEL
.LBB11_34:
	st.d	$fp, $s0, 208
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
.Ltmp160:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp161:                               # EH_LABEL
# %bb.35:                               # %.noexc104
	ld.d	$a0, $s0, 216
	beqz	$a0, .LBB11_37
# %bb.36:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp162:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp163:                               # EH_LABEL
.LBB11_37:                              # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit
	move	$s4, $zero
	st.d	$fp, $s0, 216
.LBB11_38:
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL7g_Alloc)
	addi.d	$a1, $a0, %pc_lo12(_ZL7g_Alloc)
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(Xzs_Free)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
	b	.LBB11_3
.LBB11_39:
	ld.bu	$a0, $sp, 120
	andi	$a0, $a0, 3
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive3NXzL11g_NamePairsE)
	addi.d	$s1, $a0, %pc_lo12(_ZN8NArchive3NXzL11g_NamePairsE)
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB11_41
.LBB11_40:                              # %_ZN11CStringBaseIcED2Ev.exit
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beq	$a1, $a0, .LBB11_21
.LBB11_41:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_44 Depth 2
                                        #       Child Loop BB11_59 Depth 3
                                        #       Child Loop BB11_55 Depth 3
                                        #       Child Loop BB11_63 Depth 3
                                        #       Child Loop BB11_66 Depth 3
                                        #     Child Loop BB11_84 Depth 2
                                        #     Child Loop BB11_80 Depth 2
                                        #     Child Loop BB11_88 Depth 2
                                        #     Child Loop BB11_92 Depth 2
                                        #     Child Loop BB11_109 Depth 2
                                        #     Child Loop BB11_105 Depth 2
                                        #     Child Loop BB11_113 Depth 2
                                        #     Child Loop BB11_142 Depth 2
                                        #       Child Loop BB11_156 Depth 3
                                        #       Child Loop BB11_152 Depth 3
                                        #       Child Loop BB11_160 Depth 3
                                        #       Child Loop BB11_176 Depth 3
                                        #       Child Loop BB11_173 Depth 3
                                        #       Child Loop BB11_180 Depth 3
                                        #     Child Loop BB11_127 Depth 2
                                        #     Child Loop BB11_202 Depth 2
                                        #     Child Loop BB11_207 Depth 2
                                        #     Child Loop BB11_192 Depth 2
                                        #     Child Loop BB11_197 Depth 2
                                        #     Child Loop BB11_215 Depth 2
                                        #     Child Loop BB11_185 Depth 2
                                        #     Child Loop BB11_238 Depth 2
                                        #     Child Loop BB11_230 Depth 2
                                        #     Child Loop BB11_242 Depth 2
                                        #     Child Loop BB11_246 Depth 2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 88
.Ltmp70:                                # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.42:                               # %.noexc
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s4, $zero
	move	$s8, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	addi.d	$a2, $sp, 128
	add.d	$s3, $a2, $a1
	st.d	$a0, $sp, 80
	st.b	$zero, $a0, 0
	b	.LBB11_44
	.p2align	4, , 16
.LBB11_43:                              #   in Loop: Header=BB11_44 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 9
	beq	$s8, $a0, .LBB11_68
.LBB11_44:                              #   Parent Loop BB11_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_59 Depth 3
                                        #       Child Loop BB11_55 Depth 3
                                        #       Child Loop BB11_63 Depth 3
                                        #       Child Loop BB11_66 Depth 3
	slli.d	$a0, $s8, 4
	ldx.wu	$a0, $s1, $a0
	ld.d	$a1, $s3, 0
	bne	$a1, $a0, .LBB11_43
# %bb.45:                               #   in Loop: Header=BB11_44 Depth=2
	alsl.d	$a0, $s8, $s1, 4
	ld.d	$a1, $sp, 80
	ld.d	$s5, $a0, 8
	st.w	$zero, $sp, 88
	st.b	$zero, $a1, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$s2, $sp, 92
	move	$s4, $a0
	addi.w	$s7, $a0, 1
	bne	$s7, $s2, .LBB11_47
# %bb.46:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i.i
                                        #   in Loop: Header=BB11_44 Depth=2
	ld.d	$s6, $sp, 80
	b	.LBB11_66
	.p2align	4, , 16
.LBB11_47:                              #   in Loop: Header=BB11_44 Depth=2
.Ltmp73:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.48:                               # %.noexc.i
                                        #   in Loop: Header=BB11_44 Depth=2
	move	$s6, $a0
	ld.w	$a1, $sp, 88
	blez	$s2, .LBB11_65
# %bb.49:                               # %.preheader.i.i.i
                                        #   in Loop: Header=BB11_44 Depth=2
	ld.d	$a0, $sp, 80
	blez	$a1, .LBB11_57
# %bb.50:                               # %iter.check402
                                        #   in Loop: Header=BB11_44 Depth=2
	move	$a2, $zero
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB11_62
# %bb.51:                               # %iter.check402
                                        #   in Loop: Header=BB11_44 Depth=2
	sub.d	$a3, $s6, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_62
# %bb.52:                               # %vector.main.loop.iter.check404
                                        #   in Loop: Header=BB11_44 Depth=2
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB11_58
# %bb.53:                               #   in Loop: Header=BB11_44 Depth=2
	move	$a2, $zero
.LBB11_54:                              # %vec.epilog.ph419
                                        #   in Loop: Header=BB11_44 Depth=2
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s6, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB11_55:                              # %vec.epilog.vector.body422
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB11_55
# %bb.56:                               # %vec.epilog.middle.block426
                                        #   in Loop: Header=BB11_44 Depth=2
	bne	$a2, $a1, .LBB11_62
	b	.LBB11_64
.LBB11_57:                              # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB11_44 Depth=2
	bnez	$a0, .LBB11_64
	b	.LBB11_65
.LBB11_58:                              # %vector.ph405
                                        #   in Loop: Header=BB11_44 Depth=2
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s6, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB11_59:                              # %vector.body408
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_59
# %bb.60:                               # %middle.block413
                                        #   in Loop: Header=BB11_44 Depth=2
	beq	$a2, $a1, .LBB11_64
# %bb.61:                               # %vec.epilog.iter.check417
                                        #   in Loop: Header=BB11_44 Depth=2
	bnez	$a3, .LBB11_54
.LBB11_62:                              # %vec.epilog.scalar.ph416.preheader
                                        #   in Loop: Header=BB11_44 Depth=2
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s6, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB11_63:                              # %vec.epilog.scalar.ph416
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB11_63
.LBB11_64:                              # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB11_44 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 88
.LBB11_65:                              #   in Loop: Header=BB11_44 Depth=2
	st.d	$s6, $sp, 80
	stx.b	$zero, $s6, $a1
	st.w	$s7, $sp, 92
	.p2align	4, , 16
.LBB11_66:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s5, 0
	addi.d	$s5, $s5, 1
	addi.d	$a1, $s6, 1
	st.b	$a0, $s6, 0
	move	$s6, $a1
	bnez	$a0, .LBB11_66
# %bb.67:                               # %_ZN11CStringBaseIcEaSEPKc.exit.i
                                        #   in Loop: Header=BB11_44 Depth=2
	st.w	$s4, $sp, 88
	b	.LBB11_43
.LBB11_68:                              #   in Loop: Header=BB11_41 Depth=1
	addi.w	$a0, $s4, 0
	bnez	$a0, .LBB11_94
# %bb.69:                               #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $s3, 0
.Ltmp76:                                # EH_LABEL
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.70:                               #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $sp, 80
	st.w	$zero, $sp, 88
	st.b	$zero, $a0, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$s2, $sp, 92
	move	$s4, $a0
	addi.w	$s6, $a0, 1
	bne	$s6, $s2, .LBB11_72
# %bb.71:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i50.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$s5, $sp, 80
	b	.LBB11_91
.LBB11_72:                              #   in Loop: Header=BB11_41 Depth=1
.Ltmp78:                                # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.73:                               # %.noexc52.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s5, $a0
	ld.w	$a1, $sp, 88
	blez	$s2, .LBB11_90
# %bb.74:                               # %.preheader.i.i40.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $sp, 80
	blez	$a1, .LBB11_82
# %bb.75:                               # %iter.check370
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB11_87
# %bb.76:                               # %iter.check370
                                        #   in Loop: Header=BB11_41 Depth=1
	sub.d	$a3, $s5, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_87
# %bb.77:                               # %vector.main.loop.iter.check372
                                        #   in Loop: Header=BB11_41 Depth=1
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB11_83
# %bb.78:                               #   in Loop: Header=BB11_41 Depth=1
	move	$a2, $zero
.LBB11_79:                              # %vec.epilog.ph387
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s5, $a5
	add.d	$a5, $a0, $a5
.LBB11_80:                              # %vec.epilog.vector.body390
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB11_80
# %bb.81:                               # %vec.epilog.middle.block394
                                        #   in Loop: Header=BB11_41 Depth=1
	bne	$a2, $a1, .LBB11_87
	b	.LBB11_89
.LBB11_82:                              # %._crit_edge.i.i42.i
                                        #   in Loop: Header=BB11_41 Depth=1
	bnez	$a0, .LBB11_89
	b	.LBB11_90
.LBB11_83:                              # %vector.ph373
                                        #   in Loop: Header=BB11_41 Depth=1
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s5, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
.LBB11_84:                              # %vector.body376
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_84
# %bb.85:                               # %middle.block381
                                        #   in Loop: Header=BB11_41 Depth=1
	beq	$a2, $a1, .LBB11_89
# %bb.86:                               # %vec.epilog.iter.check385
                                        #   in Loop: Header=BB11_41 Depth=1
	bnez	$a3, .LBB11_79
.LBB11_87:                              # %vec.epilog.scalar.ph384.preheader
                                        #   in Loop: Header=BB11_41 Depth=1
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s5, $a2
	add.d	$a2, $a0, $a2
.LBB11_88:                              # %vec.epilog.scalar.ph384
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB11_88
.LBB11_89:                              # %._crit_edge.thread.i.i43.i
                                        #   in Loop: Header=BB11_41 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 88
.LBB11_90:                              #   in Loop: Header=BB11_41 Depth=1
	st.d	$s5, $sp, 80
	stx.b	$zero, $s5, $a1
	st.w	$s6, $sp, 92
.LBB11_91:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36.i.preheader
                                        #   in Loop: Header=BB11_41 Depth=1
	lu12i.w	$a0, 4
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	.p2align	4, , 16
.LBB11_92:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36.i
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s5, 1
	st.b	$a1, $s5, 0
	move	$s5, $a2
	bnez	$a1, .LBB11_92
# %bb.93:                               #   in Loop: Header=BB11_41 Depth=1
	st.w	$s4, $sp, 88
.LBB11_94:                              #   in Loop: Header=BB11_41 Depth=1
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB11_250
# %bb.95:                               #   in Loop: Header=BB11_41 Depth=1
	ld.w	$s2, $sp, 92
	nor	$a0, $s4, $zero
	add.w	$a0, $s2, $a0
	bgtz	$a0, .LBB11_116
# %bb.96:                               #   in Loop: Header=BB11_41 Depth=1
	ori	$a1, $zero, 64
	slt	$a1, $a1, $s2
	bstrpick.d	$a2, $s2, 31, 1
	ori	$a3, $zero, 8
	slt	$a3, $a3, $s2
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 16
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	add.w	$a2, $a1, $a0
	slti	$a2, $a2, 1
	ori	$a3, $zero, 1
	sub.d	$a0, $a3, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	addi.w	$s5, $a0, 1
	beq	$s5, $s2, .LBB11_116
# %bb.97:                               #   in Loop: Header=BB11_41 Depth=1
.Ltmp81:                                # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.98:                               # %.noexc163
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $a0
	blez	$s2, .LBB11_115
# %bb.99:                               # %.preheader.i.i.i153
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $sp, 80
	addi.w	$a1, $s4, 0
	blez	$a1, .LBB11_107
# %bb.100:                              # %iter.check338
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB11_112
# %bb.101:                              # %iter.check338
                                        #   in Loop: Header=BB11_41 Depth=1
	sub.d	$a3, $s6, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_112
# %bb.102:                              # %vector.main.loop.iter.check340
                                        #   in Loop: Header=BB11_41 Depth=1
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB11_108
# %bb.103:                              #   in Loop: Header=BB11_41 Depth=1
	move	$a2, $zero
.LBB11_104:                             # %vec.epilog.ph355
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s6, $a5
	add.d	$a5, $a0, $a5
.LBB11_105:                             # %vec.epilog.vector.body358
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB11_105
# %bb.106:                              # %vec.epilog.middle.block362
                                        #   in Loop: Header=BB11_41 Depth=1
	bne	$a2, $a1, .LBB11_112
	b	.LBB11_114
.LBB11_107:                             # %._crit_edge.i.i.i155
                                        #   in Loop: Header=BB11_41 Depth=1
	bnez	$a0, .LBB11_114
	b	.LBB11_115
.LBB11_108:                             # %vector.ph341
                                        #   in Loop: Header=BB11_41 Depth=1
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s6, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
.LBB11_109:                             # %vector.body344
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_109
# %bb.110:                              # %middle.block349
                                        #   in Loop: Header=BB11_41 Depth=1
	beq	$a2, $a1, .LBB11_114
# %bb.111:                              # %vec.epilog.iter.check353
                                        #   in Loop: Header=BB11_41 Depth=1
	bnez	$a3, .LBB11_104
.LBB11_112:                             # %vec.epilog.scalar.ph352.preheader
                                        #   in Loop: Header=BB11_41 Depth=1
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s6, $a2
	add.d	$a2, $a0, $a2
.LBB11_113:                             # %vec.epilog.scalar.ph352
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB11_113
.LBB11_114:                             # %._crit_edge.thread.i.i.i156
                                        #   in Loop: Header=BB11_41 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 88
.LBB11_115:                             #   in Loop: Header=BB11_41 Depth=1
	st.d	$s6, $sp, 80
	addi.w	$a0, $s4, 0
	stx.b	$zero, $s6, $a0
	st.w	$s5, $sp, 92
.LBB11_116:                             #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $sp, 80
	addi.w	$a1, $s4, 0
	ori	$a2, $zero, 58
	stx.b	$a2, $a0, $a1
	ld.w	$a0, $sp, 88
	ld.d	$a1, $sp, 80
	addi.w	$a0, $a0, 1
	st.w	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $s3, 0
	ld.w	$a0, $s3, 8
	ori	$a2, $zero, 33
	bne	$a1, $a2, .LBB11_122
# %bb.117:                              #   in Loop: Header=BB11_41 Depth=1
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB11_122
# %bb.118:                              #   in Loop: Header=BB11_41 Depth=1
	ld.bu	$s2, $s3, 12
	andi	$a0, $s2, 1
	bnez	$a0, .LBB11_133
# %bb.119:                              #   in Loop: Header=BB11_41 Depth=1
	srli.d	$a0, $s2, 1
	addi.d	$a0, $a0, 12
.Ltmp125:                               # EH_LABEL
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPc)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.120:                              # %.noexc54.i
                                        #   in Loop: Header=BB11_41 Depth=1
	lu12i.w	$a0, 4
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	bgez	$a1, .LBB11_182
# %bb.121:                              #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $zero
	b	.LBB11_184
.LBB11_122:                             #   in Loop: Header=BB11_41 Depth=1
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB11_130
# %bb.123:                              #   in Loop: Header=BB11_41 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_130
# %bb.124:                              #   in Loop: Header=BB11_41 Depth=1
	ld.bu	$a0, $s3, 12
	addi.d	$a0, $a0, 1
.Ltmp93:                                # EH_LABEL
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPc)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.125:                              # %.noexc62.i
                                        #   in Loop: Header=BB11_41 Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	lu12i.w	$a0, 4
	ori	$a0, $a0, 424
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s4, $a0, 1
.Ltmp95:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.126:                              # %.noexc63.i
                                        #   in Loop: Header=BB11_41 Depth=1
	lu12i.w	$a1, 4
	ori	$a1, $a1, 424
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	st.b	$zero, $a0, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 436
	add.d	$a1, $sp, $a1
	st.w	$s4, $a1, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB11_127:                             # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i58.i
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB11_127
# %bb.128:                              #   in Loop: Header=BB11_41 Depth=1
	lu12i.w	$a0, 4
	ori	$a0, $a0, 432
	add.d	$a0, $sp, $a0
	st.w	$s3, $a0, 0
.Ltmp98:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	lu12i.w	$a1, 4
	ori	$a1, $a1, 424
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.129:                              #   in Loop: Header=BB11_41 Depth=1
	lu12i.w	$a0, 4
	ori	$a0, $a0, 424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB11_249
	b	.LBB11_250
.LBB11_130:                             #   in Loop: Header=BB11_41 Depth=1
.Ltmp83:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 91
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLEc)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.131:                              # %.preheader.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB11_181
# %bb.132:                              # %.lr.ph.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $zero
	addi.d	$a0, $s3, 12
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB11_142
.LBB11_133:                             #   in Loop: Header=BB11_41 Depth=1
.Ltmp101:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.134:                              # %.noexc56.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s4, $a0
	st.b	$zero, $a0, 0
	srli.d	$a0, $s2, 1
	ori	$a1, $zero, 6
	sll.w	$a0, $a1, $a0
	ori	$a1, $zero, 18
	bltu	$s2, $a1, .LBB11_186
# %bb.135:                              #   in Loop: Header=BB11_41 Depth=1
	bstrpick.d	$a0, $a0, 31, 10
.Ltmp111:                               # EH_LABEL
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPc)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.136:                              # %.noexc.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	lu12i.w	$a0, 4
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s5, $a0, 1
	slli.d	$a0, $s5, 31
	addi.w	$s3, $s5, 0
	bgez	$a0, .LBB11_189
# %bb.137:                              #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $zero
	b	.LBB11_191
.LBB11_138:                             # %._crit_edge.i.i.i108
                                        #   in Loop: Header=BB11_142 Depth=2
	beqz	$a0, .LBB11_140
.LBB11_139:                             # %._crit_edge.thread.i.i.i109
                                        #   in Loop: Header=BB11_142 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s7, $sp, 88
.LBB11_140:                             #   in Loop: Header=BB11_142 Depth=2
	st.d	$s5, $sp, 80
	stx.b	$zero, $s5, $s7
	st.w	$s4, $sp, 92
	.p2align	4, , 16
.LBB11_141:                             # %_ZN8NArchive3NXzL14AddHexToStringER11CStringBaseIcEh.exit.i
                                        #   in Loop: Header=BB11_142 Depth=2
	andi	$a0, $s8, 15
	sltui	$a1, $a0, 10
	ori	$a2, $zero, 3
	bstrins.d	$s8, $a2, 63, 4
	addi.d	$a0, $a0, 55
	ld.d	$a2, $sp, 80
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$a0, $a1, $a0
	stx.b	$a0, $a2, $s7
	ld.w	$a0, $sp, 88
	ld.d	$a1, $sp, 80
	addi.w	$a0, $a0, 1
	st.w	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.wu	$a0, $s3, 8
	addi.d	$s6, $s6, 1
	bgeu	$s6, $a0, .LBB11_181
.LBB11_142:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_156 Depth 3
                                        #       Child Loop BB11_152 Depth 3
                                        #       Child Loop BB11_160 Depth 3
                                        #       Child Loop BB11_176 Depth 3
                                        #       Child Loop BB11_173 Depth 3
                                        #       Child Loop BB11_180 Depth 3
	ld.w	$s7, $sp, 88
	ld.w	$s2, $sp, 92
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$s8, $a0, $s6
	nor	$a0, $s7, $zero
	add.w	$a0, $s2, $a0
	bgtz	$a0, .LBB11_163
# %bb.143:                              #   in Loop: Header=BB11_142 Depth=2
	ori	$a1, $zero, 64
	slt	$a1, $a1, $s2
	bstrpick.d	$a2, $s2, 31, 1
	ori	$a3, $zero, 8
	slt	$a3, $a3, $s2
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 16
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	add.w	$a2, $a1, $a0
	slti	$a2, $a2, 1
	ori	$a3, $zero, 1
	sub.d	$a0, $a3, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	addi.w	$s4, $a0, 1
	beq	$s4, $s2, .LBB11_163
# %bb.144:                              #   in Loop: Header=BB11_142 Depth=2
.Ltmp85:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.145:                              # %.noexc131
                                        #   in Loop: Header=BB11_142 Depth=2
	move	$s5, $a0
	blez	$s2, .LBB11_162
# %bb.146:                              # %.preheader.i.i.i121
                                        #   in Loop: Header=BB11_142 Depth=2
	ld.d	$a0, $sp, 80
	blez	$s7, .LBB11_154
# %bb.147:                              # %iter.check306
                                        #   in Loop: Header=BB11_142 Depth=2
	move	$a1, $zero
	ori	$a2, $zero, 16
	bltu	$s7, $a2, .LBB11_159
# %bb.148:                              # %iter.check306
                                        #   in Loop: Header=BB11_142 Depth=2
	sub.d	$a2, $s5, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB11_159
# %bb.149:                              # %vector.main.loop.iter.check308
                                        #   in Loop: Header=BB11_142 Depth=2
	ori	$a1, $zero, 32
	bgeu	$s7, $a1, .LBB11_155
# %bb.150:                              #   in Loop: Header=BB11_142 Depth=2
	move	$a1, $zero
.LBB11_151:                             # %vec.epilog.ph323
                                        #   in Loop: Header=BB11_142 Depth=2
	move	$a4, $a1
	bstrpick.d	$a1, $s7, 30, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $s5, $a4
	add.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB11_152:                             # %vec.epilog.vector.body326
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB11_152
# %bb.153:                              # %vec.epilog.middle.block330
                                        #   in Loop: Header=BB11_142 Depth=2
	bne	$a1, $s7, .LBB11_159
	b	.LBB11_161
.LBB11_154:                             # %._crit_edge.i.i.i123
                                        #   in Loop: Header=BB11_142 Depth=2
	bnez	$a0, .LBB11_161
	b	.LBB11_162
.LBB11_155:                             # %vector.ph309
                                        #   in Loop: Header=BB11_142 Depth=2
	andi	$a2, $s7, 16
	bstrpick.d	$a1, $s7, 30, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $s5, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB11_156:                             # %vector.body312
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_156
# %bb.157:                              # %middle.block317
                                        #   in Loop: Header=BB11_142 Depth=2
	beq	$a1, $s7, .LBB11_161
# %bb.158:                              # %vec.epilog.iter.check321
                                        #   in Loop: Header=BB11_142 Depth=2
	bnez	$a2, .LBB11_151
.LBB11_159:                             # %vec.epilog.scalar.ph320.preheader
                                        #   in Loop: Header=BB11_142 Depth=2
	sub.d	$a2, $s7, $a1
	add.d	$a3, $s5, $a1
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB11_160:                             # %vec.epilog.scalar.ph320
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB11_160
.LBB11_161:                             # %._crit_edge.thread.i.i.i124
                                        #   in Loop: Header=BB11_142 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s7, $sp, 88
.LBB11_162:                             #   in Loop: Header=BB11_142 Depth=2
	st.d	$s5, $sp, 80
	stx.b	$zero, $s5, $s7
	st.w	$s4, $sp, 92
	.p2align	4, , 16
.LBB11_163:                             # %.noexc66.i
                                        #   in Loop: Header=BB11_142 Depth=2
	sltui	$a0, $s8, 160
	srli.d	$a1, $s8, 4
	addi.d	$a2, $a1, 48
	addi.d	$a1, $a1, 55
	ld.d	$a3, $sp, 80
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	stx.b	$a0, $a3, $s7
	ld.w	$a0, $sp, 88
	ld.d	$a1, $sp, 80
	addi.w	$a0, $a0, 1
	st.w	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.w	$s7, $sp, 88
	ld.w	$s2, $sp, 92
	nor	$a0, $s7, $zero
	add.w	$a0, $s2, $a0
	bgtz	$a0, .LBB11_141
# %bb.164:                              #   in Loop: Header=BB11_142 Depth=2
	ori	$a1, $zero, 64
	slt	$a1, $a1, $s2
	bstrpick.d	$a2, $s2, 31, 1
	ori	$a3, $zero, 8
	slt	$a3, $a3, $s2
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 16
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	add.w	$a2, $a1, $a0
	slti	$a2, $a2, 1
	ori	$a3, $zero, 1
	sub.d	$a0, $a3, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	addi.w	$s4, $a0, 1
	beq	$s4, $s2, .LBB11_141
# %bb.165:                              #   in Loop: Header=BB11_142 Depth=2
.Ltmp87:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.166:                              # %.noexc116
                                        #   in Loop: Header=BB11_142 Depth=2
	move	$s5, $a0
	blez	$s2, .LBB11_140
# %bb.167:                              # %.preheader.i.i.i106
                                        #   in Loop: Header=BB11_142 Depth=2
	ld.d	$a0, $sp, 80
	blez	$s7, .LBB11_138
# %bb.168:                              # %iter.check274
                                        #   in Loop: Header=BB11_142 Depth=2
	move	$a1, $zero
	ori	$a2, $zero, 16
	bltu	$s7, $a2, .LBB11_179
# %bb.169:                              # %iter.check274
                                        #   in Loop: Header=BB11_142 Depth=2
	sub.d	$a2, $s5, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB11_179
# %bb.170:                              # %vector.main.loop.iter.check276
                                        #   in Loop: Header=BB11_142 Depth=2
	ori	$a1, $zero, 32
	bgeu	$s7, $a1, .LBB11_175
# %bb.171:                              #   in Loop: Header=BB11_142 Depth=2
	move	$a1, $zero
.LBB11_172:                             # %vec.epilog.ph291
                                        #   in Loop: Header=BB11_142 Depth=2
	move	$a4, $a1
	bstrpick.d	$a1, $s7, 30, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $s5, $a4
	add.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB11_173:                             # %vec.epilog.vector.body294
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB11_173
# %bb.174:                              # %vec.epilog.middle.block298
                                        #   in Loop: Header=BB11_142 Depth=2
	beq	$a1, $s7, .LBB11_139
	b	.LBB11_179
.LBB11_175:                             # %vector.ph277
                                        #   in Loop: Header=BB11_142 Depth=2
	andi	$a2, $s7, 16
	bstrpick.d	$a1, $s7, 30, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $s5, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB11_176:                             # %vector.body280
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_176
# %bb.177:                              # %middle.block285
                                        #   in Loop: Header=BB11_142 Depth=2
	beq	$a1, $s7, .LBB11_139
# %bb.178:                              # %vec.epilog.iter.check289
                                        #   in Loop: Header=BB11_142 Depth=2
	bnez	$a2, .LBB11_172
.LBB11_179:                             # %vec.epilog.scalar.ph288.preheader
                                        #   in Loop: Header=BB11_142 Depth=2
	sub.d	$a2, $s7, $a1
	add.d	$a3, $s5, $a1
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB11_180:                             # %vec.epilog.scalar.ph288
                                        #   Parent Loop BB11_41 Depth=1
                                        #     Parent Loop BB11_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB11_180
	b	.LBB11_139
.LBB11_181:                             # %._crit_edge.i
                                        #   in Loop: Header=BB11_41 Depth=1
.Ltmp90:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 93
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLEc)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
	b	.LBB11_250
.LBB11_182:                             #   in Loop: Header=BB11_41 Depth=1
	addi.w	$a0, $a0, 0
.Ltmp127:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.183:                              # %.noexc55.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $a0
	st.b	$zero, $a0, 0
.LBB11_184:                             # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $zero
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a2, $sp, $a1
	.p2align	4, , 16
.LBB11_185:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $a0, $a2
	stx.b	$a1, $s6, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB11_185
	b	.LBB11_220
.LBB11_186:                             #   in Loop: Header=BB11_41 Depth=1
.Ltmp103:                               # EH_LABEL
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPc)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.187:                              # %.noexc33.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	lu12i.w	$a0, 4
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s5, $a0, 1
	slli.d	$a0, $s5, 31
	addi.w	$s3, $s5, 0
	bgez	$a0, .LBB11_199
# %bb.188:                              #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $zero
	b	.LBB11_201
.LBB11_189:                             #   in Loop: Header=BB11_41 Depth=1
.Ltmp113:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.190:                              # %.noexc24.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $a0
	st.b	$zero, $a0, 0
.LBB11_191:                             # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i20.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $zero
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a2, $sp, $a1
	.p2align	4, , 16
.LBB11_192:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $a0, $a2
	stx.b	$a1, $s6, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB11_192
# %bb.193:                              #   in Loop: Header=BB11_41 Depth=1
	st.b	$zero, $s4, 0
	ori	$a0, $zero, 4
	beq	$s3, $a0, .LBB11_196
# %bb.194:                              #   in Loop: Header=BB11_41 Depth=1
.Ltmp116:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.195:                              #   in Loop: Header=BB11_41 Depth=1
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.b	$zero, $s3, 0
	move	$s4, $s3
.LBB11_196:                             # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB11_197:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s6, $a0
	stx.b	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB11_197
# %bb.198:                              # %_ZN11CStringBaseIcEaSERKS0_.exit.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ori	$s2, $zero, 109
	bnez	$s6, .LBB11_209
	b	.LBB11_210
.LBB11_199:                             #   in Loop: Header=BB11_41 Depth=1
.Ltmp105:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.200:                              # %.noexc34.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $a0
	st.b	$zero, $a0, 0
.LBB11_201:                             # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i29.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $zero
	lu12i.w	$a1, 4
	ori	$a1, $a1, 440
	add.d	$a2, $sp, $a1
	.p2align	4, , 16
.LBB11_202:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $a0, $a2
	stx.b	$a1, $s6, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB11_202
# %bb.203:                              #   in Loop: Header=BB11_41 Depth=1
	st.b	$zero, $s4, 0
	ori	$a0, $zero, 4
	beq	$s3, $a0, .LBB11_206
# %bb.204:                              #   in Loop: Header=BB11_41 Depth=1
.Ltmp108:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.205:                              #   in Loop: Header=BB11_41 Depth=1
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.b	$zero, $s3, 0
	move	$s4, $s3
.LBB11_206:                             # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i37.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB11_207:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s6, $a0
	stx.b	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB11_207
# %bb.208:                              # %_ZN11CStringBaseIcEaSERKS0_.exit54.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ori	$s2, $zero, 107
	beqz	$s6, .LBB11_210
.LBB11_209:                             # %_ZN11CStringBaseIcED2Ev.exit.sink.split.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_210:                             # %_ZN11CStringBaseIcED2Ev.exit.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	addi.w	$s8, $s5, 0
	beqz	$s8, .LBB11_213
# %bb.211:                              #   in Loop: Header=BB11_41 Depth=1
.Ltmp119:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.212:                              # %.noexc61.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s7, $a0
	st.b	$zero, $a0, 0
	b	.LBB11_214
.LBB11_213:                             #   in Loop: Header=BB11_41 Depth=1
	move	$s7, $zero
.LBB11_214:                             # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i57.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB11_215:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s4, $a0
	stx.b	$a1, $s7, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB11_215
# %bb.216:                              # %_ZN11CStringBaseIcEC2ERKS0_.exit.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	nor	$a0, $a1, $zero
	add.w	$a0, $s5, $a0
	addi.w	$s3, $a1, 0
	bgtz	$a0, .LBB11_218
# %bb.217:                              #   in Loop: Header=BB11_41 Depth=1
	ori	$a1, $zero, 64
	slt	$a1, $a1, $s8
	bstrpick.d	$a2, $s5, 31, 1
	ori	$a3, $zero, 8
	slt	$a3, $a3, $s8
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 16
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	add.w	$a2, $a1, $a0
	slti	$a2, $a2, 1
	ori	$a3, $zero, 1
	sub.d	$a0, $a3, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.d	$a0, $s5, $a0
	addi.w	$a0, $a0, 1
	bne	$a0, $s8, .LBB11_232
.LBB11_218:                             #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $s7
.LBB11_219:                             # %_ZN11CStringBaseIcED2Ev.exit62.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	stx.b	$s2, $s6, $s3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$s5, $a0, 1
	stx.b	$zero, $s6, $s5
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_220:                             # %_ZN8NArchive3NXzL17Lzma2PropToStringEi.exit.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.w	$s3, $sp, 88
	ld.w	$s2, $sp, 92
	nor	$a0, $s3, $zero
	add.w	$a0, $s2, $a0
	addi.w	$a1, $s5, 0
	bge	$a0, $a1, .LBB11_245
# %bb.221:                              #   in Loop: Header=BB11_41 Depth=1
	ori	$a2, $zero, 64
	slt	$a2, $a2, $s2
	bstrpick.d	$a3, $s2, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s2
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$a3, $a2, $a0
	slt	$a1, $a3, $a1
	sub.d	$a0, $s5, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	add.d	$a0, $s2, $a0
	addi.w	$s4, $a0, 1
	beq	$s4, $s2, .LBB11_245
# %bb.222:                              #   in Loop: Header=BB11_41 Depth=1
.Ltmp130:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.223:                              # %.noexc147
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s7, $a0
	blez	$s2, .LBB11_244
# %bb.224:                              # %.preheader.i.i.i137
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $sp, 80
	blez	$s3, .LBB11_236
# %bb.225:                              # %iter.check
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a1, $zero
	ori	$a2, $zero, 16
	bltu	$s3, $a2, .LBB11_241
# %bb.226:                              # %iter.check
                                        #   in Loop: Header=BB11_41 Depth=1
	sub.d	$a2, $s7, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB11_241
# %bb.227:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB11_41 Depth=1
	ori	$a1, $zero, 32
	bgeu	$s3, $a1, .LBB11_237
# %bb.228:                              #   in Loop: Header=BB11_41 Depth=1
	move	$a1, $zero
.LBB11_229:                             # %vec.epilog.ph
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 30, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $s7, $a4
	add.d	$a4, $a0, $a4
.LBB11_230:                             # %vec.epilog.vector.body
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB11_230
# %bb.231:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB11_41 Depth=1
	bne	$a1, $s3, .LBB11_241
	b	.LBB11_243
.LBB11_232:                             #   in Loop: Header=BB11_41 Depth=1
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.233:                              # %.noexc72.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$s6, $a0
	blez	$s8, .LBB11_257
# %bb.234:                              # %.preheader.i.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	blez	$s3, .LBB11_255
# %bb.235:                              # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB11_256
.LBB11_236:                             # %._crit_edge.i.i.i139
                                        #   in Loop: Header=BB11_41 Depth=1
	bnez	$a0, .LBB11_243
	b	.LBB11_244
.LBB11_237:                             # %vector.ph
                                        #   in Loop: Header=BB11_41 Depth=1
	andi	$a2, $s3, 16
	bstrpick.d	$a1, $s3, 30, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $s7, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a1
.LBB11_238:                             # %vector.body
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_238
# %bb.239:                              # %middle.block
                                        #   in Loop: Header=BB11_41 Depth=1
	beq	$a1, $s3, .LBB11_243
# %bb.240:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB11_41 Depth=1
	bnez	$a2, .LBB11_229
.LBB11_241:                             # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB11_41 Depth=1
	sub.d	$a2, $s3, $a1
	add.d	$a3, $s7, $a1
	add.d	$a1, $a0, $a1
.LBB11_242:                             # %vec.epilog.scalar.ph
                                        #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB11_242
.LBB11_243:                             # %._crit_edge.thread.i.i.i140
                                        #   in Loop: Header=BB11_41 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 88
.LBB11_244:                             #   in Loop: Header=BB11_41 Depth=1
	st.d	$s7, $sp, 80
	stx.b	$zero, $s7, $s3
	st.w	$s4, $sp, 92
.LBB11_245:                             # %_ZN11CStringBaseIcE10GrowLengthEi.exit.i
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a1, $sp, 80
	move	$a0, $zero
	add.d	$a1, $a1, $s3
	.p2align	4, , 16
.LBB11_246:                             #   Parent Loop BB11_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s6, $a0
	stx.b	$a2, $a1, $a0
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB11_246
# %bb.247:                              #   in Loop: Header=BB11_41 Depth=1
	ld.w	$a0, $sp, 88
	add.d	$a0, $a0, $s5
	st.w	$a0, $sp, 88
	beqz	$s6, .LBB11_250
# %bb.248:                              #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $s6
.LBB11_249:                             # %_ZN8NArchive3NXzL15GetMethodStringERK9CXzFilter.exit
                                        #   in Loop: Header=BB11_41 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_250:                             # %_ZN8NArchive3NXzL15GetMethodStringERK9CXzFilter.exit
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.w	$a0, $s0, 176
	beqz	$a0, .LBB11_252
# %bb.251:                              #   in Loop: Header=BB11_41 Depth=1
.Ltmp133:                               # EH_LABEL
	ori	$a1, $zero, 32
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLEc)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
.LBB11_252:                             # %.noexc94
                                        #   in Loop: Header=BB11_41 Depth=1
.Ltmp135:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.253:                              # %_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_.exit
                                        #   in Loop: Header=BB11_41 Depth=1
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB11_40
# %bb.254:                              #   in Loop: Header=BB11_41 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB11_40
.LBB11_255:                             # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	beqz	$s7, .LBB11_257
.LBB11_256:                             # %._crit_edge.thread.i.i.i.i
                                        #   in Loop: Header=BB11_41 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_257:                             #   in Loop: Header=BB11_41 Depth=1
	stx.b	$zero, $s6, $s3
	b	.LBB11_219
.LBB11_258:
.Ltmp124:                               # EH_LABEL
	move	$fp, $a0
	beqz	$s7, .LBB11_271
# %bb.259:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB11_271
.LBB11_260:
.Ltmp118:                               # EH_LABEL
	b	.LBB11_262
.LBB11_261:
.Ltmp110:                               # EH_LABEL
.LBB11_262:
	move	$fp, $a0
	beqz	$s6, .LBB11_271
# %bb.263:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB11_271
.LBB11_264:
.Ltmp69:                                # EH_LABEL
	b	.LBB11_294
.LBB11_265:
.Ltmp132:                               # EH_LABEL
	move	$fp, $a0
	beqz	$s6, .LBB11_297
# %bb.266:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB11_297
.LBB11_267:
.Ltmp121:                               # EH_LABEL
	b	.LBB11_270
.LBB11_268:
.Ltmp115:                               # EH_LABEL
	b	.LBB11_270
.LBB11_269:
.Ltmp107:                               # EH_LABEL
.LBB11_270:                             # %_ZN11CStringBaseIcED2Ev.exit63.i.i
	move	$fp, $a0
.LBB11_271:                             # %_ZN11CStringBaseIcED2Ev.exit63.i.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB11_297
.LBB11_272:
.Ltmp100:                               # EH_LABEL
	lu12i.w	$a1, 4
	ori	$a1, $a1, 424
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	beqz	$a1, .LBB11_297
# %bb.273:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB11_297
.LBB11_274:
.Ltmp143:                               # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$fp, $a0
	beqz	$a1, .LBB11_299
# %bb.275:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXz7CXzsCPPD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_276:
.Ltmp140:                               # EH_LABEL
	b	.LBB11_294
.LBB11_277:
.Ltmp66:                                # EH_LABEL
	b	.LBB11_294
.LBB11_278:
.Ltmp63:                                # EH_LABEL
	b	.LBB11_294
.LBB11_279:
.Ltmp155:                               # EH_LABEL
	b	.LBB11_294
.LBB11_280:
.Ltmp97:                                # EH_LABEL
	b	.LBB11_296
.LBB11_281:
.Ltmp152:                               # EH_LABEL
	b	.LBB11_294
.LBB11_282:
.Ltmp149:                               # EH_LABEL
	b	.LBB11_294
.LBB11_283:
.Ltmp129:                               # EH_LABEL
	b	.LBB11_296
.LBB11_284:
.Ltmp92:                                # EH_LABEL
	b	.LBB11_296
.LBB11_285:
.Ltmp60:                                # EH_LABEL
	b	.LBB11_294
.LBB11_286:
.Ltmp80:                                # EH_LABEL
	b	.LBB11_296
.LBB11_287:
.Ltmp146:                               # EH_LABEL
	b	.LBB11_294
.LBB11_288:
.Ltmp72:                                # EH_LABEL
	b	.LBB11_294
.LBB11_289:
.Ltmp89:                                # EH_LABEL
	b	.LBB11_296
.LBB11_290:
.Ltmp167:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_291:
.Ltmp137:                               # EH_LABEL
	ld.d	$a1, $sp, 80
	move	$fp, $a0
	beqz	$a1, .LBB11_299
# %bb.292:
	move	$a0, $a1
	b	.LBB11_298
.LBB11_293:
.Ltmp164:                               # EH_LABEL
.LBB11_294:
	move	$fp, $a0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXz7CXzsCPPD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_295:
.Ltmp75:                                # EH_LABEL
.LBB11_296:                             # %.body.i
	move	$fp, $a0
.LBB11_297:                             # %.body.i
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB11_299
.LBB11_298:                             # %.body
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_299:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXz7CXzsCPPD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback, .Lfunc_end11-_ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp52-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp164-.Lfunc_begin4         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin4         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin4         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin4         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp57-.Ltmp54                #   Call between .Ltmp54 and .Ltmp57
	.uleb128 .Ltmp164-.Lfunc_begin4         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin4          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin4          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin4          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin4          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin4         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin4         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp153-.Ltmp142              #   Call between .Ltmp142 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin4         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp163-.Ltmp156              #   Call between .Ltmp156 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin4         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin4         #     jumps to .Ltmp167
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp70-.Lfunc_begin4          # >> Call Site 17 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin4          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin4          # >> Call Site 18 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin4          # >> Call Site 19 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin4          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin4          # >> Call Site 20 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin4          # >> Call Site 21 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp80-.Lfunc_begin4          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin4          # >> Call Site 22 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin4          # >> Call Site 23 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin4          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin4          # >> Call Site 24 <<
	.uleb128 .Ltmp81-.Ltmp79                #   Call between .Ltmp79 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin4          # >> Call Site 25 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp92-.Lfunc_begin4          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin4          # >> Call Site 26 <<
	.uleb128 .Ltmp125-.Ltmp82               #   Call between .Ltmp82 and .Ltmp125
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp129-.Lfunc_begin4         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp93-.Ltmp126               #   Call between .Ltmp126 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin4          # >> Call Site 29 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp97-.Lfunc_begin4          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin4          # >> Call Site 30 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 31 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin4          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin4          # >> Call Site 32 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin4         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 33 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp92-.Lfunc_begin4          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp129-.Lfunc_begin4         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp115-.Lfunc_begin4         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp85-.Ltmp112               #   Call between .Ltmp112 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin4          # >> Call Site 37 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp89-.Lfunc_begin4          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin4          # >> Call Site 38 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin4          # >> Call Site 39 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin4          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin4          # >> Call Site 40 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin4          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin4         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp107-.Lfunc_begin4         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp113-.Ltmp104              #   Call between .Ltmp104 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin4         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin4         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp105-.Ltmp117              #   Call between .Ltmp117 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin4         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin4         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp119-.Ltmp109              #   Call between .Ltmp109 and .Ltmp119
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin4         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp130-.Ltmp120              #   Call between .Ltmp120 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin4         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin4         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin4         # >> Call Site 54 <<
	.uleb128 .Ltmp133-.Ltmp123              #   Call between .Ltmp123 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin4         # >> Call Site 55 <<
	.uleb128 .Ltmp136-.Ltmp133              #   Call between .Ltmp133 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin4         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Lfunc_end11-.Ltmp136          #   Call between .Ltmp136 and .Lfunc_end11
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
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_
	.type	_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_,@function
_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_: # @_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_
	.cfi_startproc
# %bb.0:
	ld.w	$a2, $a0, 8
	beqz	$a2, .LBB12_2
# %bb.1:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	ori	$a1, $zero, 32
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLEc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB12_2:
	pcaddu18i	$t8, %call36(_ZN11CStringBaseIcEpLERKS0_)
	jr	$t8
.Lfunc_end12:
	.size	_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_, .Lfunc_end12-_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN8NArchive3NXzL14GetCheckStringERK4CXzs
	.type	_ZN8NArchive3NXzL14GetCheckStringERK4CXzs,@function
_ZN8NArchive3NXzL14GetCheckStringERK4CXzs: # @_ZN8NArchive3NXzL14GetCheckStringERK4CXzs
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	beqz	$a1, .LBB13_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a0, $zero, 8
	bgeu	$a1, $a0, .LBB13_4
# %bb.2:
	move	$s6, $zero
	move	$a0, $zero
	b	.LBB13_7
.LBB13_3:
	move	$s6, $zero
	b	.LBB13_9
.LBB13_4:                               # %vector.ph
	move	$a0, $a1
	bstrins.d	$a0, $zero, 2, 0
	addi.d	$a3, $a2, 160
	vrepli.b	$vr0, 0
	vrepli.h	$vr1, 15
	move	$a4, $a0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB13_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, -160
	ld.h	$a6, $a3, -120
	ld.h	$a7, $a3, -80
	ld.h	$t0, $a3, -40
	vinsgr2vr.h	$vr3, $a5, 0
	vinsgr2vr.h	$vr3, $a6, 1
	vinsgr2vr.h	$vr3, $a7, 2
	vinsgr2vr.h	$vr3, $t0, 3
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a3, 40
	ld.h	$a7, $a3, 80
	ld.h	$t0, $a3, 120
	vinsgr2vr.h	$vr4, $a5, 0
	vinsgr2vr.h	$vr4, $a6, 1
	vinsgr2vr.h	$vr4, $a7, 2
	vinsgr2vr.h	$vr4, $t0, 3
	vand.v	$vr3, $vr3, $vr1
	vand.v	$vr4, $vr4, $vr1
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vbitset.w	$vr0, $vr0, $vr3
	vbitset.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 320
	bnez	$a4, .LBB13_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr2, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$s6, $vr0, 0
	beq	$a1, $a0, .LBB13_9
.LBB13_7:                               # %.lr.ph.preheader77
	sub.d	$a1, $a1, $a0
	slli.d	$a3, $a0, 5
	alsl.d	$a0, $a0, $a3, 3
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB13_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a0, 0
	andi	$a3, $a3, 15
	sll.w	$a3, $a2, $a3
	or	$s6, $a3, $s6
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 40
	bnez	$a1, .LBB13_8
.LBB13_9:                               # %._crit_edge
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 4
	ori	$s7, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.b	$zero, $a0, 0
	st.w	$s7, $fp, 12
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3052
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive3NXzL7kChecksE)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NArchive3NXzL7kChecksE)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $sp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $zero
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_10:                              #   in Loop: Header=BB13_11 Depth=1
	addi.d	$s0, $s0, 1
	ori	$a0, $zero, 16
	beq	$s0, $a0, .LBB13_63
.LBB13_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_25 Depth 2
                                        #     Child Loop BB13_31 Depth 2
                                        #     Child Loop BB13_47 Depth 2
                                        #     Child Loop BB13_42 Depth 2
                                        #     Child Loop BB13_51 Depth 2
                                        #     Child Loop BB13_55 Depth 2
                                        #     Child Loop BB13_20 Depth 2
	srl.w	$a0, $s6, $s0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB13_10
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=1
	st.d	$zero, $sp, 48
.Ltmp168:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.13:                               #   in Loop: Header=BB13_11 Depth=1
	move	$s1, $a0
	st.d	$a0, $sp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.w	$s7, $sp, 52
	beqz	$a0, .LBB13_17
# %bb.14:                               #   in Loop: Header=BB13_11 Depth=1
.Ltmp171:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPc)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.15:                               # %.noexc29
                                        #   in Loop: Header=BB13_11 Depth=1
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	bgez	$a1, .LBB13_22
# %bb.16:                               #   in Loop: Header=BB13_11 Depth=1
	move	$s1, $zero
	b	.LBB13_24
	.p2align	4, , 16
.LBB13_17:                              #   in Loop: Header=BB13_11 Depth=1
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s2, $a1, $a0
	st.w	$zero, $sp, 48
	st.b	$zero, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s4, $a0, 1
	beq	$s4, $s7, .LBB13_20
# %bb.18:                               #   in Loop: Header=BB13_11 Depth=1
.Ltmp185:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.19:                               #   in Loop: Header=BB13_11 Depth=1
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 48
	st.d	$s5, $sp, 40
	stx.b	$zero, $s5, $a0
	st.w	$s4, $sp, 52
	move	$s1, $s5
	.p2align	4, , 16
.LBB13_20:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s2, 0
	addi.d	$s2, $s2, 1
	addi.d	$a1, $s1, 1
	st.b	$a0, $s1, 0
	move	$s1, $a1
	bnez	$a0, .LBB13_20
# %bb.21:                               # %_ZN11CStringBaseIcEaSEPKc.exit
                                        #   in Loop: Header=BB13_11 Depth=1
	st.w	$s3, $sp, 48
	b	.LBB13_58
.LBB13_22:                              #   in Loop: Header=BB13_11 Depth=1
	addi.w	$a0, $a0, 0
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp174:                               # EH_LABEL
# %bb.23:                               # %.noexc30
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$s1, $a0
	st.b	$zero, $a0, 0
.LBB13_24:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB13_25:                              #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $a0, $s8
	stx.b	$a1, $s1, $a0
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB13_25
# %bb.26:                               #   in Loop: Header=BB13_11 Depth=1
.Ltmp176:                               # EH_LABEL
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.27:                               # %.noexc36
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 3
	ld.w	$s5, $a0, 0
	addi.w	$a0, $s2, 0
	st.w	$a1, $s3, 3
	st.w	$s5, $s3, 0
	blez	$a0, .LBB13_30
# %bb.28:                               #   in Loop: Header=BB13_11 Depth=1
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 8
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.29:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.h	$a0, $a0, 4
	st.h	$a0, $s4, 4
	st.w	$s5, $s4, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.b	$zero, $s4, 6
	move	$s3, $s4
.LBB13_30:                              # %_ZN11CStringBaseIcE10GrowLengthEi.exit.i
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB13_31:                              #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s1, $a0
	add.d	$a2, $s3, $a0
	st.b	$a1, $a2, 6
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB13_31
# %bb.32:                               #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $sp, 40
	st.w	$zero, $sp, 48
	st.b	$zero, $a0, 0
	ld.w	$s7, $sp, 52
	addi.w	$s5, $s2, 7
	bne	$s5, $s7, .LBB13_34
# %bb.33:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i51
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$s4, $sp, 40
	ori	$s7, $zero, 4
	b	.LBB13_54
.LBB13_34:                              #   in Loop: Header=BB13_11 Depth=1
.Ltmp182:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.35:                               # %.noexc52
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$s4, $a0
	ld.w	$a1, $sp, 48
	blez	$s7, .LBB13_44
# %bb.36:                               # %.preheader.i.i41
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $sp, 40
	blez	$a1, .LBB13_45
# %bb.37:                               # %iter.check
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$a2, $zero
	ori	$s7, $zero, 4
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB13_50
# %bb.38:                               # %iter.check
                                        #   in Loop: Header=BB13_11 Depth=1
	sub.d	$a3, $s4, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB13_50
# %bb.39:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB13_11 Depth=1
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB13_46
# %bb.40:                               #   in Loop: Header=BB13_11 Depth=1
	move	$a2, $zero
.LBB13_41:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s4, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB13_42:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB13_42
# %bb.43:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB13_11 Depth=1
	bne	$a2, $a1, .LBB13_50
	b	.LBB13_52
.LBB13_44:                              #   in Loop: Header=BB13_11 Depth=1
	ori	$s7, $zero, 4
	b	.LBB13_53
.LBB13_45:                              # %._crit_edge.i.i43
                                        #   in Loop: Header=BB13_11 Depth=1
	ori	$s7, $zero, 4
	bnez	$a0, .LBB13_52
	b	.LBB13_53
.LBB13_46:                              # %vector.ph57
                                        #   in Loop: Header=BB13_11 Depth=1
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s4, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB13_47:                              # %vector.body60
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB13_47
# %bb.48:                               # %middle.block64
                                        #   in Loop: Header=BB13_11 Depth=1
	beq	$a2, $a1, .LBB13_52
# %bb.49:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB13_11 Depth=1
	bnez	$a3, .LBB13_41
.LBB13_50:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s4, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB13_51:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB13_51
.LBB13_52:                              # %._crit_edge.thread.i.i44
                                        #   in Loop: Header=BB13_11 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 48
.LBB13_53:                              #   in Loop: Header=BB13_11 Depth=1
	st.d	$s4, $sp, 40
	stx.b	$zero, $s4, $a1
	st.w	$s5, $sp, 52
.LBB13_54:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i37.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s2, 6
	.p2align	4, , 16
.LBB13_55:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i37
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s3, $a1
	stx.b	$a2, $s4, $a1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB13_55
# %bb.56:                               # %_ZN11CStringBaseIcED2Ev.exit
                                        #   in Loop: Header=BB13_11 Depth=1
	st.w	$a0, $sp, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB13_58
# %bb.57:                               #   in Loop: Header=BB13_11 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_58:                              # %_ZN11CStringBaseIcED2Ev.exit53
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a0, $fp, 8
	beqz	$a0, .LBB13_60
# %bb.59:                               #   in Loop: Header=BB13_11 Depth=1
.Ltmp187:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLEc)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
.LBB13_60:                              # %.noexc56
                                        #   in Loop: Header=BB13_11 Depth=1
.Ltmp189:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.61:                               # %_ZN8NArchive3NXzL9AddStringER11CStringBaseIcERKS2_.exit
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB13_10
# %bb.62:                               #   in Loop: Header=BB13_11 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB13_10
.LBB13_63:
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
.LBB13_64:
.Ltmp184:                               # EH_LABEL
	b	.LBB13_66
.LBB13_65:
.Ltmp181:                               # EH_LABEL
.LBB13_66:                              # %.body
	move	$s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB13_68
.LBB13_67:
.Ltmp178:                               # EH_LABEL
	move	$s0, $a0
.LBB13_68:                              # %.body
	bnez	$s1, .LBB13_72
# %bb.69:                               # %_ZN11CStringBaseIcED2Ev.exit55
	ld.d	$a0, $sp, 40
	bnez	$a0, .LBB13_77
.LBB13_70:                              # %_ZN11CStringBaseIcED2Ev.exit59
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB13_78
.LBB13_71:                              # %_ZN11CStringBaseIcED2Ev.exit60
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_72:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB13_70
	b	.LBB13_77
.LBB13_73:
.Ltmp175:                               # EH_LABEL
	b	.LBB13_76
.LBB13_74:
.Ltmp170:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB13_71
	b	.LBB13_78
.LBB13_75:
.Ltmp191:                               # EH_LABEL
.LBB13_76:                              # %_ZN11CStringBaseIcED2Ev.exit55
	move	$s0, $a0
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB13_70
.LBB13_77:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB13_71
.LBB13_78:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN8NArchive3NXzL14GetCheckStringERK4CXzs, .Lfunc_end13-_ZN8NArchive3NXzL14GetCheckStringERK4CXzs
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp168-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin5         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp175-.Lfunc_begin5         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp185-.Ltmp172              #   Call between .Ltmp172 and .Ltmp185
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp191-.Lfunc_begin5         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp173-.Ltmp186              #   Call between .Ltmp186 and .Ltmp173
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin5         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin5         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin5         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp182-.Ltmp180              #   Call between .Ltmp180 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin5         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp187-.Ltmp183              #   Call between .Ltmp183 and .Ltmp187
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp190-.Ltmp187              #   Call between .Ltmp187 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin5         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Lfunc_end13-.Ltmp190          #   Call between .Ltmp190 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3NXz7CXzsCPPD2Ev,"axG",@progbits,_ZN8NArchive3NXz7CXzsCPPD2Ev,comdat
	.weak	_ZN8NArchive3NXz7CXzsCPPD2Ev    # -- Begin function _ZN8NArchive3NXz7CXzsCPPD2Ev
	.p2align	5
	.type	_ZN8NArchive3NXz7CXzsCPPD2Ev,@function
_ZN8NArchive3NXz7CXzsCPPD2Ev:           # @_ZN8NArchive3NXz7CXzsCPPD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
.Ltmp192:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZL7g_Alloc)
	addi.d	$a1, $a1, %pc_lo12(_ZL7g_Alloc)
	pcaddu18i	$ra, %call36(Xzs_Free)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB14_2:
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN8NArchive3NXz7CXzsCPPD2Ev, .Lfunc_end14-_ZN8NArchive3NXz7CXzsCPPD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3NXz7CXzsCPPD2Ev,"aG",@progbits,_ZN8NArchive3NXz7CXzsCPPD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp192-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin6         #     jumps to .Ltmp194
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp193-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Lfunc_end14-.Ltmp193          #   Call between .Ltmp193 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
	.globl	_ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback # -- Begin function _ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback,@function
_ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback: # @_ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	move	$s0, $a3
	move	$s1, $a1
.Ltmp195:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp196:                               # EH_LABEL
# %bb.1:
.Ltmp197:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXz8CHandler5Open2EP9IInStreamP20IArchiveOpenCallback)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
.LBB15_2:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB15_3:
.Ltmp199:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.Ltmp201:                               # EH_LABEL
	b	.LBB15_2
.LBB15_4:
.Ltmp202:                               # EH_LABEL
	addi.w	$s0, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB15_6
# %bb.5:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	b	.LBB15_2
.LBB15_6:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp203:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.7:
.LBB15_8:
.Ltmp205:                               # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback, .Lfunc_end15-_ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp195-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp198-.Ltmp195              #   Call between .Ltmp195 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin7         #     jumps to .Ltmp199
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp198-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp200-.Ltmp198              #   Call between .Ltmp198 and .Ltmp200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin7         #     jumps to .Ltmp202
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp201-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp203-.Ltmp201              #   Call between .Ltmp201 and .Ltmp203
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin7         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Lfunc_end15-.Ltmp204          #   Call between .Ltmp204 and .Lfunc_end15
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
.Ltmp206:                               # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp206
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream # -- Begin function _ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream,@function
_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream: # @_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
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
	beqz	$s0, .LBB16_2
# %bb.1:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB16_2:
	ld.d	$a0, $fp, 216
	beqz	$a0, .LBB16_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB16_4:                               # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit
	st.d	$s0, $fp, 216
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream, .Lfunc_end16-_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream # -- Begin function _ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
	.p2align	5
	.type	_ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream,@function
_ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream: # @_ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
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
	beqz	$s0, .LBB17_2
# %bb.1:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB17_2:
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB17_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB17_4:                               # %_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream.exit
	st.d	$s0, $fp, 208
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	_ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream, .Lfunc_end17-_ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler5CloseEv # -- Begin function _ZN8NArchive3NXz8CHandler5CloseEv
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler5CloseEv,@function
_ZN8NArchive3NXz8CHandler5CloseEv:      # @_ZN8NArchive3NXz8CHandler5CloseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	st.d	$zero, $a0, 160
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 184
	ld.d	$a0, $fp, 168
	st.w	$zero, $fp, 176
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 192
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB18_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 208
.LBB18_2:                               # %_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit
	ld.d	$a0, $fp, 216
	beqz	$a0, .LBB18_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 216
.LBB18_4:                               # %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end18:
	.size	_ZN8NArchive3NXz8CHandler5CloseEv, .Lfunc_end18-_ZN8NArchive3NXz8CHandler5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj # -- Begin function _ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj
	.p2align	5
	.type	_ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj,@function
_ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj: # @_ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 16
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 40
	jr	$a4
.Lfunc_end19:
	.size	_ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj, .Lfunc_end19-_ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy # -- Begin function _ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy
	.p2align	5
	.type	_ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy,@function
_ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy: # @_ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy
# %bb.0:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	ret
.Lfunc_end20:
	.size	_ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy, .Lfunc_end20-_ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback # -- Begin function _ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback,@function
_ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback: # @_ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -1984
	.cfi_def_cfa_offset 1984
	st.d	$ra, $sp, 1976                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1944                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1928                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1920                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1912                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1896                  # 8-byte Folded Spill
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
	addi.w	$a5, $zero, -1
	move	$s0, $a4
	move	$fp, $a3
	move	$s1, $a0
	beq	$a2, $a5, .LBB21_5
# %bb.1:
	move	$s6, $a2
	beqz	$a2, .LBB21_15
# %bb.2:
	ori	$a0, $zero, 1
	bne	$s6, $a0, .LBB21_4
# %bb.3:
	ld.w	$a0, $a1, 0
	beqz	$a0, .LBB21_5
.LBB21_4:
	lu12i.w	$a0, -524176
	ori	$s6, $a0, 87
	b	.LBB21_15
.LBB21_5:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 144
	ld.d	$a2, $a0, 40
.Ltmp207:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp208:                               # EH_LABEL
# %bb.6:
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	st.d	$zero, $sp, 1888
.Ltmp210:                               # EH_LABEL
	addi.d	$a1, $sp, 1888
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp211:                               # EH_LABEL
# %bb.7:
	move	$s6, $a0
	bnez	$a0, .LBB21_15
# %bb.8:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 56
	st.d	$zero, $sp, 1880
	sltu	$s2, $zero, $fp
.Ltmp213:                               # EH_LABEL
	addi.d	$a2, $sp, 1880
	move	$a0, $s0
	move	$a1, $zero
	move	$a3, $s2
	jirl	$ra, $a4, 0
.Ltmp214:                               # EH_LABEL
# %bb.9:
	move	$s6, $a0
	beqz	$a0, .LBB21_12
.LBB21_10:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	ld.d	$a0, $sp, 1880
	beqz	$a0, .LBB21_15
# %bb.11:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp286:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp287:                               # EH_LABEL
	b	.LBB21_15
.LBB21_12:
	bnez	$fp, .LBB21_16
# %bb.13:
	ld.d	$a0, $sp, 1880
	bnez	$a0, .LBB21_16
# %bb.14:
	move	$s6, $zero
.LBB21_15:
	move	$a0, $s6
	ld.d	$s8, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1912                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1920                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1976                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1984
	ret
.LBB21_16:
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 64
.Ltmp216:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	jirl	$ra, $a2, 0
.Ltmp217:                               # EH_LABEL
# %bb.17:
	ld.d	$a0, $s1, 208
	beqz	$a0, .LBB21_20
# %bb.18:
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s1, 136
	ld.d	$a4, $a2, 48
.Ltmp219:                               # EH_LABEL
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp220:                               # EH_LABEL
# %bb.19:
	move	$s6, $a0
	bnez	$a0, .LBB21_10
.LBB21_20:
.Ltmp222:                               # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.21:
.Ltmp225:                               # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgressC1Ev)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.22:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
.Ltmp228:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp229:                               # EH_LABEL
# %bb.23:                               # %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
.Ltmp231:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress4InitEP9IProgressb)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.24:
.Ltmp234:                               # EH_LABEL
	addi.d	$a0, $sp, 1856
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN21CCompressProgressWrapC1EP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.25:
	st.w	$zero, $sp, 1852
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
	addi.d	$a0, $sp, 56
.Ltmp237:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZL7g_Alloc)
	addi.d	$a1, $a1, %pc_lo12(_ZL7g_Alloc)
	pcaddu18i	$ra, %call36(XzUnpacker_Create)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.26:
	move	$s4, $a0
	beqz	$a0, .LBB21_32
.LBB21_27:                              # %.thread
	ori	$a0, $zero, 17
	bltu	$a0, $s4, .LBB21_58
# %bb.28:                               # %.thread
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s4
	lu12i.w	$a1, 48
	ori	$a1, $a1, 2
	and	$a1, $a0, $a1
	bnez	$a1, .LBB21_53
# %bb.29:                               # %.thread
	andi	$a0, $a0, 9
	bnez	$a0, .LBB21_54
# %bb.30:                               # %.thread
	ori	$a0, $zero, 4
	bne	$s4, $a0, .LBB21_58
# %bb.31:
	ori	$s4, $zero, 1
	b	.LBB21_54
.LBB21_32:
.Ltmp239:                               # EH_LABEL
	lu12i.w	$a0, 8
	pcaddu18i	$ra, %call36(MyAlloc)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.33:
	st.d	$a0, $sp, 40
.Ltmp241:                               # EH_LABEL
	lu12i.w	$s3, 512
	move	$a0, $s3
	pcaddu18i	$ra, %call36(MyAlloc)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.34:
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 48
	ori	$s4, $zero, 2
	beqz	$a1, .LBB21_58
# %bb.35:
	beqz	$a0, .LBB21_58
# %bb.36:                               # %.preheader
	move	$s8, $zero
	move	$s7, $zero
	ld.w	$a0, $sp, 1852
	bne	$s7, $a0, .LBB21_40
.LBB21_37:
	ld.d	$a0, $s1, 216
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 40
	st.w	$zero, $sp, 1852
.Ltmp244:                               # EH_LABEL
	addi.d	$a3, $sp, 1852
	lu12i.w	$a2, 8
	jirl	$ra, $a4, 0
.Ltmp245:                               # EH_LABEL
# %bb.38:
	move	$s6, $a0
	bnez	$a0, .LBB21_60
# %bb.39:                               # %._crit_edge
	ld.w	$a0, $sp, 1852
	ld.d	$a1, $sp, 40
	move	$s7, $zero
.LBB21_40:                              # =>This Inner Loop Header: Depth=1
	sub.d	$a2, $a0, $s7
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $sp, 32
	sub.d	$a2, $s3, $s8
	ld.d	$a3, $sp, 48
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $sp, 24
	bstrpick.d	$a2, $s8, 31, 0
	add.d	$a7, $a3, $a2
	bstrpick.d	$a2, $s7, 31, 0
	add.d	$a3, $a1, $a2
	sltui	$a5, $a0, 1
.Ltmp247:                               # EH_LABEL
	addi.d	$a2, $sp, 24
	addi.d	$a4, $sp, 32
	addi.d	$a6, $sp, 20
	addi.d	$a0, $sp, 56
	move	$a1, $a7
	pcaddu18i	$ra, %call36(XzUnpacker_Code)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB21_40 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 24
	ld.d	$s5, $sp, 32
	vld	$vr0, $fp, 48
	add.w	$a2, $s8, $a0
	vinsgr2vr.d	$vr1, $s5, 0
	vinsgr2vr.d	$vr1, $a0, 1
	vadd.d	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 48
	or	$a0, $a0, $s5
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $s4
	or	$s2, $a0, $a1
	beq	$a2, $s3, .LBB21_44
# %bb.42:                               #   in Loop: Header=BB21_40 Depth=1
	bnez	$s2, .LBB21_44
# %bb.43:                               #   in Loop: Header=BB21_40 Depth=1
	move	$s8, $a2
	b	.LBB21_49
.LBB21_44:                              #   in Loop: Header=BB21_40 Depth=1
	move	$s8, $zero
	beqz	$a2, .LBB21_49
# %bb.45:                               #   in Loop: Header=BB21_40 Depth=1
	ld.d	$a0, $sp, 1880
	beqz	$a0, .LBB21_49
# %bb.46:                               #   in Loop: Header=BB21_40 Depth=1
	ld.d	$a1, $sp, 48
	bstrpick.d	$a2, $a2, 31, 0
.Ltmp250:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.47:                               #   in Loop: Header=BB21_40 Depth=1
	move	$s6, $a0
	bnez	$a0, .LBB21_60
# %bb.48:                               #   in Loop: Header=BB21_40 Depth=1
	move	$s8, $zero
.LBB21_49:                              #   in Loop: Header=BB21_40 Depth=1
	bnez	$s2, .LBB21_64
# %bb.50:                               #   in Loop: Header=BB21_40 Depth=1
.Ltmp253:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress6SetCurEv)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.51:                               #   in Loop: Header=BB21_40 Depth=1
	move	$s6, $a0
	bnez	$a0, .LBB21_60
# %bb.52:                               #   in Loop: Header=BB21_40 Depth=1
	ld.d	$a1, $sp, 40
	add.w	$s7, $s7, $s5
	ld.w	$a0, $sp, 1852
	beq	$s7, $a0, .LBB21_37
	b	.LBB21_40
.LBB21_53:
	ori	$s4, $zero, 2
.LBB21_54:
	ld.d	$a0, $sp, 1880
	beqz	$a0, .LBB21_57
# %bb.55:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp259:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp260:                               # EH_LABEL
# %bb.56:                               # %.noexc
	st.d	$zero, $sp, 1880
.LBB21_57:                              # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 72
.Ltmp261:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s4
	jirl	$ra, $a2, 0
.Ltmp262:                               # EH_LABEL
	b	.LBB21_59
.LBB21_58:                              # %.thread.thread
.Ltmp264:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Z13SResToHRESULTi)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
.LBB21_59:
	move	$s6, $a0
.LBB21_60:                              # %.loopexit
.Ltmp276:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(XzUnpacker_Free)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.61:
	ld.d	$a0, $sp, 40
.Ltmp278:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.62:
	ld.d	$a0, $sp, 48
.Ltmp280:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.63:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp283:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp284:                               # EH_LABEL
	b	.LBB21_10
.LBB21_64:
	vld	$vr0, $fp, 48
	vst	$vr0, $s1, 144
	vrepli.d	$vr0, 1
	vst	$vr0, $s1, 192
	bnez	$s4, .LBB21_27
# %bb.65:
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 3
	ori	$s4, $zero, 1
	bne	$a0, $a1, .LBB21_27
# %bb.66:
.Ltmp256:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(XzUnpacker_IsStreamWasFinished)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.67:
	beqz	$a0, .LBB21_27
# %bb.68:
	ld.d	$a0, $sp, 120
	ld.d	$a1, $s1, 144
	move	$s4, $zero
	sub.d	$a0, $a1, $a0
	st.d	$a0, $s1, 144
	b	.LBB21_27
.LBB21_69:
.Ltmp258:                               # EH_LABEL
	b	.LBB21_86
.LBB21_70:
.Ltmp252:                               # EH_LABEL
	b	.LBB21_86
.LBB21_71:
.Ltmp263:                               # EH_LABEL
	b	.LBB21_86
.LBB21_72:
.Ltmp266:                               # EH_LABEL
	b	.LBB21_86
.LBB21_73:
.Ltmp285:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_74:
.Ltmp236:                               # EH_LABEL
	b	.LBB21_76
.LBB21_75:
.Ltmp233:                               # EH_LABEL
.LBB21_76:
	move	$s0, $a1
	move	$s1, $a0
	b	.LBB21_87
.LBB21_77:
.Ltmp230:                               # EH_LABEL
	b	.LBB21_92
.LBB21_78:
.Ltmp227:                               # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB21_93
.LBB21_79:
.Ltmp224:                               # EH_LABEL
	b	.LBB21_92
.LBB21_80:
.Ltmp221:                               # EH_LABEL
	b	.LBB21_92
.LBB21_81:
.Ltmp246:                               # EH_LABEL
	b	.LBB21_86
.LBB21_82:
.Ltmp218:                               # EH_LABEL
	b	.LBB21_92
.LBB21_83:
.Ltmp243:                               # EH_LABEL
	b	.LBB21_86
.LBB21_84:
.Ltmp255:                               # EH_LABEL
	b	.LBB21_86
.LBB21_85:
.Ltmp249:                               # EH_LABEL
.LBB21_86:
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev)
	jirl	$ra, $ra, 0
.LBB21_87:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp267:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp268:                               # EH_LABEL
	b	.LBB21_93
.LBB21_88:
.Ltmp269:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_89:
.Ltmp282:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_90:
.Ltmp288:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_91:
.Ltmp215:                               # EH_LABEL
.LBB21_92:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit164
	move	$s0, $a1
	move	$s1, $a0
.LBB21_93:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit164
	ld.d	$a0, $sp, 1880
	beqz	$a0, .LBB21_99
# %bb.94:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp270:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp271:                               # EH_LABEL
	b	.LBB21_99
.LBB21_95:
.Ltmp272:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_96:
.Ltmp212:                               # EH_LABEL
	b	.LBB21_98
.LBB21_97:
.Ltmp209:                               # EH_LABEL
.LBB21_98:
	move	$s0, $a1
	move	$s1, $a0
.LBB21_99:
	addi.w	$s0, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB21_101
# %bb.100:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$s6, $a0, 14
	b	.LBB21_15
.LBB21_101:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp273:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.102:
.LBB21_103:
.Ltmp275:                               # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback, .Lfunc_end21-_ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp207-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin8         #     jumps to .Ltmp209
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp210-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin8         #     jumps to .Ltmp212
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp213-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin8         #     jumps to .Ltmp215
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp286-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin8         #     jumps to .Ltmp288
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp216-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin8         #     jumps to .Ltmp218
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp219-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin8         #     jumps to .Ltmp221
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp222-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin8         #     jumps to .Ltmp224
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp225-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin8         #     jumps to .Ltmp227
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp228-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin8         #     jumps to .Ltmp230
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp231-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin8         #     jumps to .Ltmp233
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp234-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin8         #     jumps to .Ltmp236
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp237-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp242-.Ltmp237              #   Call between .Ltmp237 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin8         #     jumps to .Ltmp243
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp244-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin8         #     jumps to .Ltmp246
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp247-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin8         #     jumps to .Ltmp249
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp250-.Lfunc_begin8         # >> Call Site 15 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin8         #     jumps to .Ltmp252
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp253-.Lfunc_begin8         # >> Call Site 16 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin8         #     jumps to .Ltmp255
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp259-.Lfunc_begin8         # >> Call Site 17 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp266-.Lfunc_begin8         #     jumps to .Ltmp266
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp261-.Lfunc_begin8         # >> Call Site 18 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin8         #     jumps to .Ltmp263
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp264-.Lfunc_begin8         # >> Call Site 19 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin8         #     jumps to .Ltmp266
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp276-.Lfunc_begin8         # >> Call Site 20 <<
	.uleb128 .Ltmp281-.Ltmp276              #   Call between .Ltmp276 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin8         #     jumps to .Ltmp282
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp283-.Lfunc_begin8         # >> Call Site 21 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin8         #     jumps to .Ltmp285
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp256-.Lfunc_begin8         # >> Call Site 22 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin8         #     jumps to .Ltmp258
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp257-.Lfunc_begin8         # >> Call Site 23 <<
	.uleb128 .Ltmp267-.Ltmp257              #   Call between .Ltmp257 and .Ltmp267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin8         # >> Call Site 24 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin8         #     jumps to .Ltmp269
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp268-.Lfunc_begin8         # >> Call Site 25 <<
	.uleb128 .Ltmp270-.Ltmp268              #   Call between .Ltmp268 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin8         # >> Call Site 26 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin8         #     jumps to .Ltmp272
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp271-.Lfunc_begin8         # >> Call Site 27 <<
	.uleb128 .Ltmp273-.Ltmp271              #   Call between .Ltmp271 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin8         # >> Call Site 28 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin8         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin8         # >> Call Site 29 <<
	.uleb128 .Lfunc_end21-.Ltmp274          #   Call between .Ltmp274 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp289:                               # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp289
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3NXz14CXzUnpackerCPPD2Ev,"axG",@progbits,_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev,comdat
	.weak	_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev # -- Begin function _ZN8NArchive3NXz14CXzUnpackerCPPD2Ev
	.p2align	5
	.type	_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev,@function
_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev:   # @_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $a0, 16
.Ltmp290:                               # EH_LABEL
	pcaddu18i	$ra, %call36(XzUnpacker_Free)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 0
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 8
.Ltmp294:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB22_4:
.Ltmp296:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev, .Lfunc_end22-_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3NXz14CXzUnpackerCPPD2Ev,"aG",@progbits,_ZN8NArchive3NXz14CXzUnpackerCPPD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp290-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp295-.Ltmp290              #   Call between .Ltmp290 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin9         #     jumps to .Ltmp296
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp295-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end22-.Ltmp295          #   Call between .Ltmp295 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj # -- Begin function _ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj,@function
_ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj: # @_ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj
# %bb.0:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end23:
	.size	_ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj, .Lfunc_end23-_ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj
                                        # -- End function
	.globl	_ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj # -- Begin function _ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj
	.p2align	5
	.type	_ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj,@function
_ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj: # @_ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj
# %bb.0:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj, .Lfunc_end24-_ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback # -- Begin function _ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback,@function
_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback: # @_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN17CSeqOutStreamWrapC1EP20ISequentialOutStream)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu12i.w	$s3, -524176
	beq	$s1, $a0, .LBB25_3
# %bb.1:
	bnez	$s1, .LBB25_23
# %bb.2:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(Xz_EncodeEmpty)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z13SResToHRESULTi)
	jirl	$ra, $ra, 0
	b	.LBB25_5
.LBB25_3:
	beqz	$fp, .LBB25_6
# %bb.4:
	ld.d	$a0, $fp, 0
	ld.d	$a5, $a0, 56
	addi.d	$a2, $sp, 148
	addi.d	$a3, $sp, 144
	addi.d	$a4, $sp, 140
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a5, 0
	beqz	$a0, .LBB25_7
.LBB25_5:
	move	$s1, $a0
	b	.LBB25_24
.LBB25_6:
	lu12i.w	$a0, -524284
	ori	$s1, $a0, 5
	b	.LBB25_24
.LBB25_7:
	ld.w	$a0, $sp, 144
	beqz	$a0, .LBB25_11
# %bb.8:
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 64
	st.w	$zero, $sp, 72
.Ltmp297:                               # EH_LABEL
	ori	$a2, $zero, 6
	addi.d	$a3, $sp, 72
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a4, 0
.Ltmp298:                               # EH_LABEL
# %bb.9:
	move	$s1, $a0
	beqz	$a0, .LBB25_12
# %bb.10:
	move	$s4, $zero
	b	.LBB25_16
.LBB25_11:
	move	$s1, $zero
	b	.LBB25_18
.LBB25_12:
	ld.hu	$a0, $sp, 72
	beqz	$a0, .LBB25_15
# %bb.13:
	move	$s4, $zero
	ori	$a1, $zero, 11
	ori	$s1, $s3, 87
	bne	$a0, $a1, .LBB25_16
# %bb.14:
	ld.hu	$a0, $sp, 80
	bnez	$a0, .LBB25_16
.LBB25_15:
	move	$s1, $zero
	ori	$s4, $zero, 1
.LBB25_16:
.Ltmp303:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.17:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit143
	beqz	$s4, .LBB25_24
.LBB25_18:
	ld.w	$a0, $sp, 148
	beqz	$a0, .LBB25_22
# %bb.19:
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 64
	st.w	$zero, $sp, 72
.Ltmp306:                               # EH_LABEL
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 72
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a4, 0
.Ltmp307:                               # EH_LABEL
# %bb.20:
	beqz	$a0, .LBB25_25
# %bb.21:
	move	$s2, $zero
	move	$s1, $a0
	b	.LBB25_32
.LBB25_22:
	ld.w	$a0, $sp, 140
	beqz	$a0, .LBB25_28
.LBB25_23:
	ori	$s1, $s3, 87
.LBB25_24:
	move	$a0, $s1
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
.LBB25_25:
	ld.hu	$a0, $sp, 72
	ori	$a1, $zero, 21
	bne	$a0, $a1, .LBB25_31
# %bb.26:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 80
	ld.d	$a2, $a0, 40
.Ltmp309:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp310:                               # EH_LABEL
# %bb.27:
	sltui	$s2, $a0, 1
	masknez	$a0, $a0, $s2
	maskeqz	$a1, $s1, $s2
	or	$s1, $a1, $a0
	b	.LBB25_32
.LBB25_28:
	ld.d	$a0, $s0, 208
	beqz	$a0, .LBB25_56
# %bb.29:
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s0, 136
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB25_5
# %bb.30:                               # %._crit_edge
	ld.d	$a0, $s0, 208
	b	.LBB25_57
.LBB25_31:
	move	$s2, $zero
	ori	$s1, $s3, 87
.LBB25_32:
.Ltmp315:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.33:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit144
	beqz	$s2, .LBB25_24
# %bb.34:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(Lzma2EncProps_Init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $s0, 108
	ld.d	$a3, $a0, 72
	st.w	$a1, $sp, 72
	st.d	$zero, $sp, 64
.Ltmp318:                               # EH_LABEL
	addi.d	$a2, $sp, 64
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a3, 0
.Ltmp319:                               # EH_LABEL
# %bb.35:
	move	$s1, $a0
	bnez	$a0, .LBB25_60
# %bb.36:
	ld.d	$a1, $sp, 64
.Ltmp321:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN16CSeqInStreamWrapC1EP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.37:                               # %.preheader162
	ld.w	$a0, $s0, 52
	addi.d	$s2, $s0, 32
	blez	$a0, .LBB25_48
# %bb.38:                               # %.lr.ph167
	move	$s4, $zero
	b	.LBB25_40
.LBB25_39:                              # %.thread
                                        #   in Loop: Header=BB25_40 Depth=1
	ld.w	$a0, $s0, 52
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB25_48
.LBB25_40:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_45 Depth 2
	ld.d	$a0, $s0, 56
	slli.d	$a1, $s4, 3
	ldx.d	$s3, $a0, $a1
	ld.w	$a2, $s0, 32
.Ltmp324:                               # EH_LABEL
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive11COutHandler21SetCompressionMethod2ERNS_14COneMethodInfoEj)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB25_40 Depth=1
.Ltmp326:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNK8NArchive14COneMethodInfo6IsLzmaEv)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.42:                               #   in Loop: Header=BB25_40 Depth=1
	beqz	$a0, .LBB25_39
# %bb.43:                               # %.preheader
                                        #   in Loop: Header=BB25_40 Depth=1
	ld.w	$a0, $s3, 12
	blez	$a0, .LBB25_39
# %bb.44:                               # %.lr.ph
                                        #   in Loop: Header=BB25_40 Depth=1
	move	$s5, $zero
	move	$s6, $zero
.LBB25_45:                              #   Parent Loop BB25_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 16
	ldx.d	$a1, $a0, $s5
	ld.w	$a0, $a1, 0
	addi.d	$a1, $a1, 8
.Ltmp329:                               # EH_LABEL
	addi.d	$a2, $sp, 72
	pcaddu18i	$ra, %call36(_ZN9NCompress6NLzma212SetLzma2PropEjRK14tagPROPVARIANTR14CLzma2EncProps)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.46:                               #   in Loop: Header=BB25_45 Depth=2
	move	$s1, $a0
	bnez	$a0, .LBB25_60
# %bb.47:                               #   in Loop: Header=BB25_45 Depth=2
	ld.w	$a0, $s3, 12
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB25_45
	b	.LBB25_39
.LBB25_48:                              # %.thread159
	ld.w	$a0, $s2, 0
	st.w	$a0, $sp, 132
.Ltmp332:                               # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp333:                               # EH_LABEL
# %bb.49:
.Ltmp335:                               # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgressC1Ev)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.50:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
.Ltmp338:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp339:                               # EH_LABEL
# %bb.51:                               # %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
.Ltmp341:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress4InitEP9IProgressb)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.52:
.Ltmp344:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN21CCompressProgressWrapC1EP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
# %bb.53:
.Ltmp347:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 72
	addi.d	$a4, $sp, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Xz_Encode)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.54:
	beqz	$a0, .LBB25_58
# %bb.55:
.Ltmp349:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z13SResToHRESULTi)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
	b	.LBB25_59
.LBB25_56:
	move	$a0, $zero
.LBB25_57:
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN9NCompress10CopyStreamEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
	b	.LBB25_5
.LBB25_58:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 80
.Ltmp351:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
.Ltmp352:                               # EH_LABEL
.LBB25_59:
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp360:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp361:                               # EH_LABEL
.LBB25_60:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB25_24
# %bb.61:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp363:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp364:                               # EH_LABEL
	b	.LBB25_24
.LBB25_62:
.Ltmp362:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_63:
.Ltmp346:                               # EH_LABEL
	b	.LBB25_69
.LBB25_64:
.Ltmp343:                               # EH_LABEL
	b	.LBB25_69
.LBB25_65:
.Ltmp340:                               # EH_LABEL
	b	.LBB25_84
.LBB25_66:
.Ltmp337:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB25_85
.LBB25_67:
.Ltmp334:                               # EH_LABEL
	b	.LBB25_84
.LBB25_68:
.Ltmp353:                               # EH_LABEL
.LBB25_69:
	move	$fp, $a0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp354:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp355:                               # EH_LABEL
	b	.LBB25_85
.LBB25_70:
.Ltmp356:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_71:
.Ltmp323:                               # EH_LABEL
	b	.LBB25_84
.LBB25_72:
.Ltmp311:                               # EH_LABEL
	b	.LBB25_77
.LBB25_73:
.Ltmp365:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_74:
.Ltmp320:                               # EH_LABEL
	b	.LBB25_84
.LBB25_75:
.Ltmp317:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_76:
.Ltmp308:                               # EH_LABEL
.LBB25_77:
	move	$fp, $a0
.Ltmp312:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
	b	.LBB25_87
.LBB25_78:
.Ltmp314:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_79:
.Ltmp328:                               # EH_LABEL
	b	.LBB25_84
.LBB25_80:
.Ltmp305:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_81:
.Ltmp299:                               # EH_LABEL
	move	$fp, $a0
.Ltmp300:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
	b	.LBB25_87
.LBB25_82:
.Ltmp302:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB25_83:
.Ltmp331:                               # EH_LABEL
.LBB25_84:
	move	$fp, $a0
.LBB25_85:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB25_87
# %bb.86:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp357:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp358:                               # EH_LABEL
.LBB25_87:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB25_88:
.Ltmp359:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback, .Lfunc_end25-_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp297-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp297
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin10        #     jumps to .Ltmp299
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin10        #     jumps to .Ltmp305
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp306-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin10        #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin10        #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp315-.Ltmp310              #   Call between .Ltmp310 and .Ltmp315
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp317-.Lfunc_begin10        #     jumps to .Ltmp317
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp316-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp318-.Ltmp316              #   Call between .Ltmp316 and .Ltmp318
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin10        #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin10        #     jumps to .Ltmp323
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp327-.Ltmp324              #   Call between .Ltmp324 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin10        #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin10        #     jumps to .Ltmp331
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp332-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp334-.Lfunc_begin10        #     jumps to .Ltmp334
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp335-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp336-.Ltmp335              #   Call between .Ltmp335 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin10        #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Ltmp339-.Ltmp338              #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin10        #     jumps to .Ltmp340
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin10        # >> Call Site 16 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin10        #     jumps to .Ltmp343
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin10        # >> Call Site 17 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp346-.Lfunc_begin10        #     jumps to .Ltmp346
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin10        # >> Call Site 18 <<
	.uleb128 .Ltmp350-.Ltmp347              #   Call between .Ltmp347 and .Ltmp350
	.uleb128 .Ltmp353-.Lfunc_begin10        #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin10        # >> Call Site 19 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin10        # >> Call Site 20 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin10        #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin10        # >> Call Site 21 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp362-.Lfunc_begin10        #     jumps to .Ltmp362
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp363-.Lfunc_begin10        # >> Call Site 22 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.uleb128 .Ltmp365-.Lfunc_begin10        #     jumps to .Ltmp365
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp364-.Lfunc_begin10        # >> Call Site 23 <<
	.uleb128 .Ltmp354-.Ltmp364              #   Call between .Ltmp364 and .Ltmp354
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin10        # >> Call Site 24 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin10        #     jumps to .Ltmp356
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp355-.Lfunc_begin10        # >> Call Site 25 <<
	.uleb128 .Ltmp312-.Ltmp355              #   Call between .Ltmp355 and .Ltmp312
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin10        # >> Call Site 26 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin10        #     jumps to .Ltmp314
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp313-.Lfunc_begin10        # >> Call Site 27 <<
	.uleb128 .Ltmp300-.Ltmp313              #   Call between .Ltmp313 and .Ltmp300
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin10        # >> Call Site 28 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin10        #     jumps to .Ltmp302
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp301-.Lfunc_begin10        # >> Call Site 29 <<
	.uleb128 .Ltmp357-.Ltmp301              #   Call between .Ltmp301 and .Ltmp357
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin10        # >> Call Site 30 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp359-.Lfunc_begin10        #     jumps to .Ltmp359
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp358-.Lfunc_begin10        # >> Call Site 31 <<
	.uleb128 .Lfunc_end25-.Ltmp358          #   Call between .Ltmp358 and .Lfunc_end25
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
	.globl	_ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback # -- Begin function _ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.p2align	5
	.type	_ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback,@function
_ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback: # @_ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback)
	jr	$t8
.Lfunc_end26:
	.size	_ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback, .Lfunc_end26-_ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi # -- Begin function _ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi,@function
_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi: # @_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$s2, $a0, 32
.Ltmp366:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive11COutHandler17BeforeSetPropertyEv)
	jirl	$ra, $ra, 0
.Ltmp367:                               # EH_LABEL
# %bb.1:                                # %.preheader
	blez	$fp, .LBB27_5
	.p2align	4, , 16
.LBB27_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
.Ltmp369:                               # EH_LABEL
	move	$a0, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive11COutHandler11SetPropertyEPKwRK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.3:                                #   in Loop: Header=BB27_2 Depth=1
	bnez	$a0, .LBB27_6
# %bb.4:                                #   in Loop: Header=BB27_2 Depth=1
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB27_2
.LBB27_5:
	move	$a0, $zero
.LBB27_6:                               # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB27_7:
.Ltmp368:                               # EH_LABEL
	b	.LBB27_9
.LBB27_8:
.Ltmp371:                               # EH_LABEL
.LBB27_9:
	addi.w	$s0, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB27_11
# %bb.10:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	b	.LBB27_6
.LBB27_11:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp372:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp373:                               # EH_LABEL
# %bb.12:
.LBB27_13:
.Ltmp374:                               # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi, .Lfunc_end27-_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table27:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp366-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin11        #     jumps to .Ltmp368
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp369-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin11        #     jumps to .Ltmp371
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp370-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp372-.Ltmp370              #   Call between .Ltmp370 and .Ltmp372
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp373-.Ltmp372              #   Call between .Ltmp372 and .Ltmp373
	.uleb128 .Ltmp374-.Lfunc_begin11        #     jumps to .Ltmp374
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Lfunc_end27-.Ltmp373          #   Call between .Ltmp373 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp375:                               # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp375
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi # -- Begin function _ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.p2align	5
	.type	_ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi,@function
_ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi: # @_ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -24
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi)
	jr	$t8
.Lfunc_end28:
	.size	_ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi, .Lfunc_end28-_ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
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
	bne	$a3, $a2, .LBB29_16
# %bb.1:
	ld.bu	$a2, $a1, 1
	ld.bu	$a4, $a0, 1
	bne	$a2, $a4, .LBB29_16
# %bb.2:
	ld.bu	$a2, $a1, 2
	ld.bu	$a4, $a0, 2
	bne	$a2, $a4, .LBB29_16
# %bb.3:
	ld.bu	$a2, $a1, 3
	ld.bu	$a4, $a0, 3
	bne	$a2, $a4, .LBB29_16
# %bb.4:
	ld.bu	$a2, $a1, 4
	ld.bu	$a4, $a0, 4
	bne	$a2, $a4, .LBB29_16
# %bb.5:
	ld.bu	$a2, $a1, 5
	ld.bu	$a4, $a0, 5
	bne	$a2, $a4, .LBB29_16
# %bb.6:
	ld.bu	$a2, $a1, 6
	ld.bu	$a4, $a0, 6
	bne	$a2, $a4, .LBB29_16
# %bb.7:
	ld.bu	$a2, $a1, 7
	ld.bu	$a4, $a0, 7
	bne	$a2, $a4, .LBB29_16
# %bb.8:
	ld.bu	$a2, $a1, 8
	ld.bu	$a4, $a0, 8
	bne	$a2, $a4, .LBB29_16
# %bb.9:
	ld.bu	$a2, $a1, 9
	ld.bu	$a4, $a0, 9
	bne	$a2, $a4, .LBB29_16
# %bb.10:
	ld.bu	$a2, $a1, 10
	ld.bu	$a4, $a0, 10
	bne	$a2, $a4, .LBB29_16
# %bb.11:
	ld.bu	$a2, $a1, 11
	ld.bu	$a4, $a0, 11
	bne	$a2, $a4, .LBB29_16
# %bb.12:
	ld.bu	$a2, $a1, 12
	ld.bu	$a4, $a0, 12
	bne	$a2, $a4, .LBB29_16
# %bb.13:
	ld.bu	$a2, $a1, 13
	ld.bu	$a4, $a0, 13
	bne	$a2, $a4, .LBB29_16
# %bb.14:
	ld.bu	$a2, $a1, 14
	ld.bu	$a4, $a0, 14
	bne	$a2, $a4, .LBB29_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a2, $a1, 15
	ld.bu	$a4, $a0, 15
	move	$a0, $fp
	beq	$a2, $a4, .LBB29_68
.LBB29_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a0, %got_pc_hi20(IID_IInArchive)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IInArchive)
	ld.bu	$a2, $a0, 0
	bne	$a3, $a2, .LBB29_32
# %bb.17:
	ld.bu	$a2, $a1, 1
	ld.bu	$a4, $a0, 1
	bne	$a2, $a4, .LBB29_32
# %bb.18:
	ld.bu	$a2, $a1, 2
	ld.bu	$a4, $a0, 2
	bne	$a2, $a4, .LBB29_32
# %bb.19:
	ld.bu	$a2, $a1, 3
	ld.bu	$a4, $a0, 3
	bne	$a2, $a4, .LBB29_32
# %bb.20:
	ld.bu	$a2, $a1, 4
	ld.bu	$a4, $a0, 4
	bne	$a2, $a4, .LBB29_32
# %bb.21:
	ld.bu	$a2, $a1, 5
	ld.bu	$a4, $a0, 5
	bne	$a2, $a4, .LBB29_32
# %bb.22:
	ld.bu	$a2, $a1, 6
	ld.bu	$a4, $a0, 6
	bne	$a2, $a4, .LBB29_32
# %bb.23:
	ld.bu	$a2, $a1, 7
	ld.bu	$a4, $a0, 7
	bne	$a2, $a4, .LBB29_32
# %bb.24:
	ld.bu	$a2, $a1, 8
	ld.bu	$a4, $a0, 8
	bne	$a2, $a4, .LBB29_32
# %bb.25:
	ld.bu	$a2, $a1, 9
	ld.bu	$a4, $a0, 9
	bne	$a2, $a4, .LBB29_32
# %bb.26:
	ld.bu	$a2, $a1, 10
	ld.bu	$a4, $a0, 10
	bne	$a2, $a4, .LBB29_32
# %bb.27:
	ld.bu	$a2, $a1, 11
	ld.bu	$a4, $a0, 11
	bne	$a2, $a4, .LBB29_32
# %bb.28:
	ld.bu	$a2, $a1, 12
	ld.bu	$a4, $a0, 12
	bne	$a2, $a4, .LBB29_32
# %bb.29:
	ld.bu	$a2, $a1, 13
	ld.bu	$a4, $a0, 13
	bne	$a2, $a4, .LBB29_32
# %bb.30:
	ld.bu	$a2, $a1, 14
	ld.bu	$a4, $a0, 14
	bne	$a2, $a4, .LBB29_32
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit33
	ld.bu	$a2, $a1, 15
	ld.bu	$a4, $a0, 15
	move	$a0, $fp
	beq	$a2, $a4, .LBB29_68
.LBB29_32:                              # %_ZeqRK4GUIDS1_.exit33.thread
	pcalau12i	$a0, %got_pc_hi20(IID_IArchiveOpenSeq)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IArchiveOpenSeq)
	ld.bu	$a2, $a0, 0
	bne	$a3, $a2, .LBB29_49
# %bb.33:
	ld.bu	$a2, $a1, 1
	ld.bu	$a4, $a0, 1
	bne	$a2, $a4, .LBB29_49
# %bb.34:
	ld.bu	$a2, $a1, 2
	ld.bu	$a4, $a0, 2
	bne	$a2, $a4, .LBB29_49
# %bb.35:
	ld.bu	$a2, $a1, 3
	ld.bu	$a4, $a0, 3
	bne	$a2, $a4, .LBB29_49
# %bb.36:
	ld.bu	$a2, $a1, 4
	ld.bu	$a4, $a0, 4
	bne	$a2, $a4, .LBB29_49
# %bb.37:
	ld.bu	$a2, $a1, 5
	ld.bu	$a4, $a0, 5
	bne	$a2, $a4, .LBB29_49
# %bb.38:
	ld.bu	$a2, $a1, 6
	ld.bu	$a4, $a0, 6
	bne	$a2, $a4, .LBB29_49
# %bb.39:
	ld.bu	$a2, $a1, 7
	ld.bu	$a4, $a0, 7
	bne	$a2, $a4, .LBB29_49
# %bb.40:
	ld.bu	$a2, $a1, 8
	ld.bu	$a4, $a0, 8
	bne	$a2, $a4, .LBB29_49
# %bb.41:
	ld.bu	$a2, $a1, 9
	ld.bu	$a4, $a0, 9
	bne	$a2, $a4, .LBB29_49
# %bb.42:
	ld.bu	$a2, $a1, 10
	ld.bu	$a4, $a0, 10
	bne	$a2, $a4, .LBB29_49
# %bb.43:
	ld.bu	$a2, $a1, 11
	ld.bu	$a4, $a0, 11
	bne	$a2, $a4, .LBB29_49
# %bb.44:
	ld.bu	$a2, $a1, 12
	ld.bu	$a4, $a0, 12
	bne	$a2, $a4, .LBB29_49
# %bb.45:
	ld.bu	$a2, $a1, 13
	ld.bu	$a4, $a0, 13
	bne	$a2, $a4, .LBB29_49
# %bb.46:
	ld.bu	$a2, $a1, 14
	ld.bu	$a4, $a0, 14
	bne	$a2, $a4, .LBB29_49
# %bb.47:                               # %_ZeqRK4GUIDS1_.exit52
	ld.bu	$a2, $a1, 15
	ld.bu	$a0, $a0, 15
	bne	$a2, $a0, .LBB29_49
# %bb.48:
	addi.d	$a0, $fp, 8
	b	.LBB29_68
.LBB29_49:                              # %_ZeqRK4GUIDS1_.exit52.thread
	pcalau12i	$a0, %got_pc_hi20(IID_IOutArchive)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IOutArchive)
	ld.bu	$a2, $a0, 0
	bne	$a3, $a2, .LBB29_66
# %bb.50:
	ld.bu	$a2, $a1, 1
	ld.bu	$a3, $a0, 1
	bne	$a2, $a3, .LBB29_66
# %bb.51:
	ld.bu	$a2, $a1, 2
	ld.bu	$a3, $a0, 2
	bne	$a2, $a3, .LBB29_66
# %bb.52:
	ld.bu	$a2, $a1, 3
	ld.bu	$a3, $a0, 3
	bne	$a2, $a3, .LBB29_66
# %bb.53:
	ld.bu	$a2, $a1, 4
	ld.bu	$a3, $a0, 4
	bne	$a2, $a3, .LBB29_66
# %bb.54:
	ld.bu	$a2, $a1, 5
	ld.bu	$a3, $a0, 5
	bne	$a2, $a3, .LBB29_66
# %bb.55:
	ld.bu	$a2, $a1, 6
	ld.bu	$a3, $a0, 6
	bne	$a2, $a3, .LBB29_66
# %bb.56:
	ld.bu	$a2, $a1, 7
	ld.bu	$a3, $a0, 7
	bne	$a2, $a3, .LBB29_66
# %bb.57:
	ld.bu	$a2, $a1, 8
	ld.bu	$a3, $a0, 8
	bne	$a2, $a3, .LBB29_66
# %bb.58:
	ld.bu	$a2, $a1, 9
	ld.bu	$a3, $a0, 9
	bne	$a2, $a3, .LBB29_66
# %bb.59:
	ld.bu	$a2, $a1, 10
	ld.bu	$a3, $a0, 10
	bne	$a2, $a3, .LBB29_66
# %bb.60:
	ld.bu	$a2, $a1, 11
	ld.bu	$a3, $a0, 11
	bne	$a2, $a3, .LBB29_66
# %bb.61:
	ld.bu	$a2, $a1, 12
	ld.bu	$a3, $a0, 12
	bne	$a2, $a3, .LBB29_66
# %bb.62:
	ld.bu	$a2, $a1, 13
	ld.bu	$a3, $a0, 13
	bne	$a2, $a3, .LBB29_66
# %bb.63:
	ld.bu	$a2, $a1, 14
	ld.bu	$a3, $a0, 14
	bne	$a2, $a3, .LBB29_66
# %bb.64:                               # %_ZeqRK4GUIDS1_.exit71
	ld.bu	$a2, $a1, 15
	ld.bu	$a0, $a0, 15
	bne	$a2, $a0, .LBB29_66
# %bb.65:
	addi.d	$a0, $fp, 16
	b	.LBB29_68
.LBB29_66:                              # %_ZeqRK4GUIDS1_.exit71.thread
	pcalau12i	$a0, %got_pc_hi20(IID_ISetProperties)
	ld.d	$a2, $a0, %got_pc_lo12(IID_ISetProperties)
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZeqRK4GUIDS1_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_69
# %bb.67:
	addi.d	$a0, $fp, 24
.LBB29_68:                              # %.sink.split
	ld.d	$a1, $fp, 0
	st.d	$a0, $s0, 0
	ld.d	$a1, $a1, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $zero
	b	.LBB29_70
.LBB29_69:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
.LBB29_70:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end29:
	.size	_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end29-_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3NXz8CHandler6AddRefEv,"axG",@progbits,_ZN8NArchive3NXz8CHandler6AddRefEv,comdat
	.weak	_ZN8NArchive3NXz8CHandler6AddRefEv # -- Begin function _ZN8NArchive3NXz8CHandler6AddRefEv
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler6AddRefEv,@function
_ZN8NArchive3NXz8CHandler6AddRefEv:     # @_ZN8NArchive3NXz8CHandler6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 132
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 132
	move	$a0, $a1
	ret
.Lfunc_end30:
	.size	_ZN8NArchive3NXz8CHandler6AddRefEv, .Lfunc_end30-_ZN8NArchive3NXz8CHandler6AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive3NXz8CHandler7ReleaseEv,"axG",@progbits,_ZN8NArchive3NXz8CHandler7ReleaseEv,comdat
	.weak	_ZN8NArchive3NXz8CHandler7ReleaseEv # -- Begin function _ZN8NArchive3NXz8CHandler7ReleaseEv
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandler7ReleaseEv,@function
_ZN8NArchive3NXz8CHandler7ReleaseEv:    # @_ZN8NArchive3NXz8CHandler7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 132
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 132
	bnez	$fp, .LBB31_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB31_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end31:
	.size	_ZN8NArchive3NXz8CHandler7ReleaseEv, .Lfunc_end31-_ZN8NArchive3NXz8CHandler7ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive3NXz8CHandlerD2Ev,"axG",@progbits,_ZN8NArchive3NXz8CHandlerD2Ev,comdat
	.weak	_ZN8NArchive3NXz8CHandlerD2Ev   # -- Begin function _ZN8NArchive3NXz8CHandlerD2Ev
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandlerD2Ev,@function
_ZN8NArchive3NXz8CHandlerD2Ev:          # @_ZN8NArchive3NXz8CHandlerD2Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $a1, 184
	st.d	$a0, $fp, 8
	ld.d	$a0, $fp, 216
	addi.d	$a2, $a1, 248
	st.d	$a2, $fp, 16
	addi.d	$a1, $a1, 320
	st.d	$a1, $fp, 24
	beqz	$a0, .LBB32_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp376:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp377:                               # EH_LABEL
.LBB32_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB32_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp379:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp380:                               # EH_LABEL
.LBB32_4:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	ld.d	$a0, $fp, 168
	beqz	$a0, .LBB32_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB32_6:                               # %_ZN11CStringBaseIcED2Ev.exit
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $fp, 40
.Ltmp382:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp383:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive11COutHandlerD2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB32_8:
.Ltmp381:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB32_9:
.Ltmp378:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB32_10:
.Ltmp384:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN8NArchive3NXz8CHandlerD2Ev, .Lfunc_end32-_ZN8NArchive3NXz8CHandlerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3NXz8CHandlerD2Ev,"aG",@progbits,_ZN8NArchive3NXz8CHandlerD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp376-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin12        #     jumps to .Ltmp378
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp379-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin12        #     jumps to .Ltmp381
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp380-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp382-.Ltmp380              #   Call between .Ltmp380 and .Ltmp382
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp383-.Ltmp382              #   Call between .Ltmp382 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin12        #     jumps to .Ltmp384
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp383-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Lfunc_end32-.Ltmp383          #   Call between .Ltmp383 and .Lfunc_end32
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
	.section	.text._ZN8NArchive3NXz8CHandlerD0Ev,"axG",@progbits,_ZN8NArchive3NXz8CHandlerD0Ev,comdat
	.weak	_ZN8NArchive3NXz8CHandlerD0Ev   # -- Begin function _ZN8NArchive3NXz8CHandlerD0Ev
	.p2align	5
	.type	_ZN8NArchive3NXz8CHandlerD0Ev,@function
_ZN8NArchive3NXz8CHandlerD0Ev:          # @_ZN8NArchive3NXz8CHandlerD0Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $a1, 184
	st.d	$a0, $fp, 8
	ld.d	$a0, $fp, 216
	addi.d	$a2, $a1, 248
	st.d	$a2, $fp, 16
	addi.d	$a1, $a1, 320
	st.d	$a1, $fp, 24
	beqz	$a0, .LBB33_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp385:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp386:                               # EH_LABEL
.LBB33_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB33_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp388:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp389:                               # EH_LABEL
.LBB33_4:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 168
	beqz	$a0, .LBB33_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_6:                               # %_ZN11CStringBaseIcED2Ev.exit.i
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $fp, 40
.Ltmp391:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive3NXz8CHandlerD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 232
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB33_8:
.Ltmp390:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB33_9:
.Ltmp387:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB33_10:
.Ltmp393:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN8NArchive3NXz8CHandlerD0Ev, .Lfunc_end33-_ZN8NArchive3NXz8CHandlerD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3NXz8CHandlerD0Ev,"aG",@progbits,_ZN8NArchive3NXz8CHandlerD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table33:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp385-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin13        #     jumps to .Ltmp387
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp388-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp390-.Lfunc_begin13        #     jumps to .Ltmp390
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp389-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp391-.Ltmp389              #   Call between .Ltmp389 and .Ltmp391
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin13        #     jumps to .Ltmp393
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp392-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Lfunc_end33-.Ltmp392          #   Call between .Ltmp392 and .Lfunc_end33
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
	.section	.text._ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end34:
	.size	_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end34-_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N8NArchive3NXz8CHandler6AddRefEv,"axG",@progbits,_ZThn8_N8NArchive3NXz8CHandler6AddRefEv,comdat
	.weak	_ZThn8_N8NArchive3NXz8CHandler6AddRefEv # -- Begin function _ZThn8_N8NArchive3NXz8CHandler6AddRefEv
	.p2align	5
	.type	_ZThn8_N8NArchive3NXz8CHandler6AddRefEv,@function
_ZThn8_N8NArchive3NXz8CHandler6AddRefEv: # @_ZThn8_N8NArchive3NXz8CHandler6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 124
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 124
	move	$a0, $a1
	ret
.Lfunc_end35:
	.size	_ZThn8_N8NArchive3NXz8CHandler6AddRefEv, .Lfunc_end35-_ZThn8_N8NArchive3NXz8CHandler6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N8NArchive3NXz8CHandler7ReleaseEv,"axG",@progbits,_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv,comdat
	.weak	_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv # -- Begin function _ZThn8_N8NArchive3NXz8CHandler7ReleaseEv
	.p2align	5
	.type	_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv,@function
_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv: # @_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 124
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 124
	bnez	$fp, .LBB36_2
# %bb.1:
	ld.d	$a1, $a0, -8
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -8
	jirl	$ra, $a1, 0
.LBB36_2:                               # %_ZN8NArchive3NXz8CHandler7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end36:
	.size	_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv, .Lfunc_end36-_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N8NArchive3NXz8CHandlerD1Ev,"axG",@progbits,_ZThn8_N8NArchive3NXz8CHandlerD1Ev,comdat
	.weak	_ZThn8_N8NArchive3NXz8CHandlerD1Ev # -- Begin function _ZThn8_N8NArchive3NXz8CHandlerD1Ev
	.p2align	5
	.type	_ZThn8_N8NArchive3NXz8CHandlerD1Ev,@function
_ZThn8_N8NArchive3NXz8CHandlerD1Ev:     # @_ZThn8_N8NArchive3NXz8CHandlerD1Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, -8
	addi.d	$a0, $a1, 184
	st.d	$a0, $fp, 0
	ld.d	$a0, $fp, 208
	addi.d	$a2, $a1, 248
	st.d	$a2, $fp, 8
	addi.d	$a1, $a1, 320
	st.d	$a1, $fp, 16
	beqz	$a0, .LBB37_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp394:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp395:                               # EH_LABEL
.LBB37_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 200
	beqz	$a0, .LBB37_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp397:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp398:                               # EH_LABEL
.LBB37_4:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB37_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB37_6:                               # %_ZN11CStringBaseIcED2Ev.exit.i
	addi.d	$s0, $fp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $fp, 32
.Ltmp400:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive3NXz8CHandlerD2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB37_8:
.Ltmp399:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB37_9:
.Ltmp396:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB37_10:
.Ltmp402:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZThn8_N8NArchive3NXz8CHandlerD1Ev, .Lfunc_end37-_ZThn8_N8NArchive3NXz8CHandlerD1Ev
	.cfi_endproc
	.section	.gcc_except_table._ZThn8_N8NArchive3NXz8CHandlerD1Ev,"aG",@progbits,_ZThn8_N8NArchive3NXz8CHandlerD1Ev,comdat
	.p2align	2, 0x0
GCC_except_table37:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp394-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin14        #     jumps to .Ltmp396
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp397-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin14        #     jumps to .Ltmp399
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp398-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp400-.Ltmp398              #   Call between .Ltmp398 and .Ltmp400
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp402-.Lfunc_begin14        #     jumps to .Ltmp402
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp401-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Lfunc_end37-.Ltmp401          #   Call between .Ltmp401 and .Lfunc_end37
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
	.section	.text._ZThn8_N8NArchive3NXz8CHandlerD0Ev,"axG",@progbits,_ZThn8_N8NArchive3NXz8CHandlerD0Ev,comdat
	.weak	_ZThn8_N8NArchive3NXz8CHandlerD0Ev # -- Begin function _ZThn8_N8NArchive3NXz8CHandlerD0Ev
	.p2align	5
	.type	_ZThn8_N8NArchive3NXz8CHandlerD0Ev,@function
_ZThn8_N8NArchive3NXz8CHandlerD0Ev:     # @_ZThn8_N8NArchive3NXz8CHandlerD0Ev
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandlerD0Ev)
	jr	$t8
.Lfunc_end38:
	.size	_ZThn8_N8NArchive3NXz8CHandlerD0Ev, .Lfunc_end38-_ZThn8_N8NArchive3NXz8CHandlerD0Ev
                                        # -- End function
	.section	.text._ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end39:
	.size	_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end39-_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8NArchive3NXz8CHandler6AddRefEv,"axG",@progbits,_ZThn16_N8NArchive3NXz8CHandler6AddRefEv,comdat
	.weak	_ZThn16_N8NArchive3NXz8CHandler6AddRefEv # -- Begin function _ZThn16_N8NArchive3NXz8CHandler6AddRefEv
	.p2align	5
	.type	_ZThn16_N8NArchive3NXz8CHandler6AddRefEv,@function
_ZThn16_N8NArchive3NXz8CHandler6AddRefEv: # @_ZThn16_N8NArchive3NXz8CHandler6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 116
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 116
	move	$a0, $a1
	ret
.Lfunc_end40:
	.size	_ZThn16_N8NArchive3NXz8CHandler6AddRefEv, .Lfunc_end40-_ZThn16_N8NArchive3NXz8CHandler6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8NArchive3NXz8CHandler7ReleaseEv,"axG",@progbits,_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv,comdat
	.weak	_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv # -- Begin function _ZThn16_N8NArchive3NXz8CHandler7ReleaseEv
	.p2align	5
	.type	_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv,@function
_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv: # @_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 116
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 116
	bnez	$fp, .LBB41_2
# %bb.1:
	ld.d	$a1, $a0, -16
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -16
	jirl	$ra, $a1, 0
.LBB41_2:                               # %_ZN8NArchive3NXz8CHandler7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end41:
	.size	_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv, .Lfunc_end41-_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8NArchive3NXz8CHandlerD1Ev,"axG",@progbits,_ZThn16_N8NArchive3NXz8CHandlerD1Ev,comdat
	.weak	_ZThn16_N8NArchive3NXz8CHandlerD1Ev # -- Begin function _ZThn16_N8NArchive3NXz8CHandlerD1Ev
	.p2align	5
	.type	_ZThn16_N8NArchive3NXz8CHandlerD1Ev,@function
_ZThn16_N8NArchive3NXz8CHandlerD1Ev:    # @_ZThn16_N8NArchive3NXz8CHandlerD1Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, -16
	addi.d	$a0, $a1, 184
	st.d	$a0, $fp, -8
	ld.d	$a0, $fp, 200
	addi.d	$a2, $a1, 248
	st.d	$a2, $fp, 0
	addi.d	$a1, $a1, 320
	st.d	$a1, $fp, 8
	beqz	$a0, .LBB42_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp403:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp404:                               # EH_LABEL
.LBB42_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 192
	beqz	$a0, .LBB42_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp406:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp407:                               # EH_LABEL
.LBB42_4:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 152
	beqz	$a0, .LBB42_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB42_6:                               # %_ZN11CStringBaseIcED2Ev.exit.i
	addi.d	$s0, $fp, 24
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $fp, 24
.Ltmp409:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive3NXz8CHandlerD2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB42_8:
.Ltmp408:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB42_9:
.Ltmp405:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB42_10:
.Ltmp411:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZThn16_N8NArchive3NXz8CHandlerD1Ev, .Lfunc_end42-_ZThn16_N8NArchive3NXz8CHandlerD1Ev
	.cfi_endproc
	.section	.gcc_except_table._ZThn16_N8NArchive3NXz8CHandlerD1Ev,"aG",@progbits,_ZThn16_N8NArchive3NXz8CHandlerD1Ev,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp403-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin15        #     jumps to .Ltmp405
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp406-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp408-.Lfunc_begin15        #     jumps to .Ltmp408
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp407-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp409-.Ltmp407              #   Call between .Ltmp407 and .Ltmp409
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Ltmp410-.Ltmp409              #   Call between .Ltmp409 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin15        #     jumps to .Ltmp411
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp410-.Lfunc_begin15        # >> Call Site 5 <<
	.uleb128 .Lfunc_end42-.Ltmp410          #   Call between .Ltmp410 and .Lfunc_end42
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
	.section	.text._ZThn16_N8NArchive3NXz8CHandlerD0Ev,"axG",@progbits,_ZThn16_N8NArchive3NXz8CHandlerD0Ev,comdat
	.weak	_ZThn16_N8NArchive3NXz8CHandlerD0Ev # -- Begin function _ZThn16_N8NArchive3NXz8CHandlerD0Ev
	.p2align	5
	.type	_ZThn16_N8NArchive3NXz8CHandlerD0Ev,@function
_ZThn16_N8NArchive3NXz8CHandlerD0Ev:    # @_ZThn16_N8NArchive3NXz8CHandlerD0Ev
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandlerD0Ev)
	jr	$t8
.Lfunc_end43:
	.size	_ZThn16_N8NArchive3NXz8CHandlerD0Ev, .Lfunc_end43-_ZThn16_N8NArchive3NXz8CHandlerD0Ev
                                        # -- End function
	.section	.text._ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv,@function
_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv: # @_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -24
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end44:
	.size	_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv, .Lfunc_end44-_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N8NArchive3NXz8CHandler6AddRefEv,"axG",@progbits,_ZThn24_N8NArchive3NXz8CHandler6AddRefEv,comdat
	.weak	_ZThn24_N8NArchive3NXz8CHandler6AddRefEv # -- Begin function _ZThn24_N8NArchive3NXz8CHandler6AddRefEv
	.p2align	5
	.type	_ZThn24_N8NArchive3NXz8CHandler6AddRefEv,@function
_ZThn24_N8NArchive3NXz8CHandler6AddRefEv: # @_ZThn24_N8NArchive3NXz8CHandler6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 108
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 108
	move	$a0, $a1
	ret
.Lfunc_end45:
	.size	_ZThn24_N8NArchive3NXz8CHandler6AddRefEv, .Lfunc_end45-_ZThn24_N8NArchive3NXz8CHandler6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N8NArchive3NXz8CHandler7ReleaseEv,"axG",@progbits,_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv,comdat
	.weak	_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv # -- Begin function _ZThn24_N8NArchive3NXz8CHandler7ReleaseEv
	.p2align	5
	.type	_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv,@function
_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv: # @_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 108
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 108
	bnez	$fp, .LBB46_2
# %bb.1:
	ld.d	$a1, $a0, -24
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -24
	jirl	$ra, $a1, 0
.LBB46_2:                               # %_ZN8NArchive3NXz8CHandler7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end46:
	.size	_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv, .Lfunc_end46-_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N8NArchive3NXz8CHandlerD1Ev,"axG",@progbits,_ZThn24_N8NArchive3NXz8CHandlerD1Ev,comdat
	.weak	_ZThn24_N8NArchive3NXz8CHandlerD1Ev # -- Begin function _ZThn24_N8NArchive3NXz8CHandlerD1Ev
	.p2align	5
	.type	_ZThn24_N8NArchive3NXz8CHandlerD1Ev,@function
_ZThn24_N8NArchive3NXz8CHandlerD1Ev:    # @_ZThn24_N8NArchive3NXz8CHandlerD1Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive3NXz8CHandlerE)
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, -24
	addi.d	$a0, $a1, 184
	st.d	$a0, $fp, -16
	ld.d	$a0, $fp, 192
	addi.d	$a2, $a1, 248
	st.d	$a2, $fp, -8
	addi.d	$a1, $a1, 320
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB47_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp412:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp413:                               # EH_LABEL
.LBB47_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB47_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp415:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp416:                               # EH_LABEL
.LBB47_4:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit.i
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB47_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB47_6:                               # %_ZN11CStringBaseIcED2Ev.exit.i
	addi.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $fp, 16
.Ltmp418:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive3NXz8CHandlerD2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB47_8:
.Ltmp417:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB47_9:
.Ltmp414:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB47_10:
.Ltmp420:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZThn24_N8NArchive3NXz8CHandlerD1Ev, .Lfunc_end47-_ZThn24_N8NArchive3NXz8CHandlerD1Ev
	.cfi_endproc
	.section	.gcc_except_table._ZThn24_N8NArchive3NXz8CHandlerD1Ev,"aG",@progbits,_ZThn24_N8NArchive3NXz8CHandlerD1Ev,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp412-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp413-.Ltmp412              #   Call between .Ltmp412 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin16        #     jumps to .Ltmp414
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp415-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin16        #     jumps to .Ltmp417
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp416-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp418-.Ltmp416              #   Call between .Ltmp416 and .Ltmp418
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp420-.Lfunc_begin16        #     jumps to .Ltmp420
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp419-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Lfunc_end47-.Ltmp419          #   Call between .Ltmp419 and .Lfunc_end47
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
	.section	.text._ZThn24_N8NArchive3NXz8CHandlerD0Ev,"axG",@progbits,_ZThn24_N8NArchive3NXz8CHandlerD0Ev,comdat
	.weak	_ZThn24_N8NArchive3NXz8CHandlerD0Ev # -- Begin function _ZThn24_N8NArchive3NXz8CHandlerD0Ev
	.p2align	5
	.type	_ZThn24_N8NArchive3NXz8CHandlerD0Ev,@function
_ZThn24_N8NArchive3NXz8CHandlerD0Ev:    # @_ZThn24_N8NArchive3NXz8CHandlerD0Ev
# %bb.0:
	addi.d	$a0, $a0, -24
	pcaddu18i	$t8, %call36(_ZN8NArchive3NXz8CHandlerD0Ev)
	jr	$t8
.Lfunc_end48:
	.size	_ZThn24_N8NArchive3NXz8CHandlerD0Ev, .Lfunc_end48-_ZThn24_N8NArchive3NXz8CHandlerD0Ev
                                        # -- End function
	.section	.text._ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB49_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB49_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB49_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB49_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB49_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB49_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB49_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB49_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB49_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB49_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB49_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB49_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB49_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB49_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB49_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB49_32
.LBB49_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_IInStream)
	ld.d	$a5, $a3, %got_pc_lo12(IID_IInStream)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB49_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB49_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB49_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB49_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB49_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB49_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB49_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB49_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB49_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB49_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB49_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB49_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB49_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB49_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB49_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB49_33
.LBB49_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB49_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end49:
	.size	_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end49-_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv,"axG",@progbits,_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv,comdat
	.weak	_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv # -- Begin function _ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv
	.p2align	5
	.type	_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv,@function
_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv: # @_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end50:
	.size	_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv, .Lfunc_end50-_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv,"axG",@progbits,_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv,comdat
	.weak	_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv # -- Begin function _ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv
	.p2align	5
	.type	_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv,@function
_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv: # @_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB51_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB51_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end51:
	.size	_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv, .Lfunc_end51-_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive3NXz16CSeekToSeqStreamD2Ev,"axG",@progbits,_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev,comdat
	.weak	_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev # -- Begin function _ZN8NArchive3NXz16CSeekToSeqStreamD2Ev
	.p2align	5
	.type	_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev,@function
_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev: # @_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3NXz16CSeekToSeqStreamE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTVN8NArchive3NXz16CSeekToSeqStreamE+16)
	ld.d	$a0, $a1, 16
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB52_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp421:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp422:                               # EH_LABEL
.LBB52_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB52_3:
.Ltmp423:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end52:
	.size	_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev, .Lfunc_end52-_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3NXz16CSeekToSeqStreamD2Ev,"aG",@progbits,_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table52:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp421-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp422-.Ltmp421              #   Call between .Ltmp421 and .Ltmp422
	.uleb128 .Ltmp423-.Lfunc_begin17        #     jumps to .Ltmp423
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp422-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Lfunc_end52-.Ltmp422          #   Call between .Ltmp422 and .Lfunc_end52
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
	.section	.text._ZN8NArchive3NXz16CSeekToSeqStreamD0Ev,"axG",@progbits,_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev,comdat
	.weak	_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev # -- Begin function _ZN8NArchive3NXz16CSeekToSeqStreamD0Ev
	.p2align	5
	.type	_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev,@function
_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev: # @_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev
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
	pcalau12i	$a1, %pc_hi20(_ZTVN8NArchive3NXz16CSeekToSeqStreamE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTVN8NArchive3NXz16CSeekToSeqStreamE+16)
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB53_2
# %bb.1:
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp424:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $fp
.Ltmp425:                               # EH_LABEL
.LBB53_2:                               # %_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev.exit
	ori	$a1, $zero, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB53_3:
.Ltmp426:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end53:
	.size	_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev, .Lfunc_end53-_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3NXz16CSeekToSeqStreamD0Ev,"aG",@progbits,_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table53:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp424-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin18        #     jumps to .Ltmp426
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp425-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Lfunc_end53-.Ltmp425          #   Call between .Ltmp425 and .Lfunc_end53
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
	.section	.text._ZN10IInArchiveD0Ev,"axG",@progbits,_ZN10IInArchiveD0Ev,comdat
	.weak	_ZN10IInArchiveD0Ev             # -- Begin function _ZN10IInArchiveD0Ev
	.p2align	5
	.type	_ZN10IInArchiveD0Ev,@function
_ZN10IInArchiveD0Ev:                    # @_ZN10IInArchiveD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end54:
	.size	_ZN10IInArchiveD0Ev, .Lfunc_end54-_ZN10IInArchiveD0Ev
                                        # -- End function
	.section	.text._ZN15IArchiveOpenSeqD0Ev,"axG",@progbits,_ZN15IArchiveOpenSeqD0Ev,comdat
	.weak	_ZN15IArchiveOpenSeqD0Ev        # -- Begin function _ZN15IArchiveOpenSeqD0Ev
	.p2align	5
	.type	_ZN15IArchiveOpenSeqD0Ev,@function
_ZN15IArchiveOpenSeqD0Ev:               # @_ZN15IArchiveOpenSeqD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end55:
	.size	_ZN15IArchiveOpenSeqD0Ev, .Lfunc_end55-_ZN15IArchiveOpenSeqD0Ev
                                        # -- End function
	.section	.text._ZN11IOutArchiveD0Ev,"axG",@progbits,_ZN11IOutArchiveD0Ev,comdat
	.weak	_ZN11IOutArchiveD0Ev            # -- Begin function _ZN11IOutArchiveD0Ev
	.p2align	5
	.type	_ZN11IOutArchiveD0Ev,@function
_ZN11IOutArchiveD0Ev:                   # @_ZN11IOutArchiveD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end56:
	.size	_ZN11IOutArchiveD0Ev, .Lfunc_end56-_ZN11IOutArchiveD0Ev
                                        # -- End function
	.section	.text._ZN14ISetPropertiesD0Ev,"axG",@progbits,_ZN14ISetPropertiesD0Ev,comdat
	.weak	_ZN14ISetPropertiesD0Ev         # -- Begin function _ZN14ISetPropertiesD0Ev
	.p2align	5
	.type	_ZN14ISetPropertiesD0Ev,@function
_ZN14ISetPropertiesD0Ev:                # @_ZN14ISetPropertiesD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end57:
	.size	_ZN14ISetPropertiesD0Ev, .Lfunc_end57-_ZN14ISetPropertiesD0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev,@function
_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev: # @_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp427:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB58_2:
.Ltmp429:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end58:
	.size	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev, .Lfunc_end58-_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table58:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp427-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp429-.Lfunc_begin19        #     jumps to .Ltmp429
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp428-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end58-.Ltmp428          #   Call between .Ltmp428 and .Lfunc_end58
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
	.section	.text._ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev,@function
_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev: # @_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp430:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev.exit
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
.LBB59_2:
.Ltmp432:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end59:
	.size	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev, .Lfunc_end59-_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table59:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp430-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp432-.Lfunc_begin20        #     jumps to .Ltmp432
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp431-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Lfunc_end59-.Ltmp431          #   Call between .Ltmp431 and .Lfunc_end59
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
	.section	.text._ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
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
	blez	$s1, .LBB60_8
# %bb.1:                                # %.lr.ph
	slli.d	$s3, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	move	$s5, $zero
	b	.LBB60_3
	.p2align	4, , 16
.LBB60_2:                               #   in Loop: Header=BB60_3 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bgeu	$s5, $s1, .LBB60_8
.LBB60_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s3
	beqz	$s2, .LBB60_2
# %bb.4:                                #   in Loop: Header=BB60_3 Depth=1
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB60_6
# %bb.5:                                #   in Loop: Header=BB60_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB60_6:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB60_3 Depth=1
	st.d	$s4, $s2, 0
.Ltmp433:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive14COneMethodInfoD2Ev.exit
                                        #   in Loop: Header=BB60_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB60_2
.LBB60_8:                               # %._crit_edge
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
.LBB60_9:
.Ltmp435:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end60:
	.size	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii, .Lfunc_end60-_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table60:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp433-.Lfunc_begin21        #   Call between .Lfunc_begin21 and .Ltmp433
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Ltmp434-.Ltmp433              #   Call between .Ltmp433 and .Ltmp434
	.uleb128 .Ltmp435-.Lfunc_begin21        #     jumps to .Ltmp435
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp434-.Lfunc_begin21        # >> Call Site 3 <<
	.uleb128 .Lfunc_end60-.Ltmp434          #   Call between .Ltmp434 and .Lfunc_end60
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
	.section	.text._ZN13CObjectVectorI5CPropED2Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED2Ev  # -- Begin function _ZN13CObjectVectorI5CPropED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED2Ev,@function
_ZN13CObjectVectorI5CPropED2Ev:         # @_ZN13CObjectVectorI5CPropED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 0
.Ltmp436:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB61_2:
.Ltmp438:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end61:
	.size	_ZN13CObjectVectorI5CPropED2Ev, .Lfunc_end61-_ZN13CObjectVectorI5CPropED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED2Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table61:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp436-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp437-.Ltmp436              #   Call between .Ltmp436 and .Ltmp437
	.uleb128 .Ltmp438-.Lfunc_begin22        #     jumps to .Ltmp438
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp437-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end61-.Ltmp437          #   Call between .Ltmp437 and .Lfunc_end61
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
.Lfunc_end62:
	.size	__clang_call_terminate, .Lfunc_end62-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropED0Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED0Ev  # -- Begin function _ZN13CObjectVectorI5CPropED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED0Ev,@function
_ZN13CObjectVectorI5CPropED0Ev:         # @_ZN13CObjectVectorI5CPropED0Ev
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
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
.Ltmp439:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp440:                               # EH_LABEL
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
.LBB63_2:
.Ltmp441:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end63:
	.size	_ZN13CObjectVectorI5CPropED0Ev, .Lfunc_end63-_ZN13CObjectVectorI5CPropED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED0Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table63:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp439-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp440-.Ltmp439              #   Call between .Ltmp439 and .Ltmp440
	.uleb128 .Ltmp441-.Lfunc_begin23        #     jumps to .Ltmp441
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp440-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end63-.Ltmp440          #   Call between .Ltmp440 and .Lfunc_end63
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
	.section	.text._ZN13CObjectVectorI5CPropE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI5CPropE6DeleteEii # -- Begin function _ZN13CObjectVectorI5CPropE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropE6DeleteEii,@function
_ZN13CObjectVectorI5CPropE6DeleteEii:   # @_ZN13CObjectVectorI5CPropE6DeleteEii
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
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
	blez	$s1, .LBB64_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB64_3
	.p2align	4, , 16
.LBB64_2:                               #   in Loop: Header=BB64_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB64_6
.LBB64_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB64_2
# %bb.4:                                #   in Loop: Header=BB64_3 Depth=1
	addi.d	$a0, $s2, 8
.Ltmp442:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
# %bb.5:                                # %_ZN5CPropD2Ev.exit
                                        #   in Loop: Header=BB64_3 Depth=1
	ori	$a1, $zero, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB64_2
.LBB64_6:                               # %._crit_edge
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
.LBB64_7:
.Ltmp444:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end64:
	.size	_ZN13CObjectVectorI5CPropE6DeleteEii, .Lfunc_end64-_ZN13CObjectVectorI5CPropE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table64:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp442-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp443-.Ltmp442              #   Call between .Ltmp442 and .Ltmp443
	.uleb128 .Ltmp444-.Lfunc_begin24        #     jumps to .Ltmp444
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp443-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end64-.Ltmp443          #   Call between .Ltmp443 and .Lfunc_end64
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
	.text
	.p2align	5                               # -- Begin function _ZL7SzAllocPvm
	.type	_ZL7SzAllocPvm,@function
_ZL7SzAllocPvm:                         # @_ZL7SzAllocPvm
	.cfi_startproc
# %bb.0:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(MyAlloc)
	jr	$t8
.Lfunc_end65:
	.size	_ZL7SzAllocPvm, .Lfunc_end65-_ZL7SzAllocPvm
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL6SzFreePvS_
	.type	_ZL6SzFreePvS_,@function
_ZL6SzFreePvS_:                         # @_ZL6SzFreePvS_
	.cfi_startproc
# %bb.0:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(MyFree)
	jr	$t8
.Lfunc_end66:
	.size	_ZL6SzFreePvS_, .Lfunc_end66-_ZL6SzFreePvS_
	.cfi_endproc
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
	bgtz	$a2, .LBB67_21
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
	beq	$fp, $s4, .LBB67_21
# %bb.2:
	move	$s2, $a1
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s4, .LBB67_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blez	$s1, .LBB67_12
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 16
	move	$a1, $zero
	bltu	$s1, $a2, .LBB67_17
# %bb.5:                                # %iter.check
	sub.d	$a3, $s0, $a0
	ori	$a2, $zero, 32
	bltu	$a3, $a2, .LBB67_17
# %bb.6:                                # %vector.main.loop.iter.check
	bgeu	$s1, $a2, .LBB67_13
# %bb.7:
	move	$a1, $zero
.LBB67_8:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s1, 30, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $s0, $a4
	add.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB67_9:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB67_9
# %bb.10:                               # %vec.epilog.middle.block
	bne	$a1, $s1, .LBB67_17
	b	.LBB67_19
.LBB67_11:
	move	$a2, $s3
	move	$a1, $s2
	b	.LBB67_20
.LBB67_12:                              # %._crit_edge.i.i
	move	$a2, $s3
	move	$a1, $s2
	bnez	$a0, .LBB67_19
	b	.LBB67_20
.LBB67_13:                              # %vector.ph
	andi	$a2, $s1, 16
	bstrpick.d	$a1, $s1, 30, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB67_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB67_14
# %bb.15:                               # %middle.block
	beq	$a1, $s1, .LBB67_19
# %bb.16:                               # %vec.epilog.iter.check
	bnez	$a2, .LBB67_8
.LBB67_17:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s1, $a1
	add.d	$a3, $s0, $a1
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB67_18:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB67_18
.LBB67_19:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	ld.w	$s1, $s3, 8
.LBB67_20:
	move	$a0, $a2
	st.d	$s0, $a2, 0
	stx.b	$zero, $s0, $s1
	st.w	$fp, $a2, 12
.LBB67_21:                              # %_ZN11CStringBaseIcE10GrowLengthEi.exit
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
.Lfunc_end67:
	.size	_ZN11CStringBaseIcEpLEc, .Lfunc_end67-_ZN11CStringBaseIcEpLEc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CStringBaseIcEpLERKS0_,"axG",@progbits,_ZN11CStringBaseIcEpLERKS0_,comdat
	.weak	_ZN11CStringBaseIcEpLERKS0_     # -- Begin function _ZN11CStringBaseIcEpLERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIcEpLERKS0_,@function
_ZN11CStringBaseIcEpLERKS0_:            # @_ZN11CStringBaseIcEpLERKS0_
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
	ld.w	$s2, $a0, 8
	ld.w	$s4, $a0, 12
	ld.w	$a1, $a1, 8
	nor	$a2, $s2, $zero
	add.w	$a2, $s4, $a2
	bge	$a2, $a1, .LBB68_21
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
	add.d	$a1, $s4, $a1
	addi.w	$s0, $a1, 1
	beq	$s0, $s4, .LBB68_21
# %bb.2:
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB68_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blez	$s2, .LBB68_12
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 16
	move	$a1, $zero
	bltu	$s2, $a2, .LBB68_17
# %bb.5:                                # %iter.check
	sub.d	$a3, $s1, $a0
	ori	$a2, $zero, 32
	bltu	$a3, $a2, .LBB68_17
# %bb.6:                                # %vector.main.loop.iter.check
	bgeu	$s2, $a2, .LBB68_13
# %bb.7:
	move	$a1, $zero
.LBB68_8:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s2, 30, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $s1, $a4
	add.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB68_9:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB68_9
# %bb.10:                               # %vec.epilog.middle.block
	bne	$a1, $s2, .LBB68_17
	b	.LBB68_19
.LBB68_11:
	move	$a1, $s3
	b	.LBB68_20
.LBB68_12:                              # %._crit_edge.i.i
	move	$a1, $s3
	bnez	$a0, .LBB68_19
	b	.LBB68_20
.LBB68_13:                              # %vector.ph
	andi	$a2, $s2, 16
	bstrpick.d	$a1, $s2, 30, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB68_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB68_14
# %bb.15:                               # %middle.block
	beq	$a1, $s2, .LBB68_19
# %bb.16:                               # %vec.epilog.iter.check
	bnez	$a2, .LBB68_8
.LBB68_17:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s2, $a1
	add.d	$a3, $s1, $a1
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB68_18:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB68_18
.LBB68_19:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	ld.w	$s2, $s3, 8
.LBB68_20:
	move	$a0, $a1
	st.d	$s1, $a1, 0
	stx.b	$zero, $s1, $s2
	st.w	$s0, $a1, 12
.LBB68_21:                              # %_ZN11CStringBaseIcE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	add.d	$a2, $a2, $s2
	.p2align	4, , 16
.LBB68_22:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a2, 1
	st.b	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB68_22
# %bb.23:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit
	ld.w	$a1, $fp, 8
	ld.w	$a2, $a0, 8
	add.d	$a1, $a2, $a1
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
.Lfunc_end68:
	.size	_ZN11CStringBaseIcEpLERKS0_, .Lfunc_end68-_ZN11CStringBaseIcEpLERKS0_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive3NXzL9CreateArcEv
	.type	_ZN8NArchive3NXzL9CreateArcEv,@function
_ZN8NArchive3NXzL9CreateArcEv:          # @_ZN8NArchive3NXzL9CreateArcEv
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp445:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXz8CHandlerC2Ev)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB69_2:
.Ltmp447:                               # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end69:
	.size	_ZN8NArchive3NXzL9CreateArcEv, .Lfunc_end69-_ZN8NArchive3NXzL9CreateArcEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table69:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Lfunc_begin25-.Lfunc_begin25  # >> Call Site 1 <<
	.uleb128 .Ltmp445-.Lfunc_begin25        #   Call between .Lfunc_begin25 and .Ltmp445
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp445-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp446-.Ltmp445              #   Call between .Ltmp445 and .Ltmp446
	.uleb128 .Ltmp447-.Lfunc_begin25        #     jumps to .Ltmp447
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Lfunc_end69-.Ltmp446          #   Call between .Ltmp446 and .Lfunc_end69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive3NXzL12CreateArcOutEv
	.type	_ZN8NArchive3NXzL12CreateArcOutEv,@function
_ZN8NArchive3NXzL12CreateArcOutEv:      # @_ZN8NArchive3NXzL12CreateArcOutEv
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp448:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NArchive3NXz8CHandlerC2Ev)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.1:
	addi.d	$a0, $fp, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB70_2:
.Ltmp450:                               # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end70:
	.size	_ZN8NArchive3NXzL12CreateArcOutEv, .Lfunc_end70-_ZN8NArchive3NXzL12CreateArcOutEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table70:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Lfunc_begin26-.Lfunc_begin26  # >> Call Site 1 <<
	.uleb128 .Ltmp448-.Lfunc_begin26        #   Call between .Lfunc_begin26 and .Ltmp448
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.uleb128 .Ltmp450-.Lfunc_begin26        #     jumps to .Ltmp450
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin26        # >> Call Site 3 <<
	.uleb128 .Lfunc_end70-.Ltmp449          #   Call between .Ltmp449 and .Lfunc_end70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
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
	bne	$a2, $a3, .LBB71_16
# %bb.1:
	ld.bu	$a2, $a0, 1
	ld.bu	$a3, $a1, 1
	bne	$a2, $a3, .LBB71_16
# %bb.2:
	ld.bu	$a2, $a0, 2
	ld.bu	$a3, $a1, 2
	bne	$a2, $a3, .LBB71_16
# %bb.3:
	ld.bu	$a2, $a0, 3
	ld.bu	$a3, $a1, 3
	bne	$a2, $a3, .LBB71_16
# %bb.4:
	ld.bu	$a2, $a0, 4
	ld.bu	$a3, $a1, 4
	bne	$a2, $a3, .LBB71_16
# %bb.5:
	ld.bu	$a2, $a0, 5
	ld.bu	$a3, $a1, 5
	bne	$a2, $a3, .LBB71_16
# %bb.6:
	ld.bu	$a2, $a0, 6
	ld.bu	$a3, $a1, 6
	bne	$a2, $a3, .LBB71_16
# %bb.7:
	ld.bu	$a2, $a0, 7
	ld.bu	$a3, $a1, 7
	bne	$a2, $a3, .LBB71_16
# %bb.8:
	ld.bu	$a2, $a0, 8
	ld.bu	$a3, $a1, 8
	bne	$a2, $a3, .LBB71_16
# %bb.9:
	ld.bu	$a2, $a0, 9
	ld.bu	$a3, $a1, 9
	bne	$a2, $a3, .LBB71_16
# %bb.10:
	ld.bu	$a2, $a0, 10
	ld.bu	$a3, $a1, 10
	bne	$a2, $a3, .LBB71_16
# %bb.11:
	ld.bu	$a2, $a0, 11
	ld.bu	$a3, $a1, 11
	bne	$a2, $a3, .LBB71_16
# %bb.12:
	ld.bu	$a2, $a0, 12
	ld.bu	$a3, $a1, 12
	bne	$a2, $a3, .LBB71_16
# %bb.13:
	ld.bu	$a2, $a0, 13
	ld.bu	$a3, $a1, 13
	bne	$a2, $a3, .LBB71_16
# %bb.14:
	ld.bu	$a2, $a0, 14
	ld.bu	$a3, $a1, 14
	bne	$a2, $a3, .LBB71_16
# %bb.15:
	ld.bu	$a0, $a0, 15
	ld.bu	$a1, $a1, 15
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ret
.LBB71_16:
	move	$a0, $zero
	ret
.Lfunc_end71:
	.size	_ZeqRK4GUIDS1_, .Lfunc_end71-_ZeqRK4GUIDS1_
                                        # -- End function
	.section	.text._ZN8IUnknownD2Ev,"axG",@progbits,_ZN8IUnknownD2Ev,comdat
	.weak	_ZN8IUnknownD2Ev                # -- Begin function _ZN8IUnknownD2Ev
	.p2align	5
	.type	_ZN8IUnknownD2Ev,@function
_ZN8IUnknownD2Ev:                       # @_ZN8IUnknownD2Ev
# %bb.0:
	ret
.Lfunc_end72:
	.size	_ZN8IUnknownD2Ev, .Lfunc_end72-_ZN8IUnknownD2Ev
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_XzHandler.cpp
	.type	_GLOBAL__sub_I_XzHandler.cpp,@function
_GLOBAL__sub_I_XzHandler.cpp:           # @_GLOBAL__sub_I_XzHandler.cpp
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(Crc64GenerateTable)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive3NXzL9g_ArcInfoE)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NArchive3NXzL9g_ArcInfoE)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_Z11RegisterArcPK8CArcInfo)
	jr	$t8
.Lfunc_end73:
	.size	_GLOBAL__sub_I_XzHandler.cpp, .Lfunc_end73-_GLOBAL__sub_I_XzHandler.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZN8NArchive3NXz16g_Crc64TableInitE,@object # @_ZN8NArchive3NXz16g_Crc64TableInitE
	.bss
	.globl	_ZN8NArchive3NXz16g_Crc64TableInitE
_ZN8NArchive3NXz16g_Crc64TableInitE:
	.space	1
	.size	_ZN8NArchive3NXz16g_Crc64TableInitE, 1

	.type	_ZTVN8NArchive3NXz8CHandlerE,@object # @_ZTVN8NArchive3NXz8CHandlerE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive3NXz8CHandlerE
	.p2align	3, 0x0
_ZTVN8NArchive3NXz8CHandlerE:
	.dword	0
	.dword	_ZTIN8NArchive3NXz8CHandlerE
	.dword	_ZN8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive3NXz8CHandler6AddRefEv
	.dword	_ZN8NArchive3NXz8CHandler7ReleaseEv
	.dword	_ZN8NArchive3NXz8CHandlerD2Ev
	.dword	_ZN8NArchive3NXz8CHandlerD0Ev
	.dword	_ZN8NArchive3NXz8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback
	.dword	_ZN8NArchive3NXz8CHandler5CloseEv
	.dword	_ZN8NArchive3NXz8CHandler16GetNumberOfItemsEPj
	.dword	_ZN8NArchive3NXz8CHandler11GetPropertyEjjP14tagPROPVARIANT
	.dword	_ZN8NArchive3NXz8CHandler7ExtractEPKjjiP23IArchiveExtractCallback
	.dword	_ZN8NArchive3NXz8CHandler18GetArchivePropertyEjP14tagPROPVARIANT
	.dword	_ZN8NArchive3NXz8CHandler21GetNumberOfPropertiesEPj
	.dword	_ZN8NArchive3NXz8CHandler15GetPropertyInfoEjPPwPjPt
	.dword	_ZN8NArchive3NXz8CHandler28GetNumberOfArchivePropertiesEPj
	.dword	_ZN8NArchive3NXz8CHandler22GetArchivePropertyInfoEjPPwPjPt
	.dword	_ZN8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
	.dword	_ZN8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.dword	_ZN8NArchive3NXz8CHandler15GetFileTimeTypeEPj
	.dword	_ZN8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.dword	-8
	.dword	_ZTIN8NArchive3NXz8CHandlerE
	.dword	_ZThn8_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn8_N8NArchive3NXz8CHandler6AddRefEv
	.dword	_ZThn8_N8NArchive3NXz8CHandler7ReleaseEv
	.dword	_ZThn8_N8NArchive3NXz8CHandlerD1Ev
	.dword	_ZThn8_N8NArchive3NXz8CHandlerD0Ev
	.dword	_ZThn8_N8NArchive3NXz8CHandler7OpenSeqEP19ISequentialInStream
	.dword	-16
	.dword	_ZTIN8NArchive3NXz8CHandlerE
	.dword	_ZThn16_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn16_N8NArchive3NXz8CHandler6AddRefEv
	.dword	_ZThn16_N8NArchive3NXz8CHandler7ReleaseEv
	.dword	_ZThn16_N8NArchive3NXz8CHandlerD1Ev
	.dword	_ZThn16_N8NArchive3NXz8CHandlerD0Ev
	.dword	_ZThn16_N8NArchive3NXz8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.dword	_ZThn16_N8NArchive3NXz8CHandler15GetFileTimeTypeEPj
	.dword	-24
	.dword	_ZTIN8NArchive3NXz8CHandlerE
	.dword	_ZThn24_N8NArchive3NXz8CHandler14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn24_N8NArchive3NXz8CHandler6AddRefEv
	.dword	_ZThn24_N8NArchive3NXz8CHandler7ReleaseEv
	.dword	_ZThn24_N8NArchive3NXz8CHandlerD1Ev
	.dword	_ZThn24_N8NArchive3NXz8CHandlerD0Ev
	.dword	_ZThn24_N8NArchive3NXz8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.size	_ZTVN8NArchive3NXz8CHandlerE, 368

	.type	_ZN8NArchive3NXz6kPropsE,@object # @_ZN8NArchive3NXz6kPropsE
	.data
	.globl	_ZN8NArchive3NXz6kPropsE
	.p2align	3, 0x0
_ZN8NArchive3NXz6kPropsE:
	.dword	0
	.word	7                               # 0x7
	.half	21                              # 0x15
	.space	2
	.dword	0
	.word	8                               # 0x8
	.half	21                              # 0x15
	.space	2
	.dword	0
	.word	22                              # 0x16
	.half	8                               # 0x8
	.space	2
	.size	_ZN8NArchive3NXz6kPropsE, 48

	.type	_ZN8NArchive3NXz9kArcPropsE,@object # @_ZN8NArchive3NXz9kArcPropsE
	.globl	_ZN8NArchive3NXz9kArcPropsE
	.p2align	3, 0x0
_ZN8NArchive3NXz9kArcPropsE:
	.dword	0
	.word	22                              # 0x16
	.half	8                               # 0x8
	.space	2
	.dword	0
	.word	38                              # 0x26
	.half	19                              # 0x13
	.space	2
	.size	_ZN8NArchive3NXz9kArcPropsE, 32

	.type	_ZL7g_Alloc,@object             # @_ZL7g_Alloc
	.p2align	3, 0x0
_ZL7g_Alloc:
	.dword	_ZL7SzAllocPvm
	.dword	_ZL6SzFreePvS_
	.size	_ZL7g_Alloc, 16

	.type	_ZTIN8NArchive3NXz8CHandlerE,@object # @_ZTIN8NArchive3NXz8CHandlerE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTIN8NArchive3NXz8CHandlerE
	.p2align	3, 0x0
_ZTIN8NArchive3NXz8CHandlerE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive3NXz8CHandlerE
	.word	1                               # 0x1
	.word	6                               # 0x6
	.dword	_ZTI10IInArchive
	.dword	2                               # 0x2
	.dword	_ZTI15IArchiveOpenSeq
	.dword	2050                            # 0x802
	.dword	_ZTI11IOutArchive
	.dword	4098                            # 0x1002
	.dword	_ZTI14ISetProperties
	.dword	6146                            # 0x1802
	.dword	_ZTIN8NArchive11COutHandlerE
	.dword	8194                            # 0x2002
	.dword	_ZTI13CMyUnknownImp
	.dword	33794                           # 0x8402
	.size	_ZTIN8NArchive3NXz8CHandlerE, 120

	.type	_ZTSN8NArchive3NXz8CHandlerE,@object # @_ZTSN8NArchive3NXz8CHandlerE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive3NXz8CHandlerE
_ZTSN8NArchive3NXz8CHandlerE:
	.asciz	"N8NArchive3NXz8CHandlerE"
	.size	_ZTSN8NArchive3NXz8CHandlerE, 25

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

	.type	_ZTI14ISetProperties,@object    # @_ZTI14ISetProperties
	.section	.data.rel.ro._ZTI14ISetProperties,"awG",@progbits,_ZTI14ISetProperties,comdat
	.weak	_ZTI14ISetProperties
	.p2align	3, 0x0
_ZTI14ISetProperties:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14ISetProperties
	.dword	_ZTI8IUnknown
	.size	_ZTI14ISetProperties, 24

	.type	_ZTS14ISetProperties,@object    # @_ZTS14ISetProperties
	.section	.rodata._ZTS14ISetProperties,"aG",@progbits,_ZTS14ISetProperties,comdat
	.weak	_ZTS14ISetProperties
_ZTS14ISetProperties:
	.asciz	"14ISetProperties"
	.size	_ZTS14ISetProperties, 17

	.type	_ZTIN8NArchive11COutHandlerE,@object # @_ZTIN8NArchive11COutHandlerE
	.section	.data.rel.ro._ZTIN8NArchive11COutHandlerE,"awG",@progbits,_ZTIN8NArchive11COutHandlerE,comdat
	.weak	_ZTIN8NArchive11COutHandlerE
	.p2align	3, 0x0
_ZTIN8NArchive11COutHandlerE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN8NArchive11COutHandlerE
	.size	_ZTIN8NArchive11COutHandlerE, 16

	.type	_ZTSN8NArchive11COutHandlerE,@object # @_ZTSN8NArchive11COutHandlerE
	.section	.rodata._ZTSN8NArchive11COutHandlerE,"aG",@progbits,_ZTSN8NArchive11COutHandlerE,comdat
	.weak	_ZTSN8NArchive11COutHandlerE
_ZTSN8NArchive11COutHandlerE:
	.asciz	"N8NArchive11COutHandlerE"
	.size	_ZTSN8NArchive11COutHandlerE, 25

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

	.type	_ZTVN8NArchive3NXz16CSeekToSeqStreamE,@object # @_ZTVN8NArchive3NXz16CSeekToSeqStreamE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive3NXz16CSeekToSeqStreamE
	.p2align	3, 0x0
_ZTVN8NArchive3NXz16CSeekToSeqStreamE:
	.dword	0
	.dword	_ZTIN8NArchive3NXz16CSeekToSeqStreamE
	.dword	_ZN8NArchive3NXz16CSeekToSeqStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive3NXz16CSeekToSeqStream6AddRefEv
	.dword	_ZN8NArchive3NXz16CSeekToSeqStream7ReleaseEv
	.dword	_ZN8NArchive3NXz16CSeekToSeqStreamD2Ev
	.dword	_ZN8NArchive3NXz16CSeekToSeqStreamD0Ev
	.dword	_ZN8NArchive3NXz16CSeekToSeqStream4ReadEPvjPj
	.dword	_ZN8NArchive3NXz16CSeekToSeqStream4SeekExjPy
	.size	_ZTVN8NArchive3NXz16CSeekToSeqStreamE, 72

	.type	_ZTIN8NArchive3NXz16CSeekToSeqStreamE,@object # @_ZTIN8NArchive3NXz16CSeekToSeqStreamE
	.globl	_ZTIN8NArchive3NXz16CSeekToSeqStreamE
	.p2align	3, 0x0
_ZTIN8NArchive3NXz16CSeekToSeqStreamE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive3NXz16CSeekToSeqStreamE
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI9IInStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN8NArchive3NXz16CSeekToSeqStreamE, 56

	.type	_ZTSN8NArchive3NXz16CSeekToSeqStreamE,@object # @_ZTSN8NArchive3NXz16CSeekToSeqStreamE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive3NXz16CSeekToSeqStreamE
_ZTSN8NArchive3NXz16CSeekToSeqStreamE:
	.asciz	"N8NArchive3NXz16CSeekToSeqStreamE"
	.size	_ZTSN8NArchive3NXz16CSeekToSeqStreamE, 34

	.type	_ZTI9IInStream,@object          # @_ZTI9IInStream
	.section	.data.rel.ro._ZTI9IInStream,"awG",@progbits,_ZTI9IInStream,comdat
	.weak	_ZTI9IInStream
	.p2align	3, 0x0
_ZTI9IInStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS9IInStream
	.dword	_ZTI19ISequentialInStream
	.size	_ZTI9IInStream, 24

	.type	_ZTS9IInStream,@object          # @_ZTS9IInStream
	.section	.rodata._ZTS9IInStream,"aG",@progbits,_ZTS9IInStream,comdat
	.weak	_ZTS9IInStream
_ZTS9IInStream:
	.asciz	"9IInStream"
	.size	_ZTS9IInStream, 11

	.type	_ZTI19ISequentialInStream,@object # @_ZTI19ISequentialInStream
	.section	.data.rel.ro._ZTI19ISequentialInStream,"awG",@progbits,_ZTI19ISequentialInStream,comdat
	.weak	_ZTI19ISequentialInStream
	.p2align	3, 0x0
_ZTI19ISequentialInStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19ISequentialInStream
	.dword	_ZTI8IUnknown
	.size	_ZTI19ISequentialInStream, 24

	.type	_ZTS19ISequentialInStream,@object # @_ZTS19ISequentialInStream
	.section	.rodata._ZTS19ISequentialInStream,"aG",@progbits,_ZTS19ISequentialInStream,comdat
	.weak	_ZTS19ISequentialInStream
_ZTS19ISequentialInStream:
	.asciz	"19ISequentialInStream"
	.size	_ZTS19ISequentialInStream, 22

	.type	_ZTV10IInArchive,@object        # @_ZTV10IInArchive
	.section	.data.rel.ro._ZTV10IInArchive,"awG",@progbits,_ZTV10IInArchive,comdat
	.weak	_ZTV10IInArchive
	.p2align	3, 0x0
_ZTV10IInArchive:
	.dword	0
	.dword	_ZTI10IInArchive
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN10IInArchiveD0Ev
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.size	_ZTV10IInArchive, 136

	.type	_ZTV15IArchiveOpenSeq,@object   # @_ZTV15IArchiveOpenSeq
	.section	.data.rel.ro._ZTV15IArchiveOpenSeq,"awG",@progbits,_ZTV15IArchiveOpenSeq,comdat
	.weak	_ZTV15IArchiveOpenSeq
	.p2align	3, 0x0
_ZTV15IArchiveOpenSeq:
	.dword	0
	.dword	_ZTI15IArchiveOpenSeq
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN15IArchiveOpenSeqD0Ev
	.dword	__cxa_pure_virtual
	.size	_ZTV15IArchiveOpenSeq, 64

	.type	_ZTV11IOutArchive,@object       # @_ZTV11IOutArchive
	.section	.data.rel.ro._ZTV11IOutArchive,"awG",@progbits,_ZTV11IOutArchive,comdat
	.weak	_ZTV11IOutArchive
	.p2align	3, 0x0
_ZTV11IOutArchive:
	.dword	0
	.dword	_ZTI11IOutArchive
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN11IOutArchiveD0Ev
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.size	_ZTV11IOutArchive, 72

	.type	_ZTV14ISetProperties,@object    # @_ZTV14ISetProperties
	.section	.data.rel.ro._ZTV14ISetProperties,"awG",@progbits,_ZTV14ISetProperties,comdat
	.weak	_ZTV14ISetProperties
	.p2align	3, 0x0
_ZTV14ISetProperties:
	.dword	0
	.dword	_ZTI14ISetProperties
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN14ISetPropertiesD0Ev
	.dword	__cxa_pure_virtual
	.size	_ZTV14ISetProperties, 64

	.type	_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE,@object # @_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE
	.dword	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE,@object # @_ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE,@object # @_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE
_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE:
	.asciz	"13CObjectVectorIN8NArchive14COneMethodInfoEE"
	.size	_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE, 45

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

	.type	_ZN8NArchive3NXzL11g_NamePairsE,@object # @_ZN8NArchive3NXzL11g_NamePairsE
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZN8NArchive3NXzL11g_NamePairsE:
	.word	1                               # 0x1
	.space	4
	.dword	.L.str
	.word	3                               # 0x3
	.space	4
	.dword	.L.str.2
	.word	4                               # 0x4
	.space	4
	.dword	.L.str.3
	.word	5                               # 0x5
	.space	4
	.dword	.L.str.4
	.word	6                               # 0x6
	.space	4
	.dword	.L.str.5
	.word	7                               # 0x7
	.space	4
	.dword	.L.str.6
	.word	8                               # 0x8
	.space	4
	.dword	.L.str.7
	.word	9                               # 0x9
	.space	4
	.dword	.L.str.8
	.word	33                              # 0x21
	.space	4
	.dword	.L.str.9
	.size	_ZN8NArchive3NXzL11g_NamePairsE, 144

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SB"
	.size	.L.str, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Delta"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"x86"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"PPC"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"IA64"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ARM"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ARMT"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SPARC"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"LZMA2"
	.size	.L.str.9, 6

	.type	_ZN8NArchive3NXzL7kChecksE,@object # @_ZN8NArchive3NXzL7kChecksE
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZN8NArchive3NXzL7kChecksE:
	.dword	.L.str.11
	.dword	.L.str.12
	.dword	0
	.dword	0
	.dword	.L.str.13
	.dword	0
	.dword	0
	.dword	0
	.dword	0
	.dword	0
	.dword	.L.str.14
	.dword	0
	.dword	0
	.dword	0
	.dword	0
	.dword	0
	.size	_ZN8NArchive3NXzL7kChecksE, 128

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Check-"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"NoCheck"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"CRC32"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"CRC64"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SHA256"
	.size	.L.str.14, 7

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.15:
	.word	120                             # 0x78
	.word	122                             # 0x7a
	.word	0                               # 0x0
	.size	.L.str.15, 12

	.type	.L.str.16,@object               # @.str.16
	.p2align	2, 0x0
.L.str.16:
	.word	120                             # 0x78
	.word	122                             # 0x7a
	.word	32                              # 0x20
	.word	116                             # 0x74
	.word	120                             # 0x78
	.word	122                             # 0x7a
	.word	0                               # 0x0
	.size	.L.str.16, 28

	.type	.L.str.17,@object               # @.str.17
	.p2align	2, 0x0
.L.str.17:
	.word	42                              # 0x2a
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	116                             # 0x74
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.17, 28

	.type	_ZN8NArchive3NXzL9g_ArcInfoE,@object # @_ZN8NArchive3NXzL9g_ArcInfoE
	.data
	.p2align	3, 0x0
_ZN8NArchive3NXzL9g_ArcInfoE:
	.dword	.L.str.15
	.dword	.L.str.16
	.dword	.L.str.17
	.byte	12                              # 0xc
	.byte	253                             # 0xfd
	.byte	55                              # 0x37
	.byte	122                             # 0x7a
	.byte	88                              # 0x58
	.byte	90                              # 0x5a
	.space	23
	.space	3
	.word	6                               # 0x6
	.byte	1                               # 0x1
	.space	3
	.dword	_ZN8NArchive3NXzL9CreateArcEv
	.dword	_ZN8NArchive3NXzL12CreateArcOutEv
	.size	_ZN8NArchive3NXzL9g_ArcInfoE, 80

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_XzHandler.cpp
	.data
	.p2align	3, 0x0
.L_ZTIPKc.DW.stub:
	.dword	_ZTIPKc
	.globl	_ZN8NArchive3NXz8CHandlerC1Ev
	.type	_ZN8NArchive3NXz8CHandlerC1Ev,@function
_ZN8NArchive3NXz8CHandlerC1Ev = _ZN8NArchive3NXz8CHandlerC2Ev
	.globl	_ZN8NArchive3NXz17COpenCallbackWrapC1EP20IArchiveOpenCallback
	.type	_ZN8NArchive3NXz17COpenCallbackWrapC1EP20IArchiveOpenCallback,@function
_ZN8NArchive3NXz17COpenCallbackWrapC1EP20IArchiveOpenCallback = _ZN8NArchive3NXz17COpenCallbackWrapC2EP20IArchiveOpenCallback
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
	.addrsig_sym _ZN8NArchive3NXzL20OpenCallbackProgressEPvyy
	.addrsig_sym _ZL7SzAllocPvm
	.addrsig_sym _ZL6SzFreePvS_
	.addrsig_sym _ZN8NArchive3NXzL9CreateArcEv
	.addrsig_sym _ZN8NArchive3NXzL12CreateArcOutEv
	.addrsig_sym _GLOBAL__sub_I_XzHandler.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTIPKc
	.addrsig_sym _ZL7g_Alloc
	.addrsig_sym _ZTIN8NArchive3NXz8CHandlerE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN8NArchive3NXz8CHandlerE
	.addrsig_sym _ZTI10IInArchive
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS10IInArchive
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI15IArchiveOpenSeq
	.addrsig_sym _ZTS15IArchiveOpenSeq
	.addrsig_sym _ZTI11IOutArchive
	.addrsig_sym _ZTS11IOutArchive
	.addrsig_sym _ZTI14ISetProperties
	.addrsig_sym _ZTS14ISetProperties
	.addrsig_sym _ZTIN8NArchive11COutHandlerE
	.addrsig_sym _ZTSN8NArchive11COutHandlerE
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTIN8NArchive3NXz16CSeekToSeqStreamE
	.addrsig_sym _ZTSN8NArchive3NXz16CSeekToSeqStreamE
	.addrsig_sym _ZTI9IInStream
	.addrsig_sym _ZTS9IInStream
	.addrsig_sym _ZTI19ISequentialInStream
	.addrsig_sym _ZTS19ISequentialInStream
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive14COneMethodInfoEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CObjectVectorI5CPropE
	.addrsig_sym _ZTS13CObjectVectorI5CPropE
	.addrsig_sym _ZN8NArchive3NXzL9g_ArcInfoE
	.addrsig_sym IID_ISetProperties
