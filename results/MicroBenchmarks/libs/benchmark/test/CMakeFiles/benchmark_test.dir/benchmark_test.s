	.file	"benchmark_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL12BM_FactorialRN9benchmark5StateE
	.type	_ZL12BM_FactorialRN9benchmark5StateE,@function
_ZL12BM_FactorialRN9benchmark5StateE:   # @_ZL12BM_FactorialRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -480
	.cfi_def_cfa_offset 480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.w	$s2, $a0, 28
	ld.d	$s1, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	bnez	$s2, .LBB0_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB0_4
# %bb.2:                                # %.lr.ph.preheader
	srai.d	$a0, $s1, 63
	andn	$a0, $s1, $a0
	addi.d	$a1, $s1, -1
	bgeu	$a1, $a0, .LBB0_15
# %bb.3:                                # %._crit_edge
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_19FactorialEi)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB0_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
.Ltmp0:                                 # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.5:
	ld.d	$a0, $sp, 112
	addi.d	$s0, $sp, 32
	st.d	$s0, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
	beqz	$a0, .LBB0_8
# %bb.6:
	ld.d	$a1, $sp, 96
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB0_8
# %bb.7:
	ld.d	$a3, $sp, 104
	sub.d	$a4, $a0, $a3
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
	b	.LBB0_9
.LBB0_8:
	addi.d	$a1, $sp, 144
.Ltmp5:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
.LBB0_9:                                # %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
.Ltmp8:                                 # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.10:
	ld.d	$a0, $sp, 16
	beq	$a0, $s0, .LBB0_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 48
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, -24
	ld.d	$a2, $fp, 72
	addi.d	$s0, $sp, 48
	stx.d	$a1, $a0, $s0
	st.d	$a2, $sp, 64
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 160
	st.d	$a1, $sp, 72
	beq	$a0, $a2, .LBB0_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_14:                               # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 72
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 48
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s0
	st.d	$zero, $sp, 56
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB0_15:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB0_16:
.Ltmp10:                                # EH_LABEL
	b	.LBB0_18
.LBB0_17:
.Ltmp7:                                 # EH_LABEL
.LBB0_18:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s0, .LBB0_21
# %bb.19:                               # %.body.sink.split
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_20:
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
.LBB0_21:
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZL12BM_FactorialRN9benchmark5StateE, .Lfunc_end0-_ZL12BM_FactorialRN9benchmark5StateE
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
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19BM_CalculatePiRangeRN9benchmark5StateE
	.type	_ZL19BM_CalculatePiRangeRN9benchmark5StateE,@function
_ZL19BM_CalculatePiRangeRN9benchmark5StateE: # @_ZL19BM_CalculatePiRangeRN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -496
	.cfi_def_cfa_offset 496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $zero
	bnez	$s1, .LBB1_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB1_12
# %bb.2:                                # %.lr.ph
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB1_23
# %bb.3:                                # %.lr.ph.split
	ld.w	$a0, $a0, 0
	srai.d	$a1, $s0, 63
	andn	$a1, $s0, $a1
	addi.d	$a2, $s0, -1
	blez	$a0, .LBB1_10
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit.us.preheader
	bgeu	$a2, $a1, .LBB1_24
# %bb.5:                                # %_ZNK9benchmark5State5rangeEm.exit.us.us.preheader
	movgr2fr.d	$fa0, $zero
	addi.w	$a1, $zero, -1
	.p2align	4, , 16
.LBB1_6:                                # %_ZNK9benchmark5State5rangeEm.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	move	$a2, $a1
	move	$a3, $a0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph.i.us.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, 1
	andi	$a4, $a4, 2
	addi.d	$a4, $a4, -1
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	movgr2fr.w	$fa3, $a2
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.w	$a3, $a3, -1
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB1_7
# %bb.8:                                # %._crit_edge.loopexit.i.us.us
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB1_6
# %bb.9:                                # %._crit_edge.split.us.split.us
	vldi	$vr0, -784
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -1008
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB1_12
.LBB1_10:                               # %_ZNK9benchmark5State5rangeEm.exit.preheader
	bgeu	$a2, $a1, .LBB1_24
# %bb.11:
	vldi	$vr0, -880
.LBB1_12:                               # %._crit_edge
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
.Ltmp11:                                # EH_LABEL
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.13:                               # %_ZNSolsEd.exit
	ld.d	$a0, $sp, 136
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
	beqz	$a0, .LBB1_16
# %bb.14:                               # %_ZNSolsEd.exit
	ld.d	$a1, $sp, 120
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB1_16
# %bb.15:
	ld.d	$a3, $sp, 128
	sub.d	$a4, $a0, $a3
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
	b	.LBB1_17
.LBB1_16:
	addi.d	$a1, $sp, 168
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
.LBB1_17:                               # %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
.Ltmp19:                                # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.18:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB1_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 72
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, -24
	ld.d	$a2, $fp, 72
	addi.d	$s0, $sp, 72
	stx.d	$a1, $a0, $s0
	st.d	$a2, $sp, 88
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 168
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 184
	st.d	$a1, $sp, 96
	beq	$a0, $a2, .LBB1_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 96
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 72
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s0
	st.d	$zero, $sp, 80
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB1_23:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB1_24:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB1_25:
.Ltmp21:                                # EH_LABEL
	b	.LBB1_27
.LBB1_26:
.Ltmp18:                                # EH_LABEL
.LBB1_27:
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s0, .LBB1_30
# %bb.28:                               # %.body.sink.split
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_29:
.Ltmp13:                                # EH_LABEL
	move	$fp, $a0
.LBB1_30:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZL19BM_CalculatePiRangeRN9benchmark5StateE, .Lfunc_end1-_ZL19BM_CalculatePiRangeRN9benchmark5StateE
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
	.uleb128 .Ltmp11-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp14                #   Call between .Ltmp14 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end1-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL14BM_CalculatePiRN9benchmark5StateE
	.type	_ZL14BM_CalculatePiRN9benchmark5StateE,@function
_ZL14BM_CalculatePiRN9benchmark5StateE: # @_ZL14BM_CalculatePiRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB2_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB2_7
# %bb.2:
	movgr2fr.d	$fa0, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 2047
	vldi	$vr1, -784
	vldi	$vr2, -1008
	addi.d	$a2, $sp, 8
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	move	$a3, $a0
	fmov.d	$fa3, $fa0
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a3, 1
	andi	$a4, $a4, 2
	addi.d	$a4, $a4, -1
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	movgr2fr.w	$fa5, $a3
	ffint.d.w	$fa5, $fa5
	fdiv.d	$fa4, $fa4, $fa5
	addi.w	$a3, $a3, 2
	fadd.d	$fa3, $fa3, $fa4
	bne	$a3, $a1, .LBB2_4
# %bb.5:                                # %_ZN12_GLOBAL__N_111CalculatePiEi.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	fadd.d	$fa3, $fa3, $fa1
	fmul.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $sp, 8
	#APP
	#NO_APP
	blez	$s0, .LBB2_8
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB2_3
.LBB2_7:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_8:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZL14BM_CalculatePiRN9benchmark5StateE, .Lfunc_end2-_ZL14BM_CalculatePiRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL12BM_SetInsertRN9benchmark5StateE
	.type	_ZL12BM_SetInsertRN9benchmark5StateE,@function
_ZL12BM_SetInsertRN9benchmark5StateE:   # @_ZL12BM_SetInsertRN9benchmark5StateE
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
	addi.d	$s0, $sp, 72
	st.w	$zero, $sp, 72
	st.d	$zero, $sp, 80
	ld.w	$s1, $a0, 28
	ld.d	$s2, $a0, 16
	st.d	$s0, $sp, 88
	st.d	$s0, $sp, 96
	st.d	$zero, $sp, 104
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.1:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB3_38
# %bb.2:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s2, .LBB3_38
# %bb.3:                                # %.lr.ph
	addi.d	$s1, $sp, 24
	ori	$s8, $zero, 24
	ori	$s6, $zero, 16
	.p2align	4, , 16
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #     Child Loop BB3_27 Depth 2
                                        #       Child Loop BB3_29 Depth 3
.Ltmp24:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB3_55
# %bb.6:                                # %_ZNK9benchmark5State5rangeEm.exit39
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s4, $a0, 0
	st.w	$zero, $sp, 24
	st.d	$zero, $sp, 32
	st.d	$s1, $sp, 40
	st.d	$s1, $sp, 48
	st.d	$zero, $sp, 56
	blez	$s4, .LBB3_16
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s5, $zero
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_8:                                # %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i.i
                                        #   in Loop: Header=BB3_11 Depth=2
.Ltmp28:                                # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp29:                                # EH_LABEL
# %bb.9:                                # %.noexc8.i
                                        #   in Loop: Header=BB3_11 Depth=2
	st.d	$s7, $a1, 32
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 56
.LBB3_10:                               # %_ZNSt3setIlSt4lessIlESaIlEE6insertESt23_Rb_tree_const_iteratorIlEOl.exit.i
                                        #   in Loop: Header=BB3_11 Depth=2
	addi.d	$s5, $s5, 1
	beq	$s4, $s5, .LBB3_16
.LBB3_11:                               # %.lr.ph.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s5, $sp, 112
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 112
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.12:                               # %.noexc.i49
                                        #   in Loop: Header=BB3_11 Depth=2
	move	$s2, $a1
	beqz	$a1, .LBB3_10
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=2
	ld.d	$s7, $sp, 112
	ori	$s3, $zero, 1
	bnez	$a0, .LBB3_8
# %bb.14:                               #   in Loop: Header=BB3_11 Depth=2
	beq	$s1, $s2, .LBB3_8
# %bb.15:                               #   in Loop: Header=BB3_11 Depth=2
	ld.d	$a0, $s2, 32
	slt	$s3, $s7, $a0
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_16:                               # %_ZN12_GLOBAL__N_118ConstructRandomSetEl.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 80
.Ltmp31:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.17:                               # %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE5clearEv.exit.i.i.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 32
	st.d	$zero, $sp, 80
	st.d	$s0, $sp, 88
	st.d	$s0, $sp, 96
	st.d	$zero, $sp, 104
	beqz	$a0, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $sp, 24
	vld	$vr0, $sp, 40
	st.w	$a1, $sp, 72
	st.d	$a0, $sp, 80
	vst	$vr0, $sp, 88
	st.d	$s0, $a0, 8
	ld.d	$a0, $sp, 56
	st.d	$a0, $sp, 104
	st.d	$zero, $sp, 32
	st.d	$s1, $sp, 40
	st.d	$s1, $sp, 48
	st.d	$zero, $sp, 56
.LBB3_19:                               # %_ZNSt3setIlSt4lessIlESaIlEEaSEOS3_.exit
                                        #   in Loop: Header=BB3_4 Depth=1
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.20:                               # %_ZNSt3setIlSt4lessIlESaIlEED2Ev.exit
                                        #   in Loop: Header=BB3_4 Depth=1
.Ltmp37:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State12ResumeTimingEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 9
	bltu	$a1, $a2, .LBB3_55
# %bb.22:                               # %_ZNK9benchmark5State5rangeEm.exit38.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s5, $zero
	b	.LBB3_27
	.p2align	4, , 16
.LBB3_23:                               #   in Loop: Header=BB3_27 Depth=2
	ld.d	$a0, $s3, 32
	slt	$s4, $s2, $a0
.LBB3_24:                               # %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
                                        #   in Loop: Header=BB3_27 Depth=2
.Ltmp40:                                # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp41:                                # EH_LABEL
# %bb.25:                               # %.noexc54
                                        #   in Loop: Header=BB3_27 Depth=2
	st.d	$s2, $a1, 32
	move	$a0, $s4
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.LBB3_26:                               #   in Loop: Header=BB3_27 Depth=2
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a0
	addi.d	$s5, $s5, 1
	ori	$a2, $zero, 8
	bgeu	$a2, $a1, .LBB3_55
.LBB3_27:                               # %_ZNK9benchmark5State5rangeEm.exit38
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_29 Depth 3
	ld.d	$a0, $a0, 8
	bge	$s5, $a0, .LBB3_36
# %bb.28:                               #   in Loop: Header=BB3_27 Depth=2
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	move	$s2, $a0
	move	$s3, $s0
	beqz	$a1, .LBB3_31
	.p2align	4, , 16
.LBB3_29:                               # %.lr.ph.i.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $a1
	ld.d	$a0, $a1, 32
	slt	$a1, $s2, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s3, $a1
	bnez	$a1, .LBB3_29
# %bb.30:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB3_27 Depth=2
	bge	$s2, $a0, .LBB3_33
.LBB3_31:                               # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB3_27 Depth=2
	ld.d	$a0, $sp, 88
	beq	$s3, $a0, .LBB3_34
# %bb.32:                               #   in Loop: Header=BB3_27 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 32
.LBB3_33:                               #   in Loop: Header=BB3_27 Depth=2
	bge	$a0, $s2, .LBB3_26
.LBB3_34:                               # %select.unfold.i.i
                                        #   in Loop: Header=BB3_27 Depth=2
	bne	$s3, $s0, .LBB3_23
# %bb.35:                               #   in Loop: Header=BB3_27 Depth=2
	ori	$s4, $zero, 1
	b	.LBB3_24
	.p2align	4, , 16
.LBB3_36:                               # %_ZN9benchmark5State13StateIteratorppEv.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	blez	$s2, .LBB3_56
# %bb.37:                               # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$s2, $s2, -1
	bnez	$s2, .LBB3_4
.LBB3_38:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp43:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.39:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB3_57
# %bb.40:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$s2, $a0, $a2
.LBB3_41:                               # %_ZNK9benchmark5State10iterationsEv.exit41
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 8
	bgeu	$a2, $a1, .LBB3_55
# %bb.42:                               # %_ZNK9benchmark5State5rangeEm.exit37
	ld.d	$s3, $a0, 8
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 112
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.43:                               # %.noexc45
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %pc_hi20(.L.str.52)
	vld	$vr0, $a2, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	addi.d	$s0, $fp, 64
.Ltmp49:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.44:                               # %_ZN9benchmark5State17SetItemsProcessedEl.exit
	mul.d	$a1, $s3, $s2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$a2, $sp, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1000
	st.d	$a1, $a0, 8
	beq	$a2, $s1, .LBB3_46
# %bb.45:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_46:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB3_58
# %bb.47:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	slli.d	$s2, $a0, 2
.LBB3_48:                               # %_ZNK9benchmark5State10iterationsEv.exit
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 8
	bgeu	$a2, $a1, .LBB3_55
# %bb.49:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$fp, $a0, 8
	st.d	$s1, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 112
.Ltmp52:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.50:                               # %.noexc57
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %pc_hi20(.L.str.53)
	vld	$vr0, $a2, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp55:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.51:                               # %_ZN9benchmark5State17SetBytesProcessedEl.exit
	mul.d	$a1, $s2, $fp
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$a2, $sp, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1024
	st.d	$a1, $a0, 8
	beq	$a2, $s1, .LBB3_53
# %bb.52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63
	ld.d	$a1, $sp, 80
.Ltmp58:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.54:                               # %_ZNSt3setIlSt4lessIlESaIlEED2Ev.exit65
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
.LBB3_55:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_56:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_57:
	move	$s2, $zero
	b	.LBB3_41
.LBB3_58:
	move	$s2, $zero
	b	.LBB3_48
.LBB3_59:
.Ltmp60:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_60:
.Ltmp57:                                # EH_LABEL
	b	.LBB3_63
.LBB3_61:
.Ltmp54:                                # EH_LABEL
	b	.LBB3_71
.LBB3_62:
.Ltmp51:                                # EH_LABEL
.LBB3_63:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s1, .LBB3_72
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt3setIlSt4lessIlESaIlEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_65:
.Ltmp48:                                # EH_LABEL
	b	.LBB3_71
.LBB3_66:
.Ltmp45:                                # EH_LABEL
	b	.LBB3_71
.LBB3_67:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_68:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_69:
.Ltmp39:                                # EH_LABEL
	b	.LBB3_71
.LBB3_70:
.Ltmp42:                                # EH_LABEL
.LBB3_71:                               # %.body
	move	$fp, $a0
.LBB3_72:                               # %.body
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt3setIlSt4lessIlESaIlEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_73:                               # %.body50
.Ltmp30:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt3setIlSt4lessIlESaIlEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt3setIlSt4lessIlESaIlEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL12BM_SetInsertRN9benchmark5StateE, .Lfunc_end3-_ZL12BM_SetInsertRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp26-.Ltmp29                #   Call between .Ltmp29 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin2          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin2          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp58-.Ltmp56                #   Call between .Ltmp56 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 19 <<
	.uleb128 .Lfunc_end3-.Ltmp59            #   Call between .Ltmp59 and .Lfunc_end3
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
	.p2align	5                               # -- Begin function _ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE
	.type	_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE,@function
_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE: # @_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	move	$s8, $a0
	ld.w	$fp, $a0, 28
	ld.d	$s3, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB4_19
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s3, .LBB4_19
# %bb.2:
	addi.w	$a0, $zero, -4
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 1
	addi.w	$a0, $zero, -1
	lu52i.d	$s6, $a0, 511
	ori	$s7, $zero, 42
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	ld.d	$a1, $s8, 40
	ld.d	$a0, $s8, 32
	beq	$a1, $a0, .LBB4_34
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit22
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $a0, 0
	addi.d	$s8, $a0, -1
	beqz	$s8, .LBB4_17
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	move	$s0, $zero
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	st.w	$s7, $a1, 0
	addi.d	$s8, $s8, -1
	addi.d	$a1, $a1, 4
	beqz	$s8, .LBB4_15
.LBB4_7:                                # %.lr.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$a1, $a0, .LBB4_6
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	sub.d	$s1, $a0, $s0
	beq	$s1, $s4, .LBB4_30
# %bb.9:                                # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB4_7 Depth=2
	srai.d	$a0, $s1, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp61:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.10:                               # %.noexc39
                                        #   in Loop: Header=BB4_7 Depth=2
	move	$s2, $a0
	stx.w	$s7, $a0, $s1
	blez	$s1, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_7 Depth=2
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_7 Depth=2
	beqz	$s0, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_7 Depth=2
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_14:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_7 Depth=2
	add.d	$a1, $s2, $s1
	alsl.d	$a0, $fp, $s2, 2
	move	$s0, $s2
	addi.d	$s8, $s8, -1
	addi.d	$a1, $a1, 4
	bnez	$s8, .LBB4_7
.LBB4_15:                               # %._crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	beqz	$s0, .LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_3 Depth=1
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_17:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	blez	$s3, .LBB4_32
# %bb.18:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s3, $s3, -1
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	bnez	$s3, .LBB4_3
.LBB4_19:                               # %._crit_edge78
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 24
	beqz	$a0, .LBB4_33
# %bb.20:
	ld.d	$a0, $s8, 16
	ld.d	$a1, $s8, 0
	ld.d	$a2, $s8, 8
	sub.d	$a0, $a0, $a1
	add.d	$s1, $a0, $a2
	ld.d	$a1, $s8, 40
	ld.d	$a0, $s8, 32
	beq	$a1, $a0, .LBB4_34
.LBB4_21:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$s2, $a0, 0
	addi.d	$s0, $sp, 32
	st.d	$s0, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 48
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.22:                               # %.noexc
	ld.d	$a1, $sp, 48
	pcalau12i	$a2, %pc_hi20(.L.str.52)
	vld	$vr0, $a2, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	addi.d	$fp, $s8, 64
.Ltmp70:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.23:                               # %_ZN9benchmark5State17SetItemsProcessedEl.exit
	mul.d	$s1, $s2, $s1
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$a2, $sp, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1000
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB4_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
	st.d	$s0, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 48
.Ltmp73:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.26:                               # %.noexc29
	ld.d	$a1, $sp, 48
	pcalau12i	$a2, %pc_hi20(.L.str.53)
	vld	$vr0, $a2, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp76:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.27:                               # %_ZN9benchmark5State17SetBytesProcessedEl.exit
	slli.d	$a1, $s1, 2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$a2, $sp, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1024
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB4_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
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
.LBB4_30:
.Ltmp64:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.31:                               # %.noexc38
.LBB4_32:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB4_33:
	move	$s1, $zero
	ld.d	$a1, $s8, 40
	ld.d	$a0, $s8, 32
	bne	$a1, $a0, .LBB4_21
.LBB4_34:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB4_35:
.Ltmp78:                                # EH_LABEL
	b	.LBB4_38
.LBB4_36:
.Ltmp75:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB4_46
.LBB4_37:
.Ltmp72:                                # EH_LABEL
.LBB4_38:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s0, .LBB4_46
# %bb.39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB4_45
.LBB4_40:
.Ltmp69:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB4_46
.LBB4_41:                               # %.loopexit
.Ltmp63:                                # EH_LABEL
	b	.LBB4_43
.LBB4_42:                               # %.loopexit.split-lp
.Ltmp66:                                # EH_LABEL
.LBB4_43:
	beqz	$s0, .LBB4_47
# %bb.44:
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $s1
.LBB4_45:                               # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_46:                               # %common.resume
	move	$a0, $fp
.LBB4_47:                               # %common.resume
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE, .Lfunc_end4-_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp61-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin3          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp67-.Ltmp62                #   Call between .Ltmp62 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin3          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin3          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin3          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp64-.Ltmp77                #   Call between .Ltmp77 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin3          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Lfunc_end4-.Ltmp65            #   Call between .Ltmp65 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE
	.type	_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE,@function
_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE: # @_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB5_11
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB5_11
# %bb.2:
	addi.d	$s1, $sp, 8
	ori	$s2, $zero, 42
	.p2align	4, , 16
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #     Child Loop BB5_8 Depth 2
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	st.d	$s1, $sp, 16
	st.d	$s1, $sp, 8
	st.d	$zero, $sp, 24
	beq	$a1, $a0, .LBB5_24
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit22
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $a0, 0
	addi.d	$s3, $a0, -1
	beqz	$s3, .LBB5_9
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp79:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.6:                                # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB5_5 Depth=2
	st.w	$s2, $a0, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, -1
	st.d	$a0, $sp, 24
	bnez	$s3, .LBB5_5
# %bb.7:                                # %._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB5_9
	.p2align	4, , 16
.LBB5_8:                                # %.lr.ph.i.i
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	bne	$s3, $s1, .LBB5_8
.LBB5_9:                                # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	blez	$s0, .LBB5_22
# %bb.10:                               #   in Loop: Header=BB5_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB5_3
.LBB5_11:                               # %._crit_edge62
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB5_23
# %bb.12:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$s1, $a0, $a2
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB5_24
.LBB5_13:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$s2, $a0, 0
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 40
.Ltmp82:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.14:                               # %.noexc
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.52)
	vld	$vr0, $a2, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	addi.d	$fp, $fp, 64
.Ltmp85:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.15:                               # %_ZN9benchmark5State17SetItemsProcessedEl.exit
	mul.d	$s1, $s2, $s1
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$a2, $sp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1000
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB5_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
	st.d	$s0, $sp, 8
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 40
.Ltmp88:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.18:                               # %.noexc29
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.53)
	vld	$vr0, $a2, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
.Ltmp91:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.19:                               # %_ZN9benchmark5State17SetBytesProcessedEl.exit
	slli.d	$a1, $s1, 2
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$a2, $sp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1024
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB5_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB5_22:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB5_23:
	move	$s1, $zero
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	bne	$a1, $a0, .LBB5_13
.LBB5_24:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB5_25:
.Ltmp93:                                # EH_LABEL
	b	.LBB5_28
.LBB5_26:
.Ltmp90:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_27:
.Ltmp87:                                # EH_LABEL
.LBB5_28:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB5_34
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_30:
.Ltmp84:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_31:
.Ltmp81:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	addi.d	$s0, $sp, 8
	move	$fp, $a0
	beq	$a1, $s0, .LBB5_34
# %bb.32:                               # %.lr.ph.i.i39.preheader
	move	$a0, $a1
	.p2align	4, , 16
.LBB5_33:                               # %.lr.ph.i.i39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB5_33
.LBB5_34:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE, .Lfunc_end5-_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp79-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin4          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp82-.Ltmp80                #   Call between .Ltmp80 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin4          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin4          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp88-.Ltmp86                #   Call between .Ltmp86 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin4          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin4          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Lfunc_end5-.Ltmp92            #   Call between .Ltmp92 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL16BM_StringCompareRN9benchmark5StateE
	.type	_ZL16BM_StringCompareRN9benchmark5StateE,@function
_ZL16BM_StringCompareRN9benchmark5StateE: # @_ZL16BM_StringCompareRN9benchmark5StateE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	ld.d	$a1, $a0, 40
	ld.d	$a0, $a0, 32
	beq	$a1, $a0, .LBB6_18
# %bb.1:                                # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$s0, $a0, 0
	addi.d	$s1, $sp, 64
	st.d	$s1, $sp, 48
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 45
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
	addi.d	$s2, $sp, 32
	st.d	$s2, $sp, 16
.Ltmp94:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 45
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit26
	ld.w	$s3, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp97:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.3:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s3, .LBB6_11
# %bb.4:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB6_11
# %bb.5:
	lu12i.w	$s3, -524288
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4095
	addi.d	$s5, $sp, 12
	.p2align	4, , 16
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $sp, 56
	ld.d	$s7, $sp, 24
	sltu	$a0, $s7, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s7, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB6_8
# %bb.7:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_9
.LBB6_8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i
                                        #   in Loop: Header=BB6_6 Depth=1
	sub.d	$a0, $s6, $s7
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB6_9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	st.w	$a0, $sp, 12
	#APP
	#NO_APP
	blez	$s0, .LBB6_17
# %bb.10:                               # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB6_6
.LBB6_11:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp99:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.12:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB6_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	beq	$a0, $s1, .LBB6_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
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
.LBB6_17:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB6_18:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB6_19:
.Ltmp96:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB6_22
.LBB6_20:
.Ltmp101:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s2, .LBB6_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_22:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
	ld.d	$a0, $sp, 48
	beq	$a0, $s1, .LBB6_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZL16BM_StringCompareRN9benchmark5StateE, .Lfunc_end6-_ZL16BM_StringCompareRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp94-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin5          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp101-.Lfunc_begin5         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin5         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Lfunc_end6-.Ltmp100           #   Call between .Ltmp100 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL16BM_SetupTeardownRN9benchmark5StateE
	.type	_ZL16BM_SetupTeardownRN9benchmark5StateE,@function
_ZL16BM_SetupTeardownRN9benchmark5StateE: # @_ZL16BM_SetupTeardownRN9benchmark5StateE
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
	move	$s0, $a0
	ld.w	$a0, $a0, 144
	pcalau12i	$s4, %pc_hi20(_ZN12_GLOBAL__N_111test_vectorE)
	bnez	$a0, .LBB7_2
# %bb.1:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.d	$a0, $s4, %pc_lo12(_ZN12_GLOBAL__N_111test_vectorE)
.LBB7_2:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	ld.w	$fp, $s0, 28
	ld.d	$s5, $s0, 16
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB7_20
# %bb.3:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s5, .LBB7_20
# %bb.4:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_114test_vector_muE)
	addi.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_114test_vector_muE)
	move	$s6, $zero
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$fp, $a0, 511
	.p2align	4, , 16
.LBB7_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_26
# %bb.6:                                # %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s7, $s4, %pc_lo12(_ZN12_GLOBAL__N_111test_vectorE)
	ld.d	$a0, $s7, 8
	andi	$a1, $s6, 1
	bnez	$a1, .LBB7_9
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB7_12
# %bb.8:                                #   in Loop: Header=BB7_5 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a0, $a0, -4
.LBB7_10:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	st.d	$a0, $s7, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB7_19
.LBB7_11:                               # %_ZN9benchmark5State13StateIteratorppEv.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 1
	bnez	$s5, .LBB7_5
	b	.LBB7_20
.LBB7_12:                               #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s2, $s7, 0
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB7_27
# %bb.13:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB7_5 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s8, $a1, $a0
	slli.d	$a0, $s8, 2
.Ltmp102:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.14:                               # %.noexc16
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$s3, $a0
	stx.w	$s6, $a0, $s1
	blez	$s1, .LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_5 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB7_5 Depth=1
	beqz	$s2, .LBB7_18
# %bb.17:                               #   in Loop: Header=BB7_5 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_18:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB7_5 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s8, $s3, 2
	st.d	$a0, $s7, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	bgtz	$s5, .LBB7_11
.LBB7_19:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB7_20:                               # %._crit_edge
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 144
	beqz	$a0, .LBB7_22
.LBB7_21:
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
.LBB7_22:
	ld.d	$fp, $s4, %pc_lo12(_ZN12_GLOBAL__N_111test_vectorE)
	beqz	$fp, .LBB7_21
# %bb.23:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB7_25
# %bb.24:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_25:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ori	$a1, $zero, 24
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB7_26:
	pcaddu18i	$ra, %call36(_ZSt20__throw_system_errori)
	jirl	$ra, $ra, 0
.LBB7_27:
.Ltmp105:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.28:                               # %.noexc
.LBB7_29:                               # %.loopexit
.Ltmp104:                               # EH_LABEL
	b	.LBB7_31
.LBB7_30:                               # %.loopexit.split-lp
.Ltmp107:                               # EH_LABEL
.LBB7_31:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_114test_vector_muE)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_114test_vector_muE)
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZL16BM_SetupTeardownRN9benchmark5StateE, .Lfunc_end7-_ZL16BM_SetupTeardownRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp102-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin6         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp105-.Ltmp103              #   Call between .Ltmp103 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin6         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Lfunc_end7-.Ltmp106           #   Call between .Ltmp106 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL11BM_LongTestRN9benchmark5StateE
	.type	_ZL11BM_LongTestRN9benchmark5StateE,@function
_ZL11BM_LongTestRN9benchmark5StateE:    # @_ZL11BM_LongTestRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	st.d	$zero, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB8_10
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB8_10
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 32
	addi.d	$a0, $sp, 8
	.p2align	4, , 16
.LBB8_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	beq	$a1, $a2, .LBB8_11
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a3, $a2, 0
	blez	$a3, .LBB8_8
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	.p2align	4, , 16
.LBB8_6:                                # %.lr.ph
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $sp, 8
	bstrpick.d	$a1, $a3, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 8
	#APP
	#NO_APP
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 32
	beq	$a1, $a2, .LBB8_11
# %bb.7:                                # %_ZNK9benchmark5State5rangeEm.exit
                                        #   in Loop: Header=BB8_6 Depth=2
	ld.d	$a5, $a2, 0
	addi.d	$a4, $a4, 1
	addi.w	$a3, $a3, 1
	blt	$a4, $a5, .LBB8_6
.LBB8_8:                                # %_ZN9benchmark5State13StateIteratorppEv.exit
                                        #   in Loop: Header=BB8_3 Depth=1
	blez	$s0, .LBB8_12
# %bb.9:                                #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB8_3
.LBB8_10:                               # %._crit_edge25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_11:                               # %.preheader._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB8_12:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZL11BM_LongTestRN9benchmark5StateE, .Lfunc_end8-_ZL11BM_LongTestRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL17BM_ParallelMemsetRN9benchmark5StateE
	.type	_ZL17BM_ParallelMemsetRN9benchmark5StateE,@function
_ZL17BM_ParallelMemsetRN9benchmark5StateE: # @_ZL17BM_ParallelMemsetRN9benchmark5StateE
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
	ld.d	$a1, $a0, 40
	ld.d	$a0, $a0, 32
	beq	$a1, $a0, .LBB9_26
# %bb.1:                                # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$s5, $a0, 0
	srai.d	$a0, $s5, 63
	ld.w	$s2, $fp, 144
	ld.w	$s3, $fp, 148
	srli.d	$a0, $a0, 62
	add.d	$a0, $s5, $a0
	srai.d	$s4, $a0, 2
	bnez	$s2, .LBB9_8
# %bb.2:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	srli.d	$a1, $s4, 61
	move	$s0, $a0
	bnez	$a1, .LBB9_27
# %bb.3:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s1, $zero
	st.d	$zero, $s0, 16
	vrepli.b	$vr0, 0
	addi.d	$a0, $s5, 3
	ori	$a1, $zero, 7
	vst	$vr0, $s0, 0
	bltu	$a0, $a1, .LBB9_7
# %bb.4:
	slli.d	$a0, $s4, 2
.Ltmp108:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.5:                                # %.noexc30
	st.d	$a0, $s0, 0
	alsl.d	$a1, $s4, $a0, 2
	st.d	$a1, $s0, 16
	st.w	$zero, $a0, 0
	addi.d	$s5, $s4, -1
	addi.d	$s1, $a0, 4
	beqz	$s5, .LBB9_7
# %bb.6:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	slli.d	$a2, $s5, 2
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s1, $s5, $s1, 2
.LBB9_7:                                # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
	st.d	$s1, $s0, 8
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_111test_vectorE)
	st.d	$s0, $a0, %pc_lo12(_ZN12_GLOBAL__N_111test_vectorE)
.LBB9_8:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB9_18
# %bb.9:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB9_18
# %bb.10:                               # %.preheader.lr.ph
	addi.w	$a0, $s4, 0
	div.w	$a1, $a0, $s3
	blez	$a1, .LBB9_17
# %bb.11:                               # %.preheader.us.preheader
	mul.w	$a0, $s2, $a1
	add.w	$a3, $a0, $a1
	slli.d	$a4, $a0, 2
	pcalau12i	$a5, %pc_hi20(_ZN12_GLOBAL__N_111test_vectorE)
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB9_12:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
	move	$a7, $a4
	move	$a1, $a0
	.p2align	4, , 16
.LBB9_13:                               #   Parent Loop BB9_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a5, %pc_lo12(_ZN12_GLOBAL__N_111test_vectorE)
	ld.d	$t1, $a2, 8
	ld.d	$t0, $a2, 0
	sub.d	$a2, $t1, $t0
	srai.d	$a2, $a2, 2
	bgeu	$a1, $a2, .LBB9_24
# %bb.14:                               # %_ZNSt6vectorIiSaIiEE2atEm.exit.us
                                        #   in Loop: Header=BB9_13 Depth=2
	add.d	$a2, $t0, $a7
	stx.w	$a6, $t0, $a7
	#APP
	#NO_APP
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 4
	blt	$a1, $a3, .LBB9_13
# %bb.15:                               # %._crit_edge.us
                                        #   in Loop: Header=BB9_12 Depth=1
	blez	$s0, .LBB9_25
# %bb.16:                               #   in Loop: Header=BB9_12 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB9_12
	b	.LBB9_18
.LBB9_17:                               # %.preheader.preheader
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB9_25
.LBB9_18:                               # %._crit_edge42
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 144
	beqz	$a0, .LBB9_20
.LBB9_19:
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
.LBB9_20:
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_111test_vectorE)
	ld.d	$fp, $a0, %pc_lo12(_ZN12_GLOBAL__N_111test_vectorE)
	beqz	$fp, .LBB9_19
# %bb.21:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB9_23
# %bb.22:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_23:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ori	$a1, $zero, 24
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB9_24:                               # %.split44.us
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.LBB9_25:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB9_26:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB9_27:
.Ltmp110:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.28:                               # %.noexc
.LBB9_29:
.Ltmp112:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZL17BM_ParallelMemsetRN9benchmark5StateE, .Lfunc_end9-_ZL17BM_ParallelMemsetRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp108-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp112-.Lfunc_begin7         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin7         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp111           #   Call between .Ltmp111 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL15BM_ManualTimingRN9benchmark5StateE
.LCPI10_0:
	.dword	0x408f400000000000              # double 1000
.LCPI10_1:
	.dword	0x41cdcd6500000000              # double 1.0E+9
	.text
	.p2align	5
	.type	_ZL15BM_ManualTimingRN9benchmark5StateE,@function
_ZL15BM_ManualTimingRN9benchmark5StateE: # @_ZL15BM_ManualTimingRN9benchmark5StateE
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	move	$fp, $a0
	ld.d	$a1, $a0, 40
	ld.d	$a0, $a0, 32
	beq	$a1, $a0, .LBB10_18
# %bb.1:                                # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$s2, $a0, 0
	ld.w	$s0, $fp, 28
	ld.d	$s3, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	bnez	$s0, .LBB10_13
# %bb.2:                                # %_ZNK9benchmark5State5rangeEm.exit
	beqz	$s3, .LBB10_13
# %bb.3:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI10_0)
	movgr2fr.d	$fa1, $s2
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	blez	$a0, .LBB10_10
# %bb.4:                                # %.lr.ph.split.preheader
	move	$s1, $zero
	srli.d	$a1, $a0, 9
	lu12i.w	$a2, -390731
	ori	$a2, $a2, 2643
	lu32i.d	$a2, 309295
	lu52i.d	$a2, $a2, 4
	mulh.du	$a1, $a1, $a2
	srli.d	$s4, $a1, 11
	lu12i.w	$a1, -244141
	ori	$a1, $a1, 1536
	mul.d	$a1, $s4, $a1
	pcalau12i	$a2, %pc_hi20(.LCPI10_1)
	fld.d	$fs0, $a2, %pc_lo12(.LCPI10_1)
	add.d	$s5, $a1, $a0
	addi.w	$s6, $zero, -1
	ori	$s7, $zero, 4
	.p2align	4, , 16
.LBB10_5:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212system_clock3nowEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s4, $sp, 16
	st.d	$s5, $sp, 24
	.p2align	4, , 16
.LBB10_6:                               #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(nanosleep)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB10_8
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=2
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	beq	$a0, $s7, .LBB10_6
.LBB10_8:                               # %.critedge.i
                                        #   in Loop: Header=BB10_5 Depth=1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212system_clock3nowEv)
	jirl	$ra, $ra, 0
	sub.d	$a0, $a0, $s0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB10_17
# %bb.9:                                # %_ZN9benchmark5State13StateIteratorppEv.exit
                                        #   in Loop: Header=BB10_5 Depth=1
	addi.d	$s3, $s3, -1
	add.d	$s1, $s1, $s2
	bnez	$s3, .LBB10_5
	b	.LBB10_13
.LBB10_10:                              # %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI10_1)
	move	$s1, $zero
	.p2align	4, , 16
.LBB10_11:                              # %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212system_clock3nowEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212system_clock3nowEv)
	jirl	$ra, $ra, 0
	sub.d	$a0, $a0, $s0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB10_17
# %bb.12:                               # %_ZN9benchmark5State13StateIteratorppEv.exit.us
                                        #   in Loop: Header=BB10_11 Depth=1
	addi.d	$s3, $s3, -1
	add.d	$s1, $s1, $s2
	bnez	$s3, .LBB10_11
.LBB10_13:                              # %.noexc.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 32
	st.d	$s0, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 48
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	pcalau12i	$a2, %pc_hi20(.L.str.52)
	vld	$vr0, $a2, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $fp, 64
.Ltmp113:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.14:                               # %_ZN9benchmark5State17SetItemsProcessedEl.exit
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$a2, $sp, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1000
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB10_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_16:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
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
.LBB10_17:                              # %.split.us
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB10_18:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB10_19:
.Ltmp115:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s0, .LBB10_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZL15BM_ManualTimingRN9benchmark5StateE, .Lfunc_end10-_ZL15BM_ManualTimingRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp113-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin8         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp114          #   Call between .Ltmp114 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_Z20BM_non_template_argsRN9benchmark5StateEid # -- Begin function _Z20BM_non_template_argsRN9benchmark5StateEid
	.globl	_Z20BM_non_template_argsRN9benchmark5StateEid
	.p2align	5
	.type	_Z20BM_non_template_argsRN9benchmark5StateEid,@function
_Z20BM_non_template_argsRN9benchmark5StateEid: # @_Z20BM_non_template_argsRN9benchmark5StateEid
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %_ZN9benchmark5State19KeepRunningInternalElb.exit
                                        #   in Loop: Header=BB11_2 Depth=1
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	bgtz	$a0, .LBB11_1
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB11_6
# %bb.4:                                #   in Loop: Header=BB11_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB11_6
# %bb.5:                                #   in Loop: Header=BB11_2 Depth=1
	ld.d	$a0, $fp, 0
	bgtz	$a0, .LBB11_1
.LBB11_6:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end11:
	.size	_Z20BM_non_template_argsRN9benchmark5StateEid, .Lfunc_end11-_Z20BM_non_template_argsRN9benchmark5StateEid
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL20BM_DenseThreadRangesRN9benchmark5StateE
	.type	_ZL20BM_DenseThreadRangesRN9benchmark5StateE,@function
_ZL20BM_DenseThreadRangesRN9benchmark5StateE: # @_ZL20BM_DenseThreadRangesRN9benchmark5StateE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 40
	ld.d	$a0, $a0, 32
	beq	$a1, $a0, .LBB12_18
# %bb.1:                                # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB12_9
# %bb.2:                                # %_ZNK9benchmark5State5rangeEm.exit
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB12_6
# %bb.3:                                # %_ZNK9benchmark5State5rangeEm.exit
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_19
# %bb.4:
	ld.w	$a0, $fp, 148
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB12_11
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB12_6:
	ld.w	$a0, $fp, 148
	addi.d	$a2, $a0, -3
	bltu	$a2, $a1, .LBB12_11
# %bb.7:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB12_11
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	ori	$a2, $zero, 263
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB12_9:
	ld.w	$a0, $fp, 148
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB12_20
# %bb.10:
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2336
	and	$a0, $a0, $a1
	beqz	$a0, .LBB12_20
.LBB12_11:                              # %.critedge
	ld.d	$a0, $fp, 0
	b	.LBB12_13
	.p2align	4, , 16
.LBB12_12:                              # %_ZN9benchmark5State19KeepRunningInternalElb.exit
                                        #   in Loop: Header=BB12_13 Depth=1
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
.LBB12_13:                              # =>This Inner Loop Header: Depth=1
	bgtz	$a0, .LBB12_12
# %bb.14:                               #   in Loop: Header=BB12_13 Depth=1
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB12_17
# %bb.15:                               #   in Loop: Header=BB12_13 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB12_17
# %bb.16:                               #   in Loop: Header=BB12_13 Depth=1
	ld.d	$a0, $fp, 0
	bgtz	$a0, .LBB12_12
.LBB12_17:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB12_18:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB12_19:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	ori	$a2, $zero, 270
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB12_20:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	ori	$a2, $zero, 266
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZL20BM_DenseThreadRangesRN9benchmark5StateE, .Lfunc_end12-_ZL20BM_DenseThreadRangesRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL16BM_BenchmarkNameRN9benchmark5StateE
	.type	_ZL16BM_BenchmarkNameRN9benchmark5StateE,@function
_ZL16BM_BenchmarkNameRN9benchmark5StateE: # @_ZL16BM_BenchmarkNameRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a0
	ld.w	$s1, $a0, 28
	ld.d	$fp, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB13_3
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$fp, .LBB13_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader
	srai.d	$a0, $fp, 63
	andn	$a0, $fp, $a0
	addi.d	$a1, $fp, -1
	bgeu	$a1, $a0, .LBB13_13
.LBB13_3:                               # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	ld.d	$fp, $s0, 120
	ld.d	$s0, $s0, 112
	st.d	$a0, $sp, 8
	ori	$a1, $zero, 16
	st.d	$fp, $sp, 40
	bltu	$fp, $a1, .LBB13_5
# %bb.4:                                # %.noexc.i
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
.LBB13_5:                               # %._crit_edge.i.i
	beqz	$fp, .LBB13_9
# %bb.6:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB13_8
# %bb.7:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB13_9
.LBB13_8:
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB13_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 16
	ori	$a1, $zero, 16
	bne	$a0, $a1, .LBB13_12
# %bb.10:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
	ld.d	$fp, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_12
# %bb.11:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB13_12:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread22
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE)
	ori	$a2, $zero, 284
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB13_13:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZL16BM_BenchmarkNameRN9benchmark5StateE, .Lfunc_end13-_ZL16BM_BenchmarkNameRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.hidden	main                            # -- Begin function main
	.globl	main
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
	bnez	$a1, .LBB14_2
# %bb.1:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 28
	addi.d	$fp, $sp, 8
.LBB14_2:
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
	bnez	$a1, .LBB14_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8ShutdownEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB14_4:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	main, .Lfunc_end14-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN12_GLOBAL__N_19FactorialEi
.LCPI15_0:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.word	4294967292                      # 0xfffffffc
	.word	4294967291                      # 0xfffffffb
	.word	4294967290                      # 0xfffffffa
	.word	4294967289                      # 0xfffffff9
.LCPI15_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.p2align	5
	.type	_ZN12_GLOBAL__N_19FactorialEi,@function
_ZN12_GLOBAL__N_19FactorialEi:          # @_ZN12_GLOBAL__N_19FactorialEi
# %bb.0:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB15_2
# %bb.1:                                # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI15_0)
	pcalau12i	$a1, %pc_hi20(.LCPI15_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI15_1)
	addi.d	$a1, $a0, -2
	xvreplgr2vr.w	$xr2, $a0
	xvadd.w	$xr0, $xr2, $xr0
	xvreplgr2vr.w	$xr2, $a1
	xvslt.wu	$xr1, $xr2, $xr1
	xvrepli.w	$xr2, 1
	xvbitsel.v	$xr0, $xr0, $xr2, $xr1
	xvpermi.d	$xr1, $xr0, 238
	xvshuf4i.w	$xr1, $xr1, 228
	xvmul.w	$xr0, $xr0, $xr1
	xvshuf4i.w	$xr1, $xr0, 14
	xvmul.w	$xr0, $xr0, $xr1
	xvrepl128vei.w	$xr1, $xr0, 1
	xvmul.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a1, $xr0, 0
.LBB15_2:                               # %tailrecurse._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end15:
	.size	_ZN12_GLOBAL__N_19FactorialEi, .Lfunc_end15-_ZN12_GLOBAL__N_19FactorialEi
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
.Lfunc_end16:
	.size	__clang_call_terminate, .Lfunc_end16-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt3setIlSt4lessIlESaIlEED2Ev,"axG",@progbits,_ZNSt3setIlSt4lessIlESaIlEED2Ev,comdat
	.hidden	_ZNSt3setIlSt4lessIlESaIlEED2Ev # -- Begin function _ZNSt3setIlSt4lessIlESaIlEED2Ev
	.weak	_ZNSt3setIlSt4lessIlESaIlEED2Ev
	.p2align	5
	.type	_ZNSt3setIlSt4lessIlESaIlEED2Ev,@function
_ZNSt3setIlSt4lessIlESaIlEED2Ev:        # @_ZNSt3setIlSt4lessIlESaIlEED2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB17_2:
.Ltmp118:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZNSt3setIlSt4lessIlESaIlEED2Ev, .Lfunc_end17-_ZNSt3setIlSt4lessIlESaIlEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3setIlSt4lessIlESaIlEED2Ev,"aG",@progbits,_ZNSt3setIlSt4lessIlESaIlEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp116-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin9         #     jumps to .Ltmp118
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp117-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end17-.Ltmp117          #   Call between .Ltmp117 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl,"axG",@progbits,_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl,comdat
	.weak	_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl # -- Begin function _ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl
	.p2align	5
	.type	_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl,@function
_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl: # @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl
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
	move	$a3, $a0
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB18_5
# %bb.1:
	move	$a0, $a1
	ld.d	$s0, $a2, 0
	ld.d	$a1, $a1, 32
	bge	$s0, $a1, .LBB18_8
# %bb.2:
	ld.d	$s1, $a3, 24
	beq	$s1, $a0, .LBB18_20
# %bb.3:
	move	$s3, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bge	$a1, $s0, .LBB18_21
# %bb.4:
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB18_36
.LBB18_5:
	ld.d	$a0, $a3, 40
	beqz	$a0, .LBB18_12
# %bb.6:
	ld.d	$a1, $a3, 32
	ld.d	$a0, $a1, 32
	ld.d	$a4, $a2, 0
	bge	$a0, $a4, .LBB18_12
.LBB18_7:
	move	$a0, $zero
	b	.LBB18_36
.LBB18_8:
	bge	$a1, $s0, .LBB18_19
# %bb.9:
	ld.d	$a1, $a3, 32
	beq	$a1, $a0, .LBB18_26
# %bb.10:
	move	$s1, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bge	$s0, $a1, .LBB18_27
# %bb.11:
	ld.d	$a1, $s2, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s2, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB18_36
.LBB18_12:
	ld.d	$a5, $a3, 16
	beqz	$a5, .LBB18_16
# %bb.13:                               # %.lr.ph.i
	ld.d	$a1, $a2, 0
	ori	$a0, $zero, 24
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB18_14:                              # =>This Inner Loop Header: Depth=1
	move	$fp, $a5
	ld.d	$a4, $a5, 32
	slt	$a5, $a1, $a4
	masknez	$a7, $a0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB18_14
# %bb.15:                               # %._crit_edge.i
	move	$a0, $fp
	bge	$a1, $a4, .LBB18_18
.LBB18_16:                              # %._crit_edge.thread.i
	ld.d	$a0, $a3, 24
	beq	$fp, $a0, .LBB18_35
# %bb.17:
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a4, $a0, 32
	ld.d	$a1, $s0, 0
.LBB18_18:
	slt	$a2, $a4, $a1
	b	.LBB18_34
.LBB18_19:
	move	$a1, $zero
	b	.LBB18_36
.LBB18_20:
	move	$a1, $a0
	b	.LBB18_36
.LBB18_21:
	ld.d	$a4, $s3, 16
	move	$a1, $s1
	beqz	$a4, .LBB18_25
# %bb.22:                               # %.lr.ph.i22.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB18_23:                              # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB18_23
# %bb.24:                               # %._crit_edge.i28
	move	$a0, $fp
	bge	$s0, $a2, .LBB18_33
.LBB18_25:                              # %._crit_edge.thread.i36
	bne	$fp, $a1, .LBB18_32
	b	.LBB18_7
.LBB18_26:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB18_36
.LBB18_27:
	move	$a1, $s1
	ld.d	$a4, $s1, 16
	beqz	$a4, .LBB18_31
# %bb.28:                               # %.lr.ph.i41.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB18_29:                              # %.lr.ph.i41
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB18_29
# %bb.30:                               # %._crit_edge.i47
	move	$a0, $fp
	bge	$s0, $a2, .LBB18_33
.LBB18_31:                              # %._crit_edge.thread.i55
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB18_35
.LBB18_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
.LBB18_33:
	slt	$a2, $a2, $s0
.LBB18_34:                              # %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE24_M_get_insert_unique_posERKl.exit
	maskeqz	$a1, $fp, $a2
	masknez	$a0, $a0, $a2
	b	.LBB18_36
.LBB18_35:
	move	$a0, $zero
	move	$a1, $fp
.LBB18_36:                              # %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE24_M_get_insert_unique_posERKl.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl, .Lfunc_end18-_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIlERKl
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE,"axG",@progbits,_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE,comdat
	.weak	_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE # -- Begin function _ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE
	.p2align	5
	.type	_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE,@function
_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE: # @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB19_4
# %bb.1:                                # %.lr.ph.preheader
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
	.p2align	4, , 16
.LBB19_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB19_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB19_4:                               # %._crit_edge
	ret
.Lfunc_end19:
	.size	_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE, .Lfunc_end19-_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,comdat
	.hidden	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.cfi_startproc
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
	move	$s0, $a0
	ld.d	$s7, $a0, 16
	move	$s8, $a1
	addi.d	$s2, $a0, 8
	beqz	$s7, .LBB20_11
# %bb.1:                                # %.lr.ph.i.i.i
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s6, $s8, 8
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s3, $s8, 0
	lu12i.w	$s5, -524288
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s0, $zero, 24
	move	$s1, $s2
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB20_4 Depth=1
	sub.d	$a0, $fp, $s6
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB20_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB20_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s7, .LBB20_6
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, 40
	sltu	$a0, $s6, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB20_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_3
	b	.LBB20_2
.LBB20_6:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	beq	$s1, $s2, .LBB20_11
# %bb.7:
	ld.d	$fp, $s1, 40
	sltu	$a0, $fp, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB20_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $s1, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_10
.LBB20_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s6, $fp
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB20_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	move	$s2, $s1
	bgez	$a0, .LBB20_12
.LBB20_11:                              # %.critedge
	st.d	$s8, $sp, 32
	pcalau12i	$a0, %pc_hi20(_ZSt19piecewise_construct)
	addi.d	$a2, $a0, %pc_lo12(_ZSt19piecewise_construct)
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 31
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB20_12:
	addi.d	$a0, $s1, 64
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
.Lfunc_end20:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_, .Lfunc_end20-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	move	$fp, $a3
	move	$s2, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 0
	move	$fp, $a0
	addi.d	$s3, $a0, 48
	st.d	$s3, $a0, 32
	ld.d	$a0, $s5, 0
	addi.d	$s4, $s5, 16
	addi.d	$s1, $fp, 32
	beq	$a0, $s4, .LBB21_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 16
	st.d	$a0, $s3, 0
	ld.d	$s6, $s5, 8
	b	.LBB21_3
.LBB21_2:
	ld.d	$s6, $s5, 8
	addi.d	$a2, $s6, 1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_3:
	st.d	$s6, $fp, 40
	st.d	$s4, $s5, 0
	st.d	$zero, $s5, 8
	st.b	$zero, $s5, 16
	st.d	$zero, $fp, 64
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1000
	st.d	$a0, $fp, 72
	st.d	$fp, $sp, 16
.Ltmp119:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.4:
	move	$a2, $a0
	move	$s2, $a1
	beqz	$a1, .LBB21_12
# %bb.5:
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB21_11
# %bb.6:
	beq	$a3, $s2, .LBB21_11
# %bb.7:
	ld.d	$s3, $fp, 40
	ld.d	$s4, $s2, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB21_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s1, 0
	move	$s1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	bnez	$a0, .LBB21_10
.LBB21_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s3, $s4
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB21_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB21_11:                              # %.thread
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB21_15
.LBB21_12:
	move	$s0, $a2
	ld.d	$a0, $s1, 0
	beq	$a0, $s3, .LBB21_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_14:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB21_15:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit
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
.LBB21_16:
.Ltmp121:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, .Lfunc_end21-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp119-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp119
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin10        #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp120          #   Call between .Ltmp120 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
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
	move	$s1, $a0
	addi.d	$a0, $a0, 8
	move	$s0, $a2
	beq	$a0, $a1, .LBB22_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB22_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB22_12
	b	.LBB22_15
.LBB22_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB22_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB22_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB22_8
.LBB22_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $fp, $s2
	lu12i.w	$a2, -524288
	slt	$a3, $a2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
.LBB22_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB22_27
# %bb.9:
	move	$fp, $zero
	b	.LBB22_28
.LBB22_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB22_21
	b	.LBB22_15
.LBB22_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB22_15
.LBB22_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB22_22
.LBB22_14:
	move	$a1, $zero
	b	.LBB22_28
.LBB22_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB22_29
# %bb.16:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s5, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB22_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_19
.LBB22_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
	sub.d	$a0, $s3, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB22_19:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB22_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB22_28
.LBB22_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
	sub.d	$a0, $s6, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB22_14
.LBB22_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB22_30
# %bb.23:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB22_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_26
.LBB22_25:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
	sub.d	$a0, $s5, $s3
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB22_26:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB22_31
.LBB22_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB22_28:
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
	ret
.LBB22_29:
	move	$a1, $fp
	b	.LBB22_28
.LBB22_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB22_28
.LBB22_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB22_28
.Lfunc_end22:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end22-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB23_4
# %bb.1:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB23_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_3:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
	ori	$a1, $zero, 80
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB23_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end23:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, .Lfunc_end23-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
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
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	move	$s0, $a1
	lu12i.w	$s4, -524288
	lu12i.w	$s3, 524287
	beqz	$a0, .LBB24_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB24_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB24_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB24_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB24_6
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB24_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB24_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB24_3
	b	.LBB24_2
.LBB24_6:                               # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB24_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB24_14
.LBB24_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB24_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB24_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB24_12
.LBB24_11:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
	sub.d	$a0, $s1, $s5
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	ori	$a1, $s3, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB24_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB24_15
.LBB24_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB24_8
.LBB24_14:
	move	$a0, $zero
.LBB24_15:
	move	$a1, $fp
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
.Lfunc_end24:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end24-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN3$_08__invokeERN9benchmark5StateE
	.type	_ZN3$_08__invokeERN9benchmark5StateE,@function
_ZN3$_08__invokeERN9benchmark5StateE:   # @"_ZN3$_08__invokeERN9benchmark5StateE"
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB25_3
# %bb.1:
	beqz	$s0, .LBB25_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB25_4
.LBB25_3:                               # %"_ZNK3$_0clERN9benchmark5StateE.exit"
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB25_4:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN3$_08__invokeERN9benchmark5StateE, .Lfunc_end25-_ZN3$_08__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_18__invokeERN9benchmark5StateE
	.type	_ZN3$_18__invokeERN9benchmark5StateE,@function
_ZN3$_18__invokeERN9benchmark5StateE:   # @"_ZN3$_18__invokeERN9benchmark5StateE"
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
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ld.h	$a1, $a0, 0
	ld.b	$a0, $a0, 2
	st.h	$a1, $sp, 24
	st.b	$a0, $sp, 26
	ld.w	$s2, $fp, 28
	ld.d	$s1, $fp, 16
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 27
.Ltmp122:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.1:                                # %.noexc5.i
	bnez	$s2, .LBB26_4
# %bb.2:                                # %.noexc5.i
	beqz	$s1, .LBB26_4
# %bb.3:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
	srai.d	$a0, $s1, 63
	andn	$a0, $s1, $a0
	addi.d	$a1, $s1, -1
	bgeu	$a1, $a0, .LBB26_8
.LBB26_4:                               # %._crit_edge.i.i
.Ltmp124:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.5:                                # %_Z12BM_with_argsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIidEEEvRN9benchmark5StateEDpOT_.exit.i
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB26_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB26_7:                               # %"_ZNK3$_1clERN9benchmark5StateE.exit"
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB26_8:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB26_9:
.Ltmp126:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB26_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB26_11:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN3$_18__invokeERN9benchmark5StateE, .Lfunc_end26-_ZN3$_18__invokeERN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table26:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp122-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp125-.Ltmp122              #   Call between .Ltmp122 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin11        #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end26-.Ltmp125          #   Call between .Ltmp125 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN3$_28__invokeERN9benchmark5StateE
	.type	_ZN3$_28__invokeERN9benchmark5StateE,@function
_ZN3$_28__invokeERN9benchmark5StateE:   # @"_ZN3$_28__invokeERN9benchmark5StateE"
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	b	.LBB27_2
	.p2align	4, , 16
.LBB27_1:                               # %_ZN9benchmark5State19KeepRunningInternalElb.exit.i.i
                                        #   in Loop: Header=BB27_2 Depth=1
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	bgtz	$a0, .LBB27_1
# %bb.3:                                #   in Loop: Header=BB27_2 Depth=1
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB27_6
# %bb.4:                                #   in Loop: Header=BB27_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB27_6
# %bb.5:                                #   in Loop: Header=BB27_2 Depth=1
	ld.d	$a0, $fp, 0
	bgtz	$a0, .LBB27_1
.LBB27_6:                               # %"_ZNK3$_2clERN9benchmark5StateE.exit"
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end27:
	.size	_ZN3$_28__invokeERN9benchmark5StateE, .Lfunc_end27-_ZN3$_28__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_38__invokeERN9benchmark5StateE
	.type	_ZN3$_38__invokeERN9benchmark5StateE,@function
_ZN3$_38__invokeERN9benchmark5StateE:   # @"_ZN3$_38__invokeERN9benchmark5StateE"
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB28_3
# %bb.1:
	beqz	$s0, .LBB28_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB28_4
.LBB28_3:                               # %"_ZNK3$_3clERN9benchmark5StateE.exit"
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB28_4:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN3$_38__invokeERN9benchmark5StateE, .Lfunc_end28-_ZN3$_38__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_48__invokeERN9benchmark5StateE
	.type	_ZN3$_48__invokeERN9benchmark5StateE,@function
_ZN3$_48__invokeERN9benchmark5StateE:   # @"_ZN3$_48__invokeERN9benchmark5StateE"
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB29_3
# %bb.1:
	beqz	$s0, .LBB29_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB29_4
.LBB29_3:                               # %"_ZNK3$_4clERN9benchmark5StateE.exit"
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB29_4:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZN3$_48__invokeERN9benchmark5StateE, .Lfunc_end29-_ZN3$_48__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_58__invokeERN9benchmark5StateE
	.type	_ZN3$_58__invokeERN9benchmark5StateE,@function
_ZN3$_58__invokeERN9benchmark5StateE:   # @"_ZN3$_58__invokeERN9benchmark5StateE"
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB30_3
# %bb.1:
	beqz	$s0, .LBB30_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB30_4
.LBB30_3:                               # %"_ZNK3$_5clERN9benchmark5StateE.exit"
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB30_4:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN3$_58__invokeERN9benchmark5StateE, .Lfunc_end30-_ZN3$_58__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_68__invokeERN9benchmark5StateE
	.type	_ZN3$_68__invokeERN9benchmark5StateE,@function
_ZN3$_68__invokeERN9benchmark5StateE:   # @"_ZN3$_68__invokeERN9benchmark5StateE"
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB31_3
# %bb.1:
	beqz	$s0, .LBB31_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader.i.i
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB31_4
.LBB31_3:                               # %"_ZNK3$_6clERN9benchmark5StateE.exit"
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB31_4:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN3$_68__invokeERN9benchmark5StateE, .Lfunc_end31-_ZN3$_68__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE
	.type	_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE,@function
_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE: # @_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB32_5
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB32_5
# %bb.2:
	vrepli.b	$vr0, 0
	addi.d	$a0, $sp, 0
	.p2align	4, , 16
.LBB32_3:                               # %_ZN9benchmark5State13StateIteratorppEv.exit
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $sp, 0
	#APP
	#NO_APP
	blez	$s0, .LBB32_6
# %bb.4:                                #   in Loop: Header=BB32_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB32_3
.LBB32_5:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB32_6:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE, .Lfunc_end32-_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _GLOBAL__sub_I_benchmark_test.cc
.LCPI33_0:
	.dword	1024                            # 0x400
	.dword	8192                            # 0x2000
	.dword	128                             # 0x80
	.dword	512                             # 0x200
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_benchmark_test.cc,@function
_GLOBAL__sub_I_benchmark_test.cc:       # @_GLOBAL__sub_I_benchmark_test.cc
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s1, $sp, 56
	st.d	$s1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$s3, $a0, 0
	ld.w	$s4, $a0, 8
	st.d	$s3, $sp, 56
	st.w	$s4, $sp, 64
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 68
	ori	$s6, $zero, 1
.Ltmp127:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL12BM_FactorialRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_ZL12BM_FactorialRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp129:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_4:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	st.d	$s3, $sp, 56
	st.w	$s4, $sp, 64
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 68
	ori	$s3, $zero, 1
.Ltmp132:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.5:
	st.d	$s2, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp134:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.6:
.Ltmp136:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.7:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_9:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 16
.Ltmp139:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.10:                               # %.noexc.i
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp142:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.11:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_CalculatePiRangeRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_CalculatePiRangeRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp144:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.12:
.Ltmp146:                               # EH_LABEL
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.13:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_15:                              # %__cxx_global_var_init.3.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.d	$s3, $a0, 0
	ld.d	$s4, $a0, 6
	st.d	$s3, $sp, 56
	st.d	$s4, $sp, 62
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 70
	ori	$s6, $zero, 1
.Ltmp149:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.16:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL14BM_CalculatePiRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_ZL14BM_CalculatePiRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp151:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.17:
.Ltmp153:                               # EH_LABEL
	ori	$a1, $zero, 8
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.18:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_20:                              # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	st.d	$s3, $sp, 56
	st.d	$s4, $sp, 62
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 70
	ori	$s6, $zero, 1
.Ltmp156:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.21:
	st.d	$s2, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp158:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.22:
.Ltmp160:                               # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 32
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11ThreadRangeEii)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.23:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_25:                              # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	st.d	$s3, $sp, 56
	st.d	$s4, $sp, 62
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 70
	ori	$s3, $zero, 1
.Ltmp163:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.26:
	st.d	$s2, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp165:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.27:
.Ltmp167:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.28:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_30:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 8
	st.d	$a1, $sp, 56
	st.w	$a0, $sp, 64
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 68
	ori	$s3, $zero, 1
.Ltmp170:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.31:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL12BM_SetInsertRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL12BM_SetInsertRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp172:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.32:
.Ltmp175:                               # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.33:
	pcalau12i	$a1, %pc_hi20(.LCPI33_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI33_0)
	st.d	$a0, $sp, 16
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 32
	xvst	$xr0, $a0, 0
	st.d	$a1, $sp, 24
.Ltmp178:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.34:
	move	$fp, $a0
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB33_36
# %bb.35:
	ld.d	$a1, $sp, 32
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_36:                              # %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_38:                              # %__cxx_global_var_init.9.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 35
	st.d	$a0, $sp, 16
.Ltmp181:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.39:                               # %.noexc.i31
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$a2, $a2, %pc_lo12(.L.str.12)
	xvld	$xr0, $a2, 0
	ld.w	$a2, $a2, 31
	xvst	$xr0, $a0, 0
	st.w	$a2, $a0, 31
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s4, $zero, 1
.Ltmp184:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.40:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE)
	addi.d	$s3, $a0, %pc_lo12(_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE)
	st.d	$s3, $s0, 224
.Ltmp186:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.41:
.Ltmp188:                               # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1024
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.42:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_44
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_44:                              # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(_ZL29benchmark_uniq_9BM_Sequential)
	st.d	$fp, $a0, %pc_lo12(_ZL29benchmark_uniq_9BM_Sequential)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 16
.Ltmp191:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.45:                               # %.noexc.i40
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$a2, $a2, %pc_lo12(.L.str.14)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 21
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 21
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s4, $zero, 1
.Ltmp194:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.46:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp196:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.47:
.Ltmp198:                               # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1024
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.48:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_50:                              # %__cxx_global_var_init.13.exit
	pcalau12i	$a0, %pc_hi20(_ZL30benchmark_uniq_10BM_Sequential)
	st.d	$fp, $a0, %pc_lo12(_ZL30benchmark_uniq_10BM_Sequential)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 36
	st.d	$a0, $sp, 16
.Ltmp201:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.51:                               # %.noexc.i49
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	xvld	$xr0, $a2, 0
	ld.w	$a2, $a2, 32
	xvst	$xr0, $a0, 0
	st.w	$a2, $a0, 32
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s4, $zero, 1
.Ltmp204:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.52:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp206:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.53:
.Ltmp208:                               # EH_LABEL
	ori	$a1, $zero, 512
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.54:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_56:                              # %__cxx_global_var_init.15.exit
	pcalau12i	$a0, %pc_hi20(_ZL30benchmark_uniq_11BM_Sequential)
	st.d	$fp, $a0, %pc_lo12(_ZL30benchmark_uniq_11BM_Sequential)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 16
.Ltmp211:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.57:                               # %.noexc.i58
	ld.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.18)
	vld	$vr0, $a2, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp214:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.58:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_StringCompareRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_StringCompareRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp216:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.59:
.Ltmp218:                               # EH_LABEL
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.60:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_62
# %bb.61:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_62:                              # %__cxx_global_var_init.17.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_12_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_12_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 16
.Ltmp221:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.63:                               # %.noexc.i67
	ld.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.20)
	vld	$vr0, $a2, %pc_lo12(.L.str.20)
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp224:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.64:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_SetupTeardownRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_SetupTeardownRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp226:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.65:
.Ltmp228:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.66:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_68
# %bb.67:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_68:                              # %__cxx_global_var_init.19.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_13_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_13_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 7
	st.d	$a1, $sp, 56
	st.w	$a0, $sp, 63
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 67
	ori	$s3, $zero, 1
.Ltmp231:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.69:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL11BM_LongTestRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL11BM_LongTestRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp233:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.70:
.Ltmp235:                               # EH_LABEL
	lu12i.w	$a1, 16
	lu12i.w	$a2, 65536
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.71:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_73
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_73:                              # %__cxx_global_var_init.21.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_14_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_14_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp238:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp239:                               # EH_LABEL
# %bb.74:                               # %.noexc.i81
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.24)
	addi.d	$a2, $a2, %pc_lo12(.L.str.24)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp241:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.75:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL17BM_ParallelMemsetRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL17BM_ParallelMemsetRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp243:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.76:
.Ltmp245:                               # EH_LABEL
	lu12i.w	$a1, 2560
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.77:
.Ltmp247:                               # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11ThreadRangeEii)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.78:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_80
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_80:                              # %__cxx_global_var_init.23.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_15_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_15_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ld.d	$s3, $a0, 0
	ld.d	$s4, $a0, 7
	st.d	$s3, $sp, 56
	st.d	$s4, $sp, 63
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 71
	ori	$s6, $zero, 1
.Ltmp250:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.81:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL15BM_ManualTimingRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_ZL15BM_ManualTimingRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp252:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.82:
.Ltmp254:                               # EH_LABEL
	lu12i.w	$a2, 4
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
# %bb.83:
.Ltmp256:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.84:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_86
# %bb.85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_86:                              # %__cxx_global_var_init.25.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_16_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_16_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	st.d	$s3, $sp, 56
	st.d	$s4, $sp, 63
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 71
	ori	$s3, $zero, 1
.Ltmp259:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.87:
	st.d	$s2, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp261:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.88:
.Ltmp263:                               # EH_LABEL
	lu12i.w	$a2, 4
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.89:
.Ltmp265:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
# %bb.90:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_92
# %bb.91:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_92:                              # %__cxx_global_var_init.27.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_17_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_17_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 16
.Ltmp268:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.93:                               # %.noexc.i99
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a2, $a2, %pc_lo12(.L.str.29)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp271:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.94:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_08__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_08__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp273:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.95:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_97
# %bb.96:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_97:                              # %__cxx_global_var_init.28.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_18_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_18_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 33
	st.d	$a0, $sp, 16
.Ltmp276:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.98:                               # %.noexc.i108
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a2, $a2, %pc_lo12(.L.str.31)
	xvld	$xr0, $a2, 0
	ld.b	$a2, $a2, 32
	xvst	$xr0, $a0, 0
	st.b	$a2, $a0, 32
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp279:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.99:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_18__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_18__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp281:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp282:                               # EH_LABEL
# %bb.100:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_102:                             # %__cxx_global_var_init.30.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_19_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_19_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 31
	st.d	$a0, $sp, 16
.Ltmp284:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.103:                              # %.noexc.i117
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp287:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.104:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_28__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_28__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp289:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.105:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_107
# %bb.106:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_107:                             # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_20_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_20_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 36
	st.d	$a0, $sp, 16
.Ltmp292:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.108:                              # %.noexc.i126
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	xvld	$xr0, $a2, 0
	ld.w	$a2, $a2, 32
	xvst	$xr0, $a0, 0
	st.w	$a2, $a0, 32
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp295:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.109:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_38__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_38__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp297:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp298:                               # EH_LABEL
# %bb.110:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_112
# %bb.111:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_112:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL37benchmark_uniq_21BM_template2_capture)
	st.d	$fp, $a0, %pc_lo12(_ZL37benchmark_uniq_21BM_template2_capture)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 16
.Ltmp300:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.113:                              # %.noexc.i135
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	xvld	$xr0, $a2, 0
	ld.d	$a2, $a2, 31
	xvst	$xr0, $a0, 0
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp303:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.114:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_48__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_48__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp305:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.115:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_117
# %bb.116:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_117:                             # %__cxx_global_var_init.36.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_22_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_22_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 16
.Ltmp308:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.118:                              # %.noexc.i144
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$s4, $a2, %pc_lo12(.L.str.39)
	vld	$vr0, $s4, 0
	ld.d	$s3, $s4, 22
	ld.d	$s5, $s4, 16
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 22
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s6, $zero, 1
.Ltmp311:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.119:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_58__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_58__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp313:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.120:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_122
# %bb.121:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_122:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_23_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_23_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 16
.Ltmp316:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.123:                              # %.noexc.i153
	ld.d	$a1, $sp, 16
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 22
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp319:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.124:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_68__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_68__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp321:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.125:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_127
# %bb.126:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_127:                             # %__cxx_global_var_init.40.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_24_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_24_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 16
.Ltmp324:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.128:                              # %.noexc.i162
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.42)
	addi.d	$s4, $a2, %pc_lo12(.L.str.42)
	vld	$vr0, $s4, 0
	ld.w	$s3, $s4, 16
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s6, $zero, 1
.Ltmp327:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp328:                               # EH_LABEL
# %bb.129:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_ZL20BM_DenseThreadRangesRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp329:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.130:
.Ltmp331:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.131:
.Ltmp333:                               # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark16DenseThreadRangeEiii)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.132:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_134
# %bb.133:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_134:                             # %__cxx_global_var_init.41.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_25_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_25_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 16
.Ltmp336:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.135:                              # %.noexc.i171
	ld.d	$a1, $sp, 16
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s6, $zero, 1
.Ltmp339:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.136:
	st.d	$s2, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp341:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.137:
.Ltmp343:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.138:
.Ltmp345:                               # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	ori	$a3, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark16DenseThreadRangeEiii)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.139:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_141
# %bb.140:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_141:                             # %__cxx_global_var_init.43.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_26_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_26_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 16
.Ltmp348:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp349:                               # EH_LABEL
# %bb.142:                              # %.noexc.i180
	ld.d	$a1, $sp, 16
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp351:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.143:
	st.d	$s2, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp353:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.144:
.Ltmp355:                               # EH_LABEL
	ori	$a1, $zero, 3
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.145:
.Ltmp357:                               # EH_LABEL
	ori	$a1, $zero, 5
	ori	$a2, $zero, 14
	ori	$a3, $zero, 3
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark16DenseThreadRangeEiii)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.146:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_148
# %bb.147:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_148:                             # %__cxx_global_var_init.44.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_27_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_27_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 16
.Ltmp360:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.149:                              # %.noexc.i189
	ld.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	vld	$vr0, $a2, %pc_lo12(.L.str.46)
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp363:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.150:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_BenchmarkNameRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_BenchmarkNameRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp365:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.151:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_153
# %bb.152:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_153:                             # %__cxx_global_var_init.45.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_28_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_28_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 40
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 16
.Ltmp368:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp369:                               # EH_LABEL
# %bb.154:                              # %.noexc.i198
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.48)
	addi.d	$a2, $a2, %pc_lo12(.L.str.48)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp371:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.155:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp373:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.156:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_158
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_158:                             # %__cxx_global_var_init.47.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_29_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_29_benchmark_)
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
.LBB33_159:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i195
.Ltmp370:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_160:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i186
.Ltmp362:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_161:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i177
.Ltmp350:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_162:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i168
.Ltmp338:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_163:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i159
.Ltmp326:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_164:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i150
.Ltmp318:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_165:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i141
.Ltmp310:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_166:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i132
.Ltmp302:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_167:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i123
.Ltmp294:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_168:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i114
.Ltmp286:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_169:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i105
.Ltmp278:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_170:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i97
.Ltmp270:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_171:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i78
.Ltmp240:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_172:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i64
.Ltmp223:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_173:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55
.Ltmp213:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_174:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46
.Ltmp203:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_175:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37
.Ltmp193:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_176:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28
.Ltmp183:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_177:
.Ltmp180:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beqz	$a2, .LBB33_180
# %bb.178:
	ld.d	$a0, $sp, 32
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB33_180
.LBB33_179:
.Ltmp177:                               # EH_LABEL
	move	$fp, $a0
.LBB33_180:                             # %.thread.i
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB33_219
# %bb.181:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread36.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	b	.LBB33_218
.LBB33_182:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp141:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB33_217
.LBB33_183:
.Ltmp375:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_184:
.Ltmp367:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_185:
.Ltmp323:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_186:
.Ltmp315:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_214
	b	.LBB33_210
.LBB33_187:
.Ltmp307:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_188:
.Ltmp299:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_189:
.Ltmp291:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_190:
.Ltmp283:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_191:
.Ltmp275:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_192:
.Ltmp174:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_193:
.Ltmp131:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	bne	$a2, $s1, .LBB33_210
	b	.LBB33_214
.LBB33_194:
.Ltmp237:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_195:
.Ltmp230:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_196:
.Ltmp220:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_197:
.Ltmp210:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	bne	$a2, $s1, .LBB33_199
	b	.LBB33_201
.LBB33_198:
.Ltmp200:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_201
.LBB33_199:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i33
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB33_217
	b	.LBB33_219
.LBB33_200:
.Ltmp190:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	bne	$a2, $s1, .LBB33_199
.LBB33_201:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i34
	bnez	$s4, .LBB33_217
	b	.LBB33_219
.LBB33_202:
.Ltmp169:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_203:
.Ltmp162:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_214
	b	.LBB33_210
.LBB33_204:
.Ltmp155:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_214
	b	.LBB33_210
.LBB33_205:
.Ltmp148:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_206:
.Ltmp138:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	bne	$a2, $s1, .LBB33_212
	b	.LBB33_216
.LBB33_207:
.Ltmp359:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
	b	.LBB33_212
.LBB33_208:
.Ltmp347:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_214
	b	.LBB33_210
.LBB33_209:
.Ltmp335:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_214
.LBB33_210:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB33_217
	b	.LBB33_219
.LBB33_211:
.Ltmp267:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s1, .LBB33_216
.LBB33_212:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i2
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB33_219
	b	.LBB33_217
.LBB33_213:
.Ltmp258:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	bne	$a2, $s1, .LBB33_210
.LBB33_214:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	bnez	$s6, .LBB33_217
	b	.LBB33_219
.LBB33_215:
.Ltmp249:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	bne	$a2, $s1, .LBB33_212
.LBB33_216:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i3
	beqz	$s3, .LBB33_219
.LBB33_217:
	ori	$a1, $zero, 232
	move	$a0, $s0
.LBB33_218:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_219:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_GLOBAL__sub_I_benchmark_test.cc, .Lfunc_end33-_GLOBAL__sub_I_benchmark_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table33:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp127-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp130-.Ltmp127              #   Call between .Ltmp127 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin12        #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp137-.Ltmp132              #   Call between .Ltmp132 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin12        #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp139-.Ltmp137              #   Call between .Ltmp137 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin12        #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin12        # >> Call Site 7 <<
	.uleb128 .Ltmp147-.Ltmp142              #   Call between .Ltmp142 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin12        #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin12        # >> Call Site 8 <<
	.uleb128 .Ltmp149-.Ltmp147              #   Call between .Ltmp147 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin12        # >> Call Site 9 <<
	.uleb128 .Ltmp154-.Ltmp149              #   Call between .Ltmp149 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin12        #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin12        # >> Call Site 10 <<
	.uleb128 .Ltmp156-.Ltmp154              #   Call between .Ltmp154 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin12        # >> Call Site 11 <<
	.uleb128 .Ltmp161-.Ltmp156              #   Call between .Ltmp156 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin12        #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin12        # >> Call Site 12 <<
	.uleb128 .Ltmp163-.Ltmp161              #   Call between .Ltmp161 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin12        # >> Call Site 13 <<
	.uleb128 .Ltmp168-.Ltmp163              #   Call between .Ltmp163 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin12        #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin12        # >> Call Site 14 <<
	.uleb128 .Ltmp170-.Ltmp168              #   Call between .Ltmp168 and .Ltmp170
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin12        # >> Call Site 15 <<
	.uleb128 .Ltmp173-.Ltmp170              #   Call between .Ltmp170 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin12        #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin12        # >> Call Site 16 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin12        #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin12        # >> Call Site 17 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin12        #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin12        # >> Call Site 18 <<
	.uleb128 .Ltmp181-.Ltmp179              #   Call between .Ltmp179 and .Ltmp181
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin12        # >> Call Site 19 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin12        #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin12        # >> Call Site 20 <<
	.uleb128 .Ltmp189-.Ltmp184              #   Call between .Ltmp184 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin12        #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin12        # >> Call Site 21 <<
	.uleb128 .Ltmp191-.Ltmp189              #   Call between .Ltmp189 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin12        # >> Call Site 22 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin12        #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin12        # >> Call Site 23 <<
	.uleb128 .Ltmp199-.Ltmp194              #   Call between .Ltmp194 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin12        #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin12        # >> Call Site 24 <<
	.uleb128 .Ltmp201-.Ltmp199              #   Call between .Ltmp199 and .Ltmp201
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin12        # >> Call Site 25 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin12        #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin12        # >> Call Site 26 <<
	.uleb128 .Ltmp209-.Ltmp204              #   Call between .Ltmp204 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin12        #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin12        # >> Call Site 27 <<
	.uleb128 .Ltmp211-.Ltmp209              #   Call between .Ltmp209 and .Ltmp211
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin12        # >> Call Site 28 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin12        #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin12        # >> Call Site 29 <<
	.uleb128 .Ltmp219-.Ltmp214              #   Call between .Ltmp214 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin12        #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin12        # >> Call Site 30 <<
	.uleb128 .Ltmp221-.Ltmp219              #   Call between .Ltmp219 and .Ltmp221
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin12        # >> Call Site 31 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin12        #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin12        # >> Call Site 32 <<
	.uleb128 .Ltmp229-.Ltmp224              #   Call between .Ltmp224 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin12        #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin12        # >> Call Site 33 <<
	.uleb128 .Ltmp231-.Ltmp229              #   Call between .Ltmp229 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin12        # >> Call Site 34 <<
	.uleb128 .Ltmp236-.Ltmp231              #   Call between .Ltmp231 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin12        #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin12        # >> Call Site 35 <<
	.uleb128 .Ltmp238-.Ltmp236              #   Call between .Ltmp236 and .Ltmp238
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin12        # >> Call Site 36 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin12        #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin12        # >> Call Site 37 <<
	.uleb128 .Ltmp248-.Ltmp241              #   Call between .Ltmp241 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin12        #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin12        # >> Call Site 38 <<
	.uleb128 .Ltmp250-.Ltmp248              #   Call between .Ltmp248 and .Ltmp250
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin12        # >> Call Site 39 <<
	.uleb128 .Ltmp257-.Ltmp250              #   Call between .Ltmp250 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin12        #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin12        # >> Call Site 40 <<
	.uleb128 .Ltmp259-.Ltmp257              #   Call between .Ltmp257 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin12        # >> Call Site 41 <<
	.uleb128 .Ltmp266-.Ltmp259              #   Call between .Ltmp259 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin12        #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin12        # >> Call Site 42 <<
	.uleb128 .Ltmp268-.Ltmp266              #   Call between .Ltmp266 and .Ltmp268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin12        # >> Call Site 43 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin12        #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin12        # >> Call Site 44 <<
	.uleb128 .Ltmp274-.Ltmp271              #   Call between .Ltmp271 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin12        #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin12        # >> Call Site 45 <<
	.uleb128 .Ltmp276-.Ltmp274              #   Call between .Ltmp274 and .Ltmp276
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin12        # >> Call Site 46 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin12        #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin12        # >> Call Site 47 <<
	.uleb128 .Ltmp282-.Ltmp279              #   Call between .Ltmp279 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin12        #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin12        # >> Call Site 48 <<
	.uleb128 .Ltmp284-.Ltmp282              #   Call between .Ltmp282 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin12        # >> Call Site 49 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin12        #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin12        # >> Call Site 50 <<
	.uleb128 .Ltmp290-.Ltmp287              #   Call between .Ltmp287 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin12        #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin12        # >> Call Site 51 <<
	.uleb128 .Ltmp292-.Ltmp290              #   Call between .Ltmp290 and .Ltmp292
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin12        # >> Call Site 52 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin12        #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin12        # >> Call Site 53 <<
	.uleb128 .Ltmp298-.Ltmp295              #   Call between .Ltmp295 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin12        #     jumps to .Ltmp299
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin12        # >> Call Site 54 <<
	.uleb128 .Ltmp300-.Ltmp298              #   Call between .Ltmp298 and .Ltmp300
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin12        # >> Call Site 55 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin12        #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin12        # >> Call Site 56 <<
	.uleb128 .Ltmp306-.Ltmp303              #   Call between .Ltmp303 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin12        #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin12        # >> Call Site 57 <<
	.uleb128 .Ltmp308-.Ltmp306              #   Call between .Ltmp306 and .Ltmp308
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin12        # >> Call Site 58 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin12        #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin12        # >> Call Site 59 <<
	.uleb128 .Ltmp314-.Ltmp311              #   Call between .Ltmp311 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin12        #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin12        # >> Call Site 60 <<
	.uleb128 .Ltmp316-.Ltmp314              #   Call between .Ltmp314 and .Ltmp316
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin12        # >> Call Site 61 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin12        #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin12        # >> Call Site 62 <<
	.uleb128 .Ltmp322-.Ltmp319              #   Call between .Ltmp319 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin12        #     jumps to .Ltmp323
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin12        # >> Call Site 63 <<
	.uleb128 .Ltmp324-.Ltmp322              #   Call between .Ltmp322 and .Ltmp324
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin12        # >> Call Site 64 <<
	.uleb128 .Ltmp325-.Ltmp324              #   Call between .Ltmp324 and .Ltmp325
	.uleb128 .Ltmp326-.Lfunc_begin12        #     jumps to .Ltmp326
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin12        # >> Call Site 65 <<
	.uleb128 .Ltmp334-.Ltmp327              #   Call between .Ltmp327 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin12        #     jumps to .Ltmp335
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin12        # >> Call Site 66 <<
	.uleb128 .Ltmp336-.Ltmp334              #   Call between .Ltmp334 and .Ltmp336
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin12        # >> Call Site 67 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin12        #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin12        # >> Call Site 68 <<
	.uleb128 .Ltmp346-.Ltmp339              #   Call between .Ltmp339 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin12        #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin12        # >> Call Site 69 <<
	.uleb128 .Ltmp348-.Ltmp346              #   Call between .Ltmp346 and .Ltmp348
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin12        # >> Call Site 70 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin12        #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin12        # >> Call Site 71 <<
	.uleb128 .Ltmp358-.Ltmp351              #   Call between .Ltmp351 and .Ltmp358
	.uleb128 .Ltmp359-.Lfunc_begin12        #     jumps to .Ltmp359
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp358-.Lfunc_begin12        # >> Call Site 72 <<
	.uleb128 .Ltmp360-.Ltmp358              #   Call between .Ltmp358 and .Ltmp360
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin12        # >> Call Site 73 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp362-.Lfunc_begin12        #     jumps to .Ltmp362
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin12        # >> Call Site 74 <<
	.uleb128 .Ltmp366-.Ltmp363              #   Call between .Ltmp363 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin12        #     jumps to .Ltmp367
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin12        # >> Call Site 75 <<
	.uleb128 .Ltmp368-.Ltmp366              #   Call between .Ltmp366 and .Ltmp368
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin12        # >> Call Site 76 <<
	.uleb128 .Ltmp369-.Ltmp368              #   Call between .Ltmp368 and .Ltmp369
	.uleb128 .Ltmp370-.Lfunc_begin12        #     jumps to .Ltmp370
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin12        # >> Call Site 77 <<
	.uleb128 .Ltmp374-.Ltmp371              #   Call between .Ltmp371 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin12        #     jumps to .Ltmp375
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp374-.Lfunc_begin12        # >> Call Site 78 <<
	.uleb128 .Lfunc_end33-.Ltmp374          #   Call between .Ltmp374 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_Factorial"
	.size	.L.str, 13

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.4,@object                # @.str.4
	.p2align	3, 0x0
.L.str.4:
	.asciz	"BM_CalculatePiRange"
	.size	.L.str.4, 20

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.6,@object                # @.str.6
	.p2align	3, 0x0
.L.str.6:
	.asciz	"BM_CalculatePi"
	.size	.L.str.6, 15

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	.L.str.10,@object               # @.str.10
	.p2align	3, 0x0
.L.str.10:
	.asciz	"BM_SetInsert"
	.size	.L.str.10, 13

	.type	_ZL29benchmark_uniq_9BM_Sequential,@object # @_ZL29benchmark_uniq_9BM_Sequential
	.local	_ZL29benchmark_uniq_9BM_Sequential
	.comm	_ZL29benchmark_uniq_9BM_Sequential,8,8
	.type	.L.str.12,@object               # @.str.12
	.p2align	3, 0x0
.L.str.12:
	.asciz	"BM_Sequential<std::vector<int>,int>"
	.size	.L.str.12, 36

	.type	_ZL30benchmark_uniq_10BM_Sequential,@object # @_ZL30benchmark_uniq_10BM_Sequential
	.local	_ZL30benchmark_uniq_10BM_Sequential
	.comm	_ZL30benchmark_uniq_10BM_Sequential,8,8
	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"BM_Sequential<std::list<int>>"
	.size	.L.str.14, 30

	.type	_ZL30benchmark_uniq_11BM_Sequential,@object # @_ZL30benchmark_uniq_11BM_Sequential
	.local	_ZL30benchmark_uniq_11BM_Sequential
	.comm	_ZL30benchmark_uniq_11BM_Sequential,8,8
	.type	.L.str.16,@object               # @.str.16
	.p2align	3, 0x0
.L.str.16:
	.asciz	"BM_Sequential<std::vector<int>, int>"
	.size	.L.str.16, 37

	.type	_ZL28benchmark_uniq_12_benchmark_,@object # @_ZL28benchmark_uniq_12_benchmark_
	.local	_ZL28benchmark_uniq_12_benchmark_
	.comm	_ZL28benchmark_uniq_12_benchmark_,8,8
	.type	.L.str.18,@object               # @.str.18
	.p2align	3, 0x0
.L.str.18:
	.asciz	"BM_StringCompare"
	.size	.L.str.18, 17

	.type	_ZL28benchmark_uniq_13_benchmark_,@object # @_ZL28benchmark_uniq_13_benchmark_
	.local	_ZL28benchmark_uniq_13_benchmark_
	.comm	_ZL28benchmark_uniq_13_benchmark_,8,8
	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"BM_SetupTeardown"
	.size	.L.str.20, 17

	.type	_ZL28benchmark_uniq_14_benchmark_,@object # @_ZL28benchmark_uniq_14_benchmark_
	.local	_ZL28benchmark_uniq_14_benchmark_
	.comm	_ZL28benchmark_uniq_14_benchmark_,8,8
	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"BM_LongTest"
	.size	.L.str.22, 12

	.type	_ZL28benchmark_uniq_15_benchmark_,@object # @_ZL28benchmark_uniq_15_benchmark_
	.local	_ZL28benchmark_uniq_15_benchmark_
	.comm	_ZL28benchmark_uniq_15_benchmark_,8,8
	.type	.L.str.24,@object               # @.str.24
	.p2align	3, 0x0
.L.str.24:
	.asciz	"BM_ParallelMemset"
	.size	.L.str.24, 18

	.type	_ZL28benchmark_uniq_16_benchmark_,@object # @_ZL28benchmark_uniq_16_benchmark_
	.local	_ZL28benchmark_uniq_16_benchmark_
	.comm	_ZL28benchmark_uniq_16_benchmark_,8,8
	.type	.L.str.26,@object               # @.str.26
	.p2align	3, 0x0
.L.str.26:
	.asciz	"BM_ManualTiming"
	.size	.L.str.26, 16

	.type	_ZL28benchmark_uniq_17_benchmark_,@object # @_ZL28benchmark_uniq_17_benchmark_
	.local	_ZL28benchmark_uniq_17_benchmark_
	.comm	_ZL28benchmark_uniq_17_benchmark_,8,8
	.type	_ZL28benchmark_uniq_18_benchmark_,@object # @_ZL28benchmark_uniq_18_benchmark_
	.local	_ZL28benchmark_uniq_18_benchmark_
	.comm	_ZL28benchmark_uniq_18_benchmark_,8,8
	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"BM_with_args/int_test"
	.size	.L.str.29, 22

	.type	_ZL28benchmark_uniq_19_benchmark_,@object # @_ZL28benchmark_uniq_19_benchmark_
	.local	_ZL28benchmark_uniq_19_benchmark_
	.comm	_ZL28benchmark_uniq_19_benchmark_,8,8
	.type	.L.str.31,@object               # @.str.31
	.p2align	3, 0x0
.L.str.31:
	.asciz	"BM_with_args/string_and_pair_test"
	.size	.L.str.31, 34

	.type	_ZL28benchmark_uniq_20_benchmark_,@object # @_ZL28benchmark_uniq_20_benchmark_
	.local	_ZL28benchmark_uniq_20_benchmark_
	.comm	_ZL28benchmark_uniq_20_benchmark_,8,8
	.type	.L.str.33,@object               # @.str.33
	.p2align	3, 0x0
.L.str.33:
	.asciz	"BM_non_template_args/basic_test"
	.size	.L.str.33, 32

	.type	_ZL37benchmark_uniq_21BM_template2_capture,@object # @_ZL37benchmark_uniq_21BM_template2_capture
	.local	_ZL37benchmark_uniq_21BM_template2_capture
	.comm	_ZL37benchmark_uniq_21BM_template2_capture,8,8
	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"BM_template2_capture<void,char*>/foo"
	.size	.L.str.35, 37

	.type	_ZL28benchmark_uniq_22_benchmark_,@object # @_ZL28benchmark_uniq_22_benchmark_
	.local	_ZL28benchmark_uniq_22_benchmark_
	.comm	_ZL28benchmark_uniq_22_benchmark_,8,8
	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"(BM_template2_capture<void, char*>)/foo"
	.size	.L.str.37, 40

	.type	_ZL28benchmark_uniq_23_benchmark_,@object # @_ZL28benchmark_uniq_23_benchmark_
	.local	_ZL28benchmark_uniq_23_benchmark_
	.comm	_ZL28benchmark_uniq_23_benchmark_,8,8
	.type	.L.str.39,@object               # @.str.39
	.p2align	3, 0x0
.L.str.39:
	.asciz	"BM_template1_capture<void>/foo"
	.size	.L.str.39, 31

	.type	_ZL28benchmark_uniq_24_benchmark_,@object # @_ZL28benchmark_uniq_24_benchmark_
	.local	_ZL28benchmark_uniq_24_benchmark_
	.comm	_ZL28benchmark_uniq_24_benchmark_,8,8
	.type	_ZL28benchmark_uniq_25_benchmark_,@object # @_ZL28benchmark_uniq_25_benchmark_
	.local	_ZL28benchmark_uniq_25_benchmark_
	.comm	_ZL28benchmark_uniq_25_benchmark_,8,8
	.type	.L.str.42,@object               # @.str.42
	.p2align	3, 0x0
.L.str.42:
	.asciz	"BM_DenseThreadRanges"
	.size	.L.str.42, 21

	.type	_ZL28benchmark_uniq_26_benchmark_,@object # @_ZL28benchmark_uniq_26_benchmark_
	.local	_ZL28benchmark_uniq_26_benchmark_
	.comm	_ZL28benchmark_uniq_26_benchmark_,8,8
	.type	_ZL28benchmark_uniq_27_benchmark_,@object # @_ZL28benchmark_uniq_27_benchmark_
	.local	_ZL28benchmark_uniq_27_benchmark_
	.comm	_ZL28benchmark_uniq_27_benchmark_,8,8
	.type	_ZL28benchmark_uniq_28_benchmark_,@object # @_ZL28benchmark_uniq_28_benchmark_
	.local	_ZL28benchmark_uniq_28_benchmark_
	.comm	_ZL28benchmark_uniq_28_benchmark_,8,8
	.type	.L.str.46,@object               # @.str.46
	.p2align	3, 0x0
.L.str.46:
	.asciz	"BM_BenchmarkName"
	.size	.L.str.46, 17

	.type	_ZL28benchmark_uniq_29_benchmark_,@object # @_ZL28benchmark_uniq_29_benchmark_
	.local	_ZL28benchmark_uniq_29_benchmark_
	.comm	_ZL28benchmark_uniq_29_benchmark_,8,8
	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"BM_templated_test_double"
	.size	.L.str.48, 25

	.type	.L__const.main.arg0_default,@object # @__const.main.arg0_default
	.p2align	3, 0x0
.L__const.main.arg0_default:
	.asciz	"benchmark"
	.size	.L__const.main.arg0_default, 10

	.type	.L.str.49,@object               # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"cached_ > 0"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.50, 144

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"range_.size() > pos"
	.size	.L.str.51, 20

	.type	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm,@object # @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm
.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm:
	.asciz	"int64_t benchmark::State::range(std::size_t) const"
	.size	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, 51

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.52:
	.asciz	"items_per_second"
	.size	.L.str.52, 17

	.type	_ZSt19piecewise_construct,@object # @_ZSt19piecewise_construct
	.section	.rodata._ZSt19piecewise_construct,"aG",@progbits,_ZSt19piecewise_construct,comdat
	.weak	_ZSt19piecewise_construct
_ZSt19piecewise_construct:
	.space	1
	.size	_ZSt19piecewise_construct, 1

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.53:
	.asciz	"bytes_per_second"
	.size	.L.str.53, 17

	.type	_ZN12_GLOBAL__N_111test_vectorE,@object # @_ZN12_GLOBAL__N_111test_vectorE
	.local	_ZN12_GLOBAL__N_111test_vectorE
	.comm	_ZN12_GLOBAL__N_111test_vectorE,8,8
	.type	_ZN12_GLOBAL__N_114test_vector_muE,@object # @_ZN12_GLOBAL__N_114test_vector_muE
	.local	_ZN12_GLOBAL__N_114test_vector_muE
	.comm	_ZN12_GLOBAL__N_114test_vector_muE,40,8
	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.55, 26

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.56, 49

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)"
	.size	.L.str.57, 74

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"abc"
	.size	.L.str.58, 4

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/benchmark_test.cc"
	.size	.L.str.62, 137

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"st.threads() == 1 || st.threads() == 2 || st.threads() == 3"
	.size	.L.str.64, 60

	.type	.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE
.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE:
	.asciz	"void BM_DenseThreadRanges(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE, 46

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"st.threads() == 1 || st.threads() == 3 || st.threads() == 4"
	.size	.L.str.65, 60

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"st.threads() == 5 || st.threads() == 8 || st.threads() == 11 || st.threads() == 14"
	.size	.L.str.66, 83

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"false && \"Invalid test case number\""
	.size	.L.str.67, 36

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"\"BM_BenchmarkName\" == state.name()"
	.size	.L.str.68, 35

	.type	.L__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE
.L__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE:
	.asciz	"void BM_BenchmarkName(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE, 42

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_benchmark_test.cc
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
	.addrsig_sym _ZL12BM_FactorialRN9benchmark5StateE
	.addrsig_sym _ZL19BM_CalculatePiRangeRN9benchmark5StateE
	.addrsig_sym _ZL14BM_CalculatePiRN9benchmark5StateE
	.addrsig_sym _ZL12BM_SetInsertRN9benchmark5StateE
	.addrsig_sym _ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE
	.addrsig_sym _ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE
	.addrsig_sym _ZL16BM_StringCompareRN9benchmark5StateE
	.addrsig_sym _ZL16BM_SetupTeardownRN9benchmark5StateE
	.addrsig_sym _ZL11BM_LongTestRN9benchmark5StateE
	.addrsig_sym _ZL17BM_ParallelMemsetRN9benchmark5StateE
	.addrsig_sym _ZL15BM_ManualTimingRN9benchmark5StateE
	.addrsig_sym _ZL20BM_DenseThreadRangesRN9benchmark5StateE
	.addrsig_sym _ZL16BM_BenchmarkNameRN9benchmark5StateE
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _ZN3$_08__invokeERN9benchmark5StateE
	.addrsig_sym _ZN3$_18__invokeERN9benchmark5StateE
	.addrsig_sym _ZN3$_28__invokeERN9benchmark5StateE
	.addrsig_sym _ZN3$_38__invokeERN9benchmark5StateE
	.addrsig_sym _ZN3$_48__invokeERN9benchmark5StateE
	.addrsig_sym _ZN3$_58__invokeERN9benchmark5StateE
	.addrsig_sym _ZN3$_68__invokeERN9benchmark5StateE
	.addrsig_sym _ZL17BM_templated_testISt7complexIdEEvRN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_benchmark_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt19piecewise_construct
	.addrsig_sym _ZN12_GLOBAL__N_114test_vector_muE
