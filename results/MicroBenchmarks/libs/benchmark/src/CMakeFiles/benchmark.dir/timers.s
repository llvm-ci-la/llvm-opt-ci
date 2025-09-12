	.file	"timers.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN9benchmark15ProcessCPUUsageEv # -- Begin function _ZN9benchmark15ProcessCPUUsageEv
	.globl	_ZN9benchmark15ProcessCPUUsageEv
	.p2align	5
	.type	_ZN9benchmark15ProcessCPUUsageEv,@function
_ZN9benchmark15ProcessCPUUsageEv:       # @_ZN9benchmark15ProcessCPUUsageEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(clock_gettime)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
# %bb.1:
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	lu12i.w	$a0, -97683
	ori	$a0, $a0, 1685
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9benchmark15ProcessCPUUsageEv, .Lfunc_end0-_ZN9benchmark15ProcessCPUUsageEv
	.cfi_endproc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc
	.type	_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc,@function
_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc: # @_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc, .Lfunc_end1-_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	_ZN9benchmark14ThreadCPUUsageEv # -- Begin function _ZN9benchmark14ThreadCPUUsageEv
	.globl	_ZN9benchmark14ThreadCPUUsageEv
	.p2align	5
	.type	_ZN9benchmark14ThreadCPUUsageEv,@function
_ZN9benchmark14ThreadCPUUsageEv:        # @_ZN9benchmark14ThreadCPUUsageEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(clock_gettime)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_2
# %bb.1:
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	lu12i.w	$a0, -97683
	ori	$a0, $a0, 1685
	lu32i.d	$a0, 77323
	lu52i.d	$a0, $a0, 993
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_2:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN9benchmark14ThreadCPUUsageEv, .Lfunc_end2-_ZN9benchmark14ThreadCPUUsageEv
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN9benchmark19LocalDateTimeStringB5cxx11Ev # -- Begin function _ZN9benchmark19LocalDateTimeStringB5cxx11Ev
	.globl	_ZN9benchmark19LocalDateTimeStringB5cxx11Ev
	.p2align	5
	.type	_ZN9benchmark19LocalDateTimeStringB5cxx11Ev,@function
_ZN9benchmark19LocalDateTimeStringB5cxx11Ev: # @_ZN9benchmark19LocalDateTimeStringB5cxx11Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212system_clock3nowEv)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 159081
	ori	$a1, $a1, 1203
	lu32i.d	$a1, -128024
	lu52i.d	$a1, $a1, 274
	mulh.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 26
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 240
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(localtime_r)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 192
	ori	$a1, $zero, 41
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 3
	pcalau12i	$s0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	bltu	$a1, $a0, .LBB3_4
# %bb.1:
	addi.d	$a0, $sp, 192
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	slti	$a1, $a0, 0
	srai.d	$a2, $a0, 63
	xor	$a0, $a0, $a2
	sub.d	$a0, $a0, $a2
	srli.d	$a2, $a0, 2
	lu12i.w	$a3, 377487
	ori	$a3, $a3, 1475
	lu32i.d	$a3, 377487
	lu52i.d	$a3, $a3, 655
	mulh.du	$a2, $a2, $a3
	srli.d	$a4, $a2, 2
	ori	$a2, $zero, 100
	mul.d	$a2, $a4, $a2
	sub.d	$a5, $a0, $a2
	ori	$a0, $zero, 43
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 45
	maskeqz	$a1, $a2, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 192
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	bnez	$a0, .LBB3_5
# %bb.2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB3_5
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_4:
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(gmtime_r)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 192
	st.w	$a0, $sp, 195
.LBB3_5:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 64
	ori	$a1, $zero, 128
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a1, .LBB3_13
.LBB3_6:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
	ori	$a1, $zero, 127
	sub.d	$a2, $a1, $a0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 192
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 16
	st.d	$s1, $fp, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	st.d	$s0, $sp, 248
	bltu	$s0, $a0, .LBB3_8
# %bb.7:                                # %.noexc.i
	addi.d	$a1, $sp, 248
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248
	move	$s1, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB3_8:                                # %._crit_edge.i.i
	beqz	$s0, .LBB3_12
# %bb.9:                                # %._crit_edge.i.i
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB3_11
# %bb.10:
	ld.b	$a0, $sp, 64
	st.b	$a0, $s1, 0
	b	.LBB3_12
.LBB3_11:
	addi.d	$a1, $sp, 64
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_12:
	ld.d	$a0, $sp, 248
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB3_13:
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB3_6
# %bb.14:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_6
.Lfunc_end3:
	.size	_ZN9benchmark19LocalDateTimeStringB5cxx11Ev, .Lfunc_end3-_ZN9benchmark19LocalDateTimeStringB5cxx11Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_timers.cc
	.type	_GLOBAL__sub_I_timers.cc,@function
_GLOBAL__sub_I_timers.cc:               # @_GLOBAL__sub_I_timers.cc
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end4:
	.size	_GLOBAL__sub_I_timers.cc, .Lfunc_end4-_GLOBAL__sub_I_timers.cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"clock_gettime(CLOCK_PROCESS_CPUTIME_ID, ...) failed"
	.size	.L.str, 52

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"clock_gettime(CLOCK_THREAD_CPUTIME_ID, ...) failed"
	.size	.L.str.1, 51

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%z"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%c%02li:%02li"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"-00:00"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%Y-%m-%dT%H:%M:%S"
	.size	.L.str.5, 18

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ERROR: "
	.size	.L.str.6, 8

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

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_timers.cc
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_timers.cc
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
