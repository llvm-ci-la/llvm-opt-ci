	.file	"ZipUpdate.cpp"
	.text
	.globl	_ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv # -- Begin function _ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv
	.p2align	5
	.type	_ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv,@function
_ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv: # @_ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv
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
	move	$fp, $a0
	addi.d	$s0, $a0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 144
	beqz	$a0, .LBB0_2
.LBB0_1:                                # %._crit_edge
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
.LBB0_2:                                # %.lr.ph
	addi.d	$s1, $fp, 192
	addi.d	$s2, $fp, 376
	addi.d	$s3, $fp, 384
	ori	$s5, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $fp, 128
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 128
	st.b	$s5, $fp, 137
	addi.d	$a0, $s4, 40
	pcaddu18i	$ra, %call36(pthread_cond_broadcast)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 144
	bnez	$a0, .LBB0_1
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 184
	ld.d	$a2, $fp, 176
	ld.d	$a3, $fp, 160
	move	$a0, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommon8CompressEP19ISequentialInStreamP10IOutStreamP21ICompressProgressInfoRNS0_18CCompressingResultE)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 368
	bnez	$a0, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
	move	$a1, $s2
	move	$a2, $s3
	jirl	$ra, $a3, 0
	st.w	$a0, $fp, 368
	b	.LBB0_3
.Lfunc_end0:
	.size	_ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv, .Lfunc_end0-_ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb,@function
_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb: # @_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	beqz	$a1, .LBB1_2
# %bb.1:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB1_2:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB1_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB1_4:                                # %_ZN9CMyComPtrI9IProgressEaSEPS0_.exit
	ld.d	$a0, $s1, 0
	st.d	$s1, $fp, 56
	ld.d	$a3, $a0, 0
	addi.d	$a2, $fp, 64
	pcalau12i	$a0, %got_pc_hi20(IID_ICompressProgressInfo)
	ld.d	$a1, $a0, %got_pc_lo12(IID_ICompressProgressInfo)
	move	$a0, $s1
	jirl	$ra, $a3, 0
	st.b	$s0, $fp, 72
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 24
	vst	$vr0, $fp, 40
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb, .Lfunc_end1-_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip17CMtProgressMixer217SetProgressOffsetEy # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer217SetProgressOffsetEy
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer217SetProgressOffsetEy,@function
_ZN8NArchive4NZip17CMtProgressMixer217SetProgressOffsetEy: # @_ZN8NArchive4NZip17CMtProgressMixer217SetProgressOffsetEy
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s1, $a0, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 48
	st.d	$zero, $s0, 32
	st.d	$fp, $s0, 16
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(pthread_mutex_unlock)
	jr	$t8
.Lfunc_end2:
	.size	_ZN8NArchive4NZip17CMtProgressMixer217SetProgressOffsetEy, .Lfunc_end2-_ZN8NArchive4NZip17CMtProgressMixer217SetProgressOffsetEy
                                        # -- End function
	.globl	_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_ # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_,@function
_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_: # @_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_
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
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	addi.d	$fp, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB3_8
.LBB3_1:
	alsl.d	$a0, $s3, $s0, 3
	beqz	$s2, .LBB3_3
# %bb.2:
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 24
.LBB3_3:
	beqz	$s1, .LBB3_5
# %bb.4:
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 40
.LBB3_5:
	ld.bu	$a1, $s0, 72
	ori	$a0, $zero, 40
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 24
	maskeqz	$a2, $a2, $a1
	or	$a2, $a2, $a0
	ori	$a0, $zero, 48
	masknez	$a3, $a0, $a1
	ori	$a4, $zero, 32
	ld.d	$a0, $s0, 56
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	ldx.d	$a2, $s0, $a2
	ld.d	$a3, $a0, 0
	ldx.d	$a1, $s0, $a1
	ld.d	$a4, $s0, 16
	ld.d	$a3, $a3, 48
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a4
	st.d	$a1, $sp, 16
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 16
	jirl	$ra, $a3, 0
.Ltmp4:                                 # EH_LABEL
# %bb.6:
	move	$s4, $a0
.LBB3_7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB3_8:
	ld.d	$a0, $s0, 64
	beqz	$a0, .LBB3_1
# %bb.9:
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp0:                                 # EH_LABEL
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a3, 0
.Ltmp1:                                 # EH_LABEL
# %bb.10:
	move	$s4, $a0
	bnez	$a0, .LBB3_7
	b	.LBB3_1
.LBB3_11:
.Ltmp2:                                 # EH_LABEL
	b	.LBB3_13
.LBB3_12:
.Ltmp5:                                 # EH_LABEL
.LBB3_13:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_, .Lfunc_end3-_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp0-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_ # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_,@function
_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_: # @_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	addi.d	$fp, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	beqz	$a0, .LBB4_3
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp6:                                 # EH_LABEL
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
# %bb.2:
	move	$s3, $a0
	bnez	$a0, .LBB4_9
.LBB4_3:
	beqz	$s2, .LBB4_5
# %bb.4:
	ld.d	$a0, $s2, 0
	st.d	$a0, $s0, 24
.LBB4_5:
	beqz	$s1, .LBB4_7
# %bb.6:
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 40
.LBB4_7:
	ld.bu	$a1, $s0, 72
	ori	$a0, $zero, 40
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 24
	maskeqz	$a2, $a2, $a1
	or	$a2, $a2, $a0
	ori	$a0, $zero, 48
	masknez	$a3, $a0, $a1
	ori	$a4, $zero, 32
	ld.d	$a0, $s0, 56
	maskeqz	$a1, $a4, $a1
	ld.d	$a4, $s0, 16
	or	$a1, $a1, $a3
	ld.d	$a3, $a0, 0
	ldx.d	$a2, $s0, $a2
	ldx.d	$a1, $s0, $a1
	ld.d	$a3, $a3, 48
	add.d	$a2, $a2, $a4
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 8
.Ltmp9:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	jirl	$ra, $a3, 0
.Ltmp10:                                # EH_LABEL
# %bb.8:
	move	$s3, $a0
.LBB4_9:                                # %_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB4_10:
.Ltmp11:                                # EH_LABEL
	b	.LBB4_12
.LBB4_11:
.Ltmp8:                                 # EH_LABEL
.LBB4_12:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_, .Lfunc_end4-_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end4-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb # -- Begin function _ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb
	.p2align	5
	.type	_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb,@function
_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb: # @_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NZip17CMtProgressMixer2E+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive4NZip17CMtProgressMixer2E+16)
	st.d	$a0, $s1, 0
	addi.d	$s3, $s1, 56
	addi.d	$a0, $s1, 80
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s1, 56
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(CriticalSection_Init)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.1:                                # %_ZN8NArchive4NZip17CMtProgressMixer2C2Ev.exit
	ld.d	$a0, $s1, 0
	st.d	$s1, $s2, 16
	ld.d	$a1, $a0, 8
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB5_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB5_3:                                # %_ZN9CMyComPtrI21ICompressProgressInfoEaSEPS0_.exit
	ld.d	$s3, $s2, 16
	st.d	$s1, $s2, 24
	beqz	$s0, .LBB5_5
# %bb.4:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB5_5:
	ld.d	$a0, $s3, 56
	beqz	$a0, .LBB5_7
# %bb.6:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB5_7:                                # %_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb.exit
	ld.d	$a0, $s0, 0
	st.d	$s0, $s3, 56
	ld.d	$a3, $a0, 0
	addi.d	$a2, $s3, 64
	pcalau12i	$a0, %got_pc_hi20(IID_ICompressProgressInfo)
	ld.d	$a1, $a0, %got_pc_lo12(IID_ICompressProgressInfo)
	move	$a0, $s0
	jirl	$ra, $a3, 0
	st.b	$fp, $s3, 72
	st.d	$zero, $s3, 16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s3, 24
	vst	$vr0, $s3, 40
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB5_8:
.Ltmp14:                                # EH_LABEL
	ld.d	$a1, $s1, 64
	move	$fp, $a0
	beqz	$a1, .LBB5_10
# %bb.9:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp15:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp16:                                # EH_LABEL
.LBB5_10:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB5_12
# %bb.11:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp18:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp19:                                # EH_LABEL
.LBB5_12:                               # %.body
	ori	$a1, $zero, 120
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_13:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_14:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb, .Lfunc_end5-_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin2          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Lfunc_end5-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
	.globl	_ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_ # -- Begin function _ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_
	.p2align	5
	.type	_ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_,@function
_ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_: # @_ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_
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
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ld.d	$s2, $a0, 16
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$fp, $s2, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB6_2
# %bb.1:
	ld.d	$a0, $s1, 0
	st.d	$a0, $s2, 32
.LBB6_2:
	beqz	$s0, .LBB6_4
# %bb.3:
	ld.d	$a0, $s0, 0
	st.d	$a0, $s2, 48
.LBB6_4:
	ld.bu	$a1, $s2, 72
	ori	$a0, $zero, 40
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 24
	maskeqz	$a2, $a2, $a1
	or	$a2, $a2, $a0
	ori	$a0, $zero, 48
	masknez	$a3, $a0, $a1
	ori	$a4, $zero, 32
	ld.d	$a0, $s2, 56
	maskeqz	$a1, $a4, $a1
	ld.d	$a4, $s2, 16
	or	$a1, $a1, $a3
	ld.d	$a3, $a0, 0
	ldx.d	$a2, $s2, $a2
	ldx.d	$a1, $s2, $a1
	ld.d	$a3, $a3, 48
	add.d	$a2, $a2, $a4
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 0
.Ltmp21:                                # EH_LABEL
	addi.d	$a1, $sp, 0
	jirl	$ra, $a3, 0
.Ltmp22:                                # EH_LABEL
# %bb.5:                                # %_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEiPKyS3_.exit
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_6:
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_, .Lfunc_end6-_ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin3          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip15CCacheOutStream8AllocateEv # -- Begin function _ZN8NArchive4NZip15CCacheOutStream8AllocateEv
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream8AllocateEv,@function
_ZN8NArchive4NZip15CCacheOutStream8AllocateEv: # @_ZN8NArchive4NZip15CCacheOutStream8AllocateEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 24
	ori	$a0, $zero, 1
	beqz	$a1, .LBB7_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_2:
	lu12i.w	$a0, 1024
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	sltu	$a0, $zero, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	_ZN8NArchive4NZip15CCacheOutStream8AllocateEv, .Lfunc_end7-_ZN8NArchive4NZip15CCacheOutStream8AllocateEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream # -- Begin function _ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream,@function
_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream: # @_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream
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
	move	$s1, $a1
	move	$fp, $a0
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 32
	beqz	$a1, .LBB8_2
# %bb.1:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB8_2:
	ld.d	$a0, $fp, 16
	addi.d	$s0, $fp, 32
	beqz	$a0, .LBB8_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB8_4:                                # %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit
	ld.d	$a0, $s1, 0
	st.d	$s1, $fp, 16
	ld.d	$a4, $a0, 48
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $zero
	move	$a3, $s0
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB8_8
# %bb.5:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	addi.d	$a3, $fp, 40
	ori	$a2, $zero, 2
	move	$a1, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB8_8
# %bb.6:
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 32
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $s0
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB8_8
# %bb.7:
	vld	$vr0, $fp, 32
	move	$a0, $zero
	vst	$vr0, $fp, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 64
.LBB8_8:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream, .Lfunc_end8-_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm # -- Begin function _ZN8NArchive4NZip15CCacheOutStream7MyWriteEm
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm,@function
_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm: # @_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB9_10
# %bb.1:                                # %.lr.ph
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
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a0, 72
	addi.d	$s1, $s0, 48
	lu12i.w	$s3, 1024
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $s0, 64
	ld.d	$a1, $s0, 72
	add.d	$a0, $a0, $s2
	st.d	$a0, $s0, 64
	sub.d	$a0, $a1, $s2
	sub.d	$fp, $fp, $s2
	st.d	$a0, $s0, 72
	beqz	$fp, .LBB9_11
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB9_11
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a2, $s0, 48
	ld.d	$a1, $s0, 64
	beq	$a2, $a1, .LBB9_7
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $s1
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB9_12
# %bb.6:                                # %._crit_edge
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a2, $s0, 64
	ld.d	$a0, $s0, 72
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	bstrpick.d	$a1, $a2, 21, 0
	sub.d	$a2, $s3, $a1
	sltu	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	sltu	$a2, $a0, $fp
	maskeqz	$a3, $a0, $a2
	ld.d	$a4, $s0, 24
	ld.d	$a0, $s0, 16
	masknez	$a2, $fp, $a2
	or	$s2, $a3, $a2
	add.d	$a1, $a4, $a1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_12
# %bb.8:                                #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $s0, 56
	add.d	$a0, $a0, $s2
	st.d	$a0, $s0, 48
	bgeu	$a1, $a0, .LBB9_2
# %bb.9:                                #   in Loop: Header=BB9_3 Depth=1
	st.d	$a0, $s0, 56
	b	.LBB9_2
.LBB9_10:
	move	$a0, $zero
	ret
.LBB9_11:
	move	$a0, $zero
.LBB9_12:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm, .Lfunc_end9-_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv # -- Begin function _ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv,@function
_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv: # @_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv
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
	move	$fp, $a0
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB10_10
# %bb.1:                                # %.lr.ph.i
	addi.d	$s0, $fp, 48
	lu12i.w	$s2, 1024
	move	$s3, $a0
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $fp, 72
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 64
	sub.d	$a0, $a1, $s1
	sub.d	$s3, $s3, $s1
	st.d	$a0, $fp, 72
	beqz	$s3, .LBB10_10
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB10_10
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a2, $fp, 48
	ld.d	$a1, $fp, 64
	beq	$a2, $a1, .LBB10_7
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $s0
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB10_11
# %bb.6:                                # %._crit_edge.i
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a2, $fp, 64
	ld.d	$a0, $fp, 72
.LBB10_7:                               #   in Loop: Header=BB10_3 Depth=1
	bstrpick.d	$a1, $a2, 21, 0
	sub.d	$a2, $s2, $a1
	sltu	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	sltu	$a2, $a0, $s3
	maskeqz	$a3, $a0, $a2
	ld.d	$a4, $fp, 24
	ld.d	$a0, $fp, 16
	masknez	$a2, $s3, $a2
	or	$s1, $a3, $a2
	add.d	$a1, $a4, $a1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_11
# %bb.8:                                #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 48
	bgeu	$a1, $a0, .LBB10_2
# %bb.9:                                #   in Loop: Header=BB10_3 Depth=1
	st.d	$a0, $fp, 56
	b	.LBB10_2
.LBB10_10:
	move	$a0, $zero
.LBB10_11:                              # %_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv, .Lfunc_end10-_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip15CCacheOutStreamD2Ev # -- Begin function _ZN8NArchive4NZip15CCacheOutStreamD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStreamD2Ev,@function
_ZN8NArchive4NZip15CCacheOutStreamD2Ev: # @_ZN8NArchive4NZip15CCacheOutStreamD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NZip15CCacheOutStreamE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive4NZip15CCacheOutStreamE+16)
	ld.d	$a0, $fp, 72
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB11_12
# %bb.1:                                # %.lr.ph.i.i
	addi.d	$s0, $fp, 48
	lu12i.w	$s2, 1024
	move	$s3, $a0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $fp, 72
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 64
	sub.d	$a0, $a1, $s1
	sub.d	$s3, $s3, $s1
	st.d	$a0, $fp, 72
	beqz	$s3, .LBB11_12
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB11_12
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a2, $fp, 48
	ld.d	$a1, $fp, 64
	beq	$a2, $a1, .LBB11_8
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
.Ltmp24:                                # EH_LABEL
	move	$a2, $zero
	move	$a3, $s0
	jirl	$ra, $a4, 0
.Ltmp25:                                # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB11_3 Depth=1
	bnez	$a0, .LBB11_12
# %bb.7:                                # %._crit_edge.i.i
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a2, $fp, 64
	ld.d	$a0, $fp, 72
.LBB11_8:                               #   in Loop: Header=BB11_3 Depth=1
	bstrpick.d	$a1, $a2, 21, 0
	sub.d	$a2, $s2, $a1
	sltu	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	sltu	$a2, $a0, $s3
	maskeqz	$a3, $a0, $a2
	ld.d	$a4, $fp, 24
	ld.d	$a0, $fp, 16
	masknez	$a2, $s3, $a2
	or	$s1, $a3, $a2
	add.d	$a1, $a4, $a1
.Ltmp26:                                # EH_LABEL
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.9:                                # %.noexc2
                                        #   in Loop: Header=BB11_3 Depth=1
	bnez	$a0, .LBB11_12
# %bb.10:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 48
	bgeu	$a1, $a0, .LBB11_2
# %bb.11:                               #   in Loop: Header=BB11_3 Depth=1
	st.d	$a0, $fp, 56
	b	.LBB11_2
.LBB11_12:                              # %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 56
	beq	$a1, $a0, .LBB11_14
# %bb.13:
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 56
.Ltmp29:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp30:                                # EH_LABEL
.LBB11_14:
	ld.d	$a1, $fp, 32
	ld.d	$a0, $fp, 48
	beq	$a1, $a0, .LBB11_16
# %bb.15:
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
.Ltmp31:                                # EH_LABEL
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp32:                                # EH_LABEL
.LBB11_16:
	ld.d	$a0, $fp, 24
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.17:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB11_19
# %bb.18:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp36:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp37:                                # EH_LABEL
.LBB11_19:                              # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_20:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_21:                              # %.loopexit.split-lp
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_22:                              # %.loopexit
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN8NArchive4NZip15CCacheOutStreamD2Ev, .Lfunc_end11-_ZN8NArchive4NZip15CCacheOutStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp24-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp27-.Ltmp24                #   Call between .Ltmp24 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin4          #     jumps to .Ltmp28
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp29                #   Call between .Ltmp29 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin4          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin4          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end11-.Ltmp37           #   Call between .Ltmp37 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
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
.Lfunc_end12:
	.size	__clang_call_terminate, .Lfunc_end12-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip15CCacheOutStreamD0Ev # -- Begin function _ZN8NArchive4NZip15CCacheOutStreamD0Ev
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStreamD0Ev,@function
_ZN8NArchive4NZip15CCacheOutStreamD0Ev: # @_ZN8NArchive4NZip15CCacheOutStreamD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip15CCacheOutStreamD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end13:
	.size	_ZN8NArchive4NZip15CCacheOutStreamD0Ev, .Lfunc_end13-_ZN8NArchive4NZip15CCacheOutStreamD0Ev
                                        # -- End function
	.globl	_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj # -- Begin function _ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj,@function
_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj: # @_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj
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
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
	move	$s0, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$fp, $a0
	beqz	$a3, .LBB14_2
# %bb.1:
	st.w	$zero, $s0, 0
.LBB14_2:
	beqz	$s2, .LBB14_14
# %bb.3:
	ld.d	$s5, $fp, 32
	ld.d	$a0, $fp, 72
	move	$a2, $s5
	beqz	$a0, .LBB14_30
# %bb.4:
	ld.d	$a1, $fp, 64
	bgeu	$s5, $a1, .LBB14_15
# %bb.5:                                # %.lr.ph.i.i
	addi.d	$s3, $fp, 48
	lu12i.w	$s6, 1024
	move	$s7, $a0
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_6:                               #   in Loop: Header=BB14_7 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a2, $fp, 72
	add.d	$a1, $a0, $s4
	st.d	$a1, $fp, 64
	sub.d	$a0, $a2, $s4
	sub.d	$s7, $s7, $s4
	st.d	$a0, $fp, 72
	beqz	$s7, .LBB14_29
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB14_28
# %bb.8:                                #   in Loop: Header=BB14_7 Depth=1
	ld.d	$a2, $s3, 0
	beq	$a2, $a1, .LBB14_11
# %bb.9:                                #   in Loop: Header=BB14_7 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $s3
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB14_69
# %bb.10:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB14_7 Depth=1
	ld.d	$a1, $fp, 64
	ld.d	$a0, $fp, 72
.LBB14_11:                              #   in Loop: Header=BB14_7 Depth=1
	bstrpick.d	$a1, $a1, 21, 0
	sub.d	$a2, $s6, $a1
	sltu	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	sltu	$a2, $a0, $s7
	maskeqz	$a3, $a0, $a2
	ld.d	$a4, $fp, 24
	ld.d	$a0, $fp, 16
	masknez	$a2, $s7, $a2
	or	$s4, $a3, $a2
	add.d	$a1, $a4, $a1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_69
# %bb.12:                               #   in Loop: Header=BB14_7 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	add.d	$a0, $a0, $s4
	st.d	$a0, $fp, 48
	bgeu	$a1, $a0, .LBB14_6
# %bb.13:                               #   in Loop: Header=BB14_7 Depth=1
	st.d	$a0, $fp, 56
	b	.LBB14_6
.LBB14_14:
	move	$a0, $zero
	b	.LBB14_69
.LBB14_15:
	add.d	$a3, $a1, $a0
	bgeu	$a3, $s5, .LBB14_26
# %bb.16:
	ld.d	$a2, $fp, 56
	bgeu	$a3, $a2, .LBB14_27
# %bb.17:                               # %.lr.ph.i.i92
	addi.d	$s3, $fp, 48
	lu12i.w	$s6, 1024
	move	$s7, $a0
	b	.LBB14_19
	.p2align	4, , 16
.LBB14_18:                              #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a2, $fp, 72
	add.d	$a1, $a0, $s4
	st.d	$a1, $fp, 64
	sub.d	$a0, $a2, $s4
	sub.d	$s7, $s7, $s4
	st.d	$a0, $fp, 72
	beqz	$s7, .LBB14_29
.LBB14_19:                              # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB14_28
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a2, $s3, 0
	beq	$a2, $a1, .LBB14_23
# %bb.21:                               #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $s3
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB14_69
# %bb.22:                               # %._crit_edge.i.i98
                                        #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a1, $fp, 64
	ld.d	$a0, $fp, 72
.LBB14_23:                              #   in Loop: Header=BB14_19 Depth=1
	bstrpick.d	$a1, $a1, 21, 0
	sub.d	$a2, $s6, $a1
	sltu	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	sltu	$a2, $a0, $s7
	maskeqz	$a3, $a0, $a2
	ld.d	$a4, $fp, 24
	ld.d	$a0, $fp, 16
	masknez	$a2, $s7, $a2
	or	$s4, $a3, $a2
	add.d	$a1, $a4, $a1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_69
# %bb.24:                               #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	add.d	$a0, $a0, $s4
	st.d	$a0, $fp, 48
	bgeu	$a1, $a0, .LBB14_18
# %bb.25:                               #   in Loop: Header=BB14_19 Depth=1
	st.d	$a0, $fp, 56
	b	.LBB14_18
.LBB14_26:
	move	$a3, $s5
.LBB14_27:                              # %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit.thread.thread228
	ld.d	$a2, $fp, 32
	move	$s5, $a3
	bne	$s5, $a2, .LBB14_34
	b	.LBB14_35
.LBB14_28:                              # %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit.thread.thread
	ld.d	$a2, $fp, 32
	b	.LBB14_30
.LBB14_29:                              # %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit.thread
	ld.d	$a2, $fp, 32
	bnez	$a0, .LBB14_32
.LBB14_30:                              # %.thread135
	ld.d	$a1, $fp, 56
	bgeu	$a1, $a2, .LBB14_33
# %bb.31:
	move	$a0, $zero
	st.d	$a1, $fp, 64
	move	$s5, $a1
.LBB14_32:
	bne	$s5, $a2, .LBB14_34
	b	.LBB14_35
.LBB14_33:
	move	$a0, $zero
	beq	$s5, $a2, .LBB14_35
.LBB14_34:                              # %.preheader155
	ld.d	$a1, $fp, 64
	add.d	$a3, $a0, $a1
	bne	$a2, $a3, .LBB14_50
.LBB14_35:                              # %.thread147
	beqz	$a0, .LBB14_37
# %bb.36:                               # %.thread147._crit_edge
	ld.d	$a1, $fp, 64
	b	.LBB14_38
.LBB14_37:
	st.d	$a2, $fp, 64
	move	$a1, $a2
.LBB14_38:
	bstrpick.d	$s4, $a2, 21, 0
	bstrpick.d	$a3, $s2, 31, 0
	lu12i.w	$s6, 1024
	sub.d	$a4, $s6, $s4
	sltu	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	add.d	$a3, $a1, $a0
	or	$s5, $a5, $a4
	bne	$a3, $a2, .LBB14_49
# %bb.39:
	bne	$a0, $s6, .LBB14_64
# %bb.40:
	bstrpick.d	$a0, $a1, 19, 0
	lu12i.w	$a2, 256
	sub.d	$s7, $a2, $a0
	addi.d	$s2, $fp, 48
	move	$a0, $s6
	b	.LBB14_42
	.p2align	4, , 16
.LBB14_41:                              #   in Loop: Header=BB14_42 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a2, $fp, 72
	add.d	$a1, $a0, $s3
	st.d	$a1, $fp, 64
	sub.d	$a0, $a2, $s3
	sub.d	$s7, $s7, $s3
	st.d	$a0, $fp, 72
	beqz	$s7, .LBB14_64
.LBB14_42:                              # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB14_63
# %bb.43:                               #   in Loop: Header=BB14_42 Depth=1
	ld.d	$a2, $s2, 0
	beq	$a2, $a1, .LBB14_46
# %bb.44:                               #   in Loop: Header=BB14_42 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $s2
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB14_69
# %bb.45:                               # %._crit_edge.i.i120
                                        #   in Loop: Header=BB14_42 Depth=1
	ld.d	$a1, $fp, 64
	ld.d	$a0, $fp, 72
.LBB14_46:                              #   in Loop: Header=BB14_42 Depth=1
	bstrpick.d	$a1, $a1, 21, 0
	sub.d	$a2, $s6, $a1
	sltu	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	sltu	$a2, $a0, $s7
	maskeqz	$a3, $a0, $a2
	ld.d	$a4, $fp, 24
	ld.d	$a0, $fp, 16
	masknez	$a2, $s7, $a2
	or	$s3, $a3, $a2
	add.d	$a1, $a4, $a1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_69
# %bb.47:                               #   in Loop: Header=BB14_42 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	add.d	$a0, $a0, $s3
	st.d	$a0, $fp, 48
	bgeu	$a1, $a0, .LBB14_41
# %bb.48:                               #   in Loop: Header=BB14_42 Depth=1
	st.d	$a0, $fp, 56
	b	.LBB14_41
.LBB14_49:
	sub.d	$a0, $a3, $a2
	sltu	$a1, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s2, $a1, $a0
	b	.LBB14_65
.LBB14_50:                              # %.preheader.lr.ph
	bstrpick.d	$s8, $a3, 21, 0
	lu12i.w	$s6, 1024
	sub.d	$a4, $s6, $s8
	sub.d	$a2, $a2, $a3
	sltu	$a3, $a4, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$s4, $a3, $a2
	addi.d	$s3, $fp, 48
.LBB14_51:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_54 Depth 2
	sub.d	$a2, $s6, $a0
	bgeu	$a2, $s4, .LBB14_61
# %bb.52:                               # %.lr.ph
                                        #   in Loop: Header=BB14_51 Depth=1
	bstrpick.d	$a2, $a1, 19, 0
	lu12i.w	$a3, 256
	sub.d	$s7, $a3, $a2
	b	.LBB14_54
	.p2align	4, , 16
.LBB14_53:                              #   in Loop: Header=BB14_54 Depth=2
	ld.d	$a0, $fp, 64
	ld.d	$a2, $fp, 72
	add.d	$a1, $a0, $s5
	st.d	$a1, $fp, 64
	sub.d	$a0, $a2, $s5
	sub.d	$s7, $s7, $s5
	st.d	$a0, $fp, 72
	beqz	$s7, .LBB14_51
.LBB14_54:                              #   Parent Loop BB14_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB14_62
# %bb.55:                               #   in Loop: Header=BB14_54 Depth=2
	ld.d	$a2, $s3, 0
	beq	$a2, $a1, .LBB14_58
# %bb.56:                               #   in Loop: Header=BB14_54 Depth=2
	ld.d	$a0, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $s3
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB14_69
# %bb.57:                               # %._crit_edge.i.i109
                                        #   in Loop: Header=BB14_54 Depth=2
	ld.d	$a1, $fp, 64
	ld.d	$a0, $fp, 72
.LBB14_58:                              #   in Loop: Header=BB14_54 Depth=2
	bstrpick.d	$a1, $a1, 21, 0
	sub.d	$a2, $s6, $a1
	sltu	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a2, $a0
	sltu	$a2, $a0, $s7
	maskeqz	$a3, $a0, $a2
	ld.d	$a4, $fp, 24
	ld.d	$a0, $fp, 16
	masknez	$a2, $s7, $a2
	or	$s5, $a3, $a2
	add.d	$a1, $a4, $a1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_Z11WriteStreamP20ISequentialOutStreamPKvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_69
# %bb.59:                               #   in Loop: Header=BB14_54 Depth=2
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	add.d	$a0, $a0, $s5
	st.d	$a0, $fp, 48
	bgeu	$a1, $a0, .LBB14_53
# %bb.60:                               #   in Loop: Header=BB14_54 Depth=2
	st.d	$a0, $fp, 56
	b	.LBB14_53
.LBB14_61:                              # %._crit_edge
                                        #   in Loop: Header=BB14_51 Depth=1
	ld.d	$a0, $fp, 24
	add.d	$a0, $a0, $s8
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a1, $fp, 64
	add.d	$a0, $a0, $s4
	st.d	$a0, $fp, 72
	ld.d	$a3, $fp, 32
	add.d	$a2, $a0, $a1
	bstrpick.d	$s8, $a2, 21, 0
	sub.d	$a4, $s6, $s8
	sub.d	$a5, $a3, $a2
	sltu	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$s4, $a4, $a5
	bne	$a3, $a2, .LBB14_51
	b	.LBB14_35
.LBB14_62:                              #   in Loop: Header=BB14_51 Depth=1
	move	$a0, $zero
	b	.LBB14_51
.LBB14_63:
	move	$a0, $zero
.LBB14_64:                              # %_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit125.thread
	bstrpick.d	$a1, $a1, 21, 0
	sltu	$a2, $s4, $a1
	sub.d	$a1, $a1, $s4
	sltu	$a3, $s5, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s5, $a2
	or	$s2, $a1, $a2
	add.d	$a0, $s2, $a0
	st.d	$a0, $fp, 72
.LBB14_65:
	ld.d	$a0, $fp, 24
	add.d	$a0, $a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB14_67
# %bb.66:
	st.w	$s2, $s0, 0
.LBB14_67:
	ld.d	$a0, $fp, 32
	ld.d	$a2, $fp, 40
	add.d	$a1, $a0, $s2
	st.d	$a1, $fp, 32
	move	$a0, $zero
	bgeu	$a2, $a1, .LBB14_69
# %bb.68:
	st.d	$a1, $fp, 40
.LBB14_69:                              # %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end14:
	.size	_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj, .Lfunc_end14-_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy # -- Begin function _ZN8NArchive4NZip15CCacheOutStream4SeekExjPy
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy,@function
_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy: # @_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy
# %bb.0:
	ori	$a4, $zero, 2
	beq	$a2, $a4, .LBB15_5
# %bb.1:
	ori	$a4, $zero, 1
	beq	$a2, $a4, .LBB15_4
# %bb.2:
	beqz	$a2, .LBB15_7
# %bb.3:
	lu12i.w	$a0, -524240
	ori	$a0, $a0, 1
	ret
.LBB15_4:
	ld.d	$a2, $a0, 32
	b	.LBB15_6
.LBB15_5:
	ld.d	$a2, $a0, 40
.LBB15_6:
	add.d	$a1, $a2, $a1
.LBB15_7:
	st.d	$a1, $a0, 32
	move	$a0, $zero
	beqz	$a3, .LBB15_9
# %bb.8:
	st.d	$a1, $a3, 0
.LBB15_9:
	ret
.Lfunc_end15:
	.size	_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy, .Lfunc_end15-_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy
                                        # -- End function
	.globl	_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy # -- Begin function _ZN8NArchive4NZip15CCacheOutStream7SetSizeEy
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy,@function
_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy: # @_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy
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
	ld.d	$a2, $a0, 56
	st.d	$a1, $a0, 40
	bgeu	$a1, $a2, .LBB16_3
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 56
	move	$s0, $a1
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB16_8
# %bb.2:
	move	$a0, $fp
	move	$a1, $s0
	st.d	$s0, $fp, 56
.LBB16_3:
	ld.d	$a2, $a0, 64
	bgeu	$a2, $a1, .LBB16_5
# %bb.4:                                # %._crit_edge
	ld.d	$a3, $a0, 72
	add.d	$a3, $a3, $a2
	bltu	$a1, $a3, .LBB16_6
	b	.LBB16_7
.LBB16_5:
	move	$a3, $zero
	st.d	$zero, $a0, 72
	st.d	$a1, $a0, 64
	move	$a2, $a1
	add.d	$a3, $a3, $a2
	bgeu	$a1, $a3, .LBB16_7
.LBB16_6:
	sub.d	$a1, $a1, $a2
	st.d	$a1, $a0, 72
.LBB16_7:
	move	$a0, $zero
.LBB16_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy, .Lfunc_end16-_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback
.LCPI17_0:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
	.text
	.globl	_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback
	.p2align	5
	.type	_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback,@function
_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback: # @_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -1728
	.cfi_def_cfa_offset 1728
	st.d	$ra, $sp, 1720                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1712                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1704                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1688                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1680                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1672                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1664                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1656                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1648                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1640                  # 8-byte Folded Spill
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
	move	$a6, $a2
	ld.d	$a2, $a2, 0
	st.d	$zero, $sp, 312
	ld.d	$a7, $a2, 0
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	move	$s1, $a4
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	move	$s2, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
.Ltmp39:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(IID_IOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(IID_IOutStream)
	addi.d	$a2, $sp, 312
	move	$a0, $a6
	jirl	$ra, $a7, 0
.Ltmp40:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB17_17
# %bb.2:
.Ltmp42:                                # EH_LABEL
	ori	$a0, $zero, 80
	move	$fp, $zero
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp43:                                # EH_LABEL
# %bb.3:                                # %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NZip15CCacheOutStreamE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive4NZip15CCacheOutStreamE+16)
	st.d	$a0, $a1, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vst	$vr0, $a1, 16
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 8
.Ltmp44:                                # EH_LABEL
	lu12i.w	$a0, 1024
	move	$fp, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
.Ltmp45:                                # EH_LABEL
# %bb.4:                                # %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit
	st.d	$a0, $a2, 24
	beqz	$a0, .LBB17_18
# %bb.5:                                # %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread
	ld.d	$s6, $sp, 312
	st.d	$zero, $a2, 48
	st.d	$zero, $a2, 32
	beqz	$s6, .LBB17_7
# %bb.6:
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 8
.Ltmp47:                                # EH_LABEL
	move	$a0, $s6
	jirl	$ra, $a1, 0
.Ltmp48:                                # EH_LABEL
.LBB17_7:                               # %.noexc48
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 16
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB17_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp49:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp50:                                # EH_LABEL
.LBB17_9:                               # %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i
	st.d	$s6, $fp, 0
	ld.d	$a0, $s6, 0
	ld.d	$a4, $a0, 48
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 32
.Ltmp51:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s6
	move	$a1, $zero
	move	$a3, $s0
	jirl	$ra, $a4, 0
.Ltmp52:                                # EH_LABEL
# %bb.10:                               # %.noexc50
	move	$s6, $a0
	bnez	$a0, .LBB17_16
# %bb.11:
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	addi.d	$a3, $a2, 40
.Ltmp53:                                # EH_LABEL
	ori	$a2, $zero, 2
	move	$a1, $zero
	jirl	$ra, $a4, 0
.Ltmp54:                                # EH_LABEL
# %bb.12:                               # %.noexc51
	move	$s6, $a0
	bnez	$a0, .LBB17_16
# %bb.13:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s0, 0
	ld.d	$a4, $a2, 48
.Ltmp55:                                # EH_LABEL
	move	$a2, $zero
	move	$a3, $s0
	jirl	$ra, $a4, 0
.Ltmp56:                                # EH_LABEL
# %bb.14:                               # %.noexc52
	move	$s6, $a0
	bnez	$a0, .LBB17_16
# %bb.15:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a0, 32
	move	$s6, $zero
	vst	$vr0, $a0, 48
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $a0, 64
.LBB17_16:                              # %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit
	sltui	$fp, $s6, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312
	bnez	$a0, .LBB17_19
	b	.LBB17_20
.LBB17_17:
	lu12i.w	$a0, -524284
	ori	$s6, $a0, 1
	b	.LBB17_298
.LBB17_18:
	move	$fp, $zero
	lu12i.w	$a0, -524176
	ori	$s6, $a0, 14
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB17_20
.LBB17_19:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp61:                                # EH_LABEL
	jirl	$ra, $a1, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
.Ltmp62:                                # EH_LABEL
.LBB17_20:                              # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	beqz	$fp, .LBB17_297
# %bb.21:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_25
# %bb.22:
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a3, 88
	lu12i.w	$a1, -524284
	ori	$s6, $a1, 1
	bnez	$a0, .LBB17_297
# %bb.23:
	ld.d	$a0, $a3, 96
	bnez	$a0, .LBB17_297
# %bb.24:
	ld.bu	$a0, $a3, 137
	beqz	$a0, .LBB17_297
.LBB17_25:
	st.d	$zero, $sp, 248
	st.d	$zero, $sp, 264
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 216
	st.w	$zero, $sp, 232
.Ltmp64:                                # EH_LABEL
	addi.d	$a0, $sp, 216
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive6CreateEP10IOutStream)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.26:
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_29
# %bb.27:
.Ltmp67:                                # EH_LABEL
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive12CreateStreamEv)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.28:
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB17_30
.LBB17_29:
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
.LBB17_30:                              # %_ZN9CMyComPtrI9IInStreamE6AttachEPS0_.exit
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a0, $s2, 12
	pcalau12i	$a1, %pc_hi20(_ZTV7CBufferIhE)
	addi.d	$s0, $a1, %pc_lo12(_ZTV7CBufferIhE)
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE)
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a0, .LBB17_44
# %bb.31:                               # %.lr.ph.i
	move	$s5, $zero
	move	$s8, $zero
	move	$s4, $zero
	move	$s6, $zero
	move	$fp, $zero
	addi.d	$s3, $sp, 432
	addi.d	$a2, $s0, 16
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	addi.d	$s1, $a1, 16
	b	.LBB17_33
	.p2align	4, , 16
.LBB17_32:                              #   in Loop: Header=BB17_33 Depth=1
	ld.d	$a2, $a1, 24
	add.d	$a1, $a2, $fp
	add.d	$s6, $a2, $s6
	addi.d	$s4, $s4, 1
	addi.d	$fp, $a1, 68
	addi.d	$s8, $s8, 1
	addi.d	$s5, $s5, 8
	bge	$s8, $a0, .LBB17_45
.LBB17_33:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ldx.d	$a1, $a1, $s5
	ld.bu	$a2, $a1, 0
	bnez	$a2, .LBB17_32
# %bb.34:                               #   in Loop: Header=BB17_33 Depth=1
	ld.w	$a0, $a1, 8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $a1, $a0
.Ltmp69:                                # EH_LABEL
	addi.d	$a0, $sp, 312
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.35:                               # %.noexc62
                                        #   in Loop: Header=BB17_33 Depth=1
	ld.h	$a0, $s7, 184
	addi.d	$a1, $sp, 492
	st.h	$a0, $a1, 4
	ld.w	$a0, $s7, 180
	st.w	$a0, $a1, 0
.Ltmp72:                                # EH_LABEL
	addi.d	$a1, $sp, 312
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.36:                               #   in Loop: Header=BB17_33 Depth=1
	bnez	$a0, .LBB17_58
# %bb.37:                               #   in Loop: Header=BB17_33 Depth=1
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	ld.w	$s6, $sp, 492
	ld.hu	$s0, $sp, 496
	ld.d	$a0, $sp, 328
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480
	ld.hu	$s4, $sp, 314
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 464
	beqz	$a0, .LBB17_39
# %bb.38:                               #   in Loop: Header=BB17_33 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_39:                              # %_ZN7CBufferIhED2Ev.exit.i.i
                                        #   in Loop: Header=BB17_33 Depth=1
	st.d	$s1, $sp, 432
.Ltmp81:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.40:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
                                        #   in Loop: Header=BB17_33 Depth=1
	move	$s2, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$s7, $s1
	st.d	$s1, $sp, 360
.Ltmp84:                                # EH_LABEL
	addi.d	$s3, $sp, 360
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.41:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.i
                                        #   in Loop: Header=BB17_33 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB17_43
# %bb.42:                               #   in Loop: Header=BB17_33 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_43:                              # %_ZN8NArchive4NZip5CItemD2Ev.exit.i
                                        #   in Loop: Header=BB17_33 Depth=1
	add.d	$a0, $s6, $s0
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a0, $s4, 1
	andi	$a2, $a0, 16
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$a3, $a3, $fp
	add.d	$a1, $a3, $a1
	add.d	$a1, $a1, $a2
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	move	$s3, $s2
	move	$s1, $s7
	addi.d	$fp, $a1, 68
	addi.d	$s8, $s8, 1
	addi.d	$s5, $s5, 8
	blt	$s8, $a0, .LBB17_33
	b	.LBB17_45
.LBB17_44:
	move	$fp, $zero
	move	$s6, $zero
	move	$s4, $zero
.LBB17_45:                              # %._crit_edge.i
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_47
# %bb.46:
	ld.d	$a0, $a0, 120
	add.d	$fp, $a0, $fp
.LBB17_47:
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 40
	addi.d	$a1, $fp, 1
.Ltmp87:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp88:                                # EH_LABEL
# %bb.48:                               # %.noexc63
.Ltmp89:                                # EH_LABEL
	addi.d	$a0, $sp, 1280
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonC1ERKNS0_22CCompressionMethodModeE)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.49:                               # %.noexc64
	st.d	$zero, $sp, 1456
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$fp, $a0, 80
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 1176
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1192
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIhE+16)
	st.d	$a0, $sp, 1168
	vst	$vr0, $sp, 1200
.Ltmp92:                                # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.50:
	move	$s0, $a0
	st.d	$a0, $sp, 1200
	st.w	$zero, $a0, 0
	ori	$s3, $zero, 4
	st.w	$s3, $sp, 1212
	st.b	$zero, $sp, 1228
	st.b	$zero, $sp, 1252
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 1256
.Ltmp95:                                # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.51:
	st.d	$a0, $sp, 1256
	st.b	$zero, $a0, 0
	st.w	$s3, $sp, 1268
	ori	$a0, $zero, 768
	st.h	$a0, $sp, 1272
.Ltmp98:                                # EH_LABEL
	addi.d	$a0, $sp, 1168
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.52:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	sltui	$a1, $a0, 1
	addi.d	$a2, $a0, 112
	ori	$a0, $zero, 2
	masknez	$s0, $a2, $a1
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	bltu	$s4, $a0, .LBB17_220
# %bb.53:
	bltu	$fp, $a0, .LBB17_220
# %bb.54:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	sltui	$a1, $fp, 1024
	ori	$a2, $zero, 1024
	ld.bu	$a0, $a0, 0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $fp, $a1
	ori	$a3, $zero, 14
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	beq	$a0, $a3, .LBB17_219
# %bb.55:
	ori	$a1, $zero, 12
	beq	$a0, $a1, .LBB17_65
# %bb.56:
	bnez	$a0, .LBB17_66
# %bb.57:                               # %.thread.i
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 84
	bnez	$a0, .LBB17_66
	b	.LBB17_220
.LBB17_58:                              # %.critedge.i
	ld.d	$a0, $sp, 480
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 464
	beqz	$a0, .LBB17_60
# %bb.59:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_60:                              # %_ZN7CBufferIhED2Ev.exit.i469.i
	st.d	$s1, $sp, 432
.Ltmp75:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
	addi.d	$fp, $sp, 360
# %bb.61:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i470.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 360
.Ltmp78:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.62:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i471.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB17_64
# %bb.63:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_64:                              # %_ZN8NArchive4NZip5CItemD2Ev.exit472.i
	lu12i.w	$a0, -524284
	ori	$s6, $a0, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB17_290
	b	.LBB17_291
.LBB17_65:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	div.du	$a1, $s6, $s4
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a0
	masknez	$a4, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a4
	bstrpick.d	$a0, $a0, 31, 0
	div.du	$a0, $a1, $a0
	sltui	$a1, $a0, 32
	addi.w	$a0, $a0, 0
	sltu	$a3, $a2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	maskeqz	$a0, $a0, $a1
	ori	$a3, $zero, 32
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	div.wu	$a1, $a1, $a0
	st.w	$a0, $sp, 1248
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	bgeu	$a2, $a1, .LBB17_220
.LBB17_66:                              # %.thread563.i
	st.b	$zero, $sp, 1160
	addi.d	$a0, $sp, 1072
	move	$a1, $zero
	pcaddu18i	$ra, %call36(pthread_mutex_init)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(pthread_cond_init)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1064
	addi.d	$a0, $sp, 976
	move	$a1, $zero
	pcaddu18i	$ra, %call36(pthread_mutex_init)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1016
	move	$a1, $zero
	pcaddu18i	$ra, %call36(pthread_cond_init)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	vst	$vr0, $sp, 952
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 968
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 944
.Ltmp198:                               # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.67:                               # %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit.i
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NZip16CMtProgressMixerE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive4NZip16CMtProgressMixerE+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 8
.Ltmp201:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip16CMtProgressMixer6CreateEP9IProgressb)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.68:
	st.d	$zero, $sp, 1464
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 1480
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 1496
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a1, $sp, 1472
	vst	$vr0, $sp, 1512
	st.d	$a0, $sp, 1528
	st.d	$a1, $sp, 1504
	addi.d	$a0, $sp, 1552
.Ltmp204:                               # EH_LABEL
	pcaddu18i	$ra, %call36(CriticalSection_Init)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.69:                               # %_ZN24CMtCompressProgressMixerC2Ev.exit.i
	ld.d	$a2, $fp, 24
.Ltmp210:                               # EH_LABEL
	addi.d	$a0, $sp, 1464
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN24CMtCompressProgressMixer4InitEiP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.70:
	st.d	$zero, $sp, 856
	lu12i.w	$a0, 16
	st.d	$a0, $sp, 864
	st.d	$zero, $sp, 872
	addi.d	$a0, $sp, 880
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(CriticalSection_Init)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.71:
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE+16)
	st.d	$a0, $sp, 920
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 928
	addi.d	$a0, $sp, 856
	st.d	$a0, $sp, 816
	vst	$vr0, $sp, 832
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 848
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 824
	vst	$vr0, $sp, 792
	st.d	$a0, $sp, 808
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	st.d	$a1, $sp, 784
	vst	$vr0, $sp, 760
	st.d	$a0, $sp, 776
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE+16)
	st.d	$a0, $sp, 752
	vst	$vr0, $sp, 728
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 744
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$a0, $sp, 720
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a2, $a0, 9
.Ltmp219:                               # EH_LABEL
	addi.d	$a0, $sp, 856
	addi.d	$a1, $sp, 976
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN18CMemBlockManagerMt19AllocateSpaceAlwaysEPN8NWindows16NSynchronization8CSynchroEmm)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.72:
	move	$s6, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bnez	$a0, .LBB17_302
# %bb.73:                               # %.preheader613.i
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $s5, 12
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIPvE)
	addi.d	$fp, $a1, %pc_lo12(_ZTV13CRecordVectorIPvE)
	pcalau12i	$s1, %pc_hi20(.LCPI17_0)
	addi.d	$s6, $sp, 824
	blez	$a0, .LBB17_77
# %bb.74:                               # %.lr.ph683.i
	move	$s0, $zero
	vld	$vr0, $s1, %pc_lo12(.LCPI17_0)
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	addi.d	$s2, $sp, 320
	addi.d	$s3, $fp, 16
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB17_75:                              # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	st.d	$s3, $sp, 312
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	st.b	$s4, $sp, 352
	st.h	$zero, $sp, 384
.Ltmp222:                               # EH_LABEL
	addi.d	$a1, $sp, 312
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.76:                               #   in Loop: Header=BB17_75 Depth=1
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 12
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB17_75
.LBB17_77:                              # %.preheader612.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_101
# %bb.78:
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_79:                              # =>This Inner Loop Header: Depth=1
.Ltmp225:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	addi.d	$a1, $sp, 1168
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.80:                               #   in Loop: Header=BB17_79 Depth=1
.Ltmp228:                               # EH_LABEL
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.81:                               # %.noexc485.i
                                        #   in Loop: Header=BB17_79 Depth=1
.Ltmp230:                               # EH_LABEL
	move	$s6, $a0
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CThreadInfoC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp231:                               # EH_LABEL
# %bb.82:                               #   in Loop: Header=BB17_79 Depth=1
.Ltmp233:                               # EH_LABEL
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.83:                               #   in Loop: Header=BB17_79 Depth=1
	ld.w	$a0, $sp, 796
	ld.d	$a1, $sp, 800
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 796
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CThreadInfoD2Ev)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB17_79
# %bb.84:                               # %.lr.ph688.i
	pcalau12i	$a0, %got_pc_hi20(_ZTV19CMtCompressProgress)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV19CMtCompressProgress)
	ld.d	$a1, $a0, 24
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(_ZTV13COutMemStream)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV13COutMemStream)
	ld.d	$a2, $a1, 24
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s5, $a1, 16
	pcalau12i	$a1, %pc_hi20(_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE+16)
	addi.d	$s3, $a1, %pc_lo12(_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE+16)
	addi.d	$s0, $fp, 16
	vld	$vr0, $s1, %pc_lo12(.LCPI17_0)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	addi.d	$s2, $sp, 976
	addi.d	$s1, $a0, 16
	addi.d	$fp, $sp, 1464
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive4NZipL11CoderThreadEPv)
	addi.d	$s7, $a0, %pc_lo12(_ZN8NArchive4NZipL11CoderThreadEPv)
	move	$s4, $zero
.LBB17_85:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 800
	slli.d	$a1, $s4, 3
	ldx.d	$s8, $a0, $a1
	ld.w	$a0, $s8, 16
	bnez	$a0, .LBB17_88
# %bb.86:                               # %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
                                        #   in Loop: Header=BB17_85 Depth=1
.Ltmp236:                               # EH_LABEL
	addi.d	$a0, $s8, 16
	pcaddu18i	$ra, %call36(AutoResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
# %bb.87:                               # %.noexc490.i
                                        #   in Loop: Header=BB17_85 Depth=1
	move	$s6, $a0
	bnez	$a0, .LBB17_302
.LBB17_88:                              # %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
                                        #   in Loop: Header=BB17_85 Depth=1
	ld.d	$a0, $s8, 128
	bnez	$a0, .LBB17_90
# %bb.89:                               #   in Loop: Header=BB17_85 Depth=1
	addi.d	$a0, $sp, 1072
	st.d	$a0, $s8, 128
	st.h	$zero, $s8, 136
.LBB17_90:                              #   in Loop: Header=BB17_85 Depth=1
.Ltmp239:                               # EH_LABEL
	ori	$a0, $zero, 168
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.91:                               #   in Loop: Header=BB17_85 Depth=1
	move	$s6, $a0
	st.w	$zero, $a0, 8
	st.d	$s5, $a0, 0
	addi.d	$a0, $sp, 856
	st.d	$a0, $s6, 16
	st.d	$s3, $s6, 48
	st.d	$s3, $s6, 72
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $s6, 112
	st.d	$s0, $s6, 104
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $s6, 128
	ori	$a0, $zero, 1
	st.b	$a0, $s6, 144
	vst	$vr0, $s6, 152
	st.d	$s6, $s8, 168
	st.d	$s2, $s6, 56
	st.h	$zero, $s6, 64
	st.d	$s2, $s6, 80
	st.h	$zero, $s6, 88
.Ltmp241:                               # EH_LABEL
	move	$a0, $s6
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp242:                               # EH_LABEL
# %bb.92:                               # %.noexc493.i
                                        #   in Loop: Header=BB17_85 Depth=1
	ld.d	$a0, $s8, 176
	beqz	$a0, .LBB17_94
# %bb.93:                               #   in Loop: Header=BB17_85 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp243:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp244:                               # EH_LABEL
.LBB17_94:                              #   in Loop: Header=BB17_85 Depth=1
	st.d	$s6, $s8, 176
	ori	$a0, $zero, 1
	st.b	$a0, $s8, 400
.Ltmp245:                               # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.95:                               #   in Loop: Header=BB17_85 Depth=1
	move	$s6, $a0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	st.d	$s1, $a0, 0
	st.d	$a0, $s8, 152
.Ltmp247:                               # EH_LABEL
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp248:                               # EH_LABEL
# %bb.96:                               # %.noexc497.i
                                        #   in Loop: Header=BB17_85 Depth=1
	ld.d	$a0, $s8, 160
	beqz	$a0, .LBB17_98
# %bb.97:                               #   in Loop: Header=BB17_85 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp249:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp250:                               # EH_LABEL
.LBB17_98:                              #   in Loop: Header=BB17_85 Depth=1
	ld.d	$a0, $s8, 152
	st.d	$s6, $s8, 160
	st.d	$fp, $a0, 16
	st.w	$s4, $a0, 24
.Ltmp252:                               # EH_LABEL
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(Thread_Create)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.99:                               #   in Loop: Header=BB17_85 Depth=1
	move	$s6, $a0
	bnez	$a0, .LBB17_302
# %bb.100:                              #   in Loop: Header=BB17_85 Depth=1
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$a0, $s4, .LBB17_85
.LBB17_101:                             # %.preheader.i
	move	$s0, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s8, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sltui	$a0, $a1, 1
	masknez	$a1, $a1, $a0
	lu12i.w	$a2, -524284
	ori	$a2, $a2, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$s6, $a0, $a1
	addi.d	$s5, $sp, 360
	addi.d	$a0, $zero, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB17_103
.LBB17_102:                             # %_ZN8NArchive4NZip5CItemD2Ev.exit517.i
                                        #   in Loop: Header=BB17_103 Depth=1
	beqz	$fp, .LBB17_302
.LBB17_103:                             # %.outer605.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_106 Depth 2
                                        #     Child Loop BB17_138 Depth 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 12
	bge	$s0, $a1, .LBB17_300
# %bb.104:                              # %.outer605.split.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.w	$a2, $sp, 732
	ld.d	$a0, $a0, 16
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB17_112
# %bb.105:                              # %.outer605.split.split.preheader.i
                                        #   in Loop: Header=BB17_103 Depth=1
	slt	$a2, $a1, $s8
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s8, $a2
	or	$a1, $a2, $a1
	slli.d	$s2, $s8, 3
	sub.d	$a2, $a1, $s8
	.p2align	4, , 16
.LBB17_106:                             # %.outer605.split.split.i
                                        #   Parent Loop BB17_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a2, .LBB17_111
# %bb.107:                              #   in Loop: Header=BB17_106 Depth=2
	ldx.d	$s1, $a0, $s2
	ld.bu	$a3, $s1, 0
	addi.w	$s8, $s8, 1
	addi.d	$s2, $s2, 8
	addi.d	$a2, $a2, -1
	beqz	$a3, .LBB17_106
# %bb.108:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 352
.Ltmp258:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.109:                              #   in Loop: Header=BB17_103 Depth=1
	st.d	$a0, $sp, 344
	st.b	$zero, $a0, 0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 368
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 384
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s3, $a0, 16
	st.d	$s3, $sp, 360
	addi.d	$a0, $sp, 440
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 456
	st.d	$s3, $sp, 432
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s4, $a0, 16
	st.d	$s4, $sp, 464
	addi.d	$a0, $sp, 472
	vst	$vr0, $a0, 0
	st.w	$zero, $a0, 15
	ld.bu	$a0, $s1, 1
	beqz	$a0, .LBB17_114
# %bb.110:                              #   in Loop: Header=BB17_103 Depth=1
	ld.bu	$a0, $s1, 2
	ori	$fp, $zero, 1
	beqz	$a0, .LBB17_120
	b	.LBB17_131
.LBB17_111:                             #   in Loop: Header=BB17_103 Depth=1
	move	$s8, $a1
.LBB17_112:                             # %.outer605.split.split.us.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a2, $sp, 840
	slli.d	$a1, $s0, 3
	ldx.d	$a2, $a2, $a1
	ld.bu	$a2, $a2, 73
	beqz	$a2, .LBB17_141
# %bb.113:                              #   in Loop: Header=BB17_103 Depth=1
	addi.d	$s0, $s0, 1
	b	.LBB17_103
.LBB17_114:                             #   in Loop: Header=BB17_103 Depth=1
	move	$s7, $s0
	ld.w	$a0, $s1, 8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
.Ltmp261:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.115:                              #   in Loop: Header=BB17_103 Depth=1
	ld.h	$a0, $s0, 184
	addi.d	$a1, $sp, 492
	st.h	$a0, $a1, 4
	ld.w	$a0, $s0, 180
	st.w	$a0, $a1, 0
.Ltmp263:                               # EH_LABEL
	addi.d	$a1, $sp, 312
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.116:                              #   in Loop: Header=BB17_103 Depth=1
	beqz	$a0, .LBB17_118
# %bb.117:                              #   in Loop: Header=BB17_103 Depth=1
	move	$fp, $zero
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	move	$s0, $s7
	b	.LBB17_131
.LBB17_118:                             #   in Loop: Header=BB17_103 Depth=1
.Ltmp265:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNK8NArchive4NZip5CItem5IsDirEv)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
# %bb.119:                              #   in Loop: Header=BB17_103 Depth=1
	ori	$fp, $zero, 1
	move	$s0, $s7
	bnez	$a0, .LBB17_131
.LBB17_120:                             #   in Loop: Header=BB17_103 Depth=1
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$zero, $sp, 304
	addi.d	$s0, $a0, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.w	$a1, $s1, 12
	ld.d	$a3, $a2, 72
.Ltmp268:                               # EH_LABEL
	addi.d	$a2, $sp, 304
	jirl	$ra, $a3, 0
.Ltmp269:                               # EH_LABEL
# %bb.121:                              #   in Loop: Header=BB17_103 Depth=1
	move	$s7, $a0
	beqz	$a0, .LBB17_126
# %bb.122:                              #   in Loop: Header=BB17_103 Depth=1
	ori	$a0, $zero, 1
	bne	$s7, $a0, .LBB17_128
# %bb.123:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $s1, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $a1, 16
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$s7, $a0, 26
	addi.d	$s1, $fp, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 32
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $fp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 80
.Ltmp291:                               # EH_LABEL
	move	$a1, $zero
	jirl	$ra, $a2, 0
.Ltmp292:                               # EH_LABEL
# %bb.124:                              #   in Loop: Header=BB17_103 Depth=1
	move	$s7, $a0
	bnez	$a0, .LBB17_128
# %bb.125:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 840
	add.d	$a0, $a0, $s2
	ld.d	$a0, $a0, -8
	ori	$fp, $zero, 1
	st.b	$fp, $a0, 73
	move	$s7, $s6
	b	.LBB17_129
.LBB17_126:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 80
.Ltmp271:                               # EH_LABEL
	move	$a1, $zero
	jirl	$ra, $a2, 0
.Ltmp272:                               # EH_LABEL
# %bb.127:                              #   in Loop: Header=BB17_103 Depth=1
	move	$s7, $a0
	beqz	$a0, .LBB17_137
.LBB17_128:                             #   in Loop: Header=BB17_103 Depth=1
	move	$fp, $zero
.LBB17_129:                             # %.thread581.i
                                        #   in Loop: Header=BB17_103 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$s6, $s7
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB17_131
.LBB17_130:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp297:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp298:                               # EH_LABEL
.LBB17_131:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 480
	st.d	$s4, $sp, 464
	beqz	$a0, .LBB17_133
# %bb.132:                              #   in Loop: Header=BB17_103 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_133:                             # %_ZN7CBufferIhED2Ev.exit.i514.i
                                        #   in Loop: Header=BB17_103 Depth=1
	st.d	$s3, $sp, 432
.Ltmp300:                               # EH_LABEL
	addi.d	$s1, $sp, 432
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.134:                              # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i515.i
                                        #   in Loop: Header=BB17_103 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 360
.Ltmp303:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.135:                              # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i516.i
                                        #   in Loop: Header=BB17_103 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB17_102
# %bb.136:                              #   in Loop: Header=BB17_103 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB17_102
.LBB17_137:                             # %.lr.ph718.i
                                        #   in Loop: Header=BB17_103 Depth=1
	addi.d	$s1, $s8, -1
	sltui	$a0, $s7, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	move	$fp, $zero
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
.LBB17_138:                             #   Parent Loop BB17_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $fp, 3
	ldx.d	$s2, $a0, $a1
	ld.bu	$a1, $s2, 400
	bnez	$a1, .LBB17_148
# %bb.139:                              # %.critedge464.i
                                        #   in Loop: Header=BB17_138 Depth=2
	addi.w	$fp, $fp, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bne	$a1, $fp, .LBB17_138
# %bb.140:                              #   in Loop: Header=BB17_103 Depth=1
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 304
	bnez	$a0, .LBB17_130
	b	.LBB17_131
.LBB17_141:                             #   in Loop: Header=BB17_103 Depth=1
	move	$s4, $s0
	ldx.d	$s0, $a0, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 1456
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 352
.Ltmp306:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.142:                              #   in Loop: Header=BB17_103 Depth=1
	st.d	$a0, $sp, 344
	st.b	$zero, $a0, 0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 368
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 384
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a0, 16
	st.d	$a2, $sp, 360
	addi.d	$a0, $sp, 440
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 456
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 432
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s2, $a0, 16
	st.d	$s2, $sp, 464
	addi.d	$a0, $sp, 472
	vst	$vr0, $a0, 0
	st.w	$zero, $a0, 15
	ld.bu	$a0, $s0, 1
	beqz	$a0, .LBB17_144
# %bb.143:                              #   in Loop: Header=BB17_103 Depth=1
	ld.bu	$a0, $s0, 0
	bnez	$a0, .LBB17_163
.LBB17_144:                             #   in Loop: Header=BB17_103 Depth=1
	ld.w	$a0, $s0, 8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
.Ltmp309:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.145:                              #   in Loop: Header=BB17_103 Depth=1
	ld.h	$a0, $s1, 184
	addi.d	$a1, $sp, 492
	st.h	$a0, $a1, 4
	ld.w	$a0, $s1, 180
	st.w	$a0, $a1, 0
.Ltmp311:                               # EH_LABEL
	addi.d	$a1, $sp, 312
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.146:                              #   in Loop: Header=BB17_103 Depth=1
	ori	$s3, $zero, 1
	beqz	$a0, .LBB17_161
# %bb.147:                              #   in Loop: Header=BB17_103 Depth=1
	lu12i.w	$a0, -524284
	ori	$s7, $a0, 1
	b	.LBB17_188
.LBB17_148:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$s0, $sp, 304
	st.b	$zero, $s2, 400
	beqz	$s0, .LBB17_150
# %bb.149:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
.Ltmp274:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp275:                               # EH_LABEL
.LBB17_150:                             # %.noexc503.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $s2, 184
	beqz	$a0, .LBB17_152
# %bb.151:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp276:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp277:                               # EH_LABEL
.LBB17_152:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 304
	st.d	$s0, $s2, 184
	beqz	$a0, .LBB17_155
# %bb.153:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp278:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp279:                               # EH_LABEL
# %bb.154:                              # %.noexc506.i
                                        #   in Loop: Header=BB17_103 Depth=1
	st.d	$zero, $sp, 304
.LBB17_155:                             # %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $s2, 168
.Ltmp280:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13COutMemStream4InitEv)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.156:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $s2, 152
	ld.d	$a0, $a1, 16
	ld.w	$a1, $a1, 24
.Ltmp282:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN24CMtCompressProgressMixer6ReinitEi)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.157:                              # %_ZN19CMtCompressProgress6ReinitEv.exit.i
                                        #   in Loop: Header=BB17_103 Depth=1
	addi.d	$a0, $s2, 16
.Ltmp284:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.158:                              # %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i
                                        #   in Loop: Header=BB17_103 Depth=1
	st.w	$s1, $s2, 404
.Ltmp286:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.159:                              #   in Loop: Header=BB17_103 Depth=1
	ld.w	$a0, $sp, 764
	ld.d	$a1, $sp, 768
	addi.d	$a2, $s2, 120
	slli.d	$a3, $a0, 3
	stx.d	$a2, $a1, $a3
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 764
.Ltmp288:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.160:                              #   in Loop: Header=BB17_103 Depth=1
	ld.w	$a0, $sp, 732
	ld.d	$a1, $sp, 736
	slli.d	$a0, $a0, 2
	stx.w	$fp, $a1, $a0
	ld.w	$a0, $sp, 732
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 732
	ori	$fp, $zero, 1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 304
	bnez	$a0, .LBB17_130
	b	.LBB17_131
.LBB17_161:                             #   in Loop: Header=BB17_103 Depth=1
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB17_167
# %bb.162:                              # %.thread898.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.bu	$a0, $s0, 1
	beqz	$a0, .LBB17_169
.LBB17_163:                             # %.thread898.thread.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.bu	$a0, $s0, 2
	beqz	$a0, .LBB17_171
.LBB17_164:                             #   in Loop: Header=BB17_103 Depth=1
.Ltmp378:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp379:                               # EH_LABEL
# %bb.165:                              # %.noexc522.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.hu	$a1, $sp, 352
	ld.d	$a2, $s0, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, 104
.Ltmp380:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive26PrepareWriteCompressedDataEtyb)
	jirl	$ra, $ra, 0
.Ltmp381:                               # EH_LABEL
# %bb.166:                              # %.noexc523.i
                                        #   in Loop: Header=BB17_103 Depth=1
.Ltmp382:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE)
	jirl	$ra, $ra, 0
.Ltmp383:                               # EH_LABEL
	b	.LBB17_183
.LBB17_167:                             #   in Loop: Header=BB17_103 Depth=1
.Ltmp313:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	addi.d	$a5, $sp, 1456
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.168:                              #   in Loop: Header=BB17_103 Depth=1
	move	$s7, $a0
	bnez	$a0, .LBB17_188
	b	.LBB17_183
.LBB17_169:                             #   in Loop: Header=BB17_103 Depth=1
.Ltmp316:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNK8NArchive4NZip5CItem5IsDirEv)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.170:                              #   in Loop: Header=BB17_103 Depth=1
	bnez	$a0, .LBB17_164
.LBB17_171:                             #   in Loop: Header=BB17_103 Depth=1
	addi.w	$a0, $s4, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	bge	$a1, $a0, .LBB17_174
# %bb.172:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp318:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.173:                              #   in Loop: Header=BB17_103 Depth=1
	ld.hu	$a1, $sp, 352
	ld.d	$a2, $s0, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, 104
.Ltmp320:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive26PrepareWriteCompressedDataEtyb)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
.LBB17_174:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 840
	slli.d	$a1, $s4, 3
	ldx.d	$s7, $a0, $a1
	ld.bu	$a0, $s7, 72
	beqz	$a0, .LBB17_197
# %bb.175:                              #   in Loop: Header=BB17_103 Depth=1
	st.d	$zero, $sp, 304
.Ltmp359:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive26CreateStreamForCompressingEPP10IOutStream)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.176:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $sp, 864
	ld.d	$a2, $sp, 304
.Ltmp361:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNK10CMemBlocks13WriteToStreamEmP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.177:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a1, $a0, 104
	ld.bu	$a2, $a0, 105
	addi.d	$a0, $s7, 48
.Ltmp363:                               # EH_LABEL
	addi.d	$a3, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.178:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp365:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.179:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp367:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.180:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp369:                               # EH_LABEL
	addi.d	$a1, $sp, 856
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN10CMemBlocks7FreeOptEP18CMemBlockManagerMt)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.181:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB17_183
# %bb.182:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp375:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp376:                               # EH_LABEL
.LBB17_183:                             # %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i
                                        #   in Loop: Header=BB17_103 Depth=1
.Ltmp385:                               # EH_LABEL
	ori	$a0, $zero, 184
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.184:                              # %.noexc535.i
                                        #   in Loop: Header=BB17_103 Depth=1
.Ltmp387:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.185:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp390:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.186:                              #   in Loop: Header=BB17_103 Depth=1
	ld.w	$a0, $sp, 956
	ld.d	$a1, $sp, 960
	slli.d	$a2, $a0, 3
	stx.d	$s0, $a1, $a2
	ld.d	$a1, $sp, 1456
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $a2, 16
	st.w	$a0, $sp, 956
	addi.d	$s1, $a1, 26
	st.d	$s1, $sp, 1456
	addi.d	$s0, $fp, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 32
	st.d	$s1, $fp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	addi.d	$s4, $s4, 1
.LBB17_187:                             # %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.i
                                        #   in Loop: Header=BB17_103 Depth=1
	move	$s7, $s6
.LBB17_188:                             # %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 480
	st.d	$s2, $sp, 464
	beqz	$a0, .LBB17_190
# %bb.189:                              #   in Loop: Header=BB17_103 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_190:                             # %_ZN7CBufferIhED2Ev.exit.i539.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	st.d	$s1, $sp, 432
.Ltmp402:                               # EH_LABEL
	addi.d	$fp, $sp, 432
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp403:                               # EH_LABEL
# %bb.191:                              # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i540.i
                                        #   in Loop: Header=BB17_103 Depth=1
	move	$s0, $s4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 360
.Ltmp405:                               # EH_LABEL
	addi.d	$fp, $sp, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.192:                              # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i541.i
                                        #   in Loop: Header=BB17_103 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB17_194
# %bb.193:                              #   in Loop: Header=BB17_103 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_194:                             # %_ZN8NArchive4NZip5CItemD2Ev.exit542.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ori	$a0, $zero, 14
	beq	$s3, $a0, .LBB17_196
# %bb.195:                              # %_ZN8NArchive4NZip5CItemD2Ev.exit542.i
                                        #   in Loop: Header=BB17_103 Depth=1
	bnez	$s3, .LBB17_317
.LBB17_196:                             # %.outer.backedge.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 1456
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s0, $s0, 0
	move	$s6, $s7
	b	.LBB17_103
.LBB17_197:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 736
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 800
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a1, $a0
	ld.d	$a0, $fp, 168
	ld.bu	$a0, $a0, 41
	bnez	$a0, .LBB17_203
# %bb.198:                              #   in Loop: Header=BB17_103 Depth=1
	st.d	$zero, $sp, 304
.Ltmp322:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive26CreateStreamForCompressingEPP10IOutStream)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.199:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $fp, 168
	ld.d	$a1, $sp, 304
.Ltmp324:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13COutMemStream12SetOutStreamEP10IOutStream)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.200:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $fp, 168
.Ltmp326:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13COutMemStream17SetRealStreamModeEv)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.201:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB17_203
# %bb.202:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp332:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp333:                               # EH_LABEL
.LBB17_203:                             #   in Loop: Header=BB17_103 Depth=1
	ld.w	$a0, $sp, 764
	ld.d	$a1, $sp, 768
.Ltmp335:                               # EH_LABEL
	addi.w	$a3, $zero, -1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z22WaitForMultipleObjectsjPKPN8NWindows16NSynchronization15CBaseHandleWFMOEij)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.204:                              #   in Loop: Header=BB17_103 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 736
	slli.d	$a1, $s1, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 800
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a1, $a0
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB17_207
# %bb.205:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp338:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp339:                               # EH_LABEL
# %bb.206:                              # %.noexc533.i
                                        #   in Loop: Header=BB17_103 Depth=1
	st.d	$zero, $fp, 184
.LBB17_207:                             # %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit534.i
                                        #   in Loop: Header=BB17_103 Depth=1
	ld.w	$s7, $fp, 368
	ori	$s3, $zero, 1
	st.b	$s3, $fp, 400
	bnez	$s7, .LBB17_188
# %bb.208:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp340:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.209:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp342:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.210:                              #   in Loop: Header=BB17_103 Depth=1
	beqz	$s1, .LBB17_213
# %bb.211:                              #   in Loop: Header=BB17_103 Depth=1
	ld.w	$a0, $fp, 404
	ld.d	$a1, $sp, 840
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
	ld.d	$a0, $fp, 168
.Ltmp344:                               # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13COutMemStream10DetachDataER14CMemLockBlocks)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
# %bb.212:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $fp, 392
	st.d	$a0, $s0, 64
	vld	$vr0, $fp, 376
	vst	$vr0, $s0, 48
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 72
	ori	$s3, $zero, 14
	b	.LBB17_187
.LBB17_213:                             #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $fp, 168
.Ltmp347:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13COutMemStream17WriteToRealStreamEv)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.214:                              #   in Loop: Header=BB17_103 Depth=1
	move	$s7, $a0
	bnez	$a0, .LBB17_188
# %bb.215:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $fp, 168
.Ltmp350:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13COutMemStream16ReleaseOutStreamEv)
	jirl	$ra, $ra, 0
.Ltmp351:                               # EH_LABEL
# %bb.216:                              #   in Loop: Header=BB17_103 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a1, $a0, 104
	ld.bu	$a2, $a0, 105
	addi.d	$a0, $fp, 376
.Ltmp352:                               # EH_LABEL
	addi.d	$a3, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp353:                               # EH_LABEL
# %bb.217:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp354:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.218:                              #   in Loop: Header=BB17_103 Depth=1
.Ltmp356:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
	b	.LBB17_183
.LBB17_219:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 48
	sltu	$a0, $zero, $a0
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	srl.w	$a2, $a2, $a0
	ori	$a0, $zero, 1
	st.w	$a1, $sp, 1248
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	bltu	$a0, $a2, .LBB17_66
.LBB17_220:                             # %.thread567.i
.Ltmp101:                               # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
# %bb.221:                              # %.noexc.i
.Ltmp103:                               # EH_LABEL
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgressC1Ev)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.222:
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a0, 8
.Ltmp106:                               # EH_LABEL
	move	$a0, $s7
	jirl	$ra, $a1, 0
.Ltmp107:                               # EH_LABEL
# %bb.223:                              # %.noexc475.i
.Ltmp109:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress4InitEP9IProgressb)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.224:
.Ltmp112:                               # EH_LABEL
	addi.d	$a0, $sp, 1464
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonC1ERKNS0_22CCompressionMethodModeE)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.225:
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 1080
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 1096
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	ld.w	$a0, $s1, 12
	ori	$s4, $zero, 8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 1072
	blez	$a0, .LBB17_281
# %bb.226:                              # %.lr.ph.i.i
	move	$s5, $zero
	move	$s8, $zero
	addi.d	$fp, $sp, 472
	ori	$s0, $zero, 0
	lu32i.d	$s0, 4
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s2, $a0, 16
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s3, $a0, 16
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	.p2align	4, , 16
.LBB17_227:                             # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $s7, 48
.Ltmp115:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress6SetCurEv)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.228:                              #   in Loop: Header=BB17_227 Depth=1
	move	$s6, $a0
	bnez	$a0, .LBB17_283
# %bb.229:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ldx.d	$s6, $a0, $s5
	st.d	$s0, $sp, 352
.Ltmp118:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.230:                              #   in Loop: Header=BB17_227 Depth=1
	st.d	$a0, $sp, 344
	st.b	$zero, $a0, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 368
	vst	$vr0, $a0, 0
	st.d	$s4, $sp, 384
	st.d	$s2, $sp, 360
	addi.d	$a0, $sp, 440
	vst	$vr0, $a0, 0
	st.d	$s4, $sp, 456
	st.d	$s2, $sp, 432
	st.d	$s3, $sp, 464
	vst	$vr0, $fp, 0
	st.w	$zero, $fp, 15
	ld.bu	$a0, $s6, 1
	beqz	$a0, .LBB17_232
# %bb.231:                              #   in Loop: Header=BB17_227 Depth=1
	ld.bu	$a0, $s6, 0
	bnez	$a0, .LBB17_239
.LBB17_232:                             #   in Loop: Header=BB17_227 Depth=1
	ld.w	$a0, $s6, 8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
.Ltmp121:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.233:                              #   in Loop: Header=BB17_227 Depth=1
	ld.h	$a0, $s1, 184
	addi.d	$a1, $sp, 492
	st.h	$a0, $a1, 4
	ld.w	$a0, $s1, 180
	st.w	$a0, $a1, 0
.Ltmp123:                               # EH_LABEL
	addi.d	$a1, $sp, 312
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.234:                              #   in Loop: Header=BB17_227 Depth=1
	ori	$s1, $zero, 1
	beqz	$a0, .LBB17_237
# %bb.235:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB17_236:                             # %.critedge.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB17_272
.LBB17_237:                             #   in Loop: Header=BB17_227 Depth=1
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB17_243
# %bb.238:                              # %.thread207.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
	ld.bu	$a0, $s6, 1
	beqz	$a0, .LBB17_246
.LBB17_239:                             # %.thread207.i.thread.i
                                        #   in Loop: Header=BB17_227 Depth=1
	ld.bu	$a0, $s6, 2
	beqz	$a0, .LBB17_248
.LBB17_240:                             #   in Loop: Header=BB17_227 Depth=1
.Ltmp165:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.241:                              # %.noexc.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
	ld.hu	$a1, $sp, 352
	ld.d	$a2, $s6, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, 104
.Ltmp167:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive26PrepareWriteCompressedDataEtyb)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.242:                              # %.noexc171.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
.Ltmp169:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
	b	.LBB17_268
.LBB17_243:                             #   in Loop: Header=BB17_227 Depth=1
	st.d	$zero, $sp, 976
	st.b	$zero, $s7, 64
.Ltmp125:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	addi.d	$a5, $sp, 976
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s6
	move	$a4, $s7
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.244:                              #   in Loop: Header=BB17_227 Depth=1
	bnez	$a0, .LBB17_236
# %bb.245:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 976
	ld.d	$a1, $s7, 40
	ori	$a2, $zero, 1
	st.b	$a2, $s7, 64
	add.d	$a0, $a1, $a0
	st.d	$a0, $s7, 40
	b	.LBB17_268
.LBB17_246:                             #   in Loop: Header=BB17_227 Depth=1
.Ltmp128:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNK8NArchive4NZip5CItem5IsDirEv)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.247:                              #   in Loop: Header=BB17_227 Depth=1
	bnez	$a0, .LBB17_240
.LBB17_248:                             #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.w	$a1, $s6, 12
	ld.d	$a3, $a2, 72
	st.d	$zero, $sp, 856
.Ltmp130:                               # EH_LABEL
	addi.d	$a2, $sp, 856
	jirl	$ra, $a3, 0
.Ltmp131:                               # EH_LABEL
# %bb.249:                              #   in Loop: Header=BB17_227 Depth=1
	beqz	$a0, .LBB17_253
# %bb.250:                              #   in Loop: Header=BB17_227 Depth=1
	ori	$s1, $zero, 1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB17_264
# %bb.251:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a3, $s6, 24
	ld.d	$a1, $s7, 40
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	add.d	$a1, $a1, $a3
	st.d	$a1, $s7, 40
	ld.d	$a2, $a2, 80
.Ltmp156:                               # EH_LABEL
	move	$a1, $zero
	jirl	$ra, $a2, 0
.Ltmp157:                               # EH_LABEL
# %bb.252:                              #   in Loop: Header=BB17_227 Depth=1
	sltui	$a1, $a0, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 4
	maskeqz	$a3, $a3, $a1
	or	$s1, $a3, $a2
	masknez	$a0, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB17_265
.LBB17_253:                             #   in Loop: Header=BB17_227 Depth=1
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a3, $sp, 312
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.254:                              #   in Loop: Header=BB17_227 Depth=1
	ld.hu	$a1, $sp, 352
	ld.d	$a2, $s6, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, 104
.Ltmp134:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive26PrepareWriteCompressedDataEtyb)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.255:                              #   in Loop: Header=BB17_227 Depth=1
	st.d	$zero, $sp, 816
.Ltmp137:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 816
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive26CreateStreamForCompressingEPP10IOutStream)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.256:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a1, $sp, 856
	ld.d	$a2, $sp, 816
.Ltmp139:                               # EH_LABEL
	addi.d	$a0, $sp, 1464
	addi.d	$a4, $sp, 976
	move	$a3, $s7
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommon8CompressEP19ISequentialInStreamP10IOutStreamP21ICompressProgressInfoRNS0_18CCompressingResultE)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.257:                              #   in Loop: Header=BB17_227 Depth=1
	ori	$s1, $zero, 1
	bnez	$a0, .LBB17_262
# %bb.258:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a1, $a0, 104
	ld.bu	$a2, $a0, 105
.Ltmp142:                               # EH_LABEL
	addi.d	$a0, $sp, 976
	addi.d	$a3, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.259:                              #   in Loop: Header=BB17_227 Depth=1
.Ltmp144:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.260:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 80
.Ltmp147:                               # EH_LABEL
	move	$a1, $zero
	jirl	$ra, $a2, 0
.Ltmp148:                               # EH_LABEL
# %bb.261:                              #   in Loop: Header=BB17_227 Depth=1
	beqz	$a0, .LBB17_280
.LBB17_262:                             #   in Loop: Header=BB17_227 Depth=1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 816
	beqz	$a0, .LBB17_265
.LBB17_263:                             #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp153:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp154:                               # EH_LABEL
	b	.LBB17_265
.LBB17_264:                             #   in Loop: Header=BB17_227 Depth=1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
.LBB17_265:                             #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 856
	beqz	$a0, .LBB17_267
# %bb.266:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp162:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp163:                               # EH_LABEL
.LBB17_267:                             # %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
	bnez	$s1, .LBB17_272
.LBB17_268:                             # %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
.Ltmp172:                               # EH_LABEL
	ori	$a0, $zero, 184
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.269:                              # %.noexc178.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
.Ltmp174:                               # EH_LABEL
	move	$s6, $a0
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.270:                              #   in Loop: Header=BB17_227 Depth=1
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.271:                              #   in Loop: Header=BB17_227 Depth=1
	ld.w	$a0, $sp, 1084
	ld.d	$a1, $sp, 1088
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	ld.d	$a1, $s7, 40
	move	$s1, $zero
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 1084
	addi.d	$a0, $a1, 26
	st.d	$a0, $s7, 40
.LBB17_272:                             #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 480
	st.d	$s3, $sp, 464
	beqz	$a0, .LBB17_274
# %bb.273:                              #   in Loop: Header=BB17_227 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_274:                             # %_ZN7CBufferIhED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
	st.d	$s2, $sp, 432
.Ltmp180:                               # EH_LABEL
	addi.d	$s6, $sp, 432
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.275:                              # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i473.i
                                        #   in Loop: Header=BB17_227 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 360
.Ltmp183:                               # EH_LABEL
	addi.d	$s6, $sp, 360
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.276:                              # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB17_278
# %bb.277:                              #   in Loop: Header=BB17_227 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_278:                             # %_ZN8NArchive4NZip5CItemD2Ev.exit.i.i
                                        #   in Loop: Header=BB17_227 Depth=1
	andi	$a0, $s1, 3
	bnez	$a0, .LBB17_299
# %bb.279:                              #   in Loop: Header=BB17_227 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	addi.d	$s8, $s8, 1
	addi.d	$s5, $s5, 8
	blt	$s8, $a0, .LBB17_227
	b	.LBB17_281
.LBB17_280:                             #   in Loop: Header=BB17_227 Depth=1
	vld	$vr0, $sp, 328
	move	$s1, $zero
	vshuf4i.d	$vr0, $vr0, 1
	vld	$vr1, $sp, 160                  # 16-byte Folded Reload
	vadd.d	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 160                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 816
	bnez	$a0, .LBB17_263
	b	.LBB17_265
.LBB17_281:                             # %._crit_edge.i.i
.Ltmp186:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 1072
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive15WriteCentralDirERK13CObjectVectorINS0_5CItemEEPK7CBufferIhE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.282:
	move	$s6, $zero
.LBB17_283:                             # %.thread.i.i
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 1072
.Ltmp192:                               # EH_LABEL
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.284:
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1464
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a0, 16
.Ltmp195:                               # EH_LABEL
	move	$a0, $s7
	jirl	$ra, $a1, 0
.Ltmp196:                               # EH_LABEL
.LBB17_285:                             # %_ZN8NArchive4NZipL9Update2StERNS0_11COutArchiveEPNS0_10CInArchiveEP9IInStreamRK13CObjectVectorINS0_7CItemExEERKS7_INS0_11CUpdateItemEEPKNS0_22CCompressionMethodModeEPK7CBufferIhEP22IArchiveUpdateCallback.exit.i
	ld.d	$a0, $sp, 1256
	beqz	$a0, .LBB17_287
# %bb.286:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_287:                             # %_ZN11CStringBaseIcED2Ev.exit.i.i
	ld.d	$a0, $sp, 1200
	beqz	$a0, .LBB17_289
# %bb.288:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_289:                             # %_ZN8NArchive4NZip22CCompressionMethodModeD2Ev.exit.i
	addi.d	$a0, $sp, 1168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1280
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB17_291
.LBB17_290:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp429:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp430:                               # EH_LABEL
.LBB17_291:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit66
	addi.d	$a0, $sp, 224
.Ltmp432:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.292:
	ld.d	$a0, $sp, 248
	beqz	$a0, .LBB17_294
# %bb.293:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp435:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp436:                               # EH_LABEL
.LBB17_294:                             # %_ZN10COutBufferD2Ev.exit.i
	ld.d	$a0, $sp, 216
	beqz	$a0, .LBB17_296
# %bb.295:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp438:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp439:                               # EH_LABEL
.LBB17_296:                             # %_ZN8NArchive4NZip11COutArchiveD2Ev.exit
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
.LBB17_297:
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a0, 16
.Ltmp441:                               # EH_LABEL
	move	$a0, $a2
	jirl	$ra, $a1, 0
.Ltmp442:                               # EH_LABEL
.LBB17_298:                             # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit71
	addi.w	$a0, $s6, 0
	ld.d	$s8, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1656                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1664                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1672                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1680                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1704                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1712                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1720                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1728
	ret
.LBB17_299:
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	b	.LBB17_283
.LBB17_300:
.Ltmp255:                               # EH_LABEL
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 944
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive15WriteCentralDirERK13CObjectVectorINS0_5CItemEEPK7CBufferIhE)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.301:
	move	$s6, $zero
.LBB17_302:                             # %.thread578.i
	addi.d	$a0, $sp, 720
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 752
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip8CThreadsD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 836
	blez	$a0, .LBB17_306
# %bb.303:                              # %.lr.ph.i544.i
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB17_304:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 840
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $sp, 816
.Ltmp408:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10CMemBlocks7FreeOptEP18CMemBlockManagerMt)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.305:                              #   in Loop: Header=BB17_304 Depth=1
	ld.w	$a0, $sp, 836
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $a0, .LBB17_304
.LBB17_306:                             # %._crit_edge.i543.i
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 824
.Ltmp411:                               # EH_LABEL
	addi.d	$fp, $sp, 824
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.307:                              # %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.Ltmp414:                               # EH_LABEL
	addi.d	$a0, $sp, 856
	pcaddu18i	$ra, %call36(_ZN18CMemBlockManagerMt9FreeSpaceEv)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.308:
	addi.d	$a0, $sp, 880
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
.Ltmp417:                               # EH_LABEL
	addi.d	$a0, $sp, 856
	pcaddu18i	$ra, %call36(_ZN16CMemBlockManager9FreeSpaceEv)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.309:                              # %_ZN18CMemBlockManagerMtD2Ev.exit.i
	addi.d	$a0, $sp, 1552
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1504
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1464
	beqz	$a0, .LBB17_311
# %bb.310:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp420:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp421:                               # EH_LABEL
.LBB17_311:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp423:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp424:                               # EH_LABEL
# %bb.312:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 944
.Ltmp426:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.313:                              # %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 1064
	beqz	$a0, .LBB17_315
# %bb.314:
	addi.d	$a0, $sp, 976
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1016
	pcaddu18i	$ra, %call36(pthread_cond_destroy)
	jirl	$ra, $ra, 0
.LBB17_315:                             # %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
	ld.bu	$a0, $sp, 1160
	beqz	$a0, .LBB17_285
# %bb.316:
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(pthread_cond_destroy)
	jirl	$ra, $ra, 0
	b	.LBB17_285
.LBB17_317:                             # %.thread578.i.loopexit1121
	move	$s6, $s7
	b	.LBB17_302
.LBB17_318:
.Ltmp349:                               # EH_LABEL
	b	.LBB17_388
.LBB17_319:
.Ltmp346:                               # EH_LABEL
	b	.LBB17_388
.LBB17_320:
.Ltmp334:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_321:
.Ltmp377:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_322:
.Ltmp337:                               # EH_LABEL
	b	.LBB17_388
.LBB17_323:
.Ltmp315:                               # EH_LABEL
	b	.LBB17_388
.LBB17_324:
.Ltmp328:                               # EH_LABEL
	ld.d	$a1, $sp, 304
	move	$s1, $a0
	beqz	$a1, .LBB17_389
# %bb.325:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp329:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp330:                               # EH_LABEL
	b	.LBB17_389
.LBB17_326:
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_327:
.Ltmp358:                               # EH_LABEL
	b	.LBB17_388
.LBB17_328:
.Ltmp389:                               # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 184
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB17_389
.LBB17_329:
.Ltmp371:                               # EH_LABEL
	ld.d	$a1, $sp, 304
	move	$s1, $a0
	beqz	$a1, .LBB17_389
# %bb.330:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp372:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp373:                               # EH_LABEL
	b	.LBB17_389
.LBB17_331:
.Ltmp374:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_332:
.Ltmp384:                               # EH_LABEL
	b	.LBB17_388
.LBB17_333:
.Ltmp407:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_334:
.Ltmp404:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_335:
.Ltmp308:                               # EH_LABEL
	b	.LBB17_414
.LBB17_336:
.Ltmp257:                               # EH_LABEL
	b	.LBB17_414
.LBB17_337:
.Ltmp392:                               # EH_LABEL
	b	.LBB17_388
.LBB17_338:
.Ltmp273:                               # EH_LABEL
	b	.LBB17_346
.LBB17_339:
.Ltmp293:                               # EH_LABEL
	b	.LBB17_346
.LBB17_340:
.Ltmp290:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB17_347
.LBB17_341:
.Ltmp149:                               # EH_LABEL
	b	.LBB17_371
.LBB17_342:
.Ltmp299:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_343:
.Ltmp422:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_344:
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_345:
.Ltmp270:                               # EH_LABEL
.LBB17_346:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
.LBB17_347:
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB17_389
# %bb.348:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp294:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp295:                               # EH_LABEL
	b	.LBB17_389
.LBB17_349:
.Ltmp296:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_350:
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_351:
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_352:
.Ltmp428:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_353:
.Ltmp425:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_354:
.Ltmp419:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_355:
.Ltmp416:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_356:
.Ltmp413:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_357:
.Ltmp221:                               # EH_LABEL
	b	.LBB17_414
.LBB17_358:
.Ltmp215:                               # EH_LABEL
	move	$s1, $a0
.Ltmp216:                               # EH_LABEL
	addi.d	$a0, $sp, 856
	pcaddu18i	$ra, %call36(_ZN16CMemBlockManager9FreeSpaceEv)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
	b	.LBB17_416
.LBB17_359:
.Ltmp218:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_360:
.Ltmp212:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB17_416
.LBB17_361:
.Ltmp206:                               # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $sp, 1504
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1464
	beqz	$a0, .LBB17_417
# %bb.362:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp207:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp208:                               # EH_LABEL
	b	.LBB17_417
.LBB17_363:
.Ltmp209:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_364:
.Ltmp203:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB17_417
.LBB17_365:
.Ltmp200:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB17_418
.LBB17_366:
.Ltmp141:                               # EH_LABEL
	b	.LBB17_371
.LBB17_367:
.Ltmp158:                               # EH_LABEL
	b	.LBB17_401
.LBB17_368:
.Ltmp238:                               # EH_LABEL
	b	.LBB17_414
.LBB17_369:
.Ltmp188:                               # EH_LABEL
	b	.LBB17_423
.LBB17_370:
.Ltmp146:                               # EH_LABEL
.LBB17_371:
	move	$s1, $a0
	ld.d	$a0, $sp, 816
	beqz	$a0, .LBB17_402
# %bb.372:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp150:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp151:                               # EH_LABEL
	b	.LBB17_402
.LBB17_373:
.Ltmp152:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_374:
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_375:
.Ltmp197:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_376:
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_377:
.Ltmp114:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB17_438
.LBB17_378:
.Ltmp111:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB17_438
.LBB17_379:
.Ltmp105:                               # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 72
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB17_439
.LBB17_380:
.Ltmp302:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_381:
.Ltmp260:                               # EH_LABEL
	b	.LBB17_414
.LBB17_382:
.Ltmp305:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_383:
.Ltmp127:                               # EH_LABEL
	b	.LBB17_435
.LBB17_384:
.Ltmp440:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_385:
.Ltmp437:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_386:
.Ltmp431:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_387:
.Ltmp267:                               # EH_LABEL
.LBB17_388:
	move	$s1, $a0
.LBB17_389:
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB17_415
.LBB17_390:
.Ltmp254:                               # EH_LABEL
	b	.LBB17_414
.LBB17_391:
.Ltmp100:                               # EH_LABEL
	b	.LBB17_398
.LBB17_392:                             # %_ZN11CStringBaseIwED2Ev.exit.i.i
.Ltmp97:                                # EH_LABEL
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB17_394
.LBB17_393:
.Ltmp94:                                # EH_LABEL
	move	$s1, $a0
.LBB17_394:
	addi.d	$a0, $sp, 1168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB17_440
.LBB17_395:
.Ltmp434:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_396:
.Ltmp66:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB17_443
.LBB17_397:
.Ltmp108:                               # EH_LABEL
.LBB17_398:                             # %.body476.i
	move	$s1, $a0
	b	.LBB17_439
.LBB17_399:
.Ltmp176:                               # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 184
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB17_436
.LBB17_400:
.Ltmp136:                               # EH_LABEL
.LBB17_401:
	move	$s1, $a0
.LBB17_402:
	ld.d	$a0, $sp, 856
	beqz	$a0, .LBB17_436
# %bb.403:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp159:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp160:                               # EH_LABEL
	b	.LBB17_436
.LBB17_404:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_405:
.Ltmp227:                               # EH_LABEL
	b	.LBB17_414
.LBB17_406:
.Ltmp232:                               # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 408
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB17_412
.LBB17_407:
.Ltmp224:                               # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB17_415
.LBB17_408:                             # %.loopexit.split-lp
.Ltmp91:                                # EH_LABEL
	b	.LBB17_429
.LBB17_409:
.Ltmp171:                               # EH_LABEL
	b	.LBB17_435
.LBB17_410:
.Ltmp63:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_411:
.Ltmp235:                               # EH_LABEL
	move	$s1, $a0
.LBB17_412:                             # %.body487.i
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CThreadInfoD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB17_415
.LBB17_413:
.Ltmp251:                               # EH_LABEL
.LBB17_414:
	move	$s1, $a0
.LBB17_415:
	addi.d	$a0, $sp, 720
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 752
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip8CThreadsD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 816
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip8CMemRefsD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 856
	pcaddu18i	$ra, %call36(_ZN18CMemBlockManagerMtD2Ev)
	jirl	$ra, $ra, 0
.LBB17_416:
	addi.d	$a0, $sp, 1464
	pcaddu18i	$ra, %call36(_ZN24CMtCompressProgressMixerD2Ev)
	jirl	$ra, $ra, 0
.LBB17_417:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp393:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp394:                               # EH_LABEL
.LBB17_418:                             # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit553.i
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 976
	pcaddu18i	$ra, %call36(_ZN8NWindows16NSynchronization8CSynchroD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZN8NWindows16NSynchronization8CSynchroD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB17_439
.LBB17_419:
.Ltmp182:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_420:
.Ltmp120:                               # EH_LABEL
	b	.LBB17_423
.LBB17_421:
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_422:
.Ltmp117:                               # EH_LABEL
.LBB17_423:
	move	$s1, $a0
	b	.LBB17_437
.LBB17_424:
.Ltmp443:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_425:
.Ltmp410:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_426:
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_427:
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_428:                             # %.loopexit
.Ltmp71:                                # EH_LABEL
.LBB17_429:                             # %.body
	move	$s1, $a0
	b	.LBB17_441
.LBB17_430:
.Ltmp74:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB17_441
.LBB17_431:
.Ltmp41:                                # EH_LABEL
	move	$s1, $a0
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	b	.LBB17_445
.LBB17_432:
.Ltmp57:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB17_445
.LBB17_433:
.Ltmp395:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_434:
.Ltmp179:                               # EH_LABEL
.LBB17_435:                             # %.body.i.i
	move	$s1, $a0
.LBB17_436:                             # %.body.i.i
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
.LBB17_437:
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1464
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonD2Ev)
	jirl	$ra, $ra, 0
.LBB17_438:
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a0, 16
.Ltmp189:                               # EH_LABEL
	move	$a0, $s7
	jirl	$ra, $a1, 0
.Ltmp190:                               # EH_LABEL
.LBB17_439:                             # %.body476.i
	addi.d	$a0, $sp, 1168
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip22CCompressionMethodModeD2Ev)
	jirl	$ra, $ra, 0
.LBB17_440:                             # %.body.i
	addi.d	$a0, $sp, 1280
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonD2Ev)
	jirl	$ra, $ra, 0
.LBB17_441:                             # %.body
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB17_443
# %bb.442:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp396:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp397:                               # EH_LABEL
.LBB17_443:                             # %.thread
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchiveD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB17_448
.LBB17_444:
.Ltmp46:                                # EH_LABEL
	move	$s1, $a0
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
.LBB17_445:
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB17_447
# %bb.446:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp58:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp59:                                # EH_LABEL
.LBB17_447:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_449
.LBB17_448:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp399:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp400:                               # EH_LABEL
.LBB17_449:                             # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit73
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_450:
.Ltmp60:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_451:
.Ltmp398:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_452:
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_453:
.Ltmp401:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback, .Lfunc_end17-_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp39-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin5          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp45-.Ltmp42                #   Call between .Ltmp42 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin5          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp56-.Ltmp47                #   Call between .Ltmp47 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin5          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin5          #     jumps to .Ltmp63
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp64-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin5          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp91-.Lfunc_begin5          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin5          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin5          # >> Call Site 8 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin5          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin5          # >> Call Site 9 <<
	.uleb128 .Ltmp81-.Ltmp73                #   Call between .Ltmp73 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin5          # >> Call Site 10 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin5          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin5          # >> Call Site 11 <<
	.uleb128 .Ltmp84-.Ltmp82                #   Call between .Ltmp82 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin5          # >> Call Site 12 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin5          #     jumps to .Ltmp86
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp85-.Lfunc_begin5          # >> Call Site 13 <<
	.uleb128 .Ltmp87-.Ltmp85                #   Call between .Ltmp85 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin5          # >> Call Site 14 <<
	.uleb128 .Ltmp90-.Ltmp87                #   Call between .Ltmp87 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin5          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin5          # >> Call Site 15 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin5          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin5          # >> Call Site 16 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin5          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin5          # >> Call Site 17 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin5         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin5          # >> Call Site 18 <<
	.uleb128 .Ltmp75-.Ltmp99                #   Call between .Ltmp99 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin5          # >> Call Site 19 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin5          #     jumps to .Ltmp77
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp76-.Lfunc_begin5          # >> Call Site 20 <<
	.uleb128 .Ltmp78-.Ltmp76                #   Call between .Ltmp76 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin5          # >> Call Site 21 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin5          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp79-.Lfunc_begin5          # >> Call Site 22 <<
	.uleb128 .Ltmp198-.Ltmp79               #   Call between .Ltmp79 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin5         # >> Call Site 23 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin5         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin5         # >> Call Site 24 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin5         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin5         # >> Call Site 25 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin5         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin5         # >> Call Site 26 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin5         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin5         # >> Call Site 27 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin5         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin5         # >> Call Site 28 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin5         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin5         # >> Call Site 29 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin5         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin5         # >> Call Site 30 <<
	.uleb128 .Ltmp225-.Ltmp223              #   Call between .Ltmp223 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin5         # >> Call Site 31 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin5         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin5         # >> Call Site 32 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp235-.Lfunc_begin5         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin5         # >> Call Site 33 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin5         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin5         # >> Call Site 34 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin5         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin5         # >> Call Site 35 <<
	.uleb128 .Ltmp236-.Ltmp234              #   Call between .Ltmp234 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin5         # >> Call Site 36 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin5         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin5         # >> Call Site 37 <<
	.uleb128 .Ltmp250-.Ltmp239              #   Call between .Ltmp239 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin5         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin5         # >> Call Site 38 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin5         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin5         # >> Call Site 39 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin5         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin5         # >> Call Site 40 <<
	.uleb128 .Ltmp266-.Ltmp261              #   Call between .Ltmp261 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin5         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin5         # >> Call Site 41 <<
	.uleb128 .Ltmp268-.Ltmp266              #   Call between .Ltmp266 and .Ltmp268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin5         # >> Call Site 42 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin5         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin5         # >> Call Site 43 <<
	.uleb128 .Ltmp291-.Ltmp269              #   Call between .Ltmp269 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin5         # >> Call Site 44 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin5         #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin5         # >> Call Site 45 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin5         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin5         # >> Call Site 46 <<
	.uleb128 .Ltmp297-.Ltmp272              #   Call between .Ltmp272 and .Ltmp297
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin5         # >> Call Site 47 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin5         #     jumps to .Ltmp299
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp298-.Lfunc_begin5         # >> Call Site 48 <<
	.uleb128 .Ltmp300-.Ltmp298              #   Call between .Ltmp298 and .Ltmp300
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin5         # >> Call Site 49 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin5         #     jumps to .Ltmp302
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp301-.Lfunc_begin5         # >> Call Site 50 <<
	.uleb128 .Ltmp303-.Ltmp301              #   Call between .Ltmp301 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin5         # >> Call Site 51 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin5         #     jumps to .Ltmp305
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp304-.Lfunc_begin5         # >> Call Site 52 <<
	.uleb128 .Ltmp306-.Ltmp304              #   Call between .Ltmp304 and .Ltmp306
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin5         # >> Call Site 53 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin5         #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin5         # >> Call Site 54 <<
	.uleb128 .Ltmp312-.Ltmp309              #   Call between .Ltmp309 and .Ltmp312
	.uleb128 .Ltmp392-.Lfunc_begin5         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin5         # >> Call Site 55 <<
	.uleb128 .Ltmp289-.Ltmp274              #   Call between .Ltmp274 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin5         #     jumps to .Ltmp290
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp378-.Lfunc_begin5         # >> Call Site 56 <<
	.uleb128 .Ltmp383-.Ltmp378              #   Call between .Ltmp378 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin5         #     jumps to .Ltmp384
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin5         # >> Call Site 57 <<
	.uleb128 .Ltmp314-.Ltmp313              #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin5         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin5         # >> Call Site 58 <<
	.uleb128 .Ltmp321-.Ltmp316              #   Call between .Ltmp316 and .Ltmp321
	.uleb128 .Ltmp384-.Lfunc_begin5         #     jumps to .Ltmp384
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin5         # >> Call Site 59 <<
	.uleb128 .Ltmp370-.Ltmp359              #   Call between .Ltmp359 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin5         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp375-.Lfunc_begin5         # >> Call Site 60 <<
	.uleb128 .Ltmp376-.Ltmp375              #   Call between .Ltmp375 and .Ltmp376
	.uleb128 .Ltmp377-.Lfunc_begin5         #     jumps to .Ltmp377
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp385-.Lfunc_begin5         # >> Call Site 61 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp392-.Lfunc_begin5         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin5         # >> Call Site 62 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin5         #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin5         # >> Call Site 63 <<
	.uleb128 .Ltmp391-.Ltmp390              #   Call between .Ltmp390 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin5         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin5         # >> Call Site 64 <<
	.uleb128 .Ltmp402-.Ltmp391              #   Call between .Ltmp391 and .Ltmp402
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin5         # >> Call Site 65 <<
	.uleb128 .Ltmp403-.Ltmp402              #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin5         #     jumps to .Ltmp404
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp403-.Lfunc_begin5         # >> Call Site 66 <<
	.uleb128 .Ltmp405-.Ltmp403              #   Call between .Ltmp403 and .Ltmp405
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin5         # >> Call Site 67 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp407-.Lfunc_begin5         #     jumps to .Ltmp407
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp406-.Lfunc_begin5         # >> Call Site 68 <<
	.uleb128 .Ltmp322-.Ltmp406              #   Call between .Ltmp406 and .Ltmp322
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin5         # >> Call Site 69 <<
	.uleb128 .Ltmp327-.Ltmp322              #   Call between .Ltmp322 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin5         #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp332-.Lfunc_begin5         # >> Call Site 70 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp334-.Lfunc_begin5         #     jumps to .Ltmp334
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp335-.Lfunc_begin5         # >> Call Site 71 <<
	.uleb128 .Ltmp336-.Ltmp335              #   Call between .Ltmp335 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin5         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin5         # >> Call Site 72 <<
	.uleb128 .Ltmp343-.Ltmp338              #   Call between .Ltmp338 and .Ltmp343
	.uleb128 .Ltmp358-.Lfunc_begin5         #     jumps to .Ltmp358
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin5         # >> Call Site 73 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp346-.Lfunc_begin5         #     jumps to .Ltmp346
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin5         # >> Call Site 74 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin5         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin5         # >> Call Site 75 <<
	.uleb128 .Ltmp357-.Ltmp350              #   Call between .Ltmp350 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin5         #     jumps to .Ltmp358
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin5         # >> Call Site 76 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp108-.Lfunc_begin5         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin5         # >> Call Site 77 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin5         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin5         # >> Call Site 78 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin5         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin5         # >> Call Site 79 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin5         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin5         # >> Call Site 80 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin5         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin5         # >> Call Site 81 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin5         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin5         # >> Call Site 82 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin5         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin5         # >> Call Site 83 <<
	.uleb128 .Ltmp124-.Ltmp121              #   Call between .Ltmp121 and .Ltmp124
	.uleb128 .Ltmp179-.Lfunc_begin5         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin5         # >> Call Site 84 <<
	.uleb128 .Ltmp170-.Ltmp165              #   Call between .Ltmp165 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin5         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin5         # >> Call Site 85 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin5         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin5         # >> Call Site 86 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp171-.Lfunc_begin5         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin5         # >> Call Site 87 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp136-.Lfunc_begin5         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin5         # >> Call Site 88 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin5         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin5         # >> Call Site 89 <<
	.uleb128 .Ltmp135-.Ltmp132              #   Call between .Ltmp132 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin5         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin5         # >> Call Site 90 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp146-.Lfunc_begin5         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin5         # >> Call Site 91 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin5         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin5         # >> Call Site 92 <<
	.uleb128 .Ltmp145-.Ltmp142              #   Call between .Ltmp142 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin5         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin5         # >> Call Site 93 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin5         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin5         # >> Call Site 94 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin5         #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin5         # >> Call Site 95 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin5         #     jumps to .Ltmp164
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin5         # >> Call Site 96 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp179-.Lfunc_begin5         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin5         # >> Call Site 97 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin5         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin5         # >> Call Site 98 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin5         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin5         # >> Call Site 99 <<
	.uleb128 .Ltmp180-.Ltmp178              #   Call between .Ltmp178 and .Ltmp180
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin5         # >> Call Site 100 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin5         #     jumps to .Ltmp182
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp181-.Lfunc_begin5         # >> Call Site 101 <<
	.uleb128 .Ltmp183-.Ltmp181              #   Call between .Ltmp181 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin5         # >> Call Site 102 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin5         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp184-.Lfunc_begin5         # >> Call Site 103 <<
	.uleb128 .Ltmp186-.Ltmp184              #   Call between .Ltmp184 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin5         # >> Call Site 104 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin5         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin5         # >> Call Site 105 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin5         #     jumps to .Ltmp194
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp193-.Lfunc_begin5         # >> Call Site 106 <<
	.uleb128 .Ltmp195-.Ltmp193              #   Call between .Ltmp193 and .Ltmp195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin5         # >> Call Site 107 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin5         #     jumps to .Ltmp197
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp196-.Lfunc_begin5         # >> Call Site 108 <<
	.uleb128 .Ltmp429-.Ltmp196              #   Call between .Ltmp196 and .Ltmp429
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin5         # >> Call Site 109 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp431-.Lfunc_begin5         #     jumps to .Ltmp431
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp432-.Lfunc_begin5         # >> Call Site 110 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin5         #     jumps to .Ltmp434
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp435-.Lfunc_begin5         # >> Call Site 111 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin5         #     jumps to .Ltmp437
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp438-.Lfunc_begin5         # >> Call Site 112 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin5         #     jumps to .Ltmp440
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp441-.Lfunc_begin5         # >> Call Site 113 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin5         #     jumps to .Ltmp443
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp255-.Lfunc_begin5         # >> Call Site 114 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin5         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin5         # >> Call Site 115 <<
	.uleb128 .Ltmp408-.Ltmp256              #   Call between .Ltmp256 and .Ltmp408
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin5         # >> Call Site 116 <<
	.uleb128 .Ltmp409-.Ltmp408              #   Call between .Ltmp408 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin5         #     jumps to .Ltmp410
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp411-.Lfunc_begin5         # >> Call Site 117 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin5         #     jumps to .Ltmp413
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp412-.Lfunc_begin5         # >> Call Site 118 <<
	.uleb128 .Ltmp414-.Ltmp412              #   Call between .Ltmp412 and .Ltmp414
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin5         # >> Call Site 119 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin5         #     jumps to .Ltmp416
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp415-.Lfunc_begin5         # >> Call Site 120 <<
	.uleb128 .Ltmp417-.Ltmp415              #   Call between .Ltmp415 and .Ltmp417
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin5         # >> Call Site 121 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin5         #     jumps to .Ltmp419
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp418-.Lfunc_begin5         # >> Call Site 122 <<
	.uleb128 .Ltmp420-.Ltmp418              #   Call between .Ltmp418 and .Ltmp420
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin5         # >> Call Site 123 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin5         #     jumps to .Ltmp422
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp423-.Lfunc_begin5         # >> Call Site 124 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.uleb128 .Ltmp425-.Lfunc_begin5         #     jumps to .Ltmp425
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp426-.Lfunc_begin5         # >> Call Site 125 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin5         #     jumps to .Ltmp428
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp427-.Lfunc_begin5         # >> Call Site 126 <<
	.uleb128 .Ltmp329-.Ltmp427              #   Call between .Ltmp427 and .Ltmp329
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin5         # >> Call Site 127 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin5         #     jumps to .Ltmp331
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp330-.Lfunc_begin5         # >> Call Site 128 <<
	.uleb128 .Ltmp372-.Ltmp330              #   Call between .Ltmp330 and .Ltmp372
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin5         # >> Call Site 129 <<
	.uleb128 .Ltmp373-.Ltmp372              #   Call between .Ltmp372 and .Ltmp373
	.uleb128 .Ltmp374-.Lfunc_begin5         #     jumps to .Ltmp374
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp373-.Lfunc_begin5         # >> Call Site 130 <<
	.uleb128 .Ltmp294-.Ltmp373              #   Call between .Ltmp373 and .Ltmp294
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin5         # >> Call Site 131 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin5         #     jumps to .Ltmp296
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp295-.Lfunc_begin5         # >> Call Site 132 <<
	.uleb128 .Ltmp216-.Ltmp295              #   Call between .Ltmp295 and .Ltmp216
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin5         # >> Call Site 133 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin5         #     jumps to .Ltmp218
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp217-.Lfunc_begin5         # >> Call Site 134 <<
	.uleb128 .Ltmp207-.Ltmp217              #   Call between .Ltmp217 and .Ltmp207
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin5         # >> Call Site 135 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin5         #     jumps to .Ltmp209
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp208-.Lfunc_begin5         # >> Call Site 136 <<
	.uleb128 .Ltmp150-.Ltmp208              #   Call between .Ltmp208 and .Ltmp150
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin5         # >> Call Site 137 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin5         #     jumps to .Ltmp152
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp151-.Lfunc_begin5         # >> Call Site 138 <<
	.uleb128 .Ltmp159-.Ltmp151              #   Call between .Ltmp151 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin5         # >> Call Site 139 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin5         #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp160-.Lfunc_begin5         # >> Call Site 140 <<
	.uleb128 .Ltmp393-.Ltmp160              #   Call between .Ltmp160 and .Ltmp393
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin5         # >> Call Site 141 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin5         #     jumps to .Ltmp395
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp394-.Lfunc_begin5         # >> Call Site 142 <<
	.uleb128 .Ltmp189-.Ltmp394              #   Call between .Ltmp394 and .Ltmp189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin5         # >> Call Site 143 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin5         #     jumps to .Ltmp191
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp190-.Lfunc_begin5         # >> Call Site 144 <<
	.uleb128 .Ltmp396-.Ltmp190              #   Call between .Ltmp190 and .Ltmp396
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin5         # >> Call Site 145 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin5         #     jumps to .Ltmp398
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp397-.Lfunc_begin5         # >> Call Site 146 <<
	.uleb128 .Ltmp58-.Ltmp397               #   Call between .Ltmp397 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin5          # >> Call Site 147 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin5          #     jumps to .Ltmp60
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp399-.Lfunc_begin5         # >> Call Site 148 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin5         #     jumps to .Ltmp401
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp400-.Lfunc_begin5         # >> Call Site 149 <<
	.uleb128 .Lfunc_end17-.Ltmp400          #   Call between .Ltmp400 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip11COutArchiveD2Ev,"axG",@progbits,_ZN8NArchive4NZip11COutArchiveD2Ev,comdat
	.weak	_ZN8NArchive4NZip11COutArchiveD2Ev # -- Begin function _ZN8NArchive4NZip11COutArchiveD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip11COutArchiveD2Ev,@function
_ZN8NArchive4NZip11COutArchiveD2Ev:     # @_ZN8NArchive4NZip11COutArchiveD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $a0, 8
.Ltmp444:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB18_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp447:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp448:                               # EH_LABEL
.LBB18_3:                               # %_ZN10COutBufferD2Ev.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp450:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp451:                               # EH_LABEL
.LBB18_5:                               # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB18_6:
.Ltmp452:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB18_7:
.Ltmp449:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB18_8:
.Ltmp446:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN8NArchive4NZip11COutArchiveD2Ev, .Lfunc_end18-_ZN8NArchive4NZip11COutArchiveD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip11COutArchiveD2Ev,"aG",@progbits,_ZN8NArchive4NZip11COutArchiveD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp444-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin6         #     jumps to .Ltmp446
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp447-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.uleb128 .Ltmp449-.Lfunc_begin6         #     jumps to .Ltmp449
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp450-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin6         #     jumps to .Ltmp452
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp451-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Lfunc_end18-.Ltmp451          #   Call between .Ltmp451 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB19_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB19_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB19_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB19_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB19_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB19_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB19_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB19_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB19_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB19_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB19_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB19_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB19_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB19_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB19_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB19_17
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
.LBB19_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end19:
	.size	_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv, .Lfunc_end19-_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NZip17CMtProgressMixer26AddRefEv,"axG",@progbits,_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv,comdat
	.weak	_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer26AddRefEv
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv,@function
_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv: # @_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end20:
	.size	_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv, .Lfunc_end20-_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv,"axG",@progbits,_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv,comdat
	.weak	_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv,@function
_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv: # @_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB21_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB21_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end21:
	.size	_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv, .Lfunc_end21-_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive4NZip17CMtProgressMixer2D2Ev,"axG",@progbits,_ZN8NArchive4NZip17CMtProgressMixer2D2Ev,comdat
	.weak	_ZN8NArchive4NZip17CMtProgressMixer2D2Ev # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer2D2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer2D2Ev,@function
_ZN8NArchive4NZip17CMtProgressMixer2D2Ev: # @_ZN8NArchive4NZip17CMtProgressMixer2D2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NZip17CMtProgressMixer2E+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive4NZip17CMtProgressMixer2E+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB22_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp453:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp454:                               # EH_LABEL
.LBB22_2:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB22_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp456:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp457:                               # EH_LABEL
.LBB22_4:                               # %_ZN9CMyComPtrI9IProgressED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB22_5:
.Ltmp458:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_6:
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN8NArchive4NZip17CMtProgressMixer2D2Ev, .Lfunc_end22-_ZN8NArchive4NZip17CMtProgressMixer2D2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip17CMtProgressMixer2D2Ev,"aG",@progbits,_ZN8NArchive4NZip17CMtProgressMixer2D2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp453-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp453
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin7         #     jumps to .Ltmp455
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp456-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin7         #     jumps to .Ltmp458
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp457-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Lfunc_end22-.Ltmp457          #   Call between .Ltmp457 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip17CMtProgressMixer2D0Ev,"axG",@progbits,_ZN8NArchive4NZip17CMtProgressMixer2D0Ev,comdat
	.weak	_ZN8NArchive4NZip17CMtProgressMixer2D0Ev # -- Begin function _ZN8NArchive4NZip17CMtProgressMixer2D0Ev
	.p2align	5
	.type	_ZN8NArchive4NZip17CMtProgressMixer2D0Ev,@function
_ZN8NArchive4NZip17CMtProgressMixer2D0Ev: # @_ZN8NArchive4NZip17CMtProgressMixer2D0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NZip17CMtProgressMixer2E+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive4NZip17CMtProgressMixer2E+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB23_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp459:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp460:                               # EH_LABEL
.LBB23_2:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB23_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp462:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp463:                               # EH_LABEL
.LBB23_4:                               # %_ZN8NArchive4NZip17CMtProgressMixer2D2Ev.exit
	ori	$a1, $zero, 120
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB23_5:
.Ltmp464:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_6:
.Ltmp461:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN8NArchive4NZip17CMtProgressMixer2D0Ev, .Lfunc_end23-_ZN8NArchive4NZip17CMtProgressMixer2D0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip17CMtProgressMixer2D0Ev,"aG",@progbits,_ZN8NArchive4NZip17CMtProgressMixer2D0Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp459-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp459
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin8         #     jumps to .Ltmp461
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp462-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin8         #     jumps to .Ltmp464
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp463-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Lfunc_end23-.Ltmp463          #   Call between .Ltmp463 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB24_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB24_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB24_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB24_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB24_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB24_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB24_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB24_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB24_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB24_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB24_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB24_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB24_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB24_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB24_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB24_17
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
.LBB24_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end24:
	.size	_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv, .Lfunc_end24-_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NZip16CMtProgressMixer6AddRefEv,"axG",@progbits,_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv,comdat
	.weak	_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv # -- Begin function _ZN8NArchive4NZip16CMtProgressMixer6AddRefEv
	.p2align	5
	.type	_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv,@function
_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv: # @_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end25:
	.size	_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv, .Lfunc_end25-_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv,"axG",@progbits,_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv,comdat
	.weak	_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv # -- Begin function _ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv
	.p2align	5
	.type	_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv,@function
_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv: # @_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB26_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB26_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end26:
	.size	_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv, .Lfunc_end26-_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive4NZip16CMtProgressMixerD2Ev,"axG",@progbits,_ZN8NArchive4NZip16CMtProgressMixerD2Ev,comdat
	.weak	_ZN8NArchive4NZip16CMtProgressMixerD2Ev # -- Begin function _ZN8NArchive4NZip16CMtProgressMixerD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip16CMtProgressMixerD2Ev,@function
_ZN8NArchive4NZip16CMtProgressMixerD2Ev: # @_ZN8NArchive4NZip16CMtProgressMixerD2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NZip16CMtProgressMixerE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTVN8NArchive4NZip16CMtProgressMixerE+16)
	ld.d	$a0, $a1, 24
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB27_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp465:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp466:                               # EH_LABEL
.LBB27_2:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB27_3:
.Ltmp467:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN8NArchive4NZip16CMtProgressMixerD2Ev, .Lfunc_end27-_ZN8NArchive4NZip16CMtProgressMixerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip16CMtProgressMixerD2Ev,"aG",@progbits,_ZN8NArchive4NZip16CMtProgressMixerD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp465-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin9         #     jumps to .Ltmp467
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp466-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end27-.Ltmp466          #   Call between .Ltmp466 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip16CMtProgressMixerD0Ev,"axG",@progbits,_ZN8NArchive4NZip16CMtProgressMixerD0Ev,comdat
	.weak	_ZN8NArchive4NZip16CMtProgressMixerD0Ev # -- Begin function _ZN8NArchive4NZip16CMtProgressMixerD0Ev
	.p2align	5
	.type	_ZN8NArchive4NZip16CMtProgressMixerD0Ev,@function
_ZN8NArchive4NZip16CMtProgressMixerD0Ev: # @_ZN8NArchive4NZip16CMtProgressMixerD0Ev
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
	pcalau12i	$a1, %pc_hi20(_ZTVN8NArchive4NZip16CMtProgressMixerE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTVN8NArchive4NZip16CMtProgressMixerE+16)
	ld.d	$a1, $a0, 24
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB28_2
# %bb.1:
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp468:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $fp
.Ltmp469:                               # EH_LABEL
.LBB28_2:                               # %_ZN8NArchive4NZip16CMtProgressMixerD2Ev.exit
	ori	$a1, $zero, 32
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB28_3:
.Ltmp470:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN8NArchive4NZip16CMtProgressMixerD0Ev, .Lfunc_end28-_ZN8NArchive4NZip16CMtProgressMixerD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip16CMtProgressMixerD0Ev,"aG",@progbits,_ZN8NArchive4NZip16CMtProgressMixerD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp468-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin10        #     jumps to .Ltmp470
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp469-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end28-.Ltmp469          #   Call between .Ltmp469 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB29_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB29_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB29_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB29_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB29_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB29_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB29_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB29_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB29_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB29_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB29_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB29_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB29_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB29_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB29_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB29_17
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
.LBB29_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end29:
	.size	_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end29-_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NZip15CCacheOutStream6AddRefEv,"axG",@progbits,_ZN8NArchive4NZip15CCacheOutStream6AddRefEv,comdat
	.weak	_ZN8NArchive4NZip15CCacheOutStream6AddRefEv # -- Begin function _ZN8NArchive4NZip15CCacheOutStream6AddRefEv
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream6AddRefEv,@function
_ZN8NArchive4NZip15CCacheOutStream6AddRefEv: # @_ZN8NArchive4NZip15CCacheOutStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end30:
	.size	_ZN8NArchive4NZip15CCacheOutStream6AddRefEv, .Lfunc_end30-_ZN8NArchive4NZip15CCacheOutStream6AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive4NZip15CCacheOutStream7ReleaseEv,"axG",@progbits,_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv,comdat
	.weak	_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv # -- Begin function _ZN8NArchive4NZip15CCacheOutStream7ReleaseEv
	.p2align	5
	.type	_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv,@function
_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv: # @_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
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
	.size	_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv, .Lfunc_end31-_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_,"axG",@progbits,_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_,comdat
	.weak	_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_ # -- Begin function _ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_
	.p2align	5
	.type	_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_,@function
_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_: # @_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_
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
	blez	$s1, .LBB32_3
# %bb.1:                                # %.lr.ph.i.i
	move	$s2, $zero
	.p2align	4, , 16
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.b	$s3, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$a1, $fp, 12
	stx.b	$s3, $a0, $a1
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 1
	st.w	$a0, $fp, 12
	bne	$s1, $s2, .LBB32_2
.LBB32_3:                               # %_ZN13CRecordVectorIhEaSERKS0_.exit
	beq	$s0, $fp, .LBB32_6
# %bb.4:
	st.w	$zero, $fp, 40
	ld.d	$s2, $fp, 32
	ld.w	$a0, $s0, 40
	ld.w	$s4, $fp, 44
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB32_7
# %bb.5:
	move	$s1, $s2
	b	.LBB32_11
.LBB32_6:                               # %_ZN11CStringBaseIwEaSERKS0_.exit.thread
	ld.d	$a0, $s0, 77
	st.d	$a0, $fp, 77
	vld	$vr0, $s0, 64
	vst	$vr0, $fp, 64
	vld	$vr0, $s0, 48
	vst	$vr0, $fp, 48
	b	.LBB32_36
.LBB32_7:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB32_9
# %bb.8:                                # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	b	.LBB32_10
.LBB32_9:
	move	$a0, $zero
.LBB32_10:
	st.d	$s1, $fp, 32
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 44
.LBB32_11:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 32
	.p2align	4, , 16
.LBB32_12:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB32_12
# %bb.13:
	ld.w	$a0, $s0, 40
	st.w	$a0, $fp, 40
	vld	$vr0, $s0, 48
	vst	$vr0, $fp, 48
	vld	$vr0, $s0, 64
	vst	$vr0, $fp, 64
	ld.d	$a0, $s0, 77
	ld.d	$a1, $fp, 88
	st.d	$a0, $fp, 77
	st.w	$zero, $fp, 96
	st.b	$zero, $a1, 0
	ld.w	$a0, $s0, 96
	ld.w	$s3, $fp, 100
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB32_15
# %bb.14:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s1, $fp, 88
	b	.LBB32_33
.LBB32_15:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 96
	move	$s1, $a0
	blez	$s3, .LBB32_32
# %bb.16:                               # %.preheader.i.i
	ld.d	$a0, $fp, 88
	blez	$a1, .LBB32_24
# %bb.17:                               # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB32_29
# %bb.18:                               # %iter.check
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB32_29
# %bb.19:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB32_25
# %bb.20:
	move	$a2, $zero
.LBB32_21:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB32_22:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB32_22
# %bb.23:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB32_29
	b	.LBB32_31
.LBB32_24:                              # %._crit_edge.i.i
	bnez	$a0, .LBB32_31
	b	.LBB32_32
.LBB32_25:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB32_26:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB32_26
# %bb.27:                               # %middle.block
	beq	$a2, $a1, .LBB32_31
# %bb.28:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 16
	bnez	$a3, .LBB32_21
.LBB32_29:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB32_30:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB32_30
.LBB32_31:                              # %._crit_edge.thread.i.i9
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 96
.LBB32_32:
	st.d	$s1, $fp, 88
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 100
.LBB32_33:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 88
	.p2align	4, , 16
.LBB32_34:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB32_34
# %bb.35:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i
	ld.w	$a0, $s0, 96
	st.w	$a0, $fp, 96
.LBB32_36:                              # %_ZN11CStringBaseIcEaSERKS0_.exit
	ld.h	$a0, $s0, 104
	st.h	$a0, $fp, 104
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
.Lfunc_end32:
	.size	_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_, .Lfunc_end32-_ZN8NArchive4NZip22CCompressionMethodModeaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_ # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_,@function
_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_: # @_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIPvE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIPvE+16)
	st.d	$a0, $fp, 0
.Ltmp471:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
# %bb.1:                                # %.noexc.i.i.i.i
	ld.w	$s3, $s1, 12
	ld.w	$a0, $fp, 12
	add.w	$a1, $a0, $s3
.Ltmp473:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
# %bb.2:                                # %.noexc3.i.i.i.i
	blez	$s3, .LBB33_6
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i
	move	$s2, $zero
	slli.d	$s3, $s3, 3
	.p2align	4, , 16
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 16
	ldx.d	$s4, $a0, $s2
.Ltmp476:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp477:                               # EH_LABEL
# %bb.5:                                # %.noexc4.i.i.i.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $fp, 12
	bne	$s3, $s2, .LBB33_4
.LBB33_6:                               # %.loopexit
	ld.d	$a0, $s1, 32
	st.d	$a0, $fp, 32
	ld.b	$a0, $s1, 40
	ld.d	$a1, $s1, 48
	vld	$vr0, $s1, 56
	ld.h	$a2, $s1, 72
	st.b	$a0, $fp, 40
	st.d	$a1, $fp, 48
	vst	$vr0, $fp, 56
	st.h	$a2, $fp, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB33_7:                               # %.loopexit.split-lp.i.i.i.i
.Ltmp475:                               # EH_LABEL
	b	.LBB33_9
.LBB33_8:                               # %.loopexit.i.i.i.i
.Ltmp478:                               # EH_LABEL
.LBB33_9:                               # %.body
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_, .Lfunc_end33-_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE3AddERKS2_,comdat
	.p2align	2, 0x0
GCC_except_table33:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp471-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp471
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp474-.Ltmp471              #   Call between .Ltmp471 and .Ltmp474
	.uleb128 .Ltmp475-.Lfunc_begin11        #     jumps to .Ltmp475
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.uleb128 .Ltmp478-.Lfunc_begin11        #     jumps to .Ltmp478
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Lfunc_end33-.Ltmp477          #   Call between .Ltmp477 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE,"axG",@progbits,_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE,comdat
	.weak	_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE # -- Begin function _ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE
	.p2align	5
	.type	_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE,@function
_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE: # @_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE
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
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	st.w	$zero, $a0, 8
	addi.d	$s0, $a0, 16
	st.w	$zero, $a0, 16
	st.d	$zero, $a0, 128
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE+16)
	st.d	$a0, $fp, 120
	st.b	$zero, $fp, 144
	addi.d	$a0, $fp, 192
	st.d	$zero, $fp, 152
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 160
	vst	$vr0, $fp, 176
.Ltmp479:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonC1ERKNS0_22CCompressionMethodModeE)
	jirl	$ra, $ra, 0
.Ltmp480:                               # EH_LABEL
# %bb.1:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB34_2:
.Ltmp481:                               # EH_LABEL
	ld.d	$a1, $fp, 184
	move	$s1, $a0
	beqz	$a1, .LBB34_4
# %bb.3:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp482:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp483:                               # EH_LABEL
.LBB34_4:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB34_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp485:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp486:                               # EH_LABEL
.LBB34_6:                               # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB34_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp488:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp489:                               # EH_LABEL
.LBB34_8:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	st.d	$a0, $fp, 120
	st.d	$zero, $fp, 128
.Ltmp491:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp492:                               # EH_LABEL
# %bb.9:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
.Ltmp494:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp495:                               # EH_LABEL
# %bb.10:                               # %_ZN8NWindows7CThreadD2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB34_11:
.Ltmp496:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_12:
.Ltmp490:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_13:
.Ltmp487:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_14:
.Ltmp493:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_15:
.Ltmp484:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE, .Lfunc_end34-_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE,"aG",@progbits,_ZN8NArchive4NZip11CThreadInfoC2ERKNS0_22CCompressionMethodModeE,comdat
	.p2align	2, 0x0
GCC_except_table34:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp479-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp480-.Ltmp479              #   Call between .Ltmp479 and .Ltmp480
	.uleb128 .Ltmp481-.Lfunc_begin12        #     jumps to .Ltmp481
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp482-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp483-.Ltmp482              #   Call between .Ltmp482 and .Ltmp483
	.uleb128 .Ltmp484-.Lfunc_begin12        #     jumps to .Ltmp484
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp485-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp486-.Ltmp485              #   Call between .Ltmp485 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin12        #     jumps to .Ltmp487
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp488-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp489-.Ltmp488              #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp490-.Lfunc_begin12        #     jumps to .Ltmp490
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp491-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp492-.Ltmp491              #   Call between .Ltmp491 and .Ltmp492
	.uleb128 .Ltmp493-.Lfunc_begin12        #     jumps to .Ltmp493
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp494-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Ltmp495-.Ltmp494              #   Call between .Ltmp494 and .Ltmp495
	.uleb128 .Ltmp496-.Lfunc_begin12        #     jumps to .Ltmp496
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp495-.Lfunc_begin12        # >> Call Site 7 <<
	.uleb128 .Lfunc_end34-.Ltmp495          #   Call between .Ltmp495 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip11CThreadInfoD2Ev,"axG",@progbits,_ZN8NArchive4NZip11CThreadInfoD2Ev,comdat
	.weak	_ZN8NArchive4NZip11CThreadInfoD2Ev # -- Begin function _ZN8NArchive4NZip11CThreadInfoD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip11CThreadInfoD2Ev,@function
_ZN8NArchive4NZip11CThreadInfoD2Ev:     # @_ZN8NArchive4NZip11CThreadInfoD2Ev
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
	addi.d	$a0, $a0, 192
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB35_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp497:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp498:                               # EH_LABEL
.LBB35_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB35_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp500:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp501:                               # EH_LABEL
.LBB35_4:                               # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB35_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp503:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp504:                               # EH_LABEL
.LBB35_6:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	st.d	$a0, $fp, 120
	st.d	$zero, $fp, 128
	addi.d	$a0, $fp, 16
.Ltmp506:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp507:                               # EH_LABEL
# %bb.7:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
.Ltmp509:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp510:                               # EH_LABEL
# %bb.8:                                # %_ZN8NWindows7CThreadD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB35_9:
.Ltmp505:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB35_10:
.Ltmp502:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB35_11:
.Ltmp499:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB35_12:
.Ltmp511:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB35_13:
.Ltmp508:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN8NArchive4NZip11CThreadInfoD2Ev, .Lfunc_end35-_ZN8NArchive4NZip11CThreadInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip11CThreadInfoD2Ev,"aG",@progbits,_ZN8NArchive4NZip11CThreadInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp497-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp497
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp497-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp498-.Ltmp497              #   Call between .Ltmp497 and .Ltmp498
	.uleb128 .Ltmp499-.Lfunc_begin13        #     jumps to .Ltmp499
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp500-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp501-.Ltmp500              #   Call between .Ltmp500 and .Ltmp501
	.uleb128 .Ltmp502-.Lfunc_begin13        #     jumps to .Ltmp502
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp503-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp504-.Ltmp503              #   Call between .Ltmp503 and .Ltmp504
	.uleb128 .Ltmp505-.Lfunc_begin13        #     jumps to .Ltmp505
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp506-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Ltmp507-.Ltmp506              #   Call between .Ltmp506 and .Ltmp507
	.uleb128 .Ltmp508-.Lfunc_begin13        #     jumps to .Ltmp508
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp509-.Lfunc_begin13        # >> Call Site 6 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp511-.Lfunc_begin13        #     jumps to .Ltmp511
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp510-.Lfunc_begin13        # >> Call Site 7 <<
	.uleb128 .Lfunc_end35-.Ltmp510          #   Call between .Ltmp510 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
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
	.p2align	5                               # -- Begin function _ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE
	.type	_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE,@function
_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE: # @_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE
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
	move	$s3, $a2
	ld.d	$a2, $a2, 24
	ld.bu	$a4, $s3, 1
	move	$fp, $a3
	move	$s0, $a1
	move	$s1, $a0
	st.d	$a2, $a3, 24
	st.h	$zero, $a3, 2
	beqz	$a4, .LBB36_4
# %bb.1:
	ld.bu	$s2, $s3, 2
	beq	$s3, $fp, .LBB36_26
# %bb.2:
	ld.d	$a0, $fp, 32
	st.w	$zero, $fp, 40
	st.b	$zero, $a0, 0
	ld.w	$a0, $s3, 40
	ld.w	$s6, $fp, 44
	addi.w	$s5, $a0, 1
	bne	$s5, $s6, .LBB36_5
# %bb.3:                                # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s4, $fp, 32
	b	.LBB36_23
.LBB36_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK8NArchive4NZip5CItem5IsDirEv)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB36_27
.LBB36_5:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	move	$s4, $a0
	blez	$s6, .LBB36_22
# %bb.6:                                # %.preheader.i.i
	ld.d	$a0, $fp, 32
	blez	$a1, .LBB36_14
# %bb.7:                                # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB36_19
# %bb.8:                                # %iter.check
	sub.d	$a3, $s4, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB36_19
# %bb.9:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB36_15
# %bb.10:
	move	$a2, $zero
.LBB36_11:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s4, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB36_12:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB36_12
# %bb.13:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB36_19
	b	.LBB36_21
.LBB36_14:                              # %._crit_edge.i.i
	bnez	$a0, .LBB36_21
	b	.LBB36_22
.LBB36_15:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s4, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB36_16:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB36_16
# %bb.17:                               # %middle.block
	beq	$a2, $a1, .LBB36_21
# %bb.18:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 16
	bnez	$a3, .LBB36_11
.LBB36_19:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s4, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB36_20:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB36_20
.LBB36_21:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
.LBB36_22:
	st.d	$s4, $fp, 32
	stx.b	$zero, $s4, $a1
	st.w	$s5, $fp, 44
.LBB36_23:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a0, $s3, 32
	.p2align	4, , 16
.LBB36_24:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s4, 1
	st.b	$a1, $s4, 0
	move	$s4, $a2
	bnez	$a1, .LBB36_24
# %bb.25:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i
	ld.w	$a0, $s3, 40
	st.w	$a0, $fp, 40
.LBB36_26:                              # %_ZN11CStringBaseIcEaSERKS0_.exit
	ld.bu	$a1, $s3, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CLocalItem7SetUtf8Eb)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 16
	ld.w	$a1, $s3, 20
	st.w	$a0, $fp, 84
	st.w	$a1, $fp, 8
	ld.d	$a0, $s3, 48
	st.d	$a0, $fp, 96
	ld.d	$a0, $s3, 56
	st.d	$a0, $fp, 104
	ld.d	$a0, $s3, 64
	st.d	$a0, $fp, 112
	ld.b	$a0, $s3, 3
	st.b	$a0, $fp, 178
.LBB36_27:
	ld.d	$a0, $s1, 64
	st.d	$a0, $fp, 88
	ori	$a0, $zero, 831
	st.w	$a0, $fp, 80
	ori	$a0, $zero, 3
	st.b	$a0, $fp, 1
	ld.b	$a0, $s0, 84
	xori	$s0, $s2, 1
	and	$a1, $s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CLocalItem12SetEncryptedEb)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB36_29
# %bb.28:
	ori	$a0, $zero, 20
	st.b	$a0, $fp, 0
	st.h	$zero, $fp, 4
	st.d	$zero, $fp, 16
	st.w	$zero, $fp, 12
.LBB36_29:
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
	ret
.Lfunc_end36:
	.size	_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE, .Lfunc_end36-_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE
	.type	_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE,@function
_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE: # @_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	move	$s3, $a2
	move	$s4, $a1
	move	$s0, $a0
	ld.b	$a0, $a0, 22
	ld.h	$a1, $s0, 20
	ld.w	$a2, $s0, 16
	vld	$vr0, $s0, 0
	st.b	$a0, $a3, 0
	st.h	$a1, $a3, 4
	st.w	$a2, $a3, 12
	vshuf4i.d	$vr0, $vr0, 1
	vst	$vr0, $a3, 16
	addi.d	$s2, $a3, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 120
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB37_8
# %bb.1:
	ld.h	$s4, $s0, 20
	ori	$a0, $zero, 99
	st.h	$a0, $fp, 4
	st.w	$zero, $fp, 12
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a0, 283664
	ori	$a0, $a0, 2
	st.w	$a0, $s0, 0
	st.b	$s3, $s0, 4
	st.b	$s4, $s0, 5
	srli.d	$a0, $s4, 8
	st.b	$a0, $s0, 6
.Ltmp512:                               # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp513:                               # EH_LABEL
# %bb.2:                                # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
	move	$s3, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 2305
	st.h	$s4, $s3, 0
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$s5, $s3, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s3, 16
.Ltmp514:                               # EH_LABEL
	ori	$a0, $zero, 7
	ori	$s6, $zero, 7
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp515:                               # EH_LABEL
# %bb.3:                                # %_ZN8NArchive4NZip14CExtraSubBlockC2ERKS1_.exit.i
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s0, 3
	st.d	$a0, $s3, 24
	st.d	$s6, $s3, 16
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 3
.Ltmp517:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
# %bb.4:
	ld.w	$a0, $fp, 60
	ld.d	$a1, $fp, 64
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 60
.Ltmp519:                               # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.5:                                # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i23
	move	$s2, $a0
	st.h	$s4, $a0, 0
	st.d	$s5, $a0, 8
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
.Ltmp521:                               # EH_LABEL
	ori	$a0, $zero, 7
	ori	$s3, $zero, 7
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp522:                               # EH_LABEL
# %bb.6:                                # %_ZN8NArchive4NZip14CExtraSubBlockC2ERKS1_.exit.i25
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s0, 3
	st.d	$a0, $s2, 24
	st.d	$s3, $s2, 16
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 3
.Ltmp524:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp525:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit
	ld.w	$a0, $fp, 132
	ld.d	$a1, $fp, 136
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 132
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB37_8:
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
.LBB37_9:
.Ltmp523:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s2
	b	.LBB37_11
.LBB37_10:
.Ltmp516:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s3
.LBB37_11:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB37_12:                              # %.body.thread53
.Ltmp526:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE, .Lfunc_end37-_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table37:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp512-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp512
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp512-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp513-.Ltmp512              #   Call between .Ltmp512 and .Ltmp513
	.uleb128 .Ltmp526-.Lfunc_begin14        #     jumps to .Ltmp526
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp515-.Ltmp514              #   Call between .Ltmp514 and .Ltmp515
	.uleb128 .Ltmp516-.Lfunc_begin14        #     jumps to .Ltmp516
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp517-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp520-.Ltmp517              #   Call between .Ltmp517 and .Ltmp520
	.uleb128 .Ltmp526-.Lfunc_begin14        #     jumps to .Ltmp526
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp523-.Lfunc_begin14        #     jumps to .Ltmp523
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp524-.Lfunc_begin14        # >> Call Site 6 <<
	.uleb128 .Ltmp525-.Ltmp524              #   Call between .Ltmp524 and .Ltmp525
	.uleb128 .Ltmp526-.Lfunc_begin14        #     jumps to .Ltmp526
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin14        # >> Call Site 7 <<
	.uleb128 .Lfunc_end37-.Ltmp525          #   Call between .Ltmp525 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13COutMemStream12SetOutStreamEP10IOutStream,"axG",@progbits,_ZN13COutMemStream12SetOutStreamEP10IOutStream,comdat
	.weak	_ZN13COutMemStream12SetOutStreamEP10IOutStream # -- Begin function _ZN13COutMemStream12SetOutStreamEP10IOutStream
	.p2align	5
	.type	_ZN13COutMemStream12SetOutStreamEP10IOutStream,@function
_ZN13COutMemStream12SetOutStreamEP10IOutStream: # @_ZN13COutMemStream12SetOutStreamEP10IOutStream
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
	beqz	$a1, .LBB38_2
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB38_2:
	ld.d	$a0, $s0, 160
	beqz	$a0, .LBB38_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB38_4:                               # %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit
	st.d	$fp, $s0, 160
	beqz	$fp, .LBB38_6
# %bb.5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB38_6:
	ld.d	$a0, $s0, 152
	beqz	$a0, .LBB38_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB38_8:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit
	st.d	$fp, $s0, 152
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end38:
	.size	_ZN13COutMemStream12SetOutStreamEP10IOutStream, .Lfunc_end38-_ZN13COutMemStream12SetOutStreamEP10IOutStream
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13COutMemStream17SetRealStreamModeEv,"axG",@progbits,_ZN13COutMemStream17SetRealStreamModeEv,comdat
	.weak	_ZN13COutMemStream17SetRealStreamModeEv # -- Begin function _ZN13COutMemStream17SetRealStreamModeEv
	.p2align	5
	.type	_ZN13COutMemStream17SetRealStreamModeEv,@function
_ZN13COutMemStream17SetRealStreamModeEv: # @_ZN13COutMemStream17SetRealStreamModeEv
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
	ld.d	$a0, $a0, 80
	ori	$s1, $zero, 1
	st.b	$s1, $fp, 41
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 80
	st.b	$s1, $fp, 89
	addi.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(pthread_cond_broadcast)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(pthread_mutex_unlock)
	jr	$t8
.Lfunc_end39:
	.size	_ZN13COutMemStream17SetRealStreamModeEv, .Lfunc_end39-_ZN13COutMemStream17SetRealStreamModeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13COutMemStream16ReleaseOutStreamEv,"axG",@progbits,_ZN13COutMemStream16ReleaseOutStreamEv,comdat
	.weak	_ZN13COutMemStream16ReleaseOutStreamEv # -- Begin function _ZN13COutMemStream16ReleaseOutStreamEv
	.p2align	5
	.type	_ZN13COutMemStream16ReleaseOutStreamEv,@function
_ZN13COutMemStream16ReleaseOutStreamEv: # @_ZN13COutMemStream16ReleaseOutStreamEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 160
	beqz	$a0, .LBB40_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 160
.LBB40_2:                               # %_ZN9CMyComPtrI10IOutStreamE7ReleaseEv.exit
	ld.d	$a0, $fp, 152
	beqz	$a0, .LBB40_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 152
.LBB40_4:                               # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end40:
	.size	_ZN13COutMemStream16ReleaseOutStreamEv, .Lfunc_end40-_ZN13COutMemStream16ReleaseOutStreamEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy
	.type	_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy,@function
_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy: # @_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy
	.cfi_startproc
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
	ld.bu	$a6, $a2, 1
	move	$s0, $a5
	move	$s1, $a3
	move	$fp, $a0
	beqz	$a6, .LBB41_5
# %bb.1:
	ld.hu	$a0, $s1, 2
	andi	$a0, $a0, 8
	bnez	$a0, .LBB41_7
# %bb.2:
	ld.d	$a0, $s1, 88
	ld.wu	$a3, $s1, 180
	ld.hu	$a5, $s1, 184
	ld.d	$a6, $s1, 16
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 16
	st.d	$a6, $sp, 24
	beq	$a2, $s1, .LBB41_30
# %bb.3:
	ld.d	$a0, $s1, 32
	st.w	$zero, $s1, 40
	st.b	$zero, $a0, 0
	ld.w	$a0, $a2, 40
	ld.w	$s7, $s1, 44
	addi.w	$s3, $a0, 1
	bne	$s3, $s7, .LBB41_8
# %bb.4:                                # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s2, $s1, 32
	b	.LBB41_27
.LBB41_5:
	ld.w	$a0, $s1, 180
	ld.hu	$a2, $s1, 184
	add.d	$a0, $a0, $a2
	ld.d	$a2, $s1, 16
	ld.hu	$a3, $s1, 2
	ld.d	$a5, $s1, 88
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $a2, $a0
	slli.d	$a2, $a3, 1
	andi	$a2, $a2, 16
	ld.d	$a3, $fp, 64
	add.d	$a0, $a0, $a2
	st.d	$a5, $sp, 16
	st.d	$a0, $sp, 24
	st.d	$a3, $s1, 88
	addi.d	$a2, $sp, 16
	move	$a0, $a1
	move	$a1, $fp
	move	$a3, $a4
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB41_42
# %bb.6:                                # %.thread64
	ld.d	$a1, $sp, 24
	ld.d	$a0, $s0, 0
	add.d	$a0, $a0, $a1
	st.d	$a0, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive16MoveBasePositionEy)
	jirl	$ra, $ra, 0
	b	.LBB41_41
.LBB41_7:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	b	.LBB41_42
.LBB41_8:
	move	$s4, $a2
	move	$s5, $a1
	move	$s6, $a4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 40
	move	$s2, $a0
	blez	$s7, .LBB41_17
# %bb.9:                                # %.preheader.i.i
	ld.d	$a0, $s1, 32
	blez	$a3, .LBB41_18
# %bb.10:                               # %iter.check
	ori	$a2, $zero, 16
	move	$a1, $zero
	bltu	$a3, $a2, .LBB41_23
# %bb.11:                               # %iter.check
	sub.d	$a2, $s2, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a2, .LBB41_23
# %bb.12:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 32
	bgeu	$a3, $a1, .LBB41_19
# %bb.13:
	move	$a1, $zero
.LBB41_14:                              # %vec.epilog.ph
	move	$a5, $a1
	bstrpick.d	$a1, $a3, 30, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a5, $a1
	add.d	$a4, $s2, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB41_15:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB41_15
# %bb.16:                               # %vec.epilog.middle.block
	bne	$a1, $a3, .LBB41_23
	b	.LBB41_25
.LBB41_17:
	move	$a4, $s6
	move	$a1, $s5
	move	$a2, $s4
	b	.LBB41_26
.LBB41_18:                              # %._crit_edge.i.i
	move	$a4, $s6
	move	$a1, $s5
	move	$a2, $s4
	bnez	$a0, .LBB41_25
	b	.LBB41_26
.LBB41_19:                              # %vector.ph
	bstrpick.d	$a1, $a3, 30, 5
	slli.d	$a1, $a1, 5
	addi.d	$a2, $s2, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB41_20:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a5, $a5, -32
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB41_20
# %bb.21:                               # %middle.block
	beq	$a1, $a3, .LBB41_25
# %bb.22:                               # %vec.epilog.iter.check
	andi	$a2, $a3, 16
	bnez	$a2, .LBB41_14
.LBB41_23:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $a3, $a1
	add.d	$a3, $s2, $a1
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB41_24:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB41_24
.LBB41_25:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a2, $s4
	move	$a1, $s5
	move	$a4, $s6
	ld.w	$a3, $s1, 40
.LBB41_26:
	st.d	$s2, $s1, 32
	stx.b	$zero, $s2, $a3
	st.w	$s3, $s1, 44
.LBB41_27:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a0, $a2, 32
	.p2align	4, , 16
.LBB41_28:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a5, $s2, 1
	st.b	$a3, $s2, 0
	move	$s2, $a5
	bnez	$a3, .LBB41_28
# %bb.29:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i
	ld.w	$a0, $a2, 40
	st.w	$a0, $s1, 40
.LBB41_30:                              # %_ZN11CStringBaseIcEaSERKS0_.exit
	move	$s3, $a1
	move	$s2, $a4
	ld.bu	$a1, $a2, 4
	move	$a0, $s1
	move	$s4, $a2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CLocalItem7SetUtf8Eb)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 20
	st.w	$a0, $s1, 8
	ld.d	$a0, $s4, 48
	st.d	$a0, $s1, 96
	ld.d	$a0, $s4, 56
	st.d	$a0, $s1, 104
	ld.d	$a0, $s4, 64
	st.d	$a0, $s1, 112
	ld.b	$a0, $s4, 3
	st.b	$a0, $s1, 178
	addi.d	$a0, $s1, 120
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 48
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.d	$a2, $s1, 24
	ld.w	$a1, $s1, 60
	ld.d	$a3, $s1, 16
	blez	$a1, .LBB41_38
# %bb.31:                               # %.lr.ph.i.i58
	ld.d	$a4, $s1, 64
	lu12i.w	$a5, 9
	ori	$a5, $a5, 2305
	ori	$a6, $zero, 7
	ori	$a7, $zero, 65
	ori	$t0, $zero, 69
	b	.LBB41_33
	.p2align	4, , 16
.LBB41_32:                              #   in Loop: Header=BB41_33 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	beqz	$a1, .LBB41_38
.LBB41_33:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a4, 0
	ld.hu	$t2, $t1, 0
	bne	$t2, $a5, .LBB41_32
# %bb.34:                               #   in Loop: Header=BB41_33 Depth=1
	ld.d	$t2, $t1, 16
	bltu	$t2, $a6, .LBB41_32
# %bb.35:                               #   in Loop: Header=BB41_33 Depth=1
	ld.d	$t1, $t1, 24
	ld.bu	$t2, $t1, 2
	bne	$t2, $a7, .LBB41_32
# %bb.36:                               #   in Loop: Header=BB41_33 Depth=1
	ld.bu	$t1, $t1, 3
	bne	$t1, $t0, .LBB41_32
# %bb.37:
	ori	$a4, $zero, 1
	b	.LBB41_39
.LBB41_38:
	move	$a4, $zero
.LBB41_39:                              # %_ZNK8NArchive4NZip11CExtraBlock13HasWzAesFieldEv.exit
	bstrpick.d	$a1, $a0, 15, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive27PrepareWriteCompressedData2Etyyb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$a0, $s1, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive24SeekToPackedDataPositionEv)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	move	$a0, $s3
	move	$a1, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB41_42
# %bb.40:                               # %.thread
	ld.d	$a0, $sp, 24
	ld.d	$a1, $s0, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $s0, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE)
	jirl	$ra, $ra, 0
.LBB41_41:
	move	$a0, $zero
.LBB41_42:
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
.Lfunc_end41:
	.size	_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy, .Lfunc_end41-_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NZip8CThreadsD2Ev,"axG",@progbits,_ZN8NArchive4NZip8CThreadsD2Ev,comdat
	.weak	_ZN8NArchive4NZip8CThreadsD2Ev  # -- Begin function _ZN8NArchive4NZip8CThreadsD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip8CThreadsD2Ev,@function
_ZN8NArchive4NZip8CThreadsD2Ev:         # @_ZN8NArchive4NZip8CThreadsD2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	blez	$a0, .LBB42_9
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	ori	$s4, $zero, 1
	lu12i.w	$a0, -524284
	ori	$s5, $a0, 4
	lu32i.d	$s5, 0
	.p2align	4, , 16
.LBB42_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s0, $a0, $s2
	ld.d	$s6, $s0, 168
	st.b	$s4, $s0, 144
	beqz	$s6, .LBB42_4
# %bb.3:                                #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $s6, 56
	st.w	$s5, $s6, 96
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, 56
	st.b	$s4, $s6, 65
	addi.d	$a0, $s1, 40
	pcaddu18i	$ra, %call36(pthread_cond_broadcast)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
.LBB42_4:                               #   in Loop: Header=BB42_2 Depth=1
	ld.w	$a0, $s0, 16
	beqz	$a0, .LBB42_6
# %bb.5:                                #   in Loop: Header=BB42_2 Depth=1
.Ltmp527:                               # EH_LABEL
	addi.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.Ltmp528:                               # EH_LABEL
.LBB42_6:                               # %.noexc
                                        #   in Loop: Header=BB42_2 Depth=1
.Ltmp529:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Thread_Wait)
	jirl	$ra, $ra, 0
.Ltmp530:                               # EH_LABEL
# %bb.7:                                # %.noexc3
                                        #   in Loop: Header=BB42_2 Depth=1
.Ltmp531:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.8:                                # %_ZN8NArchive4NZip11CThreadInfo13StopWaitCloseEv.exit
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB42_2
.LBB42_9:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp534:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.10:                               # %_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev.exit
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB42_11:
.Ltmp536:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB42_12:
.Ltmp533:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN8NArchive4NZip8CThreadsD2Ev, .Lfunc_end42-_ZN8NArchive4NZip8CThreadsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip8CThreadsD2Ev,"aG",@progbits,_ZN8NArchive4NZip8CThreadsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp527-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp527
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp532-.Ltmp527              #   Call between .Ltmp527 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin15        #     jumps to .Ltmp533
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp534-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp535-.Ltmp534              #   Call between .Ltmp534 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin15        #     jumps to .Ltmp536
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp535-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Lfunc_end42-.Ltmp535          #   Call between .Ltmp535 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip8CMemRefsD2Ev,"axG",@progbits,_ZN8NArchive4NZip8CMemRefsD2Ev,comdat
	.weak	_ZN8NArchive4NZip8CMemRefsD2Ev  # -- Begin function _ZN8NArchive4NZip8CMemRefsD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip8CMemRefsD2Ev,@function
_ZN8NArchive4NZip8CMemRefsD2Ev:         # @_ZN8NArchive4NZip8CMemRefsD2Ev
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
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.w	$a0, $a0, 20
	blez	$a0, .LBB43_4
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB43_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $fp, 0
.Ltmp537:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10CMemBlocks7FreeOptEP18CMemBlockManagerMt)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.3:                                #   in Loop: Header=BB43_2 Depth=1
	ld.w	$a0, $fp, 20
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB43_2
.LBB43_4:                               # %._crit_edge
	addi.d	$s0, $fp, 8
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	st.d	$a0, $fp, 8
.Ltmp540:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.5:                                # %_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev.exit
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB43_6:
.Ltmp542:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB43_7:
.Ltmp539:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN8NArchive4NZip8CMemRefsD2Ev, .Lfunc_end43-_ZN8NArchive4NZip8CMemRefsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip8CMemRefsD2Ev,"aG",@progbits,_ZN8NArchive4NZip8CMemRefsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp537-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin16        #     jumps to .Ltmp539
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp540-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin16        #     jumps to .Ltmp542
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp541-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Lfunc_end43-.Ltmp541          #   Call between .Ltmp541 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18CMemBlockManagerMtD2Ev,"axG",@progbits,_ZN18CMemBlockManagerMtD2Ev,comdat
	.weak	_ZN18CMemBlockManagerMtD2Ev     # -- Begin function _ZN18CMemBlockManagerMtD2Ev
	.p2align	5
	.type	_ZN18CMemBlockManagerMtD2Ev,@function
_ZN18CMemBlockManagerMtD2Ev:            # @_ZN18CMemBlockManagerMtD2Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp543:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN18CMemBlockManagerMt9FreeSpaceEv)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.1:
	addi.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
.Ltmp546:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16CMemBlockManager9FreeSpaceEv)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.2:                                # %_ZN16CMemBlockManagerD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB44_3:
.Ltmp548:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB44_4:
.Ltmp545:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end44:
	.size	_ZN18CMemBlockManagerMtD2Ev, .Lfunc_end44-_ZN18CMemBlockManagerMtD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18CMemBlockManagerMtD2Ev,"aG",@progbits,_ZN18CMemBlockManagerMtD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table44:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp543-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin17        #     jumps to .Ltmp545
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp544-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp546-.Ltmp544              #   Call between .Ltmp544 and .Ltmp546
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin17        #     jumps to .Ltmp548
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp547-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Lfunc_end44-.Ltmp547          #   Call between .Ltmp547 and .Lfunc_end44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN24CMtCompressProgressMixerD2Ev,"axG",@progbits,_ZN24CMtCompressProgressMixerD2Ev,comdat
	.weak	_ZN24CMtCompressProgressMixerD2Ev # -- Begin function _ZN24CMtCompressProgressMixerD2Ev
	.p2align	5
	.type	_ZN24CMtCompressProgressMixerD2Ev,@function
_ZN24CMtCompressProgressMixerD2Ev:      # @_ZN24CMtCompressProgressMixerD2Ev
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
	addi.d	$a0, $a0, 88
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB45_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp549:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp550:                               # EH_LABEL
.LBB45_2:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB45_3:
.Ltmp551:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	_ZN24CMtCompressProgressMixerD2Ev, .Lfunc_end45-_ZN24CMtCompressProgressMixerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN24CMtCompressProgressMixerD2Ev,"aG",@progbits,_ZN24CMtCompressProgressMixerD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp549-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp549
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin18        #     jumps to .Ltmp551
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp550-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Lfunc_end45-.Ltmp550          #   Call between .Ltmp550 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev: # @_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	st.d	$a0, $fp, 0
.Ltmp552:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB46_2:
.Ltmp554:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end46:
	.size	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev, .Lfunc_end46-_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table46:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp552-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin19        #     jumps to .Ltmp554
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp553-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end46-.Ltmp553          #   Call between .Ltmp553 and .Lfunc_end46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows16NSynchronization8CSynchroD2Ev,"axG",@progbits,_ZN8NWindows16NSynchronization8CSynchroD2Ev,comdat
	.weak	_ZN8NWindows16NSynchronization8CSynchroD2Ev # -- Begin function _ZN8NWindows16NSynchronization8CSynchroD2Ev
	.p2align	5
	.type	_ZN8NWindows16NSynchronization8CSynchroD2Ev,@function
_ZN8NWindows16NSynchronization8CSynchroD2Ev: # @_ZN8NWindows16NSynchronization8CSynchroD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 88
	beqz	$a0, .LBB47_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(pthread_cond_destroy)
	jirl	$ra, $ra, 0
.LBB47_2:
	st.b	$zero, $fp, 88
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end47:
	.size	_ZN8NWindows16NSynchronization8CSynchroD2Ev, .Lfunc_end47-_ZN8NWindows16NSynchronization8CSynchroD2Ev
                                        # -- End function
	.section	.text._ZN8NArchive4NZip22CCompressionMethodModeD2Ev,"axG",@progbits,_ZN8NArchive4NZip22CCompressionMethodModeD2Ev,comdat
	.weak	_ZN8NArchive4NZip22CCompressionMethodModeD2Ev # -- Begin function _ZN8NArchive4NZip22CCompressionMethodModeD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip22CCompressionMethodModeD2Ev,@function
_ZN8NArchive4NZip22CCompressionMethodModeD2Ev: # @_ZN8NArchive4NZip22CCompressionMethodModeD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB48_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB48_2:                               # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB48_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB48_4:                               # %_ZN11CStringBaseIwED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.Lfunc_end48:
	.size	_ZN8NArchive4NZip22CCompressionMethodModeD2Ev, .Lfunc_end48-_ZN8NArchive4NZip22CCompressionMethodModeD2Ev
                                        # -- End function
	.section	.text._ZN8NArchive4NZip10CAddCommonD2Ev,"axG",@progbits,_ZN8NArchive4NZip10CAddCommonD2Ev,comdat
	.weak	_ZN8NArchive4NZip10CAddCommonD2Ev # -- Begin function _ZN8NArchive4NZip10CAddCommonD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip10CAddCommonD2Ev,@function
_ZN8NArchive4NZip10CAddCommonD2Ev:      # @_ZN8NArchive4NZip10CAddCommonD2Ev
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
	ld.d	$a0, $a0, 152
	beqz	$a0, .LBB49_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp555:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp556:                               # EH_LABEL
.LBB49_2:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB49_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp558:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp559:                               # EH_LABEL
.LBB49_4:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB49_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp561:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp562:                               # EH_LABEL
.LBB49_6:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit3
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB49_8
# %bb.7:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB49_8:                               # %_ZN11CStringBaseIcED2Ev.exit.i
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB49_10
# %bb.9:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB49_10:                              # %_ZN8NArchive4NZip22CCompressionMethodModeD2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB49_11:
.Ltmp563:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB49_12:
.Ltmp560:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB49_13:
.Ltmp557:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end49:
	.size	_ZN8NArchive4NZip10CAddCommonD2Ev, .Lfunc_end49-_ZN8NArchive4NZip10CAddCommonD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip10CAddCommonD2Ev,"aG",@progbits,_ZN8NArchive4NZip10CAddCommonD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table49:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp555-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin20        #     jumps to .Ltmp557
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp558-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin20        #     jumps to .Ltmp560
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp561-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Ltmp562-.Ltmp561              #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp563-.Lfunc_begin20        #     jumps to .Ltmp563
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp562-.Lfunc_begin20        # >> Call Site 4 <<
	.uleb128 .Lfunc_end49-.Ltmp562          #   Call between .Ltmp562 and .Lfunc_end49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip11CExtraBlockD2Ev,"axG",@progbits,_ZN8NArchive4NZip11CExtraBlockD2Ev,comdat
	.weak	_ZN8NArchive4NZip11CExtraBlockD2Ev # -- Begin function _ZN8NArchive4NZip11CExtraBlockD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip11CExtraBlockD2Ev,@function
_ZN8NArchive4NZip11CExtraBlockD2Ev:     # @_ZN8NArchive4NZip11CExtraBlockD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 0
.Ltmp564:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp565:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB50_2:
.Ltmp566:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end50:
	.size	_ZN8NArchive4NZip11CExtraBlockD2Ev, .Lfunc_end50-_ZN8NArchive4NZip11CExtraBlockD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip11CExtraBlockD2Ev,"aG",@progbits,_ZN8NArchive4NZip11CExtraBlockD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table50:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp564-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin21        #     jumps to .Ltmp566
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp565-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end50-.Ltmp565          #   Call between .Ltmp565 and .Lfunc_end50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip10CLocalItemD2Ev,"axG",@progbits,_ZN8NArchive4NZip10CLocalItemD2Ev,comdat
	.weak	_ZN8NArchive4NZip10CLocalItemD2Ev # -- Begin function _ZN8NArchive4NZip10CLocalItemD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip10CLocalItemD2Ev,@function
_ZN8NArchive4NZip10CLocalItemD2Ev:      # @_ZN8NArchive4NZip10CLocalItemD2Ev
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
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
	addi.d	$s0, $a0, 48
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 48
.Ltmp567:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp568:                               # EH_LABEL
# %bb.1:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB51_3
# %bb.2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB51_3:                               # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB51_4:
.Ltmp569:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end51:
	.size	_ZN8NArchive4NZip10CLocalItemD2Ev, .Lfunc_end51-_ZN8NArchive4NZip10CLocalItemD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip10CLocalItemD2Ev,"aG",@progbits,_ZN8NArchive4NZip10CLocalItemD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table51:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp567-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp569-.Lfunc_begin22        #     jumps to .Ltmp569
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp568-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end51-.Ltmp568          #   Call between .Ltmp568 and .Lfunc_end51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 0
.Ltmp570:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp571:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB52_2:
.Ltmp572:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end52:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev, .Lfunc_end52-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table52:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp570-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin23        #     jumps to .Ltmp572
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp571-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end52-.Ltmp571          #   Call between .Ltmp571 and .Lfunc_end52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 0
.Ltmp573:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit
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
.LBB53_2:
.Ltmp575:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end53:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev, .Lfunc_end53-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table53:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp573-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp574-.Ltmp573              #   Call between .Ltmp573 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin24        #     jumps to .Ltmp575
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp574-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end53-.Ltmp574          #   Call between .Ltmp574 and .Lfunc_end53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
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
	blez	$s1, .LBB54_7
# %bb.1:                                # %.lr.ph
	slli.d	$s3, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	move	$s5, $zero
	b	.LBB54_4
	.p2align	4, , 16
.LBB54_2:                               # %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit
                                        #   in Loop: Header=BB54_4 Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB54_3:                               #   in Loop: Header=BB54_4 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bgeu	$s5, $s1, .LBB54_7
.LBB54_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s3
	beqz	$s2, .LBB54_3
# %bb.5:                                #   in Loop: Header=BB54_4 Depth=1
	ld.d	$a0, $s2, 24
	st.d	$s4, $s2, 8
	beqz	$a0, .LBB54_2
# %bb.6:                                #   in Loop: Header=BB54_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB54_2
.LBB54_7:                               # %._crit_edge
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
.Lfunc_end54:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii, .Lfunc_end54-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorIPvED0Ev,"axG",@progbits,_ZN13CRecordVectorIPvED0Ev,comdat
	.weak	_ZN13CRecordVectorIPvED0Ev      # -- Begin function _ZN13CRecordVectorIPvED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIPvED0Ev,@function
_ZN13CRecordVectorIPvED0Ev:             # @_ZN13CRecordVectorIPvED0Ev
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
.Lfunc_end55:
	.size	_ZN13CRecordVectorIPvED0Ev, .Lfunc_end55-_ZN13CRecordVectorIPvED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_ # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
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
	move	$fp, $a0
	ld.w	$s1, $a1, 12
	ld.w	$a0, $a0, 12
	add.w	$a1, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB56_6
# %bb.1:                                # %.lr.ph
	slli.d	$s3, $s1, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	move	$s5, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB56_3
	.p2align	4, , 16
.LBB56_2:                               # %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit
                                        #   in Loop: Header=BB56_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s5, $s5, 8
	st.w	$a0, $fp, 12
	beq	$s3, $s5, .LBB56_6
.LBB56_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$s6, $a0, $s5
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.h	$a0, $s6, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s1, 16
	ld.d	$s2, $s6, 16
	st.h	$a0, $s1, 0
	st.d	$s4, $s1, 8
	beqz	$s2, .LBB56_2
# %bb.4:                                # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
                                        #   in Loop: Header=BB56_3 Depth=1
.Ltmp576:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp577:                               # EH_LABEL
# %bb.5:                                # %.noexc.i
                                        #   in Loop: Header=BB56_3 Depth=1
	st.d	$a0, $s1, 24
	ld.d	$a1, $s6, 24
	st.d	$s2, $s1, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB56_2
.LBB56_6:                               # %._crit_edge
	move	$a0, $fp
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
.LBB56_7:
.Ltmp578:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end56:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_, .Lfunc_end56-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,comdat
	.p2align	2, 0x0
GCC_except_table56:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Lfunc_begin25-.Lfunc_begin25  # >> Call Site 1 <<
	.uleb128 .Ltmp576-.Lfunc_begin25        #   Call between .Lfunc_begin25 and .Ltmp576
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin25        #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Lfunc_end56-.Ltmp577          #   Call between .Ltmp577 and .Lfunc_end56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
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
	beqz	$a0, .LBB57_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB57_2:
	ret
.Lfunc_end57:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end57-_ZN7CBufferIhED2Ev
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
	beqz	$a1, .LBB58_2
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
.LBB58_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end58:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end58-_ZN7CBufferIhED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIhED0Ev,"axG",@progbits,_ZN13CRecordVectorIhED0Ev,comdat
	.weak	_ZN13CRecordVectorIhED0Ev       # -- Begin function _ZN13CRecordVectorIhED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIhED0Ev,@function
_ZN13CRecordVectorIhED0Ev:              # @_ZN13CRecordVectorIhED0Ev
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
.Lfunc_end59:
	.size	_ZN13CRecordVectorIhED0Ev, .Lfunc_end59-_ZN13CRecordVectorIhED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev: # @_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE+16)
	st.d	$a0, $fp, 0
.Ltmp579:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit
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
.LBB60_2:
.Ltmp581:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end60:
	.size	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev, .Lfunc_end60-_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table60:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp579-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin26        #     jumps to .Ltmp581
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp580-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Lfunc_end60-.Ltmp580          #   Call between .Ltmp580 and .Lfunc_end60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception27
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB61_11
# %bb.1:                                # %.lr.ph
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	move	$s7, $zero
	b	.LBB61_4
	.p2align	4, , 16
.LBB61_2:                               # %_ZN8NArchive4NZip5CItemD2Ev.exit
                                        #   in Loop: Header=BB61_4 Depth=1
	ori	$a1, $zero, 184
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB61_3:                               #   in Loop: Header=BB61_4 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s4, $s4, 8
	bgeu	$s7, $s1, .LBB61_11
.LBB61_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB61_3
# %bb.5:                                #   in Loop: Header=BB61_4 Depth=1
	ld.d	$a0, $s2, 168
	st.d	$s5, $s2, 152
	beqz	$a0, .LBB61_7
# %bb.6:                                #   in Loop: Header=BB61_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB61_7:                               # %_ZN7CBufferIhED2Ev.exit.i
                                        #   in Loop: Header=BB61_4 Depth=1
	addi.d	$s3, $s2, 120
	st.d	$s6, $s2, 120
.Ltmp582:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.8:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
                                        #   in Loop: Header=BB61_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s2, 48
	st.d	$s6, $s2, 48
.Ltmp585:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.9:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
                                        #   in Loop: Header=BB61_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB61_2
# %bb.10:                               #   in Loop: Header=BB61_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB61_2
.LBB61_11:                              # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
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
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB61_12:
.Ltmp584:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB61_13:
.Ltmp587:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end61:
	.size	_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii, .Lfunc_end61-_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table61:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Lfunc_begin27-.Lfunc_begin27  # >> Call Site 1 <<
	.uleb128 .Ltmp582-.Lfunc_begin27        #   Call between .Lfunc_begin27 and .Ltmp582
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin27        #     jumps to .Ltmp584
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp583-.Lfunc_begin27        # >> Call Site 3 <<
	.uleb128 .Ltmp585-.Ltmp583              #   Call between .Ltmp583 and .Ltmp585
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin27        # >> Call Site 4 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin27        #     jumps to .Ltmp587
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp586-.Lfunc_begin27        # >> Call Site 5 <<
	.uleb128 .Lfunc_end61-.Ltmp586          #   Call between .Ltmp586 and .Lfunc_end61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip5CItemD2Ev,"axG",@progbits,_ZN8NArchive4NZip5CItemD2Ev,comdat
	.weak	_ZN8NArchive4NZip5CItemD2Ev     # -- Begin function _ZN8NArchive4NZip5CItemD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip5CItemD2Ev,@function
_ZN8NArchive4NZip5CItemD2Ev:            # @_ZN8NArchive4NZip5CItemD2Ev
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception28
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
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	ld.d	$a0, $fp, 168
	st.d	$a1, $fp, 152
	beqz	$a0, .LBB62_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB62_2:                               # %_ZN7CBufferIhED2Ev.exit
	addi.d	$s0, $fp, 120
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$s1, $fp, 120
.Ltmp588:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.3:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 48
	st.d	$s1, $fp, 48
.Ltmp591:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.4:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB62_6
# %bb.5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB62_6:                               # %_ZN8NArchive4NZip10CLocalItemD2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB62_7:
.Ltmp593:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB62_8:
.Ltmp590:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end62:
	.size	_ZN8NArchive4NZip5CItemD2Ev, .Lfunc_end62-_ZN8NArchive4NZip5CItemD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip5CItemD2Ev,"aG",@progbits,_ZN8NArchive4NZip5CItemD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table62:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Lfunc_begin28-.Lfunc_begin28  # >> Call Site 1 <<
	.uleb128 .Ltmp588-.Lfunc_begin28        #   Call between .Lfunc_begin28 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin28        #     jumps to .Ltmp590
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp589-.Lfunc_begin28        # >> Call Site 3 <<
	.uleb128 .Ltmp591-.Ltmp589              #   Call between .Ltmp589 and .Ltmp591
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin28        # >> Call Site 4 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin28        #     jumps to .Ltmp593
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp592-.Lfunc_begin28        # >> Call Site 5 <<
	.uleb128 .Lfunc_end62-.Ltmp592          #   Call between .Ltmp592 and .Lfunc_end62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
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
.Lfunc_end63:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end63-_ZN13CRecordVectorIyED0Ev
                                        # -- End function
	.section	.text._ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv,"axG",@progbits,_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv,comdat
	.weak	_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv # -- Begin function _ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv
	.p2align	5
	.type	_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv,@function
_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv: # @_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv
# %bb.0:
	ld.w	$a1, $a0, 16
	blez	$a1, .LBB64_2
# %bb.1:
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, 16
.LBB64_2:
	slt	$a0, $zero, $a1
	ret
.Lfunc_end64:
	.size	_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv, .Lfunc_end64-_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev: # @_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	st.d	$a0, $fp, 0
.Ltmp594:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp595:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB65_2:
.Ltmp596:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end65:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev, .Lfunc_end65-_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table65:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp594-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin29        #     jumps to .Ltmp596
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp595-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Lfunc_end65-.Ltmp595          #   Call between .Ltmp595 and .Lfunc_end65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase23:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev: # @_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE+16)
	st.d	$a0, $fp, 0
.Ltmp597:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev.exit
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
.LBB66_2:
.Ltmp599:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end66:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev, .Lfunc_end66-_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table66:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp597-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin30        #     jumps to .Ltmp599
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp598-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Lfunc_end66-.Ltmp598          #   Call between .Ltmp598 and .Lfunc_end66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase24:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii
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
	blez	$s1, .LBB67_5
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB67_3
	.p2align	4, , 16
.LBB67_2:                               #   in Loop: Header=BB67_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB67_5
.LBB67_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB67_2
# %bb.4:                                #   in Loop: Header=BB67_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB67_2
.LBB67_5:                               # %._crit_edge
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
.Lfunc_end67:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii, .Lfunc_end67-_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev: # @_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception31
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp600:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB68_2:
.Ltmp602:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end68:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev, .Lfunc_end68-_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table68:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp600-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin31        #     jumps to .Ltmp602
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp601-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Lfunc_end68-.Ltmp601          #   Call between .Ltmp601 and .Lfunc_end68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase25:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev: # @_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception32
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp603:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev.exit
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
.LBB69_2:
.Ltmp605:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end69:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev, .Lfunc_end69-_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table69:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp603-.Lfunc_begin32        # >> Call Site 1 <<
	.uleb128 .Ltmp604-.Ltmp603              #   Call between .Ltmp603 and .Ltmp604
	.uleb128 .Ltmp605-.Lfunc_begin32        #     jumps to .Ltmp605
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp604-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Lfunc_end69-.Ltmp604          #   Call between .Ltmp604 and .Lfunc_end69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase26:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii
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
	blez	$s1, .LBB70_5
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB70_3
	.p2align	4, , 16
.LBB70_2:                               #   in Loop: Header=BB70_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB70_5
.LBB70_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB70_2
# %bb.4:                                #   in Loop: Header=BB70_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CThreadInfoD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 408
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB70_2
.LBB70_5:                               # %._crit_edge
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
.Lfunc_end70:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii, .Lfunc_end70-_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev,"axG",@progbits,_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev,comdat
	.weak	_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev # -- Begin function _ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev,@function
_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev: # @_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev
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
.Lfunc_end71:
	.size	_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev, .Lfunc_end71-_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev
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
.Lfunc_end72:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end72-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZN8NArchive4NZip11CThreadInfoC2ERKS1_,"axG",@progbits,_ZN8NArchive4NZip11CThreadInfoC2ERKS1_,comdat
	.weak	_ZN8NArchive4NZip11CThreadInfoC2ERKS1_ # -- Begin function _ZN8NArchive4NZip11CThreadInfoC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive4NZip11CThreadInfoC2ERKS1_,@function
_ZN8NArchive4NZip11CThreadInfoC2ERKS1_: # @_ZN8NArchive4NZip11CThreadInfoC2ERKS1_
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception33
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
	move	$s0, $a1
	move	$fp, $a0
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 128
	st.d	$a0, $fp, 128
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	st.d	$s1, $fp, 120
	ld.h	$a0, $s0, 136
	st.h	$a0, $fp, 136
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE+16)
	st.d	$a0, $fp, 120
	vld	$vr0, $s0, 144
	vst	$vr0, $fp, 144
	ld.d	$a0, $s0, 160
	st.d	$a0, $fp, 160
	beqz	$a0, .LBB73_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp606:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp607:                               # EH_LABEL
.LBB73_2:                               # %_ZN9CMyComPtrI21ICompressProgressInfoEC2ERKS1_.exit
	ld.d	$a0, $s0, 176
	vld	$vr0, $s0, 168
	vst	$vr0, $fp, 168
	beqz	$a0, .LBB73_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp609:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp610:                               # EH_LABEL
.LBB73_4:                               # %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit
	ld.d	$a0, $s0, 184
	st.d	$a0, $fp, 184
	beqz	$a0, .LBB73_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp612:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp613:                               # EH_LABEL
.LBB73_6:                               # %_ZN9CMyComPtrI19ISequentialInStreamEC2ERKS1_.exit
	addi.d	$a0, $fp, 192
	addi.d	$a1, $s0, 192
.Ltmp615:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CAddCommonC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.7:
	ld.d	$a0, $s0, 400
	st.d	$a0, $fp, 400
	vld	$vr0, $s0, 384
	vst	$vr0, $fp, 384
	vld	$vr0, $s0, 368
	vst	$vr0, $fp, 368
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB73_8:
.Ltmp614:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB73_13
.LBB73_9:
.Ltmp611:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB73_15
.LBB73_10:
.Ltmp608:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB73_17
.LBB73_11:
.Ltmp617:                               # EH_LABEL
	ld.d	$a1, $fp, 184
	move	$s0, $a0
	beqz	$a1, .LBB73_13
# %bb.12:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp618:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp619:                               # EH_LABEL
.LBB73_13:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB73_15
# %bb.14:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp621:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp622:                               # EH_LABEL
.LBB73_15:                              # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB73_17
# %bb.16:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp624:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp625:                               # EH_LABEL
.LBB73_17:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	addi.d	$a0, $fp, 16
	st.d	$s1, $fp, 120
	st.d	$zero, $fp, 128
.Ltmp627:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp628:                               # EH_LABEL
# %bb.18:                               # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
.Ltmp630:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.19:                               # %_ZN8NWindows7CThreadD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB73_20:
.Ltmp620:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB73_21:
.Ltmp623:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB73_22:
.Ltmp626:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB73_23:
.Ltmp632:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB73_24:
.Ltmp629:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end73:
	.size	_ZN8NArchive4NZip11CThreadInfoC2ERKS1_, .Lfunc_end73-_ZN8NArchive4NZip11CThreadInfoC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip11CThreadInfoC2ERKS1_,"aG",@progbits,_ZN8NArchive4NZip11CThreadInfoC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table73:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Lfunc_begin33-.Lfunc_begin33  # >> Call Site 1 <<
	.uleb128 .Ltmp606-.Lfunc_begin33        #   Call between .Lfunc_begin33 and .Ltmp606
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin33        # >> Call Site 2 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp608-.Lfunc_begin33        #     jumps to .Ltmp608
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin33        # >> Call Site 3 <<
	.uleb128 .Ltmp610-.Ltmp609              #   Call between .Ltmp609 and .Ltmp610
	.uleb128 .Ltmp611-.Lfunc_begin33        #     jumps to .Ltmp611
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin33        # >> Call Site 4 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp614-.Lfunc_begin33        #     jumps to .Ltmp614
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin33        # >> Call Site 5 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin33        #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin33        # >> Call Site 6 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin33        #     jumps to .Ltmp620
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp621-.Lfunc_begin33        # >> Call Site 7 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin33        #     jumps to .Ltmp623
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp624-.Lfunc_begin33        # >> Call Site 8 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp626-.Lfunc_begin33        #     jumps to .Ltmp626
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp627-.Lfunc_begin33        # >> Call Site 9 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin33        #     jumps to .Ltmp629
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp630-.Lfunc_begin33        # >> Call Site 10 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin33        #     jumps to .Ltmp632
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp631-.Lfunc_begin33        # >> Call Site 11 <<
	.uleb128 .Lfunc_end73-.Ltmp631          #   Call between .Ltmp631 and .Lfunc_end73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end33:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase27:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip10CAddCommonC2ERKS1_,"axG",@progbits,_ZN8NArchive4NZip10CAddCommonC2ERKS1_,comdat
	.weak	_ZN8NArchive4NZip10CAddCommonC2ERKS1_ # -- Begin function _ZN8NArchive4NZip10CAddCommonC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive4NZip10CAddCommonC2ERKS1_,@function
_ZN8NArchive4NZip10CAddCommonC2ERKS1_:  # @_ZN8NArchive4NZip10CAddCommonC2ERKS1_
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception34
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 120
	vld	$vr0, $s0, 112
	vst	$vr0, $fp, 112
	beqz	$a0, .LBB74_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp633:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp634:                               # EH_LABEL
.LBB74_2:                               # %_ZN9CMyComPtrI14ICompressCoderEC2ERKS1_.exit
	ld.d	$a0, $s0, 128
	st.d	$a0, $fp, 128
	beqz	$a0, .LBB74_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp636:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp637:                               # EH_LABEL
.LBB74_4:                               # %_ZN9CMyComPtrI14ICompressCoderEC2ERKS1_.exit15
	vld	$vr0, $s0, 136
	vst	$vr0, $fp, 136
	ld.d	$a0, $s0, 152
	st.d	$a0, $fp, 152
	beqz	$a0, .LBB74_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp639:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp640:                               # EH_LABEL
.LBB74_6:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2ERKS1_.exit
	vld	$vr0, $s0, 160
	vst	$vr0, $fp, 160
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB74_7:
.Ltmp641:                               # EH_LABEL
	ld.d	$a1, $fp, 128
	move	$s0, $a0
	beqz	$a1, .LBB74_11
# %bb.8:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp642:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp643:                               # EH_LABEL
	b	.LBB74_11
.LBB74_9:
.Ltmp644:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB74_10:
.Ltmp638:                               # EH_LABEL
	move	$s0, $a0
.LBB74_11:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB74_15
# %bb.12:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp645:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp646:                               # EH_LABEL
	b	.LBB74_15
.LBB74_13:
.Ltmp647:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB74_14:
.Ltmp635:                               # EH_LABEL
	move	$s0, $a0
.LBB74_15:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip22CCompressionMethodModeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end74:
	.size	_ZN8NArchive4NZip10CAddCommonC2ERKS1_, .Lfunc_end74-_ZN8NArchive4NZip10CAddCommonC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip10CAddCommonC2ERKS1_,"aG",@progbits,_ZN8NArchive4NZip10CAddCommonC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table74:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase28-.Lttbaseref28
.Lttbaseref28:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Lfunc_begin34-.Lfunc_begin34  # >> Call Site 1 <<
	.uleb128 .Ltmp633-.Lfunc_begin34        #   Call between .Lfunc_begin34 and .Ltmp633
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin34        # >> Call Site 2 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin34        #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin34        # >> Call Site 3 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp638-.Lfunc_begin34        #     jumps to .Ltmp638
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin34        # >> Call Site 4 <<
	.uleb128 .Ltmp640-.Ltmp639              #   Call between .Ltmp639 and .Ltmp640
	.uleb128 .Ltmp641-.Lfunc_begin34        #     jumps to .Ltmp641
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin34        # >> Call Site 5 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.uleb128 .Ltmp644-.Lfunc_begin34        #     jumps to .Ltmp644
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp643-.Lfunc_begin34        # >> Call Site 6 <<
	.uleb128 .Ltmp645-.Ltmp643              #   Call between .Ltmp643 and .Ltmp645
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin34        # >> Call Site 7 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin34        #     jumps to .Ltmp647
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp646-.Lfunc_begin34        # >> Call Site 8 <<
	.uleb128 .Lfunc_end74-.Ltmp646          #   Call between .Ltmp646 and .Lfunc_end74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end34:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase28:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,"axG",@progbits,_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,comdat
	.weak	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv # -- Begin function _ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.p2align	5
	.type	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,@function
_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv: # @_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
# %bb.0:
	move	$a1, $a0
	ld.bu	$a0, $a0, 17
	beqz	$a0, .LBB75_3
# %bb.1:
	ld.bu	$a2, $a1, 16
	bnez	$a2, .LBB75_3
# %bb.2:
	st.b	$zero, $a1, 17
.LBB75_3:
	ret
.Lfunc_end75:
	.size	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv, .Lfunc_end75-_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
                                        # -- End function
	.section	.text._ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_,"axG",@progbits,_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_,comdat
	.weak	_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_ # -- Begin function _ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_,@function
_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_: # @_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_
.Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception35
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
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 8
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIhE+16)
	st.d	$a0, $fp, 0
.Ltmp648:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp649:                               # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.w	$s1, $s0, 12
	ld.w	$a0, $fp, 12
	add.w	$a1, $a0, $s1
.Ltmp650:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp651:                               # EH_LABEL
# %bb.2:                                # %.noexc3.i
	blez	$s1, .LBB76_6
# %bb.3:                                # %.lr.ph.i.i.i
	move	$s2, $zero
	.p2align	4, , 16
.LBB76_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.bu	$s3, $a0, $s2
.Ltmp653:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp654:                               # EH_LABEL
# %bb.5:                                # %.noexc4.i
                                        #   in Loop: Header=BB76_4 Depth=1
	ld.d	$a0, $fp, 16
	ld.w	$a1, $fp, 12
	stx.b	$s3, $a0, $a1
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 1
	st.w	$a0, $fp, 12
	bne	$s1, $s2, .LBB76_4
.LBB76_6:                               # %_ZN13CRecordVectorIhEC2ERKS0_.exit
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 32
	ld.wu	$a0, $s0, 40
	addi.d	$s3, $a0, 1
	slli.d	$a1, $s3, 31
	addi.w	$s2, $a0, 0
	bgez	$a1, .LBB76_8
# %bb.7:
	move	$s1, $zero
	b	.LBB76_10
.LBB76_8:
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp656:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp657:                               # EH_LABEL
# %bb.9:                                # %.noexc
	move	$s1, $a0
	st.d	$a0, $fp, 32
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 44
.LBB76_10:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 32
	move	$a1, $zero
	.p2align	4, , 16
.LBB76_11:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s1, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB76_11
# %bb.12:
	st.w	$s2, $fp, 40
	vld	$vr0, $s0, 48
	vst	$vr0, $fp, 48
	vld	$vr0, $s0, 64
	vst	$vr0, $fp, 64
	ld.d	$a0, $s0, 77
	st.d	$a0, $fp, 77
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 88
	ld.wu	$s2, $s0, 96
	addi.d	$s3, $s2, 1
	slli.d	$a0, $s3, 31
	bgez	$a0, .LBB76_14
# %bb.13:
	move	$a0, $zero
	b	.LBB76_16
.LBB76_14:
	addi.w	$a0, $s3, 0
.Ltmp659:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp660:                               # EH_LABEL
# %bb.15:                               # %.noexc12
	st.d	$a0, $fp, 88
	st.b	$zero, $a0, 0
	st.w	$s3, $fp, 100
.LBB76_16:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 88
	.p2align	4, , 16
.LBB76_17:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB76_17
# %bb.18:
	st.w	$s2, $fp, 96
	ld.h	$a0, $s0, 104
	st.h	$a0, $fp, 104
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB76_19:
.Ltmp661:                               # EH_LABEL
	move	$s0, $a0
	beqz	$s1, .LBB76_25
# %bb.20:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB76_21:
.Ltmp658:                               # EH_LABEL
	b	.LBB76_24
.LBB76_22:                              # %.loopexit.split-lp.i
.Ltmp652:                               # EH_LABEL
	b	.LBB76_24
.LBB76_23:                              # %.loopexit.i
.Ltmp655:                               # EH_LABEL
.LBB76_24:                              # %common.resume
	move	$s0, $a0
.LBB76_25:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end76:
	.size	_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_, .Lfunc_end76-_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_,"aG",@progbits,_ZN8NArchive4NZip22CCompressionMethodModeC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table76:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Ltmp648-.Lfunc_begin35        # >> Call Site 1 <<
	.uleb128 .Ltmp651-.Ltmp648              #   Call between .Ltmp648 and .Ltmp651
	.uleb128 .Ltmp652-.Lfunc_begin35        #     jumps to .Ltmp652
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp653-.Lfunc_begin35        # >> Call Site 2 <<
	.uleb128 .Ltmp654-.Ltmp653              #   Call between .Ltmp653 and .Ltmp654
	.uleb128 .Ltmp655-.Lfunc_begin35        #     jumps to .Ltmp655
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp656-.Lfunc_begin35        # >> Call Site 3 <<
	.uleb128 .Ltmp657-.Ltmp656              #   Call between .Ltmp656 and .Ltmp657
	.uleb128 .Ltmp658-.Lfunc_begin35        #     jumps to .Ltmp658
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp659-.Lfunc_begin35        # >> Call Site 4 <<
	.uleb128 .Ltmp660-.Ltmp659              #   Call between .Ltmp659 and .Ltmp660
	.uleb128 .Ltmp661-.Lfunc_begin35        #     jumps to .Ltmp661
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin35        # >> Call Site 5 <<
	.uleb128 .Lfunc_end76-.Ltmp660          #   Call between .Ltmp660 and .Lfunc_end76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end35:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive4NZipL11CoderThreadEPv
	.type	_ZN8NArchive4NZipL11CoderThreadEPv,@function
_ZN8NArchive4NZipL11CoderThreadEPv:     # @_ZN8NArchive4NZipL11CoderThreadEPv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CThreadInfo11WaitAndCodeEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end77:
	.size	_ZN8NArchive4NZipL11CoderThreadEPv, .Lfunc_end77-_ZN8NArchive4NZipL11CoderThreadEPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NZip5CItemaSERKS1_,"axG",@progbits,_ZN8NArchive4NZip5CItemaSERKS1_,comdat
	.weak	_ZN8NArchive4NZip5CItemaSERKS1_ # -- Begin function _ZN8NArchive4NZip5CItemaSERKS1_
	.p2align	5
	.type	_ZN8NArchive4NZip5CItemaSERKS1_,@function
_ZN8NArchive4NZip5CItemaSERKS1_:        # @_ZN8NArchive4NZip5CItemaSERKS1_
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
	move	$fp, $a1
	vld	$vr0, $a1, 16
	move	$s0, $a0
	vst	$vr0, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	beq	$a1, $a0, .LBB78_24
# %bb.1:
	ld.d	$a0, $s0, 32
	st.w	$zero, $s0, 40
	st.b	$zero, $a0, 0
	ld.w	$a0, $fp, 40
	ld.w	$s3, $s0, 44
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB78_3
# %bb.2:                                # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i.i
	ld.d	$s1, $s0, 32
	b	.LBB78_21
.LBB78_3:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 40
	move	$s1, $a0
	blez	$s3, .LBB78_20
# %bb.4:                                # %.preheader.i.i.i
	ld.d	$a0, $s0, 32
	blez	$a1, .LBB78_12
# %bb.5:                                # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB78_17
# %bb.6:                                # %iter.check
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB78_17
# %bb.7:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB78_13
# %bb.8:
	move	$a2, $zero
.LBB78_9:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB78_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB78_10
# %bb.11:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB78_17
	b	.LBB78_19
.LBB78_12:                              # %._crit_edge.i.i.i
	bnez	$a0, .LBB78_19
	b	.LBB78_20
.LBB78_13:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB78_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB78_14
# %bb.15:                               # %middle.block
	beq	$a2, $a1, .LBB78_19
# %bb.16:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 16
	bnez	$a3, .LBB78_9
.LBB78_17:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB78_18:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB78_18
.LBB78_19:                              # %._crit_edge.thread.i.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 40
.LBB78_20:
	st.d	$s1, $s0, 32
	stx.b	$zero, $s1, $a1
	st.w	$s2, $s0, 44
.LBB78_21:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
	ld.d	$a0, $fp, 32
	.p2align	4, , 16
.LBB78_22:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB78_22
# %bb.23:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i.i
	ld.w	$a0, $fp, 40
	st.w	$a0, $s0, 40
.LBB78_24:                              # %_ZN8NArchive4NZip10CLocalItemaSERKS1_.exit
	addi.d	$s1, $s0, 48
	addi.d	$s2, $fp, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$a0, $s0, 80
	vld	$vr0, $fp, 88
	vst	$vr0, $s0, 88
	vld	$vr0, $fp, 104
	vst	$vr0, $s0, 104
	addi.d	$s1, $s0, 120
	addi.d	$s2, $fp, 120
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 168
	beqz	$a0, .LBB78_26
# %bb.25:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB78_26:                              # %_ZN7CBufferIhE4FreeEv.exit.i
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 160
	ld.d	$s1, $fp, 160
	beqz	$s1, .LBB78_28
# %bb.27:                               # %_ZN7CBufferIhE11SetCapacityEm.exit.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 168
	st.d	$s1, $s0, 160
	ld.d	$a2, $fp, 160
	ld.d	$a1, $fp, 168
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB78_28:                              # %_ZN7CBufferIhEaSERKS0_.exit
	ld.b	$a0, $fp, 178
	st.b	$a0, $s0, 178
	ld.h	$a0, $fp, 176
	st.h	$a0, $s0, 176
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end78:
	.size	_ZN8NArchive4NZip5CItemaSERKS1_, .Lfunc_end78-_ZN8NArchive4NZip5CItemaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv,"axG",@progbits,_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv,comdat
	.weak	_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv # -- Begin function _ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv
	.p2align	5
	.type	_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv,@function
_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv: # @_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv
	.cfi_startproc
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
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	ld.w	$s3, $a0, 12
	blez	$s3, .LBB79_12
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	ori	$a3, $zero, 1
	sub.w	$s5, $a3, $s3
	slli.d	$a0, $s3, 3
	addi.d	$s1, $a0, -8
	lu12i.w	$a0, 9
	ori	$a2, $a0, 2305
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s8, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	move	$s0, $s3
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	b	.LBB79_4
	.p2align	4, , 16
.LBB79_2:                               # %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii.exit
                                        #   in Loop: Header=BB79_4 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
.LBB79_3:                               #   in Loop: Header=BB79_4 Depth=1
	addi.w	$s5, $s5, 1
	addi.w	$s3, $s3, -1
	addi.d	$s1, $s1, -8
	bge	$a3, $s4, .LBB79_12
.LBB79_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_9 Depth 2
	ld.d	$a0, $fp, 16
	move	$s4, $s0
	addi.d	$s0, $s0, -1
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a0, $a1
	ld.hu	$a0, $a0, 0
	beq	$a0, $a2, .LBB79_3
# %bb.5:                                #   in Loop: Header=BB79_4 Depth=1
	ld.w	$a0, $fp, 12
	slt	$a1, $a0, $s4
	sub.w	$a2, $a0, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $a3, $a1
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	blez	$a1, .LBB79_2
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB79_4 Depth=1
	slt	$a1, $a0, $s3
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	add.d	$a0, $a0, $s5
	bstrpick.d	$s7, $a0, 31, 0
	move	$s6, $s1
	b	.LBB79_9
	.p2align	4, , 16
.LBB79_7:                               # %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit.i
                                        #   in Loop: Header=BB79_9 Depth=2
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB79_8:                               #   in Loop: Header=BB79_9 Depth=2
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	beqz	$s7, .LBB79_2
.LBB79_9:                               #   Parent Loop BB79_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s6
	beqz	$s2, .LBB79_8
# %bb.10:                               #   in Loop: Header=BB79_9 Depth=2
	ld.d	$a0, $s2, 24
	st.d	$s8, $s2, 8
	beqz	$a0, .LBB79_7
# %bb.11:                               #   in Loop: Header=BB79_9 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB79_7
.LBB79_12:                              # %._crit_edge
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end79:
	.size	_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv, .Lfunc_end79-_ZN8NArchive4NZip11CExtraBlock22RemoveUnknownSubBlocksEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo
	.type	_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo,@function
_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo: # @_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo
.Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception36
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
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a2
	ld.d	$a2, $a2, 0
	ld.d	$a4, $a0, 48
	move	$s1, $a3
	move	$s2, $a1
	addi.d	$a3, $sp, 16
	move	$a0, $s3
	move	$a1, $a2
	move	$a2, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB80_11
# %bb.1:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV26CLimitedSequentialInStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV26CLimitedSequentialInStream)
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 8
.Ltmp662:                               # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp663:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB80_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp664:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp665:                               # EH_LABEL
.LBB80_4:
	ld.d	$a0, $s0, 8
	st.d	$s3, $fp, 16
	st.d	$a0, $fp, 24
	st.d	$zero, $fp, 32
	st.b	$zero, $fp, 40
	st.d	$zero, $sp, 24
.Ltmp666:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11COutArchive22CreateStreamForCopyingEPP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp667:                               # EH_LABEL
# %bb.5:
	ld.d	$a1, $sp, 24
.Ltmp668:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress10CopyStreamEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp669:                               # EH_LABEL
# %bb.6:
	ld.d	$a1, $sp, 24
	beqz	$a1, .LBB80_8
# %bb.7:
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp674:                               # EH_LABEL
	move	$s2, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $s2
.Ltmp675:                               # EH_LABEL
.LBB80_8:
	bnez	$a0, .LBB80_10
# %bb.9:
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a0, 40
	addi.d	$a1, $s0, 8
.Ltmp677:                               # EH_LABEL
	move	$a0, $s1
	move	$a2, $a1
	jirl	$ra, $a3, 0
.Ltmp678:                               # EH_LABEL
.LBB80_10:
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 16
.Ltmp683:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $s0
.Ltmp684:                               # EH_LABEL
.LBB80_11:                              # %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB80_12:
.Ltmp676:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB80_13:
.Ltmp685:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB80_14:
.Ltmp670:                               # EH_LABEL
	ld.d	$a1, $sp, 24
	move	$s0, $a0
	beqz	$a1, .LBB80_18
# %bb.15:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp671:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp672:                               # EH_LABEL
	b	.LBB80_18
.LBB80_16:
.Ltmp673:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB80_17:
.Ltmp679:                               # EH_LABEL
	move	$s0, $a0
.LBB80_18:                              # %.body
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp680:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp681:                               # EH_LABEL
# %bb.19:                               # %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit33
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB80_20:
.Ltmp682:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end80:
	.size	_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo, .Lfunc_end80-_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table80:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase29-.Lttbaseref29
.Lttbaseref29:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Lfunc_begin36-.Lfunc_begin36  # >> Call Site 1 <<
	.uleb128 .Ltmp662-.Lfunc_begin36        #   Call between .Lfunc_begin36 and .Ltmp662
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp662-.Lfunc_begin36        # >> Call Site 2 <<
	.uleb128 .Ltmp665-.Ltmp662              #   Call between .Ltmp662 and .Ltmp665
	.uleb128 .Ltmp679-.Lfunc_begin36        #     jumps to .Ltmp679
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin36        # >> Call Site 3 <<
	.uleb128 .Ltmp669-.Ltmp666              #   Call between .Ltmp666 and .Ltmp669
	.uleb128 .Ltmp670-.Lfunc_begin36        #     jumps to .Ltmp670
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp674-.Lfunc_begin36        # >> Call Site 4 <<
	.uleb128 .Ltmp675-.Ltmp674              #   Call between .Ltmp674 and .Ltmp675
	.uleb128 .Ltmp676-.Lfunc_begin36        #     jumps to .Ltmp676
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp677-.Lfunc_begin36        # >> Call Site 5 <<
	.uleb128 .Ltmp678-.Ltmp677              #   Call between .Ltmp677 and .Ltmp678
	.uleb128 .Ltmp679-.Lfunc_begin36        #     jumps to .Ltmp679
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp683-.Lfunc_begin36        # >> Call Site 6 <<
	.uleb128 .Ltmp684-.Ltmp683              #   Call between .Ltmp683 and .Ltmp684
	.uleb128 .Ltmp685-.Lfunc_begin36        #     jumps to .Ltmp685
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp684-.Lfunc_begin36        # >> Call Site 7 <<
	.uleb128 .Ltmp671-.Ltmp684              #   Call between .Ltmp684 and .Ltmp671
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp671-.Lfunc_begin36        # >> Call Site 8 <<
	.uleb128 .Ltmp672-.Ltmp671              #   Call between .Ltmp671 and .Ltmp672
	.uleb128 .Ltmp673-.Lfunc_begin36        #     jumps to .Ltmp673
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp672-.Lfunc_begin36        # >> Call Site 9 <<
	.uleb128 .Ltmp680-.Ltmp672              #   Call between .Ltmp672 and .Ltmp680
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp680-.Lfunc_begin36        # >> Call Site 10 <<
	.uleb128 .Ltmp681-.Ltmp680              #   Call between .Ltmp680 and .Ltmp681
	.uleb128 .Ltmp682-.Lfunc_begin36        #     jumps to .Ltmp682
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp681-.Lfunc_begin36        # >> Call Site 11 <<
	.uleb128 .Lfunc_end80-.Ltmp681          #   Call between .Ltmp681 and .Lfunc_end80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end36:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase29:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip5CItemC2ERKS1_,"axG",@progbits,_ZN8NArchive4NZip5CItemC2ERKS1_,comdat
	.weak	_ZN8NArchive4NZip5CItemC2ERKS1_ # -- Begin function _ZN8NArchive4NZip5CItemC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive4NZip5CItemC2ERKS1_,@function
_ZN8NArchive4NZip5CItemC2ERKS1_:        # @_ZN8NArchive4NZip5CItemC2ERKS1_
.Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception37
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
	vld	$vr0, $a1, 16
	move	$fp, $a0
	vst	$vr0, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 32
	ld.wu	$s1, $a1, 40
	addi.d	$s2, $s1, 1
	slli.d	$a0, $s2, 31
	bgez	$a0, .LBB81_2
# %bb.1:
	move	$a0, $zero
	b	.LBB81_3
.LBB81_2:
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	st.b	$zero, $a0, 0
	st.w	$s2, $fp, 44
.LBB81_3:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
	ld.d	$a1, $s0, 32
	addi.d	$s2, $fp, 32
	.p2align	4, , 16
.LBB81_4:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB81_4
# %bb.5:                                # %_ZN11CStringBaseIcEC2ERKS0_.exit.i
	st.w	$s1, $fp, 40
	addi.d	$s1, $fp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 56
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 72
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s3, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$s3, $fp, 48
.Ltmp686:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp687:                               # EH_LABEL
# %bb.6:                                # %.noexc.i.i.i
	addi.d	$a1, $s0, 48
.Ltmp688:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp689:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit
	ld.d	$a0, $s0, 112
	st.d	$a0, $fp, 112
	vld	$vr0, $s0, 96
	vst	$vr0, $fp, 96
	vld	$vr0, $s0, 80
	vst	$vr0, $fp, 80
	addi.d	$s1, $fp, 120
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 128
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 144
	st.d	$s3, $fp, 120
.Ltmp691:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp692:                               # EH_LABEL
# %bb.8:                                # %.noexc.i.i
	addi.d	$a1, $s0, 120
.Ltmp693:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp694:                               # EH_LABEL
# %bb.9:                                # %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 160
	ld.d	$s2, $s0, 160
	st.d	$a0, $fp, 152
	beqz	$s2, .LBB81_12
# %bb.10:                               # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i
.Ltmp696:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.11:                               # %.noexc
	st.d	$a0, $fp, 168
	st.d	$s2, $fp, 160
	ld.d	$a2, $s0, 160
	ld.d	$a1, $s0, 168
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB81_12:                              # %_ZN7CBufferIhEC2ERKS0_.exit
	ld.b	$a0, $s0, 178
	st.b	$a0, $fp, 178
	ld.h	$a0, $s0, 176
	st.h	$a0, $fp, 176
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB81_13:
.Ltmp698:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CExtraBlockD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CLocalItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB81_14:
.Ltmp695:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CLocalItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB81_15:                              # %.body.i
.Ltmp690:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB81_17
# %bb.16:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB81_17:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end81:
	.size	_ZN8NArchive4NZip5CItemC2ERKS1_, .Lfunc_end81-_ZN8NArchive4NZip5CItemC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip5CItemC2ERKS1_,"aG",@progbits,_ZN8NArchive4NZip5CItemC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table81:
.Lexception37:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Lfunc_begin37-.Lfunc_begin37  # >> Call Site 1 <<
	.uleb128 .Ltmp686-.Lfunc_begin37        #   Call between .Lfunc_begin37 and .Ltmp686
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp686-.Lfunc_begin37        # >> Call Site 2 <<
	.uleb128 .Ltmp689-.Ltmp686              #   Call between .Ltmp686 and .Ltmp689
	.uleb128 .Ltmp690-.Lfunc_begin37        #     jumps to .Ltmp690
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp691-.Lfunc_begin37        # >> Call Site 3 <<
	.uleb128 .Ltmp694-.Ltmp691              #   Call between .Ltmp691 and .Ltmp694
	.uleb128 .Ltmp695-.Lfunc_begin37        #     jumps to .Ltmp695
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp696-.Lfunc_begin37        # >> Call Site 4 <<
	.uleb128 .Ltmp697-.Ltmp696              #   Call between .Ltmp696 and .Ltmp697
	.uleb128 .Ltmp698-.Lfunc_begin37        #     jumps to .Ltmp698
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp697-.Lfunc_begin37        # >> Call Site 5 <<
	.uleb128 .Lfunc_end81-.Ltmp697          #   Call between .Ltmp697 and .Lfunc_end81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end37:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZTVN8NArchive4NZip15CCacheOutStreamE,@object # @_ZTVN8NArchive4NZip15CCacheOutStreamE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive4NZip15CCacheOutStreamE
	.p2align	3, 0x0
_ZTVN8NArchive4NZip15CCacheOutStreamE:
	.dword	0
	.dword	_ZTIN8NArchive4NZip15CCacheOutStreamE
	.dword	_ZN8NArchive4NZip15CCacheOutStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive4NZip15CCacheOutStream6AddRefEv
	.dword	_ZN8NArchive4NZip15CCacheOutStream7ReleaseEv
	.dword	_ZN8NArchive4NZip15CCacheOutStreamD2Ev
	.dword	_ZN8NArchive4NZip15CCacheOutStreamD0Ev
	.dword	_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj
	.dword	_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy
	.dword	_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy
	.size	_ZTVN8NArchive4NZip15CCacheOutStreamE, 80

	.type	_ZTVN8NArchive4NZip17CMtProgressMixer2E,@object # @_ZTVN8NArchive4NZip17CMtProgressMixer2E
	.globl	_ZTVN8NArchive4NZip17CMtProgressMixer2E
	.p2align	3, 0x0
_ZTVN8NArchive4NZip17CMtProgressMixer2E:
	.dword	0
	.dword	_ZTIN8NArchive4NZip17CMtProgressMixer2E
	.dword	_ZN8NArchive4NZip17CMtProgressMixer214QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive4NZip17CMtProgressMixer26AddRefEv
	.dword	_ZN8NArchive4NZip17CMtProgressMixer27ReleaseEv
	.dword	_ZN8NArchive4NZip17CMtProgressMixer2D2Ev
	.dword	_ZN8NArchive4NZip17CMtProgressMixer2D0Ev
	.dword	_ZN8NArchive4NZip17CMtProgressMixer212SetRatioInfoEPKyS3_
	.size	_ZTVN8NArchive4NZip17CMtProgressMixer2E, 64

	.type	_ZTIN8NArchive4NZip17CMtProgressMixer2E,@object # @_ZTIN8NArchive4NZip17CMtProgressMixer2E
	.globl	_ZTIN8NArchive4NZip17CMtProgressMixer2E
	.p2align	3, 0x0
_ZTIN8NArchive4NZip17CMtProgressMixer2E:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive4NZip17CMtProgressMixer2E
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI21ICompressProgressInfo
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN8NArchive4NZip17CMtProgressMixer2E, 56

	.type	_ZTSN8NArchive4NZip17CMtProgressMixer2E,@object # @_ZTSN8NArchive4NZip17CMtProgressMixer2E
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive4NZip17CMtProgressMixer2E
_ZTSN8NArchive4NZip17CMtProgressMixer2E:
	.asciz	"N8NArchive4NZip17CMtProgressMixer2E"
	.size	_ZTSN8NArchive4NZip17CMtProgressMixer2E, 36

	.type	_ZTI21ICompressProgressInfo,@object # @_ZTI21ICompressProgressInfo
	.section	.data.rel.ro._ZTI21ICompressProgressInfo,"awG",@progbits,_ZTI21ICompressProgressInfo,comdat
	.weak	_ZTI21ICompressProgressInfo
	.p2align	3, 0x0
_ZTI21ICompressProgressInfo:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS21ICompressProgressInfo
	.dword	_ZTI8IUnknown
	.size	_ZTI21ICompressProgressInfo, 24

	.type	_ZTS21ICompressProgressInfo,@object # @_ZTS21ICompressProgressInfo
	.section	.rodata._ZTS21ICompressProgressInfo,"aG",@progbits,_ZTS21ICompressProgressInfo,comdat
	.weak	_ZTS21ICompressProgressInfo
_ZTS21ICompressProgressInfo:
	.asciz	"21ICompressProgressInfo"
	.size	_ZTS21ICompressProgressInfo, 24

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

	.type	_ZTVN8NArchive4NZip16CMtProgressMixerE,@object # @_ZTVN8NArchive4NZip16CMtProgressMixerE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive4NZip16CMtProgressMixerE
	.p2align	3, 0x0
_ZTVN8NArchive4NZip16CMtProgressMixerE:
	.dword	0
	.dword	_ZTIN8NArchive4NZip16CMtProgressMixerE
	.dword	_ZN8NArchive4NZip16CMtProgressMixer14QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive4NZip16CMtProgressMixer6AddRefEv
	.dword	_ZN8NArchive4NZip16CMtProgressMixer7ReleaseEv
	.dword	_ZN8NArchive4NZip16CMtProgressMixerD2Ev
	.dword	_ZN8NArchive4NZip16CMtProgressMixerD0Ev
	.dword	_ZN8NArchive4NZip16CMtProgressMixer12SetRatioInfoEPKyS3_
	.size	_ZTVN8NArchive4NZip16CMtProgressMixerE, 64

	.type	_ZTIN8NArchive4NZip16CMtProgressMixerE,@object # @_ZTIN8NArchive4NZip16CMtProgressMixerE
	.globl	_ZTIN8NArchive4NZip16CMtProgressMixerE
	.p2align	3, 0x0
_ZTIN8NArchive4NZip16CMtProgressMixerE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive4NZip16CMtProgressMixerE
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI21ICompressProgressInfo
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN8NArchive4NZip16CMtProgressMixerE, 56

	.type	_ZTSN8NArchive4NZip16CMtProgressMixerE,@object # @_ZTSN8NArchive4NZip16CMtProgressMixerE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive4NZip16CMtProgressMixerE
_ZTSN8NArchive4NZip16CMtProgressMixerE:
	.asciz	"N8NArchive4NZip16CMtProgressMixerE"
	.size	_ZTSN8NArchive4NZip16CMtProgressMixerE, 35

	.type	_ZTIN8NArchive4NZip15CCacheOutStreamE,@object # @_ZTIN8NArchive4NZip15CCacheOutStreamE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTIN8NArchive4NZip15CCacheOutStreamE
	.p2align	3, 0x0
_ZTIN8NArchive4NZip15CCacheOutStreamE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive4NZip15CCacheOutStreamE
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI10IOutStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN8NArchive4NZip15CCacheOutStreamE, 56

	.type	_ZTSN8NArchive4NZip15CCacheOutStreamE,@object # @_ZTSN8NArchive4NZip15CCacheOutStreamE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive4NZip15CCacheOutStreamE
_ZTSN8NArchive4NZip15CCacheOutStreamE:
	.asciz	"N8NArchive4NZip15CCacheOutStreamE"
	.size	_ZTSN8NArchive4NZip15CCacheOutStreamE, 34

	.type	_ZTI10IOutStream,@object        # @_ZTI10IOutStream
	.section	.data.rel.ro._ZTI10IOutStream,"awG",@progbits,_ZTI10IOutStream,comdat
	.weak	_ZTI10IOutStream
	.p2align	3, 0x0
_ZTI10IOutStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS10IOutStream
	.dword	_ZTI20ISequentialOutStream
	.size	_ZTI10IOutStream, 24

	.type	_ZTS10IOutStream,@object        # @_ZTS10IOutStream
	.section	.rodata._ZTS10IOutStream,"aG",@progbits,_ZTS10IOutStream,comdat
	.weak	_ZTS10IOutStream
_ZTS10IOutStream:
	.asciz	"10IOutStream"
	.size	_ZTS10IOutStream, 13

	.type	_ZTI20ISequentialOutStream,@object # @_ZTI20ISequentialOutStream
	.section	.data.rel.ro._ZTI20ISequentialOutStream,"awG",@progbits,_ZTI20ISequentialOutStream,comdat
	.weak	_ZTI20ISequentialOutStream
	.p2align	3, 0x0
_ZTI20ISequentialOutStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20ISequentialOutStream
	.dword	_ZTI8IUnknown
	.size	_ZTI20ISequentialOutStream, 24

	.type	_ZTS20ISequentialOutStream,@object # @_ZTS20ISequentialOutStream
	.section	.rodata._ZTS20ISequentialOutStream,"aG",@progbits,_ZTS20ISequentialOutStream,comdat
	.weak	_ZTS20ISequentialOutStream
_ZTS20ISequentialOutStream:
	.asciz	"20ISequentialOutStream"
	.size	_ZTS20ISequentialOutStream, 23

	.type	_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,@object # @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.dword	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,@object # @_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,@object # @_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE:
	.asciz	"13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE"
	.size	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, 50

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

	.type	_ZTV13CRecordVectorIPvE,@object # @_ZTV13CRecordVectorIPvE
	.section	.data.rel.ro._ZTV13CRecordVectorIPvE,"awG",@progbits,_ZTV13CRecordVectorIPvE,comdat
	.weak	_ZTV13CRecordVectorIPvE
	.p2align	3, 0x0
_ZTV13CRecordVectorIPvE:
	.dword	0
	.dword	_ZTI13CRecordVectorIPvE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIPvED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIPvE, 40

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

	.type	_ZTV13CRecordVectorIhE,@object  # @_ZTV13CRecordVectorIhE
	.section	.data.rel.ro._ZTV13CRecordVectorIhE,"awG",@progbits,_ZTV13CRecordVectorIhE,comdat
	.weak	_ZTV13CRecordVectorIhE
	.p2align	3, 0x0
_ZTV13CRecordVectorIhE:
	.dword	0
	.dword	_ZTI13CRecordVectorIhE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIhED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIhE, 40

	.type	_ZTI13CRecordVectorIhE,@object  # @_ZTI13CRecordVectorIhE
	.section	.data.rel.ro._ZTI13CRecordVectorIhE,"awG",@progbits,_ZTI13CRecordVectorIhE,comdat
	.weak	_ZTI13CRecordVectorIhE
	.p2align	3, 0x0
_ZTI13CRecordVectorIhE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIhE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIhE, 24

	.type	_ZTS13CRecordVectorIhE,@object  # @_ZTS13CRecordVectorIhE
	.section	.rodata._ZTS13CRecordVectorIhE,"aG",@progbits,_ZTS13CRecordVectorIhE,comdat
	.weak	_ZTS13CRecordVectorIhE
_ZTS13CRecordVectorIhE:
	.asciz	"13CRecordVectorIhE"
	.size	_ZTS13CRecordVectorIhE, 19

	.type	_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE,@object # @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive4NZip5CItemEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive4NZip5CItemEE
	.dword	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip5CItemEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip5CItemEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive4NZip5CItemEE,@object # @_ZTI13CObjectVectorIN8NArchive4NZip5CItemEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive4NZip5CItemEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive4NZip5CItemEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive4NZip5CItemEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive4NZip5CItemEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive4NZip5CItemEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive4NZip5CItemEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive4NZip5CItemEE,@object # @_ZTS13CObjectVectorIN8NArchive4NZip5CItemEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive4NZip5CItemEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive4NZip5CItemEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive4NZip5CItemEE
_ZTS13CObjectVectorIN8NArchive4NZip5CItemEE:
	.asciz	"13CObjectVectorIN8NArchive4NZip5CItemEE"
	.size	_ZTS13CObjectVectorIN8NArchive4NZip5CItemEE, 40

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

	.type	_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE,@object # @_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE
	.section	.data.rel.ro._ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE,"awG",@progbits,_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE,comdat
	.weak	_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE
	.p2align	3, 0x0
_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE:
	.dword	0
	.dword	_ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE
	.dword	_ZN8NWindows16NSynchronization14CSemaphoreWFMO19IsSignaledAndUpdateEv
	.size	_ZTVN8NWindows16NSynchronization14CSemaphoreWFMOE, 24

	.type	_ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE,@object # @_ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE
	.section	.data.rel.ro._ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE,"awG",@progbits,_ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE,comdat
	.weak	_ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE
	.p2align	3, 0x0
_ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE
	.dword	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.size	_ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE, 24

	.type	_ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE,@object # @_ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE
	.section	.rodata._ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE,"aG",@progbits,_ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE,comdat
	.weak	_ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE
_ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE:
	.asciz	"N8NWindows16NSynchronization14CSemaphoreWFMOE"
	.size	_ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE, 46

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

	.type	_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,@object # @_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, 40

	.type	_ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,@object # @_ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, 24

	.type	_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,@object # @_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE:
	.asciz	"13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE"
	.size	_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, 47

	.type	_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,@object # @_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive4NZip11CThreadInfoEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,@object # @_ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,@object # @_ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
_ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE:
	.asciz	"13CObjectVectorIN8NArchive4NZip11CThreadInfoEE"
	.size	_ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE, 47

	.type	_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,@object # @_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.section	.data.rel.ro._ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,"awG",@progbits,_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,comdat
	.weak	_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE, 40

	.type	_ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,@object # @_ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.section	.data.rel.ro._ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,"awG",@progbits,_ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,comdat
	.weak	_ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE, 24

	.type	_ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,@object # @_ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.section	.rodata._ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,"aG",@progbits,_ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE,comdat
	.weak	_ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
_ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE:
	.asciz	"13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE"
	.size	_ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE, 65

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

	.type	_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE,@object # @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.section	.data.rel.ro._ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE,"awG",@progbits,_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE,comdat
	.weak	_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.p2align	3, 0x0
_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE:
	.dword	0
	.dword	_ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.dword	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.size	_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, 24

	.type	_ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE,@object # @_ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.section	.data.rel.ro._ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE,"awG",@progbits,_ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE,comdat
	.weak	_ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.p2align	3, 0x0
_ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.dword	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.size	_ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE, 24

	.type	_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE,@object # @_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.section	.rodata._ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE,"aG",@progbits,_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE,comdat
	.weak	_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE
_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE:
	.asciz	"N8NWindows16NSynchronization19CAutoResetEventWFMOE"
	.size	_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE, 51

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

	.type	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.data.rel.ro._ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,"awG",@progbits,_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.p2align	3, 0x0
_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE:
	.dword	0
	.dword	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.dword	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.size	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, 24

	.globl	_ZN8NArchive4NZip15CCacheOutStreamD1Ev
	.type	_ZN8NArchive4NZip15CCacheOutStreamD1Ev,@function
_ZN8NArchive4NZip15CCacheOutStreamD1Ev = _ZN8NArchive4NZip15CCacheOutStreamD2Ev
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
	.addrsig_sym _ZN8NArchive4NZipL11CoderThreadEPv
	.addrsig_sym _Unwind_Resume
	.addrsig_sym IID_ICompressProgressInfo
	.addrsig_sym IID_IOutStream
	.addrsig_sym _ZTIN8NArchive4NZip17CMtProgressMixer2E
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN8NArchive4NZip17CMtProgressMixer2E
	.addrsig_sym _ZTI21ICompressProgressInfo
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS21ICompressProgressInfo
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTIN8NArchive4NZip16CMtProgressMixerE
	.addrsig_sym _ZTSN8NArchive4NZip16CMtProgressMixerE
	.addrsig_sym _ZTIN8NArchive4NZip15CCacheOutStreamE
	.addrsig_sym _ZTSN8NArchive4NZip15CCacheOutStreamE
	.addrsig_sym _ZTI10IOutStream
	.addrsig_sym _ZTS10IOutStream
	.addrsig_sym _ZTI20ISequentialOutStream
	.addrsig_sym _ZTS20ISequentialOutStream
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CRecordVectorIhE
	.addrsig_sym _ZTS13CRecordVectorIhE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive4NZip5CItemEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive4NZip5CItemEE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTIN8NWindows16NSynchronization14CSemaphoreWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization14CSemaphoreWFMOE
	.addrsig_sym _ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive4NZip11CThreadInfoEE
	.addrsig_sym _ZTI13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.addrsig_sym _ZTS13CRecordVectorIPN8NWindows16NSynchronization15CBaseHandleWFMOEE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
	.addrsig_sym _ZTIN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE
	.addrsig_sym _ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
