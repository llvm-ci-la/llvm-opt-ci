	.file	"OpenArchive.cpp"
	.text
	.globl	_Z22GetArchiveItemBoolPropP10IInArchivejjRb # -- Begin function _Z22GetArchiveItemBoolPropP10IInArchivejjRb
	.p2align	5
	.type	_Z22GetArchiveItemBoolPropP10IInArchivejjRb,@function
_Z22GetArchiveItemBoolPropP10IInArchivejjRb: # @_Z22GetArchiveItemBoolPropP10IInArchivejjRb
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.d	$a4, $a0, 0
	move	$fp, $a3
	st.b	$zero, $a3, 0
	ld.d	$a4, $a4, 64
	st.w	$zero, $sp, 8
.Ltmp0:                                 # EH_LABEL
	addi.d	$a3, $sp, 8
	jirl	$ra, $a4, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$s0, $a0
	bnez	$a0, .LBB0_7
# %bb.2:
	ld.hu	$a0, $sp, 8
	beqz	$a0, .LBB0_5
# %bb.3:
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB0_6
# %bb.4:
	ld.hu	$a0, $sp, 16
	sltu	$a0, $zero, $a0
	st.b	$a0, $fp, 0
.LBB0_5:
	move	$s0, $zero
	b	.LBB0_7
.LBB0_6:
	lu12i.w	$a0, -524284
	ori	$s0, $a0, 5
.LBB0_7:
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.8:                                # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit13
	move	$a0, $s0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_9:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_10:
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.11:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_12:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z22GetArchiveItemBoolPropP10IInArchivejjRb, .Lfunc_end0-_Z22GetArchiveItemBoolPropP10IInArchivejjRb
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
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
	.globl	_Z19IsArchiveItemFolderP10IInArchivejRb # -- Begin function _Z19IsArchiveItemFolderP10IInArchivejRb
	.p2align	5
	.type	_Z19IsArchiveItemFolderP10IInArchivejRb,@function
_Z19IsArchiveItemFolderP10IInArchivejRb: # @_Z19IsArchiveItemFolderP10IInArchivejRb
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.d	$a3, $a0, 0
	move	$fp, $a2
	st.b	$zero, $a2, 0
	ld.d	$a4, $a3, 64
	st.w	$zero, $sp, 8
.Ltmp9:                                 # EH_LABEL
	ori	$a2, $zero, 6
	addi.d	$a3, $sp, 8
	jirl	$ra, $a4, 0
.Ltmp10:                                # EH_LABEL
# %bb.1:
	move	$s0, $a0
	bnez	$a0, .LBB1_7
# %bb.2:
	ld.hu	$a0, $sp, 8
	beqz	$a0, .LBB1_5
# %bb.3:
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB1_6
# %bb.4:
	ld.hu	$a0, $sp, 16
	sltu	$a0, $zero, $a0
	st.b	$a0, $fp, 0
.LBB1_5:
	move	$s0, $zero
	b	.LBB1_7
.LBB1_6:
	lu12i.w	$a0, -524284
	ori	$s0, $a0, 5
.LBB1_7:
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.8:                                # %_Z22GetArchiveItemBoolPropP10IInArchivejjRb.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_9:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_10:
.Ltmp11:                                # EH_LABEL
	move	$fp, $a0
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.11:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_12:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z19IsArchiveItemFolderP10IInArchivejRb, .Lfunc_end1-_Z19IsArchiveItemFolderP10IInArchivejRb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
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
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp16                #   Call between .Ltmp16 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end1-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end1
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
	.globl	_ZNK4CArc11GetItemPathEjR11CStringBaseIwE # -- Begin function _ZNK4CArc11GetItemPathEjR11CStringBaseIwE
	.p2align	5
	.type	_ZNK4CArc11GetItemPathEjR11CStringBaseIwE,@function
_ZNK4CArc11GetItemPathEjR11CStringBaseIwE: # @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
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
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	st.w	$zero, $sp, 16
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 64
	move	$fp, $a2
	move	$s0, $a1
.Ltmp18:                                # EH_LABEL
	ori	$a2, $zero, 3
	addi.d	$a3, $sp, 16
	jirl	$ra, $a4, 0
.Ltmp19:                                # EH_LABEL
# %bb.1:
	move	$s2, $a0
	beqz	$a0, .LBB2_3
# %bb.2:
	move	$s3, $zero
	b	.LBB2_17
.LBB2_3:
	ld.hu	$a0, $sp, 16
	beqz	$a0, .LBB2_7
# %bb.4:
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB2_8
# %bb.5:
	ld.d	$s5, $fp, 0
	ld.d	$s2, $sp, 24
	st.w	$zero, $fp, 8
	st.w	$zero, $s5, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s7, $fp, 12
	move	$s3, $a0
	addi.w	$s6, $a0, 1
	bne	$s6, $s7, .LBB2_9
# %bb.6:
	move	$s4, $s5
	b	.LBB2_14
.LBB2_7:
	ld.d	$a0, $fp, 0
	move	$s2, $zero
	st.w	$zero, $fp, 8
	st.w	$zero, $a0, 0
	b	.LBB2_16
.LBB2_8:
	move	$s3, $zero
	lu12i.w	$a0, -524284
	ori	$s2, $a0, 5
	b	.LBB2_17
.LBB2_9:
	addi.w	$a0, $s3, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $s6, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.10:                               # %.noexc
	move	$s4, $a0
	blez	$s7, .LBB2_12
# %bb.11:                               # %._crit_edge.thread.i.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB2_13
.LBB2_12:
	move	$a0, $zero
.LBB2_13:
	st.d	$s4, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$s6, $fp, 12
	.p2align	4, , 16
.LBB2_14:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	addi.d	$s2, $s2, 4
	addi.d	$a1, $s4, 4
	st.w	$a0, $s4, 0
	move	$s4, $a1
	bnez	$a0, .LBB2_14
# %bb.15:                               # %_ZN11CStringBaseIwEaSEPKw.exit
	move	$s2, $zero
	st.w	$s3, $fp, 8
.LBB2_16:
	ori	$s3, $zero, 1
.LBB2_17:
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.18:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	beqz	$s3, .LBB2_42
# %bb.19:
	ld.w	$a0, $fp, 8
	bnez	$a0, .LBB2_41
# %bb.20:
	addi.d	$s5, $s1, 24
	beq	$s5, $fp, .LBB2_30
# %bb.21:
	ld.d	$s4, $fp, 0
	st.w	$zero, $fp, 8
	st.w	$zero, $s4, 0
	ld.w	$a0, $s1, 32
	ld.w	$s7, $fp, 12
	addi.w	$s6, $a0, 1
	bne	$s6, $s7, .LBB2_23
# %bb.22:
	move	$s3, $s4
	b	.LBB2_27
.LBB2_23:
	slti	$a0, $a0, -1
	slli.d	$a1, $s6, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s7, .LBB2_25
# %bb.24:                               # %._crit_edge.thread.i.i44
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB2_26
.LBB2_25:
	move	$a0, $zero
.LBB2_26:
	st.d	$s3, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s6, $fp, 12
.LBB2_27:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i40
	ld.d	$a0, $s5, 0
	.p2align	4, , 16
.LBB2_28:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s3, 4
	st.w	$a1, $s3, 0
	move	$s3, $a2
	bnez	$a1, .LBB2_28
# %bb.29:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a0, $s1, 32
	st.w	$a0, $fp, 8
.LBB2_30:                               # %_ZN11CStringBaseIwEaSERKS0_.exit
	ld.d	$a0, $s1, 0
	st.w	$zero, $sp, 16
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 64
.Ltmp30:                                # EH_LABEL
	ori	$a2, $zero, 5
	addi.d	$a3, $sp, 16
	move	$a1, $s0
	jirl	$ra, $a4, 0
.Ltmp31:                                # EH_LABEL
# %bb.31:
	beqz	$a0, .LBB2_33
# %bb.32:
	move	$fp, $zero
	move	$s2, $a0
	b	.LBB2_39
.LBB2_33:
	ld.hu	$a0, $sp, 16
	beqz	$a0, .LBB2_37
# %bb.34:
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB2_38
# %bb.35:
.Ltmp33:                                # EH_LABEL
	ori	$a1, $zero, 46
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEw)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.36:
	ld.d	$a1, $sp, 24
.Ltmp35:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
.LBB2_37:
	ori	$fp, $zero, 1
	b	.LBB2_39
.LBB2_38:
	move	$fp, $zero
	lu12i.w	$a0, -524284
	ori	$s2, $a0, 5
.LBB2_39:
.Ltmp41:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.40:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit47
	beqz	$fp, .LBB2_42
.LBB2_41:
	move	$s2, $zero
.LBB2_42:
	move	$a0, $s2
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB2_43:
.Ltmp37:                                # EH_LABEL
	b	.LBB2_47
.LBB2_44:
.Ltmp23:                                # EH_LABEL
	b	.LBB2_51
.LBB2_45:
.Ltmp43:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_46:
.Ltmp32:                                # EH_LABEL
.LBB2_47:
	move	$fp, $a0
.Ltmp38:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
	b	.LBB2_52
.LBB2_48:
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_49:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_50:
.Ltmp20:                                # EH_LABEL
.LBB2_51:
	move	$fp, $a0
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
.LBB2_52:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_53:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZNK4CArc11GetItemPathEjR11CStringBaseIwE, .Lfunc_end2-_ZNK4CArc11GetItemPathEjR11CStringBaseIwE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
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
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin2          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin2          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp27-.Ltmp22                #   Call between .Ltmp22 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin2          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp36-.Ltmp33                #   Call between .Ltmp33 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin2          #     jumps to .Ltmp43
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp38-.Ltmp42                #   Call between .Ltmp42 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin2          #     jumps to .Ltmp40
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp39-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp24-.Ltmp39                #   Call between .Ltmp39 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin2          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Lfunc_end2-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end2
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
	bgtz	$a2, .LBB3_21
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
	beq	$s1, $s4, .LBB3_21
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
	blez	$s4, .LBB3_8
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blez	$s0, .LBB3_9
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s0, $a2, .LBB3_17
# %bb.5:                                # %iter.check
	sub.d	$a2, $fp, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB3_17
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s0, $a1, .LBB3_10
# %bb.7:
	move	$a1, $zero
	b	.LBB3_14
.LBB3_8:
	move	$a2, $s3
	move	$a1, $s2
	b	.LBB3_20
.LBB3_9:                                # %._crit_edge.i.i
	move	$a2, $s3
	move	$a1, $s2
	bnez	$a0, .LBB3_19
	b	.LBB3_20
.LBB3_10:                               # %vector.ph
	bstrpick.d	$a1, $s0, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $fp, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB3_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB3_11
# %bb.12:                               # %middle.block
	beq	$a1, $s0, .LBB3_19
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a2, $s0, 12
	beqz	$a2, .LBB3_17
.LBB3_14:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s0, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $fp, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB3_15:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB3_15
# %bb.16:                               # %vec.epilog.middle.block
	beq	$a1, $s0, .LBB3_19
.LBB3_17:                               # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s0, $a1
	alsl.d	$a3, $a1, $fp, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB3_18:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB3_18
.LBB3_19:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	ld.w	$s0, $s3, 8
.LBB3_20:
	move	$a0, $a2
	st.d	$fp, $a2, 0
	slli.d	$a2, $s0, 2
	stx.w	$zero, $fp, $a2
	st.w	$s1, $a0, 12
.LBB3_21:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
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
.Lfunc_end3:
	.size	_ZN11CStringBaseIwEpLEw, .Lfunc_end3-_ZN11CStringBaseIwEpLEw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEPKw,"axG",@progbits,_ZN11CStringBaseIwEpLEPKw,comdat
	.weak	_ZN11CStringBaseIwEpLEPKw       # -- Begin function _ZN11CStringBaseIwEpLEPKw
	.p2align	5
	.type	_ZN11CStringBaseIwEpLEPKw,@function
_ZN11CStringBaseIwEpLEPKw:              # @_ZN11CStringBaseIwEpLEPKw
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
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
	ld.w	$s5, $fp, 12
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	nor	$a1, $s3, $zero
	add.w	$a1, $s5, $a1
	bge	$a1, $a0, .LBB4_20
# %bb.1:
	ori	$a2, $zero, 64
	slt	$a2, $a2, $s5
	bstrpick.d	$a3, $s5, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s5
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$a3, $a2, $a1
	slt	$a0, $a3, $a0
	sub.d	$a1, $s1, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	add.w	$a0, $a0, $s5
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB4_20
# %bb.2:
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s5, .LBB4_19
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $fp, 0
	blez	$s3, .LBB4_8
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s3, $a2, .LBB4_16
# %bb.5:                                # %iter.check
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB4_16
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB4_9
# %bb.7:
	move	$a1, $zero
	b	.LBB4_13
.LBB4_8:                                # %._crit_edge.i.i
	bnez	$a0, .LBB4_18
	b	.LBB4_19
.LBB4_9:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s2, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB4_10
# %bb.11:                               # %middle.block
	beq	$a1, $s3, .LBB4_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a2, $s3, 12
	beqz	$a2, .LBB4_16
.LBB4_13:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s2, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB4_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB4_14
# %bb.15:                               # %vec.epilog.middle.block
	beq	$a1, $s3, .LBB4_18
.LBB4_16:                               # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s3, $a1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB4_17:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_17
.LBB4_18:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
.LBB4_19:
	st.d	$s2, $fp, 0
	slli.d	$a0, $s3, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
.LBB4_20:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a0, $fp, 0
	alsl.d	$a0, $s3, $a0, 2
	.p2align	4, , 16
.LBB4_21:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB4_21
# %bb.22:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	add.d	$a0, $s3, $s1
	st.w	$a0, $fp, 8
	move	$a0, $fp
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
.Lfunc_end4:
	.size	_ZN11CStringBaseIwEpLEPKw, .Lfunc_end4-_ZN11CStringBaseIwEpLEPKw
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb # -- Begin function _ZNK4CArc12GetItemMTimeEjR9_FILETIMERb
	.p2align	5
	.type	_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb,@function
_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb: # @_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a0
	st.b	$zero, $a3, 0
	st.d	$zero, $a2, 0
	ld.d	$a0, $a0, 0
	st.w	$zero, $sp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 64
.Ltmp44:                                # EH_LABEL
	ori	$a2, $zero, 12
	addi.d	$a3, $sp, 8
	jirl	$ra, $a4, 0
.Ltmp45:                                # EH_LABEL
# %bb.1:
	move	$s2, $a0
	bnez	$a0, .LBB5_10
# %bb.2:
	ld.hu	$a0, $sp, 8
	beqz	$a0, .LBB5_5
# %bb.3:
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB5_8
# %bb.4:
	ld.d	$a0, $sp, 16
	b	.LBB5_7
.LBB5_5:
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB5_9
# %bb.6:
	ld.d	$a0, $s1, 48
.LBB5_7:                                # %.sink.split
	move	$s2, $zero
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 0
	b	.LBB5_10
.LBB5_8:
	lu12i.w	$a0, -524284
	ori	$s2, $a0, 5
	b	.LBB5_10
.LBB5_9:
	move	$s2, $zero
.LBB5_10:
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.11:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit17
	move	$a0, $s2
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB5_12:
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_13:
.Ltmp46:                                # EH_LABEL
	move	$fp, $a0
.Ltmp47:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.14:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_15:
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb, .Lfunc_end5-_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp44-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin3          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin3          #     jumps to .Ltmp52
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp51                #   Call between .Ltmp51 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin3          #     jumps to .Ltmp49
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp48            #   Call between .Ltmp48 and .Lfunc_end5
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback
.LCPI6_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback,@function
_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback: # @_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
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
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $a3
	move	$s5, $a2
	move	$s4, $a1
	beqz	$a0, .LBB6_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $s2, 0
.LBB6_2:                                # %_ZN9CMyComPtrI10IInArchiveE7ReleaseEv.exit
	ld.d	$a0, $s2, 64
	st.w	$zero, $s2, 72
	st.w	$zero, $a0, 0
	addi.d	$a1, $s2, 8
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_Z23ExtractFileNameFromPathRK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.3:
	move	$fp, $a0
	ld.w	$a0, $sp, 464
	st.w	$zero, $fp, 0
	beqz	$a0, .LBB6_16
# %bb.4:
	ld.d	$a1, $sp, 456
	slli.d	$a2, $a0, 2
	addi.d	$a2, $a2, -4
	ori	$a3, $zero, 46
	addi.w	$a4, $zero, -4
	.p2align	4, , 16
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $a1, $a2
	beq	$a5, $a3, .LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	addi.d	$a2, $a2, -4
	bne	$a2, $a4, .LBB6_5
	b	.LBB6_16
.LBB6_7:                                # %_ZNK11CStringBaseIwE11ReverseFindEw.exit
	srli.d	$a1, $a2, 2
	addi.w	$a2, $a1, 0
	bltz	$a2, .LBB6_16
# %bb.8:
	addi.w	$a2, $a1, 1
	sub.w	$a3, $a0, $a2
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 456
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.9:                                # %_ZNK11CStringBaseIwE3MidEi.exit
	ld.w	$a0, $sp, 112
	addi.w	$a1, $a0, 1
	ori	$a2, $zero, 4
	st.w	$zero, $fp, 0
	beq	$a1, $a2, .LBB6_12
# %bb.10:
	slti	$a0, $a0, -1
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.11:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.w	$zero, $s1, 0
	move	$fp, $s1
.LBB6_12:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $sp, 104
	move	$a1, $zero
	.p2align	4, , 16
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $fp, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_13
# %bb.14:                               # %_ZN11CStringBaseIwEaSERKS0_.exit
	beqz	$a0, .LBB6_16
# %bb.15:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_16:                               # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 432
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 448
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$s1, $sp, 424
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	bltz	$s5, .LBB6_100
# %bb.17:
.Ltmp129:                               # EH_LABEL
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.18:                               # %_ZN13CRecordVectorIiE3AddEi.exit
	ld.w	$a0, $sp, 436
	ld.d	$a1, $sp, 440
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a0, $sp, 436
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 436
                                        # implicit-def: $r30
.LBB6_19:                               # %._crit_edge626.thread
	ld.w	$a0, $sp, 436
	blez	$a0, .LBB6_96
# %bb.20:                               # %.lr.ph633
	addi.d	$a0, $s2, 24
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(IID_IArchiveOpenSeq)
	ld.d	$a0, $a0, %got_pc_lo12(IID_IArchiveOpenSeq)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s6, $zero
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB6_22
	.p2align	4, , 16
.LBB6_21:                               # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.w	$a0, $sp, 436
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB6_96
.LBB6_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_47 Depth 2
                                        #     Child Loop BB6_56 Depth 2
                                        #     Child Loop BB6_81 Depth 2
                                        #     Child Loop BB6_90 Depth 2
	beqz	$s3, .LBB6_25
# %bb.23:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 48
.Ltmp132:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp133:                               # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB6_22 Depth=1
	move	$s8, $a0
	bnez	$a0, .LBB6_97
.LBB6_25:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 440
	slli.d	$a1, $s6, 2
	ldx.w	$a0, $a0, $a1
	st.w	$a0, $s2, 40
	ld.d	$a1, $s4, 32
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
.Ltmp135:                               # EH_LABEL
	jirl	$ra, $a0, 0
.Ltmp136:                               # EH_LABEL
# %bb.26:                               # %.noexc379
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s5, $a0
	beqz	$a0, .LBB6_21
# %bb.27:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp137:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp138:                               # EH_LABEL
# %bb.28:                               # %_ZNK7CCodecs15CreateInArchiveEiR9CMyComPtrI10IInArchiveE.exit
                                        #   in Loop: Header=BB6_22 Depth=1
	beqz	$s3, .LBB6_38
# %bb.29:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a4, $a0, 40
.Ltmp140:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL22kMaxCheckStartPosition)
	addi.d	$a2, $a0, %pc_lo12(_ZL22kMaxCheckStartPosition)
	move	$a0, $s5
	move	$a1, $s3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.Ltmp141:                               # EH_LABEL
.LBB6_30:                               #   in Loop: Header=BB6_22 Depth=1
	ori	$s1, $zero, 1
	beq	$a0, $s1, .LBB6_85
# %bb.31:                               #   in Loop: Header=BB6_22 Depth=1
	bnez	$a0, .LBB6_43
# %bb.32:                               #   in Loop: Header=BB6_22 Depth=1
	st.w	$zero, $sp, 104
	ld.d	$a0, $s5, 0
	ld.d	$a3, $a0, 80
.Ltmp153:                               # EH_LABEL
	ori	$a1, $zero, 55
	addi.d	$a2, $sp, 104
	move	$a0, $s5
	jirl	$ra, $a3, 0
.Ltmp154:                               # EH_LABEL
# %bb.33:                               #   in Loop: Header=BB6_22 Depth=1
	ld.hu	$a0, $sp, 104
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_49
# %bb.34:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a1, $sp, 112
	addi.d	$a0, $a0, -8
	sltui	$a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	masknez	$a2, $a2, $a0
	move	$s0, $s2
	ld.d	$s2, $s2, 64
	maskeqz	$a0, $a1, $a0
	or	$s7, $a0, $a2
	st.w	$zero, $s0, 72
	st.w	$zero, $s2, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s0, 76
	move	$s8, $a0
	addi.w	$s3, $a0, 1
	beq	$s3, $s0, .LBB6_47
# %bb.35:                               #   in Loop: Header=BB6_22 Depth=1
	addi.w	$a0, $s8, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.36:                               # %.noexc393
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s1, $a0
	blez	$s0, .LBB6_45
# %bb.37:                               # %._crit_edge.thread.i.i391
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 72
	b	.LBB6_46
	.p2align	4, , 16
.LBB6_38:                               #   in Loop: Header=BB6_22 Depth=1
	st.d	$zero, $sp, 104
	ld.d	$a0, $s5, 0
	ld.d	$a3, $a0, 0
.Ltmp142:                               # EH_LABEL
	addi.d	$a2, $sp, 104
	move	$a0, $s5
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp143:                               # EH_LABEL
# %bb.39:                               # %_ZNK9CMyComPtrI10IInArchiveE14QueryInterfaceIvEEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB6_44
# %bb.40:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 40
.Ltmp144:                               # EH_LABEL
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a2, 0
.Ltmp145:                               # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a1, $sp, 104
	beqz	$a1, .LBB6_30
# %bb.42:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp150:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $s0
.Ltmp151:                               # EH_LABEL
	b	.LBB6_30
.LBB6_43:                               # %.thread524.fold.split
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s1, $zero
	move	$s7, $a0
	b	.LBB6_85
.LBB6_44:                               # %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit385
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s1, $zero
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_85
.LBB6_45:                               #   in Loop: Header=BB6_22 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
.LBB6_46:                               #   in Loop: Header=BB6_22 Depth=1
	st.d	$s1, $a1, 64
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $a1, 76
	move	$s2, $s1
	.p2align	4, , 16
.LBB6_47:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i387
                                        #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s7, 0
	addi.d	$s7, $s7, 4
	addi.d	$a1, $s2, 4
	st.w	$a0, $s2, 0
	move	$s2, $a1
	bnez	$a0, .LBB6_47
# %bb.48:                               # %_ZN11CStringBaseIwEaSEPKw.exit
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.w	$s8, $s2, 72
.LBB6_49:                               #   in Loop: Header=BB6_22 Depth=1
.Ltmp161:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
# %bb.50:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp164:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp165:                               # EH_LABEL
# %bb.51:                               # %.noexc397
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB6_53
# %bb.52:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp166:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp167:                               # EH_LABEL
.LBB6_53:                               #   in Loop: Header=BB6_22 Depth=1
	st.d	$s5, $s2, 0
	ld.w	$a0, $s2, 40
	ld.d	$a1, $s4, 32
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
	ld.w	$a0, $s1, 52
	beqz	$a0, .LBB6_61
# %bb.54:                               #   in Loop: Header=BB6_22 Depth=1
	blez	$a0, .LBB6_69
# %bb.55:                               # %.lr.ph.i429.preheader
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s3, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB6_56:                               # %.lr.ph.i429
                                        #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 0
.Ltmp169:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.57:                               # %.noexc434
                                        #   in Loop: Header=BB6_56 Depth=2
	beqz	$a0, .LBB6_60
# %bb.58:                               #   in Loop: Header=BB6_56 Depth=2
	ld.w	$a0, $s1, 52
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	blt	$s2, $a0, .LBB6_56
# %bb.59:                               #   in Loop: Header=BB6_22 Depth=1
	move	$s2, $zero
.LBB6_60:                               # %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit435
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB6_70
.LBB6_61:                               #   in Loop: Header=BB6_22 Depth=1
.Ltmp178:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.62:                               # %.noexc404
                                        #   in Loop: Header=BB6_22 Depth=1
	st.d	$a0, $sp, 392
	st.w	$zero, $a0, 0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	st.d	$s0, $sp, 400
.Ltmp181:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.63:                               # %.noexc411
                                        #   in Loop: Header=BB6_22 Depth=1
	st.d	$a0, $sp, 360
	st.w	$zero, $a0, 0
	st.d	$s0, $sp, 368
.Ltmp184:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 456
	addi.d	$a2, $sp, 392
	addi.d	$a3, $sp, 360
	pcaddu18i	$ra, %call36(_Z15GetDefaultName2RK11CStringBaseIwES2_S2_)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.64:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 104
	beq	$a1, $a0, .LBB6_77
# %bb.65:                               #   in Loop: Header=BB6_22 Depth=1
	move	$a1, $s2
	ld.d	$s2, $s2, 24
	st.w	$zero, $a1, 32
	st.w	$zero, $s2, 0
	ld.w	$a0, $sp, 112
	ld.w	$s0, $a1, 36
	addi.w	$s3, $a0, 1
	beq	$s3, $s0, .LBB6_89
# %bb.66:                               #   in Loop: Header=BB6_22 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp187:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
# %bb.67:                               # %.noexc419
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s1, $a0
	blez	$s0, .LBB6_87
# %bb.68:                               # %._crit_edge.thread.i.i417
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 32
	b	.LBB6_88
.LBB6_69:                               #   in Loop: Header=BB6_22 Depth=1
	move	$s2, $zero
.LBB6_70:                               # %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit435
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s2, 3
	ldx.d	$a2, $a0, $a1
	addi.d	$a3, $a2, 16
.Ltmp172:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 456
	pcaddu18i	$ra, %call36(_Z15GetDefaultName2RK11CStringBaseIwES2_S2_)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.71:                               #   in Loop: Header=BB6_22 Depth=1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 104
	beq	$a1, $a0, .LBB6_76
# %bb.72:                               #   in Loop: Header=BB6_22 Depth=1
	move	$a1, $s2
	ld.d	$s2, $s2, 24
	st.w	$zero, $a1, 32
	st.w	$zero, $s2, 0
	ld.w	$a0, $sp, 112
	ld.w	$s0, $a1, 36
	addi.w	$s3, $a0, 1
	beq	$s3, $s0, .LBB6_80
# %bb.73:                               #   in Loop: Header=BB6_22 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp175:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.74:                               # %.noexc443
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s1, $a0
	blez	$s0, .LBB6_78
# %bb.75:                               # %._crit_edge.thread.i.i441
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 32
	b	.LBB6_79
.LBB6_76:                               # %._ZN11CStringBaseIwEaSERKS0_.exit444_crit_edge
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB6_83
	b	.LBB6_84
.LBB6_77:                               # %._ZN11CStringBaseIwEaSERKS0_.exit420_crit_edge
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB6_92
	b	.LBB6_93
.LBB6_78:                               #   in Loop: Header=BB6_22 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
.LBB6_79:                               #   in Loop: Header=BB6_22 Depth=1
	st.d	$s1, $a1, 24
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $a1, 36
	move	$s2, $s1
.LBB6_80:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i436
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 104
	move	$a1, $zero
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_81:                               #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_81
# %bb.82:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i440
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.w	$a1, $sp, 112
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a1, $s2, 32
	beqz	$a0, .LBB6_84
.LBB6_83:                               #   in Loop: Header=BB6_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_84:                               # %_ZN11CStringBaseIwED2Ev.exit423
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s7, $zero
	move	$s1, $zero
.LBB6_85:                               # %.thread524
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp193:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp194:                               # EH_LABEL
# %bb.86:                               # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit
                                        #   in Loop: Header=BB6_22 Depth=1
	move	$s8, $s7
	bnez	$s1, .LBB6_21
	b	.LBB6_97
.LBB6_87:                               #   in Loop: Header=BB6_22 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
.LBB6_88:                               #   in Loop: Header=BB6_22 Depth=1
	st.d	$s1, $a1, 24
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $a1, 36
	move	$s2, $s1
.LBB6_89:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 104
	move	$a1, $zero
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_90:                               #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_90
# %bb.91:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.w	$a1, $sp, 112
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a1, $s2, 32
	beqz	$a0, .LBB6_93
.LBB6_92:                               #   in Loop: Header=BB6_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_93:                               # %_ZN11CStringBaseIwED2Ev.exit421
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB6_95
# %bb.94:                               #   in Loop: Header=BB6_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_95:                               # %_ZN11CStringBaseIwED2Ev.exit422
                                        #   in Loop: Header=BB6_22 Depth=1
	ld.d	$a0, $sp, 392
	bnez	$a0, .LBB6_83
	b	.LBB6_84
.LBB6_96:
	ori	$s8, $zero, 1
.LBB6_97:                               # %_ZN11CStringBaseIwED2Ev.exit450
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456
	beqz	$a0, .LBB6_99
# %bb.98:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_99:                               # %_ZN11CStringBaseIwED2Ev.exit451
	addi.w	$a0, $s8, 0
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB6_100:                              # %.preheader581
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ld.w	$a0, $s4, 28
	blez	$a0, .LBB6_114
# %bb.101:                              # %.lr.ph
	move	$s2, $zero
	move	$s5, $zero
	b	.LBB6_104
	.p2align	4, , 16
.LBB6_102:                              # %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread
                                        #   in Loop: Header=BB6_104 Depth=1
.Ltmp65:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.103:                              # %_ZN13CRecordVectorIiE3AddEi.exit330
                                        #   in Loop: Header=BB6_104 Depth=1
	ld.w	$a0, $sp, 436
	ld.d	$a1, $sp, 440
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $sp, 436
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 436
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $s4, 28
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB6_111
.LBB6_104:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_106 Depth 2
	ld.d	$a0, $s4, 32
	slli.d	$a1, $s2, 3
	ldx.d	$s3, $a0, $a1
	ld.w	$a0, $s3, 52
	blez	$a0, .LBB6_102
# %bb.105:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB6_104 Depth=1
	move	$s6, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB6_106:                              # %.lr.ph.i
                                        #   Parent Loop BB6_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $a0, 0
.Ltmp62:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.107:                              # %.noexc327
                                        #   in Loop: Header=BB6_106 Depth=2
	beqz	$a0, .LBB6_109
# %bb.108:                              #   in Loop: Header=BB6_106 Depth=2
	ld.w	$a0, $s3, 52
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	blt	$s7, $a0, .LBB6_106
	b	.LBB6_102
	.p2align	4, , 16
.LBB6_109:                              # %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit
                                        #   in Loop: Header=BB6_104 Depth=1
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.110:                              # %_ZN13CRecordVectorIiE6InsertEii.exit
                                        #   in Loop: Header=BB6_104 Depth=1
	ld.d	$a0, $sp, 440
	slli.d	$a1, $s5, 2
	addi.w	$s5, $s5, 1
	stx.w	$s2, $a0, $a1
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $s4, 28
	addi.d	$s2, $s2, 1
	blt	$s2, $a0, .LBB6_104
.LBB6_111:                              # %._crit_edge
	beqz	$s3, .LBB6_116
# %bb.112:
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB6_121
# %bb.113:
	bnez	$s5, .LBB6_119
	b	.LBB6_129
.LBB6_114:                              # %._crit_edge.thread
	beqz	$s3, .LBB6_133
# %bb.115:                              # %.thread738
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 1
	bge	$a1, $a0, .LBB6_121
	b	.LBB6_129
.LBB6_116:
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	bne	$s5, $a0, .LBB6_133
# %bb.117:
.Ltmp70:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteFromEi)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.118:                              # %.thread
	ld.w	$a0, $sp, 436
	bge	$s0, $a0, .LBB6_121
.LBB6_119:                              # %.thread484
.Ltmp72:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.120:                              # %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
	beqz	$a0, .LBB6_129
.LBB6_121:
.Ltmp74:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.122:
	beqz	$a0, .LBB6_125
# %bb.123:
.Ltmp76:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.124:
                                        # implicit-def: $r30
	bnez	$a0, .LBB6_192
.LBB6_125:
.Ltmp79:                                # EH_LABEL
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.126:                              # %_ZN7CBufferIhE11SetCapacityEm.exit349
	move	$s5, $a0
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 48
.Ltmp82:                                # EH_LABEL
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp83:                                # EH_LABEL
# %bb.127:
	move	$s8, $a0
	beqz	$a0, .LBB6_134
# %bb.128:                              # %_ZN7CBufferIhED2Ev.exit360.thread
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_97
.LBB6_129:                              # %.thread741
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 400
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 416
	st.d	$s1, $sp, 392
.Ltmp96:                                # EH_LABEL
	lu12i.w	$s2, 512
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.130:                              # %_ZN7CBufferIhE11SetCapacityEm.exit
	move	$s8, $a0
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 48
.Ltmp99:                                # EH_LABEL
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp100:                               # EH_LABEL
# %bb.131:
	move	$s7, $a0
	beqz	$a0, .LBB6_151
# %bb.132:
	move	$s1, $zero
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_191
.LBB6_133:
	lu12i.w	$a0, -524284
	ori	$s8, $a0, 1
	b	.LBB6_97
.LBB6_134:
	ori	$a0, $zero, 1024
	st.d	$a0, $sp, 104
.Ltmp85:                                # EH_LABEL
	addi.d	$a2, $sp, 104
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_Z10ReadStreamP19ISequentialInStreamPvPm)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.135:
	move	$s8, $a0
	bnez	$a0, .LBB6_221
# %bb.136:
	ld.d	$a0, $sp, 104
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB6_221
# %bb.137:                              # %.lr.ph.i350.preheader
	ld.bu	$a0, $s5, 0
	ori	$a1, $zero, 82
	bne	$a0, $a1, .LBB6_154
# %bb.138:                              # %.lr.ph.i350.1
	ld.bu	$a0, $s5, 1
	ori	$a1, $zero, 97
	bne	$a0, $a1, .LBB6_154
# %bb.139:                              # %.lr.ph.i350.2
	ld.bu	$a0, $s5, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_154
# %bb.140:                              # %.lr.ph.i350.3
	ld.bu	$a0, $s5, 3
	ori	$a1, $zero, 33
	bne	$a0, $a1, .LBB6_154
# %bb.141:                              # %.lr.ph.i350.4
	ld.bu	$a0, $s5, 4
	ori	$a1, $zero, 26
	bne	$a0, $a1, .LBB6_154
# %bb.142:                              # %.lr.ph.i350.5
	ld.bu	$a0, $s5, 5
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB6_154
# %bb.143:                              # %.lr.ph.i350.6
	ld.bu	$a0, $s5, 6
	bnez	$a0, .LBB6_154
# %bb.144:
	ld.bu	$a0, $s5, 9
	ori	$a1, $zero, 115
	bne	$a0, $a1, .LBB6_154
# %bb.145:
	ld.bu	$a0, $s5, 10
	andi	$a0, $a0, 1
	beqz	$a0, .LBB6_154
# %bb.146:                              # %.preheader574
	ld.w	$a0, $sp, 436
	blez	$a0, .LBB6_154
# %bb.147:                              # %.lr.ph612
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s6, $a0, %pc_lo12(.L.str.3)
	move	$s3, $zero
	move	$s2, $zero
	move	$s7, $zero
.LBB6_148:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 440
	ldx.w	$s1, $a0, $s3
	ld.d	$a0, $s4, 32
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
.Ltmp88:                                # EH_LABEL
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.149:                              # %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit357
                                        #   in Loop: Header=BB6_148 Depth=1
	beqz	$a0, .LBB6_218
# %bb.150:                              #   in Loop: Header=BB6_148 Depth=1
	ld.w	$a0, $sp, 436
	addi.d	$s7, $s7, 1
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 4
	blt	$s7, $a0, .LBB6_148
	b	.LBB6_221
.LBB6_151:
	st.d	$s2, $sp, 384
.Ltmp102:                               # EH_LABEL
	addi.d	$a2, $sp, 384
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z10ReadStreamP19ISequentialInStreamPvPm)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.152:
	move	$s7, $a0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_155
# %bb.153:
	move	$s1, $zero
	b	.LBB6_191
.LBB6_154:                              # %_ZN7CBufferIhED2Ev.exit360.thread743
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_19
	b	.LBB6_193
.LBB6_155:
	ld.d	$a0, $sp, 384
	beqz	$a0, .LBB6_163
# %bb.156:
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$s1, $sp, 360
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 368
.Ltmp105:                               # EH_LABEL
	lu12i.w	$a1, 16
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(_ZN7CBufferIhE11SetCapacityEm)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.157:
	ld.d	$s5, $sp, 376
	lu12i.w	$a2, 16
	ori	$a1, $zero, 255
	ori	$s0, $zero, 255
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 436
	blt	$s0, $s6, .LBB6_164
# %bb.158:                              # %.preheader573
	move	$a0, $s6
	blez	$s6, .LBB6_165
# %bb.159:                              # %.lr.ph614
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 2
	addi.d	$a4, $sp, 104
	move	$a0, $s6
	b	.LBB6_161
.LBB6_160:                              #   in Loop: Header=BB6_161 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	bge	$a2, $a0, .LBB6_165
.LBB6_161:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $sp, 440
	ldx.w	$a5, $a5, $a1
	ld.d	$a6, $s4, 32
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a6, $a5
	ld.d	$a6, $a5, 80
	bltu	$a6, $a3, .LBB6_160
# %bb.162:                              #   in Loop: Header=BB6_161 Depth=1
	ld.d	$a0, $a5, 88
	ld.bu	$a5, $a0, 1
	ld.bu	$a0, $a0, 0
	slli.d	$a5, $a5, 8
	add.d	$a5, $s5, $a5
	ldx.b	$a6, $a5, $a0
	stx.b	$a6, $a2, $a4
	stx.b	$a2, $a5, $a0
	ld.w	$a0, $sp, 436
	b	.LBB6_160
.LBB6_163:
	move	$s1, $zero
	ori	$s7, $zero, 1
	b	.LBB6_191
.LBB6_164:                              # %.thread487
	st.d	$s1, $sp, 360
	ori	$s0, $zero, 1
	b	.LBB6_189
.LBB6_165:                              # %._crit_edge615
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 384
	beqz	$a1, .LBB6_181
# %bb.166:                              # %.preheader.lr.ph
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $zero
	addi.d	$s0, $sp, 104
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB6_168
.LBB6_167:                              #   in Loop: Header=BB6_168 Depth=1
	ld.d	$a1, $sp, 384
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB6_180
	.p2align	4, , 16
.LBB6_168:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_173 Depth 2
                                        #       Child Loop BB6_176 Depth 3
	bstrpick.d	$s2, $s7, 31, 0
	addi.w	$s7, $s7, 1
	bgeu	$s2, $a1, .LBB6_170
# %bb.169:                              #   in Loop: Header=BB6_168 Depth=1
	bstrpick.d	$a0, $s7, 31, 0
	ldx.bu	$a0, $s8, $a0
	ldx.bu	$a2, $s8, $s2
	slli.d	$a0, $a0, 8
	add.d	$a0, $s5, $a0
	ldx.bu	$a0, $a0, $a2
	ori	$a2, $zero, 255
	beq	$a0, $a2, .LBB6_168
.LBB6_170:                              # %.critedge
                                        #   in Loop: Header=BB6_168 Depth=1
	beq	$a1, $s2, .LBB6_180
# %bb.171:                              #   in Loop: Header=BB6_168 Depth=1
	bstrpick.d	$a0, $s7, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ldx.bu	$a0, $s8, $a0
	ldx.bu	$a1, $s8, $s2
	slli.d	$a0, $a0, 8
	add.d	$a0, $s5, $a0
	ldx.bu	$s6, $a0, $a1
	add.d	$s5, $a0, $a1
	add.d	$a0, $s8, $s2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB6_173
	.p2align	4, , 16
.LBB6_172:                              # %_ZL13TestSignaturePKhS0_m.exit
                                        #   in Loop: Header=BB6_173 Depth=2
	addi.d	$a0, $sp, 104
	add.d	$s5, $a0, $s6
	addi.d	$s0, $sp, 104
	ldx.bu	$s6, $s6, $a0
	ori	$a0, $zero, 255
	beq	$s6, $a0, .LBB6_167
.LBB6_173:                              #   Parent Loop BB6_168 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_176 Depth 3
	ld.d	$a0, $sp, 440
	slli.d	$s8, $s6, 2
	ldx.w	$s1, $a0, $s8
	ld.d	$a0, $s4, 32
	slli.d	$a1, $s1, 3
	ldx.d	$a1, $a0, $a1
	ld.d	$a0, $a1, 80
	beqz	$a0, .LBB6_172
# %bb.174:                              #   in Loop: Header=BB6_173 Depth=2
	ld.d	$a2, $sp, 384
	add.d	$a3, $a0, $s2
	addi.d	$a2, $a2, 1
	bltu	$a2, $a3, .LBB6_172
# %bb.175:                              #   in Loop: Header=BB6_173 Depth=2
	ld.d	$a1, $a1, 88
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_176:                              # %.lr.ph.i334
                                        #   Parent Loop BB6_168 Depth=1
                                        #     Parent Loop BB6_173 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a2, 0
	ld.bu	$a4, $a1, 0
	bne	$a3, $a4, .LBB6_172
# %bb.177:                              #   in Loop: Header=BB6_176 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB6_176
# %bb.178:                              #   in Loop: Header=BB6_173 Depth=2
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.179:                              #   in Loop: Header=BB6_173 Depth=2
	ld.w	$a0, $sp, 404
	ld.d	$a1, $sp, 408
	slli.d	$a0, $a0, 2
	stx.w	$s1, $a1, $a0
	ld.w	$a0, $sp, 404
	ld.d	$a1, $sp, 440
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 404
	ori	$a0, $zero, 255
	stx.w	$a0, $a1, $s8
	ldx.bu	$s6, $s6, $s0
	st.b	$s6, $s5, 0
	ori	$a0, $zero, 255
	bne	$s6, $a0, .LBB6_173
	b	.LBB6_167
.LBB6_180:                              # %.critedge._crit_edge.loopexit
	ld.w	$a0, $sp, 436
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB6_181:                              # %.critedge._crit_edge
	blez	$a0, .LBB6_187
# %bb.182:                              # %.lr.ph620
	move	$s1, $zero
	move	$s2, $zero
	ori	$s5, $zero, 255
	b	.LBB6_184
.LBB6_183:                              #   in Loop: Header=BB6_184 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	bge	$s2, $a0, .LBB6_187
.LBB6_184:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 440
	ldx.w	$s0, $a1, $s1
	beq	$s0, $s5, .LBB6_183
# %bb.185:                              #   in Loop: Header=BB6_184 Depth=1
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.186:                              # %_ZN13CRecordVectorIiE3AddEi.exit339
                                        #   in Loop: Header=BB6_184 Depth=1
	ld.w	$a0, $sp, 404
	ld.d	$a1, $sp, 408
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a1, $sp, 404
	ld.w	$a0, $sp, 436
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 404
	b	.LBB6_183
.LBB6_187:                              # %._crit_edge621
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 392
	pcaddu18i	$ra, %call36(_ZN13CRecordVectorIiEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.188:
	ld.d	$s5, $sp, 376
	move	$s0, $zero
	move	$s7, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 360
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beqz	$s5, .LBB6_190
.LBB6_189:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$s7, $s0
.LBB6_190:                              # %_ZN7CBufferIhED2Ev.exit
	slti	$s1, $s6, 256
.LBB6_191:                              # %_ZN7CBufferIhED2Ev.exit340
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$s8, $s7
	beqz	$s1, .LBB6_97
.LBB6_192:
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_19
.LBB6_193:
.Ltmp117:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.194:                              # %.noexc366
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	vld	$vr0, $a1, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 104
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 3
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 112
.Ltmp120:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.195:
	move	$s5, $a0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB6_197
# %bb.196:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_197:                              # %_ZN11CStringBaseIwED2Ev.exit367
.Ltmp123:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.198:                              # %.noexc373
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	vld	$vr0, $a1, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 104
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 3
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 112
.Ltmp126:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.199:
	move	$s6, $a0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB6_201
# %bb.200:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_201:                              # %_ZN11CStringBaseIwED2Ev.exit375
	ld.w	$a0, $sp, 436
	blez	$a0, .LBB6_19
# %bb.202:                              # %iter.check
	ld.d	$a1, $sp, 440
	ori	$a2, $zero, 3
	bltu	$a2, $a0, .LBB6_204
# %bb.203:
	move	$a2, $zero
	addi.d	$a4, $zero, -1
	addi.d	$a5, $zero, -1
	b	.LBB6_213
.LBB6_204:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	lu12i.w	$a3, -524288
	bgeu	$a0, $a2, .LBB6_206
# %bb.205:
	addi.w	$a4, $zero, -1
	move	$a2, $zero
	move	$a5, $a4
	b	.LBB6_210
.LBB6_206:                              # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	xvreplgr2vr.w	$xr2, $s5
	pcalau12i	$a4, %pc_hi20(.LCPI6_0)
	xvld	$xr3, $a4, %pc_lo12(.LCPI6_0)
	xvreplgr2vr.w	$xr5, $s6
	xvreplgr2vr.w	$xr4, $a3
	addi.d	$a4, $a1, 32
	move	$a5, $a2
	xvori.b	$xr6, $xr4, 0
	xvori.b	$xr0, $xr4, 0
	xvori.b	$xr1, $xr4, 0
	.p2align	4, , 16
.LBB6_207:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr7, $a4, -32
	xvld	$xr8, $a4, 0
	xvaddi.wu	$xr9, $xr3, 8
	xvseq.w	$xr10, $xr7, $xr2
	xvseq.w	$xr11, $xr8, $xr2
	xvbitsel.v	$xr0, $xr0, $xr3, $xr10
	xvbitsel.v	$xr1, $xr1, $xr9, $xr11
	xvseq.w	$xr7, $xr7, $xr5
	xvseq.w	$xr8, $xr8, $xr5
	xvbitsel.v	$xr4, $xr4, $xr3, $xr7
	xvbitsel.v	$xr6, $xr6, $xr9, $xr8
	xvaddi.wu	$xr3, $xr3, 16
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB6_207
# %bb.208:                              # %middle.block
	xvmax.w	$xr2, $xr4, $xr6
	xvpermi.q	$xr3, $xr2, 1
	vmax.w	$vr2, $vr2, $vr3
	vbsrl.v	$vr3, $vr2, 8
	vmax.w	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 4
	vmax.w	$vr2, $vr3, $vr2
	vpickve2gr.w	$a4, $vr2, 0
	xor	$a5, $a4, $a3
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	addi.w	$a6, $zero, -1
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.q	$xr1, $xr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a7, $a5, $a3
	sltui	$a7, $a7, 1
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	beq	$a2, $a0, .LBB6_215
# %bb.209:                              # %vec.epilog.iter.check
	andi	$a6, $a0, 12
	beqz	$a6, .LBB6_213
.LBB6_210:                              # %vec.epilog.ph
	move	$a6, $a2
	addi.d	$a2, $a5, 1
	sltui	$a2, $a2, 1
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $a3, $a2
	or	$a5, $a2, $a5
	addi.d	$a2, $a4, 1
	sltui	$a2, $a2, 1
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a4, $a2, $a4
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	vld	$vr4, $a2, %pc_lo12(.LCPI6_1)
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr2, $s5
	vreplgr2vr.w	$vr3, $s6
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr5, $a6
	vor.v	$vr4, $vr5, $vr4
	sub.d	$a4, $a6, $a2
	alsl.d	$a5, $a6, $a1, 2
	.p2align	4, , 16
.LBB6_211:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $a5, 0
	vseq.w	$vr6, $vr5, $vr2
	vbitsel.v	$vr0, $vr0, $vr4, $vr6
	vseq.w	$vr5, $vr5, $vr3
	vbitsel.v	$vr1, $vr1, $vr4, $vr5
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB6_211
# %bb.212:                              # %vec.epilog.middle.block
	vbsrl.v	$vr2, $vr1, 8
	vmax.w	$vr1, $vr2, $vr1
	vbsrl.v	$vr2, $vr1, 4
	vmax.w	$vr1, $vr2, $vr1
	vpickve2gr.w	$a4, $vr1, 0
	xor	$a5, $a4, $a3
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	addi.d	$a6, $zero, -1
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a3, $a5, $a3
	sltui	$a3, $a3, 1
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a6, $a3
	or	$a5, $a3, $a5
	beq	$a2, $a0, .LBB6_215
.LBB6_213:                              # %vec.epilog.scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB6_214:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	xor	$a6, $a3, $s5
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a2, $a6
	or	$a5, $a6, $a5
	xor	$a3, $a3, $s6
	sltui	$a3, $a3, 1
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a2, $a3
	or	$a4, $a3, $a4
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB6_214
.LBB6_215:                              # %._crit_edge626
	addi.w	$a0, $a5, 0
	bltz	$a0, .LBB6_19
# %bb.216:                              # %._crit_edge626
	addi.w	$a1, $a4, 0
	bge	$a0, $a1, .LBB6_19
# %bb.217:
	ld.d	$a2, $sp, 440
	slli.d	$a1, $a1, 2
	stx.w	$s5, $a2, $a1
	slli.d	$a0, $a0, 2
	stx.w	$s6, $a2, $a0
	b	.LBB6_19
.LBB6_218:
.Ltmp91:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	ori	$a2, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.219:
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.220:                              # %.thread498
	ld.d	$a0, $sp, 440
	st.w	$s1, $a0, 0
.LBB6_221:                              # %_ZN7CBufferIhED2Ev.exit360
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	bnez	$s8, .LBB6_97
# %bb.222:
	move	$s7, $zero
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_19
	b	.LBB6_193
.LBB6_223:                              # %.loopexit.split-lp
.Ltmp95:                                # EH_LABEL
	b	.LBB6_242
.LBB6_224:                              # %.loopexit
.Ltmp90:                                # EH_LABEL
	b	.LBB6_242
.LBB6_225:
.Ltmp116:                               # EH_LABEL
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	b	.LBB6_250
.LBB6_226:
.Ltmp107:                               # EH_LABEL
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	b	.LBB6_250
.LBB6_227:
.Ltmp104:                               # EH_LABEL
	b	.LBB6_237
.LBB6_228:
.Ltmp87:                                # EH_LABEL
	b	.LBB6_242
.LBB6_229:
.Ltmp113:                               # EH_LABEL
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	b	.LBB6_250
.LBB6_230:
.Ltmp128:                               # EH_LABEL
	b	.LBB6_233
.LBB6_231:
.Ltmp125:                               # EH_LABEL
	b	.LBB6_282
.LBB6_232:
.Ltmp122:                               # EH_LABEL
.LBB6_233:
	ld.d	$a1, $sp, 104
	move	$s1, $a0
	beqz	$a1, .LBB6_283
# %bb.234:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_283
.LBB6_235:
.Ltmp119:                               # EH_LABEL
	b	.LBB6_282
.LBB6_236:
.Ltmp101:                               # EH_LABEL
.LBB6_237:
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a0
	b	.LBB6_252
.LBB6_238:
.Ltmp98:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB6_253
.LBB6_239:
.Ltmp61:                                # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$s1, $a0
	beqz	$a1, .LBB6_284
# %bb.240:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_284
.LBB6_241:
.Ltmp84:                                # EH_LABEL
.LBB6_242:
	move	$s1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_283
.LBB6_243:
.Ltmp81:                                # EH_LABEL
	b	.LBB6_282
.LBB6_244:
.Ltmp189:                               # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$s1, $a0
	bnez	$a1, .LBB6_247
# %bb.245:                              # %_ZN11CStringBaseIwED2Ev.exit424
	ld.d	$a0, $sp, 360
	bnez	$a0, .LBB6_258
.LBB6_246:                              # %_ZN11CStringBaseIwED2Ev.exit425
	ld.d	$a0, $sp, 392
	bnez	$a0, .LBB6_260
	b	.LBB6_278
.LBB6_247:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB6_246
	b	.LBB6_258
.LBB6_248:
.Ltmp58:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB6_284
.LBB6_249:
.Ltmp110:                               # EH_LABEL
.LBB6_250:
	move	$s1, $a0
	ld.d	$a0, $sp, 376
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $sp, 360
	beqz	$a0, .LBB6_252
# %bb.251:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_252:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_253:                              # %_ZN7CBufferIhED2Ev.exit342
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB6_283
.LBB6_254:
.Ltmp177:                               # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$s1, $a0
	beqz	$a1, .LBB6_278
# %bb.255:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_278
.LBB6_256:                              # %.loopexit.split-lp577.loopexit.split-lp
.Ltmp78:                                # EH_LABEL
	b	.LBB6_282
.LBB6_257:
.Ltmp186:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB6_246
.LBB6_258:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	bnez	$a0, .LBB6_260
	b	.LBB6_278
.LBB6_259:
.Ltmp183:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB6_278
.LBB6_260:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB6_278
.LBB6_261:
.Ltmp180:                               # EH_LABEL
	b	.LBB6_277
.LBB6_262:
.Ltmp131:                               # EH_LABEL
	b	.LBB6_282
.LBB6_263:
.Ltmp152:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_264:
.Ltmp174:                               # EH_LABEL
	b	.LBB6_277
.LBB6_265:
.Ltmp55:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB6_285
.LBB6_266:
.Ltmp163:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_267:
.Ltmp157:                               # EH_LABEL
	move	$s1, $a0
.Ltmp158:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
	b	.LBB6_278
.LBB6_268:
.Ltmp160:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_269:
.Ltmp146:                               # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$s1, $a0
	beqz	$a1, .LBB6_278
# %bb.270:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp147:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp148:                               # EH_LABEL
	b	.LBB6_278
.LBB6_271:
.Ltmp149:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_272:
.Ltmp195:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_273:
.Ltmp134:                               # EH_LABEL
	b	.LBB6_282
.LBB6_274:
.Ltmp168:                               # EH_LABEL
	b	.LBB6_277
.LBB6_275:                              # %.loopexit.split-lp577.loopexit
.Ltmp69:                                # EH_LABEL
	b	.LBB6_282
.LBB6_276:
.Ltmp171:                               # EH_LABEL
.LBB6_277:                              # %.thread559
	move	$s1, $a0
.LBB6_278:                              # %.thread559
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp190:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp191:                               # EH_LABEL
	b	.LBB6_283
.LBB6_279:
.Ltmp192:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_280:                              # %.thread555
.Ltmp139:                               # EH_LABEL
	b	.LBB6_282
.LBB6_281:                              # %.loopexit576
.Ltmp64:                                # EH_LABEL
.LBB6_282:                              # %_ZN7CBufferIhED2Ev.exit361
	move	$s1, $a0
.LBB6_283:                              # %_ZN7CBufferIhED2Ev.exit361
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB6_284:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_285:                              # %_ZN11CStringBaseIwED2Ev.exit452
	ld.d	$a0, $sp, 456
	beqz	$a0, .LBB6_287
# %bb.286:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_287:                              # %_ZN11CStringBaseIwED2Ev.exit453
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback, .Lfunc_end6-_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp53-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin4          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin4          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin4          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp129-.Ltmp60               #   Call between .Ltmp60 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin4         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin4         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp138-.Ltmp135              #   Call between .Ltmp135 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin4         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp168-.Lfunc_begin4         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp157-.Lfunc_begin4         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin4         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp142-.Ltmp156              #   Call between .Ltmp156 and .Ltmp142
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp145-.Ltmp142              #   Call between .Ltmp142 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin4         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin4         #     jumps to .Ltmp152
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp161-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin4         #     jumps to .Ltmp163
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp164-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp167-.Ltmp164              #   Call between .Ltmp164 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin4         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin4         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin4         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin4         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin4         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin4         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp172-.Ltmp188              #   Call between .Ltmp188 and .Ltmp172
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin4         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin4         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp193-.Ltmp176              #   Call between .Ltmp176 and .Ltmp193
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin4         #     jumps to .Ltmp195
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp194-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp65-.Ltmp194               #   Call between .Ltmp194 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin4          # >> Call Site 29 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp69-.Lfunc_begin4          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin4          # >> Call Site 30 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin4          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin4          # >> Call Site 31 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin4          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin4          # >> Call Site 32 <<
	.uleb128 .Ltmp77-.Ltmp70                #   Call between .Ltmp70 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin4          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin4          # >> Call Site 33 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin4          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin4          # >> Call Site 34 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin4          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 35 <<
	.uleb128 .Ltmp96-.Ltmp83                #   Call between .Ltmp83 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin4          # >> Call Site 36 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin4          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin4          # >> Call Site 37 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin4         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin4          # >> Call Site 38 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin4          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin4          # >> Call Site 39 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin4          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin4         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp105-.Ltmp103              #   Call between .Ltmp103 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin4         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp108-.Ltmp106              #   Call between .Ltmp106 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin4         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin4         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin4         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp117-.Ltmp115              #   Call between .Ltmp115 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin4         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin4         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin4         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin4         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp91-.Ltmp127               #   Call between .Ltmp127 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin4          # >> Call Site 54 <<
	.uleb128 .Ltmp94-.Ltmp91                #   Call between .Ltmp91 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin4          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin4          # >> Call Site 55 <<
	.uleb128 .Ltmp158-.Ltmp94               #   Call between .Ltmp94 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin4         #     jumps to .Ltmp160
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp159-.Lfunc_begin4         # >> Call Site 57 <<
	.uleb128 .Ltmp147-.Ltmp159              #   Call between .Ltmp159 and .Ltmp147
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin4         # >> Call Site 58 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin4         #     jumps to .Ltmp149
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp148-.Lfunc_begin4         # >> Call Site 59 <<
	.uleb128 .Ltmp190-.Ltmp148              #   Call between .Ltmp148 and .Ltmp190
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin4         # >> Call Site 60 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin4         #     jumps to .Ltmp192
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp191-.Lfunc_begin4         # >> Call Site 61 <<
	.uleb128 .Lfunc_end6-.Ltmp191           #   Call between .Ltmp191 and .Lfunc_end6
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
	.section	.text._ZN7CBufferIhE11SetCapacityEm,"axG",@progbits,_ZN7CBufferIhE11SetCapacityEm,comdat
	.weak	_ZN7CBufferIhE11SetCapacityEm   # -- Begin function _ZN7CBufferIhE11SetCapacityEm
	.p2align	5
	.type	_ZN7CBufferIhE11SetCapacityEm,@function
_ZN7CBufferIhE11SetCapacityEm:          # @_ZN7CBufferIhE11SetCapacityEm
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
	ld.d	$s2, $a0, 8
	beq	$a1, $s2, .LBB7_7
# %bb.1:
	move	$fp, $a0
	move	$s0, $a1
	beqz	$a1, .LBB7_8
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB7_4
# %bb.3:
	ld.d	$a1, $fp, 16
	sltu	$a0, $s2, $s0
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_4:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB7_6
.LBB7_5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_6:
	st.d	$s1, $fp, 16
	st.d	$s0, $fp, 8
.LBB7_7:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_8:
	move	$s1, $zero
	ld.d	$a0, $fp, 16
	bnez	$a0, .LBB7_5
	b	.LBB7_6
.Lfunc_end7:
	.size	_ZN7CBufferIhE11SetCapacityEm, .Lfunc_end7-_ZN7CBufferIhE11SetCapacityEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorIiEaSERKS0_,"axG",@progbits,_ZN13CRecordVectorIiEaSERKS0_,comdat
	.weak	_ZN13CRecordVectorIiEaSERKS0_   # -- Begin function _ZN13CRecordVectorIiEaSERKS0_
	.p2align	5
	.type	_ZN13CRecordVectorIiEaSERKS0_,@function
_ZN13CRecordVectorIiEaSERKS0_:          # @_ZN13CRecordVectorIiEaSERKS0_
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
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 12
	ld.w	$a0, $fp, 12
	add.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB8_3
# %bb.1:                                # %.lr.ph.i
	move	$s1, $zero
	slli.d	$s2, $s2, 2
	.p2align	4, , 16
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.w	$s3, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$s3, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.d	$s1, $s1, 4
	st.w	$a0, $fp, 12
	bne	$s2, $s1, .LBB8_2
.LBB8_3:                                # %_ZN13CRecordVectorIiEpLERKS0_.exit
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	_ZN13CRecordVectorIiEaSERKS0_, .Lfunc_end8-_ZN13CRecordVectorIiEaSERKS0_
	.cfi_endproc
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
	beqz	$a0, .LBB9_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB9_2:
	ret
.Lfunc_end9:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end9-_ZN7CBufferIhED2Ev
                                        # -- End function
	.text
	.globl	_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback # -- Begin function _ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback,@function
_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback: # @_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$s0, $a5
	move	$s5, $a4
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	beqz	$a3, .LBB10_2
# %bb.1:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV16CStdInFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV16CStdInFileStream)
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $s4, 0
	move	$a0, $s4
	jirl	$ra, $a1, 0
	move	$fp, $zero
	b	.LBB10_10
.LBB10_2:
	beqz	$s5, .LBB10_4
# %bb.3:
	move	$fp, $zero
	move	$s4, $zero
	b	.LBB10_10
.LBB10_4:
.Ltmp196:                               # EH_LABEL
	ori	$a0, $zero, 1112
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.5:
	move	$fp, $a0
	st.w	$zero, $a0, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTV13CInFileStream)
	ld.d	$s4, $a0, %got_pc_lo12(_ZTV13CInFileStream)
	addi.d	$a0, $s4, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $s4, 96
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 24
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 40
.Ltmp198:                               # EH_LABEL
	ori	$a0, $zero, 4
	ori	$s5, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.6:
	st.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	st.w	$s5, $fp, 52
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	ld.d	$a1, $s4, 24
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 20
.Ltmp201:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp202:                               # EH_LABEL
# %bb.7:                                # %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit
	ld.d	$a1, $s3, 8
.Ltmp203:                               # EH_LABEL
	move	$s4, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CInFileStream4OpenEPKw)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.8:
	beqz	$a0, .LBB10_16
# %bb.9:
	move	$s4, $zero
	move	$s5, $fp
.LBB10_10:                              # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit
.Ltmp206:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s0
	pcaddu18i	$ra, %call36(_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.11:
	move	$s0, $a0
	beqz	$s4, .LBB10_13
# %bb.12:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
.Ltmp215:                               # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp216:                               # EH_LABEL
.LBB10_13:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	beqz	$fp, .LBB10_15
.LBB10_14:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp218:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp219:                               # EH_LABEL
.LBB10_15:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	move	$a0, $s0
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
.LBB10_16:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$s0, $a0, 0
	b	.LBB10_14
.LBB10_17:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31.thread81
.Ltmp200:                               # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 1112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_18:
.Ltmp205:                               # EH_LABEL
	move	$s0, $a0
	move	$fp, $s4
	b	.LBB10_23
.LBB10_19:
.Ltmp217:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_20:
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_21:
.Ltmp208:                               # EH_LABEL
	move	$s0, $a0
	beqz	$s4, .LBB10_23
# %bb.22:                               # %.thread63
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
.Ltmp209:                               # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp210:                               # EH_LABEL
.LBB10_23:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit31
	beqz	$fp, .LBB10_25
# %bb.24:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp212:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp213:                               # EH_LABEL
.LBB10_25:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit33
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_26:
.Ltmp211:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_27:
.Ltmp214:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback, .Lfunc_end10-_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp196-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp196
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp205-.Lfunc_begin5         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin5         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp204-.Ltmp201              #   Call between .Ltmp201 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin5         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin5         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin5         #     jumps to .Ltmp217
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp218-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin5         #     jumps to .Ltmp220
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp219-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp209-.Ltmp219              #   Call between .Ltmp219 and .Ltmp209
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin5         #     jumps to .Ltmp211
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp212-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin5         #     jumps to .Ltmp214
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp213-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Lfunc_end10-.Ltmp213          #   Call between .Ltmp213 and .Lfunc_end10
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
	.globl	_ZN12CArchiveLink5CloseEv       # -- Begin function _ZN12CArchiveLink5CloseEv
	.p2align	5
	.type	_ZN12CArchiveLink5CloseEv,@function
_ZN12CArchiveLink5CloseEv:              # @_ZN12CArchiveLink5CloseEv
	.cfi_startproc
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
	ld.wu	$a0, $a0, 12
	addi.d	$s0, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, -8
	.p2align	4, , 16
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, -1
	blez	$s0, .LBB11_3
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 48
	addi.d	$s1, $a1, -8
	jirl	$ra, $a2, 0
	move	$a1, $s1
	beqz	$a0, .LBB11_1
	b	.LBB11_4
.LBB11_3:
	move	$a0, $zero
	st.b	$zero, $fp, 72
.LBB11_4:                               # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	_ZN12CArchiveLink5CloseEv, .Lfunc_end11-_ZN12CArchiveLink5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12CArchiveLink7ReleaseEv     # -- Begin function _ZN12CArchiveLink7ReleaseEv
	.p2align	5
	.type	_ZN12CArchiveLink7ReleaseEv,@function
_ZN12CArchiveLink7ReleaseEv:            # @_ZN12CArchiveLink7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	beqz	$a0, .LBB12_2
	.p2align	4, , 16
.LBB12_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	bnez	$a0, .LBB12_1
.LBB12_2:                               # %._crit_edge
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	_ZN12CArchiveLink7ReleaseEv, .Lfunc_end12-_ZN12CArchiveLink7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback # -- Begin function _ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback,@function
_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback: # @_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 12
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	move	$s1, $a5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB13_2
	.p2align	4, , 16
.LBB13_1:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	bnez	$a0, .LBB13_1
.LBB13_2:                               # %_ZN12CArchiveLink7ReleaseEv.exit
	ld.w	$a0, $s4, 12
	ori	$a1, $zero, 31
	bge	$a1, $a0, .LBB13_4
# %bb.3:
	lu12i.w	$a0, -524284
	ori	$s0, $a0, 1
	b	.LBB13_84
.LBB13_4:                               # %.preheader
	addi.w	$s3, $zero, -1
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	lu32i.d	$s3, 0
                                        # implicit-def: $r5
                                        # kill: killed $r5
                                        # implicit-def: $r23
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_5:                               #   in Loop: Header=BB13_7 Depth=1
	ori	$a0, $zero, 3
	bne	$s5, $a0, .LBB13_81
.LBB13_6:                               # %thread-pre-split
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.w	$a0, $s4, 12
.LBB13_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_38 Depth 2
	ld.w	$a1, $fp, 12
	blez	$a0, .LBB13_10
# %bb.8:                                #   in Loop: Header=BB13_7 Depth=1
	bge	$a1, $a0, .LBB13_83
# %bb.9:                                #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a2, $s4, 16
	nor	$a3, $a1, $zero
	add.w	$a0, $a0, $a3
	slli.d	$a0, $a0, 2
	ldx.w	$s8, $a2, $a0
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_10:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ori	$a0, $zero, 31
	blt	$a0, $a1, .LBB13_83
.LBB13_11:                              #   in Loop: Header=BB13_7 Depth=1
	beqz	$a1, .LBB13_17
# %bb.12:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $fp, 16
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s6, $a0, -8
	st.w	$zero, $sp, 88
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 80
.Ltmp221:                               # EH_LABEL
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 88
	jirl	$ra, $a3, 0
.Ltmp222:                               # EH_LABEL
# %bb.13:                               #   in Loop: Header=BB13_7 Depth=1
	move	$s7, $a0
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_23
# %bb.14:                               #   in Loop: Header=BB13_7 Depth=1
	ld.hu	$a0, $sp, 88
	ori	$s5, $zero, 2
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB13_22
# %bb.15:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	ld.w	$s2, $sp, 96
	ld.d	$a2, $a1, 56
.Ltmp224:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	jirl	$ra, $a2, 0
.Ltmp225:                               # EH_LABEL
# %bb.16:                               #   in Loop: Header=BB13_7 Depth=1
	sltui	$a1, $a0, 1
	ld.w	$a2, $sp, 80
	masknez	$a0, $a0, $a1
	maskeqz	$a3, $s0, $a1
	or	$s7, $a3, $a0
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	sltu	$a0, $s2, $a2
	xori	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s5, $a0, $a2
	b	.LBB13_23
	.p2align	4, , 16
.LBB13_17:                              #   in Loop: Header=BB13_7 Depth=1
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN4CArcC2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	beq	$s1, $a0, .LBB13_40
# %bb.18:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$s2, $sp, 96
	st.w	$zero, $sp, 104
	st.w	$zero, $s2, 0
	ld.w	$a0, $s1, 8
	ld.w	$s7, $sp, 108
	addi.w	$s5, $a0, 1
	beq	$s5, $s7, .LBB13_37
# %bb.19:                               #   in Loop: Header=BB13_7 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp285:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
# %bb.20:                               # %.noexc
                                        #   in Loop: Header=BB13_7 Depth=1
	move	$s6, $a0
	blez	$s7, .LBB13_35
# %bb.21:                               # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB13_7 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 104
	b	.LBB13_36
.LBB13_22:                              #   in Loop: Header=BB13_7 Depth=1
	move	$s7, $s0
	.p2align	4, , 16
.LBB13_23:                              #   in Loop: Header=BB13_7 Depth=1
.Ltmp230:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp231:                               # EH_LABEL
# %bb.24:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
                                        #   in Loop: Header=BB13_7 Depth=1
	bnez	$s5, .LBB13_29
# %bb.25:                               #   in Loop: Header=BB13_7 Depth=1
	st.d	$zero, $sp, 80
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp233:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_IInArchiveGetStream)
	ld.d	$a1, $a1, %got_pc_lo12(IID_IInArchiveGetStream)
	addi.d	$a2, $sp, 80
	jirl	$ra, $a3, 0
.Ltmp234:                               # EH_LABEL
# %bb.26:                               #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 2
	beqz	$a0, .LBB13_30
.LBB13_27:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB13_29
# %bb.28:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp282:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp283:                               # EH_LABEL
.LBB13_29:                              # %_ZN9CMyComPtrI19IInArchiveGetStreamED2Ev.exit
                                        #   in Loop: Header=BB13_7 Depth=1
	move	$s0, $s7
	bnez	$s5, .LBB13_5
	b	.LBB13_6
.LBB13_30:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB13_55
# %bb.31:                               #   in Loop: Header=BB13_7 Depth=1
	st.d	$zero, $sp, 72
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp236:                               # EH_LABEL
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.w	$s2, $a1, 0
	addi.d	$a2, $sp, 72
	move	$a1, $s2
	jirl	$ra, $a3, 0
.Ltmp237:                               # EH_LABEL
# %bb.32:                               #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 2
	beqz	$a0, .LBB13_56
.LBB13_33:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB13_27
# %bb.34:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp279:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp280:                               # EH_LABEL
	b	.LBB13_27
.LBB13_35:                              #   in Loop: Header=BB13_7 Depth=1
	move	$a0, $zero
.LBB13_36:                              #   in Loop: Header=BB13_7 Depth=1
	st.d	$s6, $sp, 96
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s6, $a0
	st.w	$s5, $sp, 108
	move	$s2, $s6
.LBB13_37:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $s1, 0
	.p2align	4, , 16
.LBB13_38:                              #   Parent Loop BB13_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB13_38
# %bb.39:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.w	$a0, $s1, 8
	st.w	$a0, $sp, 104
.LBB13_40:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
                                        #   in Loop: Header=BB13_7 Depth=1
	st.w	$s3, $sp, 132
.Ltmp287:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN4CArc16OpenStreamOrFileEP7CCodecsibP9IInStreamP20IArchiveOpenCallback)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB13_7 Depth=1
	move	$s2, $a0
	ori	$s5, $zero, 1
	beqz	$a0, .LBB13_51
# %bb.42:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB13_44
.LBB13_43:                              #   in Loop: Header=BB13_7 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_44:                              # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 112
	beqz	$a0, .LBB13_46
# %bb.45:                               #   in Loop: Header=BB13_7 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_46:                              # %_ZN11CStringBaseIwED2Ev.exit1.i
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB13_48
# %bb.47:                               #   in Loop: Header=BB13_7 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_48:                              # %_ZN11CStringBaseIwED2Ev.exit2.i
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB13_50
# %bb.49:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp298:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp299:                               # EH_LABEL
.LBB13_50:                              # %_ZN4CArcD2Ev.exit
                                        #   in Loop: Header=BB13_7 Depth=1
	sltui	$a0, $s2, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	bnez	$s5, .LBB13_5
	b	.LBB13_6
.LBB13_51:                              #   in Loop: Header=BB13_7 Depth=1
.Ltmp290:                               # EH_LABEL
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.52:                               # %.noexc131
                                        #   in Loop: Header=BB13_7 Depth=1
.Ltmp292:                               # EH_LABEL
	move	$s6, $a0
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZN4CArcC2ERKS_)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.53:                               #   in Loop: Header=BB13_7 Depth=1
.Ltmp295:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.54:                               # %_ZN13CObjectVectorI4CArcE3AddERKS0_.exit
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 12
	ori	$s5, $zero, 3
	ld.d	$a0, $sp, 152
	bnez	$a0, .LBB13_43
	b	.LBB13_44
.LBB13_55:                              #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 2
	move	$s0, $s7
	bnez	$s5, .LBB13_5
	b	.LBB13_6
.LBB13_56:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB13_70
# %bb.57:                               #   in Loop: Header=BB13_7 Depth=1
	st.d	$zero, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp239:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_IInStream)
	ld.d	$a1, $a1, %got_pc_lo12(IID_IInStream)
	addi.d	$a2, $sp, 64
	jirl	$ra, $a3, 0
.Ltmp240:                               # EH_LABEL
# %bb.58:                               # %_ZNK9CMyComPtrI19ISequentialInStreamE14QueryInterfaceI9IInStreamEEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 2
	bnez	$a0, .LBB13_79
# %bb.59:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB13_71
# %bb.60:                               #   in Loop: Header=BB13_7 Depth=1
.Ltmp242:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN4CArcC2Ev)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.61:                               #   in Loop: Header=BB13_7 Depth=1
.Ltmp245:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s2
	addi.d	$a2, $sp, 96
	pcaddu18i	$ra, %call36(_ZNK4CArc11GetItemPathEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.62:                               #   in Loop: Header=BB13_7 Depth=1
	move	$s0, $a0
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_78
# %bb.63:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	st.d	$zero, $sp, 56
	ld.d	$a3, $a1, 0
.Ltmp248:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_IArchiveOpenSetSubArchiveName)
	ld.d	$a1, $a1, %got_pc_lo12(IID_IArchiveOpenSetSubArchiveName)
	addi.d	$a2, $sp, 56
	jirl	$ra, $a3, 0
.Ltmp249:                               # EH_LABEL
# %bb.64:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB13_66
# %bb.65:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a2, $a0, 0
	ld.d	$a1, $sp, 96
	ld.d	$a2, $a2, 40
.Ltmp250:                               # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp251:                               # EH_LABEL
.LBB13_66:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a3, $sp, 64
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $sp, 132
.Ltmp253:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s8
	move	$a4, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.67:                               #   in Loop: Header=BB13_7 Depth=1
	beqz	$a0, .LBB13_72
# %bb.68:                               #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 2
	move	$s0, $s7
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB13_76
# %bb.69:                               # %.fold.split
                                        #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 1
	move	$s0, $a0
	b	.LBB13_76
.LBB13_70:                              #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 2
	b	.LBB13_27
.LBB13_71:                              #   in Loop: Header=BB13_7 Depth=1
	ori	$s5, $zero, 2
	b	.LBB13_33
.LBB13_72:                              #   in Loop: Header=BB13_7 Depth=1
.Ltmp255:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s2
	addi.d	$a2, $sp, 136
	addi.d	$a3, $sp, 144
	pcaddu18i	$ra, %call36(_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.73:                               #   in Loop: Header=BB13_7 Depth=1
	move	$s0, $a0
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_76
# %bb.74:                               #   in Loop: Header=BB13_7 Depth=1
.Ltmp258:                               # EH_LABEL
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI4CArcE3AddERKS0_)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.75:                               #   in Loop: Header=BB13_7 Depth=1
	move	$s5, $zero
	move	$s0, $s7
.LBB13_76:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB13_78
# %bb.77:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp273:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp274:                               # EH_LABEL
.LBB13_78:                              #   in Loop: Header=BB13_7 Depth=1
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN4CArcD2Ev)
	jirl	$ra, $ra, 0
	move	$s7, $s0
.LBB13_79:                              #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB13_33
# %bb.80:                               #   in Loop: Header=BB13_7 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp276:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp277:                               # EH_LABEL
	b	.LBB13_33
.LBB13_81:
	ori	$a0, $zero, 2
	bne	$s5, $a0, .LBB13_84
# %bb.82:                               # %..thread171_crit_edge
	ld.w	$a1, $fp, 12
.LBB13_83:                              # %.thread171
	move	$s0, $zero
	sltu	$a0, $zero, $a1
	st.b	$a0, $fp, 72
.LBB13_84:                              # %.loopexit
	addi.w	$a0, $s0, 0
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
.LBB13_85:
.Ltmp257:                               # EH_LABEL
	b	.LBB13_89
.LBB13_86:
.Ltmp275:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_87:
.Ltmp260:                               # EH_LABEL
	b	.LBB13_89
.LBB13_88:
.Ltmp252:                               # EH_LABEL
.LBB13_89:
	move	$fp, $a0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB13_93
# %bb.90:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp261:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp262:                               # EH_LABEL
	b	.LBB13_93
.LBB13_91:
.Ltmp263:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_92:
.Ltmp247:                               # EH_LABEL
	move	$fp, $a0
.LBB13_93:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN4CArcD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB13_98
.LBB13_94:
.Ltmp244:                               # EH_LABEL
	b	.LBB13_97
.LBB13_95:
.Ltmp278:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_96:
.Ltmp241:                               # EH_LABEL
.LBB13_97:
	move	$fp, $a0
.LBB13_98:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB13_103
# %bb.99:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp264:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp265:                               # EH_LABEL
	b	.LBB13_103
.LBB13_100:
.Ltmp266:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_101:
.Ltmp281:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_102:
.Ltmp238:                               # EH_LABEL
	move	$fp, $a0
.LBB13_103:
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB13_111
# %bb.104:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp267:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp268:                               # EH_LABEL
	b	.LBB13_111
.LBB13_105:
.Ltmp269:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_106:
.Ltmp226:                               # EH_LABEL
	b	.LBB13_119
.LBB13_107:
.Ltmp284:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_108:
.Ltmp294:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 80
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN4CArcD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_109:
.Ltmp300:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_110:
.Ltmp235:                               # EH_LABEL
	move	$fp, $a0
.LBB13_111:
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB13_120
# %bb.112:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp270:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp271:                               # EH_LABEL
	b	.LBB13_120
.LBB13_113:
.Ltmp272:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_114:
.Ltmp289:                               # EH_LABEL
	b	.LBB13_116
.LBB13_115:
.Ltmp297:                               # EH_LABEL
.LBB13_116:                             # %.body
	move	$fp, $a0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN4CArcD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_117:
.Ltmp232:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_118:
.Ltmp223:                               # EH_LABEL
.LBB13_119:
	move	$fp, $a0
.Ltmp227:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
.LBB13_120:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_121:
.Ltmp229:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback, .Lfunc_end13-_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp221-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp221
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin6         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin6         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp285-.Ltmp225              #   Call between .Ltmp225 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp297-.Lfunc_begin6         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp230-.Ltmp286              #   Call between .Ltmp286 and .Ltmp230
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin6         #     jumps to .Ltmp232
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp233-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin6         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin6         #     jumps to .Ltmp284
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp236-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin6         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin6         #     jumps to .Ltmp281
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp287-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin6         #     jumps to .Ltmp289
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp298-.Ltmp288              #   Call between .Ltmp288 and .Ltmp298
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin6         #     jumps to .Ltmp300
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp290-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp297-.Lfunc_begin6         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin6         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin6         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin6         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin6         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin6         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp251-.Ltmp248              #   Call between .Ltmp248 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin6         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp260-.Lfunc_begin6         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin6         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin6         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin6         #     jumps to .Ltmp275
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp274-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp276-.Ltmp274              #   Call between .Ltmp274 and .Ltmp276
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin6         #     jumps to .Ltmp278
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp277-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp261-.Ltmp277              #   Call between .Ltmp277 and .Ltmp261
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin6         #     jumps to .Ltmp263
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp262-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp264-.Ltmp262              #   Call between .Ltmp262 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin6         #     jumps to .Ltmp266
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp265-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp267-.Ltmp265              #   Call between .Ltmp265 and .Ltmp267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin6         #     jumps to .Ltmp269
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp268-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp270-.Ltmp268              #   Call between .Ltmp268 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin6         #     jumps to .Ltmp272
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp271-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp227-.Ltmp271              #   Call between .Ltmp271 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin6         #     jumps to .Ltmp229
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp228-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Lfunc_end13-.Ltmp228          #   Call between .Ltmp228 and .Lfunc_end13
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
	.section	.text._ZN4CArcC2Ev,"axG",@progbits,_ZN4CArcC2Ev,comdat
	.weak	_ZN4CArcC2Ev                    # -- Begin function _ZN4CArcC2Ev
	.p2align	5
	.type	_ZN4CArcC2Ev,@function
_ZN4CArcC2Ev:                           # @_ZN4CArcC2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $fp, 8
	st.w	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 20
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 24
.Ltmp301:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.1:
	move	$s2, $a0
	st.d	$a0, $fp, 24
	st.w	$zero, $a0, 0
	st.w	$s0, $fp, 36
	st.b	$zero, $fp, 56
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 64
.Ltmp304:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.2:
	st.d	$a0, $fp, 64
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 76
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB14_3:
.Ltmp306:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	bnez	$s1, .LBB14_5
	b	.LBB14_6
.LBB14_4:                               # %.thread
.Ltmp303:                               # EH_LABEL
	move	$s0, $a0
.LBB14_5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_6:                               # %_ZN11CStringBaseIwED2Ev.exit8
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB14_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp307:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp308:                               # EH_LABEL
.LBB14_8:                               # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_9:
.Ltmp309:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN4CArcC2Ev, .Lfunc_end14-_ZN4CArcC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN4CArcC2Ev,"aG",@progbits,_ZN4CArcC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp301-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp301
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin7         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin7         #     jumps to .Ltmp306
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp307-.Ltmp305              #   Call between .Ltmp305 and .Ltmp307
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin7         #     jumps to .Ltmp309
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp308-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Lfunc_end14-.Ltmp308          #   Call between .Ltmp308 and .Lfunc_end14
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
	.section	.text._ZN13CObjectVectorI4CArcE3AddERKS0_,"axG",@progbits,_ZN13CObjectVectorI4CArcE3AddERKS0_,comdat
	.weak	_ZN13CObjectVectorI4CArcE3AddERKS0_ # -- Begin function _ZN13CObjectVectorI4CArcE3AddERKS0_
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcE3AddERKS0_,@function
_ZN13CObjectVectorI4CArcE3AddERKS0_:    # @_ZN13CObjectVectorI4CArcE3AddERKS0_
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
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp310:                               # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN4CArcC2ERKS_)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s0, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, 12
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB15_2:
.Ltmp312:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN13CObjectVectorI4CArcE3AddERKS0_, .Lfunc_end15-_ZN13CObjectVectorI4CArcE3AddERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcE3AddERKS0_,"aG",@progbits,_ZN13CObjectVectorI4CArcE3AddERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp310-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp310
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin8         #     jumps to .Ltmp312
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end15-.Ltmp311          #   Call between .Ltmp311 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN4CArcD2Ev,"axG",@progbits,_ZN4CArcD2Ev,comdat
	.weak	_ZN4CArcD2Ev                    # -- Begin function _ZN4CArcD2Ev
	.p2align	5
	.type	_ZN4CArcD2Ev,@function
_ZN4CArcD2Ev:                           # @_ZN4CArcD2Ev
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
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB16_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB16_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %_ZN11CStringBaseIwED2Ev.exit1
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB16_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %_ZN11CStringBaseIwED2Ev.exit2
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB16_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp313:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp314:                               # EH_LABEL
.LBB16_8:                               # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB16_9:
.Ltmp315:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN4CArcD2Ev, .Lfunc_end16-_ZN4CArcD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN4CArcD2Ev,"aG",@progbits,_ZN4CArcD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp313-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp313
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp314-.Ltmp313              #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin9         #     jumps to .Ltmp315
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp314-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp314          #   Call between .Ltmp314 and .Lfunc_end16
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
	.globl	_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI # -- Begin function _ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI
	.p2align	5
	.type	_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI,@function
_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI: # @_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	move	$s6, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s7, $a2
	move	$s5, $a1
	move	$s0, $a0
	st.d	$zero, $a0, 64
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp316:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN16COpenCallbackImpC2Ev)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
	st.d	$s6, $fp, 168
	st.d	$zero, $sp, 96
.Ltmp319:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.2:
	st.d	$a0, $sp, 88
	st.w	$zero, $a0, 0
	ori	$s4, $zero, 4
	st.w	$s4, $sp, 100
	st.d	$zero, $sp, 80
.Ltmp322:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.3:
	st.d	$a0, $sp, 72
	st.w	$zero, $a0, 0
	st.w	$s4, $sp, 84
	st.d	$zero, $sp, 64
.Ltmp325:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.4:
	st.d	$a0, $sp, 56
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 68
	bnez	$s3, .LBB17_11
# %bb.5:
	bnez	$s2, .LBB17_11
# %bb.6:
	ld.d	$a0, $s1, 0
.Ltmp328:                               # EH_LABEL
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 52
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.7:
	beqz	$a0, .LBB17_12
# %bb.8:
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a3, $sp, 52
.Ltmp330:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.9:                                # %_ZNK11CStringBaseIwE4LeftEi.exit
	ld.d	$s7, $sp, 72
	st.w	$zero, $sp, 80
	st.w	$zero, $s7, 0
	ld.w	$a0, $sp, 40
	ld.w	$s4, $sp, 84
	addi.w	$s8, $a0, 1
	bne	$s8, $s4, .LBB17_13
# %bb.10:
	move	$s6, $s7
	b	.LBB17_18
.LBB17_11:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 80
.Ltmp345:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp346:                               # EH_LABEL
	b	.LBB17_35
.LBB17_12:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$s1, $a0, 0
	b	.LBB17_75
.LBB17_13:
	slti	$a0, $a0, -1
	slli.d	$a1, $s8, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.14:                               # %.noexc
	move	$s6, $a0
	blez	$s4, .LBB17_16
# %bb.15:                               # %._crit_edge.thread.i.i
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 80
	b	.LBB17_17
.LBB17_16:
	move	$a0, $zero
.LBB17_17:
	st.d	$s6, $sp, 72
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s6, $a0
	st.w	$s8, $sp, 84
.LBB17_18:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $sp, 32
	move	$a1, $zero
	.p2align	4, , 16
.LBB17_19:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB17_19
# %bb.20:
	ld.w	$a1, $sp, 40
	st.w	$a1, $sp, 80
	beqz	$a0, .LBB17_22
# %bb.21:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_22:                              # %_ZN11CStringBaseIwED2Ev.exit
	ld.w	$a0, $sp, 96
	ld.w	$a2, $sp, 52
	sub.w	$a3, $a0, $a2
.Ltmp336:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.23:                               # %_ZNK11CStringBaseIwE3MidEi.exit
	ld.d	$s7, $sp, 56
	st.w	$zero, $sp, 64
	st.w	$zero, $s7, 0
	ld.w	$a0, $sp, 40
	ld.w	$s4, $sp, 68
	addi.w	$s8, $a0, 1
	bne	$s8, $s4, .LBB17_25
# %bb.24:
	move	$s6, $s7
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	b	.LBB17_30
.LBB17_25:
	slti	$a0, $a0, -1
	slli.d	$a1, $s8, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp339:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.26:                               # %.noexc70
	move	$s6, $a0
	blez	$s4, .LBB17_28
# %bb.27:                               # %._crit_edge.thread.i.i68
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 64
	b	.LBB17_29
.LBB17_28:
	move	$a0, $zero
.LBB17_29:
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	st.d	$s6, $sp, 56
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s6, $a0
	st.w	$s8, $sp, 68
.LBB17_30:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64
	ld.d	$a0, $sp, 32
	move	$a1, $zero
	.p2align	4, , 16
.LBB17_31:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB17_31
# %bb.32:
	ld.w	$a1, $sp, 40
	st.w	$a1, $sp, 64
	beqz	$a0, .LBB17_34
# %bb.33:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_34:                              # %_ZN11CStringBaseIwED2Ev.exit72
.Ltmp342:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
.LBB17_35:
.Ltmp348:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s2
	move	$a5, $s1
	move	$a6, $fp
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink4OpenEP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP20IArchiveOpenCallback)
	jirl	$ra, $ra, 0
.Ltmp349:                               # EH_LABEL
# %bb.36:
	move	$s1, $a0
	bnez	$a0, .LBB17_75
# %bb.37:
	ld.w	$s2, $sp, 80
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 32
	bgez	$a0, .LBB17_39
# %bb.38:
	move	$a0, $zero
	b	.LBB17_41
.LBB17_39:
	addi.w	$a0, $s1, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp351:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.40:                               # %.noexc75
	st.d	$a0, $sp, 32
	st.w	$zero, $a0, 0
	st.w	$s1, $sp, 44
.LBB17_41:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a1, $sp, 72
	addi.d	$s1, $s0, 32
	.p2align	4, , 16
.LBB17_42:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB17_42
# %bb.43:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	st.w	$s2, $sp, 40
.Ltmp354:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.44:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
.Ltmp357:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.45:                               # %.noexc80
	move	$s2, $a0
	ld.w	$s3, $sp, 40
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s4, $a0, 1
	slli.d	$a0, $s4, 31
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	bgez	$a0, .LBB17_47
# %bb.46:
	move	$a0, $zero
	b	.LBB17_49
.LBB17_47:
	addi.w	$a0, $s4, 0
	slti	$a1, $s3, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp359:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.48:                               # %.noexc.i
	st.d	$a0, $s2, 0
	st.w	$zero, $a0, 0
	st.w	$s4, $s2, 12
.LBB17_49:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i76
	ld.d	$a1, $sp, 32
	.p2align	4, , 16
.LBB17_50:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB17_50
# %bb.51:
	st.w	$s3, $s2, 8
.Ltmp362:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.52:
	ld.w	$a1, $s0, 44
	ld.d	$a0, $s0, 48
	slli.d	$a2, $a1, 3
	stx.d	$s2, $a0, $a2
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 44
	beqz	$a0, .LBB17_54
# %bb.53:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_54:                              # %_ZN11CStringBaseIwED2Ev.exit84
	ld.w	$a0, $fp, 148
	blez	$a0, .LBB17_74
# %bb.55:                               # %.lr.ph
	move	$s3, $zero
	addi.w	$s4, $zero, -1
	b	.LBB17_57
	.p2align	4, , 16
.LBB17_56:                              # %_ZN11CStringBaseIwED2Ev.exit106
                                        #   in Loop: Header=BB17_57 Depth=1
	ld.w	$a0, $fp, 148
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB17_74
.LBB17_57:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_62 Depth 2
                                        #     Child Loop BB17_70 Depth 2
	ld.d	$a0, $fp, 152
	ld.w	$s5, $sp, 80
	slli.d	$a1, $s3, 3
	ldx.d	$s2, $a0, $a1
	bstrpick.d	$a0, $s5, 31, 0
	addi.d	$s6, $a0, 1
	slli.d	$a0, $s6, 31
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	bgez	$a0, .LBB17_59
# %bb.58:                               #   in Loop: Header=BB17_57 Depth=1
	move	$a0, $zero
	b	.LBB17_61
	.p2align	4, , 16
.LBB17_59:                              #   in Loop: Header=BB17_57 Depth=1
	addi.w	$a0, $s6, 0
	slti	$a1, $s5, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s4, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp365:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.60:                               # %.noexc92
                                        #   in Loop: Header=BB17_57 Depth=1
	st.d	$a0, $sp, 32
	st.w	$zero, $a0, 0
	st.w	$s6, $sp, 44
.LBB17_61:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i86
                                        #   in Loop: Header=BB17_57 Depth=1
	ld.d	$a1, $sp, 72
	.p2align	4, , 16
.LBB17_62:                              #   Parent Loop BB17_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB17_62
# %bb.63:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i90
                                        #   in Loop: Header=BB17_57 Depth=1
	st.w	$s5, $sp, 40
.Ltmp368:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp369:                               # EH_LABEL
# %bb.64:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit95
                                        #   in Loop: Header=BB17_57 Depth=1
.Ltmp371:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.65:                               # %.noexc101
                                        #   in Loop: Header=BB17_57 Depth=1
	move	$s2, $a0
	ld.w	$s5, $sp, 40
	bstrpick.d	$a0, $s5, 31, 0
	addi.d	$s6, $a0, 1
	slli.d	$a0, $s6, 31
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	bgez	$a0, .LBB17_67
# %bb.66:                               #   in Loop: Header=BB17_57 Depth=1
	move	$a0, $zero
	b	.LBB17_69
	.p2align	4, , 16
.LBB17_67:                              #   in Loop: Header=BB17_57 Depth=1
	addi.w	$a0, $s6, 0
	slti	$a1, $s5, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s4, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp373:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.68:                               # %.noexc.i96
                                        #   in Loop: Header=BB17_57 Depth=1
	st.d	$a0, $s2, 0
	st.w	$zero, $a0, 0
	st.w	$s6, $s2, 12
.LBB17_69:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i97
                                        #   in Loop: Header=BB17_57 Depth=1
	ld.d	$a1, $sp, 32
	.p2align	4, , 16
.LBB17_70:                              #   Parent Loop BB17_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB17_70
# %bb.71:                               #   in Loop: Header=BB17_57 Depth=1
	st.w	$s5, $s2, 8
.Ltmp376:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.72:                               #   in Loop: Header=BB17_57 Depth=1
	ld.w	$a1, $s0, 44
	ld.d	$a0, $s0, 48
	slli.d	$a2, $a1, 3
	stx.d	$s2, $a0, $a2
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 44
	beqz	$a0, .LBB17_56
# %bb.73:                               #   in Loop: Header=BB17_57 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB17_56
.LBB17_74:                              # %._crit_edge
	ld.d	$a0, $fp, 184
	move	$s1, $zero
	st.d	$a0, $s0, 64
.LBB17_75:
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB17_77
# %bb.76:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_77:                              # %_ZN11CStringBaseIwED2Ev.exit108
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB17_79
# %bb.78:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_79:                              # %_ZN11CStringBaseIwED2Ev.exit109
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB17_81
# %bb.80:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_81:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp382:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp383:                               # EH_LABEL
# %bb.82:                               # %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit
	move	$a0, $s1
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB17_83:
.Ltmp341:                               # EH_LABEL
	b	.LBB17_85
.LBB17_84:
.Ltmp335:                               # EH_LABEL
.LBB17_85:
	ld.d	$a1, $sp, 32
	move	$s0, $a0
	beqz	$a1, .LBB17_110
	b	.LBB17_105
.LBB17_86:
.Ltmp361:                               # EH_LABEL
	b	.LBB17_103
.LBB17_87:
.Ltmp353:                               # EH_LABEL
	b	.LBB17_101
.LBB17_88:
.Ltmp338:                               # EH_LABEL
	b	.LBB17_101
.LBB17_89:
.Ltmp332:                               # EH_LABEL
	b	.LBB17_101
.LBB17_90:
.Ltmp356:                               # EH_LABEL
	ld.d	$a1, $sp, 32
	move	$s0, $a0
	bnez	$a1, .LBB17_105
	b	.LBB17_110
.LBB17_91:
.Ltmp347:                               # EH_LABEL
	b	.LBB17_101
.LBB17_92:
.Ltmp364:                               # EH_LABEL
	b	.LBB17_107
.LBB17_93:
.Ltmp350:                               # EH_LABEL
	b	.LBB17_101
.LBB17_94:
.Ltmp344:                               # EH_LABEL
	b	.LBB17_101
.LBB17_95:
.Ltmp384:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_96:
.Ltmp327:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB17_112
	b	.LBB17_117
.LBB17_97:
.Ltmp324:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 88
	bnez	$a0, .LBB17_113
	b	.LBB17_114
.LBB17_98:
.Ltmp321:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB17_114
.LBB17_99:
.Ltmp318:                               # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_100:
.Ltmp367:                               # EH_LABEL
.LBB17_101:
	move	$s0, $a0
	b	.LBB17_110
.LBB17_102:
.Ltmp375:                               # EH_LABEL
.LBB17_103:                             # %.body103
	move	$s0, $a0
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB17_108
.LBB17_104:
.Ltmp370:                               # EH_LABEL
	ld.d	$a1, $sp, 32
	move	$s0, $a0
	beqz	$a1, .LBB17_110
.LBB17_105:
	move	$a0, $a1
	b	.LBB17_109
.LBB17_106:
.Ltmp378:                               # EH_LABEL
.LBB17_107:                             # %.body103
	move	$s0, $a0
.LBB17_108:                             # %.body103
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB17_110
.LBB17_109:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_110:
	ld.d	$a0, $sp, 56
	bnez	$a0, .LBB17_116
# %bb.111:                              # %_ZN11CStringBaseIwED2Ev.exit111
	ld.d	$a0, $sp, 72
	bnez	$a0, .LBB17_117
.LBB17_112:                             # %_ZN11CStringBaseIwED2Ev.exit112
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB17_114
.LBB17_113:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_114:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp379:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp380:                               # EH_LABEL
# %bb.115:                              # %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit115
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_116:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB17_112
.LBB17_117:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	bnez	$a0, .LBB17_113
	b	.LBB17_114
.LBB17_118:
.Ltmp381:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI, .Lfunc_end17-_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp316-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp316
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin10        #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp319-.Ltmp317              #   Call between .Ltmp317 and .Ltmp319
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin10        #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin10        #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin10        #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp344-.Lfunc_begin10        #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp330-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp331-.Ltmp330              #   Call between .Ltmp330 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin10        #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin10        #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp333-.Ltmp346              #   Call between .Ltmp346 and .Ltmp333
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp334-.Ltmp333              #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin10        #     jumps to .Ltmp335
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp336-.Ltmp334              #   Call between .Ltmp334 and .Ltmp336
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin10        #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin10        #     jumps to .Ltmp341
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Ltmp342-.Ltmp340              #   Call between .Ltmp340 and .Ltmp342
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin10        # >> Call Site 16 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin10        #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin10        # >> Call Site 17 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin10        #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin10        # >> Call Site 18 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin10        #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin10        # >> Call Site 19 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin10        #     jumps to .Ltmp356
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin10        # >> Call Site 20 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp364-.Lfunc_begin10        #     jumps to .Ltmp364
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin10        # >> Call Site 21 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin10        #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin10        # >> Call Site 22 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin10        #     jumps to .Ltmp364
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin10        # >> Call Site 23 <<
	.uleb128 .Ltmp365-.Ltmp363              #   Call between .Ltmp363 and .Ltmp365
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin10        # >> Call Site 24 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin10        #     jumps to .Ltmp367
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin10        # >> Call Site 25 <<
	.uleb128 .Ltmp369-.Ltmp368              #   Call between .Ltmp368 and .Ltmp369
	.uleb128 .Ltmp370-.Lfunc_begin10        #     jumps to .Ltmp370
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin10        # >> Call Site 26 <<
	.uleb128 .Ltmp372-.Ltmp371              #   Call between .Ltmp371 and .Ltmp372
	.uleb128 .Ltmp378-.Lfunc_begin10        #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin10        # >> Call Site 27 <<
	.uleb128 .Ltmp374-.Ltmp373              #   Call between .Ltmp373 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin10        #     jumps to .Ltmp375
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp376-.Lfunc_begin10        # >> Call Site 28 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin10        #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp377-.Lfunc_begin10        # >> Call Site 29 <<
	.uleb128 .Ltmp382-.Ltmp377              #   Call between .Ltmp377 and .Ltmp382
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin10        # >> Call Site 30 <<
	.uleb128 .Ltmp383-.Ltmp382              #   Call between .Ltmp382 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin10        #     jumps to .Ltmp384
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp383-.Lfunc_begin10        # >> Call Site 31 <<
	.uleb128 .Ltmp379-.Ltmp383              #   Call between .Ltmp383 and .Ltmp379
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin10        # >> Call Site 32 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin10        #     jumps to .Ltmp381
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp380-.Lfunc_begin10        # >> Call Site 33 <<
	.uleb128 .Lfunc_end17-.Ltmp380          #   Call between .Ltmp380 and .Lfunc_end17
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
	.section	.text._ZN16COpenCallbackImpC2Ev,"axG",@progbits,_ZN16COpenCallbackImpC2Ev,comdat
	.weak	_ZN16COpenCallbackImpC2Ev       # -- Begin function _ZN16COpenCallbackImpC2Ev
	.p2align	5
	.type	_ZN16COpenCallbackImpC2Ev,@function
_ZN16COpenCallbackImpC2Ev:              # @_ZN16COpenCallbackImpC2Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	pcalau12i	$a0, %got_pc_hi20(_ZTV16COpenCallbackImp)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV16COpenCallbackImp)
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 0
	addi.d	$a1, $a0, 120
	st.d	$a1, $fp, 8
	addi.d	$a1, $a0, 192
	st.d	$a1, $fp, 16
	addi.d	$a0, $a0, 256
	st.d	$a0, $fp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 40
	st.w	$zero, $a0, 0
	ori	$s2, $zero, 4
	st.w	$s2, $fp, 52
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 96
.Ltmp385:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	addi.d	$s0, $fp, 40
	st.d	$a0, $fp, 96
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 108
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 120
.Ltmp388:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.2:
	st.d	$a0, $fp, 120
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 132
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 144
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 160
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 136
	vst	$vr0, $fp, 168
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB18_3:
.Ltmp390:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB18_5
	b	.LBB18_6
.LBB18_4:                               # %.thread
.Ltmp387:                               # EH_LABEL
	move	$fp, $a0
.LBB18_5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_6:                               # %_ZN11CStringBaseIwED2Ev.exit9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN16COpenCallbackImpC2Ev, .Lfunc_end18-_ZN16COpenCallbackImpC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16COpenCallbackImpC2Ev,"aG",@progbits,_ZN16COpenCallbackImpC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp385-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp385
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp385-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin11        #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp390-.Lfunc_begin11        #     jumps to .Ltmp390
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Lfunc_end18-.Ltmp389          #   Call between .Ltmp389 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_,"axG",@progbits,_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_,comdat
	.weak	_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_ # -- Begin function _ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_
	.p2align	5
	.type	_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_,@function
_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_: # @_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
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
	addi.d	$s3, $a0, 40
	move	$s0, $a2
	beq	$a1, $s3, .LBB19_3
# %bb.1:
	st.w	$zero, $fp, 48
	ld.d	$s2, $fp, 40
	ld.w	$a0, $a1, 8
	ld.w	$s6, $fp, 52
	addi.w	$s4, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s4, $s6, .LBB19_4
# %bb.2:
	move	$s1, $s2
	b	.LBB19_8
.LBB19_3:                               # %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge
	ld.w	$s2, $fp, 48
	b	.LBB19_11
.LBB19_4:
	move	$s5, $a1
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s6, .LBB19_6
# %bb.5:                                # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	b	.LBB19_7
.LBB19_6:
	move	$a0, $zero
.LBB19_7:
	st.d	$s1, $fp, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s4, $fp, 52
	move	$a1, $s5
.LBB19_8:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $a1, 0
	.p2align	4, , 16
.LBB19_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $s1, 4
	st.w	$a2, $s1, 0
	move	$s1, $a3
	bnez	$a2, .LBB19_9
# %bb.10:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$s2, $a1, 8
	st.w	$s2, $fp, 48
.LBB19_11:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vst	$vr0, $sp, 8
	bgez	$a0, .LBB19_13
# %bb.12:
	move	$a0, $zero
	b	.LBB19_14
.LBB19_13:
	addi.w	$a0, $s1, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	st.w	$zero, $a0, 0
	st.w	$s1, $sp, 20
.LBB19_14:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a1, $s3, 0
	addi.d	$s1, $fp, 56
	.p2align	4, , 16
.LBB19_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB19_15
# %bb.16:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	st.w	$s2, $sp, 16
.Ltmp391:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.17:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
	ld.d	$a1, $sp, 8
.Ltmp394:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.18:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB19_20
# %bb.19:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_20:                              # %_ZN11CStringBaseIwED2Ev.exit
	beqz	$s0, .LBB19_22
# %bb.21:
	addi.d	$a0, $fp, 136
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	st.b	$zero, $fp, 112
	st.d	$zero, $fp, 184
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
.LBB19_22:
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
.LBB19_23:
.Ltmp396:                               # EH_LABEL
	b	.LBB19_25
.LBB19_24:
.Ltmp393:                               # EH_LABEL
.LBB19_25:
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beqz	$a1, .LBB19_27
# %bb.26:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_27:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_, .Lfunc_end19-_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_
	.cfi_endproc
	.section	.gcc_except_table._ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_,"aG",@progbits,_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp391-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp391
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin12        #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin12        #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Lfunc_end19-.Ltmp395          #   Call between .Ltmp395 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback # -- Begin function _ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback
	.p2align	5
	.type	_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback,@function
_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback: # @_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	ori	$a4, $zero, 1
	bge	$a4, $a0, .LBB20_2
# %bb.1:
	lu12i.w	$a0, -524284
	ori	$s1, $a0, 1
	b	.LBB20_31
.LBB20_2:
	move	$s2, $a2
	beqz	$a0, .LBB20_26
# %bb.3:                                # %.noexc
	move	$s1, $a3
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp397:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN16COpenCallbackImpC2Ev)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.4:                                # %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 168
	beqz	$s1, .LBB20_6
# %bb.5:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
.Ltmp400:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp401:                               # EH_LABEL
.LBB20_6:                               # %.noexc28
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB20_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp402:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp403:                               # EH_LABEL
.LBB20_8:                               # %_ZN9CMyComPtrI20IArchiveOpenCallbackEaSEPS0_.exit18.i
	st.d	$s1, $fp, 176
	st.d	$zero, $sp, 16
.Ltmp404:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp405:                               # EH_LABEL
# %bb.9:                                # %.noexc30
	st.d	$a0, $sp, 8
	ld.d	$a3, $s2, 0
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 20
.Ltmp407:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 76
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.10:
	ld.w	$a3, $sp, 76
.Ltmp410:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp411:                               # EH_LABEL
# %bb.11:                               # %_ZNK11CStringBaseIwE4LeftEi.exit.i
	ld.w	$a0, $sp, 16
	ld.w	$a2, $sp, 76
	sub.w	$a3, $a0, $a2
.Ltmp413:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp414:                               # EH_LABEL
# %bb.12:                               # %_ZNK11CStringBaseIwE3MidEi.exit.i
.Ltmp416:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16COpenCallbackImp4InitERK11CStringBaseIwES3_)
	jirl	$ra, $ra, 0
.Ltmp417:                               # EH_LABEL
# %bb.13:
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB20_15
# %bb.14:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB20_15:                              # %_ZN11CStringBaseIwED2Ev.exit.i
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB20_17
# %bb.16:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB20_17:                              # %_ZN11CStringBaseIwED2Ev.exit19.i
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB20_19
# %bb.18:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB20_19:
.Ltmp419:                               # EH_LABEL
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp420:                               # EH_LABEL
# %bb.20:
	move	$s3, $a0
	st.w	$zero, $a0, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTV13CInFileStream)
	ld.d	$s4, $a0, %got_pc_lo12(_ZTV13CInFileStream)
	addi.d	$a0, $s4, 16
	st.d	$a0, $s3, 0
	addi.d	$a0, $s4, 96
	st.d	$a0, $s3, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $s3, 24
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $s3, 40
.Ltmp422:                               # EH_LABEL
	ori	$a0, $zero, 4
	ori	$s5, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp423:                               # EH_LABEL
# %bb.21:
	st.d	$a0, $s3, 40
	st.b	$zero, $a0, 0
	st.w	$s5, $s3, 52
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	ld.d	$a1, $s4, 24
	st.d	$a0, $s3, 24
	ori	$a0, $zero, 1
	st.b	$a0, $s3, 20
.Ltmp425:                               # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp426:                               # EH_LABEL
# %bb.22:                               # %_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit
	ld.d	$a1, $s2, 0
.Ltmp428:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN13CInFileStream4OpenEPKw)
	jirl	$ra, $ra, 0
.Ltmp429:                               # EH_LABEL
# %bb.23:
	beqz	$a0, .LBB20_28
# %bb.24:
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
.Ltmp431:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZL22kMaxCheckStartPosition)
	addi.d	$a2, $a1, %pc_lo12(_ZL22kMaxCheckStartPosition)
	move	$a1, $s3
	move	$a3, $s1
	jirl	$ra, $a4, 0
.Ltmp432:                               # EH_LABEL
# %bb.25:
	move	$s1, $a0
	sltui	$a0, $a0, 1
	st.b	$a0, $s0, 72
	b	.LBB20_29
.LBB20_26:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$a0, $sp, 8
.Ltmp446:                               # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s2
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.27:
	move	$s1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB20_31
.LBB20_28:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$s1, $a0, 0
.LBB20_29:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
.Ltmp440:                               # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp441:                               # EH_LABEL
# %bb.30:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp443:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp444:                               # EH_LABEL
.LBB20_31:                              # %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit
	addi.w	$a0, $s1, 0
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
.LBB20_32:
.Ltmp433:                               # EH_LABEL
	b	.LBB20_37
.LBB20_33:
.Ltmp448:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_34:
.Ltmp445:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_35:
.Ltmp442:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_36:
.Ltmp430:                               # EH_LABEL
.LBB20_37:
	move	$s0, $a0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
.Ltmp434:                               # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp435:                               # EH_LABEL
	b	.LBB20_54
.LBB20_38:
.Ltmp436:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_39:
.Ltmp427:                               # EH_LABEL
	b	.LBB20_53
.LBB20_40:
.Ltmp424:                               # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB20_54
.LBB20_41:
.Ltmp421:                               # EH_LABEL
	b	.LBB20_53
.LBB20_42:
.Ltmp418:                               # EH_LABEL
	ld.d	$a1, $sp, 40
	move	$s0, $a0
	bnez	$a1, .LBB20_45
# %bb.43:                               # %_ZN11CStringBaseIwED2Ev.exit21.i
	ld.d	$a0, $sp, 56
	bnez	$a0, .LBB20_47
.LBB20_44:
	ld.d	$a0, $sp, 8
	bnez	$a0, .LBB20_50
	b	.LBB20_54
.LBB20_45:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB20_44
	b	.LBB20_47
.LBB20_46:
.Ltmp415:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB20_44
.LBB20_47:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	bnez	$a0, .LBB20_50
	b	.LBB20_54
.LBB20_48:
.Ltmp412:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	bnez	$a0, .LBB20_50
	b	.LBB20_54
.LBB20_49:
.Ltmp409:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB20_54
.LBB20_50:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB20_54
.LBB20_51:                              # %.body.thread49
.Ltmp399:                               # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_52:                              # %.body.thread54
.Ltmp406:                               # EH_LABEL
.LBB20_53:                              # %.body.thread
	move	$s0, $a0
.LBB20_54:                              # %.body.thread
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp437:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp438:                               # EH_LABEL
# %bb.55:                               # %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_56:
.Ltmp439:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback, .Lfunc_end20-_ZN12CArchiveLink6ReOpenEP7CCodecsRK11CStringBaseIwEP20IArchiveOpenCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp397-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp397
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin13        #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp400-.Ltmp398              #   Call between .Ltmp398 and .Ltmp400
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp405-.Ltmp400              #   Call between .Ltmp400 and .Ltmp405
	.uleb128 .Ltmp406-.Lfunc_begin13        #     jumps to .Ltmp406
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp409-.Lfunc_begin13        #     jumps to .Ltmp409
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp410-.Lfunc_begin13        # >> Call Site 6 <<
	.uleb128 .Ltmp411-.Ltmp410              #   Call between .Ltmp410 and .Ltmp411
	.uleb128 .Ltmp412-.Lfunc_begin13        #     jumps to .Ltmp412
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin13        # >> Call Site 7 <<
	.uleb128 .Ltmp414-.Ltmp413              #   Call between .Ltmp413 and .Ltmp414
	.uleb128 .Ltmp415-.Lfunc_begin13        #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin13        # >> Call Site 8 <<
	.uleb128 .Ltmp417-.Ltmp416              #   Call between .Ltmp416 and .Ltmp417
	.uleb128 .Ltmp418-.Lfunc_begin13        #     jumps to .Ltmp418
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin13        # >> Call Site 9 <<
	.uleb128 .Ltmp419-.Ltmp417              #   Call between .Ltmp417 and .Ltmp419
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin13        # >> Call Site 10 <<
	.uleb128 .Ltmp420-.Ltmp419              #   Call between .Ltmp419 and .Ltmp420
	.uleb128 .Ltmp421-.Lfunc_begin13        #     jumps to .Ltmp421
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin13        # >> Call Site 11 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp424-.Lfunc_begin13        #     jumps to .Ltmp424
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin13        # >> Call Site 12 <<
	.uleb128 .Ltmp426-.Ltmp425              #   Call between .Ltmp425 and .Ltmp426
	.uleb128 .Ltmp427-.Lfunc_begin13        #     jumps to .Ltmp427
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin13        # >> Call Site 13 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp430-.Lfunc_begin13        #     jumps to .Ltmp430
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp431-.Lfunc_begin13        # >> Call Site 14 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp433-.Lfunc_begin13        #     jumps to .Ltmp433
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin13        # >> Call Site 15 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin13        #     jumps to .Ltmp448
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin13        # >> Call Site 16 <<
	.uleb128 .Ltmp440-.Ltmp447              #   Call between .Ltmp447 and .Ltmp440
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin13        # >> Call Site 17 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin13        #     jumps to .Ltmp442
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp443-.Lfunc_begin13        # >> Call Site 18 <<
	.uleb128 .Ltmp444-.Ltmp443              #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp445-.Lfunc_begin13        #     jumps to .Ltmp445
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp444-.Lfunc_begin13        # >> Call Site 19 <<
	.uleb128 .Ltmp434-.Ltmp444              #   Call between .Ltmp444 and .Ltmp434
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin13        # >> Call Site 20 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp436-.Lfunc_begin13        #     jumps to .Ltmp436
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp435-.Lfunc_begin13        # >> Call Site 21 <<
	.uleb128 .Ltmp437-.Ltmp435              #   Call between .Ltmp435 and .Ltmp437
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin13        # >> Call Site 22 <<
	.uleb128 .Ltmp438-.Ltmp437              #   Call between .Ltmp437 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin13        #     jumps to .Ltmp439
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp438-.Lfunc_begin13        # >> Call Site 23 <<
	.uleb128 .Lfunc_end20-.Ltmp438          #   Call between .Ltmp438 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
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
.Lfunc_end21:
	.size	__clang_call_terminate, .Lfunc_end21-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN8NWindows5NFile3NIO7CInFileD0Ev,"axG",@progbits,_ZN8NWindows5NFile3NIO7CInFileD0Ev,comdat
	.weak	_ZN8NWindows5NFile3NIO7CInFileD0Ev # -- Begin function _ZN8NWindows5NFile3NIO7CInFileD0Ev
	.p2align	5
	.type	_ZN8NWindows5NFile3NIO7CInFileD0Ev,@function
_ZN8NWindows5NFile3NIO7CInFileD0Ev:     # @_ZN8NWindows5NFile3NIO7CInFileD0Ev
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
.Lfunc_end22:
	.size	_ZN8NWindows5NFile3NIO7CInFileD0Ev, .Lfunc_end22-_ZN8NWindows5NFile3NIO7CInFileD0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED2Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED2Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED2Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp449:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp450:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB23_2:
.Ltmp451:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED2Ev, .Lfunc_end23-_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp449-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp451-.Lfunc_begin14        #     jumps to .Ltmp451
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp450-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Lfunc_end23-.Ltmp450          #   Call between .Ltmp450 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED0Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED0Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED0Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp452:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp453:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
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
.LBB24_2:
.Ltmp454:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED0Ev, .Lfunc_end24-_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp452-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp453-.Ltmp452              #   Call between .Ltmp452 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin15        #     jumps to .Ltmp454
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp453-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Lfunc_end24-.Ltmp453          #   Call between .Ltmp453 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,@function
_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii: # @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
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
	blez	$s1, .LBB25_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB25_4
	.p2align	4, , 16
.LBB25_2:                               # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB25_4 Depth=1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB25_3:                               #   in Loop: Header=BB25_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB25_7
.LBB25_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB25_3
# %bb.5:                                #   in Loop: Header=BB25_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB25_2
# %bb.6:                                #   in Loop: Header=BB25_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB25_2
.LBB25_7:                               # %._crit_edge
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
.Lfunc_end25:
	.size	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii, .Lfunc_end25-_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
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
	bge	$a2, $a1, .LBB26_21
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
	beq	$s2, $s4, .LBB26_21
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
	blez	$s4, .LBB26_8
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blez	$s1, .LBB26_9
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s1, $a2, .LBB26_17
# %bb.5:                                # %iter.check
	sub.d	$a2, $s0, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB26_17
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s1, $a1, .LBB26_10
# %bb.7:
	move	$a1, $zero
	b	.LBB26_14
.LBB26_8:
	move	$a1, $s3
	b	.LBB26_20
.LBB26_9:                               # %._crit_edge.i.i
	move	$a1, $s3
	bnez	$a0, .LBB26_19
	b	.LBB26_20
.LBB26_10:                              # %vector.ph
	bstrpick.d	$a1, $s1, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s0, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB26_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB26_11
# %bb.12:                               # %middle.block
	beq	$a1, $s1, .LBB26_19
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a2, $s1, 12
	beqz	$a2, .LBB26_17
.LBB26_14:                              # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s1, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s0, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB26_15:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB26_15
# %bb.16:                               # %vec.epilog.middle.block
	beq	$a1, $s1, .LBB26_19
.LBB26_17:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s1, $a1
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB26_18:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB26_18
.LBB26_19:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	ld.w	$s1, $s3, 8
.LBB26_20:
	move	$a0, $a1
	st.d	$s0, $a1, 0
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s0, $a1
	st.w	$s2, $a0, 12
.LBB26_21:                              # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $s1, $a2, 2
	.p2align	4, , 16
.LBB26_22:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB26_22
# %bb.23:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
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
.Lfunc_end26:
	.size	_ZN11CStringBaseIwEpLERKS0_, .Lfunc_end26-_ZN11CStringBaseIwEpLERKS0_
	.cfi_endproc
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
	beqz	$a1, .LBB27_2
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
.LBB27_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end27:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end27-_ZN7CBufferIhED0Ev
                                        # -- End function
	.section	.text._ZNK11CStringBaseIwE3MidEii,"axG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.weak	_ZNK11CStringBaseIwE3MidEii     # -- Begin function _ZNK11CStringBaseIwE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIwE3MidEii,@function
_ZNK11CStringBaseIwE3MidEii:            # @_ZNK11CStringBaseIwE3MidEii
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	bnez	$a2, .LBB28_4
# %bb.1:
	bne	$s4, $s2, .LBB28_4
# %bb.2:
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB28_13
# %bb.3:
	move	$a0, $zero
	b	.LBB28_14
.LBB28_4:
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	addi.w	$s5, $s4, 1
	st.w	$a1, $fp, 12
	beq	$s5, $a1, .LBB28_7
# %bb.5:
	move	$s2, $a0
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	st.d	$s3, $fp, 0
	st.w	$zero, $s3, 0
	st.w	$s5, $fp, 12
	blez	$s4, .LBB28_12
.LBB28_7:                               # %iter.check
	ld.d	$a2, $s0, 0
	ori	$a3, $zero, 3
	alsl.d	$a1, $s1, $a2, 2
	bgeu	$a3, $s4, .LBB28_9
# %bb.8:                                # %vector.memcheck
	alsl.d	$a2, $s1, $a2, 2
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB28_18
.LBB28_9:
	move	$a2, $zero
.LBB28_10:                              # %vec.epilog.scalar.ph.preheader
	slli.d	$a3, $a2, 2
	.p2align	4, , 16
.LBB28_11:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a1, $a3
	stx.w	$a4, $a0, $a3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bltu	$a2, $s4, .LBB28_11
.LBB28_12:                              # %._crit_edge
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	b	.LBB28_17
.LBB28_13:
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
.LBB28_14:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB28_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB28_15
# %bb.16:
	move	$s4, $s2
.LBB28_17:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit
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
.LBB28_18:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $s4
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s4, $a3
	ori	$a4, $zero, 16
	or	$a3, $a3, $a2
	bgeu	$s4, $a4, .LBB28_20
# %bb.19:
	move	$a2, $zero
	b	.LBB28_24
.LBB28_20:                              # %vector.ph
	bstrpick.d	$a2, $a3, 30, 4
	slli.d	$a2, $a2, 4
	move	$a4, $zero
	move	$a5, $a2
	.p2align	4, , 16
.LBB28_21:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a1, $a4
	xvldx	$xr0, $a1, $a4
	xvld	$xr1, $a6, 32
	add.d	$a6, $a0, $a4
	xvstx	$xr0, $a0, $a4
	xvst	$xr1, $a6, 32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB28_21
# %bb.22:                               # %middle.block
	beq	$a2, $s4, .LBB28_12
# %bb.23:                               # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB28_10
.LBB28_24:                              # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a4, $a2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB28_25:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a1, $a4
	vstx	$vr0, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB28_25
# %bb.26:                               # %vec.epilog.middle.block
	bne	$a2, $s4, .LBB28_10
	b	.LBB28_12
.LBB28_27:                              # %_ZN11CStringBaseIwED2Ev.exit
.Ltmp457:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZNK11CStringBaseIwE3MidEii, .Lfunc_end28-_ZNK11CStringBaseIwE3MidEii
	.cfi_endproc
	.section	.gcc_except_table._ZNK11CStringBaseIwE3MidEii,"aG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp455-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp455
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp456-.Ltmp455              #   Call between .Ltmp455 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin16        #     jumps to .Ltmp457
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Lfunc_end28-.Ltmp456          #   Call between .Ltmp456 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CRecordVectorIiED0Ev,"axG",@progbits,_ZN13CRecordVectorIiED0Ev,comdat
	.weak	_ZN13CRecordVectorIiED0Ev       # -- Begin function _ZN13CRecordVectorIiED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIiED0Ev,@function
_ZN13CRecordVectorIiED0Ev:              # @_ZN13CRecordVectorIiED0Ev
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
.Lfunc_end29:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end29-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZN4CArcC2ERKS_,"axG",@progbits,_ZN4CArcC2ERKS_,comdat
	.weak	_ZN4CArcC2ERKS_                 # -- Begin function _ZN4CArcC2ERKS_
	.p2align	5
	.type	_ZN4CArcC2ERKS_,@function
_ZN4CArcC2ERKS_:                        # @_ZN4CArcC2ERKS_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	st.d	$a1, $a0, 0
	beqz	$a1, .LBB30_2
# %bb.1:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 8
	move	$a0, $a1
	jirl	$ra, $a2, 0
.LBB30_2:                               # %_ZN9CMyComPtrI10IInArchiveEC2ERKS1_.exit
	vrepli.b	$vr1, 0
	vst	$vr1, $fp, 8
	ld.wu	$a0, $s0, 16
	addi.d	$s3, $a0, 1
	slli.d	$a1, $s3, 31
	addi.w	$s2, $a0, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	bgez	$a1, .LBB30_4
# %bb.3:
	move	$s1, $zero
	b	.LBB30_6
.LBB30_4:
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp458:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.5:                                # %.noexc
	move	$s1, $a0
	st.d	$a0, $fp, 8
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 20
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
.LBB30_6:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 8
	move	$a1, $zero
	addi.d	$s3, $fp, 8
	.p2align	4, , 16
.LBB30_7:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s1, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB30_7
# %bb.8:
	st.w	$s2, $fp, 16
	vst	$vr1, $fp, 24
	ld.wu	$a0, $s0, 32
	addi.d	$s5, $a0, 1
	slli.d	$a1, $s5, 31
	addi.w	$s4, $a0, 0
	bgez	$a1, .LBB30_10
# %bb.9:
	move	$s2, $zero
	b	.LBB30_12
.LBB30_10:
	addi.w	$a0, $s5, 0
	slti	$a1, $s4, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp461:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp462:                               # EH_LABEL
# %bb.11:                               # %.noexc15
	move	$s2, $a0
	st.d	$a0, $fp, 24
	st.w	$zero, $a0, 0
	st.w	$s5, $fp, 36
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
.LBB30_12:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i11
	ld.d	$a0, $s0, 24
	move	$a1, $zero
	.p2align	4, , 16
.LBB30_13:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB30_13
# %bb.14:
	st.w	$s4, $fp, 32
	vld	$vr0, $s0, 40
	vst	$vr0, $fp, 40
	ld.b	$a0, $s0, 56
	st.b	$a0, $fp, 56
	vst	$vr1, $fp, 64
	ld.wu	$a0, $s0, 72
	addi.d	$s5, $a0, 1
	slli.d	$a1, $s5, 31
	addi.w	$s4, $a0, 0
	bgez	$a1, .LBB30_16
# %bb.15:
	move	$a0, $zero
	b	.LBB30_18
.LBB30_16:
	addi.w	$a0, $s5, 0
	slti	$a1, $s4, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp464:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp465:                               # EH_LABEL
# %bb.17:                               # %.noexc21
	st.d	$a0, $fp, 64
	st.w	$zero, $a0, 0
	st.w	$s5, $fp, 76
.LBB30_18:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17
	ld.d	$a1, $s0, 64
	.p2align	4, , 16
.LBB30_19:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB30_19
# %bb.20:
	st.w	$s4, $fp, 72
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
.LBB30_21:
.Ltmp466:                               # EH_LABEL
	move	$s0, $a0
	bnez	$s2, .LBB30_24
# %bb.22:                               # %_ZN11CStringBaseIwED2Ev.exit
	bnez	$s1, .LBB30_26
.LBB30_23:                              # %_ZN11CStringBaseIwED2Ev.exit23
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB30_28
	b	.LBB30_29
.LBB30_24:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, 0
	beqz	$s1, .LBB30_23
	b	.LBB30_26
.LBB30_25:
.Ltmp463:                               # EH_LABEL
	move	$s0, $a0
	beqz	$s1, .LBB30_23
.LBB30_26:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB30_28
	b	.LBB30_29
.LBB30_27:
.Ltmp460:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB30_29
.LBB30_28:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp467:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp468:                               # EH_LABEL
.LBB30_29:                              # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB30_30:
.Ltmp469:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN4CArcC2ERKS_, .Lfunc_end30-_ZN4CArcC2ERKS_
	.cfi_endproc
	.section	.gcc_except_table._ZN4CArcC2ERKS_,"aG",@progbits,_ZN4CArcC2ERKS_,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp458-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp458
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.uleb128 .Ltmp460-.Lfunc_begin17        #     jumps to .Ltmp460
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.uleb128 .Ltmp463-.Lfunc_begin17        #     jumps to .Ltmp463
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp465-.Ltmp464              #   Call between .Ltmp464 and .Ltmp465
	.uleb128 .Ltmp466-.Lfunc_begin17        #     jumps to .Ltmp466
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Ltmp467-.Ltmp465              #   Call between .Ltmp465 and .Ltmp467
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin17        # >> Call Site 6 <<
	.uleb128 .Ltmp468-.Ltmp467              #   Call between .Ltmp467 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin17        #     jumps to .Ltmp469
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp468-.Lfunc_begin17        # >> Call Site 7 <<
	.uleb128 .Lfunc_end30-.Ltmp468          #   Call between .Ltmp468 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str:
	.word	101                             # 0x65
	.word	120                             # 0x78
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
	.p2align	2, 0x0
.L.str.1:
	.word	48                              # 0x30
	.word	48                              # 0x30
	.word	48                              # 0x30
	.word	0                               # 0x0
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
	.p2align	2, 0x0
.L.str.2:
	.word	48                              # 0x30
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	0                               # 0x0
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
	.p2align	2, 0x0
.L.str.3:
	.word	114                             # 0x72
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.3, 16

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str4.8,"aMS",@progbits,4
	.p2align	3, 0x0
.L.str.4:
	.word	105                             # 0x69
	.word	115                             # 0x73
	.word	111                             # 0x6f
	.word	0                               # 0x0
	.size	.L.str.4, 16

	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.word	117                             # 0x75
	.word	100                             # 0x64
	.word	102                             # 0x66
	.word	0                               # 0x0
	.size	.L.str.5, 16

	.type	_ZL22kMaxCheckStartPosition,@object # @_ZL22kMaxCheckStartPosition
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
_ZL22kMaxCheckStartPosition:
	.dword	4194304                         # 0x400000
	.size	_ZL22kMaxCheckStartPosition, 8

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.6:
	.word	85                              # 0x55
	.word	110                             # 0x6e
	.word	107                             # 0x6b
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	119                             # 0x77
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	114                             # 0x72
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.6, 56

	.type	_ZTVN8NWindows5NFile3NIO7CInFileE,@object # @_ZTVN8NWindows5NFile3NIO7CInFileE
	.section	.data.rel.ro._ZTVN8NWindows5NFile3NIO7CInFileE,"awG",@progbits,_ZTVN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTVN8NWindows5NFile3NIO7CInFileE
	.p2align	3, 0x0
_ZTVN8NWindows5NFile3NIO7CInFileE:
	.dword	0
	.dword	_ZTIN8NWindows5NFile3NIO7CInFileE
	.dword	_ZN8NWindows5NFile3NIO9CFileBaseD2Ev
	.dword	_ZN8NWindows5NFile3NIO7CInFileD0Ev
	.dword	_ZN8NWindows5NFile3NIO9CFileBase5CloseEv
	.size	_ZTVN8NWindows5NFile3NIO7CInFileE, 40

	.type	_ZTIN8NWindows5NFile3NIO7CInFileE,@object # @_ZTIN8NWindows5NFile3NIO7CInFileE
	.section	.data.rel.ro._ZTIN8NWindows5NFile3NIO7CInFileE,"awG",@progbits,_ZTIN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTIN8NWindows5NFile3NIO7CInFileE
	.p2align	3, 0x0
_ZTIN8NWindows5NFile3NIO7CInFileE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows5NFile3NIO7CInFileE
	.dword	_ZTIN8NWindows5NFile3NIO9CFileBaseE
	.size	_ZTIN8NWindows5NFile3NIO7CInFileE, 24

	.type	_ZTSN8NWindows5NFile3NIO7CInFileE,@object # @_ZTSN8NWindows5NFile3NIO7CInFileE
	.section	.rodata._ZTSN8NWindows5NFile3NIO7CInFileE,"aG",@progbits,_ZTSN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTSN8NWindows5NFile3NIO7CInFileE
_ZTSN8NWindows5NFile3NIO7CInFileE:
	.asciz	"N8NWindows5NFile3NIO7CInFileE"
	.size	_ZTSN8NWindows5NFile3NIO7CInFileE, 30

	.type	_ZTV13CObjectVectorI11CStringBaseIwEE,@object # @_ZTV13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTV13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTV13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTV13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI11CStringBaseIwEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI11CStringBaseIwEE
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.size	_ZTV13CObjectVectorI11CStringBaseIwEE, 40

	.type	_ZTI13CObjectVectorI11CStringBaseIwEE,@object # @_ZTI13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTI13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTI13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTI13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI11CStringBaseIwEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI11CStringBaseIwEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI11CStringBaseIwEE, 24

	.type	_ZTS13CObjectVectorI11CStringBaseIwEE,@object # @_ZTS13CObjectVectorI11CStringBaseIwEE
	.section	.rodata._ZTS13CObjectVectorI11CStringBaseIwEE,"aG",@progbits,_ZTS13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTS13CObjectVectorI11CStringBaseIwEE
_ZTS13CObjectVectorI11CStringBaseIwEE:
	.asciz	"13CObjectVectorI11CStringBaseIwEE"
	.size	_ZTS13CObjectVectorI11CStringBaseIwEE, 34

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

	.type	_ZTV13CRecordVectorIiE,@object  # @_ZTV13CRecordVectorIiE
	.section	.data.rel.ro._ZTV13CRecordVectorIiE,"awG",@progbits,_ZTV13CRecordVectorIiE,comdat
	.weak	_ZTV13CRecordVectorIiE
	.p2align	3, 0x0
_ZTV13CRecordVectorIiE:
	.dword	0
	.dword	_ZTI13CRecordVectorIiE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIiED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIiE, 40

	.type	_ZTI13CRecordVectorIiE,@object  # @_ZTI13CRecordVectorIiE
	.section	.data.rel.ro._ZTI13CRecordVectorIiE,"awG",@progbits,_ZTI13CRecordVectorIiE,comdat
	.weak	_ZTI13CRecordVectorIiE
	.p2align	3, 0x0
_ZTI13CRecordVectorIiE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIiE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIiE, 24

	.type	_ZTS13CRecordVectorIiE,@object  # @_ZTS13CRecordVectorIiE
	.section	.rodata._ZTS13CRecordVectorIiE,"aG",@progbits,_ZTS13CRecordVectorIiE,comdat
	.weak	_ZTS13CRecordVectorIiE
_ZTS13CRecordVectorIiE:
	.asciz	"13CRecordVectorIiE"
	.size	_ZTS13CRecordVectorIiE, 19

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
	.addrsig_sym _ZL22kMaxCheckStartPosition
	.addrsig_sym IID_IArchiveOpenSeq
	.addrsig_sym IID_IInArchiveGetStream
	.addrsig_sym IID_IInStream
	.addrsig_sym IID_IArchiveOpenSetSubArchiveName
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTSN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO9CFileBaseE
	.addrsig_sym _ZTI13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTS13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
