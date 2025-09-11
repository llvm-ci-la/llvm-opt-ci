	.file	"main.cpp"
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB0_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB0_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB0_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a3, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 16
	ld.d	$a3, $a3, 24
	pcaddu18i	$ra, %call36(__udivti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB0_4
.LBB0_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp2:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB0_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %_ZNSt6vectorISt4pairIooESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB0_9:
.Ltmp4:                                 # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB0_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %_ZNSt6vectorISt4pairIooESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE, .Lfunc_end0-_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
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
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp2-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp3             #   Call between .Ltmp3 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB1_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB1_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB1_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a3, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 16
	ld.d	$a3, $a3, 24
	pcaddu18i	$ra, %call36(__divti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB1_4
.LBB1_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp7:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB1_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %_ZNSt6vectorISt4pairInnESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB1_9:
.Ltmp9:                                 # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB1_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_11:                               # %_ZNSt6vectorISt4pairInnESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE, .Lfunc_end1-_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp9-.Lfunc_begin1           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 5 <<
	.uleb128 .Lfunc_end1-.Ltmp8             #   Call between .Ltmp8 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp10:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB2_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB2_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB2_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a3, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 16
	ld.d	$a3, $a3, 24
	pcaddu18i	$ra, %call36(__umodti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB2_4
.LBB2_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp12:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB2_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZNSt6vectorISt4pairIooESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB2_9:
.Ltmp14:                                # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB2_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %_ZNSt6vectorISt4pairIooESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE, .Lfunc_end2-_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Lfunc_end2-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB3_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB3_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB3_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a3, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 16
	ld.d	$a3, $a3, 24
	pcaddu18i	$ra, %call36(__modti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB3_4
.LBB3_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp17:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB3_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_8:                                # %_ZNSt6vectorISt4pairInnESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB3_9:
.Ltmp19:                                # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB3_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_11:                               # %_ZNSt6vectorISt4pairInnESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE, .Lfunc_end3-_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp19-.Lfunc_begin3          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin3          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp20:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB4_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB4_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB4_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a2, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__udivti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB4_4
.LBB4_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp22:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB4_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_8:                                # %_ZNSt6vectorISt4pairIomESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB4_9:
.Ltmp24:                                # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB4_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt6vectorISt4pairIomESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE, .Lfunc_end4-_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp24-.Lfunc_begin4          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin4          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp25:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB5_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB5_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB5_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a1, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a2, $a1, 16
	ld.d	$a1, $a1, 8
	srai.d	$a3, $a2, 63
	pcaddu18i	$ra, %call36(__divti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB5_4
.LBB5_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp27:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB5_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %_ZNSt6vectorISt4pairInlESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB5_9:
.Ltmp29:                                # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB5_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_11:                               # %_ZNSt6vectorISt4pairInlESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE, .Lfunc_end5-_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp29-.Lfunc_begin5          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin5          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp30:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB6_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB6_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB6_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a2, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__umodti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB6_4
.LBB6_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp32:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB6_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %_ZNSt6vectorISt4pairIomESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB6_9:
.Ltmp34:                                # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB6_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_11:                               # %_ZNSt6vectorISt4pairIomESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE, .Lfunc_end6-_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp34-.Lfunc_begin6          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin6          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Lfunc_end6-.Ltmp33            #   Call between .Ltmp33 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
	.type	_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE,@function
_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE: # @_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp35:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB7_5
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB7_5
# %bb.3:                                # %.lr.ph
	ld.d	$s1, $sp, 40
	move	$s3, $zero
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB7_4:                                # %_ZN9benchmark5State3endEv.exit
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s3, 5
	add.d	$a1, $s1, $a0
	ldx.d	$a0, $s1, $a0
	ld.d	$a2, $a1, 16
	ld.d	$a1, $a1, 8
	srai.d	$a3, $a2, 63
	pcaddu18i	$ra, %call36(__modti3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	#APP
	#NO_APP
	addi.d	$a0, $s3, 1
	addi.d	$s0, $s0, -1
	bstrpick.d	$s3, $a0, 19, 0
	bnez	$s0, .LBB7_4
.LBB7_5:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp37:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.6:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB7_8
# %bb.7:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_8:                                # %_ZNSt6vectorISt4pairInlESaIS1_EED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB7_9:
.Ltmp39:                                # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB7_11
# %bb.10:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_11:                               # %_ZNSt6vectorISt4pairInlESaIS1_EED2Ev.exit20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE, .Lfunc_end7-_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp39-.Lfunc_begin7          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin7          # >> Call Site 4 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin7          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin7          # >> Call Site 5 <<
	.uleb128 .Lfunc_end7-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a1
	st.w	$a0, $sp, 28
	pcalau12i	$a0, %pc_hi20(.L__const.main.arg0_default)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.arg0_default)
	ld.h	$a2, $a0, 8
	ld.d	$a0, $a0, 0
	st.h	$a2, $sp, 24
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 8
	bnez	$a1, .LBB8_2
# %bb.1:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 28
	addi.d	$fp, $sp, 8
.LBB8_2:
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark16PrintDefaultHelpEv)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN9benchmark16PrintDefaultHelpEv)
	addi.d	$a0, $sp, 28
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark10InitializeEPiPPcPFvvE)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB8_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8ShutdownEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB8_4:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv
.LCPI9_0:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.text
	.p2align	5
	.type	_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv,@function
_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv: # @_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1056
	.cfi_def_cfa_offset 5136
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1393
	st.d	$a2, $sp, 48
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB9_1
# %bb.2:                                # %_ZNSt12_Vector_baseISt4pairIooESaIS1_EE11_M_allocateEm.exit.i
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI9_0)
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 944
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	vst	$vr0, $sp, 32
	lu12i.w	$a0, 8192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s5, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	st.d	$s0, $a0, 8
	addu16i.d	$s4, $s0, 512
	st.d	$s4, $a0, 16
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	ori	$a4, $zero, 2
	sltu	$a0, $a4, $s8
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	sltui	$a1, $s6, 1
	maskeqz	$a0, $a0, $a1
	sltu	$a2, $zero, $s6
	masknez	$a3, $a4, $a2
	maskeqz	$a2, $s8, $a2
	or	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$s6, $s0, 8
	st.d	$a0, $s0, 0
	sltu	$a0, $a4, $fp
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	sltui	$a1, $s7, 1
	maskeqz	$a0, $a0, $a1
	sltu	$a2, $zero, $s7
	masknez	$a3, $a4, $a2
	maskeqz	$a2, $fp, $a2
	or	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$s7, $s0, 24
	st.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a0, 8
	addi.d	$s5, $s5, 1
	lu12i.w	$a0, 256
	beq	$s5, $a0, .LBB9_15
.LBB9_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.5:                                # %.noexc13
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp42:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
.Ltmp45:                                # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.7:                                # %.noexc15
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp47:                                # EH_LABEL
	move	$s3, $a0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB9_4 Depth=1
	sltu	$a1, $s3, $s1
	xor	$a2, $s1, $s3
	sltui	$a2, $a2, 1
	masknez	$a3, $a1, $a2
	sltu	$a4, $a0, $s2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	masknez	$a3, $s3, $a2
	maskeqz	$a5, $s1, $a2
	or	$s6, $a5, $a3
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $s2, $a2
	or	$s8, $a2, $a3
	xor	$a2, $s3, $s1
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	masknez	$a2, $s1, $a1
	maskeqz	$a3, $s3, $a1
	or	$s7, $a3, $a2
	masknez	$a2, $s2, $a1
	maskeqz	$a0, $a0, $a1
	or	$fp, $a0, $a2
	bne	$s0, $s4, .LBB9_3
# %bb.9:                                #   in Loop: Header=BB9_4 Depth=1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$s1, $s4, $s0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$s1, $a0, .LBB9_16
# %bb.10:                               #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a0, $s1, 5
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 63
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$s2, $a0, 5
.Ltmp50:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.11:                               # %.noexc22
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$s3, $a0
	add.d	$a0, $a0, $s1
	ori	$a5, $zero, 2
	sltu	$a1, $a5, $s8
	masknez	$a2, $a5, $a1
	maskeqz	$a1, $s8, $a1
	or	$a1, $a1, $a2
	sltui	$a2, $s6, 1
	maskeqz	$a1, $a1, $a2
	sltu	$a3, $zero, $s6
	masknez	$a4, $a5, $a3
	maskeqz	$a3, $s8, $a3
	or	$a3, $a3, $a4
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	stx.d	$a1, $s3, $s1
	st.d	$s6, $a0, 8
	sltu	$a1, $a5, $fp
	masknez	$a2, $a5, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $a2
	sltui	$a2, $s7, 1
	maskeqz	$a1, $a1, $a2
	sltu	$a3, $zero, $s7
	masknez	$a4, $a5, $a3
	maskeqz	$a3, $fp, $a3
	or	$a3, $a3, $a4
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.d	$s7, $a0, 24
	st.d	$a1, $a0, 16
	move	$fp, $s3
	beq	$s0, $s4, .LBB9_14
# %bb.12:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$fp, $s3
	move	$a0, $s0
	.p2align	4, , 16
.LBB9_13:                               # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $a0, 0
	vst	$vr0, $fp, 0
	addi.d	$a0, $a0, 32
	addi.d	$fp, $fp, 32
	bne	$a0, $s4, .LBB9_13
.LBB9_14:                               # %_ZNSt6vectorISt4pairIooESaIS1_EE17_M_realloc_appendIJRKoS6_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s3, $a0, 0
	st.d	$s0, $a0, 8
	add.d	$s4, $s3, $s2
	st.d	$s4, $a0, 16
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	lu12i.w	$a0, 256
	bne	$s5, $a0, .LBB9_4
.LBB9_15:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1072
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
.LBB9_16:
.Ltmp53:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.17:                               # %.noexc21
.LBB9_18:                               # %.loopexit.split-lp
.Ltmp55:                                # EH_LABEL
	b	.LBB9_22
.LBB9_19:                               # %.loopexit
.Ltmp52:                                # EH_LABEL
	b	.LBB9_22
.LBB9_20:
.Ltmp44:                                # EH_LABEL
	b	.LBB9_22
.LBB9_21:
.Ltmp49:                                # EH_LABEL
.LBB9_22:
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	beqz	$a2, .LBB9_24
# %bb.23:
	sub.d	$a1, $s4, $a2
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB9_24:                               # %_ZNSt6vectorISt4pairIooESaIS1_EED2Ev.exit
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv, .Lfunc_end9-_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorIoEESt6vectorISt4pairIT_S3_ESaIS4_EEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp43-.Ltmp40                #   Call between .Ltmp40 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin8          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Ltmp48-.Ltmp45                #   Call between .Ltmp45 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin8          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin8          # >> Call Site 4 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin8          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin8          # >> Call Site 5 <<
	.uleb128 .Ltmp53-.Ltmp51                #   Call between .Ltmp51 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin8          # >> Call Site 6 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin8          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin8          # >> Call Site 7 <<
	.uleb128 .Lfunc_end9-.Ltmp54            #   Call between .Ltmp54 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
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
	move	$fp, $a2
	ld.d	$a2, $a2, 8
	ld.d	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB10_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB10_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB10_4
	.p2align	4, , 16
.LBB10_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB10_3
.LBB10_4:                               # %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB10_10
.LBB10_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB10_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB10_10
.LBB10_7:                               # %.preheader
	srli.d	$s3, $s2, 32
	.p2align	4, , 16
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 8
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	add.d	$a0, $a0, $s4
	bltu	$s2, $a0, .LBB10_8
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	sltu	$a1, $a0, $a1
	bnez	$a1, .LBB10_8
.LBB10_10:                              # %.loopexit
	ld.d	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end10:
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, .Lfunc_end10-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	5
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_startproc
# %bb.0:
	ldptr.d	$a2, $a0, 4992
	ori	$a1, $zero, 624
	bltu	$a2, $a1, .LBB11_6
# %bb.1:                                # %vector.ph
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	vinsgr2vr.d	$vr5, $a1, 1
	lu12i.w	$a1, -524288
	vreplgr2vr.d	$vr0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4094
	vreplgr2vr.d	$vr1, $a1
	ori	$a3, $zero, 3176
	vrepli.d	$vr2, 1
	vrepli.b	$vr3, -1
	lu12i.w	$a1, -421749
	ori	$a1, $a1, 223
	lu32i.d	$a1, 0
	vreplgr2vr.d	$vr4, $a1
	ori	$a4, $zero, 1808
	.p2align	4, , 16
.LBB11_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr6, $vr5, 0
	add.d	$a5, $a0, $a2
	vld	$vr5, $a5, 8
	vshuf4i.d	$vr6, $vr5, 9
	vand.v	$vr6, $vr6, $vr0
	vldx	$vr7, $a5, $a3
	vand.v	$vr8, $vr5, $vr1
	vor.v	$vr6, $vr8, $vr6
	vsrli.d	$vr6, $vr6, 1
	vxor.v	$vr6, $vr6, $vr7
	vand.v	$vr7, $vr5, $vr2
	vseqi.d	$vr7, $vr7, 0
	vxor.v	$vr7, $vr7, $vr3
	vand.v	$vr7, $vr7, $vr4
	vxor.v	$vr6, $vr6, $vr7
	vstx	$vr6, $a0, $a2
	addi.d	$a2, $a2, 16
	bne	$a2, $a4, .LBB11_2
# %bb.3:                                # %vector.ph11
	ld.d	$a2, $a0, 1816
	vpickve2gr.d	$a3, $vr5, 1
	bstrpick.d	$a4, $a2, 30, 1
	ldptr.d	$a5, $a0, 4984
	slli.d	$a4, $a4, 1
	bstrins.d	$a3, $a4, 30, 0
	srli.d	$a3, $a3, 1
	xor	$a3, $a3, $a5
	andi	$a4, $a2, 1
	sub.d	$a4, $zero, $a4
	and	$a4, $a4, $a1
	xor	$a3, $a3, $a4
	st.d	$a3, $a0, 1808
	vinsgr2vr.d	$vr5, $a2, 1
	lu12i.w	$a2, -1
	ori	$a2, $a2, 928
	lu12i.w	$a5, 1
	ori	$a3, $a5, 896
	ori	$a4, $zero, 3168
	ori	$a5, $a5, 888
	.p2align	4, , 16
.LBB11_4:                               # %vector.body12
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a0, $a2
	vldx	$vr6, $a6, $a3
	vshuf4i.d	$vr5, $vr6, 9
	vand.v	$vr5, $vr5, $vr0
	vldx	$vr7, $a6, $a4
	vand.v	$vr8, $vr6, $vr1
	vor.v	$vr5, $vr8, $vr5
	vsrli.d	$vr5, $vr5, 1
	vxor.v	$vr5, $vr5, $vr7
	vand.v	$vr7, $vr6, $vr2
	vseqi.d	$vr7, $vr7, 0
	vxor.v	$vr7, $vr7, $vr3
	vand.v	$vr7, $vr7, $vr4
	vxor.v	$vr5, $vr5, $vr7
	addi.d	$a2, $a2, 16
	vstx	$vr5, $a6, $a5
	vori.b	$vr5, $vr6, 0
	bnez	$a2, .LBB11_4
# %bb.5:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit
	ld.d	$a3, $a0, 0
	move	$a2, $zero
	ldptr.d	$a4, $a0, 4984
	bstrpick.d	$a5, $a3, 30, 1
	ldptr.d	$a6, $a0, 3168
	slli.d	$a5, $a5, 1
	bstrins.d	$a4, $a5, 30, 0
	srli.d	$a4, $a4, 1
	xor	$a4, $a4, $a6
	andi	$a3, $a3, 1
	sub.d	$a3, $zero, $a3
	and	$a1, $a3, $a1
	xor	$a1, $a4, $a1
	stptr.d	$a1, $a0, 4984
.LBB11_6:
	addi.d	$a1, $a2, 1
	stptr.d	$a1, $a0, 4992
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 42, 11
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 7
	lu12i.w	$a2, -404795
	ori	$a2, $a2, 1664
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 15
	lu12i.w	$a2, -66464
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	srli.d	$a1, $a0, 18
	xor	$a0, $a1, $a0
	ret
.Lfunc_end11:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end11-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv
.LCPI12_0:
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.text
	.p2align	5
	.type	_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv,@function
_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv: # @_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1056
	.cfi_def_cfa_offset 5136
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1393
	st.d	$a2, $sp, 48
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB12_1
# %bb.2:                                # %_ZNSt12_Vector_baseISt4pairInnESaIS1_EE11_M_allocateEm.exit.i
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_0)
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 944
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	vst	$vr0, $sp, 32
	lu12i.w	$a0, 8192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s5, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	st.d	$s0, $a0, 8
	addu16i.d	$s4, $s0, 512
	st.d	$s4, $a0, 16
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               #   in Loop: Header=BB12_4 Depth=1
	slt	$a0, $zero, $s6
	sltui	$a1, $s6, 1
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 2
	sltu	$a2, $a3, $s7
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	masknez	$a1, $a3, $a0
	maskeqz	$a2, $s7, $a0
	or	$a1, $a2, $a1
	maskeqz	$a0, $s6, $a0
	st.d	$a0, $s0, 8
	st.d	$a1, $s0, 0
	slt	$a0, $zero, $s8
	sltui	$a1, $s8, 1
	masknez	$a0, $a0, $a1
	sltu	$a2, $a3, $fp
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	masknez	$a1, $a3, $a0
	maskeqz	$a2, $fp, $a0
	or	$a1, $a2, $a1
	maskeqz	$a0, $s8, $a0
	st.d	$a0, $s0, 24
	st.d	$a1, $s0, 16
	addi.d	$s0, $s0, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a0, 8
	addi.d	$s5, $s5, 1
	lu12i.w	$a0, 256
	beq	$s5, $a0, .LBB12_15
.LBB12_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_13 Depth 2
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.5:                                # %.noexc13
                                        #   in Loop: Header=BB12_4 Depth=1
.Ltmp58:                                # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB12_4 Depth=1
.Ltmp61:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.7:                                # %.noexc15
                                        #   in Loop: Header=BB12_4 Depth=1
.Ltmp63:                                # EH_LABEL
	move	$s3, $a0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB12_4 Depth=1
	srai.d	$a1, $s1, 63
	or	$a1, $s2, $a1
	srai.d	$a2, $a0, 63
	or	$a2, $s3, $a2
	slt	$a3, $a2, $a1
	xor	$a4, $a1, $a2
	sltui	$a4, $a4, 1
	masknez	$a5, $a3, $a4
	sltu	$a6, $a0, $s1
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a5, $a2, $a4
	maskeqz	$a7, $a1, $a4
	or	$s6, $a7, $a5
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $s1, $a4
	or	$s7, $a4, $a5
	xor	$a4, $a2, $a1
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$s8, $a2, $a1
	masknez	$a1, $s1, $a3
	maskeqz	$a0, $a0, $a3
	or	$fp, $a0, $a1
	bne	$s0, $s4, .LBB12_3
# %bb.9:                                #   in Loop: Header=BB12_4 Depth=1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$s1, $s4, $s0
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB12_16
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=1
	srai.d	$a0, $s1, 5
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 63
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$s2, $a0, 5
.Ltmp66:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.11:                               # %.noexc22
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$s3, $a0
	add.d	$a0, $a0, $s1
	slt	$a1, $zero, $s6
	sltui	$a2, $s6, 1
	masknez	$a1, $a1, $a2
	ori	$a4, $zero, 2
	sltu	$a3, $a4, $s7
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	masknez	$a2, $a4, $a1
	maskeqz	$a3, $s7, $a1
	or	$a2, $a3, $a2
	maskeqz	$a1, $s6, $a1
	stx.d	$a2, $s3, $s1
	st.d	$a1, $a0, 8
	slt	$a1, $zero, $s8
	sltui	$a2, $s8, 1
	masknez	$a1, $a1, $a2
	sltu	$a3, $a4, $fp
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	masknez	$a2, $a4, $a1
	maskeqz	$a3, $fp, $a1
	or	$a2, $a3, $a2
	maskeqz	$a1, $s8, $a1
	st.d	$a1, $a0, 24
	st.d	$a2, $a0, 16
	move	$fp, $s3
	beq	$s0, $s4, .LBB12_14
# %bb.12:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$fp, $s3
	move	$a0, $s0
	.p2align	4, , 16
.LBB12_13:                              # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $a0, 0
	vst	$vr0, $fp, 0
	addi.d	$a0, $a0, 32
	addi.d	$fp, $fp, 32
	bne	$a0, $s4, .LBB12_13
.LBB12_14:                              # %_ZNSt6vectorISt4pairInnESaIS1_EE17_M_realloc_appendIJRKnS6_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s3, $a0, 0
	st.d	$s0, $a0, 8
	add.d	$s4, $s3, $s2
	st.d	$s4, $a0, 16
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	lu12i.w	$a0, 256
	bne	$s5, $a0, .LBB12_4
.LBB12_15:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1072
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
.LBB12_16:
.Ltmp69:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.17:                               # %.noexc21
.LBB12_18:                              # %.loopexit.split-lp
.Ltmp71:                                # EH_LABEL
	b	.LBB12_22
.LBB12_19:                              # %.loopexit
.Ltmp68:                                # EH_LABEL
	b	.LBB12_22
.LBB12_20:
.Ltmp60:                                # EH_LABEL
	b	.LBB12_22
.LBB12_21:
.Ltmp65:                                # EH_LABEL
.LBB12_22:
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	beqz	$a2, .LBB12_24
# %bb.23:
	sub.d	$a1, $s4, $a2
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB12_24:                              # %_ZNSt6vectorISt4pairInnESaIS1_EED2Ev.exit
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv, .Lfunc_end12-_ZN12_GLOBAL__N_141GetRandomIntrinsic128SampleUniformDivisorInEESt6vectorISt4pairIT_S3_ESaIS4_EEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp56-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp59-.Ltmp56                #   Call between .Ltmp56 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin9          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Ltmp64-.Ltmp61                #   Call between .Ltmp61 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin9          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin9          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Ltmp69-.Ltmp67                #   Call between .Ltmp67 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin9          # >> Call Site 6 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin9          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin9          # >> Call Site 7 <<
	.uleb128 .Lfunc_end12-.Ltmp70           #   Call between .Ltmp70 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE
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
	move	$fp, $a2
	ld.d	$a2, $a2, 8
	ld.d	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB13_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB13_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB13_3
.LBB13_4:                               # %_ZNSt24uniform_int_distributionIlE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB13_10
.LBB13_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB13_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB13_10
.LBB13_7:                               # %.preheader
	srli.d	$s3, $s2, 32
	.p2align	4, , 16
.LBB13_8:                               # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 8
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	add.d	$a0, $a0, $s4
	bltu	$s2, $a0, .LBB13_8
# %bb.9:                                #   in Loop: Header=BB13_8 Depth=1
	sltu	$a1, $a0, $a1
	bnez	$a1, .LBB13_8
.LBB13_10:                              # %.loopexit
	ld.d	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end13:
	.size	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE, .Lfunc_end13-_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv
.LCPI14_0:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.text
	.p2align	5
	.type	_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv,@function
_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv: # @_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1072
	.cfi_def_cfa_offset 5152
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1393
	st.d	$a2, $sp, 64
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 64
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB14_1
# %bb.2:                                # %_ZNSt12_Vector_baseISt4pairIomESaIS1_EE11_M_allocateEm.exit.i
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI14_0)
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 960
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	vst	$vr0, $sp, 48
	vst	$vr0, $sp, 32
	lu12i.w	$a0, 8192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s7, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	st.d	$s0, $a0, 8
	addu16i.d	$s6, $s0, 512
	st.d	$s6, $a0, 16
	ori	$s4, $zero, 2
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 63
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$fp, 256
	move	$s3, $s0
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_3:                               #   in Loop: Header=BB14_4 Depth=1
	sltui	$a0, $s1, 1
	sltu	$a1, $zero, $s1
	masknez	$a1, $a1, $a0
	sltu	$a2, $s8, $s2
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	masknez	$a1, $s8, $a0
	maskeqz	$a2, $s2, $a0
	or	$a1, $a2, $a1
	maskeqz	$a0, $s1, $a0
	st.d	$a0, $s3, 8
	st.d	$a1, $s3, 0
	st.d	$s8, $s3, 16
	addi.d	$s3, $s3, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s3, $a0, 8
	addi.d	$s7, $s7, 1
	beq	$s7, $fp, .LBB14_14
.LBB14_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_12 Depth 2
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.5:                                # %.noexc15
                                        #   in Loop: Header=BB14_4 Depth=1
.Ltmp74:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=1
.Ltmp77:                                # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.7:                                # %_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_.exit
                                        #   in Loop: Header=BB14_4 Depth=1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s8, $a0, $a2
	bne	$s3, $s6, .LBB14_3
# %bb.8:                                #   in Loop: Header=BB14_4 Depth=1
	sub.d	$s3, $s6, $s0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB14_15
# %bb.9:                                #   in Loop: Header=BB14_4 Depth=1
	srai.d	$a0, $s3, 5
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slli.d	$s4, $a0, 5
.Ltmp80:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.10:                               # %.noexc20
                                        #   in Loop: Header=BB14_4 Depth=1
	move	$s5, $a0
	add.d	$a0, $a0, $s3
	sltui	$a1, $s1, 1
	sltu	$a2, $zero, $s1
	masknez	$a2, $a2, $a1
	sltu	$a3, $s8, $s2
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $s2, $a1
	or	$a2, $a3, $a2
	maskeqz	$a1, $s1, $a1
	stx.d	$a2, $s5, $s3
	st.d	$a1, $a0, 8
	st.d	$s8, $a0, 16
	move	$s1, $s5
	beq	$s0, $s6, .LBB14_13
# %bb.11:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB14_4 Depth=1
	move	$s1, $s5
	move	$a0, $s0
	.p2align	4, , 16
.LBB14_12:                              # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 16
	vst	$vr0, $s1, 16
	vld	$vr0, $a0, 0
	vst	$vr0, $s1, 0
	addi.d	$a0, $a0, 32
	addi.d	$s1, $s1, 32
	bne	$a0, $s6, .LBB14_12
.LBB14_13:                              # %_ZNSt6vectorISt4pairIomESaIS1_EE17_M_realloc_appendIJRKoRmEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB14_4 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s1, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s5, $a0, 0
	st.d	$s3, $a0, 8
	add.d	$s6, $s5, $s4
	st.d	$s6, $a0, 16
	move	$s0, $s5
	ori	$s4, $zero, 2
	addi.d	$s7, $s7, 1
	bne	$s7, $fp, .LBB14_4
.LBB14_14:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1088
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
.LBB14_15:
.Ltmp83:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.16:                               # %.noexc19
.LBB14_17:                              # %.loopexit.split-lp
.Ltmp85:                                # EH_LABEL
	b	.LBB14_21
.LBB14_18:                              # %.loopexit
.Ltmp82:                                # EH_LABEL
	b	.LBB14_21
.LBB14_19:
.Ltmp79:                                # EH_LABEL
	b	.LBB14_21
.LBB14_20:
.Ltmp76:                                # EH_LABEL
.LBB14_21:
	move	$fp, $a0
	beqz	$s0, .LBB14_23
# %bb.22:
	sub.d	$a1, $s6, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_23:                              # %_ZNSt6vectorISt4pairIomESaIS1_EED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv, .Lfunc_end14-_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorIomEESt6vectorISt4pairIT_T0_ESaIS5_EEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp72-.Lfunc_begin10         #   Call between .Lfunc_begin10 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp75-.Ltmp72                #   Call between .Ltmp72 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin10         #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin10         #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin10         # >> Call Site 4 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin10         #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin10         # >> Call Site 5 <<
	.uleb128 .Ltmp83-.Ltmp81                #   Call between .Ltmp81 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin10         # >> Call Site 6 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin10         #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin10         # >> Call Site 7 <<
	.uleb128 .Lfunc_end14-.Ltmp84           #   Call between .Ltmp84 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv
.LCPI15_0:
	.dword	0                               # 0x0
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.text
	.p2align	5
	.type	_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv,@function
_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv: # @_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1088
	.cfi_def_cfa_offset 5168
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1393
	st.d	$a2, $sp, 80
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 80
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB15_1
# %bb.2:                                # %_ZNSt12_Vector_baseISt4pairInlESaIS1_EE11_M_allocateEm.exit.i
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI15_0)
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 976
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	vst	$vr0, $sp, 64
	vst	$vr0, $sp, 48
	lu12i.w	$a0, 8192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s6, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	st.d	$s0, $a0, 8
	addu16i.d	$s5, $s0, 512
	st.d	$s5, $a0, 16
	ori	$s3, $zero, 2
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 63
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s7, 256
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_3:                               #   in Loop: Header=BB15_4 Depth=1
	slt	$a0, $zero, $fp
	sltui	$a1, $fp, 1
	masknez	$a0, $a0, $a1
	sltu	$a2, $s8, $s1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	masknez	$a1, $s8, $a0
	maskeqz	$a2, $s1, $a0
	or	$a1, $a2, $a1
	maskeqz	$a0, $fp, $a0
	st.d	$a0, $s0, 8
	st.d	$a1, $s0, 0
	st.d	$s8, $s0, 16
	addi.d	$s0, $s0, 32
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s0, $a0, 8
	addi.d	$s6, $s6, 1
	beq	$s6, $s7, .LBB15_14
.LBB15_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_12 Depth 2
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.5:                                # %.noexc15
                                        #   in Loop: Header=BB15_4 Depth=1
.Ltmp88:                                # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB15_4 Depth=1
.Ltmp91:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.7:                                # %_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	srai.d	$a1, $s1, 63
	or	$fp, $s2, $a1
	slt	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s8, $a0, $a2
	bne	$s0, $s5, .LBB15_3
# %bb.8:                                #   in Loop: Header=BB15_4 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$s2, $s5, $s0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB15_15
# %bb.9:                                #   in Loop: Header=BB15_4 Depth=1
	srai.d	$a0, $s2, 5
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slli.d	$s3, $a0, 5
.Ltmp94:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.10:                               # %.noexc20
                                        #   in Loop: Header=BB15_4 Depth=1
	move	$s4, $a0
	add.d	$a0, $a0, $s2
	slt	$a1, $zero, $fp
	sltui	$a2, $fp, 1
	masknez	$a1, $a1, $a2
	sltu	$a3, $s8, $s1
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $s1, $a1
	or	$a2, $a3, $a2
	maskeqz	$a1, $fp, $a1
	stx.d	$a2, $s4, $s2
	st.d	$a1, $a0, 8
	st.d	$s8, $a0, 16
	move	$fp, $s4
	beq	$s0, $s5, .LBB15_13
# %bb.11:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	move	$fp, $s4
	move	$a0, $s0
	.p2align	4, , 16
.LBB15_12:                              # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $a0, 0
	vst	$vr0, $fp, 0
	addi.d	$a0, $a0, 32
	addi.d	$fp, $fp, 32
	bne	$a0, $s5, .LBB15_12
.LBB15_13:                              # %_ZNSt6vectorISt4pairInlESaIS1_EE17_M_realloc_appendIJRKnRlEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB15_4 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 32
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a0, 0
	st.d	$s0, $a0, 8
	add.d	$s5, $s4, $s3
	st.d	$s5, $a0, 16
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 2
	addi.d	$s6, $s6, 1
	bne	$s6, $s7, .LBB15_4
.LBB15_14:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1104
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
.LBB15_15:
.Ltmp97:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.16:                               # %.noexc19
.LBB15_17:                              # %.loopexit.split-lp
.Ltmp99:                                # EH_LABEL
	b	.LBB15_21
.LBB15_18:                              # %.loopexit
.Ltmp96:                                # EH_LABEL
	b	.LBB15_21
.LBB15_19:
.Ltmp93:                                # EH_LABEL
	b	.LBB15_21
.LBB15_20:
.Ltmp90:                                # EH_LABEL
.LBB15_21:
	move	$fp, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB15_23
# %bb.22:
	sub.d	$a1, $s5, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_23:                              # %_ZNSt6vectorISt4pairInlESaIS1_EED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv, .Lfunc_end15-_ZN12_GLOBAL__N_139GetRandomIntrinsic128SampleSmallDivisorInlEESt6vectorISt4pairIT_T0_ESaIS5_EEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp86-.Lfunc_begin11         #   Call between .Lfunc_begin11 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin11         # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp86                #   Call between .Ltmp86 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin11         #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin11         # >> Call Site 3 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin11         #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin11         # >> Call Site 4 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin11         #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin11         # >> Call Site 5 <<
	.uleb128 .Ltmp97-.Ltmp95                #   Call between .Ltmp95 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin11         # >> Call Site 6 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin11         #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin11         # >> Call Site 7 <<
	.uleb128 .Lfunc_end15-.Ltmp98           #   Call between .Ltmp98 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_main.cpp
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 40
.Ltmp100:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp103:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp105:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.3:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_5:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_151benchmark_uniq_2BM_DivideIntrinsic128UniformDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_151benchmark_uniq_2BM_DivideIntrinsic128UniformDivisorE)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 47
	st.d	$a0, $sp, 40
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.6:                                # %.noexc.i4
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 39
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 39
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp111:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.7:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp113:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.8:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_10:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_151benchmark_uniq_3BM_DivideIntrinsic128UniformDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_151benchmark_uniq_3BM_DivideIntrinsic128UniformDivisorE)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 51
	st.d	$a0, $sp, 40
.Ltmp116:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.11:                               # %.noexc.i13
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.w	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.w	$a2, $a0, 47
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp119:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.12:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp121:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.13:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_15:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_154benchmark_uniq_4BM_RemainderIntrinsic128UniformDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_154benchmark_uniq_4BM_RemainderIntrinsic128UniformDivisorE)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 50
	st.d	$a0, $sp, 40
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.16:                               # %.noexc.i22
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.h	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.h	$a2, $a0, 48
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp127:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.17:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp129:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.18:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_20:                              # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_154benchmark_uniq_5BM_RemainderIntrinsic128UniformDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_154benchmark_uniq_5BM_RemainderIntrinsic128UniformDivisorE)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 46
	st.d	$a0, $sp, 40
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.21:                               # %.noexc.i31
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 38
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 38
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp135:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.22:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp137:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.23:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_25:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_149benchmark_uniq_6BM_DivideIntrinsic128SmallDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_149benchmark_uniq_6BM_DivideIntrinsic128SmallDivisorE)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 40
.Ltmp140:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.26:                               # %.noexc.i40
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp143:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.27:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp145:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.28:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_30:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_149benchmark_uniq_7BM_DivideIntrinsic128SmallDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_149benchmark_uniq_7BM_DivideIntrinsic128SmallDivisorE)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 49
	st.d	$a0, $sp, 40
.Ltmp148:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.31:                               # %.noexc.i49
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a2, $a2, %pc_lo12(.L.str.13)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.b	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.b	$a2, $a0, 48
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp151:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.32:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp153:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.33:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_35:                              # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_152benchmark_uniq_8BM_RemainderIntrinsic128SmallDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_152benchmark_uniq_8BM_RemainderIntrinsic128SmallDivisorE)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 40
.Ltmp156:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.36:                               # %.noexc.i58
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp159:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.37:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp161:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.38:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB16_40
# %bb.39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_40:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_152benchmark_uniq_9BM_RemainderIntrinsic128SmallDivisorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_152benchmark_uniq_9BM_RemainderIntrinsic128SmallDivisorE)
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB16_41:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55
.Ltmp158:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_42:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46
.Ltmp150:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_43:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37
.Ltmp142:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_44:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28
.Ltmp134:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_45:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19
.Ltmp126:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_46:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10
.Ltmp118:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_47:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp110:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_48:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp102:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_57
.LBB16_49:
.Ltmp163:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_56
	b	.LBB16_60
.LBB16_50:
.Ltmp155:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_56
	b	.LBB16_60
.LBB16_51:
.Ltmp147:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_56
	b	.LBB16_60
.LBB16_52:
.Ltmp139:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_56
	b	.LBB16_60
.LBB16_53:
.Ltmp131:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_56
	b	.LBB16_60
.LBB16_54:
.Ltmp123:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_56
	b	.LBB16_60
.LBB16_55:
.Ltmp115:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB16_60
.LBB16_56:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB16_58
.LBB16_57:                              # %common.resume.sink.split
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_58:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_59:
.Ltmp107:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_56
.LBB16_60:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s3, .LBB16_58
	b	.LBB16_57
.Lfunc_end16:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end16-_GLOBAL__sub_I_main.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp100-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin12        #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp106-.Ltmp103              #   Call between .Ltmp103 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin12        #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp108-.Ltmp106              #   Call between .Ltmp106 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin12        #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Ltmp114-.Ltmp111              #   Call between .Ltmp111 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin12        #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin12        # >> Call Site 7 <<
	.uleb128 .Ltmp116-.Ltmp114              #   Call between .Ltmp114 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin12        # >> Call Site 8 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin12        #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin12        # >> Call Site 9 <<
	.uleb128 .Ltmp122-.Ltmp119              #   Call between .Ltmp119 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin12        #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin12        # >> Call Site 10 <<
	.uleb128 .Ltmp124-.Ltmp122              #   Call between .Ltmp122 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin12        # >> Call Site 11 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin12        #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin12        # >> Call Site 12 <<
	.uleb128 .Ltmp130-.Ltmp127              #   Call between .Ltmp127 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin12        #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin12        # >> Call Site 13 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin12        # >> Call Site 14 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin12        #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin12        # >> Call Site 15 <<
	.uleb128 .Ltmp138-.Ltmp135              #   Call between .Ltmp135 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin12        #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin12        # >> Call Site 16 <<
	.uleb128 .Ltmp140-.Ltmp138              #   Call between .Ltmp138 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin12        # >> Call Site 17 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin12        #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin12        # >> Call Site 18 <<
	.uleb128 .Ltmp146-.Ltmp143              #   Call between .Ltmp143 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin12        #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin12        # >> Call Site 19 <<
	.uleb128 .Ltmp148-.Ltmp146              #   Call between .Ltmp146 and .Ltmp148
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin12        # >> Call Site 20 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin12        #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin12        # >> Call Site 21 <<
	.uleb128 .Ltmp154-.Ltmp151              #   Call between .Ltmp151 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin12        #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin12        # >> Call Site 22 <<
	.uleb128 .Ltmp156-.Ltmp154              #   Call between .Ltmp154 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin12        # >> Call Site 23 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin12        #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin12        # >> Call Site 24 <<
	.uleb128 .Ltmp162-.Ltmp159              #   Call between .Ltmp159 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin12        #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin12        # >> Call Site 25 <<
	.uleb128 .Lfunc_end16-.Ltmp162          #   Call between .Ltmp162 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZN12_GLOBAL__N_151benchmark_uniq_2BM_DivideIntrinsic128UniformDivisorE,@object # @_ZN12_GLOBAL__N_151benchmark_uniq_2BM_DivideIntrinsic128UniformDivisorE
	.local	_ZN12_GLOBAL__N_151benchmark_uniq_2BM_DivideIntrinsic128UniformDivisorE
	.comm	_ZN12_GLOBAL__N_151benchmark_uniq_2BM_DivideIntrinsic128UniformDivisorE,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_DivideIntrinsic128UniformDivisor<__uint128_t>"
	.size	.L.str, 49

	.type	_ZN12_GLOBAL__N_151benchmark_uniq_3BM_DivideIntrinsic128UniformDivisorE,@object # @_ZN12_GLOBAL__N_151benchmark_uniq_3BM_DivideIntrinsic128UniformDivisorE
	.local	_ZN12_GLOBAL__N_151benchmark_uniq_3BM_DivideIntrinsic128UniformDivisorE
	.comm	_ZN12_GLOBAL__N_151benchmark_uniq_3BM_DivideIntrinsic128UniformDivisorE,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_DivideIntrinsic128UniformDivisor<__int128_t>"
	.size	.L.str.3, 48

	.type	_ZN12_GLOBAL__N_154benchmark_uniq_4BM_RemainderIntrinsic128UniformDivisorE,@object # @_ZN12_GLOBAL__N_154benchmark_uniq_4BM_RemainderIntrinsic128UniformDivisorE
	.local	_ZN12_GLOBAL__N_154benchmark_uniq_4BM_RemainderIntrinsic128UniformDivisorE
	.comm	_ZN12_GLOBAL__N_154benchmark_uniq_4BM_RemainderIntrinsic128UniformDivisorE,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_RemainderIntrinsic128UniformDivisor<__uint128_t>"
	.size	.L.str.5, 52

	.type	_ZN12_GLOBAL__N_154benchmark_uniq_5BM_RemainderIntrinsic128UniformDivisorE,@object # @_ZN12_GLOBAL__N_154benchmark_uniq_5BM_RemainderIntrinsic128UniformDivisorE
	.local	_ZN12_GLOBAL__N_154benchmark_uniq_5BM_RemainderIntrinsic128UniformDivisorE
	.comm	_ZN12_GLOBAL__N_154benchmark_uniq_5BM_RemainderIntrinsic128UniformDivisorE,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BM_RemainderIntrinsic128UniformDivisor<__int128_t>"
	.size	.L.str.7, 51

	.type	_ZN12_GLOBAL__N_149benchmark_uniq_6BM_DivideIntrinsic128SmallDivisorE,@object # @_ZN12_GLOBAL__N_149benchmark_uniq_6BM_DivideIntrinsic128SmallDivisorE
	.local	_ZN12_GLOBAL__N_149benchmark_uniq_6BM_DivideIntrinsic128SmallDivisorE
	.comm	_ZN12_GLOBAL__N_149benchmark_uniq_6BM_DivideIntrinsic128SmallDivisorE,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BM_DivideIntrinsic128SmallDivisor<__uint128_t>"
	.size	.L.str.9, 47

	.type	_ZN12_GLOBAL__N_149benchmark_uniq_7BM_DivideIntrinsic128SmallDivisorE,@object # @_ZN12_GLOBAL__N_149benchmark_uniq_7BM_DivideIntrinsic128SmallDivisorE
	.local	_ZN12_GLOBAL__N_149benchmark_uniq_7BM_DivideIntrinsic128SmallDivisorE
	.comm	_ZN12_GLOBAL__N_149benchmark_uniq_7BM_DivideIntrinsic128SmallDivisorE,8,8
	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"BM_DivideIntrinsic128SmallDivisor<__int128_t>"
	.size	.L.str.11, 46

	.type	_ZN12_GLOBAL__N_152benchmark_uniq_8BM_RemainderIntrinsic128SmallDivisorE,@object # @_ZN12_GLOBAL__N_152benchmark_uniq_8BM_RemainderIntrinsic128SmallDivisorE
	.local	_ZN12_GLOBAL__N_152benchmark_uniq_8BM_RemainderIntrinsic128SmallDivisorE
	.comm	_ZN12_GLOBAL__N_152benchmark_uniq_8BM_RemainderIntrinsic128SmallDivisorE,8,8
	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"BM_RemainderIntrinsic128SmallDivisor<__uint128_t>"
	.size	.L.str.13, 50

	.type	_ZN12_GLOBAL__N_152benchmark_uniq_9BM_RemainderIntrinsic128SmallDivisorE,@object # @_ZN12_GLOBAL__N_152benchmark_uniq_9BM_RemainderIntrinsic128SmallDivisorE
	.local	_ZN12_GLOBAL__N_152benchmark_uniq_9BM_RemainderIntrinsic128SmallDivisorE
	.comm	_ZN12_GLOBAL__N_152benchmark_uniq_9BM_RemainderIntrinsic128SmallDivisorE,8,8
	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"BM_RemainderIntrinsic128SmallDivisor<__int128_t>"
	.size	.L.str.15, 49

	.type	.L__const.main.arg0_default,@object # @__const.main.arg0_default
	.p2align	3, 0x0
.L__const.main.arg0_default:
	.asciz	"benchmark"
	.size	.L__const.main.arg0_default, 10

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.18, 26

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_main.cpp
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
	.addrsig_sym _ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
	.addrsig_sym _ZN12_GLOBAL__N_135BM_DivideIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
	.addrsig_sym _ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorIoEEvRN9benchmark5StateE
	.addrsig_sym _ZN12_GLOBAL__N_138BM_RemainderIntrinsic128UniformDivisorInEEvRN9benchmark5StateE
	.addrsig_sym _ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
	.addrsig_sym _ZN12_GLOBAL__N_133BM_DivideIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
	.addrsig_sym _ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorIoEEvRN9benchmark5StateE
	.addrsig_sym _ZN12_GLOBAL__N_136BM_RemainderIntrinsic128SmallDivisorInEEvRN9benchmark5StateE
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _GLOBAL__sub_I_main.cpp
	.addrsig_sym _Unwind_Resume
