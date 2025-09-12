	.file	"json_reporter.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
.LCPI0_0:
	.dword	8                               # 0x8
	.dword	8319679458741941614             # 0x737570635f6d756e
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.hidden	_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.globl	_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.p2align	5
	.type	_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE,@function
_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE: # @_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
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
	ld.d	$fp, $a0, 8
	move	$s0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 232
	st.d	$a0, $sp, 216
	addi.d	$a0, $sp, 216
	ori	$a1, $zero, 2
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216
	ld.d	$a2, $sp, 224
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp2:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	addi.d	$s5, $sp, 200
	st.d	$s5, $sp, 184
.Ltmp5:                                 # EH_LABEL
	addi.d	$a0, $sp, 184
	ori	$a1, $zero, 4
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit162
.Ltmp8:                                 # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN9benchmark19LocalDateTimeStringB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.4:
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp11:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.5:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit163
	move	$s1, $a0
	addi.d	$s4, $sp, 136
	st.d	$s4, $sp, 120
	lu12i.w	$a0, 415558
	ori	$a0, $a0, 356
	st.w	$a0, $sp, 136
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 128
	st.b	$zero, $sp, 140
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 152
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.6:
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp16:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.7:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.8:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
	ld.d	$a0, $sp, 248
	addi.d	$s2, $sp, 264
	beq	$a0, $s2, .LBB0_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 120
	beq	$a0, $s4, .LBB0_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp21:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.13:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit172
	move	$s1, $a0
	st.d	$s4, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 136
	st.b	$a0, $sp, 144
	ld.d	$a2, $s0, 8
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 128
	st.b	$zero, $sp, 145
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.14:
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp26:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit178
.Ltmp28:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180
	ld.d	$a0, $sp, 248
	beq	$a0, $s2, .LBB0_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
	ld.d	$a0, $sp, 120
	beq	$a0, $s4, .LBB0_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	ld.d	$s3, $a0, %got_pc_lo12(_ZN9benchmark17BenchmarkReporter7Context15executable_nameE)
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB0_29
# %bb.21:
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp31:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.22:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188
	move	$s1, $a0
	st.d	$s4, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	st.d	$a1, $sp, 136
	st.h	$a0, $sp, 144
	ld.d	$a2, $s3, 0
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 128
	st.b	$zero, $sp, 146
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.23:
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp37:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.24:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit194
.Ltmp39:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.25:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196
	ld.d	$a0, $sp, 248
	beq	$a0, $s2, .LBB0_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_27:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
	ld.d	$a0, $sp, 120
	beq	$a0, $s4, .LBB0_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_29:
	ld.d	$s8, $s0, 0
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp42:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.30:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit222
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	st.d	$s4, $sp, 120
	vst	$vr0, $sp, 128
	st.b	$zero, $sp, 144
	ld.w	$a2, $s8, 0
.Ltmp44:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.31:
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp47:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.32:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit228
.Ltmp49:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
	ld.d	$a0, $sp, 248
	beq	$a0, $s2, .LBB0_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
	ld.d	$a0, $sp, 120
	beq	$a0, $s4, .LBB0_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp52:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.38:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238
	move	$s0, $a0
	st.d	$s4, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 7
	st.d	$a1, $sp, 136
	st.w	$a0, $sp, 143
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 128
	st.b	$zero, $sp, 147
	fld.d	$fa0, $s8, 8
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(lround)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.39:
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp57:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.40:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit244
.Ltmp59:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
	ld.d	$a0, $sp, 248
	beq	$a0, $s2, .LBB0_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
	ld.d	$a0, $sp, 120
	beq	$a0, $s4, .LBB0_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
	ld.w	$a0, $s8, 4
	beqz	$a0, .LBB0_58
# %bb.46:
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp62:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.47:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254
	move	$s0, $a0
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 88
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 248
.Ltmp64:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 248
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.48:                               # %.noexc257
	ld.d	$a1, $sp, 248
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
	ld.w	$s1, $s8, 4
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.49:                               # %.noexc259
	ld.d	$a2, $sp, 248
	addi.d	$a0, $s1, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.63)
	addi.d	$a3, $a3, %pc_lo12(.L.str.63)
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a1
.Ltmp70:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.50:
	ld.d	$a0, $sp, 248
	beq	$a0, $s2, .LBB0_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_52:
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp73:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.53:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit261
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.54:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263
	ld.d	$a0, $sp, 120
	beq	$a0, $s4, .LBB0_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_58:
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp78:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.59:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289
.Ltmp80:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.60:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291
	st.d	$s2, $sp, 248
.Ltmp83:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 6
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.61:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit293
	ld.d	$a0, $sp, 184
	beq	$a0, $s5, .LBB0_65
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $sp, 248
	beq	$a1, $s2, .LBB0_117
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	vld	$vr0, $sp, 256
	ld.d	$a2, $sp, 200
	st.d	$a1, $sp, 184
	vst	$vr0, $sp, 192
	beqz	$a0, .LBB0_67
# %bb.64:
	st.d	$a0, $sp, 248
	st.d	$a2, $sp, 264
	st.d	$zero, $sp, 256
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 248
	bne	$a0, $s2, .LBB0_68
	b	.LBB0_69
.LBB0_65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $sp, 248
	beq	$a1, $s2, .LBB0_117
# %bb.66:                               # %.thread.i
	vld	$vr0, $sp, 256
	st.d	$a1, $sp, 184
	vst	$vr0, $sp, 192
.LBB0_67:
	st.d	$s2, $sp, 248
	move	$a0, $s2
	st.d	$zero, $sp, 256
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 248
	beq	$a0, $s2, .LBB0_69
.LBB0_68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_69:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 248
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 8
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.70:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit298.preheader
	ld.d	$a0, $s8, 24
	ld.d	$s4, $s8, 16
	beq	$a0, $s4, .LBB0_112
# %bb.71:                               # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 415495
	ori	$a0, $a0, 2420
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s7, $a0, %pc_lo12(.L.str.11)
	lu12i.w	$a0, 415654
	ori	$a0, $a0, 2419
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$s0, $a0, %pc_lo12(.L.str.13)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $zero
	move	$s3, $zero
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, -349526
	lu52i.d	$s6, $a0, -1366
	.p2align	4, , 16
.LBB0_72:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp89:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.73:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit302
                                        #   in Loop: Header=BB0_72 Depth=1
.Ltmp91:                                # EH_LABEL
	ori	$a2, $zero, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.74:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp93:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.75:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit306
                                        #   in Loop: Header=BB0_72 Depth=1
	move	$s5, $a0
	add.d	$s4, $s4, $s2
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 88
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $sp, 104
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 108
.Ltmp95:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.76:                               #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp98:                                # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.77:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit312
                                        #   in Loop: Header=BB0_72 Depth=1
.Ltmp100:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.78:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB0_80
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_80:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_82
# %bb.81:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_82:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp103:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.83:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322
                                        #   in Loop: Header=BB0_72 Depth=1
	move	$s5, $a0
	ld.w	$a0, $s7, 0
	ld.b	$a1, $s7, 4
	addi.d	$a2, $sp, 104
	st.d	$a2, $sp, 88
	st.w	$a0, $a2, 0
	st.b	$a1, $a2, 4
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 109
	ld.w	$a2, $s4, 32
.Ltmp105:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.84:                               #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp108:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.85:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit328
                                        #   in Loop: Header=BB0_72 Depth=1
.Ltmp110:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.86:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB0_88
# %bb.87:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_90:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp113:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.91:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit338
                                        #   in Loop: Header=BB0_72 Depth=1
	move	$s5, $a0
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 88
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $sp, 104
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 108
	ld.w	$a2, $s4, 36
.Ltmp115:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.92:                               #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp118:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.93:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit344
                                        #   in Loop: Header=BB0_72 Depth=1
.Ltmp120:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.94:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB0_96
# %bb.95:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_96:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_98
# %bb.97:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_98:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp123:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.99:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit354
                                        #   in Loop: Header=BB0_72 Depth=1
	move	$s5, $a0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $s0, 7
	addi.d	$a2, $sp, 104
	st.d	$a2, $sp, 88
	st.d	$a0, $a2, 0
	st.w	$a1, $a2, 7
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 115
	ld.w	$a2, $s4, 40
.Ltmp125:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.100:                              #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp128:                               # EH_LABEL
	move	$a0, $s5
	addi.d	$s4, $sp, 136
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.101:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit360
                                        #   in Loop: Header=BB0_72 Depth=1
.Ltmp130:                               # EH_LABEL
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.102:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit362
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 120
	beq	$a0, $s4, .LBB0_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_104:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_106
# %bb.105:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_106:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp133:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.107:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit370
                                        #   in Loop: Header=BB0_72 Depth=1
.Ltmp135:                               # EH_LABEL
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.108:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit372
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s8, 16
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s6
	addi.d	$a0, $a0, -1
	beq	$s3, $a0, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_72 Depth=1
.Ltmp137:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
.LBB0_110:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374
                                        #   in Loop: Header=BB0_72 Depth=1
.Ltmp139:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.111:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit400
                                        #   in Loop: Header=BB0_72 Depth=1
	ld.d	$a0, $s8, 24
	ld.d	$s4, $s8, 16
	addi.d	$s3, $s3, 1
	sub.d	$a0, $a0, $s4
	srai.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s6
	addi.d	$s2, $s2, 48
	bltu	$s3, $a0, .LBB0_72
.LBB0_112:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit298._crit_edge
	addi.d	$s0, $sp, 136
	st.d	$s0, $sp, 120
.Ltmp142:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 4
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.113:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit300
	ld.d	$a0, $sp, 184
	addi.d	$s5, $sp, 200
	beq	$a0, $s5, .LBB0_120
# %bb.114:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i401
	ld.d	$a1, $sp, 120
	beq	$a1, $s0, .LBB0_188
# %bb.115:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i402
	vld	$vr0, $sp, 128
	ld.d	$a2, $sp, 200
	st.d	$a1, $sp, 184
	vst	$vr0, $sp, 192
	beqz	$a0, .LBB0_122
# %bb.116:
	st.d	$a0, $sp, 120
	st.d	$a2, $sp, 136
	st.d	$zero, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 120
	bne	$a0, $s0, .LBB0_123
	b	.LBB0_124
.LBB0_117:
	ld.d	$a2, $sp, 256
	beqz	$a2, .LBB0_192
# %bb.118:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_191
# %bb.119:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_192
.LBB0_120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406
	ld.d	$a1, $sp, 120
	beq	$a1, $s0, .LBB0_188
# %bb.121:                              # %.thread.i407
	vld	$vr0, $sp, 128
	st.d	$a1, $sp, 184
	vst	$vr0, $sp, 192
.LBB0_122:
	st.d	$s0, $sp, 120
	move	$a0, $s0
	st.d	$zero, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 120
	beq	$a0, $s0, .LBB0_124
.LBB0_123:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_124:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp145:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.125:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit413
.Ltmp147:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.126:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit415
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp149:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.127:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417
.Ltmp151:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.128:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit419
	ld.d	$s1, $s8, 40
	ld.d	$a0, $s8, 48
	beq	$s1, $a0, .LBB0_134
# %bb.129:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	.p2align	4, , 16
.LBB0_130:                              # %.lr.ph630
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s1, 0
.Ltmp153:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.131:                              # %_ZNSolsEd.exit
                                        #   in Loop: Header=BB0_130 Depth=1
	ld.d	$a0, $s8, 48
	addi.d	$s1, $s1, 8
	beq	$s1, $a0, .LBB0_134
# %bb.132:                              #   in Loop: Header=BB0_130 Depth=1
.Ltmp156:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.133:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424
                                        #   in Loop: Header=BB0_130 Depth=1
	ld.d	$a0, $s8, 48
	bne	$s1, $a0, .LBB0_130
.LBB0_134:                              # %._crit_edge
.Ltmp159:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.135:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit421
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp161:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.136:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426
	move	$s0, $a0
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 7
	st.d	$a1, $sp, 104
	st.d	$a0, $sp, 111
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 119
.Ltmp163:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark19GetBenchmarkVersionB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.137:
.Ltmp166:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.138:
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp169:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.139:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit432
	ld.d	$a0, $sp, 120
	addi.d	$s3, $sp, 136
	beq	$a0, $s3, .LBB0_141
# %bb.140:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_141:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
	ld.d	$a0, $sp, 56
	addi.d	$a1, $sp, 72
	beq	$a0, $a1, .LBB0_143
# %bb.142:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_143:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_145
# %bb.144:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_145:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
.Ltmp172:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.146:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit443
	lu12i.w	$a0, 415430
	ori	$a0, $a0, 1394
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
	lu32i.d	$a0, 357217
	lu52i.d	$a0, $a0, 6
	st.d	$a0, $sp, 48
.Ltmp175:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.147:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit445
	move	$s0, $a0
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 88
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 56
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.148:                              # %.noexc448
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	pcalau12i	$a2, %pc_hi20(.L.str.20)
	addi.d	$a2, $a2, %pc_lo12(.L.str.20)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
.Ltmp180:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.149:
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp183:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.150:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit451
	ld.d	$a0, $sp, 120
	beq	$a0, $s3, .LBB0_152
# %bb.151:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_152:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_154
# %bb.153:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_154:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457
.Ltmp186:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.155:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit459
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp188:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.156:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit461
	move	$s0, $a0
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 88
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 56
.Ltmp191:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.157:                              # %.noexc464
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
.Ltmp194:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.158:
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp197:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.159:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467
	ld.d	$a0, $sp, 120
	beq	$a0, $s3, .LBB0_161
# %bb.160:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_161:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_163
# %bb.162:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_163:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16GetGlobalContextB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.164:
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_174
# %bb.165:
	ld.d	$s0, $a0, 24
	addi.d	$s4, $a0, 8
	beq	$s0, $s4, .LBB0_174
# %bb.166:                              # %.lr.ph634
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_168
	.p2align	4, , 16
.LBB0_167:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503
                                        #   in Loop: Header=BB0_168 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$a0, $s4, .LBB0_174
.LBB0_168:                              # =>This Inner Loop Header: Depth=1
.Ltmp202:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.169:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit496
                                        #   in Loop: Header=BB0_168 Depth=1
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp204:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.170:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit498
                                        #   in Loop: Header=BB0_168 Depth=1
	move	$s2, $a0
	addi.d	$a1, $s0, 32
	addi.d	$a2, $s0, 64
.Ltmp207:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.171:                              #   in Loop: Header=BB0_168 Depth=1
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp210:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.172:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit500
                                        #   in Loop: Header=BB0_168 Depth=1
	ld.d	$a0, $sp, 120
	beq	$a0, $s3, .LBB0_167
# %bb.173:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501
                                        #   in Loop: Header=BB0_168 Depth=1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_167
.LBB0_174:                              # %.loopexit
.Ltmp213:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.175:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit508
	ld.d	$a1, $sp, 216
	ld.d	$a2, $sp, 224
.Ltmp215:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.176:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit510
.Ltmp217:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.177:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit512
	ld.d	$a1, $sp, 216
	ld.d	$a2, $sp, 224
.Ltmp219:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.178:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit514
.Ltmp221:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.179:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit516
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB0_181
# %bb.180:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_181:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB0_183
# %bb.182:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_183:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522
	ld.d	$a0, $sp, 184
	beq	$a0, $s5, .LBB0_185
# %bb.184:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_185:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB0_187
# %bb.186:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526
	ld.d	$a1, $sp, 232
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_187:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528
	ori	$a0, $zero, 1
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
.LBB0_188:
	ld.d	$a2, $sp, 128
	beqz	$a2, .LBB0_194
# %bb.189:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_193
# %bb.190:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_194
.LBB0_191:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_192:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 184
	st.d	$a0, $sp, 192
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 248
	st.d	$zero, $sp, 256
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 248
	bne	$a0, $s2, .LBB0_68
	b	.LBB0_69
.LBB0_193:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_194:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i404
	ld.d	$a0, $sp, 128
	ld.d	$a1, $sp, 184
	st.d	$a0, $sp, 192
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 120
	st.d	$zero, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 120
	bne	$a0, $s0, .LBB0_123
	b	.LBB0_124
.LBB0_195:
.Ltmp72:                                # EH_LABEL
	ld.d	$a2, $sp, 248
	move	$fp, $a0
	beq	$a2, $s2, .LBB0_226
# %bb.196:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
	ld.d	$a0, $sp, 264
	b	.LBB0_225
.LBB0_197:
.Ltmp69:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_226
.LBB0_198:
.Ltmp66:                                # EH_LABEL
	b	.LBB0_215
.LBB0_199:
.Ltmp36:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_234
.LBB0_200:
.Ltmp199:                               # EH_LABEL
	b	.LBB0_204
.LBB0_201:
.Ltmp196:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_261
.LBB0_202:
.Ltmp193:                               # EH_LABEL
	b	.LBB0_264
.LBB0_203:
.Ltmp185:                               # EH_LABEL
.LBB0_204:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	bne	$a2, $s3, .LBB0_259
	b	.LBB0_261
.LBB0_205:
.Ltmp182:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_261
.LBB0_206:
.Ltmp179:                               # EH_LABEL
	b	.LBB0_264
.LBB0_207:
.Ltmp171:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	addi.d	$a1, $sp, 136
	move	$fp, $a0
	beq	$a2, $a1, .LBB0_210
# %bb.208:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_210
.LBB0_209:
.Ltmp168:                               # EH_LABEL
	move	$fp, $a0
.LBB0_210:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476
	ld.d	$a0, $sp, 56
	addi.d	$a1, $sp, 72
	beq	$a0, $a1, .LBB0_261
# %bb.211:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	b	.LBB0_260
.LBB0_212:
.Ltmp165:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_261
.LBB0_213:
.Ltmp144:                               # EH_LABEL
	b	.LBB0_264
.LBB0_214:
.Ltmp88:                                # EH_LABEL
.LBB0_215:
	move	$fp, $a0
	addi.d	$s5, $sp, 200
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB0_268
	b	.LBB0_272
.LBB0_216:
.Ltmp85:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB0_268
	b	.LBB0_272
.LBB0_217:
.Ltmp56:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_234
.LBB0_218:
.Ltmp46:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_234
.LBB0_219:
.Ltmp25:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_234
.LBB0_220:
.Ltmp15:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_234
.LBB0_221:
.Ltmp10:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 184
	beq	$a0, $s5, .LBB0_269
	b	.LBB0_273
.LBB0_222:
.Ltmp7:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB0_270
	b	.LBB0_274
.LBB0_223:
.Ltmp77:                                # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s4, .LBB0_226
# %bb.224:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
	ld.d	$a0, $sp, 136
.LBB0_225:                              # %.body
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_226:                              # %.body
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_237
# %bb.227:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
	ld.d	$a1, $sp, 104
	b	.LBB0_236
.LBB0_228:
.Ltmp41:                                # EH_LABEL
	ld.d	$a2, $sp, 248
	move	$fp, $a0
	bne	$a2, $s2, .LBB0_233
	b	.LBB0_234
.LBB0_229:
.Ltmp61:                                # EH_LABEL
	ld.d	$a2, $sp, 248
	move	$fp, $a0
	bne	$a2, $s2, .LBB0_233
	b	.LBB0_234
.LBB0_230:
.Ltmp51:                                # EH_LABEL
	ld.d	$a2, $sp, 248
	move	$fp, $a0
	bne	$a2, $s2, .LBB0_233
	b	.LBB0_234
.LBB0_231:
.Ltmp30:                                # EH_LABEL
	ld.d	$a2, $sp, 248
	move	$fp, $a0
	bne	$a2, $s2, .LBB0_233
	b	.LBB0_234
.LBB0_232:
.Ltmp20:                                # EH_LABEL
	ld.d	$a2, $sp, 248
	addi.d	$a1, $sp, 264
	move	$fp, $a0
	beq	$a2, $a1, .LBB0_234
.LBB0_233:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
	ld.d	$a0, $sp, 264
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_234:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB0_237
# %bb.235:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
	ld.d	$a1, $sp, 136
.LBB0_236:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_237:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
	addi.d	$s5, $sp, 200
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB0_268
	b	.LBB0_272
.LBB0_238:
.Ltmp4:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB0_270
	b	.LBB0_274
.LBB0_239:
.Ltmp33:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB0_268
	b	.LBB0_272
.LBB0_240:
.Ltmp190:                               # EH_LABEL
	b	.LBB0_264
.LBB0_241:
.Ltmp82:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB0_268
	b	.LBB0_272
.LBB0_242:
.Ltmp223:                               # EH_LABEL
	b	.LBB0_264
.LBB0_243:
.Ltmp174:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_266
.LBB0_244:
.Ltmp158:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_266
.LBB0_245:
.Ltmp155:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_266
.LBB0_246:
.Ltmp209:                               # EH_LABEL
	b	.LBB0_264
.LBB0_247:
.Ltmp212:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s3, .LBB0_265
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_265
.LBB0_249:
.Ltmp97:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB0_261
.LBB0_250:
.Ltmp107:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_261
.LBB0_251:
.Ltmp117:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_261
.LBB0_252:
.Ltmp127:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB0_261
.LBB0_253:
.Ltmp206:                               # EH_LABEL
	b	.LBB0_264
.LBB0_254:
.Ltmp112:                               # EH_LABEL
	b	.LBB0_258
.LBB0_255:
.Ltmp122:                               # EH_LABEL
	b	.LBB0_258
.LBB0_256:
.Ltmp132:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	bne	$a2, $s4, .LBB0_259
	b	.LBB0_261
.LBB0_257:
.Ltmp102:                               # EH_LABEL
.LBB0_258:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	addi.d	$a0, $sp, 136
	beq	$a2, $a0, .LBB0_261
.LBB0_259:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB0_260:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_261:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB0_265
# %bb.262:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_265
.LBB0_263:
.Ltmp141:                               # EH_LABEL
.LBB0_264:
	move	$fp, $a0
.LBB0_265:
	addi.d	$s5, $sp, 200
.LBB0_266:
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	bne	$a0, $a1, .LBB0_271
# %bb.267:
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	bne	$a0, $a1, .LBB0_272
.LBB0_268:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534
	ld.d	$a0, $sp, 184
	bne	$a0, $s5, .LBB0_273
.LBB0_269:
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	bne	$a0, $a1, .LBB0_274
.LBB0_270:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_271:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB0_268
.LBB0_272:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	beq	$a0, $s5, .LBB0_269
.LBB0_273:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB0_270
.LBB0_274:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538
	ld.d	$a1, $sp, 232
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE, .Lfunc_end0-_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
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
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp16                #   Call between .Ltmp16 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp29-.Ltmp26                #   Call between .Ltmp26 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp31-.Ltmp29                #   Call between .Ltmp29 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp40-.Ltmp37                #   Call between .Ltmp37 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp42-.Ltmp40                #   Call between .Ltmp40 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp50-.Ltmp47                #   Call between .Ltmp47 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp60-.Ltmp57                #   Call between .Ltmp57 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp62-.Ltmp60                #   Call between .Ltmp60 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin0          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp76-.Ltmp73                #   Call between .Ltmp73 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin0          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp78-.Ltmp76                #   Call between .Ltmp76 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp81-.Ltmp78                #   Call between .Ltmp78 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp86-.Ltmp84                #   Call between .Ltmp84 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp94-.Ltmp89                #   Call between .Ltmp89 and .Ltmp94
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin0          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp101-.Ltmp98               #   Call between .Ltmp98 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp103-.Ltmp101              #   Call between .Ltmp101 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin0         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp111-.Ltmp108              #   Call between .Ltmp108 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp113-.Ltmp111              #   Call between .Ltmp111 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp121-.Ltmp118              #   Call between .Ltmp118 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin0         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin0         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp131-.Ltmp128              #   Call between .Ltmp128 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin0         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp133-.Ltmp131              #   Call between .Ltmp131 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp140-.Ltmp133              #   Call between .Ltmp133 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin0         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp145-.Ltmp143              #   Call between .Ltmp143 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp152-.Ltmp145              #   Call between .Ltmp145 and .Ltmp152
	.uleb128 .Ltmp174-.Lfunc_begin0         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin0         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp162-.Ltmp159              #   Call between .Ltmp159 and .Ltmp162
	.uleb128 .Ltmp174-.Lfunc_begin0         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin0         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin0         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin0         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp172-.Ltmp170              #   Call between .Ltmp170 and .Ltmp172
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin0         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp190-.Lfunc_begin0         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin0         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin0         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin0         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp186-.Ltmp184              #   Call between .Ltmp184 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp189-.Ltmp186              #   Call between .Ltmp186 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin0         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin0         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin0         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin0         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp200-.Ltmp198              #   Call between .Ltmp198 and .Ltmp200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp223-.Lfunc_begin0         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp205-.Ltmp202              #   Call between .Ltmp202 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin0         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin0         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin0         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin0         # >> Call Site 80 <<
	.uleb128 .Ltmp213-.Ltmp211              #   Call between .Ltmp211 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin0         # >> Call Site 81 <<
	.uleb128 .Ltmp222-.Ltmp213              #   Call between .Ltmp213 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin0         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin0         # >> Call Site 82 <<
	.uleb128 .Lfunc_end0-.Ltmp222           #   Call between .Ltmp222 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
	.type	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_,@function
_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_: # @_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a2
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
.Ltmp224:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.1:
	ld.d	$a3, $sp, 16
.Ltmp227:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.2:
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	beq	$a0, $a1, .LBB1_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB1_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB1_7:
.Ltmp229:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	addi.d	$a1, $sp, 32
	move	$fp, $a0
	bne	$a2, $a1, .LBB1_10
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB1_12
.LBB1_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB1_9
	b	.LBB1_12
.LBB1_11:
.Ltmp226:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB1_9
.LBB1_12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, .Lfunc_end1-_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_
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
	.uleb128 .Ltmp224-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Lfunc_end1-.Ltmp228           #   Call between .Ltmp228 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
	.type	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc,@function
_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc: # @_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s1, $a2
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 72
	addi.d	$s3, $sp, 24
	st.d	$s3, $sp, 8
	beqz	$s1, .LBB2_17
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 104
	move	$a0, $s3
	bltu	$s2, $a1, .LBB2_4
# %bb.2:                                # %.noexc.i
.Ltmp230:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 104
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp231:                               # EH_LABEL
# %bb.3:                                # %.noexc7
	ld.d	$a1, $sp, 104
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
.LBB2_4:                                # %._crit_edge.i.i
	beqz	$s2, .LBB2_8
# %bb.5:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB2_7
# %bb.6:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB2_8
.LBB2_7:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_8:
	ld.d	$a0, $sp, 104
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
.Ltmp232:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp233:                               # EH_LABEL
# %bb.9:
	ld.d	$a3, $sp, 40
.Ltmp235:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.10:
	ld.d	$a0, $sp, 40
	addi.d	$a1, $sp, 56
	beq	$a0, $a1, .LBB2_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB2_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
	ld.d	$a0, $sp, 72
	addi.d	$a1, $sp, 88
	beq	$a0, $a1, .LBB2_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB2_17:
.Ltmp238:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp239:                               # EH_LABEL
# %bb.18:                               # %.noexc
.LBB2_19:
.Ltmp237:                               # EH_LABEL
	ld.d	$a2, $sp, 40
	addi.d	$a1, $sp, 56
	move	$fp, $a0
	bne	$a2, $a1, .LBB2_23
# %bb.20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
	ld.d	$a0, $sp, 8
	bne	$a0, $s3, .LBB2_25
.LBB2_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
	ld.d	$a0, $sp, 72
	addi.d	$a1, $sp, 88
	bne	$a0, $a1, .LBB2_27
.LBB2_22:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB2_21
	b	.LBB2_25
.LBB2_24:
.Ltmp234:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB2_21
.LBB2_25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	addi.d	$a1, $sp, 88
	beq	$a0, $a1, .LBB2_22
	b	.LBB2_27
.LBB2_26:
.Ltmp240:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 72
	addi.d	$a1, $sp, 88
	beq	$a0, $a1, .LBB2_22
.LBB2_27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc, .Lfunc_end2-_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
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
	.uleb128 .Ltmp230-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp230
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp240-.Lfunc_begin2         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin2         #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin2         #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp238-.Ltmp236              #   Call between .Ltmp236 and .Ltmp238
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin2         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Lfunc_end2-.Ltmp239           #   Call between .Ltmp239 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl
	.type	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl,@function
_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl: # @_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ori	$a1, $zero, 34
	st.b	$a1, $sp, 16
	ld.d	$a0, $a0, -24
	addi.d	$s2, $sp, 64
	add.d	$a0, $s2, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB3_3
# %bb.1:
.Ltmp241:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.2:
	move	$s2, $a0
	b	.LBB3_4
.LBB3_3:
.Ltmp243:                               # EH_LABEL
	ori	$a1, $zero, 34
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
.LBB3_4:
.Ltmp246:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.5:
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp249:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.6:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp251:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp253:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.8:                                # %_ZNSolsEl.exit
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	beq	$a0, $a1, .LBB3_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 112
	addi.d	$s0, $fp, 16
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	beqz	$a0, .LBB3_13
# %bb.11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 96
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB3_13
# %bb.12:
	ld.d	$a3, $sp, 104
	sub.d	$a4, $a0, $a3
.Ltmp256:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
	b	.LBB3_14
.LBB3_13:
	addi.d	$a1, $sp, 144
.Ltmp258:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
.LBB3_14:                               # %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
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
	beq	$a0, $a2, .LBB3_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_16:                               # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
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
.LBB3_17:
.Ltmp260:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB3_25
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $s0, 0
	b	.LBB3_24
.LBB3_19:
.Ltmp248:                               # EH_LABEL
	b	.LBB3_21
.LBB3_20:
.Ltmp245:                               # EH_LABEL
.LBB3_21:
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_22:
.Ltmp255:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	addi.d	$a1, $sp, 32
	move	$fp, $a0
	beq	$a2, $a1, .LBB3_25
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
	ld.d	$a0, $sp, 32
.LBB3_24:                               # %.body
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %.body
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl, .Lfunc_end3-_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl
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
	.uleb128 .Ltmp241-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp241
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp244-.Ltmp241              #   Call between .Ltmp241 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin3         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin3         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp254-.Ltmp249              #   Call between .Ltmp249 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin3         #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp256-.Ltmp254              #   Call between .Ltmp254 and .Ltmp256
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp259-.Ltmp256              #   Call between .Ltmp256 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin3         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp259           #   Call between .Ltmp259 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE # -- Begin function _ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
	.globl	_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
	.p2align	5
	.type	_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE,@function
_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE: # @_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $fp, 8
	beq	$a1, $a2, .LBB4_17
# %bb.1:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
	move	$s0, $a0
	addi.d	$s5, $sp, 32
	st.d	$s5, $sp, 16
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 24
	ld.d	$s1, $s0, 8
	bnez	$a0, .LBB4_3
# %bb.2:
.Ltmp261:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
.LBB4_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$s2, $fp, 0
	ld.d	$a0, $fp, 8
	st.b	$zero, $s0, 24
	beq	$s2, $a0, .LBB4_15
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	ori	$s6, $zero, 125
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s4, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp264:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.6:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
                                        #   in Loop: Header=BB4_5 Depth=1
.Ltmp266:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
                                        #   in Loop: Header=BB4_5 Depth=1
.Ltmp268:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp270:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.9:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 16
	st.b	$s6, $sp, 55
	beqz	$a1, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_5 Depth=1
.Ltmp272:                               # EH_LABEL
	addi.d	$a1, $sp, 55
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
.Ltmp274:                               # EH_LABEL
	ori	$a1, $zero, 125
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
.LBB4_12:                               #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $fp, 8
	addi.d	$s2, $s2, 560
	beq	$s2, $a0, .LBB4_15
# %bb.13:                               #   in Loop: Header=BB4_5 Depth=1
.Ltmp277:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp278:                               # EH_LABEL
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $fp, 8
	bne	$s2, $a0, .LBB4_5
.LBB4_15:                               # %._crit_edge
	ld.d	$a0, $sp, 16
	beq	$a0, $s5, .LBB4_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_17:
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
.LBB4_18:
.Ltmp263:                               # EH_LABEL
	b	.LBB4_21
.LBB4_19:
.Ltmp279:                               # EH_LABEL
	b	.LBB4_21
.LBB4_20:
.Ltmp276:                               # EH_LABEL
.LBB4_21:
	move	$fp, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s5, .LBB4_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE, .Lfunc_end4-_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
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
	.uleb128 .Ltmp261-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp261
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin4         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp275-.Ltmp264              #   Call between .Ltmp264 and .Ltmp275
	.uleb128 .Ltmp276-.Lfunc_begin4         #     jumps to .Ltmp276
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin4         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp278           #   Call between .Ltmp278 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
.LCPI5_0:
	.dword	8                               # 0x8
	.dword	7308604896967554418             # 0x656d616e5f6e7572
.LCPI5_1:
	.dword	8                               # 0x8
	.dword	7309475735946556786             # 0x657079745f6e7572
.LCPI5_2:
	.dword	8                               # 0x8
	.dword	7308613718830837859             # 0x656d69745f757063
	.text
	.hidden	_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
	.globl	_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
	.p2align	5
	.type	_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE,@function
_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE: # @_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
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
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s5, $sp, 96
	st.d	$s5, $sp, 80
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 6
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 8
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp280:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.1:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$s1, $a0
	addi.d	$s6, $sp, 64
	st.d	$s6, $sp, 48
	lu12i.w	$a0, 415446
	ori	$a0, $a0, 366
	st.w	$a0, $sp, 64
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 68
.Ltmp282:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.2:
.Ltmp285:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
# %bb.3:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp288:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.4:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255
.Ltmp290:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.5:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 112
	addi.d	$s7, $sp, 128
	beq	$a0, $s7, .LBB5_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 16
	addi.d	$s2, $sp, 32
	beq	$a0, $s2, .LBB5_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp293:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.12:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit264
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 8
	st.d	$a1, $sp, 64
	st.w	$a0, $sp, 72
	ld.d	$a2, $s0, 256
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 76
.Ltmp295:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.13:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp298:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.14:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit270
.Ltmp300:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.15:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp303:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.20:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit280
	move	$s1, $a0
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 16
.Ltmp305:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.21:                               # %.noexc283
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 0
	ld.b	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 264
.Ltmp308:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.22:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp311:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.23:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286
.Ltmp313:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.24:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_26:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_28
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp316:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.29:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	st.d	$s6, $sp, 48
	vst	$vr0, $sp, 56
	st.b	$zero, $sp, 72
.Ltmp318:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK9benchmark13BenchmarkName3strB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.30:
.Ltmp321:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.31:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp324:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.32:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit302
.Ltmp326:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB5_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_39
# %bb.38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_39:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp329:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.40:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit315
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_1)
	ld.w	$a0, $s0, 272
	st.d	$s6, $sp, 48
	vst	$vr0, $sp, 56
	st.b	$zero, $sp, 72
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.65)
	addi.d	$a2, $a2, %pc_lo12(.L.str.65)
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
.Ltmp331:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.41:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp334:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.42:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit321
.Ltmp336:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_47
# %bb.46:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_47:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp339:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.48:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit331
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 7
	st.d	$a1, $sp, 64
	st.w	$a0, $sp, 71
	ld.d	$a2, $s0, 416
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 75
.Ltmp341:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.49:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp344:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
# %bb.50:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit337
.Ltmp346:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp347:                               # EH_LABEL
# %bb.51:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_53
# %bb.52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_53:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_55:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
	ld.w	$a0, $s0, 272
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_65
# %bb.56:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp349:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.57:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit347
	move	$s1, $a0
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 16
.Ltmp351:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.58:                               # %.noexc350
	ld.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	vld	$vr0, $a2, %pc_lo12(.L.str.31)
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 408
.Ltmp354:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.59:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp357:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.60:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit353
.Ltmp359:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.61:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit355
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_63:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_65:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp362:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.66:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit411
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 64
	st.w	$a0, $sp, 67
	ld.d	$a2, $s0, 400
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 71
.Ltmp364:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.67:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp367:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.68:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417
.Ltmp369:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.69:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit419
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_71
# %bb.70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_71:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_73
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_73:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425
	ld.w	$a0, $s0, 272
	ori	$s3, $zero, 1
	bne	$a0, $s3, .LBB5_90
# %bb.74:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp372:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp373:                               # EH_LABEL
# %bb.75:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit427
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 70
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 78
	addi.d	$a2, $s0, 280
.Ltmp374:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp375:                               # EH_LABEL
# %bb.76:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp377:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.77:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit433
.Ltmp379:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.78:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit435
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_80
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_80:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_82
# %bb.81:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_82:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp382:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp383:                               # EH_LABEL
# %bb.83:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit443
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 70
	ld.w	$a0, $s0, 312
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 78
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
.Ltmp384:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc)
	jirl	$ra, $ra, 0
.Ltmp385:                               # EH_LABEL
# %bb.84:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp387:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.85:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450
.Ltmp389:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
# %bb.86:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit452
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_88
# %bb.87:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_90:
	ld.w	$a0, $s0, 352
	beq	$a0, $s3, .LBB5_107
# %bb.91:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_126
# %bb.92:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp415:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.93:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit478
	move	$s1, $a0
	st.d	$s2, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 38
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 46
.Ltmp417:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.94:                               # %.noexc483
	ld.d	$a2, $sp, 112
.Ltmp420:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a3, $a0, %pc_lo12(.L.str.63)
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.95:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_97
# %bb.96:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_97:
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp423:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp424:                               # EH_LABEL
# %bb.98:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit485
.Ltmp425:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp426:                               # EH_LABEL
# %bb.99:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit487
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_101
# %bb.100:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_101:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB5_103
# %bb.102:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_103:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp428:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp429:                               # EH_LABEL
# %bb.104:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit495
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 69
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 77
	addi.d	$a2, $s0, 360
.Ltmp430:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.105:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp433:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.106:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit501
.Ltmp435:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
	b	.LBB5_122
.LBB5_107:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp392:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp393:                               # EH_LABEL
# %bb.108:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit523
	move	$s1, $a0
	st.d	$s2, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 32
	st.w	$a0, $sp, 35
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 39
.Ltmp394:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.109:                              # %.noexc533
	ld.d	$a2, $sp, 112
.Ltmp397:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a3, $a0, %pc_lo12(.L.str.63)
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.110:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_112
# %bb.111:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i531
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_112:
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp400:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.113:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit538
.Ltmp402:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp403:                               # EH_LABEL
# %bb.114:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit540
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_116
# %bb.115:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_116:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB5_118
# %bb.117:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_118:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp405:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.119:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit548
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 8
	st.d	$a1, $sp, 64
	st.w	$a0, $sp, 72
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 76
	addi.d	$a2, $s0, 360
.Ltmp407:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.120:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp410:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp411:                               # EH_LABEL
# %bb.121:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit554
.Ltmp412:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
.LBB5_122:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit503
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_124
# %bb.123:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_124:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_126
# %bb.125:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_126:
	ld.bu	$a1, $s0, 488
	ld.bu	$a0, $s0, 489
	bnez	$a1, .LBB5_149
# %bb.127:
	bnez	$a0, .LBB5_149
# %bb.128:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp438:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.129:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit576
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	st.d	$a1, $sp, 64
	st.h	$a0, $sp, 72
	ld.d	$a2, $s0, 392
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 74
.Ltmp440:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp441:                               # EH_LABEL
# %bb.130:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp443:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp444:                               # EH_LABEL
# %bb.131:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit582
.Ltmp445:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.132:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit584
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_134
# %bb.133:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_134:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_136
# %bb.135:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_136:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590
	ld.w	$a0, $s0, 272
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB5_188
# %bb.137:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590
	ld.w	$a0, $s0, 312
	beqz	$a0, .LBB5_188
# %bb.138:
.Ltmp448:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.139:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit640
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 64
	st.b	$a0, $sp, 72
	fld.d	$fa0, $s0, 432
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 73
.Ltmp450:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.140:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp453:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.141:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit646
.Ltmp455:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.142:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit648
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_144
# %bb.143:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_144:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_146
# %bb.145:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_146:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp458:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.147:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit656
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI5_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI5_2)
	fld.d	$fa0, $s0, 440
	st.d	$s6, $sp, 48
	vst	$vr1, $sp, 56
	st.b	$zero, $sp, 72
.Ltmp460:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp461:                               # EH_LABEL
# %bb.148:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp463:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp464:                               # EH_LABEL
	b	.LBB5_201
.LBB5_149:
	beqz	$a1, .LBB5_183
# %bb.150:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp508:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp509:                               # EH_LABEL
# %bb.151:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit704
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 7
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 71
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 79
.Ltmp510:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp511:                               # EH_LABEL
# %bb.152:
.Ltmp512:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp513:                               # EH_LABEL
# %bb.153:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp515:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp516:                               # EH_LABEL
# %bb.154:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit710
.Ltmp517:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
# %bb.155:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit712
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_157
# %bb.156:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_157:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_159
# %bb.158:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i716
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_159:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit718
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp520:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp521:                               # EH_LABEL
# %bb.160:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit720
	move	$s1, $a0
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 16
.Ltmp522:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.161:                              # %.noexc723
	ld.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	vld	$vr0, $a2, %pc_lo12(.L.str.44)
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp525:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.162:
.Ltmp527:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp528:                               # EH_LABEL
# %bb.163:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp530:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp531:                               # EH_LABEL
# %bb.164:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726
.Ltmp532:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp533:                               # EH_LABEL
# %bb.165:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit728
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_167
# %bb.166:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_167:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_169
# %bb.168:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_169:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp535:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp536:                               # EH_LABEL
# %bb.170:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit736
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 64
	st.b	$a0, $sp, 68
	ld.w	$a1, $s0, 460
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 69
.Ltmp537:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.171:
.Ltmp540:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.172:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp543:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.173:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit742
.Ltmp545:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp546:                               # EH_LABEL
# %bb.174:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit744
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_176
# %bb.175:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_176:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB5_178
# %bb.177:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_178:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_180
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_180:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp548:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp549:                               # EH_LABEL
# %bb.181:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit755
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 64
	st.b	$a0, $sp, 72
	ld.w	$a0, $s0, 424
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 73
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6)
	ldx.d	$a2, $a1, $a0
.Ltmp550:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc)
	jirl	$ra, $ra, 0
.Ltmp551:                               # EH_LABEL
# %bb.182:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp553:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp554:                               # EH_LABEL
	b	.LBB5_209
.LBB5_183:
	beqz	$a0, .LBB5_213
# %bb.184:
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp498:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.185:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit798
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	ld.h	$a1, $a0, 0
	ld.b	$a0, $a0, 2
	st.h	$a1, $sp, 64
	st.b	$a0, $sp, 66
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 67
.Ltmp500:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp501:                               # EH_LABEL
# %bb.186:
.Ltmp502:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp503:                               # EH_LABEL
# %bb.187:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp505:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
	b	.LBB5_209
.LBB5_188:
.Ltmp466:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
# %bb.189:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit592
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 64
	st.b	$a0, $sp, 72
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 73
.Ltmp468:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.190:
.Ltmp470:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.191:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp473:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
# %bb.192:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit598
.Ltmp475:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.193:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit600
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_195
# %bb.194:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_195:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_197
# %bb.196:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_197:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp478:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp479:                               # EH_LABEL
# %bb.198:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit608
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_2)
	st.d	$s6, $sp, 48
	vst	$vr0, $sp, 56
	st.b	$zero, $sp, 72
.Ltmp480:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.199:
.Ltmp482:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp483:                               # EH_LABEL
# %bb.200:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp485:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
.LBB5_201:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit614
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_203
# %bb.202:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_203:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_205
# %bb.204:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_205:
.Ltmp488:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp489:                               # EH_LABEL
# %bb.206:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit682
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp490:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp491:                               # EH_LABEL
# %bb.207:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit684
	move	$s1, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 64
	st.b	$a0, $sp, 72
	ld.w	$a0, $s0, 424
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 73
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6)
	ldx.d	$a2, $a1, $a0
.Ltmp492:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc)
	jirl	$ra, $ra, 0
.Ltmp493:                               # EH_LABEL
# %bb.208:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp495:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
.LBB5_209:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit690
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_211
# %bb.210:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_211:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_213
# %bb.212:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_213:
	ld.d	$s1, $s0, 520
	addi.d	$s4, $s0, 504
	beq	$s1, $s4, .LBB5_222
# %bb.214:                              # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s2, $a0, %pc_lo12(.L.str.3)
	b	.LBB5_216
	.p2align	4, , 16
.LBB5_215:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825
                                        #   in Loop: Header=BB5_216 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beq	$a0, $s4, .LBB5_222
.LBB5_216:                              # =>This Inner Loop Header: Depth=1
.Ltmp556:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp557:                               # EH_LABEL
# %bb.217:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit818
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp558:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp559:                               # EH_LABEL
# %bb.218:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit820
                                        #   in Loop: Header=BB5_216 Depth=1
	move	$s3, $a0
	fld.d	$fa0, $s1, 64
	addi.d	$a1, $s1, 32
.Ltmp561:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp562:                               # EH_LABEL
# %bb.219:                              #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp564:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp565:                               # EH_LABEL
# %bb.220:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit822
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_215
# %bb.221:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i823
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_215
.LBB5_222:                              # %._crit_edge
	ld.d	$a0, $s0, 544
	beqz	$a0, .LBB5_258
# %bb.223:
	ld.d	$s3, $a0, 8
	ld.d	$s2, $a0, 16
	ld.d	$s1, $a0, 24
.Ltmp567:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp568:                               # EH_LABEL
# %bb.224:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit830
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp569:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp570:                               # EH_LABEL
# %bb.225:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit832
	move	$s4, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 7
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 71
	fld.d	$fa0, $s0, 552
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 79
.Ltmp571:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.226:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp574:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp575:                               # EH_LABEL
# %bb.227:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit838
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_229
# %bb.228:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i839
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_229:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_231
# %bb.230:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i842
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_231:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844
.Ltmp577:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
# %bb.232:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp579:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.233:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit848
	move	$s4, $a0
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 70
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 78
.Ltmp582:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.234:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp585:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.235:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit854
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_237
# %bb.236:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_237:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_239
# %bb.238:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_239:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 112
.Ltmp588:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.240:                              # %.noexc863
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	pcalau12i	$a2, %pc_hi20(.L.str.49)
	addi.d	$a2, $a2, %pc_lo12(.L.str.49)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	addi.w	$a2, $zero, -1
	lu52i.d	$s4, $a2, 2047
	stx.b	$zero, $a0, $a1
	beq	$s2, $s4, .LBB5_247
# %bb.241:
.Ltmp591:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.242:                              # %.noexc867
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp593:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp594:                               # EH_LABEL
# %bb.243:                              # %.noexc868
.Ltmp595:                               # EH_LABEL
	move	$s3, $a0
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp596:                               # EH_LABEL
# %bb.244:                              # %.noexc869
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp598:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp599:                               # EH_LABEL
# %bb.245:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_247
# %bb.246:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i865
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_247:                              # %"_ZZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunEENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit"
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_249
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_249:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 7
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 71
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 79
	beq	$s1, $s4, .LBB5_258
# %bb.250:
.Ltmp601:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp602:                               # EH_LABEL
# %bb.251:                              # %.noexc887
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp603:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.252:                              # %.noexc888
.Ltmp605:                               # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl)
	jirl	$ra, $ra, 0
.Ltmp606:                               # EH_LABEL
# %bb.253:                              # %.noexc889
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp608:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp609:                               # EH_LABEL
# %bb.254:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i883
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_256
# %bb.255:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i884
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_256:                              # %"_ZZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunEENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit892"
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_258
# %bb.257:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i893
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_258:
	ld.d	$a0, $s0, 328
	beqz	$a0, .LBB5_267
# %bb.259:
.Ltmp611:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp612:                               # EH_LABEL
# %bb.260:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit915
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp613:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp614:                               # EH_LABEL
# %bb.261:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit917
	move	$s1, $a0
	addi.d	$a2, $s0, 320
	st.d	$s6, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 64
	st.b	$a0, $sp, 68
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 56
	st.b	$zero, $sp, 69
.Ltmp615:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.262:
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 120
.Ltmp618:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.263:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit923
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB5_265
# %bb.264:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i924
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_265:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit926
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_267
# %bb.266:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i927
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_267:
	ori	$a0, $zero, 10
	st.b	$a0, $sp, 112
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB5_269
# %bb.268:
.Ltmp621:                               # EH_LABEL
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
	b	.LBB5_270
.LBB5_269:
.Ltmp623:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp624:                               # EH_LABEL
.LBB5_270:
	ld.d	$a0, $sp, 80
	beq	$a0, $s5, .LBB5_272
# %bb.271:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i940
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_272:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB5_273:
.Ltmp507:                               # EH_LABEL
	b	.LBB5_350
.LBB5_274:
.Ltmp555:                               # EH_LABEL
	b	.LBB5_350
.LBB5_275:
.Ltmp552:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_276:
.Ltmp542:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_347
.LBB5_277:
.Ltmp487:                               # EH_LABEL
	b	.LBB5_350
.LBB5_278:
.Ltmp539:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_279:
.Ltmp465:                               # EH_LABEL
	b	.LBB5_350
.LBB5_280:
.Ltmp462:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_281:
.Ltmp524:                               # EH_LABEL
	b	.LBB5_366
.LBB5_282:
.Ltmp452:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_283:
.Ltmp504:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_284:
.Ltmp610:                               # EH_LABEL
	b	.LBB5_350
.LBB5_285:
.Ltmp600:                               # EH_LABEL
	b	.LBB5_350
.LBB5_286:
.Ltmp409:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_287:
.Ltmp432:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_288:
.Ltmp399:                               # EH_LABEL
	ld.d	$a2, $sp, 112
	move	$fp, $a0
	bne	$a2, $s7, .LBB5_290
	b	.LBB5_323
.LBB5_289:
.Ltmp422:                               # EH_LABEL
	ld.d	$a2, $sp, 112
	move	$fp, $a0
	beq	$a2, $s7, .LBB5_323
.LBB5_290:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
	ld.d	$a0, $sp, 128
	b	.LBB5_322
.LBB5_291:
.Ltmp396:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_323
.LBB5_292:
.Ltmp419:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_323
.LBB5_293:
.Ltmp497:                               # EH_LABEL
	b	.LBB5_350
.LBB5_294:
.Ltmp547:                               # EH_LABEL
	b	.LBB5_345
.LBB5_295:
.Ltmp494:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_296:
.Ltmp484:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_297:
.Ltmp534:                               # EH_LABEL
	b	.LBB5_350
.LBB5_298:
.Ltmp477:                               # EH_LABEL
	b	.LBB5_350
.LBB5_299:
.Ltmp529:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_300:
.Ltmp457:                               # EH_LABEL
	b	.LBB5_350
.LBB5_301:
.Ltmp472:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_302:
.Ltmp519:                               # EH_LABEL
	b	.LBB5_350
.LBB5_303:
.Ltmp514:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_304:
.Ltmp442:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_305:
.Ltmp386:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_306:
.Ltmp376:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_307:
.Ltmp356:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_308:
.Ltmp353:                               # EH_LABEL
	b	.LBB5_366
.LBB5_309:
.Ltmp620:                               # EH_LABEL
	b	.LBB5_350
.LBB5_310:
.Ltmp617:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_311:
.Ltmp590:                               # EH_LABEL
	b	.LBB5_366
.LBB5_312:
.Ltmp587:                               # EH_LABEL
	b	.LBB5_350
.LBB5_313:
.Ltmp584:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_314:
.Ltmp576:                               # EH_LABEL
	b	.LBB5_350
.LBB5_315:
.Ltmp573:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_316:
.Ltmp414:                               # EH_LABEL
	b	.LBB5_350
.LBB5_317:
.Ltmp437:                               # EH_LABEL
	b	.LBB5_350
.LBB5_318:
.Ltmp404:                               # EH_LABEL
	b	.LBB5_320
.LBB5_319:
.Ltmp427:                               # EH_LABEL
.LBB5_320:
	ld.d	$a2, $sp, 48
	move	$fp, $a0
	beq	$a2, $s6, .LBB5_323
# %bb.321:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510
	ld.d	$a0, $sp, 64
.LBB5_322:                              # %.body
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_323:                              # %.body
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB5_367
# %bb.324:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513
	ld.d	$a1, $sp, 32
	b	.LBB5_359
.LBB5_325:
.Ltmp607:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_326:
.Ltmp597:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_327:
.Ltmp447:                               # EH_LABEL
	b	.LBB5_350
.LBB5_328:
.Ltmp391:                               # EH_LABEL
	b	.LBB5_350
.LBB5_329:
.Ltmp381:                               # EH_LABEL
	b	.LBB5_350
.LBB5_330:
.Ltmp366:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_331:
.Ltmp361:                               # EH_LABEL
	b	.LBB5_350
.LBB5_332:
.Ltmp343:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_333:
.Ltmp333:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_334:
.Ltmp323:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_347
.LBB5_335:
.Ltmp320:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_336:
.Ltmp310:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_337:
.Ltmp307:                               # EH_LABEL
	b	.LBB5_366
.LBB5_338:
.Ltmp297:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_339:
.Ltmp287:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_354
.LBB5_340:
.Ltmp284:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_357
.LBB5_341:
.Ltmp371:                               # EH_LABEL
	b	.LBB5_350
.LBB5_342:
.Ltmp348:                               # EH_LABEL
	b	.LBB5_350
.LBB5_343:
.Ltmp338:                               # EH_LABEL
	b	.LBB5_350
.LBB5_344:
.Ltmp328:                               # EH_LABEL
.LBB5_345:
	ld.d	$a2, $sp, 112
	move	$fp, $a0
	beq	$a2, $s7, .LBB5_347
# %bb.346:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_347:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385
	ld.d	$a0, $sp, 16
	bne	$a0, $s2, .LBB5_355
	b	.LBB5_357
.LBB5_348:
.Ltmp315:                               # EH_LABEL
	b	.LBB5_350
.LBB5_349:
.Ltmp302:                               # EH_LABEL
.LBB5_350:
	ld.d	$a2, $sp, 112
	move	$fp, $a0
	beq	$a2, $s7, .LBB5_357
# %bb.351:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB5_356
.LBB5_352:
.Ltmp292:                               # EH_LABEL
	ld.d	$a2, $sp, 112
	addi.d	$a1, $sp, 128
	move	$fp, $a0
	beq	$a2, $a1, .LBB5_354
# %bb.353:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_354:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	beq	$a0, $a1, .LBB5_357
.LBB5_355:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
.LBB5_356:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_357:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB5_367
# %bb.358:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368
	ld.d	$a1, $sp, 64
.LBB5_359:
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_367
.LBB5_360:
.Ltmp581:                               # EH_LABEL
	b	.LBB5_366
.LBB5_361:
.Ltmp625:                               # EH_LABEL
	b	.LBB5_366
.LBB5_362:
.Ltmp563:                               # EH_LABEL
	b	.LBB5_366
.LBB5_363:
.Ltmp566:                               # EH_LABEL
	ld.d	$a2, $sp, 112
	move	$fp, $a0
	beq	$a2, $s7, .LBB5_367
# %bb.364:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i826
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_367
.LBB5_365:
.Ltmp560:                               # EH_LABEL
.LBB5_366:
	move	$fp, $a0
.LBB5_367:
	ld.d	$a0, $sp, 80
	beq	$a0, $s5, .LBB5_369
# %bb.368:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i943
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_369:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit945
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE, .Lfunc_end5-_ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
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
	.uleb128 .Ltmp280-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp280
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin5         #     jumps to .Ltmp284
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin5         #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp291-.Ltmp288              #   Call between .Ltmp288 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin5         #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp293-.Ltmp291              #   Call between .Ltmp291 and .Ltmp293
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin5         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp301-.Ltmp298              #   Call between .Ltmp298 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin5         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp303-.Ltmp301              #   Call between .Ltmp301 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin5         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin5         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp314-.Ltmp311              #   Call between .Ltmp311 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin5         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp316-.Ltmp314              #   Call between .Ltmp314 and .Ltmp316
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin5         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin5         #     jumps to .Ltmp323
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp327-.Ltmp324              #   Call between .Ltmp324 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin5         #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Ltmp329-.Ltmp327              #   Call between .Ltmp327 and .Ltmp329
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin5         # >> Call Site 21 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin5         # >> Call Site 22 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin5         #     jumps to .Ltmp333
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin5         # >> Call Site 23 <<
	.uleb128 .Ltmp337-.Ltmp334              #   Call between .Ltmp334 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin5         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp337-.Lfunc_begin5         # >> Call Site 24 <<
	.uleb128 .Ltmp339-.Ltmp337              #   Call between .Ltmp337 and .Ltmp339
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin5         # >> Call Site 25 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin5         # >> Call Site 26 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin5         #     jumps to .Ltmp343
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin5         # >> Call Site 27 <<
	.uleb128 .Ltmp347-.Ltmp344              #   Call between .Ltmp344 and .Ltmp347
	.uleb128 .Ltmp348-.Lfunc_begin5         #     jumps to .Ltmp348
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin5         # >> Call Site 28 <<
	.uleb128 .Ltmp349-.Ltmp347              #   Call between .Ltmp347 and .Ltmp349
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin5         # >> Call Site 29 <<
	.uleb128 .Ltmp350-.Ltmp349              #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin5         # >> Call Site 30 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin5         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin5         # >> Call Site 31 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin5         #     jumps to .Ltmp356
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin5         # >> Call Site 32 <<
	.uleb128 .Ltmp360-.Ltmp357              #   Call between .Ltmp357 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin5         #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin5         # >> Call Site 33 <<
	.uleb128 .Ltmp362-.Ltmp360              #   Call between .Ltmp360 and .Ltmp362
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin5         # >> Call Site 34 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin5         # >> Call Site 35 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp366-.Lfunc_begin5         #     jumps to .Ltmp366
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin5         # >> Call Site 36 <<
	.uleb128 .Ltmp370-.Ltmp367              #   Call between .Ltmp367 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin5         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin5         # >> Call Site 37 <<
	.uleb128 .Ltmp372-.Ltmp370              #   Call between .Ltmp370 and .Ltmp372
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin5         # >> Call Site 38 <<
	.uleb128 .Ltmp373-.Ltmp372              #   Call between .Ltmp372 and .Ltmp373
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp374-.Lfunc_begin5         # >> Call Site 39 <<
	.uleb128 .Ltmp375-.Ltmp374              #   Call between .Ltmp374 and .Ltmp375
	.uleb128 .Ltmp376-.Lfunc_begin5         #     jumps to .Ltmp376
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp377-.Lfunc_begin5         # >> Call Site 40 <<
	.uleb128 .Ltmp380-.Ltmp377              #   Call between .Ltmp377 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin5         #     jumps to .Ltmp381
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp380-.Lfunc_begin5         # >> Call Site 41 <<
	.uleb128 .Ltmp382-.Ltmp380              #   Call between .Ltmp380 and .Ltmp382
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin5         # >> Call Site 42 <<
	.uleb128 .Ltmp383-.Ltmp382              #   Call between .Ltmp382 and .Ltmp383
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp384-.Lfunc_begin5         # >> Call Site 43 <<
	.uleb128 .Ltmp385-.Ltmp384              #   Call between .Ltmp384 and .Ltmp385
	.uleb128 .Ltmp386-.Lfunc_begin5         #     jumps to .Ltmp386
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin5         # >> Call Site 44 <<
	.uleb128 .Ltmp390-.Ltmp387              #   Call between .Ltmp387 and .Ltmp390
	.uleb128 .Ltmp391-.Lfunc_begin5         #     jumps to .Ltmp391
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin5         # >> Call Site 45 <<
	.uleb128 .Ltmp415-.Ltmp390              #   Call between .Ltmp390 and .Ltmp415
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin5         # >> Call Site 46 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin5         # >> Call Site 47 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin5         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin5         # >> Call Site 48 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin5         #     jumps to .Ltmp422
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin5         # >> Call Site 49 <<
	.uleb128 .Ltmp423-.Ltmp421              #   Call between .Ltmp421 and .Ltmp423
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin5         # >> Call Site 50 <<
	.uleb128 .Ltmp426-.Ltmp423              #   Call between .Ltmp423 and .Ltmp426
	.uleb128 .Ltmp427-.Lfunc_begin5         #     jumps to .Ltmp427
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin5         # >> Call Site 51 <<
	.uleb128 .Ltmp428-.Ltmp426              #   Call between .Ltmp426 and .Ltmp428
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin5         # >> Call Site 52 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin5         # >> Call Site 53 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp432-.Lfunc_begin5         #     jumps to .Ltmp432
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin5         # >> Call Site 54 <<
	.uleb128 .Ltmp436-.Ltmp433              #   Call between .Ltmp433 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin5         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin5         # >> Call Site 55 <<
	.uleb128 .Ltmp393-.Ltmp392              #   Call between .Ltmp392 and .Ltmp393
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin5         # >> Call Site 56 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin5         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin5         # >> Call Site 57 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin5         #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin5         # >> Call Site 58 <<
	.uleb128 .Ltmp400-.Ltmp398              #   Call between .Ltmp398 and .Ltmp400
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin5         # >> Call Site 59 <<
	.uleb128 .Ltmp403-.Ltmp400              #   Call between .Ltmp400 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin5         #     jumps to .Ltmp404
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin5         # >> Call Site 60 <<
	.uleb128 .Ltmp405-.Ltmp403              #   Call between .Ltmp403 and .Ltmp405
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin5         # >> Call Site 61 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin5         # >> Call Site 62 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp409-.Lfunc_begin5         #     jumps to .Ltmp409
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp410-.Lfunc_begin5         # >> Call Site 63 <<
	.uleb128 .Ltmp413-.Ltmp410              #   Call between .Ltmp410 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin5         #     jumps to .Ltmp414
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin5         # >> Call Site 64 <<
	.uleb128 .Ltmp438-.Ltmp413              #   Call between .Ltmp413 and .Ltmp438
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin5         # >> Call Site 65 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin5         # >> Call Site 66 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin5         #     jumps to .Ltmp442
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin5         # >> Call Site 67 <<
	.uleb128 .Ltmp446-.Ltmp443              #   Call between .Ltmp443 and .Ltmp446
	.uleb128 .Ltmp447-.Lfunc_begin5         #     jumps to .Ltmp447
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin5         # >> Call Site 68 <<
	.uleb128 .Ltmp448-.Ltmp446              #   Call between .Ltmp446 and .Ltmp448
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin5         # >> Call Site 69 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin5         # >> Call Site 70 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin5         #     jumps to .Ltmp452
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin5         # >> Call Site 71 <<
	.uleb128 .Ltmp456-.Ltmp453              #   Call between .Ltmp453 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin5         #     jumps to .Ltmp457
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin5         # >> Call Site 72 <<
	.uleb128 .Ltmp458-.Ltmp456              #   Call between .Ltmp456 and .Ltmp458
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin5         # >> Call Site 73 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin5         # >> Call Site 74 <<
	.uleb128 .Ltmp461-.Ltmp460              #   Call between .Ltmp460 and .Ltmp461
	.uleb128 .Ltmp462-.Lfunc_begin5         #     jumps to .Ltmp462
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin5         # >> Call Site 75 <<
	.uleb128 .Ltmp464-.Ltmp463              #   Call between .Ltmp463 and .Ltmp464
	.uleb128 .Ltmp465-.Lfunc_begin5         #     jumps to .Ltmp465
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin5         # >> Call Site 76 <<
	.uleb128 .Ltmp509-.Ltmp508              #   Call between .Ltmp508 and .Ltmp509
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin5         # >> Call Site 77 <<
	.uleb128 .Ltmp513-.Ltmp510              #   Call between .Ltmp510 and .Ltmp513
	.uleb128 .Ltmp514-.Lfunc_begin5         #     jumps to .Ltmp514
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin5         # >> Call Site 78 <<
	.uleb128 .Ltmp518-.Ltmp515              #   Call between .Ltmp515 and .Ltmp518
	.uleb128 .Ltmp519-.Lfunc_begin5         #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp518-.Lfunc_begin5         # >> Call Site 79 <<
	.uleb128 .Ltmp520-.Ltmp518              #   Call between .Ltmp518 and .Ltmp520
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp520-.Lfunc_begin5         # >> Call Site 80 <<
	.uleb128 .Ltmp521-.Ltmp520              #   Call between .Ltmp520 and .Ltmp521
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin5         # >> Call Site 81 <<
	.uleb128 .Ltmp523-.Ltmp522              #   Call between .Ltmp522 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin5         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin5         # >> Call Site 82 <<
	.uleb128 .Ltmp528-.Ltmp525              #   Call between .Ltmp525 and .Ltmp528
	.uleb128 .Ltmp529-.Lfunc_begin5         #     jumps to .Ltmp529
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin5         # >> Call Site 83 <<
	.uleb128 .Ltmp533-.Ltmp530              #   Call between .Ltmp530 and .Ltmp533
	.uleb128 .Ltmp534-.Lfunc_begin5         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin5         # >> Call Site 84 <<
	.uleb128 .Ltmp535-.Ltmp533              #   Call between .Ltmp533 and .Ltmp535
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin5         # >> Call Site 85 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin5         # >> Call Site 86 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin5         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin5         # >> Call Site 87 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin5         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin5         # >> Call Site 88 <<
	.uleb128 .Ltmp546-.Ltmp543              #   Call between .Ltmp543 and .Ltmp546
	.uleb128 .Ltmp547-.Lfunc_begin5         #     jumps to .Ltmp547
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin5         # >> Call Site 89 <<
	.uleb128 .Ltmp548-.Ltmp546              #   Call between .Ltmp546 and .Ltmp548
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin5         # >> Call Site 90 <<
	.uleb128 .Ltmp549-.Ltmp548              #   Call between .Ltmp548 and .Ltmp549
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin5         # >> Call Site 91 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin5         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin5         # >> Call Site 92 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin5         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin5         # >> Call Site 93 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp500-.Lfunc_begin5         # >> Call Site 94 <<
	.uleb128 .Ltmp503-.Ltmp500              #   Call between .Ltmp500 and .Ltmp503
	.uleb128 .Ltmp504-.Lfunc_begin5         #     jumps to .Ltmp504
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin5         # >> Call Site 95 <<
	.uleb128 .Ltmp506-.Ltmp505              #   Call between .Ltmp505 and .Ltmp506
	.uleb128 .Ltmp507-.Lfunc_begin5         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin5         # >> Call Site 96 <<
	.uleb128 .Ltmp467-.Ltmp466              #   Call between .Ltmp466 and .Ltmp467
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin5         # >> Call Site 97 <<
	.uleb128 .Ltmp471-.Ltmp468              #   Call between .Ltmp468 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin5         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin5         # >> Call Site 98 <<
	.uleb128 .Ltmp476-.Ltmp473              #   Call between .Ltmp473 and .Ltmp476
	.uleb128 .Ltmp477-.Lfunc_begin5         #     jumps to .Ltmp477
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin5         # >> Call Site 99 <<
	.uleb128 .Ltmp478-.Ltmp476              #   Call between .Ltmp476 and .Ltmp478
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin5         # >> Call Site 100 <<
	.uleb128 .Ltmp479-.Ltmp478              #   Call between .Ltmp478 and .Ltmp479
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin5         # >> Call Site 101 <<
	.uleb128 .Ltmp483-.Ltmp480              #   Call between .Ltmp480 and .Ltmp483
	.uleb128 .Ltmp484-.Lfunc_begin5         #     jumps to .Ltmp484
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp485-.Lfunc_begin5         # >> Call Site 102 <<
	.uleb128 .Ltmp486-.Ltmp485              #   Call between .Ltmp485 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin5         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin5         # >> Call Site 103 <<
	.uleb128 .Ltmp488-.Ltmp486              #   Call between .Ltmp486 and .Ltmp488
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin5         # >> Call Site 104 <<
	.uleb128 .Ltmp491-.Ltmp488              #   Call between .Ltmp488 and .Ltmp491
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin5         # >> Call Site 105 <<
	.uleb128 .Ltmp493-.Ltmp492              #   Call between .Ltmp492 and .Ltmp493
	.uleb128 .Ltmp494-.Lfunc_begin5         #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp495-.Lfunc_begin5         # >> Call Site 106 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin5         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin5         # >> Call Site 107 <<
	.uleb128 .Ltmp556-.Ltmp496              #   Call between .Ltmp496 and .Ltmp556
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin5         # >> Call Site 108 <<
	.uleb128 .Ltmp559-.Ltmp556              #   Call between .Ltmp556 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin5         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin5         # >> Call Site 109 <<
	.uleb128 .Ltmp562-.Ltmp561              #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp563-.Lfunc_begin5         #     jumps to .Ltmp563
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin5         # >> Call Site 110 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin5         #     jumps to .Ltmp566
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin5         # >> Call Site 111 <<
	.uleb128 .Ltmp567-.Ltmp565              #   Call between .Ltmp565 and .Ltmp567
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin5         # >> Call Site 112 <<
	.uleb128 .Ltmp570-.Ltmp567              #   Call between .Ltmp567 and .Ltmp570
	.uleb128 .Ltmp581-.Lfunc_begin5         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin5         # >> Call Site 113 <<
	.uleb128 .Ltmp572-.Ltmp571              #   Call between .Ltmp571 and .Ltmp572
	.uleb128 .Ltmp573-.Lfunc_begin5         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin5         # >> Call Site 114 <<
	.uleb128 .Ltmp575-.Ltmp574              #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin5         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp575-.Lfunc_begin5         # >> Call Site 115 <<
	.uleb128 .Ltmp577-.Ltmp575              #   Call between .Ltmp575 and .Ltmp577
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin5         # >> Call Site 116 <<
	.uleb128 .Ltmp580-.Ltmp577              #   Call between .Ltmp577 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin5         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin5         # >> Call Site 117 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin5         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin5         # >> Call Site 118 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin5         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin5         # >> Call Site 119 <<
	.uleb128 .Ltmp588-.Ltmp586              #   Call between .Ltmp586 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin5         # >> Call Site 120 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin5         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin5         # >> Call Site 121 <<
	.uleb128 .Ltmp596-.Ltmp591              #   Call between .Ltmp591 and .Ltmp596
	.uleb128 .Ltmp597-.Lfunc_begin5         #     jumps to .Ltmp597
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp598-.Lfunc_begin5         # >> Call Site 122 <<
	.uleb128 .Ltmp599-.Ltmp598              #   Call between .Ltmp598 and .Ltmp599
	.uleb128 .Ltmp600-.Lfunc_begin5         #     jumps to .Ltmp600
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp599-.Lfunc_begin5         # >> Call Site 123 <<
	.uleb128 .Ltmp601-.Ltmp599              #   Call between .Ltmp599 and .Ltmp601
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp601-.Lfunc_begin5         # >> Call Site 124 <<
	.uleb128 .Ltmp606-.Ltmp601              #   Call between .Ltmp601 and .Ltmp606
	.uleb128 .Ltmp607-.Lfunc_begin5         #     jumps to .Ltmp607
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp608-.Lfunc_begin5         # >> Call Site 125 <<
	.uleb128 .Ltmp609-.Ltmp608              #   Call between .Ltmp608 and .Ltmp609
	.uleb128 .Ltmp610-.Lfunc_begin5         #     jumps to .Ltmp610
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin5         # >> Call Site 126 <<
	.uleb128 .Ltmp611-.Ltmp609              #   Call between .Ltmp609 and .Ltmp611
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp611-.Lfunc_begin5         # >> Call Site 127 <<
	.uleb128 .Ltmp614-.Ltmp611              #   Call between .Ltmp611 and .Ltmp614
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin5         # >> Call Site 128 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin5         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin5         # >> Call Site 129 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin5         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp619-.Lfunc_begin5         # >> Call Site 130 <<
	.uleb128 .Ltmp621-.Ltmp619              #   Call between .Ltmp619 and .Ltmp621
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin5         # >> Call Site 131 <<
	.uleb128 .Ltmp624-.Ltmp621              #   Call between .Ltmp621 and .Ltmp624
	.uleb128 .Ltmp625-.Lfunc_begin5         #     jumps to .Ltmp625
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin5         # >> Call Site 132 <<
	.uleb128 .Lfunc_end5-.Ltmp624           #   Call between .Ltmp624 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark12JSONReporter8FinalizeEv # -- Begin function _ZN9benchmark12JSONReporter8FinalizeEv
	.globl	_ZN9benchmark12JSONReporter8FinalizeEv
	.p2align	5
	.type	_ZN9benchmark12JSONReporter8FinalizeEv,@function
_ZN9benchmark12JSONReporter8FinalizeEv: # @_ZN9benchmark12JSONReporter8FinalizeEv
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 7
	pcaddu18i	$t8, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jr	$t8
.Lfunc_end6:
	.size	_ZN9benchmark12JSONReporter8FinalizeEv, .Lfunc_end6-_ZN9benchmark12JSONReporter8FinalizeEv
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
	.type	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd,@function
_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd: # @_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -480
	.cfi_def_cfa_offset 480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 432                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	fmov.d	$fs0, $fa0
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 34
	st.b	$a1, $sp, 8
	ld.d	$a0, $a0, -24
	addi.d	$s0, $sp, 56
	add.d	$a0, $s0, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB7_3
# %bb.1:
.Ltmp626:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp627:                               # EH_LABEL
# %bb.2:
	move	$s2, $a0
	b	.LBB7_4
.LBB7_3:
.Ltmp628:                               # EH_LABEL
	ori	$a1, $zero, 34
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp629:                               # EH_LABEL
	move	$s2, $s0
.LBB7_4:
.Ltmp630:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.5:
	ld.d	$a1, $sp, 8
	ld.d	$a2, $sp, 16
.Ltmp633:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp634:                               # EH_LABEL
# %bb.6:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp635:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp636:                               # EH_LABEL
# %bb.7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 8
	addi.d	$a1, $sp, 24
	beq	$a0, $a1, .LBB7_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB7_22
# %bb.10:
	fclass.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_14
# %bb.11:
	movgr2fr.d	$fa0, $zero
	fcmp.clt.d	$fcc0, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.69)
	addi.d	$a2, $a2, %pc_lo12(.L.str.69)
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
.Ltmp641:                               # EH_LABEL
	move	$a0, $s0
	movcf2gr	$a2, $fcc0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp642:                               # EH_LABEL
# %bb.12:
	ori	$a2, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
.LBB7_13:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.invoke
.Ltmp645:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
	b	.LBB7_15
.LBB7_14:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a3, $zero, -261
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 256
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 16
	st.d	$a1, $a0, 8
.Ltmp638:                               # EH_LABEL
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp639:                               # EH_LABEL
.LBB7_15:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
	ld.d	$a0, $sp, 104
	addi.d	$s0, $fp, 16
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	beqz	$a0, .LBB7_18
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
	ld.d	$a1, $sp, 88
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB7_18
# %bb.17:
	ld.d	$a3, $sp, 96
	sub.d	$a4, $a0, $a3
.Ltmp648:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp649:                               # EH_LABEL
	b	.LBB7_19
.LBB7_18:
	addi.d	$a1, $sp, 136
.Ltmp650:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp651:                               # EH_LABEL
.LBB7_19:                               # %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 40
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, -24
	ld.d	$a2, $fp, 72
	addi.d	$s0, $sp, 40
	stx.d	$a1, $a0, $s0
	st.d	$a2, $sp, 56
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 152
	st.d	$a1, $sp, 64
	beq	$a0, $a2, .LBB7_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_21:                               # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 64
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 40
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s0
	st.d	$zero, $sp, 48
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 432                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB7_22:
.Ltmp643:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp644:                               # EH_LABEL
# %bb.23:
	ori	$a2, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	b	.LBB7_13
.LBB7_24:
.Ltmp640:                               # EH_LABEL
	b	.LBB7_32
.LBB7_25:
.Ltmp652:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB7_33
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $s0, 0
	b	.LBB7_30
.LBB7_27:
.Ltmp632:                               # EH_LABEL
	b	.LBB7_32
.LBB7_28:
.Ltmp637:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	addi.d	$a1, $sp, 24
	move	$fp, $a0
	beq	$a2, $a1, .LBB7_33
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
	ld.d	$a0, $sp, 24
.LBB7_30:                               # %.body
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_31:
.Ltmp647:                               # EH_LABEL
.LBB7_32:                               # %.body
	move	$fp, $a0
.LBB7_33:                               # %.body
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd, .Lfunc_end7-_ZN9benchmark12_GLOBAL__N_18FormatKVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd
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
	.uleb128 .Ltmp626-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp626
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp626-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp629-.Ltmp626              #   Call between .Ltmp626 and .Ltmp629
	.uleb128 .Ltmp647-.Lfunc_begin6         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin6         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp636-.Ltmp633              #   Call between .Ltmp633 and .Ltmp636
	.uleb128 .Ltmp637-.Lfunc_begin6         #     jumps to .Ltmp637
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp641-.Ltmp636              #   Call between .Ltmp636 and .Ltmp641
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp646-.Ltmp641              #   Call between .Ltmp641 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin6         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp639-.Ltmp638              #   Call between .Ltmp638 and .Ltmp639
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp651-.Ltmp648              #   Call between .Ltmp648 and .Ltmp651
	.uleb128 .Ltmp652-.Lfunc_begin6         #     jumps to .Ltmp652
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp643-.Ltmp651              #   Call between .Ltmp651 and .Ltmp643
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp644-.Ltmp643              #   Call between .Ltmp643 and .Ltmp644
	.uleb128 .Ltmp647-.Lfunc_begin6         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp644-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Lfunc_end7-.Ltmp644           #   Call between .Ltmp644 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
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
	.section	.text._ZN9benchmark12JSONReporterD0Ev,"axG",@progbits,_ZN9benchmark12JSONReporterD0Ev,comdat
	.hidden	_ZN9benchmark12JSONReporterD0Ev # -- Begin function _ZN9benchmark12JSONReporterD0Ev
	.weak	_ZN9benchmark12JSONReporterD0Ev
	.p2align	5
	.type	_ZN9benchmark12JSONReporterD0Ev,@function
_ZN9benchmark12JSONReporterD0Ev:        # @_ZN9benchmark12JSONReporterD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end9:
	.size	_ZN9benchmark12JSONReporterD0Ev, .Lfunc_end9-_ZN9benchmark12JSONReporterD0Ev
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	move	$fp, $a0
	addi.d	$s1, $a0, 16
	ld.d	$a1, $a1, 8
	st.d	$s1, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
.Ltmp653:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp654:                               # EH_LABEL
# %bb.1:
	ld.d	$s2, $s0, 8
	beqz	$s2, .LBB10_21
# %bb.2:
	ld.d	$s3, $s0, 0
	ori	$s4, $zero, 26
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$s7, $a0, 511
	pcalau12i	$a0, %pc_hi20(.LJTI10_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI10_0)
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB10_6
.LBB10_3:                               #   in Loop: Header=BB10_6 Depth=1
	srli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $s7, .LBB10_19
	.p2align	4, , 16
.LBB10_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke
                                        #   in Loop: Header=BB10_6 Depth=1
.Ltmp656:                               # EH_LABEL
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp657:                               # EH_LABEL
# %bb.5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
                                        #   in Loop: Header=BB10_6 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 1
	beqz	$s2, .LBB10_21
.LBB10_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s5, $s3, 0
	ld.d	$s0, $fp, 8
	addi.d	$a0, $s5, -8
	bltu	$s4, $a0, .LBB10_9
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB10_6 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	add.d	$a0, $s8, $a0
	jr	$a0
.LBB10_8:                               #   in Loop: Header=BB10_6 Depth=1
	srli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB10_4
	b	.LBB10_19
.LBB10_9:                               # %.lr.ph
                                        #   in Loop: Header=BB10_6 Depth=1
	ori	$a0, $zero, 92
	bne	$s5, $a0, .LBB10_11
# %bb.10:                               #   in Loop: Header=BB10_6 Depth=1
	srli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB10_4
	b	.LBB10_19
.LBB10_11:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	addi.d	$s6, $s0, 1
	xor	$a2, $a0, $s1
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bgeu	$a1, $s6, .LBB10_14
# %bb.12:                               #   in Loop: Header=BB10_6 Depth=1
.Ltmp661:                               # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp662:                               # EH_LABEL
# %bb.13:                               # %.noexc35
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $fp, 0
.LBB10_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
                                        #   in Loop: Header=BB10_6 Depth=1
	stx.b	$s5, $a0, $s0
	ld.d	$a0, $fp, 0
	st.d	$s6, $fp, 8
	stx.b	$zero, $a0, $s6
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 1
	bnez	$s2, .LBB10_6
	b	.LBB10_21
.LBB10_15:                              #   in Loop: Header=BB10_6 Depth=1
	srli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB10_4
	b	.LBB10_19
.LBB10_16:                              #   in Loop: Header=BB10_6 Depth=1
	srli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB10_4
	b	.LBB10_19
.LBB10_17:                              #   in Loop: Header=BB10_6 Depth=1
	srli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB10_4
	b	.LBB10_19
.LBB10_18:                              #   in Loop: Header=BB10_6 Depth=1
	srli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB10_4
.LBB10_19:                              # %.invoke
.Ltmp658:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp659:                               # EH_LABEL
# %bb.20:                               # %.cont
.LBB10_21:                              # %._crit_edge
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
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
.LBB10_22:
.Ltmp655:                               # EH_LABEL
	b	.LBB10_25
.LBB10_23:                              # %.loopexit.split-lp
.Ltmp660:                               # EH_LABEL
	b	.LBB10_25
.LBB10_24:                              # %.loopexit
.Ltmp663:                               # EH_LABEL
.LBB10_25:
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beq	$a0, $s1, .LBB10_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_27:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end10-_ZN9benchmark12_GLOBAL__N_19StrEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_8-.LJTI10_0
	.word	.LBB10_17-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_16-.LJTI10_0
	.word	.LBB10_18-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_15-.LJTI10_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp653-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp654-.Ltmp653              #   Call between .Ltmp653 and .Ltmp654
	.uleb128 .Ltmp655-.Lfunc_begin7         #     jumps to .Ltmp655
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp656-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp662-.Ltmp656              #   Call between .Ltmp656 and .Ltmp662
	.uleb128 .Ltmp663-.Lfunc_begin7         #     jumps to .Ltmp663
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp658-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp659-.Ltmp658              #   Call between .Ltmp658 and .Ltmp659
	.uleb128 .Ltmp660-.Lfunc_begin7         #     jumps to .Ltmp660
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp659-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Lfunc_end10-.Ltmp659          #   Call between .Ltmp659 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_json_reporter.cc
	.type	_GLOBAL__sub_I_json_reporter.cc,@function
_GLOBAL__sub_I_json_reporter.cc:        # @_GLOBAL__sub_I_json_reporter.cc
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end11:
	.size	_GLOBAL__sub_I_json_reporter.cc, .Lfunc_end11-_GLOBAL__sub_I_json_reporter.cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"{\n"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\"context\": {\n"
	.size	.L.str.1, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	",\n"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.4:
	.asciz	"host_name"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"executable"
	.size	.L.str.5, 11

	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"mhz_per_cpu"
	.size	.L.str.7, 12

	.type	.L.str.8,@object                # @.str.8
	.p2align	3, 0x0
.L.str.8:
	.asciz	"cpu_scaling_enabled"
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"\"caches\": [\n"
	.size	.L.str.9, 13

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"level"
	.size	.L.str.11, 6

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.13:
	.asciz	"num_sharing"
	.size	.L.str.13, 12

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"\n"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"}"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	","
	.size	.L.str.16, 2

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"],\n"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\"load_avg\": ["
	.size	.L.str.18, 14

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.19:
	.asciz	"library_version"
	.size	.L.str.19, 16

	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"library_build_type"
	.size	.L.str.20, 19

	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"json_schema_version"
	.size	.L.str.21, 20

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"},\n"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\"benchmarks\": [\n"
	.size	.L.str.23, 17

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\n  ]\n}\n"
	.size	.L.str.24, 8

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.26:
	.asciz	"family_index"
	.size	.L.str.26, 13

	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"per_family_instance_index"
	.size	.L.str.27, 26

	.type	.L.str.30,@object               # @.str.30
	.p2align	3, 0x0
.L.str.30:
	.asciz	"repetitions"
	.size	.L.str.30, 12

	.type	.L.str.31,@object               # @.str.31
	.p2align	3, 0x0
.L.str.31:
	.asciz	"repetition_index"
	.size	.L.str.31, 17

	.type	.L.str.32,@object               # @.str.32
	.p2align	3, 0x0
.L.str.32:
	.asciz	"threads"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
	.p2align	3, 0x0
.L.str.33:
	.asciz	"aggregate_name"
	.size	.L.str.33, 15

	.type	.L.str.34,@object               # @.str.34
	.p2align	3, 0x0
.L.str.34:
	.asciz	"aggregate_unit"
	.size	.L.str.34, 15

	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"error_occurred"
	.size	.L.str.35, 15

	.type	.L.str.36,@object               # @.str.36
	.p2align	3, 0x0
.L.str.36:
	.asciz	"error_message"
	.size	.L.str.36, 14

	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"skipped"
	.size	.L.str.37, 8

	.type	.L.str.38,@object               # @.str.38
	.p2align	3, 0x0
.L.str.38:
	.asciz	"skip_message"
	.size	.L.str.38, 13

	.type	.L.str.39,@object               # @.str.39
	.p2align	3, 0x0
.L.str.39:
	.asciz	"iterations"
	.size	.L.str.39, 11

	.type	.L.str.40,@object               # @.str.40
	.p2align	3, 0x0
.L.str.40:
	.asciz	"real_time"
	.size	.L.str.40, 10

	.type	.L.str.42,@object               # @.str.42
	.p2align	3, 0x0
.L.str.42:
	.asciz	"time_unit"
	.size	.L.str.42, 10

	.type	.L.str.43,@object               # @.str.43
	.p2align	3, 0x0
.L.str.43:
	.asciz	"cpu_coefficient"
	.size	.L.str.43, 16

	.type	.L.str.44,@object               # @.str.44
	.p2align	3, 0x0
.L.str.44:
	.asciz	"real_coefficient"
	.size	.L.str.44, 17

	.type	.L.str.45,@object               # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"big_o"
	.size	.L.str.45, 6

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"rms"
	.size	.L.str.46, 4

	.type	.L.str.47,@object               # @.str.47
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.47:
	.asciz	"allocs_per_iter"
	.size	.L.str.47, 16

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"max_bytes_used"
	.size	.L.str.48, 15

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"total_allocated_bytes"
	.size	.L.str.49, 22

	.type	.L.str.50,@object               # @.str.50
	.p2align	3, 0x0
.L.str.50:
	.asciz	"net_heap_growth"
	.size	.L.str.50, 16

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"label"
	.size	.L.str.51, 6

	.hidden	_ZN9benchmark13MemoryManager14TombstoneValueE # @_ZN9benchmark13MemoryManager14TombstoneValueE
	.type	_ZN9benchmark13MemoryManager14TombstoneValueE,@object
	.section	.rodata,"a",@progbits
	.globl	_ZN9benchmark13MemoryManager14TombstoneValueE
	.p2align	3, 0x0
_ZN9benchmark13MemoryManager14TombstoneValueE:
	.dword	9223372036854775807             # 0x7fffffffffffffff
	.size	_ZN9benchmark13MemoryManager14TombstoneValueE, 8

	.hidden	_ZTVN9benchmark12JSONReporterE  # @_ZTVN9benchmark12JSONReporterE
	.type	_ZTVN9benchmark12JSONReporterE,@object
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9benchmark12JSONReporterE
	.p2align	3, 0x0
_ZTVN9benchmark12JSONReporterE:
	.dword	0
	.dword	_ZTIN9benchmark12JSONReporterE
	.dword	_ZN9benchmark12JSONReporter13ReportContextERKNS_17BenchmarkReporter7ContextE
	.dword	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.dword	_ZN9benchmark12JSONReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE
	.dword	_ZN9benchmark12JSONReporter8FinalizeEv
	.dword	_ZN9benchmark17BenchmarkReporterD2Ev
	.dword	_ZN9benchmark12JSONReporterD0Ev
	.size	_ZTVN9benchmark12JSONReporterE, 64

	.hidden	_ZTIN9benchmark12JSONReporterE  # @_ZTIN9benchmark12JSONReporterE
	.type	_ZTIN9benchmark12JSONReporterE,@object
	.globl	_ZTIN9benchmark12JSONReporterE
	.p2align	3, 0x0
_ZTIN9benchmark12JSONReporterE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN9benchmark12JSONReporterE
	.dword	_ZTIN9benchmark17BenchmarkReporterE
	.size	_ZTIN9benchmark12JSONReporterE, 24

	.hidden	_ZTSN9benchmark12JSONReporterE  # @_ZTSN9benchmark12JSONReporterE
	.type	_ZTSN9benchmark12JSONReporterE,@object
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9benchmark12JSONReporterE
_ZTSN9benchmark12JSONReporterE:
	.asciz	"N9benchmark12JSONReporterE"
	.size	_ZTSN9benchmark12JSONReporterE, 27

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"\"%s\": \"%s\""
	.size	.L.str.52, 11

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"\\b"
	.size	.L.str.53, 3

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"\\f"
	.size	.L.str.54, 3

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"\\n"
	.size	.L.str.55, 3

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"\\r"
	.size	.L.str.56, 3

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"\\t"
	.size	.L.str.57, 3

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"\\\\"
	.size	.L.str.58, 3

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"\\\""
	.size	.L.str.59, 3

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"basic_string::append"
	.size	.L.str.60, 21

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"\": "
	.size	.L.str.61, 4

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"\"%s\": %s"
	.size	.L.str.62, 9

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"true"
	.size	.L.str.63, 5

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"false"
	.size	.L.str.64, 6

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"iteration"
	.size	.L.str.65, 10

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"aggregate"
	.size	.L.str.66, 10

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"time"
	.size	.L.str.67, 5

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"percentage"
	.size	.L.str.68, 11

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"-"
	.size	.L.str.69, 2

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.space	1
	.size	.L.str.70, 1

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"NaN"
	.size	.L.str.71, 4

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"Infinity"
	.size	.L.str.72, 9

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"s"
	.size	.L.str.73, 2

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"ms"
	.size	.L.str.74, 3

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"us"
	.size	.L.str.75, 3

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"ns"
	.size	.L.str.76, 3

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.77, 50

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_json_reporter.cc
	.type	.Lswitch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6,@object # @switch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6:
	.dword	.L.str.76
	.dword	.L.str.75
	.dword	.L.str.74
	.dword	.L.str.73
	.size	.Lswitch.table._ZN9benchmark12JSONReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE.6, 32

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
	.addrsig_sym _GLOBAL__sub_I_json_reporter.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTIN9benchmark12JSONReporterE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN9benchmark12JSONReporterE
	.addrsig_sym _ZTIN9benchmark17BenchmarkReporterE
