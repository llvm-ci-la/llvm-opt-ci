	.file	"MathFunctions.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE
.LCPI0_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE,@function
_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE: # @_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB0_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_6:                                # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB0_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB0_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_11:                               # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB0_13 Depth=1
	bne	$a1, $a0, .LBB0_38
.LBB0_12:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB0_23
.LBB0_13:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_12
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB0_22
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB0_18:                               # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB0_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB0_10
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB0_11
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_11
	b	.LBB0_19
.LBB0_23:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp24:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB0_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB0_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB0_28:                               #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB0_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB0_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB0_27
.LBB0_30:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp26:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB0_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_33:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB0_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB0_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB0_38:
.Ltmp9:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp11:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp13:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp15:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp17:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp19:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp21:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_46:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB0_54
.LBB0_47:                               # %.thread
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB0_55
.LBB0_48:                               # %.thread65
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_49:
.Ltmp28:                                # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB0_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB0_55
.LBB0_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB0_56
.LBB0_52:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_53:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_54:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB0_51
.LBB0_55:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB0_52
.LBB0_56:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE, .Lfunc_end0-_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE
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
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp24-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp9-.Ltmp27                 #   Call between .Ltmp27 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 11 <<
	.uleb128 .Ltmp22-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Lfunc_end0-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE,@function
_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE: # @_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp29:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp32:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp35:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB1_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB1_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB1_7:                                #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(expf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB1_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB1_6
.LBB1_9:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp37:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB1_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB1_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB1_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB1_17:                               # %.thread
.Ltmp34:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB1_24
.LBB1_18:                               # %.thread34
.Ltmp31:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_19:
.Ltmp39:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB1_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB1_24
.LBB1_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB1_25
.LBB1_22:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB1_21
.LBB1_24:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB1_22
.LBB1_25:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE, .Lfunc_end1-_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE
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
	.uleb128 .Ltmp29-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end1-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE
.LCPI2_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE,@function
_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE: # @_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp40:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp43:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB2_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB2_6:                                # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB2_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB2_8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB2_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB2_13
.LBB2_10:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_11:                               # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB2_13 Depth=1
	bne	$a1, $a0, .LBB2_38
.LBB2_12:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB2_23
.LBB2_13:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB2_12
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB2_18
# %bb.15:                               #   in Loop: Header=BB2_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB2_22
# %bb.16:                               #   in Loop: Header=BB2_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB2_18:                               # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB2_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB2_11
.LBB2_19:                               #   in Loop: Header=BB2_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB2_10
# %bb.20:                               #   in Loop: Header=BB2_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB2_11
# %bb.21:                               #   in Loop: Header=BB2_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB2_11
.LBB2_22:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB2_11
	b	.LBB2_19
.LBB2_23:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp64:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB2_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB2_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB2_27:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB2_28:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB2_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB2_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB2_27
.LBB2_30:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp66:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB2_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_33:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB2_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_35:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB2_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_37:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB2_38:
.Ltmp49:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp51:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp53:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp55:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp57:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp59:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_46:
.Ltmp48:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB2_54
.LBB2_47:                               # %.thread
.Ltmp45:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB2_55
.LBB2_48:                               # %.thread65
.Ltmp42:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_49:
.Ltmp68:                                # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB2_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB2_55
.LBB2_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB2_56
.LBB2_52:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_53:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp63:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_54:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB2_51
.LBB2_55:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB2_52
.LBB2_56:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE, .Lfunc_end2-_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE
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
	.uleb128 .Ltmp40-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp64-.Ltmp47                #   Call between .Ltmp47 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp68-.Lfunc_begin2          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin2          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp49-.Ltmp67                #   Call between .Ltmp67 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp62-.Ltmp49                #   Call between .Ltmp49 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin2          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Lfunc_end2-.Ltmp62            #   Call between .Ltmp62 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE,@function
_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE: # @_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp69:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp72:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp75:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB3_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB3_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB3_7:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB3_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB3_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB3_6
.LBB3_9:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp77:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB3_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_12:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB3_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB3_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_16:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB3_17:                               # %.thread
.Ltmp74:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB3_24
.LBB3_18:                               # %.thread34
.Ltmp71:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_19:
.Ltmp79:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB3_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB3_24
.LBB3_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB3_25
.LBB3_22:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_23:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB3_21
.LBB3_24:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB3_22
.LBB3_25:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE, .Lfunc_end3-_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE
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
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp75-.Ltmp73                #   Call between .Ltmp73 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp79-.Lfunc_begin3          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin3          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Lfunc_end3-.Ltmp78            #   Call between .Ltmp78 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE
.LCPI4_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE,@function
_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE: # @_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp80:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp83:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB4_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB4_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB4_6:                                # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB4_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB4_8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB4_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI4_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB4_13
.LBB4_10:                               #   in Loop: Header=BB4_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB4_11:                               # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB4_13 Depth=1
	bne	$a1, $a0, .LBB4_38
.LBB4_12:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB4_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB4_23
.LBB4_13:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB4_12
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB4_18
# %bb.15:                               #   in Loop: Header=BB4_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB4_22
# %bb.16:                               #   in Loop: Header=BB4_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB4_18:                               # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB4_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB4_11
.LBB4_19:                               #   in Loop: Header=BB4_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB4_10
# %bb.20:                               #   in Loop: Header=BB4_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB4_11
# %bb.21:                               #   in Loop: Header=BB4_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB4_11
.LBB4_22:                               #   in Loop: Header=BB4_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB4_11
	b	.LBB4_19
.LBB4_23:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp104:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB4_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB4_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB4_27:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB4_28:                               #   Parent Loop BB4_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB4_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB4_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB4_27
.LBB4_30:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp106:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB4_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB4_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_35:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB4_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_37:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB4_38:
.Ltmp89:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp91:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp93:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp95:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp97:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp99:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp101:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_46:
.Ltmp88:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_54
.LBB4_47:                               # %.thread
.Ltmp85:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_55
.LBB4_48:                               # %.thread65
.Ltmp82:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_49:
.Ltmp108:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB4_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB4_55
.LBB4_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB4_56
.LBB4_52:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_53:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp103:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_54:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB4_51
.LBB4_55:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB4_52
.LBB4_56:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE, .Lfunc_end4-_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE
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
	.uleb128 .Ltmp80-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin4          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin4          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp86-.Ltmp84                #   Call between .Ltmp84 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin4          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp104-.Ltmp87               #   Call between .Ltmp87 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp108-.Lfunc_begin4         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin4         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp89-.Ltmp107               #   Call between .Ltmp107 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Ltmp102-.Ltmp89               #   Call between .Ltmp89 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin4         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Lfunc_end4-.Ltmp102           #   Call between .Ltmp102 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE,@function
_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE: # @_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp109:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp112:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp115:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB5_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB5_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB5_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB5_7:                                #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB5_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB5_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB5_6
.LBB5_9:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp117:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB5_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_12:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB5_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_14:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB5_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_16:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB5_17:                               # %.thread
.Ltmp114:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_24
.LBB5_18:                               # %.thread34
.Ltmp111:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_19:
.Ltmp119:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB5_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB5_24
.LBB5_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB5_25
.LBB5_22:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB5_21
.LBB5_24:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB5_22
.LBB5_25:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE, .Lfunc_end5-_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE
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
	.uleb128 .Ltmp109-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin5         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin5         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp115-.Ltmp113              #   Call between .Ltmp113 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp119-.Lfunc_begin5         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin5         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Lfunc_end5-.Ltmp118           #   Call between .Ltmp118 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE
.LCPI6_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE,@function
_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE: # @_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp120:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp123:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB6_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB6_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB6_6:                                # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB6_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB6_8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB6_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB6_13
.LBB6_10:                               #   in Loop: Header=BB6_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB6_11:                               # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB6_13 Depth=1
	bne	$a1, $a0, .LBB6_38
.LBB6_12:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB6_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB6_23
.LBB6_13:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB6_12
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB6_18
# %bb.15:                               #   in Loop: Header=BB6_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB6_22
# %bb.16:                               #   in Loop: Header=BB6_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB6_18
# %bb.17:                               #   in Loop: Header=BB6_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB6_18:                               # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB6_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB6_11
.LBB6_19:                               #   in Loop: Header=BB6_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB6_10
# %bb.20:                               #   in Loop: Header=BB6_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB6_11
# %bb.21:                               #   in Loop: Header=BB6_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB6_11
.LBB6_22:                               #   in Loop: Header=BB6_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB6_11
	b	.LBB6_19
.LBB6_23:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp144:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB6_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB6_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB6_27:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB6_28:                               #   Parent Loop BB6_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB6_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB6_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB6_27
.LBB6_30:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp146:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB6_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_33:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB6_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_35:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB6_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_37:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB6_38:
.Ltmp129:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp131:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp133:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp135:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp137:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp139:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp141:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_46:
.Ltmp128:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB6_54
.LBB6_47:                               # %.thread
.Ltmp125:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB6_55
.LBB6_48:                               # %.thread65
.Ltmp122:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_49:
.Ltmp148:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB6_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB6_55
.LBB6_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB6_56
.LBB6_52:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_53:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp143:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_54:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB6_51
.LBB6_55:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB6_52
.LBB6_56:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE, .Lfunc_end6-_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE
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
	.uleb128 .Ltmp120-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin6         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin6         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin6         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp144-.Ltmp127              #   Call between .Ltmp127 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp148-.Lfunc_begin6         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin6         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp129-.Ltmp147              #   Call between .Ltmp147 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp142-.Ltmp129              #   Call between .Ltmp129 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin6         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Lfunc_end6-.Ltmp142           #   Call between .Ltmp142 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE,@function
_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE: # @_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp149:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp152:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp155:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB7_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB7_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB7_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB7_7:                                #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB7_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB7_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB7_6
.LBB7_9:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp157:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB7_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB7_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_14:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB7_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB7_17:                               # %.thread
.Ltmp154:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_24
.LBB7_18:                               # %.thread34
.Ltmp151:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_19:
.Ltmp159:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB7_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB7_24
.LBB7_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB7_25
.LBB7_22:                               # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_23:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB7_21
.LBB7_24:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB7_22
.LBB7_25:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE, .Lfunc_end7-_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE
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
	.uleb128 .Ltmp149-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin7         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin7         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp155-.Ltmp153              #   Call between .Ltmp153 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp159-.Lfunc_begin7         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin7         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Lfunc_end7-.Ltmp158           #   Call between .Ltmp158 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE
.LCPI8_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE,@function
_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE: # @_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp160:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp163:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB8_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB8_6:                                # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB8_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB8_8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB8_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI8_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB8_13
.LBB8_10:                               #   in Loop: Header=BB8_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_11:                               # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB8_13 Depth=1
	bne	$a1, $a0, .LBB8_38
.LBB8_12:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB8_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB8_23
.LBB8_13:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB8_12
# %bb.14:                               #   in Loop: Header=BB8_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB8_18
# %bb.15:                               #   in Loop: Header=BB8_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB8_22
# %bb.16:                               #   in Loop: Header=BB8_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB8_18
# %bb.17:                               #   in Loop: Header=BB8_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB8_18:                               # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB8_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB8_11
.LBB8_19:                               #   in Loop: Header=BB8_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB8_10
# %bb.20:                               #   in Loop: Header=BB8_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB8_11
# %bb.21:                               #   in Loop: Header=BB8_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB8_11
.LBB8_22:                               #   in Loop: Header=BB8_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB8_11
	b	.LBB8_19
.LBB8_23:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp184:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB8_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB8_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB8_27:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB8_28:                               #   Parent Loop BB8_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB8_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB8_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB8_27
.LBB8_30:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp186:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB8_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_33:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB8_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_35:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB8_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_37:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB8_38:
.Ltmp169:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp171:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp173:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp174:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp175:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp177:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp179:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp181:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_46:
.Ltmp168:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_54
.LBB8_47:                               # %.thread
.Ltmp165:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_55
.LBB8_48:                               # %.thread65
.Ltmp162:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_49:
.Ltmp188:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB8_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB8_55
.LBB8_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB8_56
.LBB8_52:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_53:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp183:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_54:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB8_51
.LBB8_55:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB8_52
.LBB8_56:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE, .Lfunc_end8-_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp160-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin8         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin8         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp166-.Ltmp164              #   Call between .Ltmp164 and .Ltmp166
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin8         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp184-.Ltmp167              #   Call between .Ltmp167 and .Ltmp184
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp188-.Lfunc_begin8         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin8         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp169-.Ltmp187              #   Call between .Ltmp187 and .Ltmp169
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp182-.Ltmp169              #   Call between .Ltmp169 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin8         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Lfunc_end8-.Ltmp182           #   Call between .Ltmp182 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE,@function
_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE: # @_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp189:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp192:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp195:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB9_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB9_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB9_7:                                #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(asinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB9_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB9_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB9_6
.LBB9_9:                                # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp197:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB9_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_12:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB9_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB9_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_16:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB9_17:                               # %.thread
.Ltmp194:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB9_24
.LBB9_18:                               # %.thread34
.Ltmp191:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_19:
.Ltmp199:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB9_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB9_24
.LBB9_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB9_25
.LBB9_22:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_23:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB9_21
.LBB9_24:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB9_22
.LBB9_25:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE, .Lfunc_end9-_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp189-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin9         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin9         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp195-.Ltmp193              #   Call between .Ltmp193 and .Ltmp195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp199-.Lfunc_begin9         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin9         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Lfunc_end9-.Ltmp198           #   Call between .Ltmp198 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE
.LCPI10_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE,@function
_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE: # @_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp200:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp203:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB10_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB10_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB10_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB10_8:                               # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB10_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI10_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB10_13
.LBB10_10:                              #   in Loop: Header=BB10_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_11:                              # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB10_13 Depth=1
	bne	$a1, $a0, .LBB10_38
.LBB10_12:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB10_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB10_23
.LBB10_13:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB10_12
# %bb.14:                               #   in Loop: Header=BB10_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB10_18
# %bb.15:                               #   in Loop: Header=BB10_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB10_22
# %bb.16:                               #   in Loop: Header=BB10_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB10_18:                              # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB10_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB10_11
.LBB10_19:                              #   in Loop: Header=BB10_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB10_10
# %bb.20:                               #   in Loop: Header=BB10_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB10_11
# %bb.21:                               #   in Loop: Header=BB10_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB10_11
.LBB10_22:                              #   in Loop: Header=BB10_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB10_11
	b	.LBB10_19
.LBB10_23:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp224:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB10_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB10_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB10_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB10_28:                              #   Parent Loop BB10_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB10_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB10_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB10_27
.LBB10_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp226:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB10_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_33:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB10_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_35:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB10_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_37:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB10_38:
.Ltmp209:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp210:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp211:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp213:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp215:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp217:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp219:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp221:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB10_46:
.Ltmp208:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB10_54
.LBB10_47:                              # %.thread
.Ltmp205:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB10_55
.LBB10_48:                              # %.thread65
.Ltmp202:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_49:
.Ltmp228:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB10_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB10_55
.LBB10_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB10_56
.LBB10_52:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_53:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp223:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_54:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB10_51
.LBB10_55:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB10_52
.LBB10_56:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE, .Lfunc_end10-_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp200-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin10        #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin10        #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp206-.Ltmp204              #   Call between .Ltmp204 and .Ltmp206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin10        #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp224-.Ltmp207              #   Call between .Ltmp207 and .Ltmp224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp228-.Lfunc_begin10        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin10        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp209-.Ltmp227              #   Call between .Ltmp227 and .Ltmp209
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp222-.Ltmp209              #   Call between .Ltmp209 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin10        #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Lfunc_end10-.Ltmp222          #   Call between .Ltmp222 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE,@function
_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE: # @_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp229:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp232:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp233:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp235:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB11_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB11_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB11_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB11_7:                               #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB11_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB11_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB11_6
.LBB11_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp237:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB11_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_12:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB11_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_14:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB11_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_16:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB11_17:                              # %.thread
.Ltmp234:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_24
.LBB11_18:                              # %.thread34
.Ltmp231:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_19:
.Ltmp239:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB11_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB11_24
.LBB11_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB11_25
.LBB11_22:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_23:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB11_21
.LBB11_24:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB11_22
.LBB11_25:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE, .Lfunc_end11-_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp229-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp229
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin11        #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin11        #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp235-.Ltmp233              #   Call between .Ltmp233 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp239-.Lfunc_begin11        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin11        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin11        # >> Call Site 8 <<
	.uleb128 .Lfunc_end11-.Ltmp238          #   Call between .Ltmp238 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE
.LCPI12_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE,@function
_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE: # @_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp240:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp243:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB12_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB12_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB12_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB12_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB12_8:                               # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB12_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI12_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB12_13
.LBB12_10:                              #   in Loop: Header=BB12_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB12_11:                              # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB12_13 Depth=1
	bne	$a1, $a0, .LBB12_38
.LBB12_12:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB12_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB12_23
.LBB12_13:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB12_12
# %bb.14:                               #   in Loop: Header=BB12_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB12_18
# %bb.15:                               #   in Loop: Header=BB12_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB12_22
# %bb.16:                               #   in Loop: Header=BB12_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB12_18
# %bb.17:                               #   in Loop: Header=BB12_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB12_18:                              # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB12_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB12_11
.LBB12_19:                              #   in Loop: Header=BB12_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB12_10
# %bb.20:                               #   in Loop: Header=BB12_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB12_11
# %bb.21:                               #   in Loop: Header=BB12_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB12_11
.LBB12_22:                              #   in Loop: Header=BB12_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB12_11
	b	.LBB12_19
.LBB12_23:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp264:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB12_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB12_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB12_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB12_28:                              #   Parent Loop BB12_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB12_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB12_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB12_27
.LBB12_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp266:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB12_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_33:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB12_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_35:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB12_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_37:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB12_38:
.Ltmp249:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp251:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp253:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp255:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp257:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp259:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp261:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB12_46:
.Ltmp248:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB12_54
.LBB12_47:                              # %.thread
.Ltmp245:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB12_55
.LBB12_48:                              # %.thread65
.Ltmp242:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_49:
.Ltmp268:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB12_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB12_55
.LBB12_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB12_56
.LBB12_52:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_53:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp263:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_54:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB12_51
.LBB12_55:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB12_52
.LBB12_56:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE, .Lfunc_end12-_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp240-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp240
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin12        #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin12        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp246-.Ltmp244              #   Call between .Ltmp244 and .Ltmp246
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin12        #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Ltmp264-.Ltmp247              #   Call between .Ltmp247 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin12        # >> Call Site 7 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp268-.Lfunc_begin12        #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin12        # >> Call Site 8 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin12        # >> Call Site 9 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin12        #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin12        # >> Call Site 10 <<
	.uleb128 .Ltmp249-.Ltmp267              #   Call between .Ltmp267 and .Ltmp249
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin12        # >> Call Site 11 <<
	.uleb128 .Ltmp262-.Ltmp249              #   Call between .Ltmp249 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin12        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin12        # >> Call Site 12 <<
	.uleb128 .Lfunc_end12-.Ltmp262          #   Call between .Ltmp262 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE,@function
_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE: # @_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp269:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp270:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp272:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp275:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB13_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB13_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB13_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB13_7:                               #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(atanf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB13_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB13_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB13_6
.LBB13_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp277:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp278:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB13_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_12:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB13_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_14:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB13_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_16:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB13_17:                              # %.thread
.Ltmp274:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB13_24
.LBB13_18:                              # %.thread34
.Ltmp271:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_19:
.Ltmp279:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB13_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB13_24
.LBB13_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB13_25
.LBB13_22:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_23:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB13_21
.LBB13_24:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB13_22
.LBB13_25:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE, .Lfunc_end13-_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp269-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp269
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin13        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin13        #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp275-.Ltmp273              #   Call between .Ltmp273 and .Ltmp275
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp279-.Lfunc_begin13        #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin13        # >> Call Site 6 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin13        # >> Call Site 7 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin13        #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin13        # >> Call Site 8 <<
	.uleb128 .Lfunc_end13-.Ltmp278          #   Call between .Ltmp278 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE
.LCPI14_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE,@function
_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE: # @_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp280:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp283:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp284:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB14_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB14_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB14_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB14_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB14_8:                               # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB14_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI14_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB14_13
.LBB14_10:                              #   in Loop: Header=BB14_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB14_11:                              # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB14_13 Depth=1
	bne	$a1, $a0, .LBB14_38
.LBB14_12:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB14_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB14_23
.LBB14_13:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB14_12
# %bb.14:                               #   in Loop: Header=BB14_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB14_18
# %bb.15:                               #   in Loop: Header=BB14_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB14_22
# %bb.16:                               #   in Loop: Header=BB14_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB14_18
# %bb.17:                               #   in Loop: Header=BB14_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB14_18:                              # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB14_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB14_11
.LBB14_19:                              #   in Loop: Header=BB14_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB14_10
# %bb.20:                               #   in Loop: Header=BB14_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB14_11
# %bb.21:                               #   in Loop: Header=BB14_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB14_11
.LBB14_22:                              #   in Loop: Header=BB14_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB14_11
	b	.LBB14_19
.LBB14_23:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp304:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB14_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB14_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB14_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB14_28:                              #   Parent Loop BB14_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB14_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB14_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB14_27
.LBB14_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp306:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB14_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_33:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB14_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_35:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB14_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_37:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB14_38:
.Ltmp289:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp291:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp293:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp295:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp297:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp298:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp299:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp301:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB14_46:
.Ltmp288:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB14_54
.LBB14_47:                              # %.thread
.Ltmp285:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB14_55
.LBB14_48:                              # %.thread65
.Ltmp282:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_49:
.Ltmp308:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB14_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB14_55
.LBB14_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB14_56
.LBB14_52:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_53:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp303:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_54:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB14_51
.LBB14_55:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB14_52
.LBB14_56:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE, .Lfunc_end14-_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp280-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp280
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin14        #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin14        #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp286-.Ltmp284              #   Call between .Ltmp284 and .Ltmp286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin14        #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin14        # >> Call Site 6 <<
	.uleb128 .Ltmp304-.Ltmp287              #   Call between .Ltmp287 and .Ltmp304
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin14        # >> Call Site 7 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp308-.Lfunc_begin14        #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin14        # >> Call Site 8 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin14        # >> Call Site 9 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin14        #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin14        # >> Call Site 10 <<
	.uleb128 .Ltmp289-.Ltmp307              #   Call between .Ltmp307 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin14        # >> Call Site 11 <<
	.uleb128 .Ltmp302-.Ltmp289              #   Call between .Ltmp289 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin14        #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin14        # >> Call Site 12 <<
	.uleb128 .Lfunc_end14-.Ltmp302          #   Call between .Ltmp302 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE,@function
_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE: # @_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp309:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp312:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp315:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB15_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB15_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB15_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB15_7:                               #   Parent Loop BB15_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB15_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB15_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB15_6
.LBB15_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp317:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB15_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_12:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB15_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_14:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB15_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_16:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB15_17:                              # %.thread
.Ltmp314:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB15_24
.LBB15_18:                              # %.thread34
.Ltmp311:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_19:
.Ltmp319:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB15_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB15_24
.LBB15_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB15_25
.LBB15_22:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_23:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB15_21
.LBB15_24:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB15_22
.LBB15_25:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE, .Lfunc_end15-_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp309-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp309
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin15        #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin15        #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Ltmp315-.Ltmp313              #   Call between .Ltmp313 and .Ltmp315
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin15        # >> Call Site 5 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp319-.Lfunc_begin15        #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin15        # >> Call Site 6 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin15        # >> Call Site 7 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin15        #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin15        # >> Call Site 8 <<
	.uleb128 .Lfunc_end15-.Ltmp318          #   Call between .Ltmp318 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE
.LCPI16_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE,@function
_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE: # @_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp320:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp323:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB16_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB16_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB16_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB16_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB16_8:                               # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB16_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI16_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB16_13
.LBB16_10:                              #   in Loop: Header=BB16_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB16_11:                              # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB16_13 Depth=1
	bne	$a1, $a0, .LBB16_38
.LBB16_12:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB16_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB16_23
.LBB16_13:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB16_12
# %bb.14:                               #   in Loop: Header=BB16_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB16_18
# %bb.15:                               #   in Loop: Header=BB16_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB16_22
# %bb.16:                               #   in Loop: Header=BB16_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB16_18
# %bb.17:                               #   in Loop: Header=BB16_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB16_18:                              # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB16_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB16_11
.LBB16_19:                              #   in Loop: Header=BB16_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB16_10
# %bb.20:                               #   in Loop: Header=BB16_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB16_11
# %bb.21:                               #   in Loop: Header=BB16_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB16_11
.LBB16_22:                              #   in Loop: Header=BB16_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB16_11
	b	.LBB16_19
.LBB16_23:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp344:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB16_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB16_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB16_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB16_28:                              #   Parent Loop BB16_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB16_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB16_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB16_27
.LBB16_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp346:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp347:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB16_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_33:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB16_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_35:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB16_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_37:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB16_38:
.Ltmp329:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp331:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp333:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp335:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp337:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp339:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp341:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB16_46:
.Ltmp328:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_54
.LBB16_47:                              # %.thread
.Ltmp325:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB16_55
.LBB16_48:                              # %.thread65
.Ltmp322:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_49:
.Ltmp348:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB16_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB16_55
.LBB16_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB16_56
.LBB16_52:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_53:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp343:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_54:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB16_51
.LBB16_55:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB16_52
.LBB16_56:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE, .Lfunc_end16-_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp320-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin16        #     jumps to .Ltmp322
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin16        #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp326-.Ltmp324              #   Call between .Ltmp324 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin16        #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin16        # >> Call Site 6 <<
	.uleb128 .Ltmp344-.Ltmp327              #   Call between .Ltmp327 and .Ltmp344
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin16        # >> Call Site 7 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp348-.Lfunc_begin16        #     jumps to .Ltmp348
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin16        # >> Call Site 8 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin16        # >> Call Site 9 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.uleb128 .Ltmp348-.Lfunc_begin16        #     jumps to .Ltmp348
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin16        # >> Call Site 10 <<
	.uleb128 .Ltmp329-.Ltmp347              #   Call between .Ltmp347 and .Ltmp329
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin16        # >> Call Site 11 <<
	.uleb128 .Ltmp342-.Ltmp329              #   Call between .Ltmp329 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin16        #     jumps to .Ltmp343
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin16        # >> Call Site 12 <<
	.uleb128 .Lfunc_end16-.Ltmp342          #   Call between .Ltmp342 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE,@function
_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE: # @_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp349:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp352:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp353:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp355:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB17_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB17_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB17_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB17_7:                               #   Parent Loop BB17_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrtf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB17_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB17_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB17_6
.LBB17_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp357:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB17_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_12:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB17_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_14:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB17_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB17_16:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB17_17:                              # %.thread
.Ltmp354:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB17_24
.LBB17_18:                              # %.thread34
.Ltmp351:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_19:
.Ltmp359:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB17_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB17_24
.LBB17_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB17_25
.LBB17_22:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_23:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB17_21
.LBB17_24:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB17_22
.LBB17_25:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE, .Lfunc_end17-_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp349-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp349
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp350-.Ltmp349              #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp351-.Lfunc_begin17        #     jumps to .Ltmp351
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp353-.Ltmp352              #   Call between .Ltmp352 and .Ltmp353
	.uleb128 .Ltmp354-.Lfunc_begin17        #     jumps to .Ltmp354
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp355-.Ltmp353              #   Call between .Ltmp353 and .Ltmp355
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp355-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Ltmp356-.Ltmp355              #   Call between .Ltmp355 and .Ltmp356
	.uleb128 .Ltmp359-.Lfunc_begin17        #     jumps to .Ltmp359
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin17        # >> Call Site 6 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin17        # >> Call Site 7 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp359-.Lfunc_begin17        #     jumps to .Ltmp359
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp358-.Lfunc_begin17        # >> Call Site 8 <<
	.uleb128 .Lfunc_end17-.Ltmp358          #   Call between .Ltmp358 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE
.LCPI18_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE,@function
_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE: # @_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp360:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp363:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp367:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB18_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB18_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB18_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB18_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB18_8:                               # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB18_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI18_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI18_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB18_13
.LBB18_10:                              #   in Loop: Header=BB18_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB18_11:                              # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB18_13 Depth=1
	bne	$a1, $a0, .LBB18_38
.LBB18_12:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB18_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB18_23
.LBB18_13:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB18_12
# %bb.14:                               #   in Loop: Header=BB18_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB18_18
# %bb.15:                               #   in Loop: Header=BB18_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB18_22
# %bb.16:                               #   in Loop: Header=BB18_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB18_18
# %bb.17:                               #   in Loop: Header=BB18_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB18_18:                              # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB18_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB18_11
.LBB18_19:                              #   in Loop: Header=BB18_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB18_10
# %bb.20:                               #   in Loop: Header=BB18_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB18_11
# %bb.21:                               #   in Loop: Header=BB18_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB18_11
.LBB18_22:                              #   in Loop: Header=BB18_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB18_11
	b	.LBB18_19
.LBB18_23:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp384:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp385:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB18_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB18_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB18_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB18_28:                              #   Parent Loop BB18_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB18_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB18_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB18_27
.LBB18_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp386:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp387:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB18_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_33:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB18_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_35:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB18_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_37:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB18_38:
.Ltmp369:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp371:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp373:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp375:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp377:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp379:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp381:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB18_46:
.Ltmp368:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB18_54
.LBB18_47:                              # %.thread
.Ltmp365:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB18_55
.LBB18_48:                              # %.thread65
.Ltmp362:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_49:
.Ltmp388:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB18_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB18_55
.LBB18_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB18_56
.LBB18_52:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_53:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp383:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_54:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB18_51
.LBB18_55:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB18_52
.LBB18_56:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE, .Lfunc_end18-_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp360-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp360
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp362-.Lfunc_begin18        #     jumps to .Ltmp362
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.uleb128 .Ltmp365-.Lfunc_begin18        #     jumps to .Ltmp365
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Ltmp366-.Ltmp364              #   Call between .Ltmp364 and .Ltmp366
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin18        # >> Call Site 5 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin18        #     jumps to .Ltmp368
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin18        # >> Call Site 6 <<
	.uleb128 .Ltmp384-.Ltmp367              #   Call between .Ltmp367 and .Ltmp384
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp384-.Lfunc_begin18        # >> Call Site 7 <<
	.uleb128 .Ltmp385-.Ltmp384              #   Call between .Ltmp384 and .Ltmp385
	.uleb128 .Ltmp388-.Lfunc_begin18        #     jumps to .Ltmp388
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp385-.Lfunc_begin18        # >> Call Site 8 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin18        # >> Call Site 9 <<
	.uleb128 .Ltmp387-.Ltmp386              #   Call between .Ltmp386 and .Ltmp387
	.uleb128 .Ltmp388-.Lfunc_begin18        #     jumps to .Ltmp388
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin18        # >> Call Site 10 <<
	.uleb128 .Ltmp369-.Ltmp387              #   Call between .Ltmp387 and .Ltmp369
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin18        # >> Call Site 11 <<
	.uleb128 .Ltmp382-.Ltmp369              #   Call between .Ltmp369 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin18        #     jumps to .Ltmp383
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin18        # >> Call Site 12 <<
	.uleb128 .Lfunc_end18-.Ltmp382          #   Call between .Ltmp382 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE,@function
_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE: # @_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp389:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp392:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp393:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp395:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB19_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB19_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB19_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB19_7:                               #   Parent Loop BB19_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cbrt)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB19_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB19_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB19_6
.LBB19_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp397:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB19_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_12:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB19_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_14:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB19_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_16:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB19_17:                              # %.thread
.Ltmp394:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB19_24
.LBB19_18:                              # %.thread34
.Ltmp391:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_19:
.Ltmp399:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB19_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB19_24
.LBB19_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB19_25
.LBB19_22:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_23:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB19_21
.LBB19_24:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB19_22
.LBB19_25:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE, .Lfunc_end19-_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp389-.Lfunc_begin19        #   Call between .Lfunc_begin19 and .Ltmp389
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp390-.Ltmp389              #   Call between .Ltmp389 and .Ltmp390
	.uleb128 .Ltmp391-.Lfunc_begin19        #     jumps to .Ltmp391
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp393-.Ltmp392              #   Call between .Ltmp392 and .Ltmp393
	.uleb128 .Ltmp394-.Lfunc_begin19        #     jumps to .Ltmp394
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp395-.Ltmp393              #   Call between .Ltmp393 and .Ltmp395
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Ltmp396-.Ltmp395              #   Call between .Ltmp395 and .Ltmp396
	.uleb128 .Ltmp399-.Lfunc_begin19        #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin19        # >> Call Site 6 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin19        # >> Call Site 7 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin19        #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin19        # >> Call Site 8 <<
	.uleb128 .Lfunc_end19-.Ltmp398          #   Call between .Ltmp398 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE
.LCPI20_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE,@function
_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE: # @_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp400:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp403:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp407:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB20_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB20_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB20_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB20_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB20_8:                               # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB20_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI20_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI20_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB20_13
.LBB20_10:                              #   in Loop: Header=BB20_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB20_11:                              # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB20_13 Depth=1
	bne	$a1, $a0, .LBB20_38
.LBB20_12:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB20_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB20_23
.LBB20_13:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB20_12
# %bb.14:                               #   in Loop: Header=BB20_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB20_18
# %bb.15:                               #   in Loop: Header=BB20_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB20_22
# %bb.16:                               #   in Loop: Header=BB20_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB20_18
# %bb.17:                               #   in Loop: Header=BB20_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB20_18:                              # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB20_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB20_11
.LBB20_19:                              #   in Loop: Header=BB20_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB20_10
# %bb.20:                               #   in Loop: Header=BB20_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB20_11
# %bb.21:                               #   in Loop: Header=BB20_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB20_11
.LBB20_22:                              #   in Loop: Header=BB20_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB20_11
	b	.LBB20_19
.LBB20_23:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp424:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB20_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB20_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB20_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB20_28:                              #   Parent Loop BB20_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB20_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB20_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB20_27
.LBB20_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp426:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB20_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB20_33:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB20_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB20_35:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB20_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB20_37:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB20_38:
.Ltmp409:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp411:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp413:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp414:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp415:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp417:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp419:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp420:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp421:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp422:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_46:
.Ltmp408:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_54
.LBB20_47:                              # %.thread
.Ltmp405:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB20_55
.LBB20_48:                              # %.thread65
.Ltmp402:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_49:
.Ltmp428:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB20_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB20_55
.LBB20_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB20_56
.LBB20_52:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_53:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp423:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB20_54:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB20_51
.LBB20_55:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB20_52
.LBB20_56:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE, .Lfunc_end20-_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp400-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp400
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp402-.Lfunc_begin20        #     jumps to .Ltmp402
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin20        #     jumps to .Ltmp405
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp404-.Lfunc_begin20        # >> Call Site 4 <<
	.uleb128 .Ltmp406-.Ltmp404              #   Call between .Ltmp404 and .Ltmp406
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin20        # >> Call Site 5 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp408-.Lfunc_begin20        #     jumps to .Ltmp408
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin20        # >> Call Site 6 <<
	.uleb128 .Ltmp424-.Ltmp407              #   Call between .Ltmp407 and .Ltmp424
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin20        # >> Call Site 7 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp428-.Lfunc_begin20        #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin20        # >> Call Site 8 <<
	.uleb128 .Ltmp426-.Ltmp425              #   Call between .Ltmp425 and .Ltmp426
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin20        # >> Call Site 9 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin20        #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin20        # >> Call Site 10 <<
	.uleb128 .Ltmp409-.Ltmp427              #   Call between .Ltmp427 and .Ltmp409
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin20        # >> Call Site 11 <<
	.uleb128 .Ltmp422-.Ltmp409              #   Call between .Ltmp409 and .Ltmp422
	.uleb128 .Ltmp423-.Lfunc_begin20        #     jumps to .Ltmp423
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin20        # >> Call Site 12 <<
	.uleb128 .Lfunc_end20-.Ltmp422          #   Call between .Ltmp422 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE,@function
_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE: # @_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp429:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp432:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp435:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB21_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB21_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB21_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB21_7:                               #   Parent Loop BB21_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(erff)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB21_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB21_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB21_6
.LBB21_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp437:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp438:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB21_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB21_12:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB21_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB21_14:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB21_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB21_16:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB21_17:                              # %.thread
.Ltmp434:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB21_24
.LBB21_18:                              # %.thread34
.Ltmp431:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_19:
.Ltmp439:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB21_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB21_24
.LBB21_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB21_25
.LBB21_22:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_23:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB21_21
.LBB21_24:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB21_22
.LBB21_25:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE, .Lfunc_end21-_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp429-.Lfunc_begin21        #   Call between .Lfunc_begin21 and .Ltmp429
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp431-.Lfunc_begin21        #     jumps to .Ltmp431
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin21        # >> Call Site 3 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin21        #     jumps to .Ltmp434
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin21        # >> Call Site 4 <<
	.uleb128 .Ltmp435-.Ltmp433              #   Call between .Ltmp433 and .Ltmp435
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin21        # >> Call Site 5 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp439-.Lfunc_begin21        #     jumps to .Ltmp439
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp436-.Lfunc_begin21        # >> Call Site 6 <<
	.uleb128 .Ltmp437-.Ltmp436              #   Call between .Ltmp436 and .Ltmp437
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin21        # >> Call Site 7 <<
	.uleb128 .Ltmp438-.Ltmp437              #   Call between .Ltmp437 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin21        #     jumps to .Ltmp439
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin21        # >> Call Site 8 <<
	.uleb128 .Lfunc_end21-.Ltmp438          #   Call between .Ltmp438 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE
.LCPI22_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE,@function
_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE: # @_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp440:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp441:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp443:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp444:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB22_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB22_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB22_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB22_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB22_8:                               # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB22_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI22_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI22_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB22_13
.LBB22_10:                              #   in Loop: Header=BB22_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB22_11:                              # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB22_13 Depth=1
	bne	$a1, $a0, .LBB22_38
.LBB22_12:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB22_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB22_23
.LBB22_13:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB22_12
# %bb.14:                               #   in Loop: Header=BB22_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB22_18
# %bb.15:                               #   in Loop: Header=BB22_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB22_22
# %bb.16:                               #   in Loop: Header=BB22_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB22_18
# %bb.17:                               #   in Loop: Header=BB22_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB22_18:                              # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB22_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB22_11
.LBB22_19:                              #   in Loop: Header=BB22_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB22_10
# %bb.20:                               #   in Loop: Header=BB22_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB22_11
# %bb.21:                               #   in Loop: Header=BB22_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB22_11
.LBB22_22:                              #   in Loop: Header=BB22_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB22_11
	b	.LBB22_19
.LBB22_23:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp464:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp465:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB22_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB22_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB22_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB22_28:                              #   Parent Loop BB22_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB22_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB22_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB22_27
.LBB22_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp466:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB22_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB22_33:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB22_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB22_35:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB22_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB22_37:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB22_38:
.Ltmp449:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp450:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp451:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp452:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp453:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp455:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp457:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp458:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp459:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp461:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp462:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_46:
.Ltmp448:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB22_54
.LBB22_47:                              # %.thread
.Ltmp445:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB22_55
.LBB22_48:                              # %.thread65
.Ltmp442:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_49:
.Ltmp468:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB22_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB22_55
.LBB22_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB22_56
.LBB22_52:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_53:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp463:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB22_54:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB22_51
.LBB22_55:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB22_52
.LBB22_56:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE, .Lfunc_end22-_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table22:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp440-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp440
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin22        #     jumps to .Ltmp442
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Ltmp444-.Ltmp443              #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp445-.Lfunc_begin22        #     jumps to .Ltmp445
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin22        # >> Call Site 4 <<
	.uleb128 .Ltmp446-.Ltmp444              #   Call between .Ltmp444 and .Ltmp446
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin22        # >> Call Site 5 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin22        #     jumps to .Ltmp448
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin22        # >> Call Site 6 <<
	.uleb128 .Ltmp464-.Ltmp447              #   Call between .Ltmp447 and .Ltmp464
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin22        # >> Call Site 7 <<
	.uleb128 .Ltmp465-.Ltmp464              #   Call between .Ltmp464 and .Ltmp465
	.uleb128 .Ltmp468-.Lfunc_begin22        #     jumps to .Ltmp468
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin22        # >> Call Site 8 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin22        # >> Call Site 9 <<
	.uleb128 .Ltmp467-.Ltmp466              #   Call between .Ltmp466 and .Ltmp467
	.uleb128 .Ltmp468-.Lfunc_begin22        #     jumps to .Ltmp468
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin22        # >> Call Site 10 <<
	.uleb128 .Ltmp449-.Ltmp467              #   Call between .Ltmp467 and .Ltmp449
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin22        # >> Call Site 11 <<
	.uleb128 .Ltmp462-.Ltmp449              #   Call between .Ltmp449 and .Ltmp462
	.uleb128 .Ltmp463-.Lfunc_begin22        #     jumps to .Ltmp463
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin22        # >> Call Site 12 <<
	.uleb128 .Lfunc_end22-.Ltmp462          #   Call between .Ltmp462 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE,@function
_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE: # @_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp469:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp470:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp472:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp473:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp475:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB23_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB23_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB23_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB23_7:                               #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(erf)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB23_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB23_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB23_6
.LBB23_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp477:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB23_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB23_12:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB23_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB23_14:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB23_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB23_16:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB23_17:                              # %.thread
.Ltmp474:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB23_24
.LBB23_18:                              # %.thread34
.Ltmp471:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB23_19:
.Ltmp479:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB23_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB23_24
.LBB23_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB23_25
.LBB23_22:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB23_23:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB23_21
.LBB23_24:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB23_22
.LBB23_25:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE, .Lfunc_end23-_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp469-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp469
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp470-.Ltmp469              #   Call between .Ltmp469 and .Ltmp470
	.uleb128 .Ltmp471-.Lfunc_begin23        #     jumps to .Ltmp471
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Ltmp473-.Ltmp472              #   Call between .Ltmp472 and .Ltmp473
	.uleb128 .Ltmp474-.Lfunc_begin23        #     jumps to .Ltmp474
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin23        # >> Call Site 4 <<
	.uleb128 .Ltmp475-.Ltmp473              #   Call between .Ltmp473 and .Ltmp475
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin23        # >> Call Site 5 <<
	.uleb128 .Ltmp476-.Ltmp475              #   Call between .Ltmp475 and .Ltmp476
	.uleb128 .Ltmp479-.Lfunc_begin23        #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin23        # >> Call Site 6 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin23        # >> Call Site 7 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin23        #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin23        # >> Call Site 8 <<
	.uleb128 .Lfunc_end23-.Ltmp478          #   Call between .Ltmp478 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE
.LCPI24_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE,@function
_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE: # @_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp480:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp483:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB24_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB24_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB24_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB24_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB24_8:                               # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB24_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI24_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI24_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB24_13
.LBB24_10:                              #   in Loop: Header=BB24_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB24_11:                              # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB24_13 Depth=1
	bne	$a1, $a0, .LBB24_38
.LBB24_12:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB24_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB24_23
.LBB24_13:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB24_12
# %bb.14:                               #   in Loop: Header=BB24_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB24_18
# %bb.15:                               #   in Loop: Header=BB24_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB24_22
# %bb.16:                               #   in Loop: Header=BB24_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB24_18
# %bb.17:                               #   in Loop: Header=BB24_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB24_18:                              # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB24_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB24_11
.LBB24_19:                              #   in Loop: Header=BB24_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB24_10
# %bb.20:                               #   in Loop: Header=BB24_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB24_11
# %bb.21:                               #   in Loop: Header=BB24_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB24_11
.LBB24_22:                              #   in Loop: Header=BB24_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB24_11
	b	.LBB24_19
.LBB24_23:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp504:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp505:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB24_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB24_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB24_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB24_28:                              #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB24_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB24_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB24_27
.LBB24_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp506:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp507:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB24_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_33:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB24_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_35:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB24_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_37:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB24_38:
.Ltmp489:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp491:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp492:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp493:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp494:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp495:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp497:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp498:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp499:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp500:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp501:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB24_46:
.Ltmp488:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB24_54
.LBB24_47:                              # %.thread
.Ltmp485:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB24_55
.LBB24_48:                              # %.thread65
.Ltmp482:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_49:
.Ltmp508:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB24_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB24_55
.LBB24_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB24_56
.LBB24_52:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_53:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp503:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_54:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB24_51
.LBB24_55:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB24_52
.LBB24_56:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE, .Lfunc_end24-_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Lfunc_begin24-.Lfunc_begin24  # >> Call Site 1 <<
	.uleb128 .Ltmp480-.Lfunc_begin24        #   Call between .Lfunc_begin24 and .Ltmp480
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin24        #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin24        # >> Call Site 3 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin24        #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin24        # >> Call Site 4 <<
	.uleb128 .Ltmp486-.Ltmp484              #   Call between .Ltmp484 and .Ltmp486
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin24        # >> Call Site 5 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin24        #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp487-.Lfunc_begin24        # >> Call Site 6 <<
	.uleb128 .Ltmp504-.Ltmp487              #   Call between .Ltmp487 and .Ltmp504
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin24        # >> Call Site 7 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp508-.Lfunc_begin24        #     jumps to .Ltmp508
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin24        # >> Call Site 8 <<
	.uleb128 .Ltmp506-.Ltmp505              #   Call between .Ltmp505 and .Ltmp506
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp506-.Lfunc_begin24        # >> Call Site 9 <<
	.uleb128 .Ltmp507-.Ltmp506              #   Call between .Ltmp506 and .Ltmp507
	.uleb128 .Ltmp508-.Lfunc_begin24        #     jumps to .Ltmp508
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin24        # >> Call Site 10 <<
	.uleb128 .Ltmp489-.Ltmp507              #   Call between .Ltmp507 and .Ltmp489
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin24        # >> Call Site 11 <<
	.uleb128 .Ltmp502-.Ltmp489              #   Call between .Ltmp489 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin24        #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp502-.Lfunc_begin24        # >> Call Site 12 <<
	.uleb128 .Lfunc_end24-.Ltmp502          #   Call between .Ltmp502 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE,@function
_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE: # @_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp509:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp510:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp512:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp513:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp515:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp516:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB25_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB25_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB25_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB25_7:                               #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB25_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB25_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB25_6
.LBB25_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp517:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB25_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_12:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB25_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_14:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB25_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB25_16:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB25_17:                              # %.thread
.Ltmp514:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB25_24
.LBB25_18:                              # %.thread34
.Ltmp511:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB25_19:
.Ltmp519:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB25_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB25_24
.LBB25_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB25_25
.LBB25_22:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB25_23:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB25_21
.LBB25_24:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB25_22
.LBB25_25:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE, .Lfunc_end25-_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Lfunc_begin25-.Lfunc_begin25  # >> Call Site 1 <<
	.uleb128 .Ltmp509-.Lfunc_begin25        #   Call between .Lfunc_begin25 and .Ltmp509
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp511-.Lfunc_begin25        #     jumps to .Ltmp511
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp512-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Ltmp513-.Ltmp512              #   Call between .Ltmp512 and .Ltmp513
	.uleb128 .Ltmp514-.Lfunc_begin25        #     jumps to .Ltmp514
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin25        # >> Call Site 4 <<
	.uleb128 .Ltmp515-.Ltmp513              #   Call between .Ltmp513 and .Ltmp515
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin25        # >> Call Site 5 <<
	.uleb128 .Ltmp516-.Ltmp515              #   Call between .Ltmp515 and .Ltmp516
	.uleb128 .Ltmp519-.Lfunc_begin25        #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp516-.Lfunc_begin25        # >> Call Site 6 <<
	.uleb128 .Ltmp517-.Ltmp516              #   Call between .Ltmp516 and .Ltmp517
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp517-.Lfunc_begin25        # >> Call Site 7 <<
	.uleb128 .Ltmp518-.Ltmp517              #   Call between .Ltmp517 and .Ltmp518
	.uleb128 .Ltmp519-.Lfunc_begin25        #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp518-.Lfunc_begin25        # >> Call Site 8 <<
	.uleb128 .Lfunc_end25-.Ltmp518          #   Call between .Ltmp518 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE
.LCPI26_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE,@function
_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE: # @_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp520:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp521:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp523:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp524:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp527:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB26_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB26_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB26_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB26_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB26_8:                               # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB26_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI26_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI26_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB26_13
.LBB26_10:                              #   in Loop: Header=BB26_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB26_11:                              # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB26_13 Depth=1
	bne	$a1, $a0, .LBB26_38
.LBB26_12:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB26_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB26_23
.LBB26_13:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB26_12
# %bb.14:                               #   in Loop: Header=BB26_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB26_18
# %bb.15:                               #   in Loop: Header=BB26_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB26_22
# %bb.16:                               #   in Loop: Header=BB26_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB26_18
# %bb.17:                               #   in Loop: Header=BB26_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB26_18:                              # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB26_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB26_11
.LBB26_19:                              #   in Loop: Header=BB26_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB26_10
# %bb.20:                               #   in Loop: Header=BB26_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB26_11
# %bb.21:                               #   in Loop: Header=BB26_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB26_11
.LBB26_22:                              #   in Loop: Header=BB26_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB26_11
	b	.LBB26_19
.LBB26_23:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp544:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp545:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB26_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB26_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB26_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB26_28:                              #   Parent Loop BB26_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB26_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB26_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB26_27
.LBB26_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp546:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB26_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB26_33:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB26_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB26_35:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB26_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB26_37:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB26_38:
.Ltmp529:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp530:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp531:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp533:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp534:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp535:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp536:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp537:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp539:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp540:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp541:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp542:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB26_46:
.Ltmp528:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB26_54
.LBB26_47:                              # %.thread
.Ltmp525:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB26_55
.LBB26_48:                              # %.thread65
.Ltmp522:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB26_49:
.Ltmp548:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB26_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB26_55
.LBB26_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB26_56
.LBB26_52:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB26_53:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp543:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB26_54:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB26_51
.LBB26_55:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB26_52
.LBB26_56:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE, .Lfunc_end26-_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table26:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Lfunc_begin26-.Lfunc_begin26  # >> Call Site 1 <<
	.uleb128 .Ltmp520-.Lfunc_begin26        #   Call between .Lfunc_begin26 and .Ltmp520
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp520-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Ltmp521-.Ltmp520              #   Call between .Ltmp520 and .Ltmp521
	.uleb128 .Ltmp522-.Lfunc_begin26        #     jumps to .Ltmp522
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp523-.Lfunc_begin26        # >> Call Site 3 <<
	.uleb128 .Ltmp524-.Ltmp523              #   Call between .Ltmp523 and .Ltmp524
	.uleb128 .Ltmp525-.Lfunc_begin26        #     jumps to .Ltmp525
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp524-.Lfunc_begin26        # >> Call Site 4 <<
	.uleb128 .Ltmp526-.Ltmp524              #   Call between .Ltmp524 and .Ltmp526
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp526-.Lfunc_begin26        # >> Call Site 5 <<
	.uleb128 .Ltmp527-.Ltmp526              #   Call between .Ltmp526 and .Ltmp527
	.uleb128 .Ltmp528-.Lfunc_begin26        #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin26        # >> Call Site 6 <<
	.uleb128 .Ltmp544-.Ltmp527              #   Call between .Ltmp527 and .Ltmp544
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin26        # >> Call Site 7 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp548-.Lfunc_begin26        #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp545-.Lfunc_begin26        # >> Call Site 8 <<
	.uleb128 .Ltmp546-.Ltmp545              #   Call between .Ltmp545 and .Ltmp546
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin26        # >> Call Site 9 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin26        #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin26        # >> Call Site 10 <<
	.uleb128 .Ltmp529-.Ltmp547              #   Call between .Ltmp547 and .Ltmp529
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp529-.Lfunc_begin26        # >> Call Site 11 <<
	.uleb128 .Ltmp542-.Ltmp529              #   Call between .Ltmp529 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin26        #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp542-.Lfunc_begin26        # >> Call Site 12 <<
	.uleb128 .Lfunc_end26-.Ltmp542          #   Call between .Ltmp542 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE,@function
_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE: # @_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception27
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp549:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp552:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp555:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB27_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB27_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB27_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB27_7:                               #   Parent Loop BB27_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB27_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB27_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB27_6
.LBB27_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp557:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp558:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB27_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB27_12:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB27_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB27_14:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB27_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB27_16:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB27_17:                              # %.thread
.Ltmp554:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB27_24
.LBB27_18:                              # %.thread34
.Ltmp551:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB27_19:
.Ltmp559:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB27_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB27_24
.LBB27_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB27_25
.LBB27_22:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB27_23:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB27_21
.LBB27_24:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB27_22
.LBB27_25:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE, .Lfunc_end27-_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table27:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Lfunc_begin27-.Lfunc_begin27  # >> Call Site 1 <<
	.uleb128 .Ltmp549-.Lfunc_begin27        #   Call between .Lfunc_begin27 and .Ltmp549
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin27        #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin27        # >> Call Site 3 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin27        #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin27        # >> Call Site 4 <<
	.uleb128 .Ltmp555-.Ltmp553              #   Call between .Ltmp553 and .Ltmp555
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin27        # >> Call Site 5 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp559-.Lfunc_begin27        #     jumps to .Ltmp559
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin27        # >> Call Site 6 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp557-.Lfunc_begin27        # >> Call Site 7 <<
	.uleb128 .Ltmp558-.Ltmp557              #   Call between .Ltmp557 and .Ltmp558
	.uleb128 .Ltmp559-.Lfunc_begin27        #     jumps to .Ltmp559
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin27        # >> Call Site 8 <<
	.uleb128 .Lfunc_end27-.Ltmp558          #   Call between .Ltmp558 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE
.LCPI28_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE,@function
_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE: # @_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception28
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp560:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp561:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp563:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp564:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp567:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB28_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB28_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB28_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB28_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB28_8:                               # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB28_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI28_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI28_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB28_13
.LBB28_10:                              #   in Loop: Header=BB28_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB28_11:                              # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB28_13 Depth=1
	bne	$a1, $a0, .LBB28_38
.LBB28_12:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB28_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB28_23
.LBB28_13:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB28_12
# %bb.14:                               #   in Loop: Header=BB28_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB28_18
# %bb.15:                               #   in Loop: Header=BB28_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB28_22
# %bb.16:                               #   in Loop: Header=BB28_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB28_18
# %bb.17:                               #   in Loop: Header=BB28_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB28_18:                              # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB28_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB28_11
.LBB28_19:                              #   in Loop: Header=BB28_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB28_10
# %bb.20:                               #   in Loop: Header=BB28_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB28_11
# %bb.21:                               #   in Loop: Header=BB28_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB28_11
.LBB28_22:                              #   in Loop: Header=BB28_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB28_11
	b	.LBB28_19
.LBB28_23:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp584:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp585:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB28_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB28_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB28_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB28_28:                              #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB28_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB28_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB28_27
.LBB28_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp586:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp587:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB28_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_33:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB28_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_35:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB28_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_37:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB28_38:
.Ltmp569:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp570:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp571:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp573:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp575:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp576:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp577:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp579:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp581:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp582:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB28_46:
.Ltmp568:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB28_54
.LBB28_47:                              # %.thread
.Ltmp565:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB28_55
.LBB28_48:                              # %.thread65
.Ltmp562:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB28_49:
.Ltmp588:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB28_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB28_55
.LBB28_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB28_56
.LBB28_52:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB28_53:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp583:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_54:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB28_51
.LBB28_55:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB28_52
.LBB28_56:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE, .Lfunc_end28-_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table28:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Lfunc_begin28-.Lfunc_begin28  # >> Call Site 1 <<
	.uleb128 .Ltmp560-.Lfunc_begin28        #   Call between .Lfunc_begin28 and .Ltmp560
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp560-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Ltmp561-.Ltmp560              #   Call between .Ltmp560 and .Ltmp561
	.uleb128 .Ltmp562-.Lfunc_begin28        #     jumps to .Ltmp562
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp563-.Lfunc_begin28        # >> Call Site 3 <<
	.uleb128 .Ltmp564-.Ltmp563              #   Call between .Ltmp563 and .Ltmp564
	.uleb128 .Ltmp565-.Lfunc_begin28        #     jumps to .Ltmp565
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin28        # >> Call Site 4 <<
	.uleb128 .Ltmp566-.Ltmp564              #   Call between .Ltmp564 and .Ltmp566
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin28        # >> Call Site 5 <<
	.uleb128 .Ltmp567-.Ltmp566              #   Call between .Ltmp566 and .Ltmp567
	.uleb128 .Ltmp568-.Lfunc_begin28        #     jumps to .Ltmp568
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin28        # >> Call Site 6 <<
	.uleb128 .Ltmp584-.Ltmp567              #   Call between .Ltmp567 and .Ltmp584
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp584-.Lfunc_begin28        # >> Call Site 7 <<
	.uleb128 .Ltmp585-.Ltmp584              #   Call between .Ltmp584 and .Ltmp585
	.uleb128 .Ltmp588-.Lfunc_begin28        #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin28        # >> Call Site 8 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin28        # >> Call Site 9 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp588-.Lfunc_begin28        #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp587-.Lfunc_begin28        # >> Call Site 10 <<
	.uleb128 .Ltmp569-.Ltmp587              #   Call between .Ltmp587 and .Ltmp569
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp569-.Lfunc_begin28        # >> Call Site 11 <<
	.uleb128 .Ltmp582-.Ltmp569              #   Call between .Ltmp569 and .Ltmp582
	.uleb128 .Ltmp583-.Lfunc_begin28        #     jumps to .Ltmp583
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin28        # >> Call Site 12 <<
	.uleb128 .Lfunc_end28-.Ltmp582          #   Call between .Ltmp582 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE,@function
_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE: # @_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception29
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp589:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp590:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp592:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp593:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp595:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp596:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB29_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB29_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB29_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB29_7:                               #   Parent Loop BB29_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB29_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB29_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB29_6
.LBB29_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp597:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB29_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB29_12:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB29_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB29_14:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB29_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB29_16:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB29_17:                              # %.thread
.Ltmp594:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB29_24
.LBB29_18:                              # %.thread34
.Ltmp591:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB29_19:
.Ltmp599:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB29_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB29_24
.LBB29_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB29_25
.LBB29_22:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB29_23:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB29_21
.LBB29_24:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB29_22
.LBB29_25:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE, .Lfunc_end29-_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table29:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Lfunc_begin29-.Lfunc_begin29  # >> Call Site 1 <<
	.uleb128 .Ltmp589-.Lfunc_begin29        #   Call between .Lfunc_begin29 and .Ltmp589
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp589-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Ltmp590-.Ltmp589              #   Call between .Ltmp589 and .Ltmp590
	.uleb128 .Ltmp591-.Lfunc_begin29        #     jumps to .Ltmp591
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin29        # >> Call Site 3 <<
	.uleb128 .Ltmp593-.Ltmp592              #   Call between .Ltmp592 and .Ltmp593
	.uleb128 .Ltmp594-.Lfunc_begin29        #     jumps to .Ltmp594
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp593-.Lfunc_begin29        # >> Call Site 4 <<
	.uleb128 .Ltmp595-.Ltmp593              #   Call between .Ltmp593 and .Ltmp595
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp595-.Lfunc_begin29        # >> Call Site 5 <<
	.uleb128 .Ltmp596-.Ltmp595              #   Call between .Ltmp595 and .Ltmp596
	.uleb128 .Ltmp599-.Lfunc_begin29        #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp596-.Lfunc_begin29        # >> Call Site 6 <<
	.uleb128 .Ltmp597-.Ltmp596              #   Call between .Ltmp596 and .Ltmp597
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin29        # >> Call Site 7 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin29        #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp598-.Lfunc_begin29        # >> Call Site 8 <<
	.uleb128 .Lfunc_end29-.Ltmp598          #   Call between .Ltmp598 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE
.LCPI30_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE,@function
_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE: # @_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception30
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp600:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp603:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp606:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp607:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB30_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB30_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB30_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB30_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB30_8:                               # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB30_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI30_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI30_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB30_13
.LBB30_10:                              #   in Loop: Header=BB30_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB30_11:                              # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB30_13 Depth=1
	bne	$a1, $a0, .LBB30_38
.LBB30_12:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB30_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB30_23
.LBB30_13:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB30_12
# %bb.14:                               #   in Loop: Header=BB30_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB30_18
# %bb.15:                               #   in Loop: Header=BB30_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB30_22
# %bb.16:                               #   in Loop: Header=BB30_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB30_18
# %bb.17:                               #   in Loop: Header=BB30_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB30_18:                              # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB30_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB30_11
.LBB30_19:                              #   in Loop: Header=BB30_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB30_10
# %bb.20:                               #   in Loop: Header=BB30_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB30_11
# %bb.21:                               #   in Loop: Header=BB30_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB30_11
.LBB30_22:                              #   in Loop: Header=BB30_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB30_11
	b	.LBB30_19
.LBB30_23:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp624:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB30_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB30_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB30_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB30_28:                              #   Parent Loop BB30_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB30_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB30_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB30_27
.LBB30_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp626:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp627:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB30_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB30_33:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB30_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB30_35:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB30_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB30_37:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB30_38:
.Ltmp609:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp611:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp612:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp613:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp614:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp615:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp617:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp618:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp619:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp620:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp621:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB30_46:
.Ltmp608:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_54
.LBB30_47:                              # %.thread
.Ltmp605:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_55
.LBB30_48:                              # %.thread65
.Ltmp602:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB30_49:
.Ltmp628:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB30_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB30_55
.LBB30_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB30_56
.LBB30_52:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB30_53:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp623:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB30_54:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB30_51
.LBB30_55:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB30_52
.LBB30_56:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE, .Lfunc_end30-_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table30:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Lfunc_begin30-.Lfunc_begin30  # >> Call Site 1 <<
	.uleb128 .Ltmp600-.Lfunc_begin30        #   Call between .Lfunc_begin30 and .Ltmp600
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin30        #     jumps to .Ltmp602
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp603-.Lfunc_begin30        # >> Call Site 3 <<
	.uleb128 .Ltmp604-.Ltmp603              #   Call between .Ltmp603 and .Ltmp604
	.uleb128 .Ltmp605-.Lfunc_begin30        #     jumps to .Ltmp605
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp604-.Lfunc_begin30        # >> Call Site 4 <<
	.uleb128 .Ltmp606-.Ltmp604              #   Call between .Ltmp604 and .Ltmp606
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin30        # >> Call Site 5 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp608-.Lfunc_begin30        #     jumps to .Ltmp608
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp607-.Lfunc_begin30        # >> Call Site 6 <<
	.uleb128 .Ltmp624-.Ltmp607              #   Call between .Ltmp607 and .Ltmp624
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin30        # >> Call Site 7 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp628-.Lfunc_begin30        #     jumps to .Ltmp628
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp625-.Lfunc_begin30        # >> Call Site 8 <<
	.uleb128 .Ltmp626-.Ltmp625              #   Call between .Ltmp625 and .Ltmp626
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp626-.Lfunc_begin30        # >> Call Site 9 <<
	.uleb128 .Ltmp627-.Ltmp626              #   Call between .Ltmp626 and .Ltmp627
	.uleb128 .Ltmp628-.Lfunc_begin30        #     jumps to .Ltmp628
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin30        # >> Call Site 10 <<
	.uleb128 .Ltmp609-.Ltmp627              #   Call between .Ltmp627 and .Ltmp609
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin30        # >> Call Site 11 <<
	.uleb128 .Ltmp622-.Ltmp609              #   Call between .Ltmp609 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin30        #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin30        # >> Call Site 12 <<
	.uleb128 .Lfunc_end30-.Ltmp622          #   Call between .Ltmp622 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE # -- Begin function _Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE,@function
_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE: # @_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception31
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp629:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp630:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp632:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp633:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp635:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp636:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB31_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB31_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB31_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB31_7:                               #   Parent Loop BB31_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB31_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB31_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB31_6
.LBB31_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp637:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp638:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB31_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB31_12:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB31_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB31_14:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB31_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB31_16:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB31_17:                              # %.thread
.Ltmp634:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB31_24
.LBB31_18:                              # %.thread34
.Ltmp631:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB31_19:
.Ltmp639:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB31_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB31_24
.LBB31_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB31_25
.LBB31_22:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB31_23:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB31_21
.LBB31_24:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB31_22
.LBB31_25:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE, .Lfunc_end31-_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Lfunc_begin31-.Lfunc_begin31  # >> Call Site 1 <<
	.uleb128 .Ltmp629-.Lfunc_begin31        #   Call between .Lfunc_begin31 and .Ltmp629
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp629-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Ltmp630-.Ltmp629              #   Call between .Ltmp629 and .Ltmp630
	.uleb128 .Ltmp631-.Lfunc_begin31        #     jumps to .Ltmp631
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp632-.Lfunc_begin31        # >> Call Site 3 <<
	.uleb128 .Ltmp633-.Ltmp632              #   Call between .Ltmp632 and .Ltmp633
	.uleb128 .Ltmp634-.Lfunc_begin31        #     jumps to .Ltmp634
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin31        # >> Call Site 4 <<
	.uleb128 .Ltmp635-.Ltmp633              #   Call between .Ltmp633 and .Ltmp635
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp635-.Lfunc_begin31        # >> Call Site 5 <<
	.uleb128 .Ltmp636-.Ltmp635              #   Call between .Ltmp635 and .Ltmp636
	.uleb128 .Ltmp639-.Lfunc_begin31        #     jumps to .Ltmp639
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin31        # >> Call Site 6 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp637-.Lfunc_begin31        # >> Call Site 7 <<
	.uleb128 .Ltmp638-.Ltmp637              #   Call between .Ltmp637 and .Ltmp638
	.uleb128 .Ltmp639-.Lfunc_begin31        #     jumps to .Ltmp639
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin31        # >> Call Site 8 <<
	.uleb128 .Lfunc_end31-.Ltmp638          #   Call between .Ltmp638 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE
.LCPI32_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.globl	_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE,@function
_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE: # @_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception32
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 9
	ori	$s4, $a0, 3136
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp640:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp641:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp643:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp644:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp647:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB32_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB32_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB32_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $s1, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB32_6
# %bb.7:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB32_8:                               # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fldx.s	$fa1, $s3, $s5
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $fp, $s5
	addi.d	$s5, $s5, 4
	bne	$s5, $s4, .LBB32_8
# %bb.9:                                # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI32_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI32_0)
	movgr2fr.w	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB32_13
.LBB32_10:                              #   in Loop: Header=BB32_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB32_11:                              # %_ZSt10fpclassifyf.exit12
                                        #   in Loop: Header=BB32_13 Depth=1
	bne	$a1, $a0, .LBB32_38
.LBB32_12:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB32_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	beq	$s2, $s3, .LBB32_23
.LBB32_13:                              # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $s5, 0
	fld.s	$fa2, $s4, 0
	fcmp.ceq.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB32_12
# %bb.14:                               #   in Loop: Header=BB32_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.s	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB32_18
# %bb.15:                               #   in Loop: Header=BB32_13 Depth=1
	fcmp.cun.s	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB32_22
# %bb.16:                               #   in Loop: Header=BB32_13 Depth=1
	fclass.s	$fa4, $fa3
	movfr2gr.s	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB32_18
# %bb.17:                               #   in Loop: Header=BB32_13 Depth=1
	fabs.s	$fa3, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB32_18:                              # %_ZSt10fpclassifyf.exit
                                        #   in Loop: Header=BB32_13 Depth=1
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB32_11
.LBB32_19:                              #   in Loop: Header=BB32_13 Depth=1
	fcmp.cun.s	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB32_10
# %bb.20:                               #   in Loop: Header=BB32_13 Depth=1
	fclass.s	$fa3, $fa2
	movfr2gr.s	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB32_11
# %bb.21:                               #   in Loop: Header=BB32_13 Depth=1
	fabs.s	$fa2, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB32_11
.LBB32_22:                              #   in Loop: Header=BB32_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB32_11
	b	.LBB32_19
.LBB32_23:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp664:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp665:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB32_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB32_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB32_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB32_28:                              #   Parent Loop BB32_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB32_28
# %bb.29:                               # %_ZL14run_fn_autovecIfEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB32_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB32_27
.LBB32_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp666:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp667:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB32_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB32_33:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB32_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB32_35:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB32_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB32_37:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB32_38:
.Ltmp649:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp650:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.s	$fa0, $s5, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp651:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp652:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEf.exit
.Ltmp653:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp654:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.s	$fa0, $s4, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp655:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp656:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit18
.Ltmp657:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp658:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp659:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp660:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp661:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp662:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB32_46:
.Ltmp648:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB32_54
.LBB32_47:                              # %.thread
.Ltmp645:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB32_55
.LBB32_48:                              # %.thread65
.Ltmp642:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB32_49:
.Ltmp668:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB32_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB32_55
.LBB32_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB32_56
.LBB32_52:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB32_53:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit24
.Ltmp663:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB32_54:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB32_51
.LBB32_55:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB32_52
.LBB32_56:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE, .Lfunc_end32-_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table32:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Lfunc_begin32-.Lfunc_begin32  # >> Call Site 1 <<
	.uleb128 .Ltmp640-.Lfunc_begin32        #   Call between .Lfunc_begin32 and .Ltmp640
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp640-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Ltmp641-.Ltmp640              #   Call between .Ltmp640 and .Ltmp641
	.uleb128 .Ltmp642-.Lfunc_begin32        #     jumps to .Ltmp642
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin32        # >> Call Site 3 <<
	.uleb128 .Ltmp644-.Ltmp643              #   Call between .Ltmp643 and .Ltmp644
	.uleb128 .Ltmp645-.Lfunc_begin32        #     jumps to .Ltmp645
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp644-.Lfunc_begin32        # >> Call Site 4 <<
	.uleb128 .Ltmp646-.Ltmp644              #   Call between .Ltmp644 and .Ltmp646
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp646-.Lfunc_begin32        # >> Call Site 5 <<
	.uleb128 .Ltmp647-.Ltmp646              #   Call between .Ltmp646 and .Ltmp647
	.uleb128 .Ltmp648-.Lfunc_begin32        #     jumps to .Ltmp648
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp647-.Lfunc_begin32        # >> Call Site 6 <<
	.uleb128 .Ltmp664-.Ltmp647              #   Call between .Ltmp647 and .Ltmp664
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp664-.Lfunc_begin32        # >> Call Site 7 <<
	.uleb128 .Ltmp665-.Ltmp664              #   Call between .Ltmp664 and .Ltmp665
	.uleb128 .Ltmp668-.Lfunc_begin32        #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp665-.Lfunc_begin32        # >> Call Site 8 <<
	.uleb128 .Ltmp666-.Ltmp665              #   Call between .Ltmp665 and .Ltmp666
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin32        # >> Call Site 9 <<
	.uleb128 .Ltmp667-.Ltmp666              #   Call between .Ltmp666 and .Ltmp667
	.uleb128 .Ltmp668-.Lfunc_begin32        #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp667-.Lfunc_begin32        # >> Call Site 10 <<
	.uleb128 .Ltmp649-.Ltmp667              #   Call between .Ltmp667 and .Ltmp649
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp649-.Lfunc_begin32        # >> Call Site 11 <<
	.uleb128 .Ltmp662-.Ltmp649              #   Call between .Ltmp649 and .Ltmp662
	.uleb128 .Ltmp663-.Lfunc_begin32        #     jumps to .Ltmp663
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp662-.Lfunc_begin32        # >> Call Site 12 <<
	.uleb128 .Lfunc_end32-.Ltmp662          #   Call between .Ltmp662 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE,@function
_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE: # @_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception33
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$s2, $a0, 3136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp669:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp672:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp673:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp675:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB33_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB33_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB33_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB33_7:                               #   Parent Loop BB33_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s6, 0
	fmov.s	$fs0, $fa0
	fmov.s	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinhf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s8, .LBB33_7
# %bb.8:                                # %_ZL12run_fn_novecIfEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB33_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB33_6
.LBB33_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp677:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp678:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIfEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB33_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_12:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB33_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_14:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB33_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_16:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB33_17:                              # %.thread
.Ltmp674:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_24
.LBB33_18:                              # %.thread34
.Ltmp671:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB33_19:
.Ltmp679:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB33_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB33_24
.LBB33_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB33_25
.LBB33_22:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB33_23:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB33_21
.LBB33_24:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB33_22
.LBB33_25:                              # %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE, .Lfunc_end33-_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table33:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Lfunc_begin33-.Lfunc_begin33  # >> Call Site 1 <<
	.uleb128 .Ltmp669-.Lfunc_begin33        #   Call between .Lfunc_begin33 and .Ltmp669
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin33        # >> Call Site 2 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin33        #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin33        # >> Call Site 3 <<
	.uleb128 .Ltmp673-.Ltmp672              #   Call between .Ltmp672 and .Ltmp673
	.uleb128 .Ltmp674-.Lfunc_begin33        #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp673-.Lfunc_begin33        # >> Call Site 4 <<
	.uleb128 .Ltmp675-.Ltmp673              #   Call between .Ltmp673 and .Ltmp675
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin33        # >> Call Site 5 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp679-.Lfunc_begin33        #     jumps to .Ltmp679
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp676-.Lfunc_begin33        # >> Call Site 6 <<
	.uleb128 .Ltmp677-.Ltmp676              #   Call between .Ltmp676 and .Ltmp677
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp677-.Lfunc_begin33        # >> Call Site 7 <<
	.uleb128 .Ltmp678-.Ltmp677              #   Call between .Ltmp677 and .Ltmp678
	.uleb128 .Ltmp679-.Lfunc_begin33        #     jumps to .Ltmp679
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin33        # >> Call Site 8 <<
	.uleb128 .Lfunc_end33-.Ltmp678          #   Call between .Ltmp678 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end33:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE
.LCPI34_0:
	.dword	0x0010000000000000              # double 2.2250738585072014E-308
	.text
	.globl	_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE,@function
_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE: # @_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception34
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s0, $a0
	lu12i.w	$a0, 19
	ori	$s4, $a0, 2176
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 24
.Ltmp680:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp681:                               # EH_LABEL
# %bb.1:
	move	$s3, $a0
	st.d	$a0, $sp, 16
.Ltmp683:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp684:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
.Ltmp686:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp687:                               # EH_LABEL
# %bb.3:                                # %vector.body.preheader
	move	$s1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB34_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	add.d	$a1, $fp, $a0
	vld	$vr1, $a1, 16
	add.d	$a1, $s1, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a1, 16
	bne	$a0, $s4, .LBB34_4
# %bb.5:                                # %.preheader100.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB34_6:                               # %.preheader100
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $s1, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB34_6
# %bb.7:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
	move	$s5, $zero
	.p2align	4, , 16
.LBB34_8:                               # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa0, $s2, $s5
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fldx.d	$fa1, $s3, $s5
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fstx.d	$fa0, $fp, $s5
	addi.d	$s5, $s5, 8
	bne	$s5, $s4, .LBB34_8
# %bb.9:                                # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI34_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI34_0)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1808
	move	$s4, $s1
	move	$s5, $fp
	b	.LBB34_13
.LBB34_10:                              #   in Loop: Header=BB34_13 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB34_11:                              # %_ZSt10fpclassifyd.exit12
                                        #   in Loop: Header=BB34_13 Depth=1
	bne	$a1, $a0, .LBB34_38
.LBB34_12:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB34_13 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	beq	$s2, $s3, .LBB34_23
.LBB34_13:                              # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s5, 0
	fld.d	$fa2, $s4, 0
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB34_12
# %bb.14:                               #   in Loop: Header=BB34_13 Depth=1
	ori	$a0, $zero, 2
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB34_18
# %bb.15:                               #   in Loop: Header=BB34_13 Depth=1
	fcmp.cun.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB34_22
# %bb.16:                               #   in Loop: Header=BB34_13 Depth=1
	fclass.d	$fa4, $fa3
	movfr2gr.d	$a1, $fa4
	andi	$a1, $a1, 68
	sltu	$a1, $zero, $a1
	andi	$a2, $a1, 1
	ori	$a1, $zero, 1
	bnez	$a2, .LBB34_18
# %bb.17:                               #   in Loop: Header=BB34_13 Depth=1
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa0, $fa3
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB34_18:                              # %_ZSt10fpclassifyd.exit
                                        #   in Loop: Header=BB34_13 Depth=1
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB34_11
.LBB34_19:                              #   in Loop: Header=BB34_13 Depth=1
	fcmp.cun.d	$fcc0, $fa2, $fa2
	bcnez	$fcc0, .LBB34_10
# %bb.20:                               #   in Loop: Header=BB34_13 Depth=1
	fclass.d	$fa3, $fa2
	movfr2gr.d	$a0, $fa3
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB34_11
# %bb.21:                               #   in Loop: Header=BB34_13 Depth=1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa2
	movcf2gr	$a0, $fcc0
	addi.d	$a0, $a0, 3
	b	.LBB34_11
.LBB34_22:                              #   in Loop: Header=BB34_13 Depth=1
	move	$a1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB34_11
	b	.LBB34_19
.LBB34_23:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 28
	ld.d	$fp, $s0, 16
.Ltmp704:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp705:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB34_30
# %bb.25:                               # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$fp, .LBB34_30
# %bb.26:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB34_27:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_28 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s3
	.p2align	4, , 16
.LBB34_28:                              #   Parent Loop BB34_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB34_28
# %bb.29:                               # %_ZL14run_fn_autovecIdEvPT_S1_S1_PFS0_S0_E.exit28
                                        #   in Loop: Header=BB34_27 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$fp, $fp, -1
	#MEMBARRIER
	bnez	$fp, .LBB34_27
.LBB34_30:                              # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp706:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp707:                               # EH_LABEL
# %bb.31:                               # %_ZL20benchmark_fn_autovecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB34_33
# %bb.32:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB34_33:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit40
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB34_35
# %bb.34:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB34_35:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit43
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB34_37
# %bb.36:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB34_37:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit46
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB34_38:
.Ltmp689:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp690:                               # EH_LABEL
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	fld.d	$fa0, $s5, 0
.Ltmp691:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp692:                               # EH_LABEL
# %bb.40:                               # %_ZNSolsEd.exit
.Ltmp693:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp694:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	fld.d	$fa0, $s4, 0
.Ltmp695:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp696:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEd.exit18
.Ltmp697:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp698:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
.Ltmp699:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
# %bb.44:                               # %_ZNSolsEj.exit
.Ltmp701:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp702:                               # EH_LABEL
# %bb.45:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB34_46:
.Ltmp688:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB34_54
.LBB34_47:                              # %.thread
.Ltmp685:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB34_55
.LBB34_48:                              # %.thread65
.Ltmp682:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB34_49:
.Ltmp708:                               # EH_LABEL
	ld.d	$fp, $sp, 8
	move	$s0, $a0
	bnez	$fp, .LBB34_54
# %bb.50:
	ld.d	$s3, $sp, 16
	bnez	$s3, .LBB34_55
.LBB34_51:
	ld.d	$s2, $sp, 24
	bnez	$s2, .LBB34_56
.LBB34_52:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB34_53:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit24
.Ltmp703:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB34_54:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB34_51
.LBB34_55:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i33
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB34_52
.LBB34_56:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE, .Lfunc_end34-_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table34:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Lfunc_begin34-.Lfunc_begin34  # >> Call Site 1 <<
	.uleb128 .Ltmp680-.Lfunc_begin34        #   Call between .Lfunc_begin34 and .Ltmp680
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp680-.Lfunc_begin34        # >> Call Site 2 <<
	.uleb128 .Ltmp681-.Ltmp680              #   Call between .Ltmp680 and .Ltmp681
	.uleb128 .Ltmp682-.Lfunc_begin34        #     jumps to .Ltmp682
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp683-.Lfunc_begin34        # >> Call Site 3 <<
	.uleb128 .Ltmp684-.Ltmp683              #   Call between .Ltmp683 and .Ltmp684
	.uleb128 .Ltmp685-.Lfunc_begin34        #     jumps to .Ltmp685
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin34        # >> Call Site 4 <<
	.uleb128 .Ltmp686-.Ltmp684              #   Call between .Ltmp684 and .Ltmp686
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp686-.Lfunc_begin34        # >> Call Site 5 <<
	.uleb128 .Ltmp687-.Ltmp686              #   Call between .Ltmp686 and .Ltmp687
	.uleb128 .Ltmp688-.Lfunc_begin34        #     jumps to .Ltmp688
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp687-.Lfunc_begin34        # >> Call Site 6 <<
	.uleb128 .Ltmp704-.Ltmp687              #   Call between .Ltmp687 and .Ltmp704
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp704-.Lfunc_begin34        # >> Call Site 7 <<
	.uleb128 .Ltmp705-.Ltmp704              #   Call between .Ltmp704 and .Ltmp705
	.uleb128 .Ltmp708-.Lfunc_begin34        #     jumps to .Ltmp708
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin34        # >> Call Site 8 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp706-.Lfunc_begin34        # >> Call Site 9 <<
	.uleb128 .Ltmp707-.Ltmp706              #   Call between .Ltmp706 and .Ltmp707
	.uleb128 .Ltmp708-.Lfunc_begin34        #     jumps to .Ltmp708
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp707-.Lfunc_begin34        # >> Call Site 10 <<
	.uleb128 .Ltmp689-.Ltmp707              #   Call between .Ltmp707 and .Ltmp689
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp689-.Lfunc_begin34        # >> Call Site 11 <<
	.uleb128 .Ltmp702-.Ltmp689              #   Call between .Ltmp689 and .Ltmp702
	.uleb128 .Ltmp703-.Lfunc_begin34        #     jumps to .Ltmp703
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin34        # >> Call Site 12 <<
	.uleb128 .Lfunc_end34-.Ltmp702          #   Call between .Ltmp702 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end34:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE # -- Begin function _Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE
	.p2align	5
	.type	_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE,@function
_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE: # @_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE
.Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception35
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$s2, $a0, 2176
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 24
.Ltmp709:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp710:                               # EH_LABEL
# %bb.1:
	move	$s1, $a0
	st.d	$a0, $sp, 16
.Ltmp712:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp713:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_S1_S1_)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp715:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp716:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB35_9
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB35_9
# %bb.5:
	lu12i.w	$a0, 2
	ori	$s1, $a0, 1808
	addi.d	$s2, $sp, 24
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB35_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_7 Depth 2
	ld.d	$s5, $sp, 24
	ld.d	$s6, $sp, 16
	ld.d	$s7, $sp, 8
	move	$s8, $s1
	.p2align	4, , 16
.LBB35_7:                               #   Parent Loop BB35_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s5, 0
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s6, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s7, 0
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB35_7
# %bb.8:                                # %_ZL12run_fn_novecIdEvPT_S1_S1_PFS0_S0_E.exit
                                        #   in Loop: Header=BB35_6 Depth=1
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB35_6
.LBB35_9:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp717:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp718:                               # EH_LABEL
# %bb.10:                               # %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB35_12
# %bb.11:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB35_12:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit16
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB35_14
# %bb.13:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB35_14:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit19
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB35_16
# %bb.15:                               # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i21
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB35_16:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit22
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB35_17:                              # %.thread
.Ltmp714:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB35_24
.LBB35_18:                              # %.thread34
.Ltmp711:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB35_19:
.Ltmp719:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	bnez	$a1, .LBB35_23
# %bb.20:
	ld.d	$s1, $sp, 16
	bnez	$s1, .LBB35_24
.LBB35_21:
	ld.d	$s0, $sp, 24
	bnez	$s0, .LBB35_25
.LBB35_22:                              # %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB35_23:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB35_21
.LBB35_24:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB35_22
.LBB35_25:                              # %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE, .Lfunc_end35-_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table35:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Lfunc_begin35-.Lfunc_begin35  # >> Call Site 1 <<
	.uleb128 .Ltmp709-.Lfunc_begin35        #   Call between .Lfunc_begin35 and .Ltmp709
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp709-.Lfunc_begin35        # >> Call Site 2 <<
	.uleb128 .Ltmp710-.Ltmp709              #   Call between .Ltmp709 and .Ltmp710
	.uleb128 .Ltmp711-.Lfunc_begin35        #     jumps to .Ltmp711
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp712-.Lfunc_begin35        # >> Call Site 3 <<
	.uleb128 .Ltmp713-.Ltmp712              #   Call between .Ltmp712 and .Ltmp713
	.uleb128 .Ltmp714-.Lfunc_begin35        #     jumps to .Ltmp714
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp713-.Lfunc_begin35        # >> Call Site 4 <<
	.uleb128 .Ltmp715-.Ltmp713              #   Call between .Ltmp713 and .Ltmp715
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp715-.Lfunc_begin35        # >> Call Site 5 <<
	.uleb128 .Ltmp716-.Ltmp715              #   Call between .Ltmp715 and .Ltmp716
	.uleb128 .Ltmp719-.Lfunc_begin35        #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp716-.Lfunc_begin35        # >> Call Site 6 <<
	.uleb128 .Ltmp717-.Ltmp716              #   Call between .Ltmp716 and .Ltmp717
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp717-.Lfunc_begin35        # >> Call Site 7 <<
	.uleb128 .Ltmp718-.Ltmp717              #   Call between .Ltmp717 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin35        #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp718-.Lfunc_begin35        # >> Call Site 8 <<
	.uleb128 .Lfunc_end35-.Ltmp718          #   Call between .Ltmp718 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end35:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZL9init_dataIfEvPT_S1_S1_
.LCPI36_0:
	.word	0x4f800000                      # float 4.2949673E+9
.LCPI36_1:
	.word	0xc2c80000                      # float -100
.LCPI36_2:
	.word	0x43480000                      # float 200
	.text
	.p2align	5
	.type	_ZL9init_dataIfEvPT_S1_S1_,@function
_ZL9init_dataIfEvPT_S1_S1_:             # @_ZL9init_dataIfEvPT_S1_S1_
# %bb.0:
	addi.d	$sp, $sp, -2032
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
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1216
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a2, $a0, 57
	st.d	$a2, $sp, 176
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 176
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB36_1
# %bb.2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a1, $a0, 1025
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $a1
	lu52i.d	$a1, $zero, 1024
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__fixunstfdi)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 624
	move	$t1, $zero
	addi.d	$a1, $a0, 23
	div.du	$a0, $a1, $a0
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$t2, $a0, $a1
	movgr2fr.w	$fs0, $zero
	addi.d	$s5, $sp, 176
	lu12i.w	$a0, -524288
	vreplgr2vr.d	$vr8, $a0
	lu12i.w	$a0, 524287
	ori	$s6, $a0, 4094
	vreplgr2vr.d	$vr9, $s6
	ori	$s7, $zero, 3176
	ori	$s8, $zero, 3192
	vrepli.d	$vr10, 1
	vrepli.b	$vr11, -1
	lu12i.w	$a0, -421749
	ori	$fp, $a0, 223
	lu32i.d	$fp, 0
	vreplgr2vr.d	$vr12, $fp
	ori	$s0, $zero, 1792
	lu12i.w	$t3, -1
	ori	$t4, $t3, 928
	lu12i.w	$a0, 1
	ori	$s2, $a0, 896
	ori	$s1, $zero, 3168
	ori	$s3, $a0, 888
	lu12i.w	$a0, -404795
	ori	$t5, $a0, 1664
	lu32i.d	$t5, 0
	lu12i.w	$t6, -66464
	lu32i.d	$t6, 0
	vldi	$vr13, -1168
	lu12i.w	$a0, 2
	ori	$t7, $a0, 1808
	ori	$s4, $zero, 624
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB36_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_5 Depth 2
                                        #       Child Loop BB36_7 Depth 3
                                        #       Child Loop BB36_9 Depth 3
                                        #     Child Loop BB36_14 Depth 2
                                        #       Child Loop BB36_16 Depth 3
                                        #       Child Loop BB36_18 Depth 3
                                        #     Child Loop BB36_23 Depth 2
                                        #       Child Loop BB36_25 Depth 3
                                        #       Child Loop BB36_27 Depth 3
	vldi	$vr0, -1168
	move	$a0, $t2
	fmov.s	$fa1, $fs0
	b	.LBB36_5
	.p2align	4, , 16
.LBB36_4:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
                                        #   in Loop: Header=BB36_5 Depth=2
	slli.d	$a1, $s4, 3
	addi.d	$s4, $s4, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	ldx.d	$a1, $a1, $s5
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $t5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $t6
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 1
	andi	$a3, $a1, 1
	or	$a2, $a3, $a2
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	fadd.s	$fa2, $fa2, $fa2
	slti	$a2, $a1, 0
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	movgr2cf	$fcc0, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI36_0)
	fld.s	$fs1, $a1, %pc_lo12(.LCPI36_0)
	fsel	$fa2, $fa3, $fa2, $fcc0
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.s	$fa0, $fa0, $fs1
	beqz	$a0, .LBB36_11
.LBB36_5:                               # %select.unfold.i.i.i.i
                                        #   Parent Loop BB36_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB36_7 Depth 3
                                        #       Child Loop BB36_9 Depth 3
	bltu	$s4, $t0, .LBB36_4
# %bb.6:                                # %vector.ph142
                                        #   in Loop: Header=BB36_5 Depth=2
	ld.d	$a2, $sp, 176
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB36_7:                               # %vector.body143
                                        #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vld	$vr3, $a2, 8
	vori.b	$vr4, $vr2, 0
	vld	$vr2, $a2, 24
	vshuf4i.d	$vr4, $vr3, 9
	vand.v	$vr4, $vr4, $vr8
	vand.v	$vr5, $vr3, $vr9
	vand.v	$vr6, $vr3, $vr10
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr8
	vand.v	$vr7, $vr2, $vr9
	vor.v	$vr4, $vr5, $vr4
	vor.v	$vr3, $vr7, $vr3
	vldx	$vr5, $a2, $s7
	vldx	$vr7, $a2, $s8
	vsrli.d	$vr4, $vr4, 1
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr3, $vr3, $vr7
	vand.v	$vr5, $vr2, $vr10
	vseqi.d	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr11
	vand.v	$vr6, $vr6, $vr12
	vseqi.d	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr5, $vr12
	vxor.v	$vr4, $vr4, $vr6
	vxor.v	$vr3, $vr3, $vr5
	vstx	$vr4, $a1, $s5
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s0, .LBB36_7
# %bb.8:                                # %vector.ph131
                                        #   in Loop: Header=BB36_5 Depth=2
	ld.d	$a1, $sp, 1976
	vpickve2gr.d	$a2, $vr2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1048
	add.d	$a3, $sp, $a3
	ldptr.d	$a3, $a3, 0
	and	$a4, $a1, $s6
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $fp
	ld.d	$a4, $sp, 1984
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1968
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1056
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	and	$a3, $a4, $s6
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	ld.d	$a3, $sp, 1992
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1976
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1064
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	and	$a2, $a3, $s6
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1984
	vinsgr2vr.d	$vr2, $a3, 1
	move	$a1, $t4
	.p2align	4, , 16
.LBB36_9:                               # %vector.body132
                                        #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vldx	$vr3, $a2, $s2
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $s1
	vand.v	$vr5, $vr3, $vr9
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr10
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr11
	vand.v	$vr4, $vr4, $vr12
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s3
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB36_9
# %bb.10:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB36_5 Depth=2
	ld.d	$a1, $sp, 176
	move	$s4, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3344
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $fp
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB36_4
	.p2align	4, , 16
.LBB36_11:                              #   in Loop: Header=BB36_3 Depth=1
	fdiv.s	$fa0, $fa1, $fa0
	fcmp.cult.s	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB36_31
.LBB36_12:                              # %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit
                                        #   in Loop: Header=BB36_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI36_1)
	fld.s	$fs2, $a0, %pc_lo12(.LCPI36_1)
	pcalau12i	$a0, %pc_hi20(.LCPI36_2)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI36_2)
	fmadd.s	$fa0, $fa0, $fs3, $fs2
	slli.d	$t8, $t1, 2
	fstx.s	$fa0, $a7, $t8
	vldi	$vr0, -1168
	move	$a0, $t2
	fmov.s	$fa1, $fs0
	b	.LBB36_14
	.p2align	4, , 16
.LBB36_13:                              # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37
                                        #   in Loop: Header=BB36_14 Depth=2
	slli.d	$a1, $s4, 3
	addi.d	$s4, $s4, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	ldx.d	$a1, $a1, $s5
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $t5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $t6
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 1
	andi	$a3, $a1, 1
	or	$a2, $a3, $a2
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	fadd.s	$fa2, $fa2, $fa2
	slti	$a2, $a1, 0
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	movgr2cf	$fcc0, $a2
	fsel	$fa2, $fa3, $fa2, $fcc0
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.s	$fa0, $fa0, $fs1
	beqz	$a0, .LBB36_20
.LBB36_14:                              # %select.unfold.i.i.i.i8
                                        #   Parent Loop BB36_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB36_16 Depth 3
                                        #       Child Loop BB36_18 Depth 3
	bltu	$s4, $t0, .LBB36_13
# %bb.15:                               # %vector.ph116
                                        #   in Loop: Header=BB36_14 Depth=2
	ld.d	$a2, $sp, 176
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB36_16:                              # %vector.body117
                                        #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vld	$vr3, $a2, 8
	vori.b	$vr4, $vr2, 0
	vld	$vr2, $a2, 24
	vshuf4i.d	$vr4, $vr3, 9
	vand.v	$vr4, $vr4, $vr8
	vand.v	$vr5, $vr3, $vr9
	vand.v	$vr6, $vr3, $vr10
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr8
	vand.v	$vr7, $vr2, $vr9
	vor.v	$vr4, $vr5, $vr4
	vor.v	$vr3, $vr7, $vr3
	vldx	$vr5, $a2, $s7
	vldx	$vr7, $a2, $s8
	vsrli.d	$vr4, $vr4, 1
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr3, $vr3, $vr7
	vand.v	$vr5, $vr2, $vr10
	vseqi.d	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr11
	vand.v	$vr6, $vr6, $vr12
	vseqi.d	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr5, $vr12
	vxor.v	$vr4, $vr4, $vr6
	vxor.v	$vr3, $vr3, $vr5
	vstx	$vr4, $a1, $s5
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s0, .LBB36_16
# %bb.17:                               # %vector.ph105
                                        #   in Loop: Header=BB36_14 Depth=2
	ld.d	$a1, $sp, 1976
	vpickve2gr.d	$a2, $vr2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1048
	add.d	$a3, $sp, $a3
	ldptr.d	$a3, $a3, 0
	and	$a4, $a1, $s6
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $fp
	ld.d	$a4, $sp, 1984
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1968
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1056
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	and	$a3, $a4, $s6
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	ld.d	$a3, $sp, 1992
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1976
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1064
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	and	$a2, $a3, $s6
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1984
	vinsgr2vr.d	$vr2, $a3, 1
	ori	$a1, $t3, 928
	.p2align	4, , 16
.LBB36_18:                              # %vector.body106
                                        #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vldx	$vr3, $a2, $s2
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $s1
	vand.v	$vr5, $vr3, $vr9
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr10
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr11
	vand.v	$vr4, $vr4, $vr12
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s3
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB36_18
# %bb.19:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35
                                        #   in Loop: Header=BB36_14 Depth=2
	ld.d	$a1, $sp, 176
	move	$s4, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3344
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $fp
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB36_13
	.p2align	4, , 16
.LBB36_20:                              #   in Loop: Header=BB36_3 Depth=1
	fdiv.s	$fa0, $fa1, $fa0
	fcmp.cult.s	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB36_32
.LBB36_21:                              # %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14
                                        #   in Loop: Header=BB36_3 Depth=1
	fmadd.s	$fa0, $fa0, $fs3, $fs2
	fstx.s	$fa0, $a6, $t8
	vldi	$vr0, -1168
	move	$a0, $t2
	fmov.s	$fa1, $fs0
	b	.LBB36_23
	.p2align	4, , 16
.LBB36_22:                              # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51
                                        #   in Loop: Header=BB36_23 Depth=2
	slli.d	$a1, $s4, 3
	addi.d	$s4, $s4, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	ldx.d	$a1, $a1, $s5
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $t5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $t6
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 1
	andi	$a3, $a1, 1
	or	$a2, $a3, $a2
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	fadd.s	$fa2, $fa2, $fa2
	slti	$a2, $a1, 0
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	movgr2cf	$fcc0, $a2
	fsel	$fa2, $fa3, $fa2, $fcc0
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.s	$fa0, $fa0, $fs1
	beqz	$a0, .LBB36_29
.LBB36_23:                              # %select.unfold.i.i.i.i16
                                        #   Parent Loop BB36_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB36_25 Depth 3
                                        #       Child Loop BB36_27 Depth 3
	bltu	$s4, $t0, .LBB36_22
# %bb.24:                               # %vector.ph93
                                        #   in Loop: Header=BB36_23 Depth=2
	ld.d	$a2, $sp, 176
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB36_25:                              # %vector.body94
                                        #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vld	$vr3, $a2, 8
	vori.b	$vr4, $vr2, 0
	vld	$vr2, $a2, 24
	vshuf4i.d	$vr4, $vr3, 9
	vand.v	$vr4, $vr4, $vr8
	vand.v	$vr5, $vr3, $vr9
	vand.v	$vr6, $vr3, $vr10
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr8
	vand.v	$vr7, $vr2, $vr9
	vor.v	$vr4, $vr5, $vr4
	vor.v	$vr3, $vr7, $vr3
	vldx	$vr5, $a2, $s7
	vldx	$vr7, $a2, $s8
	vsrli.d	$vr4, $vr4, 1
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr3, $vr3, $vr7
	vand.v	$vr5, $vr2, $vr10
	vseqi.d	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr11
	vand.v	$vr6, $vr6, $vr12
	vseqi.d	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr5, $vr12
	vxor.v	$vr4, $vr4, $vr6
	vxor.v	$vr3, $vr3, $vr5
	vstx	$vr4, $a1, $s5
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s0, .LBB36_25
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB36_23 Depth=2
	ld.d	$a1, $sp, 1976
	vpickve2gr.d	$a2, $vr2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1048
	add.d	$a3, $sp, $a3
	ldptr.d	$a3, $a3, 0
	and	$a4, $a1, $s6
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $fp
	ld.d	$a4, $sp, 1984
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1968
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1056
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	and	$a3, $a4, $s6
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	ld.d	$a3, $sp, 1992
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1976
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1064
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	and	$a2, $a3, $s6
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1984
	vinsgr2vr.d	$vr2, $a3, 1
	ori	$a1, $t3, 928
	.p2align	4, , 16
.LBB36_27:                              # %vector.body
                                        #   Parent Loop BB36_3 Depth=1
                                        #     Parent Loop BB36_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vldx	$vr3, $a2, $s2
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $s1
	vand.v	$vr5, $vr3, $vr9
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr10
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr11
	vand.v	$vr4, $vr4, $vr12
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s3
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB36_27
# %bb.28:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49
                                        #   in Loop: Header=BB36_23 Depth=2
	ld.d	$a1, $sp, 176
	move	$s4, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3344
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $fp
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB36_22
	.p2align	4, , 16
.LBB36_29:                              #   in Loop: Header=BB36_3 Depth=1
	fdiv.s	$fa0, $fa1, $fa0
	fcmp.cult.s	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB36_33
# %bb.30:                               # %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22
                                        #   in Loop: Header=BB36_3 Depth=1
	fmadd.s	$fa0, $fa0, $fs3, $fs2
	addi.d	$t1, $t1, 1
	fstx.s	$fa0, $a5, $t8
	bne	$t1, $t7, .LBB36_3
	b	.LBB36_34
.LBB36_31:                              #   in Loop: Header=BB36_3 Depth=1
	movgr2fr.w	$fa1, $zero
	vldi	$vr0, -1168
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	vst	$vr9, $sp, 96                   # 16-byte Folded Spill
	vst	$vr10, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	vst	$vr12, $sp, 48                  # 16-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafterf)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	vldi	$vr13, -1168
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$t3, -1
	vld	$vr12, $sp, 48                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vld	$vr10, $sp, 80                  # 16-byte Folded Reload
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ori	$t0, $zero, 624
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB36_12
.LBB36_32:                              #   in Loop: Header=BB36_3 Depth=1
	movgr2fr.w	$fa1, $zero
	vldi	$vr0, -1168
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	vst	$vr9, $sp, 96                   # 16-byte Folded Spill
	vst	$vr10, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	vst	$vr12, $sp, 48                  # 16-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	st.d	$t8, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafterf)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	vldi	$vr13, -1168
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$t3, -1
	vld	$vr12, $sp, 48                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vld	$vr10, $sp, 80                  # 16-byte Folded Reload
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ori	$t0, $zero, 624
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB36_21
.LBB36_33:                              #   in Loop: Header=BB36_3 Depth=1
	movgr2fr.w	$fa1, $zero
	vldi	$vr0, -1168
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	vst	$vr9, $sp, 96                   # 16-byte Folded Spill
	vst	$vr10, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	vst	$vr12, $sp, 48                  # 16-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	st.d	$t8, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafterf)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	vldi	$vr13, -1168
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$t3, -1
	vld	$vr12, $sp, 48                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vld	$vr10, $sp, 80                  # 16-byte Folded Reload
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ori	$t0, $zero, 624
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	fmadd.s	$fa0, $fa0, $fs3, $fs2
	addi.d	$t1, $t1, 1
	fstx.s	$fa0, $a5, $t8
	bne	$t1, $t7, .LBB36_3
.LBB36_34:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1232
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
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
.Lfunc_end36:
	.size	_ZL9init_dataIfEvPT_S1_S1_, .Lfunc_end36-_ZL9init_dataIfEvPT_S1_S1_
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL9init_dataIdEvPT_S1_S1_
.LCPI37_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI37_1:
	.dword	0x41f0000000000000              # double 4294967296
.LCPI37_2:
	.dword	0xc059000000000000              # double -100
.LCPI37_3:
	.dword	0x4069000000000000              # double 200
	.text
	.p2align	5
	.type	_ZL9init_dataIdEvPT_S1_S1_,@function
_ZL9init_dataIdEvPT_S1_S1_:             # @_ZL9init_dataIdEvPT_S1_S1_
# %bb.0:
	addi.d	$sp, $sp, -2032
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
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1232
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a2, $a0, 57
	st.d	$a2, $sp, 184
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 184
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB37_1
# %bb.2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1080
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a1, $a0, 1025
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $a1
	lu52i.d	$a1, $zero, 1024
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__fixunstfdi)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 624
	move	$t1, $zero
	addi.d	$a1, $a0, 52
	div.du	$a0, $a1, $a0
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$t2, $a0, $a1
	movgr2fr.d	$fs0, $zero
	addi.d	$s5, $sp, 184
	lu12i.w	$a0, -524288
	vreplgr2vr.d	$vr8, $a0
	lu12i.w	$a0, 524287
	ori	$s6, $a0, 4094
	vreplgr2vr.d	$vr9, $s6
	ori	$s7, $zero, 3176
	ori	$s8, $zero, 3192
	vrepli.d	$vr10, 1
	vrepli.b	$vr11, -1
	lu12i.w	$a0, -421749
	ori	$fp, $a0, 223
	lu32i.d	$fp, 0
	vreplgr2vr.d	$vr12, $fp
	ori	$s0, $zero, 1792
	lu12i.w	$t3, -1
	ori	$t4, $t3, 928
	lu12i.w	$a0, 1
	ori	$s2, $a0, 896
	ori	$s1, $zero, 3168
	ori	$s3, $a0, 888
	lu12i.w	$a0, -404795
	ori	$t5, $a0, 1664
	lu32i.d	$t5, 0
	lu12i.w	$t6, -66464
	lu32i.d	$t6, 0
	lu52i.d	$t7, $zero, 1107
	lu12i.w	$t8, 275200
	vldi	$vr13, -912
	lu12i.w	$a0, 2
	ori	$ra, $a0, 1808
	ori	$s4, $zero, 624
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB37_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_5 Depth 2
                                        #       Child Loop BB37_7 Depth 3
                                        #       Child Loop BB37_9 Depth 3
                                        #     Child Loop BB37_14 Depth 2
                                        #       Child Loop BB37_16 Depth 3
                                        #       Child Loop BB37_18 Depth 3
                                        #     Child Loop BB37_23 Depth 2
                                        #       Child Loop BB37_25 Depth 3
                                        #       Child Loop BB37_27 Depth 3
	vldi	$vr0, -912
	move	$a0, $t2
	fmov.d	$fa1, $fs0
	b	.LBB37_5
	.p2align	4, , 16
.LBB37_4:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
                                        #   in Loop: Header=BB37_5 Depth=2
	slli.d	$a1, $s4, 3
	addi.d	$s4, $s4, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1080
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	ldx.d	$a1, $a1, $s5
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $t5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $t6
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(.LCPI37_0)
	fld.d	$fs1, $a2, %pc_lo12(.LCPI37_0)
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $t7
	movgr2fr.d	$fa2, $a2
	fsub.d	$fa2, $fa2, $fs1
	bstrins.d	$a1, $t8, 63, 32
	movgr2fr.d	$fa3, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI37_1)
	fld.d	$fs2, $a1, %pc_lo12(.LCPI37_1)
	fadd.d	$fa2, $fa3, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.d	$fa0, $fa0, $fs2
	beqz	$a0, .LBB37_11
.LBB37_5:                               # %select.unfold.i.i.i.i
                                        #   Parent Loop BB37_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_7 Depth 3
                                        #       Child Loop BB37_9 Depth 3
	bltu	$s4, $t0, .LBB37_4
# %bb.6:                                # %vector.ph142
                                        #   in Loop: Header=BB37_5 Depth=2
	ld.d	$a2, $sp, 184
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB37_7:                               # %vector.body143
                                        #   Parent Loop BB37_3 Depth=1
                                        #     Parent Loop BB37_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vld	$vr3, $a2, 8
	vori.b	$vr4, $vr2, 0
	vld	$vr2, $a2, 24
	vshuf4i.d	$vr4, $vr3, 9
	vand.v	$vr4, $vr4, $vr8
	vand.v	$vr5, $vr3, $vr9
	vand.v	$vr6, $vr3, $vr10
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr8
	vand.v	$vr7, $vr2, $vr9
	vor.v	$vr4, $vr5, $vr4
	vor.v	$vr3, $vr7, $vr3
	vldx	$vr5, $a2, $s7
	vldx	$vr7, $a2, $s8
	vsrli.d	$vr4, $vr4, 1
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr3, $vr3, $vr7
	vand.v	$vr5, $vr2, $vr10
	vseqi.d	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr11
	vand.v	$vr6, $vr6, $vr12
	vseqi.d	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr5, $vr12
	vxor.v	$vr4, $vr4, $vr6
	vxor.v	$vr3, $vr3, $vr5
	vstx	$vr4, $a1, $s5
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s0, .LBB37_7
# %bb.8:                                # %vector.ph131
                                        #   in Loop: Header=BB37_5 Depth=2
	ld.d	$a1, $sp, 1984
	vpickve2gr.d	$a2, $vr2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1056
	add.d	$a3, $sp, $a3
	ldptr.d	$a3, $a3, 0
	and	$a4, $a1, $s6
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $fp
	ld.d	$a4, $sp, 1992
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1976
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	and	$a3, $a4, $s6
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	ld.d	$a3, $sp, 2000
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1984
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	and	$a2, $a3, $s6
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1992
	vinsgr2vr.d	$vr2, $a3, 1
	move	$a1, $t4
	.p2align	4, , 16
.LBB37_9:                               # %vector.body132
                                        #   Parent Loop BB37_3 Depth=1
                                        #     Parent Loop BB37_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vldx	$vr3, $a2, $s2
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $s1
	vand.v	$vr5, $vr3, $vr9
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr10
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr11
	vand.v	$vr4, $vr4, $vr12
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s3
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB37_9
# %bb.10:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB37_5 Depth=2
	ld.d	$a1, $sp, 184
	move	$s4, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3352
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $fp
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB37_4
	.p2align	4, , 16
.LBB37_11:                              #   in Loop: Header=BB37_3 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB37_31
.LBB37_12:                              # %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
                                        #   in Loop: Header=BB37_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI37_2)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI37_2)
	pcalau12i	$a0, %pc_hi20(.LCPI37_3)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI37_3)
	fmadd.d	$fa0, $fa0, $fs4, $fs3
	slli.d	$a0, $t1, 3
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	fstx.d	$fa0, $a7, $a0
	vldi	$vr0, -912
	move	$a0, $t2
	fmov.d	$fa1, $fs0
	b	.LBB37_14
	.p2align	4, , 16
.LBB37_13:                              # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37
                                        #   in Loop: Header=BB37_14 Depth=2
	slli.d	$a1, $s4, 3
	addi.d	$s4, $s4, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1080
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	ldx.d	$a1, $a1, $s5
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $t5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $t6
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $t7
	movgr2fr.d	$fa2, $a2
	fsub.d	$fa2, $fa2, $fs1
	bstrins.d	$a1, $t8, 63, 32
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa2, $fa3, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.d	$fa0, $fa0, $fs2
	beqz	$a0, .LBB37_20
.LBB37_14:                              # %select.unfold.i.i.i.i8
                                        #   Parent Loop BB37_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_16 Depth 3
                                        #       Child Loop BB37_18 Depth 3
	bltu	$s4, $t0, .LBB37_13
# %bb.15:                               # %vector.ph116
                                        #   in Loop: Header=BB37_14 Depth=2
	ld.d	$a2, $sp, 184
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB37_16:                              # %vector.body117
                                        #   Parent Loop BB37_3 Depth=1
                                        #     Parent Loop BB37_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vld	$vr3, $a2, 8
	vori.b	$vr4, $vr2, 0
	vld	$vr2, $a2, 24
	vshuf4i.d	$vr4, $vr3, 9
	vand.v	$vr4, $vr4, $vr8
	vand.v	$vr5, $vr3, $vr9
	vand.v	$vr6, $vr3, $vr10
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr8
	vand.v	$vr7, $vr2, $vr9
	vor.v	$vr4, $vr5, $vr4
	vor.v	$vr3, $vr7, $vr3
	vldx	$vr5, $a2, $s7
	vldx	$vr7, $a2, $s8
	vsrli.d	$vr4, $vr4, 1
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr3, $vr3, $vr7
	vand.v	$vr5, $vr2, $vr10
	vseqi.d	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr11
	vand.v	$vr6, $vr6, $vr12
	vseqi.d	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr5, $vr12
	vxor.v	$vr4, $vr4, $vr6
	vxor.v	$vr3, $vr3, $vr5
	vstx	$vr4, $a1, $s5
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s0, .LBB37_16
# %bb.17:                               # %vector.ph105
                                        #   in Loop: Header=BB37_14 Depth=2
	ld.d	$a1, $sp, 1984
	vpickve2gr.d	$a2, $vr2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1056
	add.d	$a3, $sp, $a3
	ldptr.d	$a3, $a3, 0
	and	$a4, $a1, $s6
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $fp
	ld.d	$a4, $sp, 1992
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1976
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	and	$a3, $a4, $s6
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	ld.d	$a3, $sp, 2000
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1984
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	and	$a2, $a3, $s6
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1992
	vinsgr2vr.d	$vr2, $a3, 1
	ori	$a1, $t3, 928
	.p2align	4, , 16
.LBB37_18:                              # %vector.body106
                                        #   Parent Loop BB37_3 Depth=1
                                        #     Parent Loop BB37_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vldx	$vr3, $a2, $s2
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $s1
	vand.v	$vr5, $vr3, $vr9
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr10
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr11
	vand.v	$vr4, $vr4, $vr12
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s3
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB37_18
# %bb.19:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35
                                        #   in Loop: Header=BB37_14 Depth=2
	ld.d	$a1, $sp, 184
	move	$s4, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3352
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $fp
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB37_13
	.p2align	4, , 16
.LBB37_20:                              #   in Loop: Header=BB37_3 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB37_32
.LBB37_21:                              # %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14
                                        #   in Loop: Header=BB37_3 Depth=1
	fmadd.d	$fa0, $fa0, $fs4, $fs3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fstx.d	$fa0, $a6, $a0
	vldi	$vr0, -912
	move	$a0, $t2
	fmov.d	$fa1, $fs0
	b	.LBB37_23
	.p2align	4, , 16
.LBB37_22:                              # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51
                                        #   in Loop: Header=BB37_23 Depth=2
	slli.d	$a1, $s4, 3
	addi.d	$s4, $s4, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1080
	add.d	$a2, $sp, $a2
	stptr.d	$s4, $a2, 0
	ldx.d	$a1, $a1, $s5
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $t5
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $t6
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $t7
	movgr2fr.d	$fa2, $a2
	fsub.d	$fa2, $fa2, $fs1
	bstrins.d	$a1, $t8, 63, 32
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa2, $fa3, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.d	$fa0, $fa0, $fs2
	beqz	$a0, .LBB37_29
.LBB37_23:                              # %select.unfold.i.i.i.i16
                                        #   Parent Loop BB37_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_25 Depth 3
                                        #       Child Loop BB37_27 Depth 3
	bltu	$s4, $t0, .LBB37_22
# %bb.24:                               # %vector.ph93
                                        #   in Loop: Header=BB37_23 Depth=2
	ld.d	$a2, $sp, 184
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB37_25:                              # %vector.body94
                                        #   Parent Loop BB37_3 Depth=1
                                        #     Parent Loop BB37_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vld	$vr3, $a2, 8
	vori.b	$vr4, $vr2, 0
	vld	$vr2, $a2, 24
	vshuf4i.d	$vr4, $vr3, 9
	vand.v	$vr4, $vr4, $vr8
	vand.v	$vr5, $vr3, $vr9
	vand.v	$vr6, $vr3, $vr10
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr8
	vand.v	$vr7, $vr2, $vr9
	vor.v	$vr4, $vr5, $vr4
	vor.v	$vr3, $vr7, $vr3
	vldx	$vr5, $a2, $s7
	vldx	$vr7, $a2, $s8
	vsrli.d	$vr4, $vr4, 1
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr3, $vr3, $vr7
	vand.v	$vr5, $vr2, $vr10
	vseqi.d	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr11
	vand.v	$vr6, $vr6, $vr12
	vseqi.d	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr5, $vr12
	vxor.v	$vr4, $vr4, $vr6
	vxor.v	$vr3, $vr3, $vr5
	vstx	$vr4, $a1, $s5
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s0, .LBB37_25
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB37_23 Depth=2
	ld.d	$a1, $sp, 1984
	vpickve2gr.d	$a2, $vr2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1056
	add.d	$a3, $sp, $a3
	ldptr.d	$a3, $a3, 0
	and	$a4, $a1, $s6
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $fp
	ld.d	$a4, $sp, 1992
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1976
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	and	$a3, $a4, $s6
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	ld.d	$a3, $sp, 2000
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1984
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	and	$a2, $a3, $s6
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $fp
	xor	$a1, $a1, $a2
	st.d	$a1, $sp, 1992
	vinsgr2vr.d	$vr2, $a3, 1
	ori	$a1, $t3, 928
	.p2align	4, , 16
.LBB37_27:                              # %vector.body
                                        #   Parent Loop BB37_3 Depth=1
                                        #     Parent Loop BB37_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $a1
	vldx	$vr3, $a2, $s2
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $s1
	vand.v	$vr5, $vr3, $vr9
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr10
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr11
	vand.v	$vr4, $vr4, $vr12
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s3
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB37_27
# %bb.28:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49
                                        #   in Loop: Header=BB37_23 Depth=2
	ld.d	$a1, $sp, 184
	move	$s4, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3352
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $fp
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB37_22
	.p2align	4, , 16
.LBB37_29:                              #   in Loop: Header=BB37_3 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB37_33
.LBB37_30:                              # %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22
                                        #   in Loop: Header=BB37_3 Depth=1
	fmadd.d	$fa0, $fa0, $fs4, $fs3
	addi.d	$t1, $t1, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $a0
	bne	$t1, $ra, .LBB37_3
	b	.LBB37_34
.LBB37_31:                              #   in Loop: Header=BB37_3 Depth=1
	movgr2fr.d	$fa1, $zero
	vldi	$vr0, -912
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	vst	$vr9, $sp, 96                   # 16-byte Folded Spill
	vst	$vr10, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	vst	$vr12, $sp, 48                  # 16-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafter)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	vldi	$vr13, -912
	lu12i.w	$t8, 275200
	lu52i.d	$t7, $zero, 1107
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$t3, -1
	vld	$vr12, $sp, 48                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vld	$vr10, $sp, 80                  # 16-byte Folded Reload
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ori	$t0, $zero, 624
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB37_12
.LBB37_32:                              #   in Loop: Header=BB37_3 Depth=1
	movgr2fr.d	$fa1, $zero
	vldi	$vr0, -912
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	vst	$vr9, $sp, 96                   # 16-byte Folded Spill
	vst	$vr10, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	vst	$vr12, $sp, 48                  # 16-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafter)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	vldi	$vr13, -912
	lu12i.w	$t8, 275200
	lu52i.d	$t7, $zero, 1107
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$t3, -1
	vld	$vr12, $sp, 48                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vld	$vr10, $sp, 80                  # 16-byte Folded Reload
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ori	$t0, $zero, 624
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB37_21
.LBB37_33:                              #   in Loop: Header=BB37_3 Depth=1
	movgr2fr.d	$fa1, $zero
	vldi	$vr0, -912
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	vst	$vr9, $sp, 96                   # 16-byte Folded Spill
	vst	$vr10, $sp, 80                  # 16-byte Folded Spill
	vst	$vr11, $sp, 64                  # 16-byte Folded Spill
	vst	$vr12, $sp, 48                  # 16-byte Folded Spill
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafter)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	vldi	$vr13, -912
	lu12i.w	$t8, 275200
	lu52i.d	$t7, $zero, 1107
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$t3, -1
	vld	$vr12, $sp, 48                  # 16-byte Folded Reload
	vld	$vr11, $sp, 64                  # 16-byte Folded Reload
	vld	$vr10, $sp, 80                  # 16-byte Folded Reload
	vld	$vr9, $sp, 96                   # 16-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ori	$t0, $zero, 624
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB37_30
.LBB37_34:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1248
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
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
.Lfunc_end37:
	.size	_ZL9init_dataIdEvPT_S1_S1_, .Lfunc_end37-_ZL9init_dataIdEvPT_S1_S1_
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_MathFunctions.cpp
	.type	_GLOBAL__sub_I_MathFunctions.cpp,@function
_GLOBAL__sub_I_MathFunctions.cpp:       # @_GLOBAL__sub_I_MathFunctions.cpp
.Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception36
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
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp720:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp723:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp725:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp726:                               # EH_LABEL
# %bb.3:
.Ltmp727:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp728:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_6:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp730:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp731:                               # EH_LABEL
# %bb.7:                                # %.noexc.i4
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp733:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp734:                               # EH_LABEL
# %bb.8:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp735:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp736:                               # EH_LABEL
# %bb.9:
.Ltmp737:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp738:                               # EH_LABEL
# %bb.10:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_12:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp740:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp741:                               # EH_LABEL
# %bb.13:                               # %.noexc.i13
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp743:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp744:                               # EH_LABEL
# %bb.14:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp745:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp746:                               # EH_LABEL
# %bb.15:
.Ltmp747:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp748:                               # EH_LABEL
# %bb.16:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_18:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp750:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp751:                               # EH_LABEL
# %bb.19:                               # %.noexc.i22
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp753:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp754:                               # EH_LABEL
# %bb.20:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp755:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp756:                               # EH_LABEL
# %bb.21:
.Ltmp757:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp758:                               # EH_LABEL
# %bb.22:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_24:                              # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp760:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp761:                               # EH_LABEL
# %bb.25:                               # %.noexc.i31
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
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
.Ltmp763:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp764:                               # EH_LABEL
# %bb.26:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp765:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp766:                               # EH_LABEL
# %bb.27:
.Ltmp767:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp768:                               # EH_LABEL
# %bb.28:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_30:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp770:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp771:                               # EH_LABEL
# %bb.31:                               # %.noexc.i40
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp773:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp774:                               # EH_LABEL
# %bb.32:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp775:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp776:                               # EH_LABEL
# %bb.33:
.Ltmp777:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp778:                               # EH_LABEL
# %bb.34:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_36
# %bb.35:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_36:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp780:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp781:                               # EH_LABEL
# %bb.37:                               # %.noexc.i49
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a2, $a2, %pc_lo12(.L.str.13)
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
.Ltmp783:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp784:                               # EH_LABEL
# %bb.38:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp785:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp786:                               # EH_LABEL
# %bb.39:
.Ltmp787:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp788:                               # EH_LABEL
# %bb.40:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_42
# %bb.41:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_42:                              # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp790:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp791:                               # EH_LABEL
# %bb.43:                               # %.noexc.i58
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp793:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp794:                               # EH_LABEL
# %bb.44:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp795:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp796:                               # EH_LABEL
# %bb.45:
.Ltmp797:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp798:                               # EH_LABEL
# %bb.46:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_48
# %bb.47:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_48:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp800:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp801:                               # EH_LABEL
# %bb.49:                               # %.noexc.i67
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
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
.Ltmp803:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp804:                               # EH_LABEL
# %bb.50:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp805:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp806:                               # EH_LABEL
# %bb.51:
.Ltmp807:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp808:                               # EH_LABEL
# %bb.52:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_54
# %bb.53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_54:                              # %__cxx_global_var_init.16.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_10_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp810:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp811:                               # EH_LABEL
# %bb.55:                               # %.noexc.i76
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp813:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp814:                               # EH_LABEL
# %bb.56:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp815:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp816:                               # EH_LABEL
# %bb.57:
.Ltmp817:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp818:                               # EH_LABEL
# %bb.58:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_60
# %bb.59:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_60:                              # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_11_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_11_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp820:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp821:                               # EH_LABEL
# %bb.61:                               # %.noexc.i85
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
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
.Ltmp823:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp824:                               # EH_LABEL
# %bb.62:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp825:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp826:                               # EH_LABEL
# %bb.63:
.Ltmp827:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp828:                               # EH_LABEL
# %bb.64:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_66
# %bb.65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_66:                              # %__cxx_global_var_init.20.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_12_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_12_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp830:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp831:                               # EH_LABEL
# %bb.67:                               # %.noexc.i94
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	addi.d	$a2, $a2, %pc_lo12(.L.str.23)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp833:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp834:                               # EH_LABEL
# %bb.68:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp835:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp836:                               # EH_LABEL
# %bb.69:
.Ltmp837:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp838:                               # EH_LABEL
# %bb.70:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_72
# %bb.71:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_72:                              # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_13_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_13_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp840:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp841:                               # EH_LABEL
# %bb.73:                               # %.noexc.i103
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.25)
	addi.d	$a2, $a2, %pc_lo12(.L.str.25)
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
.Ltmp843:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp844:                               # EH_LABEL
# %bb.74:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp845:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp846:                               # EH_LABEL
# %bb.75:
.Ltmp847:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp848:                               # EH_LABEL
# %bb.76:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_78
# %bb.77:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_78:                              # %__cxx_global_var_init.24.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_14_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_14_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp850:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp851:                               # EH_LABEL
# %bb.79:                               # %.noexc.i112
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp853:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp854:                               # EH_LABEL
# %bb.80:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp855:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp856:                               # EH_LABEL
# %bb.81:
.Ltmp857:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp858:                               # EH_LABEL
# %bb.82:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_84
# %bb.83:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_84:                              # %__cxx_global_var_init.26.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_15_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_15_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp860:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp861:                               # EH_LABEL
# %bb.85:                               # %.noexc.i121
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a2, $a2, %pc_lo12(.L.str.29)
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
.Ltmp863:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp864:                               # EH_LABEL
# %bb.86:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp865:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp866:                               # EH_LABEL
# %bb.87:
.Ltmp867:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp868:                               # EH_LABEL
# %bb.88:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_90:                              # %__cxx_global_var_init.28.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_16_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_16_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp870:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.91:                               # %.noexc.i130
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a2, $a2, %pc_lo12(.L.str.31)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp873:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp874:                               # EH_LABEL
# %bb.92:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp875:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp876:                               # EH_LABEL
# %bb.93:
.Ltmp877:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp878:                               # EH_LABEL
# %bb.94:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_96
# %bb.95:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_96:                              # %__cxx_global_var_init.30.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_17_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_17_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp880:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp881:                               # EH_LABEL
# %bb.97:                               # %.noexc.i139
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
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
.Ltmp883:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp884:                               # EH_LABEL
# %bb.98:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp885:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp886:                               # EH_LABEL
# %bb.99:
.Ltmp887:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp888:                               # EH_LABEL
# %bb.100:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_102:                             # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_18_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_18_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp890:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp891:                               # EH_LABEL
# %bb.103:                              # %.noexc.i148
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp893:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp894:                               # EH_LABEL
# %bb.104:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp895:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp896:                               # EH_LABEL
# %bb.105:
.Ltmp897:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp898:                               # EH_LABEL
# %bb.106:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_108
# %bb.107:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_108:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_19_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_19_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp900:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.109:                              # %.noexc.i157
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
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
.Ltmp903:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp904:                               # EH_LABEL
# %bb.110:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp905:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp906:                               # EH_LABEL
# %bb.111:
.Ltmp907:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp908:                               # EH_LABEL
# %bb.112:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_114
# %bb.113:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_114:                             # %__cxx_global_var_init.36.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_20_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_20_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp910:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp911:                               # EH_LABEL
# %bb.115:                              # %.noexc.i166
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp913:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp914:                               # EH_LABEL
# %bb.116:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp915:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp916:                               # EH_LABEL
# %bb.117:
.Ltmp917:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp918:                               # EH_LABEL
# %bb.118:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_120
# %bb.119:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_120:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_21_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_21_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp920:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp921:                               # EH_LABEL
# %bb.121:                              # %.noexc.i175
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.41)
	addi.d	$a2, $a2, %pc_lo12(.L.str.41)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp923:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp924:                               # EH_LABEL
# %bb.122:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp925:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp926:                               # EH_LABEL
# %bb.123:
.Ltmp927:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp928:                               # EH_LABEL
# %bb.124:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_126
# %bb.125:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_126:                             # %__cxx_global_var_init.40.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_22_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_22_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp930:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp931:                               # EH_LABEL
# %bb.127:                              # %.noexc.i184
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.43)
	addi.d	$a2, $a2, %pc_lo12(.L.str.43)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp933:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp934:                               # EH_LABEL
# %bb.128:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp935:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp936:                               # EH_LABEL
# %bb.129:
.Ltmp937:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp938:                               # EH_LABEL
# %bb.130:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_132
# %bb.131:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i188
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_132:                             # %__cxx_global_var_init.42.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_23_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_23_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp940:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp941:                               # EH_LABEL
# %bb.133:                              # %.noexc.i193
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	addi.d	$a2, $a2, %pc_lo12(.L.str.45)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp943:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp944:                               # EH_LABEL
# %bb.134:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp945:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp946:                               # EH_LABEL
# %bb.135:
.Ltmp947:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp948:                               # EH_LABEL
# %bb.136:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_138
# %bb.137:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_138:                             # %__cxx_global_var_init.44.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_24_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_24_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp950:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp951:                               # EH_LABEL
# %bb.139:                              # %.noexc.i202
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	addi.d	$a2, $a2, %pc_lo12(.L.str.47)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp953:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp954:                               # EH_LABEL
# %bb.140:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp955:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp956:                               # EH_LABEL
# %bb.141:
.Ltmp957:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp958:                               # EH_LABEL
# %bb.142:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_144
# %bb.143:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_144:                             # %__cxx_global_var_init.46.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_25_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_25_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp960:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp961:                               # EH_LABEL
# %bb.145:                              # %.noexc.i211
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.49)
	addi.d	$a2, $a2, %pc_lo12(.L.str.49)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp963:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp964:                               # EH_LABEL
# %bb.146:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp965:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp966:                               # EH_LABEL
# %bb.147:
.Ltmp967:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp968:                               # EH_LABEL
# %bb.148:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_150
# %bb.149:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i215
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_150:                             # %__cxx_global_var_init.48.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_26_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_26_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp970:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp971:                               # EH_LABEL
# %bb.151:                              # %.noexc.i220
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.51)
	addi.d	$a2, $a2, %pc_lo12(.L.str.51)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp973:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp974:                               # EH_LABEL
# %bb.152:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp975:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp976:                               # EH_LABEL
# %bb.153:
.Ltmp977:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp978:                               # EH_LABEL
# %bb.154:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_156
# %bb.155:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_156:                             # %__cxx_global_var_init.50.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_27_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_27_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp980:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp981:                               # EH_LABEL
# %bb.157:                              # %.noexc.i229
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.53)
	addi.d	$a2, $a2, %pc_lo12(.L.str.53)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp983:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp984:                               # EH_LABEL
# %bb.158:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp985:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp986:                               # EH_LABEL
# %bb.159:
.Ltmp987:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp988:                               # EH_LABEL
# %bb.160:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_162
# %bb.161:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_162:                             # %__cxx_global_var_init.52.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_28_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_28_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp990:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp991:                               # EH_LABEL
# %bb.163:                              # %.noexc.i238
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.55)
	addi.d	$a2, $a2, %pc_lo12(.L.str.55)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp993:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp994:                               # EH_LABEL
# %bb.164:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp995:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp996:                               # EH_LABEL
# %bb.165:
.Ltmp997:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp998:                               # EH_LABEL
# %bb.166:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_168
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i242
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_168:                             # %__cxx_global_var_init.54.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_29_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_29_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp1000:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1001:                              # EH_LABEL
# %bb.169:                              # %.noexc.i247
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.57)
	addi.d	$a2, $a2, %pc_lo12(.L.str.57)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp1003:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1004:                              # EH_LABEL
# %bb.170:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1005:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1006:                              # EH_LABEL
# %bb.171:
.Ltmp1007:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1008:                              # EH_LABEL
# %bb.172:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_174
# %bb.173:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_174:                             # %__cxx_global_var_init.56.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_30_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_30_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp1010:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1011:                              # EH_LABEL
# %bb.175:                              # %.noexc.i256
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.59)
	addi.d	$a2, $a2, %pc_lo12(.L.str.59)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp1013:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1014:                              # EH_LABEL
# %bb.176:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1015:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1016:                              # EH_LABEL
# %bb.177:
.Ltmp1017:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1018:                              # EH_LABEL
# %bb.178:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_180
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_180:                             # %__cxx_global_var_init.58.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_31_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_31_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 40
.Ltmp1020:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1021:                              # EH_LABEL
# %bb.181:                              # %.noexc.i265
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.61)
	addi.d	$a2, $a2, %pc_lo12(.L.str.61)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp1023:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1024:                              # EH_LABEL
# %bb.182:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1025:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1026:                              # EH_LABEL
# %bb.183:
.Ltmp1027:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1028:                              # EH_LABEL
# %bb.184:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_186
# %bb.185:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_186:                             # %__cxx_global_var_init.60.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_32_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_32_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp1030:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1031:                              # EH_LABEL
# %bb.187:                              # %.noexc.i274
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.63)
	addi.d	$a2, $a2, %pc_lo12(.L.str.63)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp1033:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1034:                              # EH_LABEL
# %bb.188:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1035:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1036:                              # EH_LABEL
# %bb.189:
.Ltmp1037:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1038:                              # EH_LABEL
# %bb.190:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_192
# %bb.191:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_192:                             # %__cxx_global_var_init.62.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_33_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_33_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp1040:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1041:                              # EH_LABEL
# %bb.193:                              # %.noexc.i283
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.65)
	addi.d	$a2, $a2, %pc_lo12(.L.str.65)
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
.Ltmp1043:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1044:                              # EH_LABEL
# %bb.194:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1045:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1046:                              # EH_LABEL
# %bb.195:
.Ltmp1047:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1048:                              # EH_LABEL
# %bb.196:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_198
# %bb.197:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_198:                             # %__cxx_global_var_init.64.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_34_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_34_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp1050:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1051:                              # EH_LABEL
# %bb.199:                              # %.noexc.i292
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp1053:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1054:                              # EH_LABEL
# %bb.200:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1055:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1056:                              # EH_LABEL
# %bb.201:
.Ltmp1057:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1058:                              # EH_LABEL
# %bb.202:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_204
# %bb.203:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i296
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_204:                             # %__cxx_global_var_init.66.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_35_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_35_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 40
.Ltmp1060:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1061:                              # EH_LABEL
# %bb.205:                              # %.noexc.i301
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.69)
	addi.d	$a2, $a2, %pc_lo12(.L.str.69)
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
.Ltmp1063:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1064:                              # EH_LABEL
# %bb.206:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1065:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1066:                              # EH_LABEL
# %bb.207:
.Ltmp1067:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1068:                              # EH_LABEL
# %bb.208:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_210
# %bb.209:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i305
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_210:                             # %__cxx_global_var_init.68.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_36_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_36_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp1070:                              # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1071:                              # EH_LABEL
# %bb.211:                              # %.noexc.i310
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.71)
	addi.d	$a2, $a2, %pc_lo12(.L.str.71)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp1073:                              # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1074:                              # EH_LABEL
# %bb.212:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp1075:                              # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp1076:                              # EH_LABEL
# %bb.213:
.Ltmp1077:                              # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp1078:                              # EH_LABEL
# %bb.214:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB38_216
# %bb.215:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_216:                             # %__cxx_global_var_init.70.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_37_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_37_benchmark_)
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB38_217:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i307
.Ltmp1072:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_218:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i298
.Ltmp1062:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_219:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i289
.Ltmp1052:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_220:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i280
.Ltmp1042:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_221:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i271
.Ltmp1032:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_222:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i262
.Ltmp1022:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_223:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i253
.Ltmp1012:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_224:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i244
.Ltmp1002:                              # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_225:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i235
.Ltmp992:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_226:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i226
.Ltmp982:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_227:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i217
.Ltmp972:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_228:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i208
.Ltmp962:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_229:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i199
.Ltmp952:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_230:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i190
.Ltmp942:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_231:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i181
.Ltmp932:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_232:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i172
.Ltmp922:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_233:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i163
.Ltmp912:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_234:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i154
.Ltmp902:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_235:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i145
.Ltmp892:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_236:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i136
.Ltmp882:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_237:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i127
.Ltmp872:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_238:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i118
.Ltmp862:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_239:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i109
.Ltmp852:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_240:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i100
.Ltmp842:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_241:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i91
.Ltmp832:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_242:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i82
.Ltmp822:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_243:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i73
.Ltmp812:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_244:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i64
.Ltmp802:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_245:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55
.Ltmp792:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_246:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46
.Ltmp782:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_247:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37
.Ltmp772:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_248:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28
.Ltmp762:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_249:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19
.Ltmp752:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_250:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10
.Ltmp742:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_251:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp732:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_252:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp722:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB38_289
.LBB38_253:
.Ltmp1079:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_254:
.Ltmp1069:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_255:
.Ltmp1059:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_256:
.Ltmp1049:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_257:
.Ltmp1039:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_258:
.Ltmp1029:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_259:
.Ltmp1019:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_260:
.Ltmp1009:                              # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_261:
.Ltmp999:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_262:
.Ltmp989:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_263:
.Ltmp979:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_264:
.Ltmp969:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_265:
.Ltmp959:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_266:
.Ltmp949:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_267:
.Ltmp939:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_268:
.Ltmp929:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_269:
.Ltmp919:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_270:
.Ltmp909:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_271:
.Ltmp899:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_272:
.Ltmp889:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_273:
.Ltmp879:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_274:
.Ltmp869:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_275:
.Ltmp859:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_276:
.Ltmp849:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_277:
.Ltmp839:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_278:
.Ltmp829:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_279:
.Ltmp819:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_280:
.Ltmp809:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_281:
.Ltmp799:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_282:
.Ltmp789:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_283:
.Ltmp779:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_284:
.Ltmp769:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_285:
.Ltmp759:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_286:
.Ltmp749:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
	b	.LBB38_292
.LBB38_287:
.Ltmp739:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB38_292
.LBB38_288:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB38_290
.LBB38_289:                             # %common.resume.sink.split
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_290:                             # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB38_291:
.Ltmp729:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB38_288
.LBB38_292:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s3, .LBB38_290
	b	.LBB38_289
.Lfunc_end38:
	.size	_GLOBAL__sub_I_MathFunctions.cpp, .Lfunc_end38-_GLOBAL__sub_I_MathFunctions.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table38:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Lfunc_begin36-.Lfunc_begin36  # >> Call Site 1 <<
	.uleb128 .Ltmp720-.Lfunc_begin36        #   Call between .Lfunc_begin36 and .Ltmp720
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin36        # >> Call Site 2 <<
	.uleb128 .Ltmp721-.Ltmp720              #   Call between .Ltmp720 and .Ltmp721
	.uleb128 .Ltmp722-.Lfunc_begin36        #     jumps to .Ltmp722
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp723-.Lfunc_begin36        # >> Call Site 3 <<
	.uleb128 .Ltmp728-.Ltmp723              #   Call between .Ltmp723 and .Ltmp728
	.uleb128 .Ltmp729-.Lfunc_begin36        #     jumps to .Ltmp729
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp728-.Lfunc_begin36        # >> Call Site 4 <<
	.uleb128 .Ltmp730-.Ltmp728              #   Call between .Ltmp728 and .Ltmp730
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp730-.Lfunc_begin36        # >> Call Site 5 <<
	.uleb128 .Ltmp731-.Ltmp730              #   Call between .Ltmp730 and .Ltmp731
	.uleb128 .Ltmp732-.Lfunc_begin36        #     jumps to .Ltmp732
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp733-.Lfunc_begin36        # >> Call Site 6 <<
	.uleb128 .Ltmp738-.Ltmp733              #   Call between .Ltmp733 and .Ltmp738
	.uleb128 .Ltmp739-.Lfunc_begin36        #     jumps to .Ltmp739
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin36        # >> Call Site 7 <<
	.uleb128 .Ltmp740-.Ltmp738              #   Call between .Ltmp738 and .Ltmp740
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp740-.Lfunc_begin36        # >> Call Site 8 <<
	.uleb128 .Ltmp741-.Ltmp740              #   Call between .Ltmp740 and .Ltmp741
	.uleb128 .Ltmp742-.Lfunc_begin36        #     jumps to .Ltmp742
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin36        # >> Call Site 9 <<
	.uleb128 .Ltmp748-.Ltmp743              #   Call between .Ltmp743 and .Ltmp748
	.uleb128 .Ltmp749-.Lfunc_begin36        #     jumps to .Ltmp749
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp748-.Lfunc_begin36        # >> Call Site 10 <<
	.uleb128 .Ltmp750-.Ltmp748              #   Call between .Ltmp748 and .Ltmp750
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp750-.Lfunc_begin36        # >> Call Site 11 <<
	.uleb128 .Ltmp751-.Ltmp750              #   Call between .Ltmp750 and .Ltmp751
	.uleb128 .Ltmp752-.Lfunc_begin36        #     jumps to .Ltmp752
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp753-.Lfunc_begin36        # >> Call Site 12 <<
	.uleb128 .Ltmp758-.Ltmp753              #   Call between .Ltmp753 and .Ltmp758
	.uleb128 .Ltmp759-.Lfunc_begin36        #     jumps to .Ltmp759
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp758-.Lfunc_begin36        # >> Call Site 13 <<
	.uleb128 .Ltmp760-.Ltmp758              #   Call between .Ltmp758 and .Ltmp760
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp760-.Lfunc_begin36        # >> Call Site 14 <<
	.uleb128 .Ltmp761-.Ltmp760              #   Call between .Ltmp760 and .Ltmp761
	.uleb128 .Ltmp762-.Lfunc_begin36        #     jumps to .Ltmp762
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp763-.Lfunc_begin36        # >> Call Site 15 <<
	.uleb128 .Ltmp768-.Ltmp763              #   Call between .Ltmp763 and .Ltmp768
	.uleb128 .Ltmp769-.Lfunc_begin36        #     jumps to .Ltmp769
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp768-.Lfunc_begin36        # >> Call Site 16 <<
	.uleb128 .Ltmp770-.Ltmp768              #   Call between .Ltmp768 and .Ltmp770
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp770-.Lfunc_begin36        # >> Call Site 17 <<
	.uleb128 .Ltmp771-.Ltmp770              #   Call between .Ltmp770 and .Ltmp771
	.uleb128 .Ltmp772-.Lfunc_begin36        #     jumps to .Ltmp772
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp773-.Lfunc_begin36        # >> Call Site 18 <<
	.uleb128 .Ltmp778-.Ltmp773              #   Call between .Ltmp773 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin36        #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp778-.Lfunc_begin36        # >> Call Site 19 <<
	.uleb128 .Ltmp780-.Ltmp778              #   Call between .Ltmp778 and .Ltmp780
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin36        # >> Call Site 20 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin36        #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin36        # >> Call Site 21 <<
	.uleb128 .Ltmp788-.Ltmp783              #   Call between .Ltmp783 and .Ltmp788
	.uleb128 .Ltmp789-.Lfunc_begin36        #     jumps to .Ltmp789
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp788-.Lfunc_begin36        # >> Call Site 22 <<
	.uleb128 .Ltmp790-.Ltmp788              #   Call between .Ltmp788 and .Ltmp790
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp790-.Lfunc_begin36        # >> Call Site 23 <<
	.uleb128 .Ltmp791-.Ltmp790              #   Call between .Ltmp790 and .Ltmp791
	.uleb128 .Ltmp792-.Lfunc_begin36        #     jumps to .Ltmp792
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp793-.Lfunc_begin36        # >> Call Site 24 <<
	.uleb128 .Ltmp798-.Ltmp793              #   Call between .Ltmp793 and .Ltmp798
	.uleb128 .Ltmp799-.Lfunc_begin36        #     jumps to .Ltmp799
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin36        # >> Call Site 25 <<
	.uleb128 .Ltmp800-.Ltmp798              #   Call between .Ltmp798 and .Ltmp800
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp800-.Lfunc_begin36        # >> Call Site 26 <<
	.uleb128 .Ltmp801-.Ltmp800              #   Call between .Ltmp800 and .Ltmp801
	.uleb128 .Ltmp802-.Lfunc_begin36        #     jumps to .Ltmp802
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp803-.Lfunc_begin36        # >> Call Site 27 <<
	.uleb128 .Ltmp808-.Ltmp803              #   Call between .Ltmp803 and .Ltmp808
	.uleb128 .Ltmp809-.Lfunc_begin36        #     jumps to .Ltmp809
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin36        # >> Call Site 28 <<
	.uleb128 .Ltmp810-.Ltmp808              #   Call between .Ltmp808 and .Ltmp810
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp810-.Lfunc_begin36        # >> Call Site 29 <<
	.uleb128 .Ltmp811-.Ltmp810              #   Call between .Ltmp810 and .Ltmp811
	.uleb128 .Ltmp812-.Lfunc_begin36        #     jumps to .Ltmp812
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp813-.Lfunc_begin36        # >> Call Site 30 <<
	.uleb128 .Ltmp818-.Ltmp813              #   Call between .Ltmp813 and .Ltmp818
	.uleb128 .Ltmp819-.Lfunc_begin36        #     jumps to .Ltmp819
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp818-.Lfunc_begin36        # >> Call Site 31 <<
	.uleb128 .Ltmp820-.Ltmp818              #   Call between .Ltmp818 and .Ltmp820
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp820-.Lfunc_begin36        # >> Call Site 32 <<
	.uleb128 .Ltmp821-.Ltmp820              #   Call between .Ltmp820 and .Ltmp821
	.uleb128 .Ltmp822-.Lfunc_begin36        #     jumps to .Ltmp822
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp823-.Lfunc_begin36        # >> Call Site 33 <<
	.uleb128 .Ltmp828-.Ltmp823              #   Call between .Ltmp823 and .Ltmp828
	.uleb128 .Ltmp829-.Lfunc_begin36        #     jumps to .Ltmp829
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp828-.Lfunc_begin36        # >> Call Site 34 <<
	.uleb128 .Ltmp830-.Ltmp828              #   Call between .Ltmp828 and .Ltmp830
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp830-.Lfunc_begin36        # >> Call Site 35 <<
	.uleb128 .Ltmp831-.Ltmp830              #   Call between .Ltmp830 and .Ltmp831
	.uleb128 .Ltmp832-.Lfunc_begin36        #     jumps to .Ltmp832
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp833-.Lfunc_begin36        # >> Call Site 36 <<
	.uleb128 .Ltmp838-.Ltmp833              #   Call between .Ltmp833 and .Ltmp838
	.uleb128 .Ltmp839-.Lfunc_begin36        #     jumps to .Ltmp839
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp838-.Lfunc_begin36        # >> Call Site 37 <<
	.uleb128 .Ltmp840-.Ltmp838              #   Call between .Ltmp838 and .Ltmp840
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp840-.Lfunc_begin36        # >> Call Site 38 <<
	.uleb128 .Ltmp841-.Ltmp840              #   Call between .Ltmp840 and .Ltmp841
	.uleb128 .Ltmp842-.Lfunc_begin36        #     jumps to .Ltmp842
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp843-.Lfunc_begin36        # >> Call Site 39 <<
	.uleb128 .Ltmp848-.Ltmp843              #   Call between .Ltmp843 and .Ltmp848
	.uleb128 .Ltmp849-.Lfunc_begin36        #     jumps to .Ltmp849
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp848-.Lfunc_begin36        # >> Call Site 40 <<
	.uleb128 .Ltmp850-.Ltmp848              #   Call between .Ltmp848 and .Ltmp850
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp850-.Lfunc_begin36        # >> Call Site 41 <<
	.uleb128 .Ltmp851-.Ltmp850              #   Call between .Ltmp850 and .Ltmp851
	.uleb128 .Ltmp852-.Lfunc_begin36        #     jumps to .Ltmp852
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp853-.Lfunc_begin36        # >> Call Site 42 <<
	.uleb128 .Ltmp858-.Ltmp853              #   Call between .Ltmp853 and .Ltmp858
	.uleb128 .Ltmp859-.Lfunc_begin36        #     jumps to .Ltmp859
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp858-.Lfunc_begin36        # >> Call Site 43 <<
	.uleb128 .Ltmp860-.Ltmp858              #   Call between .Ltmp858 and .Ltmp860
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp860-.Lfunc_begin36        # >> Call Site 44 <<
	.uleb128 .Ltmp861-.Ltmp860              #   Call between .Ltmp860 and .Ltmp861
	.uleb128 .Ltmp862-.Lfunc_begin36        #     jumps to .Ltmp862
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp863-.Lfunc_begin36        # >> Call Site 45 <<
	.uleb128 .Ltmp868-.Ltmp863              #   Call between .Ltmp863 and .Ltmp868
	.uleb128 .Ltmp869-.Lfunc_begin36        #     jumps to .Ltmp869
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp868-.Lfunc_begin36        # >> Call Site 46 <<
	.uleb128 .Ltmp870-.Ltmp868              #   Call between .Ltmp868 and .Ltmp870
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin36        # >> Call Site 47 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.uleb128 .Ltmp872-.Lfunc_begin36        #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin36        # >> Call Site 48 <<
	.uleb128 .Ltmp878-.Ltmp873              #   Call between .Ltmp873 and .Ltmp878
	.uleb128 .Ltmp879-.Lfunc_begin36        #     jumps to .Ltmp879
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp878-.Lfunc_begin36        # >> Call Site 49 <<
	.uleb128 .Ltmp880-.Ltmp878              #   Call between .Ltmp878 and .Ltmp880
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp880-.Lfunc_begin36        # >> Call Site 50 <<
	.uleb128 .Ltmp881-.Ltmp880              #   Call between .Ltmp880 and .Ltmp881
	.uleb128 .Ltmp882-.Lfunc_begin36        #     jumps to .Ltmp882
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp883-.Lfunc_begin36        # >> Call Site 51 <<
	.uleb128 .Ltmp888-.Ltmp883              #   Call between .Ltmp883 and .Ltmp888
	.uleb128 .Ltmp889-.Lfunc_begin36        #     jumps to .Ltmp889
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp888-.Lfunc_begin36        # >> Call Site 52 <<
	.uleb128 .Ltmp890-.Ltmp888              #   Call between .Ltmp888 and .Ltmp890
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp890-.Lfunc_begin36        # >> Call Site 53 <<
	.uleb128 .Ltmp891-.Ltmp890              #   Call between .Ltmp890 and .Ltmp891
	.uleb128 .Ltmp892-.Lfunc_begin36        #     jumps to .Ltmp892
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp893-.Lfunc_begin36        # >> Call Site 54 <<
	.uleb128 .Ltmp898-.Ltmp893              #   Call between .Ltmp893 and .Ltmp898
	.uleb128 .Ltmp899-.Lfunc_begin36        #     jumps to .Ltmp899
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp898-.Lfunc_begin36        # >> Call Site 55 <<
	.uleb128 .Ltmp900-.Ltmp898              #   Call between .Ltmp898 and .Ltmp900
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin36        # >> Call Site 56 <<
	.uleb128 .Ltmp901-.Ltmp900              #   Call between .Ltmp900 and .Ltmp901
	.uleb128 .Ltmp902-.Lfunc_begin36        #     jumps to .Ltmp902
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp903-.Lfunc_begin36        # >> Call Site 57 <<
	.uleb128 .Ltmp908-.Ltmp903              #   Call between .Ltmp903 and .Ltmp908
	.uleb128 .Ltmp909-.Lfunc_begin36        #     jumps to .Ltmp909
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp908-.Lfunc_begin36        # >> Call Site 58 <<
	.uleb128 .Ltmp910-.Ltmp908              #   Call between .Ltmp908 and .Ltmp910
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp910-.Lfunc_begin36        # >> Call Site 59 <<
	.uleb128 .Ltmp911-.Ltmp910              #   Call between .Ltmp910 and .Ltmp911
	.uleb128 .Ltmp912-.Lfunc_begin36        #     jumps to .Ltmp912
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp913-.Lfunc_begin36        # >> Call Site 60 <<
	.uleb128 .Ltmp918-.Ltmp913              #   Call between .Ltmp913 and .Ltmp918
	.uleb128 .Ltmp919-.Lfunc_begin36        #     jumps to .Ltmp919
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin36        # >> Call Site 61 <<
	.uleb128 .Ltmp920-.Ltmp918              #   Call between .Ltmp918 and .Ltmp920
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp920-.Lfunc_begin36        # >> Call Site 62 <<
	.uleb128 .Ltmp921-.Ltmp920              #   Call between .Ltmp920 and .Ltmp921
	.uleb128 .Ltmp922-.Lfunc_begin36        #     jumps to .Ltmp922
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp923-.Lfunc_begin36        # >> Call Site 63 <<
	.uleb128 .Ltmp928-.Ltmp923              #   Call between .Ltmp923 and .Ltmp928
	.uleb128 .Ltmp929-.Lfunc_begin36        #     jumps to .Ltmp929
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp928-.Lfunc_begin36        # >> Call Site 64 <<
	.uleb128 .Ltmp930-.Ltmp928              #   Call between .Ltmp928 and .Ltmp930
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp930-.Lfunc_begin36        # >> Call Site 65 <<
	.uleb128 .Ltmp931-.Ltmp930              #   Call between .Ltmp930 and .Ltmp931
	.uleb128 .Ltmp932-.Lfunc_begin36        #     jumps to .Ltmp932
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp933-.Lfunc_begin36        # >> Call Site 66 <<
	.uleb128 .Ltmp938-.Ltmp933              #   Call between .Ltmp933 and .Ltmp938
	.uleb128 .Ltmp939-.Lfunc_begin36        #     jumps to .Ltmp939
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp938-.Lfunc_begin36        # >> Call Site 67 <<
	.uleb128 .Ltmp940-.Ltmp938              #   Call between .Ltmp938 and .Ltmp940
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp940-.Lfunc_begin36        # >> Call Site 68 <<
	.uleb128 .Ltmp941-.Ltmp940              #   Call between .Ltmp940 and .Ltmp941
	.uleb128 .Ltmp942-.Lfunc_begin36        #     jumps to .Ltmp942
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp943-.Lfunc_begin36        # >> Call Site 69 <<
	.uleb128 .Ltmp948-.Ltmp943              #   Call between .Ltmp943 and .Ltmp948
	.uleb128 .Ltmp949-.Lfunc_begin36        #     jumps to .Ltmp949
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp948-.Lfunc_begin36        # >> Call Site 70 <<
	.uleb128 .Ltmp950-.Ltmp948              #   Call between .Ltmp948 and .Ltmp950
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp950-.Lfunc_begin36        # >> Call Site 71 <<
	.uleb128 .Ltmp951-.Ltmp950              #   Call between .Ltmp950 and .Ltmp951
	.uleb128 .Ltmp952-.Lfunc_begin36        #     jumps to .Ltmp952
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp953-.Lfunc_begin36        # >> Call Site 72 <<
	.uleb128 .Ltmp958-.Ltmp953              #   Call between .Ltmp953 and .Ltmp958
	.uleb128 .Ltmp959-.Lfunc_begin36        #     jumps to .Ltmp959
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp958-.Lfunc_begin36        # >> Call Site 73 <<
	.uleb128 .Ltmp960-.Ltmp958              #   Call between .Ltmp958 and .Ltmp960
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp960-.Lfunc_begin36        # >> Call Site 74 <<
	.uleb128 .Ltmp961-.Ltmp960              #   Call between .Ltmp960 and .Ltmp961
	.uleb128 .Ltmp962-.Lfunc_begin36        #     jumps to .Ltmp962
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp963-.Lfunc_begin36        # >> Call Site 75 <<
	.uleb128 .Ltmp968-.Ltmp963              #   Call between .Ltmp963 and .Ltmp968
	.uleb128 .Ltmp969-.Lfunc_begin36        #     jumps to .Ltmp969
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp968-.Lfunc_begin36        # >> Call Site 76 <<
	.uleb128 .Ltmp970-.Ltmp968              #   Call between .Ltmp968 and .Ltmp970
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp970-.Lfunc_begin36        # >> Call Site 77 <<
	.uleb128 .Ltmp971-.Ltmp970              #   Call between .Ltmp970 and .Ltmp971
	.uleb128 .Ltmp972-.Lfunc_begin36        #     jumps to .Ltmp972
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp973-.Lfunc_begin36        # >> Call Site 78 <<
	.uleb128 .Ltmp978-.Ltmp973              #   Call between .Ltmp973 and .Ltmp978
	.uleb128 .Ltmp979-.Lfunc_begin36        #     jumps to .Ltmp979
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp978-.Lfunc_begin36        # >> Call Site 79 <<
	.uleb128 .Ltmp980-.Ltmp978              #   Call between .Ltmp978 and .Ltmp980
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp980-.Lfunc_begin36        # >> Call Site 80 <<
	.uleb128 .Ltmp981-.Ltmp980              #   Call between .Ltmp980 and .Ltmp981
	.uleb128 .Ltmp982-.Lfunc_begin36        #     jumps to .Ltmp982
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp983-.Lfunc_begin36        # >> Call Site 81 <<
	.uleb128 .Ltmp988-.Ltmp983              #   Call between .Ltmp983 and .Ltmp988
	.uleb128 .Ltmp989-.Lfunc_begin36        #     jumps to .Ltmp989
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp988-.Lfunc_begin36        # >> Call Site 82 <<
	.uleb128 .Ltmp990-.Ltmp988              #   Call between .Ltmp988 and .Ltmp990
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp990-.Lfunc_begin36        # >> Call Site 83 <<
	.uleb128 .Ltmp991-.Ltmp990              #   Call between .Ltmp990 and .Ltmp991
	.uleb128 .Ltmp992-.Lfunc_begin36        #     jumps to .Ltmp992
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp993-.Lfunc_begin36        # >> Call Site 84 <<
	.uleb128 .Ltmp998-.Ltmp993              #   Call between .Ltmp993 and .Ltmp998
	.uleb128 .Ltmp999-.Lfunc_begin36        #     jumps to .Ltmp999
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp998-.Lfunc_begin36        # >> Call Site 85 <<
	.uleb128 .Ltmp1000-.Ltmp998             #   Call between .Ltmp998 and .Ltmp1000
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1000-.Lfunc_begin36       # >> Call Site 86 <<
	.uleb128 .Ltmp1001-.Ltmp1000            #   Call between .Ltmp1000 and .Ltmp1001
	.uleb128 .Ltmp1002-.Lfunc_begin36       #     jumps to .Ltmp1002
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1003-.Lfunc_begin36       # >> Call Site 87 <<
	.uleb128 .Ltmp1008-.Ltmp1003            #   Call between .Ltmp1003 and .Ltmp1008
	.uleb128 .Ltmp1009-.Lfunc_begin36       #     jumps to .Ltmp1009
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1008-.Lfunc_begin36       # >> Call Site 88 <<
	.uleb128 .Ltmp1010-.Ltmp1008            #   Call between .Ltmp1008 and .Ltmp1010
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1010-.Lfunc_begin36       # >> Call Site 89 <<
	.uleb128 .Ltmp1011-.Ltmp1010            #   Call between .Ltmp1010 and .Ltmp1011
	.uleb128 .Ltmp1012-.Lfunc_begin36       #     jumps to .Ltmp1012
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1013-.Lfunc_begin36       # >> Call Site 90 <<
	.uleb128 .Ltmp1018-.Ltmp1013            #   Call between .Ltmp1013 and .Ltmp1018
	.uleb128 .Ltmp1019-.Lfunc_begin36       #     jumps to .Ltmp1019
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1018-.Lfunc_begin36       # >> Call Site 91 <<
	.uleb128 .Ltmp1020-.Ltmp1018            #   Call between .Ltmp1018 and .Ltmp1020
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1020-.Lfunc_begin36       # >> Call Site 92 <<
	.uleb128 .Ltmp1021-.Ltmp1020            #   Call between .Ltmp1020 and .Ltmp1021
	.uleb128 .Ltmp1022-.Lfunc_begin36       #     jumps to .Ltmp1022
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1023-.Lfunc_begin36       # >> Call Site 93 <<
	.uleb128 .Ltmp1028-.Ltmp1023            #   Call between .Ltmp1023 and .Ltmp1028
	.uleb128 .Ltmp1029-.Lfunc_begin36       #     jumps to .Ltmp1029
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1028-.Lfunc_begin36       # >> Call Site 94 <<
	.uleb128 .Ltmp1030-.Ltmp1028            #   Call between .Ltmp1028 and .Ltmp1030
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1030-.Lfunc_begin36       # >> Call Site 95 <<
	.uleb128 .Ltmp1031-.Ltmp1030            #   Call between .Ltmp1030 and .Ltmp1031
	.uleb128 .Ltmp1032-.Lfunc_begin36       #     jumps to .Ltmp1032
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1033-.Lfunc_begin36       # >> Call Site 96 <<
	.uleb128 .Ltmp1038-.Ltmp1033            #   Call between .Ltmp1033 and .Ltmp1038
	.uleb128 .Ltmp1039-.Lfunc_begin36       #     jumps to .Ltmp1039
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1038-.Lfunc_begin36       # >> Call Site 97 <<
	.uleb128 .Ltmp1040-.Ltmp1038            #   Call between .Ltmp1038 and .Ltmp1040
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1040-.Lfunc_begin36       # >> Call Site 98 <<
	.uleb128 .Ltmp1041-.Ltmp1040            #   Call between .Ltmp1040 and .Ltmp1041
	.uleb128 .Ltmp1042-.Lfunc_begin36       #     jumps to .Ltmp1042
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1043-.Lfunc_begin36       # >> Call Site 99 <<
	.uleb128 .Ltmp1048-.Ltmp1043            #   Call between .Ltmp1043 and .Ltmp1048
	.uleb128 .Ltmp1049-.Lfunc_begin36       #     jumps to .Ltmp1049
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1048-.Lfunc_begin36       # >> Call Site 100 <<
	.uleb128 .Ltmp1050-.Ltmp1048            #   Call between .Ltmp1048 and .Ltmp1050
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1050-.Lfunc_begin36       # >> Call Site 101 <<
	.uleb128 .Ltmp1051-.Ltmp1050            #   Call between .Ltmp1050 and .Ltmp1051
	.uleb128 .Ltmp1052-.Lfunc_begin36       #     jumps to .Ltmp1052
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1053-.Lfunc_begin36       # >> Call Site 102 <<
	.uleb128 .Ltmp1058-.Ltmp1053            #   Call between .Ltmp1053 and .Ltmp1058
	.uleb128 .Ltmp1059-.Lfunc_begin36       #     jumps to .Ltmp1059
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1058-.Lfunc_begin36       # >> Call Site 103 <<
	.uleb128 .Ltmp1060-.Ltmp1058            #   Call between .Ltmp1058 and .Ltmp1060
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1060-.Lfunc_begin36       # >> Call Site 104 <<
	.uleb128 .Ltmp1061-.Ltmp1060            #   Call between .Ltmp1060 and .Ltmp1061
	.uleb128 .Ltmp1062-.Lfunc_begin36       #     jumps to .Ltmp1062
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1063-.Lfunc_begin36       # >> Call Site 105 <<
	.uleb128 .Ltmp1068-.Ltmp1063            #   Call between .Ltmp1063 and .Ltmp1068
	.uleb128 .Ltmp1069-.Lfunc_begin36       #     jumps to .Ltmp1069
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1068-.Lfunc_begin36       # >> Call Site 106 <<
	.uleb128 .Ltmp1070-.Ltmp1068            #   Call between .Ltmp1068 and .Ltmp1070
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1070-.Lfunc_begin36       # >> Call Site 107 <<
	.uleb128 .Ltmp1071-.Ltmp1070            #   Call between .Ltmp1070 and .Ltmp1071
	.uleb128 .Ltmp1072-.Lfunc_begin36       #     jumps to .Ltmp1072
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1073-.Lfunc_begin36       # >> Call Site 108 <<
	.uleb128 .Ltmp1078-.Ltmp1073            #   Call between .Ltmp1073 and .Ltmp1078
	.uleb128 .Ltmp1079-.Lfunc_begin36       #     jumps to .Ltmp1079
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1078-.Lfunc_begin36       # >> Call Site 109 <<
	.uleb128 .Lfunc_end38-.Ltmp1078         #   Call between .Ltmp1078 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end36:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BENCHMARK_expf_autovec_float_"
	.size	.L.str, 30

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BENCHMARK_expf_novec_float_"
	.size	.L.str.3, 28

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BENCHMARK_exp_autovec_double_"
	.size	.L.str.5, 30

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BENCHMARK_exp_novec_double_"
	.size	.L.str.7, 28

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BENCHMARK_acosf_autovec_float_"
	.size	.L.str.9, 31

	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"BENCHMARK_acosf_novec_float_"
	.size	.L.str.11, 29

	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"BENCHMARK_acos_autovec_double_"
	.size	.L.str.13, 31

	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"BENCHMARK_acos_novec_double_"
	.size	.L.str.15, 29

	.type	_ZL28benchmark_uniq_10_benchmark_,@object # @_ZL28benchmark_uniq_10_benchmark_
	.local	_ZL28benchmark_uniq_10_benchmark_
	.comm	_ZL28benchmark_uniq_10_benchmark_,8,8
	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"BENCHMARK_asinf_autovec_float_"
	.size	.L.str.17, 31

	.type	_ZL28benchmark_uniq_11_benchmark_,@object # @_ZL28benchmark_uniq_11_benchmark_
	.local	_ZL28benchmark_uniq_11_benchmark_
	.comm	_ZL28benchmark_uniq_11_benchmark_,8,8
	.type	.L.str.19,@object               # @.str.19
	.p2align	3, 0x0
.L.str.19:
	.asciz	"BENCHMARK_asinf_novec_float_"
	.size	.L.str.19, 29

	.type	_ZL28benchmark_uniq_12_benchmark_,@object # @_ZL28benchmark_uniq_12_benchmark_
	.local	_ZL28benchmark_uniq_12_benchmark_
	.comm	_ZL28benchmark_uniq_12_benchmark_,8,8
	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"BENCHMARK_asin_autovec_double_"
	.size	.L.str.21, 31

	.type	_ZL28benchmark_uniq_13_benchmark_,@object # @_ZL28benchmark_uniq_13_benchmark_
	.local	_ZL28benchmark_uniq_13_benchmark_
	.comm	_ZL28benchmark_uniq_13_benchmark_,8,8
	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"BENCHMARK_asin_novec_double_"
	.size	.L.str.23, 29

	.type	_ZL28benchmark_uniq_14_benchmark_,@object # @_ZL28benchmark_uniq_14_benchmark_
	.local	_ZL28benchmark_uniq_14_benchmark_
	.comm	_ZL28benchmark_uniq_14_benchmark_,8,8
	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"BENCHMARK_atanf_autovec_float_"
	.size	.L.str.25, 31

	.type	_ZL28benchmark_uniq_15_benchmark_,@object # @_ZL28benchmark_uniq_15_benchmark_
	.local	_ZL28benchmark_uniq_15_benchmark_
	.comm	_ZL28benchmark_uniq_15_benchmark_,8,8
	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"BENCHMARK_atanf_novec_float_"
	.size	.L.str.27, 29

	.type	_ZL28benchmark_uniq_16_benchmark_,@object # @_ZL28benchmark_uniq_16_benchmark_
	.local	_ZL28benchmark_uniq_16_benchmark_
	.comm	_ZL28benchmark_uniq_16_benchmark_,8,8
	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"BENCHMARK_atan_autovec_double_"
	.size	.L.str.29, 31

	.type	_ZL28benchmark_uniq_17_benchmark_,@object # @_ZL28benchmark_uniq_17_benchmark_
	.local	_ZL28benchmark_uniq_17_benchmark_
	.comm	_ZL28benchmark_uniq_17_benchmark_,8,8
	.type	.L.str.31,@object               # @.str.31
	.p2align	3, 0x0
.L.str.31:
	.asciz	"BENCHMARK_atan_novec_double_"
	.size	.L.str.31, 29

	.type	_ZL28benchmark_uniq_18_benchmark_,@object # @_ZL28benchmark_uniq_18_benchmark_
	.local	_ZL28benchmark_uniq_18_benchmark_
	.comm	_ZL28benchmark_uniq_18_benchmark_,8,8
	.type	.L.str.33,@object               # @.str.33
	.p2align	3, 0x0
.L.str.33:
	.asciz	"BENCHMARK_cbrtf_autovec_float_"
	.size	.L.str.33, 31

	.type	_ZL28benchmark_uniq_19_benchmark_,@object # @_ZL28benchmark_uniq_19_benchmark_
	.local	_ZL28benchmark_uniq_19_benchmark_
	.comm	_ZL28benchmark_uniq_19_benchmark_,8,8
	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"BENCHMARK_cbrtf_novec_float_"
	.size	.L.str.35, 29

	.type	_ZL28benchmark_uniq_20_benchmark_,@object # @_ZL28benchmark_uniq_20_benchmark_
	.local	_ZL28benchmark_uniq_20_benchmark_
	.comm	_ZL28benchmark_uniq_20_benchmark_,8,8
	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"BENCHMARK_cbrt_autovec_double_"
	.size	.L.str.37, 31

	.type	_ZL28benchmark_uniq_21_benchmark_,@object # @_ZL28benchmark_uniq_21_benchmark_
	.local	_ZL28benchmark_uniq_21_benchmark_
	.comm	_ZL28benchmark_uniq_21_benchmark_,8,8
	.type	.L.str.39,@object               # @.str.39
	.p2align	3, 0x0
.L.str.39:
	.asciz	"BENCHMARK_cbrt_novec_double_"
	.size	.L.str.39, 29

	.type	_ZL28benchmark_uniq_22_benchmark_,@object # @_ZL28benchmark_uniq_22_benchmark_
	.local	_ZL28benchmark_uniq_22_benchmark_
	.comm	_ZL28benchmark_uniq_22_benchmark_,8,8
	.type	.L.str.41,@object               # @.str.41
	.p2align	3, 0x0
.L.str.41:
	.asciz	"BENCHMARK_erff_autovec_float_"
	.size	.L.str.41, 30

	.type	_ZL28benchmark_uniq_23_benchmark_,@object # @_ZL28benchmark_uniq_23_benchmark_
	.local	_ZL28benchmark_uniq_23_benchmark_
	.comm	_ZL28benchmark_uniq_23_benchmark_,8,8
	.type	.L.str.43,@object               # @.str.43
	.p2align	3, 0x0
.L.str.43:
	.asciz	"BENCHMARK_erff_novec_float_"
	.size	.L.str.43, 28

	.type	_ZL28benchmark_uniq_24_benchmark_,@object # @_ZL28benchmark_uniq_24_benchmark_
	.local	_ZL28benchmark_uniq_24_benchmark_
	.comm	_ZL28benchmark_uniq_24_benchmark_,8,8
	.type	.L.str.45,@object               # @.str.45
	.p2align	3, 0x0
.L.str.45:
	.asciz	"BENCHMARK_erf_autovec_double_"
	.size	.L.str.45, 30

	.type	_ZL28benchmark_uniq_25_benchmark_,@object # @_ZL28benchmark_uniq_25_benchmark_
	.local	_ZL28benchmark_uniq_25_benchmark_
	.comm	_ZL28benchmark_uniq_25_benchmark_,8,8
	.type	.L.str.47,@object               # @.str.47
	.p2align	3, 0x0
.L.str.47:
	.asciz	"BENCHMARK_erf_novec_double_"
	.size	.L.str.47, 28

	.type	_ZL28benchmark_uniq_26_benchmark_,@object # @_ZL28benchmark_uniq_26_benchmark_
	.local	_ZL28benchmark_uniq_26_benchmark_
	.comm	_ZL28benchmark_uniq_26_benchmark_,8,8
	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"BENCHMARK_cosf_autovec_float_"
	.size	.L.str.49, 30

	.type	_ZL28benchmark_uniq_27_benchmark_,@object # @_ZL28benchmark_uniq_27_benchmark_
	.local	_ZL28benchmark_uniq_27_benchmark_
	.comm	_ZL28benchmark_uniq_27_benchmark_,8,8
	.type	.L.str.51,@object               # @.str.51
	.p2align	3, 0x0
.L.str.51:
	.asciz	"BENCHMARK_cosf_novec_float_"
	.size	.L.str.51, 28

	.type	_ZL28benchmark_uniq_28_benchmark_,@object # @_ZL28benchmark_uniq_28_benchmark_
	.local	_ZL28benchmark_uniq_28_benchmark_
	.comm	_ZL28benchmark_uniq_28_benchmark_,8,8
	.type	.L.str.53,@object               # @.str.53
	.p2align	3, 0x0
.L.str.53:
	.asciz	"BENCHMARK_cos_autovec_double_"
	.size	.L.str.53, 30

	.type	_ZL28benchmark_uniq_29_benchmark_,@object # @_ZL28benchmark_uniq_29_benchmark_
	.local	_ZL28benchmark_uniq_29_benchmark_
	.comm	_ZL28benchmark_uniq_29_benchmark_,8,8
	.type	.L.str.55,@object               # @.str.55
	.p2align	3, 0x0
.L.str.55:
	.asciz	"BENCHMARK_cos_novec_double_"
	.size	.L.str.55, 28

	.type	_ZL28benchmark_uniq_30_benchmark_,@object # @_ZL28benchmark_uniq_30_benchmark_
	.local	_ZL28benchmark_uniq_30_benchmark_
	.comm	_ZL28benchmark_uniq_30_benchmark_,8,8
	.type	.L.str.57,@object               # @.str.57
	.p2align	3, 0x0
.L.str.57:
	.asciz	"BENCHMARK_sinf_autovec_float_"
	.size	.L.str.57, 30

	.type	_ZL28benchmark_uniq_31_benchmark_,@object # @_ZL28benchmark_uniq_31_benchmark_
	.local	_ZL28benchmark_uniq_31_benchmark_
	.comm	_ZL28benchmark_uniq_31_benchmark_,8,8
	.type	.L.str.59,@object               # @.str.59
	.p2align	3, 0x0
.L.str.59:
	.asciz	"BENCHMARK_sinf_novec_float_"
	.size	.L.str.59, 28

	.type	_ZL28benchmark_uniq_32_benchmark_,@object # @_ZL28benchmark_uniq_32_benchmark_
	.local	_ZL28benchmark_uniq_32_benchmark_
	.comm	_ZL28benchmark_uniq_32_benchmark_,8,8
	.type	.L.str.61,@object               # @.str.61
	.p2align	3, 0x0
.L.str.61:
	.asciz	"BENCHMARK_sin_autovec_double_"
	.size	.L.str.61, 30

	.type	_ZL28benchmark_uniq_33_benchmark_,@object # @_ZL28benchmark_uniq_33_benchmark_
	.local	_ZL28benchmark_uniq_33_benchmark_
	.comm	_ZL28benchmark_uniq_33_benchmark_,8,8
	.type	.L.str.63,@object               # @.str.63
	.p2align	3, 0x0
.L.str.63:
	.asciz	"BENCHMARK_sin_novec_double_"
	.size	.L.str.63, 28

	.type	_ZL28benchmark_uniq_34_benchmark_,@object # @_ZL28benchmark_uniq_34_benchmark_
	.local	_ZL28benchmark_uniq_34_benchmark_
	.comm	_ZL28benchmark_uniq_34_benchmark_,8,8
	.type	.L.str.65,@object               # @.str.65
	.p2align	3, 0x0
.L.str.65:
	.asciz	"BENCHMARK_sinhf_autovec_float_"
	.size	.L.str.65, 31

	.type	_ZL28benchmark_uniq_35_benchmark_,@object # @_ZL28benchmark_uniq_35_benchmark_
	.local	_ZL28benchmark_uniq_35_benchmark_
	.comm	_ZL28benchmark_uniq_35_benchmark_,8,8
	.type	.L.str.67,@object               # @.str.67
	.p2align	3, 0x0
.L.str.67:
	.asciz	"BENCHMARK_sinhf_novec_float_"
	.size	.L.str.67, 29

	.type	_ZL28benchmark_uniq_36_benchmark_,@object # @_ZL28benchmark_uniq_36_benchmark_
	.local	_ZL28benchmark_uniq_36_benchmark_
	.comm	_ZL28benchmark_uniq_36_benchmark_,8,8
	.type	.L.str.69,@object               # @.str.69
	.p2align	3, 0x0
.L.str.69:
	.asciz	"BENCHMARK_sinh_autovec_double_"
	.size	.L.str.69, 31

	.type	_ZL28benchmark_uniq_37_benchmark_,@object # @_ZL28benchmark_uniq_37_benchmark_
	.local	_ZL28benchmark_uniq_37_benchmark_
	.comm	_ZL28benchmark_uniq_37_benchmark_,8,8
	.type	.L.str.71,@object               # @.str.71
	.p2align	3, 0x0
.L.str.71:
	.asciz	"BENCHMARK_sinh_novec_double_"
	.size	.L.str.71, 29

	.type	.L.str.73,@object               # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"ERROR: autovec result different to scalar result "
	.size	.L.str.73, 50

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	" != "
	.size	.L.str.74, 5

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	" at index "
	.size	.L.str.75, 11

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"\n"
	.size	.L.str.76, 2

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_MathFunctions.cpp
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
	.addrsig_sym _Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z27BENCHMARK_expf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z29BENCHMARK_exp_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z27BENCHMARK_exp_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_acosf_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_acosf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_acos_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_acos_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_asinf_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_asinf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_asin_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_asin_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_atanf_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_atanf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_atan_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_atan_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_cbrtf_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_cbrtf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_cbrt_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_cbrt_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z29BENCHMARK_erff_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z27BENCHMARK_erff_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z29BENCHMARK_erf_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z27BENCHMARK_erf_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z29BENCHMARK_cosf_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z27BENCHMARK_cosf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z29BENCHMARK_cos_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z27BENCHMARK_cos_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z29BENCHMARK_sinf_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z27BENCHMARK_sinf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z29BENCHMARK_sin_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z27BENCHMARK_sin_novec_double_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_sinhf_autovec_float_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_sinhf_novec_float_RN9benchmark5StateE
	.addrsig_sym _Z30BENCHMARK_sinh_autovec_double_RN9benchmark5StateE
	.addrsig_sym _Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_MathFunctions.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cerr
