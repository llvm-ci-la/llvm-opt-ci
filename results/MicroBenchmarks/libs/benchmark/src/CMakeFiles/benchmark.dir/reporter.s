	.file	"reporter.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN9benchmark17BenchmarkReporterC2Ev # -- Begin function _ZN9benchmark17BenchmarkReporterC2Ev
	.globl	_ZN9benchmark17BenchmarkReporterC2Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporterC2Ev,@function
_ZN9benchmark17BenchmarkReporterC2Ev:   # @_ZN9benchmark17BenchmarkReporterC2Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTVN9benchmark17BenchmarkReporterE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTVN9benchmark17BenchmarkReporterE+16)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a1, %got_pc_lo12(_ZSt4cout)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a1, $a1, %got_pc_lo12(_ZSt4cerr)
	st.d	$a1, $a0, 16
	ret
.Lfunc_end0:
	.size	_ZN9benchmark17BenchmarkReporterC2Ev, .Lfunc_end0-_ZN9benchmark17BenchmarkReporterC2Ev
                                        # -- End function
	.hidden	_ZN9benchmark17BenchmarkReporterD2Ev # -- Begin function _ZN9benchmark17BenchmarkReporterD2Ev
	.globl	_ZN9benchmark17BenchmarkReporterD2Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporterD2Ev,@function
_ZN9benchmark17BenchmarkReporterD2Ev:   # @_ZN9benchmark17BenchmarkReporterD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN9benchmark17BenchmarkReporterD2Ev, .Lfunc_end1-_ZN9benchmark17BenchmarkReporterD2Ev
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.hidden	_ZN9benchmark17BenchmarkReporterD0Ev # -- Begin function _ZN9benchmark17BenchmarkReporterD0Ev
	.globl	_ZN9benchmark17BenchmarkReporterD0Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporterD0Ev,@function
_ZN9benchmark17BenchmarkReporterD0Ev:   # @_ZN9benchmark17BenchmarkReporterD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end2:
	.size	_ZN9benchmark17BenchmarkReporterD0Ev, .Lfunc_end2-_ZN9benchmark17BenchmarkReporterD0Ev
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE
.LCPI3_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.hidden	_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE
	.globl	_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE,@function
_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE: # @_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE
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
	pcalau12i	$a2, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a2, $a2, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$s0, $a1
	move	$fp, $a0
	dbar	20
	pcalau12i	$s1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a2, .LBB3_34
.LBB3_1:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.d	$a0, $s1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB3_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %_ZN9benchmark8internallsIA15_cEERNS0_7LogTypeES4_RKT_.exit
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark19LocalDateTimeStringB5cxx11Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	ld.d	$a2, $sp, 32
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.4:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp2:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.5:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 24
	addi.d	$a1, $sp, 40
	beq	$a0, $a1, .LBB3_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$s1, %pc_hi20(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	ld.d	$a0, $s1, %pc_lo12(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	beqz	$a0, .LBB3_12
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, %pc_lo12(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	beqz	$s1, .LBB3_10
# %bb.9:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB3_11
.LBB3_10:
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB3_11:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB3_12:
	ld.d	$s7, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 8
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_0)
	fdiv.d	$fa0, $fa0, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	masknez	$a0, $a0, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 24
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB3_18
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s7, 16
	ld.d	$s4, $s7, 24
	beq	$s8, $s4, .LBB3_18
# %bb.14:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s1, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s5, $a0, %pc_lo12(.L.str.14)
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_16 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 48
	beq	$s8, $s4, .LBB3_18
.LBB3_16:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $s8, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 36
	bstrpick.d	$a1, $a0, 62, 53
	add.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 10
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 40
	beqz	$a0, .LBB3_15
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
	ori	$a2, $zero, 3
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s8, 40
	div.w	$a1, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB3_15
.LBB3_18:                               # %.loopexit79
	ld.d	$a0, $s7, 40
	ld.d	$a1, $s7, 48
	beq	$a0, $a1, .LBB3_27
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s7, 40
	ld.d	$a0, $s7, 48
	addi.d	$s3, $sp, 40
	beq	$s2, $a0, .LBB3_26
# %bb.20:                               # %.lr.ph84
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s1, $a0, %pc_lo12(.L.str.17)
	.p2align	4, , 16
.LBB3_21:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 0
	addi.d	$a0, $sp, 24
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	ld.d	$a2, $sp, 32
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.22:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a0, $sp, 24
	beq	$a0, $s3, .LBB3_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$a0, $s7, 48
	addi.d	$s2, $s2, 8
	beq	$s2, $a0, .LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_21 Depth=1
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 48
	bne	$s2, $a0, .LBB3_21
.LBB3_26:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB3_27:
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB3_31
# %bb.28:
	ld.d	$s2, $a1, 24
	addi.d	$s4, $a1, 8
	beq	$s2, $s4, .LBB3_31
# %bb.29:                               # %.lr.ph88.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$s0, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$s1, $a1, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB3_30:                               # %.lr.ph88
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 32
	ld.d	$a2, $s2, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 64
	ld.d	$a2, $s2, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bne	$a0, $s4, .LBB3_30
.LBB3_31:                               # %.loopexit
	ld.w	$a0, $s7, 4
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_33
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 119
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB3_33:
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
.LBB3_34:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB3_1
# %bb.35:
	st.d	$zero, $s1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.LBB3_36:
.Ltmp4:                                 # EH_LABEL
	ld.d	$a2, $sp, 24
	addi.d	$a1, $sp, 40
	move	$fp, $a0
	bne	$a2, $a1, .LBB3_38
	b	.LBB3_39
.LBB3_37:
.Ltmp7:                                 # EH_LABEL
	ld.d	$a2, $sp, 24
	move	$fp, $a0
	beq	$a2, $s3, .LBB3_39
.LBB3_38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE, .Lfunc_end3-_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark17BenchmarkReporter7ContextC2Ev # -- Begin function _ZN9benchmark17BenchmarkReporter7ContextC2Ev
	.globl	_ZN9benchmark17BenchmarkReporter7ContextC2Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter7ContextC2Ev,@function
_ZN9benchmark17BenchmarkReporter7ContextC2Ev: # @_ZN9benchmark17BenchmarkReporter7ContextC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark7CPUInfo3GetEv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark10SystemInfo3GetEv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN9benchmark17BenchmarkReporter7ContextC2Ev, .Lfunc_end4-_ZN9benchmark17BenchmarkReporter7ContextC2Ev
	.cfi_endproc
                                        # -- End function
	.hidden	_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev # -- Begin function _ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev
	.globl	_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev
	.p2align	5
	.type	_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev,@function
_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev: # @_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZNK9benchmark13BenchmarkName3strB5cxx11Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 272
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_10
# %bb.1:
	ld.d	$s0, $s1, 280
	ld.d	$s1, $s1, 288
	addi.d	$s2, $sp, 32
	st.d	$s2, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
	addi.d	$a1, $s1, 1
.Ltmp8:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.2:
	ld.d	$a0, $sp, 24
	addi.w	$a1, $zero, -1
	lu52i.d	$s3, $a1, 1023
	beq	$a0, $s3, .LBB5_11
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp10:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 24
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s1, .LBB5_11
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.6:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
	ld.d	$a0, $fp, 8
	ld.d	$a2, $sp, 24
	sub.d	$a0, $s3, $a0
	bltu	$a0, $a2, .LBB5_13
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
	ld.d	$a1, $sp, 16
.Ltmp14:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB5_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_10:
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB5_11:                               # %.invoke.i.i
.Ltmp19:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.12:                               # %.cont.i.i
.LBB5_13:
.Ltmp16:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.14:                               # %.noexc
.LBB5_15:
.Ltmp18:                                # EH_LABEL
	b	.LBB5_17
.LBB5_16:
.Ltmp21:                                # EH_LABEL
.LBB5_17:
	ld.d	$a2, $sp, 16
	move	$s0, $a0
	bne	$a2, $s2, .LBB5_20
# %bb.18:                               # %.body
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	bne	$a0, $a1, .LBB5_21
.LBB5_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB5_19
.LBB5_21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev, .Lfunc_end5-_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp8-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp13
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp19-.Ltmp15                #   Call between .Ltmp15 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end5-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv # -- Begin function _ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv
	.globl	_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv
	.p2align	5
	.type	_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv,@function
_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv: # @_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv
# %bb.0:                                # %switch.lookup
	ld.w	$a1, $a0, 424
	fld.d	$fa0, $a0, 432
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(.Lswitch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	addi.d	$a2, $a2, %pc_lo12(.Lswitch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	fldx.d	$fa1, $a2, $a1
	ld.d	$a0, $a0, 392
	fmul.d	$fa0, $fa0, $fa1
	beqz	$a0, .LBB6_2
# %bb.1:
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB6_2:
	ret
.Lfunc_end6:
	.size	_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv, .Lfunc_end6-_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv
                                        # -- End function
	.hidden	_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv # -- Begin function _ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv
	.globl	_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv
	.p2align	5
	.type	_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv,@function
_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv: # @_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv
# %bb.0:                                # %switch.lookup
	ld.w	$a1, $a0, 424
	fld.d	$fa0, $a0, 440
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(.Lswitch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	addi.d	$a2, $a2, %pc_lo12(.Lswitch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	fldx.d	$fa1, $a2, $a1
	ld.d	$a0, $a0, 392
	fmul.d	$fa0, $fa0, $fa1
	beqz	$a0, .LBB7_2
# %bb.1:
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB7_2:
	ret
.Lfunc_end7:
	.size	_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv, .Lfunc_end7-_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,"axG",@progbits,_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl # -- Begin function _ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.weak	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,@function
_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl: # @_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
# %bb.0:
	ret
.Lfunc_end8:
	.size	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl, .Lfunc_end8-_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter8FinalizeEv,"axG",@progbits,_ZN9benchmark17BenchmarkReporter8FinalizeEv,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter8FinalizeEv # -- Begin function _ZN9benchmark17BenchmarkReporter8FinalizeEv
	.weak	_ZN9benchmark17BenchmarkReporter8FinalizeEv
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter8FinalizeEv,@function
_ZN9benchmark17BenchmarkReporter8FinalizeEv: # @_ZN9benchmark17BenchmarkReporter8FinalizeEv
# %bb.0:
	ret
.Lfunc_end9:
	.size	_ZN9benchmark17BenchmarkReporter8FinalizeEv, .Lfunc_end9-_ZN9benchmark17BenchmarkReporter8FinalizeEv
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_reporter.cc
	.type	_GLOBAL__sub_I_reporter.cc,@function
_GLOBAL__sub_I_reporter.cc:             # @_GLOBAL__sub_I_reporter.cc
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end10:
	.size	_GLOBAL__sub_I_reporter.cc, .Lfunc_end10-_GLOBAL__sub_I_reporter.cc
	.cfi_endproc
                                        # -- End function
	.hidden	_ZTVN9benchmark17BenchmarkReporterE # @_ZTVN9benchmark17BenchmarkReporterE
	.type	_ZTVN9benchmark17BenchmarkReporterE,@object
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9benchmark17BenchmarkReporterE
	.p2align	3, 0x0
_ZTVN9benchmark17BenchmarkReporterE:
	.dword	0
	.dword	_ZTIN9benchmark17BenchmarkReporterE
	.dword	__cxa_pure_virtual
	.dword	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.dword	__cxa_pure_virtual
	.dword	_ZN9benchmark17BenchmarkReporter8FinalizeEv
	.dword	_ZN9benchmark17BenchmarkReporterD2Ev
	.dword	_ZN9benchmark17BenchmarkReporterD0Ev
	.size	_ZTVN9benchmark17BenchmarkReporterE, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be null"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.hidden	_ZN9benchmark17BenchmarkReporter7Context15executable_nameE # @_ZN9benchmark17BenchmarkReporter7Context15executable_nameE
	.type	_ZN9benchmark17BenchmarkReporter7Context15executable_nameE,@object
	.bss
	.globl	_ZN9benchmark17BenchmarkReporter7Context15executable_nameE
	.p2align	3, 0x0
_ZN9benchmark17BenchmarkReporter7Context15executable_nameE:
	.dword	0
	.size	_ZN9benchmark17BenchmarkReporter7Context15executable_nameE, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Running "
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Run on ("
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" X "
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" MHz CPU "
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"s"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.space	1
	.size	.L.str.7, 1

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	")\n"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"CPU Caches:\n"
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"  L"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" "
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" KiB"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" (x"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	")"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Load Average: "
	.size	.L.str.15, 15

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%.2f"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	", "
	.size	.L.str.17, 3

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	": "
	.size	.L.str.18, 3

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"***WARNING*** CPU scaling is enabled, the benchmark real time measurements may be noisy and will incur extra overhead.\n"
	.size	.L.str.19, 120

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"_"
	.size	.L.str.20, 2

	.hidden	_ZTIN9benchmark17BenchmarkReporterE # @_ZTIN9benchmark17BenchmarkReporterE
	.type	_ZTIN9benchmark17BenchmarkReporterE,@object
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTIN9benchmark17BenchmarkReporterE
	.p2align	3, 0x0
_ZTIN9benchmark17BenchmarkReporterE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN9benchmark17BenchmarkReporterE
	.size	_ZTIN9benchmark17BenchmarkReporterE, 16

	.hidden	_ZTSN9benchmark17BenchmarkReporterE # @_ZTSN9benchmark17BenchmarkReporterE
	.type	_ZTSN9benchmark17BenchmarkReporterE,@object
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9benchmark17BenchmarkReporterE
_ZTSN9benchmark17BenchmarkReporterE:
	.asciz	"N9benchmark17BenchmarkReporterE"
	.size	_ZTSN9benchmark17BenchmarkReporterE, 32

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

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"basic_string::append"
	.size	.L.str.21, 21

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_reporter.cc
	.type	.Lswitch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv,@object # @switch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.Lswitch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv:
	.dword	0x41cdcd6500000000              # double 1.0E+9
	.dword	0x412e848000000000              # double 1.0E+6
	.dword	0x408f400000000000              # double 1000
	.dword	0x3ff0000000000000              # double 1
	.size	.Lswitch.table._ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv, 32

	.globl	_ZN9benchmark17BenchmarkReporterD1Ev
	.type	_ZN9benchmark17BenchmarkReporterD1Ev,@function
	.hidden	_ZN9benchmark17BenchmarkReporterD1Ev
_ZN9benchmark17BenchmarkReporterD1Ev = _ZN9benchmark17BenchmarkReporterD2Ev
	.globl	_ZN9benchmark17BenchmarkReporter7ContextC1Ev
	.type	_ZN9benchmark17BenchmarkReporter7ContextC1Ev,@function
	.hidden	_ZN9benchmark17BenchmarkReporter7ContextC1Ev
_ZN9benchmark17BenchmarkReporter7ContextC1Ev = _ZN9benchmark17BenchmarkReporter7ContextC2Ev
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
	.addrsig_sym _GLOBAL__sub_I_reporter.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZTIN9benchmark17BenchmarkReporterE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN9benchmark17BenchmarkReporterE
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
