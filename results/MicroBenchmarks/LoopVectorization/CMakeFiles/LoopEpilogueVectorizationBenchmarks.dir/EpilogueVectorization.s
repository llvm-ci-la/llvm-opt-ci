	.file	"EpilogueVectorization.cpp"
	.section	.text._Z12benchAutoVecIhEvRN9benchmark5StateE,"axG",@progbits,_Z12benchAutoVecIhEvRN9benchmark5StateE,comdat
	.weak	_Z12benchAutoVecIhEvRN9benchmark5StateE # -- Begin function _Z12benchAutoVecIhEvRN9benchmark5StateE
	.p2align	5
	.type	_Z12benchAutoVecIhEvRN9benchmark5StateE,@function
_Z12benchAutoVecIhEvRN9benchmark5StateE: # @_Z12benchAutoVecIhEvRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
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
	pcalau12i	$a0, %pc_hi20(_ZL11loopAutoVecIhEmPT_S1_S1_i)
	addi.d	$a0, $a0, %pc_lo12(_ZL11loopAutoVecIhEmPT_S1_S1_i)
	ld.d	$a1, $fp, 32
	st.d	$a0, $sp, 64
	ld.d	$s3, $a1, 0
	st.d	$s3, $sp, 56
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 48
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 40
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:
	move	$s0, $a0
	st.d	$a0, $sp, 32
	lu12i.w	$a0, 15
	ori	$s5, $a0, 3840
	bstrpick.d	$s4, $s3, 31, 0
	st.h	$s5, $sp, 24
	beqz	$s4, .LBB0_12
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s6, $s4
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.5:                                # %.noexc8
                                        #   in Loop: Header=BB0_4 Depth=1
	st.b	$a0, $s2, 0
	addi.d	$s6, $s6, -1
	addi.d	$s2, $s2, 1
	bnez	$s6, .LBB0_4
# %bb.6:                                # %.lr.ph.preheader.i10
	st.h	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s2, $a0, %pc_lo12(_ZL3rng)
	move	$s3, $s4
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph.i12
                                        # =>This Inner Loop Header: Depth=1
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.8:                                # %.noexc16
                                        #   in Loop: Header=BB0_7 Depth=1
	st.b	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB0_7
# %bb.9:                                # %.lr.ph.preheader.i19
	st.h	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.i21
                                        # =>This Inner Loop Header: Depth=1
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.11:                               # %.noexc25
                                        #   in Loop: Header=BB0_10 Depth=1
	st.b	$a0, $s0, 0
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 1
	bnez	$s4, .LBB0_10
.LBB0_12:                               # %.loopexit59
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.13:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB0_18
# %bb.14:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB0_18
# %bb.15:
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 40
	addi.d	$s3, $sp, 32
	pcalau12i	$s4, %pc_hi20(g_sum)
	.p2align	4, , 16
.LBB0_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	#MEMBARRIER
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 8
	addi.d	$a4, $sp, 56
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.17:                               # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB0_16 Depth=1
	ld.d	$a1, $s4, %pc_lo12(g_sum)
	add.d	$a0, $a1, $a0
	addi.d	$s0, $s0, -1
	st.d	$a0, $s4, %pc_lo12(g_sum)
	bnez	$s0, .LBB0_16
.LBB0_18:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp20:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.19:                               # %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB0_21
# %bb.20:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i35
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_21:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit36
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB0_23
# %bb.22:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i38
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_23:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit39
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB0_25
# %bb.24:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i41
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_25:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit42
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
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
.LBB0_26:                               # %.thread
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	b	.LBB0_38
.LBB0_27:                               # %.thread54
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_28:
.Ltmp22:                                # EH_LABEL
	b	.LBB0_33
.LBB0_29:                               # %.loopexit
.Ltmp14:                                # EH_LABEL
	b	.LBB0_33
.LBB0_30:                               # %.loopexit.split-lp.loopexit
.Ltmp11:                                # EH_LABEL
	b	.LBB0_33
.LBB0_31:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp8:                                 # EH_LABEL
	b	.LBB0_33
.LBB0_32:
.Ltmp19:                                # EH_LABEL
.LBB0_33:                               # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB0_37
# %bb.34:
	ld.d	$s1, $sp, 40
	bnez	$s1, .LBB0_38
.LBB0_35:
	ld.d	$s2, $sp, 48
	bnez	$s2, .LBB0_39
.LBB0_36:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit33
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 40
	beqz	$s1, .LBB0_35
.LBB0_38:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i29
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB0_36
.LBB0_39:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z12benchAutoVecIhEvRN9benchmark5StateE, .Lfunc_end0-_Z12benchAutoVecIhEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table._Z12benchAutoVecIhEvRN9benchmark5StateE,"aG",@progbits,_Z12benchAutoVecIhEvRN9benchmark5StateE,comdat
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
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Lfunc_end0-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z21benchReductionAutoVecIhEvRN9benchmark5StateE,"axG",@progbits,_Z21benchReductionAutoVecIhEvRN9benchmark5StateE,comdat
	.weak	_Z21benchReductionAutoVecIhEvRN9benchmark5StateE # -- Begin function _Z21benchReductionAutoVecIhEvRN9benchmark5StateE
	.p2align	5
	.type	_Z21benchReductionAutoVecIhEvRN9benchmark5StateE,@function
_Z21benchReductionAutoVecIhEvRN9benchmark5StateE: # @_Z21benchReductionAutoVecIhEvRN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
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
	pcalau12i	$a0, %pc_hi20(_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i)
	addi.d	$a0, $a0, %pc_lo12(_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i)
	ld.d	$a1, $fp, 32
	st.d	$a0, $sp, 64
	ld.d	$s3, $a1, 0
	st.d	$s3, $sp, 56
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 48
.Ltmp23:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 40
.Ltmp26:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.2:
	move	$s0, $a0
	st.d	$a0, $sp, 32
	lu12i.w	$a0, 15
	ori	$s5, $a0, 3840
	bstrpick.d	$s4, $s3, 31, 0
	st.h	$s5, $sp, 24
	beqz	$s4, .LBB1_12
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s6, $s4
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp29:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.5:                                # %.noexc8
                                        #   in Loop: Header=BB1_4 Depth=1
	st.b	$a0, $s2, 0
	addi.d	$s6, $s6, -1
	addi.d	$s2, $s2, 1
	bnez	$s6, .LBB1_4
# %bb.6:                                # %.lr.ph.preheader.i10
	st.h	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s2, $a0, %pc_lo12(_ZL3rng)
	move	$s3, $s4
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph.i12
                                        # =>This Inner Loop Header: Depth=1
.Ltmp32:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.8:                                # %.noexc16
                                        #   in Loop: Header=BB1_7 Depth=1
	st.b	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB1_7
# %bb.9:                                # %.lr.ph.preheader.i19
	st.h	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph.i21
                                        # =>This Inner Loop Header: Depth=1
.Ltmp35:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.11:                               # %.noexc25
                                        #   in Loop: Header=BB1_10 Depth=1
	st.b	$a0, $s0, 0
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 1
	bnez	$s4, .LBB1_10
.LBB1_12:                               # %.loopexit59
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp38:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.13:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB1_18
# %bb.14:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB1_18
# %bb.15:
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 40
	addi.d	$s3, $sp, 32
	pcalau12i	$s4, %pc_hi20(g_sum)
	.p2align	4, , 16
.LBB1_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	#MEMBARRIER
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 8
	addi.d	$a4, $sp, 56
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.17:                               # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a1, $s4, %pc_lo12(g_sum)
	add.d	$a0, $a1, $a0
	addi.d	$s0, $s0, -1
	st.d	$a0, $s4, %pc_lo12(g_sum)
	bnez	$s0, .LBB1_16
.LBB1_18:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp43:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.19:                               # %_ZL32runBenchForEpilogueVectorizationIhEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB1_21
# %bb.20:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i35
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_21:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit36
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB1_23
# %bb.22:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i38
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit39
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB1_25
# %bb.24:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i41
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_25:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit42
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
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
.LBB1_26:                               # %.thread
.Ltmp28:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB1_38
.LBB1_27:                               # %.thread54
.Ltmp25:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_28:
.Ltmp45:                                # EH_LABEL
	b	.LBB1_33
.LBB1_29:                               # %.loopexit
.Ltmp37:                                # EH_LABEL
	b	.LBB1_33
.LBB1_30:                               # %.loopexit.split-lp.loopexit
.Ltmp34:                                # EH_LABEL
	b	.LBB1_33
.LBB1_31:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp31:                                # EH_LABEL
	b	.LBB1_33
.LBB1_32:
.Ltmp42:                                # EH_LABEL
.LBB1_33:                               # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB1_37
# %bb.34:
	ld.d	$s1, $sp, 40
	bnez	$s1, .LBB1_38
.LBB1_35:
	ld.d	$s2, $sp, 48
	bnez	$s2, .LBB1_39
.LBB1_36:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit33
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_37:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 40
	beqz	$s1, .LBB1_35
.LBB1_38:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i29
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB1_36
.LBB1_39:                               # %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z21benchReductionAutoVecIhEvRN9benchmark5StateE, .Lfunc_end1-_Z21benchReductionAutoVecIhEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table._Z21benchReductionAutoVecIhEvRN9benchmark5StateE,"aG",@progbits,_Z21benchReductionAutoVecIhEvRN9benchmark5StateE,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Lfunc_end1-.Ltmp44            #   Call between .Ltmp44 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z12benchAutoVecItEvRN9benchmark5StateE,"axG",@progbits,_Z12benchAutoVecItEvRN9benchmark5StateE,comdat
	.weak	_Z12benchAutoVecItEvRN9benchmark5StateE # -- Begin function _Z12benchAutoVecItEvRN9benchmark5StateE
	.p2align	5
	.type	_Z12benchAutoVecItEvRN9benchmark5StateE,@function
_Z12benchAutoVecItEvRN9benchmark5StateE: # @_Z12benchAutoVecItEvRN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
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
	pcalau12i	$a0, %pc_hi20(_ZL11loopAutoVecItEmPT_S1_S1_i)
	addi.d	$a0, $a0, %pc_lo12(_ZL11loopAutoVecItEmPT_S1_S1_i)
	ld.d	$a1, $fp, 32
	st.d	$a0, $sp, 64
	ld.d	$s3, $a1, 0
	st.d	$s3, $sp, 56
	slli.d	$a0, $s3, 1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s0, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 48
.Ltmp46:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 40
.Ltmp49:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.2:
	move	$s0, $a0
	st.d	$a0, $sp, 32
	lu12i.w	$s5, -16
	lu32i.d	$s5, 0
	bstrpick.d	$s4, $s3, 31, 0
	st.w	$s5, $sp, 24
	beqz	$s4, .LBB2_12
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s6, $s4
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp52:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.5:                                # %.noexc
                                        #   in Loop: Header=BB2_4 Depth=1
	st.h	$a0, $s2, 0
	addi.d	$s6, $s6, -1
	addi.d	$s2, $s2, 2
	bnez	$s6, .LBB2_4
# %bb.6:                                # %.lr.ph.preheader.i2
	st.w	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s2, $a0, %pc_lo12(_ZL3rng)
	move	$s3, $s4
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
.Ltmp55:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.8:                                # %.noexc8
                                        #   in Loop: Header=BB2_7 Depth=1
	st.h	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 2
	bnez	$s3, .LBB2_7
# %bb.9:                                # %.lr.ph.preheader.i11
	st.w	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB2_10:                               # %.lr.ph.i13
                                        # =>This Inner Loop Header: Depth=1
.Ltmp58:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.11:                               # %.noexc17
                                        #   in Loop: Header=BB2_10 Depth=1
	st.h	$a0, $s0, 0
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 2
	bnez	$s4, .LBB2_10
.LBB2_12:                               # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp61:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.13:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	bnez	$s1, .LBB2_18
# %bb.14:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	beqz	$s0, .LBB2_18
# %bb.15:
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 40
	addi.d	$s3, $sp, 32
	pcalau12i	$s4, %pc_hi20(g_sum)
	.p2align	4, , 16
.LBB2_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	#MEMBARRIER
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 8
	addi.d	$a4, $sp, 56
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.17:                               # %_ZN9benchmark5State3endEv.exit.i
                                        #   in Loop: Header=BB2_16 Depth=1
	ld.d	$a1, $s4, %pc_lo12(g_sum)
	add.d	$a0, $a1, $a0
	addi.d	$s0, $s0, -1
	st.d	$a0, $s4, %pc_lo12(g_sum)
	bnez	$s0, .LBB2_16
.LBB2_18:                               # %_ZN9benchmark5State3endEv.exit.i._crit_edge
.Ltmp66:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.19:                               # %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB2_21
# %bb.20:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_21:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB2_23
# %bb.22:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB2_25
# %bb.24:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_25:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
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
.LBB2_26:                               # %.thread
.Ltmp51:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB2_38
.LBB2_27:                               # %.thread46
.Ltmp48:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_28:
.Ltmp68:                                # EH_LABEL
	b	.LBB2_33
.LBB2_29:                               # %.loopexit
.Ltmp60:                                # EH_LABEL
	b	.LBB2_33
.LBB2_30:                               # %.loopexit.split-lp.loopexit
.Ltmp57:                                # EH_LABEL
	b	.LBB2_33
.LBB2_31:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp54:                                # EH_LABEL
	b	.LBB2_33
.LBB2_32:
.Ltmp65:                                # EH_LABEL
.LBB2_33:                               # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB2_37
# %bb.34:
	ld.d	$s1, $sp, 40
	bnez	$s1, .LBB2_38
.LBB2_35:
	ld.d	$s2, $sp, 48
	bnez	$s2, .LBB2_39
.LBB2_36:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_37:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 40
	beqz	$s1, .LBB2_35
.LBB2_38:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB2_36
.LBB2_39:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z12benchAutoVecItEvRN9benchmark5StateE, .Lfunc_end2-_Z12benchAutoVecItEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table._Z12benchAutoVecItEvRN9benchmark5StateE,"aG",@progbits,_Z12benchAutoVecItEvRN9benchmark5StateE,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp46-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin2          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp68-.Lfunc_begin2          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin2          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin2          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Lfunc_end2-.Ltmp67            #   Call between .Ltmp67 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z21benchReductionAutoVecItEvRN9benchmark5StateE,"axG",@progbits,_Z21benchReductionAutoVecItEvRN9benchmark5StateE,comdat
	.weak	_Z21benchReductionAutoVecItEvRN9benchmark5StateE # -- Begin function _Z21benchReductionAutoVecItEvRN9benchmark5StateE
	.p2align	5
	.type	_Z21benchReductionAutoVecItEvRN9benchmark5StateE,@function
_Z21benchReductionAutoVecItEvRN9benchmark5StateE: # @_Z21benchReductionAutoVecItEvRN9benchmark5StateE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
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
	pcalau12i	$a0, %pc_hi20(_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i)
	addi.d	$a0, $a0, %pc_lo12(_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i)
	ld.d	$a1, $fp, 32
	st.d	$a0, $sp, 64
	ld.d	$s3, $a1, 0
	st.d	$s3, $sp, 56
	slli.d	$a0, $s3, 1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s0, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 48
.Ltmp69:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 40
.Ltmp72:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.2:
	move	$s0, $a0
	st.d	$a0, $sp, 32
	lu12i.w	$s5, -16
	lu32i.d	$s5, 0
	bstrpick.d	$s4, $s3, 31, 0
	st.w	$s5, $sp, 24
	beqz	$s4, .LBB3_12
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s6, $s4
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp75:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.5:                                # %.noexc
                                        #   in Loop: Header=BB3_4 Depth=1
	st.h	$a0, $s2, 0
	addi.d	$s6, $s6, -1
	addi.d	$s2, $s2, 2
	bnez	$s6, .LBB3_4
# %bb.6:                                # %.lr.ph.preheader.i2
	st.w	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s2, $a0, %pc_lo12(_ZL3rng)
	move	$s3, $s4
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.8:                                # %.noexc8
                                        #   in Loop: Header=BB3_7 Depth=1
	st.h	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 2
	bnez	$s3, .LBB3_7
# %bb.9:                                # %.lr.ph.preheader.i11
	st.w	$s5, $sp, 24
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB3_10:                               # %.lr.ph.i13
                                        # =>This Inner Loop Header: Depth=1
.Ltmp81:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.11:                               # %.noexc17
                                        #   in Loop: Header=BB3_10 Depth=1
	st.h	$a0, $s0, 0
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 2
	bnez	$s4, .LBB3_10
.LBB3_12:                               # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp84:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.13:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	bnez	$s1, .LBB3_18
# %bb.14:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	beqz	$s0, .LBB3_18
# %bb.15:
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 40
	addi.d	$s3, $sp, 32
	pcalau12i	$s4, %pc_hi20(g_sum)
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	#MEMBARRIER
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 8
	addi.d	$a4, $sp, 56
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.17:                               # %_ZN9benchmark5State3endEv.exit.i
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a1, $s4, %pc_lo12(g_sum)
	add.d	$a0, $a1, $a0
	addi.d	$s0, $s0, -1
	st.d	$a0, $s4, %pc_lo12(g_sum)
	bnez	$s0, .LBB3_16
.LBB3_18:                               # %_ZN9benchmark5State3endEv.exit.i._crit_edge
.Ltmp89:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.19:                               # %_ZL32runBenchForEpilogueVectorizationItEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB3_21
# %bb.20:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_21:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit28
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB3_23
# %bb.22:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_23:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit31
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB3_25
# %bb.24:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit34
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
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
.LBB3_26:                               # %.thread
.Ltmp74:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB3_38
.LBB3_27:                               # %.thread46
.Ltmp71:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_28:
.Ltmp91:                                # EH_LABEL
	b	.LBB3_33
.LBB3_29:                               # %.loopexit
.Ltmp83:                                # EH_LABEL
	b	.LBB3_33
.LBB3_30:                               # %.loopexit.split-lp.loopexit
.Ltmp80:                                # EH_LABEL
	b	.LBB3_33
.LBB3_31:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp77:                                # EH_LABEL
	b	.LBB3_33
.LBB3_32:
.Ltmp88:                                # EH_LABEL
.LBB3_33:                               # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB3_37
# %bb.34:
	ld.d	$s1, $sp, 40
	bnez	$s1, .LBB3_38
.LBB3_35:
	ld.d	$s2, $sp, 48
	bnez	$s2, .LBB3_39
.LBB3_36:                               # %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_37:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 40
	beqz	$s1, .LBB3_35
.LBB3_38:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB3_36
.LBB3_39:                               # %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z21benchReductionAutoVecItEvRN9benchmark5StateE, .Lfunc_end3-_Z21benchReductionAutoVecItEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table._Z21benchReductionAutoVecItEvRN9benchmark5StateE,"aG",@progbits,_Z21benchReductionAutoVecItEvRN9benchmark5StateE,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp69-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp91-.Lfunc_begin3          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin3          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin3          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Lfunc_end3-.Ltmp90            #   Call between .Ltmp90 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z12benchAutoVecIjEvRN9benchmark5StateE,"axG",@progbits,_Z12benchAutoVecIjEvRN9benchmark5StateE,comdat
	.weak	_Z12benchAutoVecIjEvRN9benchmark5StateE # -- Begin function _Z12benchAutoVecIjEvRN9benchmark5StateE
	.p2align	5
	.type	_Z12benchAutoVecIjEvRN9benchmark5StateE,@function
_Z12benchAutoVecIjEvRN9benchmark5StateE: # @_Z12benchAutoVecIjEvRN9benchmark5StateE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZL11loopAutoVecIjEmPT_S1_S1_i)
	addi.d	$a0, $a0, %pc_lo12(_ZL11loopAutoVecIjEmPT_S1_S1_i)
	ld.d	$a1, $fp, 32
	st.d	$a0, $sp, 64
	ld.d	$s3, $a1, 0
	st.d	$s3, $sp, 56
	srli.d	$a0, $s3, 62
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 48
.Ltmp92:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 40
.Ltmp95:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.2:
	move	$s0, $a0
	st.d	$a0, $sp, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	bstrpick.d	$s4, $s3, 31, 0
	st.d	$a0, $sp, 72
	beqz	$s4, .LBB4_12
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s5, $s4
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp98:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.5:                                # %.noexc
                                        #   in Loop: Header=BB4_4 Depth=1
	st.w	$a0, $s2, 0
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 4
	bnez	$s5, .LBB4_4
# %bb.6:                                # %.lr.ph.preheader.i2
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s2, $a0, %pc_lo12(_ZL3rng)
	move	$s3, $s4
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
.Ltmp101:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.8:                                # %.noexc8
                                        #   in Loop: Header=BB4_7 Depth=1
	st.w	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 4
	bnez	$s3, .LBB4_7
# %bb.9:                                # %.lr.ph.preheader.i11
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB4_10:                               # %.lr.ph.i13
                                        # =>This Inner Loop Header: Depth=1
.Ltmp104:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.11:                               # %.noexc17
                                        #   in Loop: Header=BB4_10 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 4
	bnez	$s4, .LBB4_10
.LBB4_12:                               # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp107:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.13:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	bnez	$s1, .LBB4_18
# %bb.14:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	beqz	$s0, .LBB4_18
# %bb.15:
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 40
	addi.d	$s3, $sp, 32
	pcalau12i	$s4, %pc_hi20(g_sum)
	.p2align	4, , 16
.LBB4_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	#MEMBARRIER
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	st.d	$a0, $sp, 72
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
.Ltmp109:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 56
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.17:                               # %_ZN9benchmark5State3endEv.exit.i
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a1, $s4, %pc_lo12(g_sum)
	add.d	$a0, $a1, $a0
	addi.d	$s0, $s0, -1
	st.d	$a0, $s4, %pc_lo12(g_sum)
	bnez	$s0, .LBB4_16
.LBB4_18:                               # %_ZN9benchmark5State3endEv.exit.i._crit_edge
.Ltmp112:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.19:                               # %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB4_21
# %bb.20:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB4_23
# %bb.22:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB4_25
# %bb.24:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34
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
.LBB4_26:                               # %.thread
.Ltmp97:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB4_38
.LBB4_27:                               # %.thread46
.Ltmp94:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_28:
.Ltmp114:                               # EH_LABEL
	b	.LBB4_33
.LBB4_29:                               # %.loopexit
.Ltmp106:                               # EH_LABEL
	b	.LBB4_33
.LBB4_30:                               # %.loopexit.split-lp.loopexit
.Ltmp103:                               # EH_LABEL
	b	.LBB4_33
.LBB4_31:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp100:                               # EH_LABEL
	b	.LBB4_33
.LBB4_32:
.Ltmp111:                               # EH_LABEL
.LBB4_33:                               # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB4_37
# %bb.34:
	ld.d	$s1, $sp, 40
	bnez	$s1, .LBB4_38
.LBB4_35:
	ld.d	$s2, $sp, 48
	bnez	$s2, .LBB4_39
.LBB4_36:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_37:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 40
	beqz	$s1, .LBB4_35
.LBB4_38:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB4_36
.LBB4_39:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z12benchAutoVecIjEvRN9benchmark5StateE, .Lfunc_end4-_Z12benchAutoVecIjEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table._Z12benchAutoVecIjEvRN9benchmark5StateE,"aG",@progbits,_Z12benchAutoVecIjEvRN9benchmark5StateE,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp92-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin4          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin4          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin4         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin4         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin4         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp114-.Lfunc_begin4         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin4         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin4         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Lfunc_end4-.Ltmp113           #   Call between .Ltmp113 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z21benchReductionAutoVecIjEvRN9benchmark5StateE,"axG",@progbits,_Z21benchReductionAutoVecIjEvRN9benchmark5StateE,comdat
	.weak	_Z21benchReductionAutoVecIjEvRN9benchmark5StateE # -- Begin function _Z21benchReductionAutoVecIjEvRN9benchmark5StateE
	.p2align	5
	.type	_Z21benchReductionAutoVecIjEvRN9benchmark5StateE,@function
_Z21benchReductionAutoVecIjEvRN9benchmark5StateE: # @_Z21benchReductionAutoVecIjEvRN9benchmark5StateE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i)
	addi.d	$a0, $a0, %pc_lo12(_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i)
	ld.d	$a1, $fp, 32
	st.d	$a0, $sp, 64
	ld.d	$s3, $a1, 0
	st.d	$s3, $sp, 56
	srli.d	$a0, $s3, 62
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 48
.Ltmp115:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 40
.Ltmp118:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.2:
	move	$s0, $a0
	st.d	$a0, $sp, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	bstrpick.d	$s4, $s3, 31, 0
	st.d	$a0, $sp, 72
	beqz	$s4, .LBB5_12
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s5, $s4
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp121:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.5:                                # %.noexc
                                        #   in Loop: Header=BB5_4 Depth=1
	st.w	$a0, $s2, 0
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 4
	bnez	$s5, .LBB5_4
# %bb.6:                                # %.lr.ph.preheader.i2
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s2, $a0, %pc_lo12(_ZL3rng)
	move	$s3, $s4
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.8:                                # %.noexc8
                                        #   in Loop: Header=BB5_7 Depth=1
	st.w	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 4
	bnez	$s3, .LBB5_7
# %bb.9:                                # %.lr.ph.preheader.i11
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB5_10:                               # %.lr.ph.i13
                                        # =>This Inner Loop Header: Depth=1
.Ltmp127:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.11:                               # %.noexc17
                                        #   in Loop: Header=BB5_10 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 4
	bnez	$s4, .LBB5_10
.LBB5_12:                               # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.i
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp130:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.13:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	bnez	$s1, .LBB5_18
# %bb.14:                               # %_ZN9benchmark5State3endEv.exit.i.preheader
	beqz	$s0, .LBB5_18
# %bb.15:
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 40
	addi.d	$s3, $sp, 32
	pcalau12i	$s4, %pc_hi20(g_sum)
	.p2align	4, , 16
.LBB5_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	#MEMBARRIER
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	st.d	$a0, $sp, 72
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 56
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.17:                               # %_ZN9benchmark5State3endEv.exit.i
                                        #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a1, $s4, %pc_lo12(g_sum)
	add.d	$a0, $a1, $a0
	addi.d	$s0, $s0, -1
	st.d	$a0, $s4, %pc_lo12(g_sum)
	bnez	$s0, .LBB5_16
.LBB5_18:                               # %_ZN9benchmark5State3endEv.exit.i._crit_edge
.Ltmp135:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.19:                               # %_ZL32runBenchForEpilogueVectorizationIjEvRN9benchmark5StateEPFmPT_S4_S4_iE.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB5_21
# %bb.20:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i27
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit28
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB5_23
# %bb.22:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit31
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB5_25
# %bb.24:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_25:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit34
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
.LBB5_26:                               # %.thread
.Ltmp120:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_38
.LBB5_27:                               # %.thread46
.Ltmp117:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_28:
.Ltmp137:                               # EH_LABEL
	b	.LBB5_33
.LBB5_29:                               # %.loopexit
.Ltmp129:                               # EH_LABEL
	b	.LBB5_33
.LBB5_30:                               # %.loopexit.split-lp.loopexit
.Ltmp126:                               # EH_LABEL
	b	.LBB5_33
.LBB5_31:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp123:                               # EH_LABEL
	b	.LBB5_33
.LBB5_32:
.Ltmp134:                               # EH_LABEL
.LBB5_33:                               # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB5_37
# %bb.34:
	ld.d	$s1, $sp, 40
	bnez	$s1, .LBB5_38
.LBB5_35:
	ld.d	$s2, $sp, 48
	bnez	$s2, .LBB5_39
.LBB5_36:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 40
	beqz	$s1, .LBB5_35
.LBB5_38:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB5_36
.LBB5_39:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z21benchReductionAutoVecIjEvRN9benchmark5StateE, .Lfunc_end5-_Z21benchReductionAutoVecIjEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table._Z21benchReductionAutoVecIjEvRN9benchmark5StateE,"aG",@progbits,_Z21benchReductionAutoVecIjEvRN9benchmark5StateE,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp115-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin5         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin5         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin5         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin5         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin5         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp137-.Lfunc_begin5         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin5         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin5         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Lfunc_end5-.Ltmp136           #   Call between .Ltmp136 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL11loopAutoVecIhEmPT_S1_S1_i
	.type	_ZL11loopAutoVecIhEmPT_S1_S1_i,@function
_ZL11loopAutoVecIhEmPT_S1_S1_i:         # @_ZL11loopAutoVecIhEmPT_S1_S1_i
# %bb.0:
	blez	$a3, .LBB6_5
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_6
# %bb.2:
	move	$a4, $zero
.LBB6_3:                                # %.lr.ph.preheader
	add.d	$a0, $a0, $a4
	add.d	$a2, $a2, $a4
	add.d	$a1, $a1, $a4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	ld.b	$a5, $a2, 0
	add.d	$a4, $a5, $a4
	st.b	$a4, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB6_4
.LBB6_5:                                # %._crit_edge
	move	$a0, $zero
	ret
.LBB6_6:                                # %vector.memcheck
	sub.d	$a6, $a0, $a1
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB6_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a6, $a0, $a2
	bltu	$a6, $a5, .LBB6_3
# %bb.8:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB6_13
# %bb.9:
	move	$a4, $zero
.LBB6_10:                               # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a4, $a3, 30, 4
	slli.d	$a4, $a4, 4
	sub.d	$a5, $t0, $a4
	add.d	$a6, $a0, $t0
	add.d	$a7, $a2, $t0
	add.d	$t0, $a1, $t0
	.p2align	4, , 16
.LBB6_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vld	$vr1, $a7, 0
	vadd.b	$vr0, $vr1, $vr0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB6_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a4, $a3, .LBB6_3
	b	.LBB6_5
.LBB6_13:                               # %vector.ph
	andi	$a5, $a3, 16
	bstrpick.d	$a4, $a3, 30, 5
	slli.d	$a4, $a4, 5
	addi.d	$a6, $a0, 16
	addi.d	$a7, $a2, 16
	addi.d	$t0, $a1, 16
	move	$t1, $a4
	.p2align	4, , 16
.LBB6_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vadd.b	$vr0, $vr2, $vr0
	vadd.b	$vr1, $vr3, $vr1
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t1, $t1, -32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB6_14
# %bb.15:                               # %middle.block
	beq	$a4, $a3, .LBB6_5
# %bb.16:                               # %vec.epilog.iter.check
	beqz	$a5, .LBB6_3
	b	.LBB6_10
.Lfunc_end6:
	.size	_ZL11loopAutoVecIhEmPT_S1_S1_i, .Lfunc_end6-_ZL11loopAutoVecIhEmPT_S1_S1_i
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_,@function
_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_: # @_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a4, $a0, 0
	ld.d	$a0, $sp, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 8
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 0
	ld.w	$a3, $a3, 0
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_, .Lfunc_end7-_ZL18callThroughOptnoneIRPFmPhS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE
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
	ld.bu	$a2, $a2, 1
	ld.bu	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$s0, $a1
	bgeu	$s2, $a2, .LBB8_5
# %bb.1:
	addi.d	$s1, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s2, $a1, .LBB8_4
# %bb.2:
	nor	$a2, $s2, $zero
	mod.wu	$s2, $a2, $s1
	bgeu	$a1, $s2, .LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB8_3
.LBB8_4:                                # %_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB8_8
.LBB8_5:
	move	$s1, $a0
	lu12i.w	$a0, 15
	ori	$s3, $a0, 3840
	.p2align	4, , 16
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	st.h	$s3, $sp, 22
	addi.d	$a2, $sp, 22
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB8_6
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB8_6
.LBB8_8:                                # %.loopexit
	ld.b	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 255
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end8:
	.size	_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE, .Lfunc_end8-_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE
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
	bltu	$a2, $a1, .LBB9_6
# %bb.1:                                # %vector.ph
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	vinsgr2vr.d	$vr4, $a1, 1
	lu12i.w	$a1, -524288
	vreplgr2vr.d	$vr0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4094
	vreplgr2vr.d	$vr1, $a1
	ori	$a3, $zero, 3176
	vrepli.d	$vr2, 1
	lu12i.w	$a1, -421749
	ori	$a1, $a1, 223
	lu32i.d	$a1, 0
	vreplgr2vr.d	$vr3, $a1
	ori	$a4, $zero, 1808
	.p2align	4, , 16
.LBB9_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr5, $vr4, 0
	add.d	$a5, $a0, $a2
	vld	$vr4, $a5, 8
	vshuf4i.d	$vr5, $vr4, 9
	vand.v	$vr5, $vr5, $vr0
	vldx	$vr6, $a5, $a3
	vand.v	$vr7, $vr4, $vr1
	vor.v	$vr5, $vr7, $vr5
	vsrli.d	$vr5, $vr5, 1
	vxor.v	$vr5, $vr5, $vr6
	vand.v	$vr6, $vr4, $vr2
	vseqi.d	$vr6, $vr6, 0
	vandn.v	$vr6, $vr6, $vr3
	vxor.v	$vr5, $vr5, $vr6
	vstx	$vr5, $a0, $a2
	addi.d	$a2, $a2, 16
	bne	$a2, $a4, .LBB9_2
# %bb.3:                                # %vector.ph11
	ld.d	$a2, $a0, 1816
	vpickve2gr.d	$a3, $vr4, 1
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
	vinsgr2vr.d	$vr4, $a2, 1
	lu12i.w	$a2, -1
	ori	$a2, $a2, 928
	lu12i.w	$a5, 1
	ori	$a3, $a5, 896
	ori	$a4, $zero, 3168
	ori	$a5, $a5, 888
	.p2align	4, , 16
.LBB9_4:                                # %vector.body12
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a0, $a2
	vldx	$vr5, $a6, $a3
	vshuf4i.d	$vr4, $vr5, 9
	vand.v	$vr4, $vr4, $vr0
	vldx	$vr6, $a6, $a4
	vand.v	$vr7, $vr5, $vr1
	vor.v	$vr4, $vr7, $vr4
	vsrli.d	$vr4, $vr4, 1
	vxor.v	$vr4, $vr4, $vr6
	vand.v	$vr6, $vr5, $vr2
	vseqi.d	$vr6, $vr6, 0
	vandn.v	$vr6, $vr6, $vr3
	vxor.v	$vr4, $vr4, $vr6
	addi.d	$a2, $a2, 16
	vstx	$vr4, $a6, $a5
	vori.b	$vr4, $vr5, 0
	bnez	$a2, .LBB9_4
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
.LBB9_6:
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
.Lfunc_end9:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end9-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i
	.type	_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i,@function
_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i: # @_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i
# %bb.0:
	blez	$a3, .LBB10_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 4
	bgeu	$a3, $a1, .LBB10_4
# %bb.2:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB10_7
.LBB10_3:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB10_4:                               # %vector.ph
	bstrpick.d	$a1, $a3, 30, 2
	slli.d	$a2, $a1, 2
	vrepli.b	$vr0, 0
	addi.d	$a1, $a0, 2
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB10_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, -2
	ld.h	$a6, $a1, 0
	vinsgr2vr.h	$vr3, $a5, 0
	vinsgr2vr.h	$vr4, $a6, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.w	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vilvl.w	$vr4, $vr0, $vr4
	vadd.d	$vr1, $vr1, $vr3
	vadd.d	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB10_5
# %bb.6:                                # %middle.block
	vadd.d	$vr0, $vr2, $vr1
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a2, $a3, .LBB10_9
.LBB10_7:                               # %.lr.ph.preheader11
	add.d	$a0, $a0, $a2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB10_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB10_8
.LBB10_9:                               # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end10:
	.size	_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i, .Lfunc_end10-_ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL11loopAutoVecItEmPT_S1_S1_i
	.type	_ZL11loopAutoVecItEmPT_S1_S1_i,@function
_ZL11loopAutoVecItEmPT_S1_S1_i:         # @_ZL11loopAutoVecItEmPT_S1_S1_i
# %bb.0:
	blez	$a3, .LBB11_5
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB11_6
# %bb.2:
	move	$a4, $zero
.LBB11_3:                               # %.lr.ph.preheader
	alsl.d	$a0, $a4, $a0, 1
	alsl.d	$a2, $a4, $a2, 1
	alsl.d	$a1, $a4, $a1, 1
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB11_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	ld.h	$a5, $a2, 0
	add.d	$a4, $a5, $a4
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB11_4
.LBB11_5:                               # %._crit_edge
	move	$a0, $zero
	ret
.LBB11_6:                               # %vector.memcheck
	sub.d	$a6, $a0, $a1
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB11_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a6, $a0, $a2
	bltu	$a6, $a5, .LBB11_3
# %bb.8:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB11_13
# %bb.9:
	move	$a4, $zero
.LBB11_10:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	sub.d	$a5, $t0, $a4
	alsl.d	$a6, $t0, $a0, 1
	alsl.d	$a7, $t0, $a2, 1
	alsl.d	$t0, $t0, $a1, 1
	.p2align	4, , 16
.LBB11_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vld	$vr1, $a7, 0
	vadd.h	$vr0, $vr1, $vr0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB11_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a4, $a3, .LBB11_3
	b	.LBB11_5
.LBB11_13:                              # %vector.ph
	andi	$a5, $a3, 8
	bstrpick.d	$a4, $a3, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a6, $a0, 16
	addi.d	$a7, $a2, 16
	addi.d	$t0, $a1, 16
	move	$t1, $a4
	.p2align	4, , 16
.LBB11_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vadd.h	$vr0, $vr2, $vr0
	vadd.h	$vr1, $vr3, $vr1
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB11_14
# %bb.15:                               # %middle.block
	beq	$a4, $a3, .LBB11_5
# %bb.16:                               # %vec.epilog.iter.check
	beqz	$a5, .LBB11_3
	b	.LBB11_10
.Lfunc_end11:
	.size	_ZL11loopAutoVecItEmPT_S1_S1_i, .Lfunc_end11-_ZL11loopAutoVecItEmPT_S1_S1_i
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_,@function
_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_: # @_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a4, $a0, 0
	ld.d	$a0, $sp, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 8
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 0
	ld.w	$a3, $a3, 0
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_, .Lfunc_end12-_ZL18callThroughOptnoneIRPFmPtS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE
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
	ld.hu	$a2, $a2, 2
	ld.hu	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$s0, $a1
	bgeu	$s2, $a2, .LBB13_5
# %bb.1:
	addi.d	$s1, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s2, $a1, .LBB13_4
# %bb.2:
	nor	$a2, $s2, $zero
	mod.wu	$s2, $a2, $s1
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
.LBB13_4:                               # %_ZNSt24uniform_int_distributionItE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB13_8
.LBB13_5:
	move	$s1, $a0
	lu12i.w	$s3, -16
	lu32i.d	$s3, 0
	.p2align	4, , 16
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	st.w	$s3, $sp, 20
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB13_6
# %bb.7:                                #   in Loop: Header=BB13_6 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB13_6
.LBB13_8:                               # %.loopexit
	ld.h	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 15, 0
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
	.size	_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE, .Lfunc_end13-_ZNSt24uniform_int_distributionItEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEtRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL24loopWithReductionAutoVecItEmPT_S1_S1_i
	.type	_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i,@function
_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i: # @_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i
# %bb.0:
	blez	$a3, .LBB14_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 4
	bgeu	$a3, $a1, .LBB14_4
# %bb.2:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB14_7
.LBB14_3:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB14_4:                               # %vector.ph
	bstrpick.d	$a1, $a3, 30, 2
	slli.d	$a2, $a1, 2
	vrepli.b	$vr0, 0
	addi.d	$a1, $a0, 4
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB14_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, -4
	ld.w	$a6, $a1, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 0
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.w	$vr3, $vr0, $vr3
	vilvl.h	$vr4, $vr0, $vr4
	vilvl.w	$vr4, $vr0, $vr4
	vadd.d	$vr1, $vr1, $vr3
	vadd.d	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -4
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB14_5
# %bb.6:                                # %middle.block
	vadd.d	$vr0, $vr2, $vr1
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a2, $a3, .LBB14_9
.LBB14_7:                               # %.lr.ph.preheader11
	alsl.d	$a0, $a2, $a0, 1
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB14_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a0, 0
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB14_8
.LBB14_9:                               # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end14:
	.size	_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i, .Lfunc_end14-_ZL24loopWithReductionAutoVecItEmPT_S1_S1_i
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL11loopAutoVecIjEmPT_S1_S1_i
	.type	_ZL11loopAutoVecIjEmPT_S1_S1_i,@function
_ZL11loopAutoVecIjEmPT_S1_S1_i:         # @_ZL11loopAutoVecIjEmPT_S1_S1_i
# %bb.0:
	blez	$a3, .LBB15_5
# %bb.1:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB15_6
# %bb.2:
	move	$a4, $zero
.LBB15_3:                               # %.lr.ph.preheader13
	alsl.d	$a0, $a4, $a0, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB15_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	add.d	$a4, $a5, $a4
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB15_4
.LBB15_5:                               # %._crit_edge
	move	$a0, $zero
	ret
.LBB15_6:                               # %vector.memcheck
	sub.d	$a6, $a0, $a1
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB15_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a6, $a0, $a2
	bltu	$a6, $a5, .LBB15_3
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a0, 16
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a1, 16
	move	$t0, $a4
	.p2align	4, , 16
.LBB15_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB15_9
# %bb.10:                               # %middle.block
	bne	$a4, $a3, .LBB15_3
	b	.LBB15_5
.Lfunc_end15:
	.size	_ZL11loopAutoVecIjEmPT_S1_S1_i, .Lfunc_end15-_ZL11loopAutoVecIjEmPT_S1_S1_i
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_,@function
_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_: # @_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a4, $a0, 0
	ld.d	$a0, $sp, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 16
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 8
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 0
	ld.w	$a3, $a3, 0
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_, .Lfunc_end16-_ZL18callThroughOptnoneIRPFmPjS0_S0_iEJS0_S0_S0_RlEEmOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
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
	ld.wu	$a2, $a2, 4
	ld.wu	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB17_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB17_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB17_4
	.p2align	4, , 16
.LBB17_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB17_3
.LBB17_4:                               # %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB17_10
.LBB17_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB17_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB17_10
.LBB17_7:                               # %.preheader
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB17_8:                               # =>This Inner Loop Header: Depth=1
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB17_8
# %bb.9:                                #   in Loop: Header=BB17_8 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB17_8
.LBB17_10:                              # %.loopexit
	ld.w	$a1, $fp, 0
	add.w	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end17:
	.size	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE, .Lfunc_end17-_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i
	.type	_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i,@function
_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i: # @_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i
# %bb.0:
	blez	$a3, .LBB18_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 4
	bgeu	$a3, $a1, .LBB18_4
# %bb.2:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB18_7
.LBB18_3:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB18_4:                               # %vector.ph
	bstrpick.d	$a1, $a3, 30, 2
	slli.d	$a2, $a1, 2
	vrepli.b	$vr0, 0
	addi.d	$a1, $a0, 8
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB18_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, -8
	ld.d	$a6, $a1, 0
	vinsgr2vr.d	$vr3, $a5, 0
	vinsgr2vr.d	$vr4, $a6, 0
	vilvl.w	$vr3, $vr0, $vr3
	vilvl.w	$vr4, $vr0, $vr4
	vadd.d	$vr1, $vr1, $vr3
	vadd.d	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -4
	addi.d	$a1, $a1, 16
	bnez	$a4, .LBB18_5
# %bb.6:                                # %middle.block
	vadd.d	$vr0, $vr2, $vr1
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a2, $a3, .LBB18_9
.LBB18_7:                               # %.lr.ph.preheader11
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB18_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a3, $a0, 0
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB18_8
.LBB18_9:                               # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end18:
	.size	_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i, .Lfunc_end18-_ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_EpilogueVectorization.cpp
	.type	_GLOBAL__sub_I_EpilogueVectorization.cpp,@function
_GLOBAL__sub_I_EpilogueVectorization.cpp: # @_GLOBAL__sub_I_EpilogueVectorization.cpp
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1393
	st.d	$a2, $a0, 0
	addi.d	$a1, $a0, 8
	ori	$a3, $zero, 1
	lu12i.w	$a4, 442488
	ori	$a4, $a4, 2405
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB19_1
# %bb.2:                                # %__cxx_global_var_init.1.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 40
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.3:                                # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp141:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z12benchAutoVecIhEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z12benchAutoVecIhEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp143:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.5:
.Ltmp145:                               # EH_LABEL
	ori	$a1, $zero, 65
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.6:
.Ltmp147:                               # EH_LABEL
	ori	$a1, $zero, 127
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.7:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB19_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_9:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_2benchAutoVec)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_2benchAutoVec)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp150:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.10:                               # %.noexc.i4
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 22
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 22
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp153:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.11:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z21benchReductionAutoVecIhEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z21benchReductionAutoVecIhEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp155:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.12:
.Ltmp157:                               # EH_LABEL
	ori	$a1, $zero, 65
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.13:
.Ltmp159:                               # EH_LABEL
	ori	$a1, $zero, 127
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.14:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB19_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_16:                              # %__cxx_global_var_init.3.exit
	pcalau12i	$a0, %pc_hi20(_ZL37benchmark_uniq_3benchReductionAutoVec)
	st.d	$s0, $a0, %pc_lo12(_ZL37benchmark_uniq_3benchReductionAutoVec)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 40
.Ltmp162:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.17:                               # %.noexc.i13
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp165:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.18:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z12benchAutoVecItEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z12benchAutoVecItEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp167:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.19:
.Ltmp169:                               # EH_LABEL
	ori	$a1, $zero, 65
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.20:
.Ltmp171:                               # EH_LABEL
	ori	$a1, $zero, 127
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.21:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB19_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_23:                              # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_4benchAutoVec)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_4benchAutoVec)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 31
	st.d	$a0, $sp, 40
.Ltmp174:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.24:                               # %.noexc.i22
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp177:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.25:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z21benchReductionAutoVecItEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z21benchReductionAutoVecItEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp179:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.26:
.Ltmp181:                               # EH_LABEL
	ori	$a1, $zero, 65
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.27:
.Ltmp183:                               # EH_LABEL
	ori	$a1, $zero, 127
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.28:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB19_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_30:                              # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(_ZL37benchmark_uniq_5benchReductionAutoVec)
	st.d	$s0, $a0, %pc_lo12(_ZL37benchmark_uniq_5benchReductionAutoVec)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 40
.Ltmp186:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.31:                               # %.noexc.i31
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp189:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.32:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z12benchAutoVecIjEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z12benchAutoVecIjEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp191:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.33:
.Ltmp193:                               # EH_LABEL
	ori	$a1, $zero, 65
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.34:
.Ltmp195:                               # EH_LABEL
	ori	$a1, $zero, 127
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.35:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB19_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_37:                              # %__cxx_global_var_init.9.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_6benchAutoVec)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_6benchAutoVec)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 31
	st.d	$a0, $sp, 40
.Ltmp198:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.38:                               # %.noexc.i40
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$a2, $a2, %pc_lo12(.L.str.12)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp201:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.39:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z21benchReductionAutoVecIjEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z21benchReductionAutoVecIjEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp203:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.40:
.Ltmp205:                               # EH_LABEL
	ori	$a1, $zero, 65
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.41:
.Ltmp207:                               # EH_LABEL
	ori	$a1, $zero, 127
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.42:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB19_44
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_44:                              # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(_ZL37benchmark_uniq_7benchReductionAutoVec)
	st.d	$s0, $a0, %pc_lo12(_ZL37benchmark_uniq_7benchReductionAutoVec)
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB19_45:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37
.Ltmp200:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB19_57
.LBB19_46:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28
.Ltmp188:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB19_57
.LBB19_47:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19
.Ltmp176:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB19_57
.LBB19_48:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10
.Ltmp164:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB19_57
.LBB19_49:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp152:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB19_57
.LBB19_50:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp140:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB19_57
.LBB19_51:
.Ltmp209:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB19_56
	b	.LBB19_60
.LBB19_52:
.Ltmp197:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB19_56
	b	.LBB19_60
.LBB19_53:
.Ltmp185:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB19_56
	b	.LBB19_60
.LBB19_54:
.Ltmp173:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB19_56
	b	.LBB19_60
.LBB19_55:
.Ltmp161:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB19_60
.LBB19_56:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB19_58
.LBB19_57:                              # %common.resume.sink.split
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_58:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_59:
.Ltmp149:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB19_56
.LBB19_60:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s3, .LBB19_58
	b	.LBB19_57
.Lfunc_end19:
	.size	_GLOBAL__sub_I_EpilogueVectorization.cpp, .Lfunc_end19-_GLOBAL__sub_I_EpilogueVectorization.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp138-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin6         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp148-.Ltmp141              #   Call between .Ltmp141 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin6         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp150-.Ltmp148              #   Call between .Ltmp148 and .Ltmp150
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin6         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp160-.Ltmp153              #   Call between .Ltmp153 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin6         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp162-.Ltmp160              #   Call between .Ltmp160 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin6         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp172-.Ltmp165              #   Call between .Ltmp165 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin6         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp174-.Ltmp172              #   Call between .Ltmp172 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin6         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp184-.Ltmp177              #   Call between .Ltmp177 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin6         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp186-.Ltmp184              #   Call between .Ltmp184 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin6         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp196-.Ltmp189              #   Call between .Ltmp189 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin6         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp198-.Ltmp196              #   Call between .Ltmp196 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin6         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp208-.Ltmp201              #   Call between .Ltmp201 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin6         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Lfunc_end19-.Ltmp208          #   Call between .Ltmp208 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	g_sum,@object                   # @g_sum
	.bss
	.globl	g_sum
	.p2align	3, 0x0
g_sum:
	.dword	0                               # 0x0
	.size	g_sum, 8

	.type	_ZL28benchmark_uniq_2benchAutoVec,@object # @_ZL28benchmark_uniq_2benchAutoVec
	.local	_ZL28benchmark_uniq_2benchAutoVec
	.comm	_ZL28benchmark_uniq_2benchAutoVec,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"benchAutoVec<uint8_t>"
	.size	.L.str, 22

	.type	_ZL37benchmark_uniq_3benchReductionAutoVec,@object # @_ZL37benchmark_uniq_3benchReductionAutoVec
	.local	_ZL37benchmark_uniq_3benchReductionAutoVec
	.comm	_ZL37benchmark_uniq_3benchReductionAutoVec,8,8
	.type	.L.str.4,@object                # @.str.4
	.p2align	3, 0x0
.L.str.4:
	.asciz	"benchReductionAutoVec<uint8_t>"
	.size	.L.str.4, 31

	.type	_ZL28benchmark_uniq_4benchAutoVec,@object # @_ZL28benchmark_uniq_4benchAutoVec
	.local	_ZL28benchmark_uniq_4benchAutoVec
	.comm	_ZL28benchmark_uniq_4benchAutoVec,8,8
	.type	.L.str.6,@object                # @.str.6
	.p2align	3, 0x0
.L.str.6:
	.asciz	"benchAutoVec<uint16_t>"
	.size	.L.str.6, 23

	.type	_ZL37benchmark_uniq_5benchReductionAutoVec,@object # @_ZL37benchmark_uniq_5benchReductionAutoVec
	.local	_ZL37benchmark_uniq_5benchReductionAutoVec
	.comm	_ZL37benchmark_uniq_5benchReductionAutoVec,8,8
	.type	.L.str.8,@object                # @.str.8
	.p2align	3, 0x0
.L.str.8:
	.asciz	"benchReductionAutoVec<uint16_t>"
	.size	.L.str.8, 32

	.type	_ZL28benchmark_uniq_6benchAutoVec,@object # @_ZL28benchmark_uniq_6benchAutoVec
	.local	_ZL28benchmark_uniq_6benchAutoVec
	.comm	_ZL28benchmark_uniq_6benchAutoVec,8,8
	.type	.L.str.10,@object               # @.str.10
	.p2align	3, 0x0
.L.str.10:
	.asciz	"benchAutoVec<uint32_t>"
	.size	.L.str.10, 23

	.type	_ZL37benchmark_uniq_7benchReductionAutoVec,@object # @_ZL37benchmark_uniq_7benchReductionAutoVec
	.local	_ZL37benchmark_uniq_7benchReductionAutoVec
	.comm	_ZL37benchmark_uniq_7benchReductionAutoVec,8,8
	.type	.L.str.12,@object               # @.str.12
	.p2align	3, 0x0
.L.str.12:
	.asciz	"benchReductionAutoVec<uint32_t>"
	.size	.L.str.12, 32

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_EpilogueVectorization.cpp
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
	.addrsig_sym _Z12benchAutoVecIhEvRN9benchmark5StateE
	.addrsig_sym _Z21benchReductionAutoVecIhEvRN9benchmark5StateE
	.addrsig_sym _Z12benchAutoVecItEvRN9benchmark5StateE
	.addrsig_sym _Z21benchReductionAutoVecItEvRN9benchmark5StateE
	.addrsig_sym _Z12benchAutoVecIjEvRN9benchmark5StateE
	.addrsig_sym _Z21benchReductionAutoVecIjEvRN9benchmark5StateE
	.addrsig_sym _ZL11loopAutoVecIhEmPT_S1_S1_i
	.addrsig_sym _ZL24loopWithReductionAutoVecIhEmPT_S1_S1_i
	.addrsig_sym _ZL11loopAutoVecItEmPT_S1_S1_i
	.addrsig_sym _ZL24loopWithReductionAutoVecItEmPT_S1_S1_i
	.addrsig_sym _ZL11loopAutoVecIjEmPT_S1_S1_i
	.addrsig_sym _ZL24loopWithReductionAutoVecIjEmPT_S1_S1_i
	.addrsig_sym _GLOBAL__sub_I_EpilogueVectorization.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL3rng
