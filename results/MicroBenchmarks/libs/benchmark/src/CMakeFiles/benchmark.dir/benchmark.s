	.file	"benchmark.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN9benchmark8internal17InitializeStreamsEv # -- Begin function _ZN9benchmark8internal17InitializeStreamsEv
	.globl	_ZN9benchmark8internal17InitializeStreamsEv
	.p2align	5
	.type	_ZN9benchmark8internal17InitializeStreamsEv,@function
_ZN9benchmark8internal17InitializeStreamsEv: # @_ZN9benchmark8internal17InitializeStreamsEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	dbar	20
	beqz	$a0, .LBB0_2
.LBB0_1:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_1
# %bb.3:
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(_ZNSt8ios_base4InitC1Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(_ZNSt8ios_base4InitD1Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt8ios_base4InitD1Ev)
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a1, $a1, %pc_lo12(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB0_1
.LBB0_5:
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9benchmark8internal17InitializeStreamsEv, .Lfunc_end0-_ZN9benchmark8internal17InitializeStreamsEv
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
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,comdat
	.hidden	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, .Lfunc_end1-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,"aG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
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
	.hidden	_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev # -- Begin function _ZN9benchmark8internal16GetGlobalContextB5cxx11Ev
	.globl	_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev
	.p2align	5
	.type	_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev,@function
_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev: # @_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark8internal14global_contextB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark8internal14global_contextB5cxx11E)
	ret
.Lfunc_end2:
	.size	_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev, .Lfunc_end2-_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev
                                        # -- End function
	.hidden	_ZN9benchmark8internal14UseCharPointerEPVKc # -- Begin function _ZN9benchmark8internal14UseCharPointerEPVKc
	.globl	_ZN9benchmark8internal14UseCharPointerEPVKc
	.p2align	5
	.type	_ZN9benchmark8internal14UseCharPointerEPVKc,@function
_ZN9benchmark8internal14UseCharPointerEPVKc: # @_ZN9benchmark8internal14UseCharPointerEPVKc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark8internalL27global_force_escape_pointerE)
	st.d	$a0, $a1, %pc_lo12(_ZN9benchmark8internalL27global_force_escape_pointerE)
	ret
.Lfunc_end3:
	.size	_ZN9benchmark8internal14UseCharPointerEPVKc, .Lfunc_end3-_ZN9benchmark8internal14UseCharPointerEPVKc
                                        # -- End function
	.hidden	_ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE # -- Begin function _ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE
	.globl	_ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE
	.p2align	5
	.type	_ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE,@function
_ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE: # @_ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE
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
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	st.h	$zero, $a0, 24
	ld.d	$a0, $a3, 8
	ld.d	$a3, $a3, 0
	move	$s1, $a7
	move	$s2, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$s5, $a1
	st.d	$a2, $fp, 16
	st.w	$zero, $fp, 28
	sub.d	$s7, $a0, $a3
	vst	$vr0, $fp, 32
	st.d	$zero, $fp, 48
	beq	$a0, $a3, .LBB4_3
# %bb.1:
	addi.w	$a0, $zero, -7
	lu52i.d	$a0, $a0, 2047
	bgeu	$s7, $a0, .LBB4_35
# %bb.2:                                # %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	b	.LBB4_4
.LBB4_3:
	move	$s6, $zero
.LBB4_4:
	st.d	$s6, $fp, 32
	st.d	$s6, $fp, 40
	add.d	$a0, $s6, $s7
	st.d	$a0, $fp, 48
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 8
	sub.d	$s0, $a0, $a1
	ori	$a0, $zero, 9
	blt	$s0, $a0, .LBB4_33
# %bb.5:
	move	$a0, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit
	ld.d	$s7, $sp, 136
	ld.d	$s8, $sp, 128
	add.d	$a0, $s6, $s0
	st.d	$a0, $fp, 40
	st.d	$zero, $fp, 56
	addi.d	$a1, $fp, 72
	st.w	$zero, $fp, 72
	st.d	$zero, $fp, 80
	addi.d	$s0, $fp, 128
	st.d	$s0, $fp, 112
	ld.d	$a0, $s5, 0
	st.d	$a1, $fp, 88
	st.d	$a1, $fp, 96
	addi.d	$s6, $s5, 16
	st.d	$zero, $fp, 104
	beq	$a0, $s6, .LBB4_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a0, $fp, 112
	ld.d	$a0, $s6, 0
	st.d	$a0, $fp, 128
	b	.LBB4_9
.LBB4_8:
	ld.d	$a0, $s5, 8
	addi.d	$a2, $a0, 1
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $s5, 8
	st.d	$a0, $fp, 120
	st.d	$s6, $s5, 0
	st.d	$zero, $s5, 8
	st.b	$zero, $s5, 16
	st.w	$s4, $fp, 144
	st.w	$s3, $fp, 148
	st.d	$s2, $fp, 152
	st.d	$s1, $fp, 160
	st.d	$s8, $fp, 168
	st.d	$s7, $fp, 176
	pcalau12i	$s3, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $s3, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$s2, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB4_38
.LBB4_10:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.d	$a0, $s2, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s1, $fp, 64
	beqz	$a0, .LBB4_12
# %bb.11:
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 34
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
.LBB4_12:                               # %_ZN9benchmark8internallsIA35_cEERNS0_7LogTypeES4_RKT_.exit
	ld.b	$a0, $s3, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB4_40
.LBB4_13:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19
	ld.d	$a0, $s2, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB4_15
# %bb.14:
.Ltmp8:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
.LBB4_15:                               # %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $fp, 168
	beqz	$a0, .LBB4_32
# %bb.16:
	ld.d	$s4, $a0, 56
	ld.d	$s5, $a0, 48
	sub.d	$s2, $s4, $s5
	beq	$s4, $s5, .LBB4_20
# %bb.17:
	addi.w	$a0, $zero, -31
	lu52i.d	$a0, $a0, 2047
	bgeu	$s2, $a0, .LBB4_36
# %bb.18:                               # %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
.Ltmp11:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.19:
	move	$s3, $a0
	b	.LBB4_21
.LBB4_20:
	move	$s3, $zero
.LBB4_21:                               # %.noexc24
	st.d	$s3, $sp, 16
	st.d	$s3, $sp, 24
	add.d	$a0, $s3, $s2
	st.d	$a0, $sp, 32
.Ltmp16:                                # EH_LABEL
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.22:
	move	$s4, $a0
	st.d	$a0, $sp, 24
	beq	$s3, $a0, .LBB4_30
# %bb.23:
	ori	$s6, $zero, 8
	lu32i.d	$s6, 1000
	move	$s5, $s3
	.p2align	4, , 16
.LBB4_24:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
.Ltmp19:                                # EH_LABEL
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.25:                               #   in Loop: Header=BB4_24 Depth=1
	st.d	$zero, $a0, 0
	addi.d	$s5, $s5, 32
	st.d	$s6, $a0, 8
	bne	$s5, $s4, .LBB4_24
# %bb.26:                               # %.lr.ph.i.i.i.preheader
	addi.d	$fp, $s3, 16
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_27:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB4_28 Depth=1
	addi.d	$a0, $fp, 16
	addi.d	$fp, $fp, 32
	beq	$a0, $s4, .LBB4_30
.LBB4_28:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -16
	beq	$fp, $a0, .LBB4_27
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_27
.LBB4_30:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	beqz	$s3, .LBB4_32
# %bb.31:
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_32:
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
.LBB4_33:
	ori	$a0, $zero, 8
	bne	$s0, $a0, .LBB4_6
# %bb.34:
	ld.d	$a0, $a1, 0
	st.d	$a0, $s6, 0
	b	.LBB4_6
.LBB4_35:                               # %.noexc.i.i
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.LBB4_36:                               # %.noexc.i.i.i
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.37:                               # %.noexc23
.LBB4_38:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_10
# %bb.39:
	st.d	$zero, $s2, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_10
.LBB4_40:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_13
# %bb.41:
	st.d	$zero, $s2, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_13
.LBB4_42:
.Ltmp18:                                # EH_LABEL
	move	$s4, $a0
	bnez	$s3, .LBB4_46
# %bb.43:                               # %.body
	ld.d	$a0, $fp, 112
	addi.d	$s2, $fp, 32
	bne	$a0, $s0, .LBB4_51
.LBB4_44:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB4_52
.LBB4_45:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_46:
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	addi.d	$s2, $fp, 32
	beq	$a0, $s0, .LBB4_44
	b	.LBB4_51
.LBB4_47:
.Ltmp10:                                # EH_LABEL
	b	.LBB4_50
.LBB4_48:
.Ltmp21:                                # EH_LABEL
	move	$s4, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	addi.d	$s2, $fp, 32
	beq	$a0, $s0, .LBB4_44
	b	.LBB4_51
.LBB4_49:
.Ltmp15:                                # EH_LABEL
.LBB4_50:                               # %.body
	move	$s4, $a0
	ld.d	$a0, $fp, 112
	addi.d	$s2, $fp, 32
	beq	$a0, $s0, .LBB4_44
.LBB4_51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB4_45
.LBB4_52:
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE, .Lfunc_end4-_ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin2           #   Call between .Lfunc_begin2 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin2          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp15-.Lfunc_begin2          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin2          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp20                #   Call between .Ltmp20 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin2          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Lfunc_end4-.Ltmp14            #   Call between .Ltmp14 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_,comdat
	.hidden	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
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
	beqz	$s7, .LBB5_11
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
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	sub.d	$a0, $fp, $s6
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB5_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s7, .LBB5_6
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, 40
	sltu	$a0, $s6, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB5_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_3
	b	.LBB5_2
.LBB5_6:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	beq	$s1, $s2, .LBB5_11
# %bb.7:
	ld.d	$fp, $s1, 40
	sltu	$a0, $fp, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB5_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $s1, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_10
.LBB5_9:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s6, $fp
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB5_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	move	$s2, $s1
	bgez	$a0, .LBB5_12
.LBB5_11:                               # %.critedge
	st.d	$s8, $sp, 32
	pcalau12i	$a0, %pc_hi20(_ZSt19piecewise_construct)
	addi.d	$a2, $a0, %pc_lo12(_ZSt19piecewise_construct)
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 31
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB5_12:
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
.Lfunc_end5:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, .Lfunc_end5-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.hidden	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$s0, $fp, 8
	beq	$a0, $s0, .LBB6_6
# %bb.1:                                # %.lr.ph.i.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB6_5
.LBB6_3:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB6_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_2
.LBB6_5:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split
	ld.d	$a0, $fp, 0
.LBB6_6:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
	beqz	$a0, .LBB6_8
# %bb.7:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB6_8:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end6-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.hidden	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_2:
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, .Lfunc_end7-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"aG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark5State11PauseTimingEv
.LCPI8_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
.LCPI8_1:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.hidden	_ZN9benchmark5State11PauseTimingEv
	.globl	_ZN9benchmark5State11PauseTimingEv
	.p2align	5
	.type	_ZN9benchmark5State11PauseTimingEv,@function
_ZN9benchmark5State11PauseTimingEv:     # @_ZN9benchmark5State11PauseTimingEv
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
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
	pcalau12i	$s1, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $s1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$s2, $a0
	dbar	20
	beqz	$a1, .LBB8_43
.LBB8_1:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.d	$fp, $s2, 152
	ld.b	$a0, $s1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB8_45
.LBB8_2:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
	st.b	$zero, $fp, 1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI8_0)
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $fp, 24
	ld.bu	$a0, $fp, 0
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 24
	beqz	$a0, .LBB8_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZN9benchmark15ProcessCPUUsageEv)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.LBB8_4:
	pcaddu18i	$ra, %call36(_ZN9benchmark14ThreadCPUUsageEv)
	jirl	$ra, $ra, 0
.LBB8_5:                                # %_ZN9benchmark8internal11ThreadTimer9StopTimerEv.exit
	fld.d	$fa1, $fp, 16
	fsub.d	$fa0, $fa0, $fa1
	movgr2fr.d	$fa1, $zero
	fld.d	$fa2, $fp, 32
	ld.d	$s5, $s2, 168
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $fp, 32
	beqz	$s5, .LBB8_42
# %bb.6:                                # %.noexc
	ld.d	$a0, $s5, 56
	ld.d	$a1, $s5, 48
	st.d	$zero, $sp, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 24
	beq	$a0, $a1, .LBB8_30
# %bb.7:
	#MEMBARRIER
	addi.d	$s0, $s5, 360
	addi.d	$a1, $s5, 24
.Ltmp25:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17PerfCounterValues4ReadERKSt6vectorIiSaIiEE)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.8:                                # %.noexc10
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $s5, 8
	ld.d	$a2, $s5, 0
	sub.d	$a1, $a1, $a2
	ld.bu	$a2, $s5, 72
	srai.d	$a1, $a1, 2
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	and	$a0, $a2, $a0
	st.b	$a0, $s5, 72
	#MEMBARRIER
	ld.d	$a1, $s5, 56
	ld.d	$a0, $s5, 48
	beq	$a1, $a0, .LBB8_26
# %bb.9:                                # %.lr.ph
	move	$s6, $zero
	move	$s7, $zero
	addi.d	$s1, $sp, 64
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI8_1)
	lu12i.w	$fp, 275200
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB8_13 Depth=1
	st.d	$a1, $s2, 0
	ld.d	$a0, $sp, 64
	ld.d	$s3, $sp, 56
	st.d	$a0, $s2, 16
.LBB8_11:                               # %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE9push_backEOS7_.exit.thread
                                        #   in Loop: Header=BB8_13 Depth=1
	st.d	$s3, $s2, 8
	fld.d	$fa0, $sp, 80
	st.d	$s1, $sp, 48
	st.d	$zero, $sp, 56
	st.b	$zero, $sp, 64
	fst.d	$fa0, $s2, 32
	addi.d	$a0, $s2, 40
	st.d	$a0, $sp, 32
.LBB8_12:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdED2Ev.exit
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.d	$a1, $s5, 56
	ld.d	$a0, $s5, 48
	addi.d	$s7, $s7, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 5
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 32
	bgeu	$s7, $a1, .LBB8_26
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s0, 0
	ld.d	$s4, $s0, -280
	add.d	$a1, $a0, $s6
	st.d	$s1, $sp, 48
	ld.d	$s2, $a1, 8
	ldx.d	$s3, $a0, $s6
	st.d	$s2, $sp, 88
	move	$a0, $s1
	ori	$a1, $zero, 16
	bltu	$s2, $a1, .LBB8_16
# %bb.14:                               # %.noexc.i.i
                                        #   in Loop: Header=BB8_13 Depth=1
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.15:                               # %.noexc13
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB8_16:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB8_13 Depth=1
	beqz	$s2, .LBB8_20
# %bb.17:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB8_13 Depth=1
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_13 Depth=1
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_19:                               #   in Loop: Header=BB8_13 Depth=1
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_20:                               # %.noexc11
                                        #   in Loop: Header=BB8_13 Depth=1
	srli.d	$a0, $s8, 32
	lu52i.d	$a1, $zero, 1107
	or	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$s8, $fp, 63, 32
	movgr2fr.d	$fa1, $s8
	fadd.d	$fa0, $fa1, $fa0
	srli.d	$a0, $s4, 32
	or	$a0, $a0, $a1
	movgr2fr.d	$fa1, $a0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 48
	fsub.d	$fa1, $fa1, $fs0
	bstrins.d	$s4, $fp, 63, 32
	st.d	$a0, $sp, 56
	stx.b	$zero, $a1, $a0
	ld.d	$s2, $sp, 32
	ld.d	$a0, $sp, 40
	movgr2fr.d	$fa2, $s4
	fadd.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 80
	beq	$s2, $a0, .LBB8_23
# %bb.21:                               #   in Loop: Header=BB8_13 Depth=1
	addi.d	$a0, $s2, 16
	st.d	$a0, $s2, 0
	ld.d	$a1, $sp, 48
	bne	$a1, $s1, .LBB8_10
# %bb.22:                               #   in Loop: Header=BB8_13 Depth=1
	ld.d	$s3, $sp, 56
	addi.d	$a2, $s3, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB8_11
	.p2align	4, , 16
.LBB8_23:                               #   in Loop: Header=BB8_13 Depth=1
.Ltmp30:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.24:                               # %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE9push_backEOS7_.exit
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.d	$a0, $sp, 48
	beq	$a0, $s1, .LBB8_12
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_12
.LBB8_26:                               # %_ZN9benchmark8internal23PerfCountersMeasurement4StopERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaISA_EE.exit
	ld.bu	$a0, $s5, 72
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB8_30
# %bb.27:
	ld.b	$a0, $a1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$fp, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB8_47
.LBB8_28:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit20
	ld.d	$a0, $fp, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB8_30
# %bb.29:
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 36
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
.LBB8_30:                               # %_ZN9benchmark8internallsIA37_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$s0, $sp, 24
	ld.d	$s1, $sp, 32
	beq	$s0, $s1, .LBB8_40
# %bb.31:                               # %.lr.ph33
	addi.d	$fp, $s2, 64
	.p2align	4, , 16
.LBB8_32:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fs0, $s0, 32
.Ltmp36:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.33:                               #   in Loop: Header=BB8_32 Depth=1
	fld.d	$fa0, $a0, 0
	fadd.d	$fa0, $fs0, $fa0
	addi.d	$s0, $s0, 40
	fst.d	$fa0, $a0, 0
	bne	$s0, $s1, .LBB8_32
# %bb.34:                               # %._crit_edge
	ld.d	$s0, $sp, 24
	ld.d	$fp, $sp, 32
	beq	$s0, $fp, .LBB8_40
# %bb.35:                               # %.lr.ph.i.i.i.preheader
	addi.d	$s0, $s0, 16
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_36:                               # %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB8_37 Depth=1
	addi.d	$a0, $s0, 24
	addi.d	$s0, $s0, 40
	beq	$a0, $fp, .LBB8_39
.LBB8_37:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB8_36
# %bb.38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_37 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_36
.LBB8_39:                               # %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $sp, 24
.LBB8_40:                               # %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i
	beqz	$s0, .LBB8_42
# %bb.41:
	ld.d	$a0, $sp, 40
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_42:
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB8_43:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB8_1
# %bb.44:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB8_1
.LBB8_45:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB8_2
# %bb.46:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB8_2
.LBB8_47:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB8_28
# %bb.48:
	st.d	$zero, $fp, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB8_28
.LBB8_49:                               # %.loopexit.split-lp
.Ltmp35:                                # EH_LABEL
	b	.LBB8_54
.LBB8_50:
.Ltmp32:                                # EH_LABEL
	ld.d	$a2, $sp, 48
	move	$fp, $a0
	beq	$a2, $s1, .LBB8_55
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
	ld.d	$a0, $sp, 64
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_52:                               # %.loopexit
.Ltmp29:                                # EH_LABEL
	b	.LBB8_54
.LBB8_53:
.Ltmp38:                                # EH_LABEL
.LBB8_54:                               # %.body
	move	$fp, $a0
.LBB8_55:                               # %.body
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN9benchmark5State11PauseTimingEv, .Lfunc_end8-_ZN9benchmark5State11PauseTimingEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp35-.Lfunc_begin4          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin4          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin4          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp33-.Ltmp31                #   Call between .Ltmp31 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin4          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin4          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Lfunc_end8-.Ltmp37            #   Call between .Ltmp37 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev,comdat
	.hidden	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev # -- Begin function _ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev,@function
_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev: # @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$s0, $fp, 8
	beq	$a0, $s0, .LBB9_6
# %bb.1:                                # %.lr.ph.i.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a0, $s1, 24
	addi.d	$s1, $s1, 40
	beq	$a0, $s0, .LBB9_5
.LBB9_3:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB9_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_2
.LBB9_5:                                # %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split
	ld.d	$a0, $fp, 0
.LBB9_6:                                # %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit
	beqz	$a0, .LBB9_8
# %bb.7:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB9_8:                                # %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev, .Lfunc_end9-_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark5State12ResumeTimingEv
.LCPI10_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
	.text
	.hidden	_ZN9benchmark5State12ResumeTimingEv
	.globl	_ZN9benchmark5State12ResumeTimingEv
	.p2align	5
	.type	_ZN9benchmark5State12ResumeTimingEv,@function
_ZN9benchmark5State12ResumeTimingEv:    # @_ZN9benchmark5State12ResumeTimingEv
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
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$fp, $a0
	dbar	20
	beqz	$a1, .LBB10_7
.LBB10_1:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.d	$s0, $fp, 152
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI10_0)
	ld.bu	$a1, $s0, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s0, 8
	beqz	$a1, .LBB10_3
# %bb.2:
	pcaddu18i	$ra, %call36(_ZN9benchmark15ProcessCPUUsageEv)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 168
	fst.d	$fa0, $s0, 16
	bnez	$fp, .LBB10_4
	b	.LBB10_6
.LBB10_3:
	pcaddu18i	$ra, %call36(_ZN9benchmark14ThreadCPUUsageEv)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 168
	fst.d	$fa0, $s0, 16
	beqz	$fp, .LBB10_6
.LBB10_4:
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB10_6
# %bb.5:
	#MEMBARRIER
	addi.d	$a0, $fp, 80
	addi.d	$a1, $fp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17PerfCounterValues4ReadERKSt6vectorIiSaIiEE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 0
	sub.d	$a1, $a1, $a2
	ld.bu	$a2, $fp, 72
	srai.d	$a1, $a1, 2
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	and	$a0, $a2, $a0
	st.b	$a0, $fp, 72
	#MEMBARRIER
.LBB10_6:                               # %_ZN9benchmark8internal23PerfCountersMeasurement5StartEv.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_7:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB10_1
# %bb.8:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB10_1
.Lfunc_end10:
	.size	_ZN9benchmark5State12ResumeTimingEv, .Lfunc_end10-_ZN9benchmark5State12ResumeTimingEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI11_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
	.text
	.hidden	_ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	ld.d	$a0, $a0, 160
	move	$s1, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 28
	addi.d	$s0, $a0, 160
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_11
# %bb.1:                                # %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
	ld.d	$a0, $fp, 160
	ld.w	$a1, $a0, 104
	bnez	$a1, .LBB11_4
# %bb.2:
	addi.d	$a0, $a0, 72
.Ltmp39:                                # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
	ld.w	$a0, $fp, 28
	ld.d	$a1, $fp, 160
	st.w	$a0, $a1, 104
.LBB11_4:                               # %_ZN9benchmark9MutexLockD2Ev.exit4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 152
	ld.bu	$a0, $s0, 1
	st.d	$zero, $fp, 0
	beqz	$a0, .LBB11_10
# %bb.5:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB11_12
.LBB11_6:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
	st.b	$zero, $s0, 1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI11_0)
	fld.d	$fa2, $s0, 8
	fld.d	$fa3, $s0, 24
	ld.bu	$a0, $s0, 0
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $s0, 24
	beqz	$a0, .LBB11_8
# %bb.7:
	pcaddu18i	$ra, %call36(_ZN9benchmark15ProcessCPUUsageEv)
	jirl	$ra, $ra, 0
	b	.LBB11_9
.LBB11_8:
	pcaddu18i	$ra, %call36(_ZN9benchmark14ThreadCPUUsageEv)
	jirl	$ra, $ra, 0
.LBB11_9:                               # %_ZN9benchmark8internal11ThreadTimer9StopTimerEv.exit
	fld.d	$fa1, $s0, 16
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 32
	movgr2fr.d	$fa2, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s0, 32
.LBB11_10:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_11:
	pcaddu18i	$ra, %call36(_ZSt20__throw_system_errori)
	jirl	$ra, $ra, 0
.LBB11_12:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB11_6
# %bb.13:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB11_6
.LBB11_14:                              # %_ZN9benchmark9MutexLockD2Ev.exit
.Ltmp41:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end11-_ZN9benchmark5State15SkipWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp39-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin5          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp40           #   Call between .Ltmp40 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI12_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
	.text
	.hidden	_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	ld.d	$a0, $a0, 160
	move	$s1, $a1
	ori	$a1, $zero, 2
	st.w	$a1, $fp, 28
	addi.d	$s0, $a0, 160
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_11
# %bb.1:                                # %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
	ld.d	$a0, $fp, 160
	ld.w	$a1, $a0, 104
	bnez	$a1, .LBB12_4
# %bb.2:
	addi.d	$a0, $a0, 72
.Ltmp42:                                # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
	ld.w	$a0, $fp, 28
	ld.d	$a1, $fp, 160
	st.w	$a0, $a1, 104
.LBB12_4:                               # %_ZN9benchmark9MutexLockD2Ev.exit4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 152
	ld.bu	$a0, $s0, 1
	st.d	$zero, $fp, 0
	beqz	$a0, .LBB12_10
# %bb.5:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB12_12
.LBB12_6:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
	st.b	$zero, $s0, 1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI12_0)
	fld.d	$fa2, $s0, 8
	fld.d	$fa3, $s0, 24
	ld.bu	$a0, $s0, 0
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $s0, 24
	beqz	$a0, .LBB12_8
# %bb.7:
	pcaddu18i	$ra, %call36(_ZN9benchmark15ProcessCPUUsageEv)
	jirl	$ra, $ra, 0
	b	.LBB12_9
.LBB12_8:
	pcaddu18i	$ra, %call36(_ZN9benchmark14ThreadCPUUsageEv)
	jirl	$ra, $ra, 0
.LBB12_9:                               # %_ZN9benchmark8internal11ThreadTimer9StopTimerEv.exit
	fld.d	$fa1, $s0, 16
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 32
	movgr2fr.d	$fa2, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s0, 32
.LBB12_10:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_11:
	pcaddu18i	$ra, %call36(_ZSt20__throw_system_errori)
	jirl	$ra, $ra, 0
.LBB12_12:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB12_6
# %bb.13:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB12_6
.LBB12_14:                              # %_ZN9benchmark9MutexLockD2Ev.exit
.Ltmp44:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end12-_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp42-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin6          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp43           #   Call between .Ltmp43 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark5State16SetIterationTimeEd # -- Begin function _ZN9benchmark5State16SetIterationTimeEd
	.globl	_ZN9benchmark5State16SetIterationTimeEd
	.p2align	5
	.type	_ZN9benchmark5State16SetIterationTimeEd,@function
_ZN9benchmark5State16SetIterationTimeEd: # @_ZN9benchmark5State16SetIterationTimeEd
# %bb.0:
	ld.d	$a0, $a0, 152
	fld.d	$fa1, $a0, 40
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, 40
	ret
.Lfunc_end13:
	.size	_ZN9benchmark5State16SetIterationTimeEd, .Lfunc_end13-_ZN9benchmark5State16SetIterationTimeEd
                                        # -- End function
	.hidden	_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	move	$s1, $a0
	ld.d	$a0, $a0, 160
	move	$s0, $a1
	addi.d	$fp, $a0, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_3
# %bb.1:                                # %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
	ld.d	$a0, $s1, 160
	addi.d	$a0, $a0, 40
.Ltmp45:                                # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.2:                                # %_ZN9benchmark9MutexLockD2Ev.exit
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(pthread_mutex_unlock)
	jr	$t8
.LBB14_3:
	pcaddu18i	$ra, %call36(_ZSt20__throw_system_errori)
	jirl	$ra, $ra, 0
.LBB14_4:                               # %_ZN9benchmark9MutexLockD2Ev.exit4
.Ltmp47:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end14-_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp45-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin7          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp46           #   Call between .Ltmp46 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark5State16StartKeepRunningEv # -- Begin function _ZN9benchmark5State16StartKeepRunningEv
	.globl	_ZN9benchmark5State16StartKeepRunningEv
	.p2align	5
	.type	_ZN9benchmark5State16StartKeepRunningEv,@function
_ZN9benchmark5State16StartKeepRunningEv: # @_ZN9benchmark5State16StartKeepRunningEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$fp, $a0
	dbar	20
	beqz	$a1, .LBB15_6
.LBB15_1:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ori	$a1, $zero, 1
	ld.w	$a2, $fp, 28
	ld.d	$a3, $fp, 16
	ld.d	$a0, $fp, 176
	st.b	$a1, $fp, 24
	sltui	$a1, $a2, 1
	maskeqz	$a1, $a3, $a1
	st.d	$a1, $fp, 0
	bnez	$a0, .LBB15_5
.LBB15_2:
	ld.d	$a0, $fp, 160
	addi.d	$a0, $a0, 208
	pcaddu18i	$ra, %call36(_ZN9benchmark7Barrier4waitEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	beqz	$a0, .LBB15_4
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB15_4:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark5State12ResumeTimingEv)
	jr	$t8
.LBB15_5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	b	.LBB15_2
.LBB15_6:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB15_1
# %bb.7:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB15_1
.Lfunc_end15:
	.size	_ZN9benchmark5State16StartKeepRunningEv, .Lfunc_end15-_ZN9benchmark5State16StartKeepRunningEv
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark5State17FinishKeepRunningEv # -- Begin function _ZN9benchmark5State17FinishKeepRunningEv
	.globl	_ZN9benchmark5State17FinishKeepRunningEv
	.p2align	5
	.type	_ZN9benchmark5State17FinishKeepRunningEv,@function
_ZN9benchmark5State17FinishKeepRunningEv: # @_ZN9benchmark5State17FinishKeepRunningEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$fp, $a0
	dbar	20
	beqz	$a1, .LBB16_6
.LBB16_1:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB16_3
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
.LBB16_3:
	ld.d	$a0, $fp, 160
	st.d	$zero, $fp, 0
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 25
	addi.d	$a0, $a0, 208
	pcaddu18i	$ra, %call36(_ZN9benchmark7Barrier4waitEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 176
	bnez	$a0, .LBB16_5
# %bb.4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB16_5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB16_6:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB16_1
# %bb.7:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB16_1
.Lfunc_end16:
	.size	_ZN9benchmark5State17FinishKeepRunningEv, .Lfunc_end16-_ZN9benchmark5State17FinishKeepRunningEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark8internal6IsZeroEd
.LCPI17_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
	.text
	.hidden	_ZN9benchmark8internal6IsZeroEd
	.globl	_ZN9benchmark8internal6IsZeroEd
	.p2align	5
	.type	_ZN9benchmark8internal6IsZeroEd,@function
_ZN9benchmark8internal6IsZeroEd:        # @_ZN9benchmark8internal6IsZeroEd
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI17_0)
	fabs.d	$fa0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end17:
	.size	_ZN9benchmark8internal6IsZeroEd, .Lfunc_end17-_ZN9benchmark8internal6IsZeroEd
                                        # -- End function
	.hidden	_ZN9benchmark8internal16GetOutputOptionsEb # -- Begin function _ZN9benchmark8internal16GetOutputOptionsEb
	.globl	_ZN9benchmark8internal16GetOutputOptionsEb
	.p2align	5
	.type	_ZN9benchmark8internal16GetOutputOptionsEb,@function
_ZN9benchmark8internal16GetOutputOptionsEb: # @_ZN9benchmark8internal16GetOutputOptionsEb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ori	$fp, $zero, 2
	bnez	$a0, .LBB18_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB18_3
# %bb.2:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 456519
	ori	$a1, $a1, 1377
	beq	$a0, $a1, .LBB18_6
.LBB18_3:                               # %"_ZZN9benchmark8internal16GetOutputOptionsEbENK3$_0clEv.exit"
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark17IsTruthyFlagValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_5
.LBB18_4:
	ori	$fp, $zero, 3
.LBB18_5:                               # %"_ZZN9benchmark8internal16GetOutputOptionsEbENK3$_0clEv.exit.thread"
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	ld.bu	$a0, $a0, %pc_lo12(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	andi	$a1, $fp, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB18_6:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
	pcaddu18i	$ra, %call36(_ZN9benchmark15IsColorTerminalEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_4
	b	.LBB18_5
.Lfunc_end18:
	.size	_ZN9benchmark8internal16GetOutputOptionsEb, .Lfunc_end18-_ZN9benchmark8internal16GetOutputOptionsEb
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark28CreateDefaultDisplayReporterEv # -- Begin function _ZN9benchmark28CreateDefaultDisplayReporterEv
	.globl	_ZN9benchmark28CreateDefaultDisplayReporterEv
	.p2align	5
	.type	_ZN9benchmark28CreateDefaultDisplayReporterEv,@function
_ZN9benchmark28CreateDefaultDisplayReporterEv: # @_ZN9benchmark28CreateDefaultDisplayReporterEv
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	dbar	20
	pcalau12i	$fp, %pc_hi20(_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	beqz	$a0, .LBB19_2
.LBB19_1:
	ld.d	$a0, $fp, %pc_lo12(_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB19_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB19_1
# %bb.3:
.Ltmp48:                                # EH_LABEL
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16GetOutputOptionsEb)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.4:
.Ltmp50:                                # EH_LABEL
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	addi.d	$a1, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.5:                                # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit
	ld.d	$a0, $sp, 8
	st.d	$a0, $fp, %pc_lo12(_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB19_1
.LBB19_6:
.Ltmp52:                                # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN9benchmark28CreateDefaultDisplayReporterEv, .Lfunc_end19-_ZN9benchmark28CreateDefaultDisplayReporterEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp48-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp48                #   Call between .Ltmp48 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin8          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Lfunc_end19-.Ltmp51           #   Call between .Ltmp51 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE
	.type	_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE,@function
_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE: # @_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	ld.d	$a3, $a1, 8
	ori	$a1, $zero, 3
	move	$fp, $a0
	beq	$a3, $a1, .LBB20_9
# %bb.1:
	ori	$a0, $zero, 4
	beq	$a3, $a0, .LBB20_6
# %bb.2:
	ori	$a0, $zero, 7
	bne	$a3, $a0, .LBB20_13
# %bb.3:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	move	$s1, $a2
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_13
# %bb.4:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterC2Ev)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark15ConsoleReporterE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $s0, 0
	st.w	$s1, $s0, 24
	st.d	$zero, $s0, 32
	addi.d	$a0, $s0, 48
	st.w	$zero, $s0, 48
	st.d	$zero, $s0, 56
	st.d	$a0, $s0, 64
	st.d	$a0, $s0, 72
	st.d	$zero, $s0, 80
	st.b	$zero, $s0, 88
	b	.LBB20_12
.LBB20_6:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	move	$a2, $a3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_13
# %bb.7:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterC2Ev)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark12JSONReporterE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark12JSONReporterE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 24
	b	.LBB20_12
.LBB20_9:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	move	$a2, $a3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_13
# %bb.10:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterC2Ev)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.11:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark11CSVReporterE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark11CSVReporterE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $s0, 0
	st.b	$zero, $s0, 24
	addi.d	$a0, $s0, 40
	st.w	$zero, $s0, 40
	st.d	$zero, $s0, 48
	st.d	$a0, $s0, 56
	st.d	$a0, $s0, 64
	st.d	$zero, $s0, 72
.LBB20_12:
	st.d	$s0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_13:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB20_14:
.Ltmp61:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_15:
.Ltmp55:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_16:
.Ltmp58:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE, .Lfunc_end20-_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp59-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin9          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Ltmp56-.Ltmp60                #   Call between .Ltmp60 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin9          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Ltmp53-.Ltmp57                #   Call between .Ltmp57 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin9          # >> Call Site 6 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin9          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin9          # >> Call Site 7 <<
	.uleb128 .Lfunc_end20-.Ltmp54           #   Call between .Ltmp54 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark22RunSpecifiedBenchmarksEv # -- Begin function _ZN9benchmark22RunSpecifiedBenchmarksEv
	.globl	_ZN9benchmark22RunSpecifiedBenchmarksEv
	.p2align	5
	.type	_ZN9benchmark22RunSpecifiedBenchmarksEv,@function
_ZN9benchmark22RunSpecifiedBenchmarksEv: # @_ZN9benchmark22RunSpecifiedBenchmarksEv
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
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
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	ld.d	$fp, $a0, 8
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 16
	st.d	$fp, $sp, 40
	move	$a0, $s1
	bltu	$fp, $a1, .LBB21_2
# %bb.1:                                # %.noexc.i
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
.LBB21_2:                               # %._crit_edge.i.i
	beqz	$fp, .LBB21_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB21_5
# %bb.4:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB21_6
.LBB21_5:
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
.Ltmp62:                                # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.7:
	ld.d	$a2, $sp, 8
	beq	$a2, $s1, .LBB21_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB21_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB21_10:
.Ltmp64:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s1, .LBB21_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN9benchmark22RunSpecifiedBenchmarksEv, .Lfunc_end21-_ZN9benchmark22RunSpecifiedBenchmarksEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Lfunc_begin10         #   Call between .Lfunc_begin10 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin10         #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp63           #   Call between .Ltmp63 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1232
	sub.d	$sp, $sp, $a3
	.cfi_def_cfa_offset 11456
	move	$s5, $a2
	ld.d	$fp, $a2, 8
	move	$s3, $a1
	move	$s0, $a0
	beqz	$fp, .LBB22_3
# %bb.1:
	ori	$a0, $zero, 3
	bne	$fp, $a0, .LBB22_4
# %bb.2:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_4
.LBB22_3:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a3, $a0, %pc_lo12(.L.str.44)
	ori	$a4, $zero, 1
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.LBB22_4:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB22_6
# %bb.5:
	move	$s4, $zero
	b	.LBB22_8
.LBB22_6:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	dbar	20
	pcalau12i	$fp, %pc_hi20(_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	beqz	$a0, .LBB22_234
.LBB22_7:                               # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EE5resetEPS1_.exit
	ld.d	$s4, $fp, %pc_lo12(_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	move	$s0, $s4
.LBB22_8:
	ld.d	$a0, $s0, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark19FLAGS_benchmark_outB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark19FLAGS_benchmark_outB5cxx11E)
	ld.d	$a0, $fp, 8
	beqz	$s3, .LBB22_10
# %bb.9:
	beqz	$a0, .LBB22_223
.LBB22_10:
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	beqz	$a0, .LBB22_14
# %bb.11:
	ld.d	$a1, $fp, 0
	addi.d	$a0, $sp, 112
.Ltmp70:                                # EH_LABEL
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp71:                                # EH_LABEL
# %bb.12:                               # %.noexc
	ld.d	$a0, $sp, 104
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 104
	add.d	$a0, $a2, $a0
	beqz	$a1, .LBB22_15
# %bb.13:
	move	$a1, $zero
	b	.LBB22_16
.LBB22_14:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	b	.LBB22_23
.LBB22_15:
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.LBB22_16:
.Ltmp72:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.17:                               # %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_228
# %bb.18:
	beqz	$s3, .LBB22_20
# %bb.19:
	move	$a0, $zero
	b	.LBB22_22
.LBB22_20:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	ld.b	$a0, $a0, %pc_lo12(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	slli.d	$a0, $a0, 1
.Ltmp86:                                # EH_LABEL
	andi	$a2, $a0, 2
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	addi.d	$a1, $a0, %pc_lo12(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.21:                               # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	move	$s3, $a0
.LBB22_22:
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 104
	st.d	$a0, $s3, 8
	st.d	$a0, $s3, 16
.LBB22_23:
	st.d	$zero, $sp, 96
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
.Ltmp89:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s5
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal22FindBenchmarksInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_17BenchmarkInstanceESaISA_EEPSo)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.24:
	beqz	$a0, .LBB22_37
# %bb.25:
	ld.d	$s6, $sp, 80
	ld.d	$fp, $sp, 88
	beq	$s6, $fp, .LBB22_34
# %bb.26:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark26FLAGS_benchmark_list_testsE)
	ld.bu	$a0, $a0, %pc_lo12(_ZN9benchmark26FLAGS_benchmark_list_testsE)
	beqz	$a0, .LBB22_44
# %bb.27:                               # %.lr.ph
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1536
	add.d	$s0, $sp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$s3, $a0, %pc_lo12(.L.str.49)
	b	.LBB22_29
	.p2align	4, , 16
.LBB22_28:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB22_29 Depth=1
	addi.d	$s6, $s6, 424
	beq	$s6, $fp, .LBB22_211
.LBB22_29:                              # =>This Inner Loop Header: Depth=1
.Ltmp223:                               # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNK9benchmark13BenchmarkName3strB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.30:                               #   in Loop: Header=BB22_29 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1528
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
.Ltmp226:                               # EH_LABEL
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.31:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63
                                        #   in Loop: Header=BB22_29 Depth=1
.Ltmp228:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.32:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
                                        #   in Loop: Header=BB22_29 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s0, .LBB22_28
# %bb.33:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
                                        #   in Loop: Header=BB22_29 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_28
.LBB22_34:
.Ltmp235:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 46
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.35:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s5, 8
.Ltmp237:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.36:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59
.Ltmp239:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
.LBB22_37:                              # %.invoke224
.Ltmp241:                               # EH_LABEL
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.38:                               # %.invoke
.Ltmp243:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.39:
	move	$s1, $zero
	ld.d	$a0, $sp, 80
	ld.d	$fp, $sp, 88
	beq	$a0, $fp, .LBB22_214
.LBB22_40:                              # %.lr.ph.i.i.i.preheader
	addi.d	$s2, $a0, 312
	.p2align	4, , 16
.LBB22_41:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 16
.Ltmp246:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.42:                               # %_ZSt8_DestroyIN9benchmark8internal17BenchmarkInstanceEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB22_41 Depth=1
	addi.d	$a0, $s2, -312
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 112
	addi.d	$s2, $s2, 424
	bne	$a0, $fp, .LBB22_41
# %bb.43:                               # %_ZSt8_DestroyIPN9benchmark8internal17BenchmarkInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i
	ld.d	$a0, $sp, 80
	bnez	$a0, .LBB22_215
	b	.LBB22_216
.LBB22_44:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB22_238
.LBB22_45:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark27FLAGS_benchmark_repetitionsE)
	ld.w	$a0, $a0, %pc_lo12(_ZN9benchmark27FLAGS_benchmark_repetitionsE)
	ld.d	$s5, $sp, 80
	ld.d	$s7, $sp, 88
	ori	$s0, $zero, 1
	slt	$fp, $s0, $a0
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	beq	$s5, $s7, .LBB22_59
# %bb.46:                               # %.lr.ph257.i
	move	$s3, $zero
	ori	$s6, $zero, 10
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1536
	add.d	$s0, $sp, $a0
	ori	$s1, $zero, 1
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, -349526
	lu52i.d	$s8, $a0, -1366
	ori	$s2, $zero, 144
	b	.LBB22_48
	.p2align	4, , 16
.LBB22_47:                              # %._crit_edge.i
                                        #   in Loop: Header=BB22_48 Depth=1
	sltu	$a1, $s4, $s6
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a2
	slt	$a0, $s1, $a0
	addi.d	$s5, $s5, 424
	or	$fp, $fp, $a0
	beq	$s5, $s7, .LBB22_58
.LBB22_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_55 Depth 2
                                        #     Child Loop BB22_57 Depth 2
.Ltmp91:                                # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNK9benchmark13BenchmarkName3strB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.49:                               # %.noexc73
                                        #   in Loop: Header=BB22_48 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1528
	add.d	$a1, $sp, $a1
	ld.d	$s4, $a1, 0
	beq	$a0, $s0, .LBB22_51
# %bb.50:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB22_48 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_51:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
                                        #   in Loop: Header=BB22_48 Depth=1
	ld.d	$a0, $s5, 360
	ld.d	$a5, $a0, 0
	ld.d	$a1, $a0, 8
	ld.w	$a0, $s5, 368
	beq	$a5, $a1, .LBB22_47
# %bb.52:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB22_48 Depth=1
	sub.d	$a2, $a1, $a5
	addi.d	$a2, $a2, -48
	bgeu	$a2, $s2, .LBB22_54
# %bb.53:                               #   in Loop: Header=BB22_48 Depth=1
	move	$a2, $a5
	b	.LBB22_57
	.p2align	4, , 16
.LBB22_54:                              # %vector.ph
                                        #   in Loop: Header=BB22_48 Depth=1
	mulh.du	$a2, $a2, $s8
	srli.d	$a2, $a2, 5
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 59, 2
	slli.d	$a4, $a2, 2
	slli.d	$a6, $a2, 6
	slli.d	$a2, $a2, 7
	add.d	$a2, $a2, $a6
	add.d	$a2, $a5, $a2
	vreplgr2vr.d	$vr0, $s3
	addi.d	$a5, $a5, 104
	move	$a6, $a4
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB22_55:                              # %vector.body
                                        #   Parent Loop BB22_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a5, -96
	ld.d	$t0, $a5, -48
	ld.d	$t1, $a5, 0
	ld.d	$t2, $a5, 48
	vinsgr2vr.d	$vr2, $a7, 0
	vinsgr2vr.d	$vr2, $t0, 1
	vinsgr2vr.d	$vr3, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 1
	vmax.du	$vr0, $vr0, $vr2
	vmax.du	$vr1, $vr1, $vr3
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 192
	bnez	$a6, .LBB22_55
# %bb.56:                               # %middle.block
                                        #   in Loop: Header=BB22_48 Depth=1
	vmax.du	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.du	$vr0, $vr1, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	beq	$a3, $a4, .LBB22_47
	.p2align	4, , 16
.LBB22_57:                              # %.lr.ph.i
                                        #   Parent Loop BB22_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 8
	sltu	$a4, $a3, $s3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $s3, $a4
	addi.d	$a2, $a2, 48
	or	$s3, $a4, $a3
	bne	$a2, $a1, .LBB22_57
	b	.LBB22_47
.LBB22_58:                              # %._crit_edge258.loopexit.i
	addi.d	$s0, $s3, 1
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	b	.LBB22_60
.LBB22_59:
	ori	$s6, $zero, 10
.LBB22_60:                              # %._crit_edge258.i
.Ltmp94:                                # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3144
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter7ContextC1Ev)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.61:                               # %.noexc72
	andi	$a0, $fp, 1
	maskeqz	$a0, $s0, $a0
	add.d	$a0, $a0, $s6
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3160
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3104
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3104
	add.d	$a1, $sp, $a1
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3112
	add.d	$a1, $sp, $a1
	st.d	$zero, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3120
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3128
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3136
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 0
.Ltmp96:                                # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3144
	add.d	$a1, $sp, $a0
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp97:                                # EH_LABEL
# %bb.62:
	beqz	$a0, .LBB22_202
# %bb.63:
	beqz	$s3, .LBB22_66
# %bb.64:
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 0
.Ltmp98:                                # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3144
	add.d	$a1, $sp, $a0
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp99:                                # EH_LABEL
# %bb.65:
	beqz	$a0, .LBB22_202
.LBB22_66:
	ld.d	$a0, $s0, 8
.Ltmp100:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.67:                               # %.noexc.i
	ld.d	$a0, $s0, 16
.Ltmp102:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.68:                               # %_ZN9benchmark8internal12_GLOBAL__N_112FlushStreamsEPNS_17BenchmarkReporterE.exit.i
	beqz	$s3, .LBB22_71
# %bb.69:
	ld.d	$a0, $s3, 8
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.70:                               # %.noexc116.i
	ld.d	$a0, $s3, 16
.Ltmp106:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
.LBB22_71:                              # %_ZN9benchmark8internal12_GLOBAL__N_112FlushStreamsEPNS_17BenchmarkReporterE.exit118.i
.Ltmp108:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	addi.d	$a1, $a0, %pc_lo12(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 44
	pcaddu18i	$ra, %call36(_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.72:
.Ltmp111:                               # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2456
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal23PerfCountersMeasurementC1ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.73:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1528
	add.d	$a1, $sp, $a1
	ld.d	$fp, $a1, 0
	beq	$a0, $fp, .LBB22_79
# %bb.74:                               # %.lr.ph.i.i.i.i.preheader
	addi.d	$s0, $a0, 16
	b	.LBB22_76
	.p2align	4, , 16
.LBB22_75:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
                                        #   in Loop: Header=BB22_76 Depth=1
	addi.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	beq	$a0, $fp, .LBB22_78
.LBB22_76:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB22_75
# %bb.77:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB22_76 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_75
.LBB22_78:                              # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
.LBB22_79:                              # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
	beqz	$a0, .LBB22_81
# %bb.80:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_81:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 80
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2448
	add.d	$a2, $sp, $a2
	st.d	$zero, $a2, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2432
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	lu12i.w	$a1, -474827
	ori	$a1, $a1, 541
	lu32i.d	$a1, -19785
	lu52i.d	$a1, $a1, 540
	mul.d	$a1, $a0, $a1
.Ltmp114:                               # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.82:
	ld.d	$s6, $sp, 80
	ld.d	$s8, $sp, 88
	beq	$s6, $s8, .LBB22_117
# %bb.83:                               # %.lr.ph267.i
	pcalau12i	$a0, %pc_hi20(_ZSt19piecewise_construct)
	addi.d	$s7, $a0, %pc_lo12(_ZSt19piecewise_construct)
	move	$fp, $zero
	move	$s5, $zero
	ori	$s0, $zero, 16
	ori	$s1, $zero, 24
	b	.LBB22_86
	.p2align	4, , 16
.LBB22_84:                              #   in Loop: Header=BB22_86 Depth=1
	ld.w	$a2, $a1, 0
	add.d	$a2, $a2, $a0
	st.w	$a2, $a1, 0
.LBB22_85:                              #   in Loop: Header=BB22_86 Depth=1
	ori	$a1, $zero, 1
	slt	$a1, $a1, $s2
	add.w	$s5, $s5, $a1
	addi.d	$s6, $s6, 424
	add.d	$fp, $fp, $a0
	beq	$s6, $s8, .LBB22_100
.LBB22_86:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_89 Depth 2
	ld.w	$a0, $s6, 296
	st.d	$zero, $sp, 616
	beqz	$a0, .LBB22_94
# %bb.87:                               #   in Loop: Header=BB22_86 Depth=1
	ld.w	$a2, $s6, 264
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3112
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2428
	add.d	$a0, $sp, $a0
	st.w	$a2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3104
	add.d	$a1, $sp, $a0
	beqz	$a3, .LBB22_92
# %bb.88:                               # %.lr.ph.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB22_86 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3104
	add.d	$a0, $sp, $a0
	.p2align	4, , 16
.LBB22_89:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB22_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a3, 32
	slt	$a1, $a1, $a2
	masknez	$a4, $a3, $a1
	masknez	$a5, $s0, $a1
	maskeqz	$a6, $s1, $a1
	or	$a5, $a6, $a5
	ldx.d	$a3, $a3, $a5
	maskeqz	$a5, $a0, $a1
	or	$a0, $a5, $a4
	bnez	$a3, .LBB22_89
# %bb.90:                               # %_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i.i
                                        #   in Loop: Header=BB22_86 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3104
	add.d	$a3, $sp, $a1
	move	$a1, $a3
	beq	$a0, $a3, .LBB22_92
# %bb.91:                               #   in Loop: Header=BB22_86 Depth=1
	or	$a1, $a5, $a4
	ld.w	$a3, $a1, 32
	move	$a1, $a0
	bge	$a2, $a3, .LBB22_93
.LBB22_92:                              # %.critedge.i.i
                                        #   in Loop: Header=BB22_86 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2428
	add.d	$a0, $sp, $a0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1520
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
.Ltmp117:                               # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3096
	add.d	$a0, $sp, $a0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1520
	add.d	$a3, $sp, $a2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3175
	add.d	$a4, $sp, $a2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
.LBB22_93:                              #   in Loop: Header=BB22_86 Depth=1
	addi.d	$a3, $a0, 40
	st.d	$a3, $sp, 616
	b	.LBB22_95
	.p2align	4, , 16
.LBB22_94:                              #   in Loop: Header=BB22_86 Depth=1
	move	$a3, $zero
.LBB22_95:                              #   in Loop: Header=BB22_86 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.w	$s2, $s6, 400
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2456
	add.d	$a2, $sp, $a2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1520
	add.d	$a4, $sp, $a4
	st.d	$a2, $a4, 0
	beq	$a0, $a1, .LBB22_98
# %bb.96:                               #   in Loop: Header=BB22_86 Depth=1
.Ltmp120:                               # EH_LABEL
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2456
	add.d	$a2, $sp, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunnerC1ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.97:                               # %.noexc121.i
                                        #   in Loop: Header=BB22_86 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, 184
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ld.d	$a1, $sp, 616
	ld.w	$a0, $a0, -76
	bnez	$a1, .LBB22_84
	b	.LBB22_85
	.p2align	4, , 16
.LBB22_98:                              #   in Loop: Header=BB22_86 Depth=1
.Ltmp122:                               # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1520
	add.d	$a2, $sp, $a1
	addi.d	$a3, $sp, 616
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.99:                               # %._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE12emplace_backIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEERS2_DpOT_.exit_crit_edge.i
                                        #   in Loop: Header=BB22_86 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 616
	ld.w	$a0, $a0, -76
	bnez	$a1, .LBB22_84
	b	.LBB22_85
.LBB22_100:                             # %._crit_edge268.i
	beqz	$s5, .LBB22_113
# %bb.101:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB22_113
# %bb.102:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	dbar	20
	pcalau12i	$s0, %pc_hi20(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a0, .LBB22_242
.LBB22_103:                             # %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.i
	ld.d	$a0, $s0, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a0, .LBB22_113
# %bb.104:
.Ltmp125:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 24
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.105:                              # %_ZN9benchmark8internallsIA25_cEERNS0_7LogTypeES4_RKT_.exit.i
	ld.d	$a0, $s0, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a0, .LBB22_113
# %bb.106:
.Ltmp127:                               # EH_LABEL
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.107:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.i
	ld.d	$a0, $s0, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a0, .LBB22_113
# %bb.108:
.Ltmp129:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.109:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit.thread.i
	ld.d	$a0, $s0, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a0, .LBB22_113
# %bb.110:
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2504
	add.d	$a2, $sp, $a2
	ld.d	$a2, $a2, 0
	sub.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 5
.Ltmp132:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.111:                              # %_ZN9benchmark8internallsImEERNS0_7LogTypeES3_RKT_.exit.i
	ld.d	$a0, $s0, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a0, .LBB22_113
# %bb.112:
.Ltmp134:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 106
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
.LBB22_113:                             # %_ZN9benchmark8internallsIA107_cEERNS0_7LogTypeES4_RKT_.exit.i
	srli.d	$a0, $fp, 60
	bnez	$a0, .LBB22_240
# %bb.114:
	beqz	$fp, .LBB22_117
# %bb.115:                              # %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
	slli.d	$a0, $fp, 3
.Ltmp137:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.116:                              # %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i
	move	$s7, $a0
	alsl.d	$fp, $fp, $a0, 3
	b	.LBB22_118
.LBB22_117:
	move	$s7, $zero
	move	$fp, $zero
.LBB22_118:                             # %_ZNSt6vectorImSaImEE7reserveEm.exit.i
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB22_133
# %bb.119:                              # %.lr.ph286.i.preheader
	move	$s0, $zero
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	lu12i.w	$a1, -91181
	ori	$a1, $a1, 1959
	lu32i.d	$a1, -364723
	lu52i.d	$a1, $a1, -713
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	lu52i.d	$s8, $a0, 2047
	ori	$s2, $zero, 1
	addi.w	$a0, $zero, -1
	lu52i.d	$s3, $a0, 255
	move	$s6, $s7
	b	.LBB22_122
	.p2align	4, , 16
.LBB22_120:                             #   in Loop: Header=BB22_122 Depth=1
	move	$s5, $s7
.LBB22_121:                             # %_ZSt6fill_nISt20back_insert_iteratorISt6vectorImSaImEEEimET_S5_T0_RKT1_.exit.i
                                        #   in Loop: Header=BB22_122 Depth=1
	addi.d	$s0, $s0, 1
	move	$s7, $s5
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB22_134
.LBB22_122:                             # %.lr.ph286.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_125 Depth 2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 184
	mul.d	$a1, $s0, $a1
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 108
	blez	$a0, .LBB22_120
# %bb.123:                              # %.lr.ph.i.i.i136.i.preheader
                                        #   in Loop: Header=BB22_122 Depth=1
	addi.d	$s4, $a0, 1
	b	.LBB22_125
	.p2align	4, , 16
.LBB22_124:                             #   in Loop: Header=BB22_125 Depth=2
	st.d	$s0, $s6, 0
	move	$s5, $s7
	addi.w	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bge	$s2, $s4, .LBB22_121
.LBB22_125:                             # %.lr.ph.i.i.i136.i
                                        #   Parent Loop BB22_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$s6, $fp, .LBB22_124
# %bb.126:                              #   in Loop: Header=BB22_125 Depth=2
	sub.d	$s6, $fp, $s7
	beq	$s6, $s8, .LBB22_221
# %bb.127:                              # %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB22_125 Depth=2
	srai.d	$a0, $s6, 3
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 3
.Ltmp142:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.128:                              # %.noexc138.i
                                        #   in Loop: Header=BB22_125 Depth=2
	move	$s5, $a0
	stx.d	$s0, $a0, $s6
	blez	$s6, .LBB22_130
# %bb.129:                              #   in Loop: Header=BB22_125 Depth=2
	move	$a0, $s5
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_130:                             # %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB22_125 Depth=2
	beqz	$s7, .LBB22_132
# %bb.131:                              #   in Loop: Header=BB22_125 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_132:                             # %_ZNSt6vectorImSaImEE17_M_realloc_appendIJRKmEEEvDpOT_.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB22_125 Depth=2
	add.d	$s6, $s5, $s6
	alsl.d	$fp, $s1, $s5, 3
	move	$s7, $s5
	addi.w	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	blt	$s2, $s4, .LBB22_125
	b	.LBB22_121
.LBB22_133:
	move	$s5, $s7
	move	$s6, $s7
.LBB22_134:                             # %._crit_edge287.i
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE)
	ld.bu	$a0, $a0, %pc_lo12(_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE)
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB22_143
# %bb.135:
	addi.d	$s0, $sp, 632
	st.d	$s0, $sp, 616
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 632
	st.w	$a0, $sp, 635
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 624
	st.b	$zero, $sp, 639
.Ltmp148:                               # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 616
	pcaddu18i	$ra, %call36(_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.136:
	ld.d	$a0, $sp, 616
	beq	$a0, $s0, .LBB22_138
# %bb.137:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 632
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_138:
.Ltmp151:                               # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt13random_device9_M_getvalEv)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.139:                              # %_ZNSt13random_deviceclEv.exit.i
	bstrpick.d	$a2, $a0, 31, 0
	st.d	$a2, $sp, 616
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 616
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB22_140:                             # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB22_140
# %bb.141:
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1512
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
.Ltmp153:                               # EH_LABEL
	addi.d	$a2, $sp, 616
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.142:
.Ltmp159:                               # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt13random_device7_M_finiEv)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
.LBB22_143:
	beq	$s5, $s6, .LBB22_194
# %bb.144:                              # %.lr.ph291.i
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1544
	add.d	$s1, $sp, $a0
	ori	$s2, $zero, 184
	ori	$s0, $zero, 24
	move	$s7, $s5
	b	.LBB22_146
	.p2align	4, , 16
.LBB22_145:                             #   in Loop: Header=BB22_146 Depth=1
	addi.d	$s7, $s7, 8
	beq	$s7, $s6, .LBB22_194
.LBB22_146:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_160 Depth 2
                                        #     Child Loop BB22_164 Depth 2
                                        #     Child Loop BB22_166 Depth 2
	ld.d	$a0, $s7, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	mul.d	$a0, $a0, $s2
	add.d	$s8, $a1, $a0
.Ltmp162:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunner15DoOneRepetitionEv)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.147:                              #   in Loop: Header=BB22_146 Depth=1
	ld.w	$a0, $s8, 108
	ld.w	$a1, $s8, 116
	bne	$a0, $a1, .LBB22_145
# %bb.148:                              #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	fld.d	$fa0, $s8, 88
	ld.bu	$a1, $s8, 112
	ld.d	$a2, $s8, 168
	ld.d	$a3, $a3, 8
.Ltmp164:                               # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp165:                               # EH_LABEL
# %bb.149:                              #   in Loop: Header=BB22_146 Depth=1
	beqz	$s3, .LBB22_151
# %bb.150:                              #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $s3, 0
	fld.d	$fa0, $s8, 88
	ld.bu	$a1, $s8, 112
	ld.d	$a2, $s8, 168
	ld.d	$a3, $a0, 8
.Ltmp166:                               # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a3, 0
.Ltmp167:                               # EH_LABEL
.LBB22_151:                             #   in Loop: Header=BB22_146 Depth=1
.Ltmp169:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunner10GetResultsEv)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.152:                              #   in Loop: Header=BB22_146 Depth=1
	vld	$vr0, $a0, 0
	ld.d	$a1, $a0, 16
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1520
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1536
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	ld.d	$a1, $a0, 40
	st.d	$zero, $a0, 16
	vld	$vr0, $a0, 24
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vst	$vr1, $a0, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1560
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	ld.hu	$a1, $a0, 48
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1544
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	st.d	$zero, $a0, 40
	vst	$vr1, $a0, 24
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1568
	add.d	$a0, $sp, $a0
	st.h	$a1, $a0, 0
	ld.d	$a0, $s8, 64
	beqz	$a0, .LBB22_173
# %bb.153:                              #   in Loop: Header=BB22_146 Depth=1
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a0, 0
	bne	$a2, $a3, .LBB22_173
# %bb.154:                              #   in Loop: Header=BB22_146 Depth=1
	addi.d	$s8, $a0, 8
.Ltmp172:                               # EH_LABEL
	addi.d	$a0, $sp, 616
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.155:                              #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1552
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 616
	ld.d	$a3, $sp, 624
.Ltmp175:                               # EH_LABEL
	move	$a0, $s1
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.156:                              #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3112
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3104
	add.d	$a1, $sp, $a0
	beqz	$a3, .LBB22_167
# %bb.157:                              # %.lr.ph.i.i.i149.i.preheader
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 256
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3104
	add.d	$a2, $sp, $a1
	b	.LBB22_160
	.p2align	4, , 16
.LBB22_158:                             #   in Loop: Header=BB22_160 Depth=2
	move	$a1, $a2
.LBB22_159:                             #   in Loop: Header=BB22_160 Depth=2
	ldx.d	$a3, $a3, $a4
	move	$a2, $a1
	beqz	$a3, .LBB22_167
.LBB22_160:                             # %.lr.ph.i.i.i149.i
                                        #   Parent Loop BB22_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 32
	ori	$a4, $zero, 24
	blt	$a5, $a0, .LBB22_158
# %bb.161:                              #   in Loop: Header=BB22_160 Depth=2
	ori	$a4, $zero, 16
	move	$a1, $a3
	blt	$a0, $a5, .LBB22_159
# %bb.162:                              #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a4, $a3, 16
	move	$a1, $a3
	ori	$t1, $zero, 16
	beqz	$a4, .LBB22_165
# %bb.163:                              # %.lr.ph.i.i.i.i151.i.preheader
                                        #   in Loop: Header=BB22_146 Depth=1
	move	$a1, $a3
	.p2align	4, , 16
.LBB22_164:                             # %.lr.ph.i.i.i.i151.i
                                        #   Parent Loop BB22_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 32
	slt	$a5, $a5, $a0
	masknez	$a6, $a4, $a5
	masknez	$a7, $t1, $a5
	maskeqz	$t0, $s0, $a5
	or	$a7, $t0, $a7
	ldx.d	$a4, $a4, $a7
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a6
	bnez	$a4, .LBB22_164
.LBB22_165:                             # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a3, $a3, 24
	beqz	$a3, .LBB22_168
	.p2align	4, , 16
.LBB22_166:                             # %.lr.ph.i25.i.i.i.i
                                        #   Parent Loop BB22_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 32
	slt	$a4, $a0, $a4
	maskeqz	$a5, $a3, $a4
	masknez	$a6, $s0, $a4
	maskeqz	$a7, $t1, $a4
	or	$a6, $a7, $a6
	ldx.d	$a3, $a3, $a6
	masknez	$a2, $a2, $a4
	or	$a2, $a5, $a2
	bnez	$a3, .LBB22_166
	b	.LBB22_168
.LBB22_167:                             # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	move	$a2, $a1
.LBB22_168:                             # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE5eraseERS1_.exit.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
.Ltmp178:                               # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3096
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.169:                              #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $sp, 616
	ld.d	$a1, $sp, 624
.Ltmp181:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.170:                              # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $sp, 616
	beqz	$a0, .LBB22_172
# %bb.171:                              #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a1, $sp, 632
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_172:                             # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1568
	add.d	$a0, $sp, $a0
	ld.b	$a1, $a0, 0
.LBB22_173:                             #   in Loop: Header=BB22_146 Depth=1
	andi	$a0, $a1, 1
	beqz	$a0, .LBB22_175
# %bb.174:                              #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB22_177
.LBB22_175:                             #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
.Ltmp184:                               # EH_LABEL
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1520
	add.d	$a1, $sp, $a1
	jirl	$ra, $a2, 0
.Ltmp185:                               # EH_LABEL
# %bb.176:                              # %.noexc163.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB22_178
.LBB22_177:                             # %.thread.i.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
.Ltmp186:                               # EH_LABEL
	move	$a1, $s1
	jirl	$ra, $a2, 0
.Ltmp187:                               # EH_LABEL
.LBB22_178:                             # %"_ZZN9benchmark8internal12_GLOBAL__N_16ReportEPNS_17BenchmarkReporterES3_RKNS0_10RunResultsEENK3$_0clES3_bS6_.exit.i.i"
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	beqz	$s3, .LBB22_186
# %bb.179:                              # %.split10.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB22_181
# %bb.180:                              # %.split10.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1569
	add.d	$a0, $sp, $a0
	ld.b	$a0, $a0, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB22_183
.LBB22_181:                             #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 16
.Ltmp188:                               # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a1, $sp, $a0
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp189:                               # EH_LABEL
# %bb.182:                              # %.noexc165.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB22_184
.LBB22_183:                             # %.thread.i13.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 16
.Ltmp190:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s1
	jirl	$ra, $a2, 0
.Ltmp191:                               # EH_LABEL
.LBB22_184:                             # %_ZN9benchmark8internal12_GLOBAL__N_112FlushStreamsEPNS_17BenchmarkReporterE.exit18.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
.Ltmp192:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.185:                              # %.noexc167.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
	move	$s0, $s3
.LBB22_186:                             # %_ZN9benchmark8internal12_GLOBAL__N_112FlushStreamsEPNS_17BenchmarkReporterE.exit.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $s0, 8
.Ltmp196:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.187:                              # %.noexc169.i
                                        #   in Loop: Header=BB22_146 Depth=1
	ld.d	$a0, $s0, 16
.Ltmp198:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.188:                              # %_ZN9benchmark8internal12_GLOBAL__N_16ReportEPNS_17BenchmarkReporterES3_RKNS0_10RunResultsE.exit.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
.Ltmp201:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.189:                              # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$s0, $zero, 24
	beqz	$a0, .LBB22_191
# %bb.190:                              #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1560
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_191:                             # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1528
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
.Ltmp204:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.192:                              # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1.i.i
                                        #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB22_145
# %bb.193:                              #   in Loop: Header=BB22_146 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_145
.LBB22_194:                             # %._crit_edge292.i
	beqz	$s5, .LBB22_196
# %bb.195:
	sub.d	$a1, $fp, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_196:                             # %_ZNSt6vectorImSaImEED2Ev.exit.i
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	ld.d	$s5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2440
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	beq	$s5, $fp, .LBB22_199
	.p2align	4, , 16
.LBB22_197:                             # %.lr.ph.i.i.i143.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunnerD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 184
	bne	$s5, $fp, .LBB22_197
# %bb.198:                              # %_ZSt8_DestroyIPN9benchmark8internal15BenchmarkRunnerES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	ld.d	$s5, $a0, 0
.LBB22_199:                             # %_ZSt8_DestroyIPN9benchmark8internal15BenchmarkRunnerES2_EvT_S4_RSaIT0_E.exit.i.i
	beqz	$s5, .LBB22_201
# %bb.200:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_201:                             # %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev.exit.i
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2456
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12PerfCountersD2Ev)
	jirl	$ra, $ra, 0
.LBB22_202:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
.Ltmp207:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp208:                               # EH_LABEL
# %bb.203:
	beqz	$s3, .LBB22_205
# %bb.204:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 24
.Ltmp209:                               # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp210:                               # EH_LABEL
.LBB22_205:
	ld.d	$a0, $s0, 8
.Ltmp211:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.206:                              # %.noexc175.i
	ld.d	$a0, $s0, 16
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.207:                              # %_ZN9benchmark8internal12_GLOBAL__N_112FlushStreamsEPNS_17BenchmarkReporterE.exit177.i
	beqz	$s3, .LBB22_210
# %bb.208:
	ld.d	$a0, $s3, 8
.Ltmp215:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.209:                              # %.noexc179.i
	ld.d	$a0, $s3, 16
.Ltmp217:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
.LBB22_210:                             # %_ZN9benchmark8internal12_GLOBAL__N_112FlushStreamsEPNS_17BenchmarkReporterE.exit181.i
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3112
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
.Ltmp220:                               # EH_LABEL
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3096
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
.LBB22_211:                             # %.loopexit
.Ltmp231:                               # EH_LABEL
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.212:
.Ltmp233:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.213:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 80
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	lu12i.w	$a1, -474827
	ori	$a1, $a1, 541
	lu32i.d	$a1, -19785
	lu52i.d	$a1, $a1, 540
	mul.d	$s1, $a0, $a1
	ld.d	$a0, $sp, 80
	ld.d	$fp, $sp, 88
	bne	$a0, $fp, .LBB22_40
.LBB22_214:                             # %_ZSt8_DestroyIPN9benchmark8internal17BenchmarkInstanceES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$a0, .LBB22_216
.LBB22_215:
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_216:                             # %_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_218
# %bb.217:                              # %_ZNKSt14default_deleteIN9benchmark17BenchmarkReporterEEclEPS1_.exit.i78
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
	jirl	$ra, $a1, 0
.LBB22_218:                             # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit79
	beqz	$s4, .LBB22_220
# %bb.219:                              # %_ZNKSt14default_deleteIN9benchmark17BenchmarkReporterEEclEPS1_.exit.i81
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 40
	move	$a0, $s4
	jirl	$ra, $a1, 0
.LBB22_220:                             # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit82
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1232
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
.LBB22_221:
.Ltmp145:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.222:                              # %.noexc137.i
.LBB22_223:
.Ltmp249:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 81
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.224:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp251:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.225:                              # %_ZNSolsEPFRSoS_E.exit
.Ltmp253:                               # EH_LABEL
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.226:
.Ltmp255:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
.LBB22_227:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_228:
.Ltmp74:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 20
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.229:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp76:                                # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.230:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp78:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.231:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
.Ltmp80:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.232:                              # %_ZNSolsEPFRSoS_E.exit54
.Ltmp82:                                # EH_LABEL
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.233:
.Ltmp84:                                # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
	b	.LBB22_227
.LBB22_234:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB22_7
# %bb.235:
.Ltmp65:                                # EH_LABEL
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16GetOutputOptionsEb)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.236:
.Ltmp67:                                # EH_LABEL
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	addi.d	$a1, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12_GLOBAL__N_114CreateReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15ConsoleReporter13OutputOptionsE)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.237:                              # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit.i
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, %pc_lo12(_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB22_7
.LBB22_238:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB22_45
# %bb.239:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB22_45
.LBB22_240:
.Ltmp139:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.241:                              # %.noexc134.i
.LBB22_242:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB22_103
# %bb.243:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4clog)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4clog)
	st.d	$a0, $s0, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB22_103
.LBB22_244:
.Ltmp69:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_245:
.Ltmp136:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_286
.LBB22_246:
.Ltmp131:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_286
.LBB22_247:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_248:
.Ltmp150:                               # EH_LABEL
	ld.d	$a2, $sp, 616
	move	$s1, $a0
	beq	$a2, $s0, .LBB22_284
# %bb.249:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
	ld.d	$a0, $sp, 632
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_284
.LBB22_250:
.Ltmp155:                               # EH_LABEL
	move	$s1, $a0
.Ltmp156:                               # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt13random_device7_M_finiEv)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
	b	.LBB22_284
.LBB22_251:
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_252:
.Ltmp116:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_286
.LBB22_253:
.Ltmp113:                               # EH_LABEL
	move	$s1, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB22_287
.LBB22_254:
.Ltmp110:                               # EH_LABEL
	b	.LBB22_269
.LBB22_255:                             # %.thread382.i
.Ltmp141:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_286
.LBB22_256:
.Ltmp222:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_257:
.Ltmp183:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_258:
.Ltmp180:                               # EH_LABEL
	b	.LBB22_260
.LBB22_259:
.Ltmp177:                               # EH_LABEL
.LBB22_260:
	move	$s1, $a0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB22_275
.LBB22_261:
.Ltmp174:                               # EH_LABEL
	b	.LBB22_274
.LBB22_262:
.Ltmp88:                                # EH_LABEL
	b	.LBB22_272
.LBB22_263:
.Ltmp171:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_284
.LBB22_264:
.Ltmp203:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_265:
.Ltmp206:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_266:
.Ltmp119:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_286
.LBB22_267:
.Ltmp124:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_286
.LBB22_268:
.Ltmp219:                               # EH_LABEL
.LBB22_269:
	move	$s1, $a0
	b	.LBB22_287
.LBB22_270:
.Ltmp168:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB22_284
.LBB22_271:
.Ltmp257:                               # EH_LABEL
.LBB22_272:                             # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit85
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_290
	b	.LBB22_292
.LBB22_273:
.Ltmp200:                               # EH_LABEL
.LBB22_274:
	move	$s1, $a0
.LBB22_275:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal10RunResultsD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB22_284
.LBB22_276:                             # %.loopexit111
.Ltmp93:                                # EH_LABEL
	b	.LBB22_280
.LBB22_277:                             # %.loopexit.split-lp
.Ltmp245:                               # EH_LABEL
	b	.LBB22_279
.LBB22_278:
.Ltmp225:                               # EH_LABEL
.LBB22_279:                             # %.body
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
.LBB22_280:                             # %.body
	move	$s1, $a0
	b	.LBB22_288
.LBB22_281:                             # %.loopexit.i
.Ltmp144:                               # EH_LABEL
	b	.LBB22_283
.LBB22_282:                             # %.loopexit.split-lp.i
.Ltmp147:                               # EH_LABEL
.LBB22_283:
	move	$s1, $a0
	move	$s5, $s7
.LBB22_284:
	beqz	$s5, .LBB22_286
# %bb.285:
	sub.d	$a1, $fp, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_286:                             # %_ZNSt6vectorImSaImEED2Ev.exit173.i
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2456
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12PerfCountersD2Ev)
	jirl	$ra, $ra, 0
.LBB22_287:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3096
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev)
	jirl	$ra, $ra, 0
.LBB22_288:                             # %.body
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB22_291
# %bb.289:                              # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit85
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bnez	$a0, .LBB22_292
.LBB22_290:                             # %_ZNSt10unique_ptrIN9benchmark17BenchmarkReporterESt14default_deleteIS1_EED2Ev.exit88
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_291:                             # %_ZNKSt14default_deleteIN9benchmark17BenchmarkReporterEEclEPS1_.exit.i84
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_290
.LBB22_292:                             # %_ZNKSt14default_deleteIN9benchmark17BenchmarkReporterEEclEPS1_.exit.i87
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
	jirl	$ra, $a1, 0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_293:
.Ltmp230:                               # EH_LABEL
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1520
	add.d	$a1, $sp, $a1
	ld.d	$a2, $a1, 0
	move	$s1, $a0
	beq	$a2, $s0, .LBB22_288
# %bb.294:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_288
.LBB22_295:
.Ltmp248:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end22-_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table22:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp70-.Lfunc_begin11         #   Call between .Lfunc_begin11 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin11         # >> Call Site 2 <<
	.uleb128 .Ltmp73-.Ltmp70                #   Call between .Ltmp70 and .Ltmp73
	.uleb128 .Ltmp257-.Lfunc_begin11        #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin11         # >> Call Site 3 <<
	.uleb128 .Ltmp86-.Ltmp73                #   Call between .Ltmp73 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin11         # >> Call Site 4 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin11         #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin11         # >> Call Site 5 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp245-.Lfunc_begin11        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin11        #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Ltmp229-.Ltmp226              #   Call between .Ltmp226 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin11        #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin11        # >> Call Site 8 <<
	.uleb128 .Ltmp235-.Ltmp229              #   Call between .Ltmp229 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin11        # >> Call Site 9 <<
	.uleb128 .Ltmp244-.Ltmp235              #   Call between .Ltmp235 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin11        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin11        # >> Call Site 10 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin11        #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp247-.Lfunc_begin11        # >> Call Site 11 <<
	.uleb128 .Ltmp91-.Ltmp247               #   Call between .Ltmp247 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin11         # >> Call Site 12 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin11         #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin11         # >> Call Site 13 <<
	.uleb128 .Ltmp94-.Ltmp92                #   Call between .Ltmp92 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin11         # >> Call Site 14 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp245-.Lfunc_begin11        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin11         # >> Call Site 15 <<
	.uleb128 .Ltmp107-.Ltmp96               #   Call between .Ltmp96 and .Ltmp107
	.uleb128 .Ltmp219-.Lfunc_begin11        #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin11        # >> Call Site 16 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin11        #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin11        # >> Call Site 17 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin11        #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin11        # >> Call Site 18 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin11        # >> Call Site 19 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin11        #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin11        # >> Call Site 20 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin11        #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin11        # >> Call Site 21 <<
	.uleb128 .Ltmp123-.Ltmp120              #   Call between .Ltmp120 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin11        #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin11        # >> Call Site 22 <<
	.uleb128 .Ltmp130-.Ltmp125              #   Call between .Ltmp125 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin11        #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin11        # >> Call Site 23 <<
	.uleb128 .Ltmp135-.Ltmp132              #   Call between .Ltmp132 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin11        #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin11        # >> Call Site 24 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp141-.Lfunc_begin11        #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin11        # >> Call Site 25 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin11        #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin11        # >> Call Site 26 <<
	.uleb128 .Ltmp148-.Ltmp143              #   Call between .Ltmp143 and .Ltmp148
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin11        # >> Call Site 27 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin11        #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin11        # >> Call Site 28 <<
	.uleb128 .Ltmp151-.Ltmp149              #   Call between .Ltmp149 and .Ltmp151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin11        # >> Call Site 29 <<
	.uleb128 .Ltmp154-.Ltmp151              #   Call between .Ltmp151 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin11        #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin11        # >> Call Site 30 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin11        #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin11        # >> Call Site 31 <<
	.uleb128 .Ltmp167-.Ltmp162              #   Call between .Ltmp162 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin11        #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin11        # >> Call Site 32 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin11        #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin11        # >> Call Site 33 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin11        #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin11        # >> Call Site 34 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin11        #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin11        # >> Call Site 35 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin11        #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin11        # >> Call Site 36 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin11        #     jumps to .Ltmp183
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin11        # >> Call Site 37 <<
	.uleb128 .Ltmp184-.Ltmp182              #   Call between .Ltmp182 and .Ltmp184
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin11        # >> Call Site 38 <<
	.uleb128 .Ltmp199-.Ltmp184              #   Call between .Ltmp184 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin11        #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin11        # >> Call Site 39 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin11        #     jumps to .Ltmp203
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp202-.Lfunc_begin11        # >> Call Site 40 <<
	.uleb128 .Ltmp204-.Ltmp202              #   Call between .Ltmp202 and .Ltmp204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin11        # >> Call Site 41 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin11        #     jumps to .Ltmp206
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp205-.Lfunc_begin11        # >> Call Site 42 <<
	.uleb128 .Ltmp207-.Ltmp205              #   Call between .Ltmp205 and .Ltmp207
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin11        # >> Call Site 43 <<
	.uleb128 .Ltmp218-.Ltmp207              #   Call between .Ltmp207 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin11        #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin11        # >> Call Site 44 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin11        #     jumps to .Ltmp222
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp231-.Lfunc_begin11        # >> Call Site 45 <<
	.uleb128 .Ltmp234-.Ltmp231              #   Call between .Ltmp231 and .Ltmp234
	.uleb128 .Ltmp245-.Lfunc_begin11        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin11        # >> Call Site 46 <<
	.uleb128 .Ltmp145-.Ltmp234              #   Call between .Ltmp234 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin11        # >> Call Site 47 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin11        #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin11        # >> Call Site 48 <<
	.uleb128 .Ltmp256-.Ltmp249              #   Call between .Ltmp249 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin11        #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin11        # >> Call Site 49 <<
	.uleb128 .Ltmp74-.Ltmp256               #   Call between .Ltmp256 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin11         # >> Call Site 50 <<
	.uleb128 .Ltmp85-.Ltmp74                #   Call between .Ltmp74 and .Ltmp85
	.uleb128 .Ltmp257-.Lfunc_begin11        #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin11         # >> Call Site 51 <<
	.uleb128 .Ltmp65-.Ltmp85                #   Call between .Ltmp85 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin11         # >> Call Site 52 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin11         #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin11         # >> Call Site 53 <<
	.uleb128 .Ltmp139-.Ltmp68               #   Call between .Ltmp68 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin11        # >> Call Site 54 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin11        #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin11        # >> Call Site 55 <<
	.uleb128 .Ltmp156-.Ltmp140              #   Call between .Ltmp140 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin11        # >> Call Site 56 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin11        #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp157-.Lfunc_begin11        # >> Call Site 57 <<
	.uleb128 .Lfunc_end22-.Ltmp157          #   Call between .Ltmp157 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
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
	.hidden	_ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	addi.d	$fp, $sp, 24
	addi.d	$s1, $s0, 16
	st.d	$fp, $sp, 8
	beq	$a0, $s1, .LBB23_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $s0, 16
	ld.d	$s2, $s0, 8
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	b	.LBB23_3
.LBB23_2:
	ld.d	$s2, $s0, 8
	addi.d	$a2, $s2, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	st.d	$s2, $sp, 16
	st.d	$s1, $s0, 0
	st.d	$zero, $s0, 8
	st.b	$zero, $s0, 16
.Ltmp258:                               # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.4:
	ld.d	$a2, $sp, 8
	beq	$a2, $fp, .LBB23_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB23_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB23_7:
.Ltmp260:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $fp, .LBB23_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end23-_ZN9benchmark22RunSpecifiedBenchmarksENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp258-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp258
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin12        #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end23-.Ltmp259          #   Call between .Ltmp259 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE # -- Begin function _ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE
	.globl	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE
	.p2align	5
	.type	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE,@function
_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE: # @_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
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
	move	$fp, $a0
	addi.d	$s2, $sp, 32
	st.d	$s2, $sp, 16
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	ld.d	$s0, $a0, 8
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s0, $sp, 48
	move	$a0, $s2
	bltu	$s0, $a1, .LBB24_2
# %bb.1:                                # %.noexc.i
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB24_2:                               # %._crit_edge.i.i
	beqz	$s0, .LBB24_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB24_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB24_6
.LBB24_5:
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp261:                               # EH_LABEL
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.7:
	ld.d	$a2, $sp, 16
	beq	$a2, $s2, .LBB24_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB24_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB24_10:
.Ltmp263:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s2, .LBB24_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE, .Lfunc_end24-_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp261-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp261
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin13        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Lfunc_end24-.Ltmp262          #   Call between .Ltmp262 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	move	$s0, $a1
	ld.d	$a1, $a1, 0
	addi.d	$fp, $sp, 32
	addi.d	$s1, $s0, 16
	st.d	$fp, $sp, 16
	beq	$a1, $s1, .LBB25_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a2, $s0, 16
	ld.d	$s2, $s0, 8
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 32
	b	.LBB25_3
.LBB25_2:
	ld.d	$s2, $s0, 8
	addi.d	$a2, $s2, 1
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB25_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	st.d	$s2, $sp, 24
	st.d	$s1, $s0, 0
	st.d	$zero, $s0, 8
	st.b	$zero, $s0, 16
.Ltmp264:                               # EH_LABEL
	addi.d	$a2, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.4:
	ld.d	$a2, $sp, 16
	beq	$a2, $fp, .LBB25_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB25_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB25_7:
.Ltmp266:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$s0, $a0
	beq	$a2, $fp, .LBB25_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB25_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end25-_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp264-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin14        #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Lfunc_end25-.Ltmp265          #   Call between .Ltmp265 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_ # -- Begin function _ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_
	.globl	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_
	.p2align	5
	.type	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_,@function
_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_: # @_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s3, $sp, 24
	st.d	$s3, $sp, 8
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	ld.d	$s1, $a0, 8
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s1, $sp, 40
	move	$a0, $s3
	bltu	$s1, $a1, .LBB26_2
# %bb.1:                                # %.noexc.i
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
.LBB26_2:                               # %._crit_edge.i.i
	beqz	$s1, .LBB26_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB26_5
# %bb.4:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB26_6
.LBB26_5:
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB26_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
.Ltmp267:                               # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.7:
	ld.d	$a2, $sp, 8
	beq	$a2, $s3, .LBB26_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB26_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB26_10:
.Ltmp269:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s3, .LBB26_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB26_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_, .Lfunc_end26-_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterES1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table26:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp267-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin15        #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Lfunc_end26-.Ltmp268          #   Call between .Ltmp268 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev,comdat
	.hidden	_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev # -- Begin function _ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev,@function
_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev: # @_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$s1, $fp, 8
	beq	$a0, $s1, .LBB27_5
# %bb.1:                                # %.lr.ph.i.i.preheader
	addi.d	$s0, $a0, 312
	.p2align	4, , 16
.LBB27_2:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 16
.Ltmp270:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.3:                                # %_ZSt8_DestroyIN9benchmark8internal17BenchmarkInstanceEEvPT_.exit.i.i
                                        #   in Loop: Header=BB27_2 Depth=1
	addi.d	$a0, $s0, -312
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 112
	addi.d	$s0, $s0, 424
	bne	$a0, $s1, .LBB27_2
# %bb.4:                                # %_ZSt8_DestroyIPN9benchmark8internal17BenchmarkInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split
	ld.d	$a0, $fp, 0
.LBB27_5:                               # %_ZSt8_DestroyIPN9benchmark8internal17BenchmarkInstanceES2_EvT_S4_RSaIT0_E.exit
	beqz	$a0, .LBB27_7
# %bb.6:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB27_7:                               # %_ZNSt12_Vector_baseIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB27_8:
.Ltmp272:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev, .Lfunc_end27-_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev,"aG",@progbits,_ZNSt6vectorIN9benchmark8internal17BenchmarkInstanceESaIS2_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp270-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin16        #     jumps to .Ltmp272
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp271-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Lfunc_end27-.Ltmp271          #   Call between .Ltmp271 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark18GetDefaultTimeUnitEv # -- Begin function _ZN9benchmark18GetDefaultTimeUnitEv
	.globl	_ZN9benchmark18GetDefaultTimeUnitEv
	.p2align	5
	.type	_ZN9benchmark18GetDefaultTimeUnitEv,@function
_ZN9benchmark18GetDefaultTimeUnitEv:    # @_ZN9benchmark18GetDefaultTimeUnitEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
	ld.w	$a0, $a0, %pc_lo12(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
	ret
.Lfunc_end28:
	.size	_ZN9benchmark18GetDefaultTimeUnitEv, .Lfunc_end28-_ZN9benchmark18GetDefaultTimeUnitEv
                                        # -- End function
	.hidden	_ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE # -- Begin function _ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE
	.globl	_ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE
	.p2align	5
	.type	_ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE,@function
_ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE: # @_ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
	st.w	$a0, $a1, %pc_lo12(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
	ret
.Lfunc_end29:
	.size	_ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE, .Lfunc_end29-_ZN9benchmark18SetDefaultTimeUnitENS_8TimeUnitE
                                        # -- End function
	.hidden	_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev # -- Begin function _ZN9benchmark18GetBenchmarkFilterB5cxx11Ev
	.globl	_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev
	.p2align	5
	.type	_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev,@function
_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev: # @_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev
	.cfi_startproc
# %bb.0:
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
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$a1, $a1, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	ld.d	$s0, $a1, 8
	ld.d	$s1, $a1, 0
	ori	$a1, $zero, 16
	st.d	$s0, $sp, 8
	bltu	$s0, $a1, .LBB30_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB30_2:                               # %._crit_edge.i.i
	beqz	$s0, .LBB30_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB30_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB30_6
.LBB30_5:
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev, .Lfunc_end30-_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$fp, $a1, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	ld.d	$a3, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a3, $a1, .LBB31_4
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a0, 16
	beq	$a1, $a2, .LBB31_7
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	vld	$vr0, $a0, 8
	ld.d	$a4, $fp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a3, .LBB31_6
# %bb.3:
	st.d	$a3, $a0, 0
	st.d	$a4, $a0, 16
	b	.LBB31_13
.LBB31_4:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a0, 16
	beq	$a1, $a2, .LBB31_7
# %bb.5:                                # %.thread.i
	vld	$vr0, $a0, 8
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
.LBB31_6:
	st.d	$a2, $a0, 0
	move	$a3, $a2
	b	.LBB31_13
.LBB31_7:
	beq	$a0, $fp, .LBB31_14
# %bb.8:
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB31_12
# %bb.9:
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB31_11
# %bb.10:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a3, 0
	b	.LBB31_12
.LBB31_11:
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB31_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a1, $a0, 8
	ld.d	$a2, $fp, 0
	st.d	$a1, $fp, 8
	stx.b	$zero, $a2, $a1
	ld.d	$a3, $a0, 0
.LBB31_13:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $a0, 8
	st.b	$zero, $a3, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB31_14:
	move	$a3, $a1
	b	.LBB31_13
.Lfunc_end31:
	.size	_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end31-_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark21GetBenchmarkVerbosityEv # -- Begin function _ZN9benchmark21GetBenchmarkVerbosityEv
	.globl	_ZN9benchmark21GetBenchmarkVerbosityEv
	.p2align	5
	.type	_ZN9benchmark21GetBenchmarkVerbosityEv,@function
_ZN9benchmark21GetBenchmarkVerbosityEv: # @_ZN9benchmark21GetBenchmarkVerbosityEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark7FLAGS_vE)
	ld.w	$a0, $a0, %pc_lo12(_ZN9benchmark7FLAGS_vE)
	ret
.Lfunc_end32:
	.size	_ZN9benchmark21GetBenchmarkVerbosityEv, .Lfunc_end32-_ZN9benchmark21GetBenchmarkVerbosityEv
                                        # -- End function
	.hidden	_ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE # -- Begin function _ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE
	.globl	_ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE
	.p2align	5
	.type	_ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE,@function
_ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE: # @_ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(_ZN9benchmark8internal14memory_managerE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN9benchmark8internal14memory_managerE)
	st.d	$a0, $a1, 0
	ret
.Lfunc_end33:
	.size	_ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE, .Lfunc_end33-_ZN9benchmark21RegisterMemoryManagerEPNS_13MemoryManagerE
                                        # -- End function
	.hidden	_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE # -- Begin function _ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE
	.globl	_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE
	.p2align	5
	.type	_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE,@function
_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE: # @_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	beqz	$a0, .LBB34_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a1, .LBB34_3
.LBB34_2:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	pcalau12i	$a1, %got_pc_hi20(_ZN9benchmark8internal16profiler_managerE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN9benchmark8internal16profiler_managerE)
	st.d	$a0, $a1, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB34_3:
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB34_2
# %bb.4:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB34_2
.Lfunc_end34:
	.size	_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE, .Lfunc_end34-_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ # -- Begin function _ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
	.globl	_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
	.p2align	5
	.type	_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_,@function
_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_: # @_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
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
	pcalau12i	$s1, %pc_hi20(_ZN9benchmark8internal14global_contextB5cxx11E)
	ld.d	$a2, $s1, %pc_lo12(_ZN9benchmark8internal14global_contextB5cxx11E)
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a2
	bnez	$a2, .LBB35_2
# %bb.1:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 8
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.d	$a1, $a0, 24
	st.d	$a1, $a0, 32
	st.d	$zero, $a0, 40
	st.d	$a0, $s1, %pc_lo12(_ZN9benchmark8internal14global_contextB5cxx11E)
.LBB35_2:
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_)
	jirl	$ra, $ra, 0
	andi	$a0, $a1, 1
	beqz	$a0, .LBB35_4
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB35_4:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 30
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 19
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jr	$t8
.Lfunc_end35:
	.size	_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, .Lfunc_end35-_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_,comdat
	.hidden	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_
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
	ld.d	$s8, $a0, 16
	move	$a3, $a2
	move	$a2, $a1
	addi.d	$s7, $a0, 8
	beqz	$s8, .LBB36_11
# %bb.1:                                # %.lr.ph.i.i.i
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s6, $a2, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s3, $a2, 0
	lu12i.w	$s5, -524288
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4095
	ori	$fp, $zero, 16
	ori	$s1, $zero, 24
	move	$s2, $s7
	b	.LBB36_4
	.p2align	4, , 16
.LBB36_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB36_4 Depth=1
	sub.d	$a0, $s0, $s6
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB36_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB36_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $fp, $a0
	maskeqz	$a3, $s1, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	beqz	$s8, .LBB36_6
.LBB36_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s8, 40
	sltu	$a0, $s6, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB36_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB36_4 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB36_3
	b	.LBB36_2
.LBB36_6:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit
	beq	$s2, $s7, .LBB36_14
# %bb.7:
	ld.d	$fp, $s2, 40
	sltu	$a0, $fp, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB36_12
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $s2, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB36_12
# %bb.9:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB36_13
.LBB36_10:
	move	$a1, $zero
	b	.LBB36_16
.LBB36_11:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit.thread
	move	$s2, $s7
	b	.LBB36_15
.LBB36_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s6, $fp
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bgez	$a0, .LBB36_10
.LBB36_13:
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB36_15
.LBB36_14:
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB36_15:                              # %.critedge
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 1
.LBB36_16:
	move	$a0, $s2
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
.Lfunc_end36:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_, .Lfunc_end36-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS9_SE_EEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	_ZN9benchmark8internal17PrintUsageAndExitEv # -- Begin function _ZN9benchmark8internal17PrintUsageAndExitEv
	.globl	_ZN9benchmark8internal17PrintUsageAndExitEv
	.p2align	5
	.type	_ZN9benchmark8internal17PrintUsageAndExitEv,@function
_ZN9benchmark8internal17PrintUsageAndExitEv: # @_ZN9benchmark8internal17PrintUsageAndExitEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark8internal12HelperPrintfE)
	ld.d	$a0, $a0, %pc_lo12(_ZN9benchmark8internal12HelperPrintfE)
	jirl	$ra, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZN9benchmark8internal17PrintUsageAndExitEv, .Lfunc_end37-_ZN9benchmark8internal17PrintUsageAndExitEv
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB38_10
# %bb.1:
	ori	$s0, $zero, 2
	beq	$a2, $s0, .LBB38_4
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB38_11
# %bb.3:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $a0, 0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 115
	ori	$s0, $zero, 3
	beq	$a0, $a1, .LBB38_9
	b	.LBB38_11
.LBB38_4:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6
	ld.d	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB38_9
# %bb.5:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
	ld.hu	$a1, $fp, 0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 885
	beq	$a1, $a2, .LBB38_8
# %bb.6:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
	ld.hu	$a1, $fp, 0
	ori	$a0, $a0, 878
	bne	$a1, $a0, .LBB38_11
# %bb.7:
	move	$s0, $zero
	b	.LBB38_9
.LBB38_8:
	ori	$s0, $zero, 1
.LBB38_9:                               # %.sink.split
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
	st.w	$s0, $a0, %pc_lo12(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
.LBB38_10:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB38_11:                              # %.thread
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark8internal12HelperPrintfE)
	ld.d	$a0, $a0, %pc_lo12(_ZN9benchmark8internal12HelperPrintfE)
	jirl	$ra, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end38-_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc # -- Begin function _ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc
	.globl	_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc
	.p2align	5
	.type	_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc,@function
_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc: # @_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	beqz	$a0, .LBB39_3
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB39_4
# %bb.2:
	ld.d	$a0, $fp, 0
	b	.LBB39_5
.LBB39_3:                               # %.critedge.critedge
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	st.d	$a1, $a0, 0
	b	.LBB39_35
.LBB39_4:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
.LBB39_5:                               # %.lr.ph119.preheader
	pcalau12i	$a1, %got_pc_hi20(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	ld.w	$a2, $s0, 0
	ori	$a3, $zero, 2
	st.d	$a0, $a1, 0
	blt	$a2, $a3, .LBB39_35
# %bb.6:                                # %.lr.ph143.preheader
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s8, $fp, 8
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark26FLAGS_benchmark_list_testsE)
	addi.d	$s2, $a0, %pc_lo12(_ZN9benchmark26FLAGS_benchmark_list_testsE)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s3, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$s4, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E)
	addi.d	$s6, $a0, %pc_lo12(_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB39_7:                               # %.lr.ph143
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_28 Depth 2
                                        #     Child Loop BB39_31 Depth 2
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $fp, $a0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark13ParseBoolFlagEPKcS1_Pb)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.8:                                #   in Loop: Header=BB39_7 Depth=1
	alsl.d	$s5, $s7, $fp, 3
	ld.d	$a0, $s5, 0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.9:                                #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.10:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseDoubleFlagEPKcS1_Pd)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.11:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark27FLAGS_benchmark_repetitionsE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark27FLAGS_benchmark_repetitionsE)
	pcaddu18i	$ra, %call36(_ZN9benchmark14ParseInt32FlagEPKcS1_Pi)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.12:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark23FLAGS_benchmark_dry_runE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark23FLAGS_benchmark_dry_runE)
	pcaddu18i	$ra, %call36(_ZN9benchmark13ParseBoolFlagEPKcS1_Pb)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.13:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE)
	pcaddu18i	$ra, %call36(_ZN9benchmark13ParseBoolFlagEPKcS1_Pb)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.14:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE)
	pcaddu18i	$ra, %call36(_ZN9benchmark13ParseBoolFlagEPKcS1_Pb)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.15:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE)
	pcaddu18i	$ra, %call36(_ZN9benchmark13ParseBoolFlagEPKcS1_Pb)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.16:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.17:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark19FLAGS_benchmark_outB5cxx11E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark19FLAGS_benchmark_outB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.18:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.19:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.20:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	pcaddu18i	$ra, %call36(_ZN9benchmark13ParseBoolFlagEPKcS1_Pb)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.21:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.22:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark17ParseKeyValueFlagEPKcS1_PSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.23:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E)
	pcaddu18i	$ra, %call36(_ZN9benchmark15ParseStringFlagEPKcS1_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_25
# %bb.24:                               #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark7FLAGS_vE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark7FLAGS_vE)
	pcaddu18i	$ra, %call36(_ZN9benchmark14ParseInt32FlagEPKcS1_Pi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB39_34
	.p2align	4, , 16
.LBB39_25:                              #   in Loop: Header=BB39_7 Depth=1
	ld.w	$a1, $s0, 0
	addi.w	$a0, $a1, -1
	beq	$s7, $a0, .LBB39_32
# %bb.26:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB39_7 Depth=1
	sub.d	$a2, $a1, $s7
	addi.w	$a3, $a2, -2
	move	$a2, $s7
	ori	$a4, $zero, 3
	bltu	$a3, $a4, .LBB39_30
# %bb.27:                               # %vector.ph
                                        #   in Loop: Header=BB39_7 Depth=1
	bstrpick.d	$a2, $a3, 31, 0
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 32, 2
	slli.d	$a4, $a2, 2
	alsl.d	$a2, $a2, $s7, 2
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a5, 3
	move	$a6, $a4
	.p2align	4, , 16
.LBB39_28:                              # %vector.body
                                        #   Parent Loop BB39_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -8
	vld	$vr1, $a5, 8
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB39_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB39_7 Depth=1
	beq	$a3, $a4, .LBB39_32
.LBB39_30:                              # %.lr.ph.preheader145
                                        #   in Loop: Header=BB39_7 Depth=1
	alsl.d	$a3, $a2, $s8, 3
	nor	$a2, $a2, $zero
	add.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB39_31:                              # %.lr.ph
                                        #   Parent Loop BB39_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 0
	st.d	$a2, $a3, -8
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB39_31
.LBB39_32:                              # %._crit_edge
                                        #   in Loop: Header=BB39_7 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s7, $s7, -1
.LBB39_33:                              # %.lr.ph119
                                        #   in Loop: Header=BB39_7 Depth=1
	ld.w	$a0, $s0, 0
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB39_7
	b	.LBB39_35
.LBB39_34:                              #   in Loop: Header=BB39_7 Depth=1
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZN9benchmark6IsFlagEPKcS1_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB39_33
	b	.LBB39_69
.LBB39_35:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 3
	beq	$a2, $a1, .LBB39_40
# %bb.36:                               # %.critedge
	ori	$a1, $zero, 4
	beq	$a2, $a1, .LBB39_39
# %bb.37:                               # %.critedge
	ori	$a1, $zero, 7
	bne	$a2, $a1, .LBB39_69
# %bb.38:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 7
	b	.LBB39_41
.LBB39_39:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB39_41
.LBB39_40:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
.LBB39_41:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_69
# %bb.42:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread108
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 3
	beq	$a2, $a1, .LBB39_47
# %bb.43:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread108
	ori	$a1, $zero, 4
	beq	$a2, $a1, .LBB39_46
# %bb.44:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread108
	ori	$a1, $zero, 7
	bne	$a2, $a1, .LBB39_69
# %bb.45:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 7
	b	.LBB39_48
.LBB39_46:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82.1
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	b	.LBB39_48
.LBB39_47:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit85.1
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
.LBB39_48:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82.1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_69
# %bb.49:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread108.1
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E)
	addi.d	$a1, $a0, %pc_lo12(_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E)
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB39_58
# %bb.50:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread108.1
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB39_56
# %bb.51:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread108.1
	ori	$a0, $zero, 2
	bne	$a2, $a0, .LBB39_69
# %bb.52:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.i
	ld.d	$a1, $a1, 0
	ld.hu	$a3, $a1, 0
	lu12i.w	$a2, 7
	ori	$a4, $a2, 877
	beq	$a3, $a4, .LBB39_57
# %bb.53:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.i
	ld.hu	$a0, $a1, 0
	ori	$a3, $a2, 885
	beq	$a0, $a3, .LBB39_68
# %bb.54:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i
	ld.hu	$a0, $a1, 0
	ori	$a1, $a2, 878
	bne	$a0, $a1, .LBB39_69
# %bb.55:
	move	$a0, $zero
	b	.LBB39_57
.LBB39_56:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
	ld.d	$a0, $a1, 0
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 115
	ori	$a0, $zero, 3
	bne	$a1, $a2, .LBB39_69
.LBB39_57:                              # %.sink.split.i
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
	st.w	$a0, $a1, %pc_lo12(_ZN9benchmark12_GLOBAL__N_117default_time_unitE)
.LBB39_58:                              # %_ZN9benchmark8internal26SetDefaultTimeUnitFromFlagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E+8)
	ld.d	$a0, $a0, %pc_lo12(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E+8)
	beqz	$a0, .LBB39_69
# %bb.59:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark23FLAGS_benchmark_dry_runE)
	ld.bu	$a0, $a0, %pc_lo12(_ZN9benchmark23FLAGS_benchmark_dry_runE)
	beqz	$a0, .LBB39_65
# %bb.60:                               # %._crit_edge.i.i
	addi.d	$s0, $sp, 88
	st.d	$s0, $sp, 72
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 88
	st.w	$a0, $sp, 91
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 80
	st.b	$zero, $sp, 95
	addi.d	$s1, $sp, 56
	st.d	$s1, $sp, 40
	lu12i.w	$a0, 415575
	ori	$a0, $a0, 628
	st.w	$a0, $sp, 56
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 48
	st.b	$zero, $sp, 60
.Ltmp273:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.61:
	ld.d	$a0, $sp, 40
	beq	$a0, $s1, .LBB39_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 72
	beq	$a0, $s0, .LBB39_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_65:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	addi.d	$a1, $a0, %pc_lo12(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	ld.d	$fp, $a1, 24
	addi.d	$s0, $a1, 8
	beq	$fp, $s0, .LBB39_67
	.p2align	4, , 16
.LBB39_66:                              # %.lr.ph125
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $fp, 32
	addi.d	$a1, $fp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark16AddCustomContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bne	$a0, $s0, .LBB39_66
.LBB39_67:                              # %._crit_edge126
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
.LBB39_68:
	ori	$a0, $zero, 1
	b	.LBB39_57
.LBB39_69:
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark8internal12HelperPrintfE)
	ld.d	$a0, $a0, %pc_lo12(_ZN9benchmark8internal12HelperPrintfE)
	jirl	$ra, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB39_70:
.Ltmp275:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	bne	$a2, $s1, .LBB39_73
# %bb.71:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
	ld.d	$a0, $sp, 72
	bne	$a0, $s0, .LBB39_74
.LBB39_72:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB39_73:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	beq	$a0, $s0, .LBB39_72
.LBB39_74:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc, .Lfunc_end39-_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table39:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp273-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin17        #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Lfunc_end39-.Ltmp274          #   Call between .Ltmp274 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev # -- Begin function _ZN9benchmark19GetBenchmarkVersionB5cxx11Ev
	.globl	_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev
	.p2align	5
	.type	_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev,@function
_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev: # @_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev
	.cfi_startproc
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	st.w	$a2, $a0, 16
	st.h	$a1, $a0, 20
	ori	$a1, $zero, 6
	st.d	$a1, $a0, 8
	st.b	$zero, $a0, 22
	ret
.Lfunc_end40:
	.size	_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev, .Lfunc_end40-_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark16PrintDefaultHelpEv # -- Begin function _ZN9benchmark16PrintDefaultHelpEv
	.globl	_ZN9benchmark16PrintDefaultHelpEv
	.p2align	5
	.type	_ZN9benchmark16PrintDefaultHelpEv,@function
_ZN9benchmark16PrintDefaultHelpEv:      # @_ZN9benchmark16PrintDefaultHelpEv
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 860
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end41:
	.size	_ZN9benchmark16PrintDefaultHelpEv, .Lfunc_end41-_ZN9benchmark16PrintDefaultHelpEv
                                        # -- End function
	.hidden	_ZN9benchmark10InitializeEPiPPcPFvvE # -- Begin function _ZN9benchmark10InitializeEPiPPcPFvvE
	.globl	_ZN9benchmark10InitializeEPiPPcPFvvE
	.p2align	5
	.type	_ZN9benchmark10InitializeEPiPPcPFvvE,@function
_ZN9benchmark10InitializeEPiPPcPFvvE:   # @_ZN9benchmark10InitializeEPiPPcPFvvE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a3, %pc_hi20(_ZN9benchmark8internal12HelperPrintfE)
	st.d	$a2, $a3, %pc_lo12(_ZN9benchmark8internal12HelperPrintfE)
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal21ParseCommandLineFlagsEPiPPc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark7FLAGS_vE)
	ld.w	$a0, $a0, %pc_lo12(_ZN9benchmark7FLAGS_vE)
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal8LogLevelEvE9log_level)
	st.w	$a0, $a1, %pc_lo12(_ZZN9benchmark8internal8LogLevelEvE9log_level)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end42:
	.size	_ZN9benchmark10InitializeEPiPPcPFvvE, .Lfunc_end42-_ZN9benchmark10InitializeEPiPPcPFvvE
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark8ShutdownEv        # -- Begin function _ZN9benchmark8ShutdownEv
	.globl	_ZN9benchmark8ShutdownEv
	.p2align	5
	.type	_ZN9benchmark8ShutdownEv,@function
_ZN9benchmark8ShutdownEv:               # @_ZN9benchmark8ShutdownEv
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
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark8internal14global_contextB5cxx11E)
	ld.d	$fp, $a0, %pc_lo12(_ZN9benchmark8internal14global_contextB5cxx11E)
	beqz	$fp, .LBB43_3
# %bb.1:
	ld.d	$a1, $fp, 16
.Ltmp276:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.2:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
	ori	$a1, $zero, 48
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB43_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB43_4:
.Ltmp278:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN9benchmark8ShutdownEv, .Lfunc_end43-_ZN9benchmark8ShutdownEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table43:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp276-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin18        #     jumps to .Ltmp278
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp277-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Lfunc_end43-.Ltmp277          #   Call between .Ltmp277 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
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
	.hidden	_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc # -- Begin function _ZN9benchmark27ReportUnrecognizedArgumentsEiPPc
	.globl	_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc
	.p2align	5
	.type	_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc,@function
_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc: # @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	move	$fp, $a0
	blt	$a0, $a2, .LBB44_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	slli.d	$s2, $fp, 3
	ori	$s3, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s4, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$s1, $a0, %pc_lo12(.L.str.65)
.LBB44_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $s0, 0
	ldx.d	$a3, $s0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	bne	$s2, $s3, .LBB44_2
.LBB44_3:                               # %._crit_edge
	ori	$a0, $zero, 1
	slt	$a0, $a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end44:
	.size	_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc, .Lfunc_end44-_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc
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
.Lfunc_end45:
	.size	__clang_call_terminate, .Lfunc_end45-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB46_8
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
	b	.LBB46_3
	.p2align	4, , 16
.LBB46_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
                                        #   in Loop: Header=BB46_3 Depth=1
	ori	$a1, $zero, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB46_7
.LBB46_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 80
	beq	$a0, $a1, .LBB46_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB46_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB46_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB46_3 Depth=1
	ld.d	$a0, $s0, 32
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB46_2
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
                                        #   in Loop: Header=BB46_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB46_2
.LBB46_7:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB46_8:                               # %._crit_edge
	ret
.Lfunc_end46:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, .Lfunc_end46-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_,"axG",@progbits,_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_,comdat
	.weak	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ # -- Begin function _ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_
	.p2align	5
	.type	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_,@function
_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_: # @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
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
	move	$fp, $a2
	beq	$a0, $a1, .LBB47_11
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s5, $zero
	ori	$s6, $zero, 16
	ori	$s7, $zero, 1
	b	.LBB47_4
	.p2align	4, , 16
.LBB47_2:                               #   in Loop: Header=BB47_4 Depth=1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB47_3:                               #   in Loop: Header=BB47_4 Depth=1
	ld.d	$a0, $sp, 16
	ldx.d	$a1, $fp, $s5
	st.d	$a0, $s2, 8
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $s8, 32
	addi.d	$s5, $s5, 32
	beq	$a0, $s0, .LBB47_10
.LBB47_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s2, $fp, $s5
	add.d	$s8, $s1, $s5
	addi.d	$a0, $s2, 16
	stx.d	$a0, $fp, $s5
	ld.d	$s3, $s8, 8
	ldx.d	$s4, $s1, $s5
	st.d	$s3, $sp, 16
	bltu	$s3, $s6, .LBB47_7
# %bb.5:                                # %.noexc.i.i
                                        #   in Loop: Header=BB47_4 Depth=1
.Ltmp279:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB47_4 Depth=1
	ld.d	$a1, $sp, 16
	st.d	$a0, $s2, 0
	st.d	$a1, $s2, 16
.LBB47_7:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB47_4 Depth=1
	beqz	$s3, .LBB47_3
# %bb.8:                                # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB47_4 Depth=1
	bne	$s3, $s7, .LBB47_2
# %bb.9:                                #   in Loop: Header=BB47_4 Depth=1
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB47_3
.LBB47_10:                              # %._crit_edge.loopexit
	add.d	$fp, $fp, $s5
.LBB47_11:                              # %._crit_edge
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
	ret
.LBB47_12:
.Ltmp281:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp282:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.13:
.Ltmp284:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.14:
.LBB47_15:
.Ltmp286:                               # EH_LABEL
	move	$fp, $a0
.Ltmp287:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.16:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB47_17:
.Ltmp289:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_, .Lfunc_end47-_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_
	.cfi_endproc
	.section	.gcc_except_table._ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_,"aG",@progbits,_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp279-.Lfunc_begin19        #   Call between .Lfunc_begin19 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin19        #     jumps to .Ltmp281
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp280-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp282-.Ltmp280              #   Call between .Ltmp280 and .Ltmp282
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp285-.Ltmp282              #   Call between .Ltmp282 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin19        #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin19        #     jumps to .Ltmp289
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp288-.Lfunc_begin19        # >> Call Site 6 <<
	.uleb128 .Lfunc_end47-.Ltmp288          #   Call between .Ltmp288 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ # -- Begin function _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.p2align	5
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,@function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_: # @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_startproc
# %bb.0:
	beq	$a0, $a1, .LBB48_6
# %bb.1:                                # %.lr.ph.i.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	addi.d	$s0, $a0, 16
	b	.LBB48_3
	.p2align	4, , 16
.LBB48_2:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
                                        #   in Loop: Header=BB48_3 Depth=1
	addi.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	beq	$a0, $fp, .LBB48_5
.LBB48_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB48_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB48_3 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB48_2
.LBB48_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB48_6:                               # %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit
	ret
.Lfunc_end48:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .Lfunc_end48-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB49_6
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
	b	.LBB49_3
	.p2align	4, , 16
.LBB49_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB49_3 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB49_5
.LBB49_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB49_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB49_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB49_2
.LBB49_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB49_6:                               # %._crit_edge
	ret
.Lfunc_end49:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end49-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_,comdat
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_ # -- Begin function _ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_,@function
_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_: # @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_
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
	move	$fp, $a0
	ld.d	$s4, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s6, $s4, $s0
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB50_14
# %bb.1:                                # %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit
	move	$s2, $a1
	srai.d	$a0, $s6, 3
	lu12i.w	$a1, -209716
	ori	$a1, $a1, 3277
	lu32i.d	$a1, -209716
	lu52i.d	$a1, $a1, -820
	mul.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a3, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu12i.w	$a2, 209715
	ori	$a2, $a2, 819
	bstrins.d	$a2, $a2, 57, 32
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 5
	alsl.d	$a0, $s5, $a0, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a1, $s2, 0
	add.d	$s7, $a0, $s6
	addi.d	$a0, $s7, 16
	addi.d	$s3, $s2, 16
	stx.d	$a0, $s1, $s6
	beq	$a1, $s3, .LBB50_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s2, 16
	ld.d	$s6, $s2, 8
	st.d	$a1, $s7, 0
	st.d	$a0, $s7, 16
	b	.LBB50_4
.LBB50_3:
	ld.d	$s6, $s2, 8
	addi.d	$a2, $s6, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB50_4:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit
	st.d	$s6, $s7, 8
	fld.d	$fa0, $s2, 32
	st.d	$s3, $s2, 0
	st.d	$zero, $s2, 8
	st.b	$zero, $s2, 16
	fst.d	$fa0, $s7, 32
	move	$s2, $s1
	beq	$s0, $s4, .LBB50_11
# %bb.5:                                # %.lr.ph.i.i.i.preheader
	move	$s3, $zero
	b	.LBB50_8
	.p2align	4, , 16
.LBB50_6:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB50_8 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$s8, $s7, 8
	st.d	$a1, $s6, 0
	st.d	$a0, $s6, 16
.LBB50_7:                               # %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
                                        #   in Loop: Header=BB50_8 Depth=1
	st.d	$s8, $s6, 8
	stx.d	$s2, $s0, $s3
	st.d	$zero, $s7, 8
	fld.d	$fa0, $s7, 32
	st.b	$zero, $s2, 0
	addi.d	$s3, $s3, 40
	add.d	$a0, $s0, $s3
	fst.d	$fa0, $s6, 32
	beq	$a0, $s4, .LBB50_10
.LBB50_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s1, $s3
	ldx.d	$a1, $s0, $s3
	add.d	$s7, $s0, $s3
	addi.d	$a0, $s6, 16
	addi.d	$s2, $s7, 16
	stx.d	$a0, $s1, $s3
	bne	$s2, $a1, .LBB50_6
# %bb.9:                                #   in Loop: Header=BB50_8 Depth=1
	ld.d	$s8, $s7, 8
	addi.d	$a2, $s8, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB50_7
.LBB50_10:                              # %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit
	add.d	$s2, $s1, $s3
.LBB50_11:                              # %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
	beqz	$s0, .LBB50_13
# %bb.12:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB50_13:                              # %_ZZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_EN6_GuardD2Ev.exit
	addi.d	$a0, $s2, 40
	st.d	$s1, $fp, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 40
	mul.d	$a0, $s5, $a0
	add.d	$a0, $s1, $a0
	st.d	$a0, $fp, 16
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
.LBB50_14:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end50:
	.size	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_, .Lfunc_end50-_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark7Barrier4waitEv,"axG",@progbits,_ZN9benchmark7Barrier4waitEv,comdat
	.hidden	_ZN9benchmark7Barrier4waitEv    # -- Begin function _ZN9benchmark7Barrier4waitEv
	.weak	_ZN9benchmark7Barrier4waitEv
	.p2align	5
	.type	_ZN9benchmark7Barrier4waitEv,@function
_ZN9benchmark7Barrier4waitEv:           # @_ZN9benchmark7Barrier4waitEv
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:
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
	st.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB51_16
# %bb.1:                                # %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 8
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB51_17
.LBB51_2:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
	ld.w	$a0, $fp, 96
	ld.w	$a1, $fp, 88
	ld.w	$s1, $fp, 92
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 96
	bge	$a0, $a1, .LBB51_9
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$s0, $fp, 40
	.p2align	4, , 16
.LBB51_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
.Ltmp290:                               # EH_LABEL
	addi.d	$a1, $sp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.5:                                # %.noexc
                                        #   in Loop: Header=BB51_4 Depth=1
	ld.w	$a0, $fp, 92
	blt	$s1, $a0, .LBB51_7
# %bb.6:                                # %_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i
                                        #   in Loop: Header=BB51_4 Depth=1
	ld.w	$a1, $fp, 96
	ld.w	$a2, $fp, 88
	bne	$a1, $a2, .LBB51_4
.LBB51_7:                               # %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i
	bge	$s1, $a0, .LBB51_10
# %bb.8:
	move	$s0, $zero
	ld.bu	$a0, $sp, 8
	bnez	$a0, .LBB51_11
	b	.LBB51_13
.LBB51_9:
	move	$a0, $s1
.LBB51_10:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 92
	st.w	$zero, $fp, 96
	ori	$s0, $zero, 1
	ld.bu	$a0, $sp, 8
	beqz	$a0, .LBB51_13
.LBB51_11:
	ld.d	$a0, $sp, 0
	beqz	$a0, .LBB51_13
# %bb.12:
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
.LBB51_13:                              # %_ZN9benchmark9MutexLockD2Ev.exit
	beqz	$s0, .LBB51_15
# %bb.14:
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZNSt18condition_variable10notify_allEv)
	jirl	$ra, $ra, 0
.LBB51_15:
	move	$a0, $s0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB51_16:
	pcaddu18i	$ra, %call36(_ZSt20__throw_system_errori)
	jirl	$ra, $ra, 0
.LBB51_17:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB51_2
# %bb.18:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB51_2
.LBB51_19:
.Ltmp292:                               # EH_LABEL
	ld.bu	$a1, $sp, 8
	move	$fp, $a0
	beqz	$a1, .LBB51_22
# %bb.20:
	ld.d	$a0, $sp, 0
	beqz	$a0, .LBB51_22
# %bb.21:
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
.LBB51_22:                              # %_ZN9benchmark9MutexLockD2Ev.exit5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end51:
	.size	_ZN9benchmark7Barrier4waitEv, .Lfunc_end51-_ZN9benchmark7Barrier4waitEv
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark7Barrier4waitEv,"aG",@progbits,_ZN9benchmark7Barrier4waitEv,comdat
	.p2align	2, 0x0
GCC_except_table51:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp290-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin20        #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end51-.Ltmp291          #   Call between .Ltmp291 and .Lfunc_end51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm,"axG",@progbits,_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm,comdat
	.hidden	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm # -- Begin function _ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm
	.weak	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm,@function
_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm: # @_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	lu12i.w	$a2, -227952
	ori	$a2, $a2, 2850
	lu32i.d	$a2, 136770
	lu52i.d	$a2, $a2, 11
	bgeu	$a1, $a2, .LBB52_10
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$s3, $fp, 0
	sub.d	$a0, $a0, $s3
	srai.d	$a0, $a0, 3
	lu12i.w	$a1, -91181
	ori	$a1, $a1, 1959
	lu32i.d	$a1, -364723
	lu52i.d	$a1, $a1, -713
	mul.d	$a0, $a0, $a1
	bgeu	$a0, $s0, .LBB52_9
# %bb.2:                                # %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit
	ld.d	$s4, $fp, 8
	ori	$a0, $zero, 184
	mul.d	$a0, $s0, $a0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	beq	$s4, $s3, .LBB52_6
# %bb.3:                                # %.lr.ph.i.i.i.preheader
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s5, $s1
	move	$s2, $s3
	.p2align	4, , 16
.LBB52_4:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $s2, 0
	ld.d	$a0, $s2, 16
	vst	$vr0, $s5, 0
	st.d	$a0, $s5, 16
	vld	$vr0, $s2, 24
	ld.d	$a0, $s2, 40
	ld.h	$a1, $s2, 48
	st.d	$zero, $s2, 16
	vst	$vr0, $s5, 24
	st.d	$a0, $s5, 40
	st.h	$a1, $s5, 48
	vld	$vr0, $s2, 56
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $s2, 0
	vst	$vr1, $s2, 24
	st.d	$zero, $s2, 40
	vst	$vr0, $s5, 56
	vld	$vr0, $s2, 72
	vst	$vr0, $s5, 72
	vld	$vr0, $s2, 88
	vst	$vr0, $s5, 88
	vld	$vr0, $s2, 104
	vst	$vr0, $s5, 104
	vld	$vr0, $s2, 120
	ld.d	$a0, $s2, 136
	vst	$vr0, $s5, 120
	vld	$vr0, $s2, 144
	ld.d	$a1, $s2, 160
	st.d	$a0, $s5, 136
	st.d	$zero, $s2, 136
	vst	$vr0, $s5, 144
	st.d	$a1, $s5, 160
	vld	$vr0, $s2, 168
	vst	$vr1, $s2, 120
	vst	$vr1, $s2, 144
	st.d	$zero, $s2, 160
	vst	$vr0, $s5, 168
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunnerD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 184
	addi.d	$s5, $s5, 184
	bne	$s2, $s4, .LBB52_4
# %bb.5:                                # %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit
	ld.d	$a0, $fp, 0
.LBB52_6:                               # %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
	sub.d	$s2, $s4, $s3
	beqz	$a0, .LBB52_8
# %bb.7:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB52_8:                               # %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit
	st.d	$s1, $fp, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 184
	mul.d	$a0, $s0, $a0
	add.d	$a0, $s1, $a0
	st.d	$a0, $fp, 16
.LBB52_9:
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
.LBB52_10:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end52:
	.size	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm, .Lfunc_end52-_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_
.LCPI53_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI53_1:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.section	.text._ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_,"axG",@progbits,_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_,comdat
	.weak	_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_
	.p2align	5
	.type	_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_,@function
_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_: # @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_
	.cfi_startproc
# %bb.0:
	beq	$a1, $a0, .LBB53_11
# %bb.1:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	sub.d	$a0, $a1, $a0
	srai.d	$a1, $a0, 3
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	div.du	$a2, $a2, $a1
	bgeu	$a2, $a1, .LBB53_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.LCPI53_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI53_1)
	addi.d	$s2, $s1, 8
	vst	$vr0, $sp, 32
	beq	$s2, $s0, .LBB53_10
# %bb.3:                                # %.lr.ph46
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB53_4:                               # =>This Inner Loop Header: Depth=1
	srai.d	$a0, $s3, 3
	st.d	$zero, $sp, 16
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s1, $a0
	ld.d	$a2, $s2, 0
	st.d	$a1, $s2, 0
	stx.d	$a2, $s1, $a0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, 8
	bne	$s2, $s0, .LBB53_4
	b	.LBB53_10
.LBB53_5:
	andi	$a0, $a0, 8
	bnez	$a0, .LBB53_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.LCPI53_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI53_0)
	vst	$vr0, $sp, 32
	addi.d	$s2, $s1, 16
	addi.d	$a0, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s1, $a0
	ld.d	$a2, $s1, 8
	st.d	$a1, $s1, 8
	stx.d	$a2, $s1, $a0
	bne	$s2, $s0, .LBB53_8
	b	.LBB53_10
.LBB53_7:
	addi.d	$s2, $s1, 8
	beq	$s2, $s0, .LBB53_10
.LBB53_8:                               # %.lr.ph
	sub.d	$s3, $s2, $s1
	.p2align	4, , 16
.LBB53_9:                               # =>This Inner Loop Header: Depth=1
	srai.d	$a0, $s3, 3
	addi.d	$a1, $a0, 1
	addi.d	$s4, $a0, 2
	mul.d	$a0, $s4, $a1
	addi.d	$a0, $a0, -1
	st.d	$zero, $sp, 32
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	div.du	$a1, $a0, $s4
	slli.d	$a2, $a1, 3
	ldx.d	$a3, $s1, $a2
	ld.d	$a4, $s2, 0
	mul.d	$a1, $a1, $s4
	sub.d	$a0, $a0, $a1
	st.d	$a3, $s2, 0
	stx.d	$a4, $s1, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s1, $a0
	ld.d	$a2, $s2, 8
	st.d	$a1, $s2, 8
	stx.d	$a2, $s1, $a0
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	bne	$s2, $s0, .LBB53_9
.LBB53_10:
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
.LBB53_11:                              # %.loopexit
	ret
.Lfunc_end53:
	.size	_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_, .Lfunc_end53-_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 8
.Ltmp293:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.1:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB54_3
# %bb.2:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB54_3:                               # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB54_4:
.Ltmp295:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end54:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev, .Lfunc_end54-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table54:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp293-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin21        #     jumps to .Ltmp295
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp294-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end54-.Ltmp294          #   Call between .Ltmp294 and .Lfunc_end54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark8internal10RunResultsD2Ev,"axG",@progbits,_ZN9benchmark8internal10RunResultsD2Ev,comdat
	.hidden	_ZN9benchmark8internal10RunResultsD2Ev # -- Begin function _ZN9benchmark8internal10RunResultsD2Ev
	.weak	_ZN9benchmark8internal10RunResultsD2Ev
	.p2align	5
	.type	_ZN9benchmark8internal10RunResultsD2Ev,@function
_ZN9benchmark8internal10RunResultsD2Ev: # @_ZN9benchmark8internal10RunResultsD2Ev
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
	ld.d	$a0, $a0, 24
	ld.d	$a1, $fp, 32
.Ltmp296:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.1:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB55_3
# %bb.2:
	ld.d	$a1, $fp, 40
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB55_3:                               # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
.Ltmp299:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.4:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB55_6
# %bb.5:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB55_6:                               # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB55_7:
.Ltmp301:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB55_8:
.Ltmp298:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end55:
	.size	_ZN9benchmark8internal10RunResultsD2Ev, .Lfunc_end55-_ZN9benchmark8internal10RunResultsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark8internal10RunResultsD2Ev,"aG",@progbits,_ZN9benchmark8internal10RunResultsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table55:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp296-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin22        #     jumps to .Ltmp298
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp297-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp299-.Ltmp297              #   Call between .Ltmp297 and .Ltmp299
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin22        #     jumps to .Ltmp301
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp300-.Lfunc_begin22        # >> Call Site 4 <<
	.uleb128 .Lfunc_end55-.Ltmp300          #   Call between .Ltmp300 and .Lfunc_end55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev,comdat
	.hidden	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev # -- Begin function _ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev,@function
_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev: # @_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev
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
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	beq	$s0, $s1, .LBB56_3
	.p2align	4, , 16
.LBB56_1:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunnerD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 184
	bne	$s0, $s1, .LBB56_1
# %bb.2:                                # %_ZSt8_DestroyIPN9benchmark8internal15BenchmarkRunnerES2_EvT_S4_RSaIT0_E.exitthread-pre-split
	ld.d	$s0, $fp, 0
.LBB56_3:                               # %_ZSt8_DestroyIPN9benchmark8internal15BenchmarkRunnerES2_EvT_S4_RSaIT0_E.exit
	beqz	$s0, .LBB56_5
# %bb.4:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB56_5:                               # %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end56:
	.size	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev, .Lfunc_end56-_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev,"axG",@progbits,_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev,comdat
	.hidden	_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev # -- Begin function _ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev
	.weak	_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev
	.p2align	5
	.type	_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev,@function
_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev: # @_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp302:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB57_2:
.Ltmp304:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end57:
	.size	_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev, .Lfunc_end57-_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev,"aG",@progbits,_ZNSt3mapIiN9benchmark17BenchmarkReporter19PerFamilyRunReportsESt4lessIiESaISt4pairIKiS2_EEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table57:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp302-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin23        #     jumps to .Ltmp304
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp303-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end57-.Ltmp303          #   Call between .Ltmp303 and .Lfunc_end57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark8internal15BenchmarkRunnerD2Ev,"axG",@progbits,_ZN9benchmark8internal15BenchmarkRunnerD2Ev,comdat
	.hidden	_ZN9benchmark8internal15BenchmarkRunnerD2Ev # -- Begin function _ZN9benchmark8internal15BenchmarkRunnerD2Ev
	.weak	_ZN9benchmark8internal15BenchmarkRunnerD2Ev
	.p2align	5
	.type	_ZN9benchmark8internal15BenchmarkRunnerD2Ev,@function
_ZN9benchmark8internal15BenchmarkRunnerD2Ev: # @_ZN9benchmark8internal15BenchmarkRunnerD2Ev
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
	ld.d	$a0, $a0, 144
	beqz	$a0, .LBB58_2
# %bb.1:
	ld.d	$a1, $fp, 160
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB58_2:                               # %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EED2Ev.exit
	ld.d	$a0, $fp, 120
	ld.d	$a1, $fp, 128
	beq	$a0, $a1, .LBB58_6
# %bb.3:
	move	$a2, $a0
	.p2align	4, , 16
.LBB58_4:                               # %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	bnez	$a3, .LBB58_15
# %bb.5:                                #   in Loop: Header=BB58_4 Depth=1
	addi.d	$a2, $a2, 8
	bne	$a2, $a1, .LBB58_4
.LBB58_6:                               # %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
	beqz	$a0, .LBB58_8
# %bb.7:
	ld.d	$a1, $fp, 136
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB58_8:                               # %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 32
.Ltmp305:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.9:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB58_11
# %bb.10:
	ld.d	$a1, $fp, 40
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB58_11:                              # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
.Ltmp308:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.12:                               # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1.i
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB58_14
# %bb.13:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB58_14:                              # %_ZN9benchmark8internal10RunResultsD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB58_15:
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.LBB58_16:
.Ltmp310:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB58_17:
.Ltmp307:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end58:
	.size	_ZN9benchmark8internal15BenchmarkRunnerD2Ev, .Lfunc_end58-_ZN9benchmark8internal15BenchmarkRunnerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark8internal15BenchmarkRunnerD2Ev,"aG",@progbits,_ZN9benchmark8internal15BenchmarkRunnerD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table58:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Lfunc_begin24-.Lfunc_begin24  # >> Call Site 1 <<
	.uleb128 .Ltmp305-.Lfunc_begin24        #   Call between .Lfunc_begin24 and .Ltmp305
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin24        #     jumps to .Ltmp307
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp306-.Lfunc_begin24        # >> Call Site 3 <<
	.uleb128 .Ltmp308-.Ltmp306              #   Call between .Ltmp306 and .Ltmp308
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin24        # >> Call Site 4 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin24        #     jumps to .Ltmp310
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp309-.Lfunc_begin24        # >> Call Site 5 <<
	.uleb128 .Lfunc_end58-.Ltmp309          #   Call between .Ltmp309 and .Lfunc_end58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,@function
_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_: # @_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
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
	move	$s2, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a1, $a1, 0
	move	$fp, $a0
	addi.d	$s1, $a0, 32
	st.w	$a1, $a0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 56
	vst	$vr0, $a0, 40
	st.d	$a0, $sp, 16
.Ltmp311:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.1:
	move	$a4, $a0
	move	$a2, $a1
	beqz	$a1, .LBB59_6
# %bb.2:
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a4, .LBB59_5
# %bb.3:
	beq	$a3, $a2, .LBB59_5
# %bb.4:
	ld.w	$a0, $s1, 0
	ld.w	$a1, $a2, 32
	slt	$a0, $a0, $a1
.LBB59_5:                               # %.thread
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB59_10
.LBB59_6:
	move	$s0, $a4
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
.Ltmp314:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.7:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB59_9
# %bb.8:
	ld.d	$a1, $fp, 64
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB59_9:                               # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB59_10:                              # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB59_11:
.Ltmp316:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB59_12:
.Ltmp313:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end59:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_, .Lfunc_end59-_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table59:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Lfunc_begin25-.Lfunc_begin25  # >> Call Site 1 <<
	.uleb128 .Ltmp311-.Lfunc_begin25        #   Call between .Lfunc_begin25 and .Ltmp311
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin25        #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Ltmp314-.Ltmp312              #   Call between .Ltmp312 and .Ltmp314
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin25        # >> Call Site 4 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin25        #     jumps to .Ltmp316
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp315-.Lfunc_begin25        # >> Call Site 5 <<
	.uleb128 .Lfunc_end59-.Ltmp315          #   Call between .Ltmp315 and .Lfunc_end59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_,comdat
	.hidden	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_,@function
_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_: # @_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_
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
	beq	$fp, $a1, .LBB60_5
# %bb.1:
	move	$a0, $a1
	ld.w	$s0, $a2, 0
	ld.w	$a1, $a1, 32
	bge	$s0, $a1, .LBB60_8
# %bb.2:
	ld.d	$s1, $a3, 24
	beq	$s1, $a0, .LBB60_20
# %bb.3:
	move	$s3, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$a1, $s0, .LBB60_21
# %bb.4:
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB60_36
.LBB60_5:
	ld.d	$a0, $a3, 40
	beqz	$a0, .LBB60_12
# %bb.6:
	ld.d	$a1, $a3, 32
	ld.w	$a0, $a1, 32
	ld.w	$a4, $a2, 0
	bge	$a0, $a4, .LBB60_12
.LBB60_7:
	move	$a0, $zero
	b	.LBB60_36
.LBB60_8:
	bge	$a1, $s0, .LBB60_19
# %bb.9:
	ld.d	$a1, $a3, 32
	beq	$a1, $a0, .LBB60_26
# %bb.10:
	move	$s1, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$s0, $a1, .LBB60_27
# %bb.11:
	ld.d	$a1, $s2, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s2, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB60_36
.LBB60_12:
	ld.d	$a5, $a3, 16
	beqz	$a5, .LBB60_16
# %bb.13:                               # %.lr.ph.i
	ld.w	$a1, $a2, 0
	ori	$a0, $zero, 24
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB60_14:                              # =>This Inner Loop Header: Depth=1
	move	$fp, $a5
	ld.w	$a4, $a5, 32
	slt	$a5, $a1, $a4
	masknez	$a7, $a0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB60_14
# %bb.15:                               # %._crit_edge.i
	move	$a0, $fp
	bge	$a1, $a4, .LBB60_18
.LBB60_16:                              # %._crit_edge.thread.i
	ld.d	$a0, $a3, 24
	beq	$fp, $a0, .LBB60_35
# %bb.17:
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a4, $a0, 32
	ld.w	$a1, $s0, 0
.LBB60_18:
	slt	$a2, $a4, $a1
	b	.LBB60_34
.LBB60_19:
	move	$a1, $zero
	b	.LBB60_36
.LBB60_20:
	move	$a1, $a0
	b	.LBB60_36
.LBB60_21:
	ld.d	$a4, $s3, 16
	move	$a1, $s1
	beqz	$a4, .LBB60_25
# %bb.22:                               # %.lr.ph.i22.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB60_23:                              # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB60_23
# %bb.24:                               # %._crit_edge.i28
	move	$a0, $fp
	bge	$s0, $a2, .LBB60_33
.LBB60_25:                              # %._crit_edge.thread.i36
	bne	$fp, $a1, .LBB60_32
	b	.LBB60_7
.LBB60_26:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB60_36
.LBB60_27:
	move	$a1, $s1
	ld.d	$a4, $s1, 16
	beqz	$a4, .LBB60_31
# %bb.28:                               # %.lr.ph.i41.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB60_29:                              # %.lr.ph.i41
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB60_29
# %bb.30:                               # %._crit_edge.i47
	move	$a0, $fp
	bge	$s0, $a2, .LBB60_33
.LBB60_31:                              # %._crit_edge.thread.i55
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB60_35
.LBB60_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 32
.LBB60_33:
	slt	$a2, $a2, $s0
.LBB60_34:                              # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit
	maskeqz	$a1, $fp, $a2
	masknez	$a0, $a0, $a2
	b	.LBB60_36
.LBB60_35:
	move	$a0, $zero
	move	$a1, $fp
.LBB60_36:                              # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE24_M_get_insert_unique_posERS1_.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end60:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_, .Lfunc_end60-_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev,comdat
	.hidden	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev,@function
_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev: # @_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev
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
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB61_5
# %bb.1:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
.Ltmp317:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.2:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB61_4
# %bb.3:
	ld.d	$a1, $fp, 64
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB61_4:                               # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
	ori	$a1, $zero, 72
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB61_5:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB61_6:
.Ltmp319:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end61:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev, .Lfunc_end61-_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev,"aG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table61:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp317-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin26        #     jumps to .Ltmp319
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp318-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Lfunc_end61-.Ltmp318          #   Call between .Ltmp318 and .Lfunc_end61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_,comdat
	.hidden	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_ # -- Begin function _ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_
	.weak	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_,@function
_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_: # @_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception27
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
	move	$fp, $a0
	ld.d	$s5, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s7, $s5, $s0
	addi.w	$a0, $zero, -72
	lu52i.d	$a0, $a0, 2047
	beq	$s7, $a0, .LBB62_8
# %bb.1:                                # %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	srai.d	$a0, $s7, 3
	lu12i.w	$a1, -91181
	ori	$a1, $a1, 1959
	lu32i.d	$a1, -364723
	lu52i.d	$a1, $a1, -713
	mul.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a3, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu12i.w	$a2, -227952
	ori	$a2, $a2, 2849
	lu32i.d	$a2, 136770
	lu52i.d	$a2, $a2, 11
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s6, $a1, $a0
	ori	$a0, $zero, 184
	mul.d	$s4, $s6, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a3, $s1, 0
	move	$s1, $a0
	add.d	$a0, $a0, $s7
.Ltmp320:                               # EH_LABEL
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunnerC1ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.2:                                # %_ZNSt16allocator_traitsISaIN9benchmark8internal15BenchmarkRunnerEEE9constructIS2_JRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvRS3_PT_DpOT0_.exit
	move	$s3, $s1
	beq	$s0, $s5, .LBB62_5
# %bb.3:                                # %.lr.ph.i.i.i.preheader
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s3, $s1
	move	$s2, $s0
	.p2align	4, , 16
.LBB62_4:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $s2, 0
	ld.d	$a0, $s2, 16
	vst	$vr0, $s3, 0
	st.d	$a0, $s3, 16
	vld	$vr0, $s2, 24
	ld.d	$a0, $s2, 40
	ld.h	$a1, $s2, 48
	st.d	$zero, $s2, 16
	vst	$vr0, $s3, 24
	st.d	$a0, $s3, 40
	st.h	$a1, $s3, 48
	vld	$vr0, $s2, 56
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $s2, 0
	vst	$vr1, $s2, 24
	st.d	$zero, $s2, 40
	vst	$vr0, $s3, 56
	vld	$vr0, $s2, 72
	vst	$vr0, $s3, 72
	vld	$vr0, $s2, 88
	vst	$vr0, $s3, 88
	vld	$vr0, $s2, 104
	vst	$vr0, $s3, 104
	vld	$vr0, $s2, 120
	ld.d	$a0, $s2, 136
	vst	$vr0, $s3, 120
	vld	$vr0, $s2, 144
	ld.d	$a1, $s2, 160
	st.d	$a0, $s3, 136
	st.d	$zero, $s2, 136
	vst	$vr0, $s3, 144
	st.d	$a1, $s3, 160
	vld	$vr0, $s2, 168
	vst	$vr1, $s2, 120
	vst	$vr1, $s2, 144
	st.d	$zero, $s2, 160
	vst	$vr0, $s3, 168
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15BenchmarkRunnerD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 184
	addi.d	$s3, $s3, 184
	bne	$s2, $s5, .LBB62_4
.LBB62_5:                               # %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
	beqz	$s0, .LBB62_7
# %bb.6:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB62_7:                               # %_ZZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_EN6_GuardD2Ev.exit
	addi.d	$a0, $s3, 184
	st.d	$s1, $fp, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 184
	mul.d	$a0, $s6, $a0
	add.d	$a0, $s1, $a0
	st.d	$a0, $fp, 16
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
.LBB62_8:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB62_9:                               # %_ZZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_EN6_GuardD2Ev.exit24
.Ltmp322:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end62:
	.size	_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_, .Lfunc_end62-_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_,"aG",@progbits,_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE17_M_realloc_appendIJRKNS1_17BenchmarkInstanceEPNS1_23PerfCountersMeasurementERPNS0_17BenchmarkReporter19PerFamilyRunReportsEEEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table62:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Lfunc_begin27-.Lfunc_begin27  # >> Call Site 1 <<
	.uleb128 .Ltmp320-.Lfunc_begin27        #   Call between .Lfunc_begin27 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin27        #     jumps to .Ltmp322
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin27        # >> Call Site 3 <<
	.uleb128 .Lfunc_end62-.Ltmp321          #   Call between .Ltmp321 and .Lfunc_end62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
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
	bltu	$a2, $s2, .LBB63_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB63_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB63_4
	.p2align	4, , 16
.LBB63_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB63_3
.LBB63_4:                               # %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB63_10
.LBB63_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB63_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB63_10
.LBB63_7:                               # %.preheader
	srli.d	$s3, $s2, 32
	.p2align	4, , 16
.LBB63_8:                               # =>This Inner Loop Header: Depth=1
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
	bltu	$s2, $a0, .LBB63_8
# %bb.9:                                #   in Loop: Header=BB63_8 Depth=1
	sltu	$a1, $a0, $a1
	bnez	$a1, .LBB63_8
.LBB63_10:                              # %.loopexit
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
.Lfunc_end63:
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, .Lfunc_end63-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
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
	bltu	$a2, $a1, .LBB64_6
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
.LBB64_2:                               # %vector.body
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
	bne	$a2, $a4, .LBB64_2
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
.LBB64_4:                               # %vector.body12
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
	bnez	$a2, .LBB64_4
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
.LBB64_6:
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
.Lfunc_end64:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end64-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception28
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
	beq	$a3, $a2, .LBB65_37
# %bb.1:
	move	$s3, $a3
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$s5, $a3, $a2
	srai.d	$a1, $s5, 4
	lu12i.w	$a0, -479350
	ld.d	$a2, $s0, 16
	ld.d	$s2, $s0, 8
	ori	$a0, $a0, 3979
	lu32i.d	$a0, -329553
	lu52i.d	$a0, $a0, -1288
	sub.d	$a2, $a2, $s2
	mul.d	$s7, $a1, $a0
	bgeu	$a2, $s5, .LBB65_5
# %bb.2:
	ld.d	$s5, $s0, 0
	sub.d	$a1, $s2, $s5
	srai.d	$a1, $a1, 4
	mul.d	$a1, $a1, $a0
	lu12i.w	$a0, 239674
	ori	$a0, $a0, 2106
	bstrins.d	$a0, $a0, 53, 24
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s7, .LBB65_38
# %bb.3:                                # %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
	sltu	$a2, $s7, $a1
	masknez	$a3, $s7, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	sltu	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a0, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a1, $a0, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB65_23
# %bb.4:
	ori	$a0, $zero, 560
	mul.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s6, $s4
	bne	$s5, $fp, .LBB65_24
	b	.LBB65_26
.LBB65_5:
	sub.d	$s6, $s2, $fp
	srai.d	$a1, $s6, 4
	mul.d	$s8, $a1, $a0
	bgeu	$s7, $s8, .LBB65_12
# %bb.6:
	move	$s7, $zero
	sub.d	$s4, $zero, $s5
	sub.d	$s6, $s2, $s5
	.p2align	4, , 16
.LBB65_7:                               # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s2, $s7
	add.d	$a1, $s6, $s7
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 560
	add.d	$a0, $s4, $s7
	bnez	$a0, .LBB65_7
# %bb.8:                                # %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit
	ld.d	$a0, $s0, 8
	add.d	$a1, $a0, $s5
	sub.d	$a0, $s6, $fp
	st.d	$a1, $s0, 8
	blez	$a0, .LBB65_11
# %bb.9:                                # %.lr.ph.preheader.i.i.i.i.i
	lu12i.w	$a1, 59918
	ori	$a1, $a1, 2575
	lu32i.d	$a1, -89878
	lu52i.d	$a1, $a1, -352
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 9
	addi.d	$s5, $a0, 1
	addi.d	$s0, $s2, -560
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB65_10:                              # %.lr.ph.i.i.i.i.i52
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s0, $s4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunaSEOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, -560
	bltu	$s2, $s5, .LBB65_10
.LBB65_11:                              # %_ZSt13move_backwardIPN9benchmark17BenchmarkReporter3RunES3_ET0_T_S5_S4_.exit
	move	$a0, $s1
	move	$a1, $s3
	b	.LBB65_22
.LBB65_12:                              # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
	add.d	$s4, $s1, $s6
	move	$a0, $s2
	beq	$s3, $s4, .LBB65_17
# %bb.13:                               # %.lr.ph.i.i.i.i.preheader
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	.p2align	4, , 16
.LBB65_14:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s5, $s2, $s6
	add.d	$a1, $s4, $s6
.Ltmp323:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
# %bb.15:                               # %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRS2_EEvPT_DpOT0_.exit.i.i.i.i
                                        #   in Loop: Header=BB65_14 Depth=1
	addi.d	$s6, $s6, 560
	add.d	$a0, $s4, $s6
	bne	$a0, $s3, .LBB65_14
# %bb.16:                               # %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit.loopexit
	ld.d	$a0, $s0, 8
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB65_17:                              # %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit
	sub.d	$a1, $s7, $s8
	ori	$a2, $zero, 560
	mul.d	$a1, $a1, $a2
	add.d	$s3, $a0, $a1
	st.d	$s3, $s0, 8
	beq	$s2, $fp, .LBB65_21
# %bb.18:                               # %.lr.ph.i.i.i.i.i54.preheader
	move	$s5, $fp
	.p2align	4, , 16
.LBB65_19:                              # %.lr.ph.i.i.i.i.i54
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 560
	addi.d	$s3, $s3, 560
	bne	$s5, $s2, .LBB65_19
# %bb.20:                               # %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit59.loopexit
	ld.d	$s3, $s0, 8
.LBB65_21:                              # %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit59
	add.d	$a0, $s3, $s6
	st.d	$a0, $s0, 8
	move	$a0, $s1
	move	$a1, $s4
.LBB65_22:                              # %_ZSt13move_backwardIPN9benchmark17BenchmarkReporter3RunES3_ET0_T_S5_S4_.exit
	move	$a2, $fp
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
	pcaddu18i	$t8, %call36(_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_)
	jr	$t8
.LBB65_23:
	move	$s4, $zero
	move	$s6, $s4
	beq	$s5, $fp, .LBB65_26
.LBB65_24:                              # %.lr.ph.i.i.i.i.i61.preheader
	move	$s6, $s4
	move	$s7, $s5
	.p2align	4, , 16
.LBB65_25:                              # %.lr.ph.i.i.i.i.i61
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 560
	addi.d	$s6, $s6, 560
	bne	$s7, $fp, .LBB65_25
.LBB65_26:                              # %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit
	move	$s8, $zero
	.p2align	4, , 16
.LBB65_27:                              # %.lr.ph.i.i.i.i68
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s6, $s8
	add.d	$a1, $s1, $s8
.Ltmp334:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.28:                               # %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRS2_EEvPT_DpOT0_.exit.i.i.i.i72
                                        #   in Loop: Header=BB65_27 Depth=1
	addi.d	$s8, $s8, 560
	add.d	$a0, $s1, $s8
	bne	$a0, $s3, .LBB65_27
# %bb.29:                               # %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEES5_S4_ET0_T_SB_SA_RSaIT1_E.exit75
	beq	$s2, $fp, .LBB65_33
# %bb.30:                               # %.lr.ph.i.i.i.i.i77.preheader
	move	$s1, $zero
	add.d	$s3, $s6, $s8
	.p2align	4, , 16
.LBB65_31:                              # %.lr.ph.i.i.i.i.i77
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $s1
	add.d	$a0, $s3, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 560
	add.d	$a0, $fp, $s1
	bne	$a0, $s2, .LBB65_31
# %bb.32:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit82.loopexit
	add.d	$fp, $s3, $s1
	b	.LBB65_34
.LBB65_33:
	add.d	$fp, $s6, $s8
.LBB65_34:                              # %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit82
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB65_36
# %bb.35:
	ld.d	$a0, $s0, 16
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB65_36:                              # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit
	st.d	$s4, $s0, 0
	st.d	$fp, $s0, 8
	ori	$a0, $zero, 560
	mul.d	$a0, $s1, $a0
	add.d	$a0, $s4, $a0
	st.d	$a0, $s0, 16
.LBB65_37:
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
.LBB65_38:
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB65_39:
.Ltmp325:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.40:                               # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i
.Ltmp328:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.41:
.LBB65_42:
.Ltmp330:                               # EH_LABEL
	move	$fp, $a0
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
	b	.LBB65_54
.LBB65_43:
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB65_44:
.Ltmp336:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.45:                               # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit.i.i.i.i71
.Ltmp339:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.46:
.LBB65_47:
.Ltmp341:                               # EH_LABEL
	move	$fp, $a0
.Ltmp342:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.48:                               # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.49:                               # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
	beqz	$s4, .LBB65_51
# %bb.50:
	ori	$a0, $zero, 560
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB65_51:                              # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit85
.Ltmp347:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.52:
.LBB65_53:
.Ltmp349:                               # EH_LABEL
	move	$fp, $a0
.Ltmp350:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp351:                               # EH_LABEL
.LBB65_54:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB65_55:
.Ltmp352:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB65_56:
.Ltmp344:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end65:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag, .Lfunc_end65-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag,comdat
	.p2align	2, 0x0
GCC_except_table65:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Lfunc_begin28-.Lfunc_begin28  # >> Call Site 1 <<
	.uleb128 .Ltmp323-.Lfunc_begin28        #   Call between .Lfunc_begin28 and .Ltmp323
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin28        #     jumps to .Ltmp325
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp324-.Lfunc_begin28        # >> Call Site 3 <<
	.uleb128 .Ltmp334-.Ltmp324              #   Call between .Ltmp324 and .Ltmp334
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin28        # >> Call Site 4 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp336-.Lfunc_begin28        #     jumps to .Ltmp336
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp335-.Lfunc_begin28        # >> Call Site 5 <<
	.uleb128 .Ltmp326-.Ltmp335              #   Call between .Ltmp335 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin28        # >> Call Site 6 <<
	.uleb128 .Ltmp329-.Ltmp326              #   Call between .Ltmp326 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin28        #     jumps to .Ltmp330
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin28        # >> Call Site 7 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin28        #     jumps to .Ltmp333
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp332-.Lfunc_begin28        # >> Call Site 8 <<
	.uleb128 .Ltmp337-.Ltmp332              #   Call between .Ltmp332 and .Ltmp337
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp337-.Lfunc_begin28        # >> Call Site 9 <<
	.uleb128 .Ltmp340-.Ltmp337              #   Call between .Ltmp337 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin28        #     jumps to .Ltmp341
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp342-.Lfunc_begin28        # >> Call Site 10 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin28        #     jumps to .Ltmp344
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp343-.Lfunc_begin28        # >> Call Site 11 <<
	.uleb128 .Ltmp345-.Ltmp343              #   Call between .Ltmp343 and .Ltmp345
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin28        # >> Call Site 12 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp349-.Lfunc_begin28        #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin28        # >> Call Site 13 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin28        # >> Call Site 14 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin28        #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin28        # >> Call Site 15 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin28        #     jumps to .Ltmp352
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp351-.Lfunc_begin28        # >> Call Site 16 <<
	.uleb128 .Lfunc_end65-.Ltmp351          #   Call between .Ltmp351 and .Lfunc_end65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2EOS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2EOS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_,@function
_ZN9benchmark17BenchmarkReporter3RunC2EOS1_: # @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
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
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameC2EOS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s0, 256
	vst	$vr0, $fp, 256
	addi.d	$a0, $fp, 296
	st.d	$a0, $fp, 280
	ld.d	$a1, $s0, 280
	addi.d	$s1, $s0, 296
	beq	$a1, $s1, .LBB66_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $fp, 280
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 296
	b	.LBB66_3
.LBB66_2:
	ld.d	$a1, $s0, 288
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB66_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $s0, 288
	st.d	$a0, $fp, 288
	st.d	$s1, $s0, 280
	st.b	$zero, $s0, 296
	ld.w	$a2, $s0, 312
	addi.d	$a0, $fp, 336
	st.d	$a0, $fp, 320
	ld.d	$a1, $s0, 320
	st.d	$zero, $s0, 288
	addi.d	$s1, $s0, 336
	st.w	$a2, $fp, 312
	beq	$a1, $s1, .LBB66_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
	st.d	$a1, $fp, 320
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 336
	b	.LBB66_6
.LBB66_5:
	ld.d	$a1, $s0, 328
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB66_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
	ld.d	$a0, $s0, 328
	st.d	$a0, $fp, 328
	st.d	$s1, $s0, 320
	st.b	$zero, $s0, 336
	ld.w	$a2, $s0, 352
	addi.d	$a0, $fp, 376
	st.d	$a0, $fp, 360
	ld.d	$a1, $s0, 360
	st.d	$zero, $s0, 328
	addi.d	$s1, $s0, 376
	st.w	$a2, $fp, 352
	beq	$a1, $s1, .LBB66_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
	st.d	$a1, $fp, 360
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 376
	b	.LBB66_9
.LBB66_8:
	ld.d	$a1, $s0, 368
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB66_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
	ld.d	$a0, $s0, 368
	st.d	$a0, $fp, 368
	st.d	$s1, $s0, 360
	st.d	$zero, $s0, 368
	st.b	$zero, $s0, 376
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s0, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 512
	addi.d	$a0, $fp, 504
	beqz	$a2, .LBB66_11
# %bb.10:
	st.d	$a2, $fp, 512
	vld	$vr0, $s0, 520
	addi.d	$a3, $s0, 504
	ld.d	$a4, $s0, 536
	ld.w	$a1, $s0, 504
	vst	$vr0, $fp, 520
	st.d	$a0, $a2, 8
	st.d	$a4, $fp, 536
	st.d	$zero, $s0, 512
	st.d	$a3, $s0, 520
	st.d	$a3, $s0, 528
	st.d	$zero, $s0, 536
	b	.LBB66_12
.LBB66_11:
	move	$a1, $zero
	st.d	$zero, $fp, 512
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	st.d	$zero, $fp, 536
.LBB66_12:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit
	st.w	$a1, $fp, 504
	vld	$vr0, $s0, 544
	vst	$vr0, $fp, 544
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end66:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_, .Lfunc_end66-_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameC2EOS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameC2EOS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameC2EOS0_ # -- Begin function _ZN9benchmark13BenchmarkNameC2EOS0_
	.weak	_ZN9benchmark13BenchmarkNameC2EOS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameC2EOS0_,@function
_ZN9benchmark13BenchmarkNameC2EOS0_:    # @_ZN9benchmark13BenchmarkNameC2EOS0_
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
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $s0, 0
	ld.d	$a1, $a1, 0
	addi.d	$s1, $fp, 16
	beq	$a1, $s1, .LBB67_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $s0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 16
	b	.LBB67_3
.LBB67_2:
	ld.d	$a1, $fp, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $fp, 8
	st.d	$a0, $s0, 8
	st.d	$s1, $fp, 0
	st.b	$zero, $fp, 16
	addi.d	$a0, $s0, 48
	st.d	$a0, $s0, 32
	ld.d	$a1, $fp, 32
	addi.d	$s1, $fp, 48
	st.d	$zero, $fp, 8
	beq	$a1, $s1, .LBB67_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
	st.d	$a1, $s0, 32
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 48
	b	.LBB67_6
.LBB67_5:
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
	ld.d	$a0, $fp, 40
	st.d	$a0, $s0, 40
	st.d	$s1, $fp, 32
	st.b	$zero, $fp, 48
	addi.d	$a0, $s0, 80
	st.d	$a0, $s0, 64
	ld.d	$a1, $fp, 64
	addi.d	$s1, $fp, 80
	st.d	$zero, $fp, 40
	beq	$a1, $s1, .LBB67_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
	st.d	$a1, $s0, 64
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 80
	b	.LBB67_9
.LBB67_8:
	ld.d	$a1, $fp, 72
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
	ld.d	$a0, $fp, 72
	st.d	$a0, $s0, 72
	st.d	$s1, $fp, 64
	st.b	$zero, $fp, 80
	addi.d	$a0, $s0, 112
	st.d	$a0, $s0, 96
	ld.d	$a1, $fp, 96
	addi.d	$s1, $fp, 112
	st.d	$zero, $fp, 72
	beq	$a1, $s1, .LBB67_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
	st.d	$a1, $s0, 96
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 112
	b	.LBB67_12
.LBB67_11:
	ld.d	$a1, $fp, 104
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
	ld.d	$a0, $fp, 104
	st.d	$a0, $s0, 104
	st.d	$s1, $fp, 96
	st.b	$zero, $fp, 112
	addi.d	$a0, $s0, 144
	st.d	$a0, $s0, 128
	ld.d	$a1, $fp, 128
	addi.d	$s1, $fp, 144
	st.d	$zero, $fp, 104
	beq	$a1, $s1, .LBB67_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
	st.d	$a1, $s0, 128
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 144
	b	.LBB67_15
.LBB67_14:
	ld.d	$a1, $fp, 136
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
	ld.d	$a0, $fp, 136
	st.d	$a0, $s0, 136
	st.d	$s1, $fp, 128
	st.b	$zero, $fp, 144
	addi.d	$a0, $s0, 176
	st.d	$a0, $s0, 160
	ld.d	$a1, $fp, 160
	addi.d	$s1, $fp, 176
	st.d	$zero, $fp, 136
	beq	$a1, $s1, .LBB67_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
	st.d	$a1, $s0, 160
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 176
	b	.LBB67_18
.LBB67_17:
	ld.d	$a1, $fp, 168
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18
	ld.d	$a0, $fp, 168
	st.d	$a0, $s0, 168
	st.d	$s1, $fp, 160
	st.b	$zero, $fp, 176
	addi.d	$a0, $s0, 208
	st.d	$a0, $s0, 192
	ld.d	$a1, $fp, 192
	addi.d	$s1, $fp, 208
	st.d	$zero, $fp, 168
	beq	$a1, $s1, .LBB67_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
	st.d	$a1, $s0, 192
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 208
	b	.LBB67_21
.LBB67_20:
	ld.d	$a1, $fp, 200
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20
	ld.d	$a0, $fp, 200
	st.d	$a0, $s0, 200
	st.d	$s1, $fp, 192
	st.b	$zero, $fp, 208
	addi.d	$a0, $s0, 240
	st.d	$a0, $s0, 224
	ld.d	$a1, $fp, 224
	addi.d	$s1, $fp, 240
	st.d	$zero, $fp, 200
	beq	$a1, $s1, .LBB67_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
	st.d	$a1, $s0, 224
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 240
	b	.LBB67_24
.LBB67_23:
	ld.d	$a1, $fp, 232
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB67_24:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit22
	ld.d	$a0, $fp, 232
	st.d	$a0, $s0, 232
	st.d	$s1, $fp, 224
	st.d	$zero, $fp, 232
	st.b	$zero, $fp, 240
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end67:
	.size	_ZN9benchmark13BenchmarkNameC2EOS0_, .Lfunc_end67-_ZN9benchmark13BenchmarkNameC2EOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,comdat
	.hidden	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_ # -- Begin function _ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
	.p2align	5
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception29
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	beq	$a0, $a1, .LBB68_10
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB68_3
	.p2align	4, , 16
.LBB68_2:                               # %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit
                                        #   in Loop: Header=BB68_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	beq	$s0, $fp, .LBB68_10
.LBB68_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 512
	addi.d	$a0, $s0, 496
.Ltmp353:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.4:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
                                        #   in Loop: Header=BB68_3 Depth=1
	ld.d	$a0, $s0, 360
	addi.d	$a1, $s0, 376
	beq	$a1, $a0, .LBB68_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB68_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB68_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
                                        #   in Loop: Header=BB68_3 Depth=1
	ld.d	$a0, $s0, 320
	addi.d	$a1, $s0, 336
	beq	$a1, $a0, .LBB68_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
                                        #   in Loop: Header=BB68_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB68_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
                                        #   in Loop: Header=BB68_3 Depth=1
	ld.d	$a0, $s0, 280
	addi.d	$a1, $s0, 296
	beq	$a1, $a0, .LBB68_2
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
                                        #   in Loop: Header=BB68_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB68_2
.LBB68_10:                              # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB68_11:
.Ltmp355:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end68:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_, .Lfunc_end68-_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,"aG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,comdat
	.p2align	2, 0x0
GCC_except_table68:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Lfunc_begin29-.Lfunc_begin29  # >> Call Site 1 <<
	.uleb128 .Ltmp353-.Lfunc_begin29        #   Call between .Lfunc_begin29 and .Ltmp353
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin29        #     jumps to .Ltmp355
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp354-.Lfunc_begin29        # >> Call Site 3 <<
	.uleb128 .Lfunc_end68-.Ltmp354          #   Call between .Ltmp354 and .Lfunc_end68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameD2Ev,"axG",@progbits,_ZN9benchmark13BenchmarkNameD2Ev,comdat
	.hidden	_ZN9benchmark13BenchmarkNameD2Ev # -- Begin function _ZN9benchmark13BenchmarkNameD2Ev
	.weak	_ZN9benchmark13BenchmarkNameD2Ev
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameD2Ev,@function
_ZN9benchmark13BenchmarkNameD2Ev:       # @_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 224
	addi.d	$a1, $fp, 240
	beq	$a0, $a1, .LBB69_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB69_2:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 192
	addi.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB69_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB69_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$a0, $fp, 160
	addi.d	$a1, $fp, 176
	beq	$a0, $a1, .LBB69_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB69_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	ld.d	$a0, $fp, 128
	addi.d	$a1, $fp, 144
	beq	$a0, $a1, .LBB69_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB69_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
	ld.d	$a0, $fp, 96
	addi.d	$a1, $fp, 112
	beq	$a0, $a1, .LBB69_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB69_10:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB69_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB69_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB69_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB69_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB69_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB69_16:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end69:
	.size	_ZN9benchmark13BenchmarkNameD2Ev, .Lfunc_end69-_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunaSEOS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunaSEOS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunaSEOS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_,@function
_ZN9benchmark17BenchmarkReporter3RunaSEOS1_: # @_ZN9benchmark17BenchmarkReporter3RunaSEOS1_
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception30
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
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameaSEOS0_)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 256
	vst	$vr0, $fp, 256
	ld.w	$a1, $s0, 272
	ld.d	$a0, $fp, 280
	addi.d	$a2, $fp, 296
	st.w	$a1, $fp, 272
	beq	$a0, $a2, .LBB70_4
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $s0, 280
	addi.d	$a2, $s0, 296
	beq	$a1, $a2, .LBB70_7
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	ld.d	$a3, $s0, 288
	st.d	$a1, $fp, 280
	st.d	$a3, $fp, 288
	ld.d	$a3, $s0, 296
	ld.d	$a1, $fp, 296
	st.d	$a3, $fp, 296
	beqz	$a0, .LBB70_6
# %bb.3:
	st.d	$a0, $s0, 280
	st.d	$a1, $s0, 296
	b	.LBB70_13
.LBB70_4:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $s0, 280
	addi.d	$a2, $s0, 296
	beq	$a1, $a2, .LBB70_7
# %bb.5:                                # %.thread.i
	ld.d	$a0, $s0, 288
	st.d	$a1, $fp, 280
	st.d	$a0, $fp, 288
	ld.d	$a0, $s0, 296
	st.d	$a0, $fp, 296
.LBB70_6:
	st.d	$a2, $s0, 280
	move	$a0, $a2
	b	.LBB70_13
.LBB70_7:
	beq	$s0, $fp, .LBB70_43
# %bb.8:
	ld.d	$a2, $s0, 288
	beqz	$a2, .LBB70_12
# %bb.9:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB70_11
# %bb.10:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB70_12
.LBB70_11:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB70_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $s0, 288
	ld.d	$a1, $fp, 280
	st.d	$a0, $fp, 288
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 280
.LBB70_13:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $s0, 288
	st.b	$zero, $a0, 0
	ld.w	$a1, $s0, 312
	ld.d	$a0, $fp, 320
	addi.d	$a2, $fp, 336
	st.w	$a1, $fp, 312
	beq	$a0, $a2, .LBB70_17
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11
	ld.d	$a1, $s0, 320
	addi.d	$a2, $s0, 336
	beq	$a1, $a2, .LBB70_20
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i12
	ld.d	$a3, $s0, 328
	st.d	$a1, $fp, 320
	st.d	$a3, $fp, 328
	ld.d	$a3, $s0, 336
	ld.d	$a1, $fp, 336
	st.d	$a3, $fp, 336
	beqz	$a0, .LBB70_19
# %bb.16:
	st.d	$a0, $s0, 320
	st.d	$a1, $s0, 336
	b	.LBB70_26
.LBB70_17:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
	ld.d	$a1, $s0, 320
	addi.d	$a2, $s0, 336
	beq	$a1, $a2, .LBB70_20
# %bb.18:                               # %.thread.i18
	ld.d	$a0, $s0, 328
	st.d	$a1, $fp, 320
	st.d	$a0, $fp, 328
	ld.d	$a0, $s0, 336
	st.d	$a0, $fp, 336
.LBB70_19:
	st.d	$a2, $s0, 320
	move	$a0, $a2
	b	.LBB70_26
.LBB70_20:
	beq	$s0, $fp, .LBB70_44
# %bb.21:
	ld.d	$a2, $s0, 328
	beqz	$a2, .LBB70_25
# %bb.22:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB70_24
# %bb.23:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB70_25
.LBB70_24:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB70_25:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15
	ld.d	$a0, $s0, 328
	ld.d	$a1, $fp, 320
	st.d	$a0, $fp, 328
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 320
.LBB70_26:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit19
	st.d	$zero, $s0, 328
	st.b	$zero, $a0, 0
	ld.w	$a1, $s0, 352
	ld.d	$a0, $fp, 360
	addi.d	$a2, $fp, 376
	st.w	$a1, $fp, 352
	beq	$a0, $a2, .LBB70_30
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20
	ld.d	$a1, $s0, 360
	addi.d	$a2, $s0, 376
	beq	$a1, $a2, .LBB70_33
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21
	ld.d	$a3, $s0, 368
	st.d	$a1, $fp, 360
	st.d	$a3, $fp, 368
	ld.d	$a3, $s0, 376
	ld.d	$a1, $fp, 376
	st.d	$a3, $fp, 376
	beqz	$a0, .LBB70_32
# %bb.29:
	st.d	$a0, $s0, 360
	st.d	$a1, $s0, 376
	b	.LBB70_39
.LBB70_30:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i26
	ld.d	$a1, $s0, 360
	addi.d	$a2, $s0, 376
	beq	$a1, $a2, .LBB70_33
# %bb.31:                               # %.thread.i27
	ld.d	$a0, $s0, 368
	st.d	$a1, $fp, 360
	st.d	$a0, $fp, 368
	ld.d	$a0, $s0, 376
	st.d	$a0, $fp, 376
.LBB70_32:
	st.d	$a2, $s0, 360
	move	$a0, $a2
	b	.LBB70_39
.LBB70_33:
	beq	$s0, $fp, .LBB70_45
# %bb.34:
	ld.d	$a2, $s0, 368
	beqz	$a2, .LBB70_38
# %bb.35:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB70_37
# %bb.36:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB70_38
.LBB70_37:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB70_38:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24
	ld.d	$a0, $s0, 368
	ld.d	$a1, $fp, 360
	st.d	$a0, $fp, 368
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 360
.LBB70_39:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28
	st.d	$zero, $s0, 368
	st.b	$zero, $a0, 0
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s0, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 512
	addi.d	$a0, $fp, 496
.Ltmp356:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.40:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i
	addi.d	$a0, $fp, 504
	st.d	$zero, $fp, 512
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	ld.d	$a1, $s0, 512
	st.d	$zero, $fp, 536
	beqz	$a1, .LBB70_42
# %bb.41:
	ld.w	$a2, $s0, 504
	st.d	$a1, $fp, 512
	vld	$vr0, $s0, 520
	addi.d	$a3, $s0, 504
	ld.d	$a4, $s0, 536
	st.w	$a2, $fp, 504
	vst	$vr0, $fp, 520
	st.d	$a0, $a1, 8
	st.d	$a4, $fp, 536
	st.d	$zero, $s0, 512
	st.d	$a3, $s0, 520
	st.d	$a3, $s0, 528
	st.d	$zero, $s0, 536
.LBB70_42:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
	vld	$vr0, $s0, 544
	vst	$vr0, $fp, 544
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB70_43:
	move	$a0, $a1
	b	.LBB70_13
.LBB70_44:
	move	$a0, $a1
	b	.LBB70_26
.LBB70_45:
	move	$a0, $a1
	b	.LBB70_39
.LBB70_46:
.Ltmp358:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end70:
	.size	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_, .Lfunc_end70-_ZN9benchmark17BenchmarkReporter3RunaSEOS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunaSEOS1_,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunaSEOS1_,comdat
	.p2align	2, 0x0
GCC_except_table70:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Lfunc_begin30-.Lfunc_begin30  # >> Call Site 1 <<
	.uleb128 .Ltmp356-.Lfunc_begin30        #   Call between .Lfunc_begin30 and .Ltmp356
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin30        #     jumps to .Ltmp358
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp357-.Lfunc_begin30        # >> Call Site 3 <<
	.uleb128 .Lfunc_end70-.Ltmp357          #   Call between .Ltmp357 and .Lfunc_end70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameaSEOS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameaSEOS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameaSEOS0_ # -- Begin function _ZN9benchmark13BenchmarkNameaSEOS0_
	.weak	_ZN9benchmark13BenchmarkNameaSEOS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameaSEOS0_,@function
_ZN9benchmark13BenchmarkNameaSEOS0_:    # @_ZN9benchmark13BenchmarkNameaSEOS0_
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
	addi.d	$a2, $fp, 16
	move	$s0, $a1
	beq	$a0, $a2, .LBB71_4
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB71_7
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	ld.d	$a3, $s0, 8
	st.d	$a1, $fp, 0
	st.d	$a3, $fp, 8
	ld.d	$a3, $s0, 16
	ld.d	$a1, $fp, 16
	st.d	$a3, $fp, 16
	beqz	$a0, .LBB71_6
# %bb.3:
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 16
	b	.LBB71_13
.LBB71_4:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB71_7
# %bb.5:                                # %.thread.i
	ld.d	$a0, $s0, 8
	st.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	ld.d	$a0, $s0, 16
	st.d	$a0, $fp, 16
.LBB71_6:
	st.d	$a2, $s0, 0
	move	$a0, $a2
	b	.LBB71_13
.LBB71_7:
	beq	$s0, $fp, .LBB71_105
# %bb.8:
	ld.d	$a2, $s0, 8
	beqz	$a2, .LBB71_12
# %bb.9:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_11
# %bb.10:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_12
.LBB71_11:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $s0, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 0
.LBB71_13:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $s0, 8
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB71_17
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i9
	ld.d	$a1, $s0, 32
	addi.d	$a2, $s0, 48
	beq	$a1, $a2, .LBB71_20
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i10
	ld.d	$a3, $s0, 40
	st.d	$a1, $fp, 32
	st.d	$a3, $fp, 40
	ld.d	$a3, $s0, 48
	ld.d	$a1, $fp, 48
	st.d	$a3, $fp, 48
	beqz	$a0, .LBB71_19
# %bb.16:
	st.d	$a0, $s0, 32
	st.d	$a1, $s0, 48
	b	.LBB71_26
.LBB71_17:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
	ld.d	$a1, $s0, 32
	addi.d	$a2, $s0, 48
	beq	$a1, $a2, .LBB71_20
# %bb.18:                               # %.thread.i16
	ld.d	$a0, $s0, 40
	st.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	ld.d	$a0, $s0, 48
	st.d	$a0, $fp, 48
.LBB71_19:
	st.d	$a2, $s0, 32
	move	$a0, $a2
	b	.LBB71_26
.LBB71_20:
	beq	$s0, $fp, .LBB71_106
# %bb.21:
	ld.d	$a2, $s0, 40
	beqz	$a2, .LBB71_25
# %bb.22:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_24
# %bb.23:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_25
.LBB71_24:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_25:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i13
	ld.d	$a0, $s0, 40
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 32
.LBB71_26:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit17
	st.d	$zero, $s0, 40
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB71_30
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i18
	ld.d	$a1, $s0, 64
	addi.d	$a2, $s0, 80
	beq	$a1, $a2, .LBB71_33
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i19
	ld.d	$a3, $s0, 72
	st.d	$a1, $fp, 64
	st.d	$a3, $fp, 72
	ld.d	$a3, $s0, 80
	ld.d	$a1, $fp, 80
	st.d	$a3, $fp, 80
	beqz	$a0, .LBB71_32
# %bb.29:
	st.d	$a0, $s0, 64
	st.d	$a1, $s0, 80
	b	.LBB71_39
.LBB71_30:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24
	ld.d	$a1, $s0, 64
	addi.d	$a2, $s0, 80
	beq	$a1, $a2, .LBB71_33
# %bb.31:                               # %.thread.i25
	ld.d	$a0, $s0, 72
	st.d	$a1, $fp, 64
	st.d	$a0, $fp, 72
	ld.d	$a0, $s0, 80
	st.d	$a0, $fp, 80
.LBB71_32:
	st.d	$a2, $s0, 64
	move	$a0, $a2
	b	.LBB71_39
.LBB71_33:
	beq	$s0, $fp, .LBB71_107
# %bb.34:
	ld.d	$a2, $s0, 72
	beqz	$a2, .LBB71_38
# %bb.35:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_37
# %bb.36:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_38
.LBB71_37:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_38:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i22
	ld.d	$a0, $s0, 72
	ld.d	$a1, $fp, 64
	st.d	$a0, $fp, 72
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 64
.LBB71_39:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26
	st.d	$zero, $s0, 72
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 96
	addi.d	$a1, $fp, 112
	beq	$a0, $a1, .LBB71_43
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27
	ld.d	$a1, $s0, 96
	addi.d	$a2, $s0, 112
	beq	$a1, $a2, .LBB71_46
# %bb.41:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28
	ld.d	$a3, $s0, 104
	st.d	$a1, $fp, 96
	st.d	$a3, $fp, 104
	ld.d	$a3, $s0, 112
	ld.d	$a1, $fp, 112
	st.d	$a3, $fp, 112
	beqz	$a0, .LBB71_45
# %bb.42:
	st.d	$a0, $s0, 96
	st.d	$a1, $s0, 112
	b	.LBB71_52
.LBB71_43:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33
	ld.d	$a1, $s0, 96
	addi.d	$a2, $s0, 112
	beq	$a1, $a2, .LBB71_46
# %bb.44:                               # %.thread.i34
	ld.d	$a0, $s0, 104
	st.d	$a1, $fp, 96
	st.d	$a0, $fp, 104
	ld.d	$a0, $s0, 112
	st.d	$a0, $fp, 112
.LBB71_45:
	st.d	$a2, $s0, 96
	move	$a0, $a2
	b	.LBB71_52
.LBB71_46:
	beq	$s0, $fp, .LBB71_108
# %bb.47:
	ld.d	$a2, $s0, 104
	beqz	$a2, .LBB71_51
# %bb.48:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_50
# %bb.49:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_51
.LBB71_50:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_51:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31
	ld.d	$a0, $s0, 104
	ld.d	$a1, $fp, 96
	st.d	$a0, $fp, 104
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 96
.LBB71_52:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35
	st.d	$zero, $s0, 104
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 128
	addi.d	$a1, $fp, 144
	beq	$a0, $a1, .LBB71_56
# %bb.53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i36
	ld.d	$a1, $s0, 128
	addi.d	$a2, $s0, 144
	beq	$a1, $a2, .LBB71_59
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i37
	ld.d	$a3, $s0, 136
	st.d	$a1, $fp, 128
	st.d	$a3, $fp, 136
	ld.d	$a3, $s0, 144
	ld.d	$a1, $fp, 144
	st.d	$a3, $fp, 144
	beqz	$a0, .LBB71_58
# %bb.55:
	st.d	$a0, $s0, 128
	st.d	$a1, $s0, 144
	b	.LBB71_65
.LBB71_56:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i42
	ld.d	$a1, $s0, 128
	addi.d	$a2, $s0, 144
	beq	$a1, $a2, .LBB71_59
# %bb.57:                               # %.thread.i43
	ld.d	$a0, $s0, 136
	st.d	$a1, $fp, 128
	st.d	$a0, $fp, 136
	ld.d	$a0, $s0, 144
	st.d	$a0, $fp, 144
.LBB71_58:
	st.d	$a2, $s0, 128
	move	$a0, $a2
	b	.LBB71_65
.LBB71_59:
	beq	$s0, $fp, .LBB71_109
# %bb.60:
	ld.d	$a2, $s0, 136
	beqz	$a2, .LBB71_64
# %bb.61:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_63
# %bb.62:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_64
.LBB71_63:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_64:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i40
	ld.d	$a0, $s0, 136
	ld.d	$a1, $fp, 128
	st.d	$a0, $fp, 136
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 128
.LBB71_65:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit44
	st.d	$zero, $s0, 136
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 160
	addi.d	$a1, $fp, 176
	beq	$a0, $a1, .LBB71_69
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45
	ld.d	$a1, $s0, 160
	addi.d	$a2, $s0, 176
	beq	$a1, $a2, .LBB71_72
# %bb.67:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i46
	ld.d	$a3, $s0, 168
	st.d	$a1, $fp, 160
	st.d	$a3, $fp, 168
	ld.d	$a3, $s0, 176
	ld.d	$a1, $fp, 176
	st.d	$a3, $fp, 176
	beqz	$a0, .LBB71_71
# %bb.68:
	st.d	$a0, $s0, 160
	st.d	$a1, $s0, 176
	b	.LBB71_78
.LBB71_69:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51
	ld.d	$a1, $s0, 160
	addi.d	$a2, $s0, 176
	beq	$a1, $a2, .LBB71_72
# %bb.70:                               # %.thread.i52
	ld.d	$a0, $s0, 168
	st.d	$a1, $fp, 160
	st.d	$a0, $fp, 168
	ld.d	$a0, $s0, 176
	st.d	$a0, $fp, 176
.LBB71_71:
	st.d	$a2, $s0, 160
	move	$a0, $a2
	b	.LBB71_78
.LBB71_72:
	beq	$s0, $fp, .LBB71_110
# %bb.73:
	ld.d	$a2, $s0, 168
	beqz	$a2, .LBB71_77
# %bb.74:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_76
# %bb.75:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_77
.LBB71_76:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_77:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49
	ld.d	$a0, $s0, 168
	ld.d	$a1, $fp, 160
	st.d	$a0, $fp, 168
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 160
.LBB71_78:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53
	st.d	$zero, $s0, 168
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 192
	addi.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB71_82
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54
	ld.d	$a1, $s0, 192
	addi.d	$a2, $s0, 208
	beq	$a1, $a2, .LBB71_85
# %bb.80:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55
	ld.d	$a3, $s0, 200
	st.d	$a1, $fp, 192
	st.d	$a3, $fp, 200
	ld.d	$a3, $s0, 208
	ld.d	$a1, $fp, 208
	st.d	$a3, $fp, 208
	beqz	$a0, .LBB71_84
# %bb.81:
	st.d	$a0, $s0, 192
	st.d	$a1, $s0, 208
	b	.LBB71_91
.LBB71_82:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i60
	ld.d	$a1, $s0, 192
	addi.d	$a2, $s0, 208
	beq	$a1, $a2, .LBB71_85
# %bb.83:                               # %.thread.i61
	ld.d	$a0, $s0, 200
	st.d	$a1, $fp, 192
	st.d	$a0, $fp, 200
	ld.d	$a0, $s0, 208
	st.d	$a0, $fp, 208
.LBB71_84:
	st.d	$a2, $s0, 192
	move	$a0, $a2
	b	.LBB71_91
.LBB71_85:
	beq	$s0, $fp, .LBB71_111
# %bb.86:
	ld.d	$a2, $s0, 200
	beqz	$a2, .LBB71_90
# %bb.87:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_89
# %bb.88:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_90
.LBB71_89:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_90:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i58
	ld.d	$a0, $s0, 200
	ld.d	$a1, $fp, 192
	st.d	$a0, $fp, 200
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 192
.LBB71_91:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit62
	st.d	$zero, $s0, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 224
	addi.d	$a1, $fp, 240
	beq	$a0, $a1, .LBB71_95
# %bb.92:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i63
	ld.d	$a1, $s0, 224
	addi.d	$a2, $s0, 240
	beq	$a1, $a2, .LBB71_98
# %bb.93:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i64
	ld.d	$a3, $s0, 232
	st.d	$a1, $fp, 224
	st.d	$a3, $fp, 232
	ld.d	$a3, $s0, 240
	ld.d	$a1, $fp, 240
	st.d	$a3, $fp, 240
	beqz	$a0, .LBB71_97
# %bb.94:
	st.d	$a0, $s0, 224
	st.d	$a1, $s0, 240
	b	.LBB71_104
.LBB71_95:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i69
	ld.d	$a1, $s0, 224
	addi.d	$a2, $s0, 240
	beq	$a1, $a2, .LBB71_98
# %bb.96:                               # %.thread.i70
	ld.d	$a0, $s0, 232
	st.d	$a1, $fp, 224
	st.d	$a0, $fp, 232
	ld.d	$a0, $s0, 240
	st.d	$a0, $fp, 240
.LBB71_97:
	st.d	$a2, $s0, 224
	move	$a0, $a2
	b	.LBB71_104
.LBB71_98:
	beq	$s0, $fp, .LBB71_112
# %bb.99:
	ld.d	$a2, $s0, 232
	beqz	$a2, .LBB71_103
# %bb.100:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB71_102
# %bb.101:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB71_103
.LBB71_102:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB71_103:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i67
	ld.d	$a0, $s0, 232
	ld.d	$a1, $fp, 224
	st.d	$a0, $fp, 232
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 224
.LBB71_104:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit71
	st.d	$zero, $s0, 232
	st.b	$zero, $a0, 0
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB71_105:
	move	$a0, $a1
	b	.LBB71_13
.LBB71_106:
	move	$a0, $a1
	b	.LBB71_26
.LBB71_107:
	move	$a0, $a1
	b	.LBB71_39
.LBB71_108:
	move	$a0, $a1
	b	.LBB71_52
.LBB71_109:
	move	$a0, $a1
	b	.LBB71_65
.LBB71_110:
	move	$a0, $a1
	b	.LBB71_78
.LBB71_111:
	move	$a0, $a1
	b	.LBB71_91
.LBB71_112:
	move	$a0, $a1
	b	.LBB71_104
.Lfunc_end71:
	.size	_ZN9benchmark13BenchmarkNameaSEOS0_, .Lfunc_end71-_ZN9benchmark13BenchmarkNameaSEOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_,comdat
	.hidden	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_ # -- Begin function _ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_
	.p2align	5
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_,@function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_: # @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_
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
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	move	$fp, $a2
	blez	$a0, .LBB72_3
# %bb.1:                                # %.lr.ph.preheader
	lu12i.w	$a1, 59918
	ori	$a1, $a1, 2575
	lu32i.d	$a1, -89878
	lu52i.d	$a1, $a1, -352
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 9
	addi.d	$s1, $a0, 1
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB72_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	addi.d	$a1, $s0, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	addi.d	$a1, $s0, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 96
	addi.d	$a1, $s0, 96
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 128
	addi.d	$a1, $s0, 128
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 160
	addi.d	$a1, $s0, 160
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 192
	addi.d	$a1, $s0, 192
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 224
	addi.d	$a1, $s0, 224
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s0, 256
	vst	$vr0, $fp, 256
	addi.d	$a0, $fp, 280
	addi.d	$a1, $s0, 280
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 312
	st.w	$a0, $fp, 312
	addi.d	$a0, $fp, 320
	addi.d	$a1, $s0, 320
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 352
	st.w	$a0, $fp, 352
	addi.d	$a0, $fp, 360
	addi.d	$a1, $s0, 360
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s0, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 496
	addi.d	$a1, $s0, 496
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 544
	vst	$vr0, $fp, 544
	addi.d	$fp, $fp, 560
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 560
	bltu	$s2, $s1, .LBB72_2
.LBB72_3:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end72:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_, .Lfunc_end72-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN9benchmark17BenchmarkReporter3RunES6_EET0_T_S8_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception31
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	beq	$a0, $a1, .LBB73_13
# %bb.1:
	move	$s0, $a1
	ld.d	$a1, $fp, 16
	ld.d	$a0, $fp, 32
	st.d	$a1, $sp, 0
	st.d	$a0, $sp, 8
	st.d	$fp, $sp, 16
	beqz	$a1, .LBB73_3
# %bb.2:
	ld.d	$a0, $a0, 16
	st.d	$zero, $a1, 8
	bnez	$a0, .LBB73_4
	b	.LBB73_5
.LBB73_3:
	move	$a0, $zero
.LBB73_4:                               # %.sink.split.i
	st.d	$a0, $sp, 8
.LBB73_5:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeC2ERSG_.exit
	st.d	$zero, $fp, 16
	ld.d	$a4, $s0, 16
	addi.d	$a2, $fp, 8
	st.d	$a2, $fp, 24
	st.d	$a2, $fp, 32
	st.d	$zero, $fp, 40
	move	$a3, $fp
	beqz	$a4, .LBB73_12
# %bb.6:
.Ltmp359:                               # EH_LABEL
	addi.d	$a3, $sp, 0
	move	$a0, $fp
	move	$a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.7:                                # %.noexc.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB73_8:                               # %.noexc
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB73_8
# %bb.9:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
	st.d	$a1, $fp, 24
	move	$a1, $a0
	.p2align	4, , 16
.LBB73_10:                              # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.d	$a1, $a1, 24
	bnez	$a1, .LBB73_10
# %bb.11:
	ld.d	$a4, $s0, 40
	ld.d	$a3, $sp, 16
	ld.d	$a1, $sp, 0
	st.d	$a2, $fp, 32
	st.d	$a4, $fp, 40
	st.d	$a0, $fp, 16
.LBB73_12:
.Ltmp362:                               # EH_LABEL
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
.LBB73_13:
	move	$a0, $fp
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB73_14:
.Ltmp361:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB73_15:
.Ltmp364:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end73:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_, .Lfunc_end73-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,comdat
	.p2align	2, 0x0
GCC_except_table73:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp359-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin31        #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin31        #     jumps to .Ltmp364
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp363-.Lfunc_begin31        # >> Call Site 3 <<
	.uleb128 .Lfunc_end73-.Ltmp363          #   Call between .Ltmp363 and .Lfunc_end73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception32
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a2, $a0, 16
	ld.d	$a1, $a0, 0
.Ltmp365:                               # EH_LABEL
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB74_2:
.Ltmp367:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end74:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev, .Lfunc_end74-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table74:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp365-.Lfunc_begin32        # >> Call Site 1 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin32        #     jumps to .Ltmp367
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp366-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Lfunc_end74-.Ltmp366          #   Call between .Ltmp366 and .Lfunc_end74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception33
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
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$a1, $a1, 32
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $s2, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	st.d	$s3, $s0, 8
	beqz	$a1, .LBB75_3
# %bb.1:
.Ltmp368:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp369:                               # EH_LABEL
# %bb.2:
	st.d	$a0, $s0, 24
.LBB75_3:
	ld.d	$s3, $s2, 16
	beqz	$s3, .LBB75_10
# %bb.4:                                # %.lr.ph.preheader
	move	$s4, $s0
	b	.LBB75_6
	.p2align	4, , 16
.LBB75_5:                               #   in Loop: Header=BB75_6 Depth=1
	ld.d	$s3, $s3, 16
	move	$s4, $s2
	beqz	$s3, .LBB75_10
.LBB75_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $s3, 32
.Ltmp371:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB75_6 Depth=1
	move	$s2, $a0
	ld.w	$a0, $s3, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s3, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s4, 16
	st.d	$s4, $s2, 8
	beqz	$a1, .LBB75_5
# %bb.8:                                #   in Loop: Header=BB75_6 Depth=1
.Ltmp373:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB75_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB75_5
.LBB75_10:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB75_11:
.Ltmp370:                               # EH_LABEL
	b	.LBB75_13
.LBB75_12:
.Ltmp375:                               # EH_LABEL
.LBB75_13:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.14:
.Ltmp378:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp379:                               # EH_LABEL
# %bb.15:
.LBB75_16:
.Ltmp380:                               # EH_LABEL
	move	$fp, $a0
.Ltmp381:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB75_18:
.Ltmp383:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end75:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end75-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table75:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Lfunc_begin33-.Lfunc_begin33  # >> Call Site 1 <<
	.uleb128 .Ltmp368-.Lfunc_begin33        #   Call between .Lfunc_begin33 and .Ltmp368
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin33        # >> Call Site 2 <<
	.uleb128 .Ltmp369-.Ltmp368              #   Call between .Ltmp368 and .Ltmp369
	.uleb128 .Ltmp370-.Lfunc_begin33        #     jumps to .Ltmp370
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp371-.Lfunc_begin33        # >> Call Site 3 <<
	.uleb128 .Ltmp374-.Ltmp371              #   Call between .Ltmp371 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin33        #     jumps to .Ltmp375
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp374-.Lfunc_begin33        # >> Call Site 4 <<
	.uleb128 .Ltmp376-.Ltmp374              #   Call between .Ltmp374 and .Ltmp376
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp376-.Lfunc_begin33        # >> Call Site 5 <<
	.uleb128 .Ltmp379-.Ltmp376              #   Call between .Ltmp376 and .Ltmp379
	.uleb128 .Ltmp380-.Lfunc_begin33        #     jumps to .Ltmp380
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp381-.Lfunc_begin33        # >> Call Site 6 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin33        #     jumps to .Ltmp383
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp382-.Lfunc_begin33        # >> Call Site 7 <<
	.uleb128 .Lfunc_end75-.Ltmp382          #   Call between .Ltmp382 and .Lfunc_end75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end33:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
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
	move	$s1, $a0
	ld.d	$fp, $a0, 8
	move	$s0, $a1
	beqz	$fp, .LBB76_4
# %bb.1:
	ld.d	$a0, $fp, 8
	st.d	$a0, $s1, 8
	beqz	$a0, .LBB76_5
# %bb.2:
	ld.d	$a1, $a0, 24
	beq	$a1, $fp, .LBB76_6
# %bb.3:
	st.d	$zero, $a0, 16
	b	.LBB76_9
.LBB76_4:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit
	ld.d	$s1, $s1, 16
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	b	.LBB76_12
.LBB76_5:
	st.d	$zero, $s1, 0
	b	.LBB76_9
.LBB76_6:
	ld.d	$a1, $a0, 16
	st.d	$zero, $a0, 24
	beqz	$a1, .LBB76_9
	.p2align	4, , 16
.LBB76_7:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 24
	bnez	$a1, .LBB76_7
# %bb.8:
	ld.d	$a1, $a0, 16
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $s1, 8
.LBB76_9:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB76_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB76_11:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E.exit
	ld.d	$a0, $s1, 16
.LBB76_12:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end76:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_, .Lfunc_end76-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception34
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
	move	$s0, $a2
	move	$fp, $a1
	addi.d	$s1, $a1, 48
	st.d	$s1, $a1, 32
	ld.d	$s2, $a2, 8
	ld.d	$s3, $a2, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB77_3
# %bb.1:                                # %.noexc.i.i
.Ltmp384:                               # EH_LABEL
	addi.d	$s4, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp385:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s4, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB77_3:                               # %._crit_edge.i.i.i
	beqz	$s2, .LBB77_7
# %bb.4:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB77_6
# %bb.5:
	ld.b	$a0, $s3, 0
	st.b	$a0, $s1, 0
	b	.LBB77_7
.LBB77_6:
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB77_7:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 64
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB77_8:
.Ltmp386:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp387:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.9:
.LBB77_10:
.Ltmp389:                               # EH_LABEL
	move	$fp, $a0
.Ltmp390:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB77_12:
.Ltmp392:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end77:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end77-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table77:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp384-.Lfunc_begin34        # >> Call Site 1 <<
	.uleb128 .Ltmp385-.Ltmp384              #   Call between .Ltmp384 and .Ltmp385
	.uleb128 .Ltmp386-.Lfunc_begin34        #     jumps to .Ltmp386
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp385-.Lfunc_begin34        # >> Call Site 2 <<
	.uleb128 .Ltmp387-.Ltmp385              #   Call between .Ltmp385 and .Ltmp387
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin34        # >> Call Site 3 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin34        #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin34        # >> Call Site 4 <<
	.uleb128 .Ltmp391-.Ltmp390              #   Call between .Ltmp390 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin34        #     jumps to .Ltmp392
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp391-.Lfunc_begin34        # >> Call Site 5 <<
	.uleb128 .Lfunc_end77-.Ltmp391          #   Call between .Ltmp391 and .Lfunc_end77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end34:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,@function
_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_: # @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
.Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception35
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
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameC2ERKS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s1, 256
	vst	$vr0, $fp, 256
	addi.d	$s6, $fp, 296
	st.d	$s6, $fp, 280
	ld.d	$s2, $s1, 288
	ld.d	$s3, $s1, 280
	addi.d	$s0, $fp, 280
	ori	$a1, $zero, 16
	st.d	$s2, $sp, 16
	move	$a0, $s6
	bltu	$s2, $a1, .LBB78_3
# %bb.1:                                # %.noexc.i
.Ltmp393:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp394:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s0, 0
	st.d	$a1, $s6, 0
.LBB78_3:                               # %._crit_edge.i.i
	beqz	$s2, .LBB78_7
# %bb.4:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB78_6
# %bb.5:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB78_7
.LBB78_6:
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB78_7:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 280
	st.d	$a0, $fp, 288
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s1, 312
	st.w	$a0, $fp, 312
	addi.d	$s7, $fp, 336
	st.d	$s7, $fp, 320
	ld.d	$s3, $s1, 328
	ld.d	$s4, $s1, 320
	addi.d	$s2, $fp, 320
	ori	$a1, $zero, 16
	st.d	$s3, $sp, 16
	move	$a0, $s7
	bltu	$s3, $a1, .LBB78_10
# %bb.8:                                # %.noexc.i19
.Ltmp396:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp397:                               # EH_LABEL
# %bb.9:                                # %.noexc20
	ld.d	$a1, $sp, 16
	st.d	$a0, $s2, 0
	st.d	$a1, $s7, 0
.LBB78_10:                              # %._crit_edge.i.i18
	beqz	$s3, .LBB78_14
# %bb.11:                               # %._crit_edge.i.i18
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB78_13
# %bb.12:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB78_14
.LBB78_13:
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB78_14:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 320
	st.d	$a0, $fp, 328
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s1, 352
	st.w	$a0, $fp, 352
	addi.d	$s8, $fp, 376
	st.d	$s8, $fp, 360
	ld.d	$s4, $s1, 368
	ld.d	$s5, $s1, 360
	addi.d	$s3, $fp, 360
	ori	$a1, $zero, 16
	st.d	$s4, $sp, 16
	move	$a0, $s8
	bltu	$s4, $a1, .LBB78_17
# %bb.15:                               # %.noexc.i23
.Ltmp399:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp400:                               # EH_LABEL
# %bb.16:                               # %.noexc24
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s8, 0
.LBB78_17:                              # %._crit_edge.i.i22
	beqz	$s4, .LBB78_21
# %bb.18:                               # %._crit_edge.i.i22
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB78_20
# %bb.19:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB78_21
.LBB78_20:
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB78_21:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 360
	st.d	$a0, $fp, 368
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s1, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $fp, 504
	st.w	$zero, $fp, 504
	st.d	$zero, $fp, 512
	st.d	$a2, $fp, 520
	st.d	$a2, $fp, 528
	st.d	$zero, $fp, 536
	ld.d	$a1, $s1, 512
	beqz	$a1, .LBB78_28
# %bb.22:
	addi.d	$a0, $fp, 496
	st.d	$a0, $sp, 16
.Ltmp402:                               # EH_LABEL
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp403:                               # EH_LABEL
# %bb.23:                               # %.noexc.i.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB78_24:                              # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB78_24
# %bb.25:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
	st.d	$a1, $fp, 520
	move	$a2, $a0
	.p2align	4, , 16
.LBB78_26:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB78_26
# %bb.27:
	st.d	$a1, $fp, 528
	ld.d	$a1, $s1, 536
	st.d	$a1, $fp, 536
	st.d	$a0, $fp, 512
.LBB78_28:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
	vld	$vr0, $s1, 544
	vst	$vr0, $fp, 544
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
.LBB78_29:
.Ltmp401:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $s2, 0
	beq	$a0, $s7, .LBB78_34
	b	.LBB78_37
.LBB78_30:
.Ltmp398:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	beq	$a0, $s6, .LBB78_35
	b	.LBB78_38
.LBB78_31:
.Ltmp395:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB78_32:
.Ltmp404:                               # EH_LABEL
	ld.d	$a2, $s3, 0
	move	$s1, $a0
	bne	$a2, $s8, .LBB78_36
# %bb.33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s2, 0
	bne	$a0, $s7, .LBB78_37
.LBB78_34:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
	ld.d	$a0, $s0, 0
	bne	$a0, $s6, .LBB78_38
.LBB78_35:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB78_36:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s8, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beq	$a0, $s7, .LBB78_34
.LBB78_37:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $s7, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beq	$a0, $s6, .LBB78_35
.LBB78_38:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
	ld.d	$a1, $s6, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end78:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_, .Lfunc_end78-_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table78:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Lfunc_begin35-.Lfunc_begin35  # >> Call Site 1 <<
	.uleb128 .Ltmp393-.Lfunc_begin35        #   Call between .Lfunc_begin35 and .Ltmp393
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin35        # >> Call Site 2 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin35        #     jumps to .Ltmp395
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin35        # >> Call Site 3 <<
	.uleb128 .Ltmp396-.Ltmp394              #   Call between .Ltmp394 and .Ltmp396
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin35        # >> Call Site 4 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin35        #     jumps to .Ltmp398
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin35        # >> Call Site 5 <<
	.uleb128 .Ltmp399-.Ltmp397              #   Call between .Ltmp397 and .Ltmp399
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin35        # >> Call Site 6 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin35        #     jumps to .Ltmp401
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin35        # >> Call Site 7 <<
	.uleb128 .Ltmp402-.Ltmp400              #   Call between .Ltmp400 and .Ltmp402
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin35        # >> Call Site 8 <<
	.uleb128 .Ltmp403-.Ltmp402              #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin35        #     jumps to .Ltmp404
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin35        # >> Call Site 9 <<
	.uleb128 .Lfunc_end78-.Ltmp403          #   Call between .Ltmp403 and .Lfunc_end78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end35:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameC2ERKS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameC2ERKS0_ # -- Begin function _ZN9benchmark13BenchmarkNameC2ERKS0_
	.weak	_ZN9benchmark13BenchmarkNameC2ERKS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameC2ERKS0_,@function
_ZN9benchmark13BenchmarkNameC2ERKS0_:   # @_ZN9benchmark13BenchmarkNameC2ERKS0_
.Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception36
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	ld.d	$s0, $a1, 8
	ld.d	$s2, $a1, 0
	ori	$a1, $zero, 16
	st.d	$s0, $sp, 80
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bltu	$s0, $a1, .LBB79_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB79_2:                               # %._crit_edge.i.i
	beqz	$s0, .LBB79_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB79_5
# %bb.4:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB79_6
.LBB79_5:
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s0, $fp, 48
	st.d	$s0, $fp, 32
	ld.d	$s2, $s1, 40
	ld.d	$s3, $s1, 32
	addi.d	$s6, $fp, 32
	ori	$a1, $zero, 16
	st.d	$s2, $sp, 80
	move	$a0, $s0
	bltu	$s2, $a1, .LBB79_9
# %bb.7:                                # %.noexc.i23
.Ltmp405:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.8:                                # %.noexc
	ld.d	$a1, $sp, 80
	st.d	$a0, $s6, 0
	st.d	$a1, $s0, 0
.LBB79_9:                               # %._crit_edge.i.i22
	beqz	$s2, .LBB79_13
# %bb.10:                               # %._crit_edge.i.i22
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB79_12
# %bb.11:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB79_13
.LBB79_12:
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_13:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	addi.d	$s2, $fp, 80
	st.d	$s2, $fp, 64
	ld.d	$s3, $s1, 72
	ld.d	$s4, $s1, 64
	addi.d	$s7, $fp, 64
	ori	$a1, $zero, 16
	st.d	$s3, $sp, 80
	move	$a0, $s2
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	bltu	$s3, $a1, .LBB79_16
# %bb.14:                               # %.noexc.i26
.Ltmp408:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s7
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.15:                               # %.noexc27
	ld.d	$a1, $sp, 80
	st.d	$a0, $s7, 0
	st.d	$a1, $s2, 0
.LBB79_16:                              # %._crit_edge.i.i25
	beqz	$s3, .LBB79_20
# %bb.17:                               # %._crit_edge.i.i25
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB79_19
# %bb.18:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB79_20
.LBB79_19:
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_20:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 64
	st.d	$a0, $fp, 72
	stx.b	$zero, $a1, $a0
	addi.d	$s3, $fp, 112
	st.d	$s3, $fp, 96
	ld.d	$s4, $s1, 104
	ld.d	$s5, $s1, 96
	addi.d	$s8, $fp, 96
	ori	$a1, $zero, 16
	st.d	$s4, $sp, 80
	move	$a0, $s3
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	bltu	$s4, $a1, .LBB79_23
# %bb.21:                               # %.noexc.i30
.Ltmp411:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.22:                               # %.noexc31
	ld.d	$a1, $sp, 80
	st.d	$a0, $s8, 0
	st.d	$a1, $s3, 0
.LBB79_23:                              # %._crit_edge.i.i29
	beqz	$s4, .LBB79_27
# %bb.24:                               # %._crit_edge.i.i29
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB79_26
# %bb.25:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB79_27
.LBB79_26:
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_27:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 96
	st.d	$a0, $fp, 104
	stx.b	$zero, $a1, $a0
	addi.d	$s4, $fp, 144
	st.d	$s4, $fp, 128
	ld.d	$s5, $s1, 136
	ld.d	$s6, $s1, 128
	addi.d	$a0, $fp, 128
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 16
	st.d	$s5, $sp, 80
	move	$a0, $s4
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	bltu	$s5, $a1, .LBB79_30
# %bb.28:                               # %.noexc.i34
.Ltmp414:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.29:                               # %.noexc35
	ld.d	$a1, $sp, 80
	st.d	$a0, $s0, 0
	st.d	$a1, $s4, 0
.LBB79_30:                              # %._crit_edge.i.i33
	beqz	$s5, .LBB79_34
# %bb.31:                               # %._crit_edge.i.i33
	ori	$a1, $zero, 1
	bne	$s5, $a1, .LBB79_33
# %bb.32:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB79_34
.LBB79_33:
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_34:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 128
	st.d	$a0, $fp, 136
	stx.b	$zero, $a1, $a0
	addi.d	$s2, $fp, 176
	st.d	$s2, $fp, 160
	ld.d	$s6, $s1, 168
	ld.d	$s7, $s1, 160
	addi.d	$s5, $fp, 160
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 80
	move	$a0, $s2
	bltu	$s6, $a1, .LBB79_37
# %bb.35:                               # %.noexc.i38
.Ltmp417:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.36:                               # %.noexc39
	ld.d	$a1, $sp, 80
	st.d	$a0, $s5, 0
	st.d	$a1, $s2, 0
.LBB79_37:                              # %._crit_edge.i.i37
	beqz	$s6, .LBB79_41
# %bb.38:                               # %._crit_edge.i.i37
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB79_40
# %bb.39:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB79_41
.LBB79_40:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_41:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 160
	st.d	$a0, $fp, 168
	stx.b	$zero, $a1, $a0
	addi.d	$s3, $fp, 208
	st.d	$s3, $fp, 192
	ld.d	$s7, $s1, 200
	ld.d	$s8, $s1, 192
	addi.d	$s6, $fp, 192
	ori	$a1, $zero, 16
	st.d	$s7, $sp, 80
	move	$a0, $s3
	bltu	$s7, $a1, .LBB79_44
# %bb.42:                               # %.noexc.i42
.Ltmp420:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.43:                               # %.noexc43
	ld.d	$a1, $sp, 80
	st.d	$a0, $s6, 0
	st.d	$a1, $s3, 0
.LBB79_44:                              # %._crit_edge.i.i41
	beqz	$s7, .LBB79_48
# %bb.45:                               # %._crit_edge.i.i41
	ori	$a1, $zero, 1
	bne	$s7, $a1, .LBB79_47
# %bb.46:
	ld.b	$a1, $s8, 0
	st.b	$a1, $a0, 0
	b	.LBB79_48
.LBB79_47:
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_48:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 192
	st.d	$a0, $fp, 200
	stx.b	$zero, $a1, $a0
	addi.d	$s7, $fp, 240
	st.d	$s7, $fp, 224
	ld.d	$s8, $s1, 232
	ld.d	$s1, $s1, 224
	ori	$a0, $zero, 16
	st.d	$s8, $sp, 80
	bltu	$s8, $a0, .LBB79_51
# %bb.49:                               # %.noexc.i46
.Ltmp423:                               # EH_LABEL
	addi.d	$s0, $fp, 224
	addi.d	$a1, $sp, 80
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp424:                               # EH_LABEL
# %bb.50:                               # %.noexc47
	ld.d	$a1, $sp, 80
	st.d	$a0, $s0, 0
	st.d	$a1, $s7, 0
	move	$s7, $a0
.LBB79_51:                              # %._crit_edge.i.i45
	beqz	$s8, .LBB79_55
# %bb.52:                               # %._crit_edge.i.i45
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB79_54
# %bb.53:
	ld.b	$a0, $s1, 0
	st.b	$a0, $s7, 0
	b	.LBB79_55
.LBB79_54:
	move	$a0, $s7
	move	$a1, $s1
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB79_55:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 224
	st.d	$a0, $fp, 232
	stx.b	$zero, $a1, $a0
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
.LBB79_56:
.Ltmp425:                               # EH_LABEL
	ld.d	$a2, $s6, 0
	move	$s1, $a0
	bne	$a2, $s3, .LBB79_64
# %bb.57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s5, 0
	bne	$a0, $s2, .LBB79_66
.LBB79_58:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bne	$a0, $s4, .LBB79_68
.LBB79_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB79_70
.LBB79_60:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB79_72
.LBB79_61:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB79_74
.LBB79_62:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB79_76
.LBB79_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB79_64:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	beq	$a0, $s2, .LBB79_58
	b	.LBB79_66
.LBB79_65:
.Ltmp422:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $s5, 0
	beq	$a0, $s2, .LBB79_58
.LBB79_66:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
	ld.d	$a1, $s2, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s4, .LBB79_59
	b	.LBB79_68
.LBB79_67:
.Ltmp419:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s4, .LBB79_59
.LBB79_68:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $s4, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_60
	b	.LBB79_70
.LBB79_69:
.Ltmp416:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_60
.LBB79_70:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_61
	b	.LBB79_72
.LBB79_71:
.Ltmp413:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_61
.LBB79_72:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_62
	b	.LBB79_74
.LBB79_73:
.Ltmp410:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_62
.LBB79_74:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_63
	b	.LBB79_76
.LBB79_75:
.Ltmp407:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB79_63
.LBB79_76:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end79:
	.size	_ZN9benchmark13BenchmarkNameC2ERKS0_, .Lfunc_end79-_ZN9benchmark13BenchmarkNameC2ERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark13BenchmarkNameC2ERKS0_,"aG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table79:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Lfunc_begin36-.Lfunc_begin36  # >> Call Site 1 <<
	.uleb128 .Ltmp405-.Lfunc_begin36        #   Call between .Lfunc_begin36 and .Ltmp405
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin36        # >> Call Site 2 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp407-.Lfunc_begin36        #     jumps to .Ltmp407
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin36        # >> Call Site 3 <<
	.uleb128 .Ltmp408-.Ltmp406              #   Call between .Ltmp406 and .Ltmp408
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin36        # >> Call Site 4 <<
	.uleb128 .Ltmp409-.Ltmp408              #   Call between .Ltmp408 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin36        #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin36        # >> Call Site 5 <<
	.uleb128 .Ltmp411-.Ltmp409              #   Call between .Ltmp409 and .Ltmp411
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin36        # >> Call Site 6 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin36        #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin36        # >> Call Site 7 <<
	.uleb128 .Ltmp414-.Ltmp412              #   Call between .Ltmp412 and .Ltmp414
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin36        # >> Call Site 8 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin36        #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin36        # >> Call Site 9 <<
	.uleb128 .Ltmp417-.Ltmp415              #   Call between .Ltmp415 and .Ltmp417
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin36        # >> Call Site 10 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin36        #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin36        # >> Call Site 11 <<
	.uleb128 .Ltmp420-.Ltmp418              #   Call between .Ltmp418 and .Ltmp420
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin36        # >> Call Site 12 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin36        #     jumps to .Ltmp422
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin36        # >> Call Site 13 <<
	.uleb128 .Ltmp423-.Ltmp421              #   Call between .Ltmp421 and .Ltmp423
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin36        # >> Call Site 14 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.uleb128 .Ltmp425-.Lfunc_begin36        #     jumps to .Ltmp425
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin36        # >> Call Site 15 <<
	.uleb128 .Lfunc_end79-.Ltmp424          #   Call between .Ltmp424 and .Lfunc_end79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end36:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception37
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
	move	$s1, $a3
	ld.d	$s3, $a3, 0
	move	$s4, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$s5, $a1, 32
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	st.d	$s4, $s0, 8
	beqz	$a1, .LBB80_3
# %bb.1:
.Ltmp426:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.2:
	st.d	$a0, $s0, 24
.LBB80_3:
	ld.d	$s4, $s2, 16
	beqz	$s4, .LBB80_11
# %bb.4:                                # %.lr.ph.preheader
	move	$s5, $s0
	b	.LBB80_6
	.p2align	4, , 16
.LBB80_5:                               #   in Loop: Header=BB80_6 Depth=1
	ld.d	$s4, $s4, 16
	move	$s5, $s2
	beqz	$s4, .LBB80_11
.LBB80_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 0
.Ltmp429:                               # EH_LABEL
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB80_6 Depth=1
	move	$s2, $a0
	addi.d	$a2, $s4, 32
.Ltmp431:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp432:                               # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB80_6 Depth=1
	ld.w	$a0, $s4, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s4, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s5, 16
	st.d	$s5, $s2, 8
	beqz	$a1, .LBB80_5
# %bb.9:                                #   in Loop: Header=BB80_6 Depth=1
.Ltmp433:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB80_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB80_5
.LBB80_11:                              # %._crit_edge
	move	$a0, $s0
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
.LBB80_12:
.Ltmp428:                               # EH_LABEL
	b	.LBB80_14
.LBB80_13:
.Ltmp435:                               # EH_LABEL
.LBB80_14:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
# %bb.15:
.Ltmp438:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.16:
.LBB80_17:
.Ltmp440:                               # EH_LABEL
	move	$fp, $a0
.Ltmp441:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp442:                               # EH_LABEL
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB80_19:
.Ltmp443:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end80:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end80-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table80:
.Lexception37:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Lfunc_begin37-.Lfunc_begin37  # >> Call Site 1 <<
	.uleb128 .Ltmp426-.Lfunc_begin37        #   Call between .Lfunc_begin37 and .Ltmp426
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin37        # >> Call Site 2 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin37        #     jumps to .Ltmp428
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp429-.Lfunc_begin37        # >> Call Site 3 <<
	.uleb128 .Ltmp434-.Ltmp429              #   Call between .Ltmp429 and .Ltmp434
	.uleb128 .Ltmp435-.Lfunc_begin37        #     jumps to .Ltmp435
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp434-.Lfunc_begin37        # >> Call Site 4 <<
	.uleb128 .Ltmp436-.Ltmp434              #   Call between .Ltmp434 and .Ltmp436
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp436-.Lfunc_begin37        # >> Call Site 5 <<
	.uleb128 .Ltmp439-.Ltmp436              #   Call between .Ltmp436 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin37        #     jumps to .Ltmp440
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin37        # >> Call Site 6 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin37        #     jumps to .Ltmp443
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp442-.Lfunc_begin37        # >> Call Site 7 <<
	.uleb128 .Lfunc_end80-.Ltmp442          #   Call between .Ltmp442 and .Lfunc_end80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end37:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_,comdat
	.hidden	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_,@function
_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_: # @_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_
.Lfunc_begin38:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception38
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
	ld.d	$a0, $a0, 24
	move	$s0, $a2
	move	$s3, $a1
	bne	$a0, $a1, .LBB81_2
# %bb.1:
	addi.d	$s1, $fp, 8
	beq	$s1, $s0, .LBB81_8
.LBB81_2:                               # %.critedge
	beq	$s3, $s0, .LBB81_10
# %bb.3:                                # %.lr.ph
	addi.d	$s1, $fp, 8
	b	.LBB81_5
	.p2align	4, , 16
.LBB81_4:                               # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit
                                        #   in Loop: Header=BB81_5 Depth=1
	ori	$a1, $zero, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 40
	move	$s3, $s2
	beq	$s2, $s0, .LBB81_10
.LBB81_5:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $a0, 48
	ld.d	$a1, $s3, 56
.Ltmp444:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.6:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB81_5 Depth=1
	ld.d	$a0, $s3, 48
	beqz	$a0, .LBB81_4
# %bb.7:                                #   in Loop: Header=BB81_5 Depth=1
	ld.d	$a1, $s3, 64
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB81_4
.LBB81_8:
	ld.d	$a1, $fp, 16
.Ltmp447:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp448:                               # EH_LABEL
# %bb.9:                                # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE5clearEv.exit
	st.d	$zero, $fp, 16
	st.d	$s1, $fp, 24
	st.d	$s1, $fp, 32
	st.d	$zero, $fp, 40
.LBB81_10:                              # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB81_11:
.Ltmp449:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB81_12:
.Ltmp446:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end81:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_, .Lfunc_end81-_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_,"aG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_,comdat
	.p2align	2, 0x0
GCC_except_table81:
.Lexception38:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Lfunc_begin38-.Lfunc_begin38  # >> Call Site 1 <<
	.uleb128 .Ltmp444-.Lfunc_begin38        #   Call between .Lfunc_begin38 and .Ltmp444
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin38        # >> Call Site 2 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin38        #     jumps to .Ltmp446
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp445-.Lfunc_begin38        # >> Call Site 3 <<
	.uleb128 .Ltmp447-.Ltmp445              #   Call between .Ltmp445 and .Ltmp447
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin38        # >> Call Site 4 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.uleb128 .Ltmp449-.Lfunc_begin38        #     jumps to .Ltmp449
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp448-.Lfunc_begin38        # >> Call Site 5 <<
	.uleb128 .Lfunc_end81-.Ltmp448          #   Call between .Ltmp448 and .Lfunc_end81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end38:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.hidden	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,@function
_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: # @_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
.Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception39
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
	beqz	$a1, .LBB82_6
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$fp, $a0
	b	.LBB82_3
	.p2align	4, , 16
.LBB82_2:                               # %_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
                                        #   in Loop: Header=BB82_3 Depth=1
	ori	$a1, $zero, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB82_6
.LBB82_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ld.d	$a0, $s0, 48
	ld.d	$a1, $s0, 56
.Ltmp450:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.4:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
                                        #   in Loop: Header=BB82_3 Depth=1
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB82_2
# %bb.5:                                #   in Loop: Header=BB82_3 Depth=1
	ld.d	$a1, $s0, 64
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB82_2
.LBB82_6:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB82_7:
.Ltmp452:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end82:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Lfunc_end82-_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"aG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiN9benchmark17BenchmarkReporter19PerFamilyRunReportsEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.p2align	2, 0x0
GCC_except_table82:
.Lexception39:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Lfunc_begin39-.Lfunc_begin39  # >> Call Site 1 <<
	.uleb128 .Ltmp450-.Lfunc_begin39        #   Call between .Lfunc_begin39 and .Ltmp450
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin39        # >> Call Site 2 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin39        #     jumps to .Ltmp452
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp451-.Lfunc_begin39        # >> Call Site 3 <<
	.uleb128 .Lfunc_end82-.Ltmp451          #   Call between .Ltmp451 and .Lfunc_end82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end39:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark8internal12PerfCountersD2Ev,"axG",@progbits,_ZN9benchmark8internal12PerfCountersD2Ev,comdat
	.hidden	_ZN9benchmark8internal12PerfCountersD2Ev # -- Begin function _ZN9benchmark8internal12PerfCountersD2Ev
	.weak	_ZN9benchmark8internal12PerfCountersD2Ev
	.p2align	5
	.type	_ZN9benchmark8internal12PerfCountersD2Ev,@function
_ZN9benchmark8internal12PerfCountersD2Ev: # @_ZN9benchmark8internal12PerfCountersD2Ev
.Lfunc_begin40:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception40
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
.Ltmp453:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNK9benchmark8internal12PerfCounters13CloseCountersEv)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 48
	ld.d	$s0, $fp, 56
	beq	$a0, $s0, .LBB83_7
# %bb.2:                                # %.lr.ph.i.i.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB83_4
	.p2align	4, , 16
.LBB83_3:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB83_4 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB83_6
.LBB83_4:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB83_3
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB83_4 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB83_3
.LBB83_6:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
	ld.d	$a0, $fp, 48
.LBB83_7:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	beqz	$a0, .LBB83_9
# %bb.8:
	ld.d	$a1, $fp, 64
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB83_9:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB83_11
# %bb.10:
	ld.d	$a1, $fp, 40
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB83_11:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB83_13
# %bb.12:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB83_13:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit3
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB83_14:
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end83:
	.size	_ZN9benchmark8internal12PerfCountersD2Ev, .Lfunc_end83-_ZN9benchmark8internal12PerfCountersD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark8internal12PerfCountersD2Ev,"aG",@progbits,_ZN9benchmark8internal12PerfCountersD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table83:
.Lexception40:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end40-.Lcst_begin40
.Lcst_begin40:
	.uleb128 .Ltmp453-.Lfunc_begin40        # >> Call Site 1 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin40        #     jumps to .Ltmp455
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp454-.Lfunc_begin40        # >> Call Site 2 <<
	.uleb128 .Lfunc_end83-.Ltmp454          #   Call between .Ltmp454 and .Lfunc_end83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end40:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
.Lfunc_begin41:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception41
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
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16
	addi.d	$s2, $fp, 32
.Ltmp456:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.1:
	move	$a2, $a0
	move	$s1, $a1
	beqz	$a1, .LBB84_9
# %bb.2:
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB84_8
# %bb.3:
	beq	$a3, $s1, .LBB84_8
# %bb.4:
	ld.d	$s3, $fp, 40
	ld.d	$s4, $s1, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB84_6
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s1, 32
	ld.d	$a0, $s2, 0
	move	$s2, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	bnez	$a0, .LBB84_7
.LBB84_6:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
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
.LBB84_7:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB84_8:                               # %.thread
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB84_12
.LBB84_9:
	move	$s0, $a2
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB84_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB84_11:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB84_12:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB84_13:
.Ltmp458:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end84:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, .Lfunc_end84-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table84:
.Lexception41:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Lfunc_begin41-.Lfunc_begin41  # >> Call Site 1 <<
	.uleb128 .Ltmp456-.Lfunc_begin41        #   Call between .Lfunc_begin41 and .Ltmp456
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin41        # >> Call Site 2 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin41        #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin41        # >> Call Site 3 <<
	.uleb128 .Lfunc_end84-.Ltmp457          #   Call between .Ltmp457 and .Lfunc_end84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end41:
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
	beq	$a0, $a1, .LBB85_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB85_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB85_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB85_12
	b	.LBB85_15
.LBB85_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB85_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB85_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB85_8
.LBB85_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
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
.LBB85_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB85_27
# %bb.9:
	move	$fp, $zero
	b	.LBB85_28
.LBB85_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB85_21
	b	.LBB85_15
.LBB85_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB85_15
.LBB85_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB85_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB85_22
.LBB85_14:
	move	$a1, $zero
	b	.LBB85_28
.LBB85_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB85_29
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
	beqz	$a2, .LBB85_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB85_19
.LBB85_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
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
.LBB85_19:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB85_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB85_28
.LBB85_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
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
	bgez	$a0, .LBB85_14
.LBB85_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB85_30
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
	beqz	$a2, .LBB85_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB85_26
.LBB85_25:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
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
.LBB85_26:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB85_31
.LBB85_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB85_28:
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
.LBB85_29:
	move	$a1, $fp
	b	.LBB85_28
.LBB85_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB85_28
.LBB85_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB85_28
.Lfunc_end85:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end85-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
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
	beqz	$fp, .LBB86_4
# %bb.1:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB86_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB86_3:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
	ori	$a1, $zero, 80
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB86_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end86:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, .Lfunc_end86-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin42:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception42
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
	ld.d	$a0, $a3, 0
	move	$fp, $a1
	addi.d	$s0, $a1, 48
	st.d	$s0, $a1, 32
	ld.d	$s1, $a0, 8
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB87_3
# %bb.1:                                # %.noexc.i.i.i
.Ltmp459:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $s3, 0
	st.d	$a1, $s0, 0
	move	$s0, $a0
.LBB87_3:                               # %._crit_edge.i.i.i.i
	beqz	$s1, .LBB87_7
# %bb.4:                                # %._crit_edge.i.i.i.i
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB87_6
# %bb.5:
	ld.b	$a0, $s2, 0
	st.b	$a0, $s0, 0
	b	.LBB87_7
.LBB87_6:
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB87_7:
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	st.d	$zero, $fp, 64
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1000
	st.d	$a0, $fp, 72
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB87_8:
.Ltmp461:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp462:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.9:
.LBB87_10:
.Ltmp464:                               # EH_LABEL
	move	$fp, $a0
.Ltmp465:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB87_12:
.Ltmp467:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end87:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end87-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table87:
.Lexception42:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end42-.Lcst_begin42
.Lcst_begin42:
	.uleb128 .Ltmp459-.Lfunc_begin42        # >> Call Site 1 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin42        #     jumps to .Ltmp461
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp460-.Lfunc_begin42        # >> Call Site 2 <<
	.uleb128 .Ltmp462-.Ltmp460              #   Call between .Ltmp460 and .Ltmp462
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin42        # >> Call Site 3 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin42        #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin42        # >> Call Site 4 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin42        #     jumps to .Ltmp467
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp466-.Lfunc_begin42        # >> Call Site 5 <<
	.uleb128 .Lfunc_end87-.Ltmp466          #   Call between .Ltmp466 and .Lfunc_end87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end42:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase23:
	.p2align	2, 0x0
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
	beqz	$a0, .LBB88_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB88_4
	.p2align	4, , 16
.LBB88_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB88_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB88_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB88_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB88_6
.LBB88_4:                               # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB88_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB88_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB88_3
	b	.LBB88_2
.LBB88_6:                               # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB88_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB88_14
.LBB88_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB88_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB88_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB88_12
.LBB88_11:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
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
.LBB88_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB88_15
.LBB88_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB88_8
.LBB88_14:
	move	$a0, $zero
.LBB88_15:
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
.Lfunc_end88:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end88-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_
.Lfunc_begin43:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception43
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
	move	$s3, $a3
	move	$s4, $a2
	move	$s1, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s2, $a0, 32
.Ltmp468:                               # EH_LABEL
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.1:
	st.d	$fp, $sp, 16
.Ltmp477:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.2:
	move	$a2, $a0
	move	$s1, $a1
	beqz	$a1, .LBB89_10
# %bb.3:
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB89_9
# %bb.4:
	beq	$a3, $s1, .LBB89_9
# %bb.5:
	ld.d	$s3, $fp, 40
	ld.d	$s4, $s1, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB89_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s1, 32
	ld.d	$a0, $s2, 0
	move	$s2, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	bnez	$a0, .LBB89_8
.LBB89_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
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
.LBB89_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB89_9:                               # %.thread
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB89_15
.LBB89_10:
	move	$s0, $a2
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB89_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB89_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB89_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB89_14:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
	ori	$a1, $zero, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB89_15:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB89_16:
.Ltmp479:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB89_17:
.Ltmp470:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
# %bb.18:
.LBB89_19:
.Ltmp473:                               # EH_LABEL
	move	$fp, $a0
.Ltmp474:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp475:                               # EH_LABEL
# %bb.20:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB89_21:
.Ltmp476:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end89:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_, .Lfunc_end89-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRS7_SG_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table89:
.Lexception43:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end43-.Lcst_begin43
.Lcst_begin43:
	.uleb128 .Lfunc_begin43-.Lfunc_begin43  # >> Call Site 1 <<
	.uleb128 .Ltmp468-.Lfunc_begin43        #   Call between .Lfunc_begin43 and .Ltmp468
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin43        # >> Call Site 2 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin43        #     jumps to .Ltmp470
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp477-.Lfunc_begin43        # >> Call Site 3 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin43        #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin43        # >> Call Site 4 <<
	.uleb128 .Ltmp471-.Ltmp478              #   Call between .Ltmp478 and .Ltmp471
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin43        # >> Call Site 5 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin43        #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin43        # >> Call Site 6 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp476-.Lfunc_begin43        #     jumps to .Ltmp476
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp475-.Lfunc_begin43        # >> Call Site 7 <<
	.uleb128 .Lfunc_end89-.Ltmp475          #   Call between .Ltmp475 and .Lfunc_end89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end43:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase24:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_
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
	beq	$a0, $a1, .LBB90_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB90_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB90_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB90_12
	b	.LBB90_15
.LBB90_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB90_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB90_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB90_8
.LBB90_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
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
.LBB90_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB90_27
# %bb.9:
	move	$fp, $zero
	b	.LBB90_28
.LBB90_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB90_21
	b	.LBB90_15
.LBB90_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB90_15
.LBB90_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB90_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB90_22
.LBB90_14:
	move	$a1, $zero
	b	.LBB90_28
.LBB90_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB90_29
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
	beqz	$a2, .LBB90_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB90_19
.LBB90_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
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
.LBB90_19:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB90_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB90_28
.LBB90_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
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
	bgez	$a0, .LBB90_14
.LBB90_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB90_30
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
	beqz	$a2, .LBB90_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB90_26
.LBB90_25:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
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
.LBB90_26:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB90_31
.LBB90_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB90_28:
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
.LBB90_29:
	move	$a1, $fp
	b	.LBB90_28
.LBB90_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB90_28
.LBB90_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB90_28
.Lfunc_end90:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_, .Lfunc_end90-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB91_6
# %bb.1:
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB91_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB91_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB91_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB91_5:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
	ori	$a1, $zero, 96
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB91_6:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end91:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev, .Lfunc_end91-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_,"axG",@progbits,_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_,comdat
	.hidden	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_ # -- Begin function _ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_
	.weak	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_
	.p2align	5
	.type	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_,@function
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_: # @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_
.Lfunc_begin44:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception44
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
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	ld.d	$s1, $a1, 8
	ld.d	$s2, $a1, 0
	move	$s0, $a2
	ori	$a1, $zero, 16
	st.d	$s1, $sp, 16
	move	$a0, $s4
	bltu	$s1, $a1, .LBB92_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB92_2:                               # %._crit_edge.i.i
	beqz	$s1, .LBB92_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB92_5
# %bb.4:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB92_6
.LBB92_5:
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB92_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	ld.d	$s2, $s0, 8
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB92_9
# %bb.7:                                # %.noexc.i5
.Ltmp480:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.8:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB92_9:                               # %._crit_edge.i.i4
	beqz	$s2, .LBB92_13
# %bb.10:                               # %._crit_edge.i.i4
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB92_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB92_13
.LBB92_12:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB92_13:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB92_14:
.Ltmp482:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s4, .LBB92_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB92_16:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end92:
	.size	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_, .Lfunc_end92-_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_,"aG",@progbits,_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_,comdat
	.p2align	2, 0x0
GCC_except_table92:
.Lexception44:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end44-.Lcst_begin44
.Lcst_begin44:
	.uleb128 .Lfunc_begin44-.Lfunc_begin44  # >> Call Site 1 <<
	.uleb128 .Ltmp480-.Lfunc_begin44        #   Call between .Lfunc_begin44 and .Ltmp480
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin44        # >> Call Site 2 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin44        #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin44        # >> Call Site 3 <<
	.uleb128 .Lfunc_end92-.Ltmp481          #   Call between .Ltmp481 and .Lfunc_end92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end44:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_
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
	beqz	$a0, .LBB93_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB93_4
	.p2align	4, , 16
.LBB93_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB93_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB93_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB93_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB93_6
.LBB93_4:                               # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB93_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB93_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB93_3
	b	.LBB93_2
.LBB93_6:                               # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB93_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB93_14
.LBB93_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB93_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB93_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB93_12
.LBB93_11:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
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
.LBB93_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB93_15
.LBB93_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB93_8
.LBB93_14:
	move	$a0, $zero
.LBB93_15:
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
.Lfunc_end93:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_, .Lfunc_end93-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_benchmark.cc
	.type	_GLOBAL__sub_I_benchmark.cc,@function
_GLOBAL__sub_I_benchmark.cc:            # @_GLOBAL__sub_I_benchmark.cc
.Lfunc_begin45:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception45
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
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	dbar	20
	beqz	$a0, .LBB94_61
.LBB94_1:                               # %__cxx_global_var_init.exit
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark11BoolFromEnvEPKcb)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark26FLAGS_benchmark_list_testsE)
	st.b	$a0, $a1, %pc_lo12(_ZN9benchmark26FLAGS_benchmark_list_testsE)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_4
# %bb.3:                                # %.noexc.i.i
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_4:                               # %._crit_edge.i.i.i
	beqz	$s1, .LBB94_8
# %bb.5:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_7
# %bb.6:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_8
.LBB94_7:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_8:                               # %__cxx_global_var_init.2.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a1, %pc_hi20(_ZN9benchmarkL18kDefaultMinTimeStrE)
	addi.d	$a1, $a1, %pc_lo12(_ZN9benchmarkL18kDefaultMinTimeStrE)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_11
# %bb.10:                               # %.noexc.i.i2
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_11:                              # %._crit_edge.i.i.i1
	beqz	$s1, .LBB94_15
# %bb.12:                               # %._crit_edge.i.i.i1
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_14
# %bb.13:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_15
.LBB94_14:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_15:                              # %__cxx_global_var_init.5.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark13DoubleFromEnvEPKcd)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE)
	fst.d	$fa0, $a0, %pc_lo12(_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZN9benchmark12Int32FromEnvEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark27FLAGS_benchmark_repetitionsE)
	st.w	$a0, $a1, %pc_lo12(_ZN9benchmark27FLAGS_benchmark_repetitionsE)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark11BoolFromEnvEPKcb)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark23FLAGS_benchmark_dry_runE)
	st.b	$a0, $a1, %pc_lo12(_ZN9benchmark23FLAGS_benchmark_dry_runE)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark11BoolFromEnvEPKcb)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE)
	st.b	$a0, $a1, %pc_lo12(_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark11BoolFromEnvEPKcb)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE)
	st.b	$a0, $a1, %pc_lo12(_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark11BoolFromEnvEPKcb)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE)
	st.b	$a0, $a1, %pc_lo12(_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.16:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_18
# %bb.17:                               # %.noexc.i.i5
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_18:                              # %._crit_edge.i.i.i4
	beqz	$s1, .LBB94_22
# %bb.19:                               # %._crit_edge.i.i.i4
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_21
# %bb.20:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_22
.LBB94_21:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_22:                              # %__cxx_global_var_init.19.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.23:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_25
# %bb.24:                               # %.noexc.i.i8
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_25:                              # %._crit_edge.i.i.i7
	beqz	$s1, .LBB94_29
# %bb.26:                               # %._crit_edge.i.i.i7
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_28
# %bb.27:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_29
.LBB94_28:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_29:                              # %__cxx_global_var_init.22.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark19FLAGS_benchmark_outB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark19FLAGS_benchmark_outB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.30:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_32
# %bb.31:                               # %.noexc.i.i11
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_32:                              # %._crit_edge.i.i.i10
	beqz	$s1, .LBB94_36
# %bb.33:                               # %._crit_edge.i.i.i10
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_35
# %bb.34:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_36
.LBB94_35:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_36:                              # %__cxx_global_var_init.25.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.37:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_39
# %bb.38:                               # %.noexc.i.i14
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_39:                              # %._crit_edge.i.i.i13
	beqz	$s1, .LBB94_43
# %bb.40:                               # %._crit_edge.i.i.i13
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_42
# %bb.41:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_43
.LBB94_42:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_43:                              # %__cxx_global_var_init.27.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark11BoolFromEnvEPKcb)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	st.b	$a0, $a1, %pc_lo12(_ZN9benchmark32FLAGS_benchmark_counters_tabularE)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.44:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_46
# %bb.45:                               # %.noexc.i.i17
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_46:                              # %._crit_edge.i.i.i16
	beqz	$s1, .LBB94_50
# %bb.47:                               # %._crit_edge.i.i.i16
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_49
# %bb.48:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_50
.LBB94_49:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_50:                              # %__cxx_global_var_init.32.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	st.d	$zero, $sp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 8
	st.d	$a0, $sp, 32
	st.d	$a0, $sp, 40
	st.d	$zero, $sp, 48
.Ltmp486:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark14KvPairsFromEnvEPKcSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEE)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.51:
	ld.d	$a1, $sp, 24
.Ltmp489:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.52:                               # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev)
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	addi.d	$a1, $a1, %pc_lo12(_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN9benchmark13StringFromEnvEPKcS1_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E)
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	beqz	$s0, .LBB94_60
# %bb.53:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB94_55
# %bb.54:                               # %.noexc.i.i20
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB94_55:                              # %._crit_edge.i.i.i19
	beqz	$s1, .LBB94_59
# %bb.56:                               # %._crit_edge.i.i.i19
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB94_58
# %bb.57:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB94_59
.LBB94_58:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB94_59:                              # %__cxx_global_var_init.36.exit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark12Int32FromEnvEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZN9benchmark7FLAGS_vE)
	st.w	$a0, $a1, %pc_lo12(_ZN9benchmark7FLAGS_vE)
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB94_60:                              # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB94_61:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB94_1
# %bb.62:
.Ltmp483:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(_ZNSt8ios_base4InitC1Ev)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.63:
	pcalau12i	$a0, %got_pc_hi20(_ZNSt8ios_base4InitD1Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt8ios_base4InitD1Ev)
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a1, $a1, %pc_lo12(_ZZN9benchmark8internal17InitializeStreamsEvE4init)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB94_1
.LBB94_64:
.Ltmp485:                               # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal17InitializeStreamsEvE4init)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB94_65:
.Ltmp491:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB94_66:
.Ltmp488:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end94:
	.size	_GLOBAL__sub_I_benchmark.cc, .Lfunc_end94-_GLOBAL__sub_I_benchmark.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table94:
.Lexception45:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end45-.Lcst_begin45
.Lcst_begin45:
	.uleb128 .Lfunc_begin45-.Lfunc_begin45  # >> Call Site 1 <<
	.uleb128 .Ltmp486-.Lfunc_begin45        #   Call between .Lfunc_begin45 and .Ltmp486
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin45        # >> Call Site 2 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin45        #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin45        # >> Call Site 3 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin45        #     jumps to .Ltmp491
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp490-.Lfunc_begin45        # >> Call Site 4 <<
	.uleb128 .Ltmp483-.Ltmp490              #   Call between .Ltmp490 and .Ltmp483
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin45        # >> Call Site 5 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin45        #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin45        # >> Call Site 6 <<
	.uleb128 .Lfunc_end94-.Ltmp484          #   Call between .Ltmp484 and .Lfunc_end94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end45:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase25:
	.p2align	2, 0x0
                                        # -- End function
	.hidden	_ZN9benchmark26FLAGS_benchmark_list_testsE # @_ZN9benchmark26FLAGS_benchmark_list_testsE
	.type	_ZN9benchmark26FLAGS_benchmark_list_testsE,@object
	.bss
	.globl	_ZN9benchmark26FLAGS_benchmark_list_testsE
_ZN9benchmark26FLAGS_benchmark_list_testsE:
	.byte	0                               # 0x0
	.size	_ZN9benchmark26FLAGS_benchmark_list_testsE, 1

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"benchmark_list_tests"
	.size	.L.str, 21

	.hidden	_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E # @_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E
	.type	_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E:
	.space	32
	.size	_ZN9benchmark22FLAGS_benchmark_filterB5cxx11E, 32

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"benchmark_filter"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.space	1
	.size	.L.str.4, 1

	.hidden	__dso_handle
	.hidden	_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E # @_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E
	.type	_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E:
	.space	32
	.size	_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E, 32

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"benchmark_min_time"
	.size	.L.str.6, 19

	.type	_ZN9benchmarkL18kDefaultMinTimeStrE,@object # @_ZN9benchmarkL18kDefaultMinTimeStrE
	.section	.rodata,"a",@progbits
_ZN9benchmarkL18kDefaultMinTimeStrE:
	.asciz	"0.5s"
	.size	_ZN9benchmarkL18kDefaultMinTimeStrE, 5

	.hidden	_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE # @_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE
	.type	_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE,@object
	.bss
	.globl	_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE
	.p2align	3, 0x0
_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE:
	.dword	0x0000000000000000              # double 0
	.size	_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE, 8

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"benchmark_min_warmup_time"
	.size	.L.str.8, 26

	.hidden	_ZN9benchmark27FLAGS_benchmark_repetitionsE # @_ZN9benchmark27FLAGS_benchmark_repetitionsE
	.type	_ZN9benchmark27FLAGS_benchmark_repetitionsE,@object
	.bss
	.globl	_ZN9benchmark27FLAGS_benchmark_repetitionsE
	.p2align	2, 0x0
_ZN9benchmark27FLAGS_benchmark_repetitionsE:
	.word	0                               # 0x0
	.size	_ZN9benchmark27FLAGS_benchmark_repetitionsE, 4

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"benchmark_repetitions"
	.size	.L.str.10, 22

	.hidden	_ZN9benchmark23FLAGS_benchmark_dry_runE # @_ZN9benchmark23FLAGS_benchmark_dry_runE
	.type	_ZN9benchmark23FLAGS_benchmark_dry_runE,@object
	.bss
	.globl	_ZN9benchmark23FLAGS_benchmark_dry_runE
_ZN9benchmark23FLAGS_benchmark_dry_runE:
	.byte	0                               # 0x0
	.size	_ZN9benchmark23FLAGS_benchmark_dry_runE, 1

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"benchmark_dry_run"
	.size	.L.str.12, 18

	.hidden	_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE # @_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE
	.type	_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE,@object
	.bss
	.globl	_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE
_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE:
	.byte	0                               # 0x0
	.size	_ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE, 1

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"benchmark_enable_random_interleaving"
	.size	.L.str.14, 37

	.hidden	_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE # @_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE
	.type	_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE,@object
	.bss
	.globl	_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE
_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE:
	.byte	0                               # 0x0
	.size	_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE, 1

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"benchmark_report_aggregates_only"
	.size	.L.str.16, 33

	.hidden	_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE # @_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE
	.type	_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE,@object
	.bss
	.globl	_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE
_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE:
	.byte	0                               # 0x0
	.size	_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE, 1

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"benchmark_display_aggregates_only"
	.size	.L.str.18, 34

	.hidden	_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E # @_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E
	.type	_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E:
	.space	32
	.size	_ZN9benchmark22FLAGS_benchmark_formatB5cxx11E, 32

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"benchmark_format"
	.size	.L.str.20, 17

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"console"
	.size	.L.str.21, 8

	.hidden	_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E # @_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E
	.type	_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E:
	.space	32
	.size	_ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E, 32

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"benchmark_out_format"
	.size	.L.str.23, 21

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"json"
	.size	.L.str.24, 5

	.hidden	_ZN9benchmark19FLAGS_benchmark_outB5cxx11E # @_ZN9benchmark19FLAGS_benchmark_outB5cxx11E
	.type	_ZN9benchmark19FLAGS_benchmark_outB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark19FLAGS_benchmark_outB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark19FLAGS_benchmark_outB5cxx11E:
	.space	32
	.size	_ZN9benchmark19FLAGS_benchmark_outB5cxx11E, 32

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"benchmark_out"
	.size	.L.str.26, 14

	.hidden	_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E # @_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E
	.type	_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E:
	.space	32
	.size	_ZN9benchmark21FLAGS_benchmark_colorB5cxx11E, 32

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"benchmark_color"
	.size	.L.str.28, 16

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"auto"
	.size	.L.str.29, 5

	.hidden	_ZN9benchmark32FLAGS_benchmark_counters_tabularE # @_ZN9benchmark32FLAGS_benchmark_counters_tabularE
	.type	_ZN9benchmark32FLAGS_benchmark_counters_tabularE,@object
	.bss
	.globl	_ZN9benchmark32FLAGS_benchmark_counters_tabularE
_ZN9benchmark32FLAGS_benchmark_counters_tabularE:
	.byte	0                               # 0x0
	.size	_ZN9benchmark32FLAGS_benchmark_counters_tabularE, 1

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"benchmark_counters_tabular"
	.size	.L.str.31, 27

	.hidden	_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E # @_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E
	.type	_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E:
	.space	32
	.size	_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E, 32

	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"benchmark_perf_counters"
	.size	.L.str.33, 24

	.hidden	_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E # @_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E
	.type	_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E:
	.space	48
	.size	_ZN9benchmark23FLAGS_benchmark_contextB5cxx11E, 48

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"benchmark_context"
	.size	.L.str.35, 18

	.hidden	_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E # @_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E
	.type	_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E:
	.space	32
	.size	_ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E, 32

	.type	.L.str.37,@object               # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"benchmark_time_unit"
	.size	.L.str.37, 20

	.hidden	_ZN9benchmark7FLAGS_vE          # @_ZN9benchmark7FLAGS_vE
	.type	_ZN9benchmark7FLAGS_vE,@object
	.bss
	.globl	_ZN9benchmark7FLAGS_vE
	.p2align	2, 0x0
_ZN9benchmark7FLAGS_vE:
	.word	0                               # 0x0
	.size	_ZN9benchmark7FLAGS_vE, 4

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"v"
	.size	.L.str.39, 2

	.hidden	_ZN9benchmark8internal14global_contextB5cxx11E # @_ZN9benchmark8internal14global_contextB5cxx11E
	.type	_ZN9benchmark8internal14global_contextB5cxx11E,@object
	.bss
	.globl	_ZN9benchmark8internal14global_contextB5cxx11E
	.p2align	3, 0x0
_ZN9benchmark8internal14global_contextB5cxx11E:
	.dword	0
	.size	_ZN9benchmark8internal14global_contextB5cxx11E, 8

	.type	_ZN9benchmark8internalL27global_force_escape_pointerE,@object # @_ZN9benchmark8internalL27global_force_escape_pointerE
	.local	_ZN9benchmark8internalL27global_force_escape_pointerE
	.comm	_ZN9benchmark8internalL27global_force_escape_pointerE,8,8
	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"At least one iteration must be run"
	.size	.L.str.40, 35

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"thread_index must be less than threads"
	.size	.L.str.41, 39

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Perf counters read the value failed."
	.size	.L.str.42, 37

	.type	_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter,@object # @_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter
	.local	_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter
	.comm	_ZZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter,8,8
	.type	_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter,@object # @_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter
	.local	_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter
	.comm	_ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter,8,8
	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"all"
	.size	.L.str.43, 4

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"."
	.size	.L.str.44, 2

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"A custom file reporter was provided but --benchmark_out=<file> was not specified."
	.size	.L.str.45, 82

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"invalid file name: '"
	.size	.L.str.46, 21

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"'"
	.size	.L.str.47, 2

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Failed to match any benchmarks against regex: "
	.size	.L.str.48, 47

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"\n"
	.size	.L.str.49, 2

	.type	_ZN9benchmark12_GLOBAL__N_117default_time_unitE,@object # @_ZN9benchmark12_GLOBAL__N_117default_time_unitE
	.local	_ZN9benchmark12_GLOBAL__N_117default_time_unitE
	.comm	_ZN9benchmark12_GLOBAL__N_117default_time_unitE,4,4
	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Failed to add custom context \""
	.size	.L.str.50, 31

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"\" as it already "
	.size	.L.str.51, 17

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"exists with value \""
	.size	.L.str.52, 20

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"\"\n"
	.size	.L.str.53, 3

	.hidden	_ZN9benchmark8internal12HelperPrintfE # @_ZN9benchmark8internal12HelperPrintfE
	.type	_ZN9benchmark8internal12HelperPrintfE,@object
	.bss
	.globl	_ZN9benchmark8internal12HelperPrintfE
	.p2align	3, 0x0
_ZN9benchmark8internal12HelperPrintfE:
	.dword	0
	.size	_ZN9benchmark8internal12HelperPrintfE, 8

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"ms"
	.size	.L.str.55, 3

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"us"
	.size	.L.str.56, 3

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"ns"
	.size	.L.str.57, 3

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"unknown"
	.size	.L.str.58, 8

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"help"
	.size	.L.str.59, 5

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"csv"
	.size	.L.str.60, 4

	.type	.L.str.61,@object               # @.str.61
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.61:
	.asciz	"dry_run"
	.size	.L.str.61, 8

	.type	_ZZN9benchmark8internal17InitializeStreamsEvE4init,@object # @_ZZN9benchmark8internal17InitializeStreamsEvE4init
	.local	_ZZN9benchmark8internal17InitializeStreamsEvE4init
	.comm	_ZZN9benchmark8internal17InitializeStreamsEvE4init,1,1
	.type	_ZGVZN9benchmark8internal17InitializeStreamsEvE4init,@object # @_ZGVZN9benchmark8internal17InitializeStreamsEvE4init
	.local	_ZGVZN9benchmark8internal17InitializeStreamsEvE4init
	.comm	_ZGVZN9benchmark8internal17InitializeStreamsEvE4init,8,8
	.type	.L.str.63,@object               # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"v1.9.1"
	.size	.L.str.63, 7

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"benchmark [--benchmark_list_tests={true|false}]\n          [--benchmark_filter=<regex>]\n          [--benchmark_min_time=`<integer>x` OR `<float>s` ]\n          [--benchmark_min_warmup_time=<min_warmup_time>]\n          [--benchmark_repetitions=<num_repetitions>]\n          [--benchmark_dry_run={true|false}]\n          [--benchmark_enable_random_interleaving={true|false}]\n          [--benchmark_report_aggregates_only={true|false}]\n          [--benchmark_display_aggregates_only={true|false}]\n          [--benchmark_format=<console|json|csv>]\n          [--benchmark_out=<filename>]\n          [--benchmark_out_format=<json|console|csv>]\n          [--benchmark_color={auto|true|false}]\n          [--benchmark_counters_tabular={true|false}]\n          [--benchmark_context=<key>=<value>,...]\n          [--benchmark_time_unit={ns|us|ms|s}]\n          [--v=<verbosity>]\n"
	.size	.L.str.64, 861

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%s: error: unrecognized command-line flag: %s\n"
	.size	.L.str.65, 47

	.hidden	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.space	8
	.size	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.hidden	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.type	.L.str.66,@object               # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.66, 26

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"Unexpected format: '"
	.size	.L.str.67, 21

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"'\n"
	.size	.L.str.68, 3

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"***WARNING*** There are "
	.size	.L.str.69, 25

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	" benchmarks with threads and "
	.size	.L.str.70, 30

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	" performance counters were requested. Beware counters will reflect the combined usage across all threads.\n"
	.size	.L.str.71, 107

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"vector::reserve"
	.size	.L.str.72, 16

	.type	_ZSt19piecewise_construct,@object # @_ZSt19piecewise_construct
	.section	.rodata._ZSt19piecewise_construct,"aG",@progbits,_ZSt19piecewise_construct,comdat
	.weak	_ZSt19piecewise_construct
_ZSt19piecewise_construct:
	.space	1
	.size	_ZSt19piecewise_construct, 1

	.hidden	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.space	8
	.size	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.hidden	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.type	.L.str.73,@object               # @.str.73
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.73:
	.asciz	"default"
	.size	.L.str.73, 8

	.type	.L.str.74,@object               # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"vector::_M_range_insert"
	.size	.L.str.74, 24

	.hidden	_ZZN9benchmark8internal8LogLevelEvE9log_level # @_ZZN9benchmark8internal8LogLevelEvE9log_level
	.type	_ZZN9benchmark8internal8LogLevelEvE9log_level,@object
	.section	.bss._ZZN9benchmark8internal8LogLevelEvE9log_level,"awG",@nobits,_ZZN9benchmark8internal8LogLevelEvE9log_level,comdat
	.weak	_ZZN9benchmark8internal8LogLevelEvE9log_level
	.p2align	2, 0x0
_ZZN9benchmark8internal8LogLevelEvE9log_level:
	.word	0                               # 0x0
	.size	_ZZN9benchmark8internal8LogLevelEvE9log_level, 4

	.type	.L.str.75,@object               # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.75, 50

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_benchmark.cc
	.globl	_ZN9benchmark5StateC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE
	.type	_ZN9benchmark5StateC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE,@function
	.hidden	_ZN9benchmark5StateC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE
_ZN9benchmark5StateC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE = _ZN9benchmark5StateC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE
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
	.addrsig_sym _GLOBAL__sub_I_benchmark.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZN9benchmark26FLAGS_benchmark_list_testsE
	.addrsig_sym _ZN9benchmark22FLAGS_benchmark_filterB5cxx11E
	.addrsig_sym __dso_handle
	.addrsig_sym _ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E
	.addrsig_sym _ZN9benchmarkL18kDefaultMinTimeStrE
	.addrsig_sym _ZN9benchmark31FLAGS_benchmark_min_warmup_timeE
	.addrsig_sym _ZN9benchmark27FLAGS_benchmark_repetitionsE
	.addrsig_sym _ZN9benchmark23FLAGS_benchmark_dry_runE
	.addrsig_sym _ZN9benchmark42FLAGS_benchmark_enable_random_interleavingE
	.addrsig_sym _ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE
	.addrsig_sym _ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE
	.addrsig_sym _ZN9benchmark22FLAGS_benchmark_formatB5cxx11E
	.addrsig_sym _ZN9benchmark26FLAGS_benchmark_out_formatB5cxx11E
	.addrsig_sym _ZN9benchmark19FLAGS_benchmark_outB5cxx11E
	.addrsig_sym _ZN9benchmark21FLAGS_benchmark_colorB5cxx11E
	.addrsig_sym _ZN9benchmark32FLAGS_benchmark_counters_tabularE
	.addrsig_sym _ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E
	.addrsig_sym _ZN9benchmark23FLAGS_benchmark_contextB5cxx11E
	.addrsig_sym _ZN9benchmark25FLAGS_benchmark_time_unitB5cxx11E
	.addrsig_sym _ZN9benchmark7FLAGS_vE
	.addrsig_sym _ZN9benchmark8internal14global_contextB5cxx11E
	.addrsig_sym _ZN9benchmark8internalL27global_force_escape_pointerE
	.addrsig_sym _ZGVZN9benchmark28CreateDefaultDisplayReporterEvE24default_display_reporter
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZZN9benchmark8internal17InitializeStreamsEvE4init
	.addrsig_sym _ZGVZN9benchmark8internal17InitializeStreamsEvE4init
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.addrsig_sym _ZSt19piecewise_construct
	.addrsig_sym _ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZSt4clog
